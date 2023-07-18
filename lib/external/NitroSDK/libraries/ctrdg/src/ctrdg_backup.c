#include <nitro.h>

extern const CTRDGiFlashTypePlus defaultFlash1M;
extern const CTRDGiFlashTypePlus MX29L010;
extern const CTRDGiFlashTypePlus LE26FV10N1TS_10;

extern const CTRDGiFlashTypePlus defaultFlash512;
extern const CTRDGiFlashTypePlus LE39FW512;
extern const CTRDGiFlashTypePlus AT29LV512_lib;
extern const CTRDGiFlashTypePlus MN63F805MNP;

extern u16 ctrdgi_flash_lock_id;
extern u16 ctrdgi_sram_lock_id;

static const u8 AgbLib1MFlash_ver[] = "AGBFLASH1M_V102";
static const u8 AgbLibFlash_ver[] = "AGBFLASH512_V131";

static const CTRDGiFlashTypePlus * const flash1M_list[] = {
    &MX29L010,
    &LE26FV10N1TS_10,
    &defaultFlash1M,
};

static const CTRDGiFlashTypePlus * const flash512_list[] = {
    &LE39FW512,
    &AT29LV512_lib,
    &MN63F805MNP,
    &defaultFlash512,
};

static const u16 readidtime[] = {
    20,
};

u16 CTRDG_IdentifyAgbBackup (CTRDGBackupType type) {
    u16 result = 1;
    u16 flashID;
    const CTRDGiFlashTypePlus * const * flp;
    MICartridgeRamCycle ram_cycle;

    if (type == CTRDG_BACKUP_TYPE_FLASH_512K || type == CTRDG_BACKUP_TYPE_FLASH_1M) {
        ctrdgi_flash_lock_id = (u16)OS_GetLockID();

        (void)OS_LockCartridge(ctrdgi_flash_lock_id);

        ram_cycle = MI_GetCartridgeRamCycle();
        MI_SetCartridgeRamCycle(MI_CTRDG_RAMCYCLE_18);

        ctrdgi_fl_maxtime = readidtime;
        flashID = CTRDGi_ReadFlashID();
        if (type == CTRDG_BACKUP_TYPE_FLASH_512K) {
            flp = flash512_list;
        }
        if (type == CTRDG_BACKUP_TYPE_FLASH_1M) {
            flp = flash1M_list;
        }

        MI_SetCartridgeRamCycle(ram_cycle);

        (void)OS_UnlockCartridge(ctrdgi_flash_lock_id);

        result = 1;
        while ((*flp)->type.makerID != 0x00) {
            if ((flashID & 0xff) == *(u16 *)&((*flp)->type.makerID)) {
                result = 0;
                break;
            }
            flp++;
        }
        CTRDGi_WriteAgbFlashSector = (*flp)->CTRDGi_WriteAgbFlashSector;
        CTRDGi_EraseAgbFlashChip = (*flp)->CTRDGi_EraseAgbFlashChip;
        CTRDGi_EraseAgbFlashSector = (*flp)->CTRDGi_EraseAgbFlashSector;
        CTRDGi_WriteAgbFlashSectorAsync = (*flp)->CTRDGi_WriteAgbFlashSectorAsync;
        CTRDGi_EraseAgbFlashChipAsync = (*flp)->CTRDGi_EraseAgbFlashChipAsync;
        CTRDGi_EraseAgbFlashSectorAsync = (*flp)->CTRDGi_EraseAgbFlashSectorAsync;
        CTRDGi_PollingSR = (*flp)->CTRDGi_PollingSR;
        ctrdgi_fl_maxtime = (*flp)->maxtime;
        AgbFlash = &(*flp)->type;
    } else if (type == CTRDG_BACKUP_TYPE_SRAM) {
        ctrdgi_sram_lock_id = (u16)OS_GetLockID();
        result = 0;
    }
    return result;
}
