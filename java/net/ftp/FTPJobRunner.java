package com.merck.ushh.fts.edc.ftp;

import org.apache.log4j.PropertyConfigurator;
import org.apache.log4j.Category;
import org.apache.log4j.Priority;

public class FTPJobRunner {
    /* Log4J logging */
    protected static Category log = null;
    static {
        PropertyConfigurator.configure(FTPProperties.get("logging.path"));
        log = Category.getInstance("FTPJob");
    }
    public static void main(String[] argv) throws Exception {
        // endless loop
        int counter = 1;
        while (true) {
            log.info("run #" + counter);
            FTPJobRunner.run(argv);
            counter++;
        }
    }
    
    public static void run(String[] argv) {
        FTPJob[] jobs = null;
        try {
            String host = argv[0];
            int port = Integer.parseInt(argv[1]);
            String user = argv[2];
            String password = argv[3];
            int startCount = Integer.parseInt(argv[4]);
            int connectionCount = Integer.parseInt(argv[5]);
            long fileCount = Long.parseLong(argv[6]);
            long fileSize = Long.parseLong(argv[7]);
            String localFTPRoot = "C:\\Inetpub\\ftproot";
            String localRoot = "c:\\a";
            jobs = new FTPJob[connectionCount];
            System.out.println("creating " + (connectionCount * fileCount) + " files " + fileSize + " bytes each ...");
            
            for (int i = 0; i < connectionCount; i++) {
                String directory = localRoot + "\\" + (i + startCount);
                Utils.createFiles(directory, fileCount, fileSize);
                jobs[i] = new FTPJob(host, port, user, password, directory);
            }
            System.out.println("establishing " + connectionCount + " connections ...");
            for (int i = 0; i < jobs.length; i++) {
                jobs[i].connect();
            }
            for (int i = 0; i < jobs.length; i++) {
                jobs[i].start();
            }
        } catch (Exception e) {
            log.error("failed in run()", e);
        } finally {
            while(!isComplete(jobs)) {
                try {
                    Thread.currentThread().sleep((1000 * 3));
                } catch (Exception e) {}
            }
        }
    }
    
    public static boolean isComplete(FTPJob[] jobs) {
        for (int i = 0; i < jobs.length; i++) {
            if (!jobs[i].isComplete()) {
                return false;
            }
        }
        return true;
    }  
}