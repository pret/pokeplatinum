#include <nitro.h>

extern u16 CTRDGi_PollingSR512kCOMMON(u16 phase, u8 * adr, u16 lastData);
extern u16 CTRDGi_EraseFlashChipLE(void);
extern u16 CTRDGi_EraseFlashSectorLE(u16 secNo);
extern u16 CTRDGi_ProgramFlashByteLE(u8 * src, u8 * dst);
extern void CTRDGi_EraseFlashChipAsyncLE(CTRDG_TASK_FUNC callback);
extern void CTRDGi_EraseFlashSectorAsyncLE(u16 secNo, CTRDG_TASK_FUNC callback);
extern void CTRDGi_WriteFlashSectorAsyncLE(u16 secNo, u8 * src, CTRDG_TASK_FUNC callback);

extern u16 ctrdgi_flash_lock_id;

u16 CTRDGi_WriteFlashSectorMX5(u16 secNo, u8 * src);
u32 CTRDGi_WriteFlashSectorCoreMX5(CTRDGTaskInfo * arg);
void CTRDGi_WriteFlashSectorAsyncMX5(u16 secNo, u8 * src, CTRDG_TASK_FUNC callback);

static const u16 PaMaxTime[] = {
    10,
    10,
    500,
    500,
};

const CTRDGiFlashTypePlus MN63F805MNP = {
    CTRDGi_WriteFlashSectorMX5,
    CTRDGi_EraseFlashChipLE,
    CTRDGi_EraseFlashSectorLE,
    CTRDGi_WriteFlashSectorAsyncMX5,
    CTRDGi_EraseFlashChipAsyncLE,
    CTRDGi_EraseFlashSectorAsyncLE,
    CTRDGi_PollingSR512kCOMMON,
    PaMaxTime,
    {
        0x00010000,
        {0x00001000, 12, 16, 0},

        {MI_CTRDG_RAMCYCLE_10, MI_CTRDG_RAMCYCLE_6},
        0x32,
        0x1b,
    },
};

u32 CTRDGi_WriteFlashSectorCoreMX5 (CTRDGTaskInfo * arg) {
    u8 * tgt;
    MICartridgeRamCycle ram_cycle;
    u32 result;
    CTRDGTaskInfo p = *arg;
    u16 secNo = p.sec_num;
    u8 * src = p.data;

    if (secNo >= AgbFlash->sector.count) {
        return CTRDG_BACKUP_RESULT_ERROR | CTRDG_BACKUP_PHASE_PARAMETER_CHECK;
    }

    result = CTRDGi_EraseFlashSectorLE(secNo);
    if (result) {
        return result;
    }

    (void)OS_LockCartridge(ctrdgi_flash_lock_id);

    ram_cycle = MI_GetCartridgeRamCycle();
    MI_SetCartridgeRamCycle(AgbFlash->agbWait[0]);

    ctrdg_flash_remainder = (u16)AgbFlash->sector.size;
    tgt = (u8 *)(CTRDG_AGB_FLASH_ADR + (secNo << AgbFlash->sector.shift));
    while (ctrdg_flash_remainder) {
        result = CTRDGi_ProgramFlashByteLE(src, tgt);
        if (result) {
            break;
        }
        ctrdg_flash_remainder--;
        src++;
        tgt++;
    }

    MI_SetCartridgeRamCycle(ram_cycle);

    (void)OS_UnlockCartridge(ctrdgi_flash_lock_id);

    return result;
}

u16 CTRDGi_WriteFlashSectorMX5 (u16 secNo, u8 * src) {
    u16 result;
    CTRDGTaskInfo p;
    p.sec_num = secNo;
    p.data = src;
    result = (u16)CTRDGi_WriteFlashSectorCoreMX5(&p);

    return result;
}

void CTRDGi_WriteFlashSectorAsyncMX5 (u16 secNo, u8 * src, CTRDG_TASK_FUNC callback) {
    CTRDGTaskInfo p;

    p.sec_num = secNo;
    p.data = src;
    CTRDGi_SetTask(&p, CTRDGi_WriteFlashSectorCoreMX5, callback);
}
