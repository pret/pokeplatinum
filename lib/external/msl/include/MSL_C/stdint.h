#ifndef _MSL_STDINT_H
#define _MSL_STDINT_H

#include <ansi_params.h>

#if !_MSL_USING_MW_C_HEADERS
    #error You must have the non-MSL C header file access path before the MSL access path
#else

#include <cstdint>

#if _MSL_C99
#if defined(__cplusplus) && defined(_MSL_USING_NAMESPACE)
using std::int8_t;
using std::int16_t;
using std::int32_t;
using std::uint8_t;
using std::uint16_t;
using std::uint32_t;
using std::int_least8_t;
using std::int_least16_t;
using std::int_least32_t;
using std::uint_least8_t;
using std::uint_least16_t;
using std::uint_least32_t;
using std::int_fast8_t;
using std::int_fast16_t;
using std::int_fast32_t;
using std::uint_fast8_t;
using std::uint_fast16_t;
using std::uint_fast32_t;
#if _MSL_LONGLONG
using std::int64_t;
using std::uint64_t;
using std::int_least64_t;
using std::uint_least64_t;
using std::int_fast64_t;
using std::uint_fast64_t;
#endif
using std::intptr_t;
using std::uintptr_t;
using std::intmax_t;
using std::uintmax_t;
#endif
#endif

#endif

#endif
