#ifndef _MSL_SETJMP_ARM_H
#define _MSL_SETJMP_ARM_H

#define _MSL_SETJMP_LONGJMP_DEFINED

_MSL_BEGIN_NAMESPACE_STD
    _MSL_BEGIN_EXTERN_C

typedef unsigned long jmp_buf[16];

_MSL_IMP_EXP_C void longjmp(jmp_buf env, int val);
    #define setjmp(jmp_buf) __std(__setjmp(jmp_buf))
_MSL_IMP_EXP_C int __setjmp(jmp_buf env);

_MSL_END_EXTERN_C
    _MSL_END_NAMESPACE_STD

#endif
