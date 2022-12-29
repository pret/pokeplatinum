#ifndef NITRO_OS_TCM_H_
#define NITRO_OS_TCM_H_

#ifdef __cplusplus
extern "C" {
#endif

void OS_EnableITCM(void);

void OS_DisableITCM(void);

void OS_SetITCMParam(u32 param);

u32 OS_GetITCMParam(void);

static inline u32 OS_GetITCMAddress (void)
{
    return (u32)HW_ITCM;
}

void OS_EnableDTCM(void);

void OS_DisableDTCM(void);

void OS_SetDTCMParam(u32 param);

u32 OS_GetDTCMParam(void);

void OS_SetDTCMAddress(u32 address);

u32 OS_GetDTCMAddress(void);

#ifdef __cplusplus
}
#endif

#endif
