#include <nitro.h>
#include <string.h>
#include <dwc.h>

#include "struct_decls/struct_020067E8_decl.h"

#include "overlay077/const_ov77_021D742C.h"
#include "constdata/const_020F2DBC.h"

#include "struct_defs/struct_0203CC84.h"
#include "struct_defs/struct_0208BE5C.h"
#include "overlay098/struct_ov98_02246E88.h"
#include "overlay098/struct_ov98_02247168.h"

#include "unk_02000C88.h"
#include "unk_020041CC.h"
#include "unk_020064F0.h"
#include "unk_020067E8.h"
#include "unk_02017728.h"
#include "unk_02017E74.h"
#include "unk_02022974.h"
#include "unk_02023790.h"
#include "unk_02025E08.h"
#include "unk_02030CE8.h"
#include "unk_02033200.h"
#include "unk_02038FFC.h"
#include "unk_020393C8.h"
#include "unk_020507CC.h"
#include "unk_0206A8DC.h"
#include "unk_020890F4.h"
#include "unk_02099550.h"
#include "overlay065/ov65_0222DCE0.h"
#include "overlay094/ov94_0223B140.h"
#include "overlay098/ov98_02246C20.h"
#include "overlay098/ov98_022471C8.h"
#include "overlay098/ov98_022499C8.h"

FS_EXTERN_OVERLAY(overlay65);
FS_EXTERN_OVERLAY(overlay77);
FS_EXTERN_OVERLAY(overlay94);
FS_EXTERN_OVERLAY(overlay98);

typedef void *(* UnkFuncPtr_ov98_02249B4C)(UnkStruct_ov98_02246E88 *);
typedef void (* UnkFuncPtr_ov98_02249B4C_1)(UnkStruct_ov98_02246E88 *);

static void ov98_02246E08(UnkStruct_ov98_02246E88 * param0);
static void ov98_02246E54(UnkStruct_ov98_02246E88 * param0);
static void * ov98_02246EAC(DWCAllocType param0, u32 param1, int param2);
static void ov98_02246ED4(DWCAllocType param0, void * param1, u32 param2);
static void * ov98_02246FBC(UnkStruct_ov98_02246E88 * param0);
static void ov98_02246FC0(UnkStruct_ov98_02246E88 * param0);
static void * ov98_02247168(UnkStruct_ov98_02246E88 * param0);
static void ov98_02247198(UnkStruct_ov98_02246E88 * param0);
static void * ov98_02246FC4(UnkStruct_ov98_02246E88 * param0);
static void ov98_02246FFC(UnkStruct_ov98_02246E88 * param0);
static void * ov98_02247070(UnkStruct_ov98_02246E88 * param0);
static void ov98_022470B8(UnkStruct_ov98_02246E88 * param0);
static void * ov98_022470F8(UnkStruct_ov98_02246E88 * param0);
static void ov98_02247134(UnkStruct_ov98_02246E88 * param0);

static NNSFndHeapHandle Unk_ov98_02249E20;

const UnkStruct_0208BE5C Unk_ov98_02249BAC = {
    ov98_02246C20,
    ov98_02246C98,
    ov98_02246DC0,
    0xFFFFFFFF
};

static const UnkStruct_0208BE5C Unk_ov98_02249B3C = {
    ov98_022471C8,
    ov98_022473D8,
    ov98_02247440,
    0xFFFFFFFF
};

static const UnkStruct_0208BE5C Unk_ov98_02249B2C = {
    ov65_0222E2A8,
    ov65_0222E3FC,
    ov65_0222E548,
    FS_OVERLAY_ID(overlay65)
};

static const struct {
    UnkFuncPtr_ov98_02249B4C unk_00;
    UnkFuncPtr_ov98_02249B4C_1 unk_04;
    const UnkStruct_0208BE5C * unk_08;
    int unk_0C;
} Unk_ov98_02249B4C[] = {
    {ov98_02246FBC, ov98_02246FC0, &Unk_ov98_02249B3C, 0x0},
    {ov98_02246FC4, ov98_02246FFC, &Unk_020F2DBC, 0x0},
    {ov98_02247070, ov98_022470B8, &Unk_020F2DBC, 0x0},
    {ov98_022470F8, ov98_02247134, &Unk_020F2DBC, 0x0},
    {ov98_022470F8, ov98_02247134, &Unk_020F2DBC, 0x0},
    {ov98_02247168, ov98_02247198, &Unk_ov98_02249B2C, 0x1}
};

int ov98_02246C20 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov98_02246E88 * v0;

    sub_02017FC8(3, 108, 0x28000);
    sub_02017FC8(0, 91, 0x300);

    v0 = sub_0200681C(param0, sizeof(UnkStruct_ov98_02246E88), 108);
    MI_CpuClear8(v0, sizeof(UnkStruct_ov98_02246E88));
    v0->unk_04 = ((UnkStruct_0203CC84 *)sub_02006840(param0))->unk_08;
    v0->unk_08 = sub_02025E44(v0->unk_04);
    v0->unk_114 = sub_02023790(100, 108);
    v0->unk_118 = sub_02023790(100, 108);
    sub_02004550(17, 1175, 1);
    v0->unk_8C = 0;

    return 1;
}

int ov98_02246C98 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov98_02246E88 * v0 = sub_0200682C(param0);
    BOOL v1;

    if (v0->unk_80 == 1) {
        DWC_UpdateConnection();
        ov94_0223B15C();
        sub_020397B0(WM_LINK_LEVEL_3 - DWC_GetLinkLevel());
    }

    switch (*param1) {
    case 0:
        ov98_02246E08(v0);
        *param1 = 1;
        break;
    case 1:
        if (sub_020334A4()) {
            Unk_ov98_02249E20 = v0->unk_10;
            DWC_SetMemFunc(ov98_02246EAC, ov98_02246ED4);
            v0->unk_80 = 1;
            *param1 = 2;
        }
        break;
    case 2:
        v0->unk_00 = sub_020067E8(Unk_ov98_02249B4C[v0->unk_8C].unk_08, Unk_ov98_02249B4C[v0->unk_8C].unk_00(v0), 108);
        v0->unk_84 = v0->unk_8C;
        v0->unk_8C = 6;
        *param1 = 3;
        break;
    case 3:
        if (sub_02006844(v0->unk_00) == 1) {
            Unk_ov98_02249B4C[v0->unk_84].unk_04(v0);
            sub_02006814(v0->unk_00);

            if (v0->unk_8C == 6) {
                *param1 = 4;
            } else {
                if (Unk_ov98_02249B4C[v0->unk_8C].unk_0C == 1) {
                    ov98_02246E54(v0);
                    *param1 = 2;
                } else if (v0->unk_80 == 1) {
                    *param1 = 2;
                } else {
                    *param1 = 0;
                }
            }
        }
        break;
    case 4:
        return 1;
    }

    return 0;
}

int ov98_02246DC0 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov98_02246E88 * v0 = sub_0200682C(param0);

    ov98_02246E54(v0);

    sub_020237BC(v0->unk_118);
    sub_020237BC(v0->unk_114);
    sub_02006830(param0);
    sub_0201807C(108);
    sub_0201807C(91);
    sub_02000EC4(FS_OVERLAY_ID(overlay77), &Unk_ov77_021D742C);

    return 1;
}

static void ov98_02246E08 (UnkStruct_ov98_02246E88 * param0)
{
    if (param0->unk_80 == 0) {
        sub_02006590(FS_OVERLAY_ID(overlay94), 2);

        param0->unk_0C = sub_02018144(108, 0x20000 + 32);
        param0->unk_10 = NNS_FndCreateExpHeap((void *)(((u32)param0->unk_0C + 31) / 32 * 32), 0x20000);

        sub_02099550();
        sub_020995B4();
        sub_02033478();
        sub_02017B8C(4);
    }
}

static void ov98_02246E54 (UnkStruct_ov98_02246E88 * param0)
{
    if (param0->unk_80 == 1) {
        NNS_FndDestroyExpHeap(param0->unk_10);

        sub_020181C4(param0->unk_0C);
        sub_020995C4();
        sub_02099560();
        sub_020334CC();
        sub_02006514(FS_OVERLAY_ID(overlay94));

        param0->unk_80 = 0;
    }
}

void ov98_02246E88 (UnkStruct_ov98_02246E88 * param0, int param1, int param2)
{
    param0->unk_8C = param1;
    param0->unk_90 = param2;
}

void ov98_02246E94 (UnkStruct_ov98_02246E88 * param0)
{
    param0->unk_8C = 6;
}

void ov98_02246E9C (UnkStruct_ov98_02246E88 * param0, int param1)
{
    param0->unk_7E = param1;
}

int ov98_02246EA4 (UnkStruct_ov98_02246E88 * param0)
{
    return param0->unk_7E;
}

static void * ov98_02246EAC (DWCAllocType param0, u32 param1, int param2)
{
#pragma unused( param0 )
    void * v0;
    OSIntrMode v1;
    v1 = OS_DisableInterrupts();
    v0 = NNS_FndAllocFromExpHeapEx(Unk_ov98_02249E20, param1, param2);

    OS_RestoreInterrupts(v1);

    if (v0 == NULL) {
        (void)0;
    }

    return v0;
}

static void ov98_02246ED4 (DWCAllocType param0, void * param1, u32 param2)
{
#pragma unused( param0, param2 )
    OSIntrMode v0;

    if (!param1) {
        return;
    }

    v0 = OS_DisableInterrupts();

    NNS_FndFreeToExpHeap(Unk_ov98_02249E20, param1);
    OS_RestoreInterrupts(v0);
}

void ov98_02246EF8 (UnkStruct_ov98_02246E88 * param0)
{
    char * v0;

    v0 = sub_02018144(108, sizeof(char) * 100);

    ov98_022499C8(param0->unk_114, v0, 108);
    sub_02030D38(param0->unk_04, v0);
    sub_020181C4(v0);
}

void ov98_02246F24 (UnkStruct_ov98_02246E88 * param0)
{
    sub_02030D5C(param0->unk_04, 1, param0->unk_7C);
    sub_02030D5C(param0->unk_04, 2, param0->unk_10C);
}

void ov98_02246F48 (UnkStruct_ov98_02246E88 * param0)
{
    sub_02030D5C(param0->unk_04, 3, param0->unk_108);
}

void ov98_02246F5C (UnkStruct_ov98_02246E88 * param0)
{
    u32 v0;

    v0 = sub_02030E48(param0->unk_04, &param0->unk_9C);
    ov98_02246F94(param0, v0);
}

void ov98_02246F74 (UnkStruct_ov98_02246E88 * param0)
{
    ov98_022499C8(param0->unk_114, param0->unk_9C.unk_1C, 108);
}

void ov98_02246F88 (UnkStruct_ov98_02246E88 * param0)
{
    param0->unk_9C.unk_5A = param0->unk_10C;
}

void ov98_02246F94 (UnkStruct_ov98_02246E88 * param0, u32 param1)
{
    param0->unk_7C = param1;
}

u32 ov98_02246F9C (UnkStruct_ov98_02246E88 * param0)
{
    return param0->unk_10C;
}

u32 ov98_02246FA4 (UnkStruct_ov98_02246E88 * param0)
{
    return param0->unk_108;
}

void ov98_02246FAC (UnkStruct_ov98_02246E88 * param0, int param1)
{
    param0->unk_110 = param1;
}

int ov98_02246FB4 (UnkStruct_ov98_02246E88 * param0)
{
    return param0->unk_110;
}

static void * ov98_02246FBC (UnkStruct_ov98_02246E88 * param0)
{
    return param0;
}

static void ov98_02246FC0 (UnkStruct_ov98_02246E88 * param0)
{
    return;
}

asm void * ov98_02246FC4 (UnkStruct_ov98_02246E88 * param0)
{
    push {r4, lr}
    sub sp, #0x18
    add r4, r0, #0
    mov r0, #4
    str r0, [sp, #8]
    str r0, [sp, #0xc]
    str r0, [sp, #0x10]
    str r0, [sp, #0x14]
    ldr r0, [r4, #4]
    bl sub_02025E44
    add r3, r0, #0
    mov r0, #4
    str r0, [sp]
    mov r0, #0
    str r0, [sp, #4]
    mov r0, #0x6c
    mov r1, #0x10
    add r2, sp, #8
    bl sub_02089400
    add r1, r4, #0
    add r1, #0x94
    add r4, #0x94
    str r0, [r1, #0]
    ldr r0, [r4, #0]
    add sp, #0x18
    pop {r4, pc}
}

asm void ov98_02246FFC (UnkStruct_ov98_02246E88 * param0)
{
    push {r3, r4, r5, lr}
    add r5, r0, #0
    add r0, #0x94
    ldr r4, [r0, #0]
    mov r1, #0x6c
    ldr r0, [r4, #0x1c]
    bl ov98_02249A80
    cmp r0, #0
    beq _0224701A
    add r0, r5, #0
    mov r1, #1
    bl ov98_02246FAC
    b _0224705C
 _0224701A:
    add r0, r5, #0
    bl ov98_02246FB4
    cmp r0, #2
    bne _02247048
    mov r0, #0x11
    lsl r0, r0, #4
    ldr r0, [r5, r0]
    ldr r1, [r4, #0x1c]
    bl sub_02023BE0
    cmp r0, #0
    beq _0224703E
    add r0, r5, #0
    mov r1, #3
    bl ov98_02246FAC
    b _0224705C
 _0224703E:
    add r0, r5, #0
    mov r1, #0
    bl ov98_02246FAC
    b _0224705C
 _02247048:
    mov r0, #0x11
    lsl r0, r0, #4
    ldr r0, [r5, r0]
    ldr r1, [r4, #0x1c]
    bl sub_02023810
    add r0, r5, #0
    mov r1, #2
    bl ov98_02246FAC
 _0224705C:
    add r0, r4, #0
    bl sub_02089438
    mov r1, #0
    add r0, r5, #0
    add r2, r1, #0
    bl ov98_02246E88
        pop {r3, r4, r5, pc}
}

asm void * ov98_02247070 (UnkStruct_ov98_02246E88 * param0)
{
    push {r4, lr}
    sub sp, #0x20
    add r4, r0, #0
    mov r0, #3
    str r0, [sp, #0x10]
    mov r0, #4
    str r0, [sp, #0x14]
    mov r0, #0
    str r0, [sp, #0x18]
    str r0, [sp, #0x1c]
    ldr r0, [r4, #4]
    bl sub_02025E44
    add r3, r0, #0
    mov r0, #5
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r0, [sp, #8]
    add r0, r4, #0
    add r0, #0x78
    ldrh r0, [r0]
    mov r1, #7
    add r2, sp, #0x10
    str r0, [sp, #0xc]
    mov r0, #0x6c
    bl sub_0208941C
    add r1, r4, #0
    add r1, #0x94
    add r4, #0x94
    str r0, [r1, #0]
    ldr r0, [r4, #0]
    add sp, #0x20
    pop {r4, pc}
}

extern void _ull_mod(void);

asm void ov98_022470B8 (UnkStruct_ov98_02246E88 * param0)
{
    push {r3, r4, r5, lr}
    add r5, r0, #0
    add r0, #0x94
    ldr r4, [r0, #0]
    add r1, sp, #0
    ldr r0, [r4, #0x1c]
    bl sub_02023B38
    ldr r2, = 0x2710
              mov r3, #0
    bl _ull_mod
    mov r1, #0x42
    lsl r1, r1, #2
    str r0, [r5, r1]
    ldr r0, [sp]
    cmp r0, #0
    bne _022470E0
    bl GF_AssertFail
 _022470E0:
    add r0, r4, #0
    bl sub_02089438
    mov r1, #0
    add r0, r5, #0
    add r2, r1, #0
    bl ov98_02246E88
        pop {r3, r4, r5, pc}
    nop
}

asm void * ov98_022470F8 (UnkStruct_ov98_02246E88 * param0)
{
    push {r4, lr}
    sub sp, #0x18
    add r4, r0, #0
    mov r0, #4
    str r0, [sp, #8]
    mov r0, #0
    str r0, [sp, #0xc]
    str r0, [sp, #0x10]
    str r0, [sp, #0x14]
    ldr r0, [r4, #4]
    bl sub_02025E44
    add r3, r0, #0
    mov r0, #6
    str r0, [sp]
    mov r0, #0
    str r0, [sp, #4]
    mov r0, #0x6c
    mov r1, #4
    add r2, sp, #8
    bl sub_02089400
    add r1, r4, #0
    add r1, #0x94
    add r4, #0x94
    str r0, [r1, #0]
    ldr r0, [r4, #0]
    add sp, #0x18
    pop {r4, pc}
}

asm void ov98_02247134 (UnkStruct_ov98_02246E88 * param0)
{
    push {r3, r4, r5, lr}
    add r5, r0, #0
    add r0, #0x94
    ldr r4, [r0, #0]
    add r1, sp, #0
    ldr r0, [r4, #0x1c]
    bl sub_02023B38
    mov r1, #0x41
    lsl r1, r1, #2
    str r0, [r5, r1]
    ldr r0, [sp]
    cmp r0, #0
    bne _02247154
    bl GF_AssertFail
 _02247154:
    add r0, r4, #0
    bl sub_02089438
    mov r1, #0
    add r0, r5, #0
    add r2, r1, #0
    bl ov98_02246E88
        pop {r3, r4, r5, pc}
}

static void * ov98_02247168 (UnkStruct_ov98_02246E88 * param0)
{
    UnkStruct_ov98_02247168 * v0;

    v0 = sub_02018144(108, sizeof(UnkStruct_ov98_02247168));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov98_02247168));

    v0->unk_00 = param0->unk_04;
    v0->unk_04 = 1;

    param0->unk_80 = 0;
    param0->unk_98 = v0;

    return param0->unk_98;
}

static void ov98_02247198 (UnkStruct_ov98_02246E88 * param0)
{
    UnkStruct_ov98_02247168 * v0;

    v0 = param0->unk_98;

    if (sub_02039074(param0->unk_04)) {
        sub_0206AF5C(sub_020507E4(param0->unk_04));
    }

    sub_020181C4(param0->unk_98);
    ov98_02246E88(param0, 0, 0);
}
