#ifndef NITRO_MI_BYTEACCESS_H_
#define NITRO_MI_BYTEACCESS_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/ioreg.h>

#ifdef SDK_TEG
u8 MI_ReadByte(const void * address);
#else
static inline u8 MI_ReadByte (const void * address)
{
    return *(u8 *)address;
}
#endif

#ifdef SDK_TEG
void MI_WriteByte(void * address, u8 value);
#else
static inline void MI_WriteByte (void * address, u8 value)
{
    *(u8 *)address = value;
}
#endif

#ifdef __cplusplus
}
#endif

#endif
