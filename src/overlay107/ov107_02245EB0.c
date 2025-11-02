#include "overlay107/ov107_02245EB0.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020302DC_decl.h"
#include "struct_decls/struct_0203041C_decl.h"
#include "struct_defs/battle_frontier.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_0223B6F4.h"
#include "overlay104/struct_ov104_0223597C.h"
#include "overlay107/ov107_02249604.h"
#include "overlay107/ov107_02249B1C.h"
#include "overlay107/ov107_02249C98.h"
#include "overlay107/ov107_02249D14.h"
#include "overlay107/struct_ov107_02246170_decl.h"
#include "overlay107/struct_ov107_02249954.h"
#include "overlay107/struct_ov107_02249B8C_decl.h"

#include "bg_window.h"
#include "communication_information.h"
#include "communication_system.h"
#include "font.h"
#include "font_special_chars.h"
#include "game_options.h"
#include "game_overlay.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "list_menu.h"
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
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_util.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "system.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_020302D0.h"
#include "unk_0203061C.h"
#include "unk_020363E8.h"
#include "unk_020393C8.h"
#include "unk_0205DFC4.h"
#include "unk_0209BA80.h"
#include "vram_transfer.h"

FS_EXTERN_OVERLAY(overlay104);

struct UnkStruct_ov107_02246170_t {
    ApplicationManager *appMan;
    BattleFrontier *frontier;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    u8 unk_0B;
    u8 unk_0C;
    u8 unk_0D;
    u8 unk_0E;
    u8 unk_0F_0 : 1;
    u8 unk_0F_1 : 1;
    u8 unk_0F_2 : 1;
    u8 unk_0F_3 : 5;
    u8 unk_10;
    u8 unk_11;
    u8 unk_12;
    u8 unk_13;
    u8 unk_14;
    u8 unk_15;
    u8 unk_16;
    u8 unk_17;
    u16 unk_18;
    u16 unk_1A;
    u16 unk_1C;
    u16 unk_1E;
    MessageLoader *unk_20;
    StringTemplate *unk_24;
    Strbuf *unk_28;
    Strbuf *unk_2C;
    Strbuf *unk_30[3];
    u16 unk_3C[8];
    BgConfig *unk_4C;
    Window unk_50[12];
    MenuTemplate unk_110;
    Menu *unk_11C;
    StringList unk_120[3];
    ListMenu *unk_138;
    StringList *unk_13C;
    PaletteData *unk_140;
    FontSpecialCharsContext *unk_144;
    Options *options;
    SaveData *saveData;
    UnkStruct_020302DC *unk_150;
    UnkStruct_0203041C *unk_154;
    UnkStruct_ov107_02249954 unk_158;
    UnkStruct_ov107_02249B8C *unk_368[4];
    UnkStruct_ov107_02249B8C *unk_378[4];
    UnkStruct_ov107_02249B8C *unk_388;
    UnkStruct_ov107_02249B8C *unk_38C;
    UnkStruct_ov107_02249B8C *unk_390;
    UnkStruct_ov107_02249B8C *unk_394[4];
    UnkStruct_ov107_02249B8C *unk_3A4[4][2];
    UnkStruct_ov107_02249B8C *unk_3C4;
    u16 *unk_3C8;
    u8 *unk_3CC;
    u8 *unk_3D0;
    u8 *unk_3D4;
    u8 *unk_3D8;
    Party *unk_3DC;
    NARC *unk_3E0;
    u16 unk_3E4[40];
    u8 unk_434;
    u8 unk_435;
    u8 unk_436;
    u8 unk_437[3];
    u16 unk_43A;
    u32 unk_43C;
};

int ov107_02245EB0(ApplicationManager *appMan, int *param1);
int ov107_02245FD0(ApplicationManager *appMan, int *param1);
int ov107_02246130(ApplicationManager *appMan, int *param1);
static BOOL ov107_02246170(UnkStruct_ov107_02246170 *param0);
static void ov107_02246274(UnkStruct_ov107_02246170 *param0);
static BOOL ov107_022462CC(UnkStruct_ov107_02246170 *param0);
static BOOL ov107_02246BDC(UnkStruct_ov107_02246170 *param0);
static BOOL ov107_02246CD0(UnkStruct_ov107_02246170 *param0);
static BOOL ov107_02246D3C(UnkStruct_ov107_02246170 *param0);
static void ov107_02246D84(UnkStruct_ov107_02246170 *param0);
static void ov107_02246EAC(void);
static void ov107_02246EE4(UnkStruct_ov107_02246170 *param0);
static void ov107_02247280(UnkStruct_ov107_02246170 *param0);
static void ov107_02247220(UnkStruct_ov107_02246170 *param0);
static void ov107_022472A4(BgConfig *param0);
static void ov107_022472E8(void *param0);
static void ov107_02247320(void);
static void ov107_02247340(BgConfig *param0);
static void ov107_02247484(UnkStruct_ov107_02246170 *param0, u32 param1);
static void ov107_022474F8(void);
static void ov107_0224752C(UnkStruct_ov107_02246170 *param0, u32 param1);
static void ov107_022475A8(UnkStruct_ov107_02246170 *param0, u32 param1);
static void ov107_02247574(void);
static void ov107_022475F0(UnkStruct_ov107_02246170 *param0, u32 param1);
static u8 ov107_02247650(UnkStruct_ov107_02246170 *param0, Window *param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9);
static u8 ov107_02247680(UnkStruct_ov107_02246170 *param0, Window *param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9, u32 param10);
static u8 ov107_02247714(UnkStruct_ov107_02246170 *param0, Window *param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9);
static u8 ov107_02247744(UnkStruct_ov107_02246170 *param0, Window *param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9, u32 param10);
static u8 ov107_022477CC(UnkStruct_ov107_02246170 *param0, int param1, u8 param2);
static void ov107_02247804(UnkStruct_ov107_02246170 *param0, Window *param1, Pokemon *param2);
static void ov107_02247A14(UnkStruct_ov107_02246170 *param0, Window *param1, int param2, u16 param3, u16 param4, u32 param5);
static void ov107_02247A3C(UnkStruct_ov107_02246170 *param0, Window *param1, Pokemon *param2);
static void ov107_02247AD0(UnkStruct_ov107_02246170 *param0, Window *param1, u8 param2, u32 param3, u32 param4, Pokemon *param5, u32 param6, u32 param7, u32 param8);
static void ov107_02247B78(UnkStruct_ov107_02246170 *param0, Window *param1);
static void ov107_02247C64(UnkStruct_ov107_02246170 *param0, Window *param1);
static void ov107_02247D04(UnkStruct_ov107_02246170 *param0, Window *param1, u8 param2);
static void ov107_02247D68(UnkStruct_ov107_02246170 *param0, u8 param1, u8 param2, int param3);
static void ov107_02247D94(UnkStruct_ov107_02246170 *param0);
static void ov107_02247DF0(UnkStruct_ov107_02246170 *param0);
static void ov107_02247E5C(UnkStruct_ov107_02246170 *param0);
static void ov107_02247F14(ListMenu *param0, u32 param1, u8 param2);
static void ov107_02247F6C(UnkStruct_ov107_02246170 *param0);
static void ov107_02248028(ListMenu *param0, u32 param1, u8 param2);
static void ov107_022480A0(ListMenu *param0, u32 param1, u8 param2);
static void ov107_022480EC(UnkStruct_ov107_02246170 *param0, u32 param1, s32 param2, u32 param3, int param4);
static void ov107_02248104(UnkStruct_ov107_02246170 *param0, u32 param1, BoxPokemon *param2);
static void ov107_02248110(UnkStruct_ov107_02246170 *param0, u32 param1);
static void ov107_0224812C(UnkStruct_ov107_02246170 *param0, Window *param1, u32 param2, u32 param3, u8 param4);
static void ov107_02248194(UnkStruct_ov107_02246170 *param0, Window *param1, u32 param2, u32 param3, u8 param4);
static void ov107_022481FC(UnkStruct_ov107_02246170 *param0, Window *param1, u32 param2, u32 param3, u8 param4, u8 param5);
static void ov107_02248240(UnkStruct_ov107_02246170 *param0);
static void ov107_022482A4(UnkStruct_ov107_02246170 *param0);
static void ov107_022482B0(UnkStruct_ov107_02246170 *param0);
static void ov107_022482D4(UnkStruct_ov107_02246170 *param0);
static void ov107_022482FC(UnkStruct_ov107_02246170 *param0);
static void ov107_02248348(UnkStruct_ov107_02246170 *param0);
static void ov107_02248350(UnkStruct_ov107_02246170 *param0, int *param1, int param2);
static void ov107_02248358(UnkStruct_ov107_02246170 *param0, int param1);
static void ov107_022483F0(UnkStruct_ov107_02246170 *param0);
static void ov107_02248420(UnkStruct_ov107_02246170 *param0, u8 param1, u8 param2);
static void ov107_02248488(UnkStruct_ov107_02246170 *param0, u32 *param1, u32 *param2, u8 param3);
static void ov107_022484DC(UnkStruct_ov107_02246170 *param0, u16 *param1, u16 *param2, u16 *param3, u16 *param4);
static BOOL ov107_0224850C(UnkStruct_ov107_02246170 *param0, u8 param1, u8 param2);
static BOOL ov107_02248674(UnkStruct_ov107_02246170 *param0, u8 param1, u8 param2);
static u16 ov107_02248770(u8 param0);
static void ov107_0224877C(UnkStruct_ov107_02246170 *param0, s8 param1);
static void ov107_022487DC(UnkStruct_ov107_02246170 *param0, s8 param1);
static void ov107_0224883C(UnkStruct_ov107_02246170 *param0);
static void ov107_02248860(Window *param0);
BOOL ov107_02248874(UnkStruct_ov107_02246170 *param0, u16 param1, u16 param2);
void ov107_022488CC(UnkStruct_ov107_02246170 *param0, u16 param1);
void ov107_02248910(int param0, int param1, void *param2, void *param3);
void ov107_02248940(UnkStruct_ov107_02246170 *param0, u16 param1, u16 param2);
void ov107_022489D0(UnkStruct_ov107_02246170 *param0, u16 param1);
void ov107_022489E0(int param0, int param1, void *param2, void *param3);
void ov107_02248A04(UnkStruct_ov107_02246170 *param0);
void ov107_02248A10(int param0, int param1, void *param2, void *param3);
static void ov107_02248A2C(UnkStruct_ov107_02246170 *param0, u8 param1);
static void ov107_02248A74(UnkStruct_ov107_02246170 *param0, u8 param1);
static void ov107_02248A8C(UnkStruct_ov107_02246170 *param0, u8 param1);
static void ov107_02248AF0(UnkStruct_ov107_02246170 *param0, u8 param1);
static void ov107_02248B38(UnkStruct_ov107_02246170 *param0, u8 param1);
static void ov107_02248B50(UnkStruct_ov107_02246170 *param0, u8 param1);
static void ov107_02248BB4(UnkStruct_ov107_02246170 *param0);
static void ov107_02248BEC(UnkStruct_ov107_02246170 *param0);
static void ov107_02248C08(UnkStruct_ov107_02246170 *param0, Window *param1);
static void ov107_02248E54(UnkStruct_ov107_02246170 *param0, u8 param1);
static void ov107_02248E84(UnkStruct_ov107_02246170 *param0, Window *param1);
static void ov107_02248F18(UnkStruct_ov107_02246170 *param0, u8 param1, u8 param2);
static void ov107_02249024(UnkStruct_ov107_02246170 *param0, u8 param1);
static void ov107_022490E8(UnkStruct_ov107_02246170 *param0, u8 param1, u8 param2);
static void ov107_02249238(UnkStruct_ov107_02246170 *param0);
static void ov107_02249258(UnkStruct_ov107_02246170 *param0);
static void ov107_022492A8(UnkStruct_ov107_02246170 *param0);
static BOOL ov107_0224933C(UnkStruct_ov107_02246170 *param0, u16 param1, u16 param2);
static void ov107_022493CC(UnkStruct_ov107_02246170 *param0, u8 param1, u8 param2);
static void ov107_02249580(UnkStruct_ov107_02246170 *param0);
static void ov107_022495A8(UnkStruct_ov107_02246170 *param0, u8 param1);
static void ov107_022495E4(UnkStruct_ov107_02246170 *param0, u32 *param1, u32 *param2);
extern void ov107_2247650(void);

int ov107_02245EB0(ApplicationManager *appMan, int *param1)
{
    int v0;
    UnkStruct_ov107_02246170 *v1;
    UnkStruct_ov104_0223597C *v2;

    Overlay_LoadByID(FS_OVERLAY_ID(overlay104), 2);
    ov107_02246EAC();
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_100, 0x20000);

    v1 = ApplicationManager_NewData(appMan, sizeof(UnkStruct_ov107_02246170), HEAP_ID_100);
    memset(v1, 0, sizeof(UnkStruct_ov107_02246170));

    v1->unk_4C = BgConfig_New(HEAP_ID_100);
    v1->appMan = appMan;

    v2 = (UnkStruct_ov104_0223597C *)ApplicationManager_Args(appMan);

    v1->saveData = v2->saveData;
    v1->unk_150 = sub_020302DC(v1->saveData);
    v1->unk_154 = sub_0203041C(v1->saveData);
    v1->unk_09 = v2->unk_04;
    v1->unk_3C8 = &v2->unk_20;
    v1->options = SaveData_GetOptions(v1->saveData);
    v1->unk_3DC = v2->unk_1C;
    v1->unk_3CC = &v2->unk_08[0];
    v1->unk_3D0 = &v2->unk_0C[0];
    v1->unk_3D4 = &v2->unk_10[0];
    v1->unk_3D8 = &v2->unk_14[0];
    v1->unk_11 = 0xff;
    v1->unk_43A = v2->unk_28;
    v1->frontier = SaveData_GetBattleFrontier(v1->saveData);

    for (v0 = 0; v0 < 3; v0++) {
        v1->unk_437[v0] = 1;
    }

    if (ov104_0223BA14(v1->unk_09) == 0) {
        v1->unk_14 = 3;
    } else {
        v1->unk_14 = 4;
    }

    v1->unk_15 = v1->unk_14;
    v1->unk_0C = (v1->unk_15 - 1);
    v1->unk_434 = 0;

    ov107_02246EE4(v1);

    if (ov104_0223BA14(v1->unk_09) == 1) {
        sub_0209BA80(v1);
    }

    (*param1) = 0;

    return 1;
}

int ov107_02245FD0(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov107_02246170 *v0 = ApplicationManager_Data(appMan);

    if (v0->unk_436 == 1) {
        switch (*param1) {
        case 1:
            v0->unk_436 = 0;
            ov107_0224883C(v0);
            ov107_02249238(v0);

            if (v0->unk_388 != NULL) {
                ov107_02249B8C(v0->unk_388);
                v0->unk_0F_0 = 0;
            }

            ov107_02249DBC(&v0->unk_50[7], Options_Frame(v0->options));
            ov104_0222E5D0(v0->unk_24, 0);
            v0->unk_0A = ov107_022477CC(v0, 7, FONT_MESSAGE);
            ov107_02248350(v0, param1, 3);
            break;
        }
    } else if (v0->unk_11 != 0xff) {
        switch (*param1) {
        case 1:
        case 3:
            v0->unk_436 = 0;
            ov107_0224883C(v0);
            ov107_02249238(v0);
            ov107_02248350(v0, param1, 2);
            break;
        }
    }

    switch (*param1) {
    case 0:
        if (ov107_02246170(v0) == 1) {
            ov107_02248350(v0, param1, 1);
        }
        break;
    case 1:
        if (ov107_022462CC(v0) == 1) {
            if (v0->unk_10 == 1) {
                ov107_02248350(v0, param1, 2);
            } else {
                if (ov104_0223BA14(v0->unk_09) == 1) {
                    ov107_02248350(v0, param1, 3);
                } else {
                    ov107_02248350(v0, param1, 4);
                }
            }
        }
        break;
    case 2:
        if (ov107_02246BDC(v0) == 1) {
            ov107_02248350(v0, param1, 1);
        }
        break;
    case 3:
        if (ov107_02246CD0(v0) == 1) {
            ov107_02248350(v0, param1, 4);
        }
        break;
    case 4:
        if (ov107_02246D3C(v0) == 1) {
            return 1;
        }
        break;
    }

    ov107_022492A8(v0);
    SpriteList_Update(v0->unk_158.unk_00);

    return 0;
}

int ov107_02246130(ApplicationManager *appMan, int *param1)
{
    int v0;
    UnkStruct_ov107_02246170 *v1 = ApplicationManager_Data(appMan);

    *(v1->unk_3C8) = v1->unk_0D;

    VramTransfer_Free();
    ov107_02246D84(v1);

    ApplicationManager_FreeData(appMan);
    SetVBlankCallback(NULL, NULL);
    Heap_Destroy(HEAP_ID_100);
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay104));

    return 1;
}

static BOOL ov107_02246170(UnkStruct_ov107_02246170 *param0)
{
    switch (param0->unk_08) {
    case 0:
        if (ov104_0223BA14(param0->unk_09) == 1) {
            CommTool_ClearReceivedTempDataAllPlayers();
            CommTiming_StartSync(216);
        }

        param0->unk_08++;
        break;
    case 1:
        if (ov104_0223BA14(param0->unk_09) == 1) {
            if (CommTiming_IsSyncState(216) == 1) {
                CommTool_ClearReceivedTempDataAllPlayers();
                param0->unk_08++;
            }
        } else {
            param0->unk_08++;
        }
        break;
    case 2:
        if (ov104_0223BA14(param0->unk_09) == 1) {
            if (ov107_02248874(param0, 20, 0) == 1) {
                param0->unk_08++;
            }
        } else {
            ov107_02246274(param0);
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1 * 3, HEAP_ID_100);
            param0->unk_08++;
        }
        break;
    case 3:
        if (ov104_0223BA14(param0->unk_09) == 1) {
            if (param0->unk_17 >= 2) {
                param0->unk_17 = 0;

                ov107_02246274(param0);
                StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1 * 3, HEAP_ID_100);

                param0->unk_08++;
            }
        } else {
            param0->unk_08++;
        }
        break;
    case 4:
        if (IsScreenFadeDone() == TRUE) {
            return 1;
        }
        break;
    }

    return 0;
}

static void ov107_02246274(UnkStruct_ov107_02246170 *param0)
{
    u16 v0, v1, v2, v3, v4, v5, v6, v7;
    Window *v8;

    ov107_022484DC(param0, &v2, &v3, &v4, &v5);
    v8 = &param0->unk_50[0];

    Window_FillTilemap(v8, 0);

    ov107_02248E84(param0, v8);
    ov107_02248C08(param0, v8);
    ov107_02247B78(param0, &param0->unk_50[3]);
    ov107_02247C64(param0, &param0->unk_50[2]);
    ov107_02248240(param0);
    GXLayers_TurnBothDispOn();

    return;
}

static BOOL ov107_022462CC(UnkStruct_ov107_02246170 *param0)
{
    u8 v0;
    u16 v1, v2;
    int v3, v4;
    u32 v5, v6, v7;
    Pokemon *v8;

    switch (param0->unk_08) {
    case 0:
        param0->unk_0B = 0;
        param0->unk_08 = 1;

        if (param0->unk_0F_3 == 1) {
            ov107_02248860(&param0->unk_50[7]);
            ov107_02248240(param0);
        } else if (param0->unk_0F_3 == 2) {
            ov107_02248860(&param0->unk_50[7]);
            ov107_022482FC(param0);
            ov107_02249C60(param0->unk_3C4, 211, 105);

            param0->unk_08 = 6;
        } else if (param0->unk_0F_3 == 3) {
            param0->unk_08 = 13;
        }

        param0->unk_0F_3 = 0;
        break;
    case 1:
        ov107_02248358(param0, gSystem.pressedKeys);

        if (gSystem.pressedKeys & PAD_BUTTON_A) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);

            if (param0->unk_0D >= param0->unk_15) {
                return 1;
            } else {
                ov107_022482A4(param0);
                ov107_022482B0(param0);
                param0->unk_08 = 2;
                break;
            }
        } else if (gSystem.pressedKeys & PAD_BUTTON_B) {
            if (param0->unk_0D != param0->unk_15) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                param0->unk_0D = param0->unk_15;
                ov107_022483F0(param0);
            }
            break;
        }
        break;
    case 2:
        v7 = ListMenu_ProcessInput(param0->unk_138);
        ov107_02249CE0(v7, 1500);
        ListMenu_CalcTrueCursorPos(param0->unk_138, &param0->unk_18);

        switch (v7) {
        case 0xffffffff:
            break;
        case 0xfffffffe:
            ov107_022482D4(param0);
            ov107_02248240(param0);
            param0->unk_08 = 0;
            break;
        case 0:
            param0->unk_13 = v7;

            if (param0->unk_3CC[ov107_02249C98(param0->unk_14, param0->unk_0D)] == 0) {
                ov107_022482D4(param0);

                ov107_02248BEC(param0);
                ov107_022480EC(param0, 0, 1, 4, 0);
                param0->unk_0A = ov107_022477CC(param0, 16, FONT_MESSAGE);
                ov107_02247D94(param0);
                param0->unk_08 = 3;
            } else {
                ov107_022482D4(param0);

                v8 = Party_GetPokemonBySlotIndex(param0->unk_3DC, ov107_02249C98(param0->unk_14, param0->unk_0D));

                ov107_02248BEC(param0);
                ov107_02248104(param0, 0, Pokemon_GetBoxPokemon(v8));

                param0->unk_0A = ov107_022477CC(param0, 20, FONT_MESSAGE);
                param0->unk_08 = 15;
            }
            break;
        case 1:
            param0->unk_13 = v7;
            ov107_022482D4(param0);

            v8 = Party_GetPokemonBySlotIndex(param0->unk_3DC, ov107_02249C98(param0->unk_14, param0->unk_0D));

            ov107_02248BEC(param0);
            ov107_02248104(param0, 0, Pokemon_GetBoxPokemon(v8));

            param0->unk_0A = ov107_022477CC(param0, 21, FONT_MESSAGE);
            ov107_02247DF0(param0);
            param0->unk_08 = 4;
            break;
        case 2:
            ov107_022482D4(param0);
            ov107_022482FC(param0);
            param0->unk_08 = 6;
            break;
        case 6:
            ov107_022482D4(param0);
            ov107_02248240(param0);
            param0->unk_08 = 0;
            break;
        }
        break;
    case 3:
        v7 = Menu_ProcessInput(param0->unk_11C);

        switch (v7) {
        case 0xffffffff:
            break;
        case 0:
            ov107_02248BB4(param0);
            ov107_02248860(&param0->unk_50[7]);

            v1 = sub_02030698(param0->frontier, sub_0205E630(param0->unk_09), sub_0205E6A8(sub_0205E630(param0->unk_09)));

            if (v1 < 1) {
                ov107_02248BEC(param0);
                param0->unk_0A = ov107_022477CC(param0, 28, FONT_MESSAGE);
                param0->unk_08 = 15;
                break;
            }

            if (ov104_0223BA14(param0->unk_09) == 0) {
                ov104_0223BC2C(param0->frontier, param0->unk_09, 1);
                ov107_02248C08(param0, &param0->unk_50[0]);
                ov107_02249024(param0, param0->unk_0D);
                param0->unk_08 = 11;
            } else {
                param0->unk_10 = 1;
                return 1;
            }
            break;
        case 1:
        case 0xfffffffe:
            ov107_02248BB4(param0);
            ov107_02248860(&param0->unk_50[7]);
            ov107_022482B0(param0);
            param0->unk_08 = 2;
            break;
        }
        break;
    case 4:
        v7 = Menu_ProcessInput(param0->unk_11C);

        switch (v7) {
        case 0xffffffff:
            break;
        case 0:
            ov107_02248BB4(param0);
            v1 = sub_02030698(param0->frontier, sub_0205E630(param0->unk_09), sub_0205E6A8(sub_0205E630(param0->unk_09)));

            if (param0->unk_3D0[ov107_02249C98(param0->unk_14, param0->unk_0D)] == 1) {
                ov107_02248BEC(param0);
                param0->unk_0A = ov107_022477CC(param0, 29, FONT_MESSAGE);
                param0->unk_08 = 15;
                break;
            } else {
                ov107_02248E54(param0, 1);
                param0->unk_08 = 5;
            }
            break;
        case 1:
            ov107_02248BB4(param0);
            v1 = sub_02030698(param0->frontier, sub_0205E630(param0->unk_09), sub_0205E6A8(sub_0205E630(param0->unk_09)));

            if (param0->unk_3D0[ov107_02249C98(param0->unk_14, param0->unk_0D)] == 2) {
                ov107_02248BEC(param0);
                param0->unk_0A = ov107_022477CC(param0, 30, FONT_MESSAGE);
                param0->unk_08 = 15;
                break;
            } else {
                ov107_02248E54(param0, 2);
                param0->unk_08 = 5;
            }
            break;
        case 2:
        case 0xfffffffe:
            ov107_02248BB4(param0);
            ov107_02248860(&param0->unk_50[7]);
            ov107_022482B0(param0);
            param0->unk_08 = 2;
            break;
        }
        break;
    case 5:
        v7 = Menu_ProcessInput(param0->unk_11C);

        switch (v7) {
        case 0xffffffff:
            break;
        case 0:
            ov107_02248BB4(param0);

            v1 = sub_02030698(param0->frontier, sub_0205E630(param0->unk_09), sub_0205E6A8(sub_0205E630(param0->unk_09)));
            v2 = ov107_02248770(param0->unk_0E);

            if (v1 < v2) {
                ov107_02248BEC(param0);
                param0->unk_0A = ov107_022477CC(param0, 28, FONT_MESSAGE);
                param0->unk_08 = 15;
                return 0;
            }

            param0->unk_12 = param0->unk_0E;

            if (ov104_0223BA14(param0->unk_09) == 0) {
                ov107_02248860(&param0->unk_50[7]);
                ov104_0223BC2C(param0->frontier, param0->unk_09, ov107_02248770(param0->unk_0E));
                ov107_02248C08(param0, &param0->unk_50[0]);
                ov107_022490E8(param0, param0->unk_0D, param0->unk_0E);
                param0->unk_08 = 11;
            } else {
                param0->unk_10 = 1;
                return 1;
            }
            break;
        case 1:
        case 0xfffffffe:
            ov107_02248BB4(param0);
            ov107_02248860(&param0->unk_50[7]);
            ov107_022482B0(param0);
            param0->unk_08 = 2;
            break;
        }
        break;
    case 6:
        v7 = ListMenu_ProcessInput(param0->unk_138);
        ov107_02249CE0(v7, 1500);
        ListMenu_CalcTrueCursorPos(param0->unk_138, &param0->unk_18);

        switch (v7) {
        case 0xffffffff:
            break;
        case 0xfffffffe:
            ov107_02248860(&param0->unk_50[7]);
            ov107_02248348(param0);
            ov107_022482B0(param0);
            param0->unk_08 = 2;
            break;
        case 3:
            param0->unk_13 = v7;
            ov107_02248348(param0);

            if (param0->unk_3D4[ov107_02249C98(param0->unk_14, param0->unk_0D)] == 0) {
                ov107_02248BEC(param0);
                ov107_022480EC(param0, 0, 2, 4, 0);
                param0->unk_0A = ov107_022477CC(param0, 43, FONT_MESSAGE);
                ov107_02247D94(param0);
                param0->unk_08 = 7;
            } else {
                ov107_02248A2C(param0, param0->unk_0D);
                param0->unk_08 = 16;
            }
            break;
        case 4:
            param0->unk_13 = v7;
            ov107_02248348(param0);

            v6 = ov107_02249CAC(param0->saveData, param0->unk_09, 2);

            if (v6 == 1) {
                param0->unk_0A = ov107_022477CC(param0, 42, FONT_MESSAGE);
                param0->unk_08 = 14;
                return 0;
            }

            if (param0->unk_3D8[ov107_02249C98(param0->unk_14, param0->unk_0D)] == 0) {
                ov107_02248BEC(param0);
                ov107_022480EC(param0, 0, 5, 4, 0);
                param0->unk_0A = ov107_022477CC(param0, 66, FONT_MESSAGE);
                ov107_02247D94(param0);
                param0->unk_08 = 8;
            } else {
                ov107_02248AF0(param0, param0->unk_0D);
                param0->unk_08 = 17;
            }
            break;
        case 5:
            v6 = ov107_02249CAC(param0->saveData, param0->unk_09, 2);

            if (v6 == (3 - 1)) {
                Sound_StopEffect(1500, 0);
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
            } else {
                param0->unk_13 = v7;
                ov107_02248348(param0);

                v1 = sub_02030698(param0->frontier, sub_0205E630(param0->unk_09), sub_0205E6A8(sub_0205E630(param0->unk_09)));

                ov107_022480EC(param0, 0, 50, 4, 0);
                param0->unk_0A = ov107_022477CC(param0, 76, FONT_MESSAGE);

                ov107_02247D94(param0);
                param0->unk_08 = 9;
            }
            break;
        }
        break;
    case 7:
        v7 = Menu_ProcessInput(param0->unk_11C);

        switch (v7) {
        case 0xffffffff:
            break;
        case 0:
            v4 = ov107_0224933C(param0, 2, 46);

            if (v4 == 1) {
                return 1;
            }
            break;
        case 1:
        case 0xfffffffe:
            ov107_02248BB4(param0);
            ov107_022482FC(param0);
            param0->unk_08 = 6;
            break;
        }
        break;
    case 8:
        v7 = Menu_ProcessInput(param0->unk_11C);

        switch (v7) {
        case 0xffffffff:
            break;
        case 0:
            v4 = ov107_0224933C(param0, 5, 69);

            if (v4 == 1) {
                return 1;
            }
            break;
        case 1:
        case 0xfffffffe:
            ov107_02248BB4(param0);
            ov107_022482FC(param0);
            param0->unk_08 = 6;
            break;
        }
        break;
    case 9:
        v7 = Menu_ProcessInput(param0->unk_11C);

        switch (v7) {
        case 0xffffffff:
            break;
        case 0:
            ov107_02248BB4(param0);

            v1 = sub_02030698(param0->frontier, sub_0205E630(param0->unk_09), sub_0205E6A8(sub_0205E630(param0->unk_09)));
            v6 = ov107_02249CAC(param0->saveData, param0->unk_09, 2);

            if (v1 < 50) {
                ov107_02248BB4(param0);
                ov107_02249DBC(&param0->unk_50[7], Options_Frame(param0->options));
                param0->unk_0A = ov107_022477CC(param0, 69, FONT_MESSAGE);
                param0->unk_08 = 14;
                break;
            }

            if (ov104_0223BA14(param0->unk_09) == 0) {
                ov107_022493CC(param0, param0->unk_0D, 5);
                param0->unk_08 = 10;
                break;
            } else {
                param0->unk_10 = 1;
                return 1;
            }
            break;
        case 1:
        case 0xfffffffe:
            ov107_02248BB4(param0);
            ov107_022482FC(param0);
            param0->unk_08 = 6;
            break;
        }
        break;
    case 10:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov107_02248BB4(param0);
            ov107_022482FC(param0);
            ov107_02249C60(param0->unk_3C4, 211, 105);
            param0->unk_08 = 6;
        }
        break;
    case 11:
        if (ov107_0224850C(param0, param0->unk_0D, param0->unk_13) == 1) {
            param0->unk_08 = 15;
        }
        break;
    case 12:
        if (ov107_0224850C(param0, param0->unk_0D, param0->unk_13) == 1) {
            param0->unk_08 = 13;
        }
        break;
    case 13:
        if (param0->unk_13 == 3) {
            param0->unk_08 = 16;
        } else {
            param0->unk_08 = 17;
        }
        break;
    case 14:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov107_022482FC(param0);
            param0->unk_08 = 6;
        }
        break;
    case 15:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov107_02248860(&param0->unk_50[7]);
            ov107_02248240(param0);
            param0->unk_08 = 0;
        }
        break;
    case 16:
        if (gSystem.pressedKeys & PAD_KEY_LEFT) {
            ov107_0224877C(param0, -1);
        } else if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
            ov107_0224877C(param0, 1);
        } else if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov107_02249238(param0);
            ov107_022482B0(param0);
            param0->unk_08 = 2;
        }
        break;
    case 17:
        if (gSystem.pressedKeys & PAD_KEY_LEFT) {
            ov107_022487DC(param0, -1);
        } else if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
            ov107_022487DC(param0, 1);
        } else if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov107_02249238(param0);
            ov107_022482B0(param0);
            param0->unk_08 = 2;
        }
        break;
    }

    return 0;
}

static BOOL ov107_02246BDC(UnkStruct_ov107_02246170 *param0)
{
    u8 v0;

    switch (param0->unk_08) {
    case 0:
        param0->unk_0F_3 = 1;

        if (ov107_02248874(param0, 21, param0->unk_0D) == 1) {
            param0->unk_10 = 0;
            param0->unk_08++;
        }
        break;
    case 1:
        if (param0->unk_11 == 0xff) {
            break;
        }

        param0->unk_17 = 0;

        if (param0->unk_13 == 5) {
            ov107_022493CC(param0, param0->unk_11, 5);
        } else {
            ov107_02248F18(param0, param0->unk_11, param0->unk_13);
        }

        param0->unk_08++;
        break;
    case 2:
        v0 = ov107_02249C9C(param0->unk_15, param0->unk_11);

        if (ov107_0224850C(param0, v0, param0->unk_13) == 1) {
            param0->unk_16 = 30;
            param0->unk_08++;
        }
        break;
    case 3:
        param0->unk_16--;

        if (param0->unk_16 == 0) {
            CommTool_ClearReceivedTempDataAllPlayers();
            CommTiming_StartSync(133);
            param0->unk_08++;
            break;
        }
        break;
    case 4:
        if (CommTiming_IsSyncState(133) == 1) {
            param0->unk_08++;
        }
        break;
    case 5:
        v0 = ov107_02249C9C(param0->unk_15, param0->unk_11);

        if (ov107_02248674(param0, v0, param0->unk_13) == 1) {
            CommTool_ClearReceivedTempDataAllPlayers();
            CommTool_Init(100);
            param0->unk_11 = 0xff;
            param0->unk_436 = 0;
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov107_02246CD0(UnkStruct_ov107_02246170 *param0)
{
    int v0;

    switch (param0->unk_08) {
    case 0:
        if (ov107_02248874(param0, 23, 0) == 1) {
            param0->unk_16 = 30;
            param0->unk_08++;
        }
        break;
    case 1:
        if (param0->unk_16 > 0) {
            param0->unk_16--;
        }

        if (param0->unk_16 == 0) {
            CommTool_ClearReceivedTempDataAllPlayers();
            CommTiming_StartSync(134);
            param0->unk_08++;
        }
        break;
    case 2:
        if (CommTiming_IsSyncState(134) == 1) {
            CommTool_ClearReceivedTempDataAllPlayers();
            ov107_02248860(&param0->unk_50[7]);
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov107_02246D3C(UnkStruct_ov107_02246170 *param0)
{
    int v0;

    switch (param0->unk_08) {
    case 0:
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_100);
        param0->unk_08++;
        break;
    case 1:
        if (IsScreenFadeDone() == TRUE) {
            return 1;
        }
        break;
    }

    return 0;
}

static void ov107_02246D84(UnkStruct_ov107_02246170 *param0)
{
    u8 v0;
    int v1, v2;

    ov107_02249B8C(param0->unk_38C);
    ov107_02249B8C(param0->unk_390);
    ov107_02249B8C(param0->unk_3C4);

    for (v1 = 0; v1 < (2 * 2); v1++) {
        for (v2 = 0; v2 < 2; v2++) {
            ov107_02249B8C(param0->unk_3A4[v1][v2]);
        }
    }

    v0 = ov104_0223B7DC(param0->unk_09, 1);

    for (v1 = 0; v1 < v0; v1++) {
        ov107_02249B8C(param0->unk_378[v1]);
        ov107_02249B8C(param0->unk_368[v1]);
        ov107_02249B8C(param0->unk_394[v1]);
    }

    NetworkIcon_Destroy();

    PaletteData_FreeBuffer(param0->unk_140, 2);
    PaletteData_FreeBuffer(param0->unk_140, 0);
    PaletteData_Free(param0->unk_140);

    param0->unk_140 = NULL;

    ov107_02249954(&param0->unk_158);

    MessageLoader_Free(param0->unk_20);
    StringTemplate_Free(param0->unk_24);
    Strbuf_Free(param0->unk_28);
    Strbuf_Free(param0->unk_2C);
    FontSpecialChars_Free(param0->unk_144);

    for (v1 = 0; v1 < 3; v1++) {
        Strbuf_Free(param0->unk_30[v1]);
    }

    ov107_02249D5C(param0->unk_50, 1);
    ov107_022472A4(param0->unk_4C);
    NARC_dtor(param0->unk_3E0);

    return;
}

static void ov107_02246EAC(void)
{
    SetVBlankCallback(NULL, NULL);
    SetHBlankCallback(NULL, NULL);
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    return;
}

static void ov107_02246EE4(UnkStruct_ov107_02246170 *param0)
{
    u32 v0, v1;
    u32 v2, v3;
    u8 v4;
    u16 v5, v6, v7, v8, v9, v10, v11, v12;
    int v13, v14, v15;
    Window *v16;

    param0->unk_3E0 = NARC_ctor(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, HEAP_ID_100);

    ov107_02247220(param0);
    ov107_02247280(param0);

    param0->unk_20 = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0201, HEAP_ID_100);
    param0->unk_24 = StringTemplate_Default(HEAP_ID_100);
    param0->unk_28 = Strbuf_Init(600, HEAP_ID_100);
    param0->unk_2C = Strbuf_Init(600, HEAP_ID_100);

    for (v13 = 0; v13 < 3; v13++) {
        param0->unk_30[v13] = Strbuf_Init(32, HEAP_ID_100);
    }

    Font_LoadTextPalette(0, 13 * 32, HEAP_ID_100);
    Font_LoadScreenIndicatorsPalette(0, 12 * 32, HEAP_ID_100);

    param0->unk_144 = FontSpecialChars_Init(1, 2, 0, HEAP_ID_100);

    ov107_02249D14(param0->unk_4C, param0->unk_50, 1);
    ov107_022484DC(param0, &v7, &v8, &v9, &v10);

    if (ov104_0223BA14(param0->unk_09) == 0) {
        v11 = 64;
        v12 = 60;
    } else {
        v11 = 32;
        v12 = 28;
    }

    v4 = ov104_0223B7DC(param0->unk_09, 1);

    for (v13 = 0; v13 < v4; v13++) {
        param0->unk_378[v13] = ov107_02249B1C(&param0->unk_158, 0, 0, 0, 7, 64 * v13 + v12, 62, 2, NULL);
        param0->unk_394[v13] = ov107_02249B1C(&param0->unk_158, 0, 0, 0, 15, 64 * v13 + v11, 58 + 20, 3, NULL);
        param0->unk_368[v13] = ov107_02249B1C(&param0->unk_158, 3 + v13, 3, 3, 1, 64 * v13 + v11, 58, 2, NULL);

        ov107_02249C08(param0->unk_368[v13], Party_GetPokemonBySlotIndex(param0->unk_3DC, v13));

        if (param0->unk_3CC[v13] == 0) {
            ov107_02249BAC(param0->unk_378[v13], 1);
            ov107_02249BAC(param0->unk_368[v13], 0);
            ov107_02249BAC(param0->unk_394[v13], 0);
        } else {
            ov107_02249BAC(param0->unk_378[v13], 0);
            ov107_02249BAC(param0->unk_368[v13], 1);
            ov107_02249BAC(param0->unk_394[v13], 1);
        }
    }

    ov107_02248488(param0, &v0, &v1, 0);

    param0->unk_38C = ov107_02249B1C(&param0->unk_158, 0, 0, 0, 1, v0, v1, 2, NULL);
    param0->unk_390 = ov107_02249B1C(&param0->unk_158, 0, 0, 0, 2, v0, v1, 2, NULL);

    if (ov104_0223BA14(param0->unk_09) == 0) {
        ov107_02249BAC(param0->unk_390, 0);
    }

    for (v13 = 0; v13 < (2 * 2); v13++) {
        for (v14 = 0; v14 < 2; v14++) {
            ov107_022495E4(param0, &v0, &v1);
            param0->unk_3A4[v13][v14] = ov107_02249B1C(&param0->unk_158, 0, 0, 0, 12, v0 + (64 * v13), v1 + (12 * v14), 2, NULL);
            ov107_02249BAC(param0->unk_3A4[v13][v14], 0);
        }
    }

    ov107_02249580(param0);
    param0->unk_3C4 = ov107_02249B1C(&param0->unk_158, 0, 0, 0, 11, 20, 20, 0, NULL);
    ov107_02249BAC(param0->unk_3C4, 0);

    if (CommSys_IsInitialized()) {
        ReserveVramForWirelessIconChars(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_32K);
        ReserveSlotsForWirelessIconPalette(NNS_G2D_VRAM_TYPE_2DMAIN);
        sub_02039734();
    }

    SetVBlankCallback(ov107_022472E8, (void *)param0);
    return;
}

static void ov107_02247220(UnkStruct_ov107_02246170 *param0)
{
    ov107_02247320();
    ov107_02247340(param0->unk_4C);

    param0->unk_140 = PaletteData_New(HEAP_ID_100);

    PaletteData_AllocBuffer(param0->unk_140, 2, 32 * 16, HEAP_ID_100);
    PaletteData_AllocBuffer(param0->unk_140, 0, 32 * 16, HEAP_ID_100);

    ov107_02247484(param0, 3);
    ov107_022474F8();
    ov107_0224752C(param0, 2);
    ov107_02247574();

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    ov107_022475F0(param0, 4);

    return;
}

static void ov107_02247280(UnkStruct_ov107_02246170 *param0)
{
    ov107_02249604(&param0->unk_158, param0->unk_3DC, ov104_0223BA14(param0->unk_09));
    return;
}

static void ov107_022472A4(BgConfig *param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, 0);

    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_0);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_0);
    Heap_Free(param0);

    return;
}

static void ov107_022472E8(void *param0)
{
    UnkStruct_ov107_02246170 *v0 = param0;

    if (v0->unk_140 != NULL) {
        PaletteData_CommitFadedBuffers(v0->unk_140);
    }

    Bg_RunScheduledUpdates(v0->unk_4C);
    VramTransfer_Process();
    RenderOam_Transfer();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov107_02247320(void)
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

static void ov107_02247340(BgConfig *param0)
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
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x0000,
            .charBase = GX_BG_CHARBASE_0x04000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 2,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_1, &v1, 0);
        Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32, 0, HEAP_ID_100);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_1);
    }

    {
        BgTemplate v2 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x0800,
            .charBase = GX_BG_CHARBASE_0x0c000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_0, &v2, 0);
        Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_100);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_0);
    }

    {
        BgTemplate v3 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x1000,
            .charBase = GX_BG_CHARBASE_0x14000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 1,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_2, &v3, 0);
        Bg_ClearTilesRange(BG_LAYER_MAIN_2, 32, 0, HEAP_ID_100);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_2);
    }

    {
        BgTemplate v4 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x2000,
            .charBase = GX_BG_CHARBASE_0x08000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 3,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_3, &v4, 0);
        Bg_ClearTilesRange(BG_LAYER_MAIN_3, 32, 0, HEAP_ID_100);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_3);
    }

    {
        BgTemplate v5 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x3000,
            .charBase = GX_BG_CHARBASE_0x10000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_SUB_0, &v5, 0);
        Bg_ClearTilemap(param0, BG_LAYER_SUB_0);
    }

    G2_SetBG0Priority(0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);

    return;
}

static void ov107_02247484(UnkStruct_ov107_02246170 *param0, u32 param1)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(param0->unk_3E0, 44, param0->unk_4C, param1, 0, 0, 1, HEAP_ID_100);

    if (ov104_0223BA14(param0->unk_09) == 0) {
        Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->unk_3E0, 40, param0->unk_4C, param1, 0, 0, 1, HEAP_ID_100);
    } else {
        Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->unk_3E0, 41, param0->unk_4C, param1, 0, 0, 1, HEAP_ID_100);
    }

    return;
}

static void ov107_022474F8(void)
{
    void *v0;
    NNSG2dPaletteData *v1;

    v0 = Graphics_GetPlttData(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, 138, &v1, HEAP_ID_100);

    DC_FlushRange(v1->pRawData, sizeof(u16) * 16 * 4);
    GX_LoadBGPltt(v1->pRawData, 0, sizeof(u16) * 16 * 4);
    Heap_Free(v0);

    return;
}

static void ov107_0224752C(UnkStruct_ov107_02246170 *param0, u32 param1)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(param0->unk_3E0, 44, param0->unk_4C, param1, 0, 0, 1, HEAP_ID_100);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->unk_3E0, 42, param0->unk_4C, param1, 0, 0, 1, HEAP_ID_100);

    return;
}

static void ov107_02247574(void)
{
    void *v0;
    NNSG2dPaletteData *v1;

    v0 = Graphics_GetPlttData(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, 138, &v1, HEAP_ID_100);

    DC_FlushRange(v1->pRawData, sizeof(u16) * 16 * 4);
    GX_LoadBGPltt(v1->pRawData, 0, sizeof(u16) * 16 * 4);
    Heap_Free(v0);

    return;
}

static void ov107_022475A8(UnkStruct_ov107_02246170 *param0, u32 param1)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(param0->unk_3E0, 44, param0->unk_4C, param1, 0, 0, 1, HEAP_ID_100);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->unk_3E0, 43, param0->unk_4C, param1, 0, 0, 1, HEAP_ID_100);

    return;
}

static void ov107_022475F0(UnkStruct_ov107_02246170 *param0, u32 param1)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(param0->unk_3E0, 125, param0->unk_4C, param1, 0, 0, 1, HEAP_ID_100);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->unk_3E0, 126, param0->unk_4C, param1, 0, 0, 1, HEAP_ID_100);
    Graphics_LoadPaletteFromOpenNARC(param0->unk_3E0, 171, 4, 0, 0x20, HEAP_ID_100);

    return;
}

static u8 ov107_02247650(UnkStruct_ov107_02246170 *param0, Window *param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9)
{
    return ov107_02247680(param0, param1, param2, param3, param4, param5, param6, param7, param8, param9, 0);
}

static u8 ov107_02247680(UnkStruct_ov107_02246170 *param0, Window *param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9, u32 param10)
{
    u8 v0;
    Window_FillTilemap(param1, param8);
    MessageLoader_GetStrbuf(param0->unk_20, param2, param0->unk_2C);
    StringTemplate_Format(param0->unk_24, param0->unk_28, param0->unk_2C);

    switch (param10) {
    case 1:
        param3 -= (Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_28, 0) + 1) / 2;
        break;
    case 2:
        param3 -= Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_28, 0);
        break;
    }

    v0 = Text_AddPrinterWithParamsAndColor(param1, param9, param0->unk_28, param3, param4, param5, TEXT_COLOR(param6, param7, param8), NULL);
    Window_ScheduleCopyToVRAM(param1);

    return v0;
}

static u8 ov107_02247714(UnkStruct_ov107_02246170 *param0, Window *param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9)
{
    ov107_02247744(param0, param1, param2, param3, param4, param5, param6, param7, param8, param9, 0);
}

static u8 ov107_02247744(UnkStruct_ov107_02246170 *param0, Window *param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9, u32 param10)
{
    u8 v0;
    MessageLoader_GetStrbuf(param0->unk_20, param2, param0->unk_2C);
    StringTemplate_Format(param0->unk_24, param0->unk_28, param0->unk_2C);

    switch (param10) {
    case 1:
        param3 -= (Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_28, 0) + 1) / 2;
        break;
    case 2:
        param3 -= Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_28, 0);
        break;
    }

    v0 = Text_AddPrinterWithParamsAndColor(param1, param9, param0->unk_28, param3, param4, param5, TEXT_COLOR(param6, param7, param8), NULL);
    Window_ScheduleCopyToVRAM(param1);

    return v0;
}

static u8 ov107_022477CC(UnkStruct_ov107_02246170 *param0, int param1, u8 param2)
{
    u8 v0 = ov107_02247650(param0, &param0->unk_50[7], param1, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, param2);
    Window_ScheduleCopyToVRAM(&param0->unk_50[7]);

    return v0;
}

static void ov107_02247804(UnkStruct_ov107_02246170 *param0, Window *window, Pokemon *mon)
{
    Window_FillTilemap(window, 0);

    StringTemplate_SetItemName(param0->unk_24, 0, Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL));
    ov107_02247A14(param0, window, 48, 8, 8, 0);
    ov107_02247A14(param0, window, 49, 72, 8, 0);

    StringTemplate_SetNatureName(param0->unk_24, 0, Pokemon_GetNature(mon));
    ov107_02247A14(param0, window, 50, 8, 24, 0);
    ov107_02247A14(param0, window, 51, 72, 24, 0);

    StringTemplate_SetAbilityName(param0->unk_24, 0, Pokemon_GetValue(mon, MON_DATA_ABILITY, NULL));
    ov107_02247A14(param0, window, 52, 8, 40, 0);
    ov107_02247A14(param0, window, 53, 72, 40, 0);

    ov107_022480EC(param0, 0, Pokemon_GetValue(mon, MON_DATA_ATK, NULL), 3, 1);
    ov107_02247A14(param0, window, 54, 8, 56, 0);
    ov107_02247A14(param0, window, 55, 88, 56, 2);

    ov107_022480EC(param0, 0, Pokemon_GetValue(mon, MON_DATA_DEF, NULL), 3, 1);
    ov107_02247A14(param0, window, 56, 104, 56, 0);
    ov107_02247A14(param0, window, 57, 184, 56, 2);

    ov107_022480EC(param0, 0, Pokemon_GetValue(mon, MON_DATA_SP_ATK, NULL), 3, 1);
    ov107_02247A14(param0, window, 58, 8, 72, 0);
    ov107_02247A14(param0, window, 59, 88, 72, 2);

    ov107_022480EC(param0, 0, Pokemon_GetValue(mon, MON_DATA_SP_DEF, NULL), 3, 1);
    ov107_02247A14(param0, window, 60, 104, 72, 0);
    ov107_02247A14(param0, window, 61, 184, 72, 2);

    ov107_022480EC(param0, 0, Pokemon_GetValue(mon, MON_DATA_SPEED, NULL), 3, 1);
    ov107_02247A14(param0, window, 62, 8, 88, 0);
    ov107_02247A14(param0, window, 63, 88, 88, 2);

    Window_ScheduleCopyToVRAM(window);
}

static void ov107_02247A14(UnkStruct_ov107_02246170 *param0, Window *param1, int param2, u16 param3, u16 param4, u32 param5)
{
    ov107_02247744(param0, param1, param2, param3, param4, 0xff, 1, 2, 0, 0, param5);
}

static void ov107_02247A3C(UnkStruct_ov107_02246170 *param0, Window *param1, Pokemon *param2)
{
    Window_FillTilemap(param1, 0);

    ov107_02247AD0(param0, param1, 0, 71, 75, param2, 54, 58, 66);
    ov107_02247AD0(param0, param1, 1, 72, 75, param2, 55, 59, 67);
    ov107_02247AD0(param0, param1, 2, 73, 75, param2, 56, 60, 68);
    ov107_02247AD0(param0, param1, 3, 74, 75, param2, 57, 61, 69);

    Window_ScheduleCopyToVRAM(param1);
    return;
}

static void ov107_02247AD0(UnkStruct_ov107_02246170 *param0, Window *param1, u8 param2, u32 param3, u32 param4, Pokemon *param5, u32 param6, u32 param7, u32 param8)
{
    u16 v0, v1, v2, v3;

    v0 = 4 * 8;
    v1 = (2 * 8 - 4) + param2 * 24;
    v2 = 18 * 8 + 1;
    v3 = (2 * 8 - 4) + param2 * 24;
    StringTemplate_SetMoveName(param0->unk_24, param2, Pokemon_GetValue(param5, param6, NULL));
    param0->unk_0A = ov107_02247714(param0, param1, param3, v0, v1, 0xFF, 1, 2, 0, 0);
    ov107_022480EC(param0, 4, Pokemon_GetValue(param5, param7, NULL), 3, 0);
    ov107_022480EC(param0, 5, Pokemon_GetValue(param5, param8, NULL), 3, 0);
    param0->unk_0A = ov107_02247744(param0, param1, param4, v2, v3, 0xFF, 1, 2, 0, 0, 1);
}

static void ov107_02247B78(UnkStruct_ov107_02246170 *param0, Window *param1)
{
    u16 v0;
    u8 v1;
    int v2;
    Pokemon *v3;

    Window_FillTilemap(param1, 0);

    if (ov104_0223BA14(param0->unk_09) == 0) {
        v0 = 36;
    } else {
        v0 = 4;
    }

    v1 = ov104_0223B7DC(param0->unk_09, 1);

    for (v2 = 0; v2 < v1; v2++) {
        if (param0->unk_3CC[v2] == 0) {
            Window_FillRectWithColor(param1, 0, v0 + (64 * v2), 1, 64, 2 * 8);

            continue;
        }

        v3 = Party_GetPokemonBySlotIndex(param0->unk_3DC, v2);

        FontSpecialChars_DrawPartyScreenHPText(param0->unk_144, Pokemon_GetValue(v3, MON_DATA_HP, NULL), 3, 1, param1, v0 + (64 * v2), 1);
        FontSpecialChars_DrawPartyScreenLevelText(param0->unk_144, 0, param1, 24 + v0 + (64 * v2), 1);
        FontSpecialChars_DrawPartyScreenHPText(param0->unk_144, Pokemon_GetValue(v3, MON_DATA_MAX_HP, NULL), 3, 0, param1, 32 + v0 + (64 * v2), 1);
    }

    Window_ScheduleCopyToVRAM(param1);
    return;
}

static void ov107_02247C64(UnkStruct_ov107_02246170 *param0, Window *param1)
{
    u32 v0;
    u16 v1, v2;
    u8 v3;
    int v4;
    Pokemon *v5;

    Window_FillTilemap(param1, 0);

    if (ov104_0223BA14(param0->unk_09) == 0) {
        v1 = 40;
        v2 = 80;
    } else {
        v1 = 8;
        v2 = 48;
    }

    v3 = ov104_0223B7DC(param0->unk_09, 1);

    for (v4 = 0; v4 < v3; v4++) {
        v5 = Party_GetPokemonBySlotIndex(param0->unk_3DC, v4);
        FontSpecialChars_DrawPartyScreenText(param0->unk_144, 1, Pokemon_GetValue(v5, MON_DATA_LEVEL, NULL), 3, 0, param1, v1 + (64 * v4), 1);

        v0 = Pokemon_GetValue(v5, MON_DATA_GENDER, NULL);
        ov107_022481FC(param0, param1, v2 + (64 * v4), 1, 0, v0);
    }

    Window_ScheduleCopyToVRAM(param1);
    return;
}

static void ov107_02247D04(UnkStruct_ov107_02246170 *param0, Window *param1, u8 param2)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        param0->unk_120[v0].entry = NULL;
        param0->unk_120[v0].index = 0;
    }

    param0->unk_110.choices = param0->unk_120;
    param0->unk_110.window = param1;
    param0->unk_110.fontID = FONT_SYSTEM;
    param0->unk_110.xSize = 1;
    param0->unk_110.ySize = param2;
    param0->unk_110.lineSpacing = 0;
    param0->unk_110.suppressCursor = FALSE;
    param0->unk_110.loopAround = TRUE;

    return;
}

static void ov107_02247D68(UnkStruct_ov107_02246170 *param0, u8 param1, u8 param2, int param3)
{
    int v0;
    void *v1;

    MessageLoader_GetStrbuf(param0->unk_20, param3, param0->unk_30[param1]);

    param0->unk_120[param1].entry = (const void *)param0->unk_30[param1];
    param0->unk_120[param1].index = param2;

    return;
}

static void ov107_02247D94(UnkStruct_ov107_02246170 *param0)
{
    ov107_02249D84(param0->unk_4C, &param0->unk_50[10]);
    ov107_02247D04(param0, &param0->unk_50[10], 2);
    ov107_02247D68(param0, 0, 0, 26);
    ov107_02247D68(param0, 1, 1, 27);

    param0->unk_11C = Menu_NewAndCopyToVRAM(&param0->unk_110, 8, 0, 0, 100, PAD_BUTTON_B);
    param0->unk_0F_2 = 1;

    return;
}

static void ov107_02247DF0(UnkStruct_ov107_02246170 *param0)
{
    ov107_02249D84(param0->unk_4C, &param0->unk_50[11]);
    ov107_02247D04(param0, &param0->unk_50[11], 3);
    ov107_02247D68(param0, 0, 0, 22);
    ov107_02247D68(param0, 1, 1, 23);
    ov107_02247D68(param0, 2, 2, 24);

    param0->unk_11C = Menu_NewAndCopyToVRAM(&param0->unk_110, 8, 0, 0, 100, PAD_BUTTON_B);
    param0->unk_0F_2 = 1;

    return;
}

static const ListMenuTemplate Unk_ov107_0224A17C = {
    NULL,
    NULL,
    NULL,
    NULL,
    0x0,
    0x0,
    0x0,
    0x8,
    0x0,
    0x0,
    0x1,
    0x0,
    0x2,
    0x0,
    0x10,
    0x0,
    0x0,
    0x0,
    NULL
};

static const u32 Unk_ov107_0224A1BC[][2] = {
    { 0x8, 0x0 },
    { 0x9, 0x1 },
    { 0xA, 0x2 },
    { 0xB, 0xfffffffe }
};

static const u32 Unk_ov107_0224A0CC[] = {
    0xC,
    0xD,
    0xE,
    0xF
};

static void ov107_02247E5C(UnkStruct_ov107_02246170 *param0)
{
    int v0;
    ListMenuTemplate v1;

    ov107_02249D84(param0->unk_4C, &param0->unk_50[5]);
    Window_FillTilemap(&param0->unk_50[5], 15);

    param0->unk_13C = StringList_New(NELEMS(Unk_ov107_0224A1BC), HEAP_ID_100);

    for (v0 = 0; v0 < (NELEMS(Unk_ov107_0224A1BC)); v0++) {
        StringList_AddFromMessageBank(param0->unk_13C, param0->unk_20, Unk_ov107_0224A1BC[v0][0], Unk_ov107_0224A1BC[v0][1]);
    }

    v1 = Unk_ov107_0224A17C;

    v1.choices = param0->unk_13C;
    v1.window = &param0->unk_50[5];
    v1.parent = param0;
    v1.cursorCallback = ov107_02247F14;
    v1.printCallback = NULL;
    v1.count = (NELEMS(Unk_ov107_0224A1BC));
    v1.textColorBg = 15;
    v1.maxDisplay = 4;

    param0->unk_138 = ListMenu_New(&v1, param0->unk_1C, param0->unk_1E, HEAP_ID_100);
    param0->unk_0F_1 = 1;

    Window_ScheduleCopyToVRAM(&param0->unk_50[5]);
    return;
}

static void ov107_02247F14(ListMenu *param0, u32 param1, u8 param2)
{
    u32 v0, v1;
    u16 v2, v3, v4;
    UnkStruct_ov107_02246170 *v5 = (UnkStruct_ov107_02246170 *)ListMenu_GetAttribute(param0, 19);

    if (param2 == 0) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    ListMenu_CalcTrueCursorPos(param0, &v4);
    ov107_02247650(v5, &v5->unk_50[9], Unk_ov107_0224A0CC[v4], 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_MESSAGE);

    return;
}

static const u32 Unk_ov107_0224A19C[][2] = {
    { 0x21, 0x3 },
    { 0x22, 0x4 },
    { 0x23, 0x5 },
    { 0x24, 0xfffffffe }
};

static const u16 Unk_ov107_0224A0AC[][2] = {
    { 0x25, 0x25 },
    { 0x26, 0x26 },
    { 0x27, 0x28 },
    { 0x29, 0x29 }
};

static void ov107_02247F6C(UnkStruct_ov107_02246170 *param0)
{
    int v0;
    ListMenuTemplate v1;

    ov107_02249D84(param0->unk_4C, &param0->unk_50[6]);
    Window_FillTilemap(&param0->unk_50[6], 15);

    param0->unk_13C = StringList_New(NELEMS(Unk_ov107_0224A19C), HEAP_ID_100);

    for (v0 = 0; v0 < (NELEMS(Unk_ov107_0224A19C)); v0++) {
        StringList_AddFromMessageBank(param0->unk_13C, param0->unk_20, Unk_ov107_0224A19C[v0][0], Unk_ov107_0224A19C[v0][1]);
    }

    v1 = Unk_ov107_0224A17C;

    v1.choices = param0->unk_13C;
    v1.window = &param0->unk_50[6];
    v1.parent = param0;
    v1.cursorCallback = ov107_02248028;
    v1.printCallback = ov107_022480A0;
    v1.count = (NELEMS(Unk_ov107_0224A19C));
    v1.textColorBg = 15;
    v1.maxDisplay = 4;

    param0->unk_138 = ListMenu_New(&v1, 0, 0, HEAP_ID_100);
    param0->unk_0F_1 = 1;

    Window_ScheduleCopyToVRAM(&param0->unk_50[6]);
    return;
}

static void ov107_02248028(ListMenu *param0, u32 param1, u8 param2)
{
    u8 v0, v1;
    u16 v2;
    UnkStruct_ov107_02246170 *v3 = (UnkStruct_ov107_02246170 *)ListMenu_GetAttribute(param0, 19);

    if (param2 == 0) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    ListMenu_CalcTrueCursorPos(param0, &v2);

    v0 = ov107_02249CAC(v3->saveData, v3->unk_09, 2);

    if (v0 == 1) {
        v1 = 0;
    } else {
        v1 = 1;
    }

    ov107_02247650(v3, &v3->unk_50[7], Unk_ov107_0224A0AC[v2][v1], 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_MESSAGE);

    return;
}

static void ov107_022480A0(ListMenu *param0, u32 param1, u8 param2)
{
    u8 v0, v1;
    UnkStruct_ov107_02246170 *v2 = (UnkStruct_ov107_02246170 *)ListMenu_GetAttribute(param0, 19);

    v0 = ov107_02249CAC(v2->saveData, v2->unk_09, 2);
    v1 = 1;

    switch (param1) {
    case 4:
        if (v0 == 1) {
            v1 = 2;
        } else {
            v1 = 1;
        }
        break;
    case 5:
        if (v0 == (3 - 1)) {
            v1 = 2;
        } else {
            v1 = 1;
        }
        break;
    default:
        v1 = 1;
        break;
    }

    ListMenu_SetTextColors(param0, v1, 15, 2);
    return;
}

static void ov107_022480EC(UnkStruct_ov107_02246170 *param0, u32 param1, s32 param2, u32 param3, int param4)
{
    StringTemplate_SetNumber(param0->unk_24, param1, param2, param3, param4, 1);
    return;
}

static void ov107_02248104(UnkStruct_ov107_02246170 *param0, u32 param1, BoxPokemon *param2)
{
    StringTemplate_SetSpeciesName(param0->unk_24, param1, param2);
    return;
}

static void ov107_02248110(UnkStruct_ov107_02246170 *param0, u32 param1)
{
    StringTemplate_SetPlayerName(param0->unk_24, param1, SaveData_GetTrainerInfo(param0->saveData));
    return;
}

static void ov107_0224812C(UnkStruct_ov107_02246170 *param0, Window *param1, u32 param2, u32 param3, u8 param4)
{
    TextColor v0;
    const TrainerInfo *v1;
    Strbuf *v2;

    v1 = SaveData_GetTrainerInfo(param0->saveData);
    v2 = Strbuf_Init(7 + 1, HEAP_ID_100);

    Strbuf_CopyChars(v2, TrainerInfo_Name(v1));

    if (TrainerInfo_Gender(v1) == 0) {
        v0 = TEXT_COLOR(7, 8, 0);
    } else {
        v0 = TEXT_COLOR(3, 4, 0);
    }

    Text_AddPrinterWithParamsAndColor(param1, param4, v2, param2, param3, TEXT_SPEED_NO_TRANSFER, v0, NULL);
    Strbuf_Free(v2);

    return;
}

static void ov107_02248194(UnkStruct_ov107_02246170 *param0, Window *param1, u32 param2, u32 param3, u8 param4)
{
    TrainerInfo *v0;
    TextColor v1;

    v0 = CommInfo_TrainerInfo(CommSys_CurNetId() ^ 1);

    if (TrainerInfo_Gender(v0) == 0) {
        v1 = TEXT_COLOR(7, 8, 0);
    } else {
        v1 = TEXT_COLOR(3, 4, 0);
    }

    StringTemplate_SetPlayerName(param0->unk_24, 0, v0);
    ov107_02247714(param0, param1, 1, param2, param3, TEXT_SPEED_NO_TRANSFER, GET_TEXT_FG_COLOR(v1), GET_TEXT_SHADOW_COLOR(v1), GET_TEXT_BG_COLOR(v1), FONT_SYSTEM);

    return;
}

static void ov107_022481FC(UnkStruct_ov107_02246170 *param0, Window *param1, u32 param2, u32 param3, u8 param4, u8 param5)
{
    u32 v0, v1;
    u8 v2, v3, v4;

    if (param5 == 0) {
        v0 = 64;
        v2 = 7;
        v3 = 8;
        v4 = 0;
    } else if (param5 == 1) {
        v0 = 65;
        v2 = 3;
        v3 = 4;
        v4 = 0;
    } else {
        return;
    }

    ov107_02247714(param0, param1, v0, param2, param3, 0xff, v2, v3, v4, param4);

    return;
}

static void ov107_02248240(UnkStruct_ov107_02246170 *param0)
{
    param0->unk_0A = ov107_02247680(param0, &param0->unk_50[1], 5, 16, 1 + 4, TEXT_SPEED_NO_TRANSFER, 1, 2, 0, FONT_SYSTEM, 1);
    ov107_02249DBC(&param0->unk_50[8], Options_Frame(param0->options));
    param0->unk_0A = ov107_02247650(param0, &param0->unk_50[8], 4, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_MESSAGE);
}

static void ov107_022482A4(UnkStruct_ov107_02246170 *param0)
{
    ov107_02248860(&param0->unk_50[8]);
    return;
}

static void ov107_022482B0(UnkStruct_ov107_02246170 *param0)
{
    ov107_02249DBC(&param0->unk_50[9], Options_Frame(param0->options));

    param0->unk_18 = 0;
    ov107_02247E5C(param0);

    return;
}

static void ov107_022482D4(UnkStruct_ov107_02246170 *param0)
{
    ListMenu_GetListAndCursorPos(param0->unk_138, &param0->unk_1C, &param0->unk_1E);

    ov107_02248860(&param0->unk_50[9]);
    ov107_02249258(param0);

    return;
}

static void ov107_022482FC(UnkStruct_ov107_02246170 *param0)
{
    ov107_02249DBC(&param0->unk_50[7], Options_Frame(param0->options));

    param0->unk_0A = ov107_02247650(param0, &param0->unk_50[7], 37, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_MESSAGE);
    param0->unk_18 = 0;

    ov107_02247F6C(param0);
    return;
}

static void ov107_02248348(UnkStruct_ov107_02246170 *param0)
{
    ov107_02249258(param0);
    return;
}

static void ov107_02248350(UnkStruct_ov107_02246170 *param0, int *param1, int param2)
{
    param0->unk_08 = 0;
    *param1 = param2;
    return;
}

static void ov107_02248358(UnkStruct_ov107_02246170 *param0, int param1)
{
    u8 v0;
    int v1 = 0;
    v0 = ov107_02249C98(param0->unk_14, param0->unk_0D);

    if (gSystem.pressedKeys & PAD_KEY_LEFT) {
        if (param0->unk_0D == param0->unk_15) {
            return;
        }

        if (v0 == 0) {
            param0->unk_0D += (param0->unk_14 - 1);
        } else {
            param0->unk_0D--;
        }

        v1 = 1;
    }

    if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
        if (param0->unk_0D == param0->unk_15) {
            return;
        }

        if (v0 == (param0->unk_14 - 1)) {
            param0->unk_0D -= (param0->unk_14 - 1);
        } else {
            param0->unk_0D++;
        }

        v1 = 1;
    }

    if (gSystem.pressedKeys & PAD_KEY_UP) {
        if (param0->unk_0D < param0->unk_14) {
            return;
        }

        param0->unk_0D = param0->unk_0C;
        v1 = 1;
    }

    if (gSystem.pressedKeys & PAD_KEY_DOWN) {
        if (param0->unk_0D >= param0->unk_15) {
            return;
        }

        param0->unk_0C = param0->unk_0D;
        param0->unk_0D = param0->unk_15;
        v1 = 1;
    }

    if (v1 == 1) {
        ov107_022483F0(param0);
    }

    return;
}

static void ov107_022483F0(UnkStruct_ov107_02246170 *param0)
{
    Sound_PlayEffect(SEQ_SE_CONFIRM);

    if (ov104_0223BA14(param0->unk_09) == 1) {
        ov107_02248874(param0, 22, param0->unk_0D);
    }

    ov107_02248420(param0, param0->unk_0D, 0);
    return;
}

static void ov107_02248420(UnkStruct_ov107_02246170 *param0, u8 param1, u8 param2)
{
    UnkStruct_ov107_02249B8C *v0;
    u32 v1, v2, v3, v4;

    if (param2 == 0) {
        v0 = param0->unk_38C;
        v3 = 1;
        v4 = 0;
    } else {
        v0 = param0->unk_390;
        v3 = 2;
        v4 = 17;
    }

    if (param1 >= param0->unk_15) {
        ov107_02249BEC(v0, v4);
        ov107_02249BB8(v0, 224, 160);
    } else {
        ov107_02249BEC(v0, v3);
        ov107_02248488(param0, &v1, &v2, param1);
        ov107_02249BB8(v0, v1, v2);
    }

    return;
}

static void ov107_02248488(UnkStruct_ov107_02246170 *param0, u32 *param1, u32 *param2, u8 param3)
{
    if (ov104_0223BA14(param0->unk_09) == 1) {
        if (param3 == 0) {
            *param1 = 40;
        } else if (param3 == 1) {
            *param1 = 104;
        } else if (param3 == 2) {
            *param1 = 168;
        } else {
            *param1 = 232;
        }
    } else {
        if (param3 == 0) {
            *param1 = 72;
        } else if (param3 == 1) {
            *param1 = 136;
        } else {
            *param1 = 200;
        }
    }

    *param2 = 88;
    return;
}

static void ov107_022484DC(UnkStruct_ov107_02246170 *param0, u16 *param1, u16 *param2, u16 *param3, u16 *param4)
{
    if (ov104_0223BA14(param0->unk_09) == 0) {
        *param1 = 32;
        *param2 = 0;
        *param3 = 0;
        *param4 = 0;
    } else {
        *param1 = 0;
        *param2 = 0;
        *param3 = 120;
        *param4 = 0;
    }

    return;
}

static BOOL ov107_0224850C(UnkStruct_ov107_02246170 *param0, u8 param1, u8 param2)
{
    u16 v0;
    u32 v1;
    u8 v2, v3;
    Pokemon *v4;

    v3 = param0->unk_15;
    v2 = ov107_02249C98(param0->unk_14, param1);
    v4 = Party_GetPokemonBySlotIndex(param0->unk_3DC, v2);

    switch (param2) {
    case 0:
        param0->unk_0F_0 = 0;
        return 1;
        break;
    case 1:
        if (param0->unk_0F_0 == 0) {
            param0->unk_0F_0 = 1;

            if (param0->unk_12 == 1) {
                v1 = 9;
            } else {
                v1 = 10;
            }

            if (ov104_0223BA14(param0->unk_09) == 0) {
                v0 = 80;
            } else {
                v0 = 48;
            }

            param0->unk_388 = ov107_02249B1C(&param0->unk_158, 0, 0, 0, v1, v0 + (64 * v2), 50, 0, NULL);
        }

        if (ov107_02249C40(param0->unk_388) == 0) {
            ov107_02249B8C(param0->unk_388);
            param0->unk_388 = NULL;
            param0->unk_0F_0 = 0;
            return 1;
        }
        break;
    case 3:
        if (ov104_0223BA14(param0->unk_09) == 0) {
            if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                ov107_02248A2C(param0, param1);
                param0->unk_0F_0 = 0;
                return 1;
            }
        } else {
            param0->unk_0F_0 = 0;
            return 1;
        }
        break;
    case 4:
        if (ov104_0223BA14(param0->unk_09) == 0) {
            if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                ov107_02248AF0(param0, param1);
                param0->unk_0F_0 = 0;
                return 1;
            }
        } else {
            param0->unk_0F_0 = 0;
            return 1;
        }
        break;
    case 5:
        param0->unk_0F_0 = 0;
        return 1;
        break;
    }

    return 0;
}

static BOOL ov107_02248674(UnkStruct_ov107_02246170 *param0, u8 param1, u8 param2)
{
    u32 v0;
    u8 v1, v2;
    Pokemon *v3;

    v2 = param0->unk_15;
    v1 = ov107_02249C98(param0->unk_14, param1);
    v3 = Party_GetPokemonBySlotIndex(param0->unk_3DC, v1);

    switch (param2) {
    case 0:
    case 1:
    case 5:
        param0->unk_0F_0 = 0;
        return 1;
        break;
    case 3:
        if (ov104_0223BA14(param0->unk_09) == 1) {
            if (CommSys_CurNetId() == 0) {
                if (param0->unk_11 >= v2) {
                    param0->unk_0F_0 = 0;
                    return 1;
                }
            } else {
                if (param0->unk_11 < v2) {
                    param0->unk_0F_0 = 0;
                    return 1;
                }
            }
        }

        if (param0->unk_0F_0 == 0) {
            param0->unk_0F_3 = 3;
            ov107_02248A2C(param0, param1);
            param0->unk_0F_0 = 0;
            return 1;
        }
        break;
    case 4:
        if (ov104_0223BA14(param0->unk_09) == 1) {
            if (CommSys_CurNetId() == 0) {
                if (param0->unk_11 >= v2) {
                    param0->unk_0F_0 = 0;
                    return 1;
                }
            } else {
                if (param0->unk_11 < v2) {
                    param0->unk_0F_0 = 0;
                    return 1;
                }
            }
        }

        if (param0->unk_0F_0 == 0) {
            param0->unk_0F_3 = 3;
            ov107_02248AF0(param0, param1);
            param0->unk_0F_0 = 0;
            return 1;
        }
        break;
    }

    return 0;
}

static u16 ov107_02248770(u8 param0)
{
    if (param0 == 1) {
        return 1;
    }

    return 15;
}

static void ov107_0224877C(UnkStruct_ov107_02246170 *param0, s8 param1)
{
    Pokemon *v0;
    s8 v1 = param0->unk_0D;

    while (TRUE) {
        v1 += param1;

        if (v1 < 0) {
            v1 = (param0->unk_14 - 1);
        } else if (v1 >= param0->unk_14) {
            v1 = 0;
        }

        if (v1 == param0->unk_0D) {
            return;
        }

        if (param0->unk_3D4[v1] == 1) {
            param0->unk_0D = v1;
            ov107_022483F0(param0);
            v0 = Party_GetPokemonBySlotIndex(param0->unk_3DC, ov107_02249C98(param0->unk_14, param0->unk_0D));
            ov107_02247804(param0, &param0->unk_50[4], v0);
            return;
        }
    }

    return;
}

static void ov107_022487DC(UnkStruct_ov107_02246170 *param0, s8 param1)
{
    Pokemon *v0;
    s8 v1 = param0->unk_0D;

    while (TRUE) {
        v1 += param1;

        if (v1 < 0) {
            v1 = (param0->unk_14 - 1);
        } else if (v1 >= param0->unk_14) {
            v1 = 0;
        }

        if (v1 == param0->unk_0D) {
            return;
        }

        if (param0->unk_3D8[v1] == 1) {
            param0->unk_0D = v1;
            ov107_022483F0(param0);
            v0 = Party_GetPokemonBySlotIndex(param0->unk_3DC, ov107_02249C98(param0->unk_14, param0->unk_0D));
            ov107_02247A3C(param0, &param0->unk_50[4], v0);
            return;
        }
    }

    return;
}

static void ov107_0224883C(UnkStruct_ov107_02246170 *param0)
{
    ov107_02248BB4(param0);
    ov107_02249258(param0);

    ov107_02248860(&param0->unk_50[7]);
    ov107_02249BAC(param0->unk_3C4, 0);

    return;
}

static void ov107_02248860(Window *param0)
{
    Window_EraseMessageBox(param0, 1);
    Window_ClearAndScheduleCopyToVRAM(param0);

    return;
}

BOOL ov107_02248874(UnkStruct_ov107_02246170 *param0, u16 param1, u16 param2)
{
    int v0, v1;

    switch (param1) {
    case 20:
        v1 = 53;
        ov107_022488CC(param0, param1);
        break;
    case 21:
        v1 = 54;
        ov107_02248940(param0, param1, param2);
        break;
    case 22:
        v1 = 55;
        ov107_022489D0(param0, param1);
        break;
    case 23:
        v1 = 56;
        ov107_02248A04(param0);
        break;
    }

    if (CommSys_SendData(v1, param0->unk_3E4, 40) == 1) {
        v0 = 1;
    } else {
        v0 = 0;
    }

    return v0;
}

void ov107_022488CC(UnkStruct_ov107_02246170 *param0, u16 param1)
{
    int v0, v1;
    TrainerInfo *v2;

    v1 = 0;
    v2 = SaveData_GetTrainerInfo(param0->saveData);

    param0->unk_3E4[v1] = param1;
    v1 += 1;

    param0->unk_3E4[v1] = TrainerInfo_Gender(v2);
    v1 += 1;

    for (v0 = 0; v0 < 3; v0++) {
        param0->unk_3E4[v1 + v0] = ov107_02249CAC(param0->saveData, param0->unk_09, v0);
    }

    v1 += 3;

    return;
}

void ov107_02248910(int param0, int param1, void *param2, void *param3)
{
    int v0, v1;
    UnkStruct_ov107_02246170 *v2 = param3;
    const u16 *v3 = param2;

    v1 = 0;
    v2->unk_17++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v1 += 1;
    v1 += 1;

    for (v0 = 0; v0 < 3; v0++) {
        v2->unk_437[v0] = (u8)v3[v1 + v0];
    }

    v1 += 3;

    return;
}

void ov107_02248940(UnkStruct_ov107_02246170 *param0, u16 param1, u16 param2)
{
    param0->unk_3E4[0] = param1;
    param0->unk_3E4[1] = param2;

    if (CommSys_CurNetId() == 0) {
        if (param0->unk_11 == 0xff) {
            param0->unk_11 = param2;
        }
    }

    param0->unk_3E4[2] = param0->unk_11;
    param0->unk_3E4[4] = param0->unk_12;
    param0->unk_3E4[5] = param0->unk_13;

    return;
}

void ov107_02248978(int param0, int param1, void *param2, void *param3)
{
    int v0, v1;
    UnkStruct_ov107_02246170 *v2 = param3;
    const u16 *v3 = param2;

    v1 = 0;
    v2->unk_17++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v2->unk_435 = v3[1];

    if (CommSys_CurNetId() == 0) {
        if (v2->unk_11 != 0xff) {
            v2->unk_435 = 0;
        } else {
            v2->unk_11 = v2->unk_435 + v2->unk_15;
            v2->unk_12 = v3[4];
            v2->unk_13 = v3[5];
        }
    } else {
        v2->unk_11 = v3[2];
        v2->unk_12 = v3[4];
        v2->unk_13 = v3[5];
    }

    return;
}

void ov107_022489D0(UnkStruct_ov107_02246170 *param0, u16 param1)
{
    param0->unk_3E4[0] = param1;
    param0->unk_3E4[1] = param0->unk_0D;

    return;
}

void ov107_022489E0(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_ov107_02246170 *v0 = param3;
    const u16 *v1 = param2;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v0->unk_434 = (u8)v1[1];

    ov107_02248420(v0, v0->unk_434, 1);
    return;
}

void ov107_02248A04(UnkStruct_ov107_02246170 *param0)
{
    param0->unk_3E4[0] = 1;
    return;
}

void ov107_02248A10(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_ov107_02246170 *v0 = param3;
    const u16 *v1 = param2;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v0->unk_436 = (u8)v1[0];
    return;
}

static void ov107_02248A2C(UnkStruct_ov107_02246170 *param0, u8 param1)
{
    Pokemon *v0;

    ov107_0224752C(param0, 2);
    ov107_02248860(&param0->unk_50[7]);

    Window_ClearAndScheduleCopyToVRAM(&param0->unk_50[7]);

    v0 = Party_GetPokemonBySlotIndex(param0->unk_3DC, ov107_02249C98(param0->unk_14, param1));
    ov107_02247804(param0, &param0->unk_50[4], v0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);

    return;
}

static void ov107_02248A74(UnkStruct_ov107_02246170 *param0, u8 param1)
{
    param0->unk_3D4[ov107_02249C98(param0->unk_14, param1)] = 1;
    return;
}

static void ov107_02248A8C(UnkStruct_ov107_02246170 *param0, u8 param1)
{
    Pokemon *v0;

    ov107_02249DBC(&param0->unk_50[7], Options_Frame(param0->options));

    v0 = Party_GetPokemonBySlotIndex(param0->unk_3DC, ov107_02249C98(param0->unk_14, param1));
    ov107_02248104(param0, 0, Pokemon_GetBoxPokemon(v0));

    param0->unk_0A = ov107_022477CC(param0, 47, FONT_MESSAGE);

    ov107_02248A74(param0, param1);
    ov107_02249580(param0);

    Sound_PlayEffect(SEQ_SE_DP_UG_020);
    return;
}

static void ov107_02248AF0(UnkStruct_ov107_02246170 *param0, u8 param1)
{
    Pokemon *v0;

    ov107_022475A8(param0, 2);
    ov107_02248860(&param0->unk_50[7]);

    Window_ClearAndScheduleCopyToVRAM(&param0->unk_50[7]);

    v0 = Party_GetPokemonBySlotIndex(param0->unk_3DC, ov107_02249C98(param0->unk_14, param1));
    ov107_02247A3C(param0, &param0->unk_50[4], v0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);

    return;
}

static void ov107_02248B38(UnkStruct_ov107_02246170 *param0, u8 param1)
{
    param0->unk_3D8[ov107_02249C98(param0->unk_14, param1)] = 1;
    return;
}

static void ov107_02248B50(UnkStruct_ov107_02246170 *param0, u8 param1)
{
    Pokemon *v0;

    ov107_02249DBC(&param0->unk_50[7], Options_Frame(param0->options));

    v0 = Party_GetPokemonBySlotIndex(param0->unk_3DC, ov107_02249C98(param0->unk_14, param1));
    ov107_02248104(param0, 0, Pokemon_GetBoxPokemon(v0));

    param0->unk_0A = ov107_022477CC(param0, 70, FONT_MESSAGE);

    ov107_02248B38(param0, param1);
    ov107_02249580(param0);

    Sound_PlayEffect(SEQ_SE_DP_UG_020);
    return;
}

static void ov107_02248BB4(UnkStruct_ov107_02246170 *param0)
{
    if (param0->unk_0F_2 == 1) {
        param0->unk_0F_2 = 0;
        Menu_Free(param0->unk_11C, NULL);
        Window_EraseStandardFrame(param0->unk_110.window, 1);
        Window_ClearAndScheduleCopyToVRAM(param0->unk_110.window);
    }

    return;
}

static void ov107_02248BEC(UnkStruct_ov107_02246170 *param0)
{
    ov107_02249DBC(&param0->unk_50[7], Options_Frame(param0->options));
    return;
}

static void ov107_02248C08(UnkStruct_ov107_02246170 *param0, Window *window)
{
    u16 v0, v1, v2, v3, x, y;
    ov107_022484DC(param0, &v0, &v1, &v2, &v3);

    if (ov104_0223BA14(param0->unk_09) == FALSE) {
        x = v0 + 104;
        y = v1;
        Window_FillRectWithColor(window, 0, x - 48, y, 48, 16);
        ov107_022480EC(param0, 0, sub_02030698(param0->frontier, sub_0205E630(param0->unk_09), sub_0205E6A8(sub_0205E630(param0->unk_09))), 4, 1);
        param0->unk_0A = ov107_02247744(param0, window, 2, x, y, 0xFF, 1, 2, 0, 0, 2);
    } else {
        if (CommSys_CurNetId() == 0) {
            x = v0 + 104;
            y = v1;
            Window_FillRectWithColor(window, 0, x - 48, y, 48, 16);
            ov107_022480EC(param0, 0, sub_02030698(param0->frontier, sub_0205E630(param0->unk_09), sub_0205E6A8(sub_0205E630(param0->unk_09))), 4, 1);
            param0->unk_0A = ov107_02247744(param0, window, 2, x, y, 0xFF, 1, 2, 0, 0, 2);

            x = v2 + 104;
            y = v3;
            Window_FillRectWithColor(window, 0, x - 48, v3, 48, 16);
            ov107_022480EC(param0, 0, param0->unk_43A, 4, 1);
            param0->unk_0A = ov107_02247744(param0, window, 2, x, y, 0xFF, 1, 2, 0, 0, 2);
        } else {
            x = v0 + 104;
            y = v1;
            Window_FillRectWithColor(window, 0, x - 48, v1, 48, 16);
            ov107_022480EC(param0, 0, param0->unk_43A, 4, 1);
            param0->unk_0A = ov107_02247744(param0, window, 2, x, y, 0xFF, 1, 2, 0, 0, 2);

            x = v2 + 104;
            y = v3;
            Window_FillRectWithColor(window, 0, x - 48, v3, 48, 16);
            ov107_022480EC(param0, 0, sub_02030698(param0->frontier, sub_0205E630(param0->unk_09), sub_0205E6A8(sub_0205E630(param0->unk_09))), 4, 1);
            param0->unk_0A = ov107_02247744(param0, window, 2, x, y, 0xFF, 1, 2, 0, 0, 2);
        }
    }

    Window_ScheduleCopyToVRAM(window);
}

static void ov107_02248E54(UnkStruct_ov107_02246170 *param0, u8 param1)
{
    ov107_022480EC(param0, 0, ov107_02248770(param1), 4, 0);
    param0->unk_0A = ov107_022477CC(param0, 25, FONT_MESSAGE);

    ov107_02247D94(param0);
    param0->unk_0E = param1;

    return;
}

static void ov107_02248E84(UnkStruct_ov107_02246170 *param0, Window *param1)
{
    u16 v0, v1, v2, v3, v4, v5;

    ov107_022484DC(param0, &v2, &v3, &v4, &v5);

    if (ov104_0223BA14(param0->unk_09) == 0) {
        v0 = v2 + 0;
        v1 = v3 + 0;
        ov107_0224812C(param0, param1, v0, v1, 0);
    } else {
        if (CommSys_CurNetId() == 0) {
            v0 = v2 + 0;
            v1 = v3 + 0;

            ov107_0224812C(param0, param1, v0, v1, 0);

            v0 = v4 + 0;
            v1 = v5 + 0;

            ov107_02248194(param0, param1, v0, v1, 0);
        } else {
            v0 = v2 + 0;
            v1 = v3 + 0;

            ov107_02248194(param0, param1, v0, v1, 0);

            v0 = v4 + 0;
            v1 = v5 + 0;

            ov107_0224812C(param0, param1, v0, v1, 0);
        }
    }

    Window_ScheduleCopyToVRAM(param1);
    return;
}

static void ov107_02248F18(UnkStruct_ov107_02246170 *param0, u8 param1, u8 param2)
{
    u8 v0, v1, v2;
    u16 v3;
    u16 v4[4];
    u16 v5, v6, v7, v8;

    Sound_PlayEffect(SEQ_SE_DP_PIRORIRO2);

    v2 = param0->unk_15;
    v1 = ov107_02249C9C(v2, param1);

    switch (param2) {
    case 0:
        v3 = 1;
        break;
    case 1:
        v3 = ov107_02248770(param0->unk_12);
        break;
    case 3:
        v3 = 2;
        break;
    case 4:
        v3 = 5;
        break;
    }

    if (CommSys_CurNetId() == 0) {
        if (param1 < v2) {
            ov107_02248110(param0, 5);
            ov104_0223BC2C(param0->frontier, param0->unk_09, v3);
        } else {
            ov107_02249CF4(param0->unk_24, 5);
            param0->unk_43A -= v3;
        }
    } else {
        if (param1 < v2) {
            ov107_02249CF4(param0->unk_24, 5);
            param0->unk_43A -= v3;
        } else {
            ov107_02248110(param0, 5);
            ov104_0223BC2C(param0->frontier, param0->unk_09, v3);
        }
    }

    ov107_02248C08(param0, &param0->unk_50[0]);
    ov107_02248BB4(param0);

    switch (param2) {
    case 0:
        ov107_02249024(param0, v1);
        break;
    case 1:
        ov107_022490E8(param0, v1, param0->unk_12);
        break;
    case 3:
        ov107_02248A8C(param0, v1);
        break;
    case 4:
        ov107_02248B50(param0, v1);
        break;
    }

    return;
}

static void ov107_02249024(UnkStruct_ov107_02246170 *param0, u8 param1)
{
    Pokemon *v0;

    v0 = Party_GetPokemonBySlotIndex(param0->unk_3DC, ov107_02249C98(param0->unk_14, param1));

    ov107_02249DBC(&param0->unk_50[7], Options_Frame(param0->options));
    ov107_02248104(param0, 0, Pokemon_GetBoxPokemon(v0));

    param0->unk_0A = ov107_022477CC(param0, 20, FONT_MESSAGE);
    param0->unk_3CC[ov107_02249C98(param0->unk_14, param1)] = 1;

    ov107_02249BAC(param0->unk_378[ov107_02249C98(param0->unk_14, param1)], 0);
    ov107_02249BAC(param0->unk_368[ov107_02249C98(param0->unk_14, param1)], 1);

    ov107_02247B78(param0, &param0->unk_50[3]);
    ov107_02247C64(param0, &param0->unk_50[2]);
    ov107_02249BAC(param0->unk_394[ov107_02249C98(param0->unk_14, param1)], 1);

    Sound_PlayEffect(SEQ_SE_DP_UG_020);

    return;
}

static void ov107_022490E8(UnkStruct_ov107_02246170 *param0, u8 param1, u8 param2)
{
    u32 v0;
    Pokemon *v1;

    ov107_02249DBC(&param0->unk_50[7], Options_Frame(param0->options));
    v1 = Party_GetPokemonBySlotIndex(param0->unk_3DC, ov107_02249C98(param0->unk_14, param1));
    ov107_02248104(param0, 0, Pokemon_GetBoxPokemon(v1));

    if (param2 == 1) {
        param0->unk_0A = ov107_022477CC(param0, 31, FONT_MESSAGE);
        Sound_PlayEffect(SEQ_SE_DP_OPEN7);
    } else {
        param0->unk_0A = ov107_022477CC(param0, 32, FONT_MESSAGE);
        Sound_PlayEffect(SEQ_SE_DP_CLOSE7);
    }

    if (param0->unk_3D0[ov107_02249C98(param0->unk_14, param1)] == 0) {
        param0->unk_3D0[ov107_02249C98(param0->unk_14, param1)] = param2;
    } else {
        param0->unk_3D0[ov107_02249C98(param0->unk_14, param1)] = 0;
    }

    if (param0->unk_3D0[ov107_02249C98(param0->unk_14, param1)] == 0) {
        v0 = Pokemon_GetSpeciesBaseExpAt(Pokemon_GetValue(v1, MON_DATA_SPECIES, NULL), 50);
        Pokemon_SetValue(v1, MON_DATA_EXPERIENCE, &v0);
        Pokemon_CalcLevelAndStats(v1);
    } else if (param0->unk_3D0[ov107_02249C98(param0->unk_14, param1)] == 1) {
        v0 = Pokemon_GetSpeciesBaseExpAt(Pokemon_GetValue(v1, MON_DATA_SPECIES, NULL), 55);
        Pokemon_SetValue(v1, MON_DATA_EXPERIENCE, &v0);
        Pokemon_CalcLevelAndStats(v1);
    } else {
        v0 = Pokemon_GetSpeciesBaseExpAt(Pokemon_GetValue(v1, MON_DATA_SPECIES, NULL), 45);
        Pokemon_SetValue(v1, MON_DATA_EXPERIENCE, &v0);
        Pokemon_CalcLevelAndStats(v1);
    }

    ov107_02247B78(param0, &param0->unk_50[3]);
    ov107_02247C64(param0, &param0->unk_50[2]);

    return;
}

static void ov107_02249238(UnkStruct_ov107_02246170 *param0)
{
    Window_FillTilemap(&param0->unk_50[4], 0);
    Window_ClearAndCopyToVRAM(&param0->unk_50[4]);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);

    return;
}

static void ov107_02249258(UnkStruct_ov107_02246170 *param0)
{
    Window *v0;

    if (param0->unk_0F_1 == 1) {
        param0->unk_0F_1 = 0;

        v0 = (Window *)ListMenu_GetAttribute(param0->unk_138, 18);

        Window_EraseStandardFrame(v0, 1);
        Window_FillTilemap(v0, 0);
        Window_ClearAndScheduleCopyToVRAM(v0);
        StringList_Free(param0->unk_13C);
        ListMenu_Free(param0->unk_138, NULL, NULL);
    }

    return;
}

static void ov107_022492A8(UnkStruct_ov107_02246170 *param0)
{
    int v0;
    u8 v1, v2;
    Pokemon *v3;

    v1 = ov104_0223B7A8(param0->unk_09, 1);

    for (v0 = 0; v0 < v1; v0++) {
        v3 = Party_GetPokemonBySlotIndex(param0->unk_3DC, v0);
        v2 = ov104_0222E240(Pokemon_GetValue(v3, MON_DATA_HP, NULL), Pokemon_GetValue(v3, MON_DATA_MAX_HP, NULL));

        if (param0->unk_368[v0] != NULL) {
            ov107_02249C1C(param0->unk_368[v0], v2);

            if ((v0 != ov107_02249C98(param0->unk_14, param0->unk_0D)) || (param0->unk_0D >= param0->unk_15)) {
                ov107_02249C28(param0->unk_368[v0], 0);
            } else {
                ov107_02249C28(param0->unk_368[v0], 1);
            }
        }
    }

    return;
}

static BOOL ov107_0224933C(UnkStruct_ov107_02246170 *param0, u16 param1, u16 param2)
{
    u16 v0;

    ov107_02248BB4(param0);

    v0 = sub_02030698(param0->frontier, sub_0205E630(param0->unk_09), sub_0205E6A8(sub_0205E630(param0->unk_09)));

    if (v0 < param1) {
        ov107_02248BEC(param0);
        param0->unk_0A = ov107_022477CC(param0, param2, FONT_MESSAGE);
        param0->unk_08 = 15;
        return 0;
    }

    if (ov104_0223BA14(param0->unk_09) == 0) {
        ov107_02248860(&param0->unk_50[7]);
        ov104_0223BC2C(param0->frontier, param0->unk_09, param1);
        ov107_02248C08(param0, &param0->unk_50[0]);

        if (param1 == 2) {
            ov107_02248A8C(param0, param0->unk_0D);
        } else {
            ov107_02248B50(param0, param0->unk_0D);
        }

        param0->unk_08 = 12;
        return 0;
    } else {
        param0->unk_10 = 1;
        return 1;
    }

    return 0;
}

static const u16 Unk_ov107_0224A0DC[3][3] = {
    { 0x0, 0x0, 0x0 },
    { 0x0, 0x0, 0x0 },
    { 0x0, 0x50, 0x50 }
};

static void ov107_022493CC(UnkStruct_ov107_02246170 *param0, u8 param1, u8 param2)
{
    u8 v0, v1, v2, v3;
    u32 v4;
    u16 v5[4];

    v3 = ov104_0223B7A8(param0->unk_09, 0);

    if (param2 == 5) {
        v2 = 2;
    } else {
        GF_ASSERT(0);
    }

    v0 = param0->unk_15;
    v1 = ov107_02249C9C(v0, param1);

    if (CommSys_CurNetId() == 0) {
        if (param1 < v0) {
            ov107_02248110(param0, 5);
            v4 = ov107_02249CAC(param0->saveData, param0->unk_09, v2);

            ov104_0223BC2C(param0->frontier, param0->unk_09, 50);
            v4 = ov107_02249CAC(param0->saveData, param0->unk_09, v2);

            v5[0] = (v4 + 1);
            sub_020306E4(SaveData_GetBattleFrontier(param0->saveData), sub_0205E5B4(param0->unk_09, v2), sub_0205E6A8(sub_0205E5B4(param0->unk_09, v2)), v4 + 1);

            if (ov104_0223BA14(param0->unk_09) == 1) {
                param0->unk_0F_3 = 2;
            }
        } else {
            ov107_02249CF4(param0->unk_24, 5);
            v4 = param0->unk_437[v2];
            param0->unk_43A -= 50;
            param0->unk_437[v2]++;
        }
    } else {
        if (param1 < v0) {
            ov107_02249CF4(param0->unk_24, 5);
            v4 = param0->unk_437[v2];
            param0->unk_43A -= 50;
            param0->unk_437[v2]++;
        } else {
            ov107_02248110(param0, 5);
            v4 = ov107_02249CAC(param0->saveData, param0->unk_09, v2);

            ov104_0223BC2C(param0->frontier, param0->unk_09, 50);
            v4 = ov107_02249CAC(param0->saveData, param0->unk_09, v2);

            v5[0] = (v4 + 1);
            sub_020306E4(SaveData_GetBattleFrontier(param0->saveData), sub_0205E5B4(param0->unk_09, v2), sub_0205E6A8(sub_0205E5B4(param0->unk_09, v2)), v4 + 1);

            if (ov104_0223BA14(param0->unk_09) == 1) {
                param0->unk_0F_3 = 2;
            }
        }
    }

    ov107_02248BB4(param0);
    ov107_02248C08(param0, &param0->unk_50[0]);
    ov107_02249DBC(&param0->unk_50[7], Options_Frame(param0->options));

    param0->unk_0A = ov107_022477CC(param0, Unk_ov107_0224A0DC[v2][v4], FONT_MESSAGE);
    return;
}

static void ov107_02249580(UnkStruct_ov107_02246170 *param0)
{
    u8 v0;
    int v1;

    v0 = ov104_0223B7DC(param0->unk_09, 1);

    for (v1 = 0; v1 < v0; v1++) {
        ov107_022495A8(param0, v1);
    }

    return;
}

static void ov107_022495A8(UnkStruct_ov107_02246170 *param0, u8 param1)
{
    if (param0->unk_3D4[param1] == 1) {
        ov107_02249BAC(param0->unk_3A4[param1][0], 1);
    }

    if (param0->unk_3D8[param1] == 1) {
        ov107_02249BAC(param0->unk_3A4[param1][1], 1);
    }

    return;
}

static void ov107_022495E4(UnkStruct_ov107_02246170 *param0, u32 *param1, u32 *param2)
{
    if (ov104_0223BA14(param0->unk_09) == 1) {
        *param1 = 64;
    } else {
        *param1 = 96;
    }

    *param2 = 60;
    return;
}
