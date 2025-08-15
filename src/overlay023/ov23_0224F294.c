#include "overlay023/ov23_0224F294.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"

#include "struct_defs/underground.h"

#include "field/field_system.h"
#include "overlay005/ov5_021D2F14.h"
#include "overlay023/funcptr_ov23_02248D20.h"
#include "overlay023/funcptr_ov23_0224F758.h"
#include "overlay023/funcptr_ov23_0224F914.h"
#include "overlay023/funcptr_ov23_0224FD84.h"
#include "overlay023/funcptr_ov23_0224FE38.h"
#include "overlay023/funcptr_ov23_0225021C.h"
#include "overlay023/ov23_0223E140.h"
#include "overlay023/ov23_02241F74.h"
#include "overlay023/ov23_0224340C.h"
#include "overlay023/ov23_02248C08.h"
#include "overlay023/ov23_0224A1D0.h"
#include "overlay023/ov23_0224B05C.h"
#include "overlay023/ov23_0225128C.h"
#include "overlay023/ov23_022521F0.h"
#include "overlay023/ov23_02253598.h"
#include "overlay023/struct_ov23_02250CD4.h"
#include "overlay023/underground_spheres.h"
#include "overlay023/underground_text_printer.h"

#include "bag.h"
#include "bg_window.h"
#include "brightness_controller.h"
#include "comm_player_manager.h"
#include "communication_system.h"
#include "field_map_change.h"
#include "field_system.h"
#include "font.h"
#include "gx_layers.h"
#include "heap.h"
#include "list_menu.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "player_avatar.h"
#include "render_window.h"
#include "save_player.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "trainer_info.h"
#include "unk_0202854C.h"
#include "unk_0206A780.h"

typedef void (*UnkFuncPtr_ov23_0224FA58)(UnkStruct_ov23_02250CD4 *);

typedef struct {
    Underground *underground;
    u8 selectedSlot;
    u8 selectedID;
} UnkStruct_ov23_022577B8;

typedef struct {
    u32 unk_00;
    u32 unk_04;
} UnkStruct_ov23_02257644;

static void ov23_0224F460(UnkStruct_ov23_02250CD4 *param0);
static void ov23_0224F498(UnkStruct_ov23_02250CD4 *param0);
static void ov23_0224F4D0(Sprite *param0, u32 param1);
static void ov23_0224F500(Sprite *param0, u16 param1, u16 param2);
static void ov23_0224F52C(UnkStruct_ov23_02250CD4 *param0, u16 param1, u16 param2);
static void ov23_0224F560(Sprite *param0);
static void ov23_0224F914(SysTask *param0, void *param1);
static BOOL ov23_0224FA58(SysTask *param0, void *param1);
static void ov23_0224FE38(UnkStruct_ov23_02250CD4 *param0, UnkFuncPtr_ov23_02248D20 param1);
static BOOL Underground_HandleTrapsMenu(SysTask *param0, void *param1);
static void ov23_0225021C(UnkStruct_ov23_02250CD4 *param0, UnkFuncPtr_ov23_02248D20 param1);
static BOOL Underground_HandleSpheresMenu(SysTask *param0, void *param1);
static BOOL Underground_HandleSphereSelectedMenu(SysTask *param0, void *param1);
static void ov23_022501BC(UnkStruct_ov23_02250CD4 *param0);
static void ov23_022505EC(UnkStruct_ov23_02250CD4 *param0, UnkFuncPtr_ov23_02248D20 param1);
static BOOL Underground_HandleTreasuresMenu(SysTask *param0, void *param1);
static BOOL Underground_HandleTreasureSelectedMenu(SysTask *param0, void *param1);
static void ov23_02250930(UnkStruct_ov23_02250CD4 *param0);
static void ov23_0225093C(UnkStruct_ov23_02250CD4 *param0);
static void ov23_02250A14(UnkStruct_ov23_02250CD4 *param0);
static BOOL Underground_HandleTrapSelectedMenu(SysTask *param0, void *param1);
static BOOL Underground_HandleGoodSelectedMenu(SysTask *param0, void *param1);
static void ov23_02250B9C(SysTask *param0, void *param1);
static void ov23_02250D90(UnkStruct_ov23_02250CD4 *param0, UnkFuncPtr_ov23_02248D20 param1);
static BOOL Underground_HandleGoodsMenu(SysTask *param0, void *param1);
static BOOL ov23_022510F0(SysTask *param0, void *param1);
static void ov23_02250998(SysTask *param0, void *param1);
static void ov23_022509D4(SysTask *param0, void *param1);
static void ov23_02250B34(SysTask *param0, UnkStruct_ov23_02250CD4 *param1, BOOL param2);

static UnkStruct_ov23_022577B8 *Unk_ov23_022577B8 = NULL;

static const WindowTemplate sWindowTemplate = {
    .bgLayer = BG_LAYER_MAIN_3,
    .tilemapLeft = 25,
    .tilemapTop = 13,
    .width = 6,
    .height = 4,
    .palette = 13,
    .baseTile = 543
};

static const struct {
    u32 unk_00;
    u32 unk_04;
} Unk_ov23_02256924[] = {
    { 0x79, (u32)ov23_0224FDE0 },
    { 0x7A, (u32)ov23_022501BC },
    { 0x7B, (u32)ov23_02250CD4 },
    { 0x7C, (u32)ov23_02250598 },
    { 0x7D, (u32)ov23_02250A14 },
    { 0x7E, (u32)ov23_0225093C },
    { 0x7F, (u32)ov23_02250930 }
};

static const ListMenuTemplate sListMenuTemplate = {
    .choices = NULL,
    .cursorCallback = NULL,
    .printCallback = NULL,
    .window = NULL,
    .count = 20,
    .maxDisplay = 20,
    .headerXOffset = 0,
    .textXOffset = 8,
    .cursorXOffset = 0,
    .yOffset = 0,
    .textColorFg = 1,
    .textColorBg = 15,
    .textColorShadow = 2,
    .letterSpacing = 0,
    .lineSpacing = 16,
    .pagerMode = PAGER_MODE_LEFT_RIGHT_PAD,
    .fontID = FONT_SYSTEM,
    .cursorType = 0,
    .parent = NULL
};

static const SpriteTemplate Unk_ov23_0225695C[] = {
    {
        .x = 204,
        .y = 20,
        .z = 0,
        .animIdx = 0,
        .priority = 1,
        .plttIdx = 1,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 0x38C0, 0x38C0, 0x38C0, 0x38C0, 0x0, 0x0 },
        .bgPriority = 0,
        .vramTransfer = FALSE,
    },
    {
        .x = 174,
        .y = 20,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 0x38C1, 0x38C0, 0x38C1, 0x38C1, 0x0, 0x0 },
        .bgPriority = 0,
        .vramTransfer = FALSE,
    }
};

static void ov23_0224F294(UnkStruct_ov23_02250CD4 *param0, u8 *param1, u32 param2)
{
    SpriteResourceCapacities v0 = {
        8, 1, 2, 2, 0, 0
    };
    u32 v1;
    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__MENU_GRA, HEAP_ID_FIELDMAP);

    ov5_021D3190(&param0->unk_74, &v0, (7 + 1), HEAP_ID_FIELDMAP);
    ov5_021D32E8(&param0->unk_74, narc, 9, 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 14528);
    ov5_021D3374(&param0->unk_74, narc, 1, 0, 14528);
    ov5_021D339C(&param0->unk_74, narc, 0, 0, 14528);
    ov5_021D3414(&param0->unk_74, narc, 2, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 14528);

    param0->unk_23C[0] = ov5_021D3584(&param0->unk_74, &Unk_ov23_0225695C[0]);

    ov23_0224F4D0(param0->unk_23C[0]->sprite, param0->unk_29C);

    ov5_021D3374(&param0->unk_74, narc, 8, 0, 14529);
    ov5_021D339C(&param0->unk_74, narc, 7, 0, 14529);
    ov5_021D3414(&param0->unk_74, narc, 10, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 14529);

    NARC_dtor(narc);

    for (v1 = 0; v1 < param2; v1++) {
        SpriteTemplate v3;

        v3 = Unk_ov23_0225695C[1];
        v3.y += 24 * v1;
        v3.animIdx = param1[v1] * 3;

        param0->unk_23C[1 + v1] = ov5_021D3584(&param0->unk_74, &v3);

        VecFx32 v4 = { FX32_ONE, FX32_ONE, FX32_ONE };
        Sprite_SetAffineScaleEx(param0->unk_23C[1 + v1]->sprite, &v4, 1);
    }

    ov23_0224F500(param0->unk_23C[1 + param0->unk_29C]->sprite, 2, 1);
    param0->unk_25C = param2 + 1;
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov23_0224F460(UnkStruct_ov23_02250CD4 *param0)
{
    u16 v0;

    for (v0 = 0; v0 < param0->unk_25C; v0++) {
        Sprite_DeleteAndFreeResources(param0->unk_23C[v0]);
    }

    ov5_021D375C(&param0->unk_74);
}

static void ov23_0224F498(UnkStruct_ov23_02250CD4 *param0)
{
    u16 v0;

    for (v0 = 0; v0 < param0->unk_25C; v0++) {
        Sprite_UpdateAnim(param0->unk_23C[v0]->sprite, FX32_ONE);
    }
}

static void ov23_0224F4D0(Sprite *param0, u32 param1)
{
    VecFx32 v0 = *(Sprite_GetPosition(param0));
    v0.y = (20 + 24 * param1) * FX32_ONE;

    Sprite_SetPosition(param0, &v0);
}

static void ov23_0224F500(Sprite *param0, u16 param1, u16 param2)
{
    u32 v0 = Sprite_GetActiveAnim(param0);

    Sprite_SetAnim(param0, (v0 / 3) * 3 + param1);
    Sprite_SetExplicitPaletteWithOffset(param0, param2);
}

static void ov23_0224F52C(UnkStruct_ov23_02250CD4 *param0, u16 param1, u16 param2)
{
    ov23_0224F500(param0->unk_23C[1 + param1]->sprite, 0, 0);
    ov23_0224F500(param0->unk_23C[1 + param2]->sprite, 1, 1);
}

static void ov23_0224F560(Sprite *param0)
{
    if ((Sprite_GetActiveAnim(param0) % 3) != 1) {
        return;
    }

    if (Sprite_IsAnimated(param0) == FALSE) {
        ov23_0224F500(param0, 2, 1);
    }
}

void ov23_0224F588(Underground *underground)
{
    Unk_ov23_022577B8 = Heap_AllocFromHeap(HEAP_ID_COMMUNICATION, sizeof(UnkStruct_ov23_022577B8));
    MI_CpuClear8(Unk_ov23_022577B8, sizeof(UnkStruct_ov23_022577B8));
    Unk_ov23_022577B8->selectedSlot = 0;
    Unk_ov23_022577B8->selectedID = 0;
    Unk_ov23_022577B8->underground = underground;
}

void ov23_0224F5B8(void)
{
    Heap_Free(Unk_ov23_022577B8);
}

static int Underground_GetTrapCount2(void *param0)
{
    UnkStruct_ov23_02250CD4 *v0 = param0;
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(v0->fieldSystem));

    return Underground_GetTrapCount(underground);
}

static int Underground_GetGoodsCountPC2(void *param0)
{
    UnkStruct_ov23_02250CD4 *v0 = param0;
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(v0->fieldSystem));

    return Underground_GetGoodsCountPC(underground);
}

int Underground_GetGoodAtSlotPC2(int slot, void *param1)
{
    UnkStruct_ov23_02250CD4 *v0 = param1;
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(v0->fieldSystem));

    return Underground_GetGoodAtSlotPC(underground, slot);
}

static int Underground_GetGoodsCountBag2(void *param0)
{
    UnkStruct_ov23_02250CD4 *v0 = param0;
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(v0->fieldSystem));

    return Underground_GetGoodsCountBag(underground);
}

int Underground_GetGoodAtSlotBag2(int slot, void *param1)
{
    UnkStruct_ov23_02250CD4 *v0 = param1;
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(v0->fieldSystem));

    return Underground_GetGoodAtSlotBag(underground, slot);
}

void Underground_RemoveSelectedGoodBag(int goodID)
{
    GF_ASSERT(Unk_ov23_022577B8->selectedID == goodID);
    Underground_RemoveGoodAtSlotBag(Unk_ov23_022577B8->underground, Unk_ov23_022577B8->selectedSlot);
}

static int Underground_GetSphereCount2(void *param0)
{
    UnkStruct_ov23_02250CD4 *v0 = param0;
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(v0->fieldSystem));

    return Underground_GetSphereCount(underground);
}

int Underground_GetTrapAtSlot2(int slot, void *param1)
{
    UnkStruct_ov23_02250CD4 *v0 = param1;
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(v0->fieldSystem));

    return Underground_GetTrapAtSlot(underground, slot);
}

int Underground_GetSphereTypeAtSlot2(int slot, void *param1)
{
    UnkStruct_ov23_02250CD4 *v0 = param1;
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(v0->fieldSystem));

    return Underground_GetSphereTypeAtSlot(underground, slot);
}

int Underground_GetSphereSizeAtSlot2(int slot, void *param1)
{
    UnkStruct_ov23_02250CD4 *v0 = param1;
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(v0->fieldSystem));

    return Underground_GetSphereSizeAtSlot(underground, slot);
}

static int Underground_GetTreasureCount2(void *param0)
{
    UnkStruct_ov23_02250CD4 *v0 = param0;
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(v0->fieldSystem));

    return Underground_GetTreasureCount(underground);
}

int Underground_GetTreasureAtSlot2(int slot, void *param1)
{
    UnkStruct_ov23_02250CD4 *v0 = param1;
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(v0->fieldSystem));

    return Underground_GetTreasureAtSlot(underground, slot);
}

BOOL Underground_TryAddSphere2(int sphereID, int sphereSize)
{
    int sphereType = sphereID;

    GF_ASSERT(sphereID < MINING_SPHERES_MAX);

    if (sphereID >= MINING_LARGE_PRISM_SPHERE) {
        sphereType -= (MINING_LARGE_PRISM_SPHERE - 1);
    }

    if (sphereSize > MAX_SPHERE_SIZE) {
        sphereSize = MAX_SPHERE_SIZE;
    }

    return Underground_TryAddSphere(Unk_ov23_022577B8->underground, sphereType, sphereSize);
}

BOOL Underground_TryAddTreasure2(int treasureID)
{
    GF_ASSERT(treasureID < MINING_TREASURE_MAX);
    return Underground_TryAddTreasure(Unk_ov23_022577B8->underground, treasureID);
}

BOOL Underground_TryAddTrap2(int trapID)
{
    return Underground_TryAddTrap(Unk_ov23_022577B8->underground, trapID);
}

BOOL Underground_TryAddGoodBag2(int goodID)
{
    return Underground_TryAddGoodBag(Unk_ov23_022577B8->underground, goodID);
}

void ov23_0224F758(UnkFuncPtr_ov23_0224F758 param0, FieldSystem *fieldSystem)
{
    UnkStruct_ov23_02250CD4 *v0;
    ListMenuTemplate v1;

    Sound_PlayEffect(SEQ_SE_DP_WIN_OPEN);
    ov23_022430D0(2);

    v0 = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(UnkStruct_ov23_02250CD4));

    MI_CpuFill8(v0, 0, sizeof(UnkStruct_ov23_02250CD4));

    v0->fieldSystem = fieldSystem;
    v0->unk_260 = param0;
    v0->unk_2AA = 0;
    v0->strbuf = Strbuf_Init((50 * 2), HEAP_ID_FIELD);
    v0->fmtString = Strbuf_Init((50 * 2), HEAP_ID_FIELD);
    v0->template = StringTemplate_Default(HEAP_ID_FIELD);
    v0->unk_04 = SysTask_Start(ov23_0224F914, v0, 10000);

    ov23_022431EC(v0, v0->unk_04, ov23_02251270);
}

static u32 ov23_0224F7D4(u8 *param0)
{
    u32 v0 = 0;

    param0[v0] = 0;
    v0++;

    param0[v0] = 1;
    v0++;

    param0[v0] = 2;
    v0++;

    param0[v0] = 3;
    v0++;

    param0[v0] = 4;
    v0++;

    param0[v0] = 5;
    v0++;

    param0[v0] = 6;
    v0++;

    return v0;
}

static void ov23_0224F7F4(UnkStruct_ov23_02250CD4 *param0)
{
    MenuTemplate v0;
    const int v1 = 4;
    u8 v2[7];
    int v3 = ov23_0224F7D4(v2);
    param0->unk_40 = StringList_New(NELEMS(Unk_ov23_02256924), HEAP_ID_FIELD);

    Window_Add(param0->fieldSystem->bgConfig, &param0->unk_10, 3, 20, 1, 11, NELEMS(Unk_ov23_02256924) * 3, 13, (1024 - (18 + 12) - 9 - 11 * 22));
    Window_DrawStandardFrame(&param0->unk_10, 1, 1024 - (18 + 12) - 9, 11);

    {
        MessageLoader *v3;
        int v4;

        v3 = UndergroundTextPrinter_GetMessageLoader(CommManUnderground_GetCommonTextPrinter());

        for (v4 = 0; v4 < NELEMS(Unk_ov23_02256924); v4++) {
            if (v4 == v1) {
                const TrainerInfo *v5 = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(param0->fieldSystem));
                Strbuf *v6 = TrainerInfo_NameNewStrbuf(v5, HEAP_ID_FIELD);

                StringList_AddFromStrbuf(param0->unk_40, v6, Unk_ov23_02256924[v4].unk_04);
                Strbuf_Free(v6);
            } else {
                StringList_AddFromMessageBank(param0->unk_40, v3, Unk_ov23_02256924[v4].unk_00, Unk_ov23_02256924[v4].unk_04);
            }
        }
    }

    param0->unk_29C = param0->fieldSystem->unk_90;

    v0.choices = param0->unk_40;
    v0.window = &param0->unk_10;
    v0.fontID = FONT_MESSAGE;
    v0.xSize = 1;
    v0.ySize = NELEMS(Unk_ov23_02256924);
    v0.lineSpacing = 8;
    v0.suppressCursor = TRUE;

    if (NELEMS(Unk_ov23_02256924) >= 4) {
        v0.loopAround = TRUE;
    } else {
        v0.loopAround = FALSE;
    }

    param0->unk_54 = Menu_New(&v0, 28, 4, param0->unk_29C, HEAP_ID_FIELDMAP, PAD_BUTTON_B | PAD_BUTTON_X);
    param0->unk_48 = NULL;

    Window_ScheduleCopyToVRAM(&param0->unk_10);
    ov23_0224F294(param0, v2, NELEMS(Unk_ov23_02256924));
    CommPlayerMan_PauseFieldSystem();
}

static void ov23_0224F914(SysTask *param0, void *param1)
{
    UnkStruct_ov23_02250CD4 *v0 = param1;
    u32 v1;

    switch (v0->unk_2AA) {
    case 0:
        ov23_0224F7F4(v0);
        v0->unk_2AA++;
        break;
    case 1:
        ov23_0224FA58(param0, param1);
        break;
    case 2:
        ov23_0224FB7C(v0);
        ov23_02243204();
        ov23_02250B34(param0, v0, 0);
        return;
    case 3:
        ov23_0224FB7C(v0);
        ov23_02243204();
        ov23_02250B34(param0, v0, 1);
        return;
    case 5:
        Underground_HandleTrapsMenu(param0, param1);
        break;
    case 6:
        Underground_HandleSpheresMenu(param0, param1);
        break;
    case 7:
        Underground_HandleTreasuresMenu(param0, param1);
        break;
    case 8:
        Underground_HandleGoodsMenu(param0, param1);
        break;
    case 9:
        ov23_022510F0(param0, param1);
        break;
    case 10:
        break;
    case 11:
        ov23_02250998(param0, param1);
        break;
    case 12:
        ov23_022509D4(param0, param1);
        break;
    case 13:
        if (UndergroundTextPrinter_IsPrinterActive(CommManUnderground_GetCommonTextPrinter()) == FALSE) {
            if (gSystem.pressedKeys & PAD_BUTTON_A) {
                UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetCommonTextPrinter());
                ov23_02250B34(param0, v0, 0);
                ov23_02243204();
                return;
            }
        }
        break;
    case 14:
        if (UndergroundTextPrinter_IsPrinterActive(CommManUnderground_GetCommonTextPrinter()) == FALSE) {
            if (gSystem.pressedKeys & PAD_BUTTON_A) {
                UnkFuncPtr_ov23_0224F914 v2 = (UnkFuncPtr_ov23_0224F914)v0->unk_00;

                v2(v0);
                v0->unk_2AA = v0->unk_2A9;
            }
        }
        break;
    case 15:
        ov23_0224FB7C(v0);
        ov23_02250B34(param0, v0, 1);
        ov23_02243204();
        FieldTask_SetUndergroundMapChange(v0->fieldSystem);
        return;
    case 18:
        Underground_HandleTrapSelectedMenu(param0, param1);
        break;
    case 16:
        Underground_HandleSphereSelectedMenu(param0, param1);
        break;
    case 17:
        Underground_HandleTreasureSelectedMenu(param0, param1);
        break;
    case 19:
        Underground_HandleGoodSelectedMenu(param0, param1);
        break;
    }
}

static BOOL ov23_0224FA58(SysTask *param0, void *param1)
{
    UnkStruct_ov23_02250CD4 *v0 = param1;
    u16 v1 = Menu_GetCursorPos(v0->unk_54);
    v0->unk_2A0 = Menu_ProcessInputWithSound(v0->unk_54, SEQ_SE_DP_SELECT78);
    v0->unk_29C = Menu_GetCursorPos(v0->unk_54);

    if (v1 != v0->unk_29C) {
        ov23_0224F4D0(v0->unk_23C[0]->sprite, v0->unk_29C);
        ov23_0224F52C(v0, v1, v0->unk_29C);
        v0->fieldSystem->unk_90 = v0->unk_29C;
    }

    ov23_0224F560(v0->unk_23C[1 + v0->unk_29C]->sprite);

    if (CommSys_CheckError()) {
        v0->unk_2A0 = MENU_CANCELED;
    }

    switch (v0->unk_2A0) {
    case MENU_NOTHING_CHOSEN:
        ov23_0224F498(v0);
        SpriteList_Update(v0->unk_74.unk_00);
        return 0;
    case MENU_CANCELED:
        v0->unk_2AA = 2;
        break;
    default:
        if ((v0->unk_2A0 == (u32)ov23_0224FDE0) || (v0->unk_2A0 == (u32)ov23_022501BC) || (v0->unk_2A0 == (u32)ov23_02250CD4) || (v0->unk_2A0 == (u32)ov23_02250598)) {
            v0->unk_08 = sub_0206A780(HEAP_ID_FIELD);
            sub_0206A8A0(v0->unk_08, 200, 20, 122);
            sub_0206A8C4(v0->unk_08, 0, 0);
            sub_0206A8C4(v0->unk_08, 1, 0);
        }

        if (v0->unk_25C) {
            ov23_0224F460(v0);
            Menu_Free(v0->unk_54, NULL);
            v0->unk_25C = 0;
        }

        {
            UnkFuncPtr_ov23_0224FA58 v2 = (UnkFuncPtr_ov23_0224FA58)v0->unk_2A0;
            v2(v0);
        }
        break;
    }

    return 1;
}

void ov23_0224FB7C(UnkStruct_ov23_02250CD4 *param0)
{
    if (param0->unk_4C) {
        ov23_02248EF8(param0->unk_4C, NULL, NULL);
        param0->unk_4C = NULL;
    }

    if (param0->unk_48) {
        ListMenu_Free(param0->unk_48, NULL, NULL);
        param0->unk_48 = NULL;
    } else if (param0->unk_25C) {
        ov23_0224F460(param0);
        Menu_Free(param0->unk_54, NULL);
        param0->unk_25C = 0;
    }

    if (Window_IsInUse(&param0->unk_10)) {
        Window_EraseStandardFrame(&param0->unk_10, 1);
        Bg_ScheduleTilemapTransfer(param0->unk_10.bgConfig, param0->unk_10.bgLayer);
        Window_Remove(&param0->unk_10);
        StringList_Free(param0->unk_40);
        ov23_02252DF4(param0);
    }
}

static UnkStruct_ov23_02257644 Unk_ov23_02257644[] = {
    { 0x86, (u32)1 },
    { 0x84, (u32)2 },
    { 0x85, (u32)0xfffffffe }
};

static UnkStruct_ov23_02257644 Unk_ov23_02257634[] = {
    { 0x84, (u32)2 },
    { 0x85, (u32)0xfffffffe }
};

static UnkStruct_ov23_02257644 Unk_ov23_0225765C[] = {
    { 0x87, (u32)3 },
    { 0x84, (u32)2 },
    { 0x85, (u32)0xfffffffe }
};

static void ov23_0224FBFC(UnkStruct_ov23_02250CD4 *param0, int param1)
{
    ListMenuTemplate v0;
    int v1, v2;
    int v3 = 11;
    int v4 = 6;
    int v5 = (31 - 6);
    UnkStruct_ov23_02257644 *v6;

    switch (param1) {
    case 1:
        v1 = 3;
        v6 = Unk_ov23_02257644;
        break;
    case 2:
        v1 = 2;
        v3 = 11 + 2;
        v6 = Unk_ov23_02257634;
        break;
    case 3:
        v1 = 3;
        v4 = 6 + 5;
        v5 = (31 - 6) - 5;
        v6 = Unk_ov23_0225765C;
        break;
    }

    param0->unk_44 = StringList_New(v1, HEAP_ID_FIELD);

    Window_Add(param0->fieldSystem->bgConfig, &param0->unk_20, 3, v5, v3, v4, v1 * 2, 13, (1024 - (18 + 12) - 9 - 11 * 22));
    Window_DrawStandardFrame(&param0->unk_20, 1, 1024 - (18 + 12) - 9, 11);

    {
        MessageLoader *v7;
        int v8;

        v7 = UndergroundTextPrinter_GetMessageLoader(CommManUnderground_GetCommonTextPrinter());

        for (v8 = 0; v8 < v1; v8++) {
            StringList_AddFromMessageBank(param0->unk_44, v7, v6->unk_00, v6->unk_04);
            v6++;
        }
    }

    v0 = sListMenuTemplate;
    v0.count = v1;
    v0.maxDisplay = v1;
    v0.choices = param0->unk_44;
    v0.window = &param0->unk_20;
    v0.parent = param0;

    param0->unk_50 = ListMenu_New(&v0, 0, 0, HEAP_ID_FIELD);
}

static void ov23_0224FCF4(UnkStruct_ov23_02250CD4 *param0)
{
    if (param0->unk_50) {
        ListMenu_Free(param0->unk_50, NULL, NULL);
        Bg_ScheduleTilemapTransfer(param0->unk_20.bgConfig, param0->unk_20.bgLayer);
        StringList_Free(param0->unk_44);

        param0->unk_50 = NULL;
    }

    if (Window_IsInUse(&param0->unk_20)) {
        Window_EraseStandardFrame(&param0->unk_20, 1);
        Window_Remove(&param0->unk_20);
    }
}

static void ov23_0224FD3C(UnkStruct_ov23_02250CD4 *param0)
{
    ov23_0224FB7C(param0);

    if (param0->unk_08) {
        sub_0206A844(param0->unk_08);
        param0->unk_08 = NULL;
    }

    param0->unk_2AA = 0;
    UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetItemNameTextPrinter());
}

void Underground_RemoveSelectedTrap(int trapID)
{
    if (Unk_ov23_022577B8->selectedID == trapID) {
        Underground_RemoveTrapAtSlot(Unk_ov23_022577B8->underground, Unk_ov23_022577B8->selectedSlot);
    }
}

void ov23_0224FD84(ListMenu *param0, u32 index, u8 onInit)
{
    UnkStruct_ov23_02250CD4 *v0 = (UnkStruct_ov23_02250CD4 *)ListMenu_GetAttribute(param0, 19);
    UnkFuncPtr_ov23_0224FD84 v1 = v0->itemGetter;
    int v2 = index;
    int v3 = v1(v2, v0);

    if (index == 0xfffffffe) {
        v2 = 68;
    } else {
        v2 = 35 + v3 - 1;
    }

    UndergroundTextPrinter_PrintTextInstant(CommManUnderground_GetItemNameTextPrinter(), v2, FALSE, NULL);
}

void ov23_0224FDBC(UnkStruct_ov23_02250CD4 *param0)
{
    param0->itemCountGetter = Underground_GetTrapCount2;
    param0->itemGetter = Underground_GetTrapAtSlot2;
    param0->printCallback = NULL;

    ov23_0224FE38(param0, NULL);
}

void ov23_0224FDE0(UnkStruct_ov23_02250CD4 *param0)
{
    param0->unk_290 = ov23_0224318C(8);
    param0->unk_294 = ov23_02243154(8);
    param0->itemCountGetter = Underground_GetTrapCount2;
    param0->itemGetter = Underground_GetTrapAtSlot2;
    param0->cursorCallback = ov23_0224FD84;
    param0->printCallback = NULL;
    param0->unk_2B0 = param0->unk_290;

    ov23_0224FE38(param0, Underground_MoveTrapInInventory);
}

static void ov23_0224FE38(UnkStruct_ov23_02250CD4 *param0, UnkFuncPtr_ov23_02248D20 param1)
{
    UnkFuncPtr_ov23_0224FE38 v0 = param0->itemCountGetter;
    UnkFuncPtr_ov23_0224FD84 v1 = param0->itemGetter;
    ListMenuTemplate v2;
    int v3 = v0(param0);
    int v4 = 6;

    ov23_0224FB7C(param0);
    UndergroundTextPrinter_ChangeMessageLoaderBank(CommManUnderground_GetItemNameTextPrinter(), TEXT_BANK_UNDERGROUND_TRAP_NAMES, MESSAGE_LOADER_BANK_HANDLE);

    param0->unk_40 = StringList_New(v3 + 1, HEAP_ID_FIELD);

    Window_Add(param0->fieldSystem->bgConfig, &param0->unk_10, 3, 19, 3, 12, (6 * 2), 13, ((1024 - (18 + 12) - 9 - 11 * 22) - 12 * (6 * 2)));
    Window_DrawStandardFrame(&param0->unk_10, 1, 1024 - (18 + 12) - 9, 11);

    {
        MessageLoader *v5;
        int v6 = 0;

        v5 = UndergroundTextPrinter_GetMessageLoader(CommManUnderground_GetItemNameTextPrinter());

        for (v6 = 0; v6 < v3; v6++) {
            StringList_AddFromMessageBank(param0->unk_40, v5, v1(v6, param0), v6);
        }

        StringList_AddFromMessageBank(param0->unk_40, v5, 34, 0xfffffffe);
    }

    v2 = sListMenuTemplate;
    v2.count = v3 + 1;
    v2.maxDisplay = v4;
    v2.choices = param0->unk_40;
    v2.window = &param0->unk_10;
    v2.cursorCallback = param0->cursorCallback;
    v2.printCallback = param0->printCallback;
    v2.parent = param0;

    ov23_02251238(param0, v4, v2.count);

    param0->unk_4C = ov23_02248C08(&v2, param0->unk_294, param0->unk_290, HEAP_ID_FIELD, param1, Unk_ov23_022577B8->underground, 0);
    param0->unk_2AA = 5;
}

static BOOL Underground_HandleTrapsMenu(SysTask *param0, void *param1)
{
    UnkStruct_ov23_02250CD4 *v0 = param1;
    u32 v1;
    u16 v2, v3;

    v1 = ov23_02248D20(v0->unk_4C);

    ListMenu_GetListAndCursorPos(v0->unk_4C->unk_0C, &v2, &v3);
    ov23_022430E0(8, v3, v2);

    if (CommSys_CheckError()) {
        v1 = LIST_CANCEL;
    }

    // make sure we have the right type of -2
    if (v1 == MENU_CANCELED) {
        v1 = LIST_CANCEL;
    }

    switch (v1) {
    case LIST_NOTHING_CHOSEN:
        ov23_0225128C(v0, v2, ListMenu_GetAttribute(v0->unk_4C->unk_0C, 2), 6);
        return FALSE;
    case LIST_CANCEL:
        ov23_0224FD3C(v0);
        break;
    default: {
        UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetItemNameTextPrinter());

        Unk_ov23_022577B8->selectedSlot = v1;
        Unk_ov23_022577B8->selectedID = Underground_GetTrapAtSlot2(v1, v0);

        if (Unk_ov23_022577B8->selectedID == 33) {
            ov23_0224CD68();
            v0->unk_2AA = 3;
        } else {
            ov23_0224FB7C(v0);
            ov23_0224FBFC(v0, 1);

            v0->unk_2AA = 18;

            UndergroundTextPrinter_SetUndergroundTrapNameWithIndex(CommManUnderground_GetCommonTextPrinter(), 2, Unk_ov23_022577B8->selectedID);
            UndergroundTextPrinter_PrintTextInstant(CommManUnderground_GetCommonTextPrinter(), 129, FALSE, NULL);
        }
    }
        sub_0206A8C4(v0->unk_08, 0, 0);
        sub_0206A8C4(v0->unk_08, 1, 0);
        break;
    }

    return TRUE;
}

static BOOL Underground_HandleTrapSelectedMenu(SysTask *param0, void *param1)
{
    UnkStruct_ov23_02250CD4 *v0 = param1;
    u32 v1;
    u16 v2;

    v1 = ListMenu_ProcessInput(v0->unk_50);
    v2 = v0->unk_2B0;

    ListMenu_CalcTrueCursorPos(v0->unk_50, &v0->unk_2B0);

    if (v2 != v0->unk_2B0) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    switch (v1) {
    case MENU_NOTHING_CHOSEN:
        return FALSE;
    case MENU_CANCELED:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        ov23_0224FCF4(v0);
        ov23_0224FDE0(v0);
        v0->unk_2AA = 5;
        break;
    default:
        ov23_0224FCF4(v0);

        if (v1 == 1) {
            ov23_02243AD4(Underground_GetTrapAtSlot2(Unk_ov23_022577B8->selectedSlot, v0));
            Sound_PlayEffect(SEQ_SE_DP_SUTYA);
            v0->unk_2AA = 3;
        } else if (v1 == 2) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);

            Underground_RemoveSelectedTrap(Unk_ov23_022577B8->selectedID);
            UndergroundTextPrinter_SetUndergroundTrapNameWithIndex(CommManUnderground_GetCommonTextPrinter(), 2, Unk_ov23_022577B8->selectedID);
            UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), 130, FALSE, NULL);

            v0->unk_00 = (void *)ov23_0224FDE0;
            v0->unk_2A9 = 5;
            v0->unk_2AA = 14;
        }
        break;
    }

    return TRUE;
}

void Underground_RemoveSelectedSphere(int sphereType)
{
    GF_ASSERT(Unk_ov23_022577B8->selectedID == sphereType);
    Underground_RemoveSphereAtSlot(Unk_ov23_022577B8->underground, Unk_ov23_022577B8->selectedSlot);
}

static void ov23_0225014C(ListMenu *param0, u32 index, u8 onInit)
{
    UnkStruct_ov23_02250CD4 *v0 = (UnkStruct_ov23_02250CD4 *)ListMenu_GetAttribute(param0, 19);
    UnkFuncPtr_ov23_0224FD84 v1 = v0->itemGetter;
    int v2 = index;
    int v3 = v1(v2, v0);

    if (index == 0xfffffffe) {
        v2 = 61;
    } else {
        v2 = 62 + v3;
    }

    UndergroundTextPrinter_PrintTextInstant(CommManUnderground_GetItemNameTextPrinter(), v2, FALSE, NULL);
}

void ov23_02250184(UnkStruct_ov23_02250CD4 *param0)
{
    param0->itemCountGetter = Underground_GetSphereCount2;
    param0->itemGetter = Underground_GetSphereTypeAtSlot2;
    param0->sphereSizeGetter = Underground_GetSphereSizeAtSlot2;
    param0->cursorCallback = ov23_0225014C;

    ov23_0225021C(param0, Underground_MoveSphereInInventory);
}

static void ov23_022501BC(UnkStruct_ov23_02250CD4 *param0)
{
    param0->unk_290 = ov23_0224318C(9);
    param0->unk_294 = ov23_02243154(9);
    param0->itemCountGetter = Underground_GetSphereCount2;
    param0->itemGetter = Underground_GetSphereTypeAtSlot2;
    param0->sphereSizeGetter = Underground_GetSphereSizeAtSlot2;
    param0->cursorCallback = ov23_0225014C;
    param0->unk_2B0 = param0->unk_290;

    ov23_0225021C(param0, Underground_MoveSphereInInventory);
}

static void ov23_0225021C(UnkStruct_ov23_02250CD4 *param0, UnkFuncPtr_ov23_02248D20 param1)
{
    UnkFuncPtr_ov23_0224FE38 v0 = param0->itemCountGetter;
    UnkFuncPtr_ov23_0224FD84 v1 = param0->itemGetter;
    UnkFuncPtr_ov23_0225021C v2 = param0->sphereSizeGetter;
    ListMenuTemplate v3;
    int v4 = v0(param0);
    int v5 = 6;

    ov23_0224FB7C(param0);
    UndergroundTextPrinter_ChangeMessageLoaderBank(CommManUnderground_GetItemNameTextPrinter(), TEXT_BANK_UNDERGROUND_ITEM_NAMES, MESSAGE_LOADER_BANK_HANDLE);

    param0->unk_40 = StringList_New(v4 + 1, HEAP_ID_FIELD);

    Window_Add(param0->fieldSystem->bgConfig, &param0->unk_10, 3, 19, 3, 12, (6 * 2), 13, ((1024 - (18 + 12) - 9 - 11 * 22) - 12 * (6 * 2)));
    Window_DrawStandardFrame(&param0->unk_10, 1, 1024 - (18 + 12) - 9, 11);

    {
        MessageLoader *v6;
        int v7;

        v6 = UndergroundTextPrinter_GetMessageLoader(CommManUnderground_GetItemNameTextPrinter());

        for (v7 = 0; v7 < v4; v7++) {
            StringTemplate_SetUndergroundItemName(param0->template, 2, v1(v7, param0));
            StringTemplate_SetNumber(param0->template, 6, v2(v7, param0), 2, 2, 1);
            MessageLoader_GetStrbuf(UndergroundTextPrinter_GetMessageLoader(CommManUnderground_GetCommonTextPrinter()), 128, param0->fmtString);
            StringTemplate_Format(param0->template, param0->strbuf, param0->fmtString);
            StringList_AddFromStrbuf(param0->unk_40, param0->strbuf, v7);
        }

        StringList_AddFromMessageBank(param0->unk_40, v6, 60, 0xfffffffe);
    }

    v3 = sListMenuTemplate;
    v3.count = v4 + 1;
    v3.maxDisplay = v5;
    v3.choices = param0->unk_40;
    v3.window = &param0->unk_10;
    v3.cursorCallback = param0->cursorCallback;
    v3.parent = param0;

    ov23_02251238(param0, v5, v3.count);

    param0->unk_4C = ov23_02248C08(&v3, param0->unk_294, param0->unk_290, HEAP_ID_FIELD, param1, Unk_ov23_022577B8->underground, 0);
    param0->unk_2AA = 6;
}

static BOOL Underground_HandleSpheresMenu(SysTask *param0, void *param1)
{
    UnkStruct_ov23_02250CD4 *v0 = param1;
    u32 v1;
    u16 v2, v3;

    v1 = ov23_02248D20(v0->unk_4C);

    ListMenu_GetListAndCursorPos(v0->unk_4C->unk_0C, &v2, &v3);
    ov23_022430E0(9, v3, v2);

    if (CommSys_CheckError()) {
        v1 = LIST_CANCEL;
    }

    // make sure we have the right type of -2
    if (v1 == MENU_CANCELED) {
        v1 = LIST_CANCEL;
    }

    switch (v1) {
    case LIST_NOTHING_CHOSEN:
        ov23_0225128C(v0, v2, ListMenu_GetAttribute(v0->unk_4C->unk_0C, 2), 6);
        return FALSE;
    case LIST_CANCEL:
        ov23_0224FD3C(v0);
        break;
    default:
        ov23_0224FB7C(v0);
        Unk_ov23_022577B8->selectedSlot = v1;
        Unk_ov23_022577B8->selectedID = Underground_GetSphereTypeAtSlot2(v1, v0);
        ov23_0224FBFC(v0, 1);
        v0->unk_2AA = 16;
        UndergroundTextPrinter_SetUndergroundItemName(CommManUnderground_GetCommonTextPrinter(), 2, Unk_ov23_022577B8->selectedID);
        UndergroundTextPrinter_PrintTextInstant(CommManUnderground_GetCommonTextPrinter(), 129, FALSE, NULL);
        sub_0206A8C4(v0->unk_08, 0, FALSE);
        sub_0206A8C4(v0->unk_08, 1, FALSE);
        break;
    }

    return TRUE;
}

static BOOL Underground_HandleSphereSelectedMenu(SysTask *param0, void *param1)
{
    UnkStruct_ov23_02250CD4 *v0 = param1;
    u32 v1;
    u16 v2;

    v1 = ListMenu_ProcessInput(v0->unk_50);
    v2 = v0->unk_2B0;

    ListMenu_CalcTrueCursorPos(v0->unk_50, &v0->unk_2B0);

    if (v2 != v0->unk_2B0) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    switch (v1) {
    case LIST_NOTHING_CHOSEN:
        return FALSE;
    case LIST_CANCEL:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        ov23_0224FCF4(v0);
        ov23_022501BC(v0);
        v0->unk_2AA = 6;
        break;
    default:
        ov23_0224FCF4(v0);

        if (v1 == 1) {
            int netId = CommSys_CurNetId();
            int x = CommPlayer_GetXInFrontOfPlayerServer(netId);
            int z = CommPlayer_GetZInFrontOfPlayerServer(netId);

            UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetItemNameTextPrinter());
            UndergroundSpheres_TryBurySphere(Unk_ov23_022577B8->selectedID, Underground_GetSphereSizeAtSlot2(Unk_ov23_022577B8->selectedSlot, v0), x, z);
        } else if (v1 == 2) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            Underground_RemoveSelectedSphere(Unk_ov23_022577B8->selectedID);
            UndergroundTextPrinter_SetUndergroundItemName(CommManUnderground_GetCommonTextPrinter(), 2, Unk_ov23_022577B8->selectedID);
            UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), 130, FALSE, NULL);
        }

        v0->unk_00 = (void *)ov23_022501BC;
        v0->unk_2A9 = 6;
        v0->unk_2AA = 14;

        break;
    }

    return TRUE;
}

void ov23_02250540(ListMenu *param0, u32 index, u8 onInit)
{
    UnkStruct_ov23_02250CD4 *v0 = (UnkStruct_ov23_02250CD4 *)ListMenu_GetAttribute(param0, 19);
    UnkFuncPtr_ov23_0224FD84 v1 = v0->itemGetter;
    int v2 = index;
    int v3 = v1(v2, v0);

    if (index == 0xfffffffe) {
        v2 = 61;
    } else {
        v2 = 62 + v3;
    }

    UndergroundTextPrinter_PrintTextInstant(CommManUnderground_GetItemNameTextPrinter(), v2, FALSE, NULL);
}

void ov23_02250578(UnkStruct_ov23_02250CD4 *param0)
{
    param0->itemCountGetter = Underground_GetTreasureCount2;
    param0->itemGetter = Underground_GetTreasureAtSlot2;

    ov23_022505EC(param0, NULL);
}

void ov23_02250598(UnkStruct_ov23_02250CD4 *param0)
{
    param0->unk_290 = ov23_0224318C(11);
    param0->unk_294 = ov23_02243154(11);
    param0->itemCountGetter = Underground_GetTreasureCount2;
    param0->itemGetter = Underground_GetTreasureAtSlot2;
    param0->cursorCallback = ov23_02250540;
    param0->unk_2B0 = param0->unk_290;

    ov23_022505EC(param0, Underground_MoveTreasureInInventory);
}

static void ov23_022505EC(UnkStruct_ov23_02250CD4 *param0, UnkFuncPtr_ov23_02248D20 param1)
{
    UnkFuncPtr_ov23_0224FE38 v0 = param0->itemCountGetter;
    UnkFuncPtr_ov23_0224FD84 v1 = param0->itemGetter;
    ListMenuTemplate v2;
    int v3 = v0(param0);
    int v4 = 6;

    ov23_0224FB7C(param0);
    UndergroundTextPrinter_ChangeMessageLoaderBank(CommManUnderground_GetItemNameTextPrinter(), TEXT_BANK_UNDERGROUND_ITEM_NAMES, MESSAGE_LOADER_BANK_HANDLE);

    param0->unk_40 = StringList_New(v3 + 1, HEAP_ID_FIELD);

    Window_Add(param0->fieldSystem->bgConfig, &param0->unk_10, 3, 19, 3, 12, (6 * 2), 13, ((1024 - (18 + 12) - 9 - 11 * 22) - 12 * (6 * 2)));
    Window_DrawStandardFrame(&param0->unk_10, 1, 1024 - (18 + 12) - 9, 11);

    {
        MessageLoader *v5;
        int v6 = 0;

        v5 = UndergroundTextPrinter_GetMessageLoader(CommManUnderground_GetItemNameTextPrinter());

        for (v6 = 0; v6 < v3; v6++) {
            StringList_AddFromMessageBank(param0->unk_40, v5, v1(v6, param0), v6);
        }

        StringList_AddFromMessageBank(param0->unk_40, v5, 60, 0xfffffffe);
    }

    v2 = sListMenuTemplate;
    v2.count = v3 + 1;
    v2.maxDisplay = v4;
    v2.choices = param0->unk_40;
    v2.window = &param0->unk_10;
    v2.cursorCallback = param0->cursorCallback;
    v2.parent = param0;

    ov23_02251238(param0, v4, v2.count);

    param0->unk_4C = ov23_02248C08(&v2, param0->unk_294, param0->unk_290, HEAP_ID_FIELD, param1, Unk_ov23_022577B8->underground, 0);
    param0->unk_2AA = 7;
}

static BOOL Underground_HandleTreasuresMenu(SysTask *param0, void *param1)
{
    UnkStruct_ov23_02250CD4 *v0 = param1;
    u32 v1;
    u16 v2, v3;

    v1 = ov23_02248D20(v0->unk_4C);

    ListMenu_GetListAndCursorPos(v0->unk_4C->unk_0C, &v2, &v3);
    ov23_022430E0(11, v3, v2);

    if (CommSys_CheckError()) {
        v1 = LIST_CANCEL;
    }

    // make sure we have the right type of -2
    if (v1 == MENU_CANCELED) {
        v1 = LIST_CANCEL;
    }

    switch (v1) {
    case LIST_NOTHING_CHOSEN:
        ov23_0225128C(v0, v2, ListMenu_GetAttribute(v0->unk_4C->unk_0C, 2), 6);
        return FALSE;
    case LIST_CANCEL:
        ov23_0224FD3C(v0);
        break;
    default:
        ov23_0224FB7C(v0);

        Unk_ov23_022577B8->selectedSlot = v1;
        Unk_ov23_022577B8->selectedID = Underground_GetTreasureAtSlot2(v1, v0);

        ov23_0224FBFC(v0, 3);
        UndergroundTextPrinter_SetUndergroundItemName(CommManUnderground_GetCommonTextPrinter(), 2, Unk_ov23_022577B8->selectedID);
        UndergroundTextPrinter_PrintTextInstant(CommManUnderground_GetCommonTextPrinter(), 129, FALSE, NULL);

        v0->unk_2AA = 17;

        sub_0206A8C4(v0->unk_08, 0, 0);
        sub_0206A8C4(v0->unk_08, 1, 0);
        break;
    }

    return TRUE;
}

static BOOL Underground_HandleTreasureSelectedMenu(SysTask *param0, void *param1)
{
    UnkStruct_ov23_02250CD4 *v0 = param1;
    u32 v1;
    u16 v2;

    v1 = ListMenu_ProcessInput(v0->unk_50);
    v2 = v0->unk_2B0;

    ListMenu_CalcTrueCursorPos(v0->unk_50, &v0->unk_2B0);

    if (v2 != v0->unk_2B0) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    switch (v1) {
    case MENU_NOTHING_CHOSEN:
        return FALSE;
    case MENU_CANCELED:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        ov23_0224FCF4(v0);
        ov23_02250598(v0);
        v0->unk_2AA = 7;
        break;
    default:
        ov23_0224FCF4(v0);

        if (v1 == 3) {
            int item = Underground_ConvertTreasureToBagItem(Unk_ov23_022577B8->selectedID);
            Bag *v4 = SaveData_GetBag(v0->fieldSystem->saveData);

            Sound_PlayEffect(SEQ_SE_CONFIRM);

            if (Bag_TryAddItem(v4, item, 1, HEAP_ID_FIELD)) {
                Underground_RemoveTreasureAtSlot(Unk_ov23_022577B8->underground, Unk_ov23_022577B8->selectedSlot);
                UndergroundTextPrinter_SetUndergroundItemName(CommManUnderground_GetCommonTextPrinter(), 0, Unk_ov23_022577B8->selectedID);

                if ((Unk_ov23_022577B8->selectedID == 29) || (Unk_ov23_022577B8->selectedID == 30)) {
                    UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), 81, FALSE, NULL);
                } else {
                    UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), 79, FALSE, NULL);
                }
            } else {
                UndergroundTextPrinter_SetUndergroundItemName(CommManUnderground_GetCommonTextPrinter(), 0, Unk_ov23_022577B8->selectedID);
                UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), 80, FALSE, NULL);
            }
        } else if (v1 == 2) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            Underground_RemoveTreasureAtSlot(Unk_ov23_022577B8->underground, Unk_ov23_022577B8->selectedSlot);

            UndergroundTextPrinter_SetUndergroundItemName(CommManUnderground_GetCommonTextPrinter(), 2, Unk_ov23_022577B8->selectedID);
            UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), 130, FALSE, NULL);
        }

        v0->unk_00 = (void *)ov23_02250598;
        v0->unk_2A9 = 7;
        v0->unk_2AA = 14;

        break;
    }

    return TRUE;
}

static void ov23_02250930(UnkStruct_ov23_02250CD4 *param0)
{
    param0->unk_2AA = 2;
}

static void ov23_0225093C(UnkStruct_ov23_02250CD4 *param0)
{
    ov23_0224FB7C(param0);

    if (Underground_AreCoordinatesInSecretBase(Player_GetXPos(param0->fieldSystem->playerAvatar), Player_GetZPos(param0->fieldSystem->playerAvatar))) {
        UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), 66, FALSE, NULL);
        param0->unk_2AA = 13;
    } else {
        param0->unk_28C = UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), 52, FALSE, NULL);
        param0->unk_2AA = 11;
    }
}

static void ov23_02250998(SysTask *param0, void *param1)
{
    UnkStruct_ov23_02250CD4 *v0 = param1;

    if (UndergroundTextPrinter_IsPrinterActive(CommManUnderground_GetCommonTextPrinter()) == FALSE) {
        v0->unk_5C = Menu_MakeYesNoChoice(v0->fieldSystem->bgConfig, &sWindowTemplate, 1024 - (18 + 12) - 9, 11, HEAP_ID_FIELD);
        v0->unk_2AA = 12;
    }
}

static void ov23_022509D4(SysTask *param0, void *param1)
{
    UnkStruct_ov23_02250CD4 *v0 = param1;
    int v1 = Menu_ProcessInputAndHandleExit(v0->unk_5C, 4);

    if (v1 == MENU_NOTHING_CHOSEN) {
        return;
    } else if (v1 == 0) {
        v0->unk_2AA = 15;
    } else {
        UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetCommonTextPrinter());
        ov23_0224FD3C(v0);
    }

    v0->unk_5C = NULL;
}

static void ov23_02250A0C(void *param0)
{
    UnkStruct_ov23_02250CD4 *v0 = param0;
    ov23_0224FD3C(v0);
}

static void ov23_02250A14(UnkStruct_ov23_02250CD4 *param0)
{
    ov23_0224FB7C(param0);
    ov23_02253968();
    ov23_02253834(param0->fieldSystem->bgConfig, SaveData_GetTrainerInfo(FieldSystem_GetSaveData(param0->fieldSystem)), ov23_02250A0C, param0, 1);
    param0->unk_2AA = 10;
}

void ov23_02250A50(UnkFuncPtr_ov23_0224F758 param0, FieldSystem *fieldSystem)
{
    UnkStruct_ov23_02250CD4 *v0;
    ListMenuTemplate v1;

    v0 = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(UnkStruct_ov23_02250CD4));

    MI_CpuFill8(v0, 0, sizeof(UnkStruct_ov23_02250CD4));

    v0->fieldSystem = fieldSystem;
    v0->unk_260 = param0;
    v0->unk_2AA = 0;
    v0->strbuf = Strbuf_Init((50 * 2), HEAP_ID_FIELD);
    v0->fmtString = Strbuf_Init((50 * 2), HEAP_ID_FIELD);
    v0->template = StringTemplate_Default(HEAP_ID_FIELD);

    CommPlayerMan_PauseFieldSystem();

    UndergroundTextPrinter_PrintText(CommManUnderground_GetCaptureFlagTextPrinter(), 0, FALSE, NULL);
    v0->unk_04 = SysTask_Start(ov23_02250B9C, v0, 10000);
    ov23_022431EC(v0, v0->unk_04, ov23_02251270);
}

static void ov23_02250ACC(UnkStruct_ov23_02250CD4 *param0)
{
    if (UndergroundTextPrinter_IsPrinterActive(CommManUnderground_GetCaptureFlagTextPrinter()) == FALSE) {
        param0->unk_5C = Menu_MakeYesNoChoice(param0->fieldSystem->bgConfig, &sWindowTemplate, 1024 - (18 + 12) - 9, 11, 4);
        param0->unk_2AA = 1;
    }
}

static void ov23_02250B08(UnkStruct_ov23_02250CD4 *param0)
{
    int v0 = Menu_ProcessInputAndHandleExit(param0->unk_5C, 4);

    if (v0 == MENU_NOTHING_CHOSEN) {
        return;
    } else if (v0 == 0) {
        param0->unk_2AA = 3;
    } else {
        param0->unk_2AA = 2;
    }

    param0->unk_5C = NULL;
}

static void ov23_02250B34(SysTask *param0, UnkStruct_ov23_02250CD4 *param1, BOOL param2)
{
    if (param1->unk_5C) {
        Menu_DestroyForExit(param1->unk_5C, 4);
    }

    Strbuf_Free(param1->strbuf);
    Strbuf_Free(param1->fmtString);
    StringTemplate_Free(param1->template);

    UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetCaptureFlagTextPrinter());
    UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetCommonTextPrinter());

    if (param1->unk_260 != NULL) {
        param1->unk_260(0);
    }

    param1->unk_04 = NULL;

    if (param1->unk_08) {
        sub_0206A844(param1->unk_08);
    }

    Heap_Free(param1);

    if (!param2) {
        CommPlayerMan_ResumeFieldSystem();
    }

    SysTask_Done(param0);
}

static void ov23_02250B9C(SysTask *param0, void *param1)
{
    UnkStruct_ov23_02250CD4 *v0 = param1;

    if (!ov23_0224AEA4(CommSys_CurNetId())) {
        if ((v0->unk_2AA == 0) || (v0->unk_2AA == 1)) {
            v0->unk_2AA = 2;
        }
    }

    switch (v0->unk_2AA) {
    case 0:
        ov23_02250ACC(param1);
        break;
    case 1:
        ov23_02250B08(param1);
        break;
    case 2:
        ov23_02243204();
        ov23_02250B34(param0, param1, 0);
        return;
    case 3:
        ov23_02243204();
        ov23_02250B34(param0, param1, 1);
        {
            u8 v1 = 0;

            CommSys_SendDataFixedSize(84, &v1);
        }
        return;
    case 4:
        if (UndergroundTextPrinter_IsPrinterActive(CommManUnderground_GetCaptureFlagTextPrinter()) == FALSE) {
            if (gSystem.pressedKeys & PAD_BUTTON_A) {
                v0->unk_2AA = 2;
            }
        }
        break;
    }
}

void ov23_02250C3C(ListMenu *param0, u32 index, u8 onInit)
{
    UnkStruct_ov23_02250CD4 *v0 = (UnkStruct_ov23_02250CD4 *)ListMenu_GetAttribute(param0, 19);
    UnkFuncPtr_ov23_0224FD84 v1 = v0->itemGetter;
    int v2 = index;
    int v3 = v1(v2, v0);

    if (index == 0xfffffffe) {
        v2 = 139;
    } else {
        v2 = 145 + v3 - 7;
    }

    UndergroundTextPrinter_PrintTextInstant(CommManUnderground_GetItemNameTextPrinter(), v2, FALSE, NULL);
}

static void ov23_02250C74(ListMenu *param0, u32 param1, u8 param2)
{
    UnkStruct_ov23_02250CD4 *v0 = (UnkStruct_ov23_02250CD4 *)ListMenu_GetAttribute(param0, 19);
    int v1 = param1;
    Underground *v2 = SaveData_GetUnderground(FieldSystem_GetSaveData(v0->fieldSystem));

    if (!Underground_IsGoodAtSlotPlacedInBase(v2, v1)) {
        ListMenu_SetAltTextColors(param0, 1, 15, 2);
    } else {
        ListMenu_SetAltTextColors(param0, 2, 15, 2);
    }
}

void ov23_02250CB0(UnkStruct_ov23_02250CD4 *param0)
{
    param0->itemCountGetter = Underground_GetGoodsCountBag2;
    param0->itemGetter = Underground_GetGoodAtSlotBag2;
    param0->printCallback = NULL;

    ov23_02250D90(param0, NULL);
}

void ov23_02250CD4(UnkStruct_ov23_02250CD4 *param0)
{
    param0->unk_290 = ov23_0224318C(10);
    param0->unk_294 = ov23_02243154(10);
    param0->itemCountGetter = Underground_GetGoodsCountBag2;
    param0->itemGetter = Underground_GetGoodAtSlotBag2;
    param0->cursorCallback = ov23_02250C3C;
    param0->printCallback = NULL;
    param0->unk_2B0 = param0->unk_290;

    ov23_02250D90(param0, Underground_MoveGoodBag);
}

void ov23_02250D2C(UnkStruct_ov23_02250CD4 *param0)
{
    param0->itemCountGetter = Underground_GetGoodsCountBag2;
    param0->itemGetter = Underground_GetGoodAtSlotBag2;
    param0->cursorCallback = ov23_02250C3C;
    param0->printCallback = NULL;

    ov23_02250D90(param0, Underground_MoveGoodBag);
}

void ov23_02250D5C(UnkStruct_ov23_02250CD4 *param0)
{
    param0->itemCountGetter = Underground_GetGoodsCountPC2;
    param0->itemGetter = Underground_GetGoodAtSlotPC2;
    param0->cursorCallback = ov23_02250C3C;
    param0->printCallback = ov23_02250C74;

    ov23_02250D90(param0, Underground_MoveGoodPC);
}

static void ov23_02250D90(UnkStruct_ov23_02250CD4 *param0, UnkFuncPtr_ov23_02248D20 param1)
{
    UnkFuncPtr_ov23_0224FE38 v0 = param0->itemCountGetter;
    UnkFuncPtr_ov23_0224FD84 v1 = param0->itemGetter;
    ListMenuTemplate v2;
    int v3 = v0(param0);
    int v4 = 6;

    ov23_0224FB7C(param0);
    UndergroundTextPrinter_ChangeMessageLoaderBank(CommManUnderground_GetItemNameTextPrinter(), TEXT_BANK_UNDERGROUND_GOODS, MESSAGE_LOADER_BANK_HANDLE);

    param0->unk_40 = StringList_New(v3 + 1, HEAP_ID_FIELD);

    Window_Add(param0->fieldSystem->bgConfig, &param0->unk_10, BG_LAYER_MAIN_3, 19, 3, 12, (6 * 2), 13, ((1024 - (18 + 12) - 9 - 11 * 22) - 12 * (6 * 2)));
    Window_DrawStandardFrame(&param0->unk_10, 1, 1024 - (18 + 12) - 9, 11);

    {
        MessageLoader *v5;
        int v6 = 0;

        v5 = UndergroundTextPrinter_GetMessageLoader(CommManUnderground_GetItemNameTextPrinter());

        for (v6 = 0; v6 < v3; v6++) {
            StringList_AddFromMessageBank(param0->unk_40, v5, v1(v6, param0), v6);
        }

        StringList_AddFromMessageBank(param0->unk_40, v5, 0, 0xfffffffe);
    }

    v2 = sListMenuTemplate;
    v2.count = v3 + 1;
    v2.maxDisplay = v4;
    v2.printCallback = param0->printCallback;
    v2.choices = param0->unk_40;
    v2.window = &param0->unk_10;
    v2.cursorCallback = param0->cursorCallback;
    v2.parent = param0;

    ov23_02251238(param0, v4, v2.count);

    param0->unk_4C = ov23_02248C08(&v2, param0->unk_294, param0->unk_290, HEAP_ID_FIELD, param1, Unk_ov23_022577B8->underground, 0);
    param0->unk_2AA = 8;
}

static BOOL Underground_HandleGoodsMenu(SysTask *param0, void *param1)
{
    UnkStruct_ov23_02250CD4 *v0 = param1;
    u32 v1;
    u16 v2, v3;

    v1 = ov23_02248D20(v0->unk_4C);

    ListMenu_GetListAndCursorPos(v0->unk_4C->unk_0C, &v2, &v3);
    ov23_022430E0(10, v3, v2);

    if (CommSys_CheckError()) {
        v1 = LIST_CANCEL;
    }

    // make sure we have the right type of -2
    if (v1 == MENU_CANCELED) {
        v1 = LIST_CANCEL;
    }

    switch (v1) {
    case LIST_NOTHING_CHOSEN:
        ov23_0225128C(v0, v2, ListMenu_GetAttribute(v0->unk_4C->unk_0C, 2), 6);
        return FALSE;
    case LIST_CANCEL:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        ov23_0224FD3C(v0);
        break;
    default:
        ov23_0224FB7C(v0);

        Unk_ov23_022577B8->selectedSlot = v1;
        Unk_ov23_022577B8->selectedID = Underground_GetGoodAtSlotBag2(v1, v0);

        ov23_0224FBFC(v0, 2);
        UndergroundTextPrinter_SetUndergroundGoodsNameWithIndex(CommManUnderground_GetCommonTextPrinter(), 2, Unk_ov23_022577B8->selectedID);
        UndergroundTextPrinter_PrintTextInstant(CommManUnderground_GetCommonTextPrinter(), 129, FALSE, NULL);

        v0->unk_2AA = 19;

        sub_0206A8C4(v0->unk_08, 0, 0);
        sub_0206A8C4(v0->unk_08, 1, 0);
        break;
    }

    return TRUE;
}

static BOOL Underground_HandleGoodSelectedMenu(SysTask *param0, void *param1)
{
    UnkStruct_ov23_02250CD4 *v0 = param1;
    u32 v1;
    u16 v2;

    v1 = ListMenu_ProcessInput(v0->unk_50);
    v2 = v0->unk_2B0;

    ListMenu_CalcTrueCursorPos(v0->unk_50, &v0->unk_2B0);

    if (v2 != v0->unk_2B0) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    switch (v1) {
    case MENU_NOTHING_CHOSEN:
        return FALSE;
    case MENU_CANCELED:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        ov23_0224FCF4(v0);
        ov23_02250CD4(v0);
        v0->unk_2AA = 8;
        break;
    default:
        ov23_0224FCF4(v0);

        if (v1 == 2) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            Underground_RemoveGoodAtSlotBag(Unk_ov23_022577B8->underground, Unk_ov23_022577B8->selectedSlot);
            UndergroundTextPrinter_SetUndergroundGoodsNameWithIndex(CommManUnderground_GetCommonTextPrinter(), 2, Unk_ov23_022577B8->selectedID);
            UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), 130, FALSE, NULL);
        }

        v0->unk_00 = (void *)ov23_02250CD4;
        v0->unk_2A9 = 8;
        v0->unk_2AA = 14;

        break;
    }

    return TRUE;
}

void ov23_02251044(void *param0, u32 param1)
{
    UnkStruct_ov23_02250CD4 *v0 = param0;

    ov23_0224FB7C(v0);
    ov23_02242FBC();
    ov23_022535EC();
    ov23_02245784();
    ov23_02241364();
    SphereRadar_Exit();

    if (v0->unk_270) {
        ov23_02253D10(v0->unk_270);
    }

    if (v0->unk_5C) {
        Menu_DestroyForExit(v0->unk_5C, 4);
    }

    ov23_0224FCF4(v0);

    if (v0->unk_08) {
        sub_0206A844(v0->unk_08);
    }

    if (v0->unk_260 != NULL) {
        Unk_ov23_022577B8->selectedSlot = param1;
        Unk_ov23_022577B8->selectedID = Underground_GetGoodAtSlotBag2(param1, v0);
        v0->unk_260(0);
        v0->unk_260 = NULL;
    }

    if (v0->strbuf) {
        Strbuf_Free(v0->strbuf);
    }

    if (v0->fmtString) {
        Strbuf_Free(v0->fmtString);
    }

    if (v0->template) {
        StringTemplate_Free(v0->template);
    }

    if (v0->unk_04) {
        SysTask_Done(v0->unk_04);
    }

    Heap_Free(v0);
}

static BOOL ov23_022510F0(SysTask *param0, void *param1)
{
    UnkStruct_ov23_02250CD4 *v0 = param1;
    u32 v1 = ov23_02248D20(v0->unk_4C);

    if (CommSys_CheckError()) {
        v1 = LIST_CANCEL;
    }

    // make sure we have the right type of -2
    if (v1 == MENU_CANCELED) {
        v1 = LIST_CANCEL;
    }

    switch (v1) {
    case LIST_NOTHING_CHOSEN:
        return FALSE;
    case LIST_CANCEL:
        if (v0->unk_260 != NULL) {
            Unk_ov23_022577B8->selectedSlot = v1;
            Unk_ov23_022577B8->selectedID = 0;
            v0->unk_260(Unk_ov23_022577B8->selectedID);
            v0->unk_260 = NULL;
        }

        UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetItemNameTextPrinter());
        ov23_02251044(v0, v1);
        ov23_02243204();
        return 1;
    default:

        if (v0->unk_260 != NULL) {
            Unk_ov23_022577B8->selectedSlot = v1;
            Unk_ov23_022577B8->selectedID = Underground_GetGoodAtSlotBag2(v1, v0);
            v0->unk_260(Unk_ov23_022577B8->selectedID);
            v0->unk_260 = NULL;
        }

        UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetItemNameTextPrinter());
        ov23_02251044(v0, v1);
        ov23_02243204();
        return TRUE;
        break;
    }

    return TRUE;
}

void *ov23_022511B0(UnkFuncPtr_ov23_0224F758 param0, FieldSystem *fieldSystem)
{
    UnkStruct_ov23_02250CD4 *v0;
    ListMenuTemplate v1;

    v0 = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(UnkStruct_ov23_02250CD4));

    MI_CpuFill8(v0, 0, sizeof(UnkStruct_ov23_02250CD4));

    v0->fieldSystem = fieldSystem;
    v0->unk_260 = param0;
    v0->unk_2AA = 0;
    v0->unk_25C = 0;
    v0->unk_48 = NULL;
    v0->cursorCallback = NULL;
    v0->strbuf = Strbuf_Init((50 * 2), HEAP_ID_FIELD);
    v0->fmtString = Strbuf_Init((50 * 2), HEAP_ID_FIELD);
    v0->template = StringTemplate_Default(HEAP_ID_FIELD);

    ov23_02250CD4(v0);

    v0->unk_2AA = 9;
    v0->unk_04 = SysTask_Start(ov23_0224F914, v0, 10000);

    ov23_022431EC(v0, v0->unk_04, ov23_02251270);
    return v0;
}

void ov23_02251238(UnkStruct_ov23_02250CD4 *param0, int param1, int param2)
{
    if ((param0->unk_294 + param1) >= param2) {
        param0->unk_294 = param2 - param1;

        if (param0->unk_294 < 0) {
            param0->unk_294 = 0;
        }
    }

    if (param0->unk_290 >= (param2 - 1)) {
        param0->unk_290 = param2 - 1;

        if (param0->unk_290 < 0) {
            param0->unk_290 = 0;
        }
    }
}

void ov23_02251270(SysTask *param0, void *param1)
{
    BrightnessController_SetScreenBrightness(0, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);
    ov23_02251044(param1, 0xfffffffe);
}
