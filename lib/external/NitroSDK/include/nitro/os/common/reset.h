#ifndef NITRO_OS_RESET_H_
#define NITRO_OS_RESET_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/misc.h>
#include <nitro/types.h>

void OS_InitReset(void);

#ifdef SDK_ARM9
void OS_ResetSystem(u32 parameter);
#else
void OS_ResetSystem(void);
#endif

BOOL OS_IsResetOccurred(void);

inline u32 OS_GetResetParameter (void)
{
    return (u32) * (u32 *)HW_RESET_PARAMETER_BUF;
}

#ifdef __cplusplus
}
#endif

#endif
