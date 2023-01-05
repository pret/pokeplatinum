#ifndef NITRO_TYPES_H_
#define NITRO_TYPES_H_

#ifdef __MWERKS__
#pragma enumsalwaysint on
#endif

#define SDK_LITTLE_ENDIAN
#define SDK_IS_LITTLE_ENDIAN 1
#define SDK_IS_BIG_ENDIAN 0

#ifdef SDK_ASM
#else

#ifdef __cplusplus
extern "C" {
#endif

typedef unsigned char u8;
typedef unsigned short int u16;
typedef unsigned long u32;

#ifdef SDK_HAS_NO_LONG_LONG_INT_
typedef unsigned __int64 u64;
#else
typedef unsigned long long int u64;
#endif

typedef signed char s8;
typedef signed short int s16;
typedef signed long s32;

#ifdef SDK_HAS_NO_LONG_LONG_INT_
typedef signed __int64 s64;
#else
typedef signed long long int s64;
#endif

typedef volatile u8 vu8;
typedef volatile u16 vu16;
typedef volatile u32 vu32;
typedef volatile u64 vu64;

typedef volatile s8 vs8;
typedef volatile s16 vs16;
typedef volatile s32 vs32;
typedef volatile s64 vs64;

typedef float f32;
typedef volatile f32 vf32;

typedef u8 REGType8;
typedef u16 REGType16;
typedef u32 REGType32;
typedef u64 REGType64;

typedef vu8 REGType8v;
typedef vu16 REGType16v;
typedef vu32 REGType32v;
typedef vu64 REGType64v;

#ifndef SDK_BOOL_ALREADY_DEFINED_
#ifndef BOOL
typedef int BOOL;
#endif
#endif

#ifndef TRUE

#define TRUE 1
#endif

#ifndef FALSE
#define FALSE 0
#endif

#ifndef NULL
#ifdef __cplusplus
#define NULL 0
#else
#define NULL ((void *)0)
#endif
#endif

#if defined(SDK_CW) || defined(__MWERKS__)
#ifndef ATTRIBUTE_ALIGN
#define ATTRIBUTE_ALIGN(num) __attribute__ ((aligned(num)))
#endif
#endif

#if defined(SDK_CW) || defined(__MWERKS__)
#define SDK_WEAK_SYMBOL __declspec(weak)
#elif defined(SDK_PRODG)
#define SDK_WEAK_SYMBOL
#endif

#ifdef SDK_CW_FORCE_EXPORT_SUPPORT
#define SDK_FORCE_EXPORT __declspec(force_export)
#else
#define SDK_FORCE_EXPORT
#endif

#ifdef __cplusplus
}
#endif
#endif

#define SDK_INLINE static inline
#define SDK_DECL_INLINE static

#endif
