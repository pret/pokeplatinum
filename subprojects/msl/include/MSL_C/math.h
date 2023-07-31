#ifndef _MSL_MATH_H
#define _MSL_MATH_H

#include <ansi_params.h>

#if !_MSL_USING_MW_C_HEADERS
    #error You must have the non-MSL C header file access path before the MSL access path
#else

#include <cmath>

#if defined(__cplusplus) && defined(_MSL_USING_NAMESPACE) && defined(_MSL_CMATH_DEFINED_MATH_ITEMS)
using std::acos;
using std::asin;
using std::atan;
using std::atan2;
using std::ceil;
using std::cos;
using std::cosh;
using std::exp;
using std::fabs;
using std::floor;
using std::fmod;
using std::frexp;
using std::ldexp;
using std::log;
using std::log10;
using std::modf;
using std::pow;
using std::sin;
using std::sinh;
using std::sqrt;
using std::tan;
using std::tanh;

#if _MSL_C99 || _MSL_C_HAS_CPP_EXTENSIONS
using std::acosf;
using std::acosl;
using std::asinf;
using std::asinl;
using std::atanf;
using std::atanl;
using std::atan2f;
using std::atan2l;
using std::ceilf;
using std::ceill;
using std::cosf;
using std::cosl;
using std::coshf;
using std::coshl;
using std::expf;
using std::expl;
using std::fabsf;
using std::fabsl;
using std::floorf;
using std::floorl;
using std::fmodf;
using std::fmodl;
using std::frexpf;
using std::frexpl;
using std::ldexpf;
using std::ldexpl;
using std::logf;
using std::logl;
using std::log10f;
using std::log10l;
using std::modff;
using std::modfl;
using std::powf;
using std::powl;
using std::sinf;
using std::sinl;
using std::sinhf;
using std::sinhl;
using std::sqrtf;
using std::sqrtl;
using std::tanf;
using std::tanl;
using std::tanhf;
using std::tanhl;
#endif

#if _MSL_C99 || _MSL_USES_SUN_MATH_LIB
using std::copysign;
using std::expm1;
using std::rint;
using std::scalbn;
#endif

#if _MSL_C99
using std::acosh;
using std::acoshf;
using std::acoshl;
using std::asinh;
using std::asinhf;
using std::asinhl;
using std::atanh;
using std::atanhf;
using std::atanhl;
using std::cbrt;
using std::cbrtf;
using std::cbrtl;
using std::copysignf;
using std::copysignl;
using std::erf;
using std::erff;
using std::erfl;
using std::erfc;
using std::erfcf;
using std::erfcl;
using std::exp2;
using std::exp2f;
using std::exp2l;
using std::expm1f;
using std::expm1l;
using std::fdim;
using std::fdimf;
using std::fdiml;
using std::fma;
using std::fmaf;
using std::fmal;
using std::fmax;
using std::fmaxf;
using std::fmaxl;
using std::fmin;
using std::fminf;
using std::fminl;
using std::hypot;
using std::hypotf;
using std::hypotl;
using std::ilogb;
using std::ilogbf;
using std::ilogbl;
using std::lgamma;
using std::lgammaf;
using std::lgammal;
    #if _MSL_LONGLONG
using std::llrint;
using std::llrintf;
using std::llrintl;
using std::llround;
using std::llroundf;
using std::llroundl;
    #endif
using std::log1p;
using std::log1pf;
using std::log1pl;
using std::log2;
using std::log2f;
using std::log2l;
using std::logb;
using std::logbf;
using std::logbl;
using std::lrint;
using std::lrintf;
using std::lrintl;
using std::lround;
using std::lroundf;
using std::lroundl;
using std::nan;
using std::nanf;
using std::nanl;
using std::nearbyint;
using std::nearbyintf;
using std::nearbyintl;
using std::nextafter;
using std::nextafterf;
using std::nextafterl;
using std::nexttoward;
using std::nexttowardf;
using std::nexttowardl;
using std::remainder;
using std::remainderf;
using std::remainderl;
using std::remquo;
using std::remquof;
using std::remquol;
using std::rintf;
using std::rintl;
using std::round;
using std::roundf;
using std::roundl;
using std::scalbln;
using std::scalblnf;
using std::scalblnl;
using std::scalbnf;
using std::scalbnl;
using std::tgamma;
using std::tgammaf;
using std::tgammal;
using std::trunc;
using std::truncf;
using std::truncl;
using std::abs;
using std::float_t;
using std::double_t;
#endif

#endif

#endif
#endif
#endif
