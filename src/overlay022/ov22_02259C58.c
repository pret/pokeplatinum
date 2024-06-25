#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02009DC8_decl.h"
#include "message.h"
#include "struct_decls/struct_02012744_decl.h"
#include "strbuf.h"

#include "struct_defs/struct_020127E8.h"
#include "touch_screen.h"
#include "struct_defs/struct_0205AA50.h"
#include "overlay019/struct_ov19_021DA864.h"
#include "overlay022/struct_ov22_02259C58.h"
#include "overlay022/struct_ov22_02259C58_1.h"
#include "overlay022/struct_ov22_02259C9C.h"
#include "overlay022/struct_ov22_02259D2C.h"
#include "overlay022/struct_ov22_0225A0E4.h"
#include "overlay022/struct_ov22_0225A154.h"
#include "overlay115/struct_ov115_02261520.h"

#include "overlay022/funcptr_ov22_02259D78.h"

#include "unk_02002B7C.h"
#include "unk_02005474.h"
#include "unk_020093B4.h"
#include "unk_02009714.h"
#include "unk_0200A328.h"
#include "message.h"
#include "unk_02012744.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "unk_020218BC.h"
#include "error_handling.h"
#include "strbuf.h"
#include "unk_02023FCC.h"
#include "overlay022/ov22_02255094.h"
#include "overlay022/ov22_02259C58.h"

static void ov22_02259D94(UnkStruct_ov22_02259C58 * param0, void * param1);
static void ov22_0225A0E4(UnkStruct_ov22_02259C58 * param0, int param1, UnkStruct_ov22_0225A0E4 * param2, int param3, int param4, int param5, int param6);
static void ov22_0225A154(UnkStruct_ov22_0225A154 * param0, int param1, UnkStruct_ov22_0225A0E4 * param2, const UnkStruct_02012744 * param3, const Window * param4, int param5, int param6, int param7, int param8);
static void ov22_0225A200(TouchScreenHitTable *hitTable, int param1, int param2, int param3, int param4, int param5);
static void ov22_0225A218(UnkStruct_ov22_0225A0E4 * param0);
static void ov22_0225A2A8(UnkStruct_ov22_0225A0E4 * param0);
static Window * ov22_0225A348(UnkStruct_ov22_0225A0E4 * param0, u32 param1, u32 param2, u32 param3, int param4, int param5);
static void ov22_0225A3D0(Window * param0);
static void ov22_0225A2D0(UnkStruct_ov22_02259C58 * param0, int param1);
static void ov22_0225A338(UnkStruct_ov22_02259C58 * param0, int param1, int param2, int param3);
static void ov22_0225A2F4(UnkStruct_ov22_0225A154 * param0, int param1);
static void ov22_0225A3DC(UnkStruct_ov22_02259C58 * param0, int param1, int param2);
static void ov22_0225A418(UnkStruct_ov22_0225A154 * param0, int param1, int param2);
static void ov22_0225A02C(u32 param0, u32 param1, void * param2);

void ov22_02259C58 (UnkStruct_ov22_02259C58 * param0, UnkStruct_ov22_02259C58_1 * param1)
{
    GF_ASSERT(param0);
    GF_ASSERT(param1);

    param0->unk_00 = GraphicElementManager_AddElementEx(param1->unk_00);
    GF_ASSERT(param0->unk_00);

    param0->unk_04 = param1->unk_0C;
    param0->unk_08 = param1->unk_08;

    if (param1->unk_04) {
        param0->unk_0C = param1->unk_04;
    } else {
        param0->unk_0C = ov22_02259D94;
    }
}

void ov22_02259C9C (UnkStruct_ov22_0225A154 * param0, UnkStruct_ov22_02259C9C * param1)
{
    UnkStruct_020127E8 v0;

    ov22_02259C58(&param0->unk_00, &param1->unk_00);

    v0.unk_00 = param1->unk_14;
    v0.unk_04 = param1->unk_10;
    v0.unk_08 = param1->unk_00.unk_00->manager;
    v0.unk_0C = param1->unk_18;
    v0.unk_10 = param0->unk_00.unk_00;
    v0.unk_14 = param1->unk_24;
    v0.unk_18 = param1->unk_1C;
    v0.unk_1C = param1->unk_20;
    v0.unk_20 = 0;
    v0.unk_24 = 0;
    v0.unk_28 = param1->unk_00.unk_00->vramType;
    v0.unk_2C = param1->unk_00.unk_00->heapID;

    param0->unk_10 = sub_020127E8(&v0);
}

void ov22_02259CE8 (UnkStruct_ov22_02259C58 * param0)
{
    GraphicElementData_Delete(param0->unk_00);
    memset(param0, 0, sizeof(UnkStruct_ov22_02259C58));
}

void ov22_02259D00 (UnkStruct_ov22_0225A154 * param0)
{
    ov22_02259CE8(&param0->unk_00);
    sub_02012870(param0->unk_10);
    memset(param0, 0, sizeof(UnkStruct_ov22_0225A154));
}

void ov22_02259D1C (UnkStruct_ov22_02259C58 * param0, int param1)
{
    if (param1 == param0->unk_04) {
        param0->unk_0C(param0, param0->unk_08);
    }
}

void ov22_02259D2C (UnkStruct_ov22_02259D2C * param0, int param1, int param2)
{
    int v0;
    UnkStruct_ov22_02259C58 * v1;

    for (v0 = 2; v0 <= 3; v0++) {
        v1 = param0->unk_00 + v0;

        if (v0 != param1) {
            ov22_02259DA4(v1);
        } else {
            if (param2 == 0) {
                ov22_02259DB0(v1);

                Sound_PlayEffect(1661);
            } else if (param2 == 2) {
                ov22_02259D98(v1);
            } else {
                ov22_02259DB0(v1);
            }
        }
    }
}

void ov22_02259D78 (UnkStruct_ov22_02259C58 * param0, UnkFuncPtr_ov22_02259D78 param1, void * param2, int param3)
{
    GF_ASSERT(param0);

    param0->unk_04 = param3;
    param0->unk_08 = param2;
    param0->unk_0C = param1;
}

static void ov22_02259D94 (UnkStruct_ov22_02259C58 * param0, void * param1)
{
    return;
}

void ov22_02259D98 (UnkStruct_ov22_02259C58 * param0)
{
    SpriteActor_SetAnimFrame(param0->unk_00, 2);
}

void ov22_02259DA4 (UnkStruct_ov22_02259C58 * param0)
{
    SpriteActor_SetAnimFrame(param0->unk_00, 0);
}

void ov22_02259DB0 (UnkStruct_ov22_02259C58 * param0)
{
    SpriteActor_SetAnimFrame(param0->unk_00, 1);
}

void ov22_02259DBC (UnkStruct_ov22_02259D2C * param0, UnkStruct_ov22_0225A0E4 * param1)
{
    Window * v0;

    param0->unk_64 = sub_02012744(1, 13);

    ov22_0225A218(param1);

    ov22_0225A0E4(&param0->unk_00[0], 0, param1, 48, 144, 40, 32);
    ov22_0225A200(param0->unk_6C, 0, 48, 144 + 8, 40, 32 - 8);

    ov22_0225A0E4(&param0->unk_00[1], 1, param1, 8, 144, 40, 32);
    ov22_0225A200(param0->unk_6C, 1, 8, 144 + 8, 40, 32 - 8);

    ov22_0225A0E4(&param0->unk_00[2], 2, param1, 96, 144, 40, 42);
    ov22_0225A200(param0->unk_6C, 2, 96, 144 + 12, 40, 42 - 8);

    ov22_0225A0E4(&param0->unk_00[3], 3, param1, 136, 144, 40, 42);
    ov22_0225A200(param0->unk_6C, 3, 136, 144 + 12, 40, 42 - 8);

    sub_02002BB8(2, 14);

    v0 = ov22_0225A348(param1, 26, 385, 0, 72 / 8, 42 / 8);

    ov22_0225A154(&param0->unk_40, 4, param1, param0->unk_64, v0, 184, 144, 72, 42);
    ov22_0225A200(param0->unk_6C, 4, 184, 144 + 12, 72, 42 - 8);

    ov22_0225A3D0(v0);
    sub_02002C60(2);

    param0->unk_60 = 1;

    ov22_0225A2A8(param1);
    ov22_02259D98(&param0->unk_00[2]);

    param0->unk_68 = sub_02023FCC(param0->unk_6C, 5, ov22_0225A02C, param0, 13);
}

void ov22_02259F24 (UnkStruct_ov22_02259D2C * param0, UnkStruct_ov22_0225A0E4 * param1)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        ov22_022552EC(param1, v0);
        ov22_02255300(param1, v0);
        sub_0201EB50(v0);
    }

    sub_0201F9F0(0);
    sub_0201F9F0(1);

    for (v0 = 0; v0 < 4; v0++) {
        ov22_02259CE8(&param0->unk_00[v0]);
    }

    sub_0201EE28(&param0->unk_40.unk_14);
    ov22_02259D00(&param0->unk_40);
    sub_020127BC(param0->unk_64);
    sub_02024034(param0->unk_68);

    param0->unk_68 = NULL;
}

void ov22_02259F88 (UnkStruct_ov22_02259D2C * param0)
{
    GF_ASSERT(param0->unk_68);
    sub_0202404C(param0->unk_68);
}

void ov22_02259FA0 (UnkStruct_ov22_02259D2C * param0)
{
    ov22_0225A2D0(&param0->unk_40.unk_00, 3);
    ov22_0225A2F4(&param0->unk_40, 3);
    ov22_02259D2C(param0, 2, 3);
}

void ov22_02259FC4 (UnkStruct_ov22_02259D2C * param0, int param1, int param2)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        ov22_0225A3DC(param0->unk_00 + v0, param1, param2);
    }

    ov22_0225A418(&param0->unk_40, param1, param2);
}

void ov22_02259FF4 (UnkStruct_ov22_02259D2C * param0, int param1, UnkFuncPtr_ov22_02259D78 param2, void * param3, int param4)
{
    GF_ASSERT(param0);

    if (param1 < 4) {
        ov22_02259D78(
            &param0->unk_00[param1], param2, param3, param4);
    } else {
        ov22_02259D78(
            &param0->unk_40.unk_00, param2, param3, param4);
    }
}

static void ov22_0225A02C (u32 param0, u32 param1, void * param2)
{
    UnkStruct_ov22_02259D2C * v0 = param2;

    switch (param0) {
    case 0:
        ov22_0225A2D0(&v0->unk_00[0], param1);
        ov22_0225A338(&v0->unk_00[0], 1665, 0, param1);
        ov22_02259D1C(&v0->unk_00[0], param1);
        break;
    case 1:
        ov22_0225A2D0(&v0->unk_00[1], param1);
        ov22_0225A338(&v0->unk_00[1], 1665, 0, param1);
        ov22_02259D1C(&v0->unk_00[1], param1);
        break;
    case 2:
    case 3:
        ov22_02259D2C(v0, param0, param1);
        ov22_02259D1C(&v0->unk_00[param0], param1);
        break;
    case 4:
        if (v0->unk_60 == 1) {
            ov22_0225A2D0(&v0->unk_40.unk_00, param1);
            ov22_0225A2F4(&v0->unk_40, param1);
            ov22_0225A338(&v0->unk_40.unk_00, 1506, 0, param1);
            ov22_02259D1C(&v0->unk_40.unk_00, param1);
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }
}

asm static void ov22_0225A0E4 (UnkStruct_ov22_02259C58 * param0, int param1, UnkStruct_ov22_0225A0E4 * param2, int param3, int param4, int param5, int param6)
{
    push {r4, r5, r6, lr}
    sub sp, #0x90
    add r6, r0, #0
    mov r0, #0
    str r1, [sp]
    mvn r0, r0
    str r0, [sp, #4]
    add r5, r2, #0
    str r0, [sp, #8]
    mov r2, #0
    str r2, [sp, #0xc]
    str r2, [sp, #0x10]
    ldr r0, [r5, #0x48]
    add r4, r3, #0
    str r0, [sp, #0x14]
    ldr r0, [r5, #0x4c]
    add r3, r1, #0
    str r0, [sp, #0x18]
    ldr r0, [r5, #0x50]
    str r0, [sp, #0x1c]
    ldr r0, [r5, #0x54]
    str r0, [sp, #0x20]
    str r2, [sp, #0x24]
    str r2, [sp, #0x28]
    add r0, sp, #0x5c
    bl sub_020093B4
    ldr r0, [r5, #0x44]
    mov r2, #0
    mov r1, #1
    str r0, [sp, #0x2c]
    add r0, sp, #0x5c
    str r0, [sp, #0x30]
    lsl r0, r4, #0xc
    str r0, [sp, #0x34]
    ldr r0, [sp, #0xa0]
    str r1, [sp, #0x54]
    lsl r0, r0, #0xc
    str r0, [sp, #0x38]
    mov r0, #2
    str r0, [sp, #0x50]
    mov r0, #0xe
    str r0, [sp, #0x58]
    add r0, sp, #0x2c
    str r0, [sp, #0x80]
    str r1, [sp, #0x8c]
    add r0, r6, #0
    add r1, sp, #0x80
    str r2, [sp, #0x3c]
    str r2, [sp, #0x84]
    str r2, [sp, #0x88]
    bl ov22_02259C58
    add sp, #0x90
    pop {r4, r5, r6, pc}
}

asm static void ov22_0225A154 (UnkStruct_ov22_0225A154 * param0, int param1, UnkStruct_ov22_0225A0E4 * param2, const UnkStruct_02012744 * param3, const Window * param4, int param5, int param6, int param7, int param8)
{
    push {r4, r5, r6, lr}
    sub sp, #0xa8
    add r5, r0, #0
    mov r0, #0
    str r1, [sp]
    mvn r0, r0
    str r0, [sp, #4]
    add r4, r2, #0
    str r0, [sp, #8]
    mov r2, #0
    str r2, [sp, #0xc]
    str r2, [sp, #0x10]
    ldr r0, [r4, #0x48]
    add r6, r3, #0
    str r0, [sp, #0x14]
    ldr r0, [r4, #0x4c]
    add r3, r1, #0
    str r0, [sp, #0x18]
    ldr r0, [r4, #0x50]
    str r0, [sp, #0x1c]
    ldr r0, [r4, #0x54]
    str r0, [sp, #0x20]
    str r2, [sp, #0x24]
    str r2, [sp, #0x28]
    add r0, sp, #0x5c
    bl sub_020093B4
    ldr r0, [r4, #0x44]
    mov r2, #0xe
    str r0, [sp, #0x2c]
    add r0, sp, #0x5c
    str r0, [sp, #0x30]
    ldr r0, [sp, #0xbc]
    str r2, [sp, #0x58]
    lsl r0, r0, #0xc
    str r0, [sp, #0x34]
    ldr r0, [sp, #0xc0]
    add r2, sp, #0x2c
    lsl r0, r0, #0xc
    mov r1, #2
    str r2, [sp, #0x80]
    ldr r2, [sp, #0xb8]
    str r0, [sp, #0x38]
    mov r0, #0
    str r1, [sp, #0x50]
    mov r1, #1
    str r0, [sp, #0x3c]
    str r1, [sp, #0x54]
    str r0, [sp, #0x84]
    str r0, [sp, #0x88]
    str r0, [sp, #0x9c]
    mov r0, #0x13
    str r1, [sp, #0x8c]
    str r6, [sp, #0x94]
    str r2, [sp, #0x90]
    str r0, [sp, #0xa0]
    ldr r0, [r4, #0x4c]
    bl sub_02009DC8
    mov r1, #0
    bl sub_0200A72C
    str r0, [sp, #0x98]
    ldr r0, [sp, #0xb8]
    mov r1, #1
    mov r2, #0xd
    bl sub_02012898
    mov r1, #1
    add r3, r5, #0
    add r2, r1, #0
    add r3, #0x14
    bl sub_0201ED94
    cmp r0, #0
    bne _0225A1F0
    bl ErrorHandling_AssertFail
 _0225A1F0:
    ldr r0, [r5, #0x18]
    add r1, sp, #0x80
    str r0, [sp, #0xa4]
    add r0, r5, #0
    bl ov22_02259C9C
    add sp, #0xa8
    pop {r4, r5, r6, pc}
}

static void ov22_0225A200 (TouchScreenHitTable *hitTable, int param1, int param2, int param3, int param4, int param5)
{
    hitTable[param1].rect.top = param3;
    hitTable[param1].rect.left = param2;
    hitTable[param1].rect.bottom = param3 + param5;
    hitTable[param1].rect.right = param2 + param4;
}

static void ov22_0225A218 (UnkStruct_ov22_0225A0E4 * param0)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        ov22_02255248(param0, param0->unk_5C, (v0) * 3 + 105 + 2, 0, NNS_G2D_VRAM_TYPE_2DMAIN, v0);
        ov22_0225528C(param0, param0->unk_5C, (v0) * 3 + 105 + 1, 0, v0);
        ov22_022552A8(param0, param0->unk_5C, (v0) * 3 + 105 + 0, 0, v0);
    }

    ov22_02255268(param0, param0->unk_5C, 104, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 3, 0);
    ov22_02255268(param0, param0->unk_5C, 120, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 2, 1);
}

static void ov22_0225A2A8 (UnkStruct_ov22_0225A0E4 * param0)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        ov22_022552C4(param0, v0);
    }

    ov22_022552D8(param0, 0);
    ov22_022552D8(param0, 1);
}

static void ov22_0225A2D0 (UnkStruct_ov22_02259C58 * param0, int param1)
{
    if (param1 == 0) {
        ov22_02259DB0(param0);
    } else if (param1 == 2) {
        ov22_02259D98(param0);
    } else if ((param1 == 1) || (param1 == 3)) {
        ov22_02259DA4(param0);
    }
}

static void ov22_0225A2F4 (UnkStruct_ov22_0225A154 * param0, int param1)
{
    if (param1 == 0) {
        sub_020128C4(param0->unk_10, 0, 15);
        sub_02012A60(param0->unk_10, 4);
    } else {
        if (param1 == 1) {
            sub_020128C4(param0->unk_10, 0, 19);
        }

        if (param1 == 3) {
            sub_020128C4(param0->unk_10, 0, 19);
            sub_02012A60(param0->unk_10, 3);
        }
    }
}

static void ov22_0225A338 (UnkStruct_ov22_02259C58 * param0, int param1, int param2, int param3)
{
    if (param3 == param2) {
        Sound_PlayEffect(param1);
    }
}

static Window * ov22_0225A348 (UnkStruct_ov22_0225A0E4 * param0, u32 param1, u32 param2, u32 param3, int param4, int param5)
{
    MessageLoader * v0;
    Strbuf* v1;
    Window * v2;

    v0 = MessageLoader_Init(0, param1, param2, 13);
    GF_ASSERT(v0);
    v1 = MessageLoader_GetNewStrbuf(v0, param3);

    v2 = sub_0201A778(14, 1);
    Window_Init(v2);
    BGL_AddFramelessWindow(param0->unk_40, v2, param4, param5, 0, 0);

    {
        u32 v3 = sub_02002EEC(2, v1, 0, param4 * 8);
        sub_0201D78C(v2, 2, v1, v3, 0, 0xff, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((3 & 0xff) << 0)), NULL);
    }

    Strbuf_Free(v1);
    MessageLoader_Free(v0);

    return v2;
}

static void ov22_0225A3D0 (Window * param0)
{
    sub_0201A928(param0, 1);
}

static void ov22_0225A3DC (UnkStruct_ov22_02259C58 * param0, int param1, int param2)
{
    const VecFx32 * v0;
    VecFx32 v1;

    v0 = sub_02021D28(param0->unk_00);
    v1 = *v0;
    v1.x += param1 << FX32_SHIFT;
    v1.y += param2 << FX32_SHIFT;
    sub_02021C50(param0->unk_00, &v1);
}

static void ov22_0225A418 (UnkStruct_ov22_0225A154 * param0, int param1, int param2)
{
    ov22_0225A3DC(&param0->unk_00, param1, param2);
    sub_02012938(param0->unk_10);
}
