#ifndef NNS_MISC_H_
#define NNS_MISC_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/os/common/printf.h>

#ifdef __cplusplus
#define NNS_IFDEFCPP extern "C" {
#define NNS_ENDIFCPP }
#else
#define NNS_IFDEFCPP
#define NNS_ENDIFCPP
#endif

#ifdef NNS_DEBUG
#ifndef NNS_ASSERT
#define NNS_ASSERT(exp) \
    (void)((exp) || (OSi_Panic(__FILE__, __LINE__, "NNS:Failed assertion " #exp), 0))
#endif
#else
#ifndef NNS_ASSERT
#define NNS_ASSERT(exp) ((void)0)
#endif
#endif

#ifdef NNS_DEBUG
#ifndef NNS_ASSERTMSG
#define NNS_ASSERTMSG(exp, ...) \
    (void)((exp) || (OSi_Panic(__FILE__, __LINE__, __VA_ARGS__), 0))
#endif
#else
#ifndef NNS_ASSERTMSG
#define NNS_ASSERTMSG(exp, ...) ((void)0)
#endif
#endif

#ifdef NNS_DEBUG
#ifndef NNS_WARNING
#define NNS_WARNING(exp, ...) \
    (void)((exp) || (OSi_Warning(__FILE__, __LINE__, __VA_ARGS__), 0))
#endif
#else
#ifndef NNS_WARNING
#define NNS_WARNING(exp, ...) ((void)0)
#endif
#endif

#ifdef NNS_DEBUG
#ifndef NNS_NULL_ASSERT
#define NNS_NULL_ASSERT(exp) \
    (void)((exp != NULL) || (OSi_Panic(__FILE__, __LINE__, "NNS:Pointer must not be NULL ("#exp ")"), 0))
#endif
#else
#ifndef NNS_NULL_ASSERT
#define NNS_NULL_ASSERT(exp) ((void)0)
#endif
#endif

#ifdef NNS_DEBUG
#ifndef NNS_MIN_ASSERT
#define NNS_MIN_ASSERT(exp, min) \
    (void)(((exp) >= (min)) || \
           (OSi_Panic(__FILE__, __LINE__, #exp " is out of bounds(%d)\n%d <= "#exp " not satisfied.", exp, min), 0))
#endif
#else
#ifndef NNS_MIN_ASSERT
#define NNS_MIN_ASSERT(exp, min) ((void)0)
#endif
#endif

#ifdef NNS_DEBUG
#ifndef NNS_MAX_ASSERT
#define NNS_MAX_ASSERT(exp, max) \
    (void)(((exp) <= (max)) || \
           (OSi_Panic(__FILE__, __LINE__, #exp " is out of bounds(%d)\n"#exp " <= %d not satisfied.", exp, max), 0))
#endif
#else
#ifndef NNS_MAX_ASSERT
#define NNS_MAX_ASSERT(exp, max) ((void)0)
#endif
#endif

#ifdef NNS_DEBUG
#ifndef NNS_MINMAX_ASSERT
#define NNS_MINMAX_ASSERT(exp, min, max) \
    (void)(((exp) >= (min) && (exp) <= (max)) || \
           (OSi_Panic(__FILE__, __LINE__, #exp " is out of bounds(%d)\n%d <= "#exp " <= %d not satisfied.", exp, min, max), 0))
#endif
#else
#ifndef NNS_MINMAX_ASSERT
#define NNS_MINMAX_ASSERT(exp, min, max) ((void)0)
#endif
#endif

#ifdef NNS_DEBUG
#ifndef NNS_FATAL_ERROR
#define NNS_FATAL_ERROR(...) \
    (void)(OSi_Panic(__FILE__, __LINE__, "NNS:Fatal Error\n"__VA_ARGS__), 0)
#endif
#else
#ifndef NNS_FATAL_ERROR
#define NNS_FATAL_ERROR(...) ((void)0)
#endif
#endif

#ifdef NNS_DEBUG
#ifndef NNS_INTERNAL_ERROR
#define NNS_INTERNAL_ERROR(...) \
    (void)(OSi_Panic(__FILE__, __LINE__, "NNS Internal error\n" __VA_ARGS__), 0)
#endif
#else
#ifndef NNS_INTERNAL_ERROR
#define NNS_INTERNAL_ERROR(...) ((void)0)
#endif
#endif

#ifdef NNS_DEBUG
#ifndef NNS_ALIGN4_ASSERT
#define NNS_ALIGN4_ASSERT(exp) \
    (void)((((u32)exp & 3) == 0) || (OSi_Panic(__FILE__, __LINE__, "NNS:Alignment Error(0x%x)\n"#exp " must be aligned to 4 bytes boundary.", exp), 0))
#endif
#else
#ifndef NNS_ALIGN4_ASSERT
#define NNS_ALIGN4_ASSERT(exp) ((void)0)
#endif
#endif

#ifdef NNS_DEBUG
#ifndef NNS_ALIGN2_ASSERT
#define NNS_ALIGN2_ASSERT(exp) \
    (void)((((u32)exp & 1) == 0) || (OSi_Panic(__FILE__, __LINE__, "NNS:Alignment Error(0x%x)\n"#exp " must be aligned to 2 bytes boundary.", exp), 0))
#endif
#else
#ifndef NNS_ALIGN2_ASSERT
#define NNS_ALIGN2_ASSERT(exp) ((void)0)
#endif
#endif

#ifdef __cplusplus
}
#endif

#endif
