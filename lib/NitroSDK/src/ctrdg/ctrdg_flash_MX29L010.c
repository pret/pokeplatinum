

























#include <nitro.h>


extern u16 CTRDGi_PollingSR1MCOMMON(u16 phase, u8 *adr, u16 lastData);


u16     CTRDGi_EraseFlashChipMX(void);
u16     CTRDGi_EraseFlashSectorMX(u16 secNo);
u16     CTRDGi_WriteFlashSectorMX(u16 secNo, u8 *src);

u32     CTRDGi_EraseFlashChipCoreMX(CTRDGTaskInfo * arg);
u32     CTRDGi_EraseFlashSectorCoreMX(CTRDGTaskInfo * arg);
u32     CTRDGi_WriteFlashSectorCoreMX(CTRDGTaskInfo * arg);

void    CTRDGi_EraseFlashChipAsyncMX(CTRDG_TASK_FUNC callback);
void    CTRDGi_EraseFlashSectorAsyncMX(u16 secNo, CTRDG_TASK_FUNC callback);
void    CTRDGi_WriteFlashSectorAsyncMX(u16 secNo, u8 *src, CTRDG_TASK_FUNC callback);


static const u16 MxMaxTime[] = {
    10,                                
    10,                                
    2000,                              
    2000,                              
};

const CTRDGiFlashTypePlus MX29L010 = {
    CTRDGi_WriteFlashSectorMX,
    CTRDGi_EraseFlashChipMX,
    CTRDGi_EraseFlashSectorMX,
    CTRDGi_WriteFlashSectorAsyncMX,
    CTRDGi_EraseFlashChipAsyncMX,
    CTRDGi_EraseFlashSectorAsyncMX,
    CTRDGi_PollingSR1MCOMMON,
    MxMaxTime,
    {


        0x00020000,                       
        {0x00001000, 12, 32, 0},          




        {MI_CTRDG_RAMCYCLE_18, MI_CTRDG_RAMCYCLE_8},       
        0xc2,                             
        0x09,                             
    },
};

const CTRDGiFlashTypePlus defaultFlash1M = {
    CTRDGi_WriteFlashSectorMX,
    CTRDGi_EraseFlashChipMX,
    CTRDGi_EraseFlashSectorMX,
    CTRDGi_WriteFlashSectorAsyncMX,
    CTRDGi_EraseFlashChipAsyncMX,
    CTRDGi_EraseFlashSectorAsyncMX,
    CTRDGi_PollingSR1MCOMMON,
    MxMaxTime,
    {


        0x00020000,                       
        {0x00001000, 12, 32, 0},          




        {MI_CTRDG_RAMCYCLE_18, MI_CTRDG_RAMCYCLE_8},       
        0x00,                             
        0x00,                             
    },
};


extern u16 ctrdgi_flash_lock_id;
extern BOOL ctrdgi_backup_irq;






u32 CTRDGi_EraseFlashChipCoreMX(CTRDGTaskInfo * arg)
{




    MICartridgeRamCycle ram_cycle;
    u32     result;
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

u32 CTRDGi_EraseFlashSectorCoreMX(CTRDGTaskInfo * arg)
{
    u8     *adr;
    u16     retry;
    MICartridgeRamCycle ram_cycle;
    u32     result;
    CTRDGTaskInfo p = *arg;
    u16     secNo = p.sec_num;

    if (secNo >= AgbFlash->sector.count)
        return CTRDG_BACKUP_RESULT_ERROR | CTRDG_BACKUP_PHASE_PARAMETER_CHECK;

    
    (void)OS_LockCartridge(ctrdgi_flash_lock_id);
    
    ram_cycle = MI_GetCartridgeRamCycle();
    MI_SetCartridgeRamCycle(AgbFlash->agbWait[0]);

    
    CTRDGi_SetFlashBankMx((u16)(secNo >> 4));
    secNo &= 0x0f;

    retry = 0;

  erase_again:

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
    if (((result & (CTRDG_BACKUP_RESULT_ERROR | CTRDG_BACKUP_RESULT_Q5TIMEOUT)) != 0) &&
        (retry == 0))
    {
        retry++;
        goto erase_again;
    }

    
    MI_SetCartridgeRamCycle(ram_cycle);
    
    (void)OS_UnlockCartridge(ctrdgi_flash_lock_id);


    return result;
}

static u16 CTRDGi_ProgramFlashByteMX(u8 *src, u8 *dst)
{
    u16     result;

    


    *(vu8 *)CTRDG_BACKUP_COM_ADR1 = 0xaa;
    *(vu8 *)CTRDG_BACKUP_COM_ADR2 = 0x55;
    *(vu8 *)CTRDG_BACKUP_COM_ADR1 = 0xa0;
    *dst = *src;

    result = CTRDGi_PollingSR(CTRDG_BACKUP_PHASE_PROGRAM, dst, *src);

    


    return result;
}

u32 CTRDGi_WriteFlashSectorCoreMX(CTRDGTaskInfo * arg)
{
    u8     *tgt;
    
    MICartridgeRamCycle ram_cycle;
    u32     result;
    CTRDGTaskInfo p = *arg;
    u16     secNo = p.sec_num;
    u8     *src = p.data;

    if (secNo >= AgbFlash->sector.count)
        return CTRDG_BACKUP_RESULT_ERROR | CTRDG_BACKUP_PHASE_PARAMETER_CHECK;

    
    result = CTRDGi_EraseFlashSectorMX(secNo);
    if (result)
    {
        return result;
    }

    
    (void)OS_LockCartridge(ctrdgi_flash_lock_id);
    
    ram_cycle = MI_GetCartridgeRamCycle();
    MI_SetCartridgeRamCycle(AgbFlash->agbWait[0]);

    

    
    CTRDGi_SetFlashBankMx((u16)(secNo >> 4));
    secNo &= 0x0f;



    ctrdg_flash_remainder = (u16)AgbFlash->sector.size;
    tgt = (u8 *)(CTRDG_AGB_FLASH_ADR + (secNo << AgbFlash->sector.shift));
    ctrdgi_backup_irq = OS_DisableIrq();
    while (ctrdg_flash_remainder)
    {
        result = CTRDGi_ProgramFlashByteMX(src, tgt);
        if (result)
            break;
        ctrdg_flash_remainder--;
        src++;
        tgt++;
    }
    (void)OS_RestoreIrq(ctrdgi_backup_irq);

    
    MI_SetCartridgeRamCycle(ram_cycle);
    
    (void)OS_UnlockCartridge(ctrdgi_flash_lock_id);

    return result;
}

u16 CTRDGi_EraseFlashChipMX(void)
{
    u16     result;
    CTRDGTaskInfo p;
    result = (u16)CTRDGi_EraseFlashChipCoreMX(&p);

    return result;
}

u16 CTRDGi_EraseFlashSectorMX(u16 secNo)
{
    u16     result;
    CTRDGTaskInfo p;
    p.sec_num = secNo;
    result = (u16)CTRDGi_EraseFlashSectorCoreMX(&p);

    return result;
}

u16 CTRDGi_WriteFlashSectorMX(u16 secNo, u8 *src)
{
    u16     result;
    CTRDGTaskInfo p;
    p.sec_num = secNo;
    p.data = src;
    result = (u16)CTRDGi_WriteFlashSectorCoreMX(&p);

    return result;
}

void CTRDGi_EraseFlashChipAsyncMX(CTRDG_TASK_FUNC callback)
{
    CTRDGTaskInfo p;

    CTRDGi_SetTask(&p, CTRDGi_EraseFlashChipCoreMX, callback);
}

void CTRDGi_EraseFlashSectorAsyncMX(u16 secNo, CTRDG_TASK_FUNC callback)
{
    CTRDGTaskInfo p;

    p.sec_num = secNo;
    CTRDGi_SetTask(&p, CTRDGi_EraseFlashSectorCoreMX, callback);
}

void CTRDGi_WriteFlashSectorAsyncMX(u16 secNo, u8 *src, CTRDG_TASK_FUNC callback)
{
    CTRDGTaskInfo p;

    p.sec_num = secNo;
    p.data = src;
    CTRDGi_SetTask(&p, CTRDGi_WriteFlashSectorCoreMX, callback);
}
