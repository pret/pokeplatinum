#if defined(SDK_CW) || defined(__MWERKS__)
#pragma thumb off
#elif defined(SDK_ADS)
TO BE DEFINED
#elif defined(SDK_GCC)
TO BE DEFINED
#endif

#ifdef FX_Mul
#undef FX_Mul
#endif

#ifdef FX_Mul32x64c
#undef FX_Mul32x64c
#endif

#ifdef MATH_CountLeadingZeros
#undef MATH_CountLeadingZeros
#endif

#define FX_Mul(v1, v2) FX_MulInline(v1, v2)
#define FX_Mul32x64c(v32, v64c) FX_Mul32x64cInline(v32, v64c)
#define MATH_CountLeadingZeros(x) MATH_CountLeadingZerosInline(x)
