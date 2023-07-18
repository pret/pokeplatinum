#ifndef NITRO_MATH_CHECKSUM_H_
#define NITRO_MATH_CHECKSUM_H_

#include <nitro/misc.h>
#include <nitro/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef u16 MATHChecksum16Context;
typedef MATHChecksum16Context MATHChecksum8Context;

static inline void MATH_Checksum16Init (MATHChecksum16Context * context)
{
    *context = 0;
}

void MATH_Checksum16Update(MATHChecksum16Context * context, const void * input, u32 length);

static inline u16 MATH_Checksum16GetHash (MATHChecksum16Context * context)
{
    return (u16)(~(*context));
}

u16 MATH_CalcChecksum16(const void * data, u32 dataLength);

static inline void MATH_Checksum8Init (MATHChecksum8Context * context)
{
    *context = 0;
}

void MATH_Checksum8Update(MATHChecksum8Context * context, const void * input, u32 length);

static inline u8 MATH_Checksum8GetHash (MATHChecksum8Context * context)
{
    u32 sum = *context;
    sum = (sum >> 8) + (sum & 0xff);
    sum += (sum >> 8);

    return (u8)(~sum);
}

u8 MATH_CalcChecksum8(const void * data, u32 dataLength);

#ifdef __cplusplus
}
#endif

#endif
