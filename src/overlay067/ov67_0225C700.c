#include "overlay067/ov67_0225C700.h"

#include <nitro.h>
#include <string.h>

#include "consts/game_records.h"

#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay061/struct_ov61_0222C3B0.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay065/struct_ov65_0222F6EC.h"
#include "overlay066/ov66_0222DDF0.h"
#include "overlay066/ov66_02231428.h"
#include "overlay066/ov66_022324F0.h"
#include "overlay066/struct_ov66_0222E71C_decl.h"
#include "overlay066/struct_ov66_02231024.h"
#include "overlay066/struct_ov66_02231300.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "core_sys.h"
#include "font.h"
#include "game_options.h"
#include "game_records.h"
#include "gx_layers.h"
#include "heap.h"
#include "inlines.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "rtc.h"
#include "save_player.h"
#include "savedata.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "unk_02001AF4.h"
#include "unk_020041CC.h"
#include "unk_02006E3C.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_020366A0.h"
#include "unk_020393C8.h"

typedef struct {
    StringTemplate *unk_00;
    MessageLoader *unk_04;
    Window unk_08;
    Strbuf *unk_18;
    Strbuf *unk_1C;
    u32 unk_20;
    void *unk_24;
    u32 unk_28;
    u32 unk_2C;
} UnkStruct_ov67_0225D210;

typedef struct {
    SaveData *unk_00;
    u32 unk_04;
    u32 unk_08;
    BGL *unk_0C;
    UnkStruct_ov67_0225D210 unk_10;
    UnkStruct_ov67_0225D210 unk_40;
    UnkStruct_ov67_0225D210 unk_70;
    UnkStruct_ov67_0225D210 unk_A0;
    UIControlData *unk_D0;
    UnkStruct_ov61_0222C3B0 unk_D4;
} UnkStruct_ov67_0225D154;

static void ov67_0225CE28(void *param0);
static void ov67_0225CE30(UnkStruct_ov67_0225D154 *param0, u32 param1);
static void ov67_0225D154(UnkStruct_ov67_0225D154 *param0);
static void ov67_0225D17C(UnkStruct_ov67_0225D154 *param0);
static void ov67_0225D188(UnkStruct_ov67_0225D210 *param0, BGL *param1, u32 param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8, SaveData *param9, u32 param10);
static void ov67_0225D210(UnkStruct_ov67_0225D210 *param0, u32 param1);
static void ov67_0225D294(UnkStruct_ov67_0225D210 *param0);
static void ov67_0225D2EC(UnkStruct_ov67_0225D210 *param0);
static void ov67_0225D310(UnkStruct_ov67_0225D210 *param0);
static void ov67_0225D3D0(UnkStruct_ov67_0225D210 *param0, u32 param1);
static void ov67_0225D330(UnkStruct_ov67_0225D210 *param0);
static void ov67_0225D37C(UnkStruct_ov67_0225D210 *param0, u32 param1);

static const UnkStruct_02099F80 Unk_ov67_0225D410 = {
    GX_VRAM_BG_128_A,
    GX_VRAM_BGEXTPLTT_NONE,
    GX_VRAM_SUB_BG_128_C,
    GX_VRAM_SUB_BGEXTPLTT_NONE,
    GX_VRAM_OBJ_128_B,
    GX_VRAM_OBJEXTPLTT_NONE,
    GX_VRAM_SUB_OBJ_NONE,
    GX_VRAM_SUB_OBJEXTPLTT_NONE,
    GX_VRAM_TEX_NONE,
    GX_VRAM_TEXPLTT_NONE
};

static const UnkStruct_ov84_0223BA5C Unk_ov67_0225D400 = {
    GX_DISPMODE_GRAPHICS,
    GX_BGMODE_0,
    GX_BGMODE_0,
    GX_BG0_AS_2D
};

static const u32 Unk_ov67_0225D3F4[3] = {
    0x0,
    0x1,
    0x4
};

static const UnkStruct_ov97_0222DB78 Unk_ov67_0225D438[3] = {
    {
        0x0,
        0x0,
        0x800,
        0x0,
        0x1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xe800,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        0x1,
        0x0,
        0x0,
        0x0,
    },
    {
        0x0,
        0x0,
        0x800,
        0x0,
        0x1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xe000,
        GX_BG_CHARBASE_0x10000,
        GX_BG_EXTPLTT_01,
        0x0,
        0x0,
        0x0,
        0x0,
    },
    {
        0x0,
        0x0,
        0x800,
        0x0,
        0x1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xe800,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        0x0,
        0x0,
        0x0,
        0x0,
    },
};

static const UnkStruct_ov61_0222C884 Unk_ov67_0225D3EC = {
    0x1,
    0x19,
    0xD,
    0x6,
    0x4,
    0xC,
    0x204
};

int ov67_0225C700(OverlayManager *param0, int *param1)
{
    UnkStruct_ov67_0225D154 *v0;
    UnkStruct_ov66_02231024 *v1;

    Heap_Create(3, 112, 0x20000);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov67_0225D154), 112);
    memset(v0, 0, sizeof(UnkStruct_ov67_0225D154));
    v1 = OverlayManager_Args(param0);

    v0->unk_00 = v1->unk_00;
    sub_02004550(11, 1175, 0);
    v1->unk_10 = 0;

    ov67_0225CE30(v0, 112);
    ov67_0225D188(&v0->unk_40, v0->unk_0C, 1, 674, 2, 19, 27, 4, ((1 + (18 + 12)) + 9), v0->unk_00, 112);
    ov67_0225D188(&v0->unk_70, v0->unk_0C, 1, 695, 2, 19, 27, 4, ((1 + (18 + 12)) + 9), v0->unk_00, 112);
    ov67_0225D188(&v0->unk_A0, v0->unk_0C, 0, 695, 4, 4, 23, 16, (((1 + (18 + 12)) + 9) + (27 * 4)), v0->unk_00, 112);
    ov67_0225D188(&v0->unk_10, v0->unk_0C, 1, 674, 5, 1, 22, 2, (((((1 + (18 + 12)) + 9) + (27 * 4)) + (23 * 16)) + (6 * 4)), v0->unk_00, 112);
    ov67_0225D37C(&v0->unk_10, 21);

    SetMainCallback(ov67_0225CE28, v0);
    DisableHBlank();

    return 1;
}

int ov67_0225C820(OverlayManager *param0, int *param1)
{
    UnkStruct_ov67_0225D154 *v0;
    UnkStruct_ov66_02231024 *v1;

    v0 = OverlayManager_Data(param0);
    v1 = OverlayManager_Args(param0);

    switch (*param1) {
    case 0:
        sub_0200F174(0, 1, 1, 0xffff, 6, 1, 112);
        (*param1)++;
        break;
    case 1:
        if (ScreenWipe_Done()) {
            (*param1)++;
        }
        break;
    case 2:
        if (v1->unk_08 == 0) {
            ov67_0225D210(&v0->unk_70, 17);
            v0->unk_D0 = sub_02002100(v0->unk_0C, &Unk_ov67_0225D3EC, (1 + (18 + 12)), 14, 112);
            (*param1)++;
        } else {
            (*param1) = 4;
        }
        break;
    case 3: {
        u32 v2;
        v2 = sub_02002114(v0->unk_D0, 112);

        switch (v2) {
        case 0:
            (*param1) = 4;
            break;
        case 0xfffffffe:
            ov67_0225D294(&v0->unk_40);
            (*param1) = 7;
            break;
        }
    } break;
    case 4: {
        UnkStruct_ov66_0222E71C *v3;

        v3 = ov66_0222E3BC(v1->unk_04);
        sub_0203878C(v0->unk_00, v3);
    }

        ov67_0225D210(&v0->unk_70, 23);
        ov67_0225D2EC(&v0->unk_70);
        (*param1)++;
        break;
    case 5:
        if (sub_020383E8() || sub_0203881C()) {
            ov67_0225D310(&v0->unk_70);
            (*param1) = 9;
        }

        if (sub_02038804() == 1) {
            ov66_0222F16C(v1->unk_04);
            (*param1)++;
        }
        break;
    case 6:
        if (sub_020383E8() || sub_0203881C()) {
            ov67_0225D310(&v0->unk_70);
            (*param1) = 9;
        }

        if (sub_02038294()) {
            ov67_0225D310(&v0->unk_70);

            {
                GameRecords *v4;

                v4 = SaveData_GetGameRecordsPtr(v0->unk_00);
                GameRecords_IncrementTrainerScore(v4, TRAINER_SCORE_EVENT_UNK_44);
            }

            {
                v1->unk_0C->unk_00 = GetTimestamp();
            }

            v1->unk_10 = 1;
            (*param1)++;
        }
        break;
    case 9: {
        UnkStruct_ov65_0222F6EC *v5;
        int v6, v7;

        if (sub_020383E8()) {
            v5 = sub_020382F8();
            v6 = ov66_022316F4(v5->unk_00, v5->unk_04);
            v7 = v5->unk_00;
        } else {
            v7 = ov66_022326DC();
            v7 = ov66_0223270C(v7);
            v6 = 32;
        }

        ov66_0222F198(v1->unk_04);
        ov67_0225D294(&v0->unk_40);
        ov67_0225D294(&v0->unk_70);
        ov67_0225D3D0(&v0->unk_A0, v7);
        ov67_0225D210(&v0->unk_A0, v6);
        (*param1)++;
    } break;
    case 10:
        if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
            int v8;
            int v9;

            if (sub_020383E8()) {
                UnkStruct_ov65_0222F6EC *v10 = sub_020382F8();

                v8 = ov66_02231718(v10->unk_00, v10->unk_04);

                if (v8 == 0) {
                    (*param1) = 11;
                } else {
                    (*param1) = 14;
                    break;
                }
            } else {
                (*param1) = 11;
            }
        }
        break;
    case 11:
        ov67_0225D294(&v0->unk_A0);
        ov67_0225D210(&v0->unk_40, 88);
        v0->unk_D0 = sub_02002100(v0->unk_0C, &Unk_ov67_0225D3EC, (1 + (18 + 12)), 14, 112);
        (*param1)++;
        break;
    case 12: {
        u32 v11;
        v11 = sub_02002114(v0->unk_D0, 112);

        switch (v11) {
        case 0:
            sub_020387E8();
            (*param1) = 13;
            break;
        case 0xfffffffe:
            (*param1) = 14;
            break;
        }
    } break;
    case 13:
        if (CommMan_IsInitialized() == 0) {
            (*param1) = 4;
        }
        break;
    case 14:
        ov67_0225D294(&v0->unk_40);
        ov67_0225D294(&v0->unk_70);
        ov67_0225D294(&v0->unk_A0);
        sub_020387E8();
        (*param1)++;
        break;
    case 15:
        if (CommMan_IsInitialized() == 0) {
            ov67_0225D294(&v0->unk_40);
            ov67_0225D294(&v0->unk_70);
            (*param1) = 7;
        }
        break;
    case 7:
        sub_0200F174(0, 0, 0, 0x0, 6, 1, 112);
        (*param1)++;
        break;
    case 8:
        if (ScreenWipe_Done()) {
            return 1;
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    inline_ov61_0222C0F8(&v0->unk_D4);

    return 0;
}

int ov67_0225CB1C(OverlayManager *param0, int *param1)
{
    UnkStruct_ov67_0225D154 *v0;

    v0 = OverlayManager_Data(param0);

    SetMainCallback(NULL, NULL);
    DisableHBlank();

    inline_ov61_0222C160(&v0->unk_D4);

    ov67_0225D330(&v0->unk_40);
    ov67_0225D330(&v0->unk_70);
    ov67_0225D330(&v0->unk_A0);
    ov67_0225D330(&v0->unk_10);
    ov67_0225D154(v0);

    inline_ov96_0223BDEC(&v0->unk_D4, 0);

    Heap_FreeToHeap(v0);
    Heap_Destroy(112);

    return 1;
}

int ov67_0225CB8C(OverlayManager *param0, int *param1)
{
    UnkStruct_ov67_0225D154 *v0;
    UnkStruct_ov66_02231300 *v1;

    Heap_Create(3, 112, 0x20000);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov67_0225D154), 112);
    memset(v0, 0, sizeof(UnkStruct_ov67_0225D154));

    v1 = OverlayManager_Args(param0);
    v0->unk_00 = v1->unk_00;

    ov67_0225CE30(v0, 112);
    ov67_0225D188(&v0->unk_40, v0->unk_0C, 1, 695, 2, 19, 27, 4, ((1 + (18 + 12)) + 9), v0->unk_00, 112);
    ov67_0225D188(&v0->unk_A0, v0->unk_0C, 0, 695, 4, 4, 23, 16, (((1 + (18 + 12)) + 9) + (27 * 4)), v0->unk_00, 112);
    ov67_0225D188(&v0->unk_10, v0->unk_0C, 1, 674, 5, 1, 22, 2, (((((1 + (18 + 12)) + 9) + (27 * 4)) + (23 * 16)) + (6 * 4)), v0->unk_00, 112);
    ov67_0225D37C(&v0->unk_10, 21);

    sub_02039734();
    SetMainCallback(ov67_0225CE28, v0);
    DisableHBlank();

    return 1;
}

int ov67_0225CC6C(OverlayManager *param0, int *param1)
{
    UnkStruct_ov67_0225D154 *v0;
    UnkStruct_ov66_02231300 *v1;

    v0 = OverlayManager_Data(param0);
    v1 = OverlayManager_Args(param0);

    switch (*param1) {
    case 0:
        sub_0200F174(0, 1, 1, 0xffff, 6, 1, 112);
        (*param1)++;
        break;
    case 1:
        if (ScreenWipe_Done()) {
            (*param1) = 2;
        }
        break;
    case 2:
        ov67_0225D210(&v0->unk_40, 26);

        if (sub_020383E8() || sub_0203881C()) {
            (*param1) = 5;
            ov67_0225D2EC(&v0->unk_40);
        } else {
            (*param1) = 3;
            ov67_0225D2EC(&v0->unk_40);
        }
        break;
    case 3:
        ov66_02232C8C();

        v0->unk_08 = (30 * 30);
        (*param1) = 4;
        break;
    case 4:
        if ((v0->unk_08 - 1) >= 0) {
            v0->unk_08--;
        }

        if (ov66_02232CB8() || (v0->unk_08 == 0)) {
            (*param1) = 5;
        }
        break;
    case 5:
        sub_020387E8();
        (*param1) = 6;
        break;
    case 6:
        if (CommMan_IsInitialized() == 0) {
            ov67_0225D310(&v0->unk_70);
            ov66_0222F198(v1->unk_04);
            (*param1) = 7;
        }
        break;
    case 7:
        ov67_0225D210(&v0->unk_40, 27);
        v0->unk_08 = (3 * 30);
        (*param1) = 8;
        break;
    case 8:
        if ((v0->unk_08 - 1) >= 0) {
            v0->unk_08--;
        }

        if (v0->unk_08 == 0) {
            (*param1) = 9;
        }
        break;
    case 9:
        sub_0200F174(0, 0, 0, 0x0, 6, 1, 112);
        (*param1)++;
        break;
    case 10:
        if (ScreenWipe_Done()) {
            ov67_0225D310(&v0->unk_40);
            return 1;
        }
        break;
    }

    inline_ov61_0222C0F8(&v0->unk_D4);

    return 0;
}

int ov67_0225CDC0(OverlayManager *param0, int *param1)
{
    UnkStruct_ov67_0225D154 *v0;

    v0 = OverlayManager_Data(param0);

    SetMainCallback(NULL, NULL);
    DisableHBlank();

    inline_ov61_0222C160(&v0->unk_D4);

    ov67_0225D330(&v0->unk_40);
    ov67_0225D330(&v0->unk_A0);
    ov67_0225D330(&v0->unk_10);
    ov67_0225D154(v0);

    inline_ov96_0223BDEC(&v0->unk_D4, 0);

    Heap_FreeToHeap(v0);
    Heap_Destroy(112);

    return 1;
}

static void ov67_0225CE28(void *param0)
{
    UnkStruct_ov67_0225D154 *v0 = param0;

    ov67_0225D17C(v0);
    inline_ov61_0222C1FC(&v0->unk_D4);
}

static void ov67_0225CE30(UnkStruct_ov67_0225D154 *param0, u32 param1)
{
    G2_BlendNone();
    G2S_BlendNone();

    GXLayers_SetBanks(&Unk_ov67_0225D410);

    {
        sub_0201975C(Unk_ov67_0225D3F4[0], 0);
    }

    {
        int v0;

        sub_02018368(&Unk_ov67_0225D400);
        param0->unk_0C = sub_02018340(param1);

        for (v0 = 0; v0 < 3; v0++) {
            sub_020183C4(param0->unk_0C, Unk_ov67_0225D3F4[v0], &Unk_ov67_0225D438[v0], 0);
            sub_02019690(Unk_ov67_0225D3F4[v0], 32, 0, param1);
            sub_02019EBC(param0->unk_0C, Unk_ov67_0225D3F4[v0]);
        }
    }

    {
        Options *v1;
        u8 v2;

        v1 = SaveData_Options(param0->unk_00);
        v2 = Options_Frame(v1);

        Font_LoadTextPalette(0, 12 * 32, param1);
        Font_LoadScreenIndicatorsPalette(0, 11 * 32, param1);
        sub_0200DAA4(param0->unk_0C, Unk_ov67_0225D3F4[1], (1 + (18 + 12)), 14, 0, param1);
        sub_0200DD0C(param0->unk_0C, Unk_ov67_0225D3F4[1], 1, 13, v2, param1);
    }

    {
        sub_02006E84(92, 3, 0, 0, 11 * 32, param1);
        sub_02006E84(92, 3, 4, 0, 11 * 32, param1);
        sub_02006E3C(92, 2, param0->unk_0C, Unk_ov67_0225D3F4[0], 0, 0, 0, param1);
        sub_02006E3C(92, 10, param0->unk_0C, Unk_ov67_0225D3F4[2], 0, 0, 0, param1);
        sub_02006E60(92, 5, param0->unk_0C, Unk_ov67_0225D3F4[0], 0, 0, 0, param1);
        sub_02006E60(92, 11, param0->unk_0C, Unk_ov67_0225D3F4[2], 0, 0, 0, param1);
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

    {
        NARC *v3;

        v3 = NARC_ctor(NARC_INDEX_DATA__WIFIP2PMATCH, param1);

        inline_ov61_0222C3B0(&param0->unk_D4, v3, 4, param1);

        NARC_dtor(v3);
    }
}

static void ov67_0225D154(UnkStruct_ov67_0225D154 *param0)
{
    {
        int v0;

        for (v0 = 0; v0 < 3; v0++) {
            sub_02019044(param0->unk_0C, Unk_ov67_0225D3F4[v0]);
        }

        Heap_FreeToHeap(param0->unk_0C);
    }
}

static void ov67_0225D17C(UnkStruct_ov67_0225D154 *param0)
{
    sub_0201C2B8(param0->unk_0C);
}

static void ov67_0225D188(UnkStruct_ov67_0225D210 *param0, BGL *param1, u32 param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8, SaveData *param9, u32 param10)
{
    param0->unk_00 = StringTemplate_Default(param10);
    param0->unk_04 = MessageLoader_Init(0, 26, param3, param10);
    param0->unk_18 = Strbuf_Init(256, param10);
    param0->unk_1C = Strbuf_Init(256, param10);
    param0->unk_20 = param2;
    param0->unk_28 = Options_TextFrameDelay(SaveData_Options(param9));
    param0->unk_2C = 0;

    BGL_AddWindow(param1, &param0->unk_08, Unk_ov67_0225D3F4[1], param4, param5, param6, param7, 11, param8);
}

static void ov67_0225D210(UnkStruct_ov67_0225D210 *param0, u32 param1)
{
    if (Text_IsPrinterActive(param0->unk_2C)) {
        Text_RemovePrinter(param0->unk_2C);
    }

    BGL_FillWindow(&param0->unk_08, 15);
    MessageLoader_GetStrbuf(param0->unk_04, param1, param0->unk_1C);
    StringTemplate_Format(param0->unk_00, param0->unk_18, param0->unk_1C);
    Text_AddPrinterWithParams(&param0->unk_08, FONT_MESSAGE, param0->unk_18, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);

    if (param0->unk_20 == 0) {
        Window_Show(&param0->unk_08, 1, (1 + (18 + 12)), 14);
    } else {
        sub_0200E060(&param0->unk_08, 1, 1, 13);
    }

    sub_0201A9A4(&param0->unk_08);
}

static void ov67_0225D294(UnkStruct_ov67_0225D210 *param0)
{
    if (Text_IsPrinterActive(param0->unk_2C)) {
        Text_RemovePrinter(param0->unk_2C);
    }

    if (param0->unk_20 == 0) {
        Window_Clear(&param0->unk_08, 1);
        sub_0201AD10(&param0->unk_08);
    } else {
        if (param0->unk_24) {
            ov67_0225D310(param0);
        }

        sub_0200E084(&param0->unk_08, 1);
        sub_0201AD10(&param0->unk_08);
    }
}

static void ov67_0225D2EC(UnkStruct_ov67_0225D210 *param0)
{
    if (param0->unk_20 == 1) {
        GF_ASSERT(param0->unk_24 == NULL);
        param0->unk_24 = sub_0200E7FC(&param0->unk_08, 1);
    }
}

static void ov67_0225D310(UnkStruct_ov67_0225D210 *param0)
{
    if (param0->unk_20 == 1) {
        GF_ASSERT(param0->unk_24 != NULL);
        DeleteWaitDial(param0->unk_24);
        param0->unk_24 = NULL;
    }
}

static void ov67_0225D330(UnkStruct_ov67_0225D210 *param0)
{
    if (Text_IsPrinterActive(param0->unk_2C)) {
        Text_RemovePrinter(param0->unk_2C);
    }

    if (param0->unk_24) {
        ov67_0225D310(param0);
    }

    BGL_DeleteWindow(&param0->unk_08);
    Strbuf_Free(param0->unk_1C);
    Strbuf_Free(param0->unk_18);
    MessageLoader_Free(param0->unk_04);
    StringTemplate_Free(param0->unk_00);
}

static void ov67_0225D37C(UnkStruct_ov67_0225D210 *param0, u32 param1)
{
    BGL_FillWindow(&param0->unk_08, 0);
    MessageLoader_GetStrbuf(param0->unk_04, param1, param0->unk_1C);
    StringTemplate_Format(param0->unk_00, param0->unk_18, param0->unk_1C);
    Text_AddPrinterWithParamsAndColor(&param0->unk_08, FONT_MESSAGE, param0->unk_18, Font_CalcCenterAlignment(FONT_SYSTEM, param0->unk_18, 0, 0xB0), 0, TEXT_SPEED_INSTANT, TEXT_COLOR(15, 14, 0), 0);
}

static void ov67_0225D3D0(UnkStruct_ov67_0225D210 *param0, u32 param1)
{
    StringTemplate_SetNumber(param0->unk_00, 0, param1, 5, 2, 1);
}
