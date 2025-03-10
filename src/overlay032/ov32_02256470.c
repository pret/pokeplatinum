#include "overlay032/ov32_02256470.h"

#include <nitro.h>
#include <string.h>

#include "generated/items.h"

#include "overlay025/ov25_02254560.h"
#include "overlay025/ov25_02255090.h"
#include "overlay025/ov25_02255540.h"
#include "overlay025/poketch_system.h"

#include "graphics.h"
#include "heap.h"
#include "item.h"
#include "narc.h"
#include "pokemon_icon.h"
#include "sys_task_manager.h"

static void EndPoketchTask(PoketchTaskManager *poketchTaskMan);
static void DrawAppScreen(SysTask *param0, void *param1);
static void CreateHpBars(PoketchPartyStatusGraphics *graphicsData, const PlayerPartyStatus *partyData, u32 baseTile);
static void DrawHpBarOutline(Window *param0, PoketchPartyStatusGraphics *param1);
static void FillHpBar(Window *hpBar, u32 hpBarFill);
static u32 GetHpBarWidth(u32 currentHp, u32 maxHp);
static void ov32_02256898(PoketchPartyStatusGraphics *param0, const PlayerPartyStatus *param1);
static void ov32_0225692C(PoketchPartyStatusGraphics *param0, const PlayerPartyStatus *param1);
static void StartMonIconBounceTask(PoketchPartyStatusGraphics *param0);
static void Task_HandleMonIconBounce(SysTask *task, void *bounceAnimData);
static void ov32_02256BD4(PoketchPartyStatusGraphics *param0);
static void FreeAppScreen(SysTask *param0, void *param1);
static void RedrawAppScreen(SysTask *param0, void *param1);

static const struct MonIconCoords {
    u16 x; // horizontal center of the icon
    u16 y; // 8px above the vertical center
} sMonIconCoords[] = {
    { 64, 36 },
    { 160, 36 },
    { 64, 84 },
    { 160, 84 },
    { 64, 132 },
    { 160, 132 }
};

BOOL PartyStatusGraphics_New(PoketchPartyStatusGraphics **dest, const PlayerPartyStatus *playerParty, BgConfig *bgConfig)
{
    PoketchPartyStatusGraphics *graphicsData = (PoketchPartyStatusGraphics *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(PoketchPartyStatusGraphics));

    if (graphicsData != NULL) {
        PoketchTask_InitActiveTaskList(graphicsData->activeTaskIds, 8);

        graphicsData->playerParty = playerParty;
        graphicsData->bgConfig = Poketch_GetBgConfig();
        graphicsData->unk_08 = ov25_02254664();
        graphicsData->partyCount = 0;
        graphicsData->bounceAnimTask = NULL;

        for (int i = 0; i < MAX_PARTY_SIZE; i++) {
            Window_Init(&(graphicsData->hpBarWindows[i]));
            graphicsData->unk_9C[i] = NULL;
            graphicsData->unk_B4[i] = NULL;
        }

        ov25_LoadNARCMembers(&graphicsData->unk_CC, 12, 5, 6, HEAP_ID_POKETCH_APP);
        ov25_LoadNARCMembers(&graphicsData->unk_E0, 12, 107, 108, HEAP_ID_POKETCH_APP);
        *dest = graphicsData;
        return TRUE;
    }

    return FALSE;
}

void PartyStatusGraphics_UnloadAndFree(PoketchPartyStatusGraphics *graphicsData)
{
    if (graphicsData != NULL) {
        ov32_02256BD4(graphicsData);
        ov25_FreeNARCMembers(&graphicsData->unk_CC);
        ov25_FreeNARCMembers(&graphicsData->unk_E0);

        if (graphicsData->bounceAnimTask) {
            SysTask_Done(graphicsData->bounceAnimTask);
        }

        Heap_FreeToHeap(graphicsData);
    }
}

static const PoketchTask sPartyStatusTasks[] = {
    { TASK_DRAW_SCREEN, DrawAppScreen, 0 },
    { TASK_UNLOAD_AND_FREE, FreeAppScreen, 0 },
    { TASK_REDRAW_ON_TAP, RedrawAppScreen, 0 },
    { 0, NULL, 0 }
};

void PartyStatus_StartTaskById(PoketchPartyStatusGraphics *appData, enum PartyStatusTask taskId)
{
    PoketchTask_Start(sPartyStatusTasks, taskId, appData, appData->playerParty, appData->activeTaskIds, 2, HEAP_ID_POKETCH_APP);
}

BOOL PartyStatus_TaskIsNotActive(PoketchPartyStatusGraphics *appData, u32 animId)
{
    return PoketchTask_TaskIsNotActive(appData->activeTaskIds, animId);
}

BOOL PartyStatus_AllTasksDone(PoketchPartyStatusGraphics *graphicsData)
{
    return PoketchTask_NoActiveTasks(graphicsData->activeTaskIds);
}

static void EndPoketchTask(PoketchTaskManager *poketchTaskMan)
{
    PoketchPartyStatusGraphics *taskData = PoketchTask_GetTaskData(poketchTaskMan);
    PoketchTask_EndTask(taskData->activeTaskIds, poketchTaskMan);
}

static void DrawAppScreen(SysTask *param0, void *param1)
{
    static const BgTemplate v0 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0x7000,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        2,
        0,
        0,
        0
    };
    GXSDispCnt v1;
    PoketchPartyStatusGraphics *v2;
    u32 v3;

    v2 = PoketchTask_GetTaskData(param1);
    Bg_InitFromTemplate(v2->bgConfig, 6, &v0, 0);

    v3 = Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, 106, v2->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    v3 /= TILE_SIZE_4BPP;

    Bg_FillTilemapRect(v2->bgConfig, 6, 0x5, 0, 0, 32, 24, 0);
    Poketch_LoadActivePalette(0, 0);

    v2->hpBarBaseTile = v3;
    CreateHpBars(v2, v2->playerParty, v3);
    Bg_CopyTilemapBufferToVRAM(v2->bgConfig, 6);

    ov25_02255308(15, 1);
    ov25_02255360(2);
    ov32_02256898(v2, v2->playerParty);
    ov32_0225692C(v2, v2->playerParty);
    StartMonIconBounceTask(v2);

    v1 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v1.visiblePlane | GX_PLANEMASK_BG2 | GX_PLANEMASK_OBJ);
    EndPoketchTask(param1);
}

static void CreateHpBars(PoketchPartyStatusGraphics *graphicsData, const PlayerPartyStatus *playerData, u32 baseTile)
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
    int i;

    for (i = 0; i < playerData->partyCount; i++) {
        Window_Init(&(graphicsData->hpBarWindows[i]));
        Window_Add(graphicsData->bgConfig, &(graphicsData->hpBarWindows[i]), BG_LAYER_SUB_2, hpBarCorners[i].x, hpBarCorners[i].y, 8, 1, 0, baseTile + i * 8);
        Window_PutToTilemap(&(graphicsData->hpBarWindows[i]));

        DrawHpBarOutline(&(graphicsData->hpBarWindows[i]), graphicsData);
        FillHpBar(&(graphicsData->hpBarWindows[i]), GetHpBarWidth(playerData->mons[i].currentHp, playerData->mons[i].maxHp));
    }

    graphicsData->partyCount = playerData->partyCount;
}

static void DrawHpBarOutline(Window *param0, PoketchPartyStatusGraphics *param1)
{
    Bg_FillTilemapRect(param1->bgConfig, 6, 1, param0->tilemapLeft - 1, param0->tilemapTop - 1, 1, 1, 0);
    Bg_FillTilemapRect(param1->bgConfig, 6, 2, param0->tilemapLeft, param0->tilemapTop - 1, param0->width, 1, 0);
    Bg_FillTilemapRect(param1->bgConfig, 6, 1025, param0->tilemapLeft + param0->width, param0->tilemapTop - 1, 1, 1, 0);

    Bg_FillTilemapRect(param1->bgConfig, 6, 6, param0->tilemapLeft - 1, param0->tilemapTop, 1, param0->height, 0);
    Bg_FillTilemapRect(param1->bgConfig, 6, 1030, param0->tilemapLeft + param0->width, param0->tilemapTop, 1, param0->height, 0);

    Bg_FillTilemapRect(param1->bgConfig, 6, 2049, param0->tilemapLeft - 1, param0->tilemapTop + param0->height, 1, 1, 0);
    Bg_FillTilemapRect(param1->bgConfig, 6, 2050, param0->tilemapLeft, param0->tilemapTop + param0->height, param0->width, 1, 0);
    Bg_FillTilemapRect(param1->bgConfig, 6, 3073, param0->tilemapLeft + param0->width, param0->tilemapTop + param0->height, 1, 1, 0);
}

static void FillHpBar(Window *hpBar, u32 hpBarFill)
{
    Window_FillRectWithColor(hpBar, 4, 0, 0, 64, 8); // light green (empty)

    if (hpBarFill) {
        Window_FillRectWithColor(hpBar, 15, 0, 0, hpBarFill, 8); // dark green ("full" portion of the bar)
    }

    Window_LoadTiles(hpBar);
}

static u32 GetHpBarWidth(u32 currentHp, u32 maxHp)
{
    u32 width;

    if (currentHp == 0) {
        return 0;
    }

    if (currentHp == maxHp) {
        return 64;
    }

    width = (((currentHp << FX32_SHIFT) / maxHp) * 32) >> FX32_SHIFT;

    if (width == 0) { // if HP isn't 0, add a pixel to the bar even if calculated width is 0
        width = 1;
    } else if (width == 32) { // if HP isn't full, remove a pixel from the bar even if calculated with is max
        width = 32 - 1;
    }

    return width * 2;
}

static void ov32_02256898(PoketchPartyStatusGraphics *param0, const PlayerPartyStatus *param1)
{
    int v0;
    UnkStruct_ov25_02255810 v1;

    Graphics_LoadObjectTiles(NARC_INDEX_GRAPHIC__POKETCH, 109, DS_SCREEN_SUB, 0 * TILE_SIZE_4BPP, 0, TRUE, HEAP_ID_POKETCH_APP);

    v1.unk_0A = 0;
    v1.unk_0B = 2;
    v1.unk_0C = 0;
    v1.unk_0D = 0;

    for (v0 = 0; v0 < param1->partyCount; v0++) {
        if (param1->mons[v0].heldItem != ITEM_NONE) {
            v1.animIDX = Item_IsMail(param1->mons[v0].heldItem) ? TRUE : FALSE;
            v1.unk_00.x = ((sMonIconCoords[v0].x + 28) << FX32_SHIFT);
            v1.unk_00.y = ((sMonIconCoords[v0].y + 21) << FX32_SHIFT);

            param0->unk_B4[v0] = ov25_SetupNewElem(param0->unk_08, &v1, &param0->unk_E0);
        }
    }
}

static void ov32_0225692C(PoketchPartyStatusGraphics *param0, const PlayerPartyStatus *param1)
{
    NARC *v0 = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, HEAP_ID_POKETCH_APP);

    if (v0) {
        UnkStruct_ov25_02255810 v1;
        NNSG2dCharacterData *v2;
        int v3;

        v1.animIDX = 0;
        v1.unk_0A = 0;
        v1.unk_0B = 2;
        v1.unk_0C = 1;
        v1.unk_0D = 1;

        for (v3 = 0; v3 < param1->partyCount; v3++) {
            NARC_ReadFromMember(v0, param1->mons[v3].iconSpriteIndex, 0, ((16 * TILE_SIZE_4BPP) + 0x80), param0->iconSpriteBuffer);

            NNS_G2dGetUnpackedCharacterData(param0->iconSpriteBuffer, &v2);
            DC_FlushRange(v2->pRawData, (16 * TILE_SIZE_4BPP));
            GXS_LoadOBJ(v2->pRawData, (0 + 8) * TILE_SIZE_4BPP + (16 * TILE_SIZE_4BPP) * v3, (16 * TILE_SIZE_4BPP));

            v1.unk_00.x = ((sMonIconCoords[v3].x) << FX32_SHIFT);
            v1.unk_00.y = ((sMonIconCoords[v3].y) << FX32_SHIFT);

            param0->unk_9C[v3] = ov25_SetupNewElem(param0->unk_08, &v1, &param0->unk_CC);

             ov25_Set_unk_8C(param0->unk_9C[v3], (0 + 8) + 16 * v3);
            ov25_InitAnimation(param0->unk_9C[v3], 4);

            if ((param1->mons[v3].currentHp == 0) || param1->mons[v3].status) { // darken sprite if mon is incapacitated
                 ov25_Set_unk_88(param0->unk_9C[v3], 1);
            } else {
                u16 v4 = PokeIconPaletteIndex(param1->mons[v3].species, param1->mons[v3].form, param1->mons[v3].isEgg);
                 ov25_Set_unk_88(param0->unk_9C[v3], 2 + v4);
            }
        }

        NARC_dtor(v0);
    }
}

static void StartMonIconBounceTask(PoketchPartyStatusGraphics *param0)
{
    param0->bounceAnimData.taskState = 0;
    param0->bounceAnimData.graphicsDataPtr = param0;
    param0->bounceAnimData.partyDataPtr = param0->playerParty;
    param0->bounceAnimTask = SysTask_Start(Task_HandleMonIconBounce, &(param0->bounceAnimData), 1);
}

// handles tap input as well as the bounce anim itself.
static void Task_HandleMonIconBounce(SysTask *task, void *taskData)
{
    MonIconBounceAnim *data = taskData;
    const PlayerPartyStatus *playerData = data->partyDataPtr;
    PoketchPartyStatusGraphics *graphicsData = data->graphicsDataPtr;

    switch (data->taskState) {
    case 0:
        if (playerData->screenTapped) {
            u32 touchedSlot = PoketchPartyStatus_CheckTouchingPartySlot(playerData->touchX, playerData->touchY, playerData->partyCount);

            if (touchedSlot < playerData->partyCount) {
                if (playerData->mons[touchedSlot].currentHp && (playerData->mons[touchedSlot].isEgg == 0)) {
                    data->bounceWaitTimer = 0;
                    data->bouncesDone = 0;
                    data->partySlot = touchedSlot;
                    data->spriteOffset = 2;

                    if (playerData->mons[touchedSlot].status == 0) {
                        data->bounceWait = 1;
                        data->numBounces = 8;
                    } else { // statused mons bounce slower, but also fewer times, so the total anim length is the same
                        data->bounceWait = 2;
                        data->numBounces = 4;
                    }

                    data->taskState = 1;
                    PoketchSystem_PlayCry(playerData->mons[touchedSlot].species, playerData->mons[touchedSlot].form);
                }
            }
        }
        break;
    case 1:
        if (data->bouncesDone == data->numBounces) { // bouncing will continue for as long as the touch screen is held on the same icon
            if (!(playerData->isTouchingPoketch && (data->partySlot == PoketchPartyStatus_CheckTouchingPartySlot(playerData->touchX, playerData->touchY, playerData->partyCount)))) {
                ov25_SetTranslation(graphicsData->unk_9C[data->partySlot], (sMonIconCoords[data->partySlot].x << FX32_SHIFT), (sMonIconCoords[data->partySlot].y << FX32_SHIFT));
                data->taskState = 0;
                break;
            }
        }

        if (data->bounceWaitTimer == 0) {
            fx32 targetX, targetY;

            targetX = sMonIconCoords[data->partySlot].x << FX32_SHIFT;
            targetY = (sMonIconCoords[data->partySlot].y + data->spriteOffset) << FX32_SHIFT;

            ov25_SetTranslation(graphicsData->unk_9C[data->partySlot], targetX, targetY);

            if (data->bouncesDone < data->numBounces) {
                data->bouncesDone++;
            }

            data->spriteOffset *= -1;
            data->bounceWaitTimer = data->bounceWait;
        } else {
            data->bounceWaitTimer--;
        }
        break;
    }
}

u32 PoketchPartyStatus_CheckTouchingPartySlot(u32 touchX, u32 touchY, u32 partyCount)
{
    u32 i, upperBoundY, lowerBoundY, upperBoundX, lowerBoundX;

    for (i = 0; i < partyCount; i++) {
        upperBoundY = 8 + sMonIconCoords[i].y - 16;
        lowerBoundY = 8 + sMonIconCoords[i].y + 16;
        upperBoundX = sMonIconCoords[i].x - 16;
        lowerBoundX = sMonIconCoords[i].x + 16;

        // Creates a bounding box around the party icon and checks if the tapped coordinates are within it.
        // Since the Poketch mon icons are double-sized, this box does not necessarily contain the whole sprite.
        if (((touchX - upperBoundX) < (lowerBoundX - upperBoundX)) & ((touchY - upperBoundY) < (lowerBoundY - upperBoundY))) {
            return i;
        }
    }

    return partyCount;
}

static void ov32_02256BD4(PoketchPartyStatusGraphics *param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        if (param0->unk_9C[v0] != NULL) {
            ov25_RemoveElem(param0->unk_08, param0->unk_9C[v0]);
            param0->unk_9C[v0] = NULL;
        }

        if (param0->unk_B4[v0] != NULL) {
            ov25_RemoveElem(param0->unk_08, param0->unk_B4[v0]);
            param0->unk_B4[v0] = NULL;
        }
    }

    for (v0 = 0; v0 < param0->partyCount; v0++) {
        Window_Remove(&(param0->hpBarWindows[v0]));
    }

    param0->partyCount = 0;
}

static void FreeAppScreen(SysTask *param0, void *param1)
{
    PoketchPartyStatusGraphics *v0 = PoketchTask_GetTaskData(param1);

    Bg_FreeTilemapBuffer(v0->bgConfig, 6);
    EndPoketchTask(param1);
}

static void RedrawAppScreen(SysTask *param0, void *param1)
{
    PoketchPartyStatusGraphics *v0 = PoketchTask_GetTaskData(param1);
    const PlayerPartyStatus *v1 = PoketchTask_GetConstTaskData(param1);

    ov32_02256BD4(v0);

    Bg_FillTilemapRect(v0->bgConfig, BG_LAYER_SUB_2, 0x5, 0, 0, 32, 24, 0);

    ov32_02256898(v0, v1);
    ov32_0225692C(v0, v1);
    CreateHpBars(v0, v1, v0->hpBarBaseTile);

    Bg_CopyTilemapBufferToVRAM(v0->bgConfig, BG_LAYER_SUB_2);

    PoketchSystem_PlaySoundEffect(1641);
    EndPoketchTask(param1);
}
