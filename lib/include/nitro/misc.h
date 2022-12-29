#ifndef NITRO_MISC_H_
#define NITRO_MISC_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/os/common/printf.h>

#ifdef __cplusplus
#define SDK_IFDEFCPP extern "C" {
#define SDK_ENDIFCPP }
#else
#define SDK_IFDEFCPP
#define SDK_ENDIFCPP
#endif

#ifdef SDK_DEBUG
#ifndef SDK_ASSERT
#define SDK_ASSERT(exp) \
    (void)((exp) || (OSi_Panic(__FILE__, __LINE__, "Failed assertion " #exp), 0))
#endif
#else
#ifndef SDK_ASSERT
#define SDK_ASSERT(exp) ((void)0)
#endif
#endif

#define SDK_COMPILER_ASSERT(expr) \
    extern void sdk_compiler_assert ## __LINE__(char is[(expr) ? +1 : -1])

#ifdef SDK_DEBUG
#ifndef SDK_ASSERTMSG
#define SDK_ASSERTMSG(exp, ...) \
    (void)((exp) || (OSi_Panic(__FILE__, __LINE__, __VA_ARGS__), 0))
#endif
#ifndef SDK_TASSERTMSG
#define SDK_TASSERTMSG(exp, ...) \
    (void)((exp) || (OSi_TPanic(__FILE__, __LINE__, __VA_ARGS__), 0))
#endif
#else
#ifndef SDK_ASSERTMSG
#define SDK_ASSERTMSG(exp, ...) ((void)0)
#endif
#ifndef SDK_TASSERTMSG
#define SDK_TASSERTMSG(exp, ...) ((void)0)
#endif
#endif

#ifdef SDK_DEBUG
#ifndef SDK_WARNING
#define SDK_WARNING(exp, ...) \
    (void)((exp) || (OSi_Warning(__FILE__, __LINE__, __VA_ARGS__), 0))
#endif
#ifndef SDK_TWARNING
#define SDK_TWARNING(exp, ...) \
    (void)((exp) || (OSi_TWarning(__FILE__, __LINE__, __VA_ARGS__), 0))
#endif
#else
#ifndef SDK_WARNING
#define SDK_WARNING(exp, ...) ((void)0)
#endif
#ifndef SDK_TWARNING
#define SDK_TWARNING(exp, ...) ((void)0)
#endif
#endif

#ifdef SDK_DEBUG
#ifndef SDK_NULL_ASSERT
#define SDK_NULL_ASSERT(exp) \
    (void)(((exp) != NULL) || (OSi_Panic(__FILE__, __LINE__, "Pointer must not be NULL ("#exp ")"), 0))
#endif
#else
#ifndef SDK_NULL_ASSERT
#define SDK_NULL_ASSERT(exp) ((void)0)
#endif
#endif

#ifdef SDK_DEBUG
#ifndef SDK_MIN_ASSERT
#define SDK_MIN_ASSERT(exp, min) \
    (void)(((exp) >= (min)) || \
           (OSi_Panic(__FILE__, __LINE__, #exp " is out of bounds(%d)\n%d <= "#exp " not satisfied.", exp, min), 0))
#endif
#else
#ifndef SDK_MIN_ASSERT
#define SDK_MIN_ASSERT(exp, min) ((void)0)
#endif
#endif

#ifdef SDK_DEBUG
#ifndef SDK_MAX_ASSERT
#define SDK_MAX_ASSERT(exp, max) \
    (void)(((exp) <= (max)) || \
           (OSi_Panic(__FILE__, __LINE__, #exp " is out of bounds(%d)\n"#exp " <= %d not satisfied.", exp, max), 0))
#endif
#else
#ifndef SDK_MAX_ASSERT
#define SDK_MAX_ASSERT(exp, max) ((void)0)
#endif
#endif

#ifdef SDK_DEBUG
#ifndef SDK_MINMAX_ASSERT
#define SDK_MINMAX_ASSERT(exp, min, max) \
    (void)(((exp) >= (min) && (exp) <= (max)) || \
           (OSi_Panic(__FILE__, __LINE__, #exp " is out of bounds(%d)\n%d <= "#exp " <= %d not satisfied.", exp, min, max), 0))
#endif
#else
#ifndef SDK_MINMAX_ASSERT
#define SDK_MINMAX_ASSERT(exp, min, max) ((void)0)
#endif
#endif

#ifdef SDK_DEBUG
#ifndef SDK_FATAL_ERROR
#define SDK_FATAL_ERROR(...) \
    (void)(OSi_Panic(__FILE__, __LINE__, "Fatal Error\n"__VA_ARGS__), 0)
#endif
#ifndef SDK_TFATAL_ERROR
#define SDK_TFATAL_ERROR(...) \
    (void)(OSi_TPanic(__FILE__, __LINE__, "Fatal Error\n"__VA_ARGS__), 0)
#endif
#else
#ifndef SDK_FATAL_ERROR
#define SDK_FATAL_ERROR(...) ((void)0)
#endif
#ifndef SDK_TFATAL_ERROR
#define SDK_TFATAL_ERROR(...) ((void)0)
#endif
#endif

#ifdef SDK_DEBUG
#ifndef SDK_INTERNAL_ERROR
#define SDK_INTERNAL_ERROR(...) \
    (void)(OSi_Panic(__FILE__, __LINE__, "SDK Internal error\nPlease e-mail to nintendo\n" __VA_ARGS__), 0)
#endif
#ifndef SDK_TINTERNAL_ERROR
#define SDK_TINTERNAL_ERROR(...) \
    (void)(OSi_TPanic(__FILE__, __LINE__, "SDK Internal error\nPlease e-mail to nintendo\n" __VA_ARGS__), 0)
#endif
#else
#ifndef SDK_INTERNAL_ERROR
#define SDK_INTERNAL_ERROR(...) ((void)0)
#endif
#ifndef SDK_TINTERNAL_ERROR
#define SDK_TINTERNAL_ERROR(...) ((void)0)
#endif
#endif

#ifdef SDK_DEBUG
#ifndef SDK_ALIGN4_ASSERT
#define SDK_ALIGN4_ASSERT(exp) \
    (void)((((u32)(exp) & 3) == 0) || (OSi_Panic(__FILE__, __LINE__, "Alignment Error(0x%x)\n"#exp " must be aligned to 4 bytes boundary.", exp), 0))
#endif
#else
#ifndef SDK_ALIGN4_ASSERT
#define SDK_ALIGN4_ASSERT(exp) ((void)0)
#endif
#endif

#ifdef SDK_DEBUG
#ifndef SDK_ALIGN2_ASSERT
#define SDK_ALIGN2_ASSERT(exp) \
    (void)((((u32)(exp) & 1) == 0) || (OSi_Panic(__FILE__, __LINE__, "Alignment Error(0x%x)\n"#exp " must be aligned to 2 bytes boundary.", exp), 0))
#endif
#else
#ifndef SDK_ALIGN2_ASSERT
#define SDK_ALIGN2_ASSERT(exp) ((void)0)
#endif
#endif

void OSi_ReferSymbol(void * symbol);
#define SDK_REFER_SYMBOL(symbol) OSi_ReferSymbol((void *)(symbol))

#define SDK_MIDDLEWARE_STRING(vender, module) "[SDK+" vender ":" module "]"
#define SDK_DEFINE_MIDDLEWARE(id, vender, module) static char id [] = SDK_MIDDLEWARE_STRING(vender, module)
#define SDK_USING_MIDDLEWARE(id) SDK_REFER_SYMBOL(id)

SDK_INLINE
void * OSi_AbortByUnsupportedRegister (const char * regname, const char * file, int line)
{
    (void)regname;
    (void)file;
    (void)line;
    OSi_TPanic(file, line, " I/O register \"%s\" is unsupported on this platform!", regname);
    return 0;
}
#define OS_UNSUPPORTED_REGADDR(reg) OSi_AbortByUnsupportedRegister(#reg, __FILE__, __LINE__)
#define OS_UNSUPPORTED_REG8(reg) *(REGType8 *)OSi_AbortByUnsupportedRegister(#reg, __FILE__, __LINE__)
#define OS_UNSUPPORTED_REG16(reg) *(REGType16 *)OSi_AbortByUnsupportedRegister(#reg, __FILE__, __LINE__)
#define OS_UNSUPPORTED_REG32(reg) *(REGType32 *)OSi_AbortByUnsupportedRegister(#reg, __FILE__, __LINE__)
#define OS_UNSUPPORTED_REG64(reg) *(REGType64 *)OSi_AbortByUnsupportedRegister(#reg, __FILE__, __LINE__)

#ifdef __cplusplus
}
#endif

#endif
