#ifndef _MSL_FLOAT_ARM_H
#define _MSL_FLOAT_ARM_H

#ifndef _MSL_CFLOAT
#error This header may only be included from <cfloat>
#endif

_MSL_BEGIN_EXTERN_C

extern float _fadd(float, float);
extern float _fsub(float, float);
extern float _frsb(float, float);
extern float _fmul(float, float);
extern float _fdiv(float, float);
extern float _frdiv(float, float);
extern float _frem(float, float);
extern float _frnd(float);
extern float _fsqrt(float);

extern double _dadd(double, double);
extern double _dsub(double, double);
extern double _drsb(double, double);
extern double _dmul(double, double);
extern double _ddiv(double, double);
extern double _drdiv(double, double);
extern double _drem(double, double);
extern double _drnd(double);
extern double _dsqrt(double);

extern int _feq(float, float);
extern int _fneq(float, float);
extern int _fgeq(float, float);
extern int _fgr(float, float);
extern int _fleq(float, float);
extern int _fls(float, float);
extern int _deq(double, double);
extern int _dneq(double, double);
extern int _dgeq(double, double);
extern int _dgr(double, double);
extern int _dleq(double, double);
extern int _dls(double, double);

extern double _f2d(float);
extern float _d2f(double);

extern float _fflt(int);
extern float _ffltu(unsigned int);
extern double _dflt(int);
extern double _dfltu(unsigned int);
#if !defined(__STDC__) || (defined(__STDC_VERSION__) && 199901L <= __STDC_VERSION__)
extern float _ll_sto_f(long long);
extern float _ll_uto_f(unsigned long long);
extern double _ll_sto_d(long long);
extern double _ll_uto_d(unsigned long long);
#endif

extern int _ffix(float);
extern unsigned int _ffixu(float);
extern int _dfix(double);
extern unsigned int _dfixu(double);
#if !defined(__STDC__) || (defined(__STDC_VERSION__) && 199901L <= __STDC_VERSION__)
extern long long _ll_sfrom_f(float);
extern unsigned long long _ll_ufrom_f(float);
extern long long _ll_sfrom_d(double);
extern unsigned long long _ll_ufrom_d(double);
#endif

extern int _ffix_r(float);
extern unsigned int _ffixu_r(float);
extern int _dfix_r(double);
extern unsigned int _dfixu_r(double);
#if !defined(__STDC__) || (defined(__STDC_VERSION__) && 199901L <= __STDC_VERSION__)
extern long long _ll_sfrom_f_r(float);
extern unsigned long long _ll_ufrom_f_r(float);
extern long long _ll_sfrom_d_r(double);
extern unsigned long long _ll_ufrom_d_r(double);
#endif

extern void _fp_init(void);

extern unsigned * __rt_fp_status_addr(void);

extern unsigned _controlfp(unsigned, unsigned);
extern unsigned _clearfp(void);
extern unsigned _statusfp(void);

#define _MCW_EM 0x001F
#define _EM_INVALID 0x0001
#define _EM_ZERODIVIDE 0x0002
#define _EM_OVERFLOW 0x0004
#define _EM_UNDERFLOW 0x0008
#define _EM_INEXACT 0x0010

#define _MCW_RC 0xC000
#define _RC_CHOP 0xC000
#define _RC_UP 0x4000
#define _RC_DOWN 0x8000
#define _RC_NEAR 0x0000

#define _FPE_INVALID 0x04000000
#define _FPE_ZERODIVIDE 0x08000000
#define _FPE_OVERFLOW 0x10000000
#define _FPE_UNDERFLOW 0x20000000
#define _FPE_INEXACT 0x40000000

_MSL_END_EXTERN_C

#endif
