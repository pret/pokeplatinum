#include "applications/frontier/battle_factory/main.h"

#include <nitro.h>
#include <string.h>

#include "applications/frontier/battle_factory/cursor.h"
#include "applications/frontier/battle_factory/helpers.h"
#include "applications/frontier/battle_factory/panel_sprite.h"
#include "applications/frontier/battle_factory/pokeball_sprite.h"
#include "applications/frontier/battle_factory/sprite_manager.h"
#include "applications/frontier/battle_factory/windows.h"
#include "applications/pokemon_summary_screen/main.h"
#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_0223A7F4.h"
#include "overlay104/struct_ov104_02234130.h"

#include "bg_window.h"
#include "communication_information.h"
#include "communication_system.h"
#include "coordinates.h"
#include "dexmode_checker.h"
#include "font.h"
#include "g3d_pipeline.h"
#include "game_options.h"
#include "game_overlay.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "narc_frontier_bg.h"
#include "overlay_manager.h"
#include "palette.h"
#include "party.h"
#include "pokemon.h"
#include "pokemon_sprite.h"
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
#include "unk_020363E8.h"
#include "unk_020393C8.h"
#include "unk_0209BA80.h"
#include "vram_transfer.h"

#include "constdata/const_020F410C.h"
#include "res/text/bank/battle_factory_app.h"

FS_EXTERN_OVERLAY(overlay104);

typedef struct BattleFactoryApp {
    ApplicationManager *appMan;
    ApplicationManager *unk_04;
    u8 subState;
    u8 challengeType;
    u8 unk_0A;
    u8 unk_0B;
    int unk_0C;
    u8 unk_10;
    u8 unk_11;
    u8 unk_12;
    u8 unk_13_0 : 1;
    u8 unk_13_1 : 1;
    u8 unk_13_2 : 1;
    u8 unk_13_3 : 1;
    u8 unk_13_4 : 1;
    u8 unk_13_5 : 1;
    u8 unk_13_6 : 1;
    u8 unk_13_7 : 1;
    u32 unk_14;
    u8 unk_18;
    u8 unk_19;
    u8 unk_1A;
    u8 unk_1B;
    MessageLoader *msgLoader;
    StringTemplate *strTemplate;
    String *displayStr;
    String *fmtStr;
    String *menuStr[4];
    u16 unk_3C[8];
    BgConfig *bgConfig;
    Window windows[10];
    MenuTemplate menuTemplate;
    Menu *menu;
    StringList strList[4];
    PaletteData *plttData;
    G3DPipelineBuffers *g3dPipeline;
    PokemonSpriteManager *monSpriteMan;
    PokemonSprite *unk_12C[3];
    Options *options;
    SaveData *saveData;
    PokemonSummary *unk_140;
    BattleFactoryAppSpriteManager spriteMan;
    BattleFactoryAppPokeballSprite *unk_2F4[6];
    BattleFactoryAppCursor *unk_30C;
    BattleFactoryAppCursor *unk_310;
    BattleFactoryAppPanelSprite *unk_314;
    BattleFactoryAppPanelSprite *unk_318;
    Party *unk_31C;
    Party *unk_320;
    u16 unk_324[6];
    u16 *unk_330;
    int unk_334;
    NARC *narc;
    u16 unk_33C[60];
    u16 unk_3B4;
    u16 unk_3B6[2];
    u16 unk_3BA[2];
    u8 unk_3BE;
    u8 unk_3BF;
    u32 unk_3C0;
} BattleFactoryApp;

static BOOL ov105_02241FF4(BattleFactoryApp *param0);
static BOOL ov105_022421F0(BattleFactoryApp *app);
static BOOL ov105_02242698(BattleFactoryApp *param0);
static void ov105_0224227C(BattleFactoryApp *param0);
static void ov105_0224246C(BattleFactoryApp *app);
static void ov105_022424A0(BattleFactoryApp *app);
static void ov105_022424CC(BattleFactoryApp *param0);
static void ov105_0224260C(BattleFactoryApp *app);
static BOOL ov105_022426E0(BattleFactoryApp *param0);
static void ov105_0224296C(BattleFactoryApp *param0);
static void ov105_02242A58(BattleFactoryApp *param0);
static void ov105_02242B54(BattleFactoryApp *param0);
static BOOL ov105_02242D04(BattleFactoryApp *param0);
static BOOL ov105_02243144(BattleFactoryApp *param0);
static void ov105_022433AC(BattleFactoryApp *param0);
static BOOL ov105_022434BC(BattleFactoryApp *param0);
static void ov105_02243738(BattleFactoryApp *param0);
static BOOL ov105_02243818(BattleFactoryApp *param0);
static void ov105_0224396C(BattleFactoryApp *param0);
static BOOL ov105_02243A3C(BattleFactoryApp *param0);
static void ov105_02243D20(BattleFactoryApp *param0);
static void ov105_02243D84(BattleFactoryApp *param0);
static void ov105_02243DE4(BattleFactoryApp *param0);
static BOOL ov105_02243E84(BattleFactoryApp *param0);
static void ov105_02243FDC(BattleFactoryApp *param0);
static BOOL ov105_0224400C(BattleFactoryApp *param0);
static BOOL ov105_0224435C(BattleFactoryApp *param0);
static BOOL ov105_0224439C(BattleFactoryApp *param0);
static BOOL ov105_022443DC(BattleFactoryApp *param0);
static BOOL ov105_02244424(BattleFactoryApp *param0);
static void FreeAssets(BattleFactoryApp *app);
static void ReInitApp(BattleFactoryApp *app);
static void InitGraphicsPlane(void);
static void LoadAssets(BattleFactoryApp *app);
static void ov105_022453F8(BattleFactoryApp *param0, u8 param1, u8 param2, int param3, const Party *param4);
static void InitSpriteManager(BattleFactoryApp *app);
static void LoadBackgrounds(BattleFactoryApp *app);
static void FreeBackgrounds(BgConfig *bgConfig);
static void VBlankCallback(void *data);
static void SetGXBanks(void);
static void InitBackgrounds(BgConfig *app);
static void ChangeState(BattleFactoryApp *app, int *state, int newState);
static BOOL ov105_02244780(BattleFactoryApp *param0);
static BOOL ov105_02244830(BattleFactoryApp *param0);
static void ov105_022448BC(BattleFactoryApp *param0);
static void ov105_022448F4(BattleFactoryApp *param0, u32 param1, u8 param2, u8 param3, u8 param4);
static void ov105_02244924(BattleFactoryApp *param0, u32 param1);
static void LoadMonSelectionBackground(BattleFactoryApp *app, enum BgLayer bgLayer);
static void LoadConveyorBackground(BattleFactoryApp *app, enum BgLayer bgLayer);
static void LoadAppStartupBackground(BattleFactoryApp *app, enum BgLayer bgLayer);
static void LoadWheelBackground(BattleFactoryApp *app, enum BgLayer bgLayer);
static void LoadPalette(void);
static void LoadSubScreenBackground(BattleFactoryApp *app, enum BgLayer bgLayer);
static void ReloadMonSelectionBackground(BattleFactoryApp *app, enum BgLayer bgLayer);
static void ReloadNoScreensBackground(BattleFactoryApp *app, enum BgLayer bgLayer);
static void LoadSelectionConfirmBackground(BattleFactoryApp *app, enum BgLayer bgLayer);
static u8 PrintMessageWithBg(BattleFactoryApp *app, Window *window, int entryID, u32 xOffset, u32 yOffset, u32 renderDelay, u8 fgColor, u8 shadowColor, u8 bgColor, u8 font);
static u8 PrintMessage(BattleFactoryApp *app, Window *window, int entryID, u32 xOffset, u32 yOffset, u32 renderDelay, u8 fgColor, u8 shadowColor, u8 bgColor, u8 font);
static u8 PrintMessageAndCopyToVRAM(BattleFactoryApp *app, int entryID);
static void InitMenu(BattleFactoryApp *app, Window *window, u8 numOptions);
static void AddStringToMenu(BattleFactoryApp *app, u8 strIndex, u8 listIndex, int entryID);
static void OpenMonOptionsMenu(BattleFactoryApp *app);
static void OpenYesNoMenu(BattleFactoryApp *app);
static void SetStringTemplateNumber(BattleFactoryApp *app, u32 idx, s32 num);
static void SetStringTemplateSpecies(BattleFactoryApp *app, u32 idx, BoxPokemon *boxMon);
static void PrintPlayersName(BattleFactoryApp *app, Window *window, u32 xOffset, u32 yOffset, u8 font);
static void PrintPartnersName(BattleFactoryApp *app, Window *window, u32 xOffset, u32 yOffset, u8 font);
static void PrintMonNameAndGender(BattleFactoryApp *app, Window *window, u8 slot, u32 xOffset, u32 yOffset, u8 fgColor, u8 shadowColor, u8 bgColor, u8 font, const Party *party);
static void PrintPartnersMonNameAndGender(BattleFactoryApp *app, Window *window, u32 xOffset, u32 yOffset, u8 fgColor, u8 shadowColor, u8 bgColor, u8 font, u16 species, u8 gender);
static void ov105_02245464(BattleFactoryApp *param0);
static BOOL ov105_022454F8(BattleFactoryApp *param0, u8 param1);
static u8 ov105_02245508(u8 param0);
static BOOL ov105_02245518(BattleFactoryApp *param0);
static void ov105_02245528(BattleFactoryApp *param0, u8 param1);
static u8 ov105_02245538(BattleFactoryApp *param0, u8 param1, u8 param2);
static u32 ov105_02245584(BattleFactoryApp *param0, u32 param1);
static void ov105_022455C4(BattleFactoryApp *app, u8 param1, Pokemon *mon, int x, int y, int param5);
static BOOL ov105_02245620(BattleFactoryApp *param0, u16 param1, u16 param2);
static void ov105_02245684(BattleFactoryApp *param0, u16 param1);
static void ov105_022456A8(BattleFactoryApp *param0, u16 param1, u16 param2);
static void ov105_02245884(BattleFactoryApp *param0, u16 param1, u16 param2);
static void ov105_022457C0(BattleFactoryApp *param0);
static BattleFactoryAppPokeballSprite *ov105_02245934(BattleFactoryApp *param0, int param1);
static BattleFactoryAppPanelSprite *ov105_022459B0(BattleFactoryApp *param0, u32 param1);
static BattleFactoryAppPanelSprite *ov105_02245A04(BattleFactoryApp *param0, u32 param1);
static void ov105_02245A30(BattleFactoryApp *param0);
static void ov105_02245A64(BattleFactoryApp *param0);
static void ov105_02245A98(Window *param0);

static const u16 Unk_ov105_02246364[][2] = {
    { 0x18, 0x70 },
    { 0x40, 0x70 },
    { 0x68, 0x70 },
    { 0x90, 0x70 },
    { 0xB8, 0x70 },
    { 0xE0, 0x70 }
};

static const u16 Unk_ov105_02246314[][2] = {
    { 0x40, 0x70 },
    { 0x78, 0x70 },
    { 0xB0, 0x70 }
};

static const u16 Unk_ov105_022462EC[][2] = {
    { 0x60, 0x70 },
    { 0x98, 0x70 }
};

static const u16 Unk_ov105_02246320[][2] = {
    { 0x28, 0x70 },
    { 0x60, 0x70 },
    { 0x98, 0x70 },
    { 0xD0, 0x70 }
};

static const CoordinatesS16 Unk_ov105_02246394[] = {
    { 0x18, 0x70 },
    { 0x40, 0x70 },
    { 0x68, 0x70 },
    { 0x90, 0x70 },
    { 0xB8, 0x70 },
    { 0xE0, 0x70 }
};

static const CoordinatesS16 Unk_ov105_02246340[] = {
    { 0x40, 0x70 },
    { 0x78, 0x70 },
    { 0xB0, 0x70 },
    { 0xD4, 0x90 }
};

static const u8 Unk_ov105_022462D0[(NELEMS(Unk_ov105_02246340))] = {
    0x8,
    0x8,
    0x8,
    0x9
};

static const CoordinatesS16 Unk_ov105_022462FC[] = {
    { 0x60, 0x70 },
    { 0x98, 0x70 },
    { 0xD4, 0x90 }
};

static const u8 Unk_ov105_022462CC[(NELEMS(Unk_ov105_022462FC))] = {
    0x8,
    0x8,
    0x9
};

static const CoordinatesS16 Unk_ov105_02246350[] = {
    { 0x40, 0x70 },
    { 0x78, 0x70 },
    { 0xB0, 0x70 },
    { 0xD4, 0x90 },
    { 0xD4, 0xA0 }
};

static const u8 Unk_ov105_022462D4[(NELEMS(Unk_ov105_02246350))] = {
    0x8,
    0x8,
    0x8,
    0x9,
    0x9
};

static const CoordinatesS16 Unk_ov105_0224637C[] = {
    { 0x28, 0x70 },
    { 0x60, 0x70 },
    { 0x98, 0x70 },
    { 0xD0, 0x70 },
    { 0xD4, 0x90 },
    { 0xD4, 0xA0 }
};

static const u8 Unk_ov105_022462E4[(NELEMS(Unk_ov105_0224637C))] = {
    0x8,
    0x8,
    0x8,
    0x8,
    0x9,
    0x9
};

static const CoordinatesS16 Unk_ov105_02246308[] = {
    { 0xD4, 0x90 },
    { 0xD4, 0xA0 },
    { 0xD4, 0xB0 }
};

static const CoordinatesS16 Unk_ov105_022462F4[] = {
    { 0xD4, 0x90 },
    { 0xD4, 0xA0 }
};

static const CoordinatesS16 bf_v_trade_final_csr_pos[] = {
    { 212, 144 },
    { 212, 160 },
};

static const u8 Unk_ov105_022462DC[] = {
    0x0,
    0x1,
    0x2,
    0x3,
    0x7,
    0x8
};

int BattleFactoryApp_Init(ApplicationManager *appMan, int *state)
{
    Overlay_LoadByID(FS_OVERLAY_ID(overlay104), OVERLAY_LOAD_ASYNC);
    InitGraphicsPlane();
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_BATTLE_FACTORY_APP, HEAP_SIZE_BATTLE_FACTORY_APP);

    BattleFactoryApp *app = ApplicationManager_NewData(appMan, sizeof(BattleFactoryApp), HEAP_ID_BATTLE_FACTORY_APP);
    memset(app, 0, sizeof(BattleFactoryApp));

    app->g3dPipeline = G3DPipeline_Init(HEAP_ID_BATTLE_FACTORY_APP, TEXTURE_VRAM_SIZE_256K, PALETTE_VRAM_SIZE_32K, BattleFactoryApp_Setup3D);
    app->bgConfig = BgConfig_New(HEAP_ID_BATTLE_FACTORY_APP);
    app->appMan = appMan;

    UnkStruct_ov104_02234130 *v2 = ApplicationManager_Args(appMan);

    app->saveData = v2->saveData;
    app->challengeType = v2->unk_04;
    app->unk_0A = v2->unk_05;
    app->unk_0B = v2->unk_06;
    app->unk_31C = v2->unk_08;
    app->unk_320 = v2->unk_0C;
    app->unk_330 = &v2->unk_10[0];
    app->options = SaveData_GetOptions(app->saveData);
    app->unk_14 = (4 * 2);

    if (ov105_022454F8(app, 0) == 1) {
        app->unk_12 = (NELEMS(Unk_ov105_02246394));
    } else {
        if (BattleFactory_IsMultiplayerChallenge(app->challengeType) == TRUE) {
            app->unk_12 = (NELEMS(Unk_ov105_022462EC));
            app->unk_1A = (NELEMS(Unk_ov105_022462FC));
            app->unk_1B = (NELEMS(Unk_ov105_0224637C));
        } else {
            app->unk_12 = (NELEMS(Unk_ov105_02246314));
            app->unk_1A = (NELEMS(Unk_ov105_02246340));
            app->unk_1B = (NELEMS(Unk_ov105_02246350));
        }
    }

    LoadAssets(app);

    if (BattleFactory_IsMultiplayerChallenge(app->challengeType) == TRUE) {
        sub_0209BA80(app);
    }

    *state = 0;
    return TRUE;
}

int BattleFactoryApp_Main(ApplicationManager *appMan, int *state)
{
    BattleFactoryApp *app = ApplicationManager_Data(appMan);

    if (app->unk_3B4 == 1) {
        switch (*state) {
        case 6:
        case 7:
        case 8:
        case 9:
            if (app->unk_13_6 == 0) {
                ChangeState(app, state, 11);
            }
            break;
        }
    }

    switch (*state) {
    case 0:
        if (ov105_02241FF4(app) == 1) {
            ChangeState(app, state, 1);
        }
        break;
    case 2:
        if (ov105_02242698(app) == 1) {
            ChangeState(app, state, 1);
        } else {
            return 0;
        }
    case 1:
        if (ov105_022421F0(app) == 1) {
            if (ov105_022454F8(app, 0) == 1) {
                ChangeState(app, state, 3);
            } else {
                ChangeState(app, state, 6);
            }
        }
        break;
    case 3:
        ov105_022457C0(app);

        if (ov105_022426E0(app) == 1) {
            if (app->unk_13_1 == 1) {
                ChangeState(app, state, 2);
            } else {
                if (app->unk_11 == ov105_02245508(app->challengeType)) {
                    ChangeState(app, state, 4);
                } else {
                    if (ov105_02245518(app) == 1) {
                        ChangeState(app, state, 13);
                    } else {
                        ChangeState(app, state, 3);
                    }
                }
            }
        }
        break;
    case 4:
        ov105_022457C0(app);

        if (ov105_02242D04(app) == 1) {
            if (app->unk_11 == ov105_02245508(app->challengeType)) {
                ChangeState(app, state, 13);
            } else {
                ChangeState(app, state, 5);
            }
        }
        break;
    case 5:
        if (ov105_02243144(app) == 1) {
            ChangeState(app, state, 3);
        }
        break;
    case 6:
        if (ov105_022434BC(app) == 1) {
            if (app->unk_13_1 == 1) {
                ChangeState(app, state, 2);
            } else {
                if (ov105_02245518(app) == 1) {
                    ov105_02245528(app, 0);
                    ChangeState(app, state, 7);
                } else {
                    ChangeState(app, state, 10);
                }
            }
        }
        break;
    case 7:
        if (ov105_02243818(app) == 1) {
            if (ov105_02245518(app) == 1) {
                ov105_02245528(app, 0);
                ChangeState(app, state, 6);
            } else {
                if (BattleFactory_IsMultiplayerChallenge(app->challengeType) == TRUE) {
                    app->unk_13_3 = 0;
                    ChangeState(app, state, 11);
                } else {
                    ChangeState(app, state, 13);
                }
            }
        }
        break;
    case 8:
        if (ov105_02243A3C(app) == 1) {
            if (ov105_02245518(app) == 1) {
                ov105_02245528(app, 0);
                ChangeState(app, state, 9);
            } else {
                if (app->unk_11 == 0) {
                    ChangeState(app, state, 10);
                } else {
                    if (BattleFactory_IsMultiplayerChallenge(app->challengeType) == TRUE) {
                        ChangeState(app, state, 11);
                    } else {
                        ChangeState(app, state, 13);
                    }
                }
            }
        }
        break;
    case 9:
        if (ov105_02243E84(app) == 1) {
            if (ov105_02245518(app) == 1) {
                ov105_02245528(app, 0);
                ChangeState(app, state, 8);
            } else {
                if (BattleFactory_IsMultiplayerChallenge(app->challengeType) == TRUE) {
                    app->unk_13_3 = 0;
                    ChangeState(app, state, 11);
                } else {
                    ChangeState(app, state, 13);
                }
            }
        }
        break;
    case 10:
        if (ov105_0224400C(app) == 1) {
            if (app->unk_11 == 0) {
                ov105_022424CC(app);
                ChangeState(app, state, 6);
            } else {
                ChangeState(app, state, 8);
            }
        }
        break;
    case 11:
        if (ov105_0224435C(app) == 1) {
            if (app->unk_3B4 == 1) {
                ChangeState(app, state, 14);
            } else {
                ChangeState(app, state, 12);
            }
        }
        break;
    case 12:
        if (ov105_0224439C(app) == 1) {
            ChangeState(app, state, 13);
        }
        break;
    case 13:
        if (ov105_022443DC(app) == 1) {
            return 1;
        }
        break;
    case 14:
        if (ov105_02244424(app) == 1) {
            ChangeState(app, state, 12);
        }
        break;
    }

    SpriteList_Update(app->spriteMan.spriteList);
    BattleFactoryApp_UpdateMonGraphics(app->monSpriteMan);

    return 0;
}

int BattleFactoryApp_Exit(ApplicationManager *appMan, int *state)
{
    int v0;
    BattleFactoryApp *app = ApplicationManager_Data(appMan);

    if (ov105_022454F8(app, 0) == 1) {
        for (v0 = 0; v0 < ov105_02245508(app->challengeType); v0++) {
            app->unk_330[v0] = app->unk_324[v0];
        }
    } else {
        for (v0 = 0; v0 < 2; v0++) {
            app->unk_330[v0] = app->unk_324[v0];
        }

        if (app->unk_13_3 == 0) {
            app->unk_330[0] = 0xff;
            app->unk_330[1] = 0xff;
        }
    }

    FreeAssets(app);

    ApplicationManager_FreeData(appMan);
    SetVBlankCallback(NULL, NULL);
    Heap_Destroy(HEAP_ID_BATTLE_FACTORY_APP);
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay104));

    return TRUE;
}

static BOOL ov105_02241FF4(BattleFactoryApp *param0)
{
    int v0;
    const VecFx32 *v1;

    switch (param0->subState) {
    case 0:
        if (BattleFactory_IsMultiplayerChallenge(param0->challengeType) == TRUE) {
            CommTool_ClearReceivedTempDataAllPlayers();
            CommTiming_StartSync(237);
        }

        param0->subState++;
        break;
    case 1:
        if (BattleFactory_IsMultiplayerChallenge(param0->challengeType) == TRUE) {
            if (CommTiming_IsSyncState(237) == 1) {
                CommTool_ClearReceivedTempDataAllPlayers();
                param0->subState++;
            }
        } else {
            param0->subState++;
        }
        break;
    case 2:
        for (v0 = 0; v0 < param0->unk_12; v0++) {
            v1 = BattleFactoryAppPokeballSprite_GetPosition(param0->unk_2F4[v0]);
            ov105_02245F5C(param0->unk_2F4[v0]);
        }

        Bg_SetOffset(param0->bgConfig, BG_LAYER_MAIN_2, 0, 33 * 8);
        PokemonSprite_SetAttribute(param0->unk_12C[0], MON_SPRITE_HIDE, 1);
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1 * 3, HEAP_ID_BATTLE_FACTORY_APP);
        param0->subState++;
        break;
    case 3:
        if (IsScreenFadeDone() == FALSE) {
            break;
        }

        Sound_PlayEffect(SEQ_SE_DP_ELEBETA2);
        param0->unk_19 = 0;
        param0->subState++;
        break;
    case 4:
        if (ov105_02244780(param0) == 1) {
            Sound_StopEffect(1554, 0);
            Sound_PlayEffect(SEQ_SE_DP_KASYA);

            for (v0 = 0; v0 < param0->unk_12; v0++) {
                BattleFactoryAppPokeballSprite_SetAnim(param0->unk_2F4[v0], 10);
            }

            ov105_02244924(param0, 0);

            param0->unk_14 = (4 * 2);
            param0->unk_19 = 0;
            param0->subState++;
        }
        break;
    case 5:
        if (BattleFactoryAppPanelSprite_IsAnimated(param0->unk_314) == 1) {
            break;
        }

        ov105_02245A30(param0);
        param0->unk_19 = 0;
        param0->subState++;
        break;
    case 6:
        if (param0->unk_19 == 0) {
            ReloadMonSelectionBackground(param0, 3);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
            ov105_022448F4(param0, 3, ov105_02245538(param0, 1, 0), 21, 11);
            PokemonSprite_SetAttribute(param0->unk_12C[0], MON_SPRITE_HIDE, 0);
            PokemonSpriteManager_StartFadeAll(param0->monSpriteMan, 16, 0, 1, 0xffff);
        }

        if (PokemonSprite_IsFadeActive(param0->unk_12C[0])) {
            (void)0;
        }

        param0->unk_19++;

        if (param0->unk_19 < 2) {
            break;
        }

        ov105_022448F4(param0, 3, ov105_02245538(param0, 2, 0), 21, 11);
        param0->unk_19 = 0;
        ov105_02245A64(param0);

        return 1;
    }

    return 0;
}

static BOOL ov105_022421F0(BattleFactoryApp *app)
{
    switch (app->subState) {
    case 0:
        if (ov105_022454F8(app, 0) == 1) {
            ov105_0224227C(app);
        } else {
            ov105_022424CC(app);
        }

        if (BattleFactory_IsMultiplayerChallenge(app->challengeType) == TRUE) {
            PrintPartnersName(app, &app->windows[1], 0, 0, 0);
        }

        if (app->unk_13_4 == 1) {
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1 * 3, HEAP_ID_BATTLE_FACTORY_APP);
        }

        app->unk_13_4 = 1;
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

static void ov105_0224227C(BattleFactoryApp *param0)
{
    int v0;
    u8 v1 = ov104_0223AA50(param0->challengeType);

    ov105_02245528(param0, 0);
    param0->unk_30C = BattleFactoryAppCursor_New(&param0->spriteMan, param0->unk_12, param0->unk_12, 0, param0->unk_334, Unk_ov105_02246394, NULL);
    PrintPlayersName(param0, &param0->windows[0], 0, 0, 0);

    for (v0 = 0; v0 < param0->unk_11; v0++) {
        BattleFactoryAppPokeballSprite_SelectMon(param0->unk_2F4[param0->unk_324[v0]]);
        BattleFactoryAppPokeballSprite_UpdatePalette(param0->unk_2F4[param0->unk_324[v0]], 0);
        BattleFactoryAppPokeballSprite_SetAnim(param0->unk_2F4[param0->unk_324[v0]], 7);
        PrintMonNameAndGender(param0, &param0->windows[2 + v0], param0->unk_324[v0], 0, 0, 15, 2, 0, 0, param0->unk_31C);
    }

    PrintMonNameAndGender(param0, &param0->windows[2 + param0->unk_11], BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C), 0, 0, 15, 2, 0, 0, param0->unk_31C);
    BattleFactoryApp_DrawMessageBox(&param0->windows[5], Options_Frame(param0->options));
    SetStringTemplateNumber(param0, 0, param0->unk_11 + 1);

    param0->unk_10 = PrintMessageAndCopyToVRAM(param0, BattleFactoryApp_Text_ChoosePokemon);

    if (param0->unk_13_1 == 1) {
        ov105_022461A4(param0->unk_30C, 1);
        OpenMonOptionsMenu(param0);

        param0->unk_310 = BattleFactoryAppCursor_New(&param0->spriteMan, NELEMS(Unk_ov105_02246308), NELEMS(Unk_ov105_02246308), 1, 0, Unk_ov105_02246308, NULL);

        if (param0->unk_18 != 0) {
            for (v0 = 0; v0 < v1; v0++) {
                Window_FillTilemap(&param0->windows[8 + v0], 0);

                if (v0 < param0->unk_18) {
                    PrintPartnersMonNameAndGender(param0, &param0->windows[8 + v0], 0, 0, 15, 2, 0, 0, param0->unk_3B6[v0], param0->unk_3BA[v0]);
                }

                Window_ScheduleCopyToVRAM(&param0->windows[8 + v0]);
            }
        }
    }

    return;
}

static void ov105_0224246C(BattleFactoryApp *app)
{
    for (int i = 0; i < app->unk_12; i++) {
        app->unk_2F4[i] = ov105_02245934(app, i);
        BattleFactoryAppPokeballSprite_SetDrawFlag(app->unk_2F4[i], TRUE);
    }
}

static void ov105_022424A0(BattleFactoryApp *app)
{
    ov105_022455C4(app, 0, Party_GetPokemonBySlotIndex(app->unk_31C, app->unk_334), 120, 43, 0);
}

static void ov105_022424CC(BattleFactoryApp *param0)
{
    int v0;

    ov105_02245528(param0, 0);
    BattleFactoryApp_DrawMessageBox(&param0->windows[5], Options_Frame(param0->options));

    if (!BattleFactory_IsMultiplayerChallenge(param0->challengeType)) {
        param0->unk_30C = BattleFactoryAppCursor_New(&param0->spriteMan, param0->unk_1A, NELEMS(Unk_ov105_02246340) - 1, 2, param0->unk_334, Unk_ov105_02246340, Unk_ov105_022462D0);
    } else {
        param0->unk_30C = BattleFactoryAppCursor_New(&param0->spriteMan, param0->unk_1A, NELEMS(Unk_ov105_022462FC) - 1, 2, param0->unk_334, Unk_ov105_022462FC, Unk_ov105_022462CC);
    }

    PrintPlayersName(param0, &param0->windows[0], 0, 0, 0);
    PrintMonNameAndGender(param0, &param0->windows[2], BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C), 0, 0, 15, 2, 0, 0, param0->unk_31C);
    BattleFactoryApp_DrawWindow(param0->bgConfig, &param0->windows[7]);

    param0->unk_10 = PrintMessageWithBg(param0, &param0->windows[7], BattleFactoryApp_Text_Cancel2, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_SYSTEM);
    Window_ScheduleCopyToVRAM(&param0->windows[7]);
    param0->unk_10 = PrintMessageAndCopyToVRAM(param0, BattleFactoryApp_Text_ChooseExchange);

    if (param0->unk_13_1 == 1) {
        OpenMonOptionsMenu(param0);
        param0->unk_310 = BattleFactoryAppCursor_New(&param0->spriteMan, NELEMS(Unk_ov105_02246308), NELEMS(Unk_ov105_02246308), 1, 0, Unk_ov105_02246308, NULL);
    }

    return;
}

static void ov105_0224260C(BattleFactoryApp *app)
{
    for (int i = 0; i < app->unk_12; i++) {
        app->unk_2F4[i] = ov105_02245934(app, i);
        BattleFactoryAppPokeballSprite_SetDrawFlag(app->unk_2F4[i], TRUE);

        if (app->unk_13_2 == 0) {
            BattleFactoryAppPokeballSprite_SelectMon(app->unk_2F4[i]);
            BattleFactoryAppPokeballSprite_UpdatePalette(app->unk_2F4[i], 0);
            BattleFactoryAppPokeballSprite_SetAnim(app->unk_2F4[i], ANIM_ID_BALL_STATIC);
        }
    }
}

static void ov105_0224266C(BattleFactoryApp *app)
{
    ov105_022455C4(app, 0, Party_GetPokemonBySlotIndex(app->unk_31C, app->unk_334), 120, 43, 1);
}

static BOOL ov105_02242698(BattleFactoryApp *param0)
{
    switch (param0->subState) {
    case 0:

        if (ApplicationManager_Exec(param0->unk_04) == 1) {
            param0->unk_334 = param0->unk_140->monIndex;
            Heap_Free(param0->unk_140);
            Heap_Free(param0->unk_04);
            param0->unk_04 = NULL;
            ReInitApp(param0);
            param0->unk_13_6 = 0;
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov105_022426E0(BattleFactoryApp *param0)
{
    int v0;
    u32 v1;

    switch (param0->subState) {
    case 0:
        if (param0->unk_13_1 == 0) {
            param0->subState = 1;
        } else {
            param0->subState = 2;
        }

        param0->unk_13_1 = 0;
        break;
    case 1:
        ov105_02246080(param0->unk_30C);

        if (gSystem.pressedKeys & (PAD_KEY_LEFT | PAD_KEY_RIGHT)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov105_022453F8(param0, param0->unk_11, BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C), 0, param0->unk_31C);
        }

        if (gSystem.pressedKeys & PAD_BUTTON_A) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov105_022461A4(param0->unk_30C, 1);
            OpenMonOptionsMenu(param0);

            param0->unk_310 = BattleFactoryAppCursor_New(&param0->spriteMan, NELEMS(Unk_ov105_02246308), NELEMS(Unk_ov105_02246308), 1, 0, Unk_ov105_02246308, NULL);
            param0->subState++;
        } else if (gSystem.pressedKeys & PAD_BUTTON_B) {
            if (param0->unk_11 > 0) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                ov105_0224296C(param0);

                if (BattleFactory_IsMultiplayerChallenge(param0->challengeType) == TRUE) {
                    ov105_02245620(param0, 8, 0);
                }

                return 1;
            }
        }
        break;
    case 2:
        v1 = Menu_ProcessInput(param0->menu);
        ov105_02246080(param0->unk_310);

        switch (v1) {
        case 0xffffffff:
            break;
        case 0:
            Menu_Free(param0->menu, NULL);
            ov105_02245A98(param0->menuTemplate.window);
            BattleFactoryAppCursor_Free(param0->unk_310);
            param0->unk_310 = NULL;
            param0->unk_13_6 = 1;
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_BATTLE_FACTORY_APP);
            param0->subState++;
            break;
        case 1:
            Menu_Free(param0->menu, NULL);

            ov105_02245A98(param0->menuTemplate.window);
            ov105_02242A58(param0);

            if (BattleFactory_IsMultiplayerChallenge(param0->challengeType) == TRUE) {
                ov105_02245620(param0, 8, 0);
            }

            return 1;
        case 3:
            Menu_Free(param0->menu, NULL);

            ov105_02245A98(param0->menuTemplate.window);
            ov105_02242B54(param0);

            if (BattleFactory_IsMultiplayerChallenge(param0->challengeType) == TRUE) {
                ov105_02245620(param0, 8, 0);
            }

            return 1;
        case 0xfffffffe:
        case 2:
        default:
            Menu_Free(param0->menu, NULL);
            ov105_02245A98(param0->menuTemplate.window);
            ov105_022461A4(param0->unk_30C, 0);
            BattleFactoryAppCursor_Free(param0->unk_310);
            param0->unk_310 = NULL;
            return 1;
        }
        break;
    case 3:
        if (IsScreenFadeDone() == TRUE) {
            ov105_02245464(param0);
            FreeAssets(param0);
            param0->unk_04 = ApplicationManager_New(&gPokemonSummaryScreenApp, param0->unk_140, HEAP_ID_BATTLE_FACTORY_APP);
            param0->unk_13_1 = 1;
            return 1;
        }
        break;
    case 4:
        if (param0->unk_04 == NULL) {
            return 1;
        }
        break;
    case 5:
        if (IsScreenFadeDone() == TRUE) {
            param0->subState = 2;
        }
        break;
    }

    return 0;
}

static void ov105_0224296C(BattleFactoryApp *param0)
{
    Window_FillTilemap(&param0->windows[2 + param0->unk_11], 0);
    Window_ScheduleCopyToVRAM(&param0->windows[2 + param0->unk_11]);

    param0->unk_11--;
    Window_FillTilemap(&param0->windows[2 + param0->unk_11], 0);

    PrintMonNameAndGender(param0, &param0->windows[2 + param0->unk_11], BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C), 0, 0, 15, 2, 0, 0, param0->unk_31C);
    SetStringTemplateNumber(param0, 0, param0->unk_11 + 1);

    param0->unk_10 = PrintMessageAndCopyToVRAM(param0, BattleFactoryApp_Text_ChoosePokemon);

    BattleFactoryAppPokeballSprite_UnselectMon(param0->unk_2F4[param0->unk_324[param0->unk_11]]);
    BattleFactoryAppPokeballSprite_UpdatePalette(param0->unk_2F4[param0->unk_324[param0->unk_11]], 1);
    BattleFactoryAppPokeballSprite_SetAnim(param0->unk_2F4[param0->unk_324[param0->unk_11]], 6);

    param0->unk_324[param0->unk_11] = 0;
    return;
}

static void ov105_02242A58(BattleFactoryApp *param0)
{
    BattleFactoryAppPokeballSprite_SelectMon(param0->unk_2F4[BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C)]);
    BattleFactoryAppPokeballSprite_UpdatePalette(param0->unk_2F4[BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C)], 0);
    BattleFactoryAppPokeballSprite_SetAnim(param0->unk_2F4[BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C)], 7);

    param0->unk_324[param0->unk_11] = BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C);
    param0->unk_11++;

    if (param0->unk_11 == ov105_02245508(param0->challengeType)) {
        BattleFactoryAppCursor_Free(param0->unk_310);
        param0->unk_310 = NULL;
    } else {
        ov105_022461A4(param0->unk_30C, 0);
        BattleFactoryAppCursor_Free(param0->unk_310);

        param0->unk_310 = NULL;

        PrintMonNameAndGender(param0, &param0->windows[2 + param0->unk_11], BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C), 0, 0, 15, 2, 0, 0, param0->unk_31C);
        SetStringTemplateNumber(param0, 0, param0->unk_11 + 1);

        param0->unk_10 = PrintMessageAndCopyToVRAM(param0, BattleFactoryApp_Text_ChoosePokemon);
    }

    return;
}

static void ov105_02242B54(BattleFactoryApp *param0)
{
    u8 v0;
    int v1;

    BattleFactoryAppPokeballSprite_UnselectMon(param0->unk_2F4[BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C)]);
    BattleFactoryAppPokeballSprite_UpdatePalette(param0->unk_2F4[BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C)], 1);
    BattleFactoryAppPokeballSprite_SetAnim(param0->unk_2F4[BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C)], 6);

    if (param0->unk_11 >= 2) {
        if (param0->unk_324[0] == BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C)) {
            param0->unk_324[0] = param0->unk_324[1];
            PokemonSprite_Delete(param0->unk_12C[0]);
            ov105_022455C4(param0, 0, Party_GetPokemonBySlotIndex(param0->unk_31C, BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C)), 120, 43, 0);
        }
    }

    param0->unk_11--;
    param0->unk_324[param0->unk_11] = 0;

    ov105_022461A4(param0->unk_30C, 0);
    BattleFactoryAppCursor_Free(param0->unk_310);

    param0->unk_310 = NULL;
    v0 = ov105_02245508(param0->challengeType);

    for (v1 = 0; v1 < v0; v1++) {
        Window_FillTilemap(&param0->windows[2 + v1], 0);
    }

    for (v1 = 0; v1 < param0->unk_11; v1++) {
        PrintMonNameAndGender(param0, &param0->windows[2 + v1], param0->unk_324[v1], 0, 0, 15, 2, 0, 0, param0->unk_31C);
    }

    PrintMonNameAndGender(param0, &param0->windows[2 + param0->unk_11], BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C), 0, 0, 15, 2, 0, 0, param0->unk_31C);

    for (v1 = 0; v1 < v0; v1++) {
        Window_ScheduleCopyToVRAM(&param0->windows[2 + v1]);
    }

    SetStringTemplateNumber(param0, 0, param0->unk_11 + 1);
    param0->unk_10 = PrintMessageAndCopyToVRAM(param0, BattleFactoryApp_Text_ChoosePokemon);

    return;
}

static BOOL ov105_02242D04(BattleFactoryApp *param0)
{
    u8 v0;
    u32 v1;
    int v2;
    int v3[3];

    v0 = ov104_0223AA50(param0->challengeType);

    switch (param0->subState) {
    case 0:
        BattleFactoryAppCursor_SetDrawFlag(param0->unk_30C, 0);
        param0->unk_13_5 = 1;
        Window_ClearAndCopyToVRAM(&param0->windows[1]);
        Window_ClearAndCopyToVRAM(&param0->windows[8]);
        Window_ClearAndCopyToVRAM(&param0->windows[9]);

        for (v2 = 0; v2 < param0->unk_11; v2++) {
            Window_FillTilemap(&param0->windows[2 + v2], 0);
            Window_ScheduleCopyToVRAM(&param0->windows[2 + v2]);
        }

        Window_FillTilemap(&param0->windows[0], 0);
        Window_ScheduleCopyToVRAM(&param0->windows[0]);

        ov105_022448F4(param0, 3, ov105_02245538(param0, 1, 0), 21, 11);
        PokemonSpriteManager_StartFadeAll(param0->monSpriteMan, 0, 16, 0, 0xffff);

        param0->unk_19 = 0;
        param0->subState++;
        break;
    case 1:
        param0->unk_19++;

        if (param0->unk_19 < 2) {
            break;
        }

        PokemonSprite_SetAttribute(param0->unk_12C[0], MON_SPRITE_HIDE, 1);

        ov105_02244924(param0, 1);
        ov105_022448F4(param0, 3, ov105_02245538(param0, 0, 0), 21, 11);
        ReloadNoScreensBackground(param0, 3);
        param0->unk_19 = 0;
        param0->subState++;
        break;
    case 2:
        if (PokemonSprite_IsFadeActive(param0->unk_12C[0])) {
            (void)0;
        }

        if (BattleFactoryAppPanelSprite_IsAnimated(param0->unk_314) == 1) {
            break;
        }

        ov105_02245A30(param0);
        PokemonSprite_Delete(param0->unk_12C[0]);

        v3[0] = 44;
        v3[1] = 128;
        v3[2] = 212;

        for (v2 = 0; v2 < v0; v2++) {
            ov105_022455C4(param0, v2, Party_GetPokemonBySlotIndex(param0->unk_31C, param0->unk_324[v2]), v3[v2], 43, 0);
            PokemonSprite_SetAttribute(param0->unk_12C[v2], MON_SPRITE_HIDE, 1);
        }

        ov105_02244924(param0, 4);
        param0->subState++;
        break;
    case 3:
        if (BattleFactoryAppPanelSprite_IsAnimated(param0->unk_314) == 1) {
            break;
        }

        ov105_02245A30(param0);

        param0->unk_19 = 0;
        param0->subState++;
        break;
    case 4:
        if (param0->unk_19 == 0) {
            LoadSelectionConfirmBackground(param0, 3);

            for (v2 = 0; v2 < v0; v2++) {
                PokemonSprite_SetAttribute(param0->unk_12C[v2], MON_SPRITE_HIDE, 0);
            }

            if (!BattleFactory_IsMultiplayerChallenge(param0->challengeType)) {
                ov105_022448F4(param0, 3, ov105_02245538(param0, 1, 1), 32, 11);
            } else {
                ov105_022448F4(param0, 3, ov105_02245538(param0, 1, 1), 21, 11);
            }

            PokemonSpriteManager_StartFadeAll(param0->monSpriteMan, 16, 0, 1, 0xffff);
        }

        if (PokemonSprite_IsFadeActive(param0->unk_12C[0])) {
            (void)0;
        }

        param0->unk_19++;

        if (param0->unk_19 < 21) {
            break;
        }

        if (!BattleFactory_IsMultiplayerChallenge(param0->challengeType)) {
            ov105_022448F4(param0, 3, ov105_02245538(param0, 2, 1), 32, 11);
        } else {
            ov105_022448F4(param0, 3, ov105_02245538(param0, 2, 1), 21, 11);
        }

        param0->unk_13_5 = 0;

        if (BattleFactory_IsMultiplayerChallenge(param0->challengeType) == TRUE) {
            param0->unk_3BF = 1;
            ov105_022457C0(param0);
        }

        SetStringTemplateNumber(param0, 0, v0);
        param0->unk_10 = PrintMessageAndCopyToVRAM(param0, BattleFactoryApp_Text_OkWithSelection);
        OpenYesNoMenu(param0);

        param0->unk_310 = BattleFactoryAppCursor_New(&param0->spriteMan, NELEMS(Unk_ov105_022462F4), NELEMS(Unk_ov105_022462F4), 1, 0, Unk_ov105_022462F4, NULL);
        param0->unk_19 = 0;
        param0->subState++;
        break;
    case 5:
        v1 = Menu_ProcessInput(param0->menu);
        ov105_02246080(param0->unk_310);

        switch (v1) {
        case 0xffffffff:
            break;
        case 0:
            Menu_Free(param0->menu, NULL);
            ov105_02245A98(param0->menuTemplate.window);
            BattleFactoryAppCursor_Free(param0->unk_310);
            param0->unk_310 = NULL;
            param0->subState++;
            break;
        case 0xfffffffe:
        case 1:
        default:
            BattleFactoryAppCursor_SetDrawFlag(param0->unk_30C, 1);
            Menu_Free(param0->menu, NULL);

            ov105_02245A98(param0->menuTemplate.window);
            BattleFactoryAppCursor_Free(param0->unk_310);

            param0->unk_310 = NULL;
            param0->unk_11--;
            param0->unk_324[param0->unk_11] = 0;

            if (BattleFactory_IsMultiplayerChallenge(param0->challengeType) == TRUE) {
                ov105_02245620(param0, 8, 0);
            }

            return 1;
        }
        break;
    case 6:
        if (!BattleFactory_IsMultiplayerChallenge(param0->challengeType)) {
            return 1;
        }

        if (ov105_02245620(param0, 8, 0) == 1) {
            param0->unk_10 = PrintMessageAndCopyToVRAM(param0, BattleFactoryApp_Text_PleaseWait);

            CommTool_ClearReceivedTempDataAllPlayers();
            CommTiming_StartSync(164);
            param0->subState++;
        }
        break;
    case 7:
        if (CommTiming_IsSyncState(164) == 1) {
            CommTool_ClearReceivedTempDataAllPlayers();
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov105_02243144(BattleFactoryApp *param0)
{
    u8 v0;
    int v1;

    v0 = ov104_0223AA50(param0->challengeType);

    switch (param0->subState) {
    case 0:
        param0->unk_13_5 = 1;

        Window_ClearAndCopyToVRAM(&param0->windows[1]);
        Window_ClearAndCopyToVRAM(&param0->windows[8]);
        Window_ClearAndCopyToVRAM(&param0->windows[9]);

        if (!BattleFactory_IsMultiplayerChallenge(param0->challengeType)) {
            ov105_022448F4(param0, 3, ov105_02245538(param0, 1, 1), 32, 11);
        } else {
            ov105_022448F4(param0, 3, ov105_02245538(param0, 1, 1), 21, 11);
        }

        PokemonSpriteManager_StartFadeAll(param0->monSpriteMan, 0, 16, 0, 0xffff);

        param0->unk_19 = 0;
        param0->subState++;
        break;
    case 1:
        param0->unk_19++;

        if (param0->unk_19 < 2) {
            break;
        }

        for (v1 = 0; v1 < v0; v1++) {
            PokemonSprite_Delete(param0->unk_12C[v1]);
        }

        ov105_02244924(param0, 5);

        if (!BattleFactory_IsMultiplayerChallenge(param0->challengeType)) {
            ov105_022448F4(param0, 3, ov105_02245538(param0, 0, 0), 32, 11);
        } else {
            ov105_022448F4(param0, 3, ov105_02245538(param0, 0, 0), 21, 11);
        }

        ReloadNoScreensBackground(param0, 3);

        param0->unk_19 = 0;
        param0->subState++;

        break;
    case 2:
        if (PokemonSprite_IsFadeActive(param0->unk_12C[0])) {
            (void)0;
        }

        if (BattleFactoryAppPanelSprite_IsAnimated(param0->unk_314) == 1) {
            break;
        }

        ov105_02245A30(param0);
        ov105_022455C4(param0, 0, Party_GetPokemonBySlotIndex(param0->unk_31C, BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C)), 120, 43, 0);

        PokemonSprite_SetAttribute(param0->unk_12C[0], MON_SPRITE_HIDE, 1);
        ov105_02244924(param0, 0);

        param0->subState++;
        break;
    case 3:
        if (BattleFactoryAppPanelSprite_IsAnimated(param0->unk_314) == 1) {
            break;
        }

        ov105_02245A30(param0);
        param0->unk_19 = 0;
        param0->subState++;
        break;
    case 4:
        if (param0->unk_19 == 0) {
            ReloadMonSelectionBackground(param0, 3);
            PokemonSprite_SetAttribute(param0->unk_12C[0], MON_SPRITE_HIDE, 0);
            ov105_022448F4(param0, 3, ov105_02245538(param0, 1, 0), 21, 11);
            PokemonSpriteManager_StartFadeAll(param0->monSpriteMan, 16, 0, 1, 0xffff);
        }

        if (PokemonSprite_IsFadeActive(param0->unk_12C[0])) {
            (void)0;
        }

        param0->unk_19++;

        if (param0->unk_19 < 21) {
            break;
        }

        ov105_022448F4(param0, 3, ov105_02245538(param0, 2, 0), 21, 11);
        param0->unk_13_5 = 0;

        if (BattleFactory_IsMultiplayerChallenge(param0->challengeType) == TRUE) {
            param0->unk_3BF = 1;
            ov105_022457C0(param0);
        }

        ov105_022433AC(param0);
        return 1;
    }

    return 0;
}

static void ov105_022433AC(BattleFactoryApp *param0)
{
    int v0;
    u8 v1 = ov104_0223AA50(param0->challengeType);

    for (v0 = 0; v0 < param0->unk_11; v0++) {
        PrintMonNameAndGender(param0, &param0->windows[2 + v0], param0->unk_324[v0], 0, 0, 15, 2, 0, 0, param0->unk_31C);
    }

    PrintMonNameAndGender(param0, &param0->windows[2 + param0->unk_11], BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C), 0, 0, 15, 2, 0, 0, param0->unk_31C);
    PrintPlayersName(param0, &param0->windows[0], 0, 0, 0);
    ov105_022461A4(param0->unk_30C, 0);
    BattleFactoryAppPokeballSprite_UnselectMon(param0->unk_2F4[BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C)]);
    BattleFactoryAppPokeballSprite_UpdatePalette(param0->unk_2F4[BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C)], 1);
    BattleFactoryAppPokeballSprite_SetAnim(param0->unk_2F4[BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C)], 6);
    SetStringTemplateNumber(param0, 0, param0->unk_11 + 1);

    param0->unk_10 = PrintMessageAndCopyToVRAM(param0, BattleFactoryApp_Text_ChoosePokemon);
    return;
}

static BOOL ov105_022434BC(BattleFactoryApp *param0)
{
    int v0;
    u32 v1;

    switch (param0->subState) {
    case 0:
        ov105_02245528(param0, 0);

        if (param0->unk_13_1 == 0) {
            param0->subState = 1;
        } else {
            param0->subState = 2;
        }

        param0->unk_13_1 = 0;
        break;
    case 1:
        ov105_02246080(param0->unk_30C);

        if (gSystem.pressedKeys & (PAD_KEY_LEFT | PAD_KEY_RIGHT | PAD_KEY_UP | PAD_KEY_DOWN)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov105_022453F8(param0, param0->unk_11, BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C), 1, param0->unk_31C);
        }

        if (gSystem.pressedKeys & PAD_BUTTON_A) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);

            if (BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C) == (param0->unk_1A - 1)) {
                ov105_02245528(param0, 1);
                return 1;
            } else {
                ov105_022461A4(param0->unk_30C, 1);
                OpenMonOptionsMenu(param0);

                param0->unk_310 = BattleFactoryAppCursor_New(&param0->spriteMan, NELEMS(Unk_ov105_02246308), NELEMS(Unk_ov105_02246308), 1, 0, Unk_ov105_02246308, NULL);
                param0->subState++;
            }
        } else if (gSystem.pressedKeys & PAD_BUTTON_B) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov105_02245528(param0, 1);
            return 1;
        }
        break;
    case 2:
        v1 = Menu_ProcessInput(param0->menu);
        ov105_02246080(param0->unk_310);

        switch (v1) {
        case 0xffffffff:
            break;
        case 0:
            Menu_Free(param0->menu, NULL);
            ov105_02245A98(param0->menuTemplate.window);
            BattleFactoryAppCursor_Free(param0->unk_310);
            param0->unk_310 = NULL;
            param0->unk_13_6 = 1;
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_BATTLE_FACTORY_APP);
            param0->subState++;
            break;
        case 4:
            Menu_Free(param0->menu, NULL);
            ov105_02245A98(param0->menuTemplate.window);
            ov105_02243738(param0);
            return 1;
        case 0xfffffffe:
        case 2:
        default:
            Menu_Free(param0->menu, NULL);
            ov105_02245A98(param0->menuTemplate.window);
            ov105_022461A4(param0->unk_30C, 0);
            BattleFactoryAppCursor_Free(param0->unk_310);
            param0->unk_310 = NULL;
            BattleFactoryApp_DrawWindow(param0->bgConfig, &param0->windows[7]);
            param0->unk_10 = PrintMessageWithBg(param0, &param0->windows[7], BattleFactoryApp_Text_Cancel2, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_SYSTEM);
            Window_ScheduleCopyToVRAM(&param0->windows[7]);
            param0->subState = 1;
            break;
        }
        break;
    case 3:
        if (IsScreenFadeDone() == TRUE) {
            ov105_02245464(param0);
            FreeAssets(param0);
            param0->unk_04 = ApplicationManager_New(&gPokemonSummaryScreenApp, param0->unk_140, HEAP_ID_BATTLE_FACTORY_APP);
            param0->unk_13_1 = 1;
            return 1;
        }
        break;
    case 4:
        if (param0->unk_04 == NULL) {
            return 1;
        }
        break;
    case 5:
        if (IsScreenFadeDone() == TRUE) {
            param0->subState = 2;
        }
        break;
    }

    return 0;
}

static void ov105_02243738(BattleFactoryApp *param0)
{
    BattleFactoryAppPokeballSprite_SelectMon(param0->unk_2F4[BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C)]);
    BattleFactoryAppPokeballSprite_UpdatePalette(param0->unk_2F4[BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C)], 0);
    BattleFactoryAppPokeballSprite_SetAnim(param0->unk_2F4[BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C)], 6);
    PrintMonNameAndGender(param0, &param0->windows[2 + param0->unk_11], BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C), 0, 0, 15, 2, 0, 0, param0->unk_31C);

    param0->unk_324[param0->unk_11] = BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C);
    param0->unk_11++;

    BattleFactoryAppCursor_Free(param0->unk_310);
    param0->unk_310 = NULL;

    BattleFactoryAppCursor_Free(param0->unk_30C);
    param0->unk_30C = NULL;
    param0->unk_13_2 = 1;

    Window_FillTilemap(&param0->windows[2], 0);
    Window_ScheduleCopyToVRAM(&param0->windows[2]);

    return;
}

static BOOL ov105_02243818(BattleFactoryApp *param0)
{
    int v0, v1;
    u32 v2;

    switch (param0->subState) {
    case 0:

        Window_FillTilemap(&param0->windows[2], 0);
        Window_ScheduleCopyToVRAM(&param0->windows[2 + param0->unk_11]);
        PokemonSprite_Delete(param0->unk_12C[0]);

        param0->unk_10 = PrintMessageAndCopyToVRAM(param0, BattleFactoryApp_Text_CancelTrade);

        BattleFactoryAppCursor_SetDrawFlag(param0->unk_30C, 0);
        ov105_022461A4(param0->unk_30C, 1);
        OpenYesNoMenu(param0);
        param0->unk_310 = BattleFactoryAppCursor_New(&param0->spriteMan, NELEMS(Unk_ov105_022462F4), NELEMS(Unk_ov105_022462F4), 1, 0, Unk_ov105_022462F4, NULL);
        param0->subState++;
        break;
    case 1:
        v2 = Menu_ProcessInput(param0->menu);
        ov105_02246080(param0->unk_310);

        switch (v2) {
        case 0xffffffff:
            break;
        case 0:
            Menu_Free(param0->menu, NULL);
            ov105_02245A98(param0->menuTemplate.window);
            BattleFactoryAppCursor_Free(param0->unk_310);
            param0->unk_310 = NULL;
            param0->unk_13_3 = 0;

            if (BattleFactory_IsMultiplayerChallenge(param0->challengeType) == TRUE) {
                param0->unk_10 = PrintMessageAndCopyToVRAM(param0, BattleFactoryApp_Text_PleaseWait);
            }

            param0->subState++;
            break;
        case 0xfffffffe:
        case 1:
        default:
            Menu_Free(param0->menu, NULL);
            ov105_02245A98(param0->menuTemplate.window);
            BattleFactoryAppCursor_Free(param0->unk_310);
            param0->unk_310 = NULL;
            ov105_0224396C(param0);
            param0->subState++;
            break;
        }
        break;
    case 2:
        return 1;
    }

    return 0;
}

static void ov105_0224396C(BattleFactoryApp *param0)
{
    BattleFactoryAppCursor_UpdatePosition(param0->unk_30C, 0);
    PrintMonNameAndGender(param0, &param0->windows[2], BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C), 0, 0, 15, 2, 0, 0, param0->unk_31C);
    ov105_022455C4(param0, 0, Party_GetPokemonBySlotIndex(param0->unk_31C, BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C)), 120, 43, 1);
    BattleFactoryAppCursor_SetDrawFlag(param0->unk_30C, 1);
    ov105_022461A4(param0->unk_30C, 0);
    ov105_02245528(param0, 1);
    BattleFactoryApp_DrawWindow(param0->bgConfig, &param0->windows[7]);

    param0->unk_10 = PrintMessageWithBg(param0, &param0->windows[7], BattleFactoryApp_Text_Cancel2, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_SYSTEM);
    Window_ScheduleCopyToVRAM(&param0->windows[7]);
    param0->unk_10 = PrintMessageAndCopyToVRAM(param0, BattleFactoryApp_Text_ChooseExchange);

    return;
}

static BOOL ov105_02243A3C(BattleFactoryApp *param0)
{
    int v0, v1;
    u32 v2;
    u8 v3;

    switch (param0->subState) {
    case 0:
        BattleFactoryApp_DrawWindow(param0->bgConfig, &param0->windows[7]);

        param0->unk_10 = PrintMessageWithBg(param0, &param0->windows[7], BattleFactoryApp_Text_Back, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_SYSTEM);
        param0->unk_10 = PrintMessage(param0, &param0->windows[7], BattleFactoryApp_Text_Cancel3, 1, 1 + 16, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_SYSTEM);

        Window_ScheduleCopyToVRAM(&param0->windows[7]);

        if (!BattleFactory_IsMultiplayerChallenge(param0->challengeType)) {
            param0->unk_30C = BattleFactoryAppCursor_New(&param0->spriteMan, param0->unk_1B, NELEMS(Unk_ov105_02246350) - 2, 2, 0, Unk_ov105_02246350, Unk_ov105_022462D4);
        } else {
            param0->unk_30C = BattleFactoryAppCursor_New(&param0->spriteMan, param0->unk_1B, NELEMS(Unk_ov105_0224637C) - 2, 2, 0, Unk_ov105_0224637C, Unk_ov105_022462E4);
        }

        v3 = BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C);

        PrintMonNameAndGender(param0, &param0->windows[2], v3, 0, 0, 15, 2, 0, 0, param0->unk_320);
        BattleFactoryApp_DrawMessageBox(&param0->windows[5], Options_Frame(param0->options));

        param0->unk_10 = PrintMessageAndCopyToVRAM(param0, BattleFactoryApp_Text_ChooseReceive);
        param0->subState++;

        break;
    case 1:
        ov105_02246080(param0->unk_30C);

        if (gSystem.pressedKeys & (PAD_KEY_UP | PAD_KEY_DOWN)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov105_022453F8(param0, 0, BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C), 0, param0->unk_320);
        }

        if (gSystem.pressedKeys & (PAD_KEY_LEFT | PAD_KEY_RIGHT)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov105_022453F8(param0, 0, BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C), 0, param0->unk_320);
        }

        if (gSystem.pressedKeys & PAD_BUTTON_A) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);

            if (BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C) == (param0->unk_1B - 1)) {
                ov105_02245528(param0, 1);
                return 1;
            } else if (BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C) == (param0->unk_1B - 2)) {
                ov105_02243D20(param0);
                return 1;
            } else {
                ov105_022461A4(param0->unk_30C, 1);
                OpenYesNoMenu(param0);

                param0->unk_310 = BattleFactoryAppCursor_New(&param0->spriteMan, NELEMS(Unk_ov105_022462F4), NELEMS(Unk_ov105_022462F4), 1, 0, Unk_ov105_022462F4, NULL);
                param0->unk_10 = PrintMessageAndCopyToVRAM(param0, BattleFactoryApp_Text_AcceptPokemon);
                param0->subState++;
            }
        } else if (gSystem.pressedKeys & PAD_BUTTON_B) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov105_02245528(param0, 1);
            return 1;
        }
        break;
    case 2:
        v2 = Menu_ProcessInput(param0->menu);
        ov105_02246080(param0->unk_310);

        switch (v2) {
        case 0xffffffff:
            break;

        case 0:
            Menu_Free(param0->menu, NULL);
            ov105_02245A98(param0->menuTemplate.window);
            ov105_02243D84(param0);

            if (BattleFactory_IsMultiplayerChallenge(param0->challengeType) == TRUE) {
                param0->unk_10 = PrintMessageAndCopyToVRAM(param0, BattleFactoryApp_Text_PleaseWait);
            }

            param0->subState++;
            break;
        case 0xfffffffe:
        case 1:
        default:
            Menu_Free(param0->menu, NULL);
            ov105_02245A98(param0->menuTemplate.window);
            ov105_02243DE4(param0);
            param0->subState = 1;
            break;
        }
        break;
    case 3:
        return 1;
    }

    return 0;
}

static void ov105_02243D20(BattleFactoryApp *param0)
{
    BattleFactoryAppCursor_Free(param0->unk_30C);

    param0->unk_30C = NULL;
    param0->unk_13_2 = 0;

    Window_FillTilemap(&param0->windows[2], 0);
    Window_ScheduleCopyToVRAM(&param0->windows[2]);
    PokemonSprite_Delete(param0->unk_12C[0]);

    Window_FillTilemap(&param0->windows[7], 15);
    Window_EraseMessageBox(&param0->windows[7], 1);
    Window_ClearAndScheduleCopyToVRAM(&param0->windows[7]);

    param0->unk_11--;
    param0->unk_324[0] = 0;

    return;
}

static void ov105_02243D84(BattleFactoryApp *param0)
{
    param0->unk_13_3 = 1;
    param0->unk_324[param0->unk_11] = BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C);
    param0->unk_11++;

    BattleFactoryAppCursor_Free(param0->unk_310);
    param0->unk_310 = NULL;
    BattleFactoryAppCursor_SetDrawFlag(param0->unk_30C, 0);

    Window_FillTilemap(&param0->windows[2], 0);
    Window_ScheduleCopyToVRAM(&param0->windows[2]);
    PokemonSprite_Delete(param0->unk_12C[0]);

    return;
}

static void ov105_02243DE4(BattleFactoryApp *param0)
{
    BattleFactoryAppCursor_Free(param0->unk_310);
    param0->unk_310 = NULL;
    ov105_022461A4(param0->unk_30C, 0);
    BattleFactoryApp_DrawWindow(param0->bgConfig, &param0->windows[7]);
    param0->unk_10 = PrintMessageWithBg(param0, &param0->windows[7], BattleFactoryApp_Text_Back, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_SYSTEM);
    param0->unk_10 = PrintMessage(param0, &param0->windows[7], BattleFactoryApp_Text_Cancel3, 1, 1 + 16, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_SYSTEM);
    BattleFactoryApp_DrawMessageBox(&param0->windows[5], Options_Frame(param0->options));
    param0->unk_10 = PrintMessageAndCopyToVRAM(param0, BattleFactoryApp_Text_ChooseReceive);
    Window_ScheduleCopyToVRAM(&param0->windows[7]);
}

static BOOL ov105_02243E84(BattleFactoryApp *param0)
{
    int v0, v1;
    u32 v2;

    switch (param0->subState) {
    case 0:
        Window_FillTilemap(&param0->windows[2], 0);
        Window_ScheduleCopyToVRAM(&param0->windows[2]);
        PokemonSprite_Delete(param0->unk_12C[0]);

        BattleFactoryApp_DrawMessageBox(&param0->windows[5], Options_Frame(param0->options));
        param0->unk_10 = PrintMessageAndCopyToVRAM(param0, BattleFactoryApp_Text_CancelTrade);
        BattleFactoryAppCursor_SetDrawFlag(param0->unk_30C, 0);

        OpenYesNoMenu(param0);
        param0->unk_310 = BattleFactoryAppCursor_New(&param0->spriteMan, NELEMS(Unk_ov105_022462F4), NELEMS(Unk_ov105_022462F4), 1, 0, Unk_ov105_022462F4, NULL);
        param0->subState++;
        break;

    case 1:
        v2 = Menu_ProcessInput(param0->menu);
        ov105_02246080(param0->unk_310);

        switch (v2) {
        case 0xffffffff:
            break;
        case 0:
            Menu_Free(param0->menu, NULL);

            ov105_02245A98(param0->menuTemplate.window);
            BattleFactoryAppCursor_Free(param0->unk_310);

            param0->unk_310 = NULL;
            param0->unk_13_3 = 0;

            if (BattleFactory_IsMultiplayerChallenge(param0->challengeType) == TRUE) {
                param0->unk_10 = PrintMessageAndCopyToVRAM(param0, BattleFactoryApp_Text_PleaseWait);
            }

            param0->subState++;
            break;
        case 0xfffffffe:
        case 1:
        default:
            Menu_Free(param0->menu, NULL);

            BattleFactoryAppCursor_Free(param0->unk_30C);
            param0->unk_30C = NULL;

            BattleFactoryAppCursor_Free(param0->unk_310);
            param0->unk_310 = NULL;

            ov105_02243FDC(param0);
            param0->subState++;
            break;
        }
        break;
    case 2:
        return 1;
    }

    return 0;
}

static void ov105_02243FDC(BattleFactoryApp *param0)
{
    ov105_022455C4(param0, 0, Party_GetPokemonBySlotIndex(param0->unk_320, 0), 120, 43, 0);
    ov105_02245528(param0, 1);

    return;
}

static BOOL ov105_0224400C(BattleFactoryApp *param0)
{
    u8 v0;
    int v1, v2, v3, v4;
    VecFx32 v5;
    const VecFx32 *v6;

    v0 = ov104_0223AA50(param0->challengeType);

    switch (param0->subState) {
    case 0:
        param0->unk_13_5 = 1;

        Window_ClearAndCopyToVRAM(&param0->windows[1]);
        Window_ClearAndCopyToVRAM(&param0->windows[8]);
        Window_ClearAndCopyToVRAM(&param0->windows[9]);

        Window_FillTilemap(&param0->windows[0], 0);
        Window_ScheduleCopyToVRAM(&param0->windows[0]);

        Window_EraseMessageBox(&param0->windows[5], 1);
        Window_ClearAndScheduleCopyToVRAM(&param0->windows[5]);

        BattleFactoryApp_FreeWindows(param0->windows);
        ov105_022448F4(param0, 3, ov105_02245538(param0, 1, 0), 21, 11);

        PokemonSpriteManager_StartFadeAll(param0->monSpriteMan, 0, 16, 0, 0xffff);

        param0->unk_19 = 0;
        param0->subState++;
        break;
    case 1:
        param0->unk_19++;

        if (param0->unk_19 < 2) {
            break;
        }

        PokemonSprite_Delete(param0->unk_12C[0]);

        ov105_02244924(param0, 1);
        ov105_022448F4(param0, 3, ov105_02245538(param0, 0, 0), 21, 11);
        ReloadNoScreensBackground(param0, 3);

        param0->unk_19 = 0;
        param0->subState++;
        break;
    case 2:
        if (PokemonSprite_IsFadeActive(param0->unk_12C[0])) {
            (void)0;
        }

        if (BattleFactoryAppPanelSprite_IsAnimated(param0->unk_314) == 1) {
            break;
        }

        ov105_02245A30(param0);
        LoadWheelBackground(param0, 1);
        LoadConveyorBackground(param0, 2);
        LoadAppStartupBackground(param0, 3);

        Bg_SetOffset(param0->bgConfig, BG_LAYER_MAIN_2, 0, param0->unk_0C);
        Sound_PlayEffect(SEQ_SE_DP_ELEBETA2);

        param0->unk_19 = 0;
        param0->subState++;
        break;
    case 3:
        if (ov105_02244830(param0) == 1) {
            Sound_StopEffect(1554, 0);
            Sound_PlayEffect(SEQ_SE_DP_KASYA);

            param0->unk_14 = (4 * 2);

            for (v1 = 0; v1 < param0->unk_12; v1++) {
                param0->unk_2F4[v1] = BattleFactoryAppPokeballSprite_Free(param0->unk_2F4[v1]);
                param0->unk_2F4[v1] = NULL;
            }

            if (BattleFactory_IsMultiplayerChallenge(param0->challengeType) == TRUE) {
                if (param0->unk_12 == (NELEMS(Unk_ov105_022462EC))) {
                    param0->unk_12 = (NELEMS(Unk_ov105_02246320));
                } else {
                    param0->unk_12 = (NELEMS(Unk_ov105_022462EC));
                }
            }

            ov105_0224260C(param0);

            for (v1 = 0; v1 < param0->unk_12; v1++) {
                ov105_02245F5C(param0->unk_2F4[v1]);
            }

            Sound_PlayEffect(SEQ_SE_DP_ELEBETA2);

            param0->unk_19 = 0;
            param0->subState++;
        }
        break;
    case 4:
        if (ov105_02244780(param0) == 1) {
            Sound_StopEffect(1554, 0);
            Sound_PlayEffect(SEQ_SE_DP_KASYA);

            for (v1 = 0; v1 < param0->unk_12; v1++) {
                BattleFactoryAppPokeballSprite_SetAnim(param0->unk_2F4[v1], 10);
            }

            param0->unk_14 = (4 * 2);

            ov105_02244924(param0, 0);

            param0->unk_19 = 0;
            param0->subState++;
        }
        break;
    case 5:
        if (BattleFactoryAppPanelSprite_IsAnimated(param0->unk_314) == 1) {
            break;
        }

        ov105_02245A30(param0);

        param0->unk_19 = 0;
        param0->subState++;
        break;
    case 6:
        if (param0->unk_19 == 0) {
            ReloadMonSelectionBackground(param0, 3);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);

            if (param0->unk_13_2 == 0) {
                ov105_0224266C(param0);
            } else {
                ov105_022455C4(param0, 0, Party_GetPokemonBySlotIndex(param0->unk_320, 0), 120, 43, 0);
            }

            PokemonSprite_SetAttribute(param0->unk_12C[0], MON_SPRITE_HIDE, 0);
            PokemonSpriteManager_StartFadeAll(param0->monSpriteMan, 16, 0, 1, 0xffff);

            ov105_022448F4(param0, 3, ov105_02245538(param0, 1, 1), 21, 11);
        }

        if (PokemonSprite_IsFadeActive(param0->unk_12C[0])) {
            (void)0;
        }

        param0->unk_19++;

        if (param0->unk_19 < 21) {
            break;
        }

        ov105_022448F4(param0, 3, ov105_02245538(param0, 2, 1), 21, 11);
        ov105_02245A64(param0);

        param0->unk_13_5 = 0;

        if (BattleFactory_IsMultiplayerChallenge(param0->challengeType) == TRUE) {
            param0->unk_3BF = 1;
            ov105_022457C0(param0);
        }

        param0->unk_19 = 0;
        return 1;
    }

    return 0;
}

static BOOL ov105_0224435C(BattleFactoryApp *param0)
{
    switch (param0->subState) {
    case 0:
        if (ov105_02245620(param0, 10, param0->unk_13_3) == 1) {
            param0->subState++;
        }
        break;
    case 1:
        if (param0->unk_3BE < 2) {
            break;
        }

        param0->unk_3BE = 0;
        return 1;
    }

    return 0;
}

static BOOL ov105_0224439C(BattleFactoryApp *param0)
{
    int v0;

    switch (param0->subState) {
    case 0:
        param0->unk_10 = PrintMessageAndCopyToVRAM(param0, BattleFactoryApp_Text_PleaseWait2);

        CommTool_ClearReceivedTempDataAllPlayers();
        CommTiming_StartSync(165);

        param0->subState++;

        break;
    case 1:
        if (CommTiming_IsSyncState(165) == 1) {
            CommTool_ClearReceivedTempDataAllPlayers();
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov105_022443DC(BattleFactoryApp *param0)
{
    int v0;

    switch (param0->subState) {
    case 0:
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_BATTLE_FACTORY_APP);
        param0->subState++;
        break;
    case 1:
        if (IsScreenFadeDone() == TRUE) {
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov105_02244424(BattleFactoryApp *param0)
{
    int v0;
    Pokemon *v1;
    BoxPokemon *v2;

    switch (param0->subState) {
    case 0:

        if (param0->unk_310 != NULL) {
            Menu_Free(param0->menu, NULL);
            ov105_02245A98(param0->menuTemplate.window);
            BattleFactoryAppCursor_Free(param0->unk_310);
            param0->unk_310 = NULL;
        }

        BattleFrontier_SetPartnerInStrTemplate(param0->strTemplate, 0);

        v1 = Party_GetPokemonBySlotIndex(param0->unk_31C, 2 + param0->unk_324[0]);
        v2 = Pokemon_GetBoxPokemon(v1);

        SetStringTemplateSpecies(param0, 1, v2);

        v1 = Party_GetPokemonBySlotIndex(param0->unk_320, param0->unk_324[1]);
        v2 = Pokemon_GetBoxPokemon(v1);

        SetStringTemplateSpecies(param0, 2, v2);
        BattleFactoryApp_DrawMessageBox(&param0->windows[5], Options_Frame(param0->options));

        param0->unk_10 = PrintMessageWithBg(param0, &param0->windows[5], BattleFactoryApp_Text_TradeOccurred, 1, 1, Options_TextFrameDelay(SaveData_GetOptions(param0->saveData)), 1, 2, 15, FONT_MESSAGE);

        Window_ScheduleCopyToVRAM(&param0->windows[5]);

        param0->unk_19 = 80;
        param0->subState++;

        break;
    case 1:
        if (Text_IsPrinterActive(param0->unk_10) == 0) {
            param0->unk_19 = 0;
            return 1;
        }

        break;
    }

    return 0;
}

static void VBlankCallback(void *data)
{
    BattleFactoryApp *app = data;

    if (app->unk_04 != NULL) {
        return;
    }

    PokemonSpriteManager_UpdateCharAndPltt(app->monSpriteMan);

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

static void InitBackgrounds(BgConfig *app)
{
    GraphicsModes graphicsModes = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_3D
    };

    SetAllGraphicsModes(&graphicsModes);

    BgTemplate mainBgTemplate = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x0000,
        .charBase = GX_BG_CHARBASE_0x04000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(app, BG_LAYER_MAIN_1, &mainBgTemplate, BG_TYPE_STATIC);
    Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32, 0, HEAP_ID_BATTLE_FACTORY_APP);
    Bg_ClearTilemap(app, BG_LAYER_MAIN_1);

    BgTemplate mainBgTemplate2 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x1800,
        .charBase = GX_BG_CHARBASE_0x0c000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 2,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(app, BG_LAYER_MAIN_2, &mainBgTemplate2, BG_TYPE_STATIC);
    Bg_ClearTilemap(app, BG_LAYER_MAIN_2);

    BgTemplate mainBgTemplate3 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x2800,
        .charBase = GX_BG_CHARBASE_0x0c000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 3,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(app, BG_LAYER_MAIN_3, &mainBgTemplate3, BG_TYPE_STATIC);
    Bg_ClearTilemap(app, BG_LAYER_MAIN_3);

    BgTemplate subBgTemplate = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x3800,
        .charBase = GX_BG_CHARBASE_0x10000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(app, BG_LAYER_SUB_0, &subBgTemplate, BG_TYPE_STATIC);
    Bg_ClearTilemap(app, BG_LAYER_SUB_0);

    G2_SetBG0Priority(0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, TRUE);
}

static void LoadBackgrounds(BattleFactoryApp *app)
{
    SetGXBanks();
    InitBackgrounds(app->bgConfig);

    app->plttData = PaletteData_New(HEAP_ID_BATTLE_FACTORY_APP);

    PaletteData_AllocBuffer(app->plttData, PLTTBUF_MAIN_OBJ, PALETTE_SIZE_BYTES * SLOTS_PER_PALETTE, HEAP_ID_BATTLE_FACTORY_APP);
    PaletteData_AllocBuffer(app->plttData, PLTTBUF_MAIN_BG, PALETTE_SIZE_BYTES * SLOTS_PER_PALETTE, HEAP_ID_BATTLE_FACTORY_APP);

    LoadPalette();

    if (app->unk_13_4 == 0) {
        LoadWheelBackground(app, BG_LAYER_MAIN_1);
        LoadConveyorBackground(app, BG_LAYER_MAIN_2);
        LoadAppStartupBackground(app, BG_LAYER_MAIN_3);

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, TRUE);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, TRUE);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, TRUE);
    } else {
        LoadMonSelectionBackground(app, BG_LAYER_MAIN_3);
        LoadConveyorBackground(app, BG_LAYER_MAIN_2);

        Bg_SetOffset(app->bgConfig, BG_LAYER_MAIN_2, 0, app->unk_0C);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, TRUE);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, TRUE);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, TRUE);
    }

    LoadSubScreenBackground(app, BG_LAYER_SUB_0);
}

static void InitSpriteManager(BattleFactoryApp *app)
{
    BattleFactoryApp_InitSpriteManager(&app->spriteMan);
}

static void FreeBackgrounds(BgConfig *bgConfig)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, FALSE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, FALSE);

    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_0);
    Heap_Free(bgConfig);
}

static void ChangeState(BattleFactoryApp *app, int *state, int newState)
{
    app->subState = 0;
    *state = newState;
}

static BOOL ov105_02244780(BattleFactoryApp *param0)
{
    int v0, v1, v2, v3;
    const VecFx32 *v4;

    v3 = 0;

    Bg_SetOffset(param0->bgConfig, BG_LAYER_MAIN_2, 1, 8);
    param0->unk_0C = Bg_GetXOffset(param0->bgConfig, 2);

    for (v0 = 0; v0 < param0->unk_12; v0++) {
        v4 = BattleFactoryAppPokeballSprite_GetPosition(param0->unk_2F4[v0]);

        if (((v4->x / FX32_ONE) - 8) <= BattleFactoryAppPokeballSprite_GetX(param0->unk_2F4[v0])) {
            v1 = BattleFactoryAppPokeballSprite_GetX(param0->unk_2F4[v0]);
            v2 = BattleFactoryAppPokeballSprite_GetY(param0->unk_2F4[v0]);
            BattleFactoryAppPokeballSprite_SetPosition(param0->unk_2F4[v0], v1, v2);
            v3 = 1;
        } else {
            BattleFactoryAppPokeballSprite_SetAndGetPosition(param0->unk_2F4[v0], -8, 0);
        }
    }

    ov105_022448BC(param0);

    if (v3 == 1) {
        return 1;
    }

    return 0;
}

static BOOL ov105_02244830(BattleFactoryApp *param0)
{
    int v0, v1, v2, v3;
    const VecFx32 *v4;

    v3 = 0;

    Bg_SetOffset(param0->bgConfig, BG_LAYER_MAIN_2, 1, 8);
    param0->unk_0C = Bg_GetXOffset(param0->bgConfig, 2);

    for (v0 = 0; v0 < param0->unk_12; v0++) {
        v4 = BattleFactoryAppPokeballSprite_GetPosition(param0->unk_2F4[v0]);

        if (((v4->x / FX32_ONE) - 8) < -24) {
            BattleFactoryAppPokeballSprite_SetDrawFlag(param0->unk_2F4[v0], 0);
            v3++;
        } else {
            BattleFactoryAppPokeballSprite_SetAndGetPosition(param0->unk_2F4[v0], -8, 0);
        }
    }

    ov105_022448BC(param0);

    if (v3 == param0->unk_12) {
        return 1;
    }

    return 0;
}

static void ov105_022448BC(BattleFactoryApp *param0)
{
    if ((param0->unk_14 % 4) == 0) {
        if ((param0->unk_14 / 4) >= 4) {
            param0->unk_14 = 0;
        }

        ov105_022448F4(param0, 1, (param0->unk_14 / 4) + 6, 32, 32);
    }

    param0->unk_14++;
    return;
}

static void ov105_022448F4(BattleFactoryApp *param0, u32 param1, u8 param2, u8 param3, u8 param4)
{
    Bg_ChangeTilemapRectPalette(param0->bgConfig, param1, 0, 0, param3, param4, param2);
    Bg_ScheduleTilemapTransfer(param0->bgConfig, param1);

    return;
}

static void ov105_02244924(BattleFactoryApp *param0, u32 param1)
{
    u32 v0;

    switch (param1) {
    case 0:
        Sound_PlayEffect(SEQ_SE_DP_OPEN2);
        v0 = 2;
        break;
    case 1:
        Sound_PlayEffect(SEQ_SE_DP_CLOSE2);
        v0 = 3;
        break;
    case 4:
        Sound_PlayEffect(SEQ_SE_DP_OPEN2);
        v0 = 2;
        break;
    case 5:
        Sound_PlayEffect(SEQ_SE_DP_CLOSE2);
        v0 = 3;
        break;
    }

    param0->unk_314 = ov105_022459B0(param0, ov105_02245584(param0, param1));

    if (BattleFactory_IsMultiplayerChallenge(param0->challengeType) == TRUE) {
        param0->unk_318 = ov105_02245A04(param0, v0);
    }

    return;
}

static void LoadMonSelectionBackground(BattleFactoryApp *app, enum BgLayer bgLayer)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(app->narc, BATTLE_FACTORY_APP_TILES, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_FACTORY_APP);

    if (!BattleFactory_IsMultiplayerChallenge(app->challengeType)) {
        Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_FACTORY_APP_MON_SELECTION_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_FACTORY_APP);
    } else {
        Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_FACTORY_APP_MULTI_MON_SELECTION_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_FACTORY_APP);
    }
}

static void LoadAppStartupBackground(BattleFactoryApp *app, enum BgLayer bgLayer)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(app->narc, BATTLE_FACTORY_APP_TILES, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_FACTORY_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_FACTORY_APP_NO_SCREENS_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_FACTORY_APP);
}

static void LoadConveyorBackground(BattleFactoryApp *app, enum BgLayer bgLayer)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(app->narc, BATTLE_FACTORY_APP_TILES, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_FACTORY_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_FACTORY_APP_CONVEYOR_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_FACTORY_APP);
}

static void LoadWheelBackground(BattleFactoryApp *app, enum BgLayer bgLayer)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(app->narc, BATTLE_FACTORY_APP_TILES, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_FACTORY_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_FACTORY_APP_WHEEL_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_FACTORY_APP);
    Bg_SetPriority(BG_LAYER_MAIN_1, 2);
}

static void LoadPalette(void)
{
    NNSG2dPaletteData *plttData;
    void *pltt = Graphics_GetPlttData(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, BATTLE_FACTORY_APP_PLTT, &plttData, HEAP_ID_BATTLE_FACTORY_APP);

    DC_FlushRange(plttData->pRawData, PALETTE_SIZE_BYTES * 11);
    GX_LoadBGPltt(plttData->pRawData, 0, PALETTE_SIZE_BYTES * 11);
    Heap_Free(pltt);
}

static void LoadSubScreenBackground(BattleFactoryApp *app, enum BgLayer bgLayer)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(app->narc, BATTLE_FRONTIER_APP_SUB_SCREEN_TILES, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_FACTORY_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_FRONTIER_APP_SUB_SCREEN_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_FACTORY_APP);
    Graphics_LoadPaletteFromOpenNARC(app->narc, BATTLE_FRONTIER_APP_SUB_SCREEN_PLTT, PAL_LOAD_SUB_BG, 0, PALETTE_SIZE_BYTES, HEAP_ID_BATTLE_FACTORY_APP);
}

static void ReloadMonSelectionBackground(BattleFactoryApp *app, enum BgLayer bgLayer)
{
    if (!BattleFactory_IsMultiplayerChallenge(app->challengeType)) {
        Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_FACTORY_APP_MON_SELECTION_TILEMAP, app->bgConfig, BG_LAYER_MAIN_3, 0, 0, TRUE, HEAP_ID_BATTLE_FACTORY_APP);
    } else {
        Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_FACTORY_APP_MULTI_MON_SELECTION_TILEMAP, app->bgConfig, BG_LAYER_MAIN_3, 0, 0, TRUE, HEAP_ID_BATTLE_FACTORY_APP);
    }
}

static void ReloadNoScreensBackground(BattleFactoryApp *app, enum BgLayer bgLayer)
{
    Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_FACTORY_APP_NO_SCREENS_TILEMAP, app->bgConfig, BG_LAYER_MAIN_3, 0, 0, TRUE, HEAP_ID_BATTLE_FACTORY_APP);
}

static void LoadSelectionConfirmBackground(BattleFactoryApp *app, enum BgLayer bgLayer)
{
    if (!BattleFactory_IsMultiplayerChallenge(app->challengeType)) {
        Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_FACTORY_APP_SUMMARY_TILEMAP, app->bgConfig, BG_LAYER_MAIN_3, 0, 0, TRUE, HEAP_ID_BATTLE_FACTORY_APP);
    } else {
        Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_FACTORY_APP_MULTI_SUMMARY_TILEMAP, app->bgConfig, BG_LAYER_MAIN_3, 0, 0, TRUE, HEAP_ID_BATTLE_FACTORY_APP);
    }
}

static u8 PrintMessageWithBg(BattleFactoryApp *app, Window *window, int entryID, u32 xOffset, u32 yOffset, u32 renderDelay, u8 fgColor, u8 shadowColor, u8 bgColor, u8 font)
{
    Window_FillTilemap(window, bgColor);
    MessageLoader_GetString(app->msgLoader, entryID, app->fmtStr);
    StringTemplate_Format(app->strTemplate, app->displayStr, app->fmtStr);

    return Text_AddPrinterWithParamsAndColor(window, font, app->displayStr, xOffset, yOffset, renderDelay, TEXT_COLOR(fgColor, shadowColor, bgColor), NULL);
}

static u8 PrintMessage(BattleFactoryApp *app, Window *window, int entryID, u32 xOffset, u32 yOffset, u32 renderDelay, u8 fgColor, u8 shadowColor, u8 bgColor, u8 font)
{
    MessageLoader_GetString(app->msgLoader, entryID, app->fmtStr);
    StringTemplate_Format(app->strTemplate, app->displayStr, app->fmtStr);

    return Text_AddPrinterWithParamsAndColor(window, font, app->displayStr, xOffset, yOffset, renderDelay, TEXT_COLOR(fgColor, shadowColor, bgColor), NULL);
}

static u8 PrintMessageAndCopyToVRAM(BattleFactoryApp *app, int entryID)
{
    u8 printerID = PrintMessageWithBg(app, &app->windows[5], entryID, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_MESSAGE);
    Window_ScheduleCopyToVRAM(&app->windows[5]);

    return printerID;
}

static void InitMenu(BattleFactoryApp *app, Window *window, u8 numOptions)
{
    for (int i = 0; i < 4; i++) {
        app->strList[i].entry = NULL;
        app->strList[i].index = 0;
    }

    app->menuTemplate.choices = app->strList;
    app->menuTemplate.window = window;
    app->menuTemplate.fontID = FONT_SYSTEM;
    app->menuTemplate.xSize = 1;
    app->menuTemplate.ySize = numOptions;
    app->menuTemplate.lineSpacing = 0;
    app->menuTemplate.suppressCursor = TRUE;
    app->menuTemplate.loopAround = TRUE;
}

static void AddStringToMenu(BattleFactoryApp *app, u8 strIndex, u8 listIndex, int entryID)
{
    MessageLoader_GetString(app->msgLoader, entryID, app->menuStr[strIndex]);

    app->strList[strIndex].entry = app->menuStr[strIndex];
    app->strList[strIndex].index = listIndex;
}

static void OpenMonOptionsMenu(BattleFactoryApp *app)
{
    BattleFactoryApp_DrawWindow(app->bgConfig, &app->windows[7]);
    InitMenu(app, &app->windows[7], NELEMS(Unk_ov105_02246308));
    AddStringToMenu(app, 0, 0, BattleFactoryApp_Text_Summary);

    if (ov105_022454F8(app, 0) == 1) {
        if (BattleFactoryAppPokeballSprite_IsSelected(app->unk_2F4[BattleFactoryAppCursor_GetCurrentSlot(app->unk_30C)]) == 0) {
            AddStringToMenu(app, 1, 1, BattleFactoryApp_Text_Rent);
        } else {
            AddStringToMenu(app, 1, 3, BattleFactoryApp_Text_Remove);
        }
    } else {
        AddStringToMenu(app, 1, 4, BattleFactoryApp_Text_Exchange);
    }

    AddStringToMenu(app, 2, 2, BattleFactoryApp_Text_Cancel);
    app->menu = Menu_NewAndCopyToVRAM(&app->menuTemplate, 0, 0, 0, HEAP_ID_BATTLE_FACTORY_APP, PAD_BUTTON_B);
}

static void OpenYesNoMenu(BattleFactoryApp *app)
{
    BattleFactoryApp_DrawWindow(app->bgConfig, &app->windows[7]);
    InitMenu(app, &app->windows[7], NELEMS(Unk_ov105_022462F4));
    AddStringToMenu(app, 0, 0, BattleFactoryApp_Text_Yes);
    AddStringToMenu(app, 1, 1, BattleFactoryApp_Text_No);

    app->menu = Menu_NewAndCopyToVRAM(&app->menuTemplate, 0, 0, 0, HEAP_ID_BATTLE_FACTORY_APP, PAD_BUTTON_B);
}

static void SetStringTemplateNumber(BattleFactoryApp *app, u32 idx, s32 num)
{
    StringTemplate_SetNumber(app->strTemplate, idx, num, 1, PADDING_MODE_NONE, CHARSET_MODE_EN);
}

static void SetStringTemplateSpecies(BattleFactoryApp *app, u32 idx, BoxPokemon *boxMon)
{
    StringTemplate_SetSpeciesName(app->strTemplate, idx, boxMon);
}

static void PrintPlayersName(BattleFactoryApp *app, Window *window, u32 xOffset, u32 yOffset, u8 font)
{
    const TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(app->saveData);
    String *name = String_Init(TRAINER_NAME_LEN + 1, HEAP_ID_BATTLE_FACTORY_APP);

    Window_FillTilemap(window, 0);
    String_CopyChars(name, TrainerInfo_Name(trainerInfo));

    TextColor color;
    if (TrainerInfo_Gender(trainerInfo) == GENDER_MALE) {
        color = TEXT_COLOR(7, 8, 0);
    } else {
        color = TEXT_COLOR(3, 4, 0);
    }

    Text_AddPrinterWithParamsAndColor(window, font, name, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, color, NULL);
    String_Free(name);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintPartnersName(BattleFactoryApp *app, Window *window, u32 xOffset, u32 yOffset, u8 font)
{
    TrainerInfo *trainerInfo = CommInfo_TrainerInfo(1 - CommSys_CurNetId());
    String *name = String_Init(TRAINER_NAME_LEN + 1, HEAP_ID_BATTLE_FACTORY_APP);

    Window_FillTilemap(window, 0);
    TrainerInfo_NameString(trainerInfo, name);

    TextColor color;
    if (TrainerInfo_Gender(trainerInfo) == 0) {
        color = TEXT_COLOR(7, 8, 0);
    } else {
        color = TEXT_COLOR(3, 4, 0);
    }

    Text_AddPrinterWithParamsAndColor(window, font, name, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, color, NULL);
    String_Free(name);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintMonNameAndGender(BattleFactoryApp *app, Window *window, u8 slot, u32 xOffset, u32 yOffset, u8 fgColor, u8 shadowColor, u8 bgColor, u8 font, const Party *party)
{
    u16 monNameBuf[MON_NAME_LEN + 1];

    Pokemon *mon = Party_GetPokemonBySlotIndex(party, slot);
    Pokemon_GetValue(mon, MON_DATA_SPECIES_NAME, monNameBuf);
    Window_FillTilemap(window, bgColor);

    String *displayStr = String_Init(MON_NAME_LEN + 1, HEAP_ID_BATTLE_FACTORY_APP);
    String_CopyChars(displayStr, monNameBuf);
    Text_AddPrinterWithParamsAndColor(window, font, displayStr, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(fgColor, shadowColor, bgColor), NULL);

    u8 width = Window_GetWidth(window) - 1;
    u32 gender = Pokemon_GetValue(mon, MON_DATA_GENDER, NULL);
    u32 symbol = gender == GENDER_MALE ? BattleFactoryApp_Text_MaleSymbol : BattleFactoryApp_Text_FemaleSymbol;
    TextColor color = gender == GENDER_MALE ? TEXT_COLOR(7, 8, 0) : TEXT_COLOR(3, 4, 0);

    String_Clear(displayStr);

    if (gender != GENDER_NONE) {
        MessageLoader_GetString(app->msgLoader, symbol, displayStr);
        Text_AddPrinterWithParamsAndColor(window, font, displayStr, width * 8, yOffset, TEXT_SPEED_NO_TRANSFER, color, NULL);
    }

    String_Free(displayStr);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintPartnersMonNameAndGender(BattleFactoryApp *app, Window *window, u32 xOffset, u32 yOffset, u8 fgColor, u8 shadowColor, u8 bgColor, u8 font, u16 species, u8 gender)
{
    Window_FillTilemap(window, bgColor);

    MessageLoader *loader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SPECIES_NAME, HEAP_ID_BATTLE_FACTORY_APP);
    String *string = MessageLoader_GetNewString(loader, species);

    MessageLoader_Free(loader);
    Text_AddPrinterWithParamsAndColor(window, font, string, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(fgColor, shadowColor, bgColor), NULL);

    u8 width = Window_GetWidth(window) - 1;
    u32 symbol = gender == GENDER_MALE ? BattleFactoryApp_Text_MaleSymbol : BattleFactoryApp_Text_FemaleSymbol;
    TextColor color = gender == GENDER_MALE ? TEXT_COLOR(7, 8, 0) : TEXT_COLOR(3, 4, 0);

    String_Clear(string);

    if (gender != GENDER_NONE) {
        MessageLoader_GetString(app->msgLoader, symbol, string);
        Text_AddPrinterWithParamsAndColor(window, font, string, width * 8, yOffset, TEXT_SPEED_NO_TRANSFER, color, NULL);
    }

    String_Free(string);
}

static void FreeAssets(BattleFactoryApp *app)
{
    for (int i = 0; i < app->unk_12; i++) {
        if (app->unk_2F4[i] != NULL) {
            app->unk_2F4[i] = BattleFactoryAppPokeballSprite_Free(app->unk_2F4[i]);
        }
    }

    if (app->unk_30C != NULL) {
        BattleFactoryAppCursor_Free(app->unk_30C);
        app->unk_30C = NULL;
    }

    NetworkIcon_Destroy();

    PaletteData_FreeBuffer(app->plttData, PLTTBUF_MAIN_OBJ);
    PaletteData_FreeBuffer(app->plttData, PLTTBUF_MAIN_BG);
    PaletteData_Free(app->plttData);

    app->plttData = NULL;

    BattleFactoryApp_FreeSprites(&app->spriteMan);

    for (int i = 0; i < 3; i++) {
        if (app->unk_12C[i] != NULL) {
            PokemonSprite_Delete(app->unk_12C[i]);
        }
    }

    PokemonSpriteManager_Free(app->monSpriteMan);
    MessageLoader_Free(app->msgLoader);
    StringTemplate_Free(app->strTemplate);
    String_Free(app->displayStr);
    String_Free(app->fmtStr);

    for (int i = 0; i < 4; i++) {
        String_Free(app->menuStr[i]);
    }

    BattleFactoryApp_FreeWindows(app->windows);
    FreeBackgrounds(app->bgConfig);

    NARC_dtor(app->narc);
    G3DPipelineBuffers_Free(app->g3dPipeline);
}

static void ReInitApp(BattleFactoryApp *app)
{
    InitGraphicsPlane();

    app->g3dPipeline = G3DPipeline_Init(HEAP_ID_BATTLE_FACTORY_APP, TEXTURE_VRAM_SIZE_256K, PALETTE_VRAM_SIZE_32K, BattleFactoryApp_Setup3D);
    app->bgConfig = BgConfig_New(HEAP_ID_BATTLE_FACTORY_APP);

    LoadAssets(app);
    BattleFactoryApp_InitWindows(app->bgConfig, app->windows);
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

static void LoadAssets(BattleFactoryApp *app)
{
    app->narc = NARC_ctor(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, HEAP_ID_BATTLE_FACTORY_APP);

    LoadBackgrounds(app);
    InitSpriteManager(app);

    app->msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BATTLE_FACTORY_APP, HEAP_ID_BATTLE_FACTORY_APP);
    app->strTemplate = StringTemplate_Default(HEAP_ID_BATTLE_FACTORY_APP);
    app->displayStr = String_Init(800, HEAP_ID_BATTLE_FACTORY_APP);
    app->fmtStr = String_Init(800, HEAP_ID_BATTLE_FACTORY_APP);

    for (int i = 0; i < 4; i++) {
        app->menuStr[i] = String_Init(64, HEAP_ID_BATTLE_FACTORY_APP);
    }

    Font_LoadTextPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(13), HEAP_ID_BATTLE_FACTORY_APP);
    Font_LoadScreenIndicatorsPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(12), HEAP_ID_BATTLE_FACTORY_APP);

    app->monSpriteMan = PokemonSpriteManager_New(HEAP_ID_BATTLE_FACTORY_APP);

    if (CommSys_IsInitialized()) {
        ReserveVramForWirelessIconChars(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_32K);
        ReserveSlotsForWirelessIconPalette(NNS_G2D_VRAM_TYPE_2DMAIN);
        sub_02039734();
    }

    if (ov105_022454F8(app, 0) == 1) {
        ov105_0224246C(app);
        ov105_022424A0(app);
    } else {
        ov105_0224260C(app);
        ov105_0224266C(app);
    }

    GXLayers_TurnBothDispOn();
    SetVBlankCallback(VBlankCallback, app);
}

static void ov105_022453F8(BattleFactoryApp *param0, u8 param1, u8 param2, int param3, const Party *param4)
{
    int v0 = param2;

    if (BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C) < param0->unk_12) {
        PokemonSprite_Delete(param0->unk_12C[0]);
        ov105_022455C4(param0, 0, Party_GetPokemonBySlotIndex(param4, v0), 120, 43, param3);
        PrintMonNameAndGender(param0, &param0->windows[2 + param1], v0, 0, 0, 15, 2, 0, 0, param4);
    }

    return;
}

static void ov105_02245464(BattleFactoryApp *param0)
{
    param0->unk_140 = Heap_Alloc(HEAP_ID_BATTLE_FACTORY_APP, sizeof(PokemonSummary));
    memset(param0->unk_140, 0, sizeof(PokemonSummary));

    param0->unk_140->monData = param0->unk_31C;
    param0->unk_140->options = param0->options;
    param0->unk_140->dataType = SUMMARY_DATA_PARTY_MON;
    param0->unk_140->mode = SUMMARY_MODE_LOCK_MOVES;
    param0->unk_140->monMax = param0->unk_12;
    param0->unk_140->monIndex = BattleFactoryAppCursor_GetCurrentSlot(param0->unk_30C);
    param0->unk_140->move = 0;
    param0->unk_140->dexMode = SaveData_GetDexMode(param0->saveData);
    param0->unk_140->showContest = FALSE;

    PokemonSummaryScreen_FlagVisiblePages(param0->unk_140, Unk_ov105_022462DC);
    PokemonSummaryScreen_SetPlayerProfile(param0->unk_140, SaveData_GetTrainerInfo(param0->saveData));

    return;
}

static BOOL ov105_022454F8(BattleFactoryApp *param0, u8 param1)
{
    if (param0->unk_0B == param1) {
        return 1;
    }

    return 0;
}

static u8 ov105_02245508(u8 param0)
{
    switch (param0) {
    case 0:
    case 1:
        return 3;
    }

    return 2;
}

static BOOL ov105_02245518(BattleFactoryApp *param0)
{
    if (param0->unk_13_0 == 0) {
        return 0;
    }

    return 1;
}

static void ov105_02245528(BattleFactoryApp *param0, u8 param1)
{
    param0->unk_13_0 = param1;
    return;
}

static u8 ov105_02245538(BattleFactoryApp *param0, u8 param1, u8 param2)
{
    u8 v0 = 0;

    switch (param1) {
    case 0:
        if (param2 == 1) {
            v0 = 2;
        } else if (!BattleFactory_IsMultiplayerChallenge(param0->challengeType)) {
            v0 = 2;
        } else {
            v0 = 2;
        }
        break;
    case 1:
        if (param2 == 1) {
            v0 = 1;
        } else if (!BattleFactory_IsMultiplayerChallenge(param0->challengeType)) {
            v0 = 1;
        } else {
            v0 = 1;
        }
        break;
    case 2:
        if (param2 == 1) {
            v0 = 2;
        } else if (!BattleFactory_IsMultiplayerChallenge(param0->challengeType)) {
            v0 = 2;
        } else {
            v0 = 2;
        }
        break;
    }

    return v0;
}

static u32 ov105_02245584(BattleFactoryApp *param0, u32 param1)
{
    switch (param1) {
    case 0:
        break;
    case 1:
        break;
    case 4:
        if (BattleFactory_IsMultiplayerChallenge(param0->challengeType) == TRUE) {
            return 11;
        }
        break;
    case 5:
        if (BattleFactory_IsMultiplayerChallenge(param0->challengeType) == TRUE) {
            return 12;
        }
        break;
    }

    return param1;
}

static void ov105_022455C4(BattleFactoryApp *app, u8 param1, Pokemon *mon, int x, int y, int param5)
{
    app->unk_12C[param1] = BattleFactoryApp_CreateMonSprite(app->monSpriteMan, 0, mon, x, y, 0);

    PokemonSprite_SetAttribute(app->unk_12C[param1], MON_SPRITE_HIDE, FALSE);

    u32 species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
    u32 form = Pokemon_GetValue(mon, MON_DATA_FORM, NULL);

    if (!SpeciesData_GetFormValue(species, form, SPECIES_DATA_FLIP_SPRITE)) {
        BattleFactoryApp_FlipMonSprite(app->unk_12C[param1], param5);
    }
}

BOOL ov105_02245620(BattleFactoryApp *param0, u16 param1, u16 param2)
{
    int v0, v1;

    if (!BattleFactory_IsMultiplayerChallenge(param0->challengeType)) {
        return 0;
    }

    switch (param1) {
    case 7:
        v1 = 29;
        ov105_02245684(param0, param1);
        break;
    case 8:
        v1 = 30;
        ov105_022456A8(param0, param1, param2);
        break;
    case 10:
        v1 = 32;
        ov105_02245884(param0, param1, param2);
        break;
    }

    if (CommSys_SendData(v1, param0->unk_33C, 60) == 1) {
        v0 = 1;
    } else {
        v0 = 0;
    }

    return v0;
}

void ov105_02245684(BattleFactoryApp *param0, u16 param1)
{
    TrainerInfo *v0 = SaveData_GetTrainerInfo(param0->saveData);
    param0->unk_33C[0] = param1;

    return;
}

void ov105_0224569C(int param0, int param1, void *param2, void *param3)
{
    int v0, v1;
    BattleFactoryApp *v2 = param3;
    const u16 *v3 = param2;

    v1 = 0;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    return;
}

void ov105_022456A8(BattleFactoryApp *param0, u16 param1, u16 param2)
{
    int v0, v1;
    Pokemon *v2;

    v1 = 0;

    for (v0 = 0; v0 < 60; v0++) {
        param0->unk_33C[v0] = 0;
    }

    param0->unk_33C[0] = param0->unk_11;
    v1 += 1;

    for (v0 = 0; v0 < param0->unk_11; v0++) {
        v2 = Party_GetPokemonBySlotIndex(param0->unk_31C, param0->unk_324[v0]);
        param0->unk_33C[v0 + v1] = Pokemon_GetValue(v2, MON_DATA_SPECIES, NULL);
    }

    v1 += param0->unk_11;

    for (v0 = 0; v0 < param0->unk_11; v0++) {
        v2 = Party_GetPokemonBySlotIndex(param0->unk_31C, param0->unk_324[v0]);
        param0->unk_33C[v0 + v1] = Pokemon_GetValue(v2, MON_DATA_GENDER, NULL);
    }

    v1 += param0->unk_11;

    return;
}

void ov105_02245744(int param0, int param1, void *param2, void *param3)
{
    int v0, v1;
    u8 v2;
    BattleFactoryApp *v3 = param3;
    const u16 *v4 = param2;

    v1 = 0;
    v2 = ov104_0223AA50(v3->challengeType);

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v3->unk_18 = v4[0];
    v1 += 1;

    for (v0 = 0; v0 < v3->unk_18; v0++) {
        v3->unk_3B6[v0] = v4[v0 + v1];
    }

    v1 += v3->unk_18;

    for (v0 = 0; v0 < v3->unk_18; v0++) {
        v3->unk_3BA[v0] = v4[v0 + v1];
    }

    v1 += v3->unk_18;
    v3->unk_3BF = 1;

    return;
}

void ov105_022457B8(int param0, int param1, void *param2, void *param3)
{
    GF_ASSERT(0);
    return;
}

static void ov105_022457C0(BattleFactoryApp *param0)
{
    int v0;
    u8 v1 = ov104_0223AA50(param0->challengeType);

    if (param0->unk_13_5 == 1) {
        Window_ClearAndCopyToVRAM(&param0->windows[1]);
        Window_ClearAndCopyToVRAM(&param0->windows[8]);
        Window_ClearAndCopyToVRAM(&param0->windows[9]);
        return;
    }

    if (param0->unk_3BF == 1) {
        for (v0 = 0; v0 < v1; v0++) {
            Window_FillTilemap(&param0->windows[8 + v0], 0);

            if (v0 < param0->unk_18) {
                PrintPartnersMonNameAndGender(param0, &param0->windows[8 + v0], 0, 0, 15, 2, 0, 0, param0->unk_3B6[v0], param0->unk_3BA[v0]);
            }

            Window_ScheduleCopyToVRAM(&param0->windows[8 + v0]);
        }

        PrintPartnersName(param0, &param0->windows[1], 0, 0, 0);
    }

    param0->unk_3BF = 0;
    return;
}

void ov105_02245884(BattleFactoryApp *param0, u16 param1, u16 param2)
{
    param0->unk_33C[0] = param1;
    param0->unk_33C[1] = param2;
    param0->unk_33C[2] = param0->unk_324[0];
    param0->unk_33C[3] = param0->unk_324[1];

    return;
}

void ov105_022458A4(int param0, int param1, void *param2, void *param3)
{
    int v0, v1;
    BattleFactoryApp *v2 = param3;
    const u16 *v3 = param2;

    v1 = 0;
    v2->unk_3BE++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v2->unk_3B4 = (u8)v3[1];

    if (CommSys_CurNetId() == 0) {
        if (v2->unk_13_3 == 1) {
            v2->unk_3B4 = 0;
        } else {
            if (v2->unk_3B4 == 1) {
                v2->unk_324[0] = (u8)v3[2];

                v2->unk_324[1] = (u8)v3[3];
            }
        }
    } else {
        if (v2->unk_3B4 == 1) {
            v2->unk_13_3 = 0;
            v2->unk_324[0] = (u8)v3[2];
            v2->unk_324[1] = (u8)v3[3];
        }
    }

    return;
}

static BattleFactoryAppPokeballSprite *ov105_02245934(BattleFactoryApp *param0, int param1)
{
    int v0, v1;

    if (ov105_022454F8(param0, 0) == 1) {
        v0 = Unk_ov105_02246364[param1][0];
        v1 = Unk_ov105_02246364[param1][1];
    } else {
        if (!BattleFactory_IsMultiplayerChallenge(param0->challengeType)) {
            v0 = Unk_ov105_02246314[param1][0];
            v1 = Unk_ov105_02246314[param1][1];
        } else {
            if (param0->unk_12 == (NELEMS(Unk_ov105_022462EC))) {
                v0 = Unk_ov105_022462EC[param1][0];
                v1 = Unk_ov105_022462EC[param1][1];
            } else {
                v0 = Unk_ov105_02246320[param1][0];
                v1 = Unk_ov105_02246320[param1][1];
            }
        }
    }

    return BattleFactoryAppPokeballSprite_New(&param0->spriteMan, v0, v1, HEAP_ID_BATTLE_FACTORY_APP);
}

static BattleFactoryAppPanelSprite *ov105_022459B0(BattleFactoryApp *param0, u32 param1)
{
    int v0, v1;

    switch (param1) {
    case 0:
    case 1:
        v0 = 80;
        v1 = 40;
        break;
    case 4:
    case 5:
        v0 = 128;
        v1 = 40;
        break;
    case 11:
        v0 = 80;
        v1 = 40;
        break;
    case 12:
        v0 = 80;
        v1 = 40;
        break;
    }

    return BattleFactoryAppPanelSprite_New(&param0->spriteMan, param1, v0, v1, HEAP_ID_BATTLE_FACTORY_APP);
}

static BattleFactoryAppPanelSprite *ov105_02245A04(BattleFactoryApp *param0, u32 param1)
{
    int v0, v1;

    switch (param1) {
    case 2:
    case 3:
        v0 = 216;
        v1 = 40;
        break;
    default:
        GF_ASSERT(0);
        v0 = 0;
        v1 = 0;
        break;
    }

    return BattleFactoryAppPanelSprite_New(&param0->spriteMan, param1, v0, v1, HEAP_ID_BATTLE_FACTORY_APP);
}

static void ov105_02245A30(BattleFactoryApp *param0)
{
    if (param0->unk_314 != NULL) {
        BattleFactoryAppPanelSprite_Free(param0->unk_314);
        param0->unk_314 = NULL;
    }

    if (param0->unk_318 != NULL) {
        BattleFactoryAppPanelSprite_Free(param0->unk_318);
        param0->unk_318 = NULL;
    }

    return;
}

static void ov105_02245A64(BattleFactoryApp *param0)
{
    Bg_SetPriority(BG_LAYER_MAIN_1, 1);
    Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32, 0, HEAP_ID_BATTLE_FACTORY_APP);
    Bg_ClearTilemap(param0->bgConfig, BG_LAYER_MAIN_1);
    BattleFactoryApp_InitWindows(param0->bgConfig, param0->windows);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);

    return;
}

static void ov105_02245A98(Window *param0)
{
    Window_EraseStandardFrame(param0, 1);
    Window_ClearAndScheduleCopyToVRAM(param0);

    return;
}
