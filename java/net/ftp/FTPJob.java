package com.merck.ushh.fts.edc.ftp;

import java.io.IOException;
import java.io.File;

import com.enterprisedt.net.ftp.FTPException;
import com.enterprisedt.net.ftp.FTPClient;
import com.enterprisedt.net.ftp.FTPTransferType;
import com.enterprisedt.net.ftp.FTPConnectMode;

import org.apache.log4j.PropertyConfigurator;
import org.apache.log4j.Category;
import org.apache.log4j.Priority;

public class FTPJob extends Thread {
    /* Log4J logging */
    protected static Category log = null;
    static {
        PropertyConfigurator.configure(FTPProperties.get("logging.path"));
        log = Category.getInstance("FTPJob");
    }
    
    protected FTPClient ftp = null;
    protected String host = null;
    protected int port = 0;
    protected String user = null;
    protected String password = null;
    protected String directory = null;
    protected boolean complete = false;
    
    public FTPJob(String host, int port, String user, String password, String directory) {
        setHost(host);
        setPort(port);
        setUser(user);
        setPassword(password);
        setDirectory(directory);
    }
    
    public void connect() throws Exception {
        try {
            ftp = new FTPClient(host, port);
            ftp.login(user, password);
        } catch (FTPException ftpe) {
            log.error("LOGIN error: " + toString(), ftpe);
        }
    }
    
    public boolean isComplete() {
        return complete;
    }
    
    public void run() {
        try {
            // setup
            ftp.setType(FTPTransferType.BINARY);
            ftp.setConnectMode(FTPConnectMode.ACTIVE);
            String directoryName = directory.substring(directory.lastIndexOf('\\'));
            // remove directory if there
            try {
                ftp.chdir(directoryName);
                String[] listing = ftp.dir(".");
                for (int i = 0; i < listing.length; i++) {
                    ftp.delete(listing[i]);
                }
                ftp.chdir("..");
                ftp.rmdir(directoryName);
            } catch (FTPException ftpe) {
            }
            // make dir
            System.out.println("mkdir:" + directoryName);
            try {
                ftp.mkdir(directoryName);
            } catch (FTPException ftpe) {
                log.error("MKDIR error: dir name=" + directoryName + " : " + toString(), ftpe);
            }
            // change dir
            System.out.println("chdir:" + directoryName);
            try {
                ftp.chdir(directoryName);
            } catch (FTPException ftpe) {
                log.error("CHDIR error: dir name=" + directoryName + " : " + toString(), ftpe);
            }
            // put files from local directory
            File dir = new File(directory);
            File[] fileListing = dir.listFiles();
            for (int i = 0; i < fileListing.length; i++) {
                String filePath = fileListing[i].getAbsolutePath();
                String fileName = fileListing[i].getName();
                
                
                // put a file
                System.out.println("put: " + filePath + " " + fileName);
                try {
                    ftp.put(filePath, fileName);
                } catch (FTPException ftpe) {
                    log.error("PUT error: src=" + filePath + " dest=" + fileName + " : " + toString(), ftpe);
                }
                
                // get a file
                try {
                    byte[] buf = ftp.get(fileName);
                    System.out.println("got: " + fileName + " " + " : " + buf.length + " bytes");
                } catch (FTPException ftpe) {
                    log.error("GET error: src=" + filePath + " : " + toString(), ftpe);
                }
                
                // delete file
                try {
                    ftp.delete(fileName);
                } catch (FTPException ftpe) {
                    log.error("DELETE error: \"" + fileName + "\" on server : " + toString() , ftpe);
                }
            }
            // ASCII transfer
            ftp.setType(FTPTransferType.ASCII);
            
            // dir listing
            try {
                String[] listing = ftp.dir(".");
                for (int i = 0; i < listing.length; i++) {
                    System.out.println(listing[i]);
                }
            } catch (FTPException ftpe) {
                log.error("LS error: dir=" + directoryName + " : " + toString() , ftpe);
            }
 
            // move up a directory
            try {
                ftp.chdir("..");
            } catch (FTPException ftpe) {
                log.error("CHDIR error: dir= .. on server : " + toString() , ftpe);
            }
            
            // delete directory
            try {
                ftp.rmdir(directoryName);
            } catch (FTPException ftpe) {
                log.error("RMDIR error: dir=" + directoryName + " : " + toString() , ftpe);
            }
            
            // quit
            try {
                ftp.quit();
            } catch (FTPException ftpe) {
                log.error("QUIT error: " + toString() , ftpe);
            }
            
        } catch (IOException ioe) {
            log.error("", ioe);
        } catch (FTPException ftpe2) {
            log.error("", ftpe2);
        } finally {
            complete = true;
        }
    }

    public void setHost(String host) {
        this.host = host;
    }
    
    public void setPort(int port) {
        this.port = port;
    }
    
    public void setUser(String user) {
        this.user = user;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    
    public void setDirectory(String directory) {
        this.directory = directory;
    }
    
    public String toString() {
        StringBuffer out = new StringBuffer();
        out.append("{host=").append(host).append(",");
        out.append("port=").append(port).append(",");
        out.append("user=").append(user).append(",");
        out.append("password=").append(password).append(",");
        out.append("directory=").append(directory).append("}");
        return out.toString();
    }
}