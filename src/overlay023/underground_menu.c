#include "overlay023/underground_menu.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "constants/traps.h"

#include "struct_defs/underground.h"

#include "field/field_system.h"
#include "overlay005/sprite_resource_manager.h"
#include "overlay023/ov23_0223E140.h"
#include "overlay023/ov23_02241F74.h"
#include "overlay023/ov23_0224A1D0.h"
#include "overlay023/ov23_0224B05C.h"
#include "overlay023/ov23_0225128C.h"
#include "overlay023/ov23_022521F0.h"
#include "overlay023/ov23_02253598.h"
#include "overlay023/underground_item_list_menu.h"
#include "overlay023/underground_spheres.h"
#include "overlay023/underground_text_printer.h"
#include "overlay023/underground_traps.h"

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
#include "scroll_prompts.h"
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

#include "res/graphics/start_menu/start_menu.naix.h"
#include "res/text/bank/underground_capture_flag.h"
#include "res/text/bank/underground_common.h"
#include "res/text/bank/underground_goods.h"
#include "res/text/bank/underground_items.h"
#include "res/text/bank/underground_traps.h"

enum UndergroundSelectedMenuTypes {
    UNDERGROUND_MENU_SELECTED_SPHERE_TRAP = 1,
    UNDERGROUND_MENU_SELECTED_GOOD,
    UNDERGROUND_MENU_SELECTED_TREASURE,
};

enum UndergroundSelectedMenuOptions {
    UNDERGROUND_MENU_OPTION_BURY = 1,
    UNDERGROUND_MENU_OPTION_TRASH,
    UNDERGROUND_MENU_OPTION_PUT_IN_BAG,
};

enum UndergroundMenuStates {
    UNDERGROUND_MENU_STATE_INIT = 0,
    UNDERGROUND_MENU_STATE_START,
    UNDERGROUND_MENU_STATE_CLOSE,
    UNDERGROUND_MENU_STATE_CLOSE_LEAVE_PAUSED,
    UNDERGROUND_MENU_STATE_UNUSED,
    UNDERGROUND_MENU_STATE_TRAPS,
    UNDERGROUND_MENU_STATE_SPHERES,
    UNDERGROUND_MENU_STATE_TREASURES,
    UNDERGROUND_MENU_STATE_GOODS,
    UNDERGROUND_MENU_STATE_GIVE_GIFT,
    UNDERGROUND_MENU_STATE_TRAINER_RECORDS,
    UNDERGROUND_MENU_STATE_GO_UP_SELECTED,
    UNDERGROUND_MENU_STATE_WAIT_FOR_CONFIRM,
    UNDERGROUND_MENU_STATE_CLOSE_AFTER_TEXT,
    UNDERGROUND_MENU_STATE_CHANGE_STATE_AFTER_TEXT,
    UNDERGROUND_MENU_STATE_RETURN_TO_SURFACE,
    UNDERGROUND_MENU_STATE_SPHERE_SELECTED,
    UNDERGROUND_MENU_STATE_TREASURE_SELECTED,
    UNDERGROUND_MENU_STATE_TRAP_SELECTED,
    UNDERGROUND_MENU_STATE_GOOD_SELECTED,
};

enum MenuIconAnimStates {
    ICON_ANIM_NONE = 0,
    ICON_ANIM_SWELL,
    ICON_ANIM_WIGGLE,
    ICON_ANIM_COUNT,
};

enum MenuIconPalettes {
    ICON_GRAYSCALE = 0,
    ICON_COLORED,
};

enum UndergroundMenuSpriteTemplates {
    UNDERGROUND_MENU_CURSOR_TEMPLATE = 0,
    UNDERGROUND_MENU_ICON_TEMPLATE,
};

#define UNDERGROUND_MENU_MAX_DISPLAY 6

#define UNDERGROUND_TRAP_DESCRIPTIONS_START UndergroundTraps_Text_MoveTrapUpDescription
#define UNDERGROUND_ITEM_DESCRIPTIONS_START UndergroundItems_Text_PrismSphereDescription
#define UNDERGROUND_GOOD_DESCRIPTIONS_START UndergroundGoods_Text_CloseDescription

#define ICON_CURSOR_INDEX 0

typedef void (*SelectedOptionCallback)(UndergroundMenu *);
typedef void (*OpenMenuFn)(UndergroundMenu *);

typedef struct {
    Underground *underground;
    u8 selectedSlot;
    u8 selectedID;
} UndergroundMenuContext;

typedef struct ItemSelectedOption {
    u32 bankEntry;
    u32 index;
} ItemSelectedOption;

static void UndergroundMenu_FreeSprites(UndergroundMenu *menu);
static void UndergroundMenu_AnimateSprites(UndergroundMenu *menu);
static void UndergroundMenu_SetStartMenuCursorPos(Sprite *param0, u32 param1);
static void UndergroundMenu_SetIconAnimationAndPalette(Sprite *param0, u16 param1, u16 param2);
static void UndergroundMenu_ChangeActiveMenuIcon(UndergroundMenu *menu, u16 param1, u16 param2);
static void UndergroundMenu_TryTransitionIconAnimationToWiggle(Sprite *param0);
static void UndergroundMenu_Main(SysTask *sysTask, void *data);
static BOOL UndergroundMenu_HandleStartMenu(SysTask *sysTask, void *data);
static void UndergroundMenu_InitTrapsMenu(UndergroundMenu *menu, MoveItemCallback moveItemCallback);
static BOOL UndergroundMenu_HandleTrapsMenu(SysTask *sysTask, void *data);
static void UndergroundMenu_InitSpheresMenu(UndergroundMenu *menu, MoveItemCallback moveItemCallback);
static BOOL UndergroundMenu_HandleSpheresMenu(SysTask *sysTask, void *data);
static BOOL UndergroundMenu_HandleSphereSelectedMenu(SysTask *sysTask, void *data);
static void UndergroundMenu_OpenSpheresMenu(UndergroundMenu *menu);
static void UndergroundMenu_InitTreasuresMenu(UndergroundMenu *menu, MoveItemCallback moveItemCallback);
static BOOL UndergroundMenu_HandleTreasuresMenu(SysTask *sysTask, void *data);
static BOOL UndergroundMenu_HandleTreasureSelectedMenu(SysTask *sysTask, void *data);
static void UndergroundMenu_CloseCallback(UndergroundMenu *menu);
static void UndergroundMenu_GoUpCallback(UndergroundMenu *menu);
static void UndergroundMenu_OpenTrainerRecords(UndergroundMenu *menu);
static BOOL UndergroundMenu_HandleTrapSelectedMenu(SysTask *sysTask, void *data);
static BOOL UndergroundMenu_HandleGoodSelectedMenu(SysTask *sysTask, void *data);
static void ov23_02250B9C(SysTask *sysTask, void *param1);
static void UndergroundMenu_InitGoodsMenu(UndergroundMenu *menu, MoveItemCallback moveItemCallback);
static BOOL UndergroundMenu_HandleGoodsMenu(SysTask *sysTask, void *data);
static BOOL UndergroundMenu_HandleGiftMenu(SysTask *sysTask, void *param1);
static void UndergroundMenu_ConfirmReturnToSurface(SysTask *sysTask, void *data);
static void UndergroundMenu_CheckForReturnYesNo(SysTask *sysTask, void *data);
static void UndergroundMenu_Free(SysTask *sysTask, UndergroundMenu *menu, BOOL leaveFieldSystemPaused);

static UndergroundMenuContext *ctx = NULL;

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
    u32 bankEntry;
    u32 callback;
} sUndergroundMenuOptions[] = {
    [UNDERGROUND_START_MENU_OPTION_TRAPS] = { .bankEntry = UndergroundCommon_Text_Traps, .callback = (u32)UndergroundMenu_OpenTrapsMenu },
    [UNDERGROUND_START_MENU_OPTION_SPHERES] = { .bankEntry = UndergroundCommon_Text_Spheres, .callback = (u32)UndergroundMenu_OpenSpheresMenu },
    [UNDERGROUND_START_MENU_OPTION_GOODS] = { .bankEntry = UndergroundCommon_Text_Goods, .callback = (u32)UndergroundMenu_OpenGoodsMenu },
    [UNDERGROUND_START_MENU_OPTION_TREASURES] = { .bankEntry = UndergroundCommon_Text_Treasures, .callback = (u32)UndergroundMenu_OpenTreasuresMenu },
    [UNDERGROUND_START_MENU_OPTION_TRAINER] = { .bankEntry = UndergroundCommon_Text_TrainerNameTemplate, .callback = (u32)UndergroundMenu_OpenTrainerRecords },
    [UNDERGROUND_START_MENU_OPTION_GO_UP] = { .bankEntry = UndergroundCommon_Text_GoUp, .callback = (u32)UndergroundMenu_GoUpCallback },
    [UNDERGROUND_START_MENU_OPTION_CLOSE] = { .bankEntry = UndergroundCommon_Text_Close, .callback = (u32)UndergroundMenu_CloseCallback }
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

static const SpriteTemplate sSpriteTemplates[] = {
    [UNDERGROUND_MENU_CURSOR_TEMPLATE] = {
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
    [UNDERGROUND_MENU_ICON_TEMPLATE] = {
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

static void UndergroundMenu_InitStartMenuSprites(UndergroundMenu *menu, u8 *optionList, u32 menuOptionCount)
{
    SpriteResourceCapacities capacities = {
        .asStruct = {
            .charCapacity = 8,
            .plttCapacity = 1,
            .cellCapacity = 2,
            .animCapacity = 2,
            .mcellCapacity = 0,
            .manimCapacity = 0,
        }
    };

    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__MENU_GRA, HEAP_ID_FIELD2);

    SpriteResourceManager_SetCapacities(&menu->spriteManager, &capacities, UNDERGROUND_START_MENU_OPTION_COUNT + 1, HEAP_ID_FIELD2);
    SpriteResourceManager_LoadPalette(&menu->spriteManager, narc, underground_menu_NCLR, FALSE, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 14528);
    SpriteResourceManager_LoadCell(&menu->spriteManager, narc, cursor_cell_NCER, FALSE, 14528);
    SpriteResourceManager_LoadAnimation(&menu->spriteManager, narc, cursor_anim_NANR, FALSE, 14528);
    SpriteResourceManager_LoadTiles(&menu->spriteManager, narc, cursor_NCGR, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 14528);

    menu->sprites[ICON_CURSOR_INDEX] = SpriteResourceManager_CreateManagedSprite(&menu->spriteManager, &sSpriteTemplates[UNDERGROUND_MENU_CURSOR_TEMPLATE]);

    UndergroundMenu_SetStartMenuCursorPos(menu->sprites[ICON_CURSOR_INDEX]->sprite, menu->menuCursorPos);

    SpriteResourceManager_LoadCell(&menu->spriteManager, narc, underground_icons_cell_NCER, FALSE, 14529);
    SpriteResourceManager_LoadAnimation(&menu->spriteManager, narc, underground_icons_anim_NANR, FALSE, 14529);
    SpriteResourceManager_LoadTiles(&menu->spriteManager, narc, underground_icons_NCGR, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 14529);

    NARC_dtor(narc);

    for (u32 i = 0; i < menuOptionCount; i++) {
        SpriteTemplate template = sSpriteTemplates[UNDERGROUND_MENU_ICON_TEMPLATE];
        template.y += 24 * i;
        template.animIdx = optionList[i] * ICON_ANIM_COUNT;

        menu->sprites[i + 1] = SpriteResourceManager_CreateManagedSprite(&menu->spriteManager, &template);

        VecFx32 scale = { FX32_ONE, FX32_ONE, FX32_ONE };
        Sprite_SetAffineScaleEx(menu->sprites[i + 1]->sprite, &scale, AFFINE_OVERWRITE_MODE_NORMAL);
    }

    UndergroundMenu_SetIconAnimationAndPalette(menu->sprites[menu->menuCursorPos + 1]->sprite, ICON_ANIM_WIGGLE, ICON_COLORED);
    menu->spriteCount = menuOptionCount + 1;
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
}

static void UndergroundMenu_FreeSprites(UndergroundMenu *menu)
{
    for (u16 i = 0; i < menu->spriteCount; i++) {
        Sprite_DeleteAndFreeResources(menu->sprites[i]);
    }

    SpriteResourceManager_Cleanup(&menu->spriteManager);
}

static void UndergroundMenu_AnimateSprites(UndergroundMenu *menu)
{
    for (u16 i = 0; i < menu->spriteCount; i++) {
        Sprite_UpdateAnim(menu->sprites[i]->sprite, FX32_ONE);
    }
}

static void UndergroundMenu_SetStartMenuCursorPos(Sprite *sprite, u32 pos)
{
    VecFx32 position = *(Sprite_GetPosition(sprite));
    position.y = (20 + 24 * pos) * FX32_ONE;

    Sprite_SetPosition(sprite, &position);
}

static void UndergroundMenu_SetIconAnimationAndPalette(Sprite *sprite, u16 anim, u16 palette)
{
    u32 activeAnimID = Sprite_GetActiveAnim(sprite);

    Sprite_SetAnim(sprite, (activeAnimID / ICON_ANIM_COUNT) * ICON_ANIM_COUNT + anim);
    Sprite_SetExplicitPaletteWithOffset(sprite, palette);
}

static void UndergroundMenu_ChangeActiveMenuIcon(UndergroundMenu *menu, u16 oldIndex, u16 index)
{
    UndergroundMenu_SetIconAnimationAndPalette(menu->sprites[oldIndex + 1]->sprite, ICON_ANIM_NONE, ICON_GRAYSCALE);
    UndergroundMenu_SetIconAnimationAndPalette(menu->sprites[index + 1]->sprite, ICON_ANIM_SWELL, ICON_COLORED);
}

static void UndergroundMenu_TryTransitionIconAnimationToWiggle(Sprite *sprite)
{
    if ((Sprite_GetActiveAnim(sprite) % ICON_ANIM_COUNT) != ICON_ANIM_SWELL) {
        return;
    }

    if (Sprite_IsAnimated(sprite) == FALSE) {
        UndergroundMenu_SetIconAnimationAndPalette(sprite, ICON_ANIM_WIGGLE, ICON_COLORED);
    }
}

void UndergroundMenuContext_Init(Underground *underground)
{
    ctx = Heap_Alloc(HEAP_ID_COMMUNICATION, sizeof(UndergroundMenuContext));
    MI_CpuClear8(ctx, sizeof(UndergroundMenuContext));
    ctx->selectedSlot = 0;
    ctx->selectedID = 0;
    ctx->underground = underground;
}

void UndergroundMenuContext_Free(void)
{
    Heap_Free(ctx);
}

static int UndergroundMenu_GetTrapCount(void *menu)
{
    UndergroundMenu *ugMenu = menu;
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(ugMenu->fieldSystem));

    return Underground_GetTrapCount(underground);
}

static int UndergroundMenu_GetGoodsCountPC(void *menu)
{
    UndergroundMenu *ugMenu = menu;
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(ugMenu->fieldSystem));

    return Underground_GetGoodsCountPC(underground);
}

int UndergroundMenu_GetGoodAtSlotPC(int slot, void *menu)
{
    UndergroundMenu *ugMenu = menu;
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(ugMenu->fieldSystem));

    return Underground_GetGoodAtSlotPC(underground, slot);
}

static int UndergroundMenu_GetGoodsCountBag(void *menu)
{
    UndergroundMenu *ugMenu = menu;
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(ugMenu->fieldSystem));

    return Underground_GetGoodsCountBag(underground);
}

int UndergroundMenu_GetGoodAtSlotBag(int slot, void *menu)
{
    UndergroundMenu *ugMenu = menu;
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(ugMenu->fieldSystem));

    return Underground_GetGoodAtSlotBag(underground, slot);
}

void UndergroundMenu_RemoveSelectedGoodBag(int goodID)
{
    GF_ASSERT(ctx->selectedID == goodID);
    Underground_RemoveGoodAtSlotBag(ctx->underground, ctx->selectedSlot);
}

static int UndergroundMenu_GetSphereCount(void *menu)
{
    UndergroundMenu *ugMenu = menu;
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(ugMenu->fieldSystem));

    return Underground_GetSphereCount(underground);
}

int UndergroundMenu_GetTrapAtSlot(int slot, void *menu)
{
    UndergroundMenu *ugMenu = menu;
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(ugMenu->fieldSystem));

    return Underground_GetTrapAtSlot(underground, slot);
}

int UndergroundMenu_GetSphereTypeAtSlot(int slot, void *menu)
{
    UndergroundMenu *ugMenu = menu;
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(ugMenu->fieldSystem));

    return Underground_GetSphereTypeAtSlot(underground, slot);
}

int UndergroundMenu_GetSphereSizeAtSlot(int slot, void *menu)
{
    UndergroundMenu *ugMenu = menu;
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(ugMenu->fieldSystem));

    return Underground_GetSphereSizeAtSlot(underground, slot);
}

static int UndergroundMenu_GetTreasureCount(void *menu)
{
    UndergroundMenu *ugMenu = menu;
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(ugMenu->fieldSystem));

    return Underground_GetTreasureCount(underground);
}

int UndergroundMenu_GetTreasureAtSlot(int slot, void *menu)
{
    UndergroundMenu *ugMenu = menu;
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(ugMenu->fieldSystem));

    return Underground_GetTreasureAtSlot(underground, slot);
}

BOOL UndergroundInventory_TryAddSphere(int sphereType, int sphereSize)
{
    GF_ASSERT(sphereType < MINING_SPHERES_MAX);

    if (sphereType >= MINING_LARGE_PRISM_SPHERE) {
        sphereType -= (MINING_LARGE_PRISM_SPHERE - 1);
    }

    if (sphereSize > MAX_SPHERE_SIZE) {
        sphereSize = MAX_SPHERE_SIZE;
    }

    return Underground_TryAddSphere(ctx->underground, sphereType, sphereSize);
}

BOOL UndergroundInventory_TryAddTreasure(int treasureID)
{
    GF_ASSERT(treasureID < MINING_TREASURE_MAX);
    return Underground_TryAddTreasure(ctx->underground, treasureID);
}

BOOL UndergroundInventory_TryAddTrap(int trapID)
{
    return Underground_TryAddTrap(ctx->underground, trapID);
}

BOOL UndergroundInventory_TryAddGoodBag(int goodID)
{
    return Underground_TryAddGoodBag(ctx->underground, goodID);
}

void UndergroundMenu_Start(ExitCallback exitCallback, FieldSystem *fieldSystem)
{
    Sound_PlayEffect(SEQ_SE_DP_WIN_OPEN);
    CommManUnderground_SetStoredPosKey(UNDERGROUND_STORED_POS_KEY_START_MENU);

    UndergroundMenu *menu = Heap_Alloc(HEAP_ID_FIELD1, sizeof(UndergroundMenu));

    MI_CpuFill8(menu, 0, sizeof(UndergroundMenu));

    menu->fieldSystem = fieldSystem;
    menu->exitCallback = exitCallback;
    menu->state = UNDERGROUND_MENU_STATE_INIT;
    menu->strbuf = Strbuf_Init(50 * 2, HEAP_ID_FIELD1);
    menu->fmtString = Strbuf_Init(50 * 2, HEAP_ID_FIELD1);
    menu->template = StringTemplate_Default(HEAP_ID_FIELD1);
    menu->sysTask = SysTask_Start(UndergroundMenu_Main, menu, 10000);

    ov23_022431EC(menu, menu->sysTask, ov23_02251270);
}

#define ADD_OPTION(__menuOption)          \
    do {                                  \
        list[optionCount] = __menuOption; \
        optionCount++;                    \
    } while (0)

static u32 UndergroundMenu_MakeList(u8 *list)
{
    u32 optionCount = 0;
    ADD_OPTION(UNDERGROUND_START_MENU_OPTION_TRAPS);
    ADD_OPTION(UNDERGROUND_START_MENU_OPTION_SPHERES);
    ADD_OPTION(UNDERGROUND_START_MENU_OPTION_GOODS);
    ADD_OPTION(UNDERGROUND_START_MENU_OPTION_TREASURES);
    ADD_OPTION(UNDERGROUND_START_MENU_OPTION_TRAINER);
    ADD_OPTION(UNDERGROUND_START_MENU_OPTION_GO_UP);
    ADD_OPTION(UNDERGROUND_START_MENU_OPTION_CLOSE);
    return optionCount;
}

static void UndergroundMenu_InitStartMenu(UndergroundMenu *menu)
{
    MenuTemplate template;
    const int trainerOptionIndex = UNDERGROUND_START_MENU_OPTION_TRAINER;
    u8 optionList[UNDERGROUND_START_MENU_OPTION_COUNT];
    UndergroundMenu_MakeList(optionList);
    menu->menuOptions = StringList_New(NELEMS(sUndergroundMenuOptions), HEAP_ID_FIELD1);

    Window_Add(menu->fieldSystem->bgConfig, &menu->primaryWindow, BG_LAYER_MAIN_3, 20, 1, 11, NELEMS(sUndergroundMenuOptions) * 3, 13, (1024 - (18 + 12) - 9 - 11 * 22));
    Window_DrawStandardFrame(&menu->primaryWindow, TRUE, 1024 - (18 + 12) - 9, 11);

    MessageLoader *loader = UndergroundTextPrinter_GetMessageLoader(CommManUnderground_GetCommonTextPrinter());

    for (int i = 0; i < NELEMS(sUndergroundMenuOptions); i++) {
        if (i == trainerOptionIndex) {
            const TrainerInfo *info = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(menu->fieldSystem));
            Strbuf *strbuf = TrainerInfo_NameNewStrbuf(info, HEAP_ID_FIELD1);

            StringList_AddFromStrbuf(menu->menuOptions, strbuf, sUndergroundMenuOptions[i].callback);
            Strbuf_Free(strbuf);
        } else {
            StringList_AddFromMessageBank(menu->menuOptions, loader, sUndergroundMenuOptions[i].bankEntry, sUndergroundMenuOptions[i].callback);
        }
    }

    menu->menuCursorPos = menu->fieldSystem->menuCursorPos;

    template.choices = menu->menuOptions;
    template.window = &menu->primaryWindow;
    template.fontID = FONT_MESSAGE;
    template.xSize = 1;
    template.ySize = NELEMS(sUndergroundMenuOptions);
    template.lineSpacing = 8;
    template.suppressCursor = TRUE;
    template.loopAround = TRUE;

    menu->menu = Menu_New(&template, 28, 4, menu->menuCursorPos, HEAP_ID_FIELD2, PAD_BUTTON_B | PAD_BUTTON_X);
    menu->unk_48 = NULL;

    Window_ScheduleCopyToVRAM(&menu->primaryWindow);
    UndergroundMenu_InitStartMenuSprites(menu, optionList, NELEMS(sUndergroundMenuOptions));
    CommPlayerMan_PauseFieldSystem();
}

static void UndergroundMenu_Main(SysTask *sysTask, void *data)
{
    UndergroundMenu *menu = data;

    switch (menu->state) {
    case UNDERGROUND_MENU_STATE_INIT:
        UndergroundMenu_InitStartMenu(menu);
        menu->state++;
        break;
    case UNDERGROUND_MENU_STATE_START:
        UndergroundMenu_HandleStartMenu(sysTask, data);
        break;
    case UNDERGROUND_MENU_STATE_CLOSE:
        UndergroundMenu_EraseCurrentMenu(menu);
        ov23_02243204();
        UndergroundMenu_Free(sysTask, menu, FALSE);
        return;
    case UNDERGROUND_MENU_STATE_CLOSE_LEAVE_PAUSED:
        UndergroundMenu_EraseCurrentMenu(menu);
        ov23_02243204();
        UndergroundMenu_Free(sysTask, menu, TRUE);
        return;
    case UNDERGROUND_MENU_STATE_TRAPS:
        UndergroundMenu_HandleTrapsMenu(sysTask, data);
        break;
    case UNDERGROUND_MENU_STATE_SPHERES:
        UndergroundMenu_HandleSpheresMenu(sysTask, data);
        break;
    case UNDERGROUND_MENU_STATE_TREASURES:
        UndergroundMenu_HandleTreasuresMenu(sysTask, data);
        break;
    case UNDERGROUND_MENU_STATE_GOODS:
        UndergroundMenu_HandleGoodsMenu(sysTask, data);
        break;
    case UNDERGROUND_MENU_STATE_GIVE_GIFT:
        UndergroundMenu_HandleGiftMenu(sysTask, data);
        break;
    case UNDERGROUND_MENU_STATE_TRAINER_RECORDS:
        break;
    case UNDERGROUND_MENU_STATE_GO_UP_SELECTED:
        UndergroundMenu_ConfirmReturnToSurface(sysTask, data);
        break;
    case UNDERGROUND_MENU_STATE_WAIT_FOR_CONFIRM:
        UndergroundMenu_CheckForReturnYesNo(sysTask, data);
        break;
    case UNDERGROUND_MENU_STATE_CLOSE_AFTER_TEXT:
        if (UndergroundTextPrinter_IsPrinterActive(CommManUnderground_GetCommonTextPrinter()) == FALSE) {
            if (JOY_NEW(PAD_BUTTON_A)) {
                UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetCommonTextPrinter());
                UndergroundMenu_Free(sysTask, menu, FALSE);
                ov23_02243204();
                return;
            }
        }
        break;
    case UNDERGROUND_MENU_STATE_CHANGE_STATE_AFTER_TEXT:
        if (UndergroundTextPrinter_IsPrinterActive(CommManUnderground_GetCommonTextPrinter()) == FALSE) {
            if (JOY_NEW(PAD_BUTTON_A)) {
                OpenMenuFn openNextMenu = (OpenMenuFn)menu->openMenuFn;

                openNextMenu(menu);
                menu->state = menu->nextState;
            }
        }
        break;
    case UNDERGROUND_MENU_STATE_RETURN_TO_SURFACE:
        UndergroundMenu_EraseCurrentMenu(menu);
        UndergroundMenu_Free(sysTask, menu, TRUE);
        ov23_02243204();
        FieldTask_SetUndergroundMapChange(menu->fieldSystem);
        return;
    case UNDERGROUND_MENU_STATE_TRAP_SELECTED:
        UndergroundMenu_HandleTrapSelectedMenu(sysTask, data);
        break;
    case UNDERGROUND_MENU_STATE_SPHERE_SELECTED:
        UndergroundMenu_HandleSphereSelectedMenu(sysTask, data);
        break;
    case UNDERGROUND_MENU_STATE_TREASURE_SELECTED:
        UndergroundMenu_HandleTreasureSelectedMenu(sysTask, data);
        break;
    case UNDERGROUND_MENU_STATE_GOOD_SELECTED:
        UndergroundMenu_HandleGoodSelectedMenu(sysTask, data);
        break;
    }
}

static BOOL UndergroundMenu_HandleStartMenu(SysTask *sysTask, void *data)
{
    UndergroundMenu *menu = data;
    u16 prevPos = Menu_GetCursorPos(menu->menu);
    menu->startMenuInput = Menu_ProcessInputWithSound(menu->menu, SEQ_SE_DP_SELECT78);
    menu->menuCursorPos = Menu_GetCursorPos(menu->menu);

    if (prevPos != menu->menuCursorPos) {
        UndergroundMenu_SetStartMenuCursorPos(menu->sprites[ICON_CURSOR_INDEX]->sprite, menu->menuCursorPos);
        UndergroundMenu_ChangeActiveMenuIcon(menu, prevPos, menu->menuCursorPos);
        menu->fieldSystem->menuCursorPos = menu->menuCursorPos;
    }

    UndergroundMenu_TryTransitionIconAnimationToWiggle(menu->sprites[menu->menuCursorPos + 1]->sprite);

    if (CommSys_CheckError()) {
        menu->startMenuInput = MENU_CANCELED;
    }

    switch (menu->startMenuInput) {
    case MENU_NOTHING_CHOSEN:
        UndergroundMenu_AnimateSprites(menu);
        SpriteList_Update(menu->spriteManager.spriteList);
        return FALSE;
    case MENU_CANCELED:
        menu->state = UNDERGROUND_MENU_STATE_CLOSE;
        break;
    default:
        if (menu->startMenuInput == (u32)UndergroundMenu_OpenTrapsMenu || menu->startMenuInput == (u32)UndergroundMenu_OpenSpheresMenu || menu->startMenuInput == (u32)UndergroundMenu_OpenGoodsMenu || menu->startMenuInput == (u32)UndergroundMenu_OpenTreasuresMenu) {
            menu->scrollPrompts = ScrollPrompts_New(HEAP_ID_FIELD1);
            ScrollPrompts_SetPosition(menu->scrollPrompts, 200, 20, 122);
            ScrollPrompts_SetDrawFlag(menu->scrollPrompts, SCROLL_PROMPT_TOP_ARROW, FALSE);
            ScrollPrompts_SetDrawFlag(menu->scrollPrompts, SCROLL_PROMPT_BOTTOM_ARROW, FALSE);
        }

        if (menu->spriteCount) {
            UndergroundMenu_FreeSprites(menu);
            Menu_Free(menu->menu, NULL);
            menu->spriteCount = 0;
        }

        SelectedOptionCallback callback = (SelectedOptionCallback)menu->startMenuInput;
        callback(menu);
        break;
    }

    return TRUE;
}

void UndergroundMenu_EraseCurrentMenu(UndergroundMenu *menu)
{
    if (menu->itemListMenu) {
        UndergroundItemListMenu_Free(menu->itemListMenu, NULL, NULL);
        menu->itemListMenu = NULL;
    }

    if (menu->unk_48) {
        ListMenu_Free(menu->unk_48, NULL, NULL);
        menu->unk_48 = NULL;
    } else if (menu->spriteCount) {
        UndergroundMenu_FreeSprites(menu);
        Menu_Free(menu->menu, NULL);
        menu->spriteCount = 0;
    }

    if (Window_IsInUse(&menu->primaryWindow)) {
        Window_EraseStandardFrame(&menu->primaryWindow, TRUE);
        Bg_ScheduleTilemapTransfer(menu->primaryWindow.bgConfig, menu->primaryWindow.bgLayer);
        Window_Remove(&menu->primaryWindow);
        StringList_Free(menu->menuOptions);
        ov23_02252DF4(menu);
    }
}

static ItemSelectedOption sSphereTrapOptions[] = {
    { .bankEntry = UndergroundCommon_Text_Bury, .index = UNDERGROUND_MENU_OPTION_BURY },
    { .bankEntry = UndergroundCommon_Text_Trash, .index = UNDERGROUND_MENU_OPTION_TRASH },
    { .bankEntry = UndergroundCommon_Text_Cancel, .index = LIST_CANCEL }
};

static ItemSelectedOption sGoodOptions[] = {
    { .bankEntry = UndergroundCommon_Text_Trash, .index = UNDERGROUND_MENU_OPTION_TRASH },
    { .bankEntry = UndergroundCommon_Text_Cancel, .index = LIST_CANCEL }
};

static ItemSelectedOption sTreasureOptions[] = {
    { .bankEntry = UndergroundCommon_Text_PutInBag, .index = UNDERGROUND_MENU_OPTION_PUT_IN_BAG },
    { .bankEntry = UndergroundCommon_Text_Trash, .index = UNDERGROUND_MENU_OPTION_TRASH },
    { .bankEntry = UndergroundCommon_Text_Cancel, .index = LIST_CANCEL }
};

static void UndergroundMenu_InitItemSelectedMenu(UndergroundMenu *menu, int menuType)
{
    int optionCount;
    int tilemapTop = 11;
    int width = 6;
    int tilemapLeft = 31 - 6;
    ItemSelectedOption *options;

    switch (menuType) {
    case UNDERGROUND_MENU_SELECTED_SPHERE_TRAP:
        optionCount = 3;
        options = sSphereTrapOptions;
        break;
    case UNDERGROUND_MENU_SELECTED_GOOD:
        optionCount = 2;
        tilemapTop = 11 + 2;
        options = sGoodOptions;
        break;
    case UNDERGROUND_MENU_SELECTED_TREASURE:
        optionCount = 3;
        width = 6 + 5;
        tilemapLeft = (31 - 6) - 5;
        options = sTreasureOptions;
        break;
    }

    menu->itemSelectedOptions = StringList_New(optionCount, HEAP_ID_FIELD1);

    Window_Add(menu->fieldSystem->bgConfig, &menu->secondaryWindow, BG_LAYER_MAIN_3, tilemapLeft, tilemapTop, width, optionCount * 2, 13, (1024 - (18 + 12) - 9 - 11 * 22));
    Window_DrawStandardFrame(&menu->secondaryWindow, TRUE, 1024 - (18 + 12) - 9, 11);

    MessageLoader *loader = UndergroundTextPrinter_GetMessageLoader(CommManUnderground_GetCommonTextPrinter());

    for (int i = 0; i < optionCount; i++) {
        StringList_AddFromMessageBank(menu->itemSelectedOptions, loader, options[i].bankEntry, options[i].index);
    }

    ListMenuTemplate template = sListMenuTemplate;
    template.count = optionCount;
    template.maxDisplay = optionCount;
    template.choices = menu->itemSelectedOptions;
    template.window = &menu->secondaryWindow;
    template.parent = menu;

    menu->itemSelectedMenu = ListMenu_New(&template, 0, 0, HEAP_ID_FIELD1);
}

static void UndergroundMenu_CloseItemSelectedMenu(UndergroundMenu *menu)
{
    if (menu->itemSelectedMenu) {
        ListMenu_Free(menu->itemSelectedMenu, NULL, NULL);
        Bg_ScheduleTilemapTransfer(menu->secondaryWindow.bgConfig, menu->secondaryWindow.bgLayer);
        StringList_Free(menu->itemSelectedOptions);

        menu->itemSelectedMenu = NULL;
    }

    if (Window_IsInUse(&menu->secondaryWindow)) {
        Window_EraseStandardFrame(&menu->secondaryWindow, TRUE);
        Window_Remove(&menu->secondaryWindow);
    }
}

static void UndergroundMenu_ReturnToStartMenu(UndergroundMenu *menu)
{
    UndergroundMenu_EraseCurrentMenu(menu);

    if (menu->scrollPrompts) {
        ScrollPrompts_Free(menu->scrollPrompts);
        menu->scrollPrompts = NULL;
    }

    menu->state = UNDERGROUND_MENU_STATE_INIT;
    UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetItemNameTextPrinter());
}

void UndergroundMenu_RemoveSelectedTrap(int trapID)
{
    if (ctx->selectedID == trapID) {
        Underground_RemoveTrapAtSlot(ctx->underground, ctx->selectedSlot);
    }
}

void UndergroundMenu_PrintTrapDescription(ListMenu *listMenu, u32 index, u8 onInit)
{
    UndergroundMenu *menu = (UndergroundMenu *)ListMenu_GetAttribute(listMenu, LIST_MENU_PARENT);
    GetItemFunc getTrap = menu->getItem;
    int bankEntry;
    int trapID = getTrap(index, menu);

    if (index == LIST_CANCEL) {
        bankEntry = UndergroundTraps_Text_CloseDescription;
    } else {
        bankEntry = UNDERGROUND_TRAP_DESCRIPTIONS_START + trapID - 1;
    }

    UndergroundTextPrinter_PrintTextInstant(CommManUnderground_GetItemNameTextPrinter(), bankEntry, FALSE, NULL);
}

void ov23_0224FDBC(UndergroundMenu *menu)
{
    menu->getItemCount = UndergroundMenu_GetTrapCount;
    menu->getItem = UndergroundMenu_GetTrapAtSlot;
    menu->printCallback = NULL;

    UndergroundMenu_InitTrapsMenu(menu, NULL);
}

void UndergroundMenu_OpenTrapsMenu(UndergroundMenu *menu)
{
    menu->listMenuCursorPos = CommManUnderground_GetStoredCursorPos(UNDERGROUND_MENU_KEY_TRAPS);
    menu->listMenuListPos = CommManUnderground_GetStoredListPos(UNDERGROUND_MENU_KEY_TRAPS);
    menu->getItemCount = UndergroundMenu_GetTrapCount;
    menu->getItem = UndergroundMenu_GetTrapAtSlot;
    menu->cursorCallback = UndergroundMenu_PrintTrapDescription;
    menu->printCallback = NULL;
    menu->itemSelectedMenuCursorPos = menu->listMenuCursorPos;

    UndergroundMenu_InitTrapsMenu(menu, Underground_MoveTrapInInventory);
}

static void UndergroundMenu_InitTrapsMenu(UndergroundMenu *menu, MoveItemCallback moveItemCallback)
{
    GetItemCountFunc getTrapCount = menu->getItemCount;
    GetItemFunc getTrap = menu->getItem;
    int trapCount = getTrapCount(menu);
    int maxDisplay = UNDERGROUND_MENU_MAX_DISPLAY;

    UndergroundMenu_EraseCurrentMenu(menu);
    UndergroundTextPrinter_ChangeMessageLoaderBank(CommManUnderground_GetItemNameTextPrinter(), TEXT_BANK_UNDERGROUND_TRAPS, MSG_LOADER_PRELOAD_ENTIRE_BANK);

    menu->menuOptions = StringList_New(trapCount + 1, HEAP_ID_FIELD1);

    Window_Add(menu->fieldSystem->bgConfig, &menu->primaryWindow, BG_LAYER_MAIN_3, 19, 3, 12, (6 * 2), 13, ((1024 - (18 + 12) - 9 - 11 * 22) - 12 * (6 * 2)));
    Window_DrawStandardFrame(&menu->primaryWindow, TRUE, 1024 - (18 + 12) - 9, 11);

    MessageLoader *loader = UndergroundTextPrinter_GetMessageLoader(CommManUnderground_GetItemNameTextPrinter());

    for (int i = 0; i < trapCount; i++) {
        StringList_AddFromMessageBank(menu->menuOptions, loader, getTrap(i, menu), i);
    }

    StringList_AddFromMessageBank(menu->menuOptions, loader, UndergroundTraps_Text_Close, LIST_CANCEL);

    ListMenuTemplate template = sListMenuTemplate;
    template.count = trapCount + 1;
    template.maxDisplay = maxDisplay;
    template.choices = menu->menuOptions;
    template.window = &menu->primaryWindow;
    template.cursorCallback = menu->cursorCallback;
    template.printCallback = menu->printCallback;
    template.parent = menu;

    UndergroundMenu_MoveListCursorPosInBounds(menu, maxDisplay, template.count);

    menu->itemListMenu = UndergroundItemListMenu_New(&template, menu->listMenuListPos, menu->listMenuCursorPos, HEAP_ID_FIELD1, moveItemCallback, ctx->underground, FALSE);
    menu->state = UNDERGROUND_MENU_STATE_TRAPS;
}

static BOOL UndergroundMenu_HandleTrapsMenu(SysTask *sysTask, void *data)
{
    UndergroundMenu *menu = data;

    u32 input = UndergroundItemListMenu_ProcessInput(menu->itemListMenu);

    u16 listPos, cursorPos;
    ListMenu_GetListAndCursorPos(menu->itemListMenu->listMenu, &listPos, &cursorPos);
    CommManUnderground_StoreCursorAndListPos(UNDERGROUND_MENU_KEY_TRAPS, cursorPos, listPos);

    if (CommSys_CheckError()) {
        input = LIST_CANCEL;
    }

    // make sure we have the right type of -2
    if (input == MENU_CANCELED) {
        input = LIST_CANCEL;
    }

    switch (input) {
    case LIST_NOTHING_CHOSEN:
        UndergroundMenu_UpdateScrollPrompts(menu, listPos, ListMenu_GetAttribute(menu->itemListMenu->listMenu, LIST_MENU_COUNT), UNDERGROUND_MENU_MAX_DISPLAY);
        return FALSE;
    case LIST_CANCEL:
        UndergroundMenu_ReturnToStartMenu(menu);
        break;
    default:
        UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetItemNameTextPrinter());

        ctx->selectedSlot = input;
        ctx->selectedID = UndergroundMenu_GetTrapAtSlot(input, menu);

        if (ctx->selectedID == TRAP_DIGGER_DRILL) {
            ov23_0224CD68();
            menu->state = UNDERGROUND_MENU_STATE_CLOSE_LEAVE_PAUSED;
        } else {
            UndergroundMenu_EraseCurrentMenu(menu);
            UndergroundMenu_InitItemSelectedMenu(menu, UNDERGROUND_MENU_SELECTED_SPHERE_TRAP);

            menu->state = UNDERGROUND_MENU_STATE_TRAP_SELECTED;

            UndergroundTextPrinter_SetUndergroundTrapNameWithIndex(CommManUnderground_GetCommonTextPrinter(), 2, ctx->selectedID);
            UndergroundTextPrinter_PrintTextInstant(CommManUnderground_GetCommonTextPrinter(), UndergroundCommon_Text_WhatWouldYouLikeToDo, FALSE, NULL);
        }
        ScrollPrompts_SetDrawFlag(menu->scrollPrompts, SCROLL_PROMPT_TOP_ARROW, FALSE);
        ScrollPrompts_SetDrawFlag(menu->scrollPrompts, SCROLL_PROMPT_BOTTOM_ARROW, FALSE);
        break;
    }

    return TRUE;
}

static BOOL UndergroundMenu_HandleTrapSelectedMenu(SysTask *sysTask, void *data)
{
    UndergroundMenu *menu = data;

    u32 input = ListMenu_ProcessInput(menu->itemSelectedMenu);
    u16 prevPos = menu->itemSelectedMenuCursorPos;

    ListMenu_CalcTrueCursorPos(menu->itemSelectedMenu, &menu->itemSelectedMenuCursorPos);

    if (prevPos != menu->itemSelectedMenuCursorPos) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    switch (input) {
    case LIST_NOTHING_CHOSEN:
        return FALSE;
    case LIST_CANCEL:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        UndergroundMenu_CloseItemSelectedMenu(menu);
        UndergroundMenu_OpenTrapsMenu(menu);
        menu->state = UNDERGROUND_MENU_STATE_TRAPS;
        break;
    default:
        UndergroundMenu_CloseItemSelectedMenu(menu);

        if (input == UNDERGROUND_MENU_OPTION_BURY) {
            Underground_SendPlacedTrap(UndergroundMenu_GetTrapAtSlot(ctx->selectedSlot, menu));
            Sound_PlayEffect(SEQ_SE_DP_SUTYA);
            menu->state = UNDERGROUND_MENU_STATE_CLOSE_LEAVE_PAUSED;
        } else if (input == UNDERGROUND_MENU_OPTION_TRASH) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);

            UndergroundMenu_RemoveSelectedTrap(ctx->selectedID);
            UndergroundTextPrinter_SetUndergroundTrapNameWithIndex(CommManUnderground_GetCommonTextPrinter(), 2, ctx->selectedID);
            UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), UndergroundCommon_Text_ThrewAwayTheItem, FALSE, NULL);

            menu->openMenuFn = (void *)UndergroundMenu_OpenTrapsMenu;
            menu->nextState = UNDERGROUND_MENU_STATE_TRAPS;
            menu->state = UNDERGROUND_MENU_STATE_CHANGE_STATE_AFTER_TEXT;
        }
        break;
    }

    return TRUE;
}

void UndergroundMenu_RemoveSelectedSphere(int sphereType)
{
    GF_ASSERT(ctx->selectedID == sphereType);
    Underground_RemoveSphereAtSlot(ctx->underground, ctx->selectedSlot);
}

static void UndergroundMenu_PrintSphereDescription(ListMenu *listMenu, u32 index, u8 onInit)
{
    UndergroundMenu *menu = (UndergroundMenu *)ListMenu_GetAttribute(listMenu, LIST_MENU_PARENT);
    GetItemFunc getSphereType = menu->getItem;
    int bankEntry;
    int sphereType = getSphereType(index, menu);

    if (index == LIST_CANCEL) {
        bankEntry = UndergroundItems_Text_CloseDescription;
    } else {
        bankEntry = UNDERGROUND_ITEM_DESCRIPTIONS_START - 1 + sphereType;
    }

    UndergroundTextPrinter_PrintTextInstant(CommManUnderground_GetItemNameTextPrinter(), bankEntry, FALSE, NULL);
}

void ov23_02250184(UndergroundMenu *menu)
{
    menu->getItemCount = UndergroundMenu_GetSphereCount;
    menu->getItem = UndergroundMenu_GetSphereTypeAtSlot;
    menu->getSphereSize = UndergroundMenu_GetSphereSizeAtSlot;
    menu->cursorCallback = UndergroundMenu_PrintSphereDescription;

    UndergroundMenu_InitSpheresMenu(menu, Underground_MoveSphereInInventory);
}

static void UndergroundMenu_OpenSpheresMenu(UndergroundMenu *menu)
{
    menu->listMenuCursorPos = CommManUnderground_GetStoredCursorPos(UNDERGROUND_MENU_KEY_SPHERES);
    menu->listMenuListPos = CommManUnderground_GetStoredListPos(UNDERGROUND_MENU_KEY_SPHERES);
    menu->getItemCount = UndergroundMenu_GetSphereCount;
    menu->getItem = UndergroundMenu_GetSphereTypeAtSlot;
    menu->getSphereSize = UndergroundMenu_GetSphereSizeAtSlot;
    menu->cursorCallback = UndergroundMenu_PrintSphereDescription;
    menu->itemSelectedMenuCursorPos = menu->listMenuCursorPos;

    UndergroundMenu_InitSpheresMenu(menu, Underground_MoveSphereInInventory);
}

static void UndergroundMenu_InitSpheresMenu(UndergroundMenu *menu, MoveItemCallback moveItemCallback)
{
    GetItemCountFunc getSphereCount = menu->getItemCount;
    GetItemFunc getSphereType = menu->getItem;
    GetSphereSizeFunc getSphereSize = menu->getSphereSize;
    int sphereCount = getSphereCount(menu);
    int maxDisplay = UNDERGROUND_MENU_MAX_DISPLAY;

    UndergroundMenu_EraseCurrentMenu(menu);
    UndergroundTextPrinter_ChangeMessageLoaderBank(CommManUnderground_GetItemNameTextPrinter(), TEXT_BANK_UNDERGROUND_ITEMS, MSG_LOADER_PRELOAD_ENTIRE_BANK);

    menu->menuOptions = StringList_New(sphereCount + 1, HEAP_ID_FIELD1);

    Window_Add(menu->fieldSystem->bgConfig, &menu->primaryWindow, BG_LAYER_MAIN_3, 19, 3, 12, (6 * 2), 13, ((1024 - (18 + 12) - 9 - 11 * 22) - 12 * (6 * 2)));
    Window_DrawStandardFrame(&menu->primaryWindow, TRUE, 1024 - (18 + 12) - 9, 11);

    MessageLoader *loader = UndergroundTextPrinter_GetMessageLoader(CommManUnderground_GetItemNameTextPrinter());

    for (int i = 0; i < sphereCount; i++) {
        StringTemplate_SetUndergroundItemName(menu->template, 2, getSphereType(i, menu));
        StringTemplate_SetNumber(menu->template, 6, getSphereSize(i, menu), 2, PADDING_MODE_ZEROES, CHARSET_MODE_EN);
        MessageLoader_GetStrbuf(UndergroundTextPrinter_GetMessageLoader(CommManUnderground_GetCommonTextPrinter()), UndergroundCommon_Text_SphereTemplate, menu->fmtString);
        StringTemplate_Format(menu->template, menu->strbuf, menu->fmtString);
        StringList_AddFromStrbuf(menu->menuOptions, menu->strbuf, i);
    }

    StringList_AddFromMessageBank(menu->menuOptions, loader, UndergroundItems_Text_Close, LIST_CANCEL);

    ListMenuTemplate template = sListMenuTemplate;
    template.count = sphereCount + 1;
    template.maxDisplay = maxDisplay;
    template.choices = menu->menuOptions;
    template.window = &menu->primaryWindow;
    template.cursorCallback = menu->cursorCallback;
    template.parent = menu;

    UndergroundMenu_MoveListCursorPosInBounds(menu, maxDisplay, template.count);

    menu->itemListMenu = UndergroundItemListMenu_New(&template, menu->listMenuListPos, menu->listMenuCursorPos, HEAP_ID_FIELD1, moveItemCallback, ctx->underground, FALSE);
    menu->state = UNDERGROUND_MENU_STATE_SPHERES;
}

static BOOL UndergroundMenu_HandleSpheresMenu(SysTask *sysTask, void *data)
{
    UndergroundMenu *menu = data;

    u32 input = UndergroundItemListMenu_ProcessInput(menu->itemListMenu);

    u16 listPos, cursorPos;
    ListMenu_GetListAndCursorPos(menu->itemListMenu->listMenu, &listPos, &cursorPos);
    CommManUnderground_StoreCursorAndListPos(UNDERGROUND_MENU_KEY_SPHERES, cursorPos, listPos);

    if (CommSys_CheckError()) {
        input = LIST_CANCEL;
    }

    // make sure we have the right type of -2
    if (input == MENU_CANCELED) {
        input = LIST_CANCEL;
    }

    switch (input) {
    case LIST_NOTHING_CHOSEN:
        UndergroundMenu_UpdateScrollPrompts(menu, listPos, ListMenu_GetAttribute(menu->itemListMenu->listMenu, LIST_MENU_COUNT), UNDERGROUND_MENU_MAX_DISPLAY);
        return FALSE;
    case LIST_CANCEL:
        UndergroundMenu_ReturnToStartMenu(menu);
        break;
    default:
        UndergroundMenu_EraseCurrentMenu(menu);
        ctx->selectedSlot = input;
        ctx->selectedID = UndergroundMenu_GetSphereTypeAtSlot(input, menu);
        UndergroundMenu_InitItemSelectedMenu(menu, UNDERGROUND_MENU_SELECTED_SPHERE_TRAP);
        menu->state = UNDERGROUND_MENU_STATE_SPHERE_SELECTED;
        UndergroundTextPrinter_SetUndergroundItemName(CommManUnderground_GetCommonTextPrinter(), 2, ctx->selectedID);
        UndergroundTextPrinter_PrintTextInstant(CommManUnderground_GetCommonTextPrinter(), UndergroundCommon_Text_WhatWouldYouLikeToDo, FALSE, NULL);
        ScrollPrompts_SetDrawFlag(menu->scrollPrompts, SCROLL_PROMPT_TOP_ARROW, FALSE);
        ScrollPrompts_SetDrawFlag(menu->scrollPrompts, SCROLL_PROMPT_BOTTOM_ARROW, FALSE);
        break;
    }

    return TRUE;
}

static BOOL UndergroundMenu_HandleSphereSelectedMenu(SysTask *sysTask, void *data)
{
    UndergroundMenu *menu = data;

    u32 input = ListMenu_ProcessInput(menu->itemSelectedMenu);
    u16 prevPos = menu->itemSelectedMenuCursorPos;

    ListMenu_CalcTrueCursorPos(menu->itemSelectedMenu, &menu->itemSelectedMenuCursorPos);

    if (prevPos != menu->itemSelectedMenuCursorPos) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    switch (input) {
    case LIST_NOTHING_CHOSEN:
        return FALSE;
    case LIST_CANCEL:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        UndergroundMenu_CloseItemSelectedMenu(menu);
        UndergroundMenu_OpenSpheresMenu(menu);
        menu->state = UNDERGROUND_MENU_STATE_SPHERES;
        break;
    default:
        UndergroundMenu_CloseItemSelectedMenu(menu);

        if (input == UNDERGROUND_MENU_OPTION_BURY) {
            int netId = CommSys_CurNetId();
            int x = CommPlayer_GetXInFrontOfPlayer(netId);
            int z = CommPlayer_GetZInFrontOfPlayer(netId);

            UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetItemNameTextPrinter());
            UndergroundSpheres_TryBurySphere(ctx->selectedID, UndergroundMenu_GetSphereSizeAtSlot(ctx->selectedSlot, menu), x, z);
        } else if (input == UNDERGROUND_MENU_OPTION_TRASH) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            UndergroundMenu_RemoveSelectedSphere(ctx->selectedID);
            UndergroundTextPrinter_SetUndergroundItemName(CommManUnderground_GetCommonTextPrinter(), 2, ctx->selectedID);
            UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), UndergroundCommon_Text_ThrewAwayTheItem, FALSE, NULL);
        }

        menu->openMenuFn = (void *)UndergroundMenu_OpenSpheresMenu;
        menu->nextState = UNDERGROUND_MENU_STATE_SPHERES;
        menu->state = UNDERGROUND_MENU_STATE_CHANGE_STATE_AFTER_TEXT;

        break;
    }

    return TRUE;
}

void UndergroundMenu_PrintTreasureDescription(ListMenu *listMenu, u32 index, u8 onInit)
{
    UndergroundMenu *menu = (UndergroundMenu *)ListMenu_GetAttribute(listMenu, LIST_MENU_PARENT);
    GetItemFunc getTreasure = menu->getItem;
    int bankEntry = index;
    int treasureID = getTreasure(index, menu);

    if (index == LIST_CANCEL) {
        bankEntry = UndergroundItems_Text_CloseDescription;
    } else {
        bankEntry = UNDERGROUND_ITEM_DESCRIPTIONS_START - 1 + treasureID;
    }

    UndergroundTextPrinter_PrintTextInstant(CommManUnderground_GetItemNameTextPrinter(), bankEntry, FALSE, NULL);
}

void ov23_02250578(UndergroundMenu *menu)
{
    menu->getItemCount = UndergroundMenu_GetTreasureCount;
    menu->getItem = UndergroundMenu_GetTreasureAtSlot;

    UndergroundMenu_InitTreasuresMenu(menu, NULL);
}

void UndergroundMenu_OpenTreasuresMenu(UndergroundMenu *menu)
{
    menu->listMenuCursorPos = CommManUnderground_GetStoredCursorPos(UNDERGROUND_MENU_KEY_TREASURES);
    menu->listMenuListPos = CommManUnderground_GetStoredListPos(UNDERGROUND_MENU_KEY_TREASURES);
    menu->getItemCount = UndergroundMenu_GetTreasureCount;
    menu->getItem = UndergroundMenu_GetTreasureAtSlot;
    menu->cursorCallback = UndergroundMenu_PrintTreasureDescription;
    menu->itemSelectedMenuCursorPos = menu->listMenuCursorPos;

    UndergroundMenu_InitTreasuresMenu(menu, Underground_MoveTreasureInInventory);
}

static void UndergroundMenu_InitTreasuresMenu(UndergroundMenu *menu, MoveItemCallback moveItemCallback)
{
    GetItemCountFunc getTreasureCount = menu->getItemCount;
    GetItemFunc getTreasure = menu->getItem;
    int treasureCount = getTreasureCount(menu);
    int maxDisplay = UNDERGROUND_MENU_MAX_DISPLAY;

    UndergroundMenu_EraseCurrentMenu(menu);
    UndergroundTextPrinter_ChangeMessageLoaderBank(CommManUnderground_GetItemNameTextPrinter(), TEXT_BANK_UNDERGROUND_ITEMS, MSG_LOADER_PRELOAD_ENTIRE_BANK);

    menu->menuOptions = StringList_New(treasureCount + 1, HEAP_ID_FIELD1);

    Window_Add(menu->fieldSystem->bgConfig, &menu->primaryWindow, BG_LAYER_MAIN_3, 19, 3, 12, (6 * 2), 13, ((1024 - (18 + 12) - 9 - 11 * 22) - 12 * (6 * 2)));
    Window_DrawStandardFrame(&menu->primaryWindow, TRUE, 1024 - (18 + 12) - 9, 11);

    MessageLoader *loader = UndergroundTextPrinter_GetMessageLoader(CommManUnderground_GetItemNameTextPrinter());

    for (int i = 0; i < treasureCount; i++) {
        StringList_AddFromMessageBank(menu->menuOptions, loader, getTreasure(i, menu), i);
    }

    StringList_AddFromMessageBank(menu->menuOptions, loader, UndergroundItems_Text_Close, LIST_CANCEL);

    ListMenuTemplate template = sListMenuTemplate;
    template.count = treasureCount + 1;
    template.maxDisplay = maxDisplay;
    template.choices = menu->menuOptions;
    template.window = &menu->primaryWindow;
    template.cursorCallback = menu->cursorCallback;
    template.parent = menu;

    UndergroundMenu_MoveListCursorPosInBounds(menu, maxDisplay, template.count);

    menu->itemListMenu = UndergroundItemListMenu_New(&template, menu->listMenuListPos, menu->listMenuCursorPos, HEAP_ID_FIELD1, moveItemCallback, ctx->underground, FALSE);
    menu->state = UNDERGROUND_MENU_STATE_TREASURES;
}

static BOOL UndergroundMenu_HandleTreasuresMenu(SysTask *sysTask, void *data)
{
    UndergroundMenu *menu = data;

    u32 input = UndergroundItemListMenu_ProcessInput(menu->itemListMenu);

    u16 listPos, cursorPos;
    ListMenu_GetListAndCursorPos(menu->itemListMenu->listMenu, &listPos, &cursorPos);
    CommManUnderground_StoreCursorAndListPos(UNDERGROUND_MENU_KEY_TREASURES, cursorPos, listPos);

    if (CommSys_CheckError()) {
        input = LIST_CANCEL;
    }

    // make sure we have the right type of -2
    if (input == MENU_CANCELED) {
        input = LIST_CANCEL;
    }

    switch (input) {
    case LIST_NOTHING_CHOSEN:
        UndergroundMenu_UpdateScrollPrompts(menu, listPos, ListMenu_GetAttribute(menu->itemListMenu->listMenu, LIST_MENU_COUNT), UNDERGROUND_MENU_MAX_DISPLAY);
        return FALSE;
    case LIST_CANCEL:
        UndergroundMenu_ReturnToStartMenu(menu);
        break;
    default:
        UndergroundMenu_EraseCurrentMenu(menu);

        ctx->selectedSlot = input;
        ctx->selectedID = UndergroundMenu_GetTreasureAtSlot(input, menu);

        UndergroundMenu_InitItemSelectedMenu(menu, UNDERGROUND_MENU_SELECTED_TREASURE);
        UndergroundTextPrinter_SetUndergroundItemName(CommManUnderground_GetCommonTextPrinter(), 2, ctx->selectedID);
        UndergroundTextPrinter_PrintTextInstant(CommManUnderground_GetCommonTextPrinter(), UndergroundCommon_Text_WhatWouldYouLikeToDo, FALSE, NULL);

        menu->state = UNDERGROUND_MENU_STATE_TREASURE_SELECTED;

        ScrollPrompts_SetDrawFlag(menu->scrollPrompts, SCROLL_PROMPT_TOP_ARROW, FALSE);
        ScrollPrompts_SetDrawFlag(menu->scrollPrompts, SCROLL_PROMPT_BOTTOM_ARROW, FALSE);
        break;
    }

    return TRUE;
}

static BOOL UndergroundMenu_HandleTreasureSelectedMenu(SysTask *sysTask, void *data)
{
    UndergroundMenu *menu = data;

    u32 input = ListMenu_ProcessInput(menu->itemSelectedMenu);
    u16 prevPos = menu->itemSelectedMenuCursorPos;

    ListMenu_CalcTrueCursorPos(menu->itemSelectedMenu, &menu->itemSelectedMenuCursorPos);

    if (prevPos != menu->itemSelectedMenuCursorPos) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    switch (input) {
    case LIST_NOTHING_CHOSEN:
        return FALSE;
    case LIST_CANCEL:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        UndergroundMenu_CloseItemSelectedMenu(menu);
        UndergroundMenu_OpenTreasuresMenu(menu);
        menu->state = UNDERGROUND_MENU_STATE_TREASURES;
        break;
    default:
        UndergroundMenu_CloseItemSelectedMenu(menu);

        if (input == UNDERGROUND_MENU_OPTION_PUT_IN_BAG) {
            int item = Underground_ConvertTreasureToBagItem(ctx->selectedID);
            Bag *bag = SaveData_GetBag(menu->fieldSystem->saveData);

            Sound_PlayEffect(SEQ_SE_CONFIRM);

            if (Bag_TryAddItem(bag, item, 1, HEAP_ID_FIELD1)) {
                Underground_RemoveTreasureAtSlot(ctx->underground, ctx->selectedSlot);
                UndergroundTextPrinter_SetUndergroundItemName(CommManUnderground_GetCommonTextPrinter(), 0, ctx->selectedID);

                if ((ctx->selectedID == MINING_TREASURE_REVIVE) || ctx->selectedID == MINING_TREASURE_MAX_REVIVE) {
                    UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), UndergroundCommon_Text_PlacedInMedicinePocket, FALSE, NULL);
                } else {
                    UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), UndergroundCommon_Text_PlacedInItemsPocket, FALSE, NULL);
                }
            } else {
                UndergroundTextPrinter_SetUndergroundItemName(CommManUnderground_GetCommonTextPrinter(), 0, ctx->selectedID);
                UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), UndergroundCommon_Text_BagIsFullCouldntPutAway, FALSE, NULL);
            }
        } else if (input == UNDERGROUND_MENU_OPTION_TRASH) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            Underground_RemoveTreasureAtSlot(ctx->underground, ctx->selectedSlot);

            UndergroundTextPrinter_SetUndergroundItemName(CommManUnderground_GetCommonTextPrinter(), 2, ctx->selectedID);
            UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), UndergroundCommon_Text_ThrewAwayTheItem, FALSE, NULL);
        }

        menu->openMenuFn = (void *)UndergroundMenu_OpenTreasuresMenu;
        menu->nextState = UNDERGROUND_MENU_STATE_TREASURES;
        menu->state = UNDERGROUND_MENU_STATE_CHANGE_STATE_AFTER_TEXT;

        break;
    }

    return TRUE;
}

static void UndergroundMenu_CloseCallback(UndergroundMenu *menu)
{
    menu->state = UNDERGROUND_MENU_STATE_CLOSE;
}

static void UndergroundMenu_GoUpCallback(UndergroundMenu *menu)
{
    UndergroundMenu_EraseCurrentMenu(menu);

    if (Underground_AreCoordinatesInSecretBase(Player_GetXPos(menu->fieldSystem->playerAvatar), Player_GetZPos(menu->fieldSystem->playerAvatar))) {
        UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), UndergroundCommon_Text_CantReturnFromSecretBase, FALSE, NULL);
        menu->state = UNDERGROUND_MENU_STATE_CLOSE_AFTER_TEXT;
    } else {
        menu->unk_28C = UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), UndergroundCommon_Text_WouldYouLikeToReturnToSurface, FALSE, NULL);
        menu->state = UNDERGROUND_MENU_STATE_GO_UP_SELECTED;
    }
}

static void UndergroundMenu_ConfirmReturnToSurface(SysTask *sysTask, void *data)
{
    UndergroundMenu *menu = data;

    if (UndergroundTextPrinter_IsPrinterActive(CommManUnderground_GetCommonTextPrinter()) == FALSE) {
        menu->yesNoMenu = Menu_MakeYesNoChoice(menu->fieldSystem->bgConfig, &sWindowTemplate, 1024 - (18 + 12) - 9, 11, HEAP_ID_FIELD1);
        menu->state = UNDERGROUND_MENU_STATE_WAIT_FOR_CONFIRM;
    }
}

static void UndergroundMenu_CheckForReturnYesNo(SysTask *sysTask, void *data)
{
    UndergroundMenu *menu = data;
    int result = Menu_ProcessInputAndHandleExit(menu->yesNoMenu, HEAP_ID_FIELD1);

    if (result == MENU_NOTHING_CHOSEN) {
        return;
    } else if (result == 0) {
        menu->state = UNDERGROUND_MENU_STATE_RETURN_TO_SURFACE;
    } else {
        UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetCommonTextPrinter());
        UndergroundMenu_ReturnToStartMenu(menu);
    }

    menu->yesNoMenu = NULL;
}

static void UndergroundMenu_ReturnToStartMenuCallback(void *data)
{
    UndergroundMenu *menu = data;
    UndergroundMenu_ReturnToStartMenu(menu);
}

static void UndergroundMenu_OpenTrainerRecords(UndergroundMenu *menu)
{
    UndergroundMenu_EraseCurrentMenu(menu);
    ov23_02253968();
    ov23_ShowTrainerRecord(menu->fieldSystem->bgConfig, SaveData_GetTrainerInfo(FieldSystem_GetSaveData(menu->fieldSystem)), UndergroundMenu_ReturnToStartMenuCallback, menu, TRUE);
    menu->state = UNDERGROUND_MENU_STATE_TRAINER_RECORDS;
}

void UndergroundMenu_StartHoldingFlag(ExitCallback exitCallback, FieldSystem *fieldSystem)
{
    UndergroundMenu *menu = Heap_Alloc(HEAP_ID_FIELD1, sizeof(UndergroundMenu));

    MI_CpuFill8(menu, 0, sizeof(UndergroundMenu));

    menu->fieldSystem = fieldSystem;
    menu->exitCallback = exitCallback;
    menu->state = UNDERGROUND_MENU_STATE_INIT;
    menu->strbuf = Strbuf_Init(50 * 2, HEAP_ID_FIELD1);
    menu->fmtString = Strbuf_Init(50 * 2, HEAP_ID_FIELD1);
    menu->template = StringTemplate_Default(HEAP_ID_FIELD1);

    CommPlayerMan_PauseFieldSystem();

    UndergroundTextPrinter_PrintText(CommManUnderground_GetCaptureFlagTextPrinter(), UndergroundCaptureFlag_Text_PromptThrowAwayFlag, FALSE, NULL);
    menu->sysTask = SysTask_Start(ov23_02250B9C, menu, 10000);
    ov23_022431EC(menu, menu->sysTask, ov23_02251270);
}

static void UndergroundMenu_ConfirmThrowAwayFlag(UndergroundMenu *menu)
{
    if (UndergroundTextPrinter_IsPrinterActive(CommManUnderground_GetCaptureFlagTextPrinter()) == FALSE) {
        menu->yesNoMenu = Menu_MakeYesNoChoice(menu->fieldSystem->bgConfig, &sWindowTemplate, 1024 - (18 + 12) - 9, 11, HEAP_ID_FIELD1);
        menu->state = UNDERGROUND_MENU_STATE_START;
    }
}

static void UndergroundMenu_CheckForThrowAwayYesNo(UndergroundMenu *menu)
{
    int input = Menu_ProcessInputAndHandleExit(menu->yesNoMenu, HEAP_ID_FIELD1);

    if (input == MENU_NOTHING_CHOSEN) {
        return;
    } else if (input == 0) {
        menu->state = UNDERGROUND_MENU_STATE_CLOSE_LEAVE_PAUSED;
    } else {
        menu->state = UNDERGROUND_MENU_STATE_CLOSE;
    }

    menu->yesNoMenu = NULL;
}

static void UndergroundMenu_Free(SysTask *sysTask, UndergroundMenu *menu, BOOL leaveFieldSystemPaused)
{
    if (menu->yesNoMenu) {
        Menu_DestroyForExit(menu->yesNoMenu, HEAP_ID_FIELD1);
    }

    Strbuf_Free(menu->strbuf);
    Strbuf_Free(menu->fmtString);
    StringTemplate_Free(menu->template);

    UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetCaptureFlagTextPrinter());
    UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetCommonTextPrinter());

    if (menu->exitCallback != NULL) {
        menu->exitCallback(0);
    }

    menu->sysTask = NULL;

    if (menu->scrollPrompts) {
        ScrollPrompts_Free(menu->scrollPrompts);
    }

    Heap_Free(menu);

    if (!leaveFieldSystemPaused) {
        CommPlayerMan_ResumeFieldSystem();
    }

    SysTask_Done(sysTask);
}

static void ov23_02250B9C(SysTask *sysTask, void *data)
{
    UndergroundMenu *menu = data;

    if (!ov23_0224AEA4(CommSys_CurNetId())) {
        if (menu->state == UNDERGROUND_MENU_STATE_INIT || menu->state == UNDERGROUND_MENU_STATE_START) {
            menu->state = UNDERGROUND_MENU_STATE_CLOSE;
        }
    }

    switch (menu->state) {
    case UNDERGROUND_MENU_STATE_INIT:
        UndergroundMenu_ConfirmThrowAwayFlag(data);
        break;
    case UNDERGROUND_MENU_STATE_START:
        UndergroundMenu_CheckForThrowAwayYesNo(data);
        break;
    case UNDERGROUND_MENU_STATE_CLOSE:
        ov23_02243204();
        UndergroundMenu_Free(sysTask, data, FALSE);
        return;
    case UNDERGROUND_MENU_STATE_CLOSE_LEAVE_PAUSED:
        ov23_02243204();
        UndergroundMenu_Free(sysTask, data, TRUE);
        u8 buffer = 0;
        CommSys_SendDataFixedSize(84, &buffer);
        return;
    case UNDERGROUND_MENU_STATE_UNUSED:
        if (UndergroundTextPrinter_IsPrinterActive(CommManUnderground_GetCaptureFlagTextPrinter()) == FALSE) {
            if (JOY_NEW(PAD_BUTTON_A)) {
                menu->state = UNDERGROUND_MENU_STATE_CLOSE;
            }
        }
        break;
    }
}

void UndergroundMenu_PrintGoodDescription(ListMenu *listMenu, u32 index, u8 onInit)
{
    UndergroundMenu *menu = (UndergroundMenu *)ListMenu_GetAttribute(listMenu, LIST_MENU_PARENT);
    GetItemFunc getGood = menu->getItem;
    int bankEntry;
    int goodID = getGood(index, menu);

    if (index == LIST_CANCEL) {
        bankEntry = UndergroundGoods_Text_CloseDescription;
    } else {
        bankEntry = UNDERGROUND_GOOD_DESCRIPTIONS_START + goodID - 1;
    }

    UndergroundTextPrinter_PrintTextInstant(CommManUnderground_GetItemNameTextPrinter(), bankEntry, FALSE, NULL);
}

static void UndergroundMenu_ColorPlacedGoods(ListMenu *listMenu, u32 index, u8 yOffset)
{
    UndergroundMenu *menu = (UndergroundMenu *)ListMenu_GetAttribute(listMenu, LIST_MENU_PARENT);
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(menu->fieldSystem));

    if (!Underground_IsGoodAtSlotPlacedInBase(underground, index)) {
        ListMenu_SetAltTextColors(listMenu, 1, 15, 2);
    } else {
        ListMenu_SetAltTextColors(listMenu, 2, 15, 2);
    }
}

void ov23_02250CB0(UndergroundMenu *menu)
{
    menu->getItemCount = UndergroundMenu_GetGoodsCountBag;
    menu->getItem = UndergroundMenu_GetGoodAtSlotBag;
    menu->printCallback = NULL;

    UndergroundMenu_InitGoodsMenu(menu, NULL);
}

void UndergroundMenu_OpenGoodsMenu(UndergroundMenu *menu)
{
    menu->listMenuCursorPos = CommManUnderground_GetStoredCursorPos(UNDERGROUND_MENU_KEY_GOODS);
    menu->listMenuListPos = CommManUnderground_GetStoredListPos(UNDERGROUND_MENU_KEY_GOODS);
    menu->getItemCount = UndergroundMenu_GetGoodsCountBag;
    menu->getItem = UndergroundMenu_GetGoodAtSlotBag;
    menu->cursorCallback = UndergroundMenu_PrintGoodDescription;
    menu->printCallback = NULL;
    menu->itemSelectedMenuCursorPos = menu->listMenuCursorPos;

    UndergroundMenu_InitGoodsMenu(menu, Underground_MoveGoodBag);
}

void ov23_02250D2C(UndergroundMenu *menu)
{
    menu->getItemCount = UndergroundMenu_GetGoodsCountBag;
    menu->getItem = UndergroundMenu_GetGoodAtSlotBag;
    menu->cursorCallback = UndergroundMenu_PrintGoodDescription;
    menu->printCallback = NULL;

    UndergroundMenu_InitGoodsMenu(menu, Underground_MoveGoodBag);
}

void ov23_02250D5C(UndergroundMenu *menu)
{
    menu->getItemCount = UndergroundMenu_GetGoodsCountPC;
    menu->getItem = UndergroundMenu_GetGoodAtSlotPC;
    menu->cursorCallback = UndergroundMenu_PrintGoodDescription;
    menu->printCallback = UndergroundMenu_ColorPlacedGoods;

    UndergroundMenu_InitGoodsMenu(menu, Underground_MoveGoodPC);
}

static void UndergroundMenu_InitGoodsMenu(UndergroundMenu *menu, MoveItemCallback moveItemCallback)
{
    GetItemCountFunc getGoodsCount = menu->getItemCount;
    GetItemFunc getGood = menu->getItem;
    int goodsCount = getGoodsCount(menu);
    int maxDisplay = UNDERGROUND_MENU_MAX_DISPLAY;

    UndergroundMenu_EraseCurrentMenu(menu);
    UndergroundTextPrinter_ChangeMessageLoaderBank(CommManUnderground_GetItemNameTextPrinter(), TEXT_BANK_UNDERGROUND_GOODS, MSG_LOADER_PRELOAD_ENTIRE_BANK);

    menu->menuOptions = StringList_New(goodsCount + 1, HEAP_ID_FIELD1);

    Window_Add(menu->fieldSystem->bgConfig, &menu->primaryWindow, BG_LAYER_MAIN_3, 19, 3, 12, (6 * 2), 13, ((1024 - (18 + 12) - 9 - 11 * 22) - 12 * (6 * 2)));
    Window_DrawStandardFrame(&menu->primaryWindow, TRUE, 1024 - (18 + 12) - 9, 11);

    MessageLoader *loader = UndergroundTextPrinter_GetMessageLoader(CommManUnderground_GetItemNameTextPrinter());

    for (int i = 0; i < goodsCount; i++) {
        StringList_AddFromMessageBank(menu->menuOptions, loader, getGood(i, menu), i);
    }

    StringList_AddFromMessageBank(menu->menuOptions, loader, UndergroundGoods_Text_Close, LIST_CANCEL);

    ListMenuTemplate template = sListMenuTemplate;
    template.count = goodsCount + 1;
    template.maxDisplay = maxDisplay;
    template.printCallback = menu->printCallback;
    template.choices = menu->menuOptions;
    template.window = &menu->primaryWindow;
    template.cursorCallback = menu->cursorCallback;
    template.parent = menu;

    UndergroundMenu_MoveListCursorPosInBounds(menu, maxDisplay, template.count);

    menu->itemListMenu = UndergroundItemListMenu_New(&template, menu->listMenuListPos, menu->listMenuCursorPos, HEAP_ID_FIELD1, moveItemCallback, ctx->underground, FALSE);
    menu->state = UNDERGROUND_MENU_STATE_GOODS;
}

static BOOL UndergroundMenu_HandleGoodsMenu(SysTask *sysTask, void *data)
{
    UndergroundMenu *menu = data;

    u32 input = UndergroundItemListMenu_ProcessInput(menu->itemListMenu);

    u16 listPos, cursorPos;
    ListMenu_GetListAndCursorPos(menu->itemListMenu->listMenu, &listPos, &cursorPos);
    CommManUnderground_StoreCursorAndListPos(UNDERGROUND_MENU_KEY_GOODS, cursorPos, listPos);

    if (CommSys_CheckError()) {
        input = LIST_CANCEL;
    }

    // make sure we have the right type of -2
    if (input == MENU_CANCELED) {
        input = LIST_CANCEL;
    }

    switch (input) {
    case LIST_NOTHING_CHOSEN:
        UndergroundMenu_UpdateScrollPrompts(menu, listPos, ListMenu_GetAttribute(menu->itemListMenu->listMenu, LIST_MENU_COUNT), UNDERGROUND_MENU_MAX_DISPLAY);
        return FALSE;
    case LIST_CANCEL:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        UndergroundMenu_ReturnToStartMenu(menu);
        break;
    default:
        UndergroundMenu_EraseCurrentMenu(menu);

        ctx->selectedSlot = input;
        ctx->selectedID = UndergroundMenu_GetGoodAtSlotBag(input, menu);

        UndergroundMenu_InitItemSelectedMenu(menu, UNDERGROUND_MENU_SELECTED_GOOD);
        UndergroundTextPrinter_SetUndergroundGoodsNameWithIndex(CommManUnderground_GetCommonTextPrinter(), 2, ctx->selectedID);
        UndergroundTextPrinter_PrintTextInstant(CommManUnderground_GetCommonTextPrinter(), UndergroundCommon_Text_WhatWouldYouLikeToDo, FALSE, NULL);

        menu->state = UNDERGROUND_MENU_STATE_GOOD_SELECTED;

        ScrollPrompts_SetDrawFlag(menu->scrollPrompts, SCROLL_PROMPT_TOP_ARROW, FALSE);
        ScrollPrompts_SetDrawFlag(menu->scrollPrompts, SCROLL_PROMPT_BOTTOM_ARROW, FALSE);
        break;
    }

    return TRUE;
}

static BOOL UndergroundMenu_HandleGoodSelectedMenu(SysTask *sysTask, void *data)
{
    UndergroundMenu *menu = data;

    u32 input = ListMenu_ProcessInput(menu->itemSelectedMenu);
    u16 prevPos = menu->itemSelectedMenuCursorPos;

    ListMenu_CalcTrueCursorPos(menu->itemSelectedMenu, &menu->itemSelectedMenuCursorPos);

    if (prevPos != menu->itemSelectedMenuCursorPos) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    switch (input) {
    case LIST_NOTHING_CHOSEN:
        return FALSE;
    case LIST_CANCEL:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        UndergroundMenu_CloseItemSelectedMenu(menu);
        UndergroundMenu_OpenGoodsMenu(menu);
        menu->state = UNDERGROUND_MENU_STATE_GOODS;
        break;
    default:
        UndergroundMenu_CloseItemSelectedMenu(menu);

        if (input == UNDERGROUND_MENU_OPTION_TRASH) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            Underground_RemoveGoodAtSlotBag(ctx->underground, ctx->selectedSlot);
            UndergroundTextPrinter_SetUndergroundGoodsNameWithIndex(CommManUnderground_GetCommonTextPrinter(), 2, ctx->selectedID);
            UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), UndergroundCommon_Text_ThrewAwayTheItem, FALSE, NULL);
        }

        menu->openMenuFn = (void *)UndergroundMenu_OpenGoodsMenu;
        menu->nextState = UNDERGROUND_MENU_STATE_GOODS;
        menu->state = UNDERGROUND_MENU_STATE_CHANGE_STATE_AFTER_TEXT;

        break;
    }

    return TRUE;
}

void UndergroundMenu_ExitGiftMenu(void *data, u32 input)
{
    UndergroundMenu *menu = data;

    UndergroundMenu_EraseCurrentMenu(menu);
    ov23_02242FBC();
    ov23_022535EC();
    TrapRadar_Exit();
    ov23_02241364();
    SphereRadar_Exit();

    if (menu->unk_270) {
        ov23_02253D10(menu->unk_270);
    }

    if (menu->yesNoMenu) {
        Menu_DestroyForExit(menu->yesNoMenu, HEAP_ID_FIELD1);
    }

    UndergroundMenu_CloseItemSelectedMenu(menu);

    if (menu->scrollPrompts) {
        ScrollPrompts_Free(menu->scrollPrompts);
    }

    if (menu->exitCallback != NULL) {
        ctx->selectedSlot = input;
        ctx->selectedID = UndergroundMenu_GetGoodAtSlotBag(input, menu);
        menu->exitCallback(0);
        menu->exitCallback = NULL;
    }

    if (menu->strbuf) {
        Strbuf_Free(menu->strbuf);
    }

    if (menu->fmtString) {
        Strbuf_Free(menu->fmtString);
    }

    if (menu->template) {
        StringTemplate_Free(menu->template);
    }

    if (menu->sysTask) {
        SysTask_Done(menu->sysTask);
    }

    Heap_Free(menu);
}

static BOOL UndergroundMenu_HandleGiftMenu(SysTask *sysTask, void *data)
{
    UndergroundMenu *menu = data;
    u32 input = UndergroundItemListMenu_ProcessInput(menu->itemListMenu);

    if (CommSys_CheckError()) {
        input = LIST_CANCEL;
    }

    // make sure we have the right type of -2
    if (input == MENU_CANCELED) {
        input = LIST_CANCEL;
    }

    switch (input) {
    case LIST_NOTHING_CHOSEN:
        return FALSE;
    case LIST_CANCEL:
        if (menu->exitCallback != NULL) {
            ctx->selectedSlot = input;
            ctx->selectedID = 0;
            menu->exitCallback(ctx->selectedID);
            menu->exitCallback = NULL;
        }

        UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetItemNameTextPrinter());
        UndergroundMenu_ExitGiftMenu(menu, input);
        ov23_02243204();
        return TRUE;
    default:

        if (menu->exitCallback != NULL) {
            ctx->selectedSlot = input;
            ctx->selectedID = UndergroundMenu_GetGoodAtSlotBag(input, menu);
            menu->exitCallback(ctx->selectedID);
            menu->exitCallback = NULL;
        }

        UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetItemNameTextPrinter());
        UndergroundMenu_ExitGiftMenu(menu, input);
        ov23_02243204();
        return TRUE;
        break;
    }

    return TRUE;
}

void *UndergroundMenu_StartGiftMenu(ExitCallback exitCallback, FieldSystem *fieldSystem)
{
    UndergroundMenu *menu = Heap_Alloc(HEAP_ID_FIELD1, sizeof(UndergroundMenu));

    MI_CpuFill8(menu, 0, sizeof(UndergroundMenu));

    menu->fieldSystem = fieldSystem;
    menu->exitCallback = exitCallback;
    menu->state = UNDERGROUND_MENU_STATE_INIT;
    menu->spriteCount = 0;
    menu->unk_48 = NULL;
    menu->cursorCallback = NULL;
    menu->strbuf = Strbuf_Init(50 * 2, HEAP_ID_FIELD1);
    menu->fmtString = Strbuf_Init(50 * 2, HEAP_ID_FIELD1);
    menu->template = StringTemplate_Default(HEAP_ID_FIELD1);

    UndergroundMenu_OpenGoodsMenu(menu);

    menu->state = UNDERGROUND_MENU_STATE_GIVE_GIFT;
    menu->sysTask = SysTask_Start(UndergroundMenu_Main, menu, 10000);

    ov23_022431EC(menu, menu->sysTask, ov23_02251270);
    return menu;
}

void UndergroundMenu_MoveListCursorPosInBounds(UndergroundMenu *menu, int maxDisplay, int count)
{
    if (menu->listMenuListPos + maxDisplay >= count) {
        menu->listMenuListPos = count - maxDisplay;

        if (menu->listMenuListPos < 0) {
            menu->listMenuListPos = 0;
        }
    }

    if (menu->listMenuCursorPos >= count - 1) {
        menu->listMenuCursorPos = count - 1;

        if (menu->listMenuCursorPos < 0) {
            menu->listMenuCursorPos = 0;
        }
    }
}

void ov23_02251270(SysTask *sysTask, void *param1)
{
    BrightnessController_SetScreenBrightness(0, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);
    UndergroundMenu_ExitGiftMenu(param1, LIST_CANCEL);
}
