#ifndef NITRO_CTRDG_BACKUP_H_
#define NITRO_CTRDG_BACKUP_H_

#include <nitro.h>
#include "ctrdg_task.h"
#include "ctrdg_flash.h"
#include "ctrdg_sram.h"

#define CTRDG_BACKUP_PHASE_VERIFY 0x0000
#define CTRDG_BACKUP_PHASE_PROGRAM 0x0001
#define CTRDG_BACKUP_PHASE_SECTOR_ERASE 0x0002
#define CTRDG_BACKUP_PHASE_CHIP_ERASE 0x0003
#define CTRDG_BACKUP_PHASE_VERIFY_ERASE 0x0004
#define CTRDG_BACKUP_PHASE_PARAMETER_CHECK 0x00ff

#define CTRDG_BACKUP_RESULT_OK 0x0000
#define CTRDG_BACKUP_RESULT_ERROR 0x8000
#define CTRDG_BACKUP_RESULT_TIMEOUT 0x4000
#define CTRDG_BACKUP_RESULT_Q5TIMEOUT 0x2000
#define CTRDG_BACKUP_RESULT_PULLEDOUT 0x1000

#define CTRDG_BACKUP_VENDER_ID_ADR (CTRDG_AGB_FLASH_ADR + 0x00000000)
#define CTRDG_BACKUP_DEVICE_ID_ADR (CTRDG_AGB_FLASH_ADR + 0x00000001)
#define CTRDG_BACKUP_COM_ADR1 (CTRDG_AGB_FLASH_ADR + 0x00005555)
#define CTRDG_BACKUP_COM_ADR2 (CTRDG_AGB_FLASH_ADR + 0x00002aaa)

#define CTRDG_BACKUP_MEGA_512K_ID 0x1cc2
#define CTRDG_BACKUP_MEGA_1M_ID 0x09c2

typedef struct CTRDGiFlashTypePlusTag {
    u16 (* CTRDGi_WriteAgbFlashSector)(u16 secNo, u8 * src);
    u16 (* CTRDGi_EraseAgbFlashChip)(void);
    u16 (* CTRDGi_EraseAgbFlashSector)(u16 secNo);
    void (* CTRDGi_WriteAgbFlashSectorAsync)(u16 secNo, u8 * src, CTRDG_TASK_FUNC callback);
    void (* CTRDGi_EraseAgbFlashChipAsync)(CTRDG_TASK_FUNC callback);
    void (* CTRDGi_EraseAgbFlashSectorAsync)(u16 secNo, CTRDG_TASK_FUNC callback);
    u16 (* CTRDGi_PollingSR)(u16 phase, u8 * adr, u16 lastData);
    const u16(*maxtime);
    CTRDGFlashType type;
} CTRDGiFlashTypePlus;

typedef enum {
    CTRDG_BACKUP_TYPE_FLASH_512K,
    CTRDG_BACKUP_TYPE_FLASH_1M,
    CTRDG_BACKUP_TYPE_SRAM
} CTRDGBackupType;

extern u16 ctrdg_flash_remainder;
extern const u16(*ctrdgi_fl_maxtime);
extern u16 (* CTRDGi_PollingSR) (u16 phase, u8 * adr, u16 lastData);

extern const CTRDGFlashType * AgbFlash;
extern u16 (* CTRDGi_WriteAgbFlashSector) (u16 secNo, u8 * src);
extern u16 (* CTRDGi_EraseAgbFlashChip) (void);
extern u16 (* CTRDGi_EraseAgbFlashSector) (u16 secNo);
extern void (* CTRDGi_WriteAgbFlashSectorAsync) (u16 secNo, u8 * src, CTRDG_TASK_FUNC callback);
extern void (* CTRDGi_EraseAgbFlashChipAsync) (CTRDG_TASK_FUNC callback);
extern void (* CTRDGi_EraseAgbFlashSectorAsync) (u16 secNo, CTRDG_TASK_FUNC callback);
extern u16 (* pollingSR) (u16 phase, u8 * adr, u16 lastData);

extern u16 CTRDG_IdentifyAgbBackup(CTRDGBackupType type);

#endif
