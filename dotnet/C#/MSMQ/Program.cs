using System;
using System.Collections.Generic;
using System.Text;
using System.Messaging;

namespace MsmqTest
{
    // http://www.theserverside.net/articles/showarticle.tss?id=LetsDoMessageQueue
    class Program
    {
        static void Main(string[] args)
        {
            // (1) path to message queue
            // syntax: [computer name]\private$\[queue name]
            // use "." for localhost
            string queuePath = @".\private$\MsmqTest";

            // (2) open message queue, create new one if not exists
            MessageQueue messageQueue;
            if (MessageQueue.Exists(queuePath))
                messageQueue = new MessageQueue(queuePath);
            else
                messageQueue = MessageQueue.Create(queuePath);

            // remove all messages
            messageQueue.Purge();

            messageQueue.SetPermissions(@"northamerica\pfeilbr", MessageQueueAccessRights.ReceiveMessage);

            Message message = new Message();
            message.UseDeadLetterQueue = true;
            message.TimeToBeReceived = new TimeSpan(0, 0, 10);
            message.AdministrationQueue = new MessageQueue(@".\private$\MsmqTest_Admin");
            message.AcknowledgeType = AcknowledgeTypes.NegativeReceive;
            message.Body = "Hello World";

            // (3) send simple message
            messageQueue.Send(message);

            // (4) break here and have a lool in your message queue!!
            Console.WriteLine("Message has been sent.  You can view it in the Computer Management console under Message Queing.\nPress any key to continue ...");
            Console.Read();

            // (5) receive message from message queue
            Message msg = messageQueue.Receive();
            string myMessage = Convert.ToString(msg.Body);
            Console.WriteLine(myMessage);

            // (6) close message queue
            messageQueue.Close();
        }
    }
}
