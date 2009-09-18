package com.merck.ushh.fts.edc.ftp;

import java.io.IOException;
import java.io.File;
import java.io.FileWriter;
import java.util.Random;

public class Utils {
    public static void createFile(String path, long size) throws IOException {
        File f = new File(path);
        // if exists do not create
        if (f.exists()) {
            return;
        }
        
        FileWriter fw = new FileWriter(f);
        Random r = new Random();
        for (long i = 0; i < size; i++) {
            fw.write(r.nextInt(256));
        }
        fw.close();
    }
    
    public static void createFiles(String path, long count, long size) 
        throws IOException {
        File dir = new File(path);
        dir.mkdirs();
        for (long i = 0; i < count; i++) {
            Utils.createFile(path + "\\" + i + ".txt", size);
        }
    }
    
    public static void delete(String path) {
        File f = new File(path);
        if (f.isDirectory()) {
            File[] files = f.listFiles();
            for (int i = 0; i < files.length; i++) {
                Utils.delete(files[i].getAbsolutePath());
            }
        } else {
            f.delete();
        }
    }    
}