#ifndef _MSL_ASSERT_API_H
#define _MSL_ASSERT_API_H

_MSL_BEGIN_EXTERN_C

#ifndef _MSL_ASSERT_DISPLAYS_FUNC
    #ifdef __MWERKS__
        #if __option(c99)
            #define _MSL_ASSERT_DISPLAYS_FUNC 1
        #else
            #define _MSL_ASSERT_DISPLAYS_FUNC 0
        #endif
    #else
        #define _MSL_ASSERT_DISPLAYS_FUNC 1
    #endif
#endif

_MSL_IMP_EXP_C void _MSL_CDECL __msl_assertion_failed(char const *, char const *, char const *, int) _MSL_CANT_THROW;

_MSL_END_EXTERN_C

#endif
