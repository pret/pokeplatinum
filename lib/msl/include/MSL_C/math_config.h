#ifndef _MSL_MATH_CONFIG_H
#define _MSL_MATH_CONFIG_H

#include <msl_t.h>

#if defined(__MIPS__)
    #include <mips_math.h>
#elif defined(__m56800__)
    #include <m56800_math.h>
#elif defined(__m56800E__)
    #include <m56700_math.h>
#elif defined(__arm)
    #include <math.ARM.h>
#elif defined(__POWERPC__)
    #include <math_ppc.h>
#elif defined(__INTEL__)
    #if defined(__MWERKS__) && __option(k63d)
        #include <math_k63d.h>
    #else
        #include <math_x87.h>
    #endif
#elif defined(__COLDFIRE__)
    #include <math_e68k.h>
#elif defined(_ENTERPRISE_C_)
    # include <math_StarCore.h>
#endif

#endif
