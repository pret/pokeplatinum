#include "overlay062/ov62_0223CAEC.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02023FCC_decl.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0208C06C.h"

#include "overlay061/ov61_0222B008.h"
#include "overlay061/ov61_0222BC4C.h"
#include "overlay061/struct_ov61_0222BDAC.h"
#include "overlay061/struct_ov61_0222BDAC_1.h"
#include "overlay062/ov62_0222F2C0.h"
#include "overlay062/ov62_022300D8.h"
#include "overlay062/ov62_02231690.h"
#include "overlay062/ov62_0224112C.h"
#include "overlay062/ov62_const_funcptr_tables.h"
#include "overlay062/struct_ov62_022312B0.h"
#include "overlay062/struct_ov62_0223CAA4.h"
#include "overlay062/struct_ov62_0223D518_sub1.h"
#include "overlay062/struct_ov62_0223DF10.h"
#include "overlay062/struct_ov62_02248CDC.h"
#include "overlay062/struct_ov62_02249380.h"

#include "game_records.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "play_time.h"
#include "save_player.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "touch_screen.h"
#include "unk_02002F38.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_0200C6E4.h"
#include "unk_02012744.h"
#include "unk_02018340.h"
#include "unk_02023FCC.h"
#include "unk_02030A80.h"
#include "unk_0208B284.h"
#include "unk_0208BA78.h"

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
    Window unk_24[6];
    Window unk_84[2];
    UnkStruct_ov62_022312B0 unk_A4[2];
    UnkStruct_02023FCC * unk_DC;
    UnkStruct_ov61_0222BDAC unk_E0;
    UnkStruct_ov61_0222BDAC_1 unk_638;
    UnkStruct_ov62_0223DF10 unk_710;
    UnkStruct_ov61_0222BDAC * unk_714;
    UnkStruct_ov61_0222BDAC_1 * unk_718;
    UnkStruct_ov62_0223DF10 * unk_71C;
    UnkStruct_ov62_0223D518_sub1 unk_720;
    MessageLoader * unk_744;
    Strbuf* unk_748;
    UnkStruct_ov62_02249380 unk_74C[3][20];
    UnkStruct_ov62_02248CDC unk_B0C;
} UnkStruct_ov62_0223D518;

static void ov62_0223CAEC(UnkStruct_0208C06C * param0);
static void ov62_0223CBE0(UnkStruct_0208C06C * param0);
static void ov62_0223CF2C(UnkStruct_0208C06C * param0);
static void ov62_0223CFE0(UnkStruct_0208C06C * param0);
static void ov62_0223D004(UnkStruct_0208C06C * param0);
static void ov62_0223D100(UnkStruct_0208C06C * param0);
static void ov62_0223D160(UnkStruct_0208C06C * param0);
static void ov62_0223D3A8(UnkStruct_0208C06C * param0, int param1);
static void ov62_0223D424(UnkStruct_0208C06C * param0);
static void ov62_0223D4E4(UnkStruct_0208C06C * param0);
static void ov62_0223D518(UnkStruct_ov62_0223D518 * param0);
static void ov62_0223D540(u32 param0, u32 param1, void * param2);
int ov62_0223438C(u64 param0);
void ov62_0223DF10(void * param0, const UnkStruct_ov62_0223CAA4 * param1);
void ov62_0223DF4C(void * param0, const UnkStruct_ov62_0223CAA4 * param1);
static BOOL ov62_0223D5A4(UnkStruct_0208C06C * param0);
static BOOL ov62_0223D644(UnkStruct_0208C06C * param0);
static BOOL ov62_0223D744(UnkStruct_0208C06C * param0);
static BOOL ov62_0223DE60(UnkStruct_0208C06C * param0);
static BOOL ov62_0223DE6C(UnkStruct_0208C06C * param0);
static BOOL ov62_0223DAE8(UnkStruct_0208C06C * param0);
static BOOL ov62_0223DC20(UnkStruct_0208C06C * param0);
static BOOL ov62_0223DC6C(UnkStruct_0208C06C * param0);
static BOOL ov62_0223DD44(UnkStruct_0208C06C * param0);

BOOL(*const Unk_ov62_02248F58[])(UnkStruct_0208C06C *) = {
    ov62_0223D5A4,
    ov62_0223D644,
    ov62_0223D744,
    ov62_0223DE60,
    ov62_0223DE6C,
    ov62_0223DAE8,
    ov62_0223DC20,
    ov62_0223DC6C,
    ov62_0223DD44,
};

static const int Unk_ov62_02248EC0[][4] = {
    {0x4, 0x3, 0x18, 0x4},
    {0x4, 0x9, 0x18, 0x4}
};

static const int Unk_ov62_02248EE0[][4] = {
    {0x4, 0x3, 0x18, 0x4},
    {0x4, 0x9, 0x18, 0x4}
};

static const int Unk_ov62_02248EA0[][4] = {
    {0x7, 0x4, 0x12, 0x2},
    {0x7, 0xB, 0x12, 0x2}
};

static const UnkStruct_ov62_02248CDC Unk_ov62_02248F00 = {
    NULL,
    0xC,
    0x1,
    0x4,
    0xF,
    0x18,
    0x8,
    0x100,
    0x2,
    0x4,
    NULL
};

static const UnkStruct_ov62_02248CDC Unk_ov62_02248F2C = {
    NULL,
    0xC,
    0x2,
    0x4,
    0xF,
    0x18,
    0x8,
    0x100,
    0x2,
    0x2,
    NULL
};

// clang-format off
asm static void ov62_0223CAEC (UnkStruct_0208C06C * param0)
{
    push {r3, r4, r5, r6, lr}
    sub sp, #0xc
    add r5, r0, #0
    mov r0, #0x86
    lsl r0, r0, #4
    ldr r4, [r5, r0]
    ldr r0, [r4, #0x1c]
    cmp r0, #0
    ldr r0, = 0xB0C
    bne _0223CB1A
    ldr r3, = Unk_ov62_02248F00
    add r2, r4, r0
    mov r6, #5
 _0223CB06:
    ldmia r3 !, {r0, r1}
    stmia r2 !, {r0, r1}
    sub r6, r6, #1
    bne _0223CB06
    ldr r0, [r3, #0]
    mov r1, #0
    str r0, [r2, #0]
    ldr r0, = 0x748
    str r1, [r4, r0]
    b _0223CB46
 _0223CB1A:
    ldr r3, = Unk_ov62_02248F2C
    add r2, r4, r0
    mov r6, #5
 _0223CB20:
    ldmia r3 !, {r0, r1}
    stmia r2 !, {r0, r1}
    sub r6, r6, #1
    bne _0223CB20
    ldr r0, [r3, #0]
    ldr r1, = 0x714
    str r0, [r2, #0]
    ldr r3, [r4, r1]
    mov r1, #0x72
    ldr r2, [r4, #0xc]
    lsl r1, r1, #2
    mul r1, r2
    ldrb r1, [r3, r1]
    ldr r0, [r5, #0x4c]
    add r1, #0x5e
    bl MessageLoader_GetNewStrbuf
    ldr r1, = 0x748
    str r0, [r4, r1]
 _0223CB46:
    mov r1, #0xb1
    ldr r0, [r4, #0x20]
    lsl r1, r1, #4
    str r0, [r4, r1]
    ldr r3, [r4, #0xc]
    ldr r0, = 0x74C
    lsl r2, r3, #2
    add r2, r3, r2
    add r0, r4, r0
    lsl r2, r2, #6
    add r2, r0, r2
    sub r0, r1, #4
    str r2, [r4, r0]
    add r0, r5, #0
    mov r1, #1
    bl ov62_02234540
    ldr r0, = 0x49C
    add r0, r5, r0
    bl ov62_02233310
    ldr r0, [r4, #0xc]
    ldr r3, = 0xB0C
    str r0, [sp]
    ldr r0, [r4, #0x14]
    ldr r2, = 0x748
    str r0, [sp, #4]
    ldr r0, [r4, r2]
    sub r2, r2, #4
    str r0, [sp, #8]
    ldr r0, = 0x49C
    ldr r2, [r4, r2]
    add r0, r5, r0
    add r1, r5, #0
    add r3, r4, r3
    bl ov62_02232778
    ldr r1, = 0x47C
    add r0, r5, r1
    add r1, #0x20
    add r1, r5, r1
    bl ov62_02233638
    ldr r0, = 0x49C
    add r1, r5, #0
    add r0, r5, r0
    mov r2, #1
    bl ov62_0223331C
    ldr r0, = 0x49C
    mov r1, #0x70
    add r0, r5, r0
    mov r2, #0xb8
    bl ov62_02233434
    add r0, r5, #0
    mov r1, #0
    bl ov62_02234540
    add sp, #0xc
    pop {r3, r4, r5, r6, pc}
}
// clang-format on

static void ov62_0223CBE0 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223D518 * v0 = param0->unk_860;
    int v1;
    u64 v2;

    v0->unk_714 = &v0->unk_E0;
    v0->unk_718 = &v0->unk_638;

    switch (v0->unk_14) {
    case 0:
    {
        for (v1 = 0; v1 < 16; v1++) {
            if (v0->unk_1C == 0) {
                v0->unk_74C[v0->unk_0C][v1].unk_00 = 10000;
                v0->unk_74C[v0->unk_0C][v1].unk_04 = ov62_02232234(v0->unk_718->unk_00[v0->unk_0C].unk_04[v1], 4);
                v0->unk_74C[v0->unk_0C][v1].unk_08 = v1;
            } else {
                v0->unk_74C[v0->unk_0C][v1].unk_00 = 20000;
                v0->unk_74C[v0->unk_0C][v1].unk_04 = ov62_02232234(v0->unk_714->unk_00[v0->unk_0C].unk_04[v1], 4);
                v0->unk_74C[v0->unk_0C][v1].unk_08 = v0->unk_714->unk_00[v0->unk_0C].unk_14[v1];

                if (v0->unk_74C[v0->unk_0C][v1].unk_08 >= 9999999999999999999) {
                    v0->unk_74C[v0->unk_0C][v1].unk_08 = 9999999999999999999;
                }
            }
        }
    }
    break;
    case 1:
    {
        for (v1 = 0; v1 < 12; v1++) {
            if (v0->unk_1C == 0) {
                v0->unk_74C[v0->unk_0C][v1].unk_00 = 30000;
                v0->unk_74C[v0->unk_0C][v1].unk_04 = v0->unk_718->unk_00[v0->unk_0C].unk_14[v1];
                v0->unk_74C[v0->unk_0C][v1].unk_08 = v1;
            } else {
                v0->unk_74C[v0->unk_0C][v1].unk_00 = 40000;
                v0->unk_74C[v0->unk_0C][v1].unk_04 = v0->unk_714->unk_00[v0->unk_0C].unk_94[v1];
                v0->unk_74C[v0->unk_0C][v1].unk_08 = v0->unk_714->unk_00[v0->unk_0C].unk_A0[v1];

                if (v0->unk_74C[v0->unk_0C][v1].unk_08 >= 9999999999999999999) {
                    v0->unk_74C[v0->unk_0C][v1].unk_08 = 9999999999999999999;
                }
            }
        }
    }
    break;
    case 2:
    {
        for (v1 = 0; v1 < 20; v1++) {
            if (v0->unk_1C == 0) {
                v0->unk_74C[v0->unk_0C][v1].unk_00 = 50000;
                v0->unk_74C[v0->unk_0C][v1].unk_04 = v0->unk_718->unk_00[v0->unk_0C].unk_20[v1];
                v0->unk_74C[v0->unk_0C][v1].unk_08 = v1;
            } else {
                v0->unk_74C[v0->unk_0C][v1].unk_00 = 60000;
                v0->unk_74C[v0->unk_0C][v1].unk_04 = v0->unk_714->unk_00[v0->unk_0C].unk_100[v1];
                v0->unk_74C[v0->unk_0C][v1].unk_08 = v0->unk_714->unk_00[v0->unk_0C].unk_128[v1];

                if (v0->unk_74C[v0->unk_0C][v1].unk_08 >= 9999999999999999999) {
                    v0->unk_74C[v0->unk_0C][v1].unk_08 = 9999999999999999999;
                }
            }
        }
    }
    break;
    }
}

static void ov62_0223CF2C (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223D518 * v0 = param0->unk_860;
    Window * v1;
    int v2 = 1;
    int v3;
    int v4;
    Strbuf* v5;

    for (v3 = 0; v3 < 2; v3++) {
        v1 = &v0->unk_84[v3];
        BGL_AddWindow(param0->unk_14.unk_10, v1, 6, Unk_ov62_02248EA0[v3][0], Unk_ov62_02248EA0[v3][1], Unk_ov62_02248EA0[v3][2], Unk_ov62_02248EA0[v3][3], 14, v2);
        v2 += (Unk_ov62_02248EA0[v3][2] * Unk_ov62_02248EA0[v3][3]);
        BGL_FillWindow(v1, 0x0);

        v5 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, 80 + v3);
        v4 = ov62_0223429C(v1, v5);

        Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v5, v4, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
        sub_0201A9A4(v1);
        Strbuf_Free(v5);
    }
}

static void ov62_0223CFE0 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223D518 * v0 = param0->unk_860;
    Window * v1;
    int v2;

    for (v2 = 0; v2 < 2; v2++) {
        sub_0201ACF4(&v0->unk_84[v2]);
        BGL_DeleteWindow(&v0->unk_84[v2]);
    }
}

static void ov62_0223D004 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223D518 * v0 = param0->unk_860;
    Window * v1;
    int v2 = 1;
    int v3;
    int v4;
    Strbuf* v5;
    int v6;

    if (v0->unk_1C == 0) {
        v6 = NELEMS(Unk_ov62_02248EC0);
    } else {
        v6 = NELEMS(Unk_ov62_02248EE0);
    }

    for (v3 = 0; v3 < v6; v3++) {
        v1 = &v0->unk_24[v3];

        Window_Init(v1);

        if (v0->unk_1C == 0) {
            BGL_AddWindow(param0->unk_14.unk_10, v1, 2, Unk_ov62_02248EC0[v3][0], Unk_ov62_02248EC0[v3][1], Unk_ov62_02248EC0[v3][2], Unk_ov62_02248EC0[v3][3], 14, v2);
            v2 += (Unk_ov62_02248EC0[v3][2] * Unk_ov62_02248EC0[v3][3]);
        } else {
            BGL_AddWindow(param0->unk_14.unk_10, v1, 2, Unk_ov62_02248EE0[v3][0], Unk_ov62_02248EE0[v3][1], Unk_ov62_02248EE0[v3][2], Unk_ov62_02248EE0[v3][3], 14, v2);
            v2 += (Unk_ov62_02248EE0[v3][2] * Unk_ov62_02248EE0[v3][3]);
        }

        BGL_FillWindow(v1, 0x0);

        v5 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, 67);
        v4 = 0;

        Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v5, v4, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
        sub_0201A9A4(v1);
        Strbuf_Free(v5);
    }
}

static void ov62_0223D100 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223D518 * v0 = param0->unk_860;
    Window * v1;
    int v2 = 1;
    int v3;
    int v4;
    Strbuf* v5;
    int v6;

    if (v0->unk_1C == 0) {
        v6 = NELEMS(Unk_ov62_02248EC0);
    } else {
        v6 = NELEMS(Unk_ov62_02248EE0);
    }

    for (v3 = 0; v3 < v6; v3++) {
        sub_0201ACF4(&v0->unk_24[v3]);
        BGL_DeleteWindow(&v0->unk_24[v3]);
    }
}

static u32 Unk_ov62_022497E8[87] = {
    0x49,
    0x4C,
    0x4E,
    0x4F,
    0xFFFF,
    0xFFFF,
    0xFFFF,
    0xFFFF,
    0xFFFF,
    0xFFFF,
    0xFFFF,
    0xFFFF,
    0xFFFF,
    0xFFFF,
    0x5A,
    0x5B,
    0x5C,
    0x5D,
    0x5E,
    0x5F,
    0x60,
    0x61,
    0x62,
    0x63,
    0x64,
    0x4,
    0x0,
    0x7,
    0x8,
    0x9,
    0xA,
    0xB,
    0xC,
    0xE,
    0xF,
    0x13,
    0x15,
    0x16,
    0x17,
    0x18,
    0x1A,
    0x1B,
    0x1C,
    0x1D,
    0x23,
    0x28,
    0x29,
    0x2C,
    0x71,
    0x72,
    0x73,
    0x74,
    0x2D,
    0x75,
    0x2E,
    0x2F,
    0x30,
    0x31,
    0x32,
    0x33,
    0x34,
    0x35,
    0x36,
    0x37,
    0x38,
    0x39,
    0x3A,
    0x3B,
    0x3C,
    0x3D,
    0x3E,
    0x3F,
    0x40,
    0x41,
    0x42,
    0x43,
    0x44,
    0x45,
    0x76,
    0x77,
    0x46,
    0xFFFF,
    0xFFFF,
    0xFFFF,
    0xFFFF,
    0xFFFF,
    0xFFFF
};

static u32 ov62_0223D124 (UnkStruct_0208C06C * param0, int param1)
{
    u32 v0;
    int v1;

    v1 = param1;

    if (v1 >= 87) {
        v1 = 0;
        GF_ASSERT(0);
    }

    GF_ASSERT(Unk_ov62_022497E8[v1] != 0xFFFF);

    v0 = GameRecords_GetRecordValue(SaveData_GetGameRecordsPtr(param0->unk_830), Unk_ov62_022497E8[v1]);

    return v0;
}

// clang-format off
asm static void ov62_0223D160 (UnkStruct_0208C06C * param0)
{
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1fc
    sub sp, #0x30
    add r5, r0, #0
    mov r0, #0x86
    lsl r0, r0, #4
    ldr r4, [r5, r0]
    mov r0, #0xff
    mov r1, #0x66
    bl Strbuf_Init
    str r0, [sp, #0x14]
    mov r0, #0x66
    bl ov62_02231690
    add r6, r0, #0
    add r0, r4, #0
    add r0, #0x24
    mov r1, #0
    bl BGL_FillWindow
    ldr r0, [r4, #0x1c]
    cmp r0, #0
    ldr r0, [r5, #0x4c]
    bne _0223D1A6
    ldr r1, = 0x718
    ldr r3, [r4, #0xc]
    mov r2, #0x48
    ldr r1, [r4, r1]
    mul r2, r3
    ldrb r1, [r1, r2]
    sub r1, r1, #1
    bl MessageLoader_GetNewStrbuf
    b _0223D1BA
 _0223D1A6:
    ldr r1, = 0x714
    mov r2, #0x72
    ldr r3, [r4, #0xc]
    lsl r2, r2, #2
    ldr r1, [r4, r1]
    mul r2, r3
    ldrb r1, [r1, r2]
    sub r1, r1, #1
    bl MessageLoader_GetNewStrbuf
 _0223D1BA:
    mov r1, #0
    add r7, r0, #0
    str r1, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    ldr r0, = 0xF0D00
    add r2, r7, #0
    str r0, [sp, #8]
    add r0, r4, #0
    add r0, #0x24
    add r3, r1, #0
    str r1, [sp, #0xc]
    bl Text_AddPrinterWithParamsAndColor
    add r0, r4, #0
    add r0, #0x24
    bl sub_0201A9A4
    add r0, r7, #0
    bl Strbuf_Free
    add r0, r4, #0
    add r0, #0x34
    mov r1, #0
    bl BGL_FillWindow
    ldr r0, [r4, #0x1c]
    cmp r0, #0
    ldr r0, [r5, #0x48]
    bne _0223D200
    ldr r1, [r4, #0x14]
    add r1, #0x52
    bl MessageLoader_GetNewStrbuf
    b _0223D206
 _0223D200:
    mov r1, #0x5b
    bl MessageLoader_GetNewStrbuf
 _0223D206:
    mov r1, #0
    add r7, r0, #0
    str r1, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    ldr r0, = 0xF0D00
    add r2, r7, #0
    str r0, [sp, #8]
    add r0, r4, #0
    add r0, #0x34
    add r3, r1, #0
    str r1, [sp, #0xc]
    bl Text_AddPrinterWithParamsAndColor
    add r0, r4, #0
    add r0, #0x34
    bl sub_0201A9A4
    add r0, r7, #0
    bl Strbuf_Free
    ldr r0, = 0x88C
    mov r1, #0x66
    ldr r0, [r5, r0]
    bl sub_02030B94
    str r0, [sp, #0x18]
    ldr r1, [sp, #0x18]
    add r0, r5, #0
    bl ov62_022349A8
    ldr r0, [r4, #0x14]
    cmp r0, #0
    beq _0223D254
    cmp r0, #1
    beq _0223D292
    cmp r0, #2
    beq _0223D2BC
    b _0223D326
 _0223D254:
    ldr r0, = 0x88C
    ldr r0, [r5, r0]
    bl sub_02030CDC
    str r0, [sp, #0x20]
    ldr r0, [r5, #0x48]
    mov r1, #0x55
    bl MessageLoader_GetNewStrbuf
    add r7, r0, #0
    ldr r0, [sp, #0x20]
    mov r1, #4
    bl ov62_02232234
    add r1, r0, #0
    ldr r0, = 0x744
    ldr r0, [r4, r0]
    bl MessageLoader_GetNewStrbuf
    str r0, [sp, #0x1c]
    mov r0, #1
    str r0, [sp]
    mov r0, #2
    mov r1, #0
    str r0, [sp, #4]
    ldr r2, [sp, #0x1c]
    add r0, r6, #0
    add r3, r1, #0
    bl StringTemplate_SetStrbuf
    b _0223D326
 _0223D292:
    ldr r0, = 0x88C
    ldr r0, [r5, r0]
    bl sub_02030CCC
    str r0, [sp, #0x24]
    ldr r0, [r5, #0x48]
    mov r1, #0x56
    bl MessageLoader_GetNewStrbuf
    add r7, r0, #0
    mov r0, #0xff
    mov r1, #0x66
    bl Strbuf_Init
    str r0, [sp, #0x1c]
    ldr r2, [sp, #0x24]
    add r0, r6, #0
    mov r1, #0
    bl StringTemplate_SetMonthName
    b _0223D326
 _0223D2BC:
    ldr r0, = 0x88C
    ldr r0, [r5, r0]
    bl sub_02030BBC
    str r0, [sp, #0x10]
    ldr r0, = 0x88C
    ldr r0, [r5, r0]
    bl sub_02030BEC
    str r0, [sp, #0x28]
    ldr r0, [r5, #0x48]
    mov r1, #0x57
    bl MessageLoader_GetNewStrbuf
    add r7, r0, #0
    ldr r0, [sp, #0x28]
    cmp r0, #0
    beq _0223D2E4
    ldr r0, = 0x1EE
    str r0, [sp, #0x10]
 _0223D2E4:
    ldr r0, [sp, #0x10]
    cmp r0, #0
    beq _0223D308
    mov r0, #0xff
    mov r1, #0x66
    bl Strbuf_Init
    str r0, [sp, #0x1c]
    ldr r0, [sp, #0x10]
    mov r1, #0x66
    add r2, sp, #0x2c
    bl MessageLoader_GetSpeciesName
    ldr r0, [sp, #0x1c]
    add r1, sp, #0x2c
    bl Strbuf_CopyChars
    b _0223D312
 _0223D308:
    ldr r0, [r5, #0x48]
    mov r1, #0x15
    bl MessageLoader_GetNewStrbuf
    str r0, [sp, #0x1c]
 _0223D312:
    mov r0, #1
    str r0, [sp]
    mov r0, #2
    mov r1, #0
    str r0, [sp, #4]
    ldr r2, [sp, #0x1c]
    add r0, r6, #0
    add r3, r1, #0
    bl StringTemplate_SetStrbuf
 _0223D326:
    mov r1, #1
    str r1, [sp]
    mov r0, #2
    str r0, [sp, #4]
    ldr r2, [sp, #0x18]
    add r0, r6, #0
    mov r3, #0
    bl StringTemplate_SetStrbuf
    ldr r1, [sp, #0x14]
    add r0, r6, #0
    add r2, r7, #0
    bl StringTemplate_Format
    mov r0, #0x10
    str r0, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    ldr r0, = 0xF0D00
    mov r1, #0
    str r0, [sp, #8]
    add r0, r4, #0
    ldr r2, [sp, #0x14]
    add r0, #0x34
    add r3, r1, #0
    str r1, [sp, #0xc]
    bl Text_AddPrinterWithParamsAndColor
    add r4, #0x34
    add r0, r4, #0
    bl sub_0201A9A4
    add r0, r7, #0
    bl Strbuf_Free
    ldr r0, [sp, #0x1c]
    bl Strbuf_Free
    ldr r0, [sp, #0x14]
    bl Strbuf_Free
    ldr r0, [sp, #0x18]
    bl Strbuf_Free
    add r0, r6, #0
    bl StringTemplate_ClearArgs
    add r0, r6, #0
    bl StringTemplate_Free
    add sp, #0x1fc
    add sp, #0x30
    pop {r4, r5, r6, r7, pc}
}
// clang-format on

static void ov62_0223D3A8 (UnkStruct_0208C06C * param0, int param1)
{
    UnkStruct_ov62_0223D518 * v0 = param0->unk_860;

    if (param1 == 0) {
        SpriteActor_EnableObject(v0->unk_A4[0].unk_08, 1);
        sub_020129D0(v0->unk_A4[0].unk_0C, 1);
        SpriteActor_SetSpritePositionXY(v0->unk_A4[1].unk_08, 128, 232);
    } else {
        SpriteActor_EnableObject(v0->unk_A4[0].unk_08, 0);
        sub_020129D0(v0->unk_A4[0].unk_0C, 0);
        SpriteActor_SetSpritePositionXY(v0->unk_A4[1].unk_08, 80, 232);
    }

    sub_020128C4(v0->unk_A4[0].unk_0C, 36, -8);
    sub_020128C4(v0->unk_A4[1].unk_0C, 36, -8);
}

static void ov62_0223D424 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223D518 * v0 = param0->unk_860;

    ov62_0223131C(param0, NNS_G2D_VRAM_TYPE_2DSUB);

    v0->unk_A4[0].unk_08 = ov62_022313E0(param0, NNS_G2D_VRAM_TYPE_2DSUB);
    v0->unk_A4[1].unk_08 = ov62_022313E0(param0, NNS_G2D_VRAM_TYPE_2DSUB);

    ov62_0223118C(&v0->unk_A4[0], &param0->unk_14, NNS_G2D_VRAM_TYPE_2DSUB);
    ov62_0223118C(&v0->unk_A4[1], &param0->unk_14, NNS_G2D_VRAM_TYPE_2DSUB);
    ov62_0223124C(&v0->unk_A4[0], &param0->unk_14, 53);
    ov62_0223124C(&v0->unk_A4[1], &param0->unk_14, 3);

    SpriteActor_SetSpritePositionXY(v0->unk_A4[0].unk_08, 32, 232);
    SpriteActor_SetSpritePositionXY(v0->unk_A4[1].unk_08, 128, 232);
    sub_020128C4(v0->unk_A4[0].unk_0C, 36, -8);
    sub_020128C4(v0->unk_A4[1].unk_0C, 36, -8);
    sub_020129D0(v0->unk_A4[0].unk_0C, 0);
    sub_020129D0(v0->unk_A4[1].unk_0C, 1);

    ov62_0223D3A8(param0, 1);
}

static void ov62_0223D4E4 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223D518 * v0 = param0->unk_860;

    ov62_022312B0(&v0->unk_A4[0]);
    ov62_022312B0(&v0->unk_A4[1]);

    sub_0200D0F4(v0->unk_A4[0].unk_08);
    sub_0200D0F4(v0->unk_A4[1].unk_08);

    ov62_022313BC(param0);
}

static void ov62_0223D518 (UnkStruct_ov62_0223D518 * param0)
{
    int v0[] = {16, 12, 20};

    param0->unk_20 = v0[param0->unk_14];
}

static const TouchScreenRect Unk_ov62_02248E94[] = {
    {0x18, 0x38, 0x30, 0xD0},
    {0x50, 0x70, 0x30, 0xD0},
    {0x98, 0xB8, 0x50, 0xB0}
};

static void ov62_0223D540 (u32 param0, u32 param1, void * param2)
{
    UnkStruct_0208C06C * v0 = param2;
    UnkStruct_ov62_0223D518 * v1 = v0->unk_860;

    if (param1 != 0) {
        return;
    }

    switch (param0) {
    case 0:
        ov62_02234520(v0);
        v1->unk_0C++;
        v1->unk_0C %= v1->unk_10;
        ov62_0222FB60(v0, 4);
        break;
    case 1:
        ov62_02234520(v0);
        v1->unk_14++;
        v1->unk_14 %= v1->unk_18;
        ov62_0222FB60(v0, 4);
        break;
    default:
        ov62_02234520(v0);
        ov62_0222FB60(v0, 7);
        break;
    }
}

static BOOL ov62_0223D5A4 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223D518 * v0 = Heap_AllocFromHeap(102, sizeof(UnkStruct_ov62_0223D518));

    memset(v0, 0, sizeof(UnkStruct_ov62_0223D518));

    param0->unk_860 = v0;
    v0->unk_1C = param0->unk_86C;
    v0->unk_10 = 3;

    if (sub_0208BE68(param0) == 0) {
        v0->unk_10--;
    }

    v0->unk_18 = 3;
    ov62_0223D518(v0);
    v0->unk_744 = param0->unk_14.unk_34;

    sub_02019EBC(param0->unk_14.unk_10, 2);
    sub_02019EBC(param0->unk_14.unk_10, 3);
    sub_02019EBC(param0->unk_14.unk_10, 6);
    sub_02019EBC(param0->unk_14.unk_10, 7);

    ov62_022315C8(&v0->unk_00, &v0->unk_04, 0);
    v0->unk_DC = sub_02023FCC(Unk_ov62_02248E94, NELEMS(Unk_ov62_02248E94), ov62_0223D540, param0, 102);
    ov62_0222FB60(param0, 1);

    return 0;
}

static BOOL ov62_0223D644 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223D518 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        if (ov62_02231664(&v0->unk_08, 1)) {
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, v0->unk_08, param0->unk_14.unk_44);
        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        sub_02003A2C(param0->unk_14.unk_14, 1, 0x2, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 1:
        ov62_02234540(param0, 1);
        ov62_02231454(param0);
        ov62_0223D424(param0);
        ov62_02234540(param0, 0);

        BGL_SetPriority(0, 1);
        BGL_SetPriority(1, 3);
        BGL_SetPriority(2, 0);
        BGL_SetPriority(3, 1);

        BGL_SetPriority(4, 1);
        BGL_SetPriority(5, 3);
        BGL_SetPriority(6, 0);
        BGL_SetPriority(7, 2);

        ov62_0223376C(param0, 0);
        sub_0208B9E0(param0->unk_6F0, 0);
        param0->unk_08++;
        break;
    default:
        if (ov62_02233790(param0) == 0) {
            break;
        }

        ov62_0222FB60(param0, 2);
        break;
    }

    return 0;
}

static BOOL ov62_0223D744 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223D518 * v0 = param0->unk_860;
    UnkStruct_ov62_0223CAA4 * v1;

    if (ov62_022411B8(param0) == 0) {
        return 0;
    }

    switch (param0->unk_08) {
    case 0:
        ov62_02234358(param0, param0->unk_6F0, 128, 96);
        sub_0208B9E0(param0->unk_6F0, 1);
        sub_0208BA08(param0->unk_6F0, 24, 24);
        ov62_02231AAC(param0, 279);
        Sound_PlayEffect(1381);
        param0->unk_08++;
        break;
    case 1:
        if (ov61_0222B2B8(ov62_0224112C(param0)) == 1) {
            param0->unk_08++;
        }
        break;
    case 2:
        if (ov61_0222BB48(ov62_0224112C(param0), &v1) == 1) {
            sub_020057A4(1381, 0);
            ov62_02231B8C(param0);
            ov62_022348B8(param0, 4, v1->unk_0C, v1->unk_04);
            sub_0208B9E0(param0->unk_6F0, 0);
            param0->unk_08 = 5;
        } else {
            {
                v0->unk_71C = &v0->unk_710;
                v0->unk_720.unk_08.unk_00 = PlayTime_GetHours(SaveData_GetPlayTime(param0->unk_830));
                v0->unk_720.unk_08.unk_02 = PlayTime_GetMinutes(SaveData_GetPlayTime(param0->unk_830));
                v0->unk_720.unk_08.unk_03 = PlayTime_GetSeconds(SaveData_GetPlayTime(param0->unk_830));
                v0->unk_720.unk_0C[0].unk_00 = v0->unk_71C->unk_00[0];
                v0->unk_720.unk_0C[1].unk_00 = v0->unk_71C->unk_00[1];
                v0->unk_720.unk_0C[2].unk_00 = v0->unk_71C->unk_00[2];
                v0->unk_720.unk_0C[0].unk_04 = ov62_0223D124(param0, v0->unk_720.unk_0C[0].unk_00 - 1);
                v0->unk_720.unk_0C[1].unk_04 = ov62_0223D124(param0, v0->unk_720.unk_0C[1].unk_00 - 1);
                v0->unk_720.unk_0C[2].unk_04 = ov62_0223D124(param0, v0->unk_720.unk_0C[2].unk_00 - 1);
            }
            sub_020057A4(1381, 0);
            param0->unk_08++;
        }
        break;
    case 3:
        if (ov61_0222B2D8(ov62_0224112C(param0), param0->unk_88C[0], &v0->unk_720.unk_0C[0]) == 1) {
            param0->unk_08++;
        }
        break;
    case 4:
        ov62_02231B8C(param0);

        if (ov61_0222BB48(ov62_0224112C(param0), &v1) == 1) {
            sub_020057A4(1381, 0);
            ov62_022348B8(param0, 5, v1->unk_0C, v1->unk_04);
            sub_0208B9E0(param0->unk_6F0, 0);
            param0->unk_08 = 5;
        } else {
            BOOL v2 = 0;

            if (v0->unk_1C == 0) {
                if ((v0->unk_718->unk_00[0].unk_00 == 0) || (v0->unk_718->unk_00[1].unk_00 == 0) || (v0->unk_718->unk_00[2].unk_00 == 0)) {
                    v2 = 1;
                }
            } else {
                if ((v0->unk_714->unk_00[0].unk_00 == 0) || (v0->unk_714->unk_00[1].unk_00 == 0) || (v0->unk_714->unk_00[2].unk_00 == 0)) {
                    v2 = 1;
                }
            }

            if (v2) {
                ov62_022348B8(param0, 5, 0, 0);
                param0->unk_14.unk_4F0.unk_0C = 300;
                sub_0208B9E0(param0->unk_6F0, 0);
                param0->unk_08 = 5;
            } else {
                sub_020057A4(1381, 0);
                Sound_PlayEffect(1375);
                param0->unk_08 = 0xFF;
            }
        }
        break;
    case 5:
        ov62_02234540(param0, 1);
        ov62_0223D4E4(param0);

        sub_02024034(v0->unk_DC);

        ov62_02231688(&v0->unk_08);
        ov62_0223146C(param0);
        ov62_02234540(param0, 0);

        sub_02019EBC(param0->unk_14.unk_10, 2);
        sub_02019EBC(param0->unk_14.unk_10, 6);
        sub_02019EBC(param0->unk_14.unk_10, 3);
        sub_02019EBC(param0->unk_14.unk_10, 7);
        ov62_0223376C(param0, 1);
        param0->unk_08++;
        break;
    case 6:
        if (ov62_02233790(param0) == 0) {
            break;
        }

        if (ov62_02231664(&v0->unk_08, 0)) {
            ov62_022318E8(param0);
            ov62_02231688(&v0->unk_08);
            sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, 16, param0->unk_14.unk_44);
            ov62_0222FB44(param0, 1, 1, param0->unk_10);
            ov62_0222FB60(param0, 5);
            Heap_FreeToHeap(v0);
        } else {
            sub_02003A2C(param0->unk_14.unk_14, 1, 0x2, v0->unk_08, param0->unk_14.unk_44);
            sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        }
        break;
    default:
        ov62_0223CBE0(param0);
        sub_0208B9E0(param0->unk_6F0, 0);
        sub_0208BA08(param0->unk_6F0, 0, 0);
        ov62_0222FB60(param0, 5);
        break;
    }

    return 0;
}

static BOOL ov62_0223DAE8 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223D518 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 3, 0, 0, 0, 102);
        sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 7, 0, 0, 0, 102);
        sub_0200710C(param0->unk_14.unk_00, 33, param0->unk_14.unk_10, 3, 0, 0, 0, 102);
        sub_0200710C(param0->unk_14.unk_00, 34, param0->unk_14.unk_10, 7, 0, 0, 0, 102);

        ov62_0223D004(param0);
        ov62_0223D160(param0);
        ov62_02234540(param0, 1);
        ov62_022335BC(&param0->unk_14.unk_46C, param0, 2);
        ov62_0223CAEC(param0);
        ov62_02234540(param0, 0);
        ov62_0223CF2C(param0);

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
        param0->unk_08++;
        break;

    case 1:
        ov62_02231664(&v0->unk_08, 0);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 0)) {
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        ov62_0222FB60(param0, 6);
        break;
    }

    return 0;
}

static BOOL ov62_0223DC20 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223D518 * v0 = param0->unk_860;

    ov62_02233664(&param0->unk_14.unk_46C);
    ov62_022332AC(&param0->unk_14.unk_48C, param0->unk_14.unk_46C.unk_10);
    ov62_02232C78(&param0->unk_14.unk_48C, param0, v0->unk_0C, v0->unk_14, v0->unk_748);

    sub_0202404C(v0->unk_DC);

    return 0;
}

static BOOL ov62_0223DC6C (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223D518 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_02234540(param0, 1);
        ov62_02233600(&param0->unk_14.unk_46C);
        ov62_022332FC(&param0->unk_14.unk_48C);

        if (v0->unk_748) {
            Strbuf_Free(v0->unk_748);
        }

        ov62_022334FC(&param0->unk_14.unk_48C, param0);
        ov62_02234540(param0, 0);
        sub_0208B9E0(param0->unk_6F4, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        param0->unk_08++;
        break;
    case 1:
        ov62_02231664(&v0->unk_08, 1);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 0)) {
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        ov62_0222FB60(param0, 8);
        break;
    }

    return 0;
}

static BOOL ov62_0223DD44 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223D518 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_0223CFE0(param0);
        ov62_0223D100(param0);
        ov62_02234540(param0, 1);
        ov62_0223D4E4(param0);
        ov62_02234540(param0, 0);
        sub_02024034(v0->unk_DC);
        param0->unk_08++;
        break;
    case 1:
        ov62_02234540(param0, 1);
        ov62_02231688(&v0->unk_08);
        ov62_0223146C(param0);
        ov62_02234540(param0, 0);
        sub_02019EBC(param0->unk_14.unk_10, 2);
        sub_02019EBC(param0->unk_14.unk_10, 6);
        sub_02019EBC(param0->unk_14.unk_10, 3);
        sub_02019EBC(param0->unk_14.unk_10, 7);
        ov62_0223376C(param0, 1);
        param0->unk_08++;
        break;
    default:
        if (ov62_02233790(param0) == 0) {
            break;
        }

        if (ov62_02231664(&v0->unk_08, 0)) {
            ov62_022318E8(param0);
            ov62_02231688(&v0->unk_08);
            sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, 16, param0->unk_14.unk_44);
            ov62_0222FB44(param0, 1, 1, param0->unk_10);
            ov62_0222FB60(param0, 5);
            Heap_FreeToHeap(v0);
        } else {
            sub_02003A2C(param0->unk_14.unk_14, 1, 0x2, v0->unk_08, param0->unk_14.unk_44);
            sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        }

        break;
    }

    return 0;
}

static BOOL ov62_0223DE60 (UnkStruct_0208C06C * param0)
{
    GF_ASSERT(0);
    return 0;
}

static BOOL ov62_0223DE6C (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_0223D518 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_0223CBE0(param0);
        ov62_0223D518(v0);
        ov62_0223D100(param0);
        ov62_022332FC(&param0->unk_14.unk_48C);

        if (v0->unk_748) {
            Strbuf_Free(v0->unk_748);
        }

        ov62_022334FC(&param0->unk_14.unk_48C, param0);
        param0->unk_08++;
        break;
    case 1:
        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 1)) {
            param0->unk_08++;
        }
        break;
    case 2:
        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 1)) {
            ov62_0223D004(param0);
            ov62_0223D160(param0);
            ov62_0223CAEC(param0);
            param0->unk_08++;
        }
        break;
    default:
        ov62_0222FB60(param0, 6);
        break;
    }

    return 0;
}

void ov62_0223DF10 (void * param0, const UnkStruct_ov62_0223CAA4 * param1)
{
    UnkStruct_0208C06C * v0 = param0;
    UnkStruct_ov62_0223D518 * v1 = v0->unk_860;

    if (param1->unk_00 == 1) {
        v1->unk_71C = &v1->unk_710;
    } else {
        UnkStruct_ov62_0223DF10 * v2;
        int v3;

        ov61_0222BD78(ov62_0224112C(v0), &v1->unk_71C);
        MI_CpuCopy8(v1->unk_71C, &v1->unk_710, sizeof(UnkStruct_ov62_0223DF10));
    }
}

void ov62_0223DF4C (void * param0, const UnkStruct_ov62_0223CAA4 * param1)
{
    UnkStruct_0208C06C * v0 = param0;
    UnkStruct_ov62_0223D518 * v1 = v0->unk_860;

    if (param1->unk_00 == 1) {
        v1->unk_714 = &v1->unk_E0;
        v1->unk_718 = &v1->unk_638;
    } else {
        ov61_0222BDAC(ov62_0224112C(v0), &v1->unk_714, &v1->unk_718);
        MI_CpuCopy8(v1->unk_714, &v1->unk_E0, sizeof(UnkStruct_ov61_0222BDAC));
        MI_CpuCopy8(v1->unk_718, &v1->unk_638, sizeof(UnkStruct_ov61_0222BDAC_1));

        {
            int v2;

            for (v2 = 0; v2 < 3; v2++) {
                (void)0;
            }
        }
    }
}
