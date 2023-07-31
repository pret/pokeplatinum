#ifndef NITRO_PLATFORM_HEADER__
#define NITRO_PLATFORM_HEADER__

#include <nitro/os/common/system.h>

#define PLATFORM_ENDIAN_BIG 0
#define PLATFORM_ENDIAN_LITTLE 1

#define PLATFORM_BYTES_ENDIAN PLATFORM_ENDIAN_LITTLE

#define PLATFORM_BYTES_ALIGN 1

#define PLATFORM_CACHE_SIZE 32

#define PLATFORM_ATTRIBUTE_CACHEALIGN ATTRIBUTE_ALIGN(32)

#define PLATFORM_ENTER_CRITICALSECTION() OSIntrMode bak_interrupt_mode_ = OS_DisableInterrupts()

#define PLATFORM_LEAVE_CRITICALSECTION() (void)OS_RestoreInterrupts(bak_interrupt_mode_)

#if defined(SDK_CW) || defined(__MWERKS__)

#define PLATFORM_BITFIELDS_ENDIAN PLATFORM_ENDIAN_LITTLE

#define PLATFORM_COMPILER_ASSERT(expr) \
    extern void platform_compiler_assert ## __LINE__(char is[(expr) ? +1 : -1])

#define PLATFORM_STRUCT_PADDING_FOOTER

#define PLATFORM_ATTRIBUTE_INLINE SDK_INLINE

#else
# TO BE DEFINED
#endif

typedef struct PLATFORM_LE8 {
    unsigned char byte[1];
} PLATFORM_STRUCT_PADDING_FOOTER PLATFORM_LE8;

typedef struct PLATFORM_LE16 {
    unsigned char byte[2];
} PLATFORM_STRUCT_PADDING_FOOTER PLATFORM_LE16;

typedef struct PLATFORM_LE32 {
    unsigned char byte[4];
} PLATFORM_STRUCT_PADDING_FOOTER PLATFORM_LE32;

typedef struct PLATFORM_BE8 {
    unsigned char byte[1];
} PLATFORM_STRUCT_PADDING_FOOTER PLATFORM_BE8;

typedef struct PLATFORM_BE16 {
    unsigned char byte[2];
} PLATFORM_STRUCT_PADDING_FOOTER PLATFORM_BE16;

typedef struct PLATFORM_BE32 {
    unsigned char byte[4];
} PLATFORM_STRUCT_PADDING_FOOTER PLATFORM_BE32;

#endif
