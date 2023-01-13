#ifndef _MSL_CPP_STD_CTYPE_H
#define _MSL_CPP_STD_CTYPE_H

#ifdef __cplusplus

namespace std {
#if _MSL_OS_X_VERSION > 1
using ::isalnum;
using ::isalpha;
#if _MSL_C99
using ::isblank;
#endif
using ::iscntrl;
using ::isdigit;
using ::isgraph;
using ::islower;
using ::isprint;
using ::ispunct;
using ::isspace;
using ::isupper;
using ::isxdigit;
#endif
using ::tolower;
using ::toupper;
}

#endif

#endif
