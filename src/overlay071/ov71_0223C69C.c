#include "overlay071/ov71_0223C69C.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02072014.h"

#include "overlay061/struct_ov61_0222C884.h"

#include "font.h"
#include "message.h"
#include "play_time.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "unk_02018340.h"

static void ov71_0223CD64(Window * param0, const u32 param1, const u32 param2, const u32 param3, Strbuf *param4, const u32 param5, const u8 param6, const int param7);
static void ov71_0223CDB0(Window * param0, const u32 param1, const u32 param2, const u32 param3, const Strbuf *param4);

static const UnkStruct_ov61_0222C884 Unk_ov71_0223D670[] = {
    {0x7, 0x2, 0x4, 0x11, 0x2, 0xF, 0x6F},
    {0x7, 0x2, 0x6, 0x11, 0x2, 0xF, 0x91},
    {0x7, 0x2, 0x9, 0x11, 0x2, 0xF, 0xB3},
    {0x7, 0x2, 0xC, 0x11, 0x2, 0xF, 0xD5},
    {0x7, 0x2, 0xF, 0x11, 0x2, 0xF, 0xF7},
    {0x7, 0x2, 0x12, 0x1C, 0x2, 0xF, 0x119},
    {0x7, 0x2, 0x14, 0x1C, 0x2, 0xF, 0x151},
    {0x7, 0x2, 0x2, 0x1C, 0x4, 0xF, 0xC1},
    {0x7, 0x2, 0x7, 0x1C, 0x2, 0xF, 0x131},
    {0x7, 0x2, 0x9, 0x1C, 0x2, 0xF, 0x169},
    {0x7, 0x2, 0xB, 0x1C, 0x2, 0xF, 0x1A1}
};

void ov71_0223C69C (BGL * param0, Window * param1)
{
    u8 v0;
    const UnkStruct_ov61_0222C884 * v1 = Unk_ov71_0223D670;

    for (v0 = 0; v0 < 11; v0++) {
        sub_0201A8D4(param0, &param1[v0], &v1[v0]);
    }

    sub_020196C0(param0, 7, 0, 1, 0);
}

void ov71_0223C6D4 (Window * param0)
{
    u16 v0;

    for (v0 = 0; v0 < 11; v0++) {
        BGL_DeleteWindow(&param0[v0]);
    }
}

static const int Unk_ov71_0223D644[] = {
    0x0,
    0x1,
    0x2,
    0x3,
    0x4,
    0x5,
    0x6,
    0x7,
    0x8,
    0x9,
    0xA
};

void ov71_0223C6F0 (Window * param0, const TrainerCard * param1)
{
    u8 v0;
    MessageLoader * v1;
    Strbuf* v2;

    BGL_WindowColor(&param0[0], 0, 0, 0, 17 * 8, 2 * 8);
    BGL_WindowColor(&param0[1], 0, 0, 0, 17 * 8, 2 * 8);
    BGL_WindowColor(&param0[2], 0, 0, 0, 17 * 8, 2 * 8);
    BGL_WindowColor(&param0[3], 0, 0, 0, 17 * 8, 2 * 8);
    BGL_WindowColor(&param0[4], 0, 0, 0, 17 * 8, 2 * 8);
    BGL_WindowColor(&param0[5], 0, 0, 0, 28 * 8, 2 * 8);
    BGL_WindowColor(&param0[6], 0, 0, 0, 28 * 8, 2 * 8);

    v1 = MessageLoader_Init(0, 26, 616, 25);
    v2 = Strbuf_Init(32, 25);

    for (v0 = 0; v0 < 7; v0++) {
        if ((v0 != 3) || (v0 == 3) && (param1->unk_04_3)) {
            MessageLoader_GetStrbuf(v1, Unk_ov71_0223D644[v0], v2);
            Text_AddPrinterWithParamsAndColor(&param0[v0], FONT_SYSTEM, v2, 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
        }
    }

    {
        Strbuf* v3 = Strbuf_Init(32, 25);
        StringTemplate * v4 = StringTemplate_New(6, 32, 25);

        ov71_0223CD64(&param0[0], (8 * 17), 0, 0, v2, param1->unk_28, 5, 2);
        Strbuf_CopyChars(v2, param1->unk_08);
        ov71_0223CDB0(&param0[1], (8 * 17), 0, 0, v2);

        {
            u32 v5;

            StringTemplate_SetNumber(v4, 5, param1->unk_1C, 6, 0, 1);
            MessageLoader_GetStrbuf(v1, 14, v3);
            StringTemplate_Format(v4, v2, v3);

            v5 = (8 * 17) - Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);

            Text_AddPrinterWithParamsAndColor(&param0[2], FONT_SYSTEM, v2, v5, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
        }

        if (param1->unk_04_3) {
            u32 v6;

            StringTemplate_SetNumber(v4, 5, param1->unk_20, 3, 0, 1);
            MessageLoader_GetStrbuf(v1, 21, v3);
            StringTemplate_Format(v4, v2, v3);

            v6 = (8 * 17) - Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);

            Text_AddPrinterWithParamsAndColor(&param0[3], FONT_SYSTEM, v2, v6, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
        }

        ov71_0223CD64(&param0[4], (8 * 17), 0, 0, v2, param1->unk_24, 9, 1);

        {
            u32 v7;

            if (param1->unk_04_1) {
                StringTemplate_SetNumber(v4, 0, PlayTime_GetHours(param1->playTime), 3, 1, 1);
                StringTemplate_SetNumber(v4, 1, PlayTime_GetMinutes(param1->playTime), 2, 2, 1);
                MessageLoader_GetStrbuf(v1, 16, v3);
            } else {
                StringTemplate_SetNumber(v4, 0, param1->playTimeHours, 3, 1, 1);
                StringTemplate_SetNumber(v4, 1, param1->playTimeMinutes, 2, 2, 1);
                MessageLoader_GetStrbuf(v1, 15, v3);
            }

            StringTemplate_Format(v4, v2, v3);
            v7 = (8 * 28) - Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);
            Text_AddPrinterWithParamsAndColor(&param0[5], FONT_SYSTEM, v2, v7, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
        }

        {
            u32 v8;

            StringTemplate_SetNumber(v4, 2, param1->unk_2F, 2, 2, 1);
            StringTemplate_SetMonthName(v4, 3, param1->unk_30);
            StringTemplate_SetNumber(v4, 4, param1->unk_31, 2, 2, 1);
            MessageLoader_GetStrbuf(v1, 17, v3);
            StringTemplate_Format(v4, v2, v3);

            v8 = (8 * 28) - Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);

            Text_AddPrinterWithParamsAndColor(&param0[6], FONT_SYSTEM, v2, v8, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
        }

        Strbuf_Free(v3);
        StringTemplate_Free(v4);
    }

    Strbuf_Free(v2);
    MessageLoader_Free(v1);
}

// clang-format off
asm void ov71_0223CA28 (Window * param0, const TrainerCard * param1)
{
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x18
    add r6, r0, #0
    mov r0, #0xe0
    str r0, [sp]
    mov r0, #0x20
    str r1, [sp, #0x10]
    mov r1, #0
    str r0, [sp, #4]
    add r0, r6, #0
    add r0, #0x70
    add r2, r1, #0
    add r3, r1, #0
    bl BGL_WindowColor
    mov r1, #0
    mov r0, #0xe0
    str r0, [sp]
    mov r0, #0x10
    str r0, [sp, #4]
    add r0, r6, #0
    add r0, #0x80
    add r2, r1, #0
    add r3, r1, #0
    bl BGL_WindowColor
    mov r1, #0
    mov r0, #0xe0
    str r0, [sp]
    mov r0, #0x10
    str r0, [sp, #4]
    add r0, r6, #0
    add r0, #0x90
    add r2, r1, #0
    add r3, r1, #0
    bl BGL_WindowColor
    mov r1, #0
    mov r0, #0xe0
    str r0, [sp]
    mov r0, #0x10
    str r0, [sp, #4]
    add r0, r6, #0
    add r0, #0xa0
    add r2, r1, #0
    add r3, r1, #0
    bl BGL_WindowColor
    mov r2, #0x9a
    mov r0, #0
    mov r1, #0x1a
    lsl r2, r2, #2
    mov r3, #0x19
    bl MessageLoader_Init
    add r7, r0, #0
    mov r0, #0x20
    mov r1, #0x19
    bl Strbuf_Init
    add r5, r0, #0
    mov r4, #7
 _0223CAA4:
    ldr r1, = Unk_ov71_0223D644
    lsl r2, r4, #2
    ldr r1, [r1, r2]
    add r0, r7, #0
    add r2, r5, #0
    bl MessageLoader_GetStrbuf
    mov r0, #0
    str r0, [sp]
    str r0, [sp, #4]
    ldr r0, = 0x10200
    mov r1, #0
    str r0, [sp, #8]
    mov r0, #0
    str r0, [sp, #0xc]
    lsl r0, r4, #4
    add r0, r6, r0
    add r2, r5, #0
    add r3, r1, #0
    bl Text_AddPrinterWithParamsAndColor
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    cmp r4, #0xb
    blo _0223CAA4
    mov r0, #0x20
    mov r1, #0x19
    bl Strbuf_Init
    str r0, [sp, #0x14]
    mov r0, #6
    mov r1, #0x20
    mov r2, #0x19
    bl StringTemplate_New
    ldr r1, [sp, #0x10]
    add r4, r0, #0
    add r1, #0x33
    ldrb r1, [r1]
    cmp r1, #0
    beq _0223CB6E
    mov r1, #2
    str r1, [sp]
    mov r2, #1
    str r2, [sp, #4]
    ldr r2, [sp, #0x10]
    add r3, r1, #0
    add r2, #0x32
    ldrb r2, [r2]
    bl StringTemplate_SetNumber
    ldr r2, [sp, #0x10]
    add r0, r4, #0
    add r2, #0x33
    ldrb r2, [r2]
    mov r1, #3
    bl StringTemplate_SetMonthName
    mov r3, #2
    ldr r2, [sp, #0x10]
    str r3, [sp]
    mov r0, #1
    str r0, [sp, #4]
    add r2, #0x34
    ldrb r2, [r2]
    add r0, r4, #0
    mov r1, #4
    bl StringTemplate_SetNumber
    mov r0, #1
    str r0, [sp]
    str r0, [sp, #4]
    ldr r2, [sp, #0x10]
    add r0, r4, #0
    ldrh r2, [r2, #0x2c]
    mov r1, #0
    mov r3, #3
    bl StringTemplate_SetNumber
    mov r3, #2
    ldr r2, [sp, #0x10]
    str r3, [sp]
    mov r1, #1
    str r1, [sp, #4]
    add r2, #0x35
    ldrb r2, [r2]
    add r0, r4, #0
    bl StringTemplate_SetNumber
    ldr r2, [sp, #0x14]
    add r0, r7, #0
    mov r1, #0x11
    bl MessageLoader_GetStrbuf
    ldr r2, [sp, #0x14]
    add r0, r4, #0
    add r1, r5, #0
    bl StringTemplate_Format
    b _0223CBA6
 _0223CB6E:
    ldr r2, [sp, #0x14]
    add r0, r7, #0
    mov r1, #0xc
    bl MessageLoader_GetStrbuf
    mov r1, #0
    str r1, [sp]
    mov r0, #2
    str r0, [sp, #4]
    ldr r2, [sp, #0x14]
    add r0, r4, #0
    add r3, r1, #0
    bl StringTemplate_SetStrbuf
    mov r3, #0
    str r3, [sp]
    mov r0, #2
    str r0, [sp, #4]
    ldr r2, [sp, #0x14]
    add r0, r4, #0
    mov r1, #1
    bl StringTemplate_SetStrbuf
    add r0, r7, #0
    mov r1, #0x14
    add r2, r5, #0
    bl MessageLoader_GetStrbuf
 _0223CBA6:
    mov r0, #0
    add r1, r5, #0
    add r2, r0, #0
    bl Font_CalcStrbufWidth
    mov r1, #0xe0
    sub r3, r1, r0
    mov r1, #0
    str r1, [sp]
    ldr r0, = 0x10200
    str r1, [sp, #4]
    str r0, [sp, #8]
    add r0, r6, #0
    add r0, #0x70
    add r2, r5, #0
    str r1, [sp, #0xc]
    bl Text_AddPrinterWithParamsAndColor
    ldr r2, [sp, #0x14]
    add r0, r7, #0
    mov r1, #0xf
    bl MessageLoader_GetStrbuf
    ldr r2, [sp, #0x14]
    add r0, r4, #0
    add r1, r5, #0
    bl StringTemplate_Format
    mov r0, #0
    add r1, r5, #0
    add r2, r0, #0
    bl Font_CalcStrbufWidth
    mov r1, #0xe0
    sub r3, r1, r0
    mov r0, #0x10
    str r0, [sp]
    mov r1, #0
    ldr r0, = 0x10200
    str r1, [sp, #4]
    str r0, [sp, #8]
    add r0, r6, #0
    add r0, #0x70
    add r2, r5, #0
    str r1, [sp, #0xc]
    bl Text_AddPrinterWithParamsAndColor
    mov r0, #0
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    ldr r2, [sp, #0x10]
    add r0, r4, #0
    ldr r2, [r2, #0x38]
    mov r1, #5
    mov r3, #6
    bl StringTemplate_SetNumber
    ldr r2, [sp, #0x14]
    add r0, r7, #0
    mov r1, #0x16
    bl MessageLoader_GetStrbuf
    ldr r2, [sp, #0x14]
    add r0, r4, #0
    add r1, r5, #0
    bl StringTemplate_Format
    mov r0, #0
    add r1, r5, #0
    add r2, r0, #0
    bl Font_CalcStrbufWidth
    mov r1, #0xe0
    sub r3, r1, r0
    mov r1, #0
    str r1, [sp]
    ldr r0, = 0x10200
    str r1, [sp, #4]
    str r0, [sp, #8]
    add r0, r6, #0
    add r0, #0x80
    add r2, r5, #0
    str r1, [sp, #0xc]
    bl Text_AddPrinterWithParamsAndColor
    add r0, r7, #0
    mov r1, #0x12
    add r2, r5, #0
    bl MessageLoader_GetStrbuf
    mov r1, #0
    str r1, [sp]
    ldr r0, = 0x10200
    str r1, [sp, #4]
    str r0, [sp, #8]
    add r0, r6, #0
    add r0, #0x90
    add r2, r5, #0
    mov r3, #0x70
    str r1, [sp, #0xc]
    bl Text_AddPrinterWithParamsAndColor
    mov r2, #0
    ldr r0, [sp, #0x10]
    str r5, [sp]
    ldr r0, [r0, #0x40]
    mov r1, #0xe0
    str r0, [sp, #4]
    mov r0, #4
    str r0, [sp, #8]
    mov r0, #1
    str r0, [sp, #0xc]
    add r0, r6, #0
    add r0, #0x90
    add r3, r2, #0
    bl ov71_0223CD64
    add r0, r7, #0
    mov r1, #0x13
    add r2, r5, #0
    bl MessageLoader_GetStrbuf
    mov r1, #0
    str r1, [sp]
    ldr r0, = 0x10200
    str r1, [sp, #4]
    str r0, [sp, #8]
    add r0, r6, #0
    add r0, #0x90
    add r2, r5, #0
    mov r3, #0xb0
    str r1, [sp, #0xc]
    bl Text_AddPrinterWithParamsAndColor
    ldr r0, [sp, #0x10]
    str r5, [sp]
    ldr r0, [r0, #0x3c]
    mov r1, #0xe0
    str r0, [sp, #4]
    mov r0, #4
    str r0, [sp, #8]
    mov r0, #1
    str r0, [sp, #0xc]
    add r0, r6, #0
    add r0, #0x90
    mov r2, #0x40
    mov r3, #0
    bl ov71_0223CD64
    mov r0, #0
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    ldr r2, [sp, #0x10]
    add r0, r4, #0
    ldr r2, [r2, #0x44]
    mov r1, #5
    mov r3, #6
    bl StringTemplate_SetNumber
    ldr r2, [sp, #0x14]
    add r0, r7, #0
    mov r1, #0x16
    bl MessageLoader_GetStrbuf
    ldr r2, [sp, #0x14]
    add r0, r4, #0
    add r1, r5, #0
    bl StringTemplate_Format
    mov r0, #0
    add r1, r5, #0
    add r2, r0, #0
    bl Font_CalcStrbufWidth
    mov r1, #0xe0
    sub r3, r1, r0
    mov r1, #0
    str r1, [sp]
    ldr r0, = 0x10200
    str r1, [sp, #4]
    str r0, [sp, #8]
    add r6, #0xa0
    add r0, r6, #0
    add r2, r5, #0
    str r1, [sp, #0xc]
    bl Text_AddPrinterWithParamsAndColor
    ldr r0, [sp, #0x14]
    bl Strbuf_Free
    add r0, r4, #0
    bl StringTemplate_Free
    add r0, r5, #0
    bl Strbuf_Free
    add r0, r7, #0
    bl MessageLoader_Free
    add sp, #0x18
    pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on

void ov71_0223CD44 (Window * param0, const u8 param1, const u8 param2)
{
    u8 v0;

    for (v0 = param1; v0 <= param2; v0++) {
        sub_0201ACF4(&param0[v0]);
    }
}

static void ov71_0223CD64 (Window * param0, const u32 param1, const u32 param2, const u32 param3, Strbuf *param4, const u32 param5, const u8 param6, const int param7)
{
    u32 v0;

    Strbuf_FormatInt(param4, param5, param6, param7, 1);
    v0 = Font_CalcStrbufWidth(FONT_SYSTEM, param4, 0);
    Text_AddPrinterWithParamsAndColor(param0, FONT_SYSTEM, param4, param1 - (v0 + param2), param3, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
}

static void ov71_0223CDB0 (Window * param0, const u32 param1, const u32 param2, const u32 param3, const Strbuf *param4)
{
    u32 v0;

    v0 = Font_CalcStrbufWidth(FONT_SYSTEM, param4, 0);
    Text_AddPrinterWithParamsAndColor(param0, FONT_SYSTEM, param4, param1 - (v0 + param2), param3, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
}

void ov71_0223CDE8 (Window * param0, const TrainerCard * param1, Strbuf *param2)
{
    int v0;

    GF_ASSERT(param1->playTime != NULL);

    v0 = PlayTime_GetHours(param1->playTime);

    if (v0 > 999) {
        v0 = 999;
    }

    BGL_WindowColor(&param0[5], 0, 184, 0, 40, 2 * 8);

    {
        u32 v1;
        MessageLoader * v2 = MessageLoader_Init(0, 26, 616, 25);
        Strbuf* v3 = Strbuf_Init(32, 25);
        Strbuf* v4 = Strbuf_Init(32, 25);
        StringTemplate * v5 = StringTemplate_New((1 + 1), 32, 25);

        StringTemplate_SetNumber(v5, 0, PlayTime_GetHours(param1->playTime), 3, 1, 1);
        StringTemplate_SetNumber(v5, 1, PlayTime_GetMinutes(param1->playTime), 2, 2, 1);
        MessageLoader_GetStrbuf(v2, 16, v4);
        StringTemplate_Format(v5, v3, v4);
        v1 = (8 * 28) - Font_CalcStrbufWidth(FONT_SYSTEM, v3, 0);
        Text_AddPrinterWithParamsAndColor(&param0[5], FONT_SYSTEM, v3, v1, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);

        MessageLoader_Free(v2);
        Strbuf_Free(v3);
        Strbuf_Free(v4);
        StringTemplate_Free(v5);
    }
}

void ov71_0223CECC (Window * param0, const BOOL param1, Strbuf *param2)
{
    if (param1) {
        Text_AddPrinterWithParamsAndColor(param0, FONT_SYSTEM, param2, (207 - 2), 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    } else {
        BGL_WindowColor(param0, 0, (207 - 2), 0, 5, 2 * 8);
        sub_0201A954(param0);
    }
}
