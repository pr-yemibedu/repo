#include <windows.h>
#include <tchar.h>

typedef struct person_t {
    TCHAR *name;
} Person;

int main(int argc, char **args) {
    Person p;
    HKEY key;
    DWORD size = 4;
    DWORD d = 24;
    p.name = "brian pfeil";
    RegCreateKey(HKEY_LOCAL_MACHINE, "software\\a", &key);
    RegSetValueEx(key, "name", 0, REG_SZ, (CONST BYTE*)p.name, (DWORD)(_tcslen(p.name) + 1));
    RegSetValueEx(key, "age", 0, REG_DWORD, (CONST BYTE*)&d, size);
    RegSetValueEx(key, "blob", 0, REG_BINARY, (CONST BYTE*)&d, size);
    RegCloseKey(key);
    return 0;
}