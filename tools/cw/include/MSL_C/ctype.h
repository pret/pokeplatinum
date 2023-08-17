#ifndef _MSL_CTYPE_H
#define _MSL_CTYPE_H

#include <ansi_params.h>

#if !_MSL_USING_MW_C_HEADERS
    #error You must have the non-MSL C header file access path before the MSL access path
#else

#include <cctype>

#if defined(__cplusplus) && defined(_MSL_USING_NAMESPACE)
using std::isalnum;
using std::isalpha;
#if _MSL_C99
using std::isblank;
#endif
using std::iscntrl;
using std::isdigit;
using std::isgraph;
using std::islower;
using std::isprint;
using std::ispunct;
using std::isspace;
using std::isupper;
using std::isxdigit;
using std::tolower;
using std::toupper;
#endif

#endif

#endif
