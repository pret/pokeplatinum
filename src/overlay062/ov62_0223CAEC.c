#include "overlay062/ov62_0223CAEC.h"

#include <nitro.h>
#include <string.h>

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

#include "bg_window.h"
#include "game_records.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "palette.h"
#include "play_time.h"
#include "save_player.h"
#include "sound_playback.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "touch_screen.h"
#include "touch_screen_actions.h"
#include "unk_02012744.h"
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
    TouchScreenActions *unk_DC;
    UnkStruct_ov61_0222BDAC unk_E0;
    UnkStruct_ov61_0222BDAC_1 unk_638;
    UnkStruct_ov62_0223DF10 unk_710;
    UnkStruct_ov61_0222BDAC *unk_714;
    UnkStruct_ov61_0222BDAC_1 *unk_718;
    UnkStruct_ov62_0223DF10 *unk_71C;
    UnkStruct_ov62_0223D518_sub1 unk_720;
    MessageLoader *unk_744;
    Strbuf *unk_748;
    UnkStruct_ov62_02249380 unk_74C[3][20];
    UnkStruct_ov62_02248CDC unk_B0C;
} UnkStruct_ov62_0223D518;

static void ov62_0223CAEC(UnkStruct_0208C06C *param0);
static void ov62_0223CBE0(UnkStruct_0208C06C *param0);
static void ov62_0223CF2C(UnkStruct_0208C06C *param0);
static void ov62_0223CFE0(UnkStruct_0208C06C *param0);
static void ov62_0223D004(UnkStruct_0208C06C *param0);
static void ov62_0223D100(UnkStruct_0208C06C *param0);
static void ov62_0223D160(UnkStruct_0208C06C *param0);
static void ov62_0223D3A8(UnkStruct_0208C06C *param0, int param1);
static void ov62_0223D424(UnkStruct_0208C06C *param0);
static void ov62_0223D4E4(UnkStruct_0208C06C *param0);
static void ov62_0223D518(UnkStruct_ov62_0223D518 *param0);
static void ov62_0223D540(u32 param0, enum TouchScreenButtonState param1, void *param2);
int ov62_0223438C(u64 param0);
void ov62_0223DF10(void *param0, const UnkStruct_ov62_0223CAA4 *param1);
void ov62_0223DF4C(void *param0, const UnkStruct_ov62_0223CAA4 *param1);
static BOOL ov62_0223D5A4(UnkStruct_0208C06C *param0);
static BOOL ov62_0223D644(UnkStruct_0208C06C *param0);
static BOOL ov62_0223D744(UnkStruct_0208C06C *param0);
static BOOL ov62_0223DE60(UnkStruct_0208C06C *param0);
static BOOL ov62_0223DE6C(UnkStruct_0208C06C *param0);
static BOOL ov62_0223DAE8(UnkStruct_0208C06C *param0);
static BOOL ov62_0223DC20(UnkStruct_0208C06C *param0);
static BOOL ov62_0223DC6C(UnkStruct_0208C06C *param0);
static BOOL ov62_0223DD44(UnkStruct_0208C06C *param0);

BOOL (*const Unk_ov62_02248F58[])(UnkStruct_0208C06C *) = {
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
    { 0x4, 0x3, 0x18, 0x4 },
    { 0x4, 0x9, 0x18, 0x4 }
};

static const int Unk_ov62_02248EE0[][4] = {
    { 0x4, 0x3, 0x18, 0x4 },
    { 0x4, 0x9, 0x18, 0x4 }
};

static const int Unk_ov62_02248EA0[][4] = {
    { 0x7, 0x4, 0x12, 0x2 },
    { 0x7, 0xB, 0x12, 0x2 }
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

static void ov62_0223CAEC(UnkStruct_0208C06C *a0) {
    UnkStruct_ov62_0223D518 *r4 = a0->unk_860;
    if (r4->unk_1C == 0) {
        r4->unk_B0C = Unk_ov62_02248F00;
        r4->unk_748 = NULL;
    } else {
        r4->unk_B0C = Unk_ov62_02248F2C;
        r4->unk_748 = MessageLoader_GetNewStrbuf(a0->unk_14.unk_38, r4->unk_714->unk_00[r4->unk_0C].unk_00 + 0x5e);
    }
    r4->unk_B0C.unk_04 = r4->unk_20;
    r4->unk_B0C.unk_00 = r4->unk_74C[r4->unk_0C];
    ov62_02234540(a0, 1);
    ov62_02233310(&a0->unk_14.unk_48C);
    ov62_02232778(&a0->unk_14.unk_48C, a0, r4->unk_744, &r4->unk_B0C, r4->unk_0C, r4->unk_14, r4->unk_748);
    ov62_02233638(&a0->unk_14.unk_46C, &a0->unk_14.unk_48C);
    ov62_0223331C(&a0->unk_14.unk_48C, a0, 1);
    ov62_02233434(&a0->unk_14.unk_48C, 0x70, 0xb8);
    ov62_02234540(a0, 0);
}

static void ov62_0223CBE0(UnkStruct_0208C06C *param0) {
    UnkStruct_ov62_0223D518 *v0 = param0->unk_860;
    int v1;
    u64 v2;

    v0->unk_714 = &v0->unk_E0;
    v0->unk_718 = &v0->unk_638;

    switch (v0->unk_14) {
    case 0: {
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
    } break;
    case 1: {
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
    } break;
    case 2: {
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
    } break;
    }
}

static void ov62_0223CF2C(UnkStruct_0208C06C *param0) {
    UnkStruct_ov62_0223D518 *v0 = param0->unk_860;
    Window *v1;
    int v2 = 1;
    int v3;
    int v4;
    Strbuf *v5;

    for (v3 = 0; v3 < 2; v3++) {
        v1 = &v0->unk_84[v3];
        Window_Add(param0->unk_14.unk_10, v1, 6, Unk_ov62_02248EA0[v3][0], Unk_ov62_02248EA0[v3][1], Unk_ov62_02248EA0[v3][2], Unk_ov62_02248EA0[v3][3], 14, v2);
        v2 += (Unk_ov62_02248EA0[v3][2] * Unk_ov62_02248EA0[v3][3]);
        Window_FillTilemap(v1, 0x0);

        v5 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, 80 + v3);
        v4 = ov62_0223429C(v1, v5);

        Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v5, v4, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
        Window_ScheduleCopyToVRAM(v1);
        Strbuf_Free(v5);
    }
}

static void ov62_0223CFE0(UnkStruct_0208C06C *param0) {
    UnkStruct_ov62_0223D518 *v0 = param0->unk_860;
    Window *v1;
    int v2;

    for (v2 = 0; v2 < 2; v2++) {
        Window_ClearAndCopyToVRAM(&v0->unk_84[v2]);
        Window_Remove(&v0->unk_84[v2]);
    }
}

static void ov62_0223D004(UnkStruct_0208C06C *param0) {
    UnkStruct_ov62_0223D518 *v0 = param0->unk_860;
    Window *v1;
    int v2 = 1;
    int v3;
    int v4;
    Strbuf *v5;
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
            Window_Add(param0->unk_14.unk_10, v1, 2, Unk_ov62_02248EC0[v3][0], Unk_ov62_02248EC0[v3][1], Unk_ov62_02248EC0[v3][2], Unk_ov62_02248EC0[v3][3], 14, v2);
            v2 += (Unk_ov62_02248EC0[v3][2] * Unk_ov62_02248EC0[v3][3]);
        } else {
            Window_Add(param0->unk_14.unk_10, v1, 2, Unk_ov62_02248EE0[v3][0], Unk_ov62_02248EE0[v3][1], Unk_ov62_02248EE0[v3][2], Unk_ov62_02248EE0[v3][3], 14, v2);
            v2 += (Unk_ov62_02248EE0[v3][2] * Unk_ov62_02248EE0[v3][3]);
        }

        Window_FillTilemap(v1, 0x0);

        v5 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, 67);
        v4 = 0;

        Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v5, v4, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
        Window_ScheduleCopyToVRAM(v1);
        Strbuf_Free(v5);
    }
}

static void ov62_0223D100(UnkStruct_0208C06C *param0) {
    UnkStruct_ov62_0223D518 *v0 = param0->unk_860;
    Window *v1;
    int v2 = 1;
    int v3;
    int v4;
    Strbuf *v5;
    int v6;

    if (v0->unk_1C == 0) {
        v6 = NELEMS(Unk_ov62_02248EC0);
    } else {
        v6 = NELEMS(Unk_ov62_02248EE0);
    }

    for (v3 = 0; v3 < v6; v3++) {
        Window_ClearAndCopyToVRAM(&v0->unk_24[v3]);
        Window_Remove(&v0->unk_24[v3]);
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

static u32 ov62_0223D124(UnkStruct_0208C06C *param0, int param1) {
    u32 v0;
    int v1 = param1;

    if (v1 >= 87) {
        v1 = 0;
        GF_ASSERT(0);
    }

    GF_ASSERT(Unk_ov62_022497E8[v1] != 0xFFFF);

    v0 = GameRecords_GetRecordValue(SaveData_GetGameRecords(param0->saveData), Unk_ov62_022497E8[v1]);

    return v0;
}

static void ov62_0223D160(UnkStruct_0208C06C *a0) {
    UnkStruct_0208C06C *r5 = a0;
    UnkStruct_ov62_0223D518 *r4 = r5->unk_860;
    Strbuf *r7;
    Strbuf *sp1c;
    Strbuf *sp18;
    Strbuf *sp14 = Strbuf_Init(0xff, 0x66);
    StringTemplate *r6 = ov62_02231690(0x66);
    Window_FillTilemap(&r4->unk_24[0], 0);
    r7 = (r4->unk_1C == 0)
        ? MessageLoader_GetNewStrbuf(r5->unk_14.unk_38, r4->unk_718->unk_00[r4->unk_0C].unk_00 - 1)
        : MessageLoader_GetNewStrbuf(r5->unk_14.unk_38, r4->unk_714->unk_00[r4->unk_0C].unk_00 - 1);
    Text_AddPrinterWithParamsAndColor(&r4->unk_24[0], 0, r7, 0, 0, 0xff, 0x000f0d00, 0);
    Window_ScheduleCopyToVRAM(&r4->unk_24[0]);
    Strbuf_Free(r7);
    Window_FillTilemap(&r4->unk_24[1], 0);
    r7 = (r4->unk_1C == 0)
        ? MessageLoader_GetNewStrbuf(r5->unk_14.unk_34, r4->unk_14 + 0x52)
        : MessageLoader_GetNewStrbuf(r5->unk_14.unk_34, 0x5b);
    Text_AddPrinterWithParamsAndColor(&r4->unk_24[1], 0, r7, 0, 0, 0xff, 0x000f0d00, 0);
    Window_ScheduleCopyToVRAM(&r4->unk_24[1]);
    Strbuf_Free(r7);
    sp18 = sub_02030B94(r5->unk_88C[0], 0x66);
    ov62_022349A8(r5, sp18);
    switch (r4->unk_14) {
    case 0:
        int sp20 = sub_02030CDC(r5->unk_88C[0]);
        r7 = MessageLoader_GetNewStrbuf(r5->unk_14.unk_34, 0x55);
        sp1c = MessageLoader_GetNewStrbuf(r4->unk_744, ov62_02232234(sp20, 4));
        StringTemplate_SetStrbuf(r6, 0, sp1c, 0, 1, 2);
        break;
    case 1:
        int sp24 = sub_02030CCC(r5->unk_88C[0]);
        r7 = MessageLoader_GetNewStrbuf(r5->unk_14.unk_34, 0x56);
        sp1c = Strbuf_Init(0xff, 0x66);
        StringTemplate_SetMonthName(r6, 0, sp24);
        break;
    case 2:
        int sp10 = sub_02030BBC(r5->unk_88C[0]);
        int sp28 = sub_02030BEC(r5->unk_88C[0]);
        r7 = MessageLoader_GetNewStrbuf(r5->unk_14.unk_34, 0x57);
        if (sp28) {
            sp10 = 0x1ee;
        }
        if (sp10) {
            sp1c = Strbuf_Init(0xff, 0x66);
            charcode_t sp2c[0xff];
            MessageLoader_GetSpeciesName(sp10, 0x66, sp2c);
            Strbuf_CopyChars(sp1c, sp2c);
        } else {
            sp1c = MessageLoader_GetNewStrbuf(r5->unk_14.unk_34, 0x15);
        }
        StringTemplate_SetStrbuf(r6, 0, sp1c, 0, 1, 2);
        break;
    }
    StringTemplate_SetStrbuf(r6, 1, sp18, 0, 1, 2);
    StringTemplate_Format(r6, sp14, r7);
    Text_AddPrinterWithParamsAndColor(&r4->unk_24[1], 0, sp14, 0, 0x10, 0xff, 0x000f0d00, 0);
    Window_ScheduleCopyToVRAM(&r4->unk_24[1]);
    Strbuf_Free(r7);
    Strbuf_Free(sp1c);
    Strbuf_Free(sp14);
    Strbuf_Free(sp18);
    StringTemplate_ClearArgs(r6);
    StringTemplate_Free(r6);
}

static void ov62_0223D3A8(UnkStruct_0208C06C *param0, int param1) {
    UnkStruct_ov62_0223D518 *v0 = param0->unk_860;

    if (param1 == 0) {
        ManagedSprite_SetDrawFlag(v0->unk_A4[0].unk_08, 1);
        sub_020129D0(v0->unk_A4[0].unk_0C, 1);
        ManagedSprite_SetPositionXY(v0->unk_A4[1].unk_08, 128, 232);
    } else {
        ManagedSprite_SetDrawFlag(v0->unk_A4[0].unk_08, 0);
        sub_020129D0(v0->unk_A4[0].unk_0C, 0);
        ManagedSprite_SetPositionXY(v0->unk_A4[1].unk_08, 80, 232);
    }

    sub_020128C4(v0->unk_A4[0].unk_0C, 36, -8);
    sub_020128C4(v0->unk_A4[1].unk_0C, 36, -8);
}

static void ov62_0223D424(UnkStruct_0208C06C *param0) {
    UnkStruct_ov62_0223D518 *v0 = param0->unk_860;

    ov62_0223131C(param0, NNS_G2D_VRAM_TYPE_2DSUB);

    v0->unk_A4[0].unk_08 = ov62_022313E0(param0, NNS_G2D_VRAM_TYPE_2DSUB);
    v0->unk_A4[1].unk_08 = ov62_022313E0(param0, NNS_G2D_VRAM_TYPE_2DSUB);

    ov62_0223118C(&v0->unk_A4[0], &param0->unk_14, NNS_G2D_VRAM_TYPE_2DSUB);
    ov62_0223118C(&v0->unk_A4[1], &param0->unk_14, NNS_G2D_VRAM_TYPE_2DSUB);
    ov62_0223124C(&v0->unk_A4[0], &param0->unk_14, 53);
    ov62_0223124C(&v0->unk_A4[1], &param0->unk_14, 3);

    ManagedSprite_SetPositionXY(v0->unk_A4[0].unk_08, 32, 232);
    ManagedSprite_SetPositionXY(v0->unk_A4[1].unk_08, 128, 232);
    sub_020128C4(v0->unk_A4[0].unk_0C, 36, -8);
    sub_020128C4(v0->unk_A4[1].unk_0C, 36, -8);
    sub_020129D0(v0->unk_A4[0].unk_0C, 0);
    sub_020129D0(v0->unk_A4[1].unk_0C, 1);

    ov62_0223D3A8(param0, 1);
}

static void ov62_0223D4E4(UnkStruct_0208C06C *param0) {
    UnkStruct_ov62_0223D518 *v0 = param0->unk_860;

    ov62_022312B0(&v0->unk_A4[0]);
    ov62_022312B0(&v0->unk_A4[1]);

    Sprite_DeleteAndFreeResources(v0->unk_A4[0].unk_08);
    Sprite_DeleteAndFreeResources(v0->unk_A4[1].unk_08);

    ov62_022313BC(param0);
}

static void ov62_0223D518(UnkStruct_ov62_0223D518 *param0) {
    int v0[] = { 16, 12, 20 };

    param0->unk_20 = v0[param0->unk_14];
}

static const TouchScreenRect Unk_ov62_02248E94[] = {
    { 0x18, 0x38, 0x30, 0xD0 },
    { 0x50, 0x70, 0x30, 0xD0 },
    { 0x98, 0xB8, 0x50, 0xB0 }
};

static void ov62_0223D540(u32 param0, enum TouchScreenButtonState param1, void *param2) {
    UnkStruct_0208C06C *v0 = param2;
    UnkStruct_ov62_0223D518 *v1 = v0->unk_860;

    if (param1 != TOUCH_BUTTON_PRESSED) {
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

static BOOL ov62_0223D5A4(UnkStruct_0208C06C *param0) {
    UnkStruct_ov62_0223D518 *v0 = Heap_AllocFromHeap(HEAP_ID_102, sizeof(UnkStruct_ov62_0223D518));

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

    Bg_ClearTilemap(param0->unk_14.unk_10, 2);
    Bg_ClearTilemap(param0->unk_14.unk_10, 3);
    Bg_ClearTilemap(param0->unk_14.unk_10, 6);
    Bg_ClearTilemap(param0->unk_14.unk_10, 7);

    ov62_022315C8(&v0->unk_00, &v0->unk_04, 0);
    v0->unk_DC = TouchScreenActions_RegisterHandler(Unk_ov62_02248E94, NELEMS(Unk_ov62_02248E94), ov62_0223D540, param0, HEAP_ID_102);
    ov62_0222FB60(param0, 1);

    return 0;
}

static BOOL ov62_0223D644(UnkStruct_0208C06C *param0) {
    UnkStruct_ov62_0223D518 *v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        if (ov62_02231664(&v0->unk_08, 1)) {
            param0->unk_08++;
        }

        PaletteData_BlendMulti(param0->unk_14.unk_14, 2, 0xC, v0->unk_08, param0->unk_14.unk_44);
        PaletteData_BlendMulti(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        PaletteData_BlendMulti(param0->unk_14.unk_14, 1, 0x2, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 1:
        ov62_02234540(param0, 1);
        ov62_02231454(param0);
        ov62_0223D424(param0);
        ov62_02234540(param0, 0);

        Bg_SetPriority(BG_LAYER_MAIN_0, 1);
        Bg_SetPriority(BG_LAYER_MAIN_1, 3);
        Bg_SetPriority(BG_LAYER_MAIN_2, 0);
        Bg_SetPriority(BG_LAYER_MAIN_3, 1);

        Bg_SetPriority(BG_LAYER_SUB_0, 1);
        Bg_SetPriority(BG_LAYER_SUB_1, 3);
        Bg_SetPriority(BG_LAYER_SUB_2, 0);
        Bg_SetPriority(BG_LAYER_SUB_3, 2);

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

static BOOL ov62_0223D744(UnkStruct_0208C06C *param0) {
    UnkStruct_ov62_0223D518 *v0 = param0->unk_860;
    UnkStruct_ov62_0223CAA4 *v1;

    if (ov62_022411B8(param0) == 0) {
        return 0;
    }

    switch (param0->unk_08) {
    case 0:
        ov62_02234358(param0, param0->unk_6F0, 128, 96);
        sub_0208B9E0(param0->unk_6F0, 1);
        sub_0208BA08(param0->unk_6F0, 24, 24);
        ov62_02231AAC(param0, 279);
        Sound_PlayEffect(SEQ_SE_PL_BREC80);
        param0->unk_08++;
        break;
    case 1:
        if (ov61_0222B2B8(ov62_0224112C(param0)) == 1) {
            param0->unk_08++;
        }
        break;
    case 2:
        if (ov61_0222BB48(ov62_0224112C(param0), &v1) == 1) {
            Sound_StopEffect(1381, 0);
            ov62_02231B8C(param0);
            ov62_022348B8(param0, 4, v1->unk_0C, v1->unk_04);
            sub_0208B9E0(param0->unk_6F0, 0);
            param0->unk_08 = 5;
        } else {
            {
                v0->unk_71C = &v0->unk_710;
                v0->unk_720.unk_08.unk_00 = PlayTime_GetHours(SaveData_GetPlayTime(param0->saveData));
                v0->unk_720.unk_08.unk_02 = PlayTime_GetMinutes(SaveData_GetPlayTime(param0->saveData));
                v0->unk_720.unk_08.unk_03 = PlayTime_GetSeconds(SaveData_GetPlayTime(param0->saveData));
                v0->unk_720.unk_0C[0].unk_00 = v0->unk_71C->unk_00[0];
                v0->unk_720.unk_0C[1].unk_00 = v0->unk_71C->unk_00[1];
                v0->unk_720.unk_0C[2].unk_00 = v0->unk_71C->unk_00[2];
                v0->unk_720.unk_0C[0].unk_04 = ov62_0223D124(param0, v0->unk_720.unk_0C[0].unk_00 - 1);
                v0->unk_720.unk_0C[1].unk_04 = ov62_0223D124(param0, v0->unk_720.unk_0C[1].unk_00 - 1);
                v0->unk_720.unk_0C[2].unk_04 = ov62_0223D124(param0, v0->unk_720.unk_0C[2].unk_00 - 1);
            }
            Sound_StopEffect(1381, 0);
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
            Sound_StopEffect(1381, 0);
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
                Sound_StopEffect(1381, 0);
                Sound_PlayEffect(SEQ_SE_PL_BREC12);
                param0->unk_08 = 0xFF;
            }
        }
        break;
    case 5:
        ov62_02234540(param0, 1);
        ov62_0223D4E4(param0);

        TouchScreenActions_Free(v0->unk_DC);

        ov62_02231688(&v0->unk_08);
        ov62_0223146C(param0);
        ov62_02234540(param0, 0);

        Bg_ClearTilemap(param0->unk_14.unk_10, 2);
        Bg_ClearTilemap(param0->unk_14.unk_10, 6);
        Bg_ClearTilemap(param0->unk_14.unk_10, 3);
        Bg_ClearTilemap(param0->unk_14.unk_10, 7);
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
            PaletteData_BlendMulti(param0->unk_14.unk_14, 2, 0xC, 16, param0->unk_14.unk_44);
            ov62_0222FB44(param0, 1, 1, param0->unk_10);
            ov62_0222FB60(param0, 5);
            Heap_Free(v0);
        } else {
            PaletteData_BlendMulti(param0->unk_14.unk_14, 1, 0x2, v0->unk_08, param0->unk_14.unk_44);
            PaletteData_BlendMulti(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
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

static BOOL ov62_0223DAE8(UnkStruct_0208C06C *param0) {
    UnkStruct_ov62_0223D518 *v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        Graphics_LoadTilesToBgLayerFromOpenNARC(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 3, 0, 0, 0, HEAP_ID_102);
        Graphics_LoadTilesToBgLayerFromOpenNARC(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 7, 0, 0, 0, HEAP_ID_102);
        Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->unk_14.unk_00, 33, param0->unk_14.unk_10, 3, 0, 0, 0, HEAP_ID_102);
        Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->unk_14.unk_00, 34, param0->unk_14.unk_10, 7, 0, 0, 0, HEAP_ID_102);

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

        PaletteData_BlendMulti(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        PaletteData_BlendMulti(param0->unk_14.unk_14, 2, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        ov62_0222FB60(param0, 6);
        break;
    }

    return 0;
}

static BOOL ov62_0223DC20(UnkStruct_0208C06C *param0) {
    UnkStruct_ov62_0223D518 *v0 = param0->unk_860;

    ov62_02233664(&param0->unk_14.unk_46C);
    ov62_022332AC(&param0->unk_14.unk_48C, param0->unk_14.unk_46C.unk_10);
    ov62_02232C78(&param0->unk_14.unk_48C, param0, v0->unk_0C, v0->unk_14, v0->unk_748);

    TouchScreenActions_HandleAction(v0->unk_DC);

    return 0;
}

static BOOL ov62_0223DC6C(UnkStruct_0208C06C *param0) {
    UnkStruct_ov62_0223D518 *v0 = param0->unk_860;

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

        PaletteData_BlendMulti(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        PaletteData_BlendMulti(param0->unk_14.unk_14, 2, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        ov62_0222FB60(param0, 8);
        break;
    }

    return 0;
}

static BOOL ov62_0223DD44(UnkStruct_0208C06C *param0) {
    UnkStruct_ov62_0223D518 *v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_0223CFE0(param0);
        ov62_0223D100(param0);
        ov62_02234540(param0, 1);
        ov62_0223D4E4(param0);
        ov62_02234540(param0, 0);
        TouchScreenActions_Free(v0->unk_DC);
        param0->unk_08++;
        break;
    case 1:
        ov62_02234540(param0, 1);
        ov62_02231688(&v0->unk_08);
        ov62_0223146C(param0);
        ov62_02234540(param0, 0);
        Bg_ClearTilemap(param0->unk_14.unk_10, 2);
        Bg_ClearTilemap(param0->unk_14.unk_10, 6);
        Bg_ClearTilemap(param0->unk_14.unk_10, 3);
        Bg_ClearTilemap(param0->unk_14.unk_10, 7);
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
            PaletteData_BlendMulti(param0->unk_14.unk_14, 2, 0xC, 16, param0->unk_14.unk_44);
            ov62_0222FB44(param0, 1, 1, param0->unk_10);
            ov62_0222FB60(param0, 5);
            Heap_Free(v0);
        } else {
            PaletteData_BlendMulti(param0->unk_14.unk_14, 1, 0x2, v0->unk_08, param0->unk_14.unk_44);
            PaletteData_BlendMulti(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        }

        break;
    }

    return 0;
}

static BOOL ov62_0223DE60(UnkStruct_0208C06C *param0) {
    GF_ASSERT(0);
    return 0;
}

static BOOL ov62_0223DE6C(UnkStruct_0208C06C *param0) {
    UnkStruct_ov62_0223D518 *v0 = param0->unk_860;

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

void ov62_0223DF10(void *param0, const UnkStruct_ov62_0223CAA4 *param1) {
    UnkStruct_0208C06C *v0 = param0;
    UnkStruct_ov62_0223D518 *v1 = v0->unk_860;

    if (param1->unk_00 == 1) {
        v1->unk_71C = &v1->unk_710;
    } else {
        UnkStruct_ov62_0223DF10 *v2;
        int v3;

        ov61_0222BD78(ov62_0224112C(v0), &v1->unk_71C);
        MI_CpuCopy8(v1->unk_71C, &v1->unk_710, sizeof(UnkStruct_ov62_0223DF10));
    }
}

void ov62_0223DF4C(void *param0, const UnkStruct_ov62_0223CAA4 *param1) {
    UnkStruct_0208C06C *v0 = param0;
    UnkStruct_ov62_0223D518 *v1 = v0->unk_860;

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
