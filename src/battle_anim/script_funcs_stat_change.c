#include "battle_anim/script_funcs_stat_change.h"

#include "nitro/os/common/emulator.h"
#include <nitro.h>
#include <string.h>

#include "constants/battle.h"
#include "constants/battle/battle_anim.h"
#include "constants/graphics.h"

#include "battle_anim/battle_anim_system.h"
#include "battle_anim/battle_anim_util.h"

#include "bg_window.h"
#include "graphics.h"
#include "palette.h"
#include "sprite_system.h"
#include "sys_task_manager.h"

// -------------------------------------------------------------------
// Stat Change
// -------------------------------------------------------------------
typedef struct StatChangeConfig {
    enum NarcID narcID;
    int memberTableIndex;
    int mode;
    s16 stepX;
    s16 stepY;
    s16 offsetX;
    s16 offsetY;
    u16 overlayAlpha;
    u16 otherAlpha;
} StatChangeConfig;

typedef struct StatChangeContext {
    StatChangeConfig config;
    BattleAnimScriptFuncCommon common;
    ManagedSprite *attackerSprite;
    ManagedSprite *attackerSprite2;
    ManagedSprite *attackerPartnerSprite;
    u8 timer;
} StatChangeContext;

enum StatChangeState {
    STAT_CHANGE_STATE_LOAD_BG = 0,
    STAT_CHANGE_STATE_SET_BLENDING,
    STAT_CHANGE_STATE_SCROLL,
    STAT_CHANGE_STATE_FADE_OUT
};

#define STAT_CHANGE_DEFAULT_BG_PRIORITY    2
#define STAT_CHANGE_OVERLAY_MOVE_FRAMES    20
#define STAT_CHANGE_OVERLAY_TARGET_ALPHA   0
#define STAT_CHANGE_OTHER_TARGET_ALPHA     16
#define STAT_CHANGE_STEP_X                 0
#define STAT_CHANGE_STEP_Y                 3
#define STAT_CHANGE_OVERLAY_START_ALPHA    12
#define STAT_CHANGE_OTHER_START_ALPHA      4
#define STAT_CHANGE_VAR_MEMBER_TABLE_INDEX 0
#define STAT_CHANGE_VAR_MODE               1

enum {
    STAT_CHANGE_MEMBER_TILES,
    STAT_CHANGE_MEMBER_PALETTE,
    STAT_CHANGE_MEMBER_TILEMAP,
    STAT_CHANGE_MEMBER_UNKNOWN,
    STAT_CHANGE_MEMBER_COUNT,
};

static const int sStatChangeNarcMemberTable[][STAT_CHANGE_MEMBER_COUNT] = {
    { 0x3C, 0x122, 0x3D, 0x3D },
    { 0x36, 0x11F, 0x37, 0x37 },
    { 0x38, 0x120, 0x39, 0x39 },
    { 0x3A, 0x121, 0x3B, 0x3B }
};

static void StatChangeConfig_SetStepSize(StatChangeConfig *config, s16 stepX, s16 stepY)
{
    config->stepX = stepX;
    config->stepY = stepY;
}

static void StatChangeConfig_SetInitAlpha(StatChangeConfig *config, u16 overlayAlpha, u16 otherAlpha)
{
    config->overlayAlpha = overlayAlpha;
    config->otherAlpha = otherAlpha;
}

static void StatChangeContext_LoadBg(StatChangeContext *ctx, enum BgLayer bgLayer)
{
    enum HeapID heapID = BattleAnimSystem_GetHeapID(ctx->common.battleAnimSys);
    int bgPriority = BattleAnimSystem_GetBgPriority(ctx->common.battleAnimSys, BATTLE_ANIM_BG_POKEMON);

    Bg_SetPriority(bgLayer, bgPriority);
    Graphics_LoadTilesToBgLayer(
        ctx->config.narcID,
        sStatChangeNarcMemberTable[ctx->config.memberTableIndex][STAT_CHANGE_MEMBER_TILES],
        ctx->common.bgConfig,
        bgLayer,
        0,
        0,
        TRUE,
        heapID);
    PaletteData_LoadBufferFromFileStart(
        ctx->common.paletteData,
        ctx->config.narcID,
        sStatChangeNarcMemberTable[ctx->config.memberTableIndex][STAT_CHANGE_MEMBER_PALETTE],
        heapID,
        PLTTBUF_MAIN_BG,
        PALETTE_SIZE_BYTES,
        PLTT_DEST(BATTLE_BG_PALETTE_MON_SPRITE));
    Bg_ClearTilemap(ctx->common.bgConfig, bgLayer);
    Graphics_LoadTilemapToBgLayer(
        ctx->config.narcID,
        sStatChangeNarcMemberTable[ctx->config.memberTableIndex][STAT_CHANGE_MEMBER_TILEMAP],
        ctx->common.bgConfig,
        bgLayer,
        0,
        0,
        TRUE,
        heapID);
}

static void BattleAnimTask_StatChange(SysTask *task, void *param)
{
    StatChangeContext *ctx = param;

    switch (ctx->common.state) {
    case STAT_CHANGE_STATE_LOAD_BG:
        StatChangeContext_LoadBg(ctx, BATTLE_BG_BASE);
        ctx->common.state++;
        break;
    case STAT_CHANGE_STATE_SET_BLENDING:
        G2_SetBlendAlpha(
            BATTLE_BG_BLENDMASK_BASE,
            GX_BLEND_PLANEMASK_BD | GX_BLEND_PLANEMASK_OBJ | BATTLE_BG_BLENDMASK_3D | BATTLE_BG_BLENDMASK_EFFECT,
            ctx->config.overlayAlpha,
            ctx->config.otherAlpha);
        ctx->common.state++;
        break;
    case STAT_CHANGE_STATE_SCROLL:
        if (ctx->timer > STAT_CHANGE_OVERLAY_MOVE_FRAMES) {
            ctx->common.state++;
        } else {
            ctx->timer++;
        }
        break;
    case STAT_CHANGE_STATE_FADE_OUT:
        if (ctx->config.overlayAlpha > STAT_CHANGE_OVERLAY_TARGET_ALPHA) {
            ctx->config.overlayAlpha--;
        }

        if (ctx->config.otherAlpha < STAT_CHANGE_OTHER_TARGET_ALPHA) {
            ctx->config.otherAlpha++;
        }

        if (ctx->config.overlayAlpha == STAT_CHANGE_OVERLAY_TARGET_ALPHA && ctx->config.otherAlpha == STAT_CHANGE_OTHER_TARGET_ALPHA) {
            Bg_ClearTilemap(ctx->common.bgConfig, BATTLE_BG_BASE);
            ManagedSprite_SetDrawFlag(ctx->attackerSprite, FALSE);
            ManagedSprite_SetDrawFlag(ctx->attackerSprite2, FALSE);
            ManagedSprite_SetDrawFlag(ctx->attackerPartnerSprite, FALSE);
            ctx->common.state++;
        }

        G2_ChangeBlendAlpha(ctx->config.overlayAlpha, ctx->config.otherAlpha);
        break;
    default:
        G2_SetWndOutsidePlane(BATTLE_BG_WNDMASK_ALL | GX_WND_PLANEMASK_OBJ, FALSE);
        G2_SetWndOBJInsidePlane(BATTLE_BG_WNDMASK_ALL | GX_WND_PLANEMASK_OBJ, FALSE);
        Bg_SetOffset(ctx->common.bgConfig, BATTLE_BG_BASE, BG_OFFSET_UPDATE_SET_X, 0);
        Bg_SetOffset(ctx->common.bgConfig, BATTLE_BG_BASE, BG_OFFSET_UPDATE_SET_Y, 0);
        GX_SetVisibleWnd(GX_WNDMASK_NONE);
        BattleAnimSystem_EndAnimTask(ctx->common.battleAnimSys, task);
        BattleAnimUtil_Free(ctx);
        ctx = NULL;
        return;
    }

    ctx->config.offsetX += ctx->config.stepX;
    ctx->config.offsetY += ctx->config.stepY;

    Bg_SetOffset(ctx->common.bgConfig, BATTLE_BG_BASE, BG_OFFSET_UPDATE_SET_X, ctx->config.offsetX);
    Bg_SetOffset(ctx->common.bgConfig, BATTLE_BG_BASE, BG_OFFSET_UPDATE_SET_Y, ctx->config.offsetY);

    ManagedSprite_TickFrame(ctx->attackerSprite);
    ManagedSprite_TickFrame(ctx->attackerSprite2);
    ManagedSprite_TickFrame(ctx->attackerPartnerSprite);
    SpriteSystem_DrawSprites(ctx->common.pokemonSpriteManager);
}

static void StatChangeConfig_Init(BattleAnimSystem *system, StatChangeConfig *config)
{
    config->narcID = NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG;
    config->memberTableIndex = BattleAnimSystem_GetScriptVar(system, STAT_CHANGE_VAR_MEMBER_TABLE_INDEX);
    config->mode = BattleAnimSystem_GetScriptVar(system, STAT_CHANGE_VAR_MODE);
}

static void BattleAnimScriptFunc_StatChangeCommon(BattleAnimSystem *system, StatChangeConfig *config)
{
    StatChangeContext *ctx = BattleAnimUtil_Alloc(system, sizeof(StatChangeContext));
    BattleAnimSystem_GetCommonData(system, &ctx->common);

    ctx->config = *config;
    ctx->attackerSprite = BattleAnimSystem_GetPokemonSprite(ctx->common.battleAnimSys, BATTLE_ANIM_MON_SPRITE_0);
    ctx->attackerSprite2 = BattleAnimSystem_GetPokemonSprite(ctx->common.battleAnimSys, BATTLE_ANIM_MON_SPRITE_1);
    ctx->attackerPartnerSprite = BattleAnimSystem_GetPokemonSprite(ctx->common.battleAnimSys, BATTLE_ANIM_MON_SPRITE_2);

    int bgPriority = BattleAnimSystem_GetBgPriority(ctx->common.battleAnimSys, BATTLE_ANIM_BG_EFFECT);
    bgPriority = STAT_CHANGE_DEFAULT_BG_PRIORITY;

    ManagedSprite_SetExplicitPriority(ctx->attackerSprite, bgPriority);
    ManagedSprite_SetExplicitPriority(ctx->attackerSprite2, bgPriority);

    int battler;
    if (ctx->config.mode == STAT_CHANGE_MODE_ATTACKER) {
        battler = BattleAnimSystem_GetAttacker(system);
    } else {
        battler = BattleAnimSystem_GetDefender(system);
    }

    int battlerType = BattleAnimUtil_GetBattlerType(system, battler);
    if (BattleAnimSystem_IsContest(system) == TRUE) {
        ManagedSprite_SetDrawFlag(ctx->attackerPartnerSprite, FALSE);
        bgPriority = BattleAnimSystem_GetBgPriority(ctx->common.battleAnimSys, BATTLE_ANIM_BG_EFFECT);
        ManagedSprite_SetExplicitPriority(ctx->attackerSprite, bgPriority);
        ManagedSprite_SetExplicitPriority(ctx->attackerSprite2, bgPriority);
    } else {
        if (battlerType == BATTLER_TYPE_SOLO_PLAYER || battlerType == BATTLER_TYPE_SOLO_ENEMY) {
            ManagedSprite_SetDrawFlag(ctx->attackerPartnerSprite, FALSE);
        } else if (battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_2 || battlerType == BATTLER_TYPE_ENEMY_SIDE_SLOT_1) {
            if (ctx->config.mode == STAT_CHANGE_MODE_ATTACKER) {
                ManagedSprite_SetExplicitPriority(ctx->attackerPartnerSprite, bgPriority + 1);
            } else {
                ManagedSprite_SetExplicitPriority(ctx->attackerPartnerSprite, bgPriority + 1);
            }
        } else { // BATTLER_TYPE_PLAYER_SIDE_SLOT_1 || BATTLER_TYPE_ENEMY_SIDE_SLOT_2
            if (ctx->config.mode == STAT_CHANGE_MODE_ATTACKER) {
                ManagedSprite_SetExplicitPriority(ctx->attackerPartnerSprite, bgPriority - 1);
            } else {
                ManagedSprite_SetExplicitPriority(ctx->attackerPartnerSprite, bgPriority - 1);
            }
        }
    }

    G2_SetWndOBJInsidePlane(GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_OBJ | GX_WND_PLANEMASK_BG2, TRUE);
    G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, TRUE);
    GX_SetVisibleWnd(GX_WNDMASK_OW);

    ManagedSprite_SetExplicitOamMode(ctx->attackerSprite2, GX_OAM_MODE_OBJWND);

    ctx->config.offsetX = 0;
    ctx->config.offsetY = 0;

    BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSys, BattleAnimTask_StatChange, ctx);
}

void BattleAnimScriptFunc_StatChangeUp(BattleAnimSystem *system)
{
    StatChangeConfig config;

    StatChangeConfig_Init(system, &config);
    StatChangeConfig_SetStepSize(&config, STAT_CHANGE_STEP_X, +STAT_CHANGE_STEP_Y);
    StatChangeConfig_SetInitAlpha(&config, STAT_CHANGE_OVERLAY_START_ALPHA, STAT_CHANGE_OTHER_START_ALPHA);
    BattleAnimScriptFunc_StatChangeCommon(system, &config);
}

void BattleAnimScriptFunc_StatChangeDown(BattleAnimSystem *system)
{
    StatChangeConfig config;

    StatChangeConfig_Init(system, &config);
    StatChangeConfig_SetStepSize(&config, STAT_CHANGE_STEP_X, -STAT_CHANGE_STEP_Y);
    StatChangeConfig_SetInitAlpha(&config, STAT_CHANGE_OVERLAY_START_ALPHA, STAT_CHANGE_OTHER_START_ALPHA);
    BattleAnimScriptFunc_StatChangeCommon(system, &config);
}

void BattleAnimScriptFunc_StatChangeHeal(BattleAnimSystem *system)
{
    StatChangeConfig config;

    StatChangeConfig_Init(system, &config);
    StatChangeConfig_SetStepSize(&config, STAT_CHANGE_STEP_X, +STAT_CHANGE_STEP_Y);
    StatChangeConfig_SetInitAlpha(&config, STAT_CHANGE_OVERLAY_START_ALPHA, STAT_CHANGE_OTHER_START_ALPHA);
    BattleAnimScriptFunc_StatChangeCommon(system, &config);
}

void BattleAnimScriptFunc_StatChangeMetal(BattleAnimSystem *system)
{
    StatChangeConfig config;

    StatChangeConfig_Init(system, &config);
    StatChangeConfig_SetStepSize(&config, STAT_CHANGE_STEP_X, -2 * STAT_CHANGE_STEP_Y);
    StatChangeConfig_SetInitAlpha(&config, STAT_CHANGE_OVERLAY_START_ALPHA, STAT_CHANGE_OTHER_START_ALPHA);
    BattleAnimScriptFunc_StatChangeCommon(system, &config);
}
