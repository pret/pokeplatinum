#include <nitro.h>

#define CTRDG_BACKUP_COM_ADR1 (CTRDG_AGB_FLASH_ADR + 0x00005555)
#define CTRDG_BACKUP_COM_ADR2 (CTRDG_AGB_FLASH_ADR + 0x00002aaa)

#define FLASH_LOG_SECTOR_COUNT 16

#define ERASE_RETRY_MAX 0x50

extern const CTRDGFlashType * AgbFlash;
extern u16 CTRDGi_PollingSR512kCOMMON(u16 phase, u8 * adr, u16 lastData);

extern u16 ctrdgi_flash_lock_id;
extern BOOL ctrdgi_backup_irq;

u16 CTRDGi_EraseFlashChipLE(void);
u16 CTRDGi_EraseFlashSectorLE(u16 secNo);
u16 CTRDGi_ProgramFlashByteLE(u8 * src, u8 * dst);
u16 CTRDGi_WriteFlashSectorLE(u16 secNo, u8 * src);
u32 CTRDGi_VerifyFlashCoreFF(u8 * adr);
u32 CTRDGi_VerifyFlashErase(u8 * tgt, u32 (*func_p) (u8 *));
u32 CTRDGi_EraseFlashChipCoreLE(CTRDGTaskInfo * arg);
u32 CTRDGi_EraseFlashSectorCoreLE(CTRDGTaskInfo * arg);
u32 CTRDGi_WriteFlashSectorCoreLE(CTRDGTaskInfo * arg);

void CTRDGi_EraseFlashChipAsyncLE(CTRDG_TASK_FUNC callback);
void CTRDGi_EraseFlashSectorAsyncLE(u16 secNo, CTRDG_TASK_FUNC callback);
void CTRDGi_WriteFlashSectorAsyncLE(u16 secNo, u8 * src, CTRDG_TASK_FUNC callback);

static const u16 leMaxTime[] = {
    10,
    10,
    40,
    200,
};

const CTRDGiFlashTypePlus defaultFlash512 = {
    CTRDGi_WriteFlashSectorLE,
    CTRDGi_EraseFlashChipLE,
    CTRDGi_EraseFlashSectorLE,
    CTRDGi_WriteFlashSectorAsyncLE,
    CTRDGi_EraseFlashChipAsyncLE,
    CTRDGi_EraseFlashSectorAsyncLE,
    CTRDGi_PollingSR512kCOMMON,
    leMaxTime,
    {
        0x00010000,
        {0x00001000, 12, 16, 0},

        {MI_CTRDG_RAMCYCLE_8, MI_CTRDG_RAMCYCLE_6},
        0x00,
        0x00,
    },
};

const CTRDGiFlashTypePlus LE39FW512 = {
    CTRDGi_WriteFlashSectorLE,
    CTRDGi_EraseFlashChipLE,
    CTRDGi_EraseFlashSectorLE,
    CTRDGi_WriteFlashSectorAsyncLE,
    CTRDGi_EraseFlashChipAsyncLE,
    CTRDGi_EraseFlashSectorAsyncLE,
    CTRDGi_PollingSR512kCOMMON,
    leMaxTime,
    {
        0x00010000,
        {0x00001000, 12, 16, 0},

        {MI_CTRDG_RAMCYCLE_8, MI_CTRDG_RAMCYCLE_6},
        0xbf,
        0xd4,
    },
};

u32 CTRDGi_EraseFlashChipCoreLE (CTRDGTaskInfo * arg) {
    MICartridgeRamCycle ram_cycle;
    u32 result;
    (void)arg;

    (void)OS_LockCartridge(ctrdgi_flash_lock_id);

    ram_cycle = MI_GetCartridgeRamCycle();
    MI_SetCartridgeRamCycle(AgbFlash->agbWait[0]);

    ctrdgi_backup_irq = OS_DisableIrq();

    *(vu8 *)CTRDG_BACKUP_COM_ADR1 = 0xaa;
    *(vu8 *)CTRDG_BACKUP_COM_ADR2 = 0x55;
    *(vu8 *)CTRDG_BACKUP_COM_ADR1 = 0x80;
    *(vu8 *)CTRDG_BACKUP_COM_ADR1 = 0xaa;
    *(vu8 *)CTRDG_BACKUP_COM_ADR2 = 0x55;
    *(vu8 *)CTRDG_BACKUP_COM_ADR1 = 0x10;

    (void)OS_RestoreIrq(ctrdgi_backup_irq);

    result = CTRDGi_PollingSR(CTRDG_BACKUP_PHASE_CHIP_ERASE, (u8 *)CTRDG_AGB_FLASH_ADR, 0xff);

    MI_SetCartridgeRamCycle(ram_cycle);

    (void)OS_UnlockCartridge(ctrdgi_flash_lock_id);
    return result;
}

u32 CTRDGi_EraseFlashSectorCoreLE (CTRDGTaskInfo * arg) {
    u8 * adr;

    MICartridgeRamCycle ram_cycle;
    u32 result;
    CTRDGTaskInfo p = *arg;
    u16 secNo = p.sec_num;

    if (secNo >= FLASH_LOG_SECTOR_COUNT) {
        return CTRDG_BACKUP_RESULT_ERROR | CTRDG_BACKUP_PHASE_PARAMETER_CHECK;
    }

    (void)OS_LockCartridge(ctrdgi_flash_lock_id);

    ram_cycle = MI_GetCartridgeRamCycle();
    MI_SetCartridgeRamCycle(AgbFlash->agbWait[0]);

    adr = (u8 *)(CTRDG_AGB_FLASH_ADR + (secNo << AgbFlash->sector.shift));

    ctrdgi_backup_irq = OS_DisableIrq();

    *(vu8 *)CTRDG_BACKUP_COM_ADR1 = 0xaa;
    *(vu8 *)CTRDG_BACKUP_COM_ADR2 = 0x55;
    *(vu8 *)CTRDG_BACKUP_COM_ADR1 = 0x80;
    *(vu8 *)CTRDG_BACKUP_COM_ADR1 = 0xaa;
    *(vu8 *)CTRDG_BACKUP_COM_ADR2 = 0x55;
    *(vu8 *)adr = 0x30;

    (void)OS_RestoreIrq(ctrdgi_backup_irq);

    result = CTRDGi_PollingSR(CTRDG_BACKUP_PHASE_SECTOR_ERASE, adr, 0xff);

    MI_SetCartridgeRamCycle(ram_cycle);

    (void)OS_UnlockCartridge(ctrdgi_flash_lock_id);

    return result;
}

u16 CTRDGi_ProgramFlashByteLE (u8 * src, u8 * dst) {
    u16 result;
    *(vu8 *)CTRDG_BACKUP_COM_ADR1 = 0xaa;
    *(vu8 *)CTRDG_BACKUP_COM_ADR2 = 0x55;
    *(vu8 *)CTRDG_BACKUP_COM_ADR1 = 0xa0;
    *dst = *src;

    result = CTRDGi_PollingSR(CTRDG_BACKUP_PHASE_PROGRAM, dst, *src);
    return result;
}

u32 CTRDGi_WriteFlashSectorCoreLE (CTRDGTaskInfo * arg) {
    u8 * tgt;
    u16 retry, add_erase, j;
    MICartridgeRamCycle ram_cycle;
    u32 result;
    CTRDGTaskInfo p = *arg;
    u16 secNo = p.sec_num;
    u8 * src = p.data;

    if (secNo >= FLASH_LOG_SECTOR_COUNT) {
        return CTRDG_BACKUP_RESULT_ERROR | CTRDG_BACKUP_PHASE_PARAMETER_CHECK;
    }

    tgt = (u8 *)(CTRDG_AGB_FLASH_ADR + (secNo << AgbFlash->sector.shift));

    retry = 0;

    while (1) {
        result = CTRDGi_EraseFlashSectorLE(secNo);
        if (result == 0) {
            result = (u16)CTRDGi_VerifyFlashErase(tgt, CTRDGi_VerifyFlashCoreFF);
            if (result == 0) {
                break;
            }
        }
        if (retry++ == ERASE_RETRY_MAX) {
            return result;
        }
    }

    add_erase = 1;
    if (retry > 0) {
        add_erase = 6;
    }
    for (j = 1; j <= add_erase; j++) {
        (void)CTRDGi_EraseFlashSectorLE(secNo);
    }

    (void)OS_LockCartridge(ctrdgi_flash_lock_id);

    ram_cycle = MI_GetCartridgeRamCycle();
    MI_SetCartridgeRamCycle(AgbFlash->agbWait[0]);

    ctrdg_flash_remainder = (u16)AgbFlash->sector.size;
    ctrdgi_backup_irq = OS_DisableIrq();
    while (ctrdg_flash_remainder) {
        result = CTRDGi_ProgramFlashByteLE(src, tgt);
        if (result) {
            break;
        }
        ctrdg_flash_remainder--;
        src++;
        tgt++;
    }
    (void)OS_RestoreIrq(ctrdgi_backup_irq);

    MI_SetCartridgeRamCycle(ram_cycle);

    (void)OS_UnlockCartridge(ctrdgi_flash_lock_id);

    return result;
}

u32 CTRDGi_VerifyFlashCoreFF (u8 * adr) {
    u32 count;
    for (count = AgbFlash->sector.size; count > 0; count--) {
        if (*adr++ != 0xff) {
            break;
        }
    }
    return count;
}

u32 CTRDGi_VerifyFlashErase (u8 * tgt, u32 (*func_p) (u8 *)) {
    u32 result;
    MICartridgeRamCycle ram_cycle;

    (void)OS_LockCartridge(ctrdgi_flash_lock_id);

    ram_cycle = MI_GetCartridgeRamCycle();
    MI_SetCartridgeRamCycle(AgbFlash->agbWait[0]);

    result = 0;
    if (func_p(tgt)) {
        result = (CTRDG_BACKUP_RESULT_ERROR | CTRDG_BACKUP_PHASE_VERIFY_ERASE);
    }

    MI_SetCartridgeRamCycle(ram_cycle);

    (void)OS_UnlockCartridge(ctrdgi_flash_lock_id);

    return result;
}

u16 CTRDGi_EraseFlashChipLE (void) {
    u16 result;
    CTRDGTaskInfo p;
    result = (u16)CTRDGi_EraseFlashChipCoreLE(&p);

    return result;
}

u16 CTRDGi_EraseFlashSectorLE (u16 secNo) {
    u16 result;
    CTRDGTaskInfo p;
    p.sec_num = secNo;
    result = (u16)CTRDGi_EraseFlashSectorCoreLE(&p);

    return result;
}

u16 CTRDGi_WriteFlashSectorLE (u16 secNo, u8 * src) {
    u16 result;
    CTRDGTaskInfo p;
    p.sec_num = secNo;
    p.data = src;
    result = (u16)CTRDGi_WriteFlashSectorCoreLE(&p);

    return result;
}

void CTRDGi_EraseFlashChipAsyncLE (CTRDG_TASK_FUNC callback) {
    CTRDGTaskInfo p;

    CTRDGi_SetTask(&p, CTRDGi_EraseFlashChipCoreLE, callback);
}

void CTRDGi_EraseFlashSectorAsyncLE (u16 secNo, CTRDG_TASK_FUNC callback) {
    CTRDGTaskInfo p;

    p.sec_num = secNo;
    CTRDGi_SetTask(&p, CTRDGi_EraseFlashSectorCoreLE, callback);
}

void CTRDGi_WriteFlashSectorAsyncLE (u16 secNo, u8 * src, CTRDG_TASK_FUNC callback) {
    CTRDGTaskInfo p;

    p.sec_num = secNo;
    p.data = src;
    CTRDGi_SetTask(&p, CTRDGi_WriteFlashSectorCoreLE, callback);
}
