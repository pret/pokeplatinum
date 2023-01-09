#include <nitro.h>

u32 CTRDGi_ReadAgbFlashCore(CTRDGTaskInfo * arg);
u32 CTRDGi_VerifyAgbFlashCore(CTRDGTaskInfo * arg);
u32 CTRDGi_WriteAndVerifyAgbFlashSectorCore(CTRDGTaskInfo * arg);
u32 CTRDGi_WriteAndVerifyAgbFlashSectorCore(CTRDGTaskInfo * arg);
u8 CTRDGi_ReadSrFunc(u8 * adr);

u16 ctrdg_flash_remainder;

const CTRDGFlashType * AgbFlash;
u16 (*CTRDGi_WriteAgbFlashSector) (u16 secNo, u8 * src);
u16 (*CTRDGi_EraseAgbFlashChip) (void);
u16 (*CTRDGi_EraseAgbFlashSector) (u16 sec_num);
void (*CTRDGi_WriteAgbFlashSectorAsync) (u16 secNo, u8 * src, CTRDG_TASK_FUNC callback);
void (*CTRDGi_EraseAgbFlashChipAsync) (CTRDG_TASK_FUNC callback);
void (*CTRDGi_EraseAgbFlashSectorAsync) (u16 sec_num, CTRDG_TASK_FUNC callback);
u16 (*CTRDGi_PollingSR) (u16 phase, u8 * adr, u16 lastData);
const u16(*ctrdgi_fl_maxtime);

OSTick start_tick, timeout_tick;

u16 ctrdgi_flash_lock_id;
BOOL ctrdgi_backup_irq;

vu16 ctrdgi_timeoutFlag;

void CTRDGi_SetFlashBankMx (u16 bank) {
    *(vu8 *)CTRDG_BACKUP_COM_ADR1 = 0xaa;
    *(vu8 *)CTRDG_BACKUP_COM_ADR2 = 0x55;
    *(vu8 *)CTRDG_BACKUP_COM_ADR1 = 0xb0;
    *(vu8 *)CTRDG_AGB_FLASH_ADR = (u8)bank;
}

u16 CTRDGi_ReadFlashID (void) {
    u16 flashID;

    ctrdgi_backup_irq = OS_DisableIrq();

    *(vu8 *)CTRDG_BACKUP_COM_ADR1 = 0xaa;
    *(vu8 *)CTRDG_BACKUP_COM_ADR2 = 0x55;
    *(vu8 *)CTRDG_BACKUP_COM_ADR1 = 0x90;

    (void)OS_RestoreIrq(ctrdgi_backup_irq);

    StartFlashTimer(0);
    while (!ctrdgi_timeoutFlag) {
        CheckFlashTimer();
    }
    ;

    flashID = (u16)(CTRDGi_ReadSrFunc((u8 *)CTRDG_BACKUP_DEVICE_ID_ADR) << 8);
    flashID |= CTRDGi_ReadSrFunc((u8 *)CTRDG_BACKUP_VENDER_ID_ADR);

    ctrdgi_backup_irq = OS_DisableIrq();

    *(vu8 *)CTRDG_BACKUP_COM_ADR1 = 0xaa;
    *(vu8 *)CTRDG_BACKUP_COM_ADR2 = 0x55;
    *(vu8 *)CTRDG_BACKUP_COM_ADR1 = 0xf0;

    *(vu8 *)CTRDG_BACKUP_COM_ADR1 = 0xf0;

    (void)OS_RestoreIrq(ctrdgi_backup_irq);

    StartFlashTimer(0);
    while (!ctrdgi_timeoutFlag) {
        CheckFlashTimer();
    }
    ;

    return flashID;
}

void StartFlashTimer (u16 phase) {
    ctrdgi_timeoutFlag = FALSE;

    timeout_tick = (u64) * (ctrdgi_fl_maxtime + phase);
    start_tick = OS_GetTick();
}

void CheckFlashTimer (void) {
    OSTick current_tick, process_tick, process_time;

    current_tick = OS_GetTick();
    process_tick = current_tick - start_tick;
    process_time = OS_TicksToMilliSeconds(process_tick);
    if (timeout_tick <= process_time) {
        ctrdgi_timeoutFlag = TRUE;
    }
}

u8 CTRDGi_ReadSrFunc (u8 * adr) {
    return *adr;
}

u16 CTRDGi_PollingSR512kCOMMON (u16 phase, u8 * adr, u16 lastData) {
    u16 poll;
    u16 result;

    result = CTRDG_BACKUP_RESULT_OK;
    StartFlashTimer(phase);
    while (1) {
        poll = CTRDGi_ReadSrFunc(adr);
        if (poll == lastData) {
            break;
        }
        if (ctrdgi_timeoutFlag) {
            if (CTRDGi_ReadSrFunc(adr) == lastData) {
                break;
            } else {
                if (AgbFlash->makerID == 0xc2) {
                    *(vu8 *)CTRDG_BACKUP_COM_ADR1 = 0xf0;
                }
                result = (u16)(CTRDG_BACKUP_RESULT_ERROR | CTRDG_BACKUP_RESULT_TIMEOUT | phase);
                break;
            }
        }
    }
    if (!CTRDG_IsExisting()) {
        result = CTRDG_BACKUP_RESULT_PULLEDOUT;
    }

    return result;
}

u16 CTRDGi_PollingSR1MCOMMON (u16 phase, u8 * adr, u16 lastData) {
    u16 poll;
    u16 result;

    result = CTRDG_BACKUP_RESULT_OK;
    StartFlashTimer(phase);
    while (1) {
        CheckFlashTimer();
        poll = CTRDGi_ReadSrFunc(adr);

        if (poll == lastData) {
            break;
        } else {
            if ((poll & 0x20) != 0) {
                if (CTRDGi_ReadSrFunc(adr) == lastData) {
                    break;
                } else {
                    *(vu8 *)CTRDG_BACKUP_COM_ADR1 = 0xf0;
                    result =
                        (u16)(CTRDG_BACKUP_RESULT_ERROR | CTRDG_BACKUP_RESULT_Q5TIMEOUT | phase);
                    break;
                }
            }
        }
        if (ctrdgi_timeoutFlag) {
            if (CTRDGi_ReadSrFunc(adr) == lastData) {
                break;
            } else {
                *(vu8 *)CTRDG_BACKUP_COM_ADR1 = 0xf0;
                result = (u16)(CTRDG_BACKUP_RESULT_ERROR | CTRDG_BACKUP_RESULT_TIMEOUT | phase);
                break;
            }
        }
    }
    if (!CTRDG_IsExisting()) {
        result = CTRDG_BACKUP_RESULT_PULLEDOUT;
    }

    return result;
}

u32 CTRDGi_ReadAgbFlashCore (CTRDGTaskInfo * arg) {
    u8 * src;
    MICartridgeRamCycle ram_cycle;
    CTRDGTaskInfo p = *arg;
    u16 sec_num = p.sec_num;
    u32 offset = p.offset;
    u8 * dst = p.dst;
    u32 size = p.size;

    (void)OS_LockCartridge(ctrdgi_flash_lock_id);

    ram_cycle = MI_GetCartridgeRamCycle();
    MI_SetCartridgeRamCycle(MI_CTRDG_RAMCYCLE_18);

    if (AgbFlash->romSize == 0x00020000) {
        CTRDGi_SetFlashBankMx((u16)(sec_num >> 4));
        sec_num &= 0x0f;
    }

    src = (u8 *)(CTRDG_AGB_FLASH_ADR + (sec_num << AgbFlash->sector.shift) + offset);

    while (size--) {
        *dst++ = *src++;
    }

    MI_SetCartridgeRamCycle(ram_cycle);

    (void)OS_UnlockCartridge(ctrdgi_flash_lock_id);

    return 0;
}

static u32 CTRDGi_VerifyFlashSectorCore (u8 * src, u8 * tgt, u32 size) {
    while (size--) {
        if (*tgt++ != *src++) {
            return (u32)tgt - 1;
        }
    }
    return 0;
}

u32 CTRDGi_VerifyAgbFlashCore (CTRDGTaskInfo * arg) {
    u8 * tgt;
    u32 result;
    MICartridgeRamCycle ram_cycle;
    CTRDGTaskInfo p = *arg;
    u16 sec_num = p.sec_num;
    u8 * src = p.data;
    u32 size = p.size;

    (void)OS_LockCartridge(ctrdgi_flash_lock_id);

    ram_cycle = MI_GetCartridgeRamCycle();
    MI_SetCartridgeRamCycle(MI_CTRDG_RAMCYCLE_18);

    if (AgbFlash->romSize == 0x00020000) {
        CTRDGi_SetFlashBankMx((u16)(sec_num >> 4));
        sec_num &= 0x0f;
    }

    tgt = (u8 *)(CTRDG_AGB_FLASH_ADR + (sec_num << AgbFlash->sector.shift));
    result = CTRDGi_VerifyFlashSectorCore(src, tgt, size);

    MI_SetCartridgeRamCycle(ram_cycle);

    (void)OS_UnlockCartridge(ctrdgi_flash_lock_id);
    return result;
}

u32 CTRDGi_WriteAndVerifyAgbFlashSectorCore (CTRDGTaskInfo * arg) {
    u16 retry;
    u32 result;
    CTRDGTaskInfo p = *arg;
    u16 sec_num = p.sec_num;
    u32 offset = p.offset;
    u8 * src = p.data;
    u32 verifysize = p.size;

    retry = 0;
    while (retry < CTRDG_AGB_FLASH_RETRY_MAX) {
        result = (u32)CTRDG_WriteAgbFlashSector(sec_num, src);
        if (result == 0) {
            result = CTRDG_VerifyAgbFlash(sec_num, src, verifysize);
            if (result == 0) {
                break;
            }
        }
        retry++;
    }
    return result;
}

void CTRDG_ReadAgbFlash (u16 sec_num, u32 offset, u8 * dst, u32 size) {
    CTRDGTaskInfo p;
    p.sec_num = sec_num;
    p.offset = offset;
    p.dst = dst;
    p.size = size;

    (void)CTRDGi_ReadAgbFlashCore(&p);
}

u16 CTRDG_EraseAgbFlashChip (void) {
    u16 result = (*CTRDGi_EraseAgbFlashChip) ();

    return result;
}

u16 CTRDG_EraseAgbFlashSector (u16 secNo) {
    u16 result = (*CTRDGi_EraseAgbFlashSector) (secNo);

    return result;
}

u16 CTRDG_WriteAgbFlashSector (u16 secNo, u8 * src) {
    u16 result = (*CTRDGi_WriteAgbFlashSector) (secNo, src);

    return result;
}

u32 CTRDG_VerifyAgbFlash (u16 sec_num, u8 * src, u32 size) {
    u32 result;
    CTRDGTaskInfo p;
    p.sec_num = sec_num;
    p.data = src;
    p.size = size;
    result = CTRDGi_VerifyAgbFlashCore(&p);

    return result;
}

u32 CTRDG_WriteAndVerifyAgbFlash (u16 sec_num, u8 * src, u32 verifysize) {
    u32 result;
    CTRDGTaskInfo p;
    p.sec_num = sec_num;
    p.data = src;
    p.size = verifysize;
    result = CTRDGi_WriteAndVerifyAgbFlashSectorCore(&p);

    return result;
}

void CTRDG_ReadAgbFlashAsync (u16 sec_num, u32 offset, u8 * dst, u32 size, CTRDG_TASK_FUNC callback) {
    CTRDGTaskInfo p;
    p.sec_num = sec_num;
    p.offset = offset;
    p.dst = dst;
    p.size = size;

    CTRDGi_SetTask(&p, CTRDGi_ReadAgbFlashCore, callback);
}

void CTRDG_EraseAgbFlashChipAsync (CTRDG_TASK_FUNC callback) {
    (*CTRDGi_EraseAgbFlashChipAsync) (callback);
}

void CTRDG_EraseAgbFlashSectorAsync (u16 secNo, CTRDG_TASK_FUNC callback) {
    (*CTRDGi_EraseAgbFlashSectorAsync) (secNo, callback);
}

void CTRDG_WriteAgbFlashSectorAsync (u16 secNo, u8 * src, CTRDG_TASK_FUNC callback) {
    (*CTRDGi_WriteAgbFlashSectorAsync) (secNo, src, callback);
}

void CTRDG_VerifyAgbFlashAsync (u16 sec_num, u8 * src, u32 size, CTRDG_TASK_FUNC callback) {
    CTRDGTaskInfo p;
    p.sec_num = sec_num;
    p.data = src;
    p.size = size;
    CTRDGi_SetTask(&p, CTRDGi_VerifyAgbFlashCore, callback);
}

void CTRDG_WriteAndVerifyAgbFlashAsync (u16 sec_num, u8 * src, u32 verifysize, CTRDG_TASK_FUNC callback) {
    CTRDGTaskInfo p;
    p.sec_num = sec_num;
    p.data = src;
    p.size = verifysize;
    CTRDGi_SetTask(&p, CTRDGi_WriteAndVerifyAgbFlashSectorCore, callback);
}
