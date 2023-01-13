#pragma ANSI_strict off

#include <ansi_params.h>
#include <errno.h>

#if !_MSL_THREADSAFE || !_MSL_LOCALDATA_AVAILABLE
    #if !defined(__MACH__)
int errno;
    #endif

    #if ((__dest_os == __mac_os) || (__dest_os == __mac_os_x))
short __MacOSErrNo;
    #endif
#endif
