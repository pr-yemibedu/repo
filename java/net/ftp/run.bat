rem java com.merck.ushh.fts.edc.ftp.FTPJobRunner host port user pass start_count connections file_count file_size
rem java com.merck.ushh.fts.edc.ftp.FTPJobRunner millheifdt1.merck.com 3522 edctest soprano  500 500 5 10000
java com.merck.ushh.fts.edc.ftp.FTPJobRunner localhost 3522 edctest soprano  0 10 5 10000
pause
