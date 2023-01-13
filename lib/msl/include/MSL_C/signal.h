#ifndef _MSL_SIGNAL_H
#define _MSL_SIGNAL_H

#include <ansi_params.h>

#if !_MSL_USING_MW_C_HEADERS
    #error You must have the non-MSL C header file access path before the MSL access path
#else

#include <csignal>

#if defined(__cplusplus) && defined(_MSL_USING_NAMESPACE)
using std::sig_atomic_t;
using std::raise;
using std::signal;
#endif

#endif

#endif
