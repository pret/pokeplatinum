#include "applications/poketch/matchup_checker/graphics.h"

#include <nitro.h>

#include "generated/sdat.h"

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_graphics.h"
#include "applications/poketch/poketch_system.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "sys_task_manager.h"

#include "res/graphics/poketch/poketch.naix"

#define ANIM_COMMAND_END           -1
#define ANIM_COMMAND_MOVE_FORWARD  -2
#define ANIM_COMMAND_MOVE_BACKWARD -3
#define ANIM_COMMAND_WAIT          -4
#define ANIM_COMMAND_PLAY_SOUND    -5
#define ANIM_COMMAND_FLIP_LUVDISCS -6
#define ANIM_COMMAND_UPDATE_SPRITE -7

static void SetupSprites(MatchupCheckerGraphics *graphics, const MatchupCheckerData *matchupData);
static void UnloadSprites(MatchupCheckerGraphics *graphics);

static void EndTask(PoketchTaskManager *taskMan);
static void Task_DrawBackground(SysTask *task, void *taskMan);
static void Task_FreeBackground(SysTask *task, void *taskMan);
static void Task_PressButton(SysTask *task, void *taskMan);
static void Task_ReleaseButton(SysTask *task, void *taskMan);
static void Task_UpdateLeftMonIcon(SysTask *task, void *taskMan);
static void Task_UpdateRightMonIcon(SysTask *task, void *taskMan);
static void Task_RunMatchupAnimation(SysTask *task, void *taskMan);

static void UpdateMonIcon(MatchupCheckerGraphics *graphics, u32 spriteIdx, u32 partyIdx, u16 species, u16 form);
static void ResetIndicatorPositions(MatchupCheckerGraphics *graphics);
static void InitAnimationSequence(MatchupCheckerGraphics *graphics, const MatchupCheckerData *matchupData);
static BOOL RunAnimationSequence(MatchupCheckerGraphics *graphics, const MatchupCheckerData *matchupData);

BOOL PoketchMatchupCheckerGraphics_New(MatchupCheckerGraphics **dest, const MatchupCheckerData *matchupData, BgConfig *bgConfig)
{
    MatchupCheckerGraphics *graphics = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(MatchupCheckerGraphics));

    if (graphics != NULL) {
        PoketchTask_InitActiveTaskList(graphics->activeTasks, MATCHUP_CHECKER_TASK_SLOTS);
        graphics->matchupData = matchupData;
        graphics->bgConfig = PoketchGraphics_GetBgConfig();
        graphics->animMan = PoketchGraphics_GetAnimationManager();
        SetupSprites(graphics, matchupData);
        *dest = graphics;

        return TRUE;
    }

    return FALSE;
}

void PoketchMatchupCheckerGraphics_Free(MatchupCheckerGraphics *graphics)
{
    if (graphics != NULL) {
        UnloadSprites(graphics);
        Heap_Free(graphics);
    }
}

static void SetupSprites(MatchupCheckerGraphics *graphics, const MatchupCheckerData *matchupData)
{
    static const PoketchAnimation_AnimationData sAnimData[] = {
        [SPRITE_BUTTON] = {
            .translation = { FX32_CONST(112), FX32_CONST(148) },
            .animIdx = 9,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
        [SPRITE_HEART_METER] = {
            .translation = { FX32_CONST(112), FX32_CONST(32) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 1,
            .hasAffineTransform = FALSE,
        },
        [SPRITE_LUVDISC_LEFT] = {
            .translation = { FX32_CONST(48), FX32_CONST(88) },
            .animIdx = 5,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
        [SPRITE_LUVDISC_RIGHT] = {
            .translation = { FX32_CONST(176), FX32_CONST(88) },
            .animIdx = 6,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = FALSE,
        },
        [SPRITE_MON_ICON_LEFT] = {
            .translation = { FX32_CONST(48), FX32_CONST(140) },
            .animIdx = 5,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = TRUE,
        },
        [SPRITE_MON_ICON_RIGHT] = {
            .translation = { FX32_CONST(176), FX32_CONST(140) },
            .animIdx = 4,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = TRUE,
        },
    };

    PoketchTask_LoadPokemonIconLuminancePalette(1);

    u32 indicatorsTileCount = Graphics_LoadObjectTiles(NARC_INDEX_GRAPHIC__POKETCH, matchup_checker_NCGR_lz, DS_SCREEN_SUB, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    indicatorsTileCount /= 20;
    graphics->monIconTileOffset = indicatorsTileCount;

    PoketchTask_LoadPokemonIcons(indicatorsTileCount, matchupData->spriteIndices, matchupData->partySize, FALSE);
    PoketchAnimation_LoadSpriteFromNARC(&graphics->indicatorSpriteData, NARC_INDEX_GRAPHIC__POKETCH, matchup_checker_cell_NCER_lz, matchup_checker_anim_NANR_lz, HEAP_ID_POKETCH_APP);
    PoketchAnimation_LoadSpriteFromNARC(&graphics->monIconData, NARC_INDEX_GRAPHIC__POKETCH, poke_icon_cell_NCER_lz, poke_icon_anim_NANR_lz, HEAP_ID_POKETCH_APP);

    int i;
    for (i = 0; i < NUM_SPRITES - 2; i++) {
        graphics->sprites[i] = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &sAnimData[i], &graphics->indicatorSpriteData);
    }

    for (; i < NUM_SPRITES; i++) {
        graphics->sprites[i] = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &sAnimData[i], &graphics->monIconData);
    }

    UpdateMonIcon(graphics, SPRITE_MON_ICON_LEFT, matchupData->leftMonIdx, matchupData->species[matchupData->leftMonIdx], matchupData->forms[matchupData->leftMonIdx]);
    UpdateMonIcon(graphics, SPRITE_MON_ICON_RIGHT, matchupData->rightMonIdx, matchupData->species[matchupData->rightMonIdx], matchupData->forms[matchupData->rightMonIdx]);

    if (matchupData->partySize <= 1) {
        PoketchAnimation_HideSprite(graphics->sprites[SPRITE_MON_ICON_RIGHT], TRUE);
        PoketchAnimation_HideSprite(graphics->sprites[SPRITE_LUVDISC_RIGHT], TRUE);
        PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_BUTTON], 10);
    }
}

static void UnloadSprites(MatchupCheckerGraphics *graphics)
{
    PoketchAnimation_FreeSpriteData(&graphics->monIconData);
    PoketchAnimation_FreeSpriteData(&graphics->indicatorSpriteData);

    for (int i = 0; i < NUM_SPRITES; i++) {
        if (graphics->sprites[i]) {
            PoketchAnimation_RemoveAnimatedSprite(graphics->animMan, graphics->sprites[i]);
        }
    }
}

static const PoketchTask sMatchupCheckerTasks[] = {
    { MATCHUP_CHECKER_GRAPHICS_INIT, Task_DrawBackground, 0 },
    { MATCHUP_CHECKER_GRAPHICS_FREE, Task_FreeBackground, 0 },
    { MATCHUP_CHECKER_GRAPHICS_PRESS_BUTTON, Task_PressButton, 0 },
    { MATCHUP_CHECKER_GRAPHICS_RELEASE_BUTTON, Task_ReleaseButton, 0 },
    { MATCHUP_CHECKER_GRAPHICS_UPDATE_LEFT, Task_UpdateLeftMonIcon, 0 },
    { MATCHUP_CHECKER_GRAPHICS_UPDATE_RIGHT, Task_UpdateRightMonIcon, 0 },
    { MATCHUP_CHECKER_GRAPHICS_CHECK_MATCHUP, Task_RunMatchupAnimation, 0 },
    { 0 }
};

void PoketchMatchupCheckerGraphics_StartTask(MatchupCheckerGraphics *graphics, enum MatchupCheckerGraphicsTask taskID)
{
    PoketchTask_Start(sMatchupCheckerTasks, taskID, graphics, graphics->matchupData, graphics->activeTasks, 2, HEAP_ID_POKETCH_APP);
}

BOOL PoketchMatchupCheckerGraphics_TaskIsNotActive(MatchupCheckerGraphics *graphics, enum MatchupCheckerGraphicsTask taskID)
{
    return PoketchTask_TaskIsNotActive(graphics->activeTasks, taskID);
}

BOOL PoketchMatchupCheckerGraphics_NoActiveTasks(MatchupCheckerGraphics *graphics)
{
    return PoketchTask_NoActiveTasks(graphics->activeTasks);
}

static void EndTask(PoketchTaskManager *taskMan)
{
    MatchupCheckerGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    PoketchTask_EndTask(graphics->activeTasks, taskMan);
}

static void Task_DrawBackground(SysTask *task, void *taskMan)
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

    MatchupCheckerGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const MatchupCheckerData *matchupData = PoketchTask_GetConstTaskData(taskMan);

    Bg_InitFromTemplate(graphics->bgConfig, BG_LAYER_SUB_2, &bgTemplate, BG_TYPE_STATIC);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, matchup_checker_bg_tiles_NCGR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, matchup_checker_NSCR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);

    PoketchGraphics_LoadActivePalette(0, 0);
    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);

    GXSDispCnt dispCnt = GXS_GetDispCnt();
    GXS_SetVisiblePlane(dispCnt.visiblePlane | GX_PLANEMASK_BG2);

    EndTask(taskMan);
}

static void Task_FreeBackground(SysTask *task, void *taskMan)
{
    MatchupCheckerGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    switch (PoketchTask_GetState(taskMan)) {
    case 0:
        graphics->killIndicatorTask = TRUE;
        PoketchTask_IncrementState(taskMan);
        break;
    case 1:
        if (PoketchMatchupCheckerGraphics_TaskIsNotActive(graphics, MATCHUP_CHECKER_GRAPHICS_CHECK_MATCHUP)) {
            Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_2);
            EndTask(taskMan);
        }
        break;
    }
}

static void Task_PressButton(SysTask *task, void *taskMan)
{
    MatchupCheckerGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const MatchupCheckerData *matchupData = PoketchTask_GetConstTaskData(taskMan);

    PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_010);
    PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_BUTTON], 10);
    EndTask(taskMan);
}

static void Task_ReleaseButton(SysTask *task, void *taskMan)
{
    MatchupCheckerGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const MatchupCheckerData *matchupData = PoketchTask_GetConstTaskData(taskMan);

    PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_BUTTON], 9);
    EndTask(taskMan);
}

static void Task_UpdateLeftMonIcon(SysTask *task, void *taskMan)
{
    MatchupCheckerGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const MatchupCheckerData *matchupData = PoketchTask_GetConstTaskData(taskMan);
    int idx = matchupData->leftMonIdx;

    PoketchSystem_PlayCry(matchupData->species[idx], matchupData->forms[idx]);
    UpdateMonIcon(graphics, SPRITE_MON_ICON_LEFT, idx, matchupData->species[idx], matchupData->forms[idx]);
    ResetIndicatorPositions(graphics);
    EndTask(taskMan);
}

static void Task_UpdateRightMonIcon(SysTask *task, void *taskMan)
{
    MatchupCheckerGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const MatchupCheckerData *matchupData = PoketchTask_GetConstTaskData(taskMan);
    int idx = matchupData->rightMonIdx;

    PoketchSystem_PlayCry(matchupData->species[idx], matchupData->forms[idx]);
    UpdateMonIcon(graphics, SPRITE_MON_ICON_RIGHT, idx, matchupData->species[idx], matchupData->forms[idx]);
    ResetIndicatorPositions(graphics);
    EndTask(taskMan);
}

static void UpdateMonIcon(MatchupCheckerGraphics *graphics, u32 spriteIdx, u32 partyIdx, u16 species, u16 form)
{
    PoketchAnimation_AnimatedSpriteData *sprite = graphics->sprites[spriteIdx];
    u32 animIdx;

    if (spriteIdx == SPRITE_MON_ICON_RIGHT) {
        animIdx = 4;
    } else {
        if (SpeciesData_GetFormValue(species, form, SPECIES_DATA_FLIP_SPRITE)) {
            animIdx = 4;
        } else {
            animIdx = 5;
        }
    }

    PoketchAnimation_UpdateAnimationIdx(sprite, animIdx);
    PoketchAnimation_SetSpriteCharNo(sprite, graphics->monIconTileOffset + partyIdx * 16);
    PoketchAnimation_SetCParam(sprite, 1 + PokeIconPaletteIndex(species, form, 0));
}

static void ResetIndicatorPositions(MatchupCheckerGraphics *graphics)
{
    PoketchAnimation_SetSpritePosition(graphics->sprites[SPRITE_LUVDISC_LEFT], FX32_CONST(48), FX32_CONST(88));
    PoketchAnimation_SetSpritePosition(graphics->sprites[SPRITE_LUVDISC_RIGHT], FX32_CONST(176), FX32_CONST(88));
    PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_LUVDISC_LEFT], 5);
    PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_LUVDISC_RIGHT], 6);
    PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_HEART_METER], 0);
}

static void Task_RunMatchupAnimation(SysTask *task, void *taskMan)
{
    MatchupCheckerGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const MatchupCheckerData *matchupData = PoketchTask_GetConstTaskData(taskMan);
    u32 indicatorState = PoketchTask_GetState(taskMan);

    if (indicatorState != 0 && graphics->killIndicatorTask) {
        EndTask(taskMan);
        return;
    }

    switch (PoketchTask_GetState(taskMan)) {
    case 0:
        graphics->killIndicatorTask = FALSE;
        ResetIndicatorPositions(graphics);
        InitAnimationSequence(graphics, matchupData);
        PoketchTask_IncrementState(taskMan);
        break;
    case 1:
        if (RunAnimationSequence(graphics, matchupData)) {
            EndTask(taskMan);
        }
        break;
    }
}

// clang-format off
static const int sCommandsIncompatible[] = {
    ANIM_COMMAND_MOVE_FORWARD, 16, 16,
    ANIM_COMMAND_WAIT, 16,
    ANIM_COMMAND_FLIP_LUVDISCS,
    ANIM_COMMAND_PLAY_SOUND, SEQ_SE_DP_POKETCH_013,
    ANIM_COMMAND_MOVE_BACKWARD, 16, 16,
    ANIM_COMMAND_END
};

static const int sCommandsLowCompatibility[] = {
    ANIM_COMMAND_MOVE_FORWARD, 16, 16,
    ANIM_COMMAND_PLAY_SOUND, SEQ_SE_DP_POKETCH_012,
    ANIM_COMMAND_END
};

static const int sCommandsMedCompatibility[] = {
    ANIM_COMMAND_MOVE_FORWARD, 16, 16,
    ANIM_COMMAND_PLAY_SOUND, SEQ_SE_DP_POKETCH_012,
    ANIM_COMMAND_MOVE_FORWARD, 16, 16,
    ANIM_COMMAND_PLAY_SOUND, SEQ_SE_DP_POKETCH_012,
    ANIM_COMMAND_END
};

static const int sCommandsMaxCompatibility[] = {
    ANIM_COMMAND_MOVE_FORWARD, 16, 16,
    ANIM_COMMAND_PLAY_SOUND, SEQ_SE_DP_POKETCH_012,
    ANIM_COMMAND_MOVE_FORWARD, 16, 16,
    ANIM_COMMAND_PLAY_SOUND, SEQ_SE_DP_POKETCH_012,
    ANIM_COMMAND_MOVE_FORWARD, 16, 16,
    ANIM_COMMAND_PLAY_SOUND, SEQ_SE_DP_POKETCH_012,
    ANIM_COMMAND_WAIT, 16,
    ANIM_COMMAND_PLAY_SOUND, SEQ_SE_DP_POKETCH_014,
    ANIM_COMMAND_UPDATE_SPRITE, SPRITE_LUVDISC_LEFT, 7,
    ANIM_COMMAND_UPDATE_SPRITE, SPRITE_LUVDISC_RIGHT, 8,
    ANIM_COMMAND_UPDATE_SPRITE, SPRITE_HEART_METER, 4,
    ANIM_COMMAND_WAIT, 16,
    ANIM_COMMAND_END
};
// clang-format on

static void InitAnimationSequence(MatchupCheckerGraphics *graphics, const MatchupCheckerData *matchupData)
{
    graphics->commandState = 0;
    graphics->commandIdx = 0;
    graphics->luvdiscOffset = 0;
    graphics->commandTimer = 0;

    switch (matchupData->compatibility) {
    case 3:
        graphics->animationCommands = sCommandsIncompatible;
        break;
    case 2:
        graphics->animationCommands = sCommandsLowCompatibility;
        PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_HEART_METER], 1);
        break;
    case 1:
        graphics->animationCommands = sCommandsMedCompatibility;
        PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_HEART_METER], 2);
        break;
    case 0:
        graphics->animationCommands = sCommandsMaxCompatibility;
        PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_HEART_METER], 3);
        break;
    }

    RunAnimationSequence(graphics, matchupData);
}

static BOOL RunAnimationSequence(MatchupCheckerGraphics *graphics, const MatchupCheckerData *matchupData)
{
func_start:
    switch (graphics->commandState) {
    case 0:
        while (graphics->commandState == 0) {
            switch (graphics->animationCommands[graphics->commandIdx++]) {
            case ANIM_COMMAND_END:
                return TRUE;
            case ANIM_COMMAND_MOVE_FORWARD:
                graphics->commandTimer = graphics->animationCommands[graphics->commandIdx++];
                graphics->offsetStep = graphics->animationCommands[graphics->commandIdx++];
                graphics->offsetStep *= FX32_ONE;
                graphics->commandEndOffset = graphics->luvdiscOffset + graphics->offsetStep;
                graphics->offsetStep /= graphics->commandTimer;
                graphics->commandState = 1;
                break;
            case ANIM_COMMAND_MOVE_BACKWARD:
                graphics->commandTimer = graphics->animationCommands[graphics->commandIdx++];
                graphics->offsetStep = graphics->animationCommands[graphics->commandIdx++];
                graphics->offsetStep *= FX32_ONE;
                graphics->offsetStep *= -1;
                graphics->commandEndOffset = graphics->luvdiscOffset + graphics->offsetStep;
                graphics->offsetStep /= graphics->commandTimer;
                graphics->commandState = 1;
                break;
            case ANIM_COMMAND_WAIT:
                graphics->commandTimer = graphics->animationCommands[graphics->commandIdx++];
                graphics->commandState = 2;
                break;
            case ANIM_COMMAND_PLAY_SOUND:
                PoketchSystem_PlaySoundEffect(graphics->animationCommands[graphics->commandIdx++]);
                break;
            case ANIM_COMMAND_FLIP_LUVDISCS:
                PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_LUVDISC_LEFT], 6);
                PoketchAnimation_UpdateAnimationIdx(graphics->sprites[SPRITE_LUVDISC_RIGHT], 5);
                break;
            case ANIM_COMMAND_UPDATE_SPRITE:
                u32 sprite = graphics->animationCommands[graphics->commandIdx++];
                u32 animIdx = graphics->animationCommands[graphics->commandIdx++];
                PoketchAnimation_UpdateAnimationIdx(graphics->sprites[sprite], animIdx);
                break;
            }
        }
        break;
    case 1:
        if (graphics->commandTimer) {
            graphics->commandTimer--;

            if (graphics->commandTimer) {
                graphics->luvdiscOffset += graphics->offsetStep;
            } else {
                graphics->luvdiscOffset = graphics->commandEndOffset;
            }

            PoketchAnimation_SetSpritePosition(graphics->sprites[SPRITE_LUVDISC_LEFT], FX32_CONST(48) + graphics->luvdiscOffset, FX32_CONST(88));
            PoketchAnimation_SetSpritePosition(graphics->sprites[SPRITE_LUVDISC_RIGHT], FX32_CONST(176) - graphics->luvdiscOffset, FX32_CONST(88));
        }

        if (graphics->commandTimer == 0) {
            graphics->commandState = 0;
            goto func_start;
        }
        break;
    case 2:
        if (graphics->commandTimer) {
            graphics->commandTimer--;
        } else {
            graphics->commandState = 0;
            goto func_start;
        }

        break;
    }

    return FALSE;
}
