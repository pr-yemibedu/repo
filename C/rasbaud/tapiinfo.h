LPSTR FormatLineCallback(LPSTR szOutputBuffer, DWORD dwDevice, 
						 DWORD dwMsg, DWORD dwCallbackInstance, 
						 DWORD dwParam1, DWORD dwParam2, DWORD dwParam3);

LPSTR FormatLineError(long lLineError, LPSTR lpszOutputBuffer);

LPSTR FormatLastError(DWORD dwLastError, LPSTR szOutputBuffer);

LPSTR FormatCommError(DWORD dwCommError, LPSTR szOutputBuffer);
