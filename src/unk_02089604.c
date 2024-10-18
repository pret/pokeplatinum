#include "unk_02089604.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02089688.h"

#include "core_sys.h"
#include "heap.h"
#include "strbuf.h"
#include "touch_screen.h"
#include "unk_02002F38.h"
#include "unk_02005474.h"
#include "unk_0200C6E4.h"
#include "unk_0200F174.h"
#include "unk_02023FCC.h"
#include "unk_020393C8.h"
#include "unk_0208A3F4.h"

void sub_02089604(UnkStruct_02089688 *param0, int param1)
{
    int v0;

    param0->unk_2AC = param0->unk_2A8;
    param0->unk_2A8 = param1;
    param0->unk_2B0 = 0;
    param0->unk_2B4 = 0;
    param0->unk_2B8 = 0;
    param0->unk_2BC = 0;

    if (param0->unk_2A8 != 0) {
        param0->unk_2B0 = param0->unk_27E[param0->unk_2A8 - 1][0];
        param0->unk_2B4 = param0->unk_27E[param0->unk_2A8 - 1][1];
    }

    if (param0->unk_2AC != 0) {
        param0->unk_2B8 = param0->unk_27E[param0->unk_2AC - 1][0];
        param0->unk_2BC = param0->unk_27E[param0->unk_2AC - 1][1];
    }
}

void sub_02089688(UnkStruct_02089688 *param0)
{
    int v0;
    param0->unk_2C0.unk_88 = 1;
    u16 v1 = 0;
    int v2, v3, v4, v5;

    for (v0 = 0; v0 < 4 + 1; v0++) {
        param0->unk_27E[v0][0] = v1;
        v1 += param0->unk_38C.unk_04[v0];
        param0->unk_27E[v0][1] = v1;
    }

    sub_02089604(param0, param0->unk_38C.unk_24 + 1);

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_38C.unk_04[v0] == 0) {
            break;
        }

        param0->unk_2A4 += param0->unk_38C.unk_04[v0];
        param0->unk_3C0++;
    }

    param0->unk_3C0--;
    v2 = 8 * (param0->unk_2A4 + param0->unk_3C0);
    param0->unk_274[0] = 112 - v2 / 2;

    for (v0 = 0; v0 < 4; v0++) {
        v2 = 8 * param0->unk_3C0 + (8 * (param0->unk_2A4 - param0->unk_38C.unk_04[v0]) + 32 * param0->unk_38C.unk_04[v0]);

        param0->unk_274[v0 + 1] = 112 - v2 / 2;
    }

    param0->unk_274[1] += 12;
    v3 = 0;

    for (v0 = 0; v0 < param0->unk_3C0; v0++) {
        v3 += param0->unk_38C.unk_04[v0];
        param0->unk_1A0[v0].unk_00 = v3 - 1;
    }

    v5 = 0;
    v0 = 0;

    do {
        for (v4 = 0; v4 < param0->unk_38C.unk_04[v5]; v4++) {
            param0->unk_00[v0].unk_04 = v5 + 1;
            v0++;
        }
        v5++;
    } while (v0 < param0->unk_2A4);

    for (v0 = 0; v0 < param0->unk_38C.unk_24; v0++) {
        param0->unk_3C4 += param0->unk_38C.unk_04[v0];
    }
}

void sub_02089808(UnkStruct_02089688 *param0, int param1)
{
    param0->unk_294 = param1;
    param0->unk_298 = 0;
    param0->unk_29C = 0;
    param0->unk_2A0 = 0;
}

BOOL sub_02089820(UnkStruct_02089688 *param0)
{
    sub_0208A490(param0);
    sub_0208ADA4(param0);
    sub_0208A758(param0);
    sub_0208ADE4(param0, 0);
    sub_0208A8A0(param0);
    sub_0208A9BC(param0);
    sub_0208AF44(param0);
    sub_0208AFCC(param0);
    sub_0208B064(param0);
    sub_0208B1C4(param0->unk_2C0.unk_0C, &param0->unk_2C0.unk_B0, 4, 2, 21, 27, 2, 100, param0->unk_38C.unk_2C);

    if (param0->unk_38C.unk_30 != 0) {
        NNSG2dPaletteData *v0;
        void *v1 = sub_020394A8(101);

        NNS_G2dGetUnpackedPaletteData(v1, &v0);
        sub_02002FBC(param0->unk_2C0.unk_10, v0->pRawData, 0x1 | 0x2, 0xe0, 0x20);
        Heap_FreeToHeap(v1);
    }

    sub_02089808(param0, 1);
    sub_0200F174(0, 1, 1, 0x0, 6, 1, 101);

    return 0;
}

BOOL sub_020898DC(UnkStruct_02089688 *param0)
{
    switch (param0->unk_29C) {
    case 0:
        sub_0200F174(0, 0, 0, 0x0, 6, 1, 101);
        param0->unk_29C++;
        break;
    case 1:
        if (ScreenWipe_Done() == 1) {
            param0->unk_29C++;
        }
        break;
    default:
        return 1;
    }

    return 0;
}

BOOL sub_02089938(UnkStruct_02089688 *param0)
{
    switch (param0->unk_29C) {
    case 0:
        if (ScreenWipe_Done() == 1) {
            param0->unk_29C++;
        }
        break;
    default:
        sub_0208A328(param0);
        sub_0202404C(param0->unk_2C0.unk_14);
        sub_02089C20(param0);
        break;
    }

    return 0;
}

BOOL sub_02089974(UnkStruct_02089688 *param0)
{
    int v0;
    static f32 v1[] = {
        0.5f, 0.2f, 0.5f, 1.0f, 1.2f, 1.0f, 1.0f
    };
    static f32 v2[] = {
        0.8f, 0.6f, 0.4f, 0.2f, 0.8f, 1.0f, 1.0f
    };

    switch (param0->unk_29C) {
    case 0:
        sub_0208AAB4(param0, 0, 0);
        {
            for (v0 = 0; v0 < param0->unk_2A4; v0++) {
                if (param0->unk_00[v0].unk_14.unk_04 == 0) {
                    continue;
                }

                sub_0200D5DC(param0->unk_00[v0].unk_0C, param0->unk_00[v0].unk_14.unk_00, param0->unk_00[v0].unk_14.unk_02);
                param0->unk_00[v0].unk_14.unk_04--;

                if ((v0 >= param0->unk_2B0) && (v0 < param0->unk_2B4)) {
                    sub_0200D6E8(param0->unk_00[v0].unk_0C, v1[param0->unk_00[v0].unk_14.unk_05], v1[param0->unk_00[v0].unk_14.unk_05]);
                    param0->unk_00[v0].unk_14.unk_05++;
                }

                if ((v0 >= param0->unk_2B8) && (v0 < param0->unk_2BC)) {
                    sub_0200D6E8(param0->unk_00[v0].unk_0C, v2[param0->unk_00[v0].unk_14.unk_05], v2[param0->unk_00[v0].unk_14.unk_05]);
                    param0->unk_00[v0].unk_14.unk_05++;
                }
            }

            for (v0 = 0; v0 < param0->unk_3C0; v0++) {
                if (param0->unk_1A0[v0].unk_14.unk_04 == 0) {
                    continue;
                }

                sub_0200D5DC(param0->unk_1A0[v0].unk_0C, param0->unk_1A0[v0].unk_14.unk_00, param0->unk_1A0[v0].unk_14.unk_02);
                param0->unk_1A0[v0].unk_14.unk_04--;
            }

            if (param0->unk_00[0].unk_14.unk_04 == 0) {
                for (v0 = param0->unk_2B0; v0 < param0->unk_2B4; v0++) {
                    sub_0200D364(param0->unk_00[v0].unk_0C, sub_0208AD98(param0->unk_00[v0].unk_00, param0->unk_00[v0].unk_08));
                    sub_0200D330(param0->unk_00[v0].unk_0C);
                }

                for (v0 = param0->unk_2B8; v0 < param0->unk_2BC; v0++) {
                    sub_0200D364(param0->unk_00[v0].unk_0C, sub_0208AD98(param0->unk_00[v0].unk_00, param0->unk_00[v0].unk_08));
                    sub_0200D330(param0->unk_00[v0].unk_0C);
                }

                param0->unk_29C++;
            }

            param0->unk_2A0++;
        }
        break;
    case 1:
        for (v0 = param0->unk_2B0; v0 < param0->unk_2B4; v0++) {
            if (param0->unk_00[v0].unk_14.unk_05 == 6) {
                continue;
            }

            sub_0200D6E8(param0->unk_00[v0].unk_0C, v1[param0->unk_00[v0].unk_14.unk_05], v1[param0->unk_00[v0].unk_14.unk_05]);
            param0->unk_00[v0].unk_14.unk_05++;
        }

        for (v0 = param0->unk_2B8; v0 < param0->unk_2BC; v0++) {
            if (param0->unk_00[v0].unk_14.unk_05 == 6) {
                continue;
            }

            sub_0200D6E8(param0->unk_00[v0].unk_0C, v2[param0->unk_00[v0].unk_14.unk_05], v2[param0->unk_00[v0].unk_14.unk_05]);
            param0->unk_00[v0].unk_14.unk_05++;
        }

        param0->unk_2A0++;

        if (param0->unk_2A0 == 6) {
            param0->unk_29C++;
        }
        break;
    default:
        sub_0208AF44(param0);

        if (param0->unk_380.unk_08 == 0) {
            sub_0208AAE4(param0, sub_0208A398(param0, param0->unk_380.unk_04));
        } else {
            sub_0208AAE4(param0, sub_0208A3C0(param0, param0->unk_380.unk_04));
        }

        if (param0->unk_2A8 != 0) {
            sub_0208AAB4(param0, 0, 1);
        }

        sub_0208A384(param0);
        sub_02089808(param0, 1);
        break;
    }

    return 0;
}

static BOOL (*const Unk_020F2EB8[])(UnkStruct_02089688 *) = {
    sub_02089820,
    sub_02089938,
    sub_02089974,
    sub_020898DC,
};

BOOL sub_02089BEC(UnkStruct_02089688 *param0)
{
    BOOL v0;

    v0 = Unk_020F2EB8[param0->unk_294](param0);

    sub_0208ABB4(param0);
    sub_0208AC8C(param0);
    sub_0200C7EC(param0->unk_2C0.unk_08);

    return v0;
}

const int Unk_020F2EC8[][5] = {
    { 0, 1, 2, 3, 4 },
    { 5, 6, 7, 8, 9 },
    { 10, 10, 10, 11, 11 },
};

extern void _s32_div_f(void);

// clang-format off
asm void sub_02089C20 (UnkStruct_02089688 * param0)
{
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x40
    ldr r5, = Unk_020F2EC8
              add r4, r0, #0
    add r3, sp, #4
    mov r2, #7
 _02089C2C:
    ldmia r5 !, {r0, r1}
    stmia r3 !, {r0, r1}
    sub r2, r2, #1
    bne _02089C2C
    ldr r0, [r5, #0]
    mov r1, #0x14
    str r0, [r3]
    mov r3, #0x91
    lsl r3, r3, #2
    add r0, r3, #2
    ldrsh r0, [r4, r0]
    ldrsh r7, [r4, r3]
    mov r6, #0
    mov ip, r0
    mul r1, r0
    add r0, sp, #4
    lsl r2, r7, #2
    add r0, r0, r1
    ldr r5, [r2, r0]
    add r0, r3, #0
    add r0, #0x7c
    ldr r0, [r4, r0]
    cmp r0, #1
    bne _02089C80
    mov r2, #0xeb
    lsl r2, r2, #2
    ldr r0, [r4, r2]
    cmp r0, #1
    beq _02089C80
    add r0, r2, #0
    sub r0, #0x38
    ldr r0, [r4, r0]
    cmp r0, #1
    bne _02089CBC
    ldr r0, = gCoreSys
              ldr r0, [r0, #0x48]
    cmp r0, #0
    beq _02089C80
    bl TouchScreen_Touched
    cmp r0, #0
    beq _02089C82
 _02089C80:
    b _02089F78
 _02089C82:
    mov r0, #0xdd
    add r1, r6, #0
    lsl r0, r0, #2
    str r1, [r4, r0]
    add r0, r4, #0
    add r1, r5, #0
    bl sub_0208AB2C
    sub r5, #0xa
    cmp r5, #1
    bhi _02089CAA
    mov r0, #0x23
    lsl r0, r0, #4
    ldr r1, [r4, r0]
    cmp r1, #2
    beq _02089D8C
    mov r1, #2
    add sp, #0x40
    str r1, [r4, r0]
    pop {r3, r4, r5, r6, r7, pc}
 _02089CAA:
    mov r0, #0x23
    lsl r0, r0, #4
    ldr r1, [r4, r0]
    cmp r1, #1
    beq _02089D8C
    mov r1, #1
    add sp, #0x40
    str r1, [r4, r0]
    pop {r3, r4, r5, r6, r7, pc}
 _02089CBC:
    ldr r0, = gCoreSys
              mov r1, #0x40
    ldr r0, [r0, #0x4c]
    tst r1, r0
    beq _02089CDE
    mov r0, ip
    cmp r0, #0
    ble _02089CD4
    add r0, r3, #2
    ldrsh r0, [r4, r0]
    sub r1, r0, #1
    b _02089CD6
 _02089CD4:
    mov r1, #2
 _02089CD6:
    add r0, r3, #2
    strh r1, [r4, r0]
    mov r6, #1
    b _02089F2A
 _02089CDE:
    mov r1, #0x80
    tst r1, r0
    beq _02089CFE
    add r0, r3, #2
    ldrsh r0, [r4, r0]
    add r1, r0, #1
    add r0, r3, #2
    strh r1, [r4, r0]
    ldrsh r0, [r4, r0]
    mov r1, #3
    bl _s32_div_f
    ldr r0, = 0x246
              mov r6, #1
    strh r1, [r4, r0]
    b _02089F2A
 _02089CFE:
    mov r1, #0x10
    tst r1, r0
    beq _02089D2C
    cmp r5, #0xa
    bne _02089D0E
    mov r0, #3
    strh r0, [r4, r3]
    b _02089D28
 _02089D0E:
    cmp r5, #0xb
    bne _02089D16
    strh r6, [r4, r3]
    b _02089D28
 _02089D16:
    add r0, r7, #1
    strh r0, [r4, r3]
    ldrsh r0, [r4, r3]
    mov r1, #5
    bl _s32_div_f
    mov r0, #0x91
    lsl r0, r0, #2
    strh r1, [r4, r0]
 _02089D28:
    mov r6, #1
    b _02089F2A
 _02089D2C:
    mov r1, #0x20
    tst r1, r0
    beq _02089D56
    cmp r5, #0xa
    bne _02089D3C
    mov r0, #3
    strh r0, [r4, r3]
    b _02089D52
 _02089D3C:
    cmp r5, #0xb
    bne _02089D44
    strh r6, [r4, r3]
    b _02089D52
 _02089D44:
    cmp r7, #0
    ble _02089D4E
    sub r0, r7, #1
    strh r0, [r4, r3]
    b _02089D52
 _02089D4E:
    mov r0, #4
    strh r0, [r4, r3]
 _02089D52:
    mov r6, #1
    b _02089F2A
 _02089D56:
    ldr r1, = gCoreSys
              ldr r7, [r1, #0x48]
    mov r1, #1
    tst r1, r7
    beq _02089E3C
    cmp r5, #0xa
    bne _02089D72
    add r0, r4, #0
    bl sub_02089FFC
    ldr r0, = 0x5E5
              bl Sound_PlayEffect
              b _02089F2A
 _02089D72:
              cmp r5, #0xb
    bne _02089D84
    add r0, r4, #0
    bl sub_02089F80
    ldr r0, = 0x5E2
              bl Sound_PlayEffect
              b _02089F2A
 _02089D84:
              sub r2, #0xd8
    ldr r0, [r4, r2]
    cmp r0, #0
    bne _02089D8E
 _02089D8C:
    b _02089F78
 _02089D8E:
    sub r3, #0x30
    ldr r0, [r4, r3]
    mov r1, #0x1c
    add r7, r0, #0
    str r0, [sp]
    mul r7, r1
    add r0, r5, #1
    str r0, [r4, r7]
    add r0, r4, #0
    mov r1, #1
    add r2, r6, #0
    bl sub_0208AAB4
    add r0, r4, #0
    mov r1, #2
    mov r2, #1
    bl sub_0208AAB4
    add r0, r4, #0
    add r1, r5, #0
    mov r2, #2
    bl sub_0208AB6C
    add r1, r4, r7
    ldr r0, [r4, r7]
    ldr r1, [r1, #8]
    bl sub_0208AD98
    add r1, r0, #0
    add r0, r4, r7
    ldr r0, [r0, #0xc]
    bl sub_0200D364
    mov r0, #0x96
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    mov r1, #3
    bl sub_0200D364
    add r0, r4, r7
    ldr r3, [r0, #4]
    ldr r0, [sp]
    add r2, r0, #1
    mov r0, #0x2d
    lsl r0, r0, #4
    ldr r1, [r4, r0]
    cmp r2, r1
    bne _02089E0E
    add r1, r0, #0
    mov r6, #1
    add r1, #0xdc
    str r6, [r4, r1]
    add r1, r0, #0
    mov r2, #0
    add r1, #0xe0
    str r2, [r4, r1]
    add r1, r0, #0
    mov r2, #3
    sub r1, #0x8c
    strh r2, [r4, r1]
    mov r1, #2
    sub r0, #0x8a
    strh r1, [r4, r0]
    b _02089F2A
 _02089E0E:
    mov r1, #0x1c
    mul r1, r2
    add r1, r4, r1
    ldr r1, [r1, #4]
    cmp r3, r1
    beq _02089E28
    add r2, r0, #0
    mov r3, #1
    add r2, #0xdc
    str r3, [r4, r2]
    add r0, #0xe0
    str r1, [r4, r0]
    b _02089E34
 _02089E28:
    add r1, r0, #0
    mov r3, #2
    add r1, #0xdc
    str r3, [r4, r1]
    add r0, #0xe0
    str r2, [r4, r0]
 _02089E34:
    ldr r0, = 0x5E5
              bl Sound_PlayEffect
              b _02089F2A
 _02089E3C:
              mov r1, #2
    add r5, r7, #0
    tst r5, r1
    beq _02089E52
    add r0, r4, #0
    bl sub_02089FFC
    ldr r0, = 0x5E5
              bl Sound_PlayEffect
              b _02089F2A
 _02089E52:
              lsl r5, r1, #8
    tst r5, r0
    beq _02089EB6
    add r0, r3, #0
    sub r0, #0x30
    ldr r1, [r4, r0]
    add r0, r2, #0
    add r0, #0x44
    ldr r0, [r4, r0]
    cmp r1, r0
    bne _02089E6E
    sub r2, #0xdc
    ldr r0, [r4, r2]
    b _02089E74
 _02089E6E:
    add r0, r3, #0
    sub r0, #0x30
    ldr r0, [r4, r0]
 _02089E74:
    sub r0, r0, #1
    sub r3, #0x30
    str r0, [r4, r3]
    mov r0, #0x85
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    mov r1, #0x1c
    mul r1, r0
    add r2, r4, r1
    ldr r1, [r2, #8]
    cmp r1, #1
    bne _02089E9A
    mov r1, #0xeb
    mov r2, #2
    lsl r1, r1, #2
    str r2, [r4, r1]
    add r1, r1, #4
    str r0, [r4, r1]
    b _02089EAC
 _02089E9A:
    mov r1, #0xeb
    lsl r1, r1, #2
    mov r3, #1
    str r3, [r4, r1]
    add r0, r1, #4
    ldr r2, [r2, #4]
    add r1, #8
    str r2, [r4, r0]
    str r3, [r4, r1]
 _02089EAC:
    mov r0, #0x5e
    lsl r0, r0, #4
    bl Sound_PlayEffect
    b _02089F2A
 _02089EB6:
    add r1, #0xfe
    tst r0, r1
    beq _02089F2A
    add r1, r2, #0
    add r0, r3, #0
    sub r1, #0xdc
    sub r0, #0x30
    ldr r1, [r4, r1]
    ldr r0, [r4, r0]
    sub r1, r1, #1
    cmp r0, r1
    bne _02089ED4
    add r2, #0x44
    ldr r0, [r4, r2]
    b _02089EDC
 _02089ED4:
    add r0, r3, #0
    sub r0, #0x30
    ldr r0, [r4, r0]
    add r0, r0, #1
 _02089EDC:
    sub r3, #0x30
    str r0, [r4, r3]
    mov r0, #0x85
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    mov r1, #0x1c
    mul r1, r0
    add r2, r4, r1
    ldr r1, [r2, #8]
    cmp r1, #1
    bne _02089F14
    mov r1, #0xeb
    mov r2, #2
    lsl r1, r1, #2
    str r2, [r4, r1]
    add r1, r1, #4
    str r0, [r4, r1]
    b _02089F22
 _02089F14:
    mov r0, #0xeb
    mov r1, #1
    lsl r0, r0, #2
    str r1, [r4, r0]
    ldr r1, [r2, #4]
    add r0, r0, #4
    str r1, [r4, r0]
 _02089F22:
    mov r0, #0x5e
    lsl r0, r0, #4
    bl Sound_PlayEffect
 _02089F2A:
    cmp r6, #1
    bne _02089F78
    mov r0, #0x5e
    lsl r0, r0, #4
    bl Sound_PlayEffect
    ldr r1, = 0x246
              mov r0, #0x14
    ldrsh r2, [r4, r1]
    sub r1, r1, #2
    ldrsh r1, [r4, r1]
    mul r0, r2
    add r2, sp, #4
    lsl r1, r1, #2
    add r0, r2, r0
    ldr r5, [r1, r0]
    add r0, r4, #0
    add r1, r5, #0
    bl sub_0208AB2C
    sub r5, #0xa
    cmp r5, #1
    bhi _02089F6A
    mov r0, #0x23
    lsl r0, r0, #4
    ldr r1, [r4, r0]
    cmp r1, #2
    beq _02089F78
    mov r1, #2
    add sp, #0x40
    str r1, [r4, r0]
    pop {r3, r4, r5, r6, r7, pc}
 _02089F6A:
    mov r0, #0x23
    lsl r0, r0, #4
    ldr r1, [r4, r0]
    cmp r1, #1
    beq _02089F78
    mov r1, #1
    str r1, [r4, r0]
 _02089F78:
    add sp, #0x40
    pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on

void sub_02089F80(UnkStruct_02089688 *param0)
{
    int v0;
    u32 v1 = 0;
    Strbuf *v2 = Strbuf_Init(100, 101);

    param0->unk_240[1].unk_00 = 1;
    param0->unk_240[1].unk_14.unk_04 = 0;

    for (v0 = 0; v0 < param0->unk_2A4; v0++) {
        if (param0->unk_00[v0].unk_00 == 0) {
            param0->unk_00[v0].unk_00 = 1;
            sub_0200D364(param0->unk_00[v0].unk_0C, sub_0208AD98(param0->unk_00[v0].unk_00, param0->unk_00[v0].unk_08));
        }

        v1 = param0->unk_00[v0].unk_00 - 1;
        Strbuf_FormatInt(v2, v1, 1, 1, 1);
        Strbuf_Concat(param0->unk_38C.unk_1C, v2);
    }

    Strbuf_Free(v2);
    sub_02089808(param0, 3);
}

void sub_02089FFC(UnkStruct_02089688 *param0)
{
    int v0;
    int v1;
    int v2;

    param0->unk_240[0].unk_00 = 1;
    param0->unk_240[0].unk_14.unk_04 = 0;

    if (param0->unk_2A8 == 0) {
        v0 = param0->unk_1F0[0].unk_00 = param0->unk_2A4 - 1;
        v2 = param0->unk_00[v0].unk_04;

        param0->unk_380.unk_00 = 1;
        param0->unk_380.unk_04 = v2;
        param0->unk_380.unk_08 = 1;

        return;
    }

    v0 = param0->unk_1F0[0].unk_00;
    param0->unk_00[v0].unk_00 = 0;

    sub_0200D364(param0->unk_00[v0].unk_0C, sub_0208AD98(param0->unk_00[v0].unk_00, param0->unk_00[v0].unk_08));
    v1 = param0->unk_00[v0].unk_04;

    if (v0 > param0->unk_3C4) {
        v0--;
        sub_0200D364(param0->unk_00[v0].unk_0C, sub_0208AD98(param0->unk_00[v0].unk_00, param0->unk_00[v0].unk_08));

        v2 = param0->unk_00[v0].unk_04;

        if (v1 != v2) {
            param0->unk_380.unk_00 = 1;
            param0->unk_380.unk_04 = v2;
            param0->unk_380.unk_08 = 1;
        } else {
            param0->unk_380.unk_00 = 2;
            param0->unk_380.unk_04 = v0;
        }
    }
}

void sub_0208A0B8(UnkStruct_02089688 *param0)
{
    int v0;

    for (v0 = 0; v0 < 15 + 1; v0++) {
        param0->unk_00[v0].unk_10 = &param0->unk_2C0.unk_18[v0];
    }

    {
        const s16 v1[][4] = {
            { 32, 80, 20, 20 },
            { 80, 80, 20, 20 },
            { 128, 80, 20, 20 },
            { 176, 80, 20, 20 },
            { 224, 80, 20, 20 },
            { 32, 128, 20, 20 },
            { 80, 128, 20, 20 },
            { 128, 128, 20, 20 },
            { 176, 128, 20, 20 },
            { 224, 128, 20, 20 },
            { 64, 176, 60, 12 },
            { 192, 176, 60, 12 },
        };

        for (; v0 < 0x1c; v0++) {
            param0->unk_2C0.unk_18[v0].rect.top = v1[v0 - 16][1] - v1[v0 - 16][3];
            param0->unk_2C0.unk_18[v0].rect.left = v1[v0 - 16][0] - v1[v0 - 16][2];
            param0->unk_2C0.unk_18[v0].rect.bottom = v1[v0 - 16][1] + v1[v0 - 16][3];
            param0->unk_2C0.unk_18[v0].rect.right = v1[v0 - 16][0] + v1[v0 - 16][2];
        }
    }

    param0->unk_2C0.unk_14 = sub_02023FCC(param0->unk_2C0.unk_18, 0x1c, sub_0208A180, param0, 101);
}

void sub_0208A180(u32 param0, u32 param1, void *param2)
{
    UnkStruct_02089688 *v0 = param2;

    if (v0->unk_294 != 1) {
        return;
    }

    if (v0->unk_2C0.unk_88 != 1) {
        v0->unk_2C0.unk_88 = 1;
    }

    if (param1 == 0) {
        if ((param0 >= 0) && (param0 < 16)) {
            if (param0 < v0->unk_3C4) {
                return;
            }

            if (v0->unk_00[param0].unk_08 == 1) {
                v0->unk_380.unk_00 = 2;
                v0->unk_380.unk_04 = param0;
            } else {
                v0->unk_380.unk_00 = 1;
                v0->unk_380.unk_04 = v0->unk_00[param0].unk_04;
            }

            Sound_PlayEffect(1509);
        } else {
            if (param0 == 26) {
                v0->unk_1F0[1].unk_14.unk_00 = 0;
                v0->unk_1F0[1].unk_14.unk_02 = 2;
                Sound_PlayEffect(1509);
            } else if (param0 == 27) {
                v0->unk_1F0[1].unk_14.unk_00 = 3;
                v0->unk_1F0[1].unk_14.unk_02 = 2;
                Sound_PlayEffect(1506);
            } else {
                v0->unk_1F0[1].unk_14.unk_00 = (param0 - 16) % 5;
                v0->unk_1F0[1].unk_14.unk_02 = (param0 - 16) / 5;
                Sound_PlayEffect(1509);
            }

            if ((param0 >= 16) && (param0 <= 25)) {
                int v1;
                int v2;
                int v3;

                if (v0->unk_2A8 == 0) {
                    return;
                }

                v1 = v0->unk_1F0[0].unk_00;
                v0->unk_00[v1].unk_00 = param0 - 16 + 1;

                sub_0200D364(v0->unk_00[v1].unk_0C, sub_0208AD98(v0->unk_00[v1].unk_00, v0->unk_00[v1].unk_08));
                sub_0208AAB4(v0, 1, 1);
                sub_0208AB2C(v0, param0 - 16);
                sub_0208AAB4(v0, 1, 0);
                sub_0208AAB4(v0, 2, 1);
                sub_0208AB6C(v0, param0 - 16, 2);
                sub_0200D364(v0->unk_1F0[2].unk_0C, 3);

                v2 = v0->unk_00[v1].unk_04;
                v1++;

                if (v1 == v0->unk_2A4) {
                    v0->unk_380.unk_00 = 1;
                    v0->unk_380.unk_04 = 0;
                    v0->unk_380.unk_08 = 0;
                } else {
                    v3 = v0->unk_00[v1].unk_04;

                    if (v2 != v3) {
                        v0->unk_380.unk_00 = 1;
                        v0->unk_380.unk_04 = v3;
                        v0->unk_380.unk_08 = 0;
                    } else {
                        v0->unk_380.unk_00 = 2;
                        v0->unk_380.unk_04 = v1;
                    }
                }
            } else {
                if (param0 == 26) {
                    sub_02089FFC(v0);
                } else {
                    sub_02089F80(v0);
                }
            }
        }
    }
}

void sub_0208A328(UnkStruct_02089688 *param0)
{
    switch (param0->unk_380.unk_00) {
    case 0:
        break;
    case 1:
        sub_02089604(param0, param0->unk_380.unk_04);
        sub_0208ADA4(param0);
        sub_0208ADE4(param0, 1);
        sub_02089808(param0, 2);
        param0->unk_380.unk_00 = 0xFF;
        break;
    case 2:
        sub_0208AAE4(param0, param0->unk_380.unk_04);
        sub_0208A384(param0);
        break;
    case 0xFF:
        break;
    }
}

void sub_0208A384(UnkStruct_02089688 *param0)
{
    param0->unk_380.unk_00 = 0;
    param0->unk_380.unk_04 = 0;
    param0->unk_380.unk_08 = 0;
}

int sub_0208A398(UnkStruct_02089688 *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_2A4; v0++) {
        if (param0->unk_00[v0].unk_04 == param1) {
            return v0;
        }
    }

    return 0;
}

int sub_0208A3C0(UnkStruct_02089688 *param0, int param1)
{
    int v0;
    int v1 = 0;
    int v2 = 0;

    for (v0 = 0; v0 < param0->unk_2A4; v0++) {
        if (param0->unk_00[v0].unk_04 == param1) {
            v2 = 1;
        } else {
            if (v2 == 1) {
                return v0 - 1;
            }
        }
    }

    return param0->unk_2A4 - 1;
}
