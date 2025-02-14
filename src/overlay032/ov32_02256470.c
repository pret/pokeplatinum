#include "overlay032/ov32_02256470.h"

#include <nitro.h>
#include <string.h>

#include "overlay025/ov25_02254560.h"
#include "overlay025/ov25_02255090.h"
#include "overlay025/ov25_02255540.h"
#include "overlay025/poketch_system.h"
#include "overlay025/struct_ov25_022555E8_decl.h"
#include "overlay025/struct_ov25_02255810.h"
#include "overlay025/struct_ov25_022558C4_decl.h"
#include "overlay025/struct_ov25_02255958.h"
#include "overlay032/struct_ov32_02256470_decl.h"

#include "generated/items.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "item.h"
#include "narc.h"
#include "pokemon_icon.h"
#include "sys_task.h"
#include "sys_task_manager.h"

typedef struct MonIconBounceAnim {
    UnkStruct_ov32_02256470 *graphicsDataPtr;
    const PlayerPartyStatus *partyDataPtr;
    u8 taskState;
    u8 bounceWaitTimer;
    u8 partySlot;
    u8 bouncesDone;
    u8 bounceWait;
    u8 numBounces;
    int spriteOffset;
} MonIconBounceAnim;

struct UnkStruct_ov32_02256470_t {
    const PlayerPartyStatus *unk_00;
    BgConfig *unk_04;
    UnkStruct_ov25_022555E8 *unk_08;
    u32 activeTaskIds[10];
    u32 unk_34;
    u32 partyCount;
    Window hpBarWindows[6]; // might just be health bars?
    UnkStruct_ov25_022558C4 *unk_9C[6]; // mon icons?
    UnkStruct_ov25_022558C4 *unk_B4[6]; // healthbars?
    UnkStruct_ov25_02255958 unk_CC;
    UnkStruct_ov25_02255958 unk_E0;
    SysTask *unk_F4;
    MonIconBounceAnim bounceAnimData;
    u8 iconSpriteBuffer[640];
};

static void EndPoketchTask(PoketchTaskManager *poketchTaskMan);
static void ov32_02256588(SysTask *param0, void *param1);
static void ov32_02256648(UnkStruct_ov32_02256470 *param0, const PlayerPartyStatus *param1, u32 param2);
static void ov32_022566E0(Window *param0, UnkStruct_ov32_02256470 *param1);
static void FillHpBar(Window *hpBar, u32 hpBarFill);
static u32 GetHpBarWidth(u32 currentHp, u32 maxHp);
static void ov32_02256898(UnkStruct_ov32_02256470 *param0, const PlayerPartyStatus *param1);
static void ov32_0225692C(UnkStruct_ov32_02256470 *param0, const PlayerPartyStatus *param1);
static void StartMonIconBounceTask(UnkStruct_ov32_02256470 *param0);
static void Task_HandleMonIconBounce(SysTask *task, void *bounceAnimData);
static void ov32_02256BD4(UnkStruct_ov32_02256470 *param0);
static void ov32_02256C38(SysTask *param0, void *param1);
static void ov32_02256C54(SysTask *param0, void *param1);

static const struct MonIconCoords{
    u16 x; // horizontal center of the icon
    u16 y; // 8px above the vertical center
} sMonIconCoords[] = {
    { 0x40, 0x24 },
    { 0xA0, 0x24 },
    { 0x40, 0x54 },
    { 0xA0, 0x54 },
    { 0x40, 0x84 },
    { 0xA0, 0x84 }
};

BOOL ov32_02256470(UnkStruct_ov32_02256470 **param0, const PlayerPartyStatus *param1, BgConfig *param2)
{
    UnkStruct_ov32_02256470 *v0 = (UnkStruct_ov32_02256470 *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov32_02256470));

    if (v0 != NULL) {
        int v1;

        PoketchTask_InitActiveTaskList(v0->activeTaskIds, 8);

        v0->unk_00 = param1;
        v0->unk_04 = ov25_02254674();
        v0->unk_08 = ov25_02254664();
        v0->partyCount = 0;
        v0->unk_F4 = NULL;

        for (v1 = 0; v1 < 6; v1++) {
            Window_Init(&(v0->hpBarWindows[v1]));
            v0->unk_9C[v1] = NULL;
            v0->unk_B4[v1] = NULL;
        }

        ov25_02255958(&v0->unk_CC, 12, 5, 6, 8);
        ov25_02255958(&v0->unk_E0, 12, 107, 108, 8);
        *param0 = v0;
        return 1;
    }

    return 0;
}

void ov32_02256508(UnkStruct_ov32_02256470 *param0)
{
    if (param0 != NULL) {
        ov32_02256BD4(param0);
        ov25_022559B0(&param0->unk_CC);
        ov25_022559B0(&param0->unk_E0);

        if (param0->unk_F4) {
            SysTask_Done(param0->unk_F4);
        }

        Heap_FreeToHeap(param0);
    }
}

static const PoketchTask sPartyStatusTasks[] = {
    { 0x0, ov32_02256588, 0x0 },
    { 0x1, ov32_02256C38, 0x0 },
    { 0x2, ov32_02256C54, 0x0 },
    { 0x0, NULL, 0x0 }
};

void PartyStatus_StartTaskById(UnkStruct_ov32_02256470 *appData, u32 taskId)
{
    PoketchTask_Start(sPartyStatusTasks, taskId, appData, appData->unk_00, appData->activeTaskIds, 2, HEAP_ID_POKETCH_APP);
}

BOOL PartyStatus_TaskIsNotActive(UnkStruct_ov32_02256470 *appData, u32 animId)
{
    return PoketchTask_TaskIsNotActive(appData->activeTaskIds, animId);
}

BOOL PartyStatus_AllTasksDone(UnkStruct_ov32_02256470 *param0)
{
    return PoketchTask_NoActiveTasks(param0->activeTaskIds);
}

static void EndPoketchTask(PoketchTaskManager *poketchTaskMan)
{
    UnkStruct_ov32_02256470 *taskData = PoketchTask_GetTaskData(poketchTaskMan);
    PoketchTask_EndTask(taskData->activeTaskIds, poketchTaskMan);
}

static void ov32_02256588(SysTask *param0, void *param1)
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
    UnkStruct_ov32_02256470 *v2;
    u32 v3;

    v2 = PoketchTask_GetTaskData(param1);
    Bg_InitFromTemplate(v2->unk_04, 6, &v0, 0);

    v3 = Graphics_LoadTilesToBgLayer(12, 106, v2->unk_04, 6, 0, 0, 1, 8);
    v3 /= 0x20;

    Bg_FillTilemapRect(v2->unk_04, 6, 0x5, 0, 0, 32, 24, 0);
    ov25_022546B8(0, 0);

    v2->unk_34 = v3;
    ov32_02256648(v2, v2->unk_00, v3);
    Bg_CopyTilemapBufferToVRAM(v2->unk_04, 6);

    ov25_02255308(15, 1);
    ov25_02255360(2);
    ov32_02256898(v2, v2->unk_00);
    ov32_0225692C(v2, v2->unk_00);
    StartMonIconBounceTask(v2);

    v1 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v1.visiblePlane | GX_PLANEMASK_BG2 | GX_PLANEMASK_OBJ);
    EndPoketchTask(param1);
}

static void ov32_02256648(UnkStruct_ov32_02256470 *param0, const PlayerPartyStatus *param1, u32 param2)
{
    static const struct {
        u16 unk_00;
        u16 unk_02;
    } v0[] = {
        { 4, 8 },
        { 16, 8 },
        { 4, 14 },
        { 16, 14 },
        { 4, 20 },
        { 16, 20 }
    };
    int v1;

    for (v1 = 0; v1 < param1->partyCount; v1++) {
        Window_Init(&(param0->hpBarWindows[v1]));
        Window_Add(param0->unk_04, &(param0->hpBarWindows[v1]), 6, v0[v1].unk_00, v0[v1].unk_02, 8, 1, 0, param2 + v1 * 8);
        Window_PutToTilemap(&(param0->hpBarWindows[v1]));

        ov32_022566E0(&(param0->hpBarWindows[v1]), param0);
        FillHpBar(&(param0->hpBarWindows[v1]), GetHpBarWidth(param1->mons[v1].currentHp, param1->mons[v1].maxHp));
    }

    param0->partyCount = param1->partyCount;
}

static void ov32_022566E0(Window *param0, UnkStruct_ov32_02256470 *param1)
{
    Bg_FillTilemapRect(param1->unk_04, 6, 1, param0->tilemapLeft - 1, param0->tilemapTop - 1, 1, 1, 0);
    Bg_FillTilemapRect(param1->unk_04, 6, 2, param0->tilemapLeft, param0->tilemapTop - 1, param0->width, 1, 0);
    Bg_FillTilemapRect(param1->unk_04, 6, 1025, param0->tilemapLeft + param0->width, param0->tilemapTop - 1, 1, 1, 0);

    Bg_FillTilemapRect(param1->unk_04, 6, 6, param0->tilemapLeft - 1, param0->tilemapTop, 1, param0->height, 0);
    Bg_FillTilemapRect(param1->unk_04, 6, 1030, param0->tilemapLeft + param0->width, param0->tilemapTop, 1, param0->height, 0);

    Bg_FillTilemapRect(param1->unk_04, 6, 2049, param0->tilemapLeft - 1, param0->tilemapTop + param0->height, 1, 1, 0);
    Bg_FillTilemapRect(param1->unk_04, 6, 2050, param0->tilemapLeft, param0->tilemapTop + param0->height, param0->width, 1, 0);
    Bg_FillTilemapRect(param1->unk_04, 6, 3073, param0->tilemapLeft + param0->width, param0->tilemapTop + param0->height, 1, 1, 0);
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

static void ov32_02256898(UnkStruct_ov32_02256470 *param0, const PlayerPartyStatus *param1)
{
    int v0;
    UnkStruct_ov25_02255810 v1;

    Graphics_LoadObjectTiles(NARC_INDEX_GRAPHIC__POKETCH, 109, 1, 0 * 0x20, 0, TRUE, HEAP_ID_POKETCH_APP);

    v1.unk_0A = 0;
    v1.unk_0B = 2;
    v1.unk_0C = 0;
    v1.unk_0D = 0;

    for (v0 = 0; v0 < param1->partyCount; v0++) {
        if (param1->mons[v0].heldItem != ITEM_NONE) {
            v1.unk_08 = Item_IsMail(param1->mons[v0].heldItem) ? TRUE : FALSE;
            v1.unk_00.x = ((sMonIconCoords[v0].x + 28) << FX32_SHIFT);
            v1.unk_00.y = ((sMonIconCoords[v0].y + 21) << FX32_SHIFT);

            param0->unk_B4[v0] = ov25_02255810(param0->unk_08, &v1, &param0->unk_E0);
        }
    }
}

static void ov32_0225692C(UnkStruct_ov32_02256470 *param0, const PlayerPartyStatus *param1)
{
    NARC *v0;

    v0 = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, 8);

    if (v0) {
        UnkStruct_ov25_02255810 v1;
        NNSG2dCharacterData *v2;
        int v3;

        v1.unk_08 = 0;
        v1.unk_0A = 0;
        v1.unk_0B = 2;
        v1.unk_0C = 1;
        v1.unk_0D = 1;

        for (v3 = 0; v3 < param1->partyCount; v3++) {
            NARC_ReadFromMember(v0, param1->mons[v3].iconSpriteIndex, 0, ((16 * 0x20) + 0x80), param0->iconSpriteBuffer);

            NNS_G2dGetUnpackedCharacterData(param0->iconSpriteBuffer, &v2);
            DC_FlushRange(v2->pRawData, (16 * 0x20));
            GXS_LoadOBJ(v2->pRawData, (0 + 8) * 0x20 + (16 * 0x20) * v3, (16 * 0x20));

            v1.unk_00.x = ((sMonIconCoords[v3].x) << FX32_SHIFT);
            v1.unk_00.y = ((sMonIconCoords[v3].y) << FX32_SHIFT);

            param0->unk_9C[v3] = ov25_02255810(param0->unk_08, &v1, &param0->unk_CC);

            ov25_02255940(param0->unk_9C[v3], (0 + 8) + 16 * v3);
            ov25_022558C4(param0->unk_9C[v3], 4);

            if ((param1->mons[v3].currentHp == 0) || param1->mons[v3].status) { // darken sprite if mon is incapacitated
                ov25_02255938(param0->unk_9C[v3], 1);
            } else {
                u16 v4 = PokeIconPaletteIndex(param1->mons[v3].species, param1->mons[v3].form, param1->mons[v3].isEgg);
                ov25_02255938(param0->unk_9C[v3], 2 + v4);
            }
        }

        NARC_dtor(v0);
    }
}

static void StartMonIconBounceTask(UnkStruct_ov32_02256470 *param0)
{
    param0->bounceAnimData.taskState = 0;
    param0->bounceAnimData.graphicsDataPtr = param0;
    param0->bounceAnimData.partyDataPtr = param0->unk_00;
    param0->unk_F4 = SysTask_Start(Task_HandleMonIconBounce, &(param0->bounceAnimData), 1);
}

// handles tap input as well as the bounce anim itself.
static void Task_HandleMonIconBounce(SysTask *task, void *taskData)
{
    MonIconBounceAnim *data = taskData;
    const PlayerPartyStatus *playerData = data->partyDataPtr;
    UnkStruct_ov32_02256470 *graphicsData = data->graphicsDataPtr;

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
                ov25_02255900(graphicsData->unk_9C[data->partySlot], (sMonIconCoords[data->partySlot].x << FX32_SHIFT), (sMonIconCoords[data->partySlot].y << FX32_SHIFT));
                data->taskState = 0;
                break;
            }
        }

        if (data->bounceWaitTimer == 0) {
            fx32 targetX, targetY;

            targetX = sMonIconCoords[data->partySlot].x << FX32_SHIFT;
            targetY = (sMonIconCoords[data->partySlot].y + data->spriteOffset) << FX32_SHIFT;

            ov25_02255900(graphicsData->unk_9C[data->partySlot], targetX, targetY);

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
        if (((u32)(touchX - upperBoundX) < (u32)(lowerBoundX - upperBoundX)) & ((u32)(touchY - upperBoundY) < (u32)(lowerBoundY - upperBoundY))) {
            return i;
        }
    }

    return partyCount;
}

static void ov32_02256BD4(UnkStruct_ov32_02256470 *param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        if (param0->unk_9C[v0] != NULL) {
            ov25_022558B0(param0->unk_08, param0->unk_9C[v0]);
            param0->unk_9C[v0] = NULL;
        }

        if (param0->unk_B4[v0] != NULL) {
            ov25_022558B0(param0->unk_08, param0->unk_B4[v0]);
            param0->unk_B4[v0] = NULL;
        }
    }

    for (v0 = 0; v0 < param0->partyCount; v0++) {
        Window_Remove(&(param0->hpBarWindows[v0]));
    }

    param0->partyCount = 0;
}

static void ov32_02256C38(SysTask *param0, void *param1)
{
    UnkStruct_ov32_02256470 *v0 = PoketchTask_GetTaskData(param1);

    Bg_FreeTilemapBuffer(v0->unk_04, 6);
    EndPoketchTask(param1);
}

static void ov32_02256C54(SysTask *param0, void *param1)
{
    UnkStruct_ov32_02256470 *v0 = PoketchTask_GetTaskData(param1);
    const PlayerPartyStatus *v1 = PoketchTask_GetConstTaskData(param1);

    ov32_02256BD4(v0);

    Bg_FillTilemapRect(v0->unk_04, 6, 0x5, 0, 0, 32, 24, 0);

    ov32_02256898(v0, v1);
    ov32_0225692C(v0, v1);
    ov32_02256648(v0, v1, v0->unk_34);

    Bg_CopyTilemapBufferToVRAM(v0->unk_04, 6);

    PoketchSystem_PlaySoundEffect(1641);
    EndPoketchTask(param1);
}
