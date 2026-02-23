#include "applications/poketch/friendship_checker/graphics.h"

#include <nitro.h>

#include "generated/sdat.h"

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_graphics.h"
#include "applications/poketch/poketch_system.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "math_util.h"
#include "narc.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"

#include "res/graphics/poketch/poketch.naix"

#define TIME_STEPS_PER_FRAME 16

#define POKE_ICON_SIZE 32
#define ICON_RADIUS    16

#define LEFT_EDGE   FX32_CONST(-10)
#define RIGHT_EDGE  FX32_CONST(217)
#define TOP_EDGE    FX32_CONST(-22)
#define BOTTOM_EDGE FX32_CONST(183)

#define NO_COLLISION          0
#define TWO_ICON_COLLISION    1
#define LEFT_EDGE_COLLISION   2
#define RIGHT_EDGE_COLLISION  3
#define TOP_EDGE_COLLISION    4
#define BOTTOM_EDGE_COLLISION 5

enum IconActions {
    ACTION_WANDER = 0,
    ACTION_GATHER,
    ACTION_RUN_AWAY,
    ACTION_SHOW_LIKE,
    ACTION_SHOW_DISLIKE,
    ACTION_JUMP,
};

static void PrintDebugLog(const char *text, ...);

static void SetupSprites(FriendshipCheckerGraphics *graphics, const FriendshipCheckerData *friendshipData);
static void SetupIconMovement(FriendshipCheckerGraphics *graphics, const FriendshipCheckerData *friendshipData);
static void SetupTapState(FriendshipCheckerGraphics *graphics);
static void SetRandomVelocity(VecFx32 *velocity);

static void EndTask(PoketchTaskManager *taskMan);
static void Task_InitGraphics(SysTask *task, void *taskMan);
static void Task_UpdateGraphics(SysTask *task, void *taskMan);
static void Task_FreeBackground(SysTask *task, void *taskMan);

static void UpdateTapState(FriendshipCheckerGraphics *graphics, enum TapState newTapState);
static void TapStateIdle(FriendshipCheckerGraphics *graphics, const FriendshipCheckerData *friendshipData);
static void TapStateFirstTap(FriendshipCheckerGraphics *graphics, const FriendshipCheckerData *friendshipData);
static void TapStateHeldTooLong(FriendshipCheckerGraphics *graphics, const FriendshipCheckerData *friendshipData);
static void TapStateReleasedFirst(FriendshipCheckerGraphics *graphics, const FriendshipCheckerData *friendshipData);
static void TapStateDoubleTap(FriendshipCheckerGraphics *graphics, const FriendshipCheckerData *friendshipData);
static void TriggerJumpSequence(FriendshipCheckerGraphics *graphics);

static void ShowHeartSprite(FriendshipCheckerGraphics *graphics, int slot);
static void ShowShadowSprite(FriendshipCheckerGraphics *graphics, int slot);
static void HideActionSprite(FriendshipCheckerGraphics *graphics, int slot);

static BOOL NoJumpingMons(FriendshipCheckerGraphics *graphics);
static u32 CheckIfTouchingMon(FriendshipCheckerGraphics *graphics);
static void RunIconActions(FriendshipCheckerGraphics *graphics, const FriendshipCheckerData *friendshipData);
static void UpdateIconAction(FriendshipCheckerGraphics *graphics, int slot, enum IconActions newAction);
static inline void UpdateIconDirection(PokemonGraphic *pokemon);

static void LimitIconSpeed(fx32 maxSpeed, u32 slowdownRate, VecFx32 *velocity);
static BOOL PointWithinDistance(u32 x, u32 y, u32 distance, const VecFx32 *point);
static BOOL VectorIsZero(const VecFx32 *vec);
static inline BOOL VectorIsZeroInline(const VecFx32 *vec);
static inline void InvertVector(VecFx32 *vec);

static void HandleWanderAction(FriendshipCheckerGraphics *graphics, const FriendshipCheckerData *friendshipData, int slot);
static void HandleGatherAction(FriendshipCheckerGraphics *graphics, const FriendshipCheckerData *friendshipData, int slot);
static void HandleRunAwayAction(FriendshipCheckerGraphics *graphics, const FriendshipCheckerData *friendshipData, int slot);
static void HandleShowLikeAction(FriendshipCheckerGraphics *graphics, const FriendshipCheckerData *friendshipData, int slot);
static void HandleShowDislikeAction(FriendshipCheckerGraphics *graphics, const FriendshipCheckerData *friendshipData, int slot);
static void HandleJumpAction(FriendshipCheckerGraphics *graphics, const FriendshipCheckerData *friendshipData, int slot);
static void UpdateIconPositions(FriendshipCheckerGraphics *graphics, const FriendshipCheckerData *friendshipData);

BOOL PoketchFriendshipCheckerGraphics_New(FriendshipCheckerGraphics **dest, const FriendshipCheckerData *friendshipData, BgConfig *bgConfig)
{
    FriendshipCheckerGraphics *graphics = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(FriendshipCheckerGraphics));

    if (graphics != NULL) {

        PoketchTask_InitActiveTaskList(graphics->activeTasks, FRIENDSHIP_CHECKER_TASK_SLOTS);

        graphics->friendshipData = friendshipData;
        graphics->bgConfig = PoketchGraphics_GetBgConfig();
        graphics->animMan = PoketchGraphics_GetAnimationManager();
        graphics->updateTask = NULL;

        for (int slot = 0; slot < MAX_PARTY_SIZE; slot++) {
            graphics->pokemon[slot].iconSprite = NULL;
            graphics->pokemon[slot].actionSprite = NULL;
        }

        PoketchAnimation_LoadSpriteFromNARC(&graphics->monAnimData, NARC_INDEX_GRAPHIC__POKETCH, poke_icon_cell_NCER_lz, poke_icon_anim_NANR_lz, HEAP_ID_POKETCH_APP);
        PoketchAnimation_LoadSpriteFromNARC(&graphics->heartAnimData, NARC_INDEX_GRAPHIC__POKETCH, friendship_checker_cell_NCER_lz, friendship_checker_anim_NANR_lz, HEAP_ID_POKETCH_APP);
        *dest = graphics;
        return TRUE;
    }

    return FALSE;
}

void PoketchFriendshipCheckerGraphics_Free(FriendshipCheckerGraphics *graphics)
{
    if (graphics != NULL) {

        for (int slot = 0; slot < MAX_PARTY_SIZE; slot++) {
            if (graphics->pokemon[slot].iconSprite != NULL) {
                PoketchAnimation_RemoveAnimatedSprite(graphics->animMan, graphics->pokemon[slot].iconSprite);
            }

            if (graphics->pokemon[slot].actionSprite != NULL) {
                PoketchAnimation_RemoveAnimatedSprite(graphics->animMan, graphics->pokemon[slot].actionSprite);
            }
        }

        PoketchAnimation_FreeSpriteData(&graphics->monAnimData);
        PoketchAnimation_FreeSpriteData(&graphics->heartAnimData);

        if (graphics->updateTask != NULL) {
            SysTask_Done(graphics->updateTask);
        }

        Heap_Free(graphics);
    }
}

static const PoketchTask sFrienshipCheckerTasks[] = {
    { FRIENDSHIP_CHECKER_GRAPHICS_INIT, Task_InitGraphics, 0 },
    { FRIENDSHIP_CHECKER_GRAPHICS_FREE, Task_FreeBackground, 0 },
    { 0 }
};

void PoketchFriendshipCheckerGraphics_StartTask(FriendshipCheckerGraphics *graphics, enum FriendshipCheckerGraphicsTask taskID)
{
    PoketchTask_Start(sFrienshipCheckerTasks, taskID, graphics, graphics->friendshipData, graphics->activeTasks, 2, HEAP_ID_POKETCH_APP);
}

BOOL PoketchFriendshipCheckerGraphics_TaskIsNotActive(FriendshipCheckerGraphics *graphics, enum FriendshipCheckerGraphicsTask taskID)
{
    return PoketchTask_TaskIsNotActive(graphics->activeTasks, taskID);
}

BOOL PoketchFriendshipCheckerGraphics_NoActiveTasks(FriendshipCheckerGraphics *graphics)
{
    return PoketchTask_NoActiveTasks(graphics->activeTasks);
}

static void EndTask(PoketchTaskManager *taskMan)
{
    FriendshipCheckerGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    PoketchTask_EndTask(graphics->activeTasks, taskMan);
}

static void Task_InitGraphics(SysTask *task, void *taskMan)
{
    static const BgTemplate bgTemplate = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x7000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 2,
        .areaOver = 0,
        .mosaic = FALSE,
    };
    GXSDispCnt dispCnt;
    FriendshipCheckerGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    Bg_InitFromTemplate(graphics->bgConfig, BG_LAYER_SUB_2, &bgTemplate, BG_TYPE_STATIC);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, generic_bg_tiles_NCGR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    Bg_FillTilemapRect(graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, 0, POKETCH_WIDTH_TILES, POKETCH_HEIGHT_TILES, 0);

    PoketchGraphics_LoadActivePalette(0, 0);
    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);

    SetupSprites(graphics, graphics->friendshipData);
    SetupIconMovement(graphics, graphics->friendshipData);

    dispCnt = GXS_GetDispCnt();
    GXS_SetVisiblePlane(dispCnt.visiblePlane | GX_PLANEMASK_BG2 | GX_PLANEMASK_OBJ);
    EndTask(taskMan);
}

static void SetupSprites(FriendshipCheckerGraphics *graphics, const FriendshipCheckerData *friendshipData)
{
    static const struct {
        u16 x;
        u16 y;
    } initialLocations[] = {
        { 48, 44 },
        { 176, 44 },
        { 48, 92 },
        { 176, 92 },
        { 48, 140 },
        { 176, 140 }
    };
    NARC *pokeIconNarc;

    PoketchTask_LoadPokemonIconLuminancePalette(1);
    Graphics_LoadObjectTiles(NARC_INDEX_GRAPHIC__POKETCH, friendship_checker_NCGR_lz, DS_SCREEN_SUB, POKE_ICON_SIZE * MAX_PARTY_SIZE * TILE_SIZE_4BPP, 0, TRUE, HEAP_ID_POKETCH_APP);

    pokeIconNarc = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, HEAP_ID_POKETCH_APP);

    if (pokeIconNarc) {
        PoketchAnimation_AnimationData animData;
        NNSG2dCharacterData *charData;
        void *ncgrFile;

        animData.animIdx = 0;
        animData.flip = NNS_G2D_RENDERERFLIP_NONE;
        animData.oamPriority = 2;
        animData.hasAffineTransform = TRUE;

        for (int slot = 0; slot < friendshipData->monCount; slot++) {
            ncgrFile = NARC_AllocAndReadWholeMember(pokeIconNarc, friendshipData->party[slot].spriteIdx, HEAP_ID_POKETCH_APP);
            NNS_G2dGetUnpackedCharacterData(ncgrFile, &charData);
            DC_FlushRange(charData->pRawData, POKE_ICON_SIZE * TILE_SIZE_4BPP);
            GXS_LoadOBJ(charData->pRawData, POKE_ICON_SIZE * TILE_SIZE_4BPP * slot, POKE_ICON_SIZE * TILE_SIZE_4BPP);
            Heap_Free(ncgrFile);

            animData.translation.x = (initialLocations[slot].x) << FX32_SHIFT;
            animData.translation.y = (initialLocations[slot].y) << FX32_SHIFT;

            animData.priority = 1;
            graphics->pokemon[slot].iconSprite = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &animData, &graphics->monAnimData);

            PoketchAnimation_SetSpriteCharNo(graphics->pokemon[slot].iconSprite, POKE_ICON_SIZE * slot);
            PoketchAnimation_SetCParam(graphics->pokemon[slot].iconSprite, 1 + PokeIconPaletteIndex(friendshipData->party[slot].species, friendshipData->party[slot].form, FALSE));

            animData.priority = 0;
            graphics->pokemon[slot].actionSprite = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &animData, &graphics->heartAnimData);

            if (graphics->pokemon[slot].actionSprite) {
                PoketchAnimation_HideSprite(graphics->pokemon[slot].actionSprite, TRUE);
                PoketchAnimation_SetSpriteCharNo(graphics->pokemon[slot].actionSprite, POKE_ICON_SIZE * MAX_PARTY_SIZE);
                PoketchAnimation_SetCParam(graphics->pokemon[slot].actionSprite, 0);
            } else {
                GF_ASSERT(0);
            }

            graphics->pokemon[slot].flipSprite = SpeciesData_GetFormValue(friendshipData->party[slot].species, friendshipData->party[slot].form, SPECIES_DATA_FLIP_SPRITE);
            graphics->pokemon[slot].unused2 = 0;
            graphics->pokemon[slot].bumpedFromRest = FALSE;

            VEC_Set(&graphics->pokemon[slot].position, animData.translation.x, animData.translation.y, 0);
            VEC_Set(&graphics->pokemon[slot].iconOffset, 0, 0, 0);
        }

        NARC_dtor(pokeIconNarc);
    }
}

static void SetRandomVelocity(VecFx32 *velocity)
{
    fx32 x, y;

    x = ((MTRNG_Next() % 64) - 32) * FX32_ONE;
    y = ((MTRNG_Next() % 64) - 32) * FX32_ONE;

    VEC_Set(velocity, x, y, 0);
    VEC_Normalize(velocity, velocity);

    velocity->x /= TIME_STEPS_PER_FRAME;
    velocity->y /= TIME_STEPS_PER_FRAME;
}

static inline void UpdateIconDirection(PokemonGraphic *pokemon)
{
    if (pokemon->flipSprite) {
        PoketchAnimation_UpdateAnimationIdx(pokemon->iconSprite, 6);
    } else {
        PoketchAnimation_UpdateAnimationIdx(pokemon->iconSprite, (pokemon->velocity.x > 0) ? 7 : 6);
    }
}

static void SetupIconMovement(FriendshipCheckerGraphics *graphics, const FriendshipCheckerData *friendshipData)
{
    for (int slot = 0; slot < friendshipData->monCount; slot++) {
        SetRandomVelocity(&graphics->pokemon[slot].velocity);
        UpdateIconDirection(&graphics->pokemon[slot]);
    }

    SetupTapState(graphics);
    graphics->updateTask = SysTask_Start(Task_UpdateGraphics, graphics, 1);
}

static void Task_FreeBackground(SysTask *task, void *taskMan)
{
    FriendshipCheckerGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_2);
    EndTask(taskMan);
}

static void SetupTapState(FriendshipCheckerGraphics *graphics)
{
    graphics->tapState = TAP_STATE_IDLE;

    for (int slot = 0; slot < graphics->friendshipData->monCount; slot++) {
        graphics->pokemon[slot].action = ACTION_WANDER;
        graphics->pokemon[slot].collisionCooldown = 0;
    }

    graphics->touchedMonIdx = graphics->friendshipData->monCount;
    graphics->prevTouchedMonIdx = graphics->touchedMonIdx;
}

static void UpdateTapState(FriendshipCheckerGraphics *graphics, enum TapState newTapState)
{
    graphics->tapState = newTapState;
    graphics->tapStateCounter = 0;
}

static void Task_UpdateGraphics(SysTask *task, void *taskData)
{
    static void (*const tapStateHandlers[])(FriendshipCheckerGraphics *, const FriendshipCheckerData *) = {
        TapStateIdle,
        TapStateFirstTap,
        TapStateHeldTooLong,
        TapStateReleasedFirst,
        TapStateDoubleTap
    };

    FriendshipCheckerGraphics *graphics = taskData;
    const FriendshipCheckerData *friendshipData = graphics->friendshipData;

    if (friendshipData->screenHeld) {
        graphics->touchX = friendshipData->touchX;
        graphics->touchY = friendshipData->touchY - 8;
        graphics->touchedMonIdx = CheckIfTouchingMon(graphics);
        graphics->touchingMonIcon = (graphics->touchedMonIdx < friendshipData->monCount);

        if (graphics->touchingMonIcon && (graphics->touchedMonIdx != graphics->prevTouchedMonIdx)) {
            PoketchSystem_PlayCry(friendshipData->party[graphics->touchedMonIdx].species, friendshipData->party[graphics->touchedMonIdx].form);
        }

        graphics->prevTouchedMonIdx = graphics->touchedMonIdx;
    } else {
        graphics->touchingMonIcon = FALSE;
        graphics->prevTouchedMonIdx = friendshipData->monCount;
    }

    tapStateHandlers[graphics->tapState](graphics, friendshipData);

    RunIconActions(graphics, friendshipData);

    if (graphics->tapState != TAP_STATE_DOUBLE_TAP) {
        UpdateIconPositions(graphics, friendshipData);
    }
}

static u32 CheckIfTouchingMon(FriendshipCheckerGraphics *graphics)
{
    int x, y;

    for (int slot = 0; slot < graphics->friendshipData->monCount; slot++) {
        x = graphics->pokemon[slot].position.x >> FX32_SHIFT;
        y = graphics->pokemon[slot].position.y >> FX32_SHIFT;
        x = (graphics->touchX - x) * (graphics->touchX - x);
        y = (graphics->touchY - y) * (graphics->touchY - y);

        if (x + y < (ICON_RADIUS * ICON_RADIUS)) {
            return slot;
        }
    }

    return graphics->friendshipData->monCount;
}

static BOOL PointWithinDistance(u32 x, u32 y, u32 distance, const VecFx32 *point)
{
    int deltaX, deltaY;
    int maxDistance;

    x <<= FX32_SHIFT;
    y <<= FX32_SHIFT;

    deltaX = x - point->x;
    deltaY = y - point->y;
    deltaX = (deltaX >> FX32_SHIFT) * deltaX;
    deltaY = (deltaY >> FX32_SHIFT) * deltaY;

    maxDistance = (s64)(distance * distance) << FX32_SHIFT;
    if (maxDistance > (deltaX + deltaY)) {
        return TRUE;
    }

    return FALSE;
}

static void TapStateIdle(FriendshipCheckerGraphics *graphics, const FriendshipCheckerData *friendshipData)
{
    if (friendshipData->screenTapped) {
        graphics->tappedOnMonIcon = graphics->touchingMonIcon;
        UpdateTapState(graphics, TAP_STATE_FIRST_TAP);
    }
}

static void TapStateFirstTap(FriendshipCheckerGraphics *graphics, const FriendshipCheckerData *friendshipData)
{
    if (friendshipData->screenHeld) {
        graphics->tapStateCounter++;

        if (graphics->tapStateCounter > 6) {
            UpdateTapState(graphics, TAP_STATE_HELD_TOO_LONG);
        }
    } else {
        if (graphics->tappedOnMonIcon) {
            UpdateTapState(graphics, TAP_STATE_IDLE);
        } else {
            UpdateTapState(graphics, TAP_STATE_FIRST_RELEASE);
        }
    }
}

static void TapStateHeldTooLong(FriendshipCheckerGraphics *graphics, const FriendshipCheckerData *friendshipData)
{
    if (friendshipData->screenHeld == FALSE) {
        UpdateTapState(graphics, TAP_STATE_IDLE);
    }
}

static void TapStateReleasedFirst(FriendshipCheckerGraphics *graphics, const FriendshipCheckerData *friendshipData)
{
    if (friendshipData->screenTapped == FALSE) {
        graphics->tapStateCounter++;

        if (graphics->tapStateCounter > 6) {
            UpdateTapState(graphics, TAP_STATE_IDLE);
        }
    } else {
        if (graphics->touchingMonIcon) {
            graphics->tappedOnMonIcon = TRUE;
            UpdateTapState(graphics, TAP_STATE_FIRST_TAP);
        } else {
            UpdateTapState(graphics, TAP_STATE_DOUBLE_TAP);
        }
    }
}

static void TapStateDoubleTap(FriendshipCheckerGraphics *graphics, const FriendshipCheckerData *friendshipData)
{
    if (graphics->tapStateCounter == 0) {
        TriggerJumpSequence(graphics);
        graphics->tapStateCounter++;
    } else {
        if (NoJumpingMons(graphics)) {
            UpdateTapState(graphics, TAP_STATE_IDLE);
        }
    }
}

static void PrintDebugLog(const char *text, ...)
{
    if (gSystem.heldKeys & PAD_BUTTON_B) {
        va_list args;
        va_start(args, text);
        va_end(args);
    }
}

static void RunIconActions(FriendshipCheckerGraphics *graphics, const FriendshipCheckerData *friendshipData)
{
    static void (*const actionHandlers[])(FriendshipCheckerGraphics *, const FriendshipCheckerData *, int) = {
        HandleWanderAction,
        HandleGatherAction,
        HandleRunAwayAction,
        HandleShowLikeAction,
        HandleShowDislikeAction,
        HandleJumpAction
    };

    for (int slot = 0; slot < friendshipData->monCount; slot++) {
        if (graphics->pokemon[slot].collisionCooldown) {
            graphics->pokemon[slot].collisionCooldown--;
            PrintDebugLog("icon[%d] REF[%d]\n", slot, graphics->pokemon[slot].collisionCooldown);
        } else {
            actionHandlers[graphics->pokemon[slot].action](graphics, friendshipData, slot);
        }
    }

    PrintDebugLog("------------\n");
}

static void UpdateIconAction(FriendshipCheckerGraphics *graphics, int slot, enum IconActions newAction)
{
    switch (graphics->pokemon[slot].action) {
    case ACTION_SHOW_LIKE:
        HideActionSprite(graphics, slot);
        break;
    }

    graphics->pokemon[slot].action = newAction;
    graphics->pokemon[slot].jumpState = 0;

    VEC_Set(&graphics->pokemon[slot].iconOffset, 0, 0, 0);

    switch (graphics->pokemon[slot].action) {
    case ACTION_SHOW_LIKE:
        ShowHeartSprite(graphics, slot);
        break;
    }
}

static void TriggerJumpSequence(FriendshipCheckerGraphics *graphics)
{
    for (int slot = 0; slot < graphics->friendshipData->monCount; slot++) {
        UpdateIconAction(graphics, slot, ACTION_JUMP);
        graphics->pokemon[slot].collisionCooldown = 0;
    }

    graphics->jumpingMons = graphics->friendshipData->monCount;
}

static BOOL NoJumpingMons(FriendshipCheckerGraphics *graphics)
{
    return graphics->jumpingMons == 0;
}

static void ShowHeartSprite(FriendshipCheckerGraphics *graphics, int slot)
{
    if (graphics->friendshipData->party[slot].friendship == FRIENDSHIP_LIKE) {
        PoketchAnimation_SetSpritePrority(graphics->animMan, graphics->pokemon[slot].actionSprite, 0);
        PoketchAnimation_UpdateAnimationIdx(graphics->pokemon[slot].actionSprite, graphics->friendshipData->party[slot].intensity - 1);
        PoketchAnimation_HideSprite(graphics->pokemon[slot].actionSprite, FALSE);
    }
}

static void ShowShadowSprite(FriendshipCheckerGraphics *graphics, int slot)
{
    PoketchAnimation_SetSpritePrority(graphics->animMan, graphics->pokemon[slot].actionSprite, 2);
    PoketchAnimation_UpdateAnimationIdx(graphics->pokemon[slot].actionSprite, 3);
    PoketchAnimation_HideSprite(graphics->pokemon[slot].actionSprite, FALSE);
}

static void HideActionSprite(FriendshipCheckerGraphics *graphics, int slot)
{
    PoketchAnimation_HideSprite(graphics->pokemon[slot].actionSprite, TRUE);
}

static void LimitIconSpeed(fx32 maxSpeed, u32 slowdownRate, VecFx32 *velocity)
{
    fx32 speed = VEC_Mag(velocity);

    if (speed > maxSpeed) {
        VecFx32 unitVector;

        speed = (speed * slowdownRate) / 100;

        VEC_Normalize(velocity, &unitVector);
        VEC_Set(velocity, 0, 0, 0);
        VEC_MultAdd(speed, &unitVector, velocity, velocity);
    }
}

static BOOL VectorIsZero(const VecFx32 *vec)
{
    return (vec->x == 0) && (vec->y == 0);
}

static void HandleWanderAction(FriendshipCheckerGraphics *graphics, const FriendshipCheckerData *friendshipData, int slot)
{
    PrintDebugLog(" icon[%d] Default\n", slot);

    if (friendshipData->screenHeld == FALSE) {
        LimitIconSpeed(768, 96, &graphics->pokemon[slot].velocity);
    } else {
        if (graphics->touchingMonIcon == FALSE) {
            if (PointWithinDistance(graphics->touchX, graphics->touchY, 48, &graphics->pokemon[slot].position)) {
                if (friendshipData->party[slot].friendship != FRIENDSHIP_HATE) {
                    UpdateIconAction(graphics, slot, ACTION_GATHER);
                    HandleGatherAction(graphics, friendshipData, slot);
                } else {
                    UpdateIconAction(graphics, slot, ACTION_RUN_AWAY);
                    HandleRunAwayAction(graphics, friendshipData, slot);
                }
            }
        } else if (graphics->touchedMonIdx == slot) {
            if (PointWithinDistance(graphics->touchX, graphics->touchY, 8, &graphics->pokemon[slot].position)) {
                if (friendshipData->party[slot].friendship != FRIENDSHIP_HATE) {
                    UpdateIconAction(graphics, slot, ACTION_SHOW_LIKE);
                } else {
                    UpdateIconAction(graphics, slot, ACTION_SHOW_DISLIKE);
                }
            }
        }
    }
}

static void HandleGatherAction(FriendshipCheckerGraphics *graphics, const FriendshipCheckerData *friendshipData, int slot)
{
    PrintDebugLog(" icon[%d] ReaLike\n", slot);

    if (friendshipData->screenHeld && PointWithinDistance(graphics->touchX, graphics->touchY, 64, &graphics->pokemon[slot].position)) {
        static const u8 speedFactor[] = {
            100, 150, 175, 200
        };

        if ((graphics->touchingMonIcon == FALSE) || (graphics->touchedMonIdx == slot)) {
            if (PointWithinDistance(graphics->touchX, graphics->touchY, 8, &graphics->pokemon[slot].position)) {
                UpdateIconAction(graphics, slot, ACTION_SHOW_LIKE);
            } else {
                VecFx32 velocity;

                VEC_Set(&velocity, graphics->touchX << FX32_SHIFT, graphics->touchY << FX32_SHIFT, 0);
                VEC_Subtract(&velocity, &graphics->pokemon[slot].position, &velocity);
                VEC_Normalize(&velocity, &velocity);

                velocity.x = (velocity.x * speedFactor[friendshipData->party[slot].intensity]) / 100;
                velocity.y = (velocity.y * speedFactor[friendshipData->party[slot].intensity]) / 100;
                velocity.x /= TIME_STEPS_PER_FRAME;
                velocity.y /= TIME_STEPS_PER_FRAME;

                graphics->pokemon[slot].velocity = velocity;
            }
        }
    } else {
        UpdateIconAction(graphics, slot, ACTION_WANDER);
    }
}

static void HandleRunAwayAction(FriendshipCheckerGraphics *graphics, const FriendshipCheckerData *friendshipData, int slot)
{
    PrintDebugLog(" icon[%d] ReaHate\n", slot);

    if (friendshipData->screenHeld && PointWithinDistance(graphics->touchX, graphics->touchY, 64, &graphics->pokemon[slot].position)) {
        static const u8 speedFactor[] = {
            100, 150, 175, 200
        };
        VecFx32 velocity;

        VEC_Set(&velocity, graphics->touchX << FX32_SHIFT, graphics->touchY << FX32_SHIFT, 0);
        VEC_Subtract(&graphics->pokemon[slot].position, &velocity, &velocity);
        VEC_Normalize(&velocity, &velocity);

        velocity.x = (velocity.x * speedFactor[friendshipData->party[slot].intensity]) / 100;
        velocity.y = (velocity.y * speedFactor[friendshipData->party[slot].intensity]) / 100;
        velocity.x /= TIME_STEPS_PER_FRAME;
        velocity.y /= TIME_STEPS_PER_FRAME;
        graphics->pokemon[slot].velocity = velocity;
    } else {
        UpdateIconAction(graphics, slot, ACTION_WANDER);
    }
}

static void HandleShowLikeAction(FriendshipCheckerGraphics *graphics, const FriendshipCheckerData *friendshipData, int slot)
{
    PrintDebugLog(" icon[%d] TcgLike\n", slot);

    if (friendshipData->screenHeld) {
        VecFx32 velocity;

        VEC_Set(&velocity, graphics->touchX << FX32_SHIFT, graphics->touchY << FX32_SHIFT, 0);

        if (PointWithinDistance(graphics->touchX, graphics->touchY, 8, &graphics->pokemon[slot].position)) {
            VEC_Subtract(&velocity, &graphics->pokemon[slot].position, &velocity);

            if (VEC_Mag(&velocity) > FX32_CONST(0.375f)) {
                VEC_Normalize(&velocity, &velocity);
                velocity.x *= 0;
                velocity.y *= 0;
            }

            velocity.x /= TIME_STEPS_PER_FRAME;
            velocity.y /= TIME_STEPS_PER_FRAME;
            graphics->pokemon[slot].velocity = velocity;
            return;
        } else if (PointWithinDistance(graphics->touchX, graphics->touchY, 64, &graphics->pokemon[slot].position)) {
            UpdateIconAction(graphics, slot, ACTION_GATHER);
            return;
        }
    }

    UpdateIconAction(graphics, slot, ACTION_WANDER);
}

static void HandleShowDislikeAction(FriendshipCheckerGraphics *graphics, const FriendshipCheckerData *friendshipData, int slot)
{
    PrintDebugLog(" icon[%d] TchHate\n", slot);

    if (friendshipData->screenHeld) {
        VecFx32 unused;
        VEC_Set(&unused, graphics->touchX << FX32_SHIFT, graphics->touchY << FX32_SHIFT, 0);

        if (PointWithinDistance(graphics->touchX, graphics->touchY, 8, &graphics->pokemon[slot].position)) {
            VEC_Set(&graphics->pokemon[slot].velocity, 0, 0, 0);
            return;
        } else if (PointWithinDistance(graphics->touchX, graphics->touchY, 64, &graphics->pokemon[slot].position)) {
            UpdateIconAction(graphics, slot, ACTION_RUN_AWAY);
            return;
        }
    } else {
        if (VectorIsZero(&graphics->pokemon[slot].velocity)) {
            SetRandomVelocity(&graphics->pokemon[slot].velocity);
        }
    }

    UpdateIconAction(graphics, slot, ACTION_WANDER);
}

static void HandleJumpAction(FriendshipCheckerGraphics *graphics, const FriendshipCheckerData *friendshipData, int slot)
{
    PokemonGraphic *monSprite = &graphics->pokemon[slot];

    PrintDebugLog(" icon[%d] Reset!!\n", slot);

    switch (monSprite->jumpStarted) {
    case 0:
        VEC_Set(&monSprite->velocity, 0, 0, 0);
        ShowShadowSprite(graphics, slot);
        PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_010);
        monSprite->jumpStarted++;
    case 1:
        monSprite->jumpProgress += 8;

        if (monSprite->jumpPhase == 0) {
            if (monSprite->jumpProgress > 140) {
                HideActionSprite(graphics, slot);
                monSprite->jumpPhase = 1;
            }
        }

        if (monSprite->jumpProgress > 180) {
            monSprite->jumpProgress = 180;
            monSprite->jumpPhase = 2;
        }

        VEC_Set(&monSprite->iconOffset, 0, -20 * CalcSineDegrees(monSprite->jumpProgress), 0);
        VEC_Add(&monSprite->position, &monSprite->iconOffset, &graphics->offsetPosition);

        PoketchAnimation_SetSpritePosition(monSprite->iconSprite, graphics->offsetPosition.x, graphics->offsetPosition.y);
        PoketchAnimation_SetSpritePosition(monSprite->actionSprite, monSprite->position.x, monSprite->position.y + FX32_CONST(8));

        if (monSprite->jumpPhase == 2) {
            SetRandomVelocity(&monSprite->velocity);
            UpdateIconAction(graphics, slot, ACTION_WANDER);
            graphics->jumpingMons--;
        }
        break;
    }
}

static void UpdateIconPositions(FriendshipCheckerGraphics *graphics, const FriendshipCheckerData *friendshipData)
{
    VecFx32 iconDisplacement;
    fx32 usedTimeSteps, remainingTimeSteps;
    fx32 distance;
    int collidedIcon1, collidedIcon2, collisionCheckResult, slot, slot2;
    VecFx32 collisionAngle, relativeVelocity;
    fx32 closingSpeed, collisionTimeToHit;

    remainingTimeSteps = FX32_CONST(TIME_STEPS_PER_FRAME);

    do {
        usedTimeSteps = remainingTimeSteps;
        collisionCheckResult = NO_COLLISION;

        for (slot = 0; slot < friendshipData->monCount; slot++) {
            VEC_MultAdd(usedTimeSteps, &graphics->pokemon[slot].velocity, &graphics->pokemon[slot].position, &graphics->plannedPosition[slot]);
        }

        for (slot = 0; slot < friendshipData->monCount; slot++) {
            if ((graphics->plannedPosition[slot].x < LEFT_EDGE) && (graphics->pokemon[slot].velocity.x != 0)) {
                fx32 timeToContact = usedTimeSteps - ((graphics->plannedPosition[slot].x - LEFT_EDGE) / graphics->pokemon[slot].velocity.x);

                if (timeToContact < usedTimeSteps) {
                    collisionCheckResult = LEFT_EDGE_COLLISION;
                    collidedIcon1 = slot;
                    usedTimeSteps = timeToContact;
                }
            }

            if ((graphics->plannedPosition[slot].x > RIGHT_EDGE) && (graphics->pokemon[slot].velocity.x != 0)) {
                fx32 timeToContact = usedTimeSteps - ((graphics->plannedPosition[slot].x - RIGHT_EDGE) / graphics->pokemon[slot].velocity.x);

                if (timeToContact < usedTimeSteps) {
                    collisionCheckResult = RIGHT_EDGE_COLLISION;
                    collidedIcon1 = slot;
                    usedTimeSteps = timeToContact;
                }
            }

            if ((graphics->plannedPosition[slot].y < TOP_EDGE) && (graphics->pokemon[slot].velocity.y != 0)) {
                fx32 timeToContact = usedTimeSteps - ((graphics->plannedPosition[slot].y - TOP_EDGE) / graphics->pokemon[slot].velocity.y);

                if (timeToContact < usedTimeSteps) {
                    collisionCheckResult = TOP_EDGE_COLLISION;
                    collidedIcon1 = slot;
                    usedTimeSteps = timeToContact;
                }
            }

            if ((graphics->plannedPosition[slot].y > BOTTOM_EDGE) && (graphics->pokemon[slot].velocity.y != 0)) {
                fx32 timeToContact = usedTimeSteps - ((graphics->plannedPosition[slot].y - BOTTOM_EDGE) / graphics->pokemon[slot].velocity.y);

                if (timeToContact < usedTimeSteps) {
                    collisionCheckResult = BOTTOM_EDGE_COLLISION;
                    collidedIcon1 = slot;
                    usedTimeSteps = timeToContact;
                }
            }
        }

        for (slot2 = 0; slot2 < friendshipData->monCount; slot2++) {
            for (slot = 0; slot < slot2; slot++) {
                VEC_Subtract(&graphics->plannedPosition[slot], &graphics->plannedPosition[slot2], &iconDisplacement);

                distance = VEC_Mag(&iconDisplacement);
                if (distance < FX32_CONST(32)) {
                    VEC_Normalize(&iconDisplacement, &collisionAngle);
                    VEC_Subtract(&graphics->pokemon[slot].velocity, &graphics->pokemon[slot2].velocity, &relativeVelocity);

                    closingSpeed = VEC_DotProduct(&relativeVelocity, &collisionAngle);
                    collisionTimeToHit = usedTimeSteps - ((FX32_CONST(32) - distance) / -closingSpeed);

                    if (collisionTimeToHit < usedTimeSteps) {
                        collisionCheckResult = TWO_ICON_COLLISION;
                        collidedIcon1 = slot;
                        collidedIcon2 = slot2;
                        usedTimeSteps = collisionTimeToHit;
                    }
                }
            }
        }

        if (usedTimeSteps <= 0) {
            break;
        }

        for (slot = 0; slot < friendshipData->monCount; slot++) {
            VEC_MultAdd(usedTimeSteps, &graphics->pokemon[slot].velocity, &graphics->pokemon[slot].position, &graphics->pokemon[slot].position);
        }

        switch (collisionCheckResult) {
        case TWO_ICON_COLLISION: {
            if (graphics->pokemon[collidedIcon1].action == ACTION_SHOW_LIKE) {
                VecFx32 *velocity = &graphics->pokemon[collidedIcon2].velocity;

                if (VectorIsZeroInline(velocity) || graphics->pokemon[collidedIcon2].bumpedFromRest) {
                    VEC_Subtract(&graphics->pokemon[collidedIcon2].position, &graphics->pokemon[collidedIcon1].position, &iconDisplacement);
                    VEC_Normalize(&iconDisplacement, &collisionAngle);

                    velocity->x = FX_Mul(collisionAngle.x, FX32_CONST(0.1f));
                    velocity->y = FX_Mul(collisionAngle.y, FX32_CONST(0.1f));

                    graphics->pokemon[collidedIcon2].bumpedFromRest = TRUE;

                    if (((collidedIcon1 == 1) && (collidedIcon2 == 2)) || ((collidedIcon2 == 1) && (collidedIcon1 == 2))) {
                        (void)0;
                    }
                } else {
                    InvertVector(velocity);

                    if (((collidedIcon1 == 1) && (collidedIcon2 == 2)) || ((collidedIcon2 == 1) && (collidedIcon1 == 2))) {
                        (void)0;
                    }
                }

                graphics->pokemon[collidedIcon2].collisionCooldown = 20;
            } else if (graphics->pokemon[collidedIcon2].action == ACTION_SHOW_LIKE) {
                VecFx32 *velocity = &graphics->pokemon[collidedIcon1].velocity;

                if (VectorIsZeroInline(velocity) || graphics->pokemon[collidedIcon1].bumpedFromRest) {
                    VEC_Subtract(&graphics->pokemon[collidedIcon1].position, &graphics->pokemon[collidedIcon2].position, &iconDisplacement);
                    VEC_Normalize(&iconDisplacement, &collisionAngle);
                    velocity->x = FX_Mul(collisionAngle.x, FX32_CONST(0.1f));
                    velocity->y = FX_Mul(collisionAngle.y, FX32_CONST(0.1f));

                    graphics->pokemon[collidedIcon1].bumpedFromRest = TRUE;

                    if (((collidedIcon1 == 1) && (collidedIcon2 == 2)) || ((collidedIcon2 == 1) && (collidedIcon1 == 2))) {
                        (void)0;
                    }
                } else {
                    InvertVector(velocity);

                    if (((collidedIcon1 == 1) && (collidedIcon2 == 2)) || ((collidedIcon2 == 1) && (collidedIcon1 == 2))) {
                        (void)0;
                    }
                }

                graphics->pokemon[collidedIcon1].collisionCooldown = 20;
            } else {
                VEC_Subtract(&graphics->pokemon[collidedIcon1].position, &graphics->pokemon[collidedIcon2].position, &iconDisplacement);

                distance = VEC_Mag(&iconDisplacement);

                VEC_Normalize(&iconDisplacement, &collisionAngle);
                VEC_Subtract(&graphics->pokemon[collidedIcon1].velocity, &graphics->pokemon[collidedIcon2].velocity, &relativeVelocity);

                closingSpeed = VEC_DotProduct(&relativeVelocity, &collisionAngle);

                VEC_MultAdd(-closingSpeed, &collisionAngle, &graphics->pokemon[collidedIcon1].velocity, &graphics->pokemon[collidedIcon1].velocity);
                VEC_MultAdd(closingSpeed, &collisionAngle, &graphics->pokemon[collidedIcon2].velocity, &graphics->pokemon[collidedIcon2].velocity);

                graphics->pokemon[collidedIcon1].collisionCooldown = 20;
                graphics->pokemon[collidedIcon2].collisionCooldown = 20;
                graphics->pokemon[collidedIcon1].bumpedFromRest = FALSE;
                graphics->pokemon[collidedIcon2].bumpedFromRest = FALSE;

                if (((collidedIcon1 == 1) && (collidedIcon2 == 2)) || ((collidedIcon2 == 1) && (collidedIcon1 == 2))) {
                    (void)0;
                }
            }
        } break;
        case LEFT_EDGE_COLLISION:
        case RIGHT_EDGE_COLLISION:
            graphics->pokemon[collidedIcon1].velocity.x *= -1;
            graphics->pokemon[collidedIcon1].bumpedFromRest = FALSE;
            break;
        case TOP_EDGE_COLLISION:
        case BOTTOM_EDGE_COLLISION:
            graphics->pokemon[collidedIcon1].velocity.y *= -1;
            graphics->pokemon[collidedIcon1].bumpedFromRest = FALSE;
            break;
        }

        remainingTimeSteps -= usedTimeSteps;
    } while (collisionCheckResult != NO_COLLISION);

    for (slot = 0; slot < friendshipData->monCount; slot++) {
        if (graphics->pokemon[slot].action < ACTION_SHOW_LIKE) {
            UpdateIconDirection(&graphics->pokemon[slot]);
        }

        VEC_Add(&graphics->pokemon[slot].position, &graphics->pokemon[slot].iconOffset, &graphics->offsetPosition);

        PoketchAnimation_SetSpritePosition(graphics->pokemon[slot].iconSprite, graphics->offsetPosition.x, graphics->offsetPosition.y);
        PoketchAnimation_SetSpritePosition(graphics->pokemon[slot].actionSprite, graphics->pokemon[slot].position.x, graphics->pokemon[slot].position.y + FX32_CONST(8));
    }
}

static inline BOOL VectorIsZeroInline(const VecFx32 *vec)
{
    return (vec->x == 0) && (vec->y == 0);
}

static inline void InvertVector(VecFx32 *vec)
{
    vec->x *= -1;
    vec->y *= -1;
}
