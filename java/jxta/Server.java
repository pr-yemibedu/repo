/*
 * Copyright (c) 2001 Sun Microsystems, Inc.  All rights
 * reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the
 *    distribution.
 *
 * 3. The end-user documentation included with the redistribution,
 *    if any, must include the following acknowledgment:
 *       "This product includes software developed by the
 *       Sun Microsystems, Inc. for Project JXTA."
 *    Alternately, this acknowledgment may appear in the software itself,
 *    if and wherever such third-party acknowledgments normally appear.
 *
 * 4. The names "Sun", "Sun Microsystems, Inc.", "JXTA" and "Project JXTA" must
 *    not be used to endorse or promote products derived from this
 *    software without prior written permission. For written
 *    permission, please contact Project JXTA at http://www.jxta.org.
 *
 * 5. Products derived from this software may not be called "JXTA",
 *    nor may "JXTA" appear in their name, without prior written
 *    permission of Sun.
 *
 * THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESSED OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 * OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED.  IN NO EVENT SHALL THE APACHE SOFTWARE FOUNDATION OR
 * ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
 * USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
 * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 * ====================================================================
 *
 * This software consists of voluntary contributions made by many
 * individuals on behalf of Project JXTA.  For more
 * information on Project JXTA, please see
 * <http://www.jxta.org/>.
 *
 * This license is based on the BSD license adopted by the Apache Foundation.
 *
 */

/**
 * Server side: This is the server side of the JXTA-EX1 example. The
 * server side application advertises the JXTA-EX1 service, starts the
 * service, and receives messages on a service defined pipe
 * endpoint. The service associated module spec and class
 * advertisement are published in the NetPeerGroup. Clients can
 * discover the module advertisements and create output pipes to
 * connect to the service. The server application creates an input
 * pipe that waits to receive messages. Each message received is
 * printed to the screen. We run the server as a daemon in an infinite
 * loop, waiting to receive client messages.  */

import java.io.InputStream;
import java.io.FileInputStream;
import java.io.StringWriter;
import java.net.URL;

import net.jxta.platform.Application;
import net.jxta.document.Advertisement;
import net.jxta.document.AdvertisementFactory;
import net.jxta.document.StructuredDocumentFactory;
import net.jxta.document.StructuredTextDocument;
import net.jxta.document.StructuredDocument;
import net.jxta.document.MimeMediaType;
import net.jxta.document.Element;
import net.jxta.document.StructuredDocumentUtils;
import net.jxta.endpoint.Message;
import net.jxta.pipe.PipeService;
import net.jxta.id.IDFactory;
import net.jxta.id.ID;
import net.jxta.platform.ModuleClassID;
import net.jxta.pipe.InputPipe;
import net.jxta.peergroup.PeerGroup;
import net.jxta.peergroup.PeerGroupID;
import net.jxta.peergroup.PeerGroupFactory;
import net.jxta.protocol.PeerGroupAdvertisement;
import net.jxta.protocol.ModuleSpecAdvertisement;
import net.jxta.protocol.ModuleClassAdvertisement;
import net.jxta.protocol.PipeAdvertisement;
import net.jxta.discovery.DiscoveryService;
import net.jxta.exception.PeerGroupException;
import net.jxta.impl.peergroup.Platform;
import net.jxta.impl.peergroup.GenericPeerGroup;


public class Server   {

    static PeerGroup group = null;
    static PeerGroupAdvertisement groupAdvertisement = null;
    private DiscoveryService disco;
    private PipeService pipes;
    private InputPipe myPipe; // input pipe for the service
    private Message msg;      // pipe message received
    private ID gid;  // group id
  
    public static void main(String args[]) {
        Server myapp = new Server();
        System.out.println ("Starting Service Peer ....");
        myapp.startJxta();
        System.out.println ("Good Bye ....");
        System.exit(0);
    }

    public void Server() { }

    private void startJxta() {
        try {
            // create, and Start the default jxta NetPeerGroup
            group = PeerGroupFactory.newNetPeerGroup();

        } catch (PeerGroupException e) {
            // could not instanciate the group, print the stack and exit
            System.out.println("fatal error : group creation failure");
            e.printStackTrace();
            System.exit(1);
        }
        
        // this is how to obtain the group advertisement
        groupAdvertisement = group.getPeerGroupAdvertisement();

        // get the discovery, and pipe service
        System.out.println("Getting DiscoveryService");
        disco = group.getDiscoveryService();
        System.out.println("Getting PipeService");
        pipes = group.getPipeService();
	startServer();
    }

    private void startServer() {

	System.out.println("Start the Server daemon");

	// get the peergroup service we need
	gid = group.getPeerGroupID();

	try {

	    // First create the Module class advertisement associated with the service 
	    // We build the module class advertisement using the advertisement
	    // Factory class by passing it the type of the advertisement we
	    // want to construct. The Module class advertisement is to be used
	    // to simply advertise the existence of the service. This is a 
            // a very small advertisement that only advertise the existence
	    // of service. In order to access the service, a peer will
	    // have to discover the associated module spec advertisement.
	    ModuleClassAdvertisement mcadv = (ModuleClassAdvertisement)
                AdvertisementFactory.newAdvertisement(
		ModuleClassAdvertisement.getAdvertisementType());

	    mcadv.setName("JXTAMOD:JXTA-EX1");
	    mcadv.setDescription("Tutorial example to use JXTA module advertisement Framework");

	    ModuleClassID mcID = IDFactory.newModuleClassID();
	    mcadv.setModuleClassID(mcID);

	    // Ok the Module Class advertisement was created, just publish
	    // it in my local cache and to my peergroup. This
	    // is the NetPeerGroup
	    disco.publish(mcadv, DiscoveryService.ADV);
	    disco.remotePublish(mcadv, DiscoveryService.ADV);

	    // Create the Module Spec advertisement associated with the service 
	    // We build the module Spec Advertisement using the advertisement
	    // Factory class by passing in the type of the advertisement we
	    // want to construct. The Module Spec advertisement will contain
	    // all the information necessary for a client to contact the service
	    // for instance it will contain a pipe advertisement to
	    // be used to contact the service

	    ModuleSpecAdvertisement mdadv = (ModuleSpecAdvertisement)
                AdvertisementFactory.newAdvertisement(
		ModuleSpecAdvertisement.getAdvertisementType());

	    // Setup some of the information field about the servive. In this
	    // example, we just set the name, provider and version and a pipe
	    // advertisement. The module creates an input pipes to listen
	    // on this pipe endpoint.
	    //
	    mdadv.setName("JXTASPEC:JXTA-EX1");
	    mdadv.setVersion("Version 1.0");
	    mdadv.setCreator("sun.com");
	    mdadv.setModuleSpecID(IDFactory.newModuleSpecID(mcID));
	    mdadv.setSpecURI("http://www.jxta.org/Ex1");

	    // Create a pipe advertisement for the Service. The client MUST use
	    // the same pipe advertisement to talk to the server. When the client
	    // discovers the module advertisement it will extract the pipe
	    // advertisement to create its pipe. So, we are reading the pipe
	    // advertisement from a default config file to ensure that the
	    // service will always advertise the same pipe
	    //
	    System.out.println("Reading in pipeserver.adv");
	    PipeAdvertisement pipeadv = null;

	    try {
		FileInputStream is = new FileInputStream("pipeserver.adv");
            pipeadv = (PipeAdvertisement)
                    AdvertisementFactory.newAdvertisement(
                    new MimeMediaType("text/xml"), is);
            is.close();
	    } catch (Exception e) {
		System.out.println("failed to read/parse pipe advertisement");
		e.printStackTrace();
		System.exit(-1);
	    }

	    // Store the pipe advertisement in the service Param advertisement
	    // This information will be retrieved by the client when it will
	    // connect to the service
	     StructuredTextDocument paramDoc = (StructuredTextDocument)
                    StructuredDocumentFactory.newStructuredDocument
                    (new MimeMediaType("text/xml"),"Parm");

	     StructuredDocumentUtils.copyElements(paramDoc, paramDoc, (Element)
		pipeadv.getDocument(new MimeMediaType("text/xml")));
	     mdadv.setParam((StructuredDocument) paramDoc);

	    // display the advertisement as a plain text document.
	    StructuredTextDocument doc = (StructuredTextDocument)
		mdadv.getDocument(new MimeMediaType("text/plain"));

	    StringWriter out = new StringWriter();
	    doc.sendToWriter(out);
	    System.out.println(out.toString());
	    out.close();

	    // Ok the Module advertisement was created, just publish
	    // it in my local cache and into the NetPeerGroup.
	    disco.publish(mdadv, DiscoveryService.ADV);
	    disco.remotePublish(mdadv, DiscoveryService.ADV);

	    // we are now ready to start the service
	    // create the input pipe endpoint clients will
	    // use to connect to the service
	    myPipe = pipes.createInputPipe(pipeadv);

	} catch (Exception ex) {
	    ex.printStackTrace();
	    System.out.println("Server: Error publishing the module"); 
	}
    
	// Ok no way to stop this daemon, but that's beyond the point
	// of the example!
	while (true) { // loop over every input received from clients

	    System.out.println("Waiting for client messages to arrive");

	    try {

		// Listen on the pipe for a client message
		msg = myPipe.waitForMessage();

	    } catch (Exception e) {
		myPipe.close();
		System.out.println("Server: Error listening for message");
		return;
	    }
      
	    // Read the message as a String
	    String ip = null;
      
	    try {

		// NOTE: The Client and Service have to agree on the tag names.
		// this is part of the Service protocol defined
		// to access the service.
		ip = msg.getString("DataTag");

		if (ip != null) {

		    // read the data
		    System.out.println("Server: receive message: " + ip);

		} else
		    System.out.println("Server: error could not find the tag");
	
	    } catch (Exception e) {
		System.out.println("Server: error receiving message");
	    }
      
	}

    }
}
