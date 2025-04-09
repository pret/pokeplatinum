#include "overlay106/ov106_02241AE0.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200C440_decl.h"
#include "struct_defs/struct_02099F80.h"

#include "applications/pokemon_summary_screen/main.h"
#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_0223AF58.h"
#include "overlay104/struct_ov104_02235208.h"
#include "overlay106/ov106_02243310.h"
#include "overlay106/ov106_022435FC.h"
#include "overlay106/ov106_022436E0.h"
#include "overlay106/struct_ov106_02243118_decl.h"
#include "overlay106/struct_ov106_02243310.h"
#include "overlay106/struct_ov106_02243650_decl.h"

#include "bg_window.h"
#include "communication_system.h"
#include "dexmode_checker.h"
#include "font.h"
#include "game_options.h"
#include "game_overlay.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "palette.h"
#include "party.h"
#include "pokemon.h"
#include "render_oam.h"
#include "render_window.h"
#include "save_player.h"
#include "savedata.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_util.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "system.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_0200C440.h"
#include "unk_0200F174.h"
#include "unk_02030108.h"
#include "unk_020363E8.h"
#include "unk_020393C8.h"
#include "unk_0209BA80.h"
#include "vram_transfer.h"

#include "constdata/const_020F410C.h"

FS_EXTERN_OVERLAY(overlay104);

struct UnkStruct_ov106_02243118_t {
    OverlayManager *unk_00;
    OverlayManager *unk_04;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    u8 unk_0B;
    u8 unk_0C;
    u8 unk_0D;
    u8 unk_0E;
    u8 unk_0F;
    u16 unk_10;
    u16 unk_12;
    u16 unk_14;
    u8 unk_16;
    u8 unk_17;
    u8 unk_18;
    u8 unk_19;
    u8 unk_1A;
    u8 unk_1B;
    u16 unk_1C;
    u8 unk_1E;
    u8 unk_1F;
    MessageLoader *unk_20;
    StringTemplate *unk_24;
    Strbuf *unk_28;
    Strbuf *unk_2C;
    Strbuf *unk_30[2];
    u16 unk_38[8];
    BgConfig *unk_48;
    Window unk_4C[4];
    MenuTemplate unk_8C;
    Menu *unk_98;
    StringList unk_9C[2];
    PaletteData *unk_AC;
    UnkStruct_0200C440 *unk_B0;
    Options *unk_B4;
    SaveData *unk_B8;
    PokemonSummary *unk_BC;
    UnkStruct_ov106_02243310 unk_C0;
    UnkStruct_ov106_02243650 *unk_280;
    UnkStruct_ov106_02243650 *unk_284;
    int unk_288;
    u16 *unk_28C;
    Party *unk_290;
    u8 *unk_294;
    u16 *unk_298;
    NARC *unk_29C;
    u16 unk_2A0[44];
    u8 unk_2F8;
    u8 unk_2F9;
    u8 unk_2FA;
    u32 unk_2FC;
};

int ov106_02241AE0(OverlayManager *param0, int *param1);
int ov106_02241B9C(OverlayManager *param0, int *param1);
int ov106_02241CF0(OverlayManager *param0, int *param1);
static BOOL ov106_02241D28(UnkStruct_ov106_02243118 *param0);
static BOOL ov106_02241E14(UnkStruct_ov106_02243118 *param0);
static void ov106_02241DD4(UnkStruct_ov106_02243118 *param0);
static BOOL ov106_02241E5C(UnkStruct_ov106_02243118 *param0);
static BOOL ov106_02242108(UnkStruct_ov106_02243118 *param0);
static BOOL ov106_0224230C(UnkStruct_ov106_02243118 *param0);
static BOOL ov106_02242344(UnkStruct_ov106_02243118 *param0);
static BOOL ov106_022423AC(UnkStruct_ov106_02243118 *param0);
static void ov106_022423E8(UnkStruct_ov106_02243118 *param0);
static void ov106_0224248C(UnkStruct_ov106_02243118 *param0);
static void ov106_022424C8(void);
static void ov106_02242500(UnkStruct_ov106_02243118 *param0);
static void ov106_02242688(UnkStruct_ov106_02243118 *param0);
static void ov106_0224262C(UnkStruct_ov106_02243118 *param0);
static void ov106_022426A4(BgConfig *param0);
static void ov106_022426E0(void *param0);
static void ov106_0224271C(void);
static void ov106_0224273C(BgConfig *param0);
static void ov106_0224283C(UnkStruct_ov106_02243118 *param0, u32 param1);
static void ov106_02242884(void);
static void ov106_022428B8(UnkStruct_ov106_02243118 *param0, u32 param1);
static u8 ov106_02242918(UnkStruct_ov106_02243118 *param0, Window *param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9);
static u8 ov106_02242978(UnkStruct_ov106_02243118 *param0, int param1, u8 param2);
static void ov106_022429B0(UnkStruct_ov106_02243118 *param0, Window *param1, u8 param2);
static void ov106_02242A28(UnkStruct_ov106_02243118 *param0, u8 param1, u8 param2, int param3);
static void ov106_02242A54(UnkStruct_ov106_02243118 *param0);
static void ov106_02242AAC(UnkStruct_ov106_02243118 *param0, u32 param1, s32 param2);
static void ov106_02242AC4(UnkStruct_ov106_02243118 *param0, Window *param1, u32 param2, u32 param3, u8 param4, u8 param5, u8 param6, u8 param7);
static void ov106_02242B38(UnkStruct_ov106_02243118 *param0, Window *param1, u8 param2, u8 param3, u8 param4, u8 param5);
static void ov106_02242C04(UnkStruct_ov106_02243118 *param0, Window *param1, u8 param2, u32 param3, u32 param4);
static void ov106_02242C2C(UnkStruct_ov106_02243118 *param0, Window *param1);
static void ov106_02242CA4(UnkStruct_ov106_02243118 *param0);
static void ov106_02242D5C(UnkStruct_ov106_02243118 *param0, int *param1, int param2);
static void ov106_02242D64(UnkStruct_ov106_02243118 *param0, int param1);
static u16 ov106_02242F24(UnkStruct_ov106_02243118 *param0);
static u16 ov106_02242F3C(UnkStruct_ov106_02243118 *param0);
static void ov106_02242FAC(BgConfig *param0, u8 param1, u8 param2);
static void ov106_02242F4C(UnkStruct_ov106_02243118 *param0, BgConfig *param1);
static u8 ov106_02243090(u8 param0);
static BOOL ov106_02243098(UnkStruct_ov106_02243118 *param0);
static BOOL ov106_022430B0(UnkStruct_ov106_02243118 *param0);
BOOL ov106_022430B4(UnkStruct_ov106_02243118 *param0, u16 param1, u16 param2);
void ov106_02243118(UnkStruct_ov106_02243118 *param0, u16 param1);
void ov106_02243130(int param0, int param1, void *param2, void *param3);
void ov106_0224313C(UnkStruct_ov106_02243118 *param0, u16 param1, u16 param2);
void ov106_02243180(int param0, int param1, void *param2, void *param3);
void ov106_022431D4(UnkStruct_ov106_02243118 *param0, u16 param1, u16 param2);
void ov106_022431E0(int param0, int param1, void *param2, void *param3);
static void ov106_02243200(UnkStruct_ov106_02243118 *param0);
static void ov106_02243224(UnkStruct_ov106_02243118 *param0);
static void ov106_022432AC(UnkStruct_ov106_02243118 *param0);
static void ov106_022432D4(UnkStruct_ov106_02243118 *param0);

static const u8 Unk_ov106_02243798[] = {
    0x0,
    0x1,
    0x2,
    0x4,
    0x3,
    0x5,
    0x6,
    0x7,
    0x8
};

int ov106_02241AE0(OverlayManager *param0, int *param1)
{
    int v0;
    UnkStruct_ov106_02243118 *v1;
    UnkStruct_ov104_02235208 *v2;

    Overlay_LoadByID(FS_OVERLAY_ID(overlay104), 2);
    ov106_022424C8();
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_98, 0x20000);

    v1 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov106_02243118), HEAP_ID_98);
    memset(v1, 0, sizeof(UnkStruct_ov106_02243118));

    v1->unk_48 = BgConfig_New(HEAP_ID_98);
    v1->unk_00 = param0;

    v2 = (UnkStruct_ov104_02235208 *)OverlayManager_Args(param0);

    v1->unk_B8 = v2->unk_00;
    v1->unk_09 = v2->unk_04;
    v1->unk_28C = &v2->unk_06;
    v1->unk_B4 = SaveData_GetOptions(v1->unk_B8);
    v1->unk_290 = v2->unk_0C;
    v1->unk_294 = v2->unk_08;
    v1->unk_298 = v2->unk_14;
    v1->unk_1C = (v2->unk_18 + 1);
    v1->unk_0D = v2->unk_05;
    v1->unk_2F8 = 0xff;
    v1->unk_18 = 0xff;
    v1->unk_1F = 0x75;

    ov106_02242500(v1);

    if (ov104_0223B5B0(v1->unk_09) == 1) {
        sub_0209BA80(v1);
    }

    (*param1) = 0;

    return 1;
}

int ov106_02241B9C(OverlayManager *param0, int *param1)
{
    UnkStruct_ov106_02243118 *v0 = OverlayManager_Data(param0);

    if (v0->unk_18 != 0xff) {
        switch (*param1) {
        case 2:
            if (v0->unk_10 == 0) {
                ov106_02243200(v0);
                ov106_02242D5C(v0, param1, 3);
            }
            break;
        }
    }

    switch (*param1) {
    case 1:
        if (ov106_02241E14(v0) == 1) {
            ov106_02242D5C(v0, param1, 0);
        } else {
            return 0;
        }
    case 0:
        if (ov106_02241D28(v0) == 1) {
            ov106_02242D5C(v0, param1, 2);
        }
        break;
    case 2:
        if (ov106_02241E5C(v0) == 1) {
            if (v0->unk_17 == 1) {
                ov106_02242D5C(v0, param1, 3);
            } else {
                if (v0->unk_0B == 1) {
                    ov106_02242D5C(v0, param1, 1);
                    return 0;
                } else {
                    if (ov104_0223B5B0(v0->unk_09) == 1) {
                        ov106_02242D5C(v0, param1, 4);
                    } else {
                        ov106_02242D5C(v0, param1, 5);
                    }
                }
            }
        }
        break;
    case 3:
        if (ov106_02242108(v0) == 1) {
            if (v0->unk_19 == 1) {
                v0->unk_19 = 0;
                ov106_02242D5C(v0, param1, 2);
            } else {
                if (ov104_0223B5B0(v0->unk_09) == 1) {
                    ov106_02242D5C(v0, param1, 4);
                } else {
                    ov106_02242D5C(v0, param1, 5);
                }
            }
        }
        break;
    case 4:
        if (ov106_0224230C(v0) == 1) {
            ov106_02242D5C(v0, param1, 5);
        }
        break;
    case 5:
        if (ov106_02242344(v0) == 1) {
            return 1;
        }
        break;
    case 6:
        if (ov106_022423AC(v0) == 1) {
            ov106_02242D5C(v0, param1, 4);
        }
        break;
    }

    SpriteList_Update(v0->unk_C0.unk_00);
    return 0;
}

int ov106_02241CF0(OverlayManager *param0, int *param1)
{
    int v0;
    UnkStruct_ov106_02243118 *v1 = OverlayManager_Data(param0);

    *(v1->unk_28C) = v1->unk_0D;

    ov106_022423E8(v1);

    OverlayManager_FreeData(param0);
    SetVBlankCallback(NULL, NULL);
    Heap_Destroy(HEAP_ID_98);
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay104));

    return 1;
}

static BOOL ov106_02241D28(UnkStruct_ov106_02243118 *param0)
{
    switch (param0->unk_08) {
    case 0:
        if ((param0->unk_12 == 0) && (ov104_0223B5B0(param0->unk_09) == 1)) {
            sub_020365F4();
            CommTiming_StartSync(112);
        }

        param0->unk_08++;
        break;
    case 1:
        if ((param0->unk_12 == 0) && (ov104_0223B5B0(param0->unk_09) == 1)) {
            if (CommTiming_IsSyncState(112) == 1) {
                sub_020365F4();
                param0->unk_12 = 1;
                param0->unk_08++;
            }
        } else {
            param0->unk_08++;
        }
        break;
    case 2:
        ov106_02241DD4(param0);
        StartScreenTransition(0, 1, 1, 0x0, 6, 1 * 3, HEAP_ID_98);
        param0->unk_08++;
        break;
    case 3:
        if (IsScreenTransitionDone() == 1) {
            return 1;
        }
        break;
    }

    return 0;
}

static void ov106_02241DD4(UnkStruct_ov106_02243118 *param0)
{
    int v0;

    ov106_02242B38(param0, &param0->unk_4C[3], 1, 2, 0, FONT_SYSTEM);
    ov106_02242C2C(param0, &param0->unk_4C[3]);
    ov106_02242AC4(param0, &param0->unk_4C[2], 0, 0, 1, 2, 0, FONT_SYSTEM);

    if (param0->unk_0B == 1) {
        (void)0;
    }

    return;
}

static BOOL ov106_02241E14(UnkStruct_ov106_02243118 *param0)
{
    switch (param0->unk_08) {
    case 0:

        if (OverlayManager_Exec(param0->unk_04) == 1) {
            param0->unk_288 = param0->unk_BC->monIndex;
            Heap_FreeToHeap(param0->unk_BC);
            Heap_FreeToHeap(param0->unk_04);
            param0->unk_04 = NULL;
            ov106_0224248C(param0);
            param0->unk_10 = 0;
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov106_02241E5C(UnkStruct_ov106_02243118 *param0)
{
    int v0;
    u32 v1, v2;

    switch (param0->unk_08) {
    case 0:
        param0->unk_0B = 0;
        param0->unk_08 = 1;
        break;
    case 1:
        ov106_02242D64(param0, gSystem.pressedKeys);

        if (gSystem.pressedKeys & PAD_BUTTON_A) {
            if (ov104_0223B5A4(param0->unk_0D) == 0xfe) {
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                StartScreenTransition(0, 0, 0, 0x0, 6, 1, HEAP_ID_98);

                param0->unk_10 = 1;
                param0->unk_08 = 6;
            } else {
                if (ov106_022430B0(param0) == 1) {
                    if (ov104_0223B5A4(param0->unk_0D) != 9) {
                        Sound_PlayEffect(SEQ_SE_DP_BOX03);
                        return 0;
                    }
                } else {
                    if (sub_020301E0(ov106_02243090(param0->unk_0D), param0->unk_294) >= 10) {
                        Sound_PlayEffect(SEQ_SE_DP_BOX03);

                        return 0;
                    }

                    if (ov104_0223B5A4(param0->unk_0D) == 9) {
                        Sound_PlayEffect(SEQ_SE_DP_BOX03);
                        return 0;
                    }
                }

                Sound_PlayEffect(SEQ_SE_DP_DECIDE);

                if (ov104_0223B5B0(param0->unk_09) == 0) {
                    ov106_02242FAC(param0->unk_48, param0->unk_0D, 1);
                    Bg_ScheduleTilemapTransfer(param0->unk_48, 3);
                }

                param0->unk_14 = 8;
                param0->unk_08 = 2;
            }
        }
        break;
    case 2:
        param0->unk_14--;

        if (param0->unk_14 == 0) {
            if (ov104_0223B5B0(param0->unk_09) == 0) {
                ov106_02243224(param0);
                param0->unk_08 = 3;
                break;
            } else {
                ov106_02243758(&param0->unk_4C[0], Options_Frame(param0->unk_B4));
                param0->unk_0A = ov106_02242978(param0, 0, FONT_MESSAGE);
                param0->unk_1A = param0->unk_0D;
                param0->unk_17 = 1;
                return 1;
            }
        }
        break;
    case 3:
        v1 = Menu_ProcessInput(param0->unk_98);

        switch (v1) {
        case 0xffffffff:
            break;
        case 0:
            ov106_02243200(param0);

            if ((ov106_02243098(param0) == 1) && (ov106_022430B0(param0) == 0)) {
                param0->unk_1F = param0->unk_0D;
                param0->unk_08 = 4;
            } else {
                Sound_StopEffect(1500, 0);
                Sound_PlayEffect(SEQ_SE_DP_UG_020);

                if (param0->unk_1F != 0x75) {
                    param0->unk_0D = param0->unk_1F;
                }

                return 1;
            }
            break;
        case 1:
        case 0xfffffffe:
            ov106_02243200(param0);
            ov106_022432AC(param0);
            param0->unk_08 = 1;
            break;
        }
        break;
    case 4:
        ov106_02243758(&param0->unk_4C[0], Options_Frame(param0->unk_B4));
        param0->unk_0A = ov106_02242918(param0, &param0->unk_4C[0], 32, 1, 1, Options_TextFrameDelay(SaveData_GetOptions(param0->unk_B8)), 1, 2, 15, FONT_MESSAGE);
        Window_CopyToVRAM(&param0->unk_4C[0]);
        param0->unk_08 = 5;
        break;
    case 5:
        if (Text_IsPrinterActive(param0->unk_0A) == 0) {
            param0->unk_1E = 1;
            ov106_022432D4(param0);
            ov106_022436B0(param0->unk_280, 1);
            ov106_02242FAC(param0->unk_48, ((4 * 5) - 1), 0);
            ov106_02242F4C(param0, param0->unk_48);
            param0->unk_0D = ((4 * 5) - 1);
            ov106_02243670(param0->unk_280, ov106_02242F24(param0), ov106_02242F3C(param0));
            param0->unk_08 = 0;
        }
        break;
    case 6:
        if (IsScreenTransitionDone() == 1) {
            ov106_02242CA4(param0);
            ov106_022423E8(param0);
            param0->unk_04 = OverlayManager_New(&gPokemonSummaryScreenApp, param0->unk_BC, 98);
            param0->unk_0B = 1;
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov106_02242108(UnkStruct_ov106_02243118 *param0)
{
    u8 v0;
    u32 v1;

    switch (param0->unk_08) {
    case 0:
        v0 = ov106_02243090(param0->unk_1A);

        if (ov106_022430B4(param0, 5, v0) == 1) {
            param0->unk_1B = 0;
            param0->unk_1A = 0;
            param0->unk_17 = 0;
            param0->unk_08 = 1;
        }
        break;
    case 1:
        if (param0->unk_1B > 0) {
            param0->unk_1B--;
            break;
        }

        if (param0->unk_16 < 2) {
            break;
        }

        param0->unk_16 = 0;

        if (param0->unk_18 < (4 * 5)) {
            if (CommSys_CurNetId() == 0) {
                param0->unk_08 = 2;
            } else {
                param0->unk_08 = 3;
            }
        } else {
            if (CommSys_CurNetId() == 0) {
                param0->unk_08 = 3;
            } else {
                param0->unk_08 = 2;
            }
        }
        break;
    case 3:
        ov106_02243664(param0->unk_284, 0);
        ov106_02243758(&param0->unk_4C[0], Options_Frame(param0->unk_B4));
        ov104_0222E5D0(param0->unk_24, 0);

        param0->unk_0A = ov106_02242978(param0, 11, FONT_MESSAGE);
        param0->unk_1B = 10;

        ov106_02242FAC(param0->unk_48, param0->unk_2F8, 2);
        Bg_ScheduleTilemapTransfer(param0->unk_48, 3);

        param0->unk_08 = 4;
        break;
    case 4:
        if (param0->unk_2F9 == 0) {
            break;
        }

        if (param0->unk_2F9 == 1) {
            param0->unk_0D = param0->unk_2F8;
            return 1;
        } else {
            ov106_022432D4(param0);
            ov106_02242FAC(param0->unk_48, param0->unk_2F8, 0);

            Bg_ScheduleTilemapTransfer(param0->unk_48, 3);

            param0->unk_2F8 = 0xff;
            param0->unk_2F9 = 0;
            param0->unk_18 = 0xff;
            param0->unk_19 = 1;

            return 1;
        }
        break;
    case 2:
        ov106_02242FAC(param0->unk_48, param0->unk_0D, 1);
        Bg_ScheduleTilemapTransfer(param0->unk_48, 3);
        ov106_02243224(param0);
        param0->unk_08 = 5;
        break;
    case 5:
        v1 = Menu_ProcessInput(param0->unk_98);

        switch (v1) {
        case 0xffffffff:
            break;
        case 0:
            Sound_StopEffect(1500, 0);
            Sound_PlayEffect(SEQ_SE_DP_UG_020);
            ov106_02243200(param0);
            param0->unk_08 = 6;
            break;
        case 1:
        case 0xfffffffe:
            ov106_02243200(param0);
            param0->unk_08 = 7;
            break;
        }
        break;
    case 6:
        if (ov106_022430B4(param0, 6, 1) == 1) {
            return 1;
        }
        break;
    case 7:
        if (ov106_022430B4(param0, 6, 2) == 1) {
            ov106_022432AC(param0);
            param0->unk_2F8 = 0xff;
            param0->unk_18 = 0xff;
            param0->unk_19 = 1;
            return 1;
        }
        break;
    case 8:
        sub_020365F4();
        CommTiming_StartSync(104);
        param0->unk_08 = 9;
        break;
    case 9:
        if (CommTiming_IsSyncState(104) == 1) {
            sub_020365F4();
            CommTool_Init(98);
            param0->unk_18 = 0xff;
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov106_0224230C(UnkStruct_ov106_02243118 *param0)
{
    int v0;

    switch (param0->unk_08) {
    case 0:
        sub_020365F4();
        CommTiming_StartSync(104);
        param0->unk_08++;
        break;
    case 1:
        if (CommTiming_IsSyncState(104) == 1) {
            sub_020365F4();
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov106_02242344(UnkStruct_ov106_02243118 *param0)
{
    int v0;

    switch (param0->unk_08) {
    case 0:
        param0->unk_1B = 10;
        param0->unk_08++;
        break;
    case 1:
        param0->unk_1B--;

        if (param0->unk_1B == 0) {
            ov106_022432D4(param0);
            StartScreenTransition(0, 0, 0, 0x0, 6, 1, HEAP_ID_98);
            param0->unk_08++;
        }
        break;
    case 2:
        if (IsScreenTransitionDone() == 1) {
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov106_022423AC(UnkStruct_ov106_02243118 *param0)
{
    int v0;

    switch (param0->unk_08) {
    case 0:
        ov106_02243200(param0);
        ov106_02243664(param0->unk_284, 1);
        Window_EraseMessageBox(&param0->unk_4C[0], 0);

        param0->unk_08++;
        break;
    case 1:
        return 1;
    }

    return 0;
}

static void ov106_022423E8(UnkStruct_ov106_02243118 *param0)
{
    int v0;

    if (param0->unk_280 != NULL) {
        ov106_02243650(param0->unk_280);
    }

    if (param0->unk_284 != NULL) {
        ov106_02243650(param0->unk_284);
    }

    sub_02039794();
    PaletteData_FreeBuffer(param0->unk_AC, 2);
    PaletteData_FreeBuffer(param0->unk_AC, 0);
    PaletteData_Free(param0->unk_AC);

    param0->unk_AC = NULL;

    ov106_02243570(&param0->unk_C0);

    MessageLoader_Free(param0->unk_20);
    StringTemplate_Free(param0->unk_24);
    Strbuf_Free(param0->unk_28);
    Strbuf_Free(param0->unk_2C);
    sub_0200C560(param0->unk_B0);

    for (v0 = 0; v0 < 2; v0++) {
        Strbuf_Free(param0->unk_30[v0]);
    }

    ov106_02243710(param0->unk_4C);
    ov106_022426A4(param0->unk_48);
    NARC_dtor(param0->unk_29C);

    return;
}

static void ov106_0224248C(UnkStruct_ov106_02243118 *param0)
{
    int v0;

    ov106_022424C8();
    param0->unk_48 = BgConfig_New(HEAP_ID_98);
    ov106_02242500(param0);

    if (ov104_0223B5A4(param0->unk_0D) == 0xfe) {
        ov106_022436B0(param0->unk_280, 2);
        ov106_02243670(param0->unk_280, 128, 168);
    }

    return;
}

static void ov106_022424C8(void)
{
    SetVBlankCallback(NULL, NULL);
    SetHBlankCallback(NULL, NULL);

    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    return;
}

static void ov106_02242500(UnkStruct_ov106_02243118 *param0)
{
    int v0, v1;

    param0->unk_29C = NARC_ctor(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, HEAP_ID_98);

    ov106_0224262C(param0);
    ov106_02242688(param0);

    param0->unk_20 = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0549, HEAP_ID_98);
    param0->unk_24 = StringTemplate_Default(HEAP_ID_98);
    param0->unk_28 = Strbuf_Init(600, HEAP_ID_98);
    param0->unk_2C = Strbuf_Init(600, HEAP_ID_98);

    for (v0 = 0; v0 < 2; v0++) {
        param0->unk_30[v0] = Strbuf_Init(32, HEAP_ID_98);
    }

    Font_LoadTextPalette(0, 13 * 32, HEAP_ID_98);
    Font_LoadScreenIndicatorsPalette(0, 12 * 32, HEAP_ID_98);

    param0->unk_B0 = sub_0200C440(15, 14, 0, HEAP_ID_98);

    ov106_022436E0(param0->unk_48, param0->unk_4C);
    ov106_02242F4C(param0, param0->unk_48);

    GXLayers_TurnBothDispOn();

    param0->unk_280 = ov106_022435FC(&param0->unk_C0, 0, 1, ov106_02242F24(param0), ov106_02242F3C(param0), NULL);
    param0->unk_284 = ov106_022435FC(&param0->unk_C0, 1, 1, 160, 160, NULL);

    ov106_022436CC(param0->unk_284, Party_GetPokemonBySlotIndex(param0->unk_290, 0));

    if (CommSys_IsInitialized()) {
        ReserveVramForWirelessIconChars(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_32K);
        ReserveSlotsForWirelessIconPalette(NNS_G2D_VRAM_TYPE_2DMAIN);
        sub_02039734();
    }

    SetVBlankCallback(ov106_022426E0, (void *)param0);
    return;
}

static void ov106_0224262C(UnkStruct_ov106_02243118 *param0)
{
    ov106_0224271C();
    ov106_0224273C(param0->unk_48);

    param0->unk_AC = PaletteData_New(HEAP_ID_98);

    PaletteData_AllocBuffer(param0->unk_AC, 2, (32 * 16), HEAP_ID_98);
    PaletteData_AllocBuffer(param0->unk_AC, 0, (32 * 16), HEAP_ID_98);

    ov106_0224283C(param0, 3);
    ov106_02242884();

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    ov106_022428B8(param0, 4);

    return;
}

static void ov106_02242688(UnkStruct_ov106_02243118 *param0)
{
    ov106_02243310(&param0->unk_C0, Party_GetPokemonBySlotIndex(param0->unk_290, 0));
    return;
}

static void ov106_022426A4(BgConfig *param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, 0);

    Bg_FreeTilemapBuffer(param0, 3);
    Bg_FreeTilemapBuffer(param0, 1);
    Bg_FreeTilemapBuffer(param0, 0);
    Bg_FreeTilemapBuffer(param0, 4);
    Heap_FreeToHeap(param0);

    return;
}

static void ov106_022426E0(void *param0)
{
    UnkStruct_ov106_02243118 *v0 = param0;

    if (v0->unk_04 != NULL) {
        return;
    }

    if (v0->unk_AC != NULL) {
        PaletteData_CommitFadedBuffers(v0->unk_AC);
    }

    Bg_RunScheduledUpdates(v0->unk_48);
    VramTransfer_Process();
    RenderOam_Transfer();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov106_0224271C(void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_C,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_32_H,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_01_AB,
        GX_VRAM_TEXPLTT_01_FG
    };

    GXLayers_SetBanks(&v0);
    return;
}

static void ov106_0224273C(BgConfig *param0)
{
    {
        GraphicsModes v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D
        };

        SetAllGraphicsModes(&v0);
    }

    {
        BgTemplate v1 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0000,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0, 0, &v1, 0);
        Bg_ClearTilesRange(0, 32, 0, HEAP_ID_98);
        Bg_ClearTilemap(param0, 0);
    }

    {
        BgTemplate v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0800,
            GX_BG_CHARBASE_0x0c000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0, 1, &v2, 0);
        Bg_ClearTilesRange(1, 32, 0, HEAP_ID_98);
        Bg_ClearTilemap(param0, 1);
    }

    {
        BgTemplate v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x2000,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0, 3, &v3, 0);
        Bg_ClearTilemap(param0, 3);
    }

    {
        BgTemplate v4 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x3000,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0, 4, &v4, 0);
        Bg_ClearTilemap(param0, 4);
    }

    G2_SetBG0Priority(0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

    return;
}

static void ov106_0224283C(UnkStruct_ov106_02243118 *param0, u32 param1)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(param0->unk_29C, 23, param0->unk_48, param1, 0, 0, 1, HEAP_ID_98);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->unk_29C, 24, param0->unk_48, param1, 0, 0, 1, HEAP_ID_98);

    return;
}

static void ov106_02242884(void)
{
    void *v0;
    NNSG2dPaletteData *v1;

    v0 = Graphics_GetPlttData(150, 134, &v1, HEAP_ID_98);

    DC_FlushRange(v1->pRawData, (sizeof(u16) * 16 * 6));
    GX_LoadBGPltt(v1->pRawData, 0, (sizeof(u16) * 16 * 6));
    Heap_FreeToHeap(v0);

    return;
}

static void ov106_022428B8(UnkStruct_ov106_02243118 *param0, u32 param1)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(param0->unk_29C, 125, param0->unk_48, param1, 0, 0, 1, HEAP_ID_98);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->unk_29C, 126, param0->unk_48, param1, 0, 0, 1, HEAP_ID_98);
    Graphics_LoadPaletteFromOpenNARC(param0->unk_29C, 171, 4, 0, 0x20, HEAP_ID_98);

    return;
}

static u8 ov106_02242918(UnkStruct_ov106_02243118 *param0, Window *param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9)
{
    Window_FillTilemap(param1, param8);
    MessageLoader_GetStrbuf(param0->unk_20, param2, param0->unk_2C);
    StringTemplate_Format(param0->unk_24, param0->unk_28, param0->unk_2C);

    return Text_AddPrinterWithParamsAndColor(param1, param9, param0->unk_28, param3, param4, param5, TEXT_COLOR(param6, param7, param8), NULL);
}

static u8 ov106_02242978(UnkStruct_ov106_02243118 *param0, int param1, u8 param2)
{
    u8 v0 = ov106_02242918(param0, &param0->unk_4C[0], param1, 1, 1, TEXT_SPEED_INSTANT, 1, 2, 15, param2);
    Window_CopyToVRAM(&param0->unk_4C[0]);

    return v0;
}

static void ov106_022429B0(UnkStruct_ov106_02243118 *param0, Window *param1, u8 param2)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        param0->unk_9C[v0].entry = NULL;
        param0->unk_9C[v0].index = 0;
    }

    param0->unk_8C.choices = param0->unk_9C;
    param0->unk_8C.window = param1;
    param0->unk_8C.fontID = FONT_SYSTEM;
    param0->unk_8C.xSize = 1;
    param0->unk_8C.ySize = param2;
    param0->unk_8C.lineSpacing = 0;
    param0->unk_8C.suppressCursor = FALSE;
    param0->unk_8C.loopAround = TRUE;

    return;
}

static void ov106_02242A28(UnkStruct_ov106_02243118 *param0, u8 param1, u8 param2, int param3)
{
    int v0;
    void *v1;

    MessageLoader_GetStrbuf(param0->unk_20, param3, param0->unk_30[param1]);

    param0->unk_9C[param1].entry = (const void *)param0->unk_30[param1];
    param0->unk_9C[param1].index = param2;

    return;
}

static void ov106_02242A54(UnkStruct_ov106_02243118 *param0)
{
    param0->unk_0F = 1;

    ov106_0224372C(param0->unk_48, &param0->unk_4C[1]);
    ov106_022429B0(param0, &param0->unk_4C[1], 2);
    ov106_02242A28(param0, 0, 0, 27);
    ov106_02242A28(param0, 1, 1, 28);

    param0->unk_98 = Menu_NewAndCopyToVRAM(&param0->unk_8C, 8, 0, 0, 98, PAD_BUTTON_B);
    return;
}

static void ov106_02242AAC(UnkStruct_ov106_02243118 *param0, u32 param1, s32 param2)
{
    StringTemplate_SetNumber(param0->unk_24, param1, param2, 2, 0, 1);
    return;
}

static void ov106_02242AC4(UnkStruct_ov106_02243118 *param0, Window *param1, u32 param2, u32 param3, u8 param4, u8 param5, u8 param6, u8 param7)
{
    u8 v0;
    u32 v1, v2, v3;
    Strbuf *v4;
    Pokemon *v5;
    u16 v6[(10 + 1)];

    v5 = Party_GetPokemonBySlotIndex(param0->unk_290, 0);
    Pokemon_GetValue(v5, MON_DATA_SPECIES_NAME, v6);
    Window_FillTilemap(param1, param6);

    v4 = Strbuf_Init((10 + 1), HEAP_ID_98);
    Strbuf_CopyChars(v4, v6);
    Text_AddPrinterWithParamsAndColor(param1, param7, v4, param2, param3, TEXT_SPEED_INSTANT, TEXT_COLOR(param4, param5, param6), NULL);
    Strbuf_Free(v4);
    Window_CopyToVRAM(param1);

    return;
}

static void ov106_02242B38(UnkStruct_ov106_02243118 *param0, Window *param1, u8 param2, u8 param3, u8 param4, u8 param5)
{
    int v0, v1;
    Strbuf *v2;
    MessageLoader *v3;

    Window_FillTilemap(param1, param4);

    v3 = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POKEMON_TYPE_NAMES, HEAP_ID_98);
    v2 = Strbuf_Init((10 + 1), HEAP_ID_98);

    for (v0 = 0; v0 < 5; v0++) {
        for (v1 = 0; v1 < 4; v1++) {
            if (ov104_0223B5A4(v0 * 4 + v1) != 0xfe) {
                Strbuf_Clear(v2);
                MessageLoader_GetStrbuf(v3, ov104_0223B5A4(v0 * 4 + v1), v2);
                Text_AddPrinterWithParamsAndColor(param1, param5, v2, 1 + (64 * v1), 16 + (36 * v0), TEXT_SPEED_INSTANT, TEXT_COLOR(param2, param3, param4), NULL);
            }
        }
    }

    Strbuf_Free(v2);
    MessageLoader_Free(v3);
    Window_CopyToVRAM(param1);

    return;
}

static void ov106_02242C04(UnkStruct_ov106_02243118 *param0, Window *param1, u8 param2, u32 param3, u32 param4)
{
    sub_0200C5BC(param0->unk_B0, param2, 2, 0, param1, param3, param4);
    Window_ScheduleCopyToVRAM(param1);
    return;
}

static void ov106_02242C2C(UnkStruct_ov106_02243118 *param0, Window *param1)
{
    int v0, v1;
    u8 v2, v3, v4;

    for (v0 = 0; v0 < 5; v0++) {
        for (v1 = 0; v1 < 4; v1++) {
            v4 = ov104_0223B5A4(v0 * 4 + v1);

            if ((v4 != 0xfe) && (v4 != 9)) {
                v3 = (v0 * 4 + v1);
                v2 = sub_020301E0(ov106_02243090(v3), param0->unk_294);

                v2++;

                if (v2 > 10) {
                    v2 = 10;
                }

                ov106_02242C04(param0, param1, v2, 18 + (64 * v1), 4 + (36 * v0));
            }
        }
    }

    return;
}

static void ov106_02242CA4(UnkStruct_ov106_02243118 *param0)
{
    param0->unk_BC = Heap_AllocFromHeap(HEAP_ID_98, sizeof(PokemonSummary));
    memset(param0->unk_BC, 0, sizeof(PokemonSummary));

    param0->unk_BC->monData = param0->unk_290;
    param0->unk_BC->dataType = SUMMARY_DATA_PARTY_MON;
    param0->unk_BC->options = param0->unk_B4;
    param0->unk_BC->mode = SUMMARY_MODE_LOCK_MOVES;
    param0->unk_BC->monMax = Party_GetCurrentCount(param0->unk_290);
    param0->unk_BC->monIndex = 0;
    param0->unk_BC->move = 0;
    param0->unk_BC->dexMode = SaveData_GetDexMode(param0->unk_B8);
    param0->unk_BC->showContest = PokemonSummaryScreen_ShowContestData(param0->unk_B8);

    PokemonSummaryScreen_FlagVisiblePages(param0->unk_BC, Unk_ov106_02243798);
    PokemonSummaryScreen_SetPlayerProfile(param0->unk_BC, SaveData_GetTrainerInfo(param0->unk_B8));

    return;
}

static void ov106_02242D5C(UnkStruct_ov106_02243118 *param0, int *param1, int param2)
{
    param0->unk_08 = 0;
    *param1 = param2;
    return;
}

static void ov106_02242D64(UnkStruct_ov106_02243118 *param0, int param1)
{
    int v0 = 0;

    if (gSystem.pressedKeys & PAD_KEY_LEFT) {
        if (ov104_0223B5A4(param0->unk_0D) != 0xfe) {
            param0->unk_0C = param0->unk_0D;
        } else {
            (void)0;
        }

        if ((param0->unk_0D % 4) == 0) {
            param0->unk_0D += (4 - 1);
        } else if (ov104_0223B5A4(param0->unk_0D) == 0xfe) {
            param0->unk_0D = 16;
        } else {
            param0->unk_0D--;
        }

        v0 = 1;
    }

    if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
        if (ov104_0223B5A4(param0->unk_0D) != 0xfe) {
            param0->unk_0C = param0->unk_0D;
        } else {
            (void)0;
        }

        if ((param0->unk_0D % 4) == (4 - 1)) {
            param0->unk_0D -= (4 - 1);
        } else if (ov104_0223B5A4(param0->unk_0D) == 0xfe) {
            param0->unk_0D = 19;
        } else {
            param0->unk_0D++;
        }

        v0 = 1;
    }

    if (gSystem.pressedKeys & PAD_KEY_UP) {
        if (ov104_0223B5A4(param0->unk_0D) != 0xfe) {
            param0->unk_0C = param0->unk_0D;
        } else {
            (void)0;
        }

        if (param0->unk_0D < 4) {
            param0->unk_0D += (4 * (5 - 1));
        } else if (ov104_0223B5A4(param0->unk_0D) == 0xfe) {
            if (param0->unk_0C == 16) {
                param0->unk_0D = 13;
            } else if (param0->unk_0C == 19) {
                param0->unk_0D = 14;
            } else if ((param0->unk_0C == 13) || (param0->unk_0C == 1)) {
                param0->unk_0D = 13;
            } else if ((param0->unk_0C == 14) || (param0->unk_0C == 2)) {
                param0->unk_0D = 14;
            }
        } else {
            param0->unk_0D -= 4;
        }

        v0 = 1;
    }

    if (gSystem.pressedKeys & PAD_KEY_DOWN) {
        if (ov104_0223B5A4(param0->unk_0D) != 0xfe) {
            param0->unk_0C = param0->unk_0D;
        } else {
            (void)0;
        }

        if (param0->unk_0D >= 4 * (5 - 1)) {
            param0->unk_0D -= (4 * (5 - 1));
        } else if (ov104_0223B5A4(param0->unk_0D) == 0xfe) {
            if (param0->unk_0C == 16) {
                param0->unk_0D = 1;
            } else if (param0->unk_0C == 19) {
                param0->unk_0D = 2;
            } else if ((param0->unk_0C == 13) || (param0->unk_0C == 1)) {
                param0->unk_0D = 1;
            } else if ((param0->unk_0C == 14) || (param0->unk_0C == 2)) {
                param0->unk_0D = 2;
            }
        } else {
            param0->unk_0D += 4;
        }

        v0 = 1;
    }

    if (v0 == 1) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        ov106_02243670(param0->unk_280, ov106_02242F24(param0), ov106_02242F3C(param0));
    }

    if (ov104_0223B5A4(param0->unk_0D) == 0xfe) {
        ov106_022436B0(param0->unk_280, 2);
        ov106_02243670(param0->unk_280, 128, 168);
    } else {
        ov106_022436B0(param0->unk_280, 1);
    }

    return;
}

static u16 ov106_02242F24(UnkStruct_ov106_02243118 *param0)
{
    u8 v0 = param0->unk_0D;
    return (v0 % 4) * 64 + 32;
}

static u16 ov106_02242F3C(UnkStruct_ov106_02243118 *param0)
{
    return (param0->unk_0D / 4) * 36 + 16;
}

static void ov106_02242F4C(UnkStruct_ov106_02243118 *param0, BgConfig *param1)
{
    int v0;

    if (ov106_022430B0(param0) == 1) {
        for (v0 = 0; v0 < ((4 * 5) - 3); v0++) {
            ov106_02242FAC(param1, v0, 3);
        }
    } else {
        for (v0 = 0; v0 < (18 - 1); v0++) {
            if (sub_020301E0(v0, param0->unk_294) >= 10) {
                ov106_02242FAC(param1, v0, 3);
            }
        }

        ov106_02242FAC(param1, ((4 * 5) - 1), 3);
    }

    Bg_ScheduleTilemapTransfer(param1, 3);
    return;
}

static void ov106_02242FAC(BgConfig *param0, u8 param1, u8 param2)
{
    u8 v0, v1, v2, v3, v4;

    if (param2 == 0) {
        v4 = 0;
    } else if (param2 == 1) {
        v4 = 5;
    } else if (param2 == 2) {
        v4 = 4;
    } else {
        v4 = 3;
    }

    v2 = 8;
    v0 = (param1 % 4) * v2;

    if ((param1 % 8) < 4) {
        v3 = 5;
    } else {
        v3 = 4;
    }

    if (param1 < 4) {
        v1 = 0;
    } else if (param1 < (4 * 2)) {
        v1 = 5;
    } else if (param1 < (4 * 3)) {
        v1 = 9;
    } else if (param1 < (4 * 4)) {
        v1 = 14;
    } else {
        v1 = 18;
    }

    Bg_ChangeTilemapRectPalette(param0, 3, v0, v1, v2, v3, v4);

    if (param2 == 0) {
        v4 = 0;
        v2 = 1;
        v0 = (param1 % 4) * 8;

        if ((param1 % 8) < 4) {
            v3 = 2;
        } else {
            v3 = 3;
        }

        if (param1 < 4) {
            v1 = 2;
        } else if (param1 < (4 * 2)) {
            v1 = 6;
        } else if (param1 < (4 * 3)) {
            v1 = 11;
        } else if (param1 < (4 * 4)) {
            v1 = 15;
        } else {
            v1 = 20;
        }

        if (param1 < 9) {
            Bg_ChangeTilemapRectPalette(param0, 3, v0, v1, v2, v3, 1);
        } else {
            Bg_ChangeTilemapRectPalette(param0, 3, v0, v1, v2, v3, 2);
        }
    }

    return;
}

static u8 ov106_02243090(u8 param0)
{
    if (param0 >= 17) {
        return 18 - 1;
    }

    return param0;
}

static BOOL ov106_02243098(UnkStruct_ov106_02243118 *param0)
{
    if (param0->unk_09 == 0) {
        if ((param0->unk_1C == 50) || (param0->unk_1C == 170)) {
            return 1;
        }
    }

    return 0;
}

static BOOL ov106_022430B0(UnkStruct_ov106_02243118 *param0)
{
    return param0->unk_1E;
}

BOOL ov106_022430B4(UnkStruct_ov106_02243118 *param0, u16 param1, u16 param2)
{
    int v0, v1;

    if (ov104_0223B5B0(param0->unk_09) == 0) {
        return 0;
    }

    switch (param1) {
    case 4:
        v1 = 39;
        ov106_02243118(param0, param1);
        break;
    case 5:
        v1 = 40;
        ov106_0224313C(param0, param1, param2);
        break;
    case 6:
        v1 = 41;
        ov106_022431D4(param0, param1, param2);
        break;
    }

    if (CommSys_SendData(v1, param0->unk_2A0, 44) == 1) {
        v0 = 1;
    } else {
        v0 = 0;
    }

    return v0;
}

void ov106_02243118(UnkStruct_ov106_02243118 *param0, u16 param1)
{
    TrainerInfo *v0 = SaveData_GetTrainerInfo(param0->unk_B8);
    param0->unk_2A0[0] = param1;

    return;
}

void ov106_02243130(int param0, int param1, void *param2, void *param3)
{
    int v0, v1;
    UnkStruct_ov106_02243118 *v2 = param3;
    const u16 *v3 = param2;

    v1 = 0;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    return;
}

void ov106_0224313C(UnkStruct_ov106_02243118 *param0, u16 param1, u16 param2)
{
    int v0, v1;
    Pokemon *v2;
    Party *v3;

    v1 = 0;

    param0->unk_2A0[0] = param1;
    param0->unk_2A0[1] = param2;

    if (CommSys_CurNetId() == 0) {
        if (param0->unk_18 == 0xff) {
            param0->unk_18 = param2;
        }
    }

    param0->unk_2A0[2] = param0->unk_18;
    v2 = Party_GetPokemonBySlotIndex(param0->unk_290, 0);
    param0->unk_2A0[3] = Pokemon_GetValue(v2, MON_DATA_LEVEL, NULL);

    return;
}

void ov106_02243180(int param0, int param1, void *param2, void *param3)
{
    int v0, v1;
    UnkStruct_ov106_02243118 *v2 = param3;
    const u16 *v3 = param2;

    v1 = 0;
    v2->unk_16++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v2->unk_2F8 = v3[1];

    if (CommSys_CurNetId() == 0) {
        if (v2->unk_18 != 0xff) {
            v2->unk_2F8 = 0;
        } else {
            v2->unk_18 = v2->unk_2F8 + (4 * 5);
        }
    } else {
        v2->unk_18 = v3[2];
    }

    *(v2->unk_298) = v3[3];
    return;
}

void ov106_022431D4(UnkStruct_ov106_02243118 *param0, u16 param1, u16 param2)
{
    param0->unk_2A0[0] = param1;
    param0->unk_2A0[1] = param2;

    return;
}

void ov106_022431E0(int param0, int param1, void *param2, void *param3)
{
    int v0, v1;
    UnkStruct_ov106_02243118 *v2 = param3;
    const u16 *v3 = param2;

    v1 = 0;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    if (v3[1] == 0) {
        return;
    }

    v2->unk_2F9 = v3[1];
    return;
}

static void ov106_02243200(UnkStruct_ov106_02243118 *param0)
{
    if (param0->unk_0F == 1) {
        param0->unk_0F = 0;
        Menu_Free(param0->unk_98, NULL);
        Window_EraseStandardFrame(param0->unk_8C.window, 0);
    }

    return;
}

static void ov106_02243224(UnkStruct_ov106_02243118 *param0)
{
    u8 v0;
    int v1;

    ov106_02243664(param0->unk_284, 0);
    ov106_02243758(&param0->unk_4C[0], Options_Frame(param0->unk_B4));
    StringTemplate_SetPokemonTypeName(param0->unk_24, 0, ov104_0223B5A4(param0->unk_0D));

    v0 = sub_020301E0(ov106_02243090(param0->unk_0D), param0->unk_294);
    v0++;

    if (v0 > 10) {
        v0 = 10;
    }

    ov106_02242AAC(param0, 1, v0);

    if (ov106_022430B0(param0) == 1) {
        v1 = 31;
    } else {
        v1 = 24;
    }

    param0->unk_0A = ov106_02242978(param0, v1, FONT_MESSAGE);

    ov106_022436B0(param0->unk_280, 0);
    ov106_02242A54(param0);

    return;
}

static void ov106_022432AC(UnkStruct_ov106_02243118 *param0)
{
    ov106_022432D4(param0);
    ov106_02242FAC(param0->unk_48, param0->unk_0D, 0);

    Bg_ScheduleTilemapTransfer(param0->unk_48, 3);
    ov106_022436B0(param0->unk_280, 1);

    return;
}

static void ov106_022432D4(UnkStruct_ov106_02243118 *param0)
{
    ov106_02243664(param0->unk_284, 1);
    Window_EraseMessageBox(&param0->unk_4C[0], 0);

    ov106_02242AC4(param0, &param0->unk_4C[2], 0, 0, 1, 2, 0, FONT_SYSTEM);
    return;
}
