package com.merck.ushh.fts.edc.ftp;

import java.util.Properties;
import java.io.InputStream;
import java.io.IOException;

/**
 * Provides easy access to the com.merck.ushh.fts.fsnet package properties.
 *
 * @author Brian M. Pfeil, Merck & Co.,Inc. [brian_pfeil@merck.com]
 * @version 1.0, 11/27/2001
 */
public class FTPProperties {
    protected static Properties props = new Properties();
    /* path to properties file for the fsnet package */
    private static String m_pathToProps =
        "/com/merck/ushh/fts/edc/ftp/ftp.props";

    static {
        try {
            // load properties file
            InputStream in = (new DummyClass()).getClass().
                getResourceAsStream(m_pathToProps);
            props.load(in);
        } catch (IOException ioe) {
            System.out.println("Static init error: FSNetProperties\n" +
                ioe);
        }
    }

    /**
     * Return the specified property if it exists, otherwise null
     *
     * @param prop name of property to return
     */
    public static String get(String prop) {
        if (props != null) {
            return props.getProperty(prop);
        } else {
            return null;
        }
    }
}