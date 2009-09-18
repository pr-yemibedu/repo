call flexenv.cmd
set PROGRAM_NAME=FABridge_Example
set SRC_FILE_NAME=%PROGRAM_NAME%.mxml
set SWF_FILE_NAME=%PROGRAM_NAME%.swf
taskkill /IM %STANDALONE_FLASH_PLAYER% /F
del /Q %SWF_FILE_NAME%
mxmlc -compiler.source-path=%FLEX_SDK_INSTALL_PATH%\frameworks\javascript\fabridge\src %SRC_FILE_NAME%
%STANDALONE_FLASH_PLAYER% %SWF_FILE_NAME%
pause
