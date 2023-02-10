#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"

#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_02023790_decl.h"
#include "struct_decls/struct_02073C74_decl.h"
#include "overlay063/struct_ov63_0222BEC0_decl.h"
#include "overlay104/struct_ov104_0222E930_decl.h"
#include "overlay104/struct_ov104_022320B4_decl.h"

#include "struct_defs/struct_02008A90.h"
#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_02013A04_t.h"
#include "struct_defs/struct_02014A84.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02081CF4.h"
#include "overlay063/struct_ov63_0222CCB8.h"
#include "overlay084/struct_ov84_02240FA8.h"
#include "overlay104/struct_ov104_0222E930_t.h"
#include "overlay104/struct_ov104_0222FEDC.h"
#include "overlay104/struct_ov104_02230BE4.h"
#include "overlay104/struct_ov104_022320B4_t.h"
#include "overlay104/struct_ov104_02232B78.h"
#include "overlay104/struct_ov104_0223319C.h"
#include "overlay104/struct_ov104_022331E8.h"
#include "overlay104/struct_ov104_0223C4CC.h"
#include "overlay104/struct_ov104_0223F9E0.h"

#include "unk_0200112C.h"
#include "unk_02001AF4.h"
#include "unk_02002328.h"
#include "unk_02002B7C.h"
#include "unk_02002F38.h"
#include "unk_02005474.h"
#include "narc.h"
#include "unk_0200AC5C.h"
#include "unk_0200B358.h"
#include "unk_0200C6E4.h"
#include "unk_0200D9E8.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_020131EC.h"
#include "unk_02014A84.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "unk_0201F834.h"
#include "unk_020218BC.h"
#include "unk_02023790.h"
#include "unk_02025E08.h"
#include "unk_020279FC.h"
#include "unk_02073C2C.h"
#include "unk_02079D40.h"
#include "unk_0207E0B8.h"
#include "unk_0209B6F8.h"
#include "overlay063/ov63_0222BE18.h"
#include "overlay063/ov63_0222CCE4.h"
#include "overlay063/ov63_0222D77C.h"
#include "overlay104/ov104_0222E63C.h"
#include "overlay104/ov104_0222E930.h"
#include "overlay104/ov104_02231F74.h"

typedef struct UnkStruct_ov104_02232B5C_t {
    UnkStruct_ov104_022320B4 * unk_00;
    UnkStruct_0201CD38 * unk_04;
    UnkStruct_0205AA50 unk_08;
    UnkStruct_0205AA50 * unk_18;
    UnkStruct_02023790 * unk_1C[28];
    UnkStruct_0200B144 * unk_8C;
    UnkStruct_0200B358 * unk_90;
    u8 unk_94;
    u8 unk_95;
    u8 unk_96;
    u8 unk_97_0 : 1;
    u8 unk_97_1 : 1;
    u8 unk_97_2 : 6;
    u8 unk_98;
    u8 unk_99;
    u8 unk_9A;
    u8 unk_9B;
    u16 * unk_9C;
    u16 * unk_A0;
    UnkStruct_02081CF4 unk_A4;
    UnkStruct_02001AF4 * unk_B0;
    UnkStruct_02013A04 unk_B4[28];
    UnkStruct_ov84_02240FA8 unk_194;
    UnkStruct_0200112C * unk_1B4;
    u16 unk_1B8;
    u16 unk_1BA;
    UnkStruct_02013A04 unk_1BC[28];
    u16 unk_29C[28];
    u16 unk_2D4;
} UnkStruct_ov104_02232B5C;

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_ov104_022419A0;

static void ov104_02231FC4(UnkStruct_ov104_022320B4 * param0);
static void ov104_02232034(UnkStruct_ov104_022320B4 * param0, const UnkStruct_0200B144 * param1, u32 param2);
static void ov104_02232050(UnkStruct_ov104_022320B4 * param0, int param1, int param2, int param3, int param4);
static void ov104_0223214C(UnkStruct_ov104_022320B4 * param0, UnkStruct_ov104_02232B5C * param1, u8 param2, u8 param3, u8 param4, u8 param5, u16 * param6, UnkStruct_0200B358 * param7, UnkStruct_0200B144 * param8);
UnkStruct_ov104_02232B5C * ov104_02232258(UnkStruct_ov104_022320B4 * param0, u8 param1, u8 param2, u8 param3, u8 param4, u16 * param5, UnkStruct_0200B358 * param6, UnkStruct_0200B144 * param7);
void ov104_022322A8(UnkStruct_ov104_02232B5C * param0, u32 param1, u32 param2, u32 param3);
void ov104_022322B0(UnkStruct_ov104_02232B5C * param0);
static void ov104_02232390(UnkStruct_ov104_02232B5C * param0, u32 param1, u32 param2, u32 param3);
static u32 ov104_02232414(UnkStruct_ov104_02232B5C * param0);
static void ov104_02232454(UnkStruct_ov104_02232B5C * param0);
static void ov104_022324C8(UnkStruct_0201CD38 * param0, void * param1);
static void ov104_02232570(UnkStruct_ov104_02232B5C * param0);
static void ov104_022325D8(UnkStruct_ov104_02232B5C * param0);
static void ov104_02232AC4(UnkStruct_ov104_02232B5C * param0, u16 param1, u32 param2);
void ov104_022320B4(UnkStruct_ov104_022320B4 * param0, u8 param1, u16 param2, u16 param3, u16 param4, s16 param5, u8 param6);
static void ov104_022320FC(UnkStruct_02023790 * param0, u16 param1, u16 param2, u16 param3, u16 param4);
static BOOL ov104_02233184(UnkStruct_ov104_0222E930 * param0);
UnkStruct_ov104_02232B5C * ov104_022325FC(UnkStruct_ov104_022320B4 * param0, u8 param1, u8 param2, u8 param3, u8 param4, u16 * param5, UnkStruct_0200B358 * param6, UnkStruct_0200B144 * param7);
void ov104_0223261C(UnkStruct_ov104_02232B5C * param0, u32 param1, u32 param2, u32 param3);
void ov104_02232624(UnkStruct_ov104_02232B5C * param0);
static void ov104_02232750(UnkStruct_ov104_02232B5C * param0, u32 param1, u32 param2, u32 param3);
static u32 ov104_022327F0(UnkStruct_ov104_02232B5C * param0);
static void ov104_02232830(UnkStruct_ov104_02232B5C * param0);
static void ov104_0223293C(UnkStruct_0200112C * param0, u32 param1, u8 param2);
static void ov104_02232960(UnkStruct_0200112C * param0, u32 param1, u8 param2);
static void ov104_0223296C(UnkStruct_0201CD38 * param0, void * param1);
static void ov104_02232A58(UnkStruct_ov104_02232B5C * param0, u8 param1);
static void ov104_02232B2C(UnkStruct_ov104_02232B5C * param0);
void ov104_02232B5C(UnkStruct_ov104_02232B5C * param0);
void ov104_022330FC(UnkStruct_ov104_0222E930 * param0, u16 * param1);
void ov104_0223310C(UnkStruct_ov104_0222E930 * param0, u16 * param1, u32 param2);
extern void ov104_0223327C(void);
extern void ov104_02233298(void);

void ov104_02231F74 (UnkStruct_ov104_022320B4 * param0, const UnkStruct_0200B144 * param1, u16 param2, u8 param3, UnkStruct_ov104_0222FEDC * param4)
{
    u8 v0;
    u8 v1;
    u8 v2;

    ov104_02231FC4(param0);
    ov104_02232034(param0, param1, param2);

    if (param4 == NULL) {
        UnkStruct_ov104_0223C4CC * v3 = ov104_0222E924(param0);
        UnkStruct_ov104_02230BE4 * v4;

        v4 = sub_0209B970(v3->unk_08);

        v0 = sub_02027AC0(v4->unk_04);
        v1 = 0;
        v2 = 1;
    } else {
        v0 = param4->unk_00;
        v1 = param4->unk_01;
        v2 = param4->unk_02;
    }

    ov104_02232050(param0, v2, v0, param3, v1);
}

static void ov104_02231FC4 (UnkStruct_ov104_022320B4 * param0)
{
    UnkStruct_ov104_0223C4CC * v0 = ov104_0222E924(param0);

    if (param0->unk_5A == 0) {
        sub_0201A7E8(
            v0->unk_00, &param0->unk_64, 1, 2, 19, 27, 4, 13, (((1024 - (18 + 12)) - 9) - (27 * 4)));
        sub_0201ADA4(&param0->unk_64, 15);
        sub_0200E060(&param0->unk_64, 0, (1024 - (18 + 12)), 11);

        param0->unk_5A = 1;
    } else {
        sub_0201ADA4(&param0->unk_64, 15);
    }
}

static void ov104_02232034 (UnkStruct_ov104_022320B4 * param0, const UnkStruct_0200B144 * param1, u32 param2)
{
    sub_0200B1B8(param1, param2, param0->unk_4C);
    sub_0200C388(param0->unk_44, param0->unk_48, param0->unk_4C);
}

static void ov104_02232050 (UnkStruct_ov104_022320B4 * param0, int param1, int param2, int param3, int param4)
{
    sub_02002AC8(param3);
    sub_02002AE4(param4);
    sub_02002B20(0);
    param0->unk_50 = sub_0201D738(&param0->unk_64, param1, param0->unk_48, 0, 0, param2, NULL);
}

void ov104_02232088 (UnkStruct_ov104_022320B4 * param0)
{
    GF_ASSERT(param0->unk_5A == 1);

    sub_0200E084(&param0->unk_64, 0);
    sub_0201A8FC(&param0->unk_64);

    param0->unk_5A = 0;
}

void ov104_022320B4 (UnkStruct_ov104_022320B4 * param0, u8 param1, u16 param2, u16 param3, u16 param4, s16 param5, u8 param6)
{
    UnkStruct_02014A84 v0;

    ov104_02231FC4(param0);

    ov104_022320FC(param0->unk_48, param2, param3, param4, param5);

    if (param6 != 0xFF) {
        ov104_02232050(param0, 1, param1, param6, 0);
    } else {
        ov104_02232050(param0, 1, 0, param6, 0);
    }
}

static void ov104_022320FC (UnkStruct_02023790 * param0, u16 param1, u16 param2, u16 param3, u16 param4)
{
    UnkStruct_02014A84 v0;
    UnkStruct_02023790 * v1;

    sub_02014A84(&v0);
    sub_02014CE0(&v0, param1, param2);
    sub_02014CF8(&v0, 0, param3);
    sub_02014CF8(&v0, 1, param4);

    v1 = sub_02014B34(&v0, 32);
    sub_02023810(param0, v1);
    sub_020237BC(v1);
}

static void ov104_0223214C (UnkStruct_ov104_022320B4 * param0, UnkStruct_ov104_02232B5C * param1, u8 param2, u8 param3, u8 param4, u8 param5, u16 * param6, UnkStruct_0200B358 * param7, UnkStruct_0200B144 * param8)
{
    int v0;

    if (param8 == NULL) {
        param1->unk_8C = sub_0200B144(1, 26, 361, param0->unk_34);
        param1->unk_97_1 = 1;
    } else {
        param1->unk_8C = param8;
        param1->unk_97_1 = 0;
    }

    param1->unk_90 = param7;

    param1->unk_00 = param0;
    param1->unk_A0 = param6;

    *param1->unk_A0 = 0;

    param1->unk_97_0 = param5;
    param1->unk_96 = param4;
    param1->unk_98 = param2;
    param1->unk_99 = param3;
    param1->unk_9B = 0;
    param1->unk_18 = &param0->unk_64;
    param1->unk_94 = 3;
    param1->unk_2D4 = param4;

    for (v0 = 0; v0 < 28; v0++) {
        param1->unk_B4[v0].unk_00 = NULL;
        param1->unk_B4[v0].unk_04 = 0;
    }

    for (v0 = 0; v0 < 28; v0++) {
        param1->unk_1BC[v0].unk_00 = NULL;
        param1->unk_1BC[v0].unk_04 = 0;
        param1->unk_29C[v0] = 0xff;
    }

    for (v0 = 0; v0 < 28; v0++) {
        param1->unk_1C[v0] = sub_02023790((40 * 2), param0->unk_34);
    }

    *param1->unk_A0 = 0xeeee;

    return;
}

UnkStruct_ov104_02232B5C * ov104_02232258 (UnkStruct_ov104_022320B4 * param0, u8 param1, u8 param2, u8 param3, u8 param4, u16 * param5, UnkStruct_0200B358 * param6, UnkStruct_0200B144 * param7)
{
    UnkStruct_ov104_02232B5C * v0;
    int v1;

    v0 = Heap_AllocFromHeap(param0->unk_34, sizeof(UnkStruct_ov104_02232B5C));

    if (v0 == NULL) {
        return NULL;
    }

    memset(v0, 0, sizeof(UnkStruct_ov104_02232B5C));

    ov104_0223214C(param0, v0, param1, param2, param3, param4, param5, param6, param7);

    return v0;
}

void ov104_022322A8 (UnkStruct_ov104_02232B5C * param0, u32 param1, u32 param2, u32 param3)
{
    ov104_02232390(param0, param1, param2, param3);
    return;
}

asm void ov104_022322B0 (UnkStruct_ov104_02232B5C * param0)
{
    push {r4, r5, lr}
    sub sp, #0x14
    add r5, r0, #0
    ldr r0, [r5, #0]
    bl ov104_0222E924
    add r4, r0, #0
    add r0, r5, #0
    bl ov104_02232414
    mov r1, #7
    tst r1, r0
    bne _022322CE
    lsr r0, r0, #3
    b _022322D2
 _022322CE:
    lsr r0, r0, #3
    add r0, r0, #1
 _022322D2:
    add r1, r5, #0
    add r1, #0x97
    ldrb r1, [r1]
    lsl r1, r1, #0x19
    lsr r1, r1, #0x1f
    beq _022322EC
    add r1, r5, #0
    add r1, #0x98
    ldrb r1, [r1]
    sub r2, r1, r0
    add r1, r5, #0
    add r1, #0x98
    strb r2, [r1]
 _022322EC:
    add r1, r5, #0
    add r1, #0x97
    ldrb r1, [r1]
    lsl r1, r1, #0x18
    lsr r1, r1, #0x1f
    beq _0223230E
    add r1, r5, #0
    add r1, #0x99
    ldrb r2, [r1]
    add r1, r5, #0
    add r1, #0x9b
    ldrb r1, [r1]
    lsl r1, r1, #1
    sub r2, r2, r1
    add r1, r5, #0
    add r1, #0x99
    strb r2, [r1]
 _0223230E:
    add r1, r5, #0
    add r1, #0x99
    ldrb r1, [r1]
    lsl r0, r0, #0x18
    add r3, r5, #0
    str r1, [sp]
    lsr r0, r0, #0x18
    str r0, [sp, #4]
    add r0, r5, #0
    add r0, #0x9b
    ldrb r0, [r0]
    add r1, r5, #0
    mov r2, #1
    lsl r0, r0, #0x19
    lsr r0, r0, #0x18
    str r0, [sp, #8]
    mov r0, #0xe
    str r0, [sp, #0xc]
    str r2, [sp, #0x10]
    add r3, #0x98
    ldrb r3, [r3]
    ldr r0, [r4, #0]
    add r1, #8
    bl sub_0201A7E8
    add r0, r5, #0
    ldr r2, = 0x3D9
    add r0, #8
    mov r1, #1
    mov r3, #0xc
    bl sub_0200DC48
    add r0, r5, #0
    bl ov104_02232454
    ldr r2, [r5, #0]
    add r1, r5, #0
    add r1, #0x96
    ldr r2, [r2, #0x34]
    add r0, r5, #0
    lsl r2, r2, #0x18
    ldrb r1, [r1]
    add r0, #0xa4
    lsr r2, r2, #0x18
    bl sub_02001B9C
    add r1, r5, #0
    add r1, #0xb0
    str r0, [r1, #0]
    add r0, r5, #0
    bl ov104_022325D8
    ldr r0, = ov104_022324C8
    add r1, r5, #0
    mov r2, #0
    bl sub_0200D9E8
    str r0, [r5, #4]
    add sp, #0x14
    pop {r4, r5, pc}
    nop
}

static void ov104_02232390 (UnkStruct_ov104_02232B5C * param0, u32 param1, u32 param2, u32 param3)
{
    int v0;
    void * v1;

    {
        UnkStruct_02023790 * v2 = sub_02023790((40 * 2), param0->unk_00->unk_34);

        sub_0200B1B8(param0->unk_8C, param1, v2);
        sub_0200C388(param0->unk_90, param0->unk_1C[param0->unk_9B], v2);
        param0->unk_B4[param0->unk_9B].unk_00 = (const void *)param0->unk_1C[param0->unk_9B];
        sub_020237BC(v2);
    }

    param0->unk_29C[param0->unk_9B] = param2;
    param0->unk_B4[param0->unk_9B].unk_04 = param3;
    param0->unk_9B++;

    return;
}

static u32 ov104_02232414 (UnkStruct_ov104_02232B5C * param0)
{
    int v0;
    u32 v1, v2;

    v1 = 0;
    v2 = 0;

    for (v0 = 0; v0 < param0->unk_9B; v0++) {
        if (param0->unk_B4[v0].unk_00 == NULL) {
            break;
        }

        v1 = sub_02002D7C(0, (UnkStruct_02023790 *)param0->unk_B4[v0].unk_00, 0);

        if (v2 < v1) {
            v2 = v1;
        }
    }

    return v2 + 12;
}

static void ov104_02232454 (UnkStruct_ov104_02232B5C * param0)
{
    param0->unk_A4.unk_00 = param0->unk_B4;
    param0->unk_A4.unk_04 = &param0->unk_08;
    param0->unk_A4.unk_08 = 0;
    param0->unk_A4.unk_09 = 1;
    param0->unk_A4.unk_0A = param0->unk_9B;
    param0->unk_A4.unk_0B_0 = 0;
    param0->unk_A4.unk_0B_4 = 0;

    if (param0->unk_9B >= 4) {
        param0->unk_A4.unk_0B_6 = 1;
    } else {
        param0->unk_A4.unk_0B_6 = 0;
    }

    return;
}

static void ov104_022324C8 (UnkStruct_0201CD38 * param0, void * param1)
{
    u32 v0;
    UnkStruct_ov104_02232B5C * v1 = param1;

    if (v1->unk_94 != 0) {
        v1->unk_94--;
        return;
    }

    if (sub_0200F2AC() == 0) {
        return;
    }

    v0 = sub_02001BE0(v1->unk_B0);

    if ((Unk_021BF67C.unk_4C & PAD_KEY_UP) || (Unk_021BF67C.unk_4C & PAD_KEY_DOWN) || (Unk_021BF67C.unk_4C & PAD_KEY_LEFT) || (Unk_021BF67C.unk_4C & PAD_KEY_RIGHT)) {
        ov104_022325D8(v1);
    }

    if (*v1->unk_A0 == 0xeedd) {
        ov104_02232570(param1);
    } else {
        switch (v0) {
        case 0xffffffff:
            break;
        case 0xfffffffe:
            if (v1->unk_97_0 == 1) {
                *v1->unk_A0 = 0xfffe;
                ov104_02232570(param1);
            }
            break;
        default:
            *v1->unk_A0 = v0;
            ov104_02232570(param1);
            break;
        }
    }

    return;
}

static void ov104_02232570 (UnkStruct_ov104_02232B5C * param0)
{
    int v0;

    sub_02005748(1500);

    sub_02001BC4(param0->unk_B0, NULL);
    sub_0200DC9C(param0->unk_A4.unk_04, 0);
    sub_0201A8FC(param0->unk_A4.unk_04);

    for (v0 = 0; v0 < 28; v0++) {
        sub_020237BC(param0->unk_1C[v0]);
    }

    if (param0->unk_97_1 == 1) {
        sub_0200B190(param0->unk_8C);
    }

    sub_0200DA58(param0->unk_04);
    Heap_FreeToHeap(param0);
    return;
}

static void ov104_022325D8 (UnkStruct_ov104_02232B5C * param0)
{
    u8 v0;

    v0 = sub_02001DC4(param0->unk_B0);

    if (param0->unk_29C[v0] != 0xff) {
        ov104_02232AC4(param0, param0->unk_29C[v0], 0);
    }

    return;
}

UnkStruct_ov104_02232B5C * ov104_022325FC (UnkStruct_ov104_022320B4 * param0, u8 param1, u8 param2, u8 param3, u8 param4, u16 * param5, UnkStruct_0200B358 * param6, UnkStruct_0200B144 * param7)
{
    return ov104_02232258(param0, param1, param2, param3, param4, param5, param6, param7);
}

void ov104_0223261C (UnkStruct_ov104_02232B5C * param0, u32 param1, u32 param2, u32 param3)
{
    ov104_02232750(param0, param1, param2, param3);
    return;
}

asm void ov104_02232624 (UnkStruct_ov104_02232B5C * param0)
{
    push {r4, r5, lr}
    sub sp, #0x14
    add r5, r0, #0
    ldr r0, [r5, #0]
    bl ov104_0222E924
    add r4, r0, #0
    add r0, r5, #0
    bl ov104_022327F0
    mov r1, #7
    tst r1, r0
    bne _02232642
    lsr r1, r0, #3
    b _02232646
 _02232642:
    lsr r0, r0, #3
    add r1, r0, #1
 _02232646:
    add r0, r5, #0
    add r0, #0x97
    ldrb r0, [r0]
    lsl r0, r0, #0x19
    lsr r0, r0, #0x1f
    beq _02232660
    add r0, r5, #0
    add r0, #0x98
    ldrb r0, [r0]
    sub r2, r0, r1
    add r0, r5, #0
    add r0, #0x98
    strb r2, [r0]
 _02232660:
    add r0, r5, #0
    add r0, #0x9b
    ldrb r0, [r0]
    cmp r0, #8
    bls _022326B0
    add r0, r5, #0
    add r0, #0x97
    ldrb r0, [r0]
    lsl r0, r0, #0x18
    lsr r0, r0, #0x1f
    beq _02232684
    add r0, r5, #0
    add r0, #0x99
    ldrb r2, [r0]
    add r0, r5, #0
    add r0, #0x99
    sub r2, #0x10
    strb r2, [r0]
 _02232684:
    add r0, r5, #0
    add r0, #0x99
    ldrb r0, [r0]
    add r3, r5, #0
    mov r2, #1
    str r0, [sp]
    lsl r0, r1, #0x18
    lsr r0, r0, #0x18
    str r0, [sp, #4]
    mov r0, #0x10
    str r0, [sp, #8]
    mov r0, #0xe
    str r0, [sp, #0xc]
    str r2, [sp, #0x10]
    add r3, #0x98
    add r1, r5, #0
    ldrb r3, [r3]
    ldr r0, [r4, #0]
    add r1, #8
    bl sub_0201A7E8
    b _022326FE
 _022326B0:
    add r2, r5, #0
    add r2, #0x97
    ldrb r2, [r2]
    lsl r2, r2, #0x18
    lsr r2, r2, #0x1f
    beq _022326CC
    add r2, r5, #0
    add r2, #0x99
    ldrb r2, [r2]
    lsl r0, r0, #1
    sub r2, r2, r0
    add r0, r5, #0
    add r0, #0x99
    strb r2, [r0]
 _022326CC:
    add r0, r5, #0
    add r0, #0x99
    ldrb r0, [r0]
    add r3, r5, #0
    mov r2, #1
    str r0, [sp]
    lsl r0, r1, #0x18
    lsr r0, r0, #0x18
    str r0, [sp, #4]
    add r0, r5, #0
    add r0, #0x9b
    ldrb r0, [r0]
    add r1, r5, #0
    add r3, #0x98
    lsl r0, r0, #0x19
    lsr r0, r0, #0x18
    str r0, [sp, #8]
    mov r0, #0xe
    str r0, [sp, #0xc]
    str r2, [sp, #0x10]
    ldrb r3, [r3]
    ldr r0, [r4, #0]
    add r1, #8
    bl sub_0201A7E8
 _022326FE:
    add r0, r5, #0
    ldr r2, = 0x3D9
    add r0, #8
    mov r1, #1
    mov r3, #0xc
    bl sub_0200DC48
    add r0, r5, #0
    bl ov104_02232830
    ldr r3, [r5, #0]
    add r2, r5, #0
    add r2, #0x96
    ldr r3, [r3, #0x34]
    mov r0, #0x65
    lsl r0, r0, #2
    lsl r3, r3, #0x18
    ldrb r2, [r2]
    add r0, r5, r0
    mov r1, #0
    lsr r3, r3, #0x18
    bl sub_0200112C
    mov r1, #0x6d
    lsl r1, r1, #2
    str r0, [r5, r1]
    add r0, r5, #0
    bl ov104_02232B2C
    ldr r0, = ov104_0223296C
    add r1, r5, #0
    mov r2, #0
    bl sub_0200D9E8
    str r0, [r5, #4]
    add sp, #0x14
    pop {r4, r5, pc}
}

static void ov104_02232750 (UnkStruct_ov104_02232B5C * param0, u32 param1, u32 param2, u32 param3)
{
    int v0;
    void * v1;

    {
        UnkStruct_02023790 * v2 = sub_02023790((40 * 2), param0->unk_00->unk_34);

        sub_0200B1B8(param0->unk_8C, param1, v2);
        sub_0200C388(param0->unk_90, param0->unk_1C[param0->unk_9B], v2);
        param0->unk_1BC[param0->unk_9B].unk_00 = (const void *)param0->unk_1C[param0->unk_9B];

        sub_020237BC(v2);
    }

    if (param3 == 0xfa) {
        param0->unk_1BC[param0->unk_9B].unk_04 = 0xfffffffd;
    } else {
        param0->unk_1BC[param0->unk_9B].unk_04 = param3;
    }

    param0->unk_29C[param0->unk_9B] = param2;
    param0->unk_9B++;

    return;
}

static u32 ov104_022327F0 (UnkStruct_ov104_02232B5C * param0)
{
    int v0;
    u32 v1, v2;

    v1 = 0;
    v2 = 0;

    for (v0 = 0; v0 < param0->unk_9B; v0++) {
        if (param0->unk_1BC[v0].unk_00 == NULL) {
            break;
        }

        v1 = sub_02002D7C(0, (UnkStruct_02023790 *)param0->unk_1BC[v0].unk_00, 0);

        if (v2 < v1) {
            v2 = v1;
        }
    }

    return v2 + 12;
}

static void ov104_02232830 (UnkStruct_ov104_02232B5C * param0)
{
    param0->unk_194.unk_00 = param0->unk_1BC;
    param0->unk_194.unk_04 = ov104_02232960;
    param0->unk_194.unk_08 = ov104_0223293C;
    param0->unk_194.unk_0C = &param0->unk_08;

    param0->unk_194.unk_10 = param0->unk_9B;
    param0->unk_194.unk_12 = 8;

    param0->unk_194.unk_14 = 1;
    param0->unk_194.unk_15 = 12;
    param0->unk_194.unk_16 = 2;
    param0->unk_194.unk_17_0 = 1;

    param0->unk_194.unk_17_4 = 1;
    param0->unk_194.unk_18_0 = 15;
    param0->unk_194.unk_18_4 = 2;

    param0->unk_194.unk_1A_0 = 0;
    param0->unk_194.unk_1A_3 = 16;

    param0->unk_194.unk_1A_7 = 0;

    param0->unk_194.unk_1A_9 = 0;
    param0->unk_194.unk_1A_15 = 0;

    param0->unk_194.unk_1C = (void *)param0;
    return;
}

static void ov104_0223293C (UnkStruct_0200112C * param0, u32 param1, u8 param2)
{
    if (param1 == 0xfffffffd) {
        sub_0200147C(param0, 3, 15, 4);
    } else {
        sub_0200147C(param0, 1, 15, 2);
    }
}

static void ov104_02232960 (UnkStruct_0200112C * param0, u32 param1, u8 param2)
{
    u32 v0, v1;
    u16 v2 = 0;
    u16 v3 = 0;
    UnkStruct_ov104_02232B5C * v4 = (UnkStruct_ov104_02232B5C *)sub_02001504(param0, 19);

    return;
}

static void ov104_0223296C (UnkStruct_0201CD38 * param0, void * param1)
{
    u16 v0;
    u32 v1;
    UnkStruct_ov104_02232B5C * v2;

    v2 = (UnkStruct_ov104_02232B5C *)param1;

    if (v2->unk_94 != 0) {
        v2->unk_94--;
        return;
    }

    if (sub_0200F2AC() == 0) {
        return;
    }

    v1 = sub_02001288(v2->unk_1B4);

    v0 = v2->unk_2D4;
    sub_020014D0(v2->unk_1B4, &v2->unk_2D4);

    if (v0 != v2->unk_2D4) {
        sub_02005748(1500);
    }

    if ((Unk_021BF67C.unk_4C & PAD_KEY_UP) || (Unk_021BF67C.unk_4C & PAD_KEY_DOWN) || (Unk_021BF67C.unk_4C & PAD_KEY_LEFT) || (Unk_021BF67C.unk_4C & PAD_KEY_RIGHT)) {
        ov104_02232B2C(v2);
    }

    if (*v2->unk_A0 == 0xeedd) {
        ov104_02232A58(param1, 0);
    } else {
        switch (v1) {
        case 0xffffffff:
            break;
        case 0xfffffffe:
            if (v2->unk_97_0 == 1) {
                sub_02005748(1500);
                *v2->unk_A0 = 0xfffe;

                ov104_02232A58(param1, 1);
            }

            break;
        default:
            sub_02005748(1500);
            *v2->unk_A0 = v1;

            ov104_02232A58(param1, 1);
            break;
        }
    }

    return;
}

static void ov104_02232A58 (UnkStruct_ov104_02232B5C * param0, u8 param1)
{
    int v0;

    if (param1 == 1) {
        sub_02005748(1500);
    }

    sub_02001384(param0->unk_1B4, NULL, NULL);
    sub_0200DC9C(param0->unk_194.unk_0C, 0);
    sub_0201A8FC(&param0->unk_08);

    for (v0 = 0; v0 < 28; v0++) {
        sub_020237BC(param0->unk_1C[v0]);
    }

    if (param0->unk_97_1 == 1) {
        sub_0200B190(param0->unk_8C);
    }

    sub_0200DA58(param0->unk_04);
    Heap_FreeToHeap(param0);
    return;
}

static void ov104_02232AC4 (UnkStruct_ov104_02232B5C * param0, u16 param1, u32 param2)
{
    UnkStruct_02023790 * v0 = sub_02023790((40 * 2), param0->unk_00->unk_34);
    UnkStruct_02023790 * v1 = sub_02023790((40 * 2), param0->unk_00->unk_34);

    sub_0201ADA4(param0->unk_18, 15);

    sub_0200B1B8(param0->unk_8C, param1, v0);

    sub_0200C388(param0->unk_90, v1, v0);

    sub_0201D738(param0->unk_18, 1, v1, 0, 0, param2, NULL);

    sub_020237BC(v0);
    sub_020237BC(v1);
    return;
}

static void ov104_02232B2C (UnkStruct_ov104_02232B5C * param0)
{
    sub_020014D0(param0->unk_1B4, &param0->unk_1BA);

    if (param0->unk_29C[param0->unk_1BA] != 0xff) {
        ov104_02232AC4(param0, param0->unk_29C[param0->unk_1BA], 0);
    }

    return;
}

void ov104_02232B5C (UnkStruct_ov104_02232B5C * param0)
{
    UnkStruct_ov104_02232B5C * v0;

    if (param0 == NULL) {
        return;
    }

    v0 = (UnkStruct_ov104_02232B5C *)param0;

    *v0->unk_A0 = 0xfffe;

    ov104_02232A58(param0, 0);
    return;
}

__attribute__((aligned(4))) static const u8 Unk_ov104_0223F9A4[] = {
    0x1,
    0x2,
    0x4,
    0x8,
    0xF,
    0x10,
    0x20
};

static UnkStruct_ov104_022419A0 Unk_ov104_022419A0[] = {
    {0x0, 0x0},
    {0x0, 0x1},
    {0x0, 0x2},
    {0x0, 0x3},
    {0x2, 0x0},
    {0x2, 0x1},
    {0x2, 0x2},
    {0x2, 0x3},
    {0x6, 0x0},
    {0x6, 0x1},
    {0x6, 0x2},
    {0x6, 0x3},
    {0x7, 0x0},
    {0x7, 0x1},
    {0x7, 0x2},
    {0x7, 0x3},
    {0xA, 0x0},
    {0xA, 0x1},
    {0xA, 0x2},
    {0xA, 0x3},
    {0xB, 0x0},
    {0xB, 0x1},
    {0xB, 0x2},
    {0xB, 0x3},
    {0x8, 0x0},
    {0x8, 0x1},
    {0x8, 0x2},
    {0x8, 0x3},
    {0x9, 0x0},
    {0x9, 0x1},
    {0x9, 0x2},
    {0x9, 0x3}
};

void ov104_02232B78 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov104_02232B78 * v0 = param1;
    UnkStruct_ov63_0222CCB8 v1;
    u16 v2, v3;

    v2 = v0->unk_0C->unk_00;
    v3 = v0->unk_0C->unk_02;

    switch (v0->unk_00) {
    case 0:
        if (v2 == 0xfd13) {
            v0->unk_00 = 2;
            break;
        }
    case 1:
        if (ov63_0222BF90(v0->unk_14->unk_00, 5) == 0) {
            if ((v2 >= (32 + 0)) && (v2 <= (32 + 6))) {
                v0->unk_02++;

                if (v0->unk_02 >= Unk_ov104_0223F9A4[v2 - (32 + 0)]) {
                    v0->unk_02 = 0;
                    v0->unk_0C++;
                }
                break;
            } else if ((v2 >= (32 + 7)) && (v2 < ((32 + 7) + 2))) {
                switch (v2) {
                case ((32 + 7) + 0):
                    ov63_0222D008(v0->unk_14->unk_04, 1);
                    break;
                case ((32 + 7) + 1):
                    ov63_0222D008(v0->unk_14->unk_04, 0);
                    break;
                default:
                    GF_ASSERT(0);
                    break;
                }

                v0->unk_0C++;
                break;
            }

            ov104_02232C80(&v1, v0->unk_14->unk_00, v0->unk_04, v2);
            ov63_0222D7C8(v0->unk_10, &v1);

            v0->unk_01++;

            if (v0->unk_01 >= v3) {
                v0->unk_01 = 0;
                v0->unk_0C++;
            }

            v0->unk_00 = 0;
        }
        break;
    case 2:
        if (ov63_0222BF90(v0->unk_14->unk_00, 5) == 0) {
            (*(v0->unk_08))--;
            v0->unk_14->unk_38 = NULL;
            Heap_FreeToHeap(v0);
            sub_0200DA58(param0);
            return;
        }
        break;
    }
}

void ov104_02232C80 (UnkStruct_ov63_0222CCB8 * param0, UnkStruct_ov63_0222BEC0 * param1, int param2, int param3)
{
    param0->unk_07 = param2;
    param0->unk_06 = Unk_ov104_022419A0[param3].unk_02;
    param0->unk_04 = Unk_ov104_022419A0[param3].unk_00;

    if ((param0->unk_04 == 2) || (param0->unk_04 == 3) || (param0->unk_04 == 6)) {
        param0->unk_00 = ov63_0222C0F0(param1);
    } else {
        param0->unk_00 = ov63_0222C0E4(param1);
    }
}

void ov104_02232CE0 (UnkStruct_ov104_0223C4CC * param0, Pokemon *param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8, u16 param9)
{
    UnkStruct_0200C6E4 * v0 = param0->unk_34.unk_00;
    UnkStruct_0200C704 * v1 = param0->unk_34.unk_04;
    UnkStruct_02002F38 * v2 = param0->unk_04;
    UnkStruct_02008A90 v3;
    void * v4;
    UnkStruct_0200D0F4 * v5;

    {
        NARC * v6;

        v6 = NARC_ctor(27, param2);

        sub_0200CC3C(v0, v1, v6, 112, 0, NNS_G2D_VRAM_TYPE_2DMAIN, param3);
        sub_0200CDC4(v2, 2, v0, v1, v6, 111, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 1, param3);
        sub_0200CE24(v0, v1, v6, 113, 0, param3);
        sub_0200CE54(v0, v1, v6, 114, 0, param3);
        NARC_dtor(v6);
    }

    {
        int v7;
        UnkStruct_ov104_0223F9E0 v8;

        MI_CpuClear8(&v8, sizeof(UnkStruct_ov104_0223F9E0));

        v8.unk_00 = param4;
        v8.unk_02 = param5;
        v8.unk_04 = 0;
        v8.unk_06 = 0;
        v8.unk_08 = param6;
        v8.unk_0C = 0;
        v8.unk_10 = NNS_G2D_VRAM_TYPE_2DMAIN;
        v8.unk_2C = param7;
        v8.unk_30 = 0;

        for (v7 = 0; v7 < 6; v7++) {
            v8.unk_14[v7] = param3;
        }

        v5 = sub_0200CE6C(v0, v1, &v8);
        sub_0200D330(v5);
    }

    {
        u32 v9, species;

        v4 = Heap_AllocFromHeap(param2, (10 * 10 * ((8 / 2) * 8)));
        v9 = GetMonData(param1, MON_DATA_PERSONALITY, NULL);
        species = GetMonData(param1, MON_DATA_SPECIES, NULL);

        sub_02075EF4(&v3, param1, 2);
        sub_020136A4(v3.unk_00, v3.unk_02, param2, 0, 0, 10, 10, v4, v9, 0, 2, species);
    }

    {
        NNSG2dImageProxy * v11;
        NNSG2dImagePaletteProxy * v12;
        int v13;

        v11 = sub_02021F98(v5->unk_00);
        DC_FlushRange(v4, sizeof((10 * 10 * ((8 / 2) * 8))));
        GX_LoadOBJ(v4, v11->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN], (10 * 10 * ((8 / 2) * 8)));

        v12 = sub_02021F9C(v5->unk_00);
        v13 = sub_0201FAB4(v12, NNS_G2D_VRAM_TYPE_2DMAIN);

        sub_02003050(v2, v3.unk_00, v3.unk_04, param2, 2, 0x20, v13 * 16);

        if (param8 > 0) {
            sub_020039B0(v2, 2, v13 * 16, 16, param8, param9);
        }
    }

    Heap_FreeToHeap(v4);

    GF_ASSERT(param0->unk_80[param3 - 50000] == NULL);
    param0->unk_80[param3 - 50000] = v5;
}

void ov104_02232E80 (UnkStruct_ov104_0223C4CC * param0, int param1)
{
    sub_0200D0F4(param0->unk_80[param1 - 50000]);

    param0->unk_80[param1 - 50000] = NULL;

    sub_0200D070(param0->unk_34.unk_04, param1);
    sub_0200D080(param0->unk_34.unk_04, param1);
    sub_0200D090(param0->unk_34.unk_04, param1);
    sub_0200D0A0(param0->unk_34.unk_04, param1);
}

static const UnkStruct_ov104_0223F9E0 Unk_ov104_0223F9E0 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x64,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    {0x7D0, 0x7D0, 0x7D0, 0x7D0, 0xffffffff, 0xffffffff},
    0x1,
    0x0
};

static const UnkStruct_ov104_0223F9E0 Unk_ov104_0223F9AC = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x63,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    {0x7D9, 0x7D1, 0x7D1, 0x7D1, 0xffffffff, 0xffffffff},
    0x1,
    0x0
};

void ov104_02232EC0 (UnkStruct_ov104_0223C4CC * param0)
{
    sub_0200CD7C(param0->unk_04, 2, param0->unk_34.unk_00, param0->unk_34.unk_04, 19, sub_02079FD0(), 0, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 2000);
    sub_0200CE0C(param0->unk_34.unk_00, param0->unk_34.unk_04, 19, sub_02079FD8(), 0, 2000);
    sub_0200CE3C(param0->unk_34.unk_00, param0->unk_34.unk_04, 19, sub_02079FE4(), 0, 2000);
}

void ov104_02232F28 (UnkStruct_ov104_0223C4CC * param0)
{
    sub_0200D090(param0->unk_34.unk_04, 2000);
    sub_0200D0A0(param0->unk_34.unk_04, 2000);
    sub_0200D080(param0->unk_34.unk_04, 2000);
}

UnkStruct_0200D0F4 * ov104_02232F4C (UnkStruct_ov104_0223C4CC * param0, Pokemon *param1, int param2, int param3, int param4)
{
    UnkStruct_0200D0F4 * v0;
    UnkStruct_ov104_0223F9E0 v1;

    GF_ASSERT(param2 < (2008 - 2000));

    sub_0200D888(
        param0->unk_34.unk_00, param0->unk_34.unk_04, 19, sub_02079D80(param1), 0, NNS_G2D_VRAM_TYPE_2DMAIN, 2000 + param2);

    v1 = Unk_ov104_0223F9E0;

    v1.unk_14[0] += param2;
    v1.unk_00 = param3;
    v1.unk_02 = param4;
    v1.unk_08 = 200;

    v0 = sub_0200CE6C(param0->unk_34.unk_00, param0->unk_34.unk_04, &v1);

    sub_02021F24(v0->unk_00, sub_02079FC4(param1));
    sub_0200D330(v0);

    return v0;
}

void ov104_02232FD4 (UnkStruct_ov104_0223C4CC * param0, UnkStruct_0200D0F4 * param1, int param2)
{
    sub_0200D070(param0->unk_34.unk_04, 2000 + param2);
    sub_0200D0F4(param1);
}

void ov104_02232FEC (UnkStruct_ov104_0223C4CC * param0)
{
    NARC * v0;

    v0 = NARC_ctor(20, 94);

    sub_0200CDC4(param0->unk_04, 2, param0->unk_34.unk_00, param0->unk_34.unk_04, v0, sub_02081934(), 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 2001);
    sub_0200CE24(param0->unk_34.unk_00, param0->unk_34.unk_04, v0, sub_02081938(), 0, 2001);
    sub_0200CE54(param0->unk_34.unk_00, param0->unk_34.unk_04, v0, sub_0208193C(), 0, 2001);
    sub_0200D888(param0->unk_34.unk_00, param0->unk_34.unk_04, 20, sub_02081930(), 0, NNS_G2D_VRAM_TYPE_2DMAIN, 2009);
    NARC_dtor(v0);
}

void ov104_0223307C (UnkStruct_ov104_0223C4CC * param0)
{
    sub_0200D070(param0->unk_34.unk_04, 2009);
    sub_0200D090(param0->unk_34.unk_04, 2001);
    sub_0200D0A0(param0->unk_34.unk_04, 2001);
    sub_0200D080(param0->unk_34.unk_04, 2001);
}

UnkStruct_0200D0F4 * ov104_022330AC (UnkStruct_ov104_0223C4CC * param0, int param1, int param2)
{
    UnkStruct_0200D0F4 * v0;
    UnkStruct_ov104_0223F9E0 v1;

    v1 = Unk_ov104_0223F9AC;

    v1.unk_00 = param1;
    v1.unk_02 = param2;
    v1.unk_08 = 300;

    v0 = sub_0200CE6C(param0->unk_34.unk_00, param0->unk_34.unk_04, &v1);
    sub_0200D330(v0);

    return v0;
}

void ov104_022330F0 (UnkStruct_ov104_0223C4CC * param0, UnkStruct_0200D0F4 * param1)
{
    sub_0200D0F4(param1);
}

void ov104_022330FC (UnkStruct_ov104_0222E930 * param0, u16 * param1)
{
    ov104_0223310C(param0, param1, 614);
    return;
}

void ov104_0223310C (UnkStruct_ov104_0222E930 * param0, u16 * param1, u32 param2)
{
    u8 v0;
    UnkStruct_0200B144 * v1;
    UnkStruct_ov104_02230BE4 * v2 = sub_0209B970(param0->unk_00->unk_00);

    if (param1[0] == 0xFFFF) {
        v1 = sub_0200B144(1, 26, param2, 32);

        ov104_02231F74(param0->unk_00, v1, param1[1], 1, NULL);
        sub_0200B190(v1);
    } else {
        v0 = sub_02027AC0(sub_02025E44(v2->unk_08));
        ov104_022320B4(param0->unk_00, v0, param1[0], param1[1], param1[2], param1[3], 1);
    }

    ov104_0222E974(param0, ov104_02233184);
    return;
}

static BOOL ov104_02233184 (UnkStruct_ov104_0222E930 * param0)
{
    if (sub_0201D724(param0->unk_00->unk_50) == 0) {
        return 1;
    }

    return 0;
}

void ov104_0223319C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov104_0223319C * v0 = param1;

    v0->unk_08++;

    if (v0->unk_08 > v0->unk_09) {
        v0->unk_08 = 0;
        v0->unk_0A--;

        if (v0->unk_0A < 0) {
            sub_0200DA58(param0);
            MI_CpuClear8(v0, sizeof(UnkStruct_ov104_0223319C));
            return;
        }

        v0->unk_04 = -v0->unk_04;
        v0->unk_06 = -v0->unk_06;
    }
}

void ov104_022331E8 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov104_022331E8 * v0 = param1;

    if (v0->unk_08 <= 0) {
        if (v0->unk_0A == 1) {
            G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3, 1);
            G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
            G2_SetWnd0Position(v0->unk_04, v0->unk_05, v0->unk_06, v0->unk_07);
            GX_SetVisibleWnd(GX_WNDMASK_W0);
        } else {
            GX_SetVisibleWnd(GX_WNDMASK_NONE);
        }

        sub_0200DA58(param0);
        MI_CpuClear8(v0, sizeof(UnkStruct_ov104_022331E8));
        return;
    } else {
        v0->unk_08--;
    }
}

asm void ov104_0223327C (void)
{
    add r2, r0, #0
    add r2, #0x97
    ldrb r3, [r2]
    lsl r1, r1, #0x18
    lsr r1, r1, #0x18
    mov r2, #0x40
    lsl r1, r1, #0x1f
    bic r3, r2
    lsr r1, r1, #0x19
    orr r1, r3
    add r0, #0x97
    strb r1, [r0]
    bx lr
}

asm void ov104_02233298 (void)
{
    add r2, r0, #0
    add r2, #0x97
    ldrb r3, [r2]
    lsl r1, r1, #0x18
    lsr r1, r1, #0x18
    mov r2, #0x80
    lsl r1, r1, #0x1f
    bic r3, r2
    lsr r1, r1, #0x18
    orr r1, r3
    add r0, #0x97
    strb r1, [r0]
    bx lr
}
