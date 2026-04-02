#include "applications/frontier/battle_arcade/main.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle_frontier.h"
#include "constants/graphics.h"

#include "struct_decls/struct_020304A0_decl.h"
#include "struct_decls/struct_020305B8_decl.h"
#include "struct_defs/battle_frontier.h"

#include "applications/frontier/battle_arcade/sprite_manager.h"
#include "applications/frontier/battle_arcade/sprites.h"
#include "applications/frontier/battle_arcade/windows.h"
#include "overlay104/ov104_0223BCBC.h"
#include "overlay104/struct_ov104_02238240.h"

#include "battle_frontier_stats.h"
#include "bg_window.h"
#include "communication_system.h"
#include "font.h"
#include "game_options.h"
#include "game_overlay.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "math_util.h"
#include "message.h"
#include "narc.h"
#include "narc_frontier_bg.h"
#include "network_icon.h"
#include "overlay_manager.h"
#include "palette.h"
#include "party.h"
#include "pokemon.h"
#include "render_oam.h"
#include "save_player.h"
#include "savedata.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_util.h"
#include "string_gf.h"
#include "string_template.h"
#include "system.h"
#include "touch_screen.h"
#include "trainer_info.h"
#include "unk_02030494.h"
#include "unk_020363E8.h"
#include "unk_0209BA80.h"
#include "vram_transfer.h"

FS_EXTERN_OVERLAY(overlay104);

#define GRID_WIDTH  4
#define GRID_HEIGHT 4
#define GRID_SIZE   (GRID_HEIGHT * GRID_WIDTH)

// Sub screen sprite animation IDs
#define ANIM_ID_BUTTON_UNPRESSED 0
#define ANIM_ID_BUTTON_PRESSED   1
#define ANIM_ID_BUTTON_INACTIVE  2

// Main screen sprite animation IDs
#define ANIM_ID_TILE_3 32
#define ANIM_ID_TILE_2 33
#define ANIM_ID_TILE_1 34
#define ANIM_ID_CURSOR 35

#define COMM_CMD_INITIAL_LAYOUT 30
#define COMM_CMD_RESULT         31

enum BattleArcadeAppState {
    STATE_FADE_IN_APP = 0,
    STATE_OPERATE_ROULETTE,
    STATE_SYNC_RESULT,
    STATE_SYNC_BEFORE_EXIT,
    STATE_FADE_OUT_APP,
};

static const u8 sCursorMoveFrames[8][2] = {
    { 20, 0 },
    { 16, 0 },
    { 8, 0 },
    { 4, 0 },
    { 3, 0 },
    { 2, 0 },
    { 1, 0 },
    { 0, 0 }
};

// clang-format off
static const struct {
    u8 round1 : 1;
    u8 round2 : 1;
    u8 round3 : 1;
    u8 round4 : 1;
    u8 round5 : 1;
    u8 round6 : 1;
    u8 round7 : 1;
} sEffectAvailabilityByRound[NUM_ARCADE_EFFECTS] = {
    [ARCADE_EFFECT_LOWER_FOE_HP] =     { 0, 1, 1, 1, 1, 1, 1 },
    [ARCADE_EFFECT_POISON_FOE] =       { 1, 0, 1, 0, 0, 0, 1 },
    [ARCADE_EFFECT_PARALYZE_FOE] =     { 1, 0, 1, 0, 0, 0, 1 },
    [ARCADE_EFFECT_BURN_FOE] =         { 1, 0, 1, 0, 0, 0, 1 },
    [ARCADE_EFFECT_SLEEP_FOE] =        { 0, 0, 0, 0, 1, 1, 1 },
    [ARCADE_EFFECT_FREEZE_FOE] =       { 0, 0, 0, 0, 1, 1, 1 },
    [ARCADE_EFFECT_FOE_GET_BERRY] =    { 1, 1, 1, 0, 0, 0, 1 },
    [ARCADE_EFFECT_FOE_GET_ITEM] =     { 0, 0, 0, 1, 1, 1, 1 },
    [ARCADE_EFFECT_FOE_GET_LEVELS] =   { 0, 1, 1, 1, 1, 1, 1 },
    [ARCADE_EFFECT_LOWER_ALLY_HP] =    { 0, 1, 1, 1, 1, 1, 1 },
    [ARCADE_EFFECT_POISON_ALLY] =      { 1, 0, 1, 0, 0, 0, 1 },
    [ARCADE_EFFECT_PARALYZE_ALLY] =    { 1, 0, 1, 0, 0, 0, 1 },
    [ARCADE_EFFECT_BURN_ALLY] =        { 1, 0, 1, 0, 0, 0, 1 },
    [ARCADE_EFFECT_SLEEP_ALLY] =       { 0, 0, 0, 0, 1, 1, 1 },
    [ARCADE_EFFECT_FREEZE_ALLY] =      { 0, 0, 0, 0, 1, 1, 1 },
    [ARCADE_EFFECT_ALLY_GET_BERRY] =   { 1, 1, 1, 0, 0, 0, 1 },
    [ARCADE_EFFECT_ALLY_GET_ITEM] =    { 0, 0, 0, 1, 1, 1, 1 },
    [ARCADE_EFFECT_ALLY_GET_LEVELS] =  { 0, 1, 1, 1, 1, 1, 1 },
    [ARCADE_EFFECT_SUNNY_BATTLE] =     { 0, 1, 1, 0, 0, 0, 1 },
    [ARCADE_EFFECT_RAINY_BATTLE] =     { 0, 1, 1, 0, 0, 0, 1 },
    [ARCADE_EFFECT_SANDY_BATTLE] =     { 0, 1, 1, 0, 0, 0, 1 },
    [ARCADE_EFFECT_HAIL_BATTLE] =      { 0, 1, 1, 0, 0, 0, 1 },
    [ARCADE_EFFECT_FOGGY_BATTLE] =     { 0, 0, 0, 1, 0, 1, 1 },
    [ARCADE_EFFECT_TRICK_ROOM] =       { 0, 0, 0, 1, 0, 1, 1 },
    [ARCADE_EFFECT_SWAP_MONS] =        { 1, 1, 1, 1, 1, 1, 1 },
    [ARCADE_EFFECT_SPEED_UP] =         { 1, 1, 1, 0, 0, 0, 1 },
    [ARCADE_EFFECT_SLOW_DOWN] =        { 1, 1, 1, 1, 1, 1, 1 },
    [ARCADE_EFFECT_RANDOMIZE_CURSOR] = { 0, 0, 0, 0, 1, 1, 1 },
    [ARCADE_EFFECT_GET_1_BP] =         { 0, 0, 0, 1, 1, 1, 1 },
    [ARCADE_EFFECT_NO_BATTLE] =        { 0, 0, 0, 0, 1, 1, 1 },
    [ARCADE_EFFECT_NO_EVENT] =         { 1, 1, 1, 1, 1, 1, 1 },
    [ARCADE_EFFECT_GET_3_BP] =         { 0, 0, 0, 0, 0, 0, 1 },
};
// clang-format on

static const struct {
    u8 battle1 : 1;
    u8 battle2 : 1;
    u8 battle3 : 1;
    u8 battle4 : 1;
    u8 battle5 : 1;
    u8 battle6 : 1;
    u8 battle7 : 1;
} sEffectAvailabilityByBattle[BATTLES_PER_ROUND_ARCADE] = {
    { 1, 1, 1, 1, 1, 1, 0 }, // ARCADE_EFFECT_RANDOMIZE_CURSOR
    { 1, 1, 1, 1, 1, 1, 0 }, // ARCADE_EFFECT_SWAP_MONS
    { 1, 1, 1, 1, 1, 1, 0 }, // ARCADE_EFFECT_SPEED_UP
    { 1, 1, 1, 1, 1, 1, 0 }, // ARCADE_EFFECT_SLOW_DOWN
    { 1, 0, 1, 0, 1, 0, 0 }, // ARCADE_EFFECT_GET_1_BP
    { 0, 1, 0, 1, 0, 1, 0 }, // ARCADE_EFFECT_NO_BATTLE
    { 0, 1, 0, 1, 0, 1, 0 }, // ARCADE_EFFECT_GET_3_BP
};

static const u8 sCategoryWeights[][NUM_ARCADE_EFFECT_CATEGORIES] = {
    { 15, 15, 40, 30 },
    { 35, 20, 30, 15 },
    { 30, 30, 35, 5 },
    { 25, 40, 30, 5 },
    { 10, 75, 10, 5 }
};

static const u8 Unk_ov108_0224367C[] = {
    21,
    16,
    10,
    5
};

typedef struct BattleArcadeApp {
    ApplicationManager *appMan;
    BattleFrontier *frontier;
    u8 subState;
    u8 challengeType;
    u8 unused;
    u8 subStateTimer;
    u8 randomizeCursorMovement;
    u8 cursorPos;
    u8 cursorPosID;
    u8 numReceivedMsgs;
    u8 cursorUpdateTimer;
    u8 categoryWeightTier;
    u8 unk_12;
    u8 unusedFlag : 1;
    u8 pointlessTimer : 7;
    u8 resultCursorPos;
    u8 unused2;
    u16 startingCursorPos;
    int rouletteTimer;
    u8 *rouletteSpeed;
    u8 *selectedEffect;
    u16 *unk_24;
    u16 battleStreak;
    u16 round;
    u8 gridWidth;
    u8 gridHeight;
    u8 gridSize;
    u8 unused3 : 1;
    u8 buttonPressed : 7;
    u8 availableEffectsPerCategory[NUM_ARCADE_EFFECT_CATEGORIES];
    u8 rouletteEffects[GRID_SIZE];
    u8 availableEffects[NUM_ARCADE_EFFECTS];
    u8 numAvailableEffects;
    MessageLoader *msgLoader;
    StringTemplate *strTemplate;
    String *displayStr;
    String *fmtStr;
    String *unusedStrs[2];
    u16 unused4[8];
    BgConfig *bgConfig;
    Window windows[2];
    u32 unused5[8];
    PaletteData *plttData;
    Options *options;
    SaveData *saveData;
    UnkStruct_020304A0 *unk_E0;
    UnkStruct_020305B8 *unk_E4;
    BattleArcadeAppSpriteManager spriteMan;
    BattleArcadeAppSprite *cursorSprite;
    BattleArcadeAppSprite *tileSprites[GRID_SIZE];
    BattleArcadeAppSprite *monSprites[NUM_MON_SPRITES];
    BattleArcadeAppSprite *opponentMonSprites[NUM_MON_SPRITES];
    BattleArcadeAppSprite *itemSprites[NUM_MON_SPRITES];
    BattleArcadeAppSprite *opponentItemSprites[NUM_MON_SPRITES];
    BattleArcadeAppSprite *buttonSprite;
    int *unused6;
    u16 *cursorPosPtr;
    Party *party;
    Party *opponentsParty;
    NARC *narc;
    u16 commPayload[40];
    u8 partnerCursorPos;
    u8 cursorPosTemp;
    u16 partnerBattleStreak;
    u16 unused8[3];
} BattleArcadeApp;

static BOOL State_FadeInApp(BattleArcadeApp *app);
static BOOL State_OperateRoulette(BattleArcadeApp *app);
static BOOL State_SyncResult(BattleArcadeApp *app);
static BOOL State_SyncBeforeExit(BattleArcadeApp *app);
static BOOL State_FadeOutApp(BattleArcadeApp *app);
static void FreeAssets(BattleArcadeApp *app);
static void InitGraphicsPlane(void);
static void LoadAssets(BattleArcadeApp *app);
static void InitSpriteManager(BattleArcadeApp *app);
static void LoadBackgrounds(BattleArcadeApp *app);
static void FreeBackgrounds(BgConfig *app);
static void VBlankCallback(void *data);
static void InitGXBanks(void);
static void InitBackgrounds(BgConfig *bgConfig);
static void LoadInitialBackround(BattleArcadeApp *app, enum BgLayer bgLayer);
static void LoadRouletteBackground(BattleArcadeApp *app, enum BgLayer bgLayer);
static void LoadPalette(void);
static void LoadSubScreenBackground(BattleArcadeApp *app, enum BgLayer bgLayer);
static void ChangeState(BattleArcadeApp *app, int *state, enum BattleArcadeAppState newState);
static void UpdateCursorPosition(BattleArcadeApp *app, int unused);
static void UpdateCursorSpritePosition(BattleArcadeApp *app, u8 cursorPos);
static void SetResultCursorPos(BattleArcadeApp *app);
static u8 NormalizeCursorPosition(u8 gridSize, u8 cursorPos);
static u16 GetBattleNumber(BattleArcadeApp *app);
static BOOL SendCommMessage(BattleArcadeApp *app, u16 cmd, u16 arg);
static void CreateInitialLayoutPayload(BattleArcadeApp *app, u16 cmd);
static void CreateResultPayload(BattleArcadeApp *app, u16 cmd, u16 resultCursorPos);
static void UnusedCommCommandPayload(BattleArcadeApp *app, u16 cmd);
static void SetSelectedEffect(BattleArcadeApp *app, u8 cursorPos);
static u8 GetRandomCategory(BattleArcadeApp *app, u8 weightsIndex);
static void GetAvailableEffects(BattleArcadeApp *app);
static void GetEffectCategoryCounts(BattleArcadeApp *app);
static void AssignEffectsToGrid(BattleArcadeApp *app);
static void UpdateItemSprites(BattleArcadeApp *app);
static BOOL CheckStopButtonPressed(BattleArcadeApp *app);
static void PressStopButton(BattleArcadeApp *app);
static u16 GetRandomNumber(BattleArcadeApp *app);

static u8 unusedStatic;
static u8 unusedStatic2;

static const TouchScreenHitTable sStopButtonHitBox[] = {
    { .circle = { .code = TOUCHSCREEN_USE_CIRCLE, .x = 128, .y = 96, .r = 32 } },
    { TOUCHSCREEN_TABLE_TERMINATOR }
};

BOOL BattleArcadeApp_Init(ApplicationManager *appMan, int *state)
{
    Overlay_LoadByID(FS_OVERLAY_ID(overlay104), OVERLAY_LOAD_ASYNC);
    InitGraphicsPlane();
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_BATTLE_ARCADE_APP, HEAP_SIZE_BATTLE_ARCADE_APP);

    BattleArcadeApp *app = ApplicationManager_NewData(appMan, sizeof(BattleArcadeApp), HEAP_ID_BATTLE_ARCADE_APP);
    memset(app, 0, sizeof(BattleArcadeApp));

    app->bgConfig = BgConfig_New(HEAP_ID_BATTLE_ARCADE_APP);
    app->appMan = appMan;

    UnkStruct_ov104_02238240 *v2 = ApplicationManager_Args(appMan);

    app->saveData = v2->saveData;
    app->unk_E0 = sub_020304A0(app->saveData);
    app->unk_E4 = sub_020305B8(app->saveData);
    app->challengeType = v2->unk_04;
    app->round = v2->unk_1E;
    app->battleStreak = v2->unk_1C;
    app->partnerBattleStreak = v2->unk_18;
    app->unk_12 = v2->unk_07;
    app->cursorPosPtr = &v2->unk_38;
    app->options = SaveData_GetOptions(app->saveData);
    app->party = v2->unk_30;
    app->opponentsParty = v2->unk_34;
    app->cursorPosID = 0xff;
    app->frontier = SaveData_GetBattleFrontier(app->saveData);
    app->unused6 = v2->unk_08;
    app->rouletteSpeed = v2->unk_0C;
    app->selectedEffect = v2->unk_10;
    app->unk_24 = v2->unk_14;
    app->rouletteTimer = 30 * 30; // 30 Seconds at 30FPS
    app->randomizeCursorMovement = v2->unk_40;

    for (int i = 0; i < NUM_ARCADE_EFFECTS; i++) {
        app->availableEffects[i] = NUM_ARCADE_EFFECTS;
    }

    app->gridWidth = GRID_WIDTH;
    app->gridHeight = GRID_HEIGHT;
    app->gridSize = GRID_SIZE;
    app->partnerCursorPos = 0;

    *app->unk_24 = GetRandomNumber(app);

    app->startingCursorPos = LCRNG_Next() % GRID_SIZE;

    LoadAssets(app);

    if (BattleArcade_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
        sub_0209BA80(app);
    }

    *state = 0;

    unusedStatic = 0;
    unusedStatic2 = 0;

    return TRUE;
}

BOOL BattleArcadeApp_Main(ApplicationManager *appMan, int *state)
{
    BattleArcadeApp *app = ApplicationManager_Data(appMan);

    if (app->cursorPosID != 0xff) {
        switch (*state) {
        case STATE_OPERATE_ROULETTE:
            PressStopButton(app);
            app->resultCursorPos = NormalizeCursorPosition(app->gridSize, app->cursorPosID);
            ChangeState(app, state, STATE_SYNC_RESULT);
            break;
        }
    }

    switch (*state) {
    case STATE_FADE_IN_APP:
        if (State_FadeInApp(app) == TRUE) {
            ChangeState(app, state, STATE_OPERATE_ROULETTE);
        }
        break;
    case STATE_OPERATE_ROULETTE:
        if (State_OperateRoulette(app) == TRUE) {
            if (app->buttonPressed == TRUE) {
                ChangeState(app, state, STATE_SYNC_RESULT);
            } else {
                if (BattleArcade_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
                    ChangeState(app, state, STATE_SYNC_BEFORE_EXIT);
                } else {
                    ChangeState(app, state, STATE_FADE_OUT_APP);
                }
            }
        }
        break;
    case STATE_SYNC_RESULT:
        if (State_SyncResult(app) == TRUE) {
            ChangeState(app, state, STATE_SYNC_BEFORE_EXIT);
        }
        break;
    case STATE_SYNC_BEFORE_EXIT:
        if (State_SyncBeforeExit(app) == TRUE) {
            ChangeState(app, state, STATE_FADE_OUT_APP);
        }
        break;
    case STATE_FADE_OUT_APP:
        if (State_FadeOutApp(app) == TRUE) {
            return TRUE;
        }
        break;
    }

    app->pointlessTimer++;
    if (app->pointlessTimer >= 4) {
        app->pointlessTimer = 0;
        app->unusedFlag ^= 1;
    }

    SpriteList_Update(app->spriteMan.spriteList);

    return FALSE;
}

BOOL BattleArcadeApp_Exit(ApplicationManager *appMan, int *state)
{
    BattleArcadeApp *app = ApplicationManager_Data(appMan);
    *app->cursorPosPtr = app->cursorPos;

    VramTransfer_Free();
    FreeAssets(app);
    ApplicationManager_FreeData(appMan);
    SetVBlankCallback(NULL, NULL);
    Heap_Destroy(HEAP_ID_BATTLE_ARCADE_APP);
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay104));

    return TRUE;
}

static BOOL State_FadeInApp(BattleArcadeApp *app)
{
    switch (app->subState) {
    case 0:
        if (BattleArcade_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
            CommTool_ClearReceivedTempDataAllPlayers();
            CommTiming_StartSync(199);
            app->subState++;
        } else {
            app->subState++;
        }
        break;
    case 1:
        if (BattleArcade_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
            if (CommTiming_IsSyncState(199) == TRUE) {
                CommTool_ClearReceivedTempDataAllPlayers();
                app->subState++;
            }
        } else {
            app->subState++;
        }
        break;
    case 2:
        GetAvailableEffects(app);
        app->subState++;
        break;
    case 3:
        GetEffectCategoryCounts(app);
        app->subState++;
        break;
    case 4:
        AssignEffectsToGrid(app);
        app->subState++;
        break;
    case 5:
        if (BattleArcade_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
            CommTool_ClearReceivedTempDataAllPlayers();
            CommTiming_StartSync(201);
            app->subState++;
        } else {
            app->subState++;
        }
        break;
    case 6:
        if (BattleArcade_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
            if (CommTiming_IsSyncState(201) == TRUE) {
                CommTool_ClearReceivedTempDataAllPlayers();
                app->subState++;
            }
        } else {
            app->subState++;
        }
        break;
    case 7:
        if (BattleArcade_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
            if (SendCommMessage(app, COMM_CMD_INITIAL_LAYOUT, 0) == TRUE) {
                app->subState++;
            }
        } else {
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 3, HEAP_ID_BATTLE_ARCADE_APP);
            app->subState++;
        }
        break;
    case 8:
        if (BattleArcade_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
            if (app->numReceivedMsgs >= 2) {
                app->numReceivedMsgs = 0;
                StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 3, HEAP_ID_BATTLE_ARCADE_APP);
                app->subState++;
            }
        } else {
            app->subState++;
        }
        break;
    case 9:
        if (IsScreenFadeDone() == TRUE) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static BOOL State_OperateRoulette(BattleArcadeApp *app)
{
    switch (app->subState) {
    case 0:
        app->subStateTimer = 0;
        app->cursorPos = app->startingCursorPos;
        UpdateCursorSpritePosition(app, app->cursorPos);
        app->subState = 1;
        break;
    case 1:
        app->subStateTimer++;

        if (app->subStateTimer >= 10) {
            app->subStateTimer = 0;
            app->subState = 2;
        }
        break;
    case 2:
        for (int i = 0; i < GRID_SIZE; i++) {
            if (app->tileSprites[i] != NULL) {
                BattleArcadeAppSprite_SetAnim(app->tileSprites[i], ANIM_ID_TILE_3);
                BattleArcadeAppSprite_SetDrawFlag(app->tileSprites[i], TRUE);
            }
        }

        LoadRouletteBackground(app, BG_LAYER_MAIN_3);
        Sound_PlayEffect(SEQ_SE_DP_WIN_OPEN2);

        app->subStateTimer = 24;
        app->subState = 3;
        break;
    case 3:
        app->subStateTimer--;

        if (app->subStateTimer > 0) {
            break;
        }

        for (int i = 0; i < GRID_SIZE; i++) {
            if (app->tileSprites[i] != NULL) {
                BattleArcadeAppSprite_SetAnim(app->tileSprites[i], ANIM_ID_TILE_2);
            }
        }

        Sound_PlayEffect(SEQ_SE_DP_WIN_OPEN2);
        app->subStateTimer = 24;
        app->subState = 4;
        break;
    case 4:
        app->subStateTimer--;

        if (app->subStateTimer > 0) {
            break;
        }

        for (int i = 0; i < GRID_SIZE; i++) {
            if (app->tileSprites[i] != NULL) {
                BattleArcadeAppSprite_SetAnim(app->tileSprites[i], ANIM_ID_TILE_1);
            }
        }

        Sound_PlayEffect(SEQ_SE_DP_WIN_OPEN2);
        app->subStateTimer = 24;
        app->subState = 5;
        break;
    case 5:
        app->subStateTimer--;

        if (app->subStateTimer > 0) {
            break;
        }

        for (int i = 0; i < GRID_SIZE; i++) {
            if (app->tileSprites[i] != NULL) {
                BattleArcadeAppSprite_SetAnim(app->tileSprites[i], app->rouletteEffects[i]);
            }
        }

        BattleArcadeAppSprite_SetDrawFlag(app->cursorSprite, TRUE);
        Sound_PlayEffect(SEQ_SE_DP_UG_020);
        BattleArcadeAppSprite_SetAnim(app->buttonSprite, ANIM_ID_BUTTON_UNPRESSED);
        app->subState = 6;
        break;
    case 6:
        UpdateCursorPosition(app, gSystem.pressedKeys);

        if (CommSys_CurNetId() == 0) {
            if (app->rouletteTimer > 0) {
                app->rouletteTimer--;
            }
        }

        if (CheckStopButtonPressed(app) == TRUE || app->rouletteTimer == 0) {
            SetResultCursorPos(app);

            if (!BattleArcade_IsMultiPlayerChallenge(app->challengeType)) {
                app->subState = 7;
                break;
            } else {
                app->buttonPressed = TRUE;
                return TRUE;
            }
        }
        break;
    case 7:
        SetSelectedEffect(app, app->cursorPos);
        app->subStateTimer = 30;
        app->subState = 8;
        break;
    case 8:
        app->subStateTimer--;

        if (app->subStateTimer == 0) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static BOOL State_SyncResult(BattleArcadeApp *app)
{
    switch (app->subState) {
    case 0:
        if (SendCommMessage(app, COMM_CMD_RESULT, app->resultCursorPos) == TRUE) {
            app->buttonPressed = FALSE;
            app->subState++;
        }
        break;
    case 1:
        app->subState++;
        break;
    case 2:
        if (app->cursorPosID == 0xff) {
            break;
        }

        app->numReceivedMsgs = 0;
        SetSelectedEffect(app, app->cursorPosID);
        app->subState++;
        break;
    case 3:
        CommTool_ClearReceivedTempDataAllPlayers();
        CommTiming_StartSync(151);
        app->subState++;
        break;
    case 4:
        if (CommTiming_IsSyncState(151) == TRUE) {
            CommTool_ClearReceivedTempDataAllPlayers();
            CommTool_Init(103);
            app->cursorPosID = 0xff;
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static BOOL State_SyncBeforeExit(BattleArcadeApp *app)
{
    switch (app->subState) {
    case 0:
        app->subStateTimer = 15;
        app->subState++;
        break;
    case 1:
        if (app->subStateTimer > 0) {
            app->subStateTimer--;
        }

        if (app->subStateTimer == 0) {
            CommTool_ClearReceivedTempDataAllPlayers();
            CommTiming_StartSync(152);
            app->subState++;
        }
        break;
    case 2:
        if (CommTiming_IsSyncState(152) == TRUE) {
            CommTool_ClearReceivedTempDataAllPlayers();
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static BOOL State_FadeOutApp(BattleArcadeApp *app)
{
    switch (app->subState) {
    case 0:
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_BATTLE_ARCADE_APP);
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

static void FreeAssets(BattleArcadeApp *app)
{
    int i;

    if (app->cursorSprite != NULL) {
        BattleArcadeAppSprite_Free(app->cursorSprite);
    }

    if (app->buttonSprite != NULL) {
        BattleArcadeAppSprite_Free(app->buttonSprite);
    }

    for (i = 0; i < GRID_SIZE; i++) {
        if (app->tileSprites[i] != NULL) {
            BattleArcadeAppSprite_Free(app->tileSprites[i]);
        }
    }

    u8 numMons = BattleArcade_GetPartySize(app->challengeType, TRUE);

    for (i = 0; i < numMons; i++) {
        if (app->monSprites[i] != NULL) {
            BattleArcadeAppSprite_Free(app->monSprites[i]);
        }

        if (app->opponentMonSprites[i] != NULL) {
            BattleArcadeAppSprite_Free(app->opponentMonSprites[i]);
        }

        if (app->itemSprites[i] != NULL) {
            BattleArcadeAppSprite_Free(app->itemSprites[i]);
        }

        if (app->opponentItemSprites[i] != NULL) {
            BattleArcadeAppSprite_Free(app->opponentItemSprites[i]);
        }
    }

    NetworkIcon_Destroy();
    PaletteData_FreeBuffer(app->plttData, PLTTBUF_MAIN_OBJ);
    PaletteData_FreeBuffer(app->plttData, PLTTBUF_MAIN_BG);
    PaletteData_Free(app->plttData);

    app->plttData = NULL;
    BattleArcadeApp_FreeSprites(&app->spriteMan);

    MessageLoader_Free(app->msgLoader);
    StringTemplate_Free(app->strTemplate);
    String_Free(app->displayStr);
    String_Free(app->fmtStr);

    for (i = 0; i < 2; i++) {
        String_Free(app->unusedStrs[i]);
    }

    BattleArcadeApp_FreeWindows(app->windows);
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

static void LoadAssets(BattleArcadeApp *app)
{
    int i;

    app->narc = NARC_ctor(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, HEAP_ID_BATTLE_ARCADE_APP);

    LoadBackgrounds(app);
    InitSpriteManager(app);

    app->msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_DUMMY_0536, HEAP_ID_BATTLE_ARCADE_APP);
    app->strTemplate = StringTemplate_Default(HEAP_ID_BATTLE_ARCADE_APP);
    app->displayStr = String_Init(600, HEAP_ID_BATTLE_ARCADE_APP);
    app->fmtStr = String_Init(600, HEAP_ID_BATTLE_ARCADE_APP);

    for (i = 0; i < 2; i++) {
        app->unusedStrs[i] = String_Init(32, HEAP_ID_BATTLE_ARCADE_APP);
    }

    Font_LoadTextPalette(PAL_LOAD_MAIN_BG, 13 * PALETTE_SIZE_BYTES, HEAP_ID_BATTLE_ARCADE_APP);
    Font_LoadScreenIndicatorsPalette(PAL_LOAD_MAIN_BG, 12 * PALETTE_SIZE_BYTES, HEAP_ID_BATTLE_ARCADE_APP);

    BattleArcadeApp_InitWindows(app->bgConfig, app->windows);
    app->cursorSprite = BattleArcadeAppSprite_New(&app->spriteMan, RESOURCE_ID_MAIN_SPRITES, RESOURCE_ID_MAIN_SPRITES, RESOURCE_ID_MAIN_SPRITES, ANIM_ID_CURSOR, 68, 36, 0, 2, FALSE);
    BattleArcadeAppSprite_SetDrawFlag(app->cursorSprite, FALSE);

    for (i = 0; i < GRID_SIZE; i++) {
        app->tileSprites[i] = BattleArcadeAppSprite_New(&app->spriteMan, RESOURCE_ID_MAIN_SPRITES, RESOURCE_ID_MAIN_SPRITES, RESOURCE_ID_MAIN_SPRITES, ANIM_ID_TILE_3, 68 + (40 * (i % 4)), 36 + (40 * (i / 4)), 1, 2, 0);
        BattleArcadeAppSprite_SetDrawFlag(app->tileSprites[i], FALSE);
    }

    u8 numMons = BattleArcade_GetPartySize(app->challengeType, TRUE);

    u16 monYOffset, itemsYOffset;
    if (!BattleArcade_IsMultiPlayerChallenge(app->challengeType)) {
        monYOffset = 46;
        itemsYOffset = 50;
    } else {
        monYOffset = 22;
        itemsYOffset = 26;
    }

    for (i = 0; i < numMons; i++) {
        app->itemSprites[i] = BattleArcadeAppSprite_New(&app->spriteMan, RESOURCE_ID_ITEM_SPRITES, RESOURCE_ID_ITEM_SPRITES, RESOURCE_ID_ITEM_SPRITES, 0, 24, itemsYOffset + (40 * i), 0, 2, FALSE);
        app->opponentItemSprites[i] = BattleArcadeAppSprite_New(&app->spriteMan, RESOURCE_ID_ITEM_SPRITES, RESOURCE_ID_ITEM_SPRITES, RESOURCE_ID_ITEM_SPRITES, 0, 246, itemsYOffset + (40 * i), 0, 2, FALSE);
        app->monSprites[i] = BattleArcadeAppSprite_New(&app->spriteMan, RESOURCE_ID_MON_SPRITES + i, RESOURCE_ID_MON_SPRITES, RESOURCE_ID_MON_SPRITES, 1, 16, monYOffset + (40 * i), 1, 2, FALSE);
        app->opponentMonSprites[i] = BattleArcadeAppSprite_New(&app->spriteMan, RESOURCE_ID_OPP_MON_ANIMS + i, RESOURCE_ID_MON_SPRITES, RESOURCE_ID_MON_SPRITES, 1, 238, monYOffset + (40 * i), 1, 2, FALSE);

        BattleArcadeAppSprite_UpdatePalette(app->monSprites[i], Party_GetPokemonBySlotIndex(app->party, i));
        BattleArcadeAppSprite_UpdatePalette(app->opponentMonSprites[i], Party_GetPokemonBySlotIndex(app->opponentsParty, i));

        BattleArcadeAppSprite_SetAnimateFlag(app->monSprites[i], FALSE);
        BattleArcadeAppSprite_SetAnimateFlag(app->opponentMonSprites[i], FALSE);
    }

    UpdateItemSprites(app);
    app->buttonSprite = BattleArcadeAppSprite_New(&app->spriteMan, RESOURCE_ID_SUB_SPRITES, RESOURCE_ID_SUB_SPRITES, RESOURCE_ID_SUB_SPRITES, ANIM_ID_BUTTON_INACTIVE, 128, 96, 0, 0, TRUE);

    if (CommSys_IsInitialized()) {
        ReserveVramForWirelessIconChars(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_32K);
        ReserveSlotsForWirelessIconPalette(NNS_G2D_VRAM_TYPE_2DMAIN);
        NetworkIcon_Init();
    }

    SetVBlankCallback(VBlankCallback, app);
}

static void LoadBackgrounds(BattleArcadeApp *app)
{
    InitGXBanks();
    InitBackgrounds(app->bgConfig);

    app->plttData = PaletteData_New(HEAP_ID_BATTLE_ARCADE_APP);
    PaletteData_AllocBuffer(app->plttData, PLTTBUF_MAIN_OBJ, PALETTE_SIZE_BYTES * SLOTS_PER_PALETTE, HEAP_ID_BATTLE_ARCADE_APP);
    PaletteData_AllocBuffer(app->plttData, PLTTBUF_MAIN_BG, PALETTE_SIZE_BYTES * SLOTS_PER_PALETTE, HEAP_ID_BATTLE_ARCADE_APP);

    LoadInitialBackround(app, BG_LAYER_MAIN_3);
    LoadPalette();
    LoadSubScreenBackground(app, BG_LAYER_SUB_0);
}

static void InitSpriteManager(BattleArcadeApp *app)
{
    BattleArcadeApp_InitSpriteManager(&app->spriteMan, app->party, app->opponentsParty, BattleArcade_IsMultiPlayerChallenge(app->challengeType));
}

static void FreeBackgrounds(BgConfig *app)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, FALSE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, FALSE);

    Bg_FreeTilemapBuffer(app, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(app, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(app, BG_LAYER_SUB_0);
    Heap_Free(app);
}

static void VBlankCallback(void *data)
{
    BattleArcadeApp *app = data;

    if (app->plttData != NULL) {
        PaletteData_CommitFadedBuffers(app->plttData);
    }

    Bg_RunScheduledUpdates(app->bgConfig);
    VramTransfer_Process();
    RenderOam_Transfer();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void InitGXBanks(void)
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
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &bgTemplate1, BG_TYPE_STATIC);
    Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32, 0, HEAP_ID_BATTLE_ARCADE_APP);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_1);

    BgTemplate bgTemplate2 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x2000,
        .charBase = GX_BG_CHARBASE_0x0c000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 2,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_3, &bgTemplate2, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_3);

    BgTemplate bgTemplate3 = {
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

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_0, &bgTemplate3, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_0);

    G2_SetBG0Priority(0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, FALSE);
}

static void LoadInitialBackround(BattleArcadeApp *app, enum BgLayer bgLayer)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(app->narc, BATTLE_ARCADE_APP_MAIN_TILES, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_ARCADE_APP);

    u32 idx = !BattleArcade_IsMultiPlayerChallenge(app->challengeType) ? BATTLE_ARCADE_APP_MAIN_INITIAL_TILEMAP : BATTLE_ARCADE_APP_MAIN_MULTI_INITIAL_TILEMAP;
    Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, idx, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_ARCADE_APP);
}

static void LoadRouletteBackground(BattleArcadeApp *app, enum BgLayer bgLayer)
{
    u32 idx = !BattleArcade_IsMultiPlayerChallenge(app->challengeType) ? BATTLE_ARCADE_APP_MAIN_ROULETTE_TILEMAP : BATTLE_ARCADE_APP_MAIN_MULTI_ROULETTE_TILEMAP;
    Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, idx, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_ARCADE_APP);
}

static void LoadPalette(void)
{
    NNSG2dPaletteData *plttData;
    void *pltt = Graphics_GetPlttData(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, 167, &plttData, HEAP_ID_BATTLE_ARCADE_APP);

    DC_FlushRange(plttData->pRawData, PALETTE_SIZE_BYTES * 7);
    GX_LoadBGPltt(plttData->pRawData, 0, PALETTE_SIZE_BYTES * 7);
    Heap_Free(pltt);
}

static void LoadSubScreenBackground(BattleArcadeApp *app, enum BgLayer bgLayer)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(app->narc, BATTLE_ARCADE_APP_SUB_TILES, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_ARCADE_APP);
    Graphics_LoadPaletteFromOpenNARC(app->narc, Battle_ARCADE_APP_SUB_PLTT, PAL_LOAD_SUB_BG, 0, PLTT_OFFSET(2), HEAP_ID_BATTLE_ARCADE_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_ARCADE_APP_SUB_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_ARCADE_APP);
}

static void ChangeState(BattleArcadeApp *app, int *state, enum BattleArcadeAppState newState)
{
    app->subState = 0;
    *state = newState;
}

static void UpdateCursorPosition(BattleArcadeApp *app, int unused)
{
    u8 rouletteSpeed = *app->rouletteSpeed;
    app->cursorUpdateTimer++;

    if (app->cursorUpdateTimer >= sCursorMoveFrames[rouletteSpeed][0]) {
        app->cursorUpdateTimer = 0;

        if (app->randomizeCursorMovement == TRUE) {
            app->cursorPos = LCRNG_Next() % GRID_SIZE;
        } else {
            app->cursorPos++;
        }

        Sound_PlayEffect(SEQ_SE_DP_BUTTON3);

        if (app->cursorPos >= app->gridSize) {
            app->cursorPos = 0;
        }

        UpdateCursorSpritePosition(app, app->cursorPos);
    }
}

static void UpdateCursorSpritePosition(BattleArcadeApp *app, u8 cursorPos)
{
    BattleArcadeAppSprite_SetPosition(app->cursorSprite, 68 + (40 * (cursorPos % 4)), 36 + (40 * (cursorPos / 4)));
}

static void SetResultCursorPos(BattleArcadeApp *app)
{
    app->resultCursorPos = app->cursorPos;
}

static u8 NormalizeCursorPosition(u8 gridSize, u8 cursorPos)
{
    if (cursorPos < gridSize) {
        return cursorPos;
    }

    return cursorPos - gridSize;
}

static u16 GetBattleNumber(BattleArcadeApp *app)
{
    u16 battleNum = app->battleStreak;

    if (BattleArcade_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
        if (app->partnerBattleStreak > app->battleStreak) {
            battleNum = app->partnerBattleStreak;
        }
    }

    return battleNum;
}

static BOOL SendCommMessage(BattleArcadeApp *app, u16 cmd, u16 arg)
{
    int commCmd;
    switch (cmd) {
    case COMM_CMD_INITIAL_LAYOUT:
        commCmd = 71;
        CreateInitialLayoutPayload(app, cmd);
        break;
    case COMM_CMD_RESULT:
        commCmd = 72;
        CreateResultPayload(app, cmd, arg);
        break;
    case 32:
        commCmd = 73;
        UnusedCommCommandPayload(app, cmd);
        break;
    }

    return CommSys_SendData(commCmd, app->commPayload, 40) == TRUE;
}

static void CreateInitialLayoutPayload(BattleArcadeApp *app, u16 cmd)
{
    int i = 0;
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(app->saveData);

    app->commPayload[i] = cmd;

    i += 1;
    i += 1;

    for (int j = 0; j < GRID_SIZE; j++) {
        app->commPayload[i + j] = app->rouletteEffects[j];
    }

    i += GRID_SIZE;
    app->commPayload[i] = app->startingCursorPos;
    i += 1;
}

void BattleArcadeApp_HandleInitialLayoutCmd(int netID, int unused, void *data, void *context)
{
    BattleArcadeApp *app = context;
    const u16 *payload = data;

    int i = 0;
    app->numReceivedMsgs++;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    i += 2;

    if (CommSys_CurNetId() != 0) {
        for (int j = 0; j < GRID_SIZE; j++) {
            app->rouletteEffects[j] = payload[i + j];
        }

        i += GRID_SIZE;
        app->startingCursorPos = payload[i];
    }
}

static void CreateResultPayload(BattleArcadeApp *app, u16 cmd, u16 resultCursorPos)
{
    app->commPayload[0] = cmd;
    app->commPayload[1] = resultCursorPos;

    if (CommSys_CurNetId() == 0) {
        if (app->cursorPosID == 0xff) {
            app->cursorPosID = resultCursorPos;
        }
    }

    app->commPayload[2] = app->cursorPosID;
    app->commPayload[3] = *app->unk_24;
}

static u16 GetRandomNumber(BattleArcadeApp *app)
{
    return LCRNG_Next();
}

void BattleArcadeApp_HandleResultCmd(int netID, int unused, void *data, void *context)
{
    BattleArcadeApp *app = context;
    const u16 *payload = data;

    app->numReceivedMsgs++;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    app->cursorPosTemp = payload[1];

    if (CommSys_CurNetId() == 0) {
        if (app->cursorPosID != 0xff) {
            app->cursorPosTemp = 0;
        } else {
            app->cursorPosID = app->cursorPosTemp + app->gridSize;
        }
    } else {
        app->cursorPosID = payload[2];
        *app->unk_24 = payload[3];
    }
}

static void UnusedCommCommandPayload(BattleArcadeApp *app, u16 cmd)
{
    app->commPayload[0] = cmd;
    app->commPayload[1] = app->cursorPos;
}

void BattleArcadeApp_HandleUnusedCmd(int netID, int unused, void *data, void *context)
{
    BattleArcadeApp *app = context;
    const u16 *payload = data;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    app->partnerCursorPos = payload[1];
}

static void SetSelectedEffect(BattleArcadeApp *app, u8 cursorPos)
{
    u8 finalCursorPos = NormalizeCursorPosition(app->gridSize, cursorPos);
    u8 selectedEffect = app->rouletteEffects[finalCursorPos];

    *app->selectedEffect = selectedEffect;

    for (int i = 0; i < GRID_SIZE; i++) {
        if (app->tileSprites[i] != NULL) {
            BattleArcadeAppSprite_SetAnim(app->tileSprites[i], selectedEffect);
        }
    }

    UpdateCursorSpritePosition(app, finalCursorPos);
    Sound_PlayEffect(SEQ_SE_DP_PIRORIRO2);
}

static void GetAvailableEffects(BattleArcadeApp *app)
{
    for (int effect = 0; effect < NELEMS(sEffectAvailabilityByRound); effect++) {
        u8 isAvailable;

        switch (app->round) {
        case 0:
            isAvailable = sEffectAvailabilityByRound[effect].round1;
            break;
        case 1:
            isAvailable = sEffectAvailabilityByRound[effect].round2;
            break;
        case 2:
            isAvailable = sEffectAvailabilityByRound[effect].round3;
            break;
        case 3:
            isAvailable = sEffectAvailabilityByRound[effect].round4;
            break;
        case 4:
            isAvailable = sEffectAvailabilityByRound[effect].round5;
            break;
        case 5:
            isAvailable = sEffectAvailabilityByRound[effect].round6;
            break;
        default:
            isAvailable = sEffectAvailabilityByRound[effect].round7;
            break;
        }

        if (isAvailable == TRUE) {
            u8 effectIndex = 0xff;

            switch (effect) {
            case ARCADE_EFFECT_RANDOMIZE_CURSOR:
                effectIndex = 0;
                break;
            case ARCADE_EFFECT_SWAP_MONS:
                effectIndex = 1;
                break;
            case ARCADE_EFFECT_SPEED_UP:
                effectIndex = 2;
                break;
            case ARCADE_EFFECT_SLOW_DOWN:
                effectIndex = 3;
                break;
            case ARCADE_EFFECT_GET_1_BP:
                effectIndex = 4;
                break;
            case ARCADE_EFFECT_NO_BATTLE:
                effectIndex = 5;
                break;
            case ARCADE_EFFECT_GET_3_BP:
                effectIndex = 6;
                break;
            }

            u16 battleNum = GetBattleNumber(app);
            u16 normalizedBattleNum = battleNum % BATTLES_PER_ROUND_ARCADE;

            if (battleNum >= 9999) {
                normalizedBattleNum = 6;
            }

            if (effectIndex != 0xff) {
                switch (normalizedBattleNum) {
                case 0:
                    isAvailable = sEffectAvailabilityByBattle[effectIndex].battle1;
                    break;
                case 1:
                    isAvailable = sEffectAvailabilityByBattle[effectIndex].battle2;
                    break;
                case 2:
                    isAvailable = sEffectAvailabilityByBattle[effectIndex].battle3;
                    break;
                case 3:
                    isAvailable = sEffectAvailabilityByBattle[effectIndex].battle4;
                    break;
                case 4:
                    isAvailable = sEffectAvailabilityByBattle[effectIndex].battle5;
                    break;
                case 5:
                    isAvailable = sEffectAvailabilityByBattle[effectIndex].battle6;
                    break;
                case 6:
                case 7:
                    isAvailable = sEffectAvailabilityByBattle[effectIndex].battle7;
                    break;
                default:
                    GF_ASSERT(0);
                    isAvailable = TRUE;
                    break;
                }
            } else {
                isAvailable = TRUE;
            }

            if (isAvailable == TRUE) {
                app->availableEffects[app->numAvailableEffects] = effect;
                app->numAvailableEffects++;
            }
        }
    }
}

static void GetEffectCategoryCounts(BattleArcadeApp *app)
{
    int i;
    for (i = 0; i < NELEMS(Unk_ov108_0224367C); i++) {
        if (app->unk_12 >= Unk_ov108_0224367C[i]) {
            break;
        }
    }

    app->categoryWeightTier = i;

    for (i = 0; i < app->numAvailableEffects; i++) {
        if (BattleArcade_GetCategoryFromEffect(app->availableEffects[i]) == ARCADE_EFFECT_CATEGORY_FOE) {
            app->availableEffectsPerCategory[ARCADE_EFFECT_CATEGORY_FOE]++;
        } else if (BattleArcade_GetCategoryFromEffect(app->availableEffects[i]) == ARCADE_EFFECT_CATEGORY_ALLY) {
            app->availableEffectsPerCategory[ARCADE_EFFECT_CATEGORY_ALLY]++;
        } else if (BattleArcade_GetCategoryFromEffect(app->availableEffects[i]) == ARCADE_EFFECT_CATEGORY_ENV) {
            app->availableEffectsPerCategory[ARCADE_EFFECT_CATEGORY_ENV]++;
        } else if (BattleArcade_GetCategoryFromEffect(app->availableEffects[i]) == ARCADE_EFFECT_CATEGORY_BONUS) {
            app->availableEffectsPerCategory[ARCADE_EFFECT_CATEGORY_BONUS]++;
        }
    }
}

static void AssignEffectsToGrid(BattleArcadeApp *app)
{
    u8 effectsIndex = 0;

    for (int i = 0; i < GRID_SIZE; i++) {
        u8 category = GetRandomCategory(app, app->categoryWeightTier);
        int numEffectsInCategory = app->availableEffectsPerCategory[category];

        int startOffset = 0;
        if (category == ARCADE_EFFECT_CATEGORY_FOE) {
            startOffset = 0;
        } else if (category == ARCADE_EFFECT_CATEGORY_ALLY) {
            startOffset += app->availableEffectsPerCategory[ARCADE_EFFECT_CATEGORY_FOE];
        } else if (category == ARCADE_EFFECT_CATEGORY_ENV) {
            startOffset += app->availableEffectsPerCategory[ARCADE_EFFECT_CATEGORY_FOE];
            startOffset += app->availableEffectsPerCategory[ARCADE_EFFECT_CATEGORY_ALLY];
        } else if (category == ARCADE_EFFECT_CATEGORY_BONUS) {
            startOffset += app->availableEffectsPerCategory[ARCADE_EFFECT_CATEGORY_FOE];
            startOffset += app->availableEffectsPerCategory[ARCADE_EFFECT_CATEGORY_ALLY];
            startOffset += app->availableEffectsPerCategory[ARCADE_EFFECT_CATEGORY_ENV];
        }

        u16 start = LCRNG_Next() % numEffectsInCategory;
        start += startOffset;
        effectsIndex = start;

        int loopCounter = 0;
        while (TRUE) {
            if (loopCounter >= 50) {
                GF_ASSERT(0);
                app->rouletteEffects[i] = ARCADE_EFFECT_LOWER_FOE_HP;
                loopCounter = 0;
                break;
            }

            if (BattleArcade_GetCategoryFromEffect(app->availableEffects[effectsIndex]) == category) {
                app->rouletteEffects[i] = app->availableEffects[effectsIndex];
                loopCounter = 0;
                break;
            }

            effectsIndex++;
            loopCounter++;

            if (effectsIndex >= app->numAvailableEffects) {
                effectsIndex = 0;
            }

            if (effectsIndex == start) {
                category++;

                if (category >= NUM_ARCADE_EFFECT_CATEGORIES) {
                    category = ARCADE_EFFECT_CATEGORY_FOE;
                }
            }
        }
    }
}

static u8 GetRandomCategory(BattleArcadeApp *app, u8 weightsIndex)
{
    u8 category;
    u8 sum = 0;
    u16 rand = LCRNG_Next() % 100;

    for (category = ARCADE_EFFECT_CATEGORY_FOE; category < NUM_ARCADE_EFFECT_CATEGORIES; category++) {
        sum += sCategoryWeights[weightsIndex][category];

        if (rand < sum) {
            break;
        }
    }

    if (category >= NUM_ARCADE_EFFECT_CATEGORIES) {
        GF_ASSERT(0);
        category = ARCADE_EFFECT_CATEGORY_FOE;
    }

    return category;
}

static void UpdateItemSprites(BattleArcadeApp *app)
{
    u8 partySize = BattleArcade_GetPartySize(app->challengeType, TRUE);
    u8 opponentPartySize = BattleArcade_GetOpponentPartySize(app->challengeType, TRUE);

    for (u8 i = 0; i < partySize; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(app->party, i);

        if (Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL) == ITEM_NONE) {
            BattleArcadeAppSprite_SetDrawFlag(app->itemSprites[i], FALSE);
        } else {
            BattleArcadeAppSprite_SetDrawFlag(app->itemSprites[i], TRUE);
        }
    }

    for (u8 i = 0; i < opponentPartySize; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(app->opponentsParty, i);

        if (Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL) == ITEM_NONE) {
            BattleArcadeAppSprite_SetDrawFlag(app->opponentItemSprites[i], FALSE);
        } else {
            BattleArcadeAppSprite_SetDrawFlag(app->opponentItemSprites[i], TRUE);
        }
    }
}

static BOOL CheckStopButtonPressed(BattleArcadeApp *app)
{
    if (TouchScreen_CheckPressedHitTableID(sStopButtonHitBox) == TOUCH_BUTTON_PRESSED) {
        PressStopButton(app);
        return TRUE;
    }

    return FALSE;
}

static void PressStopButton(BattleArcadeApp *app)
{
    Sound_StopEffect(SEQ_SE_CONFIRM, 0);
    Sound_PlayEffect(SEQ_SE_DP_BUTTON9);
    BattleArcadeAppSprite_SetAnim(app->buttonSprite, ANIM_ID_BUTTON_PRESSED);
}
