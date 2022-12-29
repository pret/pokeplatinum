#ifndef NITRO_CTRDG_FLASH_H_
#define NITRO_CTRDG_FLASH_H_

#include <nitro.h>

#ifdef __cplusplus
extern "C" {
#endif

#define CTRDG_AGB_FLASH_ADR 0x0A000000

#define CTRDG_AGB_FLASH_RETRY_MAX 3

typedef struct CTRDGiFlashSectorTag {
    u32 size;
    u16 shift;
    u16 count;
    u16 top;
    u8 reserved[2];
} CTRDGiFlashSector;

typedef struct CTRDGFlashTypeTag {
    u32 romSize;
    CTRDGiFlashSector sector;
    MICartridgeRamCycle agbWait[2];
    u16 makerID;
    u16 deviceID;
} CTRDGFlashType;

extern void CTRDGi_SetFlashBankMx(u16 bank);
extern u16 CTRDGi_ReadFlashID(void);
extern void StartFlashTimer(u16 phase);
extern void CheckFlashTimer(void);
extern void CTRDGi_SetFlashBankMx(u16 bank);
extern u16 CTRDGi_PollingSR512kCOMMON(u16 phase, u8 * adr, u16 lastData);
extern u16 CTRDGi_PollingSR1MCOMMON(u16 phase, u8 * adr, u16 lastData);

extern const CTRDGFlashType * AgbFlash;

extern u16 ctrdg_flash_remainder;

extern void CTRDG_ReadAgbFlash(u16 sec_num, u32 offset, u8 * dst, u32 size);
extern void CTRDG_ReadAgbFlashAsync(u16 sec_num, u32 offset, u8 * dst, u32 size,
                                    CTRDG_TASK_FUNC callback);

extern u16 CTRDG_EraseAgbFlashChip(void);
extern void CTRDG_EraseAgbFlashChipAsync(CTRDG_TASK_FUNC callback);

extern u16 CTRDG_EraseAgbFlashSector(u16 sec_num);
extern void CTRDG_EraseAgbFlashSectorAsync(u16 sec_num, CTRDG_TASK_FUNC callback);

extern u16 CTRDG_WriteAgbFlashSector(u16 sec_num, u8 * src);
extern void CTRDG_WriteAgbFlashSectorAsync(u16 sec_num, u8 * src, CTRDG_TASK_FUNC callback);

extern u32 CTRDG_VerifyAgbFlash(u16 sec_num, u8 * src, u32 size);
extern void CTRDG_VerifyAgbFlashAsync(u16 sec_num, u8 * src, u32 size, CTRDG_TASK_FUNC callback);

extern u32 CTRDG_WriteAndVerifyAgbFlash(u16 sec_num, u8 * src, u32 verifysize);
extern void CTRDG_WriteAndVerifyAgbFlashAsync(u16 sec_num, u8 * src, u32 verifysize,
                                              CTRDG_TASK_FUNC callback);

#ifdef __cplusplus
}
#endif

#endif
