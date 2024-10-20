#include <nitro.h>
#include <string.h>

#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0202442C_decl.h"
#include "struct_defs/struct_0203CC84.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay057/const_ov57_021D0F70.h"
#include "overlay057/const_ov57_021D0F90.h"
#include "overlay077/const_ov77_021D742C.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/const_ov97_0223D674.h"
#include "overlay097/ov97_02235D18.h"
#include "overlay097/ov97_02237520.h"
#include "overlay097/ov97_02237694.h"
#include "overlay097/struct_ov97_02237808.h"
#include "savedata/save_table.h"

#include "cell_actor.h"
#include "core_sys.h"
#include "font.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "message_util.h"
#include "overlay_manager.h"
#include "play_time.h"
#include "save_player.h"
#include "savedata.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_02000C88.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_0200A784.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201DBEC.h"
#include "unk_02024358.h"
#include "unk_02025CB0.h"
#include "unk_0202631C.h"
#include "unk_0202DAB4.h"
#include "unk_020366A0.h"
#include "unk_0209A74C.h"

#include "constdata/const_020E4C44.h"

FS_EXTERN_OVERLAY(overlay57);
FS_EXTERN_OVERLAY(overlay77);
FS_EXTERN_OVERLAY(overlay97);
FS_EXTERN_OVERLAY(overlay98);

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;

    // clang-format off
    BOOL (* unk_0C)(void *, int, UnkStruct_ov97_02237808 *, int);
    // clang-format on
} UnkStruct_ov97_0223E014;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    u32 unk_10;
    u32 unk_14;
    void (*unk_18)(void *param0);
} UnkStruct_ov97_0223DF54;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
} UnkStruct_ov97_0223DFB0;

typedef struct {
    BGL *unk_00;
    SaveData *unk_04;
    PokedexData *unk_08;
    TrainerInfo *unk_0C;
    PlayTime *playTime;
    MysteryGift *unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
    int unk_24;
    int unk_28;
    int unk_2C;
    int unk_30;
    int unk_34;
    int unk_38;
    int unk_3C;
    int unk_40;
    int unk_44;
    int unk_48;
    int unk_4C;
    int unk_50;
    int unk_54;
    int unk_58;
    Window unk_5C[8];
    int unk_DC[8];
    int unk_FC[8];
    fx32 unk_11C;
    fx32 unk_120;
    int unk_124;
    int unk_128;
    int unk_12C;
    int unk_130;
    int unk_134;
    int unk_138;
    Window unk_13C;
    int unk_14C;
    int unk_150;
    BOOL unk_154[1];
    Window unk_158;
    CellActor *unk_168[2];
    int unk_170;
} UnkStruct_0222AE60;

static BOOL ov97_0222B768(void *param0, int param1, UnkStruct_ov97_02237808 *param2, int param3);
static BOOL ov97_0222B7DC(void *param0, int param1, UnkStruct_ov97_02237808 *param2, int param3);
static BOOL ov97_0222B888(void *param0, int param1, UnkStruct_ov97_02237808 *param2, int param3);
static BOOL ov97_0222B8E4(void *param0, int param1, UnkStruct_ov97_02237808 *param2, int param3);
static BOOL ov97_0222B934(void *param0, int param1, UnkStruct_ov97_02237808 *param2, int param3);
static BOOL ov97_0222B978(void *param0, int param1, UnkStruct_ov97_02237808 *param2, int param3);
static BOOL ov97_0222B5C0(void *param0, int param1, UnkStruct_ov97_02237808 *param2, int param3);
MysteryGift *SaveData_MysteryGift(SaveData *param0);
int ov23_0224AC0C(void);
int TrainerInfo_Size(void);

static UnkStruct_ov97_0223DF54 Unk_ov97_0223DF54[] = {
    { 0x5, 0x5, 0x16, 0xE, 0x2B7, 0x10, NULL }
};

UnkStruct_ov97_0223E014 Unk_ov97_0223E014[] = {
    { 0x1, 0xA, 0x0, ov97_0222B5C0 },
    { 0x2, 0x2, 0x1, NULL },
    { 0x3, 0x2, 0x2, ov97_0222B7DC },
    { 0x4, 0x2, 0x3, ov97_0222B888 },
    { 0x5, 0x2, NULL, ov97_0222B768 },
    { 0x6, 0x2, 0xA, ov97_0222B8E4 },
    { 0x7, 0x2, 0xB, ov97_0222B934 },
    { 0x8, 0x2, 0x14, ov97_0222B978 }
};

static u32 Unk_ov97_0223DF40[] = {
    0x0,
    0xC,
    0xD,
    0xF,
    0xE
};

UnkStruct_ov97_0223DFB0 Unk_ov97_0223DFB0[] = {
    { 0x4, 0x2, 0x18, 0x14, 0x1 },
    { 0x4, 0x4, 0x18, 0x10, 0x3 },
    { 0x4, 0x1, 0x18, 0x16, 0x0 },
    { 0x4, 0x3, 0x18, 0x12, 0x2 },
    { 0x2, 0x1, 0x1C, 0x16, 0x5 }
};

static int ov97_0222AE60(UnkStruct_0222AE60 *param0)
{
    int v0, v1;

    v0 = 0;
    return v0;
}

static BOOL ov97_0222AE64(UnkStruct_0222AE60 *param0)
{
    int v0;
    UnkStruct_ov97_0223DF54 *v1;
    UnkStruct_ov97_02237808 v2;

    if (BGL_WindowAdded(&param0->unk_158) == 0) {
        for (v0 = 0; v0 < 1; v0++) {
            if (param0->unk_154[v0] == 1) {
                param0->unk_154[v0] = 0;
                v1 = &Unk_ov97_0223DF54[v0];

                ov97_02237808(&v2, &param0->unk_158, 0, v1->unk_10, 1, 2);
                ov97_02237858(&v2, v1->unk_08, v1->unk_0C, ((1 + 9) + 9));
                ov97_0223795C(param0->unk_00, &v2, v1->unk_00, v1->unk_04, v1->unk_14);
                return 1;
            }
        }
    } else {
        if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(1500);
            Window_Clear(&param0->unk_158, 0);
            BGL_DeleteWindow(&param0->unk_158);
        }

        return 1;
    }

    return 0;
}

static void ov97_0222AF1C(UnkStruct_0222AE60 *param0)
{
    int v0;
    int v1 = ov97_02235D2C(NULL);

    param0->unk_24 = 0;

    if (v1 != 0) {
        return;
    }

    v0 = 0;

    switch (ov97_02235DB0()) {
    case 0:
        v0 = 2;
        break;
    case 1:
        v0 = 1;
        break;
    case 2:
        v0 = 5;
        break;
    case 3:
        v0 = 4;
        break;
    case 4:
        v0 = 3;
        break;
    }

    sub_02017B70(v0);

    if (sub_02027474(param0->unk_08) == 0) {
        return;
    }

    if (ov97_02235DBC() != Unk_020E4C44) {
        return;
    }

    param0->unk_24 = ov97_02235DB0() + 1;

    ov97_02238440();
}

static void ov97_0222AF8C(UnkStruct_0222AE60 *param0)
{
    int v0;

    switch (param0->unk_124) {
    case 12:
        break;
    case 10:
        param0->unk_124 = 11;
        break;
    case 11:
        sub_02037D48(param0->unk_04);

        param0->unk_128 = (2 * 60);
        param0->unk_124 = 13;
        param0->unk_40 = 0;

        if (sub_0202DEC4(param0->unk_14) == 1) {
            param0->unk_40 |= 0x1;
            param0->unk_44 |= 0x1;
        }
        break;
    case 13:
        if (param0->unk_130) {
            break;
        }

        v0 = sub_02037DA0();
        v0 = ~param0->unk_40 & v0;

        if (v0 && (param0->unk_12C == 15) && (param0->unk_130 == 0) && (param0->unk_40 != v0)) {
            param0->unk_48 = 1;

            if (v0 & 0x1) {
                param0->unk_34 = 1, v0 = 0x1;
            }

            if (v0 & 0x2) {
                param0->unk_2C = 1, v0 = 0x2;
            }

            if (v0 & 0x4) {
                param0->unk_30 = 1, v0 = 0x4;
            }

            if (v0 & (0x1 | 0x2)) {
                param0->unk_150 = 1;
            }

            param0->unk_40 |= v0;
        }

        if (--param0->unk_128 == 0) {
            sub_02037D84();
            param0->unk_124 = 12;
        }
        break;
    case 14:
        sub_02037D84();
        param0->unk_124 = 12;
        break;
    }
}

static BOOL ov97_0222B07C(UnkStruct_0222AE60 *param0)
{
    UnkStruct_ov97_02237808 v0;
    UnkStruct_ov97_0223DFB0 *v1;
    int v2, v3;

    switch (param0->unk_12C) {
    case 15:
        if (param0->unk_130 == 0) {
            return 0;
        }

        if (--param0->unk_130 == 0) {
            param0->unk_12C = 16;
        }

        return 1;
    case 16:
        sub_0200DAA4(param0->unk_00, 1, 1, 2, 0, 81);
        sub_02019EBC(param0->unk_00, 1);
        *((u16 *)HW_BG_PLTT + 33) = ((26 & 31) << 10 | (26 & 31) << 5 | (26 & 31));
        param0->unk_12C = 17;
        break;
    case 17:
        ov97_02237808(&v0, &param0->unk_13C, 0, 14, 1, 2);

        v3 = param0->unk_40 & ~param0->unk_44;

        if (v3 & 0x1) {
            if (param0->unk_38 & 0x1) {
                v1 = &Unk_ov97_0223DFB0[0];
            } else {
                v1 = &Unk_ov97_0223DFB0[1];
            }
        } else if (v3 & 0x2) {
            if (param0->unk_38 & 0x2) {
                v1 = &Unk_ov97_0223DFB0[2];
            } else {
                v1 = &Unk_ov97_0223DFB0[3];
            }
        } else if (v3 & 0x80) {
            v1 = &Unk_ov97_0223DFB0[4];
            v3 = 0;
        }

        param0->unk_44 |= v3;
        ov97_02237858(&v0, v1->unk_08, v1->unk_0C, ((1 + 9) + 9));

        v0.unk_2C = 1;
        ov97_0223795C(param0->unk_00, &v0, v1->unk_00, v1->unk_04, v1->unk_10);

        sub_02019E2C(param0->unk_00, 1, sub_0201C29C(v0.unk_10), sub_0201C2A0(v0.unk_10), sub_0201C294(v0.unk_10), sub_0201C298(v0.unk_10), 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);

        param0->unk_134 = 30;
        param0->unk_12C = 18;
        break;
    case 18:
        if (param0->unk_134) {
            param0->unk_134--;
        } else {
            if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
                BGL_DeleteWindow(&param0->unk_13C);
                param0->unk_12C = 19;
                param0->unk_138 = gCoreSys.pressedKeys;
                Sound_PlayEffect(1500);
            }
        }
        break;
    case 19:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
        param0->unk_12C = 15;
        break;
    }

    return 1;
}

#define ABS(x) (((x) ^ ((x) >> 31)) - ((x) >> 31))
static void ov97_0222B25C(UnkStruct_0222AE60 *param0)
{
    fx32 v0;

    if (param0->unk_11C != param0->unk_120) {
        v0 = (param0->unk_120 - param0->unk_11C) / 4;

        if ((((v0) ^ ((v0) >> 31)) - ((v0) >> 31)) > (12 * FX32_ONE)) {
            if (v0 > 0) {
                v0 = (12 * FX32_ONE);
            } else {
                v0 = -(12 * FX32_ONE);
            }
        }

        param0->unk_11C += v0;

        if ((((param0->unk_120 - param0->unk_11C) ^ ((param0->unk_120 - param0->unk_11C) >> 31)) - ((param0->unk_120 - param0->unk_11C) >> 31)) < FX32_ONE / 8) {
            param0->unk_11C = param0->unk_120;
        }

        sub_0201C63C(param0->unk_00, 0, 3, param0->unk_11C / FX32_ONE);
        sub_0201C63C(param0->unk_00, 2, 3, param0->unk_11C / FX32_ONE);
    }
}

static void ov97_0222B2EC(UnkStruct_0222AE60 *param0)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_A,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_B,
        GX_VRAM_TEXPLTT_01_FG
    };
    UnkStruct_ov84_0223BA5C v1 = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_2D
    };

    GXLayers_SetBanks(&v0);
    sub_02018368(&v1);

    ov97_022376FC(param0->unk_00, 0, 2, 0xF000, 0x0);
    G2_SetBG0Priority(2);
    sub_02019690(0, 32, 0, 81);

    ov97_022376FC(param0->unk_00, 1, 1, 0xD800, 0x8000);
    G2_SetBG1Priority(1);
    sub_02019690(1, 32, 0, 81);

    ov97_022376FC(param0->unk_00, 2, 2, 0xE000, 0x0);
    G2_SetBG2Priority(0);
    sub_02019690(2, 32, 0, 81);

    Text_ResetAllPrinters();
    Font_LoadTextPalette(0, 1 * 32, 81);
    Font_LoadTextPalette(0, 0 * 32, 81);

    *((u16 *)HW_BG_PLTT + 0) = ((0 & 31) << 10 | (0 & 31) << 5 | (0 & 31));
    *((u16 *)HW_BG_PLTT + 31) = ((26 & 31) << 10 | (26 & 31) << 5 | (26 & 31));

    sub_0200DAA4(param0->unk_00, 0, 1, 2, 0, 81);
    sub_0200DAA4(param0->unk_00, 0, (1 + 9), 3, 1, 81);

    *((u16 *)HW_BG_PLTT + 33) = ((26 & 31) << 10 | (26 & 31) << 5 | (26 & 31));
}

static void ov97_0222B404(UnkStruct_0222AE60 *param0)
{
    ov97_02237A20();
    ov97_02237A74();
    ov97_02237B0C(116, 43, 40, 42, 41, 0);

    param0->unk_168[0] = ov97_02237D14(0, param0->unk_168[0], HW_LCD_WIDTH / 2, 8, 0);
    CellActor_SetDrawFlag(param0->unk_168[0], 0);

    param0->unk_168[1] = ov97_02237D14(0, param0->unk_168[1], HW_LCD_WIDTH / 2, HW_LCD_HEIGHT - 8, 1);
    CellActor_SetDrawFlag(param0->unk_168[1], 0);
}

static void ov97_0222B46C(UnkStruct_0222AE60 *param0)
{
    sub_02006E84(116, 45, 0, 4 * 32, 32 * 1, 81);
    sub_02006E3C(116, 44, param0->unk_00, 2, 0x380, 2 * 32 * 0x20, 0, 81);
}

static void ov97_0222B4AC(UnkStruct_0222AE60 *param0, int param1, int param2, int param3)
{
    u16 *v0 = (u16 *)sub_02019FE4(param0->unk_00, 2);
    int v1 = ((4 << 12) + 0x380 + 0);

    if (param3 == 2) {
        v1 = ((4 << 12) + 0x380 + 0) + 2;
    }

    v0[param2 * 32 + param1 + 0] = v1 + 0;
    v0[param2 * 32 + param1 + 1] = v1 + 1;

    param2++;

    v0[param2 * 32 + param1 + 0] = v1 + 8;
    v0[param2 * 32 + param1 + 1] = v1 + 9;

    sub_02019448(param0->unk_00, 2);
}

static void ov97_0222B4FC(UnkStruct_0222AE60 *param0, int param1, int param2)
{
    u16 *v0 = (u16 *)sub_02019FE4(param0->unk_00, 2);

    v0[param2 * 32 + param1 + 0] = ((4 << 12) + 0x380 + 0) + 4;
    v0[param2 * 32 + param1 + 1] = ((4 << 12) + 0x380 + 0) + 4;

    param2++;

    v0[param2 * 32 + param1 + 0] = ((4 << 12) + 0x380 + 0) + 4;
    v0[param2 * 32 + param1 + 1] = ((4 << 12) + 0x380 + 0) + 4;

    sub_02019448(param0->unk_00, 2);
}

static void ov97_0222B53C(Window *param0, MessageLoader *param1, StringTemplate *param2, TextColor param3, u32 param4, int param5)
{
    int v0, v1;
    Strbuf *v2;

    v2 = MessageUtil_ExpandedStrbuf(param2, param1, param4, 81);
    v0 = Font_CalcStrbufWidth(FONT_SYSTEM, v2, Font_GetAttribute(FONT_SYSTEM, FONTATTR_LETTER_SPACING));
    v1 = sub_0201C294(param0) * 8 - (v0 + 32);

    Text_AddPrinterWithParamsAndColor(param0, FONT_SYSTEM, v2, v1, param5, TEXT_SPEED_NO_TRANSFER, param3, NULL);
    Strbuf_Free(v2);
}

static void ov97_0222B590(StringTemplate *param0, int param1)
{
    int v0, v1;

    if (param1 >= 100) {
        v0 = 3;
        v1 = 0;
    } else if (param1 >= 10) {
        v0 = 3;
        v1 = 1;
    } else {
        v0 = 3 - 1;
        v1 = 1;
    }

    StringTemplate_SetNumber(param0, 0, param1, v0, v1, 1);
}

static BOOL ov97_0222B5C0(void *param0, int param1, UnkStruct_ov97_02237808 *param2, int param3)
{
    int v0, v1, v2;
    Strbuf *v3;
    StringTemplate *v4;
    MessageLoader *v5;
    UnkStruct_0222AE60 *v6 = (UnkStruct_0222AE60 *)param0;
    TextColor v7;

    v5 = MessageLoader_Init(1, 26, 550, 81);
    v4 = StringTemplate_Default(81);

    if (TrainerInfo_Gender(v6->unk_0C) == 1) {
        v7 = TEXT_COLOR(3, 4, 15);
    } else {
        v7 = TEXT_COLOR(7, 8, 15);
    }

    ov97_0223795C(v6->unk_00, param2, 3, param3, Unk_ov97_0223E014[param1].unk_08);

    for (v0 = 1; v0 < sizeof(Unk_ov97_0223DF40) / sizeof(u32); v0++) {
        if ((v0 == 4) && (v6->unk_4C == 0)) {
            continue;
        }

        v3 = MessageUtil_ExpandedStrbuf(v4, v5, Unk_ov97_0223DF40[v0], 81);
        Text_AddPrinterWithParamsAndColor(param2->unk_10, FONT_SYSTEM, v3, 32, v0 * 16, TEXT_SPEED_NO_TRANSFER, v7, NULL);
        Strbuf_Free(v3);
    }

    StringTemplate_SetPlayerName(v4, 0, v6->unk_0C);
    ov97_0222B53C(param2->unk_10, v5, v4, v7, 16, 16 * 1);
    ov97_0222B590(v4, PlayTime_GetHours(v6->playTime));

    StringTemplate_SetNumber(v4, 1, PlayTime_GetMinutes(v6->playTime), 2, 2, 1);
    ov97_0222B53C(param2->unk_10, v5, v4, v7, 17, 16 * 2);

    StringTemplate_SetNumber(v4, 0, v6->unk_50, 1, 0, 1);
    ov97_0222B53C(param2->unk_10, v5, v4, v7, 19, 16 * 3);

    if (v6->unk_4C) {
        ov97_0222B590(v4, sub_02026E48(v6->unk_08));
        ov97_0222B53C(param2->unk_10, v5, v4, v7, 18, 16 * 4);
    }

    Window_Show(param2->unk_10, 0, param2->unk_38, param2->unk_3C);

    v6->unk_DC[param1] = Unk_ov97_0223E014[param1].unk_00;

    StringTemplate_Free(v4);
    MessageLoader_Free(v5);

    return 1;
}

static BOOL ov97_0222B768(void *param0, int param1, UnkStruct_ov97_02237808 *param2, int param3)
{
    int v0;
    UnkStruct_0222AE60 *v1 = (UnkStruct_0222AE60 *)param0;

    if (v1->unk_24 == 0) {
        return 0;
    }

    switch (v1->unk_24 - 1) {
    case 0:
        v0 = 4;
        break;
    case 1:
        v0 = 5;
        break;
    case 2:
        v0 = 6;
        break;
    case 3:
        v0 = 7;
        break;
    case 4:
        v0 = 8;
        break;
    }

    ov97_0223795C(v1->unk_00, param2, 3, param3, v0);
    ov97_0222B4FC(v1, 26, param3);

    v1->unk_DC[param1] = Unk_ov97_0223E014[param1].unk_00;

    return 1;
}

static BOOL ov97_0222B7DC(void *param0, int param1, UnkStruct_ov97_02237808 *param2, int param3)
{
    UnkStruct_0222AE60 *v0 = (UnkStruct_0222AE60 *)param0;

    if (v0->unk_34 == 0) {
        if (sub_0202DEC4(v0->unk_14) == 1) {
            v0->unk_34 = 1;
        }

        if (sub_02025D64(sub_02025CCC(v0->unk_04)) == 1) {
            v0->unk_34 = 1;
        }

        ov97_02237520(81);

        if (ov97_02237624()) {
            v0->unk_34 = 1;
            ov97_02238400(1);
        }
    }

    if (v0->unk_34 == 1) {
        if (v0->unk_4C == 0) {
            v0->unk_34 = 0;
        }
    }

    if (v0->unk_34 == 1) {
        ov97_0223795C(v0->unk_00, param2, 3, param3, Unk_ov97_0223E014[param1].unk_08);
        ov97_0222B4FC(v0, 26, param3);

        v0->unk_DC[param1] = Unk_ov97_0223E014[param1].unk_00;
        v0->unk_38 |= 0x1;

        sub_0202DED4(v0->unk_14);
        return 1;
    }

    return 0;
}

static BOOL ov97_0222B888(void *param0, int param1, UnkStruct_ov97_02237808 *param2, int param3)
{
    UnkStruct_0222AE60 *v0 = (UnkStruct_0222AE60 *)param0;

    if ((v0->unk_2C == 1) && (v0->unk_4C == 1)) {
        ov97_0223795C(v0->unk_00, param2, 3, param3, Unk_ov97_0223E014[param1].unk_08);
        ov97_0222B4AC(v0, 26, param3, 1);

        v0->unk_FC[param1] = 1;
        v0->unk_DC[param1] = Unk_ov97_0223E014[param1].unk_00;
        v0->unk_38 |= 0x2;

        return 1;
    }

    return 0;
}

static BOOL ov97_0222B8E4(void *param0, int param1, UnkStruct_ov97_02237808 *param2, int param3)
{
    UnkStruct_0222AE60 *v0 = (UnkStruct_0222AE60 *)param0;

    if (v0->unk_30 == 1) {
        ov97_0223795C(v0->unk_00, param2, 3, param3, Unk_ov97_0223E014[param1].unk_08);
        v0->unk_FC[param1] = 1;

        ov97_0222B4AC(v0, 26, param3, 1);
        v0->unk_DC[param1] = Unk_ov97_0223E014[param1].unk_00;
        return 1;
    }

    return 0;
}

static BOOL ov97_0222B934(void *param0, int param1, UnkStruct_ov97_02237808 *param2, int param3)
{
    UnkStruct_0222AE60 *v0 = (UnkStruct_0222AE60 *)param0;

    ov97_0223795C(v0->unk_00, param2, 3, param3, Unk_ov97_0223E014[param1].unk_08);
    v0->unk_FC[param1] = 2;

    ov97_0222B4AC(v0, 26, param3, 2);
    v0->unk_DC[param1] = Unk_ov97_0223E014[param1].unk_00;

    return 1;
}

static BOOL ov97_0222B978(void *param0, int param1, UnkStruct_ov97_02237808 *param2, int param3)
{
    UnkStruct_0222AE60 *v0 = (UnkStruct_0222AE60 *)param0;

    ov97_0223795C(v0->unk_00, param2, 3, param3, Unk_ov97_0223E014[param1].unk_08);
    v0->unk_FC[param1] = 0;

    ov97_0222B4FC(v0, 26, param3);
    v0->unk_DC[param1] = Unk_ov97_0223E014[param1].unk_00;

    return 1;
}

static BOOL ov97_0222B9BC(UnkStruct_0222AE60 *param0)
{
    UnkStruct_ov97_0223E014 *v0;
    UnkStruct_ov97_02237808 v1;
    int v2, v3, v4;

    v4 = 0;
    v3 = 1;

    param0->unk_20 = ((1 + 9) + 9);

    for (v2 = 0; v2 < (sizeof(Unk_ov97_0223E014) / sizeof(UnkStruct_ov97_0223E014)); v2++) {
        v0 = &Unk_ov97_0223E014[v2];

        ov97_02237808(&v1, &param0->unk_5C[v2], 1, 550, 1, 2);
        ov97_02237858(&v1, 26, v0->unk_04, param0->unk_20);

        if (v0->unk_0C) {
            if (param0->unk_DC[v2]) {
                sub_0201C2AC(v1.unk_10, 3);
                sub_0201C2B0(v1.unk_10, v3);
                Window_Show(v1.unk_10, 0, v1.unk_38, v1.unk_3C);

                if (param0->unk_FC[v2]) {
                    ov97_0222B4AC(param0, 26, v3, param0->unk_FC[v2]);
                } else {
                    ov97_0222B4FC(param0, 26, v3);
                }

                v3 += v0->unk_04 + 2;
                v4 = 1;
            } else if (v0->unk_0C(param0, v2, &v1, v3) == 1) {
                v3 += v0->unk_04 + 2;
                v4 = 1;
            }
        } else {
            ov97_0223795C(param0->unk_00, &v1, 3, v3, v0->unk_08);
            param0->unk_DC[v2] = v0->unk_00;
            v3 += v0->unk_04 + 2;
        }

        param0->unk_20 += 26 * v0->unk_04;
    }

    return v4;
}

static void ov97_0222BAD8(UnkStruct_0222AE60 *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < sizeof(Unk_ov97_0223E014) / sizeof(UnkStruct_ov97_0223E014); v0++) {
        if (BGL_WindowAdded(&param0->unk_5C[v0]) == 0) {
            continue;
        }

        if (v0 == param1) {
            Window_Show(&param0->unk_5C[v0], 1, (1 + 9), 3);
            sub_02019E2C(param0->unk_00, 0, sub_0201C29C(&param0->unk_5C[v0]), sub_0201C2A0(&param0->unk_5C[v0]), sub_0201C294(&param0->unk_5C[v0]), sub_0201C298(&param0->unk_5C[v0]), 0);
        } else {
            Window_Show(&param0->unk_5C[v0], 1, 1, 2);
            sub_02019E2C(param0->unk_00, 0, sub_0201C29C(&param0->unk_5C[v0]), sub_0201C2A0(&param0->unk_5C[v0]), sub_0201C294(&param0->unk_5C[v0]), sub_0201C298(&param0->unk_5C[v0]), 1);
        }
    }

    sub_02019448(param0->unk_00, 0);
}

static void ov97_0222BB88(UnkStruct_0222AE60 *param0, int param1)
{
    int v0 = param0->unk_54;

    while (TRUE) {
        v0 += param1;

        if (v0 == -1) {
            v0 = 0;
        }

        if (v0 == (sizeof(Unk_ov97_0223E014) / sizeof(UnkStruct_ov97_0223E014))) {
            v0 = (sizeof(Unk_ov97_0223E014) / sizeof(UnkStruct_ov97_0223E014)) - 1;
        }

        if (v0 == param0->unk_54) {
            break;
        }

        if (param0->unk_DC[v0]) {
            Sound_PlayEffect(1500);
            break;
        }
    }

    param0->unk_54 = v0;
}

static void ov97_0222BBC8(UnkStruct_0222AE60 *param0)
{
    int v0, v1, v2;

    v0 = (sub_0201C2A0(&param0->unk_5C[param0->unk_54]) - 1) * 8;
    v1 = (sub_0201C298(&param0->unk_5C[param0->unk_54]) + 2) * 8;
    v2 = param0->unk_120 / FX32_ONE;

    if (v2 > v0) {
        param0->unk_120 = v0 * FX32_ONE;
    }

    if (v2 + HW_LCD_HEIGHT <= v0) {
        param0->unk_120 = ((v0 + v1) - HW_LCD_HEIGHT) * FX32_ONE;
    }
}

static void ov97_0222BC1C(UnkStruct_0222AE60 *param0)
{
    int v0, v1, v2;
    int v3, v4, v5;

    v1 = v2 = 0;
    v5 = param0->unk_120 / FX32_ONE;

    for (v0 = 0; v0 < (sizeof(Unk_ov97_0223E014) / sizeof(UnkStruct_ov97_0223E014)); v0++) {
        if (BGL_WindowAdded(&param0->unk_5C[v0]) == 0) {
            continue;
        }

        v3 = (sub_0201C2A0(&param0->unk_5C[v0]) - 1) * 8;
        v4 = (sub_0201C298(&param0->unk_5C[v0]) + 2) * 8;

        if (v5 > v3) {
            v1 = 1;
        }

        if (v5 + HW_LCD_HEIGHT <= v3) {
            v2 = 1;
        }
    }

    CellActor_SetDrawFlag(param0->unk_168[0], v1);
    CellActor_SetDrawFlag(param0->unk_168[1], v2);
}

static void ov97_0222BC9C(OverlayManager *param0)
{
    int v0;
    UnkStruct_0222AE60 *v1 = OverlayManager_Data(param0);

    if (v1->unk_168[0] || v1->unk_168[1]) {
        CellActor_Delete(v1->unk_168[0]);
        CellActor_Delete(v1->unk_168[1]);
        ov97_02237DA0();
    }

    for (v0 = 0; v0 < (sizeof(Unk_ov97_0223E014) / sizeof(UnkStruct_ov97_0223E014)); v0++) {
        if (v1->unk_5C[v0].unk_00) {
            sub_0201ACF4(&v1->unk_5C[v0]);
            BGL_DeleteWindow(&v1->unk_5C[v0]);
        }
    }

    sub_02019044(v1->unk_00, 0);
    sub_02019044(v1->unk_00, 1);
    sub_02019044(v1->unk_00, 2);
    Heap_FreeToHeap(v1->unk_00);
    SetMainCallback(NULL, NULL);
}

u16 Unk_ov97_0223DF70[] = {
    0x5381,
    0x5383,
    0x5385,
    0x5387,
    0x5389,
    0x538B,
    0x538D,
    0x538F,
    0x5391,
    0x5393,
    0x5395,
    0x5397,
    0x5399,
    0x539B,
    0x539D,
    0x539F,
    0x539D,
    0x539B,
    0x5399,
    0x5397,
    0x5395,
    0x5393,
    0x5391,
    0x538F,
    0x538D,
    0x538B,
    0x5389,
    0x5387,
    0x5385,
    0x5383,
    0x0
};

static void ov97_0222BD14(UnkStruct_0222AE60 *param0)
{
    u16 *v0 = (u16 *)0x500006C;

    if (Unk_ov97_0223DF70[param0->unk_170] == 0) {
        param0->unk_170 = 0;
    }

    *v0 = Unk_ov97_0223DF70[param0->unk_170++];
}

static void ov97_0222BD48(void *param0)
{
    sub_0201DCAC();
    sub_0200A858();
    sub_0201C2B8((BGL *)param0);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static int ov97_0222BD70(OverlayManager *param0, int *param1)
{
    UnkStruct_0222AE60 *v0;

    Heap_Create(3, 81, 0x40000);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_0222AE60), 81);
    memset(v0, 0, sizeof(UnkStruct_0222AE60));
    v0->unk_00 = sub_02018340(81);

    sub_0200F344(0, 0x0);
    sub_0200F344(1, 0x0);

    v0->unk_04 = ((UnkStruct_0203CC84 *)OverlayManager_Args(param0))->unk_08;
    v0->unk_14 = SaveData_MysteryGift(v0->unk_04);
    v0->unk_11C = FX32_ONE * 0;
    v0->unk_120 = FX32_ONE * 0;
    v0->unk_0C = SaveData_GetTrainerInfo(v0->unk_04);
    v0->unk_08 = SaveData_Pokedex(v0->unk_04);
    v0->playTime = SaveData_GetPlayTime(v0->unk_04);
    v0->unk_4C = sub_02027520(v0->unk_08);
    v0->unk_50 = TrainerInfo_BadgeCount(v0->unk_0C);
    v0->unk_12C = 15;

    ov97_02237694(81);

    if (!SaveData_DataExists(v0->unk_04)) {
        v0->unk_14C = 1;
    }

    sub_020053CC(0);
    sub_02004234(0);

    return 1;
}

static int ov97_0222BE24(OverlayManager *param0, int *param1)
{
    int v0;
    UnkStruct_0222AE60 *v1 = OverlayManager_Data(param0);

    v1->unk_18++;
    CTRDG_IsExisting();

    if (ov97_0222B07C(v1) == 1) {
        ov97_0222AF8C(v1);
        ov97_0222B25C(v1);
        return 0;
    }

    ov97_0222BD14(v1);

    switch (*param1) {
    case 0:
        ov97_0222B2EC(v1);
        *param1 = 1;
        break;
    case 1:
        if (ov97_0222AE60(v1) == 0) {
            *param1 = 3;
        } else {
            ov97_02237790(1, 2, param1, 8);
            *((u16 *)HW_BG_PLTT + 0) = ((31 & 31) << 10 | (12 & 31) << 5 | (12 & 31));
        }
        break;
    case 2:
        if (ov97_0222AE64(v1) == 0) {
            ov97_02237790(0, 3, param1, 8);
        }
        break;
    case 3:
        v1->unk_124 = 12;

        if (v1->unk_14C == 1) {
            v1->unk_58 = 2;
            ov97_02237790(0, 7, param1, 8);
        } else {
            ov97_0222AF1C(v1);
            *param1 = 4;
        }
        break;
    case 4:
        ov97_0222B404(v1);
        ov97_0222B46C(v1);

        SetMainCallback(ov97_0222BD48, v1->unk_00);

        ov97_0222B9BC(v1);
        ov97_0222BAD8(v1, v1->unk_54);
        ov97_02237790(1, 5, param1, 8);

        *((u16 *)HW_BG_PLTT + 0) = ((31 & 31) << 10 | (12 & 31) << 5 | (12 & 31));
        v1->unk_124 = 10;
        break;
    case 5:
        if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
                Sound_PlayEffect(1500);
                v1->unk_58 = v1->unk_DC[v1->unk_54];

                if (v1->unk_58 == 5) {
                    if (CTRDG_IsPulledOut() == TRUE) {
                        if (v1->unk_124 != 12) {
                            sub_02037D84();
                        }

                        sub_0209A8E0(81);
                    }
                }
            } else {
                Sound_PlayEffect(1500);
                v1->unk_58 = 0;
                ov97_02237784(1);
            }

            if (v1->unk_58 == 2) {
                v1->unk_40 |= 0x80;
                v1->unk_130 = 1;
                *param1 = 6;
            } else {
                if ((v1->unk_58 == 6) || (v1->unk_58 == 7)) {
                    ov97_02237784(1);
                }

                ov97_02237790(0, 7, param1, 8);
            }

            if (v1->unk_124 == 13) {
                v1->unk_124 = 14;
            }
            break;
        }

        if (v1->unk_48 == 1) {
            ov97_0222B9BC(v1);
            v1->unk_48 = 0;
            break;
        }

        if (gCoreSys.pressedKeys & PAD_KEY_UP) {
            ov97_0222BB88(v1, -1);
        }

        if (gCoreSys.pressedKeys & PAD_KEY_DOWN) {
            ov97_0222BB88(v1, 1);
        }

        ov97_0222BAD8(v1, v1->unk_54);
        ov97_0222BBC8(v1);
        ov97_0222BC1C(v1);

        if ((*param1 == 5) && (v1->unk_150 == 1)) {
            v1->unk_150 = 0;
            v1->unk_130 = 1;
        }
        break;
    case 6:
        if (v1->unk_12C == 15) {
            if (v1->unk_138 & PAD_BUTTON_B) {
                *param1 = 5;
            } else {
                ov97_02237790(0, 7, param1, 8);
            }
        }
        break;
    case 7:
        ov97_0222BC9C(param0);
        return 1;
        break;
    case 8:
        ov97_022377F0(param1);
        break;
    case 9:
        return 1;
        break;
    }

    ov97_0222AF8C(v1);
    ov97_0222B25C(v1);
    ov97_02237CA0();

    return 0;
}

extern const OverlayManagerTemplate Unk_ov97_0223D71C;
extern const OverlayManagerTemplate Unk_ov97_0223D864;
extern const OverlayManagerTemplate Unk_ov97_0223D6BC;
extern const OverlayManagerTemplate Unk_020F6DF0;
extern const OverlayManagerTemplate Unk_ov98_02249BAC;

static void ov97_0222C094(UnkStruct_0222AE60 *param0)
{
    switch (param0->unk_58) {
    case 1:
        sub_02000EC4(FS_OVERLAY_ID(overlay57), &Unk_ov57_021D0F70);
        break;
    case 2:
        sub_02000EC4(FS_OVERLAY_ID(overlay57), &Unk_ov57_021D0F90);
        break;
    case 3:
        sub_02000EC4(FS_OVERLAY_ID(overlay97), &Unk_ov97_0223D71C);
        break;
    case 5:
        sub_02000EC4(FS_OVERLAY_ID(overlay97), &Unk_ov97_0223D864);
        break;
    case 4:
        sub_02000EC4(FS_OVERLAY_ID(overlay97), &Unk_ov97_0223D6BC);
        break;
    case 6:
        sub_020243E0("data/eoo.dat");
        break;
    case 7:
        sub_0200569C();
        sub_02000EC4(0xffffffff, &Unk_020F6DF0);
        break;
    case 8:
        sub_0200569C();
        sub_02000EC4(FS_OVERLAY_ID(overlay98), &Unk_ov98_02249BAC);
        break;
    case 0:
        sub_02000EC4(FS_OVERLAY_ID(overlay77), &Unk_ov77_021D742C);
        break;
    }
}

static int ov97_0222C150(OverlayManager *param0, int *param1)
{
    UnkStruct_0222AE60 *v0 = OverlayManager_Data(param0);

    ov97_0222C094(v0);

    OverlayManager_FreeData(param0);
    Heap_Destroy(81);

    ov97_02238400(0);

    return 1;
}

const OverlayManagerTemplate Unk_ov97_0223D674 = {
    ov97_0222BD70,
    ov97_0222BE24,
    ov97_0222C150,
    0xffffffff
};
