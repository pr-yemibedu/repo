#ifndef PAIR_H
#define PAIR_H

class Pair
{
    public:
        Pair() {}
        ~Pair() {}
        void setName(char*);
        char* getName();
    private:
        char* name;
        void* value;
};

#endif