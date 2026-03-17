#include "applications/poketch/party_status/graphics.h"

#include <nitro.h>

#include "constants/graphics.h"
#include "generated/items.h"
#include "generated/sdat.h"

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_graphics.h"
#include "applications/poketch/poketch_system.h"
#include "applications/poketch/poketch_task.h"

#include "graphics.h"
#include "heap.h"
#include "item.h"
#include "narc.h"
#include "pokemon_icon.h"
#include "sys_task.h"
#include "sys_task_manager.h"

#include "res/graphics/poketch/poketch.naix"

#define POKE_ICON_TILE_COUNT 16
#define POKE_ICON_SIZE_BYTES (POKE_ICON_TILE_COUNT * TILE_SIZE_4BPP)

#define HEALTHBAR_WIDTH_TILES 8
#define HEALTHBAR_SEGMENTS    ((HEALTHBAR_WIDTH_TILES * TILE_WIDTH_PIXELS) / 2)

static void DrawHealthbars(PartyStatusGraphics *graphics, const PartyStatus *partyData, u32 offset);
static void DrawHealthbarBorders(Window *window, PartyStatusGraphics *graphics);
static void FillHealthbars(Window *hpBar, u32 hpBarFill);
static u32 GetHealthbarFillAmount(u32 currentHp, u32 maxHp);
static void UnloadSprites(PartyStatusGraphics *graphics);
static void SetupItemSprites(PartyStatusGraphics *graphics, const PartyStatus *partyData);
static void SetupMonIconSprites(PartyStatusGraphics *graphics, const PartyStatus *partyData);
static void StartMonIconBounceTask(PartyStatusGraphics *graphics);

static void EndTask(PoketchTaskManager *taskMan);
static void Task_DrawAppScreen(SysTask *task, void *taskMan);
static void Task_HandleMonIconBounce(SysTask *task, void *bounceAnimData);
static void Task_RedrawAppScreen(SysTask *task, void *taskMan);
static void Task_FreeBackground(SysTask *task, void *taskMan);

static const struct {
    u16 x;
    u16 y;
} sMonPosition[] = {
    { 64, 36 },
    { 160, 36 },
    { 64, 84 },
    { 160, 84 },
    { 64, 132 },
    { 160, 132 }
};

BOOL PartyStatusGraphics_New(PartyStatusGraphics **dest, const PartyStatus *partyData, BgConfig *bgConfig)
{
    PartyStatusGraphics *graphics = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(PartyStatusGraphics));

    if (graphics != NULL) {
        PoketchTask_InitActiveTaskList(graphics->activeTaskIds, PARTY_STATUS_TASK_SLOTS);

        graphics->partyData = partyData;
        graphics->bgConfig = PoketchGraphics_GetBgConfig();
        graphics->animMan = PoketchGraphics_GetAnimationManager();
        graphics->partyCount = 0;
        graphics->bounceTask = NULL;

        for (int i = 0; i < MAX_PARTY_SIZE; i++) {
            Window_Init(&graphics->hpBarWindows[i]);
            graphics->monSprites[i] = NULL;
            graphics->itemSprites[i] = NULL;
        }

        PoketchAnimation_LoadSpriteFromNARC(&graphics->monAnimData, NARC_INDEX_GRAPHIC__POKETCH, poke_icon_cell_NCER_lz, poke_icon_anim_NANR_lz, HEAP_ID_POKETCH_APP);
        PoketchAnimation_LoadSpriteFromNARC(&graphics->itemSpriteData, NARC_INDEX_GRAPHIC__POKETCH, party_status_cell_NCER_lz, party_status_anim_NANR_lz, HEAP_ID_POKETCH_APP);
        *dest = graphics;
        return TRUE;
    }

    return FALSE;
}

void PartyStatusGraphics_Free(PartyStatusGraphics *graphics)
{
    if (graphics != NULL) {
        UnloadSprites(graphics);
        PoketchAnimation_FreeSpriteData(&graphics->monAnimData);
        PoketchAnimation_FreeSpriteData(&graphics->itemSpriteData);

        if (graphics->bounceTask) {
            SysTask_Done(graphics->bounceTask);
        }

        Heap_Free(graphics);
    }
}

static const PoketchTask sPartyStatusTasks[] = {
    { PARTY_STATUS_GRAPHICS_INIT, Task_DrawAppScreen, 0 },
    { PARTY_STATUS_GRAPHICS_FREE, Task_FreeBackground, 0 },
    { PARTY_STATUS_GRAPHICS_REFRESH, Task_RedrawAppScreen, 0 },
    { 0 }
};

void PartyStatusGraphics_StartTask(PartyStatusGraphics *appData, enum PartyStatusTask taskID)
{
    PoketchTask_Start(sPartyStatusTasks, taskID, appData, appData->partyData, appData->activeTaskIds, 2, HEAP_ID_POKETCH_APP);
}

BOOL PartyStatusGraphics_TaskIsNotActive(PartyStatusGraphics *appData, enum PartyStatusTask taskID)
{
    return PoketchTask_TaskIsNotActive(appData->activeTaskIds, taskID);
}

BOOL PartyStatusGraphics_NoActiveTasks(PartyStatusGraphics *graphicsData)
{
    return PoketchTask_NoActiveTasks(graphicsData->activeTaskIds);
}

static void EndTask(PoketchTaskManager *poketchTaskMan)
{
    PartyStatusGraphics *taskData = PoketchTask_GetTaskData(poketchTaskMan);
    PoketchTask_EndTask(taskData->activeTaskIds, poketchTaskMan);
}

static void Task_DrawAppScreen(SysTask *task, void *taskMan)
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
    PartyStatusGraphics *graphics;
    u32 bgTileCount;

    graphics = PoketchTask_GetTaskData(taskMan);
    Bg_InitFromTemplate(graphics->bgConfig, BG_LAYER_SUB_2, &bgTemplate, BG_TYPE_STATIC);

    bgTileCount = Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, party_status_bg_tiles_NCGR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    bgTileCount /= TILE_SIZE_4BPP;

    Bg_FillTilemapRect(graphics->bgConfig, BG_LAYER_SUB_2, 5, 0, 0, POKETCH_WIDTH_TILES, POKETCH_HEIGHT_TILES, 0);
    PoketchGraphics_LoadActivePalette(0, 0);

    graphics->hpBarBaseTile = bgTileCount;
    DrawHealthbars(graphics, graphics->partyData, bgTileCount);
    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);

    PoketchTask_FillPaletteFromActivePaletteSlot(15, 1);
    PoketchTask_LoadPokemonIconLuminancePalette(2);
    SetupItemSprites(graphics, graphics->partyData);
    SetupMonIconSprites(graphics, graphics->partyData);
    StartMonIconBounceTask(graphics);

    dispCnt = GXS_GetDispCnt();
    GXS_SetVisiblePlane(dispCnt.visiblePlane | GX_PLANEMASK_BG2 | GX_PLANEMASK_OBJ);
    EndTask(taskMan);
}

static void DrawHealthbars(PartyStatusGraphics *graphics, const PartyStatus *partyData, u32 offset)
{
    static const struct {
        u16 x;
        u16 y;
    } hpBarCorners[] = {
        { 4, 8 },
        { 16, 8 },
        { 4, 14 },
        { 16, 14 },
        { 4, 20 },
        { 16, 20 }
    };

    for (int slot = 0; slot < partyData->partyCount; slot++) {
        Window_Init(&graphics->hpBarWindows[slot]);
        Window_Add(graphics->bgConfig, &graphics->hpBarWindows[slot], BG_LAYER_SUB_2, hpBarCorners[slot].x, hpBarCorners[slot].y, HEALTHBAR_WIDTH_TILES, 1, 0, offset + slot * HEALTHBAR_WIDTH_TILES);
        Window_PutToTilemap(&graphics->hpBarWindows[slot]);

        DrawHealthbarBorders(&graphics->hpBarWindows[slot], graphics);
        FillHealthbars(&graphics->hpBarWindows[slot], GetHealthbarFillAmount(partyData->mons[slot].currentHp, partyData->mons[slot].maxHp));
    }

    graphics->partyCount = partyData->partyCount;
}

static void DrawHealthbarBorders(Window *window, PartyStatusGraphics *graphics)
{
    Bg_FillTilemapRect(graphics->bgConfig, BG_LAYER_SUB_2, 1, window->tilemapLeft - 1, window->tilemapTop - 1, 1, 1, 0);
    Bg_FillTilemapRect(graphics->bgConfig, BG_LAYER_SUB_2, 2, window->tilemapLeft, window->tilemapTop - 1, window->width, 1, 0);
    Bg_FillTilemapRect(graphics->bgConfig, BG_LAYER_SUB_2, BG_TILE_FLIP_H | 1, window->tilemapLeft + window->width, window->tilemapTop - 1, 1, 1, 0);

    Bg_FillTilemapRect(graphics->bgConfig, BG_LAYER_SUB_2, 6, window->tilemapLeft - 1, window->tilemapTop, 1, window->height, 0);
    Bg_FillTilemapRect(graphics->bgConfig, BG_LAYER_SUB_2, BG_TILE_FLIP_H | 6, window->tilemapLeft + window->width, window->tilemapTop, 1, window->height, 0);

    Bg_FillTilemapRect(graphics->bgConfig, BG_LAYER_SUB_2, BG_TILE_FLIP_V | 1, window->tilemapLeft - 1, window->tilemapTop + window->height, 1, 1, 0);
    Bg_FillTilemapRect(graphics->bgConfig, BG_LAYER_SUB_2, BG_TILE_FLIP_V | 2, window->tilemapLeft, window->tilemapTop + window->height, window->width, 1, 0);
    Bg_FillTilemapRect(graphics->bgConfig, BG_LAYER_SUB_2, BG_TILE_FLIP_V | BG_TILE_FLIP_H | 1, window->tilemapLeft + window->width, window->tilemapTop + window->height, 1, 1, 0);
}

static void FillHealthbars(Window *hpBar, u32 hpBarFill)
{
    Window_FillRectWithColor(hpBar, 4, 0, 0, HEALTHBAR_WIDTH_TILES * TILE_WIDTH_PIXELS, TILE_HEIGHT_PIXELS);

    if (hpBarFill) {
        Window_FillRectWithColor(hpBar, 15, 0, 0, hpBarFill, TILE_HEIGHT_PIXELS);
    }

    Window_LoadTiles(hpBar);
}

static u32 GetHealthbarFillAmount(u32 currentHp, u32 maxHp)
{
    u32 width;

    if (currentHp == 0) {
        return 0;
    }

    if (currentHp == maxHp) {
        return HEALTHBAR_WIDTH_TILES * TILE_WIDTH_PIXELS;
    }

    width = (((currentHp << FX32_SHIFT) / maxHp) * HEALTHBAR_SEGMENTS) >> FX32_SHIFT;

    if (width == 0) { // if HP isn't 0, add a pixel to the bar even if calculated width is 0
        width = 1;
    } else if (width == HEALTHBAR_SEGMENTS) { // if HP isn't full, remove a pixel from the bar even if calculated with is max
        width = HEALTHBAR_SEGMENTS - 1;
    }

    return width * 2;
}

static void SetupItemSprites(PartyStatusGraphics *graphics, const PartyStatus *partyData)
{
    PoketchAnimation_AnimationData animData;

    Graphics_LoadObjectTiles(NARC_INDEX_GRAPHIC__POKETCH, party_status_NCGR_lz, DS_SCREEN_SUB, 0, 0, TRUE, HEAP_ID_POKETCH_APP);

    animData.flip = NNS_G2D_RENDERERFLIP_NONE;
    animData.oamPriority = 2;
    animData.priority = 0;
    animData.hasAffineTransform = FALSE;

    for (int i = 0; i < partyData->partyCount; i++) {
        if (partyData->mons[i].heldItem != ITEM_NONE) {
            animData.animIdx = Item_IsMail(partyData->mons[i].heldItem) ? 1 : 0;
            animData.translation.x = (sMonPosition[i].x + 28) << FX32_SHIFT;
            animData.translation.y = (sMonPosition[i].y + 21) << FX32_SHIFT;

            graphics->itemSprites[i] = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &animData, &graphics->itemSpriteData);
        }
    }
}

static void SetupMonIconSprites(PartyStatusGraphics *graphics, const PartyStatus *partyData)
{
    NARC *narc = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, HEAP_ID_POKETCH_APP);

    if (narc) {
        PoketchAnimation_AnimationData animData;
        NNSG2dCharacterData *charData;

        animData.animIdx = 0;
        animData.flip = NNS_G2D_RENDERERFLIP_NONE;
        animData.oamPriority = 2;
        animData.priority = 1;
        animData.hasAffineTransform = TRUE;

        for (int slot = 0; slot < partyData->partyCount; slot++) {
            NARC_ReadFromMember(narc, partyData->mons[slot].iconSpriteIndex, 0, 640, graphics->iconSpriteBuffer);

            NNS_G2dGetUnpackedCharacterData(graphics->iconSpriteBuffer, &charData);
            DC_FlushRange(charData->pRawData, POKE_ICON_TILE_COUNT * TILE_SIZE_4BPP);
            GXS_LoadOBJ(charData->pRawData, 8 * TILE_SIZE_4BPP + (POKE_ICON_TILE_COUNT * TILE_SIZE_4BPP) * slot, POKE_ICON_TILE_COUNT * TILE_SIZE_4BPP);

            animData.translation.x = sMonPosition[slot].x << FX32_SHIFT;
            animData.translation.y = sMonPosition[slot].y << FX32_SHIFT;

            graphics->monSprites[slot] = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &animData, &graphics->monAnimData);

            PoketchAnimation_SetSpriteCharNo(graphics->monSprites[slot], 8 + POKE_ICON_TILE_COUNT * slot);
            PoketchAnimation_UpdateAnimationIdx(graphics->monSprites[slot], 4);

            if ((partyData->mons[slot].currentHp == 0) || partyData->mons[slot].hasStatus) { // darken sprite if mon is incapacitated
                PoketchAnimation_SetCParam(graphics->monSprites[slot], 1);
            } else {
                u16 plttIdx = PokeIconPaletteIndex(partyData->mons[slot].species, partyData->mons[slot].form, partyData->mons[slot].isEgg);
                PoketchAnimation_SetCParam(graphics->monSprites[slot], 2 + plttIdx);
            }
        }

        NARC_dtor(narc);
    }
}

static void StartMonIconBounceTask(PartyStatusGraphics *graphics)
{
    graphics->bounceData.taskState = 0;
    graphics->bounceData.graphics = graphics;
    graphics->bounceData.partyData = graphics->partyData;
    graphics->bounceTask = SysTask_Start(Task_HandleMonIconBounce, &graphics->bounceData, 1);
}

static void Task_HandleMonIconBounce(SysTask *task, void *taskData)
{
    MonIconBounceAnim *bounces = taskData;
    const PartyStatus *partyData = bounces->partyData;
    PartyStatusGraphics *graphics = bounces->graphics;

    switch (bounces->taskState) {
    case 0:
        if (partyData->screenTapped) {
            u32 slot = PoketchPartyStatusGraphics_CheckTouchingMon(partyData->touchX, partyData->touchY, partyData->partyCount);

            if (slot < partyData->partyCount) {
                if (partyData->mons[slot].currentHp && (partyData->mons[slot].isEgg == FALSE)) {
                    bounces->timer = 0;
                    bounces->numCompleted = 0;
                    bounces->monSlot = slot;
                    bounces->spriteOffset = 2;

                    if (partyData->mons[slot].hasStatus == FALSE) {
                        bounces->bounceWait = 1;
                        bounces->minBounces = 8;
                    } else {
                        bounces->bounceWait = 2;
                        bounces->minBounces = 4;
                    }

                    bounces->taskState = 1;
                    PoketchSystem_PlayCry(partyData->mons[slot].species, partyData->mons[slot].form);
                }
            }
        }
        break;
    case 1:
        if (bounces->numCompleted == bounces->minBounces) {
            if (!(partyData->screenTouched && (bounces->monSlot == PoketchPartyStatusGraphics_CheckTouchingMon(partyData->touchX, partyData->touchY, partyData->partyCount)))) {
                PoketchAnimation_SetSpritePosition(graphics->monSprites[bounces->monSlot], sMonPosition[bounces->monSlot].x << FX32_SHIFT, sMonPosition[bounces->monSlot].y << FX32_SHIFT);
                bounces->taskState = 0;
                break;
            }
        }

        if (bounces->timer == 0) {
            fx32 targetX, targetY;

            targetX = sMonPosition[bounces->monSlot].x << FX32_SHIFT;
            targetY = (sMonPosition[bounces->monSlot].y + bounces->spriteOffset) << FX32_SHIFT;

            PoketchAnimation_SetSpritePosition(graphics->monSprites[bounces->monSlot], targetX, targetY);

            if (bounces->numCompleted < bounces->minBounces) {
                bounces->numCompleted++;
            }

            bounces->spriteOffset *= -1;
            bounces->timer = bounces->bounceWait;
        } else {
            bounces->timer--;
        }
        break;
    }
}

u32 PoketchPartyStatusGraphics_CheckTouchingMon(u32 x, u32 y, u32 partyCount)
{
    u32 top, bottom, left, right;

    for (u32 slot = 0; slot < partyCount; slot++) {
        top = 8 + sMonPosition[slot].y - 16;
        bottom = 8 + sMonPosition[slot].y + 16;
        left = sMonPosition[slot].x - 16;
        right = sMonPosition[slot].x + 16;

        if (x - left < right - left & y - top < bottom - top) {
            return slot;
        }
    }

    return partyCount;
}

static void UnloadSprites(PartyStatusGraphics *graphics)
{
    for (int i = 0; i < MAX_PARTY_SIZE; i++) {
        if (graphics->monSprites[i] != NULL) {
            PoketchAnimation_RemoveAnimatedSprite(graphics->animMan, graphics->monSprites[i]);
            graphics->monSprites[i] = NULL;
        }

        if (graphics->itemSprites[i] != NULL) {
            PoketchAnimation_RemoveAnimatedSprite(graphics->animMan, graphics->itemSprites[i]);
            graphics->itemSprites[i] = NULL;
        }
    }

    for (int i = 0; i < graphics->partyCount; i++) {
        Window_Remove(&graphics->hpBarWindows[i]);
    }

    graphics->partyCount = 0;
}

static void Task_FreeBackground(SysTask *task, void *taskMan)
{
    PartyStatusGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_2);
    EndTask(taskMan);
}

static void Task_RedrawAppScreen(SysTask *task, void *taskMan)
{
    PartyStatusGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const PartyStatus *partyData = PoketchTask_GetConstTaskData(taskMan);

    UnloadSprites(graphics);

    Bg_FillTilemapRect(graphics->bgConfig, BG_LAYER_SUB_2, 5, 0, 0, POKETCH_WIDTH_TILES, POKETCH_HEIGHT_TILES, 0);

    SetupItemSprites(graphics, partyData);
    SetupMonIconSprites(graphics, partyData);
    DrawHealthbars(graphics, partyData, graphics->hpBarBaseTile);

    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);

    PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_010);
    EndTask(taskMan);
}
