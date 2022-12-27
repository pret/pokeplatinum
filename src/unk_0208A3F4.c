#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02012CE0_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_02023790_decl.h"

#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_020127E8.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02089688.h"
#include "struct_defs/struct_0208AF44.h"
#include "overlay104/struct_ov104_0223F9E0.h"
#include "overlay104/struct_ov104_022412F4.h"
#include "overlay104/struct_ov104_02241308.h"
#include "overlay104/struct_ov104_0224133C.h"

#include "unk_02002B7C.h"
#include "unk_02002F38.h"
#include "unk_02006E3C.h"
#include "unk_0200AC5C.h"
#include "unk_0200C6E4.h"
#include "unk_0200DA60.h"
#include "unk_02012744.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "unk_0201E86C.h"
#include "unk_02023790.h"
#include "unk_020279FC.h"
#include "unk_0208A3F4.h"

void sub_0208A3F4 (UnkStruct_02089688 * param0)
{
    param0->unk_2C0.unk_04 = sub_0200C6E4(101);
    {
        const UnkStruct_ov104_0224133C v0 = {
            0, 128, 0, 32, 0, 128, 0, 32,
        };
        const UnkStruct_ov104_022412F4 v1 = {
            48 + 48, 1024 * 0x40, 512 * 0x20, GX_OBJVRAMMODE_CHAR_1D_64K, GX_OBJVRAMMODE_CHAR_1D_32K
        };

        sub_0200C73C(param0->unk_2C0.unk_04, &v0, &v1, 16 + 16);
    }

    {
        BOOL v2;
        const UnkStruct_ov104_02241308 v3 = {
            48 + 48, 16 + 16, 64, 64, 16, 16,
        };

        param0->unk_2C0.unk_08 = sub_0200C704(param0->unk_2C0.unk_04);

        v2 = sub_0200C7C0(param0->unk_2C0.unk_04, param0->unk_2C0.unk_08, 64 + 64);
        GF_ASSERT(v2);

        v2 = sub_0200CB30(param0->unk_2C0.unk_04, param0->unk_2C0.unk_08, &v3);
        GF_ASSERT(v2);
    }
}

void sub_0208A490 (UnkStruct_02089688 * param0)
{
    UnkStruct_02006C24 * v0;
    UnkStruct_02018340 * v1;
    UnkStruct_0200C6E4 * v2;
    UnkStruct_0200C704 * v3;
    UnkStruct_02002F38 * v4;

    v2 = param0->unk_2C0.unk_04;
    v3 = param0->unk_2C0.unk_08;
    v4 = param0->unk_2C0.unk_10;
    v1 = param0->unk_2C0.unk_0C;
    v0 = param0->unk_2C0.unk_00;

    sub_020070E8(v0, 12, v1, 1, 0, 0, 0, 101);
    sub_0200710C(v0, 14, v1, 1, 0, 0, 0, 101);
    sub_02003050(v4, 159, 13, 101, 0, 0x20 * 1, 0);

    sub_020070E8(v0, 15, v1, 5, 0, 0, 0, 101);
    sub_0200710C(v0, 17, v1, 5, 0, 0, 0, 101);
    sub_02003050(v4, 159, 16, 101, 1, 0x20 * 1, 0);

    sub_0200CDC4(v4, 2, v2, v3, v0, 1, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 1000);
    sub_0200CC3C(v2, v3, v0, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 1000);
    sub_0200CE24(v2, v3, v0, 2, 0, 1000);
    sub_0200CE54(v2, v3, v0, 3, 0, 1000);

    sub_0200CDC4(v4, 2, v2, v3, v0, 5, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 1001);
    sub_0200CC3C(v2, v3, v0, 4, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 1001);
    sub_0200CE24(v2, v3, v0, 6, 0, 1001);
    sub_0200CE54(v2, v3, v0, 7, 0, 1001);

    sub_0200CDC4(v4, 2, v2, v3, v0, 9, 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 1002);
    sub_0200CC3C(v2, v3, v0, 8, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 1002);
    sub_0200CE24(v2, v3, v0, 10, 0, 1002);
    sub_0200CE54(v2, v3, v0, 11, 0, 1002);

    {
        int v5 = sub_02027B50(param0->unk_38C.unk_20);

        sub_0200DD0C(v1, 4, 1, 10, v5, 101);
        sub_02003050(v4, 38, sub_0200DD08(v5), 101, 1, 0x20, 11 * 16);
        sub_02003050(v4, 14, 7, 101, 1, 0x20, 12 * 16);
    }
}

void sub_0208A6CC (UnkStruct_02089688 * param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_2A4; v0++) {
        sub_0200D0F4(param0->unk_00[v0].unk_0C);
    }

    for (v0 = 0; v0 < param0->unk_3C0; v0++) {
        sub_0200D0F4(param0->unk_1A0[v0].unk_0C);
    }

    for (v0 = 0; v0 < 2; v0++) {
        sub_0200D0F4(param0->unk_240[v0].unk_0C);
    }

    for (v0 = 0; v0 < 3; v0++) {
        sub_0200D0F4(param0->unk_1F0[v0].unk_0C);
    }

    sub_0208AFE8(param0);
    sub_0201A8FC(&param0->unk_2C0.unk_B0);
}

extern void _u32_div_f(void);

asm void sub_0208A758 (UnkStruct_02089688 * param0)
{
    push {r4, r5, r6, r7, lr}
    sub sp, #0x44
    str r0, [sp]
    mov r0, #0
    str r0, [sp, #0xc]
    mov r0, #0x2f
    lsl r0, r0, #4
    ldr r1, [sp]
    add r2, r0, #4
    ldr r1, [r1, r0]
    str r1, [sp, #8]
    ldr r1, [sp]
    ldr r1, [r1, r2]
    add r2, sp, #0x10
    str r1, [sp, #4]
    ldr r1, [sp, #0xc]
    strh r1, [r2]
    strh r1, [r2, #2]
    strh r1, [r2, #4]
    strh r1, [r2, #6]
    mov r1, #0xa
    str r1, [sp, #0x18]
    ldr r1, [sp, #0xc]
    mov r2, #1
    str r1, [sp, #0x3c]
    str r1, [sp, #0x40]
    str r1, [sp, #0x1c]
    add r1, r0, #0
    add r1, #0xf8
    str r1, [sp, #0x24]
    str r1, [sp, #0x28]
    str r1, [sp, #0x2c]
    str r1, [sp, #0x30]
    sub r1, r2, #2
    str r1, [sp, #0x34]
    str r1, [sp, #0x38]
    ldr r1, [sp]
    str r2, [sp, #0x20]
    add r0, #0xf0
    ldr r4, [r1, r0]
    mov r1, #0x3f
    ldr r0, [sp]
    lsl r1, r1, #4
    ldr r0, [r0, r1]
    sub r6, r0, #1
    bmi _0208A7DC
    mov r0, #0x1c
    add r1, r6, #0
    mul r1, r0
    ldr r0, [sp]
    mov r7, #0xa
    add r5, r0, r1
 _0208A7C0:
    add r0, r4, #0
    add r1, r7, #0
    bl _u32_div_f
    add r0, r1, #1
    str r0, [r5]
    add r0, r4, #0
    mov r1, #0xa
    bl _u32_div_f
    add r4, r0, #0
    sub r5, #0x1c
    sub r6, r6, #1
    bpl _0208A7C0
 _0208A7DC:
    mov r1, #0xfb
    ldr r0, [sp]
    lsl r1, r1, #2
    ldr r0, [r0, r1]
    mov r2, #0x2d
    ldr r1, [sp]
    lsl r2, r2, #4
    ldr r1, [r1, r2]
    mov r6, #0
    add r1, r1, r0
    cmp r1, #0
    ble _0208A89C
    ldr r4, [sp]
    mov r7, #0x4c
    add r5, r4, #0
 _0208A7FA:
    cmp r0, #0
    beq _0208A84C
    mov r0, #7
    lsl r0, r0, #6
    ldr r1, [r4, r0]
    ldr r0, [sp, #0xc]
    add r0, r0, r1
    add r0, r0, #1
    cmp r6, r0
    bne _0208A84C
    ldr r0, [sp, #8]
    ldr r1, [sp, #4]
    add r2, sp, #0x10
    bl sub_0200CE6C
    mov r1, #0x73
    lsl r1, r1, #2
    str r0, [r4, r1]
    add r0, r1, #0
    lsl r1, r7, #0x10
    ldr r0, [r4, r0]
    asr r1, r1, #0x10
    mov r2, #0x18
    bl sub_0200D4C4
    mov r0, #0x73
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    mov r1, #0x16
    bl sub_0200D364
    mov r0, #0x73
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    bl sub_0200D330
    ldr r0, [sp, #0xc]
    add r4, #0x1c
    add r0, r0, #1
    str r0, [sp, #0xc]
    b _0208A882
 _0208A84C:
    ldr r0, [sp, #8]
    ldr r1, [sp, #4]
    add r2, sp, #0x10
    bl sub_0200CE6C
    lsl r1, r7, #0x10
    str r0, [r5, #0xc]
    asr r1, r1, #0x10
    mov r2, #0x18
    bl sub_0200D4C4
    ldr r0, [r5, #0]
    ldr r1, [r5, #8]
    bl sub_0208AD98
    add r1, r0, #0
    ldr r0, [r5, #0xc]
    bl sub_0200D364
    ldr r0, [r5, #0xc]
    mov r1, #2
    bl sub_0200D6A4
    ldr r0, [r5, #0xc]
    bl sub_0200D330
    add r5, #0x1c
 _0208A882:
    ldr r1, [sp]
    mov r0, #0xfb
    lsl r0, r0, #2
    ldr r0, [r1, r0]
    add r2, r1, #0
    mov r1, #0x2d
    lsl r1, r1, #4
    ldr r1, [r2, r1]
    add r6, r6, #1
    add r1, r1, r0
    add r7, #8
    cmp r6, r1
    blt _0208A7FA
 _0208A89C:
    add sp, #0x44
    pop {r4, r5, r6, r7, pc}
}

void sub_0208A8A0 (UnkStruct_02089688 * param0)
{
    UnkStruct_ov104_0223F9E0 v0;
    UnkStruct_0200C6E4 * v1;
    UnkStruct_0200C704 * v2;
    UnkStruct_02002F38 * v3;

    v1 = param0->unk_2C0.unk_04;
    v2 = param0->unk_2C0.unk_08;
    v3 = param0->unk_2C0.unk_10;

    v0.unk_00 = 0;
    v0.unk_02 = 0;
    v0.unk_04 = 0;
    v0.unk_06 = 0;
    v0.unk_08 = 0;
    v0.unk_10 = 1;
    v0.unk_2C = 0;
    v0.unk_30 = 0;
    v0.unk_0C = 0;
    v0.unk_14[0] = 1001;
    v0.unk_14[1] = 1001;
    v0.unk_14[2] = 1001;
    v0.unk_14[3] = 1001;
    v0.unk_14[4] = 0xffffffff;
    v0.unk_14[5] = 0xffffffff;

    param0->unk_1F0[0].unk_0C = sub_0200CE6C(v1, v2, &v0);
    param0->unk_1F0[1].unk_0C = sub_0200CE6C(v1, v2, &v0);
    param0->unk_1F0[2].unk_0C = sub_0200CE6C(v1, v2, &v0);

    sub_0208AAE4(param0, param0->unk_3C4);
    sub_0200D364(param0->unk_1F0[0].unk_0C, 0);
    sub_0200D330(param0->unk_1F0[0].unk_0C);

    param0->unk_1F0[1].unk_14.unk_00 = 0;
    param0->unk_1F0[1].unk_14.unk_02 = 0;
    param0->unk_1F0[1].unk_00 = 1;

    sub_0208AB2C(param0, 0);
    sub_0200D364(param0->unk_1F0[1].unk_0C, param0->unk_1F0[1].unk_00);
    sub_0200D330(param0->unk_1F0[1].unk_0C);
    sub_0200D810(param0->unk_1F0[1].unk_0C, GX_OAM_MODE_XLU);

    param0->unk_1F0[2].unk_14.unk_00 = 0;
    param0->unk_1F0[2].unk_14.unk_02 = 0;
    param0->unk_1F0[2].unk_00 = 1;

    sub_0208AB2C(param0, 0);
    sub_0200D364(param0->unk_1F0[2].unk_0C, param0->unk_1F0[2].unk_00);
    sub_0200D330(param0->unk_1F0[2].unk_0C);
    sub_0200D810(param0->unk_1F0[2].unk_0C, GX_OAM_MODE_XLU);
    sub_0208AAB4(param0, 1, 0);
    sub_0208AAB4(param0, 2, 0);
}

void sub_0208A9BC (UnkStruct_02089688 * param0)
{
    UnkStruct_ov104_0223F9E0 v0;
    UnkStruct_0200C6E4 * v1;
    UnkStruct_0200C704 * v2;
    UnkStruct_02002F38 * v3;

    v1 = param0->unk_2C0.unk_04;
    v2 = param0->unk_2C0.unk_08;
    v3 = param0->unk_2C0.unk_10;

    v0.unk_00 = 0;
    v0.unk_02 = 0;
    v0.unk_04 = 0;
    v0.unk_06 = 0;
    v0.unk_08 = 10;
    v0.unk_10 = 1;
    v0.unk_2C = 0;
    v0.unk_30 = 0;
    v0.unk_0C = 0;
    v0.unk_14[0] = 1002;
    v0.unk_14[1] = 1002;
    v0.unk_14[2] = 1002;
    v0.unk_14[3] = 1002;
    v0.unk_14[4] = 0xffffffff;
    v0.unk_14[5] = 0xffffffff;
    v0.unk_0C = 0;
    param0->unk_240[0].unk_0C = sub_0200CE6C(v1, v2, &v0);
    v0.unk_0C = 1;
    param0->unk_240[1].unk_0C = sub_0200CE6C(v1, v2, &v0);

    {
        s16 v4, v5;

        v4 = (param0->unk_2C0.unk_18[26].val1.unk_02 + param0->unk_2C0.unk_18[26].val1.unk_03) / 2;
        v5 = (param0->unk_2C0.unk_18[26].val1.unk_00 + param0->unk_2C0.unk_18[26].val1.unk_01) / 2;

        sub_0200D4C4(param0->unk_240[0].unk_0C, v4, v5);
        sub_0200D364(param0->unk_240[0].unk_0C, 0);
        sub_0200D330(param0->unk_240[0].unk_0C);

        v4 = (param0->unk_2C0.unk_18[27].val1.unk_02 + param0->unk_2C0.unk_18[27].val1.unk_03) / 2;
        v5 = (param0->unk_2C0.unk_18[27].val1.unk_00 + param0->unk_2C0.unk_18[27].val1.unk_01) / 2;

        sub_0200D4C4(param0->unk_240[1].unk_0C, v4, v5);
        sub_0200D364(param0->unk_240[1].unk_0C, 0);
        sub_0200D330(param0->unk_240[1].unk_0C);
    }
}

void sub_0208AAB4 (UnkStruct_02089688 * param0, int param1, BOOL param2)
{
    if (param2 == 1) {
        sub_0200D3F4(param0->unk_1F0[param1].unk_0C, 1);
    } else {
        sub_0200D3F4(param0->unk_1F0[param1].unk_0C, 0);
    }
}

void sub_0208AAE4 (UnkStruct_02089688 * param0, int param1)
{
    s16 v0, v1;
    UnkStruct_0200D0F4 * v2;

    if (param1 < param0->unk_3C4) {
        return;
    }

    v2 = param0->unk_00[param1].unk_0C;
    param0->unk_1F0[0].unk_00 = param1;

    sub_0200D550(v2, &v0, &v1);
    sub_0200D4C4(param0->unk_1F0[0].unk_0C, v0, v1 + 16);
}

void sub_0208AB2C (UnkStruct_02089688 * param0, int param1)
{
    s16 v0, v1;

    v0 = (param0->unk_2C0.unk_18[param1 + 16].val1.unk_02 + param0->unk_2C0.unk_18[param1 + 16].val1.unk_03) / 2;
    v1 = (param0->unk_2C0.unk_18[param1 + 16].val1.unk_00 + param0->unk_2C0.unk_18[param1 + 16].val1.unk_01) / 2;

    sub_0200D4C4(param0->unk_1F0[1].unk_0C, v0, v1);
}

void sub_0208AB6C (UnkStruct_02089688 * param0, int param1, int param2)
{
    s16 v0, v1;

    v0 = (param0->unk_2C0.unk_18[param1 + 16].val1.unk_02 + param0->unk_2C0.unk_18[param1 + 16].val1.unk_03) / 2;
    v1 = (param0->unk_2C0.unk_18[param1 + 16].val1.unk_00 + param0->unk_2C0.unk_18[param1 + 16].val1.unk_01) / 2;

    sub_0200D4C4(param0->unk_1F0[param2].unk_0C, v0, v1);
}

void sub_0208ABB4 (UnkStruct_02089688 * param0)
{
    sub_0200D330(param0->unk_1F0[0].unk_0C);
    sub_0200D330(param0->unk_1F0[1].unk_0C);
    sub_0200D330(param0->unk_1F0[2].unk_0C);

    {
        int v0 = 2;
        int v1;
        BOOL v2;

        for (v0 = 1; v0 < 3; v0++) {
            v1 = sub_0200D37C(param0->unk_1F0[v0].unk_0C);

            if (v1 == 3) {
                v2 = sub_0200D3B8(param0->unk_1F0[v0].unk_0C);

                if (v2 == 0) {
                    sub_0200D364(param0->unk_1F0[v0].unk_0C, param0->unk_1F0[v0].unk_00);

                    if (param0->unk_2C0.unk_88 == 1) {
                        sub_0208AAB4(param0, 1, 0);
                    } else {
                        sub_0208AAB4(param0, 1, 1);
                    }

                    sub_0208AAB4(param0, 2, 0);
                }
            } else {
                if (v1 != param0->unk_1F0[v0].unk_00) {
                    sub_0200D364(param0->unk_1F0[v0].unk_0C, param0->unk_1F0[v0].unk_00);
                }

                {
                    v1 = sub_0200D37C(param0->unk_1F0[2].unk_0C);

                    if (v1 != 3) {
                        if (param0->unk_2C0.unk_88 == 1) {
                            sub_0208AAB4(param0, 1, 0);
                        } else {
                            sub_0208AAB4(param0, 1, 1);
                        }
                    }
                }
            }
        }
    }
}

static void sub_0208AC80 (UnkStruct_02012CE0 * param0, int param1, int param2)
{
    int v0;
    int v1;

    if (param0 != NULL) {
        sub_020128C4(param0, param1, param2);
    }
}

void sub_0208AC8C (UnkStruct_02089688 * param0)
{
    int v0;
    s16 v1, v2;

    for (v0 = 0; v0 < 2; v0++) {
        v1 = (param0->unk_2C0.unk_18[v0 + 26].val1.unk_02 + param0->unk_2C0.unk_18[v0 + 26].val1.unk_03) / 2;
        v1 -= 40;
        v2 = (param0->unk_2C0.unk_18[v0 + 26].val1.unk_00 + param0->unk_2C0.unk_18[v0 + 26].val1.unk_01) / 2;
        v2 -= 7;

        switch (param0->unk_240[v0].unk_00) {
        case 0:
            param0->unk_240[v0].unk_14.unk_04 = 0;
            break;
        case 1:
            param0->unk_240[v0].unk_14.unk_04++;

            if (param0->unk_240[v0].unk_14.unk_04 == 1) {
                sub_0200D364(param0->unk_240[v0].unk_0C, 1);
                sub_0208AC80(param0->unk_2C0.unk_90[v0], v1, v2 - 0);
            } else if (param0->unk_240[v0].unk_14.unk_04 == 2) {
                sub_0200D364(param0->unk_240[v0].unk_0C, 2);
                sub_0208AC80(param0->unk_2C0.unk_90[v0], v1, v2 - 1);
            } else if (param0->unk_240[v0].unk_14.unk_04 == 10) {
                sub_0200D364(param0->unk_240[v0].unk_0C, 0);
                sub_0208AC80(param0->unk_2C0.unk_90[v0], v1, v2 + 0);
                param0->unk_240[v0].unk_00++;
            }
            break;
        default:
            sub_0200D364(param0->unk_240[v0].unk_0C, 0);
            sub_0208AC80(param0->unk_2C0.unk_90[v0], v1, v2);
            param0->unk_240[v0].unk_00 = 0;
            break;
        }
    }
}

int sub_0208AD98 (int param0, BOOL param1)
{
    int v0 = 0;

    if (param1 == 0) {
        v0 = 11;
    }

    v0 += param0;

    return v0;
}

void sub_0208ADA4 (UnkStruct_02089688 * param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_2A4; v0++) {
        if ((v0 >= param0->unk_2B0) && (v0 < param0->unk_2B4)) {
            param0->unk_00[v0].unk_08 = 1;
        } else {
            param0->unk_00[v0].unk_08 = 0;
        }
    }
}

void sub_0208ADE4 (UnkStruct_02089688 * param0, int param1)
{
    int v0;
    int v1;
    s16 v2;
    s16 v3, v4;

    v2 = param0->unk_274[param0->unk_2A8];
    v1 = 0;

    for (v0 = 0; v0 < param0->unk_2A4; v0++) {
        if ((v0 >= param0->unk_2B0) && (v0 < param0->unk_2B4)) {
            if (v0 == param0->unk_2B0) {
                v2 += ((32 + 8) / 2);
            } else {
                v2 += 32;
            }
        } else {
            if (v0 == 0) {
                v2 += ((32 + 8) / 2);
            } else {
                v2 += 8;
            }
        }

        sub_0200D550(param0->unk_00[v0].unk_0C, &v3, &v4);

        if (param1 == 0) {
            sub_0200D4C4(param0->unk_00[v0].unk_0C, v2, v4);
        } else {
            param0->unk_00[v0].unk_14.unk_00 = (v2 - v3) / 2;
            param0->unk_00[v0].unk_14.unk_02 = 0;
            param0->unk_00[v0].unk_14.unk_04 = 2;
            param0->unk_00[v0].unk_14.unk_05 = 0;
        }

        if ((v0 == param0->unk_1A0[v1].unk_00) && (v1 != param0->unk_3C0)) {
            sub_0200D550(param0->unk_1A0[v1].unk_0C, &v3, &v4);

            if (param0->unk_2B0 == param0->unk_2B4) {
                v2 += 8;
            } else {
                if ((v0 > param0->unk_2B0) && (v0 < param0->unk_2B4)) {
                    v2 += ((32 + 8) / 2);
                } else {
                    v2 += 8;
                }
            }

            if (param1 == 0) {
                sub_0200D4C4(param0->unk_1A0[v1].unk_0C, v2, v4);
            } else {
                param0->unk_1A0[v1].unk_14.unk_00 = (v2 - v3) / 2;
                param0->unk_1A0[v1].unk_14.unk_02 = 0;
                param0->unk_1A0[v1].unk_14.unk_04 = 2;
            }

            v1++;
        }
    }
}

static inline void inline_0208AF44 (UnkStruct_02089688 * param0, int param1, s16 param2, s16 param3)
{
    s16 v0, v1;
    UnkStruct_0208AF44 * v2;

    v2 = &param0->unk_00[param1];

    sub_0200D550(v2->unk_0C, &v0, &v1);

    v2->unk_10->val1.unk_00 = v1 - param3;
    v2->unk_10->val1.unk_02 = v0 - param2;
    v2->unk_10->val1.unk_01 = v1 + param3;
    v2->unk_10->val1.unk_03 = v0 + param2;
}

void sub_0208AF44 (UnkStruct_02089688 * param0)
{
    int v0;
    s16 v1;
    s16 v2;

    for (v0 = 0; v0 < param0->unk_2A4; v0++) {
        if ((v0 >= param0->unk_2B0) && (v0 < param0->unk_2B4)) {
            v1 = 32 / 2;
            v2 = 32 / 2;
        } else {
            v1 = 8 / 2;
            v2 = 8;
        }

        inline_0208AF44(param0, v0, v1, v2);
    }
}

void sub_0208AFCC (UnkStruct_02089688 * param0)
{
    param0->unk_2C0.unk_8C = sub_02012744(2, 101);
    sub_02002BB8(2, 101);
}

void sub_0208AFE8 (UnkStruct_02089688 * param0)
{
    sub_02002C60(2);
    sub_02012870(param0->unk_2C0.unk_90[0]);
    sub_0201EE28(&param0->unk_2C0.unk_98[0]);
    sub_02012870(param0->unk_2C0.unk_90[1]);
    sub_0201EE28(&param0->unk_2C0.unk_98[1]);
    sub_020127BC(param0->unk_2C0.unk_8C);
}

void sub_0208B028 (UnkStruct_02089688 * param0)
{
    sub_0200CD7C(param0->unk_2C0.unk_10, 2, param0->unk_2C0.unk_04, param0->unk_2C0.unk_08, 14, 7, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 1003);
}

void sub_0208B064 (UnkStruct_02089688 * param0)
{
    sub_0208B028(param0);
    sub_0208B090(param0, 0, 78, 165, 0);
    sub_0208B090(param0, 1, 172, 165, 0);
}

void sub_0208B090 (UnkStruct_02089688 * param0, int param1, int param2, int param3, int param4)
{
    s16 v0, v1;
    UnkStruct_020127E8 v2;
    UnkStruct_02023790 * v3;
    int v4;
    int v5;
    UnkStruct_0200B144 * v6;
    UnkStruct_0205AA50 v7;

    v6 = sub_0200B144(0, 26, 212, 101);
    v3 = sub_0200B1EC(v6, 2 + param1);

    {
        sub_0201A7A0(&v7);
        sub_0201A870(param0->unk_2C0.unk_0C, &v7, 10, 2, 0, 0);
        sub_0201D78C(&v7, 2, v3, sub_02002EEC(2, v3, 0, 80), 0, 0xff, ((u32)(((15 & 0xff) << 16) | ((13 & 0xff) << 8) | ((2 & 0xff) << 0))), NULL);
    }

    v4 = 1003;
    v5 = sub_02012898(&v7, NNS_G2D_VRAM_TYPE_2DMAIN, 101);

    sub_0201ED94(v5, 1, NNS_G2D_VRAM_TYPE_2DMAIN, &param0->unk_2C0.unk_98[param1]);

    v0 = (param0->unk_2C0.unk_18[param1 + 26].val1.unk_02 + param0->unk_2C0.unk_18[param1 + 26].val1.unk_03) / 2;
    v0 -= 40;
    v1 = (param0->unk_2C0.unk_18[param1 + 26].val1.unk_00 + param0->unk_2C0.unk_18[param1 + 26].val1.unk_01) / 2;
    v1 -= 7;

    v2.unk_00 = param0->unk_2C0.unk_8C;
    v2.unk_04 = &v7;
    v2.unk_08 = sub_0200D9B0(param0->unk_2C0.unk_08);
    v2.unk_0C = sub_0200D04C(param0->unk_2C0.unk_08, v4);
    v2.unk_10 = NULL;
    v2.unk_14 = param0->unk_2C0.unk_98[param1].unk_04;
    v2.unk_18 = v0;
    v2.unk_1C = v1;
    v2.unk_20 = 0;
    v2.unk_24 = 0;
    v2.unk_28 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v2.unk_2C = 101;

    param0->unk_2C0.unk_90[param1] = sub_020127E8(&v2);

    sub_02012AC0(param0->unk_2C0.unk_90[param1], param4);
    sub_020237BC(v3);
    sub_0200B190(v6);
    sub_0201A8FC(&v7);
}

void sub_0208B1C4 (UnkStruct_02018340 * param0, UnkStruct_0205AA50 * param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8)
{
    sub_0201A7A0(param1);
    sub_0201A7E8(param0, param1, param2, param3, param4, param5, param6, 12, param7);
    sub_0200E060(param1, 1, 1, 11);
    sub_0201ADA4(param1, 15);
    sub_0201A954(param1);
    sub_0208B230(param1, param8);
}

void sub_0208B230 (UnkStruct_0205AA50 * param0, int param1)
{
    UnkStruct_0200B144 * v0;
    UnkStruct_02023790 * v1;

    sub_0201ADA4(param0, 15);

    v0 = sub_0200B144(0, 26, 212, 101);
    v1 = sub_0200B1EC(v0, param1);

    sub_0201ADA4(param0, 15);
    sub_0201D738(param0, 1, v1, 0, 0, 0, NULL);
    sub_0201A954(param0);

    sub_020237BC(v1);
    sub_0200B190(v0);
}
