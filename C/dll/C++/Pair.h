#ifndef _PAIR_H_
#define _PAIR_H_

class __declspec(dllexport) Pair
{
public:
    Pair();
    ~Pair();
    
    void setName(char *name);
    void setValue(char *value);
    
    char* getName() const;
    char* getValue() const;

private:
    char *name, *value;
};

#endif