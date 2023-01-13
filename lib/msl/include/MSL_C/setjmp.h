#ifndef _MSL_SETJMP_H
#define _MSL_SETJMP_H

#include <ansi_params.h>

#if !_MSL_USING_MW_C_HEADERS
    #error You must have the non-MSL C header file access path before the MSL access path
#else

#include <csetjmp>

#if defined(__cplusplus) && defined(_MSL_USING_NAMESPACE)
using std::jmp_buf;
using std::longjmp;
#endif

#endif

#endif
