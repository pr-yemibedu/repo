#include "Pair.h"

Pair::Pair()
{
}

Pair::~Pair()
{
}

void Pair::setName(char *name)
{
    this -> name = name;
}

void Pair::setValue(char *value)
{
    this -> value = value;
}

char* Pair::getName() const
{
    return name;
}

char* Pair::getValue() const
{
    return value;
}