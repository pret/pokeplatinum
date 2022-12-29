#ifndef NITRO_PXI_COMMON_COMPPARAM_H_
#define NITRO_PXI_COMMON_COMPPARAM_H_

#include <nitro/types.h>
#include <nitro/memorymap.h>
#include <nitro/mi.h>

#ifdef __cplusplus
extern "C" {
#endif

static inline void PXI_SetComponentParam (u32 param)
{
    MI_WriteWord(HW_COMPONENT_PARAM, param);
}

static inline u32 PXI_GetComponentParam (void)
{
    return MI_ReadWord(HW_COMPONENT_PARAM);
}

#ifdef __cplusplus
}
#endif

#endif
