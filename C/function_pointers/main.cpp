#include <iostream.h>
#include <stdlib.h>

float plus(float a, float b) { return (a + b); }
float minus(float a, float b) { return (a - b); }

typedef float (*opPtr) (float, float);

class Person {
    public:
        Person(const char* name) { m_name = name; }
        const char* toString() { return m_name; };
        const char* toString2() { return "new name"; };
    private:
        const char* m_name;
};

class IProperty {
    public:
        virtual void setName(const char* name) = 0;
        virtual const char* getName() const = 0;
        
        virtual void setValue(const void* value) = 0;
        virtual const void* getValue() const = 0;
        
        virtual const char* toString() const = 0;
};

class StringProperty : public IProperty {
    public:
        StringProperty() {};
        StringProperty(const char* name, const void* value) {
            m_name = name; m_value = value;
        };
        
        void setName(const char* name) { m_name = name; };
        const char* getName() const { return m_name; };
        
        void setValue(const void* value) { m_value = value; };
        const void* getValue() const { return m_value; };
        
        const char* toString() const { return (const char*)m_value; };
        
    protected:
        const char* m_name;
        const void* m_value;
        
    private:    
};

class IntegerProperty : public IProperty {
    public:
        IntegerProperty() {};
        IntegerProperty(const char* name, const void* value) {
            m_name = name; m_value = value;
        };
        
        void setName(const char* name) { m_name = name; };
        const char* getName() const { return m_name; };
        
        void setValue(const void* value) { m_value = value; };
        const void* getValue() const { return m_value; };
        
        const char* toString() const { return (const char*)toString((int*)m_value); };
        
    protected:
        const char* m_name;
        const void* m_value;
        
    private:
        const char* toString(int* i) const {
            const char* buffer;
            buffer = new char[20];
            itoa(*i, (char*)buffer, 10);
            return buffer;
        };    
};

void main() {
    opPtr op;
    float result;
    op = &plus;
    cout << op(1, 1) << endl;
    
    const char* (Person::*display) ();
    display = Person::toString;
    Person p("Brian Pfeil");
    cout << (p.*display)() << endl;
    display = Person::toString2;
    cout << (p.*display)() << endl;
    
    IProperty* prop;
    prop = new StringProperty;
    prop -> setName("name");
    prop -> setValue((const void*)"Brian Pfeil");
    cout << prop -> toString() << endl;
    
    int* age = new int;
    *age = 22;
    prop = new IntegerProperty;
    prop -> setName("age");
    prop -> setValue((const void*)age);
    cout << prop -> toString() << endl;
}