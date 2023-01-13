#ifdef __MWERKS__
    #if __MWERKS__ >= 0x3000
        #pragma notonce
    #endif
#endif

#include <ansi_params.h>

#if !_MSL_USING_MW_C_HEADERS
    #error You must have the non-MSL C header file access path before the MSL access path
#else
    #include <cassert>
#endif
