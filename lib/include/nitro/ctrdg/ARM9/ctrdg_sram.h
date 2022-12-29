#ifndef NITRO_CTRDG_SRAM_H_
#define NITRO_CTRDG_SRAM_H_

#include <nitro.h>

#ifdef __cplusplus
extern "C" {
#endif

#define CTRDG_AGB_SRAM_ADR 0x0A000000
#define CTRDG_AGB_SRAM_SIZE_256K 0x00008000
#define CTRDG_AGB_SRAM_SIZE_512K 0x00010000

#define CTRDG_AGB_SRAM_RETRY_MAX 3

extern void CTRDG_ReadAgbSram(u32 src, void * dst, u32 size);
extern void CTRDG_ReadAgbSramAsync(u32 src, void * dst, u32 size, CTRDG_TASK_FUNC callback);

extern void CTRDG_WriteAgbSram(u32 dst, const void * src, u32 size);
extern void CTRDG_WriteAgbSramAsync(u32 dst, const void * src, u32 size, CTRDG_TASK_FUNC callback);

extern u32 CTRDG_VerifyAgbSram(u32 tgt, const void * src, u32 size);
extern void CTRDG_VerifyAgbSramAsync(u32 tgt, const void * src, u32 size, CTRDG_TASK_FUNC callback);

extern u32 CTRDG_WriteAndVerifyAgbSram(u32 dst, const void * src, u32 size);
extern void CTRDG_WriteAndVerifyAgbSramAsync(u32 dst, const void * src, u32 size,
                                             CTRDG_TASK_FUNC callback);

#ifdef __cplusplus
}
#endif

#endif
