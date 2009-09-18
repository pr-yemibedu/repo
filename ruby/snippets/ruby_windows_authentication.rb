require 'dl/win32'

LOGON32_LOGON_NETWORK = 3
LOGON32_PROVIDER_DEFAULT = 0
BOOL_SUCCESS = 1
AdvApi32 = DL.dlopen("advapi32")
Kernel32 = DL.dlopen("kernel32")

# Load the DLL functions
logon_user = AdvApi32['LogonUser', 'ISSSIIp']
close_handle = Kernel32['CloseHandle', 'IL']

username = 'pfeilbr'
domain = 'northamerica'
password = '<insert password here>'

# Authenticate user
ptoken = "\0" * 4
r,rs = logon_user.call(username, domain, password, LOGON32_LOGON_NETWORK, LOGON32_PROVIDER_DEFAULT, ptoken)
authenticated = (r == BOOL_SUCCESS)

# Close impersonation token
token = ptoken.unpack('L')[0]
close_handle.call(token)

if authenticated
  puts "successfully authenticated"
else
  puts "failed authentication"
end
