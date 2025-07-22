#include "unk_02022844.h"

#include <nitro.h>
#include <string.h>

static void sub_02022878(void);
static u64 sub_020228C8(void);

static vu64 Unk_021C0780 = 0;
static BOOL Unk_021C077C = 0;

void sub_02022844(void) {
    Unk_021C0780 = 0;
    Unk_021C077C = 0;

    OS_SetTimerControl((OS_TIMER_3), 0);
    OS_SetTimerCount((OS_TIMER_3), 0);
    OS_SetTimerControl((OS_TIMER_3), (u16)((u16)(REG_OS_TM3CNT_H_E_MASK | REG_OS_TM3CNT_H_I_MASK | OS_TIMER_PRESCALER_64)));
    OS_SetIrqFunction((OS_IE_TIMER3), sub_02022878);
    OS_EnableIrqMask(OS_IE_TIMER3);
}

static void sub_02022878(void) {
    Unk_021C0780++;

    if (Unk_021C077C) {
        OS_SetTimerControl((OS_TIMER_3), 0);
        OS_SetTimerCount((OS_TIMER_3), 0);
        OS_SetTimerControl((OS_TIMER_3), (u16)((u16)(REG_OS_TM3CNT_H_E_MASK | REG_OS_TM3CNT_H_I_MASK | OS_TIMER_PRESCALER_64)));

        Unk_021C077C = 0;
    }

    OS_SetIrqCheckFlag(OS_IE_TIMER3);
    OS_SetIrqFunction((OS_IE_TIMER3), sub_02022878);
}

static u64 sub_020228C8(void) {
    vu16 v0;
    vu64 v1;
    OSIntrMode v2 = OS_DisableInterrupts();

    v0 = *(REGType16 *)((u32)REG_TM0CNT_L_ADDR + (OS_TIMER_3) * 4);
    v1 = Unk_021C0780 & 0xffffffffffffULL;

    if (reg_OS_IF & (OS_IE_TIMER3) && !(v0 & 0x8000)) {
        v1++;
    }

    (void)OS_RestoreInterrupts(v2);

    return (v1 << 16) | v0;
}

u64 sub_0202293C(void) {
    return sub_020228C8();
}

u64 sub_02022944(u64 param0) {
    return ((param0) * 64) / (OS_SYSTEM_CLOCK / 1000);
}

u64 sub_0202295C(u64 param0) {
    return ((param0) * 64) / OS_SYSTEM_CLOCK;
}
