#line 1 "main.cpp"
#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\iostream.h"















#pragma once
#line 18 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\iostream.h"








#line 27 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\iostream.h"





#pragma pack(push,8)

#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\useoldio.h"






































#pragma comment(lib,"libci")
#line 41 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\useoldio.h"
#line 42 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\useoldio.h"

#line 44 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\useoldio.h"
#line 35 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\iostream.h"

#line 37 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\iostream.h"









#line 47 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\iostream.h"
#line 48 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\iostream.h"


typedef long streamoff, streampos;

#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ios.h"















#pragma once
#line 18 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ios.h"








#line 27 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ios.h"





#pragma pack(push,8)

#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\useoldio.h"











































#line 35 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ios.h"

#line 37 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ios.h"






















































#line 92 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ios.h"



#line 96 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ios.h"



#pragma warning(disable:4514) 

#line 102 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ios.h"

class  streambuf;
class  ostream;

class  ios {

public:
    enum io_state {  goodbit = 0x00,
                     eofbit  = 0x01,
                     failbit = 0x02,
                     badbit  = 0x04 };

    enum open_mode { in        = 0x01,
                     out       = 0x02,
                     ate       = 0x04,
                     app       = 0x08,
                     trunc     = 0x10,
                     nocreate  = 0x20,
                     noreplace = 0x40,
                     binary    = 0x80 };

    enum seek_dir { beg=0, cur=1, end=2 };

    enum {  skipws     = 0x0001,
            left       = 0x0002,
            right      = 0x0004,
            internal   = 0x0008,
            dec        = 0x0010,
            oct        = 0x0020,
            hex        = 0x0040,
            showbase   = 0x0080,
            showpoint  = 0x0100,
            uppercase  = 0x0200,
            showpos    = 0x0400,
            scientific = 0x0800,
            fixed      = 0x1000,
            unitbuf    = 0x2000,
            stdio      = 0x4000
                                 };

    static const long basefield;        
    static const long adjustfield;      
    static const long floatfield;       

    ios(streambuf*);                    
    virtual ~ios();

    inline long flags() const;
    inline long flags(long _l);

    inline long setf(long _f,long _m);
    inline long setf(long _l);
    inline long unsetf(long _l);

    inline int width() const;
    inline int width(int _i);

    inline ostream* tie(ostream* _os);
    inline ostream* tie() const;

    inline char fill() const;
    inline char fill(char _c);

    inline int precision(int _i);
    inline int precision() const;

    inline int rdstate() const;
    inline void clear(int _i = 0);


    operator void *() const { if(state&(badbit|failbit) ) return 0; return (void *)this; }
    inline int operator!() const;

    inline int  good() const;
    inline int  eof() const;
    inline int  fail() const;
    inline int  bad() const;

    inline streambuf* rdbuf() const;

    inline long & iword(int) const;
    inline void * & pword(int) const;

    static long bitalloc();
    static int xalloc();
    static void sync_with_stdio();









    void __cdecl lock() { }
    void __cdecl unlock() { }
    void __cdecl lockbuf() { }
    void __cdecl unlockbuf() { }
#line 202 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ios.h"

protected:
    ios();
    ios(const ios&);                    
    ios& operator=(const ios&);
    void init(streambuf*);

    enum { skipping, tied };
    streambuf*  bp;

    int     state;
    int     ispecial;                   
    int     ospecial;                   
    int     isfx_special;               
    int     osfx_special;               
    int     x_delbuf;                   

    ostream* x_tie;
    long    x_flags;
    int     x_precision;
    char    x_fill;
    int     x_width;

    static void (*stdioflush)();        






    static void lockc() { }
    static void unlockc() { }
#line 235 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ios.h"

public:
    int delbuf() const { return x_delbuf; }
    void    delbuf(int _i) { x_delbuf = _i; }

private:
    static long x_maxbit;
    static int x_curindex;
    static int sunk_with_stdio;         








    static long * x_statebuf;  
#line 254 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ios.h"
};

#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\streamb.h"















#pragma once
#line 18 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\streamb.h"








#line 27 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\streamb.h"





#pragma pack(push,8)

#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\useoldio.h"











































#line 35 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\streamb.h"

#line 37 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\streamb.h"
























#pragma warning(disable:4514) 

#line 64 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\streamb.h"

typedef long streampos, streamoff;

class  ios;

class  streambuf {
public:

    virtual ~streambuf();

    inline int in_avail() const;
    inline int out_waiting() const;
    int sgetc();
    int snextc();
    int sbumpc();
    void stossc();

    inline int sputbackc(char);

    inline int sputc(int);
    inline int sputn(const char *,int);
    inline int sgetn(char *,int);

    virtual int sync();

    virtual streambuf* setbuf(char *, int);
    virtual streampos seekoff(streamoff,ios::seek_dir,int =ios::in|ios::out);
    virtual streampos seekpos(streampos,int =ios::in|ios::out);

    virtual int xsputn(const char *,int);
    virtual int xsgetn(char *,int);

    virtual int overflow(int =(-1)) = 0; 
    virtual int underflow() = 0;        

    virtual int pbackfail(int);

    void dbp();







    void lock() { }
    void unlock() { }
#line 112 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\streamb.h"

protected:
    streambuf();
    streambuf(char *,int);

    inline char * base() const;
    inline char * ebuf() const;
    inline char * pbase() const;
    inline char * pptr() const;
    inline char * epptr() const;
    inline char * eback() const;
    inline char * gptr() const;
    inline char * egptr() const;
    inline int blen() const;
    inline void setp(char *,char *);
    inline void setg(char *,char *,char *);
    inline void pbump(int);
    inline void gbump(int);

    void setb(char *,char *,int =0);
    inline int unbuffered() const;
    inline void unbuffered(int);
    int allocate();
    virtual int doallocate();




private:
    int _fAlloc;
    int _fUnbuf;
    int x_lastc;
    char * _base;
    char * _ebuf;
    char * _pbase;
    char * _pptr;
    char * _epptr;
    char * _eback;
    char * _gptr;
    char * _egptr;




};

inline int streambuf::in_avail() const { return (gptr()<_egptr) ? (_egptr-gptr()) : 0; }
inline int streambuf::out_waiting() const { return (_pptr>=_pbase) ? (_pptr-_pbase) : 0; }

inline int streambuf::sputbackc(char _c){ return (_eback<gptr()) ? *(--_gptr)=_c : pbackfail(_c); }

inline int streambuf::sputc(int _i){ return (_pptr<_epptr) ? (unsigned char)(*(_pptr++)=(char)_i) : overflow(_i); }

inline int streambuf::sputn(const char * _str,int _n) { return xsputn(_str, _n); }
inline int streambuf::sgetn(char * _str,int _n) { return xsgetn(_str, _n); }

inline char * streambuf::base() const { return _base; }
inline char * streambuf::ebuf() const { return _ebuf; }
inline int streambuf::blen() const  {return ((_ebuf > _base) ? (_ebuf-_base) : 0); }
inline char * streambuf::pbase() const { return _pbase; }
inline char * streambuf::pptr() const { return _pptr; }
inline char * streambuf::epptr() const { return _epptr; }
inline char * streambuf::eback() const { return _eback; }
inline char * streambuf::gptr() const { return _gptr; }
inline char * streambuf::egptr() const { return _egptr; }
inline void streambuf::gbump(int _n) { if (_egptr) _gptr += _n; }
inline void streambuf::pbump(int _n) { if (_epptr) _pptr += _n; }
inline void streambuf::setg(char * _eb, char * _g, char * _eg) {_eback=_eb; _gptr=_g; _egptr=_eg; x_lastc=(-1); }
inline void streambuf::setp(char * _p, char * _ep) {_pptr=_pbase=_p; _epptr=_ep; }
inline int streambuf::unbuffered() const { return _fUnbuf; }
inline void streambuf::unbuffered(int _f) { _fUnbuf = _f; }



#pragma pack(pop)
#line 188 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\streamb.h"

#line 190 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\streamb.h"

#line 192 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\streamb.h"
#line 257 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ios.h"

inline  ios& __cdecl dec(ios& _strm) { _strm.setf(ios::dec,ios::basefield); return _strm; }
inline  ios& __cdecl hex(ios& _strm) { _strm.setf(ios::hex,ios::basefield); return _strm; }
inline  ios& __cdecl oct(ios& _strm) { _strm.setf(ios::oct,ios::basefield); return _strm; }

inline long ios::flags() const { return x_flags; }
inline long ios::flags(long _l){ long _lO; _lO = x_flags; x_flags = _l; return _lO; }

inline long ios::setf(long _l,long _m){ long _lO; lock(); _lO = x_flags; x_flags = (_l&_m) | (x_flags&(~_m)); unlock(); return _lO; }
inline long ios::setf(long _l){ long _lO; lock(); _lO = x_flags; x_flags |= _l; unlock(); return _lO; }
inline long ios::unsetf(long _l){ long _lO; lock(); _lO = x_flags; x_flags &= (~_l); unlock(); return _lO; }

inline int ios::width() const { return x_width; }
inline int ios::width(int _i){ int _iO; _iO = (int)x_width; x_width = _i; return _iO; }

inline ostream* ios::tie(ostream* _os){ ostream* _osO; _osO = x_tie; x_tie = _os; return _osO; }
inline ostream* ios::tie() const { return x_tie; }
inline char ios::fill() const { return x_fill; }
inline char ios::fill(char _c){ char _cO; _cO = x_fill; x_fill = _c; return _cO; }
inline int ios::precision(int _i){ int _iO; _iO = (int)x_precision; x_precision = _i; return _iO; }
inline int ios::precision() const { return x_precision; }

inline int ios::rdstate() const { return state; }


inline int ios::operator!() const { return state&(badbit|failbit); }

inline int  ios::bad() const { return state & badbit; }
inline void ios::clear(int _i){ lock(); state = _i; unlock(); }
inline int  ios::eof() const { return state & eofbit; }
inline int  ios::fail() const { return state & (badbit | failbit); }
inline int  ios::good() const { return state == 0; }

inline streambuf* ios::rdbuf() const { return bp; }

inline long & ios::iword(int _i) const { return x_statebuf[_i] ; }
inline void * & ios::pword(int _i) const { return (void * &)x_statebuf[_i]; }










#pragma pack(pop)
#line 306 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ios.h"

#line 308 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ios.h"

#line 310 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ios.h"
#line 53 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\iostream.h"



#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\istream.h"















#pragma once
#line 18 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\istream.h"








#line 27 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\istream.h"





#pragma pack(push,8)

#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\useoldio.h"











































#line 35 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\istream.h"

#line 37 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\istream.h"
















#pragma warning(disable:4069)   



#pragma warning(disable:4514) 

#line 60 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\istream.h"


typedef long streamoff, streampos;

class  istream : virtual public ios {

public:
    istream(streambuf*);
    virtual ~istream();

    int  ipfx(int =0);
    void isfx() { unlockbuf(); unlock(); }

    inline istream& operator>>(istream& (__cdecl * _f)(istream&));
    inline istream& operator>>(ios& (__cdecl * _f)(ios&));
    istream& operator>>(char *);
    inline istream& operator>>(unsigned char *);
    inline istream& operator>>(signed char *);
    istream& operator>>(char &);
    inline istream& operator>>(unsigned char &);
    inline istream& operator>>(signed char &);
    istream& operator>>(short &);
    istream& operator>>(unsigned short &);
    istream& operator>>(int &);
    istream& operator>>(unsigned int &);
    istream& operator>>(long &);
    istream& operator>>(unsigned long &);
    istream& operator>>(float &);
    istream& operator>>(double &);
    istream& operator>>(long double &);
    istream& operator>>(streambuf*);

    int get();

    inline istream& get(         char *,int,char ='\n');
    inline istream& get(unsigned char *,int,char ='\n');
    inline istream& get(  signed char *,int,char ='\n');

    istream& get(char &);
    inline istream& get(unsigned char &);
    inline istream& get(  signed char &);

    istream& get(streambuf&,char ='\n');
    inline istream& getline(         char *,int,char ='\n');
    inline istream& getline(unsigned char *,int,char ='\n');
    inline istream& getline(  signed char *,int,char ='\n');

    inline istream& ignore(int =1,int =(-1));
    istream& read(char *,int);
    inline istream& read(unsigned char *,int);
    inline istream& read(signed char *,int);

    int gcount() const { return x_gcount; }
    int peek();
    istream& putback(char);
    int sync();

    istream& seekg(streampos);
    istream& seekg(streamoff,ios::seek_dir);
    streampos tellg();

    void eatwhite();

protected:
    istream();
    istream(const istream&);    
    istream& operator=(streambuf* _isb); 
    istream& operator=(const istream& _is) { return operator=(_is.rdbuf()); }
    istream& get(char *, int, int);
     int do_ipfx(int);

private:
    istream(ios&);
    int getint(char *);
    int getdouble(char *, int);
    int _fGline;
    int x_gcount;
};

    inline istream& istream::operator>>(istream& (__cdecl * _f)(istream&)) { (*_f)(*this); return *this; }
    inline istream& istream::operator>>(ios& (__cdecl * _f)(ios&)) { (*_f)(*this); return *this; }

    inline istream& istream::operator>>(unsigned char * _s) { return operator>>((char *)_s); }
    inline istream& istream::operator>>(  signed char * _s) { return operator>>((char *)_s); }

    inline istream& istream::operator>>(unsigned char & _c) { return operator>>((char &) _c); }
    inline istream& istream::operator>>(  signed char & _c) { return operator>>((char &) _c); }

    inline istream& istream::get(         char * _b, int _lim, char _delim) { return get(        _b, _lim, (int)(unsigned char)_delim); }
    inline istream& istream::get(unsigned char * _b, int _lim, char _delim) { return get((char *)_b, _lim, (int)(unsigned char)_delim); }
    inline istream& istream::get(signed   char * _b, int _lim, char _delim) { return get((char *)_b, _lim, (int)(unsigned char)_delim); }

    inline istream& istream::get(unsigned char & _c) { return get((char &)_c); }
    inline istream& istream::get(  signed char & _c) { return get((char &)_c); }

    inline istream& istream::getline(         char * _b,int _lim,char _delim) { lock(); _fGline++; get(        _b, _lim, (int)(unsigned char)_delim); unlock(); return *this; }
    inline istream& istream::getline(unsigned char * _b,int _lim,char _delim) { lock(); _fGline++; get((char *)_b, _lim, (int)(unsigned char)_delim); unlock(); return *this; }
    inline istream& istream::getline(  signed char * _b,int _lim,char _delim) { lock(); _fGline++; get((char *)_b, _lim, (int)(unsigned char)_delim); unlock(); return *this; }

    inline istream& istream::ignore(int _n,int _delim) { lock(); _fGline++; get((char *)0, _n+1, _delim); unlock(); return *this; }

    inline istream& istream::read(unsigned char * _ptr, int _n) { return read((char *) _ptr, _n); }
    inline istream& istream::read(  signed char * _ptr, int _n) { return read((char *) _ptr, _n); }

class  istream_withassign : public istream {
        public:
            istream_withassign();
            istream_withassign(streambuf*);
            ~istream_withassign();
    istream& operator=(const istream& _is) { return istream::operator=(_is); }
    istream& operator=(streambuf* _isb) { return istream::operator=(_isb); }
};

extern  istream_withassign cin;

inline  istream& __cdecl ws(istream& _ins) { _ins.eatwhite(); return _ins; }

 ios&        __cdecl dec(ios&);
 ios&        __cdecl hex(ios&);
 ios&        __cdecl oct(ios&);



#pragma pack(pop)
#line 185 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\istream.h"

#line 187 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\istream.h"

#line 189 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\istream.h"
#line 57 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\iostream.h"

#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ostream.h"















#pragma once
#line 18 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ostream.h"








#line 27 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ostream.h"





#pragma pack(push,8)

#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\useoldio.h"











































#line 35 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ostream.h"

#line 37 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ostream.h"
















#pragma warning(disable:4514) 

#line 56 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ostream.h"

typedef long streamoff, streampos;

class  ostream : virtual public ios {

public:
        ostream(streambuf*);
        virtual ~ostream();

        ostream& flush();
        int  opfx();
        void osfx();

inline  ostream& operator<<(ostream& (__cdecl * _f)(ostream&));
inline  ostream& operator<<(ios& (__cdecl * _f)(ios&));
        ostream& operator<<(const char *);
inline  ostream& operator<<(const unsigned char *);
inline  ostream& operator<<(const signed char *);
inline  ostream& operator<<(char);
        ostream& operator<<(unsigned char);
inline  ostream& operator<<(signed char);
        ostream& operator<<(short);
        ostream& operator<<(unsigned short);
        ostream& operator<<(int);
        ostream& operator<<(unsigned int);
        ostream& operator<<(long);
        ostream& operator<<(unsigned long);
inline  ostream& operator<<(float);
        ostream& operator<<(double);
        ostream& operator<<(long double);
        ostream& operator<<(const void *);
        ostream& operator<<(streambuf*);
inline  ostream& put(char);
        ostream& put(unsigned char);
inline  ostream& put(signed char);
        ostream& write(const char *,int);
inline  ostream& write(const unsigned char *,int);
inline  ostream& write(const signed char *,int);
        ostream& seekp(streampos);
        ostream& seekp(streamoff,ios::seek_dir);
        streampos tellp();

protected:
        ostream();
        ostream(const ostream&);        
        ostream& operator=(streambuf*); 
        ostream& operator=(const ostream& _os) {return operator=(_os.rdbuf()); }
        int do_opfx(int);               
        void do_osfx();                 

private:
        ostream(ios&);
        ostream& writepad(const char *, const char *);
        int x_floatused;
};

inline ostream& ostream::operator<<(ostream& (__cdecl * _f)(ostream&)) { (*_f)(*this); return *this; }
inline ostream& ostream::operator<<(ios& (__cdecl * _f)(ios& )) { (*_f)(*this); return *this; }

inline  ostream& ostream::operator<<(char _c) { return operator<<((unsigned char) _c); }
inline  ostream& ostream::operator<<(signed char _c) { return operator<<((unsigned char) _c); }

inline  ostream& ostream::operator<<(const unsigned char * _s) { return operator<<((const char *) _s); }
inline  ostream& ostream::operator<<(const signed char * _s) { return operator<<((const char *) _s); }

inline  ostream& ostream::operator<<(float _f) { x_floatused = 1; return operator<<((double) _f); }

inline  ostream& ostream::put(char _c) { return put((unsigned char) _c); }
inline  ostream& ostream::put(signed char _c) { return put((unsigned char) _c); }

inline  ostream& ostream::write(const unsigned char * _s, int _n) { return write((char *) _s, _n); }
inline  ostream& ostream::write(const signed char * _s, int _n) { return write((char *) _s, _n); }


class  ostream_withassign : public ostream {
        public:
                ostream_withassign();
                ostream_withassign(streambuf* _is);
                ~ostream_withassign();
    ostream& operator=(const ostream& _os) { return ostream::operator=(_os.rdbuf()); }
    ostream& operator=(streambuf* _sb) { return ostream::operator=(_sb); }
};

extern ostream_withassign  cout;
extern ostream_withassign  cerr;
extern ostream_withassign  clog;

inline  ostream& __cdecl flush(ostream& _outs) { return _outs.flush(); }
inline  ostream& __cdecl endl(ostream& _outs) { return _outs << '\n' << flush; }
inline  ostream& __cdecl ends(ostream& _outs) { return _outs << char('\0'); }

 ios&           __cdecl dec(ios&);
 ios&           __cdecl hex(ios&);
 ios&           __cdecl oct(ios&);



#pragma pack(pop)
#line 155 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ostream.h"

#line 157 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ostream.h"

#line 159 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ostream.h"
#line 59 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\iostream.h"



#pragma warning(disable:4514) 

#line 65 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\iostream.h"

class  iostream : public istream, public ostream {
public:
        iostream(streambuf*);
        virtual ~iostream();
protected:
        iostream();
        iostream(const iostream&);
inline iostream& operator=(streambuf*);
inline iostream& operator=(iostream&);
private:
        iostream(ios&);
        iostream(istream&);
        iostream(ostream&);
};

inline iostream& iostream::operator=(streambuf* _sb) { istream::operator=(_sb); ostream::operator=(_sb); return *this; }

inline iostream& iostream::operator=(iostream& _strm) { return operator=(_strm.rdbuf()); }

class  Iostream_init {
public:
        Iostream_init();
        Iostream_init(ios &, int =0);   
        ~Iostream_init();
};






#pragma pack(pop)
#line 99 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\iostream.h"

#line 101 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\iostream.h"

#line 103 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\iostream.h"
#line 2 "main.cpp"
#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\fstream.h"















#pragma once
#line 18 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\fstream.h"








#line 27 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\fstream.h"





#pragma pack(push,8)

#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\useoldio.h"











































#line 35 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\fstream.h"

#line 37 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\fstream.h"
















#pragma warning(disable:4514) 

#line 56 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\fstream.h"

typedef int filedesc;

class  filebuf : public streambuf {
public:
static  const int       openprot;       


static  const int       sh_none;        
static  const int       sh_read;        
static  const int       sh_write;       



static  const int       binary;
static  const int       text;

                        filebuf();
                        filebuf(filedesc);
                        filebuf(filedesc, char *, int);
                        ~filebuf();

        filebuf*        attach(filedesc);
        filedesc        fd() const { return (x_fd==-1) ? (-1) : x_fd; }
        int             is_open() const { return (x_fd!=-1); }
        filebuf*        open(const char *, int, int = filebuf::openprot);
        filebuf*        close();
        int             setmode(int = filebuf::text);

virtual int             overflow(int=(-1));
virtual int             underflow();

virtual streambuf*      setbuf(char *, int);
virtual streampos       seekoff(streamoff, ios::seek_dir, int);

virtual int             sync();

private:
        filedesc        x_fd;
        int             x_fOpened;
};

class  ifstream : public istream {
public:
        ifstream();
        ifstream(const char *, int =ios::in, int = filebuf::openprot);
        ifstream(filedesc);
        ifstream(filedesc, char *, int);
        ~ifstream();

        streambuf * setbuf(char *, int);
        filebuf* rdbuf() const { return (filebuf*) ios::rdbuf(); }

        void attach(filedesc);
        filedesc fd() const { return rdbuf()->fd(); }

        int is_open() const { return rdbuf()->is_open(); }
        void open(const char *, int =ios::in, int = filebuf::openprot);
        void close();
        int setmode(int mode = filebuf::text) { return rdbuf()->setmode(mode); }
};

class  ofstream : public ostream {
public:
        ofstream();
        ofstream(const char *, int =ios::out, int = filebuf::openprot);
        ofstream(filedesc);
        ofstream(filedesc, char *, int);
        ~ofstream();

        streambuf * setbuf(char *, int);
        filebuf* rdbuf() const { return (filebuf*) ios::rdbuf(); }

        void attach(filedesc);
        filedesc fd() const { return rdbuf()->fd(); }

        int is_open() const { return rdbuf()->is_open(); }
        void open(const char *, int =ios::out, int = filebuf::openprot);
        void close();
        int setmode(int mode = filebuf::text) { return rdbuf()->setmode(mode); }
};
        
class  fstream : public iostream {
public:
        fstream();
        fstream(const char *, int, int = filebuf::openprot);
        fstream(filedesc);
        fstream(filedesc, char *, int);
        ~fstream();

        streambuf * setbuf(char *, int);
        filebuf* rdbuf() const { return (filebuf*) ostream::rdbuf(); }

        void attach(filedesc);
        filedesc fd() const { return rdbuf()->fd(); }

        int is_open() const { return rdbuf()->is_open(); }
        void open(const char *, int, int = filebuf::openprot);
        void close();
        int setmode(int mode = filebuf::text) { return rdbuf()->setmode(mode); }
};
        

inline  ios& binary(ios& _fstrm) \
   { ((filebuf*)_fstrm.rdbuf())->setmode(filebuf::binary); return _fstrm; }
inline  ios& text(ios& _fstrm) \
   { ((filebuf*)_fstrm.rdbuf())->setmode(filebuf::text); return _fstrm; }


#pragma pack(pop)
#line 167 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\fstream.h"

#line 169 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\fstream.h"

#line 171 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\fstream.h"
#line 3 "main.cpp"
#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"
















#pragma once
#line 19 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"






#line 26 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"







#pragma pack(push,8)
#line 35 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"


extern "C" {
#line 39 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"


















#line 58 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"








#line 67 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"
#line 68 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"



typedef unsigned int size_t;

#line 74 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"



typedef unsigned short wchar_t;

#line 80 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"




















typedef int (__cdecl * _onexit_t)(void);



#line 105 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"

#line 107 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"






typedef struct _div_t {
        int quot;
        int rem;
} div_t;

typedef struct _ldiv_t {
        long quot;
        long rem;
} ldiv_t;


#line 125 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"












 extern int __mb_cur_max;
#line 139 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"





















#line 161 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"

















#line 179 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"
 extern int errno;               
 extern unsigned long _doserrno; 
#line 182 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"







 extern char * _sys_errlist[];   
 extern int _sys_nerr;           





























#line 221 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"

 extern int __argc;          
 extern char ** __argv;      

 extern wchar_t ** __wargv;  
#line 227 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"




 extern char ** _environ;    

 extern wchar_t ** _wenviron;    
#line 235 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"
#line 236 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"

 extern char * _pgmptr;      

 extern wchar_t * _wpgmptr;  
#line 241 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"

#line 243 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"


 extern int _fmode;          
 extern int _fileinfo;       




 extern unsigned int _osver;
 extern unsigned int _winver;
 extern unsigned int _winmajor;
 extern unsigned int _winminor;





 __declspec(noreturn) void   __cdecl abort(void);
 __declspec(noreturn) void   __cdecl exit(int);



#line 266 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"



#line 270 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"
        int    __cdecl abs(int);
#line 272 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"
        int    __cdecl atexit(void (__cdecl *)(void));
 double __cdecl atof(const char *);
 int    __cdecl atoi(const char *);
 long   __cdecl atol(const char *);



 void * __cdecl bsearch(const void *, const void *, size_t, size_t,
        int (__cdecl *)(const void *, const void *));
 void * __cdecl calloc(size_t, size_t);
 div_t  __cdecl div(int, int);
 void   __cdecl free(void *);
 char * __cdecl getenv(const char *);
 char * __cdecl _itoa(int, char *, int);

 char * __cdecl _i64toa(__int64, char *, int);
 char * __cdecl _ui64toa(unsigned __int64, char *, int);
 __int64 __cdecl _atoi64(const char *);
#line 291 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"


#line 294 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"
        long __cdecl labs(long);
#line 296 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"
 ldiv_t __cdecl ldiv(long, long);
 char * __cdecl _ltoa(long, char *, int);
 void * __cdecl malloc(size_t);
 int    __cdecl mblen(const char *, size_t);
 size_t __cdecl _mbstrlen(const char *s);
 int    __cdecl mbtowc(wchar_t *, const char *, size_t);
 size_t __cdecl mbstowcs(wchar_t *, const char *, size_t);
 void   __cdecl qsort(void *, size_t, size_t, int (__cdecl *)
        (const void *, const void *));
 int    __cdecl rand(void);
 void * __cdecl realloc(void *, size_t);
 int    __cdecl _set_error_mode(int);
 void   __cdecl srand(unsigned int);
 double __cdecl strtod(const char *, char **);
 long   __cdecl strtol(const char *, char **, int);



 unsigned long __cdecl strtoul(const char *, char **, int);

 int    __cdecl system(const char *);
#line 318 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"
 char * __cdecl _ultoa(unsigned long, char *, int);
 int    __cdecl wctomb(char *, wchar_t);
 size_t __cdecl wcstombs(char *, const wchar_t *, size_t);







 wchar_t * __cdecl _itow (int, wchar_t *, int);
 wchar_t * __cdecl _ltow (long, wchar_t *, int);
 wchar_t * __cdecl _ultow (unsigned long, wchar_t *, int);
 double __cdecl wcstod(const wchar_t *, wchar_t **);
 long   __cdecl wcstol(const wchar_t *, wchar_t **, int);
 unsigned long __cdecl wcstoul(const wchar_t *, wchar_t **, int);
 wchar_t * __cdecl _wgetenv(const wchar_t *);
 int    __cdecl _wsystem(const wchar_t *);
 int __cdecl _wtoi(const wchar_t *);
 long __cdecl _wtol(const wchar_t *);

 wchar_t * __cdecl _i64tow(__int64, wchar_t *, int);
 wchar_t * __cdecl _ui64tow(unsigned __int64, wchar_t *, int);
 __int64   __cdecl _wtoi64(const wchar_t *);
#line 343 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"


#line 346 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"
#line 347 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"




 char * __cdecl _ecvt(double, int, int *, int *);

 __declspec(noreturn) void   __cdecl _exit(int);


#line 357 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"
 char * __cdecl _fcvt(double, int, int *, int *);
 char * __cdecl _fullpath(char *, const char *, size_t);
 char * __cdecl _gcvt(double, int, char *);
        unsigned long __cdecl _lrotl(unsigned long, int);
        unsigned long __cdecl _lrotr(unsigned long, int);

 void   __cdecl _makepath(char *, const char *, const char *, const char *,
        const char *);
#line 366 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"
        _onexit_t __cdecl _onexit(_onexit_t);
 void   __cdecl perror(const char *);
 int    __cdecl _putenv(const char *);
        unsigned int __cdecl _rotl(unsigned int, int);
        unsigned int __cdecl _rotr(unsigned int, int);
 void   __cdecl _searchenv(const char *, const char *, char *);

 void   __cdecl _splitpath(const char *, char *, char *, char *, char *);
#line 375 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"
 void   __cdecl _swab(char *, char *, int);






 wchar_t * __cdecl _wfullpath(wchar_t *, const wchar_t *, size_t);
 void   __cdecl _wmakepath(wchar_t *, const wchar_t *, const wchar_t *, const wchar_t *,
        const wchar_t *);
 void   __cdecl _wperror(const wchar_t *);
 int    __cdecl _wputenv(const wchar_t *);
 void   __cdecl _wsearchenv(const wchar_t *, const wchar_t *, wchar_t *);
 void   __cdecl _wsplitpath(const wchar_t *, wchar_t *, wchar_t *, wchar_t *, wchar_t *);


#line 392 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"
#line 393 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"




 void __cdecl _seterrormode(int);
 void __cdecl _beep(unsigned, unsigned);
 void __cdecl _sleep(unsigned long);
#line 401 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"


#line 404 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"







 int __cdecl tolower(int);
#line 413 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"

 int __cdecl toupper(int);
#line 416 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"

#line 418 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"

















 char * __cdecl ecvt(double, int, int *, int *);
 char * __cdecl fcvt(double, int, int *, int *);
 char * __cdecl gcvt(double, int, char *);
 char * __cdecl itoa(int, char *, int);
 char * __cdecl ltoa(long, char *, int);
        _onexit_t __cdecl onexit(_onexit_t);
 int    __cdecl putenv(const char *);
 void   __cdecl swab(char *, char *, int);
 char * __cdecl ultoa(unsigned long, char *, int);

#line 446 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"

#line 448 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"


}

#line 453 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"


#pragma pack(pop)
#line 457 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"

#line 459 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"
#line 4 "main.cpp"

void display(char* path, ostream& out);

int main(int argc, char* argv[])
{
    if (argc != 2)
    {
        cout << "Usage: cat <path>" << endl;
        return 0;
    }
    
    display(argv[1], cout);
}

bool display(char* path, ostream& out)
{
    ifstream* in = new ifstream(path, ios::nocreate);
    if (!in -> is_open()) { return false; }
    char ch;
    while(in -> get(ch)) { out.put(ch); }
    if (!in -> eof()) { return false; }
    in -> close();
    delete in;
}
