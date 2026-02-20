#include "overlay107/battle_castle_self_app.h"

#include <nitro.h>
#include <string.h>

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
#include "item_use_pokemon.h"
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
#include "unk_0208C098.h"
#include "unk_0209BA80.h"
#include "vram_transfer.h"

FS_EXTERN_OVERLAY(overlay104);

const u16 Unk_ov107_02249F84[] = {
    0xDD,
    0xD9,
    0x10F,
    0xFD,
    0x115,
    0x10D,
    0x11E,
    0x128,
    0x110,
    0x111,
    0xEC,
    0x102,
    0xD6,
    0xE6,
    0x113,
    0xEA,
    0xD5,
    0xE8,
    0x109,
    0x114,
    0xDC,
    0x129,
    0x11F,
    0x10A,
    0x10B,
    0x10C,
    0x10E
};

const u16 Unk_ov107_02249FBA[NELEMS(Unk_ov107_02249F84)] = {
    0xA,
    0xF,
    0x5,
    0xF,
    0xA,
    0xA,
    0xA,
    0xA,
    0xA,
    0xA,
    0xF,
    0xF,
    0x5,
    0xF,
    0xA,
    0x14,
    0x14,
    0x14,
    0x14,
    0x14,
    0x14,
    0x14,
    0x14,
    0x14,
    0x14,
    0x14,
    0x14
};

const u16 Unk_ov107_0224A02C[] = {
    0x95,
    0x96,
    0x97,
    0x98,
    0x99,
    0x9C,
    0x9D,
    0x9E,
    0xC9,
    0xCA,
    0xCB,
    0xCC,
    0xCD,
    0xCE,
    0xCF,
    0xB8,
    0xB9,
    0xBA,
    0xBB,
    0xBC,
    0xBD,
    0xBE,
    0xBF,
    0xC0,
    0xC1,
    0xC2,
    0xC3,
    0xC4,
    0xC5,
    0xC6,
    0xC7,
    0xC8
};

const u16 Unk_ov107_0224A06C[NELEMS(Unk_ov107_0224A02C)] = {
    0x2,
    0x2,
    0x2,
    0x2,
    0x2,
    0x2,
    0x5,
    0x5,
    0x5,
    0x5,
    0x5,
    0x5,
    0x5,
    0x5,
    0x5,
    0x5,
    0x5,
    0x5,
    0x5,
    0x5,
    0x5,
    0x5,
    0x5,
    0x5,
    0x5,
    0x5,
    0x5,
    0x5,
    0x5,
    0x5,
    0x5,
    0x5
};

const u16 Unk_ov107_02249E06[] = {
    0xC,
    0xC,
    NELEMS(Unk_ov107_02249F84)
};

const u16 Unk_ov107_02249E12[] = {
    0x8,
    0x8,
    NELEMS(Unk_ov107_0224A02C)
};

typedef struct BattleCastleSelfApp {
    ApplicationManager *appMan;
    BattleFrontier *frontier;
    u8 subState;
    u8 challengeType;
    u8 unk_0A;
    u8 unk_0B;
    u8 unk_0C;
    u8 unk_0D;
    u8 unk_0E_0 : 1;
    u8 unk_0E_1 : 1;
    u8 unk_0E_2 : 1;
    u8 unk_0E_3 : 1;
    u8 unk_0E_4 : 1;
    u8 unk_0E_5 : 2;
    u8 unk_0E_7 : 1;
    u8 unk_0F;
    u16 unk_10;
    u8 unk_12;
    u8 unk_13;
    u8 unk_14;
    u8 unk_15;
    u16 unk_16;
    u16 unk_18;
    u16 unk_1A;
    MessageLoader *itemMsgLoader;
    MessageLoader *msgLoader;
    StringTemplate *strTemplate;
    String *displayStr;
    String *fmtStr;
    String *unk_30[3];
    u16 unk_3C[8];
    BgConfig *bgConfig;
    Window windows[18];
    MenuTemplate unk_170;
    Menu *unk_17C;
    StringList unk_180[3];
    ListMenu *unk_198;
    StringList *unk_19C;
    ListMenuTemplate unk_1A0;
    PaletteData *plttData;
    FontSpecialCharsContext *specialChars;
    Options *options;
    SaveData *saveData;
    UnkStruct_020302DC *unk_1D0;
    UnkStruct_0203041C *unk_1D4;
    BattleCastleAppSpriteManager spriteMan;
    BattleCastleAppSprite *upArrowSprite;
    BattleCastleAppSprite *downArrowSprite;
    BattleCastleAppSprite *itemSprite;
    BattleCastleAppSprite *monSprites[4];
    BattleCastleAppSprite *itemIconSprites[4];
    BattleCastleAppSprite *unk_414;
    BattleCastleAppSprite *cursorSprite;
    BattleCastleAppSprite *unk_41C;
    BattleCastleAppSprite *barSprites[4];
    BattleCastleAppSprite *unk_430;
    BattleCastleAppSprite *unk_434;
    u16 *unk_438;
    Party *unk_43C;
    NARC *narc;
    u16 unk_444[40];
    u8 unk_494;
    u8 unk_495;
    u8 unk_496;
    u8 unk_497[3];
    u16 unk_49A;
    u32 unk_49C;
} BattleCastleSelfApp;

static BOOL State_FadeInApp(BattleCastleSelfApp *app);
static void ov107_02241E70(BattleCastleSelfApp *param0);
static BOOL ov107_02241EC8(BattleCastleSelfApp *param0);
static BOOL ov107_02242C64(BattleCastleSelfApp *param0);
static BOOL ov107_02242D60(BattleCastleSelfApp *param0);
static BOOL State_FadeOutApp(BattleCastleSelfApp *app);
static void FreeAssets(BattleCastleSelfApp *app);
static void InitGraphicsPlane(void);
static void LoadAssets(BattleCastleSelfApp *app);
static void InitSpriteManager(BattleCastleSelfApp *app);
static void LoadBackgrounds(BattleCastleSelfApp *app);
static void FreeBackgrounds(BgConfig *bgConfig);
static void VBlankCallback(void *data);
static void SetGXBanks(void);
static void InitBackgrounds(BgConfig *bgConfig);
static void LoadMainBackground(BattleCastleSelfApp *app, enum BgLayer bgLayer);
static void LoadPalette(void);
static void LoadSummaryBackground(BattleCastleSelfApp *app, enum BgLayer bgLayer);
static void LoadMovesListBackground(BattleCastleSelfApp *app, enum BgLayer bgLayer);
static void LoadItemSelectBackground(BattleCastleSelfApp *app, enum BgLayer bgLayer);
static void LoadPalette2(void);
static void LoadSubScreenBackground(BattleCastleSelfApp *app, enum BgLayer bgLayer);
static u8 ov107_0224379C(BattleCastleSelfApp *param0, Window *param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9);
static u8 ov107_022437CC(BattleCastleSelfApp *param0, Window *param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9, int param10);
static u8 ov107_02243860(BattleCastleSelfApp *param0, Window *param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9);
static u8 ov107_02243890(BattleCastleSelfApp *param0, Window *param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9, u32 param10);
static u8 ov107_02243918(BattleCastleSelfApp *param0, int param1, u8 param2);
static void ov107_02243950(BattleCastleSelfApp *param0, Window *param1, Pokemon *param2);
static void ov107_02243B5C(BattleCastleSelfApp *param0, Window *param1, int param2, u16 param3, u16 param4, int param5);
static void ov107_02243B84(BattleCastleSelfApp *param0, Window *param1, Pokemon *param2);
static void ov107_02243C18(BattleCastleSelfApp *param0, Window *param1, u8 param2, u32 param3, u32 param4, Pokemon *param5, u32 param6, u32 param7, u32 param8);
static void ov107_02243CC0(BattleCastleSelfApp *param0, Window *param1);
static void ov107_02243CFC(BattleCastleSelfApp *param0, Window *param1, u8 param2, u8 param3);
static void ov107_02243DB0(BattleCastleSelfApp *param0, Window *param1);
static void ov107_02243DE4(BattleCastleSelfApp *param0, Window *param1, u8 param2, u8 param3);
static void ov107_02243E74(BattleCastleSelfApp *param0, Window *param1);
static void ov107_02243F4C(BattleCastleSelfApp *param0, Window *param1, u8 param2, u32 param3);
static void ov107_02243FA4(BattleCastleSelfApp *param0);
static void ov107_0224400C(BattleCastleSelfApp *param0);
static void ov107_02244018(BattleCastleSelfApp *param0);
static void ov107_0224403C(BattleCastleSelfApp *param0);
static void ov107_02244064(BattleCastleSelfApp *param0);
static void ov107_02244094(BattleCastleSelfApp *param0);
static void ov107_0224409C(BattleCastleSelfApp *param0);
static void ov107_022440C0(BattleCastleSelfApp *param0);
static void ov107_022440C8(BattleCastleSelfApp *param0, u8 param1);
static void ov107_02244120(BattleCastleSelfApp *param0);
static void ov107_0224414C(BattleCastleSelfApp *param0, Window *param1, u8 param2);
static void ov107_022441B0(BattleCastleSelfApp *param0, u8 param1, u8 param2, int param3);
static void ov107_022441DC(BattleCastleSelfApp *param0);
static void ov107_02244240(BattleCastleSelfApp *param0, u8 param1);
static void ov107_0224440C(ListMenu *param0, u32 param1, u8 param2);
static void ov107_02244560(ListMenu *param0, u32 param1, u8 param2);
static void ov107_022445C4(BattleCastleSelfApp *param0);
static void ov107_02244690(ListMenu *param0, u32 param1, u8 param2);
static void ov107_02244708(ListMenu *param0, u32 param1, u8 param2);
static void ov107_02244780(BattleCastleSelfApp *param0);
static void ov107_0224486C(ListMenu *param0, u32 param1, u8 param2);
static void ov107_022448E8(ListMenu *param0, u32 param1, u8 param2);
static void ov107_02244944(BattleCastleSelfApp *param0);
static void ov107_02244A1C(ListMenu *param0, u32 param1, u8 param2);
static void ov107_02244A74(BattleCastleSelfApp *param0, u32 param1, s32 param2, u32 param3, int param4);
static void ov107_02244A8C(BattleCastleSelfApp *param0, u32 param1, BoxPokemon *param2);
static void ov107_02244A98(BattleCastleSelfApp *param0, u32 param1);
static void ov107_02244AB4(BattleCastleSelfApp *param0, Window *param1, u32 param2, u32 param3, u8 param4);
static void ov107_02244B24(BattleCastleSelfApp *param0, Window *param1, u32 param2, u32 param3, u8 param4);
static void ov107_02244B8C(BattleCastleSelfApp *param0, Window *param1, u32 param2, u32 param3, u8 param4, u8 param5);
static u8 ov107_02243EF8(BattleCastleSelfApp *param0, Window *param1, u16 param2);
static void ChangeState(BattleCastleSelfApp *app, int *state, int newState);
static void ov107_02244BD8(BattleCastleSelfApp *param0, int param1);
static void ov107_02244C70(BattleCastleSelfApp *param0);
static void ov107_02244CA0(BattleCastleSelfApp *param0, u8 param1, u8 param2);
static void GetCursorSpritePos(BattleCastleSelfApp *app, u32 *x, u32 *y, u8 slot);
static u16 ov107_02244D5C(BattleCastleSelfApp *param0, u16 param1, u8 param2);
static u16 ov107_02244D90(u16 param0);
static u16 ov107_02244DE0(BattleCastleSelfApp *param0, u16 param1, u8 param2);
static void ov107_02244E14(BattleCastleSelfApp *param0, u16 *param1, u16 *param2, u16 *param3, u16 *param4);
static BOOL ov107_02244E44(BattleCastleSelfApp *param0, u8 param1, u8 param2);
static void ov107_0224503C(BattleCastleSelfApp *param0, u8 param1, u8 param2);
static u32 ov107_022450E8(BattleCastleSelfApp *param0, u8 param1);
static u32 ov107_02245114(BattleCastleSelfApp *param0, u8 param1);
static void ov107_02245140(BattleCastleSelfApp *param0, s8 param1);
static void ov107_0224518C(BattleCastleSelfApp *param0, s8 param1);
static void ov107_022451D8(BattleCastleSelfApp *param0);
static BOOL ov107_02245210(Pokemon *param0);
static void ov107_02245288(Window *param0);
BOOL ov107_0224529C(BattleCastleSelfApp *param0, u16 param1, u16 param2);
void ov107_022452F4(BattleCastleSelfApp *param0, u16 param1);
void ov107_02245338(int param0, int param1, void *param2, void *param3);
void ov107_02245368(BattleCastleSelfApp *param0, u16 param1, u16 param2);
void ov107_022453F8(BattleCastleSelfApp *param0, u16 param1);
void ov107_02245408(int param0, int param1, void *param2, void *param3);
void ov107_0224542C(BattleCastleSelfApp *param0);
void ov107_02245438(int param0, int param1, void *param2, void *param3);
static void ov107_02245454(Pokemon *param0, u16 param1);
static void ov107_02245464(BattleCastleSelfApp *param0, Window *param1);
static void ov107_022454F8(BattleCastleSelfApp *param0, u8 param1, u8 param2);
static void ov107_022455A0(BattleCastleSelfApp *param0, u8 param1, u16 param2);
static void ov107_02245618(BattleCastleSelfApp *param0);
static void ov107_02245650(BattleCastleSelfApp *param0, Window *param1);
static void ov107_02245660(BattleCastleSelfApp *param0);
static void ov107_022456E4(BattleCastleSelfApp *param0);
static void ov107_02245730(BattleCastleSelfApp *param0);
static void ov107_02245780(BattleCastleSelfApp *param0, Window *param1);
static void ov107_022459D0(BattleCastleSelfApp *param0, u8 param1, u8 param2);
static void ov107_02245B40(BattleCastleSelfApp *param0, u8 param1);
static void ov107_02245B90(BattleCastleSelfApp *param0, u8 param1);
static void ov107_02245BE0(BattleCastleSelfApp *param0);
static void ov107_02245C00(BattleCastleSelfApp *param0);
static void ov107_02245C94(BattleCastleSelfApp *param0, u8 param1, u8 param2);
extern void ov107_2243860(void);

static const u16 Unk_ov107_02249E00[] = {
    0x22,
    0x23,
    0x24
};

static const u16 Unk_ov107_02249E0C[] = {
    0xA,
    0x8,
    0xC
};

static const u32 Unk_ov107_02249FF0[][3] = {
    { 0x1, 0x13, 0x1 },
    { 0x2, 0x14, 0x2 },
    { 0x3, 0x15, 0x3 },
    { 0x1, 0x16, 0x4 },
    { 0x1, 0x17, 0xfffffffe }
};

static const u16 Unk_ov107_02249E46[3][3] = {
    { 0x0, 0x64, 0x64 },
    { 0x0, 0x64, 0x96 },
    { 0x0, 0x32, 0x32 }
};

static const u16 Unk_ov107_02249E34[3][3] = {
    { 0x0, 0x2A, 0x2B },
    { 0x0, 0x44, 0x45 },
    { 0x0, 0x0, 0x0 }
};

static const ListMenuTemplate Unk_ov107_02249EE4 = {
    NULL,
    ov107_0224440C,
    ov107_02244560,
    NULL,
    ((NELEMS(Unk_ov107_0224A02C)) + (NELEMS(Unk_ov107_02249F84))) + 1,
    0x7,
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

BOOL BattleCastleSelfApp_Init(ApplicationManager *appMan, int *state)
{
    Overlay_LoadByID(FS_OVERLAY_ID(overlay104), OVERLAY_LOAD_ASYNC);
    InitGraphicsPlane();
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_BATTLE_CASTLE_APP, 0x25000);

    BattleCastleSelfApp *app = ApplicationManager_NewData(appMan, sizeof(BattleCastleSelfApp), HEAP_ID_BATTLE_CASTLE_APP);
    memset(app, 0, sizeof(BattleCastleSelfApp));

    app->bgConfig = BgConfig_New(HEAP_ID_BATTLE_CASTLE_APP);
    app->appMan = appMan;

    UnkStruct_ov104_0223597C *v2 = ApplicationManager_Args(appMan);

    app->saveData = v2->saveData;
    app->unk_1D0 = sub_020302DC(app->saveData);
    app->unk_1D4 = sub_0203041C(app->saveData);
    app->challengeType = v2->unk_04;
    app->unk_438 = &v2->unk_20;
    app->options = SaveData_GetOptions(app->saveData);
    app->unk_43C = v2->unk_18;
    app->unk_12 = 0xff;
    app->unk_49A = v2->unk_28;
    app->frontier = SaveData_GetBattleFrontier(app->saveData);

    for (int i = 0; i < 3; i++) {
        app->unk_497[i] = 1;
    }

    if (!BattleCastle_IsMultiPlayerChallenge(app->challengeType)) {
        app->unk_14 = 3;
    } else {
        app->unk_14 = 4;
    }

    app->unk_15 = app->unk_14;
    app->unk_0C = (app->unk_15 - 1);

    LoadAssets(app);

    if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
        sub_0209BA80(app);
    }

    *state = 0;

    return TRUE;
}

BOOL BattleCastleSelfApp_Main(ApplicationManager *appMan, int *state)
{
    BattleCastleSelfApp *v0 = ApplicationManager_Data(appMan);

    if (v0->unk_496 == 1) {
        switch (*state) {
        case 1:
            v0->unk_496 = 0;
            ov107_022451D8(v0);

            if (v0->unk_414 != NULL) {
                BattleCastleAppSprite_Free(v0->unk_414);
                v0->unk_0E_2 = 0;
            }

            BattleCastleApp_DrawMessageBox(&v0->windows[6], Options_Frame(v0->options));
            BattleFrontier_SetPartnerInStrTemplate(v0->strTemplate, 0);

            v0->unk_0A = ov107_02243918(v0, 8, FONT_MESSAGE);

            ChangeState(v0, state, 3);
            break;
        }
    } else if (v0->unk_12 != 0xff) {
        switch (*state) {
        case 1:
        case 3:
            v0->unk_496 = 0;
            ov107_022451D8(v0);
            ChangeState(v0, state, 2);
            break;
        }
    }

    switch (*state) {
    case 0:
        if (State_FadeInApp(v0) == 1) {
            ChangeState(v0, state, 1);
        }
        break;
    case 1:
        if (ov107_02241EC8(v0) == 1) {
            if (v0->unk_0E_1 == 1) {
                ChangeState(v0, state, 2);
            } else {
                if (BattleCastle_IsMultiPlayerChallenge(v0->challengeType) == 1) {
                    ChangeState(v0, state, 3);
                } else {
                    ChangeState(v0, state, 4);
                }
            }
        }
        break;
    case 2:
        if (ov107_02242C64(v0) == 1) {
            ChangeState(v0, state, 1);
        }
        break;
    case 3:
        if (ov107_02242D60(v0) == 1) {
            ChangeState(v0, state, 4);
        }
        break;
    case 4:
        if (State_FadeOutApp(v0) == TRUE) {
            return TRUE;
        }
        break;
    }

    ov107_02245C00(v0);
    SpriteList_Update(v0->spriteMan.spriteList);

    return FALSE;
}

BOOL BattleCastleSelfApp_Exit(ApplicationManager *appMan, int *state)
{
    BattleCastleSelfApp *app = ApplicationManager_Data(appMan);
    *app->unk_438 = app->unk_0D;

    VramTransfer_Free();
    FreeAssets(app);

    ApplicationManager_FreeData(appMan);
    SetVBlankCallback(NULL, NULL);
    Heap_Destroy(HEAP_ID_BATTLE_CASTLE_APP);
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay104));

    return TRUE;
}

static BOOL State_FadeInApp(BattleCastleSelfApp *app)
{
    switch (app->subState) {
    case 0:
        if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
            CommTool_ClearReceivedTempDataAllPlayers();
            CommTiming_StartSync(215);
        }

        app->subState++;
        break;
    case 1:
        if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
            if (CommTiming_IsSyncState(215) == TRUE) {
                CommTool_ClearReceivedTempDataAllPlayers();
                app->subState++;
            }
        } else {
            app->subState++;
        }
        break;
    case 2:
        if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
            if (ov107_0224529C(app, 10, 0) == TRUE) {
                app->subState++;
            }
        } else {
            ov107_02241E70(app);
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 3, HEAP_ID_BATTLE_CASTLE_APP);
            app->subState++;
        }
        break;
    case 3:
        if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
            if (app->unk_0F >= 2) {
                app->unk_0F = 0;
                ov107_02241E70(app);
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

static void ov107_02241E70(BattleCastleSelfApp *param0)
{
    u16 v2, v3, v4, v5;
    ov107_02244E14(param0, &v2, &v3, &v4, &v5);

    Window *v7 = &param0->windows[0];
    Window_FillTilemap(v7, 0);

    ov107_02245464(param0, v7);
    ov107_02245780(param0, v7);
    ov107_02243CC0(param0, &param0->windows[3]);
    ov107_02243DB0(param0, &param0->windows[2]);
    ov107_02243FA4(param0);

    GXLayers_TurnBothDispOn();
    return;
}

static BOOL ov107_02241EC8(BattleCastleSelfApp *param0)
{
    u8 v2;
    u16 v3;
    u32 v6;
    Pokemon *v7;

    switch (param0->subState) {
    case 0:
        if (param0->unk_0E_5 == 1) {
            ov107_02244064(param0);
            ov107_02249C60(param0->unk_430, 204, 100);
            param0->subState = 2;
            param0->unk_0E_5 = 0;
            return 0;
        } else if (param0->unk_0E_5 == 2) {
            ov107_0224409C(param0);
            ov107_02249C60(param0->unk_430, 211, 106);
            param0->subState = 8;
            param0->unk_0E_5 = 0;
            return 0;
        }

        ov107_02244BD8(param0, gSystem.pressedKeys);

        if (gSystem.pressedKeys & PAD_BUTTON_A) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);

            if (param0->unk_0D >= param0->unk_15) {
                return 1;
            } else {
                ov107_0224400C(param0);
                ov107_02244018(param0);
                param0->subState = 1;
                break;
            }
        } else if (gSystem.pressedKeys & PAD_BUTTON_B) {
            if (param0->unk_0D != param0->unk_15) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                param0->unk_0D = param0->unk_15;
                ov107_02244C70(param0);
            }
            break;
        }
        break;
    case 1:
        v6 = ListMenu_ProcessInput(param0->unk_198);
        ov107_02249CE0(v6, 1500);

        switch (v6) {
        case 0xffffffff:
            break;
        case 0xfffffffe:
            ov107_0224403C(param0);
            ov107_02243FA4(param0);
            param0->subState = 0;
            break;
        case 0:
            ov107_0224403C(param0);
            ov107_02244064(param0);
            param0->subState = 2;
            break;
        case 5:
            ov107_0224403C(param0);
            ov107_0224409C(param0);
            param0->subState = 8;
            break;
        case 9:
            ov107_0224403C(param0);
            ov107_02245B40(param0, param0->unk_0D);
            param0->subState = 20;
            break;
        case 10:
            ov107_0224403C(param0);
            ov107_02245B90(param0, param0->unk_0D);
            param0->subState = 21;
            break;
        case 11:
            ov107_0224403C(param0);
            ov107_02243FA4(param0);
            param0->subState = 0;
            break;
        }
        break;
    case 2:
        ListMenu_CalcTrueCursorPos(param0->unk_198, &param0->unk_16);

        if (gSystem.pressedKeys & PAD_KEY_UP) {
            if (param0->unk_16 == 0) {
                ListMenu_TestInput(param0->unk_198, (ListMenuTemplate *)&param0->unk_1A0, 0, NELEMS(Unk_ov107_02249FF0) - 1, 1, PAD_KEY_DOWN, NULL, NULL);
                ListMenu_Draw(param0->unk_198);
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                ov107_0224379C(param0, &param0->windows[6], 28, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_MESSAGE);
                return 0;
            }
        } else if (gSystem.pressedKeys & PAD_KEY_DOWN) {
            if (param0->unk_16 == NELEMS(Unk_ov107_02249FF0) - 1) {
                ListMenu_TestInput(param0->unk_198, (ListMenuTemplate *)&param0->unk_1A0, 0, 0, 1, PAD_KEY_UP, NULL, NULL);
                ListMenu_Draw(param0->unk_198);
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                ov107_0224379C(param0, &param0->windows[6], 24, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_MESSAGE);
                return 0;
            }
        }

        v6 = ListMenu_ProcessInput(param0->unk_198);

        ov107_02249CE0(v6, 1500);
        ListMenu_CalcTrueCursorPos(param0->unk_198, &param0->unk_16);

        switch (v6) {
        case 0xffffffff:
            break;
        case 0xfffffffe:
            ov107_02245288(&param0->windows[6]);
            ov107_02244094(param0);
            ov107_02244018(param0);
            param0->subState = 1;
            break;
        case 1:
        case 2:
        case 3:
            param0->unk_13 = v6;
            ov107_02244094(param0);
            BattleCastleApp_DrawMessageBox(&param0->windows[6], Options_Frame(param0->options));

            v2 = ov107_02249CAC(param0->saveData, param0->challengeType, 0);

            if (v2 < Unk_ov107_02249FF0[param0->unk_16][0]) {
                param0->unk_0A = ov107_02243918(param0, 33, FONT_MESSAGE);
                param0->subState = 7;
            } else {
                ov107_02244A74(param0, 0, Unk_ov107_02249E0C[param0->unk_16], 3, 0);
                param0->unk_0A = ov107_02243918(param0, 55, FONT_MESSAGE);
                ov107_022441DC(param0);
                param0->subState = 3;
            }
            break;
        case 4:
            v2 = ov107_02249CAC(param0->saveData, param0->challengeType, 0);

            if (v2 == 3) {
                Sound_StopEffect(1500, 0);
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
            } else {
                param0->unk_13 = v6;
                ov107_02244094(param0);
                v3 = sub_02030698(param0->frontier, sub_0205E630(param0->challengeType), sub_0205E6A8(sub_0205E630(param0->challengeType)));
                ov107_02244A74(param0, 0, Unk_ov107_02249E46[0][v2], 4, 0);
                param0->unk_0A = ov107_02243918(param0, 38, FONT_MESSAGE);
                ov107_022441DC(param0);
                param0->subState = 4;
            }
            break;
        }
        break;
    case 3:
        v6 = Menu_ProcessInput(param0->unk_17C);

        switch (v6) {
        case 0xffffffff:
            break;
        case 0:
            v7 = Party_GetPokemonBySlotIndex(param0->unk_43C, ov107_02249C98(param0->unk_14, param0->unk_0D));
            ov107_02245618(param0);

            v3 = sub_02030698(param0->frontier, sub_0205E630(param0->challengeType), sub_0205E6A8(sub_0205E630(param0->challengeType)));
            v2 = ov107_02249CAC(param0->saveData, param0->challengeType, 0);

            if (v2 < Unk_ov107_02249FF0[param0->unk_16][0]) {
                BattleCastleApp_DrawMessageBox(&param0->windows[6], Options_Frame(param0->options));
                param0->unk_0A = ov107_02243918(param0, 33, FONT_MESSAGE);
                param0->subState = 7;
                break;
            }

            if (v3 < Unk_ov107_02249E0C[param0->unk_16]) {
                BattleCastleApp_DrawMessageBox(&param0->windows[6], Options_Frame(param0->options));
                param0->unk_0A = ov107_02243918(param0, 32, FONT_MESSAGE);
                param0->subState = 7;
                break;
            }

            if (param0->unk_16 == 0) {
                if (Pokemon_GetValue(v7, MON_DATA_HP, NULL) == Pokemon_GetValue(v7, MON_DATA_MAX_HP, NULL)) {
                    param0->unk_0A = ov107_02243918(param0, 37, FONT_MESSAGE);
                    param0->subState = 7;
                    break;
                }
            } else if (param0->unk_16 == 1) {
                if (ov107_02245210(v7) == 0) {
                    param0->unk_0A = ov107_02243918(param0, 37, FONT_MESSAGE);
                    param0->subState = 7;
                    break;
                }
            } else {
                if ((Pokemon_GetValue(v7, MON_DATA_HP, NULL) == Pokemon_GetValue(v7, MON_DATA_MAX_HP, NULL)) && (ov107_02245210(v7) == 0)) {
                    param0->unk_0A = ov107_02243918(param0, 37, FONT_MESSAGE);
                    param0->subState = 7;
                    break;
                }
            }

            ov107_02245288(&param0->windows[6]);

            if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 0) {
                ov104_0223BC2C(param0->frontier, param0->challengeType, Unk_ov107_02249E0C[param0->unk_13 - 1]);
                ov107_02245780(param0, &param0->windows[0]);
                ov107_022454F8(param0, param0->unk_0D, param0->unk_13);
                param0->subState = 18;
            } else {
                param0->unk_0E_1 = 1;
                return 1;
            }
            break;
        case 1:
        case 0xfffffffe:
            ov107_02245618(param0);
            ov107_02245288(&param0->windows[6]);
            ov107_02244064(param0);
            param0->subState = 2;
            break;
        }
        break;
    case 4:
        v6 = Menu_ProcessInput(param0->unk_17C);

        switch (v6) {
        case 0xffffffff:
            break;
        case 0:
            ov107_02245618(param0);

            v3 = sub_02030698(param0->frontier, sub_0205E630(param0->challengeType), sub_0205E6A8(sub_0205E630(param0->challengeType)));
            v2 = ov107_02249CAC(param0->saveData, param0->challengeType, 0);

            if (v3 < Unk_ov107_02249E46[0][v2]) {
                ov107_02245618(param0);
                BattleCastleApp_DrawMessageBox(&param0->windows[6], Options_Frame(param0->options));
                param0->unk_0A = ov107_02243918(param0, 41, FONT_MESSAGE);
                param0->subState = 7;
                break;
            }

            if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 0) {
                ov107_02245C94(param0, param0->unk_0D, 4);
                param0->subState = 5;
                break;
            } else {
                param0->unk_0E_1 = 1;
                return 1;
            }
            break;
        case 1:
        case 0xfffffffe:
            ov107_02245618(param0);
            ov107_02245288(&param0->windows[6]);
            ov107_02244064(param0);
            param0->subState = 2;
            break;
        }
        break;
    case 5:
        if (ov107_02244E44(param0, param0->unk_0D, param0->unk_13) == 1) {
            param0->subState = 6;
        }
        break;
    case 6:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov107_02245618(param0);
            ov107_02244064(param0);
            ov107_02249C60(param0->unk_430, 204, 100);
            param0->subState = 2;
        }
        break;
    case 7:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov107_02245288(&param0->windows[6]);
            ov107_02244064(param0);
            param0->subState = 2;
        }
        break;
    case 8:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        v6 = ListMenu_ProcessInput(param0->unk_198);
        ov107_02249CE0(v6, 1500);
        ListMenu_CalcTrueCursorPos(param0->unk_198, &param0->unk_16);

        switch (v6) {
        case 0xffffffff:
            break;
        case 0xfffffffe:
            ov107_02245288(&param0->windows[6]);
            ov107_022440C0(param0);
            ov107_02244018(param0);
            param0->subState = 1;
            break;
        case 6:
            param0->unk_13 = v6;
            ov107_02245288(&param0->windows[6]);
            ov107_022440C0(param0);
            ov107_022440C8(param0, 6);
            param0->subState = 9;
            break;
        case 7:
            param0->unk_13 = v6;

            ov107_02245288(&param0->windows[6]);
            ov107_022440C0(param0);

            v2 = ov107_02249CAC(param0->saveData, param0->challengeType, 1);

            if (v2 == 1) {
                BattleCastleApp_DrawMessageBox(&param0->windows[6], Options_Frame(param0->options));
                param0->unk_0A = ov107_02243918(param0, 54, FONT_MESSAGE);
                param0->subState = 14;
                return 0;
            }

            ov107_022440C8(param0, 7);
            param0->subState = 9;
            break;
        case 8:
            v2 = ov107_02249CAC(param0->saveData, param0->challengeType, 1);

            if (v2 == 3) {
                Sound_StopEffect(1500, 0);
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
            } else {
                param0->unk_13 = v6;
                ov107_022440C0(param0);
                ov107_02244A74(param0, 0, Unk_ov107_02249E46[1][v2], 4, 0);
                param0->unk_0A = ov107_02243918(param0, 38, FONT_MESSAGE);
                ov107_022441DC(param0);
                param0->subState = 11;
            }
            break;
        }
        break;
    case 9:
        v6 = ListMenu_ProcessInput(param0->unk_198);
        ov107_02249CE0(v6, 1500);
        ListMenu_CalcTrueCursorPos(param0->unk_198, &param0->unk_16);

        switch (v6) {
        case 0xffffffff:
            break;
        case 0xfffffffe:
            ov107_02244120(param0);
            ov107_0224409C(param0);
            param0->subState = 8;
            break;
        default:
            Window_ClearAndScheduleCopyToVRAM(&param0->windows[12]);

            BattleCastleApp_DrawMessageBox(&param0->windows[6], Options_Frame(param0->options));
            ov107_02244A74(param0, 0, ov107_02244D5C(param0, param0->unk_16, param0->unk_13), 3, 0);

            param0->unk_0A = ov107_02243918(param0, 55, FONT_MESSAGE);

            ov107_022441DC(param0);
            BattleCastleAppSprite_SetDrawFlag(param0->itemSprite, 0);

            param0->subState = 10;
            break;
        }
        break;
    case 10:
        v7 = Party_GetPokemonBySlotIndex(param0->unk_43C, ov107_02249C98(param0->unk_14, param0->unk_0D));
        v6 = Menu_ProcessInput(param0->unk_17C);

        switch (v6) {
        case 0xffffffff:
            break;
        case 0:
            ov107_02245618(param0);
            v3 = sub_02030698(param0->frontier, sub_0205E630(param0->challengeType), sub_0205E6A8(sub_0205E630(param0->challengeType)));

            if (v3 < ov107_02244D5C(param0, param0->unk_16, param0->unk_13)) {
                BattleCastleApp_DrawMessageBox(&param0->windows[6], Options_Frame(param0->options));
                param0->unk_0A = ov107_02243918(param0, 32, FONT_MESSAGE);

                BattleCastleAppSprite_SetDrawFlag(param0->itemSprite, 0);
                param0->subState = 15;
                break;
            }

            if (Pokemon_GetValue(v7, MON_DATA_HELD_ITEM, NULL) == 0) {
                if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 0) {
                    ov107_02244120(param0);
                    BattleCastleApp_DrawMessageBox(&param0->windows[6], Options_Frame(param0->options));
                    ov104_0223BC2C(param0->frontier, param0->challengeType, ov107_02244D5C(param0, param0->unk_16, param0->unk_13));
                    ov107_02245780(param0, &param0->windows[0]);
                    ov107_022455A0(param0, param0->unk_0D, ov107_02244DE0(param0, param0->unk_16, param0->unk_13));
                    param0->subState = 18;
                } else {
                    param0->unk_10 = ov107_02244DE0(param0, param0->unk_16, param0->unk_13);
                    ov107_02244120(param0);
                    ov107_02245288(&param0->windows[6]);
                    param0->unk_0E_1 = 1;
                    return 1;
                }
            } else {
                ov107_02244A8C(param0, 0, Pokemon_GetBoxPokemon(v7));
                StringTemplate_SetItemNameWithArticle(param0->strTemplate, 1, Pokemon_GetValue(v7, MON_DATA_HELD_ITEM, NULL));
                param0->unk_0A = ov107_02243918(param0, 60, FONT_MESSAGE);
                param0->subState = 16;
            }
            break;
        case 1:
        case 0xfffffffe:
            ov107_02245618(param0);
            ov107_022456E4(param0);
            param0->subState = 9;
            break;
        }
        break;
    case 11:
        v6 = Menu_ProcessInput(param0->unk_17C);

        switch (v6) {
        case 0xffffffff:
            break;
        case 0:
            ov107_02245618(param0);

            v3 = sub_02030698(param0->frontier, sub_0205E630(param0->challengeType), sub_0205E6A8(sub_0205E630(param0->challengeType)));
            v2 = ov107_02249CAC(param0->saveData, param0->challengeType, 1);

            if (v3 < Unk_ov107_02249E46[1][v2]) {
                ov107_02245618(param0);
                BattleCastleApp_DrawMessageBox(&param0->windows[6], Options_Frame(param0->options));
                param0->unk_0A = ov107_02243918(param0, 41, FONT_MESSAGE);
                param0->subState = 14;
                break;
            }

            if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 0) {
                ov107_02245C94(param0, param0->unk_0D, 8);
                param0->subState = 12;
                break;
            } else {
                param0->unk_0E_1 = 1;
                return 1;
            }
            break;
        case 1:
        case 0xfffffffe:
            ov107_02245618(param0);
            ov107_02245288(&param0->windows[6]);
            ov107_0224409C(param0);
            param0->subState = 8;
            break;
        }
        break;
    case 12:
        if (ov107_02244E44(param0, param0->unk_0D, param0->unk_13) == 1) {
            param0->subState = 13;
        }
        break;
    case 13:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov107_02245618(param0);
            ov107_0224409C(param0);
            ov107_02249C60(param0->unk_430, 211, 106);
            param0->subState = 8;
        }
        break;
    case 14:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov107_02245288(&param0->windows[6]);
            ov107_0224409C(param0);
            param0->subState = 8;
        }
        break;
    case 15:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov107_022456E4(param0);
            param0->subState = 9;
        }
        break;
    case 16:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            param0->unk_0A = ov107_02243918(param0, 61, FONT_MESSAGE);
            ov107_022441DC(param0);
            param0->subState = 17;
        }
        break;
    case 17:
        v6 = Menu_ProcessInput(param0->unk_17C);

        switch (v6) {
        case 0xffffffff:
            break;
        case 0:
            ov107_02245618(param0);

            if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 0) {
                ov107_02244120(param0);
                BattleCastleApp_DrawMessageBox(&param0->windows[6], Options_Frame(param0->options));
                ov104_0223BC2C(param0->frontier, param0->challengeType, ov107_02244D5C(param0, param0->unk_16, param0->unk_13));
                ov107_02245780(param0, &param0->windows[0]);
                ov107_022455A0(param0, param0->unk_0D, ov107_02244DE0(param0, param0->unk_16, param0->unk_13));
                param0->subState = 18;
            } else {
                param0->unk_10 = ov107_02244DE0(param0, param0->unk_16, param0->unk_13);
                ov107_02244120(param0);
                ov107_02245288(&param0->windows[6]);
                param0->unk_0E_1 = 1;
                return 1;
            }
            break;
        case 1:
        case 0xfffffffe:
            ov107_02245618(param0);
            ov107_022456E4(param0);
            param0->subState = 9;
            break;
        }
        break;
    case 18:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);

        if (ov107_02244E44(param0, param0->unk_0D, param0->unk_13) == 1) {
            param0->subState = 19;
        }
        break;
    case 19:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov107_02245288(&param0->windows[6]);
            ov107_02243FA4(param0);
            param0->subState = 0;
        }
        break;
    case 20:
        if (gSystem.pressedKeys & PAD_KEY_LEFT) {
            ov107_02245140(param0, -1);
        } else if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
            ov107_02245140(param0, 1);
        } else if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov107_02245BE0(param0);
            ov107_02244018(param0);
            param0->subState = 1;
        }
        break;
    case 21:
        if (gSystem.pressedKeys & PAD_KEY_LEFT) {
            ov107_0224518C(param0, -1);
        } else if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
            ov107_0224518C(param0, 1);
        } else if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov107_02245BE0(param0);
            ov107_02244018(param0);
            param0->subState = 1;
        }
        break;
    }

    return 0;
}

static BOOL ov107_02242C64(BattleCastleSelfApp *param0)
{
    u8 v0;

    switch (param0->subState) {
    case 0:
        param0->unk_0E_5 = 0;
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);

        if (ov107_0224529C(param0, 11, param0->unk_0D) == 1) {
            param0->unk_0E_1 = 0;
            param0->subState++;
        }
        break;
    case 1:
        if (param0->unk_12 == 0xff) {
            break;
        }

        param0->unk_0F = 0;

        if ((param0->unk_13 == 4) || (param0->unk_13 == 8)) {
            ov107_02245C94(param0, param0->unk_12, param0->unk_13);
        } else {
            ov107_022459D0(param0, param0->unk_12, param0->unk_13);
        }

        param0->subState++;
        break;
    case 2:
        v0 = ov107_02249C9C(param0->unk_15, param0->unk_12);

        if (ov107_02244E44(param0, v0, param0->unk_13) == 1) {
            param0->unk_0B = 30;
            param0->subState++;
        }
        break;
    case 3:
        param0->unk_0B--;

        if (param0->unk_0B == 0) {
            CommTool_ClearReceivedTempDataAllPlayers();
            CommTiming_StartSync(130);
            param0->subState++;
            break;
        }
        break;
    case 4:
        if (CommTiming_IsSyncState(130) == 1) {
            CommTool_ClearReceivedTempDataAllPlayers();
            CommTool_Init(100);

            param0->unk_12 = 0xff;

            if (param0->unk_0E_5 == 0) {
                ov107_02245288(&param0->windows[6]);
                ov107_02243FA4(param0);
            }

            param0->unk_496 = 0;
            return 1;
        }

        break;
    }

    return 0;
}

static BOOL ov107_02242D60(BattleCastleSelfApp *param0)
{
    switch (param0->subState) {
    case 0:
        if (ov107_0224529C(param0, 13, 0) == 1) {
            param0->unk_0B = 30;
            param0->subState++;
        }
        break;
    case 1:
        if (param0->unk_0B > 0) {
            param0->unk_0B--;
        }

        if (param0->unk_0B == 0) {
            CommTool_ClearReceivedTempDataAllPlayers();
            CommTiming_StartSync(131);
            param0->subState++;
        }
        break;
    case 2:
        if (CommTiming_IsSyncState(131) == 1) {
            CommTool_ClearReceivedTempDataAllPlayers();
            ov107_02245288(&param0->windows[6]);
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL State_FadeOutApp(BattleCastleSelfApp *app)
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

static void FreeAssets(BattleCastleSelfApp *app)
{
    BattleCastleAppSprite_Free(app->upArrowSprite);
    BattleCastleAppSprite_Free(app->downArrowSprite);
    BattleCastleAppSprite_Free(app->itemSprite);

    BattleCastleAppSprite_Free(app->unk_430);
    BattleCastleAppSprite_Free(app->cursorSprite);
    BattleCastleAppSprite_Free(app->unk_41C);
    BattleCastleAppSprite_Free(app->unk_434);

    u8 numMons = ov104_0223B7A8(app->challengeType, 1);

    for (int i = 0; i < numMons; i++) {
        BattleCastleAppSprite_Free(app->monSprites[i]);
        BattleCastleAppSprite_Free(app->itemIconSprites[i]);
        BattleCastleAppSprite_Free(app->barSprites[i]);
    }

    NetworkIcon_Destroy();

    PaletteData_FreeBuffer(app->plttData, PLTTBUF_MAIN_OBJ);
    PaletteData_FreeBuffer(app->plttData, PLTTBUF_MAIN_BG);
    PaletteData_Free(app->plttData);

    app->plttData = NULL;

    BattleCastleApp_FreeSprites(&app->spriteMan);

    MessageLoader_Free(app->msgLoader);
    MessageLoader_Free(app->itemMsgLoader);
    StringTemplate_Free(app->strTemplate);
    String_Free(app->displayStr);
    String_Free(app->fmtStr);
    FontSpecialChars_Free(app->specialChars);

    for (int i = 0; i < 3; i++) {
        String_Free(app->unk_30[i]);
    }

    BattleCastleApp_FreeWindows(app->windows, FALSE);
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

static void LoadAssets(BattleCastleSelfApp *app)
{

    app->narc = NARC_ctor(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, HEAP_ID_BATTLE_CASTLE_APP);

    LoadBackgrounds(app);
    InitSpriteManager(app);

    app->msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0199, HEAP_ID_BATTLE_CASTLE_APP);
    app->itemMsgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_ITEM_DESCRIPTIONS, HEAP_ID_BATTLE_CASTLE_APP);
    app->strTemplate = StringTemplate_Default(HEAP_ID_BATTLE_CASTLE_APP);
    app->displayStr = String_Init(600, HEAP_ID_BATTLE_CASTLE_APP);
    app->fmtStr = String_Init(600, HEAP_ID_BATTLE_CASTLE_APP);

    for (int i = 0; i < 3; i++) {
        app->unk_30[i] = String_Init(32, HEAP_ID_BATTLE_CASTLE_APP);
    }

    Font_LoadTextPalette(0, 13 * PALETTE_SIZE_BYTES, HEAP_ID_BATTLE_CASTLE_APP);
    Font_LoadScreenIndicatorsPalette(0, 12 * PALETTE_SIZE_BYTES, HEAP_ID_BATTLE_CASTLE_APP);

    app->specialChars = FontSpecialChars_Init(1, 2, 0, HEAP_ID_BATTLE_CASTLE_APP);

    BattleCastleApp_InitWindows(app->bgConfig, app->windows, FALSE);

    u16 unused1, unused2, unused3, unused4;
    ov107_02244E14(app, &unused1, &unused2, &unused3, &unused4);

    app->upArrowSprite = BattleCastleAppSprite_New(&app->spriteMan, 0, 0, 0, 4, 160, 10, 0, NULL);
    app->downArrowSprite = BattleCastleAppSprite_New(&app->spriteMan, 0, 0, 0, 5, 160, 124, 0, NULL);

    BattleCastleAppSprite_SetDrawFlag(app->upArrowSprite, FALSE);
    BattleCastleAppSprite_SetDrawFlag(app->downArrowSprite, FALSE);

    u16 xOffset, iconXOffset;
    if (!BattleCastle_IsMultiPlayerChallenge(app->challengeType)) {
        xOffset = 64;
        iconXOffset = 64 + 8;
    } else {
        xOffset = 32;
        iconXOffset = 32 + 8;
    }

    u8 numMons = ov104_0223B7A8(app->challengeType, 1);

    for (int i = 0; i < numMons; i++) {
        app->itemIconSprites[i] = BattleCastleAppSprite_New(&app->spriteMan, 2, 2, 2, 0, 64 * i + iconXOffset, 58 + 4, 2, NULL);

        Pokemon *mon = Party_GetPokemonBySlotIndex(app->unk_43C, i);

        if (!Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL)) {
            BattleCastleAppSprite_SetDrawFlag(app->itemIconSprites[i], FALSE);
        }

        u32 hp = Pokemon_GetValue(mon, MON_DATA_HP, NULL);
        u32 maxHp = Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL);
        u32 v4 = ov107_022450E8(app, HealthBar_Color(hp, maxHp, 48));
        u32 v5 = ov107_02245114(app, HealthBar_Color(hp, maxHp, 48));

        app->barSprites[i] = BattleCastleAppSprite_New(&app->spriteMan, 0, 0, 0, v5, 64 * i + xOffset, 58 + 20, 3, NULL);
        app->monSprites[i] = BattleCastleAppSprite_New(&app->spriteMan, 3 + i, 3, 3, v4, 64 * i + xOffset, 58, 2, NULL);

        BattleCastleAppSprite_UpdatePalette(app->monSprites[i], Party_GetPokemonBySlotIndex(app->unk_43C, i));
    }

    app->itemSprite = BattleCastleAppSprite_New(&app->spriteMan, 1, 1, 1, 0, 24, 162, 0, NULL);

    BattleCastleApp_SetItemGraphic(&app->spriteMan, ITEM_POTION);
    BattleCastleApp_SetItemPalette(&app->spriteMan, ITEM_POTION);
    BattleCastleAppSprite_SetDrawFlag(app->itemSprite, FALSE);

    u32 x, y;
    GetCursorSpritePos(app, &x, &y, 0);

    app->cursorSprite = BattleCastleAppSprite_New(&app->spriteMan, 0, 0, 0, 1, x, y, 2, NULL);
    app->unk_41C = BattleCastleAppSprite_New(&app->spriteMan, 0, 0, 0, 2, x, y, 2, NULL);

    if (!BattleCastle_IsMultiPlayerChallenge(app->challengeType)) {
        BattleCastleAppSprite_SetDrawFlag(app->unk_41C, FALSE);
    }

    app->unk_430 = BattleCastleAppSprite_New(&app->spriteMan, 0, 0, 0, 11, 20, 20, 0, NULL);
    BattleCastleAppSprite_SetDrawFlag(app->unk_430, FALSE);

    app->unk_434 = BattleCastleAppSprite_New(&app->spriteMan, 0, 0, 0, 3, 20, 20, 1, NULL);
    BattleCastleAppSprite_SetDrawFlag(app->unk_434, FALSE);

    if (CommSys_IsInitialized()) {
        ReserveVramForWirelessIconChars(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_32K);
        ReserveSlotsForWirelessIconPalette(NNS_G2D_VRAM_TYPE_2DMAIN);
        sub_02039734();
    }

    SetVBlankCallback(VBlankCallback, app);
}

static void LoadBackgrounds(BattleCastleSelfApp *app)
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

static void InitSpriteManager(BattleCastleSelfApp *app)
{
    BattleCastleApp_InitSpriteManager(&app->spriteMan, app->unk_43C, BattleCastle_IsMultiPlayerChallenge(app->challengeType));
}

static void FreeBackgrounds(BgConfig *bgConfig)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, 0);

    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_0);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_0);

    Heap_Free(bgConfig);
}

static void VBlankCallback(void *data)
{
    BattleCastleSelfApp *app = data;

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

static void LoadMainBackground(BattleCastleSelfApp *app, enum BgLayer bgLayer)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(app->narc, BATTLE_CASTLE_SELF_APP_TILES, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);

    if (!BattleCastle_IsMultiPlayerChallenge(app->challengeType)) {
        Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_CASTLE_SELF_APP_SOLO_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);
    } else {
        Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_CASTLE_SELF_APP_MULTI_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);
    }
}

static void LoadPalette(void)
{
    NNSG2dPaletteData *plttData;
    void *pltt = Graphics_GetPlttData(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, BATTLE_CASTLE_SELF_APP_PLTT, &plttData, HEAP_ID_BATTLE_CASTLE_APP);

    DC_FlushRange(plttData->pRawData, PALETTE_SIZE_BYTES * 4);
    GX_LoadBGPltt(plttData->pRawData, 0, PALETTE_SIZE_BYTES * 4);
    Heap_Free(pltt);
}

static void LoadSummaryBackground(BattleCastleSelfApp *app, enum BgLayer bgLayer)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(app->narc, BATTLE_CASTLE_SELF_APP_TILES, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_CASTLE_SELF_APP_SUMMARY_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);
}

static void LoadPalette2(void)
{
    NNSG2dPaletteData *plttData;
    void *pltt = Graphics_GetPlttData(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, BATTLE_CASTLE_SELF_APP_PLTT, &plttData, HEAP_ID_BATTLE_CASTLE_APP);

    DC_FlushRange(plttData->pRawData, PALETTE_SIZE_BYTES * 4);
    GX_LoadBGPltt(plttData->pRawData, 0, PALETTE_SIZE_BYTES * 4);

    Heap_Free(pltt);
}

static void LoadMovesListBackground(BattleCastleSelfApp *app, enum BgLayer bgLayer)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(app->narc, BATTLE_CASTLE_SELF_APP_TILES, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_CASTLE_SELF_APP_MOVES_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);
}

static void LoadItemSelectBackground(BattleCastleSelfApp *app, enum BgLayer bgLayer)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(app->narc, BATTLE_CASTLE_SELF_APP_TILES, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_CASTLE_SELF_APP_ITEMS_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);
}

static void LoadSubScreenBackground(BattleCastleSelfApp *app, enum BgLayer bgLayer)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(app->narc, BATTLE_FRONTIER_APP_SUB_SCREEN_TILES, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_FRONTIER_APP_SUB_SCREEN_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);
    Graphics_LoadPaletteFromOpenNARC(app->narc, BATTLE_FRONTIER_APP_SUB_SCREEN_PLTT, PAL_LOAD_SUB_BG, 0, PALETTE_SIZE_BYTES, HEAP_ID_BATTLE_CASTLE_APP);
}

static u8 ov107_0224379C(BattleCastleSelfApp *param0, Window *param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9)
{
    ov107_022437CC(param0, param1, param2, param3, param4, param5, param6, param7, param8, param9, 0);
}

static u8 ov107_022437CC(BattleCastleSelfApp *param0, Window *param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9, int param10)
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

static u8 ov107_02243860(BattleCastleSelfApp *param0, Window *param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9)
{
    return ov107_02243890(param0, param1, param2, param3, param4, param5, param6, param7, param8, param9, 0);
}

static u8 ov107_02243890(BattleCastleSelfApp *param0, Window *param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9, u32 param10)
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

static u8 ov107_02243918(BattleCastleSelfApp *param0, int param1, u8 param2)
{
    u8 v0 = ov107_0224379C(param0, &param0->windows[6], param1, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, param2);
    Window_ScheduleCopyToVRAM(&param0->windows[6]);

    return v0;
}

static void ov107_02243950(BattleCastleSelfApp *param0, Window *window, Pokemon *mon)
{
    Window_FillTilemap(window, 0);

    StringTemplate_SetItemName(param0->strTemplate, 0, Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL));
    ov107_02243B5C(param0, window, 70, 0, 8, 0);
    ov107_02243B5C(param0, window, 71, 64, 8, 0);

    StringTemplate_SetNatureName(param0->strTemplate, 0, Pokemon_GetNature(mon));
    ov107_02243B5C(param0, window, 72, 0, 24, 0);
    ov107_02243B5C(param0, window, 73, 64, 24, 0);

    StringTemplate_SetAbilityName(param0->strTemplate, 0, Pokemon_GetValue(mon, MON_DATA_ABILITY, NULL));
    ov107_02243B5C(param0, window, 74, 0, 40, 0);
    ov107_02243B5C(param0, window, 75, 64, 40, 0);

    ov107_02244A74(param0, 0, Pokemon_GetValue(mon, MON_DATA_ATK, NULL), 3, 1);
    ov107_02243B5C(param0, window, 76, 0, 56, 0);
    ov107_02243B5C(param0, window, 77, 80, 56, 2);

    ov107_02244A74(param0, 0, Pokemon_GetValue(mon, MON_DATA_DEF, NULL), 3, 1);
    ov107_02243B5C(param0, window, 78, 96, 56, 0);
    ov107_02243B5C(param0, window, 79, 176, 56, 2);

    ov107_02244A74(param0, 0, Pokemon_GetValue(mon, MON_DATA_SP_ATK, NULL), 3, 1);
    ov107_02243B5C(param0, window, 80, 0, 72, 0);
    ov107_02243B5C(param0, window, 81, 80, 72, 2);

    ov107_02244A74(param0, 0, Pokemon_GetValue(mon, MON_DATA_SP_DEF, NULL), 3, 1);
    ov107_02243B5C(param0, window, 82, 96, 72, 0);
    ov107_02243B5C(param0, window, 83, 176, 72, 2);

    ov107_02244A74(param0, 0, Pokemon_GetValue(mon, MON_DATA_SPEED, NULL), 3, 1);
    ov107_02243B5C(param0, window, 84, 0, 88, 0);
    ov107_02243B5C(param0, window, 85, 80, 88, 2);

    Window_ScheduleCopyToVRAM(window);
}

static void ov107_02243B5C(BattleCastleSelfApp *param0, Window *param1, int param2, u16 param3, u16 param4, int param5)
{
    ov107_02243890(param0, param1, param2, param3, param4, TEXT_SPEED_NO_TRANSFER, 1, 2, 0, FONT_SYSTEM, param5);
}

static void ov107_02243B84(BattleCastleSelfApp *param0, Window *param1, Pokemon *param2)
{
    Window_FillTilemap(param1, 0);

    ov107_02243C18(param0, param1, 0, 88, 92, param2, 54, 58, 66);
    ov107_02243C18(param0, param1, 1, 89, 92, param2, 55, 59, 67);
    ov107_02243C18(param0, param1, 2, 90, 92, param2, 56, 60, 68);
    ov107_02243C18(param0, param1, 3, 91, 92, param2, 57, 61, 69);

    Window_ScheduleCopyToVRAM(param1);
}

static void ov107_02243C18(BattleCastleSelfApp *param0, Window *param1, u8 param2, u32 param3, u32 param4, Pokemon *param5, u32 param6, u32 param7, u32 param8)
{
    u16 v0 = 24;
    u16 v1 = 12 + (param2 * 24);
    u16 v2 = 137;
    u16 v3 = 12 + (param2 * 24);

    StringTemplate_SetMoveName(param0->strTemplate, param2, Pokemon_GetValue(param5, param6, NULL));
    param0->unk_0A = ov107_02243860(param0, param1, param3, v0, v1, TEXT_SPEED_NO_TRANSFER, 1, 2, 0, FONT_SYSTEM);

    ov107_02244A74(param0, 4, Pokemon_GetValue(param5, param7, NULL), MON_DATA_CHECKSUM_FAILED, 0);
    ov107_02244A74(param0, 5, Pokemon_GetValue(param5, param8, NULL), MON_DATA_CHECKSUM_FAILED, 0);
    param0->unk_0A = ov107_02243890(param0, param1, param4, v2, v3, TEXT_SPEED_NO_TRANSFER, 1, 2, 0, FONT_SYSTEM, 1);
}

static void ov107_02243CC0(BattleCastleSelfApp *param0, Window *param1)
{
    Window_FillTilemap(param1, 0);

    u8 v1 = ov104_0223B7A8(param0->challengeType, 1);

    for (int v0 = 0; v0 < v1; v0++) {
        ov107_02243CFC(param0, param1, v0, 0);
    }

    Window_ScheduleCopyToVRAM(param1);
}

static void ov107_02243CFC(BattleCastleSelfApp *param0, Window *param1, u8 param2, u8 param3)
{
    u16 v0, v1, v2, v3, v4, v5, v6;
    Pokemon *v7 = Party_GetPokemonBySlotIndex(param0->unk_43C, param2);

    if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 0) {
        v0 = 36;
    } else {
        v0 = 4;
    }

    if (param3 == 0) {
        v1 = v0 + (64 * param2);
        v2 = 1;
        v5 = 24 + v0 + (64 * param2);
        v6 = 1;
        v3 = 32 + v0 + (64 * param2);
        v4 = 1;
    } else {
        v1 = 4;
        v2 = 0;
        v5 = 24 + 4;
        v6 = 0;
        v3 = 32 + 4;
        v4 = 0;
    }

    FontSpecialChars_DrawPartyScreenHPText(param0->specialChars, Pokemon_GetValue(v7, MON_DATA_HP, NULL), 3, 1, param1, v1, v2);
    FontSpecialChars_DrawPartyScreenLevelText(param0->specialChars, 0, param1, v5, v6);
    FontSpecialChars_DrawPartyScreenHPText(param0->specialChars, Pokemon_GetValue(v7, MON_DATA_MAX_HP, NULL), 3, 0, param1, v3, v4);
}

static void ov107_02243DB0(BattleCastleSelfApp *param0, Window *param1)
{
    u8 v1 = ov104_0223B7A8(param0->challengeType, 1);

    for (int v0 = 0; v0 < v1; v0++) {
        ov107_02243DE4(param0, param1, v0, 0);
    }

    Window_ScheduleCopyToVRAM(param1);
}

static void ov107_02243DE4(BattleCastleSelfApp *param0, Window *param1, u8 param2, u8 param3)
{
    u16 v5, v6;
    if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 0) {
        v5 = 40;
        v6 = 80;
    } else {
        v5 = 8;
        v6 = 48;
    }

    Pokemon *v7 = Party_GetPokemonBySlotIndex(param0->unk_43C, param2);

    u32 v1, v2, v3, v4;
    if (param3 == 0) {
        v1 = v5 + (64 * param2);
        v2 = 1;
        v3 = v6 + (64 * param2);
        v4 = 1;
    } else {
        v1 = 4;
        v2 = 0;
        v3 = (8 * 6);
        v4 = 0;
    }

    FontSpecialChars_DrawPartyScreenText(param0->specialChars, 1, Pokemon_GetValue(v7, MON_DATA_LEVEL, NULL), 3, 0, param1, v1, v2);
    u32 v0 = Pokemon_GetValue(v7, MON_DATA_GENDER, NULL);
    ov107_02244B8C(param0, param1, v3, v4, FONT_SYSTEM, v0);
}

static void ov107_02243E74(BattleCastleSelfApp *param0, Window *param1)
{
    u16 v0 = sub_02030698(param0->frontier, sub_0205E630(param0->challengeType), sub_0205E6A8(sub_0205E630(param0->challengeType)));

    BattleCastleApp_DrawWindow(param0->bgConfig, param1);
    Window_FillTilemap(param1, 15);

    ov107_02244AB4(param0, param1, 1, 1, FONT_SYSTEM);
    ov107_02244A74(param0, 0, v0, 4, 1);

    param0->unk_0A = ov107_02243860(param0, param1, 4, 16, 1 * 16, TEXT_SPEED_NO_TRANSFER, 1, 2, 0, FONT_SYSTEM);
    Window_ScheduleCopyToVRAM(param1);
}

static u8 ov107_02243EF8(BattleCastleSelfApp *param0, Window *param1, u16 param2)
{
    Window_FillTilemap(param1, 0);
    MessageLoader_GetString(param0->itemMsgLoader, param2, param0->fmtStr);
    StringTemplate_Format(param0->strTemplate, param0->displayStr, param0->fmtStr);

    u8 v0 = Text_AddPrinterWithParamsAndColor(param1, FONT_SYSTEM, param0->displayStr, 0, 6, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    Window_ScheduleCopyToVRAM(param1);
    return v0;
}

static void ov107_02243F4C(BattleCastleSelfApp *param0, Window *param1, u8 param2, u32 param3)
{
    u16 v0;

    if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 0) {
        v0 = 36;
    } else {
        v0 = 4;
    }

    Window_FillRectWithColor(param1, 0, v0 + (64 * param2), 0, 8 * 3, 9);
    FontSpecialChars_DrawPartyScreenHPText(param0->specialChars, param3, 3, 1, param1, v0 + (64 * param2), 1);
    Window_ScheduleCopyToVRAM(param1);
}

static void ov107_02243FA4(BattleCastleSelfApp *param0)
{
    param0->unk_0A = ov107_022437CC(param0, &param0->windows[1], 6, 16, 1 + 4, TEXT_SPEED_NO_TRANSFER, 1, 2, 0, FONT_SYSTEM, 1);
    BattleCastleApp_DrawMessageBox(&param0->windows[7], Options_Frame(param0->options));
    param0->unk_0A = ov107_0224379C(param0, &param0->windows[7], 5, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_MESSAGE);
}

static void ov107_0224400C(BattleCastleSelfApp *param0)
{
    ov107_02245288(&param0->windows[7]);
}

static void ov107_02244018(BattleCastleSelfApp *param0)
{
    BattleCastleApp_DrawMessageBox(&param0->windows[8], Options_Frame(param0->options));
    param0->unk_16 = 0;
    ov107_02244944(param0);
}

static void ov107_0224403C(BattleCastleSelfApp *param0)
{
    ListMenu_GetListAndCursorPos(param0->unk_198, &param0->unk_18, &param0->unk_1A);

    ov107_02245288(&param0->windows[8]);
    ov107_02245730(param0);
}

static void ov107_02244064(BattleCastleSelfApp *param0)
{
    BattleCastleApp_DrawMessageBox(&param0->windows[6], Options_Frame(param0->options));

    param0->unk_0A = ov107_02243918(param0, 24, FONT_MESSAGE);
    param0->unk_16 = 0;

    ov107_022445C4(param0);
}

static void ov107_02244094(BattleCastleSelfApp *param0)
{
    ov107_02245730(param0);
}

static void ov107_0224409C(BattleCastleSelfApp *param0)
{
    BattleCastleApp_DrawMessageBox(&param0->windows[6], Options_Frame(param0->options));
    param0->unk_16 = 0;
    ov107_02244780(param0);
}

static void ov107_022440C0(BattleCastleSelfApp *param0)
{
    ov107_02245730(param0);
}

static void ov107_022440C8(BattleCastleSelfApp *param0, u8 param1)
{
    param0->unk_0E_3 = 1;

    ov107_02245288(&param0->windows[6]);

    Window_ClearAndCopyToVRAM(&param0->windows[6]);
    Window_ClearAndCopyToVRAM(&param0->windows[9]);

    LoadItemSelectBackground(param0, 2);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
    Window_ClearAndScheduleCopyToVRAM(&param0->windows[4]);

    param0->unk_16 = 0;

    ov107_02244240(param0, param1);
    ov107_02243E74(param0, &param0->windows[15]);
}

static void ov107_02244120(BattleCastleSelfApp *param0)
{
    if (param0->unk_0E_3 == 1) {
        param0->unk_0E_3 = 0;
        Window_ClearAndScheduleCopyToVRAM(&param0->windows[12]);
        ov107_02245730(param0);
        ov107_02245660(param0);
    }
}

static void ov107_0224414C(BattleCastleSelfApp *param0, Window *param1, u8 param2)
{
    for (int v0 = 0; v0 < 3; v0++) {
        param0->unk_180[v0].entry = NULL;
        param0->unk_180[v0].index = 0;
    }

    param0->unk_170.choices = param0->unk_180;
    param0->unk_170.window = param1;
    param0->unk_170.fontID = FONT_SYSTEM;
    param0->unk_170.xSize = 1;
    param0->unk_170.ySize = param2;
    param0->unk_170.lineSpacing = 0;
    param0->unk_170.suppressCursor = FALSE;
    param0->unk_170.loopAround = TRUE;
}

static void ov107_022441B0(BattleCastleSelfApp *param0, u8 param1, u8 param2, int param3)
{
    MessageLoader_GetString(param0->msgLoader, param3, param0->unk_30[param1]);

    param0->unk_180[param1].entry = param0->unk_30[param1];
    param0->unk_180[param1].index = param2;
}

static void ov107_022441DC(BattleCastleSelfApp *param0)
{
    BattleCastleApp_DrawWindow(param0->bgConfig, &param0->windows[13]);
    ov107_0224414C(param0, &param0->windows[13], 2);
    ov107_022441B0(param0, 0, 0, 30);
    ov107_022441B0(param0, 1, 1, 31);

    param0->unk_17C = Menu_NewAndCopyToVRAM(&param0->unk_170, 8, 0, 0, 100, PAD_BUTTON_B);
    param0->unk_0E_4 = 1;
}

static void ov107_02244240(BattleCastleSelfApp *param0, u8 param1)
{
    ov107_0224503C(param0, param0->unk_0D, 1);
    u8 v2 = ov107_02249C98(param0->unk_14, param0->unk_0D);
    ov107_02243CFC(param0, &param0->windows[17], v2, 1);

    Window_ScheduleCopyToVRAM(&param0->windows[17]);
    ov107_02243DE4(param0, &param0->windows[16], v2, 1);
    Window_ScheduleCopyToVRAM(&param0->windows[16]);

    BattleCastleAppSprite_SetDrawFlag(param0->itemSprite, 1);
    BattleCastleAppSprite_SetDrawFlag(param0->upArrowSprite, 1);
    BattleCastleAppSprite_SetDrawFlag(param0->downArrowSprite, 1);
    BattleCastleAppSprite_SetDrawFlag(param0->unk_434, 1);

    MessageLoader *v5 = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_ITEM_NAMES, HEAP_ID_BATTLE_CASTLE_APP);
    u8 v0 = ov107_02249CAC(param0->saveData, param0->challengeType, 1);

    u8 v1;
    if (param1 == 6) {
        v1 = Unk_ov107_02249E12[v0 - 1];
    } else {
        v1 = Unk_ov107_02249E06[v0 - 1];
    }

    param0->unk_19C = StringList_New(v1 + 1, HEAP_ID_BATTLE_CASTLE_APP);

    for (int v4 = 0; v4 < v1; v4++) {
        u16 v3;

        if (param1 == 6) {
            v3 = Unk_ov107_0224A02C[v4];
        } else {
            v3 = Unk_ov107_02249F84[v4];
        }

        StringList_AddFromMessageBank(param0->unk_19C, v5, v3, v4);
    }

    StringList_AddFromMessageBank(param0->unk_19C, param0->msgLoader, 13, 0xfffffffe);

    param0->unk_1A0 = Unk_ov107_02249EE4;
    param0->unk_1A0.choices = param0->unk_19C;
    param0->unk_1A0.window = &param0->windows[5];
    param0->unk_1A0.parent = param0;
    param0->unk_1A0.cursorCallback = ov107_0224440C;
    param0->unk_1A0.printCallback = ov107_02244560;
    param0->unk_1A0.count = (v1 + 1);
    param0->unk_1A0.textColorBg = 0;
    param0->unk_1A0.maxDisplay = 6;
    param0->unk_1A0.textXOffset = 0;
    param0->unk_1A0.cursorType = 1;
    param0->unk_198 = ListMenu_New(&param0->unk_1A0, 0, 0, HEAP_ID_BATTLE_CASTLE_APP);

    ov107_02245650(param0, &param0->windows[5]);
    MessageLoader_Free(v5);
}

static void ov107_0224440C(ListMenu *param0, u32 param1, u8 param2)
{
    u16 v3, v4, v5;
    BattleCastleSelfApp *v6 = (BattleCastleSelfApp *)ListMenu_GetAttribute(param0, 19);

    if (param2 == 0) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        ListMenu_CalcTrueCursorPos(v6->unk_198, &v5);
    } else {
        v5 = 0;
    }

    u32 v0 = ListMenu_GetAttribute(param0, 2);
    u32 v1 = ListMenu_GetAttribute(param0, 3);

    ListMenu_GetListAndCursorPos(param0, &v3, &v4);

    if (v3 == 0) {
        BattleCastleAppSprite_SetDrawFlag(v6->upArrowSprite, 0);
        BattleCastleAppSprite_SetDrawFlag(v6->downArrowSprite, 1);
    } else if (v3 == (v0 - v1)) {
        BattleCastleAppSprite_SetDrawFlag(v6->upArrowSprite, 1);
        BattleCastleAppSprite_SetDrawFlag(v6->downArrowSprite, 0);
    } else {
        BattleCastleAppSprite_SetDrawFlag(v6->upArrowSprite, 1);
        BattleCastleAppSprite_SetDrawFlag(v6->downArrowSprite, 1);
    }

    BattleCastleAppSprite_SetPosition(v6->unk_434, 158, 24 + v4 * 16);

    if (param1 != 0xfffffffe) {
        ov107_02243EF8(v6, &v6->windows[12], ov107_02244DE0(v6, v5, v6->unk_13));

        BattleCastleApp_SetItemGraphic(&v6->spriteMan, ov107_02244DE0(v6, v5, v6->unk_13));
        BattleCastleApp_SetItemPalette(&v6->spriteMan, ov107_02244DE0(v6, v5, v6->unk_13));
    } else {
        BattleCastleApp_SetItemGraphic(&v6->spriteMan, 0xffff);
        BattleCastleApp_SetItemPalette(&v6->spriteMan, 0xffff);
        Window_FillTilemap(&v6->windows[12], 0);
        Window_ScheduleCopyToVRAM(&v6->windows[12]);
    }
}

static void ov107_02244560(ListMenu *param0, u32 param1, u8 param2)
{
    BattleCastleSelfApp *v0 = (BattleCastleSelfApp *)ListMenu_GetAttribute(param0, 19);

    if (param1 != 0xfffffffe) {
        ov107_02244A74(v0, 0, ov107_02244D5C(v0, param1, v0->unk_13), 4, 1);

        v0->unk_0A = ov107_02243890(v0, &v0->windows[5], 4, 128, param2, TEXT_SPEED_NO_TRANSFER, 1, 2, 0, FONT_SYSTEM, 2);
        Window_ScheduleCopyToVRAM(&v0->windows[5]);
    }
}

static void ov107_022445C4(BattleCastleSelfApp *param0)
{
    BattleCastleApp_DrawWindow(param0->bgConfig, &param0->windows[10]);
    Window_FillTilemap(&param0->windows[10], 15);

    param0->unk_19C = StringList_New(NELEMS(Unk_ov107_02249FF0), HEAP_ID_BATTLE_CASTLE_APP);

    for (int v3 = 0; v3 < (NELEMS(Unk_ov107_02249FF0)); v3++) {
        StringList_AddFromMessageBank(param0->unk_19C, param0->msgLoader, Unk_ov107_02249FF0[v3][1], Unk_ov107_02249FF0[v3][2]);
    }

    param0->unk_1A0 = Unk_ov107_02249EE4;
    param0->unk_1A0.choices = param0->unk_19C;
    param0->unk_1A0.window = &param0->windows[10];
    param0->unk_1A0.parent = param0;
    param0->unk_1A0.cursorCallback = ov107_02244690;
    param0->unk_1A0.printCallback = ov107_02244708;
    param0->unk_1A0.count = (NELEMS(Unk_ov107_02249FF0));
    param0->unk_1A0.maxDisplay = (NELEMS(Unk_ov107_02249FF0));
    param0->unk_1A0.textColorBg = 15;
    param0->unk_198 = ListMenu_New(&param0->unk_1A0, 0, 0, HEAP_ID_BATTLE_CASTLE_APP);

    ov107_02245650(param0, &param0->windows[10]);
}

static void ov107_02244690(ListMenu *param0, u32 param1, u8 param2)
{
    BattleCastleSelfApp *v2 = (BattleCastleSelfApp *)ListMenu_GetAttribute(param0, 19);

    if (param2 == 0) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    u8 v0 = ov107_02249CAC(v2->saveData, v2->challengeType, 0);

    u16 v1;
    switch (param1) {
    case 4:
        if (v0 == 3) {
            v1 = 27;
        } else if (v0 == 1) {
            v1 = 25;
        } else {
            v1 = 26;
        }
        break;
    case 0xfffffffe:
        v1 = 28;
        break;
    default:
        v1 = 24;
        break;
    }

    ov107_0224379C(v2, &v2->windows[6], v1, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_MESSAGE);
}

static void ov107_02244708(ListMenu *param0, u32 param1, u8 param2)
{
    BattleCastleSelfApp *v3 = (BattleCastleSelfApp *)ListMenu_GetAttribute(param0, 19);

    u16 v0;
    ListMenu_CalcTrueCursorPos(param0, &v0);
    u8 v1 = ov107_02249CAC(v3->saveData, v3->challengeType, 0);

    u8 v2;
    switch (param1) {
    case 1:
    case 2:
    case 3:
        if (v1 >= Unk_ov107_02249FF0[param1 - 1][0]) {
            v2 = 1;
        } else {
            v2 = 2;
        }
        break;
    case 4:
        if (v1 == 3) {
            v2 = 2;
        } else {
            v2 = 1;
        }
        break;
    default:
        v2 = 1;
        break;
    }

    ListMenu_SetTextColors(param0, v2, 15, 2);
}

static const u32 Unk_ov107_02249F54[][3] = {
    { 0x1, 0x2C, 0x6 },
    { 0x2, 0x2D, 0x7 },
    { 0x1, 0x2E, 0x8 },
    { 0x1, 0x2F, 0xfffffffe }
};

static void ov107_02244780(BattleCastleSelfApp *param0)
{
    Bg_ToggleLayer(BG_LAYER_MAIN_0, 0);
    BattleCastleApp_DrawWindow(param0->bgConfig, &param0->windows[11]);
    Window_FillTilemap(&param0->windows[11], 15);

    param0->unk_19C = StringList_New(NELEMS(Unk_ov107_02249F54), HEAP_ID_BATTLE_CASTLE_APP);

    for (int v3 = 0; v3 < (NELEMS(Unk_ov107_02249F54)); v3++) {
        StringList_AddFromMessageBank(param0->unk_19C, param0->msgLoader, Unk_ov107_02249F54[v3][1], Unk_ov107_02249F54[v3][2]);
    }

    param0->unk_1A0 = Unk_ov107_02249EE4;
    param0->unk_1A0.choices = param0->unk_19C;
    param0->unk_1A0.window = &param0->windows[11];
    param0->unk_1A0.parent = param0;
    param0->unk_1A0.cursorCallback = ov107_0224486C;
    param0->unk_1A0.printCallback = ov107_022448E8;
    param0->unk_1A0.count = (NELEMS(Unk_ov107_02249F54));
    param0->unk_1A0.maxDisplay = (NELEMS(Unk_ov107_02249F54));
    param0->unk_1A0.textColorBg = 15;
    param0->unk_198 = ListMenu_New(&param0->unk_1A0, 0, 0, HEAP_ID_BATTLE_CASTLE_APP);

    ov107_02245650(param0, &param0->windows[11]);

    Window_ScheduleCopyToVRAM(&param0->windows[11]);
    Bg_ToggleLayer(BG_LAYER_MAIN_0, 1);
}

static void ov107_0224486C(ListMenu *param0, u32 param1, u8 param2)
{
    BattleCastleSelfApp *v2 = (BattleCastleSelfApp *)ListMenu_GetAttribute(param0, 19);

    if (param2 == 0) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    u8 v1 = ov107_02249CAC(v2->saveData, v2->challengeType, 1);

    u16 v0;
    switch (param1) {
    case 6:
        v0 = 48;
        break;
    case 7:
        v0 = 49;
        break;
    case 8:
        if (v1 == 3) {
            v0 = 52;
        } else if (v1 == 1) {
            v0 = 50;
        } else {
            v0 = 51;
        }
        break;
    default:
        v0 = 53;
        break;
    }

    ov107_0224379C(v2, &v2->windows[6], v0, 1, 1, 0xff, 1, 2, 15, 1);
}

static void ov107_022448E8(ListMenu *param0, u32 param1, u8 param2)
{
    BattleCastleSelfApp *v2 = (BattleCastleSelfApp *)ListMenu_GetAttribute(param0, 19);

    u8 v0 = ov107_02249CAC(v2->saveData, v2->challengeType, 1);

    u8 v1;
    switch (param1) {
    case 7:
        if (v0 >= Unk_ov107_02249F54[param1 - 6][0]) {
            v1 = 1;
        } else {
            v1 = 2;
        }
        break;
    case 8:
        if (v0 == 3) {
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

static const u32 Unk_ov107_02249F2C[][2] = {
    { 0x9, 0x0 },
    { 0xA, 0x5 },
    { 0xB, 0x9 },
    { 0xC, 0xA },
    { 0xD, 0xfffffffe }
};

static const u16 Unk_ov107_02249E18[] = {
    0xE,
    0xF,
    0x10,
    0x11,
    0x12
};

static void ov107_02244944(BattleCastleSelfApp *param0)
{
    BattleCastleApp_DrawWindow(param0->bgConfig, &param0->windows[9]);
    Window_FillTilemap(&param0->windows[9], 15);

    param0->unk_19C = StringList_New(5, HEAP_ID_BATTLE_CASTLE_APP);

    for (int v0 = 0; v0 < 5; v0++) {
        StringList_AddFromMessageBank(param0->unk_19C, param0->msgLoader, Unk_ov107_02249F2C[v0][0], Unk_ov107_02249F2C[v0][1]);
    }

    param0->unk_1A0 = Unk_ov107_02249EE4;
    param0->unk_1A0.choices = param0->unk_19C;
    param0->unk_1A0.window = &param0->windows[9];
    param0->unk_1A0.parent = param0;
    param0->unk_1A0.cursorCallback = ov107_02244A1C;
    param0->unk_1A0.printCallback = NULL;
    param0->unk_1A0.count = 5;
    param0->unk_1A0.maxDisplay = 5;
    param0->unk_1A0.textColorBg = 15;
    param0->unk_1A0.parent = param0;
    param0->unk_198 = ListMenu_New(&param0->unk_1A0, param0->unk_18, param0->unk_1A, HEAP_ID_BATTLE_CASTLE_APP);

    ov107_02245650(param0, &param0->windows[9]);
    Window_ScheduleCopyToVRAM(&param0->windows[9]);
}

static void ov107_02244A1C(ListMenu *param0, u32 param1, u8 param2)
{
    BattleCastleSelfApp *v0 = (BattleCastleSelfApp *)ListMenu_GetAttribute(param0, 19);

    if (param2 == 0) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    u16 v1;
    ListMenu_CalcTrueCursorPos(param0, &v1);
    ov107_0224379C(v0, &v0->windows[8], Unk_ov107_02249E18[v1], 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_MESSAGE);
}

static void ov107_02244A74(BattleCastleSelfApp *param0, u32 param1, s32 param2, u32 param3, int param4)
{
    StringTemplate_SetNumber(param0->strTemplate, param1, param2, param3, param4, 1);
}

static void ov107_02244A8C(BattleCastleSelfApp *param0, u32 param1, BoxPokemon *param2)
{
    StringTemplate_SetSpeciesName(param0->strTemplate, param1, param2);
}

static void ov107_02244A98(BattleCastleSelfApp *param0, u32 param1)
{
    StringTemplate_SetPlayerName(param0->strTemplate, param1, SaveData_GetTrainerInfo(param0->saveData));
}

static void ov107_02244AB4(BattleCastleSelfApp *param0, Window *param1, u32 param2, u32 param3, u8 param4)
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
    Window_ScheduleCopyToVRAM(param1);
    String_Free(v2);
}

static void ov107_02244B24(BattleCastleSelfApp *param0, Window *param1, u32 param2, u32 param3, u8 param4)
{
    TrainerInfo *v0 = CommInfo_TrainerInfo(CommSys_CurNetId() ^ 1);

    TextColor v1;
    if (TrainerInfo_Gender(v0) == 0) {
        v1 = TEXT_COLOR(7, 8, 0);
    } else {
        v1 = TEXT_COLOR(3, 4, 0);
    }

    StringTemplate_SetPlayerName(param0->strTemplate, 0, v0);
    ov107_02243860(param0, param1, 1, param2, param3, TEXT_SPEED_NO_TRANSFER, GET_TEXT_FG_COLOR(v1), GET_TEXT_SHADOW_COLOR(v1), GET_TEXT_BG_COLOR(v1), FONT_SYSTEM);
}

static void ov107_02244B8C(BattleCastleSelfApp *param0, Window *param1, u32 param2, u32 param3, u8 param4, u8 param5)
{
    u32 v0;
    u8 v2, v3, v4;

    if (param5 == 0) {
        v0 = 86;
        v2 = 7;
        v3 = 8;
        v4 = 0;
    } else if (param5 == 1) {
        v0 = 87;
        v2 = 3;
        v3 = 4;
        v4 = 0;
    } else {
        return;
    }

    ov107_02243860(param0, param1, v0, param2, param3, TEXT_SPEED_NO_TRANSFER, v2, v3, v4, param4);
}

static void ChangeState(BattleCastleSelfApp *app, int *state, int nextState)
{
    app->subState = 0;
    *state = nextState;
}

static void ov107_02244BD8(BattleCastleSelfApp *param0, int param1)
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
        ov107_02244C70(param0);
    }
}

static void ov107_02244C70(BattleCastleSelfApp *param0)
{
    Sound_PlayEffect(SEQ_SE_CONFIRM);

    if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 1) {
        ov107_0224529C(param0, 12, param0->unk_0D);
    }

    ov107_02244CA0(param0, param0->unk_0D, 0);
}

static void ov107_02244CA0(BattleCastleSelfApp *param0, u8 param1, u8 param2)
{
    BattleCastleAppSprite *v0;
    u32 v1, v2, v3, v4;

    if (param2 == 0) {
        v0 = param0->cursorSprite;
        v3 = 1;
        v4 = 0;
    } else {
        v0 = param0->unk_41C;
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

static void GetCursorSpritePos(BattleCastleSelfApp *app, u32 *x, u32 *y, u8 slot)
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

static u16 ov107_02244D5C(BattleCastleSelfApp *param0, u16 param1, u8 param2)
{
    u8 v0 = ov107_02249CAC(param0->saveData, param0->challengeType, 1);
    u8 v2 = Unk_ov107_02249E06[v0 - 1];
    u8 v3 = Unk_ov107_02249E12[v0 - 1];

    if (param2 == 6) {
        return Unk_ov107_0224A06C[param1];
    }

    return Unk_ov107_02249FBA[param1];
}

static u16 ov107_02244D90(u16 param0)
{
    int v0;

    for (v0 = 0; v0 < NELEMS(Unk_ov107_02249F84); v0++) {
        if (Unk_ov107_02249F84[v0] == param0) {
            return Unk_ov107_02249FBA[v0];
        }
    }

    for (v0 = 0; v0 < NELEMS(Unk_ov107_0224A02C); v0++) {
        if (Unk_ov107_0224A02C[v0] == param0) {
            return Unk_ov107_0224A06C[v0];
        }
    }

    GF_ASSERT(0);
    return 0;
}

static u16 ov107_02244DE0(BattleCastleSelfApp *param0, u16 param1, u8 param2)
{
    u8 v0 = ov107_02249CAC(param0->saveData, param0->challengeType, 1);
    u8 v2 = Unk_ov107_02249E06[v0 - 1];
    u8 v3 = Unk_ov107_02249E12[v0 - 1];

    if (param2 == 6) {
        return Unk_ov107_0224A02C[param1];
    }

    return Unk_ov107_02249F84[param1];
}

static void ov107_02244E14(BattleCastleSelfApp *app, u16 *param1, u16 *param2, u16 *param3, u16 *param4)
{
    if (!BattleCastle_IsMultiPlayerChallenge(app->challengeType)) {
        *param1 = 28;
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

static BOOL ov107_02244E44(BattleCastleSelfApp *param0, u8 param1, u8 param2)
{
    u32 v0, v1, v2, v3;

    u8 v5 = ov107_02249C98(param0->unk_14, param1);
    Pokemon *v6 = Party_GetPokemonBySlotIndex(param0->unk_43C, v5);
    v0 = Pokemon_GetValue(v6, MON_DATA_HP, NULL);
    v1 = Pokemon_GetValue(v6, MON_DATA_MAX_HP, NULL);
    v2 = ov107_022450E8(param0, HealthBar_Color(v0, v1, 48));
    v3 = ov107_02245114(param0, HealthBar_Color(v0, v1, 48));

    switch (param2) {
    case 4:
    case 8:
        param0->unk_0E_2 = 0;
        return 1;
        break;
    case 1:
    case 2:
    case 3:
        if (param0->unk_0E_2 == 0) {
            param0->unk_0E_2 = 1;

            u16 v4;
            if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 0) {
                v4 = 64;
            } else {
                v4 = 32;
            }

            param0->unk_414 = BattleCastleAppSprite_New(&param0->spriteMan, 0, 0, 0, 8, v4 + (64 * v5), 62, 0, NULL);
        }

        if (param0->unk_414 != NULL) {
            if (BattleCastleAppSprite_IsAnimated(param0->unk_414) == 0) {
                BattleCastleAppSprite_Free(param0->unk_414);
                param0->unk_414 = NULL;
            }
        }

        if (param0->unk_414 == NULL) {
            ov107_02243F4C(param0, &param0->windows[3], v5, Pokemon_GetValue(v6, MON_DATA_HP, NULL));
            BattleCastleAppSprite_SetAnim(param0->barSprites[v5], v3);
            ov107_02249C1C(param0->monSprites[v5], v2);
            param0->unk_0E_2 = 0;
            return 1;
        }
        break;
    case 6:
    case 7:
        if (param0->unk_0E_2 == 0) {
            param0->unk_0E_2 = 1;

            u16 v4;
            if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 0) {
                v4 = 64;
            } else {
                v4 = 32;
            }

            param0->unk_414 = BattleCastleAppSprite_New(&param0->spriteMan, 0, 0, 0, 16, v4 + (64 * v5), 62, 0, NULL);
        }

        if (BattleCastleAppSprite_IsAnimated(param0->unk_414) == 0) {
            BattleCastleAppSprite_Free(param0->unk_414);
            param0->unk_414 = NULL;
            param0->unk_0E_2 = 0;
            return 1;
        }
        break;
    case 9:
        param0->unk_0E_2 = 0;
        return 1;
        break;
    case 10:
        param0->unk_0E_2 = 0;
        return 1;
        break;
    }

    return 0;
}

static void ov107_0224503C(BattleCastleSelfApp *param0, u8 param1, u8 param2)
{
    u8 v0 = ov107_02249C98(param0->unk_14, param1);

    u16 v2;
    if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 0) {
        v2 = 64;
    } else {
        v2 = 32;
    }

    u8 v1;
    s16 v3, v4;
    if (param2 == 1) {
        v3 = 40;
        v4 = 80;
        v1 = 0;
    } else {
        v3 = (64 * v0 + v2);
        v4 = 58;
        v1 = 2;
    }

    s16 v5 = v3 + 8;
    s16 v6 = v4 + 4;

    ov107_02249C58(param0->itemIconSprites[v0], v5, v6);
    BattleCastleAppSprite_SetPosition(param0->itemIconSprites[v0], v5, v6);
    BattleCastleAppSprite_SetPriority(param0->itemIconSprites[v0], v1);
    ov107_02249C58(param0->monSprites[v0], v3, v4);
    BattleCastleAppSprite_SetPosition(param0->monSprites[v0], v3, v4);
    BattleCastleAppSprite_SetPriority(param0->monSprites[v0], v1);
}

static u32 ov107_022450E8(BattleCastleSelfApp *param0, u8 param1)
{
    u32 v0;

    switch (param1) {
    case 4:
        v0 = 1;
        break;
    case 3:
        v0 = 2;
        break;
    case 2:
        v0 = 3;
        break;
    case 1:
        v0 = 4;
        break;
    }

    return v0;
}

static u32 ov107_02245114(BattleCastleSelfApp *param0, u8 param1)
{
    u32 v0;

    switch (param1) {
    case 4:
        v0 = 15;
        break;
    case 3:
        v0 = 15;
        break;
    case 2:
        v0 = 14;
        break;
    case 1:
        v0 = 13;
        break;
    }

    return v0;
}

static void ov107_02245140(BattleCastleSelfApp *param0, s8 param1)
{
    s8 v1 = param0->unk_0D;
    v1 += param1;

    if (v1 < 0) {
        v1 = param0->unk_14 - 1;
    } else if (v1 >= param0->unk_14) {
        v1 = 0;
    }

    param0->unk_0D = v1;
    ov107_02244C70(param0);

    Pokemon *v0 = Party_GetPokemonBySlotIndex(param0->unk_43C, ov107_02249C98(param0->unk_14, param0->unk_0D));
    ov107_02243950(param0, &param0->windows[4], v0);
}

static void ov107_0224518C(BattleCastleSelfApp *param0, s8 param1)
{
    s8 v1 = param0->unk_0D;
    v1 += param1;

    if (v1 < 0) {
        v1 = (param0->unk_14 - 1);
    } else if (v1 >= param0->unk_14) {
        v1 = 0;
    }

    param0->unk_0D = v1;
    ov107_02244C70(param0);

    Pokemon *v0 = Party_GetPokemonBySlotIndex(param0->unk_43C, ov107_02249C98(param0->unk_14, param0->unk_0D));
    ov107_02243B84(param0, &param0->windows[4], v0);
}

static void ov107_022451D8(BattleCastleSelfApp *param0)
{
    ov107_02245618(param0);
    ov107_02245730(param0);
    ov107_02244120(param0);
    ov107_02245288(&param0->windows[6]);
    ov107_02245BE0(param0);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    BattleCastleAppSprite_SetDrawFlag(param0->unk_430, 0);
}

static BOOL ov107_02245210(Pokemon *param0)
{
    u8 v0 = 0;

    if (Pokemon_GetValue(param0, MON_DATA_MOVE1_PP, NULL) != Pokemon_GetValue(param0, MON_DATA_MOVE1_MAX_PP, NULL)) {
        v0 = 1;
    }

    if (Pokemon_GetValue(param0, MON_DATA_MOVE2_PP, NULL) != Pokemon_GetValue(param0, MON_DATA_MOVE2_MAX_PP, NULL)) {
        v0 = 1;
    }

    if (Pokemon_GetValue(param0, MON_DATA_MOVE3_PP, NULL) != Pokemon_GetValue(param0, MON_DATA_MOVE3_MAX_PP, NULL)) {
        v0 = 1;
    }

    if (Pokemon_GetValue(param0, MON_DATA_MOVE4_PP, NULL) != Pokemon_GetValue(param0, MON_DATA_MOVE4_MAX_PP, NULL)) {
        v0 = 1;
    }

    return v0;
}

static void ov107_02245288(Window *param0)
{
    Window_EraseMessageBox(param0, 1);
    Window_ClearAndScheduleCopyToVRAM(param0);
}

BOOL ov107_0224529C(BattleCastleSelfApp *param0, u16 param1, u16 param2)
{
    int v0, v1;

    switch (param1) {
    case 10:
        v1 = 49;
        ov107_022452F4(param0, param1);
        break;
    case 11:
        v1 = 50;
        ov107_02245368(param0, param1, param2);
        break;
    case 12:
        v1 = 51;
        ov107_022453F8(param0, param1);
        break;
    case 13:
        v1 = 52;
        ov107_0224542C(param0);
        break;
    }

    if (CommSys_SendData(v1, param0->unk_444, 40) == 1) {
        v0 = 1;
    } else {
        v0 = 0;
    }

    return v0;
}

void ov107_022452F4(BattleCastleSelfApp *param0, u16 param1)
{
    int v1 = 0;
    TrainerInfo *v2 = SaveData_GetTrainerInfo(param0->saveData);

    param0->unk_444[v1] = param1;
    v1 += 1;

    param0->unk_444[v1] = TrainerInfo_Gender(v2);
    v1 += 1;

    for (int v0 = 0; v0 < 3; v0++) {
        param0->unk_444[v1 + v0] = ov107_02249CAC(param0->saveData, param0->challengeType, v0);
    }

    v1 += 3;
}

void ov107_02245338(int param0, int param1, void *param2, void *param3)
{
    BattleCastleSelfApp *v2 = param3;
    const u16 *v3 = param2;

    int v1 = 0;
    v2->unk_0F++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v1 += 1;
    v1 += 1;

    for (int v0 = 0; v0 < 3; v0++) {
        v2->unk_497[v0] = (u8)v3[v1 + v0];
    }

    v1 += 3;
}

void ov107_02245368(BattleCastleSelfApp *param0, u16 param1, u16 param2)
{
    param0->unk_444[0] = param1;
    param0->unk_444[1] = param2;

    if (CommSys_CurNetId() == 0) {
        if (param0->unk_12 == 0xff) {
            param0->unk_12 = param2;
        }
    }

    param0->unk_444[2] = param0->unk_12;
    param0->unk_444[4] = param0->unk_10;
    param0->unk_444[5] = param0->unk_13;
}

void ov107_022453A0(int param0, int param1, void *param2, void *param3)
{
    BattleCastleSelfApp *v2 = param3;
    const u16 *v3 = param2;

    int v1 = 0;
    v2->unk_0F++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v2->unk_495 = v3[1];

    if (CommSys_CurNetId() == 0) {
        if (v2->unk_12 != 0xff) {
            v2->unk_495 = 0;
        } else {
            v2->unk_12 = v2->unk_495 + v2->unk_15;
            v2->unk_10 = v3[4];
            v2->unk_13 = v3[5];
        }
    } else {
        v2->unk_12 = v3[2];
        v2->unk_10 = v3[4];
        v2->unk_13 = v3[5];
    }
}

void ov107_022453F8(BattleCastleSelfApp *param0, u16 param1)
{
    param0->unk_444[0] = param1;
    param0->unk_444[1] = param0->unk_0D;
}

void ov107_02245408(int param0, int param1, void *param2, void *param3)
{
    BattleCastleSelfApp *v0 = param3;
    const u16 *v1 = param2;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v0->unk_494 = (u8)v1[1];
    ov107_02244CA0(v0, v0->unk_494, 1);
}

void ov107_0224542C(BattleCastleSelfApp *param0)
{
    param0->unk_444[0] = 1;
}

void ov107_02245438(int param0, int param1, void *param2, void *param3)
{
    BattleCastleSelfApp *v0 = param3;
    const u16 *v1 = param2;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v0->unk_496 = (u8)v1[0];
}

static void ov107_02245454(Pokemon *param0, u16 param1)
{
    Pokemon_ApplyItemEffects(param0, param1, 0, 0, 100);
}

static void ov107_02245464(BattleCastleSelfApp *param0, Window *param1)
{
    u16 v0, v1, v2, v3, v4, v5;

    ov107_02244E14(param0, &v2, &v3, &v4, &v5);

    if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 0) {
        v0 = v2 + 0;
        v1 = v3 + 0;
        ov107_02244AB4(param0, param1, v0, v1, FONT_SYSTEM);
    } else {
        if (CommSys_CurNetId() == 0) {
            v0 = v2 + 0;
            v1 = v3 + 0;

            ov107_02244AB4(param0, param1, v0, v1, FONT_SYSTEM);

            v0 = v4 + 0;
            v1 = v5 + 0;

            ov107_02244B24(param0, param1, v0, v1, 0);
        } else {
            v0 = v2 + 0;
            v1 = v3 + 0;

            ov107_02244B24(param0, param1, v0, v1, 0);

            v0 = v4 + 0;
            v1 = v5 + 0;

            ov107_02244AB4(param0, param1, v0, v1, FONT_SYSTEM);
        }
    }

    Window_ScheduleCopyToVRAM(param1);
}

static void ov107_022454F8(BattleCastleSelfApp *param0, u8 param1, u8 param2)
{
    Pokemon *v1 = Party_GetPokemonBySlotIndex(param0->unk_43C, ov107_02249C98(param0->unk_14, param1));
    u32 v0 = ov107_02249CAC(param0->saveData, param0->challengeType, 0);

    ov107_02244A8C(param0, 0, Pokemon_GetBoxPokemon(v1));
    BattleCastleApp_DrawMessageBox(&param0->windows[6], Options_Frame(param0->options));

    param0->unk_0A = ov107_02243918(param0, Unk_ov107_02249E00[param2 - 1], FONT_MESSAGE);

    switch (param2) {
    case 1:
        ov107_02245454(v1, 24);
        break;
    case 2:
        ov107_02245454(v1, 41);
        break;
    case 3:
        ov107_02245454(v1, 24);
        ov107_02245454(v1, 41);
        break;

    default:
        GF_ASSERT(0);
    }

    Sound_PlayEffect(SEQ_SE_DP_KAIFUKU);
}

static void ov107_022455A0(BattleCastleSelfApp *param0, u8 param1, u16 param2)
{
    Pokemon *v0 = Party_GetPokemonBySlotIndex(param0->unk_43C, ov107_02249C98(param0->unk_14, param1));

    Pokemon_SetValue(v0, MON_DATA_HELD_ITEM, &param2);

    BattleCastleAppSprite_SetDrawFlag(param0->itemIconSprites[ov107_02249C98(param0->unk_14, param1)], 1);
    ov107_02244A8C(param0, 0, Pokemon_GetBoxPokemon(v0));

    StringTemplate_SetItemName(param0->strTemplate, 1, param2);
    param0->unk_0A = ov107_02243918(param0, 59, FONT_MESSAGE);
    Sound_PlayEffect(SEQ_SE_DP_UG_020);
}

static void ov107_02245618(BattleCastleSelfApp *param0)
{
    if (param0->unk_0E_4 == 1) {
        param0->unk_0E_4 = 0;
        Menu_Free(param0->unk_17C, NULL);
        Window_EraseStandardFrame(param0->unk_170.window, 1);
        Window_ClearAndScheduleCopyToVRAM(param0->unk_170.window);
    }
}

static void ov107_02245650(BattleCastleSelfApp *param0, Window *param1)
{
    param0->unk_0E_0 = 1;
}

static void ov107_02245660(BattleCastleSelfApp *param0)
{
    BattleCastleAppSprite_SetDrawFlag(param0->itemSprite, 0);
    BattleCastleAppSprite_SetDrawFlag(param0->upArrowSprite, 0);
    BattleCastleAppSprite_SetDrawFlag(param0->downArrowSprite, 0);
    BattleCastleAppSprite_SetDrawFlag(param0->unk_434, 0);

    Window_EraseStandardFrame(&param0->windows[15], 1);
    Window_ClearAndScheduleCopyToVRAM(&param0->windows[15]);

    ov107_0224503C(param0, param0->unk_0D, 0);

    Window_FillTilemap(&param0->windows[17], 0);
    Window_ClearAndScheduleCopyToVRAM(&param0->windows[17]);
    Window_FillTilemap(&param0->windows[16], 0);
    Window_ClearAndScheduleCopyToVRAM(&param0->windows[16]);
}

static void ov107_022456E4(BattleCastleSelfApp *param0)
{
    u16 v0;

    ov107_02245288(&param0->windows[6]);
    BattleCastleAppSprite_SetDrawFlag(param0->itemSprite, 1);

    ListMenu_Draw(param0->unk_198);
    ListMenu_CalcTrueCursorPos(param0->unk_198, &v0);

    ov107_02243EF8(param0, &param0->windows[12], ov107_02244DE0(param0, v0, param0->unk_13));
}

static void ov107_02245730(BattleCastleSelfApp *param0)
{
    if (param0->unk_0E_0 == 1) {
        param0->unk_0E_0 = 0;
        Window *v0 = (Window *)ListMenu_GetAttribute(param0->unk_198, 18);

        Window_EraseStandardFrame(v0, 1);
        Window_FillTilemap(v0, 0);
        Window_ClearAndScheduleCopyToVRAM(v0);

        StringList_Free(param0->unk_19C);
        ListMenu_Free(param0->unk_198, NULL, NULL);
    }
}

static void ov107_02245780(BattleCastleSelfApp *param0, Window *window)
{
    u16 v0, v1, v2, v3, x, y;
    ov107_02244E14(param0, &v0, &v1, &v2, &v3);

    if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == FALSE) {
        x = v0 + 104;
        y = v1;
        Window_FillRectWithColor(window, 0, x - 48, y, 48, 16);
        ov107_02244A74(param0, 0, sub_02030698(param0->frontier, sub_0205E630(param0->challengeType), sub_0205E6A8(sub_0205E630(param0->challengeType))), 4, 1);
        param0->unk_0A = ov107_02243890(param0, window, 2, x, y, 0xFF, 1, 2, 0, 0, 2);
    } else {
        if (CommSys_CurNetId() == 0) {
            x = v0 + 104;
            y = v1;
            Window_FillRectWithColor(window, 0, x - 48, y, 48, 16);
            ov107_02244A74(param0, 0, sub_02030698(param0->frontier, sub_0205E630(param0->challengeType), sub_0205E6A8(sub_0205E630(param0->challengeType))), 4, 1);
            param0->unk_0A = ov107_02243890(param0, window, 2, x, y, 0xFF, 1, 2, 0, 0, 2);

            x = v2 + 104;
            y = v3;
            Window_FillRectWithColor(window, 0, x - 48, v3, 48, 16);
            ov107_02244A74(param0, 0, param0->unk_49A, 4, 1);
            param0->unk_0A = ov107_02243890(param0, window, 3, x, y, 0xFF, 1, 2, 0, 0, 2);
        } else {
            x = v0 + 104;
            y = v1;
            Window_FillRectWithColor(window, 0, x - 48, v1, 48, 16);
            ov107_02244A74(param0, 0, param0->unk_49A, 4, 1);
            param0->unk_0A = ov107_02243890(param0, window, 3, x, y, 0xFF, 1, 2, 0, 0, 2);

            x = v2 + 104;
            y = v3;
            Window_FillRectWithColor(window, 0, x - 48, v3, 48, 16);
            ov107_02244A74(param0, 0, sub_02030698(param0->frontier, sub_0205E630(param0->challengeType), sub_0205E6A8(sub_0205E630(param0->challengeType))), 4, 1);
            param0->unk_0A = ov107_02243890(param0, window, 2, x, y, 0xFF, 1, 2, 0, 0, 2);
        }
    }

    Window_ScheduleCopyToVRAM(window);
}

static void ov107_022459D0(BattleCastleSelfApp *param0, u8 param1, u8 param2)
{
    Sound_PlayEffect(SEQ_SE_DP_PIRORIRO2);

    u8 v0, v1;
    v1 = param0->unk_15;
    v0 = ov107_02249C9C(v1, param1);

    u16 v2;
    switch (param2) {
    case 1:
    case 2:
    case 3:
        v2 = Unk_ov107_02249E0C[param2 - 1];
        break;
    case 6:
    case 7:
        v2 = ov107_02244D90(param0->unk_10);
        break;
    case 9:
    case 10:
        v2 = 0;
        break;
    }

    if (CommSys_CurNetId() == 0) {
        if (param1 < v1) {
            ov107_02244A98(param0, 5);
            ov104_0223BC2C(param0->frontier, param0->challengeType, v2);
        } else {
            ov107_02249CF4(param0->strTemplate, 5);
            param0->unk_49A -= v2;
        }
    } else {
        if (param1 < v1) {
            ov107_02249CF4(param0->strTemplate, 5);
            param0->unk_49A -= v2;
        } else {
            ov107_02244A98(param0, 5);
            ov104_0223BC2C(param0->frontier, param0->challengeType, v2);
        }
    }

    ov107_02245780(param0, &param0->windows[0]);
    ov107_02245618(param0);
    ov107_02245BE0(param0);
    ov107_02244120(param0);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    ov107_02245288(&param0->windows[6]);

    switch (param2) {
    case 1:
    case 2:
    case 3:
        BattleCastleApp_DrawMessageBox(&param0->windows[6], Options_Frame(param0->options));
        ov107_022454F8(param0, v0, param2);
        break;
    case 6:
    case 7:
        BattleCastleApp_DrawMessageBox(&param0->windows[6], Options_Frame(param0->options));
        ov107_022455A0(param0, v0, param0->unk_10);
        break;
    case 9:
        ov107_02245B40(param0, v0);
        break;
    case 10:
        ov107_02245B90(param0, v0);
        break;
    }
}

static void ov107_02245B40(BattleCastleSelfApp *param0, u8 param1)
{
    LoadSummaryBackground(param0, 2);

    Window_ClearAndScheduleCopyToVRAM(&param0->windows[6]);
    Window_ClearAndScheduleCopyToVRAM(&param0->windows[5]);
    Window_ClearAndScheduleCopyToVRAM(&param0->windows[15]);

    Pokemon *v0 = Party_GetPokemonBySlotIndex(param0->unk_43C, ov107_02249C98(param0->unk_14, param1));
    ov107_02243950(param0, &param0->windows[4], v0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
}

static void ov107_02245B90(BattleCastleSelfApp *param0, u8 param1)
{
    LoadMovesListBackground(param0, 2);

    Window_ClearAndScheduleCopyToVRAM(&param0->windows[6]);
    Window_ClearAndScheduleCopyToVRAM(&param0->windows[5]);
    Window_ClearAndScheduleCopyToVRAM(&param0->windows[15]);

    Pokemon *v0 = Party_GetPokemonBySlotIndex(param0->unk_43C, ov107_02249C98(param0->unk_14, param1));

    ov107_02243B84(param0, &param0->windows[4], v0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
}

static void ov107_02245BE0(BattleCastleSelfApp *param0)
{
    Window_FillTilemap(&param0->windows[4], 0);
    Window_ClearAndCopyToVRAM(&param0->windows[4]);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
}

static void ov107_02245C00(BattleCastleSelfApp *param0)
{
    u8 v1 = ov104_0223B7A8(param0->challengeType, 1);

    for (int v0 = 0; v0 < v1; v0++) {
        Pokemon *v3 = Party_GetPokemonBySlotIndex(param0->unk_43C, v0);
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

static void ov107_02245C94(BattleCastleSelfApp *param0, u8 param1, u8 param2)
{
    u32 v4;
    u16 v5[4];

    u8 v3 = ov104_0223B7A8(param0->challengeType, 0);

    u8 v2;
    if (param2 == 4) {
        v2 = 0;
    } else {
        v2 = 1;
    }

    u8 v0 = param0->unk_15;
    u8 v1 = ov107_02249C9C(v0, param1);

    if (CommSys_CurNetId() == 0) {
        if (param1 < v0) {
            ov107_02244A98(param0, 5);

            v4 = ov107_02249CAC(param0->saveData, param0->challengeType, v2);
            ov104_0223BC2C(param0->frontier, param0->challengeType, Unk_ov107_02249E46[v2][v4]);

            v4 = ov107_02249CAC(param0->saveData, param0->challengeType, v2);
            v5[0] = (v4 + 1);
            sub_020306E4(SaveData_GetBattleFrontier(param0->saveData), sub_0205E5B4(param0->challengeType, v2), sub_0205E6A8(sub_0205E5B4(param0->challengeType, v2)), v4 + 1);

            if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 1) {
                if (param2 == 4) {
                    param0->unk_0E_5 = 1;
                } else {
                    param0->unk_0E_5 = 2;
                }
            }
        } else {
            ov107_02249CF4(param0->strTemplate, 5);
            v4 = param0->unk_497[v2];
            param0->unk_49A -= Unk_ov107_02249E46[v2][v4];
            param0->unk_497[v2]++;
        }
    } else {
        if (param1 < v0) {
            ov107_02249CF4(param0->strTemplate, 5);
            v4 = param0->unk_497[v2];
            param0->unk_49A -= Unk_ov107_02249E46[v2][v4];
            param0->unk_497[v2]++;
        } else {
            ov107_02244A98(param0, 5);
            v4 = ov107_02249CAC(param0->saveData, param0->challengeType, v2);

            ov104_0223BC2C(param0->frontier, param0->challengeType, Unk_ov107_02249E46[v2][v4]);
            v4 = ov107_02249CAC(param0->saveData, param0->challengeType, v2);

            v5[0] = v4 + 1;
            sub_020306E4(SaveData_GetBattleFrontier(param0->saveData), sub_0205E5B4(param0->challengeType, v2), sub_0205E6A8(sub_0205E5B4(param0->challengeType, v2)), v4 + 1);

            if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 1) {
                if (param2 == 4) {
                    param0->unk_0E_5 = 1;
                } else {
                    param0->unk_0E_5 = 2;
                }
            }
        }
    }

    ov107_02245618(param0);
    ov107_02245780(param0, &param0->windows[0]);
    BattleCastleApp_DrawMessageBox(&param0->windows[6], Options_Frame(param0->options));

    param0->unk_0A = ov107_02243918(param0, Unk_ov107_02249E34[v2][v4], FONT_MESSAGE);
}
