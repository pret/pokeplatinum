#include "applications/poketch/trainer_counter/graphics.h"

#include <nitro.h>

#include "struct_defs/radar_chain_records.h"

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_graphics.h"
#include "applications/poketch/poketch_system.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "math_util.h"
#include "pokemon_icon.h"
#include "sys_task_manager.h"

#include "res/graphics/poketch/poketch.naix"

static void EndTask(PoketchTaskManager *taskMan);
static void Task_DrawBackground(SysTask *task, void *taskMan);
static void Task_FreeBackground(SysTask *task, void *taskMan);
static void Task_RefreshActiveChain(SysTask *task, void *taskMan);
static void Task_PlayCry(SysTask *task, void *taskMan);

static void SetupSprites(TrainerCounterGraphics *graphics, const TrainerCounterData *chainData);
static void UnloadSprites(TrainerCounterGraphics *graphics);
static void UpdateChainCountDigits(PoketchAnimation_AnimatedSpriteData **sprites, u32 chainLength);

BOOL PoketchTrainerCounterGraphics_New(TrainerCounterGraphics **dest, const TrainerCounterData *chainData, BgConfig *bgConfig)
{
    TrainerCounterGraphics *graphics = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(TrainerCounterGraphics));

    if (graphics != NULL) {
        PoketchTask_InitActiveTaskList(graphics->activeTask, TRAINER_COUNTER_TASK_SLOTS);
        graphics->chainData = chainData;
        graphics->bgConfig = PoketchGraphics_GetBgConfig();
        graphics->animMan = PoketchGraphics_GetAnimationManager();
        *dest = graphics;

        return TRUE;
    }

    return FALSE;
}

void PoketchTrainerCounterGraphics_Free(TrainerCounterGraphics *graphics)
{
    if (graphics != NULL) {
        Heap_Free(graphics);
    }
}

static const PoketchTask sTrainerCounterTasks[] = {
    { TRAINER_COUNTER_GRAPHICS_INIT, Task_DrawBackground, 0 },
    { TRAINER_COUNTER_GRAPHICS_FREE, Task_FreeBackground, 0 },
    { TRAINER_COUNTER_GRAPHICS_REFRESH, Task_RefreshActiveChain, 0 },
    { TRAINER_COUNTER_GRAPHICS_PLAY_CRY, Task_PlayCry, 0 },
    { 0 }
};

void PoketchTrainerCounterGraphics_StartTask(TrainerCounterGraphics *graphics, enum TrainerCounterGraphicsTask taskID)
{
    PoketchTask_Start(sTrainerCounterTasks, taskID, graphics, graphics->chainData, graphics->activeTask, 2, HEAP_ID_POKETCH_APP);
}

BOOL PoketchTrainerCounterGraphics_TaskIsNotActive(TrainerCounterGraphics *graphics, enum TrainerCounterGraphicsTask taskID)
{
    return PoketchTask_TaskIsNotActive(graphics->activeTask, taskID);
}

BOOL PoketchTrainerCounterGraphics_NoActiveTasks(TrainerCounterGraphics *graphics)
{
    return PoketchTask_NoActiveTasks(graphics->activeTask);
}

static void EndTask(PoketchTaskManager *taskMan)
{
    TrainerCounterGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    PoketchTask_EndTask(graphics->activeTask, taskMan);
}

static void Task_DrawBackground(SysTask *task, void *taskMan)
{
    static const BgTemplate bgTemplate = {
        .x = 0,
        .y = 0,
        .bufferSize = 0,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x7800,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 3,
        .areaOver = 0,
        .mosaic = FALSE,
    };
    TrainerCounterGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const TrainerCounterData *chainData = PoketchTask_GetConstTaskData(taskMan);

    Bg_InitFromTemplate(graphics->bgConfig, BG_LAYER_SUB_2, &bgTemplate, BG_TYPE_STATIC);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, trainer_counter_bg_tiles_NCGR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, trainer_counter_NSCR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);

    PoketchGraphics_LoadActivePalette(0, 0);
    SetupSprites(graphics, chainData);

    GXSDispCnt dispCnt = GXS_GetDispCnt();
    GXS_SetVisiblePlane(dispCnt.visiblePlane | GX_PLANEMASK_BG2);
    EndTask(taskMan);
}

static void Task_FreeBackground(SysTask *task, void *taskMan)
{
    TrainerCounterGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    UnloadSprites(graphics);
    Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_2);
    EndTask(taskMan);
}

static void Task_RefreshActiveChain(SysTask *task, void *taskMan)
{
    TrainerCounterGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const TrainerCounterData *chainData = PoketchTask_GetConstTaskData(taskMan);

    if (chainData->activeSpecies) {
        u32 spriteIdx = PokeIconSpriteIndex(chainData->activeSpecies, FALSE, 0);

        PoketchTask_LoadPokemonIcons(graphics->monIconTileOffset, &spriteIdx, 1, TRUE);
        PoketchAnimation_SetCParam(graphics->sprites[0], 1 + PokeIconPaletteIndex(chainData->activeSpecies, 0, FALSE));
        UpdateChainCountDigits(&graphics->sprites[NUM_POKE_ICONS], chainData->activeChain);
    } else {
        PoketchAnimation_HideSprite(graphics->sprites[0], TRUE);

        for (int i = 0; i < DIGITS_PER_CHAIN; i++) {
            PoketchAnimation_HideSprite(graphics->sprites[NUM_POKE_ICONS + i], TRUE);
        }
    }

    EndTask(taskMan);
}

static void Task_PlayCry(SysTask *task, void *taskMan)
{
    TrainerCounterGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const TrainerCounterData *chainData = PoketchTask_GetConstTaskData(taskMan);
    int cryState = PoketchTask_GetState(taskMan);

    switch (cryState) {
    case 0:
        graphics->cryingIcon = graphics->sprites[1 + chainData->pressedIcon];
        PoketchAnimation_GetSpritePosition(graphics->cryingIcon, &graphics->cryingIconX, &graphics->cryingIconY);

        PoketchSystem_PlayCry(chainData->bestChainSpecies[chainData->pressedIcon], 0);
        PoketchAnimation_UpdateAnimationIdx(graphics->cryingIcon, 6);
        PoketchTask_IncrementState(taskMan);
        cryState++;
    default: {
        int jumpProgress;
        fx32 offset;

        jumpProgress = (((FX32_CONST(180) / 16) * cryState) + FX32_HALF) >> FX32_SHIFT;
        offset = CalcSineDegrees(jumpProgress) * 24;
        PoketchAnimation_SetSpritePosition(graphics->cryingIcon, graphics->cryingIconX, graphics->cryingIconY - offset);
    }
        PoketchTask_IncrementState(taskMan);
        break;
    case 16:
        PoketchAnimation_SetSpritePosition(graphics->cryingIcon, graphics->cryingIconX, graphics->cryingIconY);
        PoketchAnimation_UpdateAnimationIdx(graphics->cryingIcon, 4);
        EndTask(taskMan);
        break;
    }
}

static void SetupSprites(TrainerCounterGraphics *graphics, const TrainerCounterData *chainData)
{
    static const PoketchAnimation_AnimationData animData[] = {
        {
            .translation = { FX32_CONST(96), FX32_CONST(32) },
            .animIdx = 4,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 10,
            .hasAffineTransform = TRUE,
        },
        {
            .translation = { FX32_CONST(112), FX32_CONST(80) },
            .animIdx = 4,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = TRUE,
        },
        {
            .translation = { FX32_CONST(176), FX32_CONST(96) },
            .animIdx = 4,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 1,
            .hasAffineTransform = TRUE,
        },
        {
            .translation = { FX32_CONST(48), FX32_CONST(104) },
            .animIdx = 4,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 2,
            .hasAffineTransform = TRUE,
        },
        {
            .translation = { FX32_CONST(144), FX32_CONST(40) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 3,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(144 + 8), FX32_CONST(40) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 3,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(144 + 8 * 2), FX32_CONST(40) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 3,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(100), FX32_CONST(144) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 3,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(100 + 8), FX32_CONST(144) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 3,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(100 + 8 * 2), FX32_CONST(144) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 3,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(164), FX32_CONST(160) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 3,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(164 + 8), FX32_CONST(160) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 3,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(164 + 8 * 2), FX32_CONST(160) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 3,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(36), FX32_CONST(168) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 3,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(36 + 8), FX32_CONST(168) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 3,
            .hasAffineTransform = FALSE,
        },
        {
            .translation = { FX32_CONST(36 + 8 * 2), FX32_CONST(168) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 3,
            .hasAffineTransform = FALSE,
        },
    };

    PoketchAnimation_LoadSpriteFromNARC(&graphics->monData, NARC_INDEX_GRAPHIC__POKETCH, poke_icon_cell_NCER_lz, poke_icon_anim_NANR_lz, HEAP_ID_POKETCH_APP);
    PoketchAnimation_LoadSpriteFromNARC(&graphics->digitData, NARC_INDEX_GRAPHIC__POKETCH, trainer_counter_cell_NCER_lz, trainer_counter_anim_NANR_lz, HEAP_ID_POKETCH_APP);

    u32 digitTileCount = Graphics_LoadObjectTiles(NARC_INDEX_GRAPHIC__POKETCH, trainer_counter_NCGR_lz, DS_SCREEN_SUB, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    digitTileCount /= TILE_SIZE_4BPP;
    graphics->monIconTileOffset = digitTileCount;

    enum Species chainMons[NUM_POKE_ICONS];
    chainMons[0] = chainData->activeSpecies;

    int i, digit, index;
    for (i = 0; i < NUM_RADAR_RECORDS; i++) {
        chainMons[1 + i] = chainData->bestChainSpecies[i];
    }

    for (i = 0; i < NUM_POKE_ICONS; i++) {
        graphics->spriteIndices[i] = PokeIconSpriteIndex(chainMons[i] ? chainMons[i] : 1, FALSE, 0);
    }

    PoketchTask_LoadPokemonIcons(digitTileCount, graphics->spriteIndices, NELEMS(graphics->spriteIndices), TRUE);
    PoketchTask_LoadPokemonIconLuminancePalette(1);

    for (i = 0; i < NUM_SPRITES; i++) {
        graphics->sprites[i] = NULL;
    }

    for (i = 0; i < NUM_POKE_ICONS; i++) {
        graphics->sprites[i] = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &animData[i], &graphics->monData);
        PoketchAnimation_SetSpriteCharNo(graphics->sprites[i], digitTileCount + i * 32);

        for (digit = 0; digit < DIGITS_PER_CHAIN; digit++) {
            index = NUM_POKE_ICONS + i * DIGITS_PER_CHAIN + digit;
            graphics->sprites[index] = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &animData[index], &graphics->digitData);
        }

        if (chainMons[i] == SPECIES_NONE) {
            PoketchAnimation_HideSprite(graphics->sprites[i], TRUE);

            for (digit = 0; digit < DIGITS_PER_CHAIN; digit++) {
                index = NUM_POKE_ICONS + i * DIGITS_PER_CHAIN + digit;
                PoketchAnimation_HideSprite(graphics->sprites[index], TRUE);
            }
        } else {
            PoketchAnimation_SetCParam(graphics->sprites[i], PLTT_1 + PokeIconPaletteIndex(chainMons[i], 0, FALSE));
            UpdateChainCountDigits(&graphics->sprites[NUM_POKE_ICONS + i * DIGITS_PER_CHAIN], (i == 0) ? chainData->activeChain : chainData->bestChains[i - 1]);
        }
    }
}

static void UnloadSprites(TrainerCounterGraphics *graphics)
{
    for (int i = 0; i < NUM_SPRITES; i++) {
        if (graphics->sprites[i]) {
            PoketchAnimation_RemoveAnimatedSprite(graphics->animMan, graphics->sprites[i]);
            graphics->sprites[i] = NULL;
        }
    }

    PoketchAnimation_FreeSpriteData(&graphics->monData);
    PoketchAnimation_FreeSpriteData(&graphics->digitData);
}

static void UpdateChainCountDigits(PoketchAnimation_AnimatedSpriteData **sprites, u32 chainLength)
{
    int digit;
    BOOL numberStarted = FALSE;

    if (chainLength > 999) {
        chainLength = 999;
    }

    for (int i = 0, divisor = 100; i < DIGITS_PER_CHAIN; i++, divisor /= 10) {
        digit = chainLength / divisor;

        if (numberStarted == TRUE || digit != 0 || i == 2) {
            PoketchAnimation_UpdateAnimationIdx(*sprites, digit);
            numberStarted = TRUE;
        } else {
            PoketchAnimation_HideSprite(*sprites, TRUE);
        }

        chainLength -= (digit * divisor);
        sprites++;
    }
}
