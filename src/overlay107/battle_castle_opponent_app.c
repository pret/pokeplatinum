#include "overlay107/battle_castle_opponent_app.h"

#include <nitro.h>
#include <string.h>

#include "constants/graphics.h"

#include "struct_decls/struct_020302DC_decl.h"
#include "struct_decls/struct_0203041C_decl.h"
#include "struct_defs/battle_frontier.h"

#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_0223B6F4.h"
#include "overlay104/struct_ov104_0223597C.h"
#include "overlay107/battle_castle_app_sprite.h"
#include "overlay107/battle_castle_app_sprite_manager.h"
#include "overlay107/battle_castle_app_windows.h"
#include "overlay107/ov107_02249C98.h"

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
#include "narc_frontier_bg.h"
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
#include "string_gf.h"
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

typedef struct BattleCastleOpponentApp {
    ApplicationManager *appMan;
    BattleFrontier *frontier;
    u8 subState;
    u8 challengeType;
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
    MessageLoader *msgLoader;
    StringTemplate *strTemplate;
    String *displayStr;
    String *fmtStr;
    String *unk_30[3];
    u16 unk_3C[8];
    BgConfig *bgConfig;
    Window windows[12];
    MenuTemplate unk_110;
    Menu *unk_11C;
    StringList unk_120[3];
    ListMenu *unk_138;
    StringList *unk_13C;
    PaletteData *plttData;
    FontSpecialCharsContext *specialChars;
    Options *options;
    SaveData *saveData;
    UnkStruct_020302DC *unk_150;
    UnkStruct_0203041C *unk_154;
    BattleCastleAppSpriteManager spriteMan;
    BattleCastleAppSprite *monSprites[4];
    BattleCastleAppSprite *ballSprites[4];
    BattleCastleAppSprite *unk_388;
    BattleCastleAppSprite *cursorSprite;
    BattleCastleAppSprite *unk_390;
    BattleCastleAppSprite *barSprites[4];
    BattleCastleAppSprite *unk_3A4[4][2];
    BattleCastleAppSprite *unk_3C4;
    u16 *unk_3C8;
    u8 *unk_3CC;
    u8 *unk_3D0;
    u8 *unk_3D4;
    u8 *unk_3D8;
    Party *unk_3DC;
    NARC *narc;
    u16 unk_3E4[40];
    u8 unk_434;
    u8 unk_435;
    u8 unk_436;
    u8 unk_437[3];
    u16 unk_43A;
    u32 unk_43C;
} BattleCastleOpponentApp;

static BOOL State_FadeInApp(BattleCastleOpponentApp *app);
static void ov107_02246274(BattleCastleOpponentApp *param0);
static BOOL ov107_022462CC(BattleCastleOpponentApp *param0);
static BOOL ov107_02246BDC(BattleCastleOpponentApp *param0);
static BOOL ov107_02246CD0(BattleCastleOpponentApp *param0);
static BOOL State_FadeOutApp(BattleCastleOpponentApp *app);
static void FreeAssets(BattleCastleOpponentApp *app);
static void InitGraphicsPlane(void);
static void LoadAssets(BattleCastleOpponentApp *app);
static void InitSpriteManager(BattleCastleOpponentApp *app);
static void LoadBackgrounds(BattleCastleOpponentApp *app);
static void FreeBackgrounds(BgConfig *bgConfig);
static void VBlankCallback(void *data);
static void SetGXBanks(void);
static void InitBackgrounds(BgConfig *bgConfig);
static void LoadMainBackground(BattleCastleOpponentApp *app, enum BgLayer bgLayer);
static void LoadPalette(void);
static void LoadSummaryBackground(BattleCastleOpponentApp *app, enum BgLayer bgLayer);
static void LoadMovesListBackground(BattleCastleOpponentApp *app, enum BgLayer bgLayer);
static void LoadPalette2(void);
static void LoadSubScreenBackground(BattleCastleOpponentApp *app, enum BgLayer bgLayer);
static u8 ov107_02247650(BattleCastleOpponentApp *param0, Window *param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9);
static u8 ov107_02247680(BattleCastleOpponentApp *param0, Window *param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9, u32 param10);
static u8 ov107_02247714(BattleCastleOpponentApp *param0, Window *param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9);
static u8 ov107_02247744(BattleCastleOpponentApp *param0, Window *param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9, u32 param10);
static u8 ov107_022477CC(BattleCastleOpponentApp *param0, int param1, u8 param2);
static void ov107_02247804(BattleCastleOpponentApp *param0, Window *param1, Pokemon *param2);
static void ov107_02247A14(BattleCastleOpponentApp *param0, Window *param1, int param2, u16 param3, u16 param4, u32 param5);
static void ov107_02247A3C(BattleCastleOpponentApp *param0, Window *param1, Pokemon *param2);
static void ov107_02247AD0(BattleCastleOpponentApp *param0, Window *param1, u8 param2, u32 param3, u32 param4, Pokemon *param5, u32 param6, u32 param7, u32 param8);
static void ov107_02247B78(BattleCastleOpponentApp *param0, Window *param1);
static void ov107_02247C64(BattleCastleOpponentApp *param0, Window *param1);
static void ov107_02247D04(BattleCastleOpponentApp *param0, Window *param1, u8 param2);
static void ov107_02247D68(BattleCastleOpponentApp *param0, u8 param1, u8 param2, int param3);
static void ov107_02247D94(BattleCastleOpponentApp *param0);
static void ov107_02247DF0(BattleCastleOpponentApp *param0);
static void ov107_02247E5C(BattleCastleOpponentApp *param0);
static void ov107_02247F14(ListMenu *param0, u32 param1, u8 param2);
static void ov107_02247F6C(BattleCastleOpponentApp *param0);
static void ov107_02248028(ListMenu *param0, u32 param1, u8 param2);
static void ov107_022480A0(ListMenu *param0, u32 param1, u8 param2);
static void ov107_022480EC(BattleCastleOpponentApp *param0, u32 param1, s32 param2, u32 param3, int param4);
static void ov107_02248104(BattleCastleOpponentApp *param0, u32 param1, BoxPokemon *param2);
static void ov107_02248110(BattleCastleOpponentApp *param0, u32 param1);
static void ov107_0224812C(BattleCastleOpponentApp *param0, Window *param1, u32 param2, u32 param3, u8 param4);
static void ov107_02248194(BattleCastleOpponentApp *param0, Window *param1, u32 param2, u32 param3, u8 param4);
static void ov107_022481FC(BattleCastleOpponentApp *param0, Window *param1, u32 param2, u32 param3, u8 param4, u8 param5);
static void ov107_02248240(BattleCastleOpponentApp *param0);
static void ov107_022482A4(BattleCastleOpponentApp *param0);
static void ov107_022482B0(BattleCastleOpponentApp *param0);
static void ov107_022482D4(BattleCastleOpponentApp *param0);
static void ov107_022482FC(BattleCastleOpponentApp *param0);
static void ov107_02248348(BattleCastleOpponentApp *param0);
static void ChangeState(BattleCastleOpponentApp *app, int *state, int newState);
static void ov107_02248358(BattleCastleOpponentApp *param0, int param1);
static void ov107_022483F0(BattleCastleOpponentApp *param0);
static void ov107_02248420(BattleCastleOpponentApp *param0, u8 param1, u8 param2);
static void GetCursorSpritePos(BattleCastleOpponentApp *app, u32 *x, u32 *y, u8 slot);
static void ov107_022484DC(BattleCastleOpponentApp *param0, u16 *param1, u16 *param2, u16 *param3, u16 *param4);
static BOOL ov107_0224850C(BattleCastleOpponentApp *param0, u8 param1, u8 param2);
static BOOL ov107_02248674(BattleCastleOpponentApp *param0, u8 param1, u8 param2);
static u16 ov107_02248770(u8 param0);
static void ov107_0224877C(BattleCastleOpponentApp *param0, s8 param1);
static void ov107_022487DC(BattleCastleOpponentApp *param0, s8 param1);
static void ov107_0224883C(BattleCastleOpponentApp *param0);
static void ov107_02248860(Window *param0);
BOOL ov107_02248874(BattleCastleOpponentApp *param0, u16 param1, u16 param2);
void ov107_022488CC(BattleCastleOpponentApp *param0, u16 param1);
void ov107_02248910(int param0, int param1, void *param2, void *param3);
void ov107_02248940(BattleCastleOpponentApp *param0, u16 param1, u16 param2);
void ov107_022489D0(BattleCastleOpponentApp *param0, u16 param1);
void ov107_022489E0(int param0, int param1, void *param2, void *param3);
void ov107_02248A04(BattleCastleOpponentApp *param0);
void ov107_02248A10(int param0, int param1, void *param2, void *param3);
static void ov107_02248A2C(BattleCastleOpponentApp *param0, u8 param1);
static void ov107_02248A74(BattleCastleOpponentApp *param0, u8 param1);
static void ov107_02248A8C(BattleCastleOpponentApp *param0, u8 param1);
static void ov107_02248AF0(BattleCastleOpponentApp *param0, u8 param1);
static void ov107_02248B38(BattleCastleOpponentApp *param0, u8 param1);
static void ov107_02248B50(BattleCastleOpponentApp *param0, u8 param1);
static void ov107_02248BB4(BattleCastleOpponentApp *param0);
static void ov107_02248BEC(BattleCastleOpponentApp *param0);
static void ov107_02248C08(BattleCastleOpponentApp *param0, Window *param1);
static void ov107_02248E54(BattleCastleOpponentApp *param0, u8 param1);
static void ov107_02248E84(BattleCastleOpponentApp *param0, Window *param1);
static void ov107_02248F18(BattleCastleOpponentApp *param0, u8 param1, u8 param2);
static void ov107_02249024(BattleCastleOpponentApp *param0, u8 param1);
static void ov107_022490E8(BattleCastleOpponentApp *param0, u8 param1, u8 param2);
static void ov107_02249238(BattleCastleOpponentApp *param0);
static void ov107_02249258(BattleCastleOpponentApp *param0);
static void ov107_022492A8(BattleCastleOpponentApp *param0);
static BOOL ov107_0224933C(BattleCastleOpponentApp *param0, u16 param1, u16 param2);
static void ov107_022493CC(BattleCastleOpponentApp *param0, u8 param1, u8 param2);
static void ov107_02249580(BattleCastleOpponentApp *param0);
static void ov107_022495A8(BattleCastleOpponentApp *param0, u8 param1);
static void ov107_022495E4(BattleCastleOpponentApp *param0, u32 *param1, u32 *param2);
extern void ov107_2247650(void);

BOOL BattleCastleOpponentApp_Init(ApplicationManager *appMan, int *state)
{
    Overlay_LoadByID(FS_OVERLAY_ID(overlay104), OVERLAY_LOAD_ASYNC);
    InitGraphicsPlane();
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_BATTLE_CASTLE_APP, 0x20000);

    BattleCastleOpponentApp *app = ApplicationManager_NewData(appMan, sizeof(BattleCastleOpponentApp), HEAP_ID_BATTLE_CASTLE_APP);
    memset(app, 0, sizeof(BattleCastleOpponentApp));

    app->bgConfig = BgConfig_New(HEAP_ID_BATTLE_CASTLE_APP);
    app->appMan = appMan;

    UnkStruct_ov104_0223597C *v2 = ApplicationManager_Args(appMan);

    app->saveData = v2->saveData;
    app->unk_150 = sub_020302DC(app->saveData);
    app->unk_154 = sub_0203041C(app->saveData);
    app->challengeType = v2->unk_04;
    app->unk_3C8 = &v2->unk_20;
    app->options = SaveData_GetOptions(app->saveData);
    app->unk_3DC = v2->unk_1C;
    app->unk_3CC = &v2->unk_08[0];
    app->unk_3D0 = &v2->unk_0C[0];
    app->unk_3D4 = &v2->unk_10[0];
    app->unk_3D8 = &v2->unk_14[0];
    app->unk_11 = 0xff;
    app->unk_43A = v2->unk_28;
    app->frontier = SaveData_GetBattleFrontier(app->saveData);

    for (int v0 = 0; v0 < 3; v0++) {
        app->unk_437[v0] = 1;
    }

    if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == FALSE) {
        app->unk_14 = 3;
    } else {
        app->unk_14 = 4;
    }

    app->unk_15 = app->unk_14;
    app->unk_0C = app->unk_15 - 1;
    app->unk_434 = 0;

    LoadAssets(app);

    if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
        sub_0209BA80(app);
    }

    *state = 0;

    return TRUE;
}

BOOL BattleCastleOpponentApp_Main(ApplicationManager *appMan, int *state)
{
    BattleCastleOpponentApp *app = ApplicationManager_Data(appMan);

    if (app->unk_436 == 1) {
        switch (*state) {
        case 1:
            app->unk_436 = 0;
            ov107_0224883C(app);
            ov107_02249238(app);

            if (app->unk_388 != NULL) {
                BattleCastleAppSprite_Free(app->unk_388);
                app->unk_0F_0 = 0;
            }

            BattleCastleApp_DrawMessageBox(&app->windows[7], Options_Frame(app->options));
            BattleFrontier_SetPartnerInStrTemplate(app->strTemplate, 0);
            app->unk_0A = ov107_022477CC(app, 7, FONT_MESSAGE);
            ChangeState(app, state, 3);
            break;
        }
    } else if (app->unk_11 != 0xff) {
        switch (*state) {
        case 1:
        case 3:
            app->unk_436 = 0;
            ov107_0224883C(app);
            ov107_02249238(app);
            ChangeState(app, state, 2);
            break;
        }
    }

    switch (*state) {
    case 0:
        if (State_FadeInApp(app) == 1) {
            ChangeState(app, state, 1);
        }
        break;
    case 1:
        if (ov107_022462CC(app) == 1) {
            if (app->unk_10 == 1) {
                ChangeState(app, state, 2);
            } else {
                if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == 1) {
                    ChangeState(app, state, 3);
                } else {
                    ChangeState(app, state, 4);
                }
            }
        }
        break;
    case 2:
        if (ov107_02246BDC(app) == 1) {
            ChangeState(app, state, 1);
        }
        break;
    case 3:
        if (ov107_02246CD0(app) == 1) {
            ChangeState(app, state, 4);
        }
        break;
    case 4:
        if (State_FadeOutApp(app) == 1) {
            return TRUE;
        }
        break;
    }

    ov107_022492A8(app);
    SpriteList_Update(app->spriteMan.spriteList);

    return FALSE;
}

BOOL BattleCastleOpponentApp_Exit(ApplicationManager *appMan, int *state)
{
    BattleCastleOpponentApp *app = ApplicationManager_Data(appMan);

    *app->unk_3C8 = app->unk_0D;

    VramTransfer_Free();
    FreeAssets(app);

    ApplicationManager_FreeData(appMan);
    SetVBlankCallback(NULL, NULL);
    Heap_Destroy(HEAP_ID_BATTLE_CASTLE_APP);
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay104));

    return TRUE;
}

static BOOL State_FadeInApp(BattleCastleOpponentApp *app)
{
    switch (app->subState) {
    case 0:
        if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
            CommTool_ClearReceivedTempDataAllPlayers();
            CommTiming_StartSync(216);
        }

        app->subState++;
        break;
    case 1:
        if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
            if (CommTiming_IsSyncState(216) == TRUE) {
                CommTool_ClearReceivedTempDataAllPlayers();
                app->subState++;
            }
        } else {
            app->subState++;
        }
        break;
    case 2:
        if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
            if (ov107_02248874(app, 20, 0) == TRUE) {
                app->subState++;
            }
        } else {
            ov107_02246274(app);
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 3, HEAP_ID_BATTLE_CASTLE_APP);
            app->subState++;
        }
        break;
    case 3:
        if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
            if (app->unk_17 >= 2) {
                app->unk_17 = 0;

                ov107_02246274(app);
                StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 3, HEAP_ID_BATTLE_CASTLE_APP);

                app->subState++;
            }
        } else {
            app->subState++;
        }
        break;
    case 4:
        if (IsScreenFadeDone() == TRUE) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static void ov107_02246274(BattleCastleOpponentApp *param0)
{
    u16 v2, v3, v4, v5;

    ov107_022484DC(param0, &v2, &v3, &v4, &v5);
    Window *v8 = &param0->windows[0];

    Window_FillTilemap(v8, 0);

    ov107_02248E84(param0, v8);
    ov107_02248C08(param0, v8);
    ov107_02247B78(param0, &param0->windows[3]);
    ov107_02247C64(param0, &param0->windows[2]);
    ov107_02248240(param0);
    GXLayers_TurnBothDispOn();
}

static BOOL ov107_022462CC(BattleCastleOpponentApp *param0)
{
    u16 v1, v2;
    u32 v6, v7;

    switch (param0->subState) {
    case 0:
        param0->unk_0B = 0;
        param0->subState = 1;

        if (param0->unk_0F_3 == 1) {
            ov107_02248860(&param0->windows[7]);
            ov107_02248240(param0);
        } else if (param0->unk_0F_3 == 2) {
            ov107_02248860(&param0->windows[7]);
            ov107_022482FC(param0);
            ov107_02249C60(param0->unk_3C4, 211, 105);

            param0->subState = 6;
        } else if (param0->unk_0F_3 == 3) {
            param0->subState = 13;
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
                param0->subState = 2;
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
            param0->subState = 0;
            break;
        case 0:
            param0->unk_13 = v7;

            if (param0->unk_3CC[ov107_02249C98(param0->unk_14, param0->unk_0D)] == 0) {
                ov107_022482D4(param0);

                ov107_02248BEC(param0);
                ov107_022480EC(param0, 0, 1, 4, 0);
                param0->unk_0A = ov107_022477CC(param0, 16, FONT_MESSAGE);
                ov107_02247D94(param0);
                param0->subState = 3;
            } else {
                ov107_022482D4(param0);

                Pokemon *v8 = Party_GetPokemonBySlotIndex(param0->unk_3DC, ov107_02249C98(param0->unk_14, param0->unk_0D));

                ov107_02248BEC(param0);
                ov107_02248104(param0, 0, Pokemon_GetBoxPokemon(v8));

                param0->unk_0A = ov107_022477CC(param0, 20, FONT_MESSAGE);
                param0->subState = 15;
            }
            break;
        case 1:
            param0->unk_13 = v7;
            ov107_022482D4(param0);

            Pokemon *v8 = Party_GetPokemonBySlotIndex(param0->unk_3DC, ov107_02249C98(param0->unk_14, param0->unk_0D));

            ov107_02248BEC(param0);
            ov107_02248104(param0, 0, Pokemon_GetBoxPokemon(v8));

            param0->unk_0A = ov107_022477CC(param0, 21, FONT_MESSAGE);
            ov107_02247DF0(param0);
            param0->subState = 4;
            break;
        case 2:
            ov107_022482D4(param0);
            ov107_022482FC(param0);
            param0->subState = 6;
            break;
        case 6:
            ov107_022482D4(param0);
            ov107_02248240(param0);
            param0->subState = 0;
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
            ov107_02248860(&param0->windows[7]);

            v1 = sub_02030698(param0->frontier, sub_0205E630(param0->challengeType), sub_0205E6A8(sub_0205E630(param0->challengeType)));

            if (v1 < 1) {
                ov107_02248BEC(param0);
                param0->unk_0A = ov107_022477CC(param0, 28, FONT_MESSAGE);
                param0->subState = 15;
                break;
            }

            if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 0) {
                ov104_0223BC2C(param0->frontier, param0->challengeType, 1);
                ov107_02248C08(param0, &param0->windows[0]);
                ov107_02249024(param0, param0->unk_0D);
                param0->subState = 11;
            } else {
                param0->unk_10 = 1;
                return 1;
            }
            break;
        case 1:
        case 0xfffffffe:
            ov107_02248BB4(param0);
            ov107_02248860(&param0->windows[7]);
            ov107_022482B0(param0);
            param0->subState = 2;
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
            v1 = sub_02030698(param0->frontier, sub_0205E630(param0->challengeType), sub_0205E6A8(sub_0205E630(param0->challengeType)));

            if (param0->unk_3D0[ov107_02249C98(param0->unk_14, param0->unk_0D)] == 1) {
                ov107_02248BEC(param0);
                param0->unk_0A = ov107_022477CC(param0, 29, FONT_MESSAGE);
                param0->subState = 15;
                break;
            } else {
                ov107_02248E54(param0, 1);
                param0->subState = 5;
            }
            break;
        case 1:
            ov107_02248BB4(param0);
            v1 = sub_02030698(param0->frontier, sub_0205E630(param0->challengeType), sub_0205E6A8(sub_0205E630(param0->challengeType)));

            if (param0->unk_3D0[ov107_02249C98(param0->unk_14, param0->unk_0D)] == 2) {
                ov107_02248BEC(param0);
                param0->unk_0A = ov107_022477CC(param0, 30, FONT_MESSAGE);
                param0->subState = 15;
                break;
            } else {
                ov107_02248E54(param0, 2);
                param0->subState = 5;
            }
            break;
        case 2:
        case 0xfffffffe:
            ov107_02248BB4(param0);
            ov107_02248860(&param0->windows[7]);
            ov107_022482B0(param0);
            param0->subState = 2;
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

            v1 = sub_02030698(param0->frontier, sub_0205E630(param0->challengeType), sub_0205E6A8(sub_0205E630(param0->challengeType)));
            v2 = ov107_02248770(param0->unk_0E);

            if (v1 < v2) {
                ov107_02248BEC(param0);
                param0->unk_0A = ov107_022477CC(param0, 28, FONT_MESSAGE);
                param0->subState = 15;
                return 0;
            }

            param0->unk_12 = param0->unk_0E;

            if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 0) {
                ov107_02248860(&param0->windows[7]);
                ov104_0223BC2C(param0->frontier, param0->challengeType, ov107_02248770(param0->unk_0E));
                ov107_02248C08(param0, &param0->windows[0]);
                ov107_022490E8(param0, param0->unk_0D, param0->unk_0E);
                param0->subState = 11;
            } else {
                param0->unk_10 = 1;
                return 1;
            }
            break;
        case 1:
        case 0xfffffffe:
            ov107_02248BB4(param0);
            ov107_02248860(&param0->windows[7]);
            ov107_022482B0(param0);
            param0->subState = 2;
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
            ov107_02248860(&param0->windows[7]);
            ov107_02248348(param0);
            ov107_022482B0(param0);
            param0->subState = 2;
            break;
        case 3:
            param0->unk_13 = v7;
            ov107_02248348(param0);

            if (param0->unk_3D4[ov107_02249C98(param0->unk_14, param0->unk_0D)] == 0) {
                ov107_02248BEC(param0);
                ov107_022480EC(param0, 0, 2, 4, 0);
                param0->unk_0A = ov107_022477CC(param0, 43, FONT_MESSAGE);
                ov107_02247D94(param0);
                param0->subState = 7;
            } else {
                ov107_02248A2C(param0, param0->unk_0D);
                param0->subState = 16;
            }
            break;
        case 4:
            param0->unk_13 = v7;
            ov107_02248348(param0);

            v6 = ov107_02249CAC(param0->saveData, param0->challengeType, 2);

            if (v6 == 1) {
                param0->unk_0A = ov107_022477CC(param0, 42, FONT_MESSAGE);
                param0->subState = 14;
                return 0;
            }

            if (param0->unk_3D8[ov107_02249C98(param0->unk_14, param0->unk_0D)] == 0) {
                ov107_02248BEC(param0);
                ov107_022480EC(param0, 0, 5, 4, 0);
                param0->unk_0A = ov107_022477CC(param0, 66, FONT_MESSAGE);
                ov107_02247D94(param0);
                param0->subState = 8;
            } else {
                ov107_02248AF0(param0, param0->unk_0D);
                param0->subState = 17;
            }
            break;
        case 5:
            v6 = ov107_02249CAC(param0->saveData, param0->challengeType, 2);

            if (v6 == (3 - 1)) {
                Sound_StopEffect(1500, 0);
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
            } else {
                param0->unk_13 = v7;
                ov107_02248348(param0);

                v1 = sub_02030698(param0->frontier, sub_0205E630(param0->challengeType), sub_0205E6A8(sub_0205E630(param0->challengeType)));

                ov107_022480EC(param0, 0, 50, 4, 0);
                param0->unk_0A = ov107_022477CC(param0, 76, FONT_MESSAGE);

                ov107_02247D94(param0);
                param0->subState = 9;
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
            if (ov107_0224933C(param0, 2, 46) == 1) {
                return 1;
            }
            break;
        case 1:
        case 0xfffffffe:
            ov107_02248BB4(param0);
            ov107_022482FC(param0);
            param0->subState = 6;
            break;
        }
        break;
    case 8:
        v7 = Menu_ProcessInput(param0->unk_11C);

        switch (v7) {
        case 0xffffffff:
            break;
        case 0:
            if (ov107_0224933C(param0, 5, 69) == 1) {
                return 1;
            }
            break;
        case 1:
        case 0xfffffffe:
            ov107_02248BB4(param0);
            ov107_022482FC(param0);
            param0->subState = 6;
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

            v1 = sub_02030698(param0->frontier, sub_0205E630(param0->challengeType), sub_0205E6A8(sub_0205E630(param0->challengeType)));
            v6 = ov107_02249CAC(param0->saveData, param0->challengeType, 2);

            if (v1 < 50) {
                ov107_02248BB4(param0);
                BattleCastleApp_DrawMessageBox(&param0->windows[7], Options_Frame(param0->options));
                param0->unk_0A = ov107_022477CC(param0, 69, FONT_MESSAGE);
                param0->subState = 14;
                break;
            }

            if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 0) {
                ov107_022493CC(param0, param0->unk_0D, 5);
                param0->subState = 10;
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
            param0->subState = 6;
            break;
        }
        break;
    case 10:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov107_02248BB4(param0);
            ov107_022482FC(param0);
            ov107_02249C60(param0->unk_3C4, 211, 105);
            param0->subState = 6;
        }
        break;
    case 11:
        if (ov107_0224850C(param0, param0->unk_0D, param0->unk_13) == 1) {
            param0->subState = 15;
        }
        break;
    case 12:
        if (ov107_0224850C(param0, param0->unk_0D, param0->unk_13) == 1) {
            param0->subState = 13;
        }
        break;
    case 13:
        if (param0->unk_13 == 3) {
            param0->subState = 16;
        } else {
            param0->subState = 17;
        }
        break;
    case 14:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov107_022482FC(param0);
            param0->subState = 6;
        }
        break;
    case 15:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov107_02248860(&param0->windows[7]);
            ov107_02248240(param0);
            param0->subState = 0;
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
            param0->subState = 2;
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
            param0->subState = 2;
        }
        break;
    }

    return 0;
}

static BOOL ov107_02246BDC(BattleCastleOpponentApp *param0)
{
    u8 v0;

    switch (param0->subState) {
    case 0:
        param0->unk_0F_3 = 1;

        if (ov107_02248874(param0, 21, param0->unk_0D) == 1) {
            param0->unk_10 = 0;
            param0->subState++;
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

        param0->subState++;
        break;
    case 2:
        v0 = ov107_02249C9C(param0->unk_15, param0->unk_11);

        if (ov107_0224850C(param0, v0, param0->unk_13) == 1) {
            param0->unk_16 = 30;
            param0->subState++;
        }
        break;
    case 3:
        param0->unk_16--;

        if (param0->unk_16 == 0) {
            CommTool_ClearReceivedTempDataAllPlayers();
            CommTiming_StartSync(133);
            param0->subState++;
            break;
        }
        break;
    case 4:
        if (CommTiming_IsSyncState(133) == 1) {
            param0->subState++;
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

static BOOL ov107_02246CD0(BattleCastleOpponentApp *param0)
{
    switch (param0->subState) {
    case 0:
        if (ov107_02248874(param0, 23, 0) == 1) {
            param0->unk_16 = 30;
            param0->subState++;
        }
        break;
    case 1:
        if (param0->unk_16 > 0) {
            param0->unk_16--;
        }

        if (param0->unk_16 == 0) {
            CommTool_ClearReceivedTempDataAllPlayers();
            CommTiming_StartSync(134);
            param0->subState++;
        }
        break;
    case 2:
        if (CommTiming_IsSyncState(134) == 1) {
            CommTool_ClearReceivedTempDataAllPlayers();
            ov107_02248860(&param0->windows[7]);
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL State_FadeOutApp(BattleCastleOpponentApp *app)
{
    switch (app->subState) {
    case 0:
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_BATTLE_CASTLE_APP);
        app->subState++;
        break;
    case 1:
        if (IsScreenFadeDone() == TRUE) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static void FreeAssets(BattleCastleOpponentApp *app)
{
    int i, j;

    BattleCastleAppSprite_Free(app->cursorSprite);
    BattleCastleAppSprite_Free(app->unk_390);
    BattleCastleAppSprite_Free(app->unk_3C4);

    for (i = 0; i < (2 * 2); i++) {
        for (j = 0; j < 2; j++) {
            BattleCastleAppSprite_Free(app->unk_3A4[i][j]);
        }
    }

    u8 numMons = ov104_0223B7DC(app->challengeType, 1);

    for (i = 0; i < numMons; i++) {
        BattleCastleAppSprite_Free(app->ballSprites[i]);
        BattleCastleAppSprite_Free(app->monSprites[i]);
        BattleCastleAppSprite_Free(app->barSprites[i]);
    }

    NetworkIcon_Destroy();

    PaletteData_FreeBuffer(app->plttData, PLTTBUF_MAIN_OBJ);
    PaletteData_FreeBuffer(app->plttData, PLTTBUF_MAIN_BG);
    PaletteData_Free(app->plttData);

    app->plttData = NULL;

    BattleCastleApp_FreeSprites(&app->spriteMan);

    MessageLoader_Free(app->msgLoader);
    StringTemplate_Free(app->strTemplate);
    String_Free(app->displayStr);
    String_Free(app->fmtStr);
    FontSpecialChars_Free(app->specialChars);

    for (i = 0; i < 3; i++) {
        String_Free(app->unk_30[i]);
    }

    BattleCastleApp_FreeWindows(app->windows, TRUE);
    FreeBackgrounds(app->bgConfig);
    NARC_dtor(app->narc);
}

static void InitGraphicsPlane(void)
{
    SetVBlankCallback(NULL, NULL);
    SetHBlankCallback(NULL, NULL);
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
}

static void LoadAssets(BattleCastleOpponentApp *app)
{
    u16 unused1, unused2, unused3, unused4, xOffset, ballXOffset;
    int i, j;

    app->narc = NARC_ctor(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, HEAP_ID_BATTLE_CASTLE_APP);

    LoadBackgrounds(app);
    InitSpriteManager(app);

    app->msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0201, HEAP_ID_BATTLE_CASTLE_APP);
    app->strTemplate = StringTemplate_Default(HEAP_ID_BATTLE_CASTLE_APP);
    app->displayStr = String_Init(600, HEAP_ID_BATTLE_CASTLE_APP);
    app->fmtStr = String_Init(600, HEAP_ID_BATTLE_CASTLE_APP);

    for (i = 0; i < 3; i++) {
        app->unk_30[i] = String_Init(32, HEAP_ID_BATTLE_CASTLE_APP);
    }

    Font_LoadTextPalette(0, 13 * PALETTE_SIZE_BYTES, HEAP_ID_BATTLE_CASTLE_APP);
    Font_LoadScreenIndicatorsPalette(0, 12 * PALETTE_SIZE_BYTES, HEAP_ID_BATTLE_CASTLE_APP);

    app->specialChars = FontSpecialChars_Init(1, 2, 0, HEAP_ID_BATTLE_CASTLE_APP);

    BattleCastleApp_InitWindows(app->bgConfig, app->windows, TRUE);
    ov107_022484DC(app, &unused1, &unused2, &unused3, &unused4);

    if (!BattleCastle_IsMultiPlayerChallenge(app->challengeType)) {
        xOffset = 64;
        ballXOffset = 60;
    } else {
        xOffset = 32;
        ballXOffset = 28;
    }

    u8 numMons = ov104_0223B7DC(app->challengeType, 1);

    for (i = 0; i < numMons; i++) {
        app->ballSprites[i] = BattleCastleAppSprite_New(&app->spriteMan, 0, 0, 0, 7, 64 * i + ballXOffset, 62, 2, NULL);
        app->barSprites[i] = BattleCastleAppSprite_New(&app->spriteMan, 0, 0, 0, 15, 64 * i + xOffset, 58 + 20, 3, NULL);
        app->monSprites[i] = BattleCastleAppSprite_New(&app->spriteMan, 3 + i, 3, 3, 1, 64 * i + xOffset, 58, 2, NULL);

        BattleCastleAppSprite_UpdatePalette(app->monSprites[i], Party_GetPokemonBySlotIndex(app->unk_3DC, i));

        if (app->unk_3CC[i] == 0) {
            BattleCastleAppSprite_SetDrawFlag(app->ballSprites[i], TRUE);
            BattleCastleAppSprite_SetDrawFlag(app->monSprites[i], FALSE);
            BattleCastleAppSprite_SetDrawFlag(app->barSprites[i], FALSE);
        } else {
            BattleCastleAppSprite_SetDrawFlag(app->ballSprites[i], FALSE);
            BattleCastleAppSprite_SetDrawFlag(app->monSprites[i], TRUE);
            BattleCastleAppSprite_SetDrawFlag(app->barSprites[i], TRUE);
        }
    }

    u32 x, y;
    GetCursorSpritePos(app, &x, &y, 0);

    app->cursorSprite = BattleCastleAppSprite_New(&app->spriteMan, 0, 0, 0, 1, x, y, 2, NULL);
    app->unk_390 = BattleCastleAppSprite_New(&app->spriteMan, 0, 0, 0, 2, x, y, 2, NULL);

    if (!BattleCastle_IsMultiPlayerChallenge(app->challengeType)) {
        BattleCastleAppSprite_SetDrawFlag(app->unk_390, FALSE);
    }

    for (i = 0; i < (2 * 2); i++) {
        for (j = 0; j < 2; j++) {
            ov107_022495E4(app, &x, &y);
            app->unk_3A4[i][j] = BattleCastleAppSprite_New(&app->spriteMan, 0, 0, 0, 12, x + (64 * i), y + (12 * j), 2, NULL);
            BattleCastleAppSprite_SetDrawFlag(app->unk_3A4[i][j], FALSE);
        }
    }

    ov107_02249580(app);
    app->unk_3C4 = BattleCastleAppSprite_New(&app->spriteMan, 0, 0, 0, 11, 20, 20, 0, NULL);
    BattleCastleAppSprite_SetDrawFlag(app->unk_3C4, FALSE);

    if (CommSys_IsInitialized()) {
        ReserveVramForWirelessIconChars(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_32K);
        ReserveSlotsForWirelessIconPalette(NNS_G2D_VRAM_TYPE_2DMAIN);
        sub_02039734();
    }

    SetVBlankCallback(VBlankCallback, app);
}

static void LoadBackgrounds(BattleCastleOpponentApp *app)
{
    SetGXBanks();
    InitBackgrounds(app->bgConfig);

    app->plttData = PaletteData_New(HEAP_ID_BATTLE_CASTLE_APP);
    PaletteData_AllocBuffer(app->plttData, PLTTBUF_MAIN_OBJ, PALETTE_SIZE_BYTES * SLOTS_PER_PALETTE, HEAP_ID_BATTLE_CASTLE_APP);
    PaletteData_AllocBuffer(app->plttData, PLTTBUF_MAIN_BG, PALETTE_SIZE_BYTES * SLOTS_PER_PALETTE, HEAP_ID_BATTLE_CASTLE_APP);

    LoadMainBackground(app, BG_LAYER_MAIN_3);
    LoadPalette();
    LoadSummaryBackground(app, BG_LAYER_MAIN_2);
    LoadPalette2();

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, FALSE);
    LoadSubScreenBackground(app, BG_LAYER_SUB_0);
}

static void InitSpriteManager(BattleCastleOpponentApp *app)
{
    BattleCastleApp_InitSpriteManager(&app->spriteMan, app->unk_3DC, BattleCastle_IsMultiPlayerChallenge(app->challengeType));
}

static void FreeBackgrounds(BgConfig *bgConfig)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, FALSE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, FALSE);

    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_0);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_0);
    Heap_Free(bgConfig);
}

static void VBlankCallback(void *data)
{
    BattleCastleOpponentApp *app = data;

    if (app->plttData != NULL) {
        PaletteData_CommitFadedBuffers(app->plttData);
    }

    Bg_RunScheduledUpdates(app->bgConfig);
    VramTransfer_Process();
    RenderOam_Transfer();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void SetGXBanks(void)
{
    GXBanks banks = {
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

    GXLayers_SetBanks(&banks);
}

static void InitBackgrounds(BgConfig *bgConfig)
{
    GraphicsModes graphicsModes = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_2D
    };

    SetAllGraphicsModes(&graphicsModes);

    BgTemplate bgTemplate1 = {
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

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &bgTemplate1, BG_TYPE_STATIC);
    Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32, 0, HEAP_ID_BATTLE_CASTLE_APP);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_1);

    BgTemplate bgTemplate0 = {
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

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_0, &bgTemplate0, BG_TYPE_STATIC);
    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_BATTLE_CASTLE_APP);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_0);

    BgTemplate bgTemplate2 = {
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

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &bgTemplate2, BG_TYPE_STATIC);
    Bg_ClearTilesRange(BG_LAYER_MAIN_2, 32, 0, HEAP_ID_BATTLE_CASTLE_APP);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_2);

    BgTemplate bgTemplate3 = {
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

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_3, &bgTemplate3, BG_TYPE_STATIC);
    Bg_ClearTilesRange(BG_LAYER_MAIN_3, 32, 0, HEAP_ID_BATTLE_CASTLE_APP);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_3);

    BgTemplate bgTemplateSub0 = {
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

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_0, &bgTemplateSub0, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_0);

    G2_SetBG0Priority(0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, TRUE);
}

static void LoadMainBackground(BattleCastleOpponentApp *app, enum BgLayer bgLayer)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(app->narc, BATTLE_CASTLE_OPPONENT_APP_TILES, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);

    if (!BattleCastle_IsMultiPlayerChallenge(app->challengeType)) {
        Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_CASTLE_OPPONENT_APP_SOLO_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);
    } else {
        Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_CASTLE_OPPONENT_APP_MULTI_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);
    }
}

static void LoadPalette(void)
{
    NNSG2dPaletteData *plttData;
    void *pltt = Graphics_GetPlttData(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, BATTLE_CASTLE_OPPONENT_APP_PLTT, &plttData, HEAP_ID_BATTLE_CASTLE_APP);

    DC_FlushRange(plttData->pRawData, PALETTE_SIZE_BYTES * 4);
    GX_LoadBGPltt(plttData->pRawData, 0, PALETTE_SIZE_BYTES * 4);
    Heap_Free(pltt);
}

static void LoadSummaryBackground(BattleCastleOpponentApp *app, enum BgLayer bgLayer)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(app->narc, BATTLE_CASTLE_OPPONENT_APP_TILES, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_CASTLE_OPPONENT_APP_SUMMARY_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);
}

static void LoadPalette2(void)
{
    NNSG2dPaletteData *plttData;
    void *pltt = Graphics_GetPlttData(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, BATTLE_CASTLE_OPPONENT_APP_PLTT, &plttData, HEAP_ID_BATTLE_CASTLE_APP);

    DC_FlushRange(plttData->pRawData, PALETTE_SIZE_BYTES * 4);
    GX_LoadBGPltt(plttData->pRawData, 0, PALETTE_SIZE_BYTES * 4);
    Heap_Free(pltt);
}

static void LoadMovesListBackground(BattleCastleOpponentApp *app, enum BgLayer bgLayer)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(app->narc, BATTLE_CASTLE_OPPONENT_APP_TILES, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_CASTLE_OPPONENT_APP_MOVES_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);
}

static void LoadSubScreenBackground(BattleCastleOpponentApp *app, enum BgLayer bgLayer)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(app->narc, BATTLE_FRONTIER_APP_SUB_SCREEN_TILES, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_FRONTIER_APP_SUB_SCREEN_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);
    Graphics_LoadPaletteFromOpenNARC(app->narc, BATTLE_FRONTIER_APP_SUB_SCREEN_PLTT, PAL_LOAD_SUB_BG, 0, 0x20, HEAP_ID_BATTLE_CASTLE_APP);
}

static u8 ov107_02247650(BattleCastleOpponentApp *param0, Window *param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9)
{
    return ov107_02247680(param0, param1, param2, param3, param4, param5, param6, param7, param8, param9, 0);
}

static u8 ov107_02247680(BattleCastleOpponentApp *param0, Window *param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9, u32 param10)
{
    Window_FillTilemap(param1, param8);
    MessageLoader_GetString(param0->msgLoader, param2, param0->fmtStr);
    StringTemplate_Format(param0->strTemplate, param0->displayStr, param0->fmtStr);

    switch (param10) {
    case 1:
        param3 -= (Font_CalcStringWidth(FONT_SYSTEM, param0->displayStr, 0) + 1) / 2;
        break;
    case 2:
        param3 -= Font_CalcStringWidth(FONT_SYSTEM, param0->displayStr, 0);
        break;
    }

    u8 v0 = Text_AddPrinterWithParamsAndColor(param1, param9, param0->displayStr, param3, param4, param5, TEXT_COLOR(param6, param7, param8), NULL);
    Window_ScheduleCopyToVRAM(param1);

    return v0;
}

static u8 ov107_02247714(BattleCastleOpponentApp *param0, Window *param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9)
{
    ov107_02247744(param0, param1, param2, param3, param4, param5, param6, param7, param8, param9, 0);
}

static u8 ov107_02247744(BattleCastleOpponentApp *param0, Window *param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9, u32 param10)
{
    MessageLoader_GetString(param0->msgLoader, param2, param0->fmtStr);
    StringTemplate_Format(param0->strTemplate, param0->displayStr, param0->fmtStr);

    switch (param10) {
    case 1:
        param3 -= (Font_CalcStringWidth(FONT_SYSTEM, param0->displayStr, 0) + 1) / 2;
        break;
    case 2:
        param3 -= Font_CalcStringWidth(FONT_SYSTEM, param0->displayStr, 0);
        break;
    }

    u8 v0 = Text_AddPrinterWithParamsAndColor(param1, param9, param0->displayStr, param3, param4, param5, TEXT_COLOR(param6, param7, param8), NULL);
    Window_ScheduleCopyToVRAM(param1);

    return v0;
}

static u8 ov107_022477CC(BattleCastleOpponentApp *param0, int param1, u8 param2)
{
    u8 v0 = ov107_02247650(param0, &param0->windows[7], param1, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, param2);
    Window_ScheduleCopyToVRAM(&param0->windows[7]);

    return v0;
}

static void ov107_02247804(BattleCastleOpponentApp *param0, Window *window, Pokemon *mon)
{
    Window_FillTilemap(window, 0);

    StringTemplate_SetItemName(param0->strTemplate, 0, Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL));
    ov107_02247A14(param0, window, 48, 8, 8, 0);
    ov107_02247A14(param0, window, 49, 72, 8, 0);

    StringTemplate_SetNatureName(param0->strTemplate, 0, Pokemon_GetNature(mon));
    ov107_02247A14(param0, window, 50, 8, 24, 0);
    ov107_02247A14(param0, window, 51, 72, 24, 0);

    StringTemplate_SetAbilityName(param0->strTemplate, 0, Pokemon_GetValue(mon, MON_DATA_ABILITY, NULL));
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

static void ov107_02247A14(BattleCastleOpponentApp *param0, Window *param1, int param2, u16 param3, u16 param4, u32 param5)
{
    ov107_02247744(param0, param1, param2, param3, param4, 0xff, 1, 2, 0, 0, param5);
}

static void ov107_02247A3C(BattleCastleOpponentApp *param0, Window *param1, Pokemon *param2)
{
    Window_FillTilemap(param1, 0);

    ov107_02247AD0(param0, param1, 0, 71, 75, param2, 54, 58, 66);
    ov107_02247AD0(param0, param1, 1, 72, 75, param2, 55, 59, 67);
    ov107_02247AD0(param0, param1, 2, 73, 75, param2, 56, 60, 68);
    ov107_02247AD0(param0, param1, 3, 74, 75, param2, 57, 61, 69);

    Window_ScheduleCopyToVRAM(param1);
}

static void ov107_02247AD0(BattleCastleOpponentApp *param0, Window *param1, u8 param2, u32 param3, u32 param4, Pokemon *param5, u32 param6, u32 param7, u32 param8)
{
    u16 v0 = 4 * 8;
    u16 v1 = (2 * 8 - 4) + param2 * 24;
    u16 v2 = 18 * 8 + 1;
    u16 v3 = (2 * 8 - 4) + param2 * 24;
    StringTemplate_SetMoveName(param0->strTemplate, param2, Pokemon_GetValue(param5, param6, NULL));
    param0->unk_0A = ov107_02247714(param0, param1, param3, v0, v1, 0xFF, 1, 2, 0, 0);
    ov107_022480EC(param0, 4, Pokemon_GetValue(param5, param7, NULL), 3, 0);
    ov107_022480EC(param0, 5, Pokemon_GetValue(param5, param8, NULL), 3, 0);
    param0->unk_0A = ov107_02247744(param0, param1, param4, v2, v3, 0xFF, 1, 2, 0, 0, 1);
}

static void ov107_02247B78(BattleCastleOpponentApp *param0, Window *param1)
{
    Window_FillTilemap(param1, 0);

    u16 v0;
    if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 0) {
        v0 = 36;
    } else {
        v0 = 4;
    }

    u8 v1 = ov104_0223B7DC(param0->challengeType, 1);

    for (int v2 = 0; v2 < v1; v2++) {
        if (param0->unk_3CC[v2] == 0) {
            Window_FillRectWithColor(param1, 0, v0 + (64 * v2), 1, 64, 2 * 8);

            continue;
        }

        Pokemon *v3 = Party_GetPokemonBySlotIndex(param0->unk_3DC, v2);

        FontSpecialChars_DrawPartyScreenHPText(param0->specialChars, Pokemon_GetValue(v3, MON_DATA_HP, NULL), 3, 1, param1, v0 + (64 * v2), 1);
        FontSpecialChars_DrawPartyScreenLevelText(param0->specialChars, 0, param1, 24 + v0 + (64 * v2), 1);
        FontSpecialChars_DrawPartyScreenHPText(param0->specialChars, Pokemon_GetValue(v3, MON_DATA_MAX_HP, NULL), 3, 0, param1, 32 + v0 + (64 * v2), 1);
    }

    Window_ScheduleCopyToVRAM(param1);
}

static void ov107_02247C64(BattleCastleOpponentApp *param0, Window *param1)
{
    Window_FillTilemap(param1, 0);

    u16 v1, v2;
    if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 0) {
        v1 = 40;
        v2 = 80;
    } else {
        v1 = 8;
        v2 = 48;
    }

    u8 v3 = ov104_0223B7DC(param0->challengeType, 1);

    for (int v4 = 0; v4 < v3; v4++) {
        Pokemon *v5 = Party_GetPokemonBySlotIndex(param0->unk_3DC, v4);
        FontSpecialChars_DrawPartyScreenText(param0->specialChars, 1, Pokemon_GetValue(v5, MON_DATA_LEVEL, NULL), 3, 0, param1, v1 + (64 * v4), 1);

        u32 v0 = Pokemon_GetValue(v5, MON_DATA_GENDER, NULL);
        ov107_022481FC(param0, param1, v2 + (64 * v4), 1, 0, v0);
    }

    Window_ScheduleCopyToVRAM(param1);
}

static void ov107_02247D04(BattleCastleOpponentApp *param0, Window *param1, u8 param2)
{
    for (int v0 = 0; v0 < 3; v0++) {
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
}

static void ov107_02247D68(BattleCastleOpponentApp *param0, u8 param1, u8 param2, int param3)
{
    MessageLoader_GetString(param0->msgLoader, param3, param0->unk_30[param1]);

    param0->unk_120[param1].entry = (const void *)param0->unk_30[param1];
    param0->unk_120[param1].index = param2;
}

static void ov107_02247D94(BattleCastleOpponentApp *param0)
{
    BattleCastleApp_DrawWindow(param0->bgConfig, &param0->windows[10]);
    ov107_02247D04(param0, &param0->windows[10], 2);
    ov107_02247D68(param0, 0, 0, 26);
    ov107_02247D68(param0, 1, 1, 27);

    param0->unk_11C = Menu_NewAndCopyToVRAM(&param0->unk_110, 8, 0, 0, 100, PAD_BUTTON_B);
    param0->unk_0F_2 = 1;
}

static void ov107_02247DF0(BattleCastleOpponentApp *param0)
{
    BattleCastleApp_DrawWindow(param0->bgConfig, &param0->windows[11]);
    ov107_02247D04(param0, &param0->windows[11], 3);
    ov107_02247D68(param0, 0, 0, 22);
    ov107_02247D68(param0, 1, 1, 23);
    ov107_02247D68(param0, 2, 2, 24);

    param0->unk_11C = Menu_NewAndCopyToVRAM(&param0->unk_110, 8, 0, 0, 100, PAD_BUTTON_B);
    param0->unk_0F_2 = 1;
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

static void ov107_02247E5C(BattleCastleOpponentApp *param0)
{
    BattleCastleApp_DrawWindow(param0->bgConfig, &param0->windows[5]);
    Window_FillTilemap(&param0->windows[5], 15);

    param0->unk_13C = StringList_New(NELEMS(Unk_ov107_0224A1BC), HEAP_ID_BATTLE_CASTLE_APP);

    for (int v0 = 0; v0 < NELEMS(Unk_ov107_0224A1BC); v0++) {
        StringList_AddFromMessageBank(param0->unk_13C, param0->msgLoader, Unk_ov107_0224A1BC[v0][0], Unk_ov107_0224A1BC[v0][1]);
    }

    ListMenuTemplate v1 = Unk_ov107_0224A17C;

    v1.choices = param0->unk_13C;
    v1.window = &param0->windows[5];
    v1.parent = param0;
    v1.cursorCallback = ov107_02247F14;
    v1.printCallback = NULL;
    v1.count = NELEMS(Unk_ov107_0224A1BC);
    v1.textColorBg = 15;
    v1.maxDisplay = 4;

    param0->unk_138 = ListMenu_New(&v1, param0->unk_1C, param0->unk_1E, HEAP_ID_BATTLE_CASTLE_APP);
    param0->unk_0F_1 = 1;

    Window_ScheduleCopyToVRAM(&param0->windows[5]);
}

static void ov107_02247F14(ListMenu *param0, u32 param1, u8 param2)
{
    BattleCastleOpponentApp *v5 = (BattleCastleOpponentApp *)ListMenu_GetAttribute(param0, 19);

    if (param2 == 0) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    u16 v4;
    ListMenu_CalcTrueCursorPos(param0, &v4);
    ov107_02247650(v5, &v5->windows[9], Unk_ov107_0224A0CC[v4], 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_MESSAGE);
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

static void ov107_02247F6C(BattleCastleOpponentApp *param0)
{
    BattleCastleApp_DrawWindow(param0->bgConfig, &param0->windows[6]);
    Window_FillTilemap(&param0->windows[6], 15);

    param0->unk_13C = StringList_New(NELEMS(Unk_ov107_0224A19C), HEAP_ID_BATTLE_CASTLE_APP);

    for (int v0 = 0; v0 < (NELEMS(Unk_ov107_0224A19C)); v0++) {
        StringList_AddFromMessageBank(param0->unk_13C, param0->msgLoader, Unk_ov107_0224A19C[v0][0], Unk_ov107_0224A19C[v0][1]);
    }

    ListMenuTemplate v1 = Unk_ov107_0224A17C;

    v1.choices = param0->unk_13C;
    v1.window = &param0->windows[6];
    v1.parent = param0;
    v1.cursorCallback = ov107_02248028;
    v1.printCallback = ov107_022480A0;
    v1.count = (NELEMS(Unk_ov107_0224A19C));
    v1.textColorBg = 15;
    v1.maxDisplay = 4;

    param0->unk_138 = ListMenu_New(&v1, 0, 0, HEAP_ID_BATTLE_CASTLE_APP);
    param0->unk_0F_1 = 1;

    Window_ScheduleCopyToVRAM(&param0->windows[6]);
}

static void ov107_02248028(ListMenu *param0, u32 param1, u8 param2)
{
    BattleCastleOpponentApp *v3 = (BattleCastleOpponentApp *)ListMenu_GetAttribute(param0, 19);

    if (param2 == 0) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    u16 v2;
    ListMenu_CalcTrueCursorPos(param0, &v2);

    u8 v0 = ov107_02249CAC(v3->saveData, v3->challengeType, 2);
    u8 v1 = v0 == 1 ? 0 : 1;

    ov107_02247650(v3, &v3->windows[7], Unk_ov107_0224A0AC[v2][v1], 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_MESSAGE);
}

static void ov107_022480A0(ListMenu *param0, u32 param1, u8 param2)
{
    BattleCastleOpponentApp *v2 = (BattleCastleOpponentApp *)ListMenu_GetAttribute(param0, 19);

    u8 v0 = ov107_02249CAC(v2->saveData, v2->challengeType, 2);
    u8 v1 = 1;

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
}

static void ov107_022480EC(BattleCastleOpponentApp *param0, u32 param1, s32 param2, u32 param3, int param4)
{
    StringTemplate_SetNumber(param0->strTemplate, param1, param2, param3, param4, 1);
}

static void ov107_02248104(BattleCastleOpponentApp *param0, u32 param1, BoxPokemon *param2)
{
    StringTemplate_SetSpeciesName(param0->strTemplate, param1, param2);
}

static void ov107_02248110(BattleCastleOpponentApp *param0, u32 param1)
{
    StringTemplate_SetPlayerName(param0->strTemplate, param1, SaveData_GetTrainerInfo(param0->saveData));
}

static void ov107_0224812C(BattleCastleOpponentApp *param0, Window *param1, u32 param2, u32 param3, u8 param4)
{
    const TrainerInfo *v1 = SaveData_GetTrainerInfo(param0->saveData);
    String *v2 = String_Init(7 + 1, HEAP_ID_BATTLE_CASTLE_APP);

    String_CopyChars(v2, TrainerInfo_Name(v1));

    TextColor v0;
    if (TrainerInfo_Gender(v1) == 0) {
        v0 = TEXT_COLOR(7, 8, 0);
    } else {
        v0 = TEXT_COLOR(3, 4, 0);
    }

    Text_AddPrinterWithParamsAndColor(param1, param4, v2, param2, param3, TEXT_SPEED_NO_TRANSFER, v0, NULL);
    String_Free(v2);
}

static void ov107_02248194(BattleCastleOpponentApp *param0, Window *param1, u32 param2, u32 param3, u8 param4)
{
    TrainerInfo *v0 = CommInfo_TrainerInfo(CommSys_CurNetId() ^ 1);

    TextColor v1;
    if (TrainerInfo_Gender(v0) == 0) {
        v1 = TEXT_COLOR(7, 8, 0);
    } else {
        v1 = TEXT_COLOR(3, 4, 0);
    }

    StringTemplate_SetPlayerName(param0->strTemplate, 0, v0);
    ov107_02247714(param0, param1, 1, param2, param3, TEXT_SPEED_NO_TRANSFER, GET_TEXT_FG_COLOR(v1), GET_TEXT_SHADOW_COLOR(v1), GET_TEXT_BG_COLOR(v1), FONT_SYSTEM);
}

static void ov107_022481FC(BattleCastleOpponentApp *param0, Window *param1, u32 param2, u32 param3, u8 param4, u8 param5)
{
    u32 v0;
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
}

static void ov107_02248240(BattleCastleOpponentApp *param0)
{
    param0->unk_0A = ov107_02247680(param0, &param0->windows[1], 5, 16, 1 + 4, TEXT_SPEED_NO_TRANSFER, 1, 2, 0, FONT_SYSTEM, 1);
    BattleCastleApp_DrawMessageBox(&param0->windows[8], Options_Frame(param0->options));
    param0->unk_0A = ov107_02247650(param0, &param0->windows[8], 4, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_MESSAGE);
}

static void ov107_022482A4(BattleCastleOpponentApp *param0)
{
    ov107_02248860(&param0->windows[8]);
}

static void ov107_022482B0(BattleCastleOpponentApp *param0)
{
    BattleCastleApp_DrawMessageBox(&param0->windows[9], Options_Frame(param0->options));

    param0->unk_18 = 0;
    ov107_02247E5C(param0);
}

static void ov107_022482D4(BattleCastleOpponentApp *param0)
{
    ListMenu_GetListAndCursorPos(param0->unk_138, &param0->unk_1C, &param0->unk_1E);

    ov107_02248860(&param0->windows[9]);
    ov107_02249258(param0);
}

static void ov107_022482FC(BattleCastleOpponentApp *param0)
{
    BattleCastleApp_DrawMessageBox(&param0->windows[7], Options_Frame(param0->options));

    param0->unk_0A = ov107_02247650(param0, &param0->windows[7], 37, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_MESSAGE);
    param0->unk_18 = 0;

    ov107_02247F6C(param0);
}

static void ov107_02248348(BattleCastleOpponentApp *param0)
{
    ov107_02249258(param0);
}

static void ChangeState(BattleCastleOpponentApp *app, int *state, int newState)
{
    app->subState = 0;
    *state = newState;
}

static void ov107_02248358(BattleCastleOpponentApp *param0, int param1)
{
    int v1 = 0;
    u8 v0 = ov107_02249C98(param0->unk_14, param0->unk_0D);

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
}

static void ov107_022483F0(BattleCastleOpponentApp *param0)
{
    Sound_PlayEffect(SEQ_SE_CONFIRM);

    if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 1) {
        ov107_02248874(param0, 22, param0->unk_0D);
    }

    ov107_02248420(param0, param0->unk_0D, 0);
}

static void ov107_02248420(BattleCastleOpponentApp *param0, u8 param1, u8 param2)
{
    BattleCastleAppSprite *v0;
    u32 v1, v2, v3, v4;

    if (param2 == 0) {
        v0 = param0->cursorSprite;
        v3 = 1;
        v4 = 0;
    } else {
        v0 = param0->unk_390;
        v3 = 2;
        v4 = 17;
    }

    if (param1 >= param0->unk_15) {
        BattleCastleAppSprite_SetAnim(v0, v4);
        BattleCastleAppSprite_SetPosition(v0, 224, 160);
    } else {
        BattleCastleAppSprite_SetAnim(v0, v3);
        GetCursorSpritePos(param0, &v1, &v2, param1);
        BattleCastleAppSprite_SetPosition(v0, v1, v2);
    }
}

static void GetCursorSpritePos(BattleCastleOpponentApp *app, u32 *x, u32 *y, u8 slot)
{
    if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
        if (slot == 0) {
            *x = 40;
        } else if (slot == 1) {
            *x = 104;
        } else if (slot == 2) {
            *x = 168;
        } else {
            *x = 232;
        }
    } else {
        if (slot == 0) {
            *x = 72;
        } else if (slot == 1) {
            *x = 136;
        } else {
            *x = 200;
        }
    }

    *y = 88;
}

static void ov107_022484DC(BattleCastleOpponentApp *param0, u16 *param1, u16 *param2, u16 *param3, u16 *param4)
{
    if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 0) {
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
}

static BOOL ov107_0224850C(BattleCastleOpponentApp *param0, u8 param1, u8 param2)
{

    u8 v3 = param0->unk_15;
    u8 v2 = ov107_02249C98(param0->unk_14, param1);
    Pokemon *v4 = Party_GetPokemonBySlotIndex(param0->unk_3DC, v2);

    switch (param2) {
    case 0:
        param0->unk_0F_0 = 0;
        return 1;
        break;
    case 1:
        if (param0->unk_0F_0 == 0) {
            param0->unk_0F_0 = 1;

            u32 v1;
            if (param0->unk_12 == 1) {
                v1 = 9;
            } else {
                v1 = 10;
            }

            u16 v0;
            if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 0) {
                v0 = 80;
            } else {
                v0 = 48;
            }

            param0->unk_388 = BattleCastleAppSprite_New(&param0->spriteMan, 0, 0, 0, v1, v0 + (64 * v2), 50, 0, NULL);
        }

        if (BattleCastleAppSprite_IsAnimated(param0->unk_388) == 0) {
            BattleCastleAppSprite_Free(param0->unk_388);
            param0->unk_388 = NULL;
            param0->unk_0F_0 = 0;
            return 1;
        }
        break;
    case 3:
        if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 0) {
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
        if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 0) {
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

static BOOL ov107_02248674(BattleCastleOpponentApp *param0, u8 param1, u8 param2)
{
    u8 v2 = param0->unk_15;
    u8 v1 = ov107_02249C98(param0->unk_14, param1);
    Pokemon *v3 = Party_GetPokemonBySlotIndex(param0->unk_3DC, v1);

    switch (param2) {
    case 0:
    case 1:
    case 5:
        param0->unk_0F_0 = 0;
        return 1;
        break;
    case 3:
        if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 1) {
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
        if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 1) {
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

static void ov107_0224877C(BattleCastleOpponentApp *param0, s8 param1)
{
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
            Pokemon *v0 = Party_GetPokemonBySlotIndex(param0->unk_3DC, ov107_02249C98(param0->unk_14, param0->unk_0D));
            ov107_02247804(param0, &param0->windows[4], v0);
            return;
        }
    }
}

static void ov107_022487DC(BattleCastleOpponentApp *param0, s8 param1)
{
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
            Pokemon *v0 = Party_GetPokemonBySlotIndex(param0->unk_3DC, ov107_02249C98(param0->unk_14, param0->unk_0D));
            ov107_02247A3C(param0, &param0->windows[4], v0);
            return;
        }
    }
}

static void ov107_0224883C(BattleCastleOpponentApp *param0)
{
    ov107_02248BB4(param0);
    ov107_02249258(param0);

    ov107_02248860(&param0->windows[7]);
    BattleCastleAppSprite_SetDrawFlag(param0->unk_3C4, 0);
}

static void ov107_02248860(Window *param0)
{
    Window_EraseMessageBox(param0, 1);
    Window_ClearAndScheduleCopyToVRAM(param0);
}

BOOL ov107_02248874(BattleCastleOpponentApp *param0, u16 param1, u16 param2)
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

void ov107_022488CC(BattleCastleOpponentApp *param0, u16 param1)
{
    int v1 = 0;
    TrainerInfo *v2 = SaveData_GetTrainerInfo(param0->saveData);

    param0->unk_3E4[v1] = param1;
    v1 += 1;

    param0->unk_3E4[v1] = TrainerInfo_Gender(v2);
    v1 += 1;

    for (int v0 = 0; v0 < 3; v0++) {
        param0->unk_3E4[v1 + v0] = ov107_02249CAC(param0->saveData, param0->challengeType, v0);
    }

    v1 += 3;
}

void ov107_02248910(int param0, int param1, void *param2, void *param3)
{
    BattleCastleOpponentApp *v2 = param3;
    const u16 *v3 = param2;

    int v1 = 0;
    v2->unk_17++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v1 += 1;
    v1 += 1;

    for (int v0 = 0; v0 < 3; v0++) {
        v2->unk_437[v0] = (u8)v3[v1 + v0];
    }

    v1 += 3;
}

void ov107_02248940(BattleCastleOpponentApp *param0, u16 param1, u16 param2)
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
}

void ov107_02248978(int param0, int param1, void *param2, void *param3)
{
    BattleCastleOpponentApp *v2 = param3;
    const u16 *v3 = param2;

    int v1 = 0;
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
}

void ov107_022489D0(BattleCastleOpponentApp *param0, u16 param1)
{
    param0->unk_3E4[0] = param1;
    param0->unk_3E4[1] = param0->unk_0D;
}

void ov107_022489E0(int param0, int param1, void *param2, void *param3)
{
    BattleCastleOpponentApp *v0 = param3;
    const u16 *v1 = param2;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v0->unk_434 = (u8)v1[1];

    ov107_02248420(v0, v0->unk_434, 1);
}

void ov107_02248A04(BattleCastleOpponentApp *param0)
{
    param0->unk_3E4[0] = 1;
}

void ov107_02248A10(int param0, int param1, void *param2, void *param3)
{
    BattleCastleOpponentApp *v0 = param3;
    const u16 *v1 = param2;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v0->unk_436 = (u8)v1[0];
}

static void ov107_02248A2C(BattleCastleOpponentApp *param0, u8 param1)
{

    LoadSummaryBackground(param0, 2);
    ov107_02248860(&param0->windows[7]);

    Window_ClearAndScheduleCopyToVRAM(&param0->windows[7]);

    Pokemon *v0 = Party_GetPokemonBySlotIndex(param0->unk_3DC, ov107_02249C98(param0->unk_14, param1));
    ov107_02247804(param0, &param0->windows[4], v0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
}

static void ov107_02248A74(BattleCastleOpponentApp *param0, u8 param1)
{
    param0->unk_3D4[ov107_02249C98(param0->unk_14, param1)] = 1;
}

static void ov107_02248A8C(BattleCastleOpponentApp *param0, u8 param1)
{
    BattleCastleApp_DrawMessageBox(&param0->windows[7], Options_Frame(param0->options));

    Pokemon *v0 = Party_GetPokemonBySlotIndex(param0->unk_3DC, ov107_02249C98(param0->unk_14, param1));
    ov107_02248104(param0, 0, Pokemon_GetBoxPokemon(v0));

    param0->unk_0A = ov107_022477CC(param0, 47, FONT_MESSAGE);

    ov107_02248A74(param0, param1);
    ov107_02249580(param0);

    Sound_PlayEffect(SEQ_SE_DP_UG_020);
}

static void ov107_02248AF0(BattleCastleOpponentApp *param0, u8 param1)
{
    LoadMovesListBackground(param0, 2);
    ov107_02248860(&param0->windows[7]);

    Window_ClearAndScheduleCopyToVRAM(&param0->windows[7]);

    Pokemon *v0 = Party_GetPokemonBySlotIndex(param0->unk_3DC, ov107_02249C98(param0->unk_14, param1));
    ov107_02247A3C(param0, &param0->windows[4], v0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
}

static void ov107_02248B38(BattleCastleOpponentApp *param0, u8 param1)
{
    param0->unk_3D8[ov107_02249C98(param0->unk_14, param1)] = 1;
}

static void ov107_02248B50(BattleCastleOpponentApp *param0, u8 param1)
{
    BattleCastleApp_DrawMessageBox(&param0->windows[7], Options_Frame(param0->options));

    Pokemon *v0 = Party_GetPokemonBySlotIndex(param0->unk_3DC, ov107_02249C98(param0->unk_14, param1));
    ov107_02248104(param0, 0, Pokemon_GetBoxPokemon(v0));

    param0->unk_0A = ov107_022477CC(param0, 70, FONT_MESSAGE);

    ov107_02248B38(param0, param1);
    ov107_02249580(param0);

    Sound_PlayEffect(SEQ_SE_DP_UG_020);
}

static void ov107_02248BB4(BattleCastleOpponentApp *param0)
{
    if (param0->unk_0F_2 == 1) {
        param0->unk_0F_2 = 0;
        Menu_Free(param0->unk_11C, NULL);
        Window_EraseStandardFrame(param0->unk_110.window, 1);
        Window_ClearAndScheduleCopyToVRAM(param0->unk_110.window);
    }
}

static void ov107_02248BEC(BattleCastleOpponentApp *param0)
{
    BattleCastleApp_DrawMessageBox(&param0->windows[7], Options_Frame(param0->options));
}

static void ov107_02248C08(BattleCastleOpponentApp *param0, Window *window)
{
    u16 v0, v1, v2, v3, x, y;
    ov107_022484DC(param0, &v0, &v1, &v2, &v3);

    if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == FALSE) {
        x = v0 + 104;
        y = v1;
        Window_FillRectWithColor(window, 0, x - 48, y, 48, 16);
        ov107_022480EC(param0, 0, sub_02030698(param0->frontier, sub_0205E630(param0->challengeType), sub_0205E6A8(sub_0205E630(param0->challengeType))), 4, 1);
        param0->unk_0A = ov107_02247744(param0, window, 2, x, y, 0xFF, 1, 2, 0, 0, 2);
    } else {
        if (CommSys_CurNetId() == 0) {
            x = v0 + 104;
            y = v1;
            Window_FillRectWithColor(window, 0, x - 48, y, 48, 16);
            ov107_022480EC(param0, 0, sub_02030698(param0->frontier, sub_0205E630(param0->challengeType), sub_0205E6A8(sub_0205E630(param0->challengeType))), 4, 1);
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
            ov107_022480EC(param0, 0, sub_02030698(param0->frontier, sub_0205E630(param0->challengeType), sub_0205E6A8(sub_0205E630(param0->challengeType))), 4, 1);
            param0->unk_0A = ov107_02247744(param0, window, 2, x, y, 0xFF, 1, 2, 0, 0, 2);
        }
    }

    Window_ScheduleCopyToVRAM(window);
}

static void ov107_02248E54(BattleCastleOpponentApp *param0, u8 param1)
{
    ov107_022480EC(param0, 0, ov107_02248770(param1), 4, 0);
    param0->unk_0A = ov107_022477CC(param0, 25, FONT_MESSAGE);

    ov107_02247D94(param0);
    param0->unk_0E = param1;
}

static void ov107_02248E84(BattleCastleOpponentApp *param0, Window *param1)
{
    u16 v0, v1, v2, v3, v4, v5;

    ov107_022484DC(param0, &v2, &v3, &v4, &v5);

    if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 0) {
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
}

static void ov107_02248F18(BattleCastleOpponentApp *param0, u8 param1, u8 param2)
{
    Sound_PlayEffect(SEQ_SE_DP_PIRORIRO2);

    u8 v1, v2;
    v2 = param0->unk_15;
    v1 = ov107_02249C9C(v2, param1);

    u16 v3;
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
            ov104_0223BC2C(param0->frontier, param0->challengeType, v3);
        } else {
            ov107_02249CF4(param0->strTemplate, 5);
            param0->unk_43A -= v3;
        }
    } else {
        if (param1 < v2) {
            ov107_02249CF4(param0->strTemplate, 5);
            param0->unk_43A -= v3;
        } else {
            ov107_02248110(param0, 5);
            ov104_0223BC2C(param0->frontier, param0->challengeType, v3);
        }
    }

    ov107_02248C08(param0, &param0->windows[0]);
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
}

static void ov107_02249024(BattleCastleOpponentApp *param0, u8 param1)
{
    Pokemon *v0 = Party_GetPokemonBySlotIndex(param0->unk_3DC, ov107_02249C98(param0->unk_14, param1));

    BattleCastleApp_DrawMessageBox(&param0->windows[7], Options_Frame(param0->options));
    ov107_02248104(param0, 0, Pokemon_GetBoxPokemon(v0));

    param0->unk_0A = ov107_022477CC(param0, 20, FONT_MESSAGE);
    param0->unk_3CC[ov107_02249C98(param0->unk_14, param1)] = 1;

    BattleCastleAppSprite_SetDrawFlag(param0->ballSprites[ov107_02249C98(param0->unk_14, param1)], 0);
    BattleCastleAppSprite_SetDrawFlag(param0->monSprites[ov107_02249C98(param0->unk_14, param1)], 1);

    ov107_02247B78(param0, &param0->windows[3]);
    ov107_02247C64(param0, &param0->windows[2]);
    BattleCastleAppSprite_SetDrawFlag(param0->barSprites[ov107_02249C98(param0->unk_14, param1)], 1);

    Sound_PlayEffect(SEQ_SE_DP_UG_020);
}

static void ov107_022490E8(BattleCastleOpponentApp *param0, u8 param1, u8 param2)
{
    BattleCastleApp_DrawMessageBox(&param0->windows[7], Options_Frame(param0->options));
    Pokemon *v1 = Party_GetPokemonBySlotIndex(param0->unk_3DC, ov107_02249C98(param0->unk_14, param1));
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

    u32 v0;
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

    ov107_02247B78(param0, &param0->windows[3]);
    ov107_02247C64(param0, &param0->windows[2]);
}

static void ov107_02249238(BattleCastleOpponentApp *param0)
{
    Window_FillTilemap(&param0->windows[4], 0);
    Window_ClearAndCopyToVRAM(&param0->windows[4]);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
}

static void ov107_02249258(BattleCastleOpponentApp *param0)
{
    if (param0->unk_0F_1 == 1) {
        param0->unk_0F_1 = 0;

        Window *v0 = (Window *)ListMenu_GetAttribute(param0->unk_138, 18);

        Window_EraseStandardFrame(v0, 1);
        Window_FillTilemap(v0, 0);
        Window_ClearAndScheduleCopyToVRAM(v0);
        StringList_Free(param0->unk_13C);
        ListMenu_Free(param0->unk_138, NULL, NULL);
    }
}

static void ov107_022492A8(BattleCastleOpponentApp *param0)
{
    u8 v1 = ov104_0223B7A8(param0->challengeType, 1);

    for (int v0 = 0; v0 < v1; v0++) {
        Pokemon *v3 = Party_GetPokemonBySlotIndex(param0->unk_3DC, v0);
        u8 v2 = ov104_0222E240(Pokemon_GetValue(v3, MON_DATA_HP, NULL), Pokemon_GetValue(v3, MON_DATA_MAX_HP, NULL));

        if (param0->monSprites[v0] != NULL) {
            ov107_02249C1C(param0->monSprites[v0], v2);

            if ((v0 != ov107_02249C98(param0->unk_14, param0->unk_0D)) || (param0->unk_0D >= param0->unk_15)) {
                ov107_02249C28(param0->monSprites[v0], 0);
            } else {
                ov107_02249C28(param0->monSprites[v0], 1);
            }
        }
    }
}

static BOOL ov107_0224933C(BattleCastleOpponentApp *param0, u16 param1, u16 param2)
{
    ov107_02248BB4(param0);

    u16 v0 = sub_02030698(param0->frontier, sub_0205E630(param0->challengeType), sub_0205E6A8(sub_0205E630(param0->challengeType)));

    if (v0 < param1) {
        ov107_02248BEC(param0);
        param0->unk_0A = ov107_022477CC(param0, param2, FONT_MESSAGE);
        param0->subState = 15;
        return 0;
    }

    if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 0) {
        ov107_02248860(&param0->windows[7]);
        ov104_0223BC2C(param0->frontier, param0->challengeType, param1);
        ov107_02248C08(param0, &param0->windows[0]);

        if (param1 == 2) {
            ov107_02248A8C(param0, param0->unk_0D);
        } else {
            ov107_02248B50(param0, param0->unk_0D);
        }

        param0->subState = 12;
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

static void ov107_022493CC(BattleCastleOpponentApp *param0, u8 param1, u8 param2)
{
    u8 v3 = ov104_0223B7A8(param0->challengeType, 0);

    u8 v2;
    if (param2 == 5) {
        v2 = 2;
    } else {
        GF_ASSERT(0);
    }

    u8 v0 = param0->unk_15;
    u8 v1 = ov107_02249C9C(v0, param1);

    u32 v4;
    u16 v5[4];
    if (CommSys_CurNetId() == 0) {
        if (param1 < v0) {
            ov107_02248110(param0, 5);
            v4 = ov107_02249CAC(param0->saveData, param0->challengeType, v2);

            ov104_0223BC2C(param0->frontier, param0->challengeType, 50);
            v4 = ov107_02249CAC(param0->saveData, param0->challengeType, v2);

            v5[0] = (v4 + 1);
            sub_020306E4(SaveData_GetBattleFrontier(param0->saveData), sub_0205E5B4(param0->challengeType, v2), sub_0205E6A8(sub_0205E5B4(param0->challengeType, v2)), v4 + 1);

            if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 1) {
                param0->unk_0F_3 = 2;
            }
        } else {
            ov107_02249CF4(param0->strTemplate, 5);
            v4 = param0->unk_437[v2];
            param0->unk_43A -= 50;
            param0->unk_437[v2]++;
        }
    } else {
        if (param1 < v0) {
            ov107_02249CF4(param0->strTemplate, 5);
            v4 = param0->unk_437[v2];
            param0->unk_43A -= 50;
            param0->unk_437[v2]++;
        } else {
            ov107_02248110(param0, 5);
            v4 = ov107_02249CAC(param0->saveData, param0->challengeType, v2);

            ov104_0223BC2C(param0->frontier, param0->challengeType, 50);
            v4 = ov107_02249CAC(param0->saveData, param0->challengeType, v2);

            v5[0] = (v4 + 1);
            sub_020306E4(SaveData_GetBattleFrontier(param0->saveData), sub_0205E5B4(param0->challengeType, v2), sub_0205E6A8(sub_0205E5B4(param0->challengeType, v2)), v4 + 1);

            if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 1) {
                param0->unk_0F_3 = 2;
            }
        }
    }

    ov107_02248BB4(param0);
    ov107_02248C08(param0, &param0->windows[0]);
    BattleCastleApp_DrawMessageBox(&param0->windows[7], Options_Frame(param0->options));

    param0->unk_0A = ov107_022477CC(param0, Unk_ov107_0224A0DC[v2][v4], FONT_MESSAGE);
}

static void ov107_02249580(BattleCastleOpponentApp *param0)
{
    u8 v0 = ov104_0223B7DC(param0->challengeType, 1);

    for (int v1 = 0; v1 < v0; v1++) {
        ov107_022495A8(param0, v1);
    }
}

static void ov107_022495A8(BattleCastleOpponentApp *param0, u8 param1)
{
    if (param0->unk_3D4[param1] == 1) {
        BattleCastleAppSprite_SetDrawFlag(param0->unk_3A4[param1][0], 1);
    }

    if (param0->unk_3D8[param1] == 1) {
        BattleCastleAppSprite_SetDrawFlag(param0->unk_3A4[param1][1], 1);
    }
}

static void ov107_022495E4(BattleCastleOpponentApp *app, u32 *x, u32 *y)
{
    if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
        *x = 64;
    } else {
        *x = 96;
    }

    *y = 60;
}
