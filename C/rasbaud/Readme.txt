Q238479
SAMPLE: RasBaud.exe: Obtains the Baud Rate of a RAS Connection

-------------------------------------------------------------------------------
The information in this article applies to:

 - Microsoft Windows NT, versions 4.0, 4.0 SP4 
 - Microsoft Windows versions 95, 98 
-------------------------------------------------------------------------------

SUMMARY
=======

RasBaud.exe is a sample that demonstrates how to obtain the baud rate of an
existing Remote Access Service (RAS) connection.

This sample uses the Telephony Application Program Interface (TAPI) line device
name that corresponds to the RAS szDeviceName to obtain statistics regarding the
TAPI device used by dial-up networking.

The szDeviceName is the only useful information that RAS returns that can be
correlated to a TAPI line device.

NOTE: There is no error checking of LocalAlloc/LocalReAlloc. There should be a
memory allocation wrapper function.

RAS Assumptions:

 - Any errors on any RAS APIs stop the entire process.

 - This console application only checks the speed of the first RAS session. This
   is valid on Windows 9x, which supports only one session at a time.

   If you know your specific HRASCONN, you can use it directly rather than
   enumerating the connections. Also, the sample supports only 10 RAS sessions;
   however, the number of connections can be modified:

   RASCONN aRasConn[10];

TAPI Assumptions:

 - Any errors on any TAPI APIs halt checking of the specific line device.

 - The first TAPI device whose name matches the RAS device name, and has a call
   in progress on it, is a match. This assumption should be fine because line
   device names should be (and so far, are) unique.

 - The speed of the first call on the above TAPI device is returned. This
   assumption is fine because:

    - If a modem is used, only one call per line is possible.

    - If ISDN is used, all calls on the line are the same speed.

    - Modem banks are represented as one-modem-per-line device.

The above assumptions mean that the returned baud rate is probably correct, but
not guaranteed to be correct. It would be better if RAS had a direct method to
acquire this information, but such a method does not exist.

NOTE: Even if RAS did have a direct method to get the baud rate, the baud rate
could still not be guaranteed correct. RAS relies on the TSP (Unimodem) to know
what the correct speed is, and Unimodem relies on the modem to provide it with
the correct information. Some modems do not report the correct speed. Some
modems report the speed that you tried to connect at, not the speed that the
modem auto-negotiated to. The only way to get a valid number is to do throughput
testing. This code gives a good estimate of a starting value, but don't rely on
it for guaranteed information.

The self-extracting .exe contains the makefile to build the executable.

MORE INFORMATION
================

The following file is available for download from the Microsoft Software
Library. Click the file name below to download the file:

   RasBaud.exe
   (http://support.microsoft.com/download/support/mslfiles/RasBaud.exe)

Release Date: Aug-13-1999

For more information about how to download files from the Microsoft Software
Library, please see the following article in the Microsoft Knowledge Base:

   Q119591 How to Obtain Microsoft Support Files from Online Services

+--------------------+
| File Name  | Size  | 
+--------------------+
| RasBaud.c  | 10 KB | 
+--------------------+
| TapiInfo.c | 27 KB | 
+--------------------+
| TapiInfo.h | 01 KB | 
+--------------------+
| Makefile   | 01 KB | 
+--------------------+


