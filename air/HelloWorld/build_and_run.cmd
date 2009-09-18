@echo on
call airenv.cmd
set PROGRAM_NAME=AIRHelloWorld
set SRC_FILE_NAME=%PROGRAM_NAME%.mxml
set SWF_FILE_NAME=%PROGRAM_NAME%.swf
taskkill /IM %STANDALONE_FLASH_PLAYER% /F
taskkill /IM adl.exe /F
del /Q %SWF_FILE_NAME%
del /Q sampleCert.pfx
del /Q %PROGRAM_NAME%.air
cmd /c amxmlc %SRC_FILE_NAME%
REM cmd /c adl %PROGRAM_NAME%-app.xml
cmd /c adt -certificate -cn SelfSigned 1024-RSA sampleCert.pfx samplePassword
cmd /c adt -package -storetype pkcs12 -certificate sampleCert.pfx -password samplePassword %PROGRAM_NAME%.air %PROGRAM_NAME%-app.xml %PROGRAM_NAME%.swf
pause
