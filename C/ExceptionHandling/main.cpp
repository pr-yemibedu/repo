#include <iostream>
#include <cctype>

using namespace std;

namespace Err
{
    struct Error
    {
        const char* error;
        
        Error(const char* e)
        {
            error = e;
        }
        
        const char* getError()
        {
            return error;
        }
    };
}
    
namespace Err
{
    struct SyntaxError
    {
        const char* message;
        
        SyntaxError(const char* m)
        {
            message = m;
        }
        
        SyntaxError(const char* m, int i)
        {
            message = m;
        }
        
        const char* getErrorMessage()
        {
            return message;
        }
    };
}

char getNextChar(void);

int main()
{
    char in = 0;
    
    while(in != 'q')
    {
        try
        {
            in = getNextChar();
        }
        
        catch (Err::SyntaxError* se)
        {
            cout << se -> getErrorMessage();
        }
    
        catch (Err::Error* e)
        {
            cout << e -> getError();
        }
    }
    
    return 0;
}

char getNextChar()
{
    char in;
    cin >> in;
    
    if (std::isalpha(in))
    {
        throw (new Err::Error("An alphabetic character"));
    }
    else
    {
        throw (new Err::SyntaxError("NOT An alphabetic character"));
    }
    
    return in;
}