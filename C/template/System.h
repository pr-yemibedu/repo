#ifndef SYSTEM_H
#define SYSTEM_H

template <class T> class System
{
    public:
        System() {}
        ~System() {}
        static void println(T t) { cout << t << endl; };
};

#endif