#include "start_menu.h"

#include <nitro.h>

#include "constants/field/map_load.h"
#include "constants/field_base_tiles.h"
#include "constants/heap.h"
#include "constants/start_menu.h"
#include "generated/genders.h"
#include "generated/journal_location_events.h"
#include "generated/pokemon_data_params.h"
#include "generated/species.h"
#include "generated/text_banks.h"

#include "struct_decls/struct_0209747C_decl.h"
#include "struct_defs/sentence.h"
#include "struct_defs/struct_02097728.h"

#include "applications/bag/application.h"
#include "applications/party_menu/defs.h"
#include "applications/party_menu/main.h"
#include "applications/poffin_case/main.h"
#include "applications/pokedex/pokedex_main.h"
#include "applications/pokemon_summary_screen/main.h"
#include "applications/town_map/main.h"
#include "field/field_system.h"
#include "overlay005/fieldmap.h"
#include "overlay005/save_info_window.h"
#include "overlay005/sprite_resource_manager.h"

#include "appearance.h"
#include "bag.h"
#include "bag_context.h"
#include "bg_window.h"
#include "catching_show.h"
#include "dexmode_checker.h"
#include "evolution.h"
#include "field_bgm.h"
#include "field_move_tasks.h"
#include "field_overworld_state.h"
#include "field_system.h"
#include "field_task.h"
#include "font.h"
#include "game_records.h"
#include "gx_layers.h"
#include "heap.h"
#include "item.h"
#include "item_use_functions.h"
#include "journal.h"
#include "mail.h"
#include "map_header.h"
#include "map_object.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "party.h"
#include "player_avatar.h"
#include "pokedex.h"
#include "pokemon.h"
#include "poketch.h"
#include "render_window.h"
#include "save_player.h"
#include "savedata.h"
#include "screen_fade.h"
#include "script_manager.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_system.h"
#include "string_gf.h"
#include "string_list.h"
#include "string_template.h"
#include "system_flags.h"
#include "system_vars.h"
#include "text.h"
#include "trainer_case.h"
#include "trainer_info.h"
#include "unk_02014A84.h"
#include "unk_0202D778.h"
#include "unk_02033200.h"
#include "unk_020366A0.h"
#include "unk_0203D1B8.h"
#include "unk_020559DC.h"
#include "unk_0205B33C.h"
#include "unk_0205C22C.h"
#include "unk_0205F180.h"
#include "unk_0206B9D8.h"
#include "unk_020972FC.h"
#include "unk_0209747C.h"
#include "unk_02097624.h"
#include "vars_flags.h"

#include "res/graphics/start_menu/start_menu.naix"
#include "res/text/bank/location_names.h"
#include "res/text/bank/start_menu.h"

enum StartMenuOption {
    START_MENU_OPTION_POKEDEX = 0,
    START_MENU_OPTION_POKEMON,
    START_MENU_OPTION_BAG,
    START_MENU_OPTION_TRAINER_CASE,
    START_MENU_OPTION_SAVE,
    START_MENU_OPTION_OPTIONS,
    START_MENU_OPTION_EXIT,
    START_MENU_OPTION_CHAT,
    START_MENU_OPTION_RETIRE,
};

typedef struct {
    u16 itemID;
    u8 slot;
    u8 unk_03;
} UnkStruct_0203C540;

typedef struct MenuEvolutionData {
    u8 slot;
    u8 class;
    u16 dummy;
    u16 targetSpecies;
    int method;
} MenuEvolutionData;

typedef struct MenuOverwriteMoveData {
    u16 usedItemID;
    u16 levelUpMoveIndex;
} MenuOverwriteMoveData;

typedef struct SaveMenu {
    u8 padding[4];
    u16 result;
    u8 padding2[2];
} SaveMenu;

static StartMenu *StartMenu_New(void);
static u32 StartMenu_GetNormalHiddenOptions(FieldSystem *fieldSystem);
static u32 StartMenu_GetSafariHiddenOptions(FieldSystem *fieldSystem);
static u32 StartMenu_GetPalParkHiddenOptions(FieldSystem *fieldSystem);
static u32 StartMenu_GetBattleTowerSalonHiddenOptions(FieldSystem *fieldSystem);
static u32 StartMenu_GetUnionRoomHiddenOptions(FieldSystem *fieldSystem);
static u32 StartMenu_GetColosseumHiddenOptions(FieldSystem *fieldSystem);
static void StartMenu_InitSprites(StartMenu *menu, u8 *options, u32 optionCount, u8 gender);
static void StartMenu_FreeSprites(StartMenu *menu);
static void StartMenu_AnimateSprites(StartMenu *menu);
static void StartMenu_SetCursorPos(Sprite *sprite, u32 pos);
static void StartMenu_SetIconAnimationAndPalette(Sprite *sprite, u16 anim, u16 palette);
static void StartMenu_ChangeActiveMenuIcon(StartMenu *menu, u16 oldIndex, u16 index);
static void StartMenu_TryTransitionIconAnimationToWiggle(Sprite *sprite);
static BOOL StartMenu_Main(FieldTask *fieldTask);
static void StartMenu_InitMenu(FieldTask *fieldTask);
static BOOL StartMenu_Select(FieldTask *fieldTask);
static u32 StartMenu_MakeOptionList(StartMenu *menu, u8 *listOut);
static void StartMenu_Close(StartMenu *menu);
static void sub_0203B2EC(StartMenu *menu, FieldSystem *fieldSystem);
static void StartMenu_PrintBallCount(FieldTask *fieldTask);
static void StartMenu_EraseBallCount(FieldTask *fieldTask);
static void StartMenu_ApplicationStart(FieldTask *fieldTask);
static void StartMenu_ApplicationRun(FieldTask *fieldTask);
static BOOL StartMenu_SelectPokedex(FieldTask *fieldTask);
static BOOL StartMenu_OpenPokedex(FieldTask *fieldTask);
static BOOL StartMenu_ExitPokedex(FieldTask *fieldTask);
static BOOL StartMenu_SelectTrainerCase(FieldTask *fieldTask);
static BOOL StartMenu_TrainerCase(FieldTask *fieldTask);
static BOOL StartMenu_ExitTrainerCase(FieldTask *fieldTask);
static BOOL StartMenu_SelectOptions(FieldTask *fieldTask);
static BOOL StartMenu_Options(FieldTask *fieldTask);
static BOOL StartMenu_ExitOptions(FieldTask *fieldTask);
static BOOL StartMenu_SelectChat(FieldTask *fieldTask);
static BOOL StartMenu_Chat(FieldTask *fieldTask);
static BOOL StartMenu_ExitChat(FieldTask *fieldTask);
static BOOL StartMenu_SelectPokemon(FieldTask *fieldTask);
static BOOL StartMenu_OpenPartyMenu(FieldTask *fieldTask);
static BOOL StartMenu_SelectBag(FieldTask *fieldTask);
static BOOL StartMenu_Bag(FieldTask *fieldTask);
static BOOL StartMenu_ExitBag(FieldTask *fieldTask);
static BOOL StartMenu_SelectSave(FieldTask *fieldTask);
static void StartMenu_SaveWait(FieldTask *fieldTask);
static void StartMenu_Save(FieldTask *fieldTask);
static BOOL StartMenu_ExitSummary(FieldTask *fieldTask);
static void StartMenu_ShowBerryTag(FieldTask *fieldTask, u16 berryItemID);
static BOOL StartMenu_ExitBerryTag(FieldTask *fieldTask);
static void StartMenu_EvolveInit(FieldTask *fieldTask);
static void StartMenu_Evolve(FieldTask *fieldTask);
static BOOL StartMenu_SelectRetire(FieldTask *fieldTask);
static void sub_0203C668(FieldSystem *fieldSystem, StartMenu *menu, u8 mode);

typedef struct StartMenuAction {
    u32 bankEntry;
    void *callback;
} StartMenuAction;

// clang-format off
// `void *` is used for the `task` here to clean up the semantics of providing task functions for
// the table. As a bonus, it makes the exit action's special task-sentinel more visually prominent.
static const StartMenuAction sStartMenuActions[] = {
    [START_MENU_OPTION_POKEDEX]      = { .bankEntry = StartMenu_Text_Pokedex,        .callback = StartMenu_SelectPokedex     },
    [START_MENU_OPTION_POKEMON]      = { .bankEntry = StartMenu_Text_Pokemon,        .callback = StartMenu_SelectPokemon     },
    [START_MENU_OPTION_BAG]          = { .bankEntry = StartMenu_Text_Bag,            .callback = StartMenu_SelectBag         },
    [START_MENU_OPTION_TRAINER_CASE] = { .bankEntry = StartMenu_Text_PlayerTemplate, .callback = StartMenu_SelectTrainerCase },
    [START_MENU_OPTION_SAVE]         = { .bankEntry = StartMenu_Text_Save,           .callback = StartMenu_SelectSave        },
    [START_MENU_OPTION_OPTIONS]      = { .bankEntry = StartMenu_Text_Options,        .callback = StartMenu_SelectOptions     },
    [START_MENU_OPTION_EXIT]         = { .bankEntry = StartMenu_Text_Exit,           .callback = (void *)MENU_CANCEL         },
    [START_MENU_OPTION_CHAT]         = { .bankEntry = StartMenu_Text_Chat,           .callback = StartMenu_SelectChat        },
    [START_MENU_OPTION_RETIRE]       = { .bankEntry = StartMenu_Text_Retire,         .callback = StartMenu_SelectRetire      },
};
// clang-format on

static const SpriteTemplate sSpriteTemplates[] = {
    [CURSOR_TEMPLATE] = {
        .x = 204,
        .y = 20,
        .z = 0,
        .animIdx = ICON_ANIM_NONE,
        .priority = 1,
        .plttIdx = PALETTE_COLORED,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 0x34D8, 0x34D8, 0x34D8, 0x34D8, 0x0, 0x0 },
        .bgPriority = 0,
        .vramTransfer = FALSE,
    },
    [ICON_TEMPLATE] = {
        .x = 174,
        .y = 20,
        .z = 0,
        .animIdx = ICON_ANIM_NONE,
        .priority = 0,
        .plttIdx = PALETTE_GRAYSCALE,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 0x34D9, 0x34D8, 0x34D9, 0x34D9, 0x0, 0x0 },
        .bgPriority = 0,
        .vramTransfer = FALSE,
    },
};

static const u8 sAllPockets[] = {
    POCKET_ITEMS,
    POCKET_MEDICINE,
    POCKET_BALLS,
    POCKET_TMHMS,
    POCKET_BERRIES,
    POCKET_MAIL,
    POCKET_BATTLE_ITEMS,
    POCKET_KEY_ITEMS,
    POCKET_LIST_END,
};

const u8 gAllSummaryScreenPages[] = {
    SUMMARY_PAGE_INFO,
    SUMMARY_PAGE_MEMO,
    SUMMARY_PAGE_SKILLS,
    SUMMARY_PAGE_CONDITION,
    SUMMARY_PAGE_BATTLE_MOVES,
    SUMMARY_PAGE_CONTEST_MOVES,
    SUMMARY_PAGE_RIBBONS,
    SUMMARY_PAGE_EXIT,
    SUMMARY_PAGE_MAX,
};

static const u8 sOnlyMovePages[] = {
    SUMMARY_PAGE_BATTLE_MOVES,
    SUMMARY_PAGE_CONTEST_MOVES,
    SUMMARY_PAGE_MAX,
};

BOOL FieldSystem_IsInValidLocation(FieldSystem *fieldSystem)
{
    return MapHeader_GetMapLabelTextID(fieldSystem->location->mapId) != LocationNames_Text_MysteryZone;
}

#define HIDE_OPTION_POKEDEX      (1 << 0)
#define HIDE_OPTION_POKEMON      (1 << 1)
#define HIDE_OPTION_BAG          (1 << 2)
#define HIDE_OPTION_TRAINER_CASE (1 << 3)
#define HIDE_OPTION_SAVE         (1 << 4)
#define HIDE_OPTION_OPTIONS      (1 << 5)
#define HIDE_OPTION_EXIT         (1 << 6)
#define HIDE_OPTION_CHAT         (1 << 7)
#define HIDE_OPTION_RETIRE       (1 << 8)

void StartMenu_Open(FieldSystem *fieldSystem)
{
    StartMenu *menu = StartMenu_New();

    if (SystemFlag_CheckSafariGameActive(SaveData_GetVarsFlags(fieldSystem->saveData)) == TRUE) {
        menu->hideOptionFlags = StartMenu_GetSafariHiddenOptions(fieldSystem);
    } else if (SystemFlag_CheckInPalPark(SaveData_GetVarsFlags(fieldSystem->saveData)) == TRUE) {
        menu->hideOptionFlags = StartMenu_GetPalParkHiddenOptions(fieldSystem);
    } else if (FieldSystem_IsInBattleTowerSalon(fieldSystem) == TRUE) {
        menu->hideOptionFlags = StartMenu_GetBattleTowerSalonHiddenOptions(fieldSystem);
    } else {
        menu->hideOptionFlags = StartMenu_GetNormalHiddenOptions(fieldSystem);
    }

    menu->inUnionRoom = FALSE;

    if (sub_0205F588(fieldSystem->playerAvatar) == 1) {
        sub_0205F5E4(fieldSystem->playerAvatar, PlayerAvatar_GetDir(fieldSystem->playerAvatar));
    }

    FieldSystem_CreateTask(fieldSystem, StartMenu_Main, menu);
}

void StartMenu_OpenUnionRoom(FieldSystem *fieldSystem)
{
    StartMenu *menu = StartMenu_New();

    menu->hideOptionFlags = StartMenu_GetUnionRoomHiddenOptions(fieldSystem);
    menu->inUnionRoom = TRUE;

    if (sub_0205F588(fieldSystem->playerAvatar) == 1) {
        sub_0205F5E4(fieldSystem->playerAvatar, PlayerAvatar_GetDir(fieldSystem->playerAvatar));
    }

    FieldSystem_CreateTask(fieldSystem, StartMenu_Main, menu);
}

void StartMenu_OpenColosseum(FieldSystem *fieldSystem)
{
    StartMenu *menu = StartMenu_New();

    menu->hideOptionFlags = StartMenu_GetColosseumHiddenOptions(fieldSystem);
    menu->inUnionRoom = FALSE;

    if (sub_0205F588(fieldSystem->playerAvatar) == 1) {
        sub_0205F5E4(fieldSystem->playerAvatar, PlayerAvatar_GetDir(fieldSystem->playerAvatar));
    }

    FieldSystem_CreateTask(fieldSystem, StartMenu_Main, menu);
}

void StartMenu_OpenFromScript(FieldSystem *fieldSystem)
{
    Sound_PlayEffect(SEQ_SE_DP_WIN_OPEN);
    StartMenu *menu = StartMenu_New();

    menu->inUnionRoom = FALSE;

    if (SystemFlag_CheckSafariGameActive(SaveData_GetVarsFlags(fieldSystem->saveData)) == TRUE) {
        menu->hideOptionFlags = StartMenu_GetSafariHiddenOptions(fieldSystem);
    } else if (SystemFlag_CheckInPalPark(SaveData_GetVarsFlags(fieldSystem->saveData)) == TRUE) {
        menu->hideOptionFlags = StartMenu_GetPalParkHiddenOptions(fieldSystem);
    } else if (FieldSystem_IsInBattleTowerSalon(fieldSystem) == TRUE) {
        menu->hideOptionFlags = StartMenu_GetBattleTowerSalonHiddenOptions(fieldSystem);
    } else if (fieldSystem->mapLoadType == MAP_LOAD_TYPE_COLOSSEUM) {
        menu->hideOptionFlags = StartMenu_GetColosseumHiddenOptions(fieldSystem);
    } else if (fieldSystem->mapLoadType == MAP_LOAD_TYPE_UNION) {
        menu->hideOptionFlags = StartMenu_GetUnionRoomHiddenOptions(fieldSystem);
        menu->inUnionRoom = TRUE;
    } else {
        menu->hideOptionFlags = StartMenu_GetNormalHiddenOptions(fieldSystem);
    }

    FieldTask_InitJump(fieldSystem->task, StartMenu_Main, menu);
}

static StartMenu *StartMenu_New(void)
{
    StartMenu *menu = Heap_Alloc(HEAP_ID_FIELD2, sizeof(StartMenu));

    menu->state = START_MENU_STATE_INIT;
    menu->cursorPos = 0;
    menu->taskData = NULL;

    return menu;
}

static u32 StartMenu_GetNormalHiddenOptions(FieldSystem *fieldSystem)
{
    u32 hideFlags = 0;

    if (!Pokedex_IsObtained(SaveData_GetPokedex(fieldSystem->saveData))) {
        hideFlags |= HIDE_OPTION_POKEDEX;
    }

    if (SystemVars_GetPlayerStarter(SaveData_GetVarsFlags(fieldSystem->saveData)) == SPECIES_NONE) {
        hideFlags |= HIDE_OPTION_POKEMON;
    }

    if (!SystemFlag_CheckBagAcquired(SaveData_GetVarsFlags(fieldSystem->saveData))) {
        hideFlags |= HIDE_OPTION_BAG;
    }

    if (MapHeader_IsAmitySquare(fieldSystem->location->mapId) == TRUE) {
        hideFlags |= HIDE_OPTION_POKEMON;
        hideFlags |= HIDE_OPTION_BAG;
    }

    hideFlags |= HIDE_OPTION_CHAT;
    hideFlags |= HIDE_OPTION_RETIRE;

    return hideFlags;
}

static u32 StartMenu_GetSafariHiddenOptions(FieldSystem *fieldSystem)
{
    return HIDE_OPTION_SAVE | HIDE_OPTION_CHAT;
}

static u32 StartMenu_GetPalParkHiddenOptions(FieldSystem *fieldSystem)
{
    return HIDE_OPTION_SAVE | HIDE_OPTION_CHAT | HIDE_OPTION_BAG;
}

static u32 StartMenu_GetBattleTowerSalonHiddenOptions(FieldSystem *fieldSystem)
{
    return HIDE_OPTION_POKEDEX | HIDE_OPTION_BAG | HIDE_OPTION_SAVE | HIDE_OPTION_CHAT | HIDE_OPTION_RETIRE;
}

static u32 StartMenu_GetUnionRoomHiddenOptions(FieldSystem *fieldSystem)
{
    return HIDE_OPTION_SAVE | HIDE_OPTION_RETIRE;
}

static u32 StartMenu_GetColosseumHiddenOptions(FieldSystem *fieldSystem)
{
    return HIDE_OPTION_SAVE | HIDE_OPTION_POKEDEX | HIDE_OPTION_CHAT | HIDE_OPTION_RETIRE;
}

static BOOL StartMenu_Main(FieldTask *fieldTask)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    StartMenu *menu = FieldTask_GetEnv(fieldTask);

    switch (menu->state) {
    case START_MENU_STATE_INIT:
        MapObjectMan_PauseAllMovement(fieldSystem->mapObjMan);
        ItemUseContext_Init(fieldSystem, &menu->itemUseCtx);
        FieldMoves_SetUsableMoves(fieldSystem, &menu->fieldMoveContext);
        StartMenu_InitMenu(fieldTask);
        StartMenu_PrintBallCount(fieldTask);
        menu->state = START_MENU_STATE_SELECT;
        break;
    case START_MENU_STATE_SELECT:
        if (StartMenu_Select(fieldTask) == FALSE) {
            return FALSE;
        }
        break;
    case START_MENU_STATE_APP_START:
        StartMenu_ApplicationStart(fieldTask);
        break;
    case START_MENU_STATE_APP_RUN:
        StartMenu_ApplicationRun(fieldTask);
        break;
    case START_MENU_STATE_SAVE:
        StartMenu_Save(fieldTask);
        break;
    case START_MENU_STATE_SAVE_WAIT:
        StartMenu_SaveWait(fieldTask);
        break;
    case START_MENU_STATE_EVOLVE_INIT:
        StartMenu_EvolveInit(fieldTask);
        break;
    case START_MENU_STATE_EVOLVE:
        StartMenu_Evolve(fieldTask);
        break;
    case START_MENU_STATE_REINIT:
        if (FieldSystem_IsRunningFieldMap(fieldSystem)) {
            MapObjectMan_PauseAllMovement(fieldSystem->mapObjMan);
            StartMenu_InitMenu(fieldTask);
            StartMenu_PrintBallCount(fieldTask);
            FieldMap_FadeScreen(FADE_TYPE_BRIGHTNESS_IN);
            menu->state = START_MENU_STATE_REINIT_WAIT_FOR_FADE;
        }
        break;
    case START_MENU_STATE_8:
        if (FieldSystem_IsRunningFieldMap(fieldSystem)) {
            FieldMap_FadeScreen(FADE_TYPE_BRIGHTNESS_IN);
            menu->state = START_MENU_STATE_9;
        }
        break;
    case START_MENU_STATE_9:
        if (IsScreenFadeDone()) {
            sub_0203B2EC(menu, fieldSystem);
            Heap_Free(menu);
            MapObjectMan_UnpauseAllMovement(fieldSystem->mapObjMan);
            return TRUE;
        }
        break;
    case START_MENU_STATE_NEW_TASK:
        if (FieldSystem_IsRunningFieldMap(fieldSystem)) {
            MapObjectMan_PauseAllMovement(fieldSystem->mapObjMan);
            FieldMap_FadeScreen(FADE_TYPE_BRIGHTNESS_IN);
            menu->state = START_MENU_STATE_EXIT_WITH_NEW_TASK;
        }
        break;
    case START_MENU_STATE_EXIT_WITH_NEW_TASK:
        if (IsScreenFadeDone()) {
            FieldTask_InitJump(fieldTask, menu->callback, menu->taskData);
            Heap_Free(menu);
        }
        break;
    case START_MENU_STATE_SAVED:
        Heap_Free(menu);
        MapObjectMan_UnpauseAllMovement(fieldSystem->mapObjMan);
        return TRUE;
    case START_MENU_STATE_END:
        sub_0203B2EC(menu, fieldSystem);
        StartMenu_Close(menu);
        Window_EraseStandardFrame(&menu->primaryWindow, TRUE);
        Window_Remove(&menu->primaryWindow);
        StartMenu_EraseBallCount(fieldTask);
        Bg_ScheduleTilemapTransfer(fieldSystem->bgConfig, BG_LAYER_MAIN_3);
        Heap_Free(menu);
        MapObjectMan_UnpauseAllMovement(fieldSystem->mapObjMan);
        return TRUE;
    case START_MENU_STATE_REINIT_WAIT_FOR_FADE:
        if (IsScreenFadeDone()) {
            menu->state = START_MENU_STATE_SELECT;
        }
        break;
    }

    if (menu->menu != NULL) {
        StartMenu_AnimateSprites(menu);
        SpriteList_Update(menu->spriteManager.spriteList);
    }

    return FALSE;
}

static void StartMenu_InitMenu(FieldTask *fieldTask)
{
    // need to be declared here to match
    FieldSystem *fieldSystem;
    MessageLoader *loader;

    fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    StartMenu *menu = FieldTask_GetEnv(fieldTask);
    u32 optionCount = StartMenu_MakeOptionList(menu, menu->options);

    Window_Add(fieldSystem->bgConfig, &menu->primaryWindow, BG_LAYER_MAIN_3, 20, 1, 11, optionCount * 3, 12, BASE_TILE_MESSAGE_WINDOW - 11 * 22);
    LoadStandardWindowGraphics(fieldSystem->bgConfig, BG_LAYER_MAIN_3, BASE_TILE_STANDARD_WINDOW_FRAME, 11, STANDARD_WINDOW_FIELD, HEAP_ID_FIELD2);
    Window_DrawStandardFrame(&menu->primaryWindow, TRUE, BASE_TILE_STANDARD_WINDOW_FRAME, 11);

    loader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_START_MENU, HEAP_ID_FIELD2);

    menu->menuOptions = StringList_New(optionCount, HEAP_ID_FIELD2);
    menu->cursorPos = 0;

    for (u32 i = 0; i < optionCount; i++) {
        if (menu->options[i] == START_MENU_OPTION_TRAINER_CASE) {
            StringTemplate *template = StringTemplate_Default(HEAP_ID_FIELD2);
            String *string = String_Init(8, HEAP_ID_FIELD2);
            String *fmtString = MessageLoader_GetNewString(loader, sStartMenuActions[menu->options[i]].bankEntry);

            StringTemplate_SetPlayerName(template, 0, SaveData_GetTrainerInfo(fieldSystem->saveData));
            StringTemplate_Format(template, string, fmtString);
            StringList_AddFromString(menu->menuOptions, string, menu->options[i]);

            String_Free(fmtString);
            String_Free(string);
            StringTemplate_Free(template);
        } else {
            StringList_AddFromMessageBank(menu->menuOptions, loader, sStartMenuActions[menu->options[i]].bankEntry, menu->options[i]);
        }

        if (fieldSystem->menuCursorPos == menu->options[i]) {
            menu->cursorPos = i;
        }
    }

    fieldSystem->menuCursorPos = menu->options[menu->cursorPos];
    MessageLoader_Free(loader);

    MenuTemplate template;
    template.choices = menu->menuOptions;
    template.window = &menu->primaryWindow;
    template.fontID = FONT_MESSAGE;
    template.xSize = 1;
    template.ySize = optionCount;
    template.lineSpacing = 8;
    template.suppressCursor = TRUE;

    if (optionCount >= 4) {
        template.loopAround = TRUE;
    } else {
        template.loopAround = FALSE;
    }

    menu->menu = Menu_New(&template, 28, 4, menu->cursorPos, HEAP_ID_FIELD2, PAD_BUTTON_B | PAD_BUTTON_X);

    Window_ScheduleCopyToVRAM(&menu->primaryWindow);
    StartMenu_InitSprites(menu, menu->options, optionCount, TrainerInfo_Gender(SaveData_GetTrainerInfo(fieldSystem->saveData)));
}

#define ADD_OPTION_IF_NOT_HIDDEN(__menuOption, __hideFlag) \
    do {                                                   \
        if (!(menu->hideOptionFlags & __hideFlag)) {       \
            listOut[optionCount] = __menuOption;           \
            optionCount++;                                 \
        }                                                  \
    } while (0)

static u32 StartMenu_MakeOptionList(StartMenu *menu, u8 *listOut)
{
    u32 optionCount = 0;
    ADD_OPTION_IF_NOT_HIDDEN(START_MENU_OPTION_RETIRE, HIDE_OPTION_RETIRE);
    ADD_OPTION_IF_NOT_HIDDEN(START_MENU_OPTION_CHAT, HIDE_OPTION_CHAT);
    ADD_OPTION_IF_NOT_HIDDEN(START_MENU_OPTION_POKEDEX, HIDE_OPTION_POKEDEX);
    ADD_OPTION_IF_NOT_HIDDEN(START_MENU_OPTION_POKEMON, HIDE_OPTION_POKEMON);
    ADD_OPTION_IF_NOT_HIDDEN(START_MENU_OPTION_BAG, HIDE_OPTION_BAG);
    ADD_OPTION_IF_NOT_HIDDEN(START_MENU_OPTION_TRAINER_CASE, HIDE_OPTION_TRAINER_CASE);
    ADD_OPTION_IF_NOT_HIDDEN(START_MENU_OPTION_SAVE, HIDE_OPTION_SAVE);
    ADD_OPTION_IF_NOT_HIDDEN(START_MENU_OPTION_OPTIONS, HIDE_OPTION_OPTIONS);
    ADD_OPTION_IF_NOT_HIDDEN(START_MENU_OPTION_EXIT, HIDE_OPTION_EXIT);
    return optionCount;
}

static void StartMenu_Close(StartMenu *menu)
{
    StartMenu_FreeSprites(menu);
    Menu_Free(menu->menu, NULL);
    StringList_Free(menu->menuOptions);

    menu->menu = NULL;
}

static void StartMenu_PrintBallCount(FieldTask *fieldTask)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    StartMenu *menu = FieldTask_GetEnv(fieldTask);

    BOOL inPalPark;
    if (SystemFlag_CheckSafariGameActive(SaveData_GetVarsFlags(fieldSystem->saveData)) == TRUE) {
        inPalPark = FALSE;
    } else if (SystemFlag_CheckInPalPark(SaveData_GetVarsFlags(fieldSystem->saveData)) == TRUE) {
        inPalPark = TRUE;
    } else {
        return;
    }

    Window_Add(fieldSystem->bgConfig, &menu->secondaryWindow, BG_LAYER_MAIN_3, 1, 1, 12, 4, 13, BASE_TILE_MESSAGE_WINDOW);
    LoadStandardWindowGraphics(fieldSystem->bgConfig, BG_LAYER_MAIN_3, BASE_TILE_STANDARD_WINDOW_FRAME, 11, STANDARD_WINDOW_FIELD, HEAP_ID_FIELD2);
    Window_DrawStandardFrame(&menu->secondaryWindow, TRUE, BASE_TILE_STANDARD_WINDOW_FRAME, 11);
    Window_FillTilemap(&menu->secondaryWindow, 15);

    MessageLoader *loader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_START_MENU, HEAP_ID_FIELD2);

    String *string;
    // doesn't match as !inPalPark
    if (inPalPark == FALSE) {
        string = MessageLoader_GetNewString(loader, StartMenu_Text_SafariBalls);
    } else {
        string = MessageLoader_GetNewString(loader, StartMenu_Text_ParkBalls);
    }

    Text_AddPrinterWithParams(&menu->secondaryWindow, FONT_SYSTEM, string, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    String_Free(string);

    StringTemplate *template = StringTemplate_Default(HEAP_ID_FIELD2);
    String *countString = String_Init(32, HEAP_ID_FIELD2);
    String *fmtString = MessageLoader_GetNewString(loader, StartMenu_Text_BallStock);

    if (!inPalPark) {
        u16 *safariBallCount = FieldOverworldState_GetSafariBallCount(SaveData_GetFieldOverworldState(fieldSystem->saveData));

        StringTemplate_SetNumber(template, 0, *safariBallCount, 2, PADDING_MODE_NONE, CHARSET_MODE_EN);
    } else {
        int parkBallCount = FieldSystem_GetParkBallCount(fieldSystem);

        StringTemplate_SetNumber(template, 0, parkBallCount, 2, PADDING_MODE_NONE, CHARSET_MODE_EN);
    }

    StringTemplate_Format(template, countString, fmtString);
    Text_AddPrinterWithParams(&menu->secondaryWindow, FONT_SYSTEM, countString, 0, 16, TEXT_SPEED_NO_TRANSFER, NULL);

    String_Free(countString);
    String_Free(fmtString);
    StringTemplate_Free(template);
    MessageLoader_Free(loader);
    Window_ScheduleCopyToVRAM(&menu->secondaryWindow);
}

static void StartMenu_EraseBallCount(FieldTask *fieldTask)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    StartMenu *menu = FieldTask_GetEnv(fieldTask);

    if (!SystemFlag_CheckSafariGameActive(SaveData_GetVarsFlags(fieldSystem->saveData))
        && !SystemFlag_CheckInPalPark(SaveData_GetVarsFlags(fieldSystem->saveData))) {
        return;
    }

    Window_EraseStandardFrame(&menu->secondaryWindow, TRUE);
    Window_Remove(&menu->secondaryWindow);
}

static BOOL StartMenu_Select(FieldTask *fieldTask)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    StartMenu *menu = FieldTask_GetEnv(fieldTask);
    u16 prevPos = Menu_GetCursorPos(menu->menu);

    menu->input = Menu_ProcessInputWithSound(menu->menu, SEQ_SE_DP_SELECT78);
    menu->cursorPos = Menu_GetCursorPos(menu->menu);

    if (prevPos != menu->cursorPos) {
        StartMenu_SetCursorPos(menu->sprites[CURSOR_SPRITE_INDEX]->sprite, menu->cursorPos);
        StartMenu_ChangeActiveMenuIcon(menu, prevPos, menu->cursorPos);
        fieldSystem->menuCursorPos = menu->options[menu->cursorPos];
    }

    StartMenu_TryTransitionIconAnimationToWiggle(menu->sprites[menu->cursorPos + 1]->sprite);

    switch (menu->input) {
    case MENU_NOTHING_CHOSEN:
        break;
    case MENU_CANCEL:
        menu->state = START_MENU_STATE_END;
        break;
    default:
        if ((u32)sStartMenuActions[menu->input].callback == MENU_CANCEL) {
            menu->state = START_MENU_STATE_END;
        } else if ((u32)sStartMenuActions[menu->input].callback != MENU_NOTHING_CHOSEN) {
            FieldTaskFunc actionTask = sStartMenuActions[menu->input].callback;
            return actionTask(fieldTask);
        }
    }

    return TRUE;
}

static void sub_0203B2EC(StartMenu *menu, FieldSystem *fieldSystem)
{
    if (CommServerClient_IsInitialized()) {
        if (menu->inUnionRoom) {
            sub_0205C2B0(fieldSystem->unk_80);

            sub_02036AC4();
            sub_0205BEA8(0);
        }
    }
}

static void StartMenu_InitSprites(StartMenu *menu, u8 *options, u32 optionCount, u8 gender)
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

    SpriteResourceManager_SetCapacities(&menu->spriteManager, &capacities, MAX_START_MENU_OPTIONS + 1, HEAP_ID_FIELD2);

    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__MENU_GRA, HEAP_ID_FIELD2);

    SpriteResourceManager_LoadPalette(&menu->spriteManager, narc, menu_NCLR, FALSE, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 13528);
    SpriteResourceManager_LoadCell(&menu->spriteManager, narc, cursor_cell_NCER, FALSE, 13528);
    SpriteResourceManager_LoadAnimation(&menu->spriteManager, narc, cursor_anim_NANR, FALSE, 13528);
    SpriteResourceManager_LoadTiles(&menu->spriteManager, narc, cursor_NCGR, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 13528);

    menu->sprites[CURSOR_SPRITE_INDEX] = SpriteResourceManager_CreateManagedSprite(&menu->spriteManager, &sSpriteTemplates[CURSOR_TEMPLATE]);

    StartMenu_SetCursorPos(menu->sprites[CURSOR_SPRITE_INDEX]->sprite, menu->cursorPos);

    SpriteResourceManager_LoadCell(&menu->spriteManager, narc, icons_cell_NCER, FALSE, 13529);
    SpriteResourceManager_LoadAnimation(&menu->spriteManager, narc, icons_anim_NANR, FALSE, 13529);
    SpriteResourceManager_LoadTiles(&menu->spriteManager, narc, icons_NCGR, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 13529);

    for (u32 i = 0; i < optionCount; i++) {
        SpriteTemplate template;

        template = sSpriteTemplates[ICON_TEMPLATE];
        template.y += 24 * i;

        if (options[i] == START_MENU_OPTION_BAG && gender == GENDER_FEMALE) {
            template.animIdx = 9 * ICON_ANIM_COUNT;
        } else {
            template.animIdx = options[i] * ICON_ANIM_COUNT;
        }

        menu->sprites[i + 1] = SpriteResourceManager_CreateManagedSprite(&menu->spriteManager, &template);

        VecFx32 scale = { FX32_ONE, FX32_ONE, FX32_ONE };
        Sprite_SetAffineScaleEx(menu->sprites[i + 1]->sprite, &scale, AFFINE_OVERWRITE_MODE_NORMAL);
    }

    StartMenu_SetIconAnimationAndPalette(menu->sprites[menu->cursorPos + 1]->sprite, ICON_ANIM_WIGGLE, PALETTE_COLORED);
    menu->spriteCount = optionCount + 1;
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);

    NARC_dtor(narc);
}

static void StartMenu_FreeSprites(StartMenu *menu)
{
    for (u16 i = 0; i < menu->spriteCount; i++) {
        Sprite_DeleteAndFreeResources(menu->sprites[i]);
    }

    SpriteResourceManager_Cleanup(&menu->spriteManager);
}

static void StartMenu_AnimateSprites(StartMenu *menu)
{
    for (u16 i = 0; i < menu->spriteCount; i++) {
        Sprite_UpdateAnim(menu->sprites[i]->sprite, FX32_ONE);
    }
}

static void StartMenu_SetCursorPos(Sprite *sprite, u32 pos)
{
    VecFx32 position = *(Sprite_GetPosition(sprite));
    position.y = (20 + 24 * pos) * FX32_ONE;

    Sprite_SetPosition(sprite, &position);
}

static void StartMenu_SetIconAnimationAndPalette(Sprite *sprite, u16 anim, u16 palette)
{
    u32 activeAnimID = Sprite_GetActiveAnim(sprite);

    Sprite_SetAnim(sprite, (activeAnimID / 3) * 3 + anim);
    Sprite_SetExplicitPaletteWithOffset(sprite, palette);
}

static void StartMenu_ChangeActiveMenuIcon(StartMenu *menu, u16 oldIndex, u16 index)
{
    StartMenu_SetIconAnimationAndPalette(menu->sprites[oldIndex + 1]->sprite, ICON_ANIM_NONE, PALETTE_GRAYSCALE);
    StartMenu_SetIconAnimationAndPalette(menu->sprites[index + 1]->sprite, ICON_ANIM_SWELL, PALETTE_COLORED);
}

static void StartMenu_TryTransitionIconAnimationToWiggle(Sprite *sprite)
{
    if ((Sprite_GetActiveAnim(sprite) % ICON_ANIM_COUNT) != ICON_ANIM_SWELL) {
        return;
    }

    if (!Sprite_IsAnimated(sprite)) {
        StartMenu_SetIconAnimationAndPalette(sprite, ICON_ANIM_WIGGLE, PALETTE_COLORED);
    }
}

static void StartMenu_ApplicationStart(FieldTask *fieldTask)
{
    if (!IsScreenFadeDone()) {
        return;
    }

    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    StartMenu *menu = FieldTask_GetEnv(fieldTask);

    StartMenu_Close(menu);
    Window_Remove(&menu->primaryWindow);
    StartMenu_EraseBallCount(fieldTask);

    menu->callback(fieldTask);
    menu->state = START_MENU_STATE_APP_RUN;
}

static void StartMenu_ApplicationRun(FieldTask *fieldTask)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    StartMenu *menu = FieldTask_GetEnv(fieldTask);

    if (FieldSystem_IsRunningApplication(fieldSystem)) {
        return;
    }

    menu->callback(fieldTask);
}

void StartMenu_SetCallback(StartMenu *menu, void *callback)
{
    menu->callback = callback;
    menu->state = START_MENU_STATE_APP_RUN;
}

static BOOL StartMenu_SelectPokedex(FieldTask *fieldTask)
{
    StartMenu *menu = FieldTask_GetEnv(fieldTask);

    FieldMap_FadeScreen(FADE_TYPE_BRIGHTNESS_OUT);

    menu->callback = StartMenu_OpenPokedex;
    menu->state = START_MENU_STATE_APP_START;

    return TRUE;
}

static BOOL StartMenu_OpenPokedex(FieldTask *fieldTask)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    StartMenu *menu = FieldTask_GetEnv(fieldTask);
    PokedexOverlayArgs *pokedexArgs = Heap_Alloc(HEAP_ID_FIELD2, sizeof(PokedexOverlayArgs));
    Pokedex *pokedex = SaveData_GetPokedex(fieldSystem->saveData);
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(fieldSystem->saveData);
    VarsFlags *varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);

    pokedexArgs->pokedex = pokedex;
    pokedexArgs->trainerInfo = trainerInfo;
    pokedexArgs->timeOfDay = FieldSystem_GetTimeOfDay(fieldSystem);
    pokedexArgs->fullmoonIslandVisible = SystemVars_CheckHiddenLocation(varsFlags, HIDDEN_LOCATION_FULLMOON_ISLAND);
    pokedexArgs->newmoonIslandVisible = SystemVars_CheckHiddenLocation(varsFlags, HIDDEN_LOCATION_NEWMOON_ISLAND);
    pokedexArgs->springPathVisible = SystemVars_CheckHiddenLocation(varsFlags, HIDDEN_LOCATION_SPRING_PATH);
    pokedexArgs->seabreakPathVisible = SystemVars_CheckHiddenLocation(varsFlags, HIDDEN_LOCATION_SEABREAK_PATH);
    pokedexArgs->pokedexMemory = fieldSystem->pokedexMemory;

    FieldSystem_OpenPokedex(fieldSystem, pokedexArgs);

    menu->taskData = pokedexArgs;
    menu->callback = StartMenu_ExitPokedex;

    return FALSE;
}

static BOOL StartMenu_ExitPokedex(FieldTask *fieldTask)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    StartMenu *menu = FieldTask_GetEnv(fieldTask);

    FieldSystem_StartFieldMap(fieldSystem);

    if (menu->taskData != NULL) {
        Heap_FreeExplicit(HEAP_ID_FIELD2, menu->taskData);
    }

    menu->state = START_MENU_STATE_REINIT;

    return FALSE;
}

static BOOL StartMenu_SelectPokemon(FieldTask *fieldTask)
{
    StartMenu *menu = FieldTask_GetEnv(fieldTask);

    FieldMap_FadeScreen(FADE_TYPE_BRIGHTNESS_OUT);

    menu->callback = StartMenu_OpenPartyMenu;
    menu->state = START_MENU_STATE_APP_START;

    return TRUE;
}

static BOOL StartMenu_OpenPartyMenu(FieldTask *fieldTask)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    StartMenu *menu = FieldTask_GetEnv(fieldTask);

    menu->taskData = FieldSystem_OpenPartyMenu(fieldSystem, &menu->fieldMoveContext, 0);
    menu->callback = StartMenu_ExitPartyMenu;

    return FALSE;
}

BOOL StartMenu_ExitPartyMenu(FieldTask *fieldTask)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    StartMenu *menu = FieldTask_GetEnv(fieldTask);
    PartyMenu *partyMenu = (PartyMenu *)Heap_Alloc(HEAP_ID_FIELD2, sizeof(PartyMenu));

    memcpy(partyMenu, menu->taskData, sizeof(PartyMenu));
    Heap_Free(menu->taskData);

    PokemonSummary *summary;
    MenuEvolutionData *evoData;
    switch (partyMenu->menuSelectionResult) {
    case PARTY_MENU_EXIT_CODE_SUMMARY:
        summary = Heap_Alloc(HEAP_ID_FIELD2, sizeof(PokemonSummary));

        summary->monData = SaveData_GetParty(fieldSystem->saveData);
        summary->options = SaveData_GetOptions(fieldSystem->saveData);
        summary->dataType = SUMMARY_DATA_PARTY_MON;
        summary->monIndex = partyMenu->selectedMonSlot;
        summary->monMax = Party_GetCurrentCount(summary->monData);
        summary->move = 0;
        summary->mode = SUMMARY_MODE_NORMAL;
        summary->specialRibbons = SaveData_GetRibbons(fieldSystem->saveData);
        summary->dexMode = SaveData_GetDexMode(fieldSystem->saveData);
        summary->showContest = PokemonSummaryScreen_ShowContestData(fieldSystem->saveData);
        summary->chatotCry = NULL;

        PokemonSummaryScreen_FlagVisiblePages(summary, gAllSummaryScreenPages);
        PokemonSummaryScreen_SetPlayerProfile(summary, SaveData_GetTrainerInfo(fieldSystem->saveData));
        FieldSystem_OpenSummaryScreen(fieldSystem, summary);

        menu->taskData = summary;
        StartMenu_SetCallback(menu, StartMenu_ExitSummary);
        break;
    case PARTY_MENU_EXIT_CODE_OVERWRITE_MOVE_TM_HM:
        summary = Heap_Alloc(HEAP_ID_FIELD2, sizeof(PokemonSummary));

        summary->monData = SaveData_GetParty(fieldSystem->saveData);
        summary->options = SaveData_GetOptions(fieldSystem->saveData);
        summary->dataType = SUMMARY_DATA_PARTY_MON;
        summary->monIndex = partyMenu->selectedMonSlot;
        summary->monMax = 1;
        summary->move = partyMenu->learnedMove;
        summary->mode = SUMMARY_MODE_SELECT_MOVE;
        summary->dexMode = SaveData_GetDexMode(fieldSystem->saveData);
        summary->showContest = PokemonSummaryScreen_ShowContestData(fieldSystem->saveData);
        summary->chatotCry = NULL;

        PokemonSummaryScreen_FlagVisiblePages(summary, sOnlyMovePages);
        PokemonSummaryScreen_SetPlayerProfile(summary, SaveData_GetTrainerInfo(fieldSystem->saveData));
        FieldSystem_OpenSummaryScreen(fieldSystem, summary);

        MenuOverwriteMoveData *tmhmOverwriteData = Heap_Alloc(HEAP_ID_FIELD2, sizeof(MenuOverwriteMoveData));

        tmhmOverwriteData->usedItemID = partyMenu->usedItemID;
        tmhmOverwriteData->levelUpMoveIndex = 0;
        menu->additionalTaskContext = tmhmOverwriteData;

        menu->taskData = summary;
        StartMenu_SetCallback(menu, StartMenu_ExitSummary);
        break;
    case PARTY_MENU_EXIT_CODE_OVERWRITE_MOVE_LEVEL_UP:
        summary = Heap_Alloc(HEAP_ID_FIELD2, sizeof(PokemonSummary));

        summary->monData = SaveData_GetParty(fieldSystem->saveData);
        summary->options = SaveData_GetOptions(fieldSystem->saveData);
        summary->dataType = SUMMARY_DATA_PARTY_MON;
        summary->monIndex = partyMenu->selectedMonSlot;
        summary->monMax = 1;
        summary->move = partyMenu->learnedMove;
        summary->mode = SUMMARY_MODE_SELECT_MOVE;
        summary->dexMode = SaveData_GetDexMode(fieldSystem->saveData);
        summary->showContest = PokemonSummaryScreen_ShowContestData(fieldSystem->saveData);
        summary->chatotCry = NULL;

        PokemonSummaryScreen_FlagVisiblePages(summary, sOnlyMovePages);
        PokemonSummaryScreen_SetPlayerProfile(summary, SaveData_GetTrainerInfo(fieldSystem->saveData));
        FieldSystem_OpenSummaryScreen(fieldSystem, summary);

        MenuOverwriteMoveData *levelUpOverwriteData = Heap_Alloc(HEAP_ID_FIELD2, sizeof(MenuOverwriteMoveData));

        levelUpOverwriteData->usedItemID = ITEM_NONE;
        levelUpOverwriteData->levelUpMoveIndex = (u16)partyMenu->levelUpMoveIndex;
        menu->additionalTaskContext = levelUpOverwriteData;

        menu->taskData = summary;
        StartMenu_SetCallback(menu, StartMenu_ExitSummary);
        break;
    case PARTY_MENU_EXIT_CODE_MAIL:
        UnkStruct_02097728 *v8 = sub_0203D920(fieldSystem, 2, partyMenu->selectedMonSlot, Item_MailNumber(partyMenu->usedItemID), HEAP_ID_FIELD2);
        menu->taskData = v8;

        if (partyMenu->mode == PARTY_MENU_MODE_GIVE_ITEM_DONE) {
            menu->additionalTaskContext = sub_0203C540(partyMenu->usedItemID, 0, partyMenu->selectedMonSlot);
        } else {
            menu->additionalTaskContext = sub_0203C540(partyMenu->usedItemID, 1, partyMenu->selectedMonSlot);
        }

        StartMenu_SetCallback(menu, StartMenu_ExitMail);
        break;
    case PARTY_MENU_EXIT_CODE_READ_MAIL:
        Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), partyMenu->selectedMonSlot);
        UnkStruct_02097728 *v9 = sub_0203D984(fieldSystem, mon, HEAP_ID_FIELD2);

        menu->taskData = v9;
        menu->additionalTaskContext = sub_0203C540(partyMenu->usedItemID, 2, partyMenu->selectedMonSlot);

        StartMenu_SetCallback(menu, StartMenu_ExitMail);
        break;
    case PARTY_MENU_EXIT_CODE_GIVE_ITEM:
        u32 *slot = (u32 *)Heap_Alloc(HEAP_ID_FIELD2, sizeof(u32));
        *slot = partyMenu->selectedMonSlot;
        menu->additionalTaskContext = (void *)slot;

        Bag *bag = SaveData_GetBag(fieldSystem->saveData);
        TrainerInfo *unused = SaveData_GetTrainerInfo(fieldSystem->saveData);

        menu->taskData = BagContext_CreateWithPockets(bag, sAllPockets, HEAP_ID_FIELD2);

        BagContext_Init(menu->taskData, fieldSystem->saveData, BAG_MODE_GIVE_TO_MON, fieldSystem->bagCursor);

        sub_0203D1E4(fieldSystem, menu->taskData);
        StartMenu_SetCallback(menu, StartMenu_ExitBag);
        break;
    case PARTY_MENU_EXIT_CODE_EVOLVE_BY_ITEM:
        evoData = Heap_Alloc(HEAP_ID_FIELD2, sizeof(MenuEvolutionData));

        evoData->dummy = partyMenu->usedItemID;
        evoData->class = EVO_CLASS_BY_ITEM;
        evoData->slot = partyMenu->selectedMonSlot;
        evoData->targetSpecies = partyMenu->evoTargetSpecies;
        evoData->method = partyMenu->evoType;

        menu->taskData = evoData;
        menu->state = START_MENU_STATE_EVOLVE_INIT;
        break;
    case PARTY_MENU_EXIT_CODE_EVOLVE_BY_LEVEL:
        evoData = Heap_Alloc(HEAP_ID_FIELD2, sizeof(MenuEvolutionData));

        evoData->dummy = MapHeader_GetMapEvolutionMethod(fieldSystem->location->mapId);
        evoData->class = EVO_CLASS_BY_LEVEL;
        evoData->slot = partyMenu->selectedMonSlot;
        evoData->targetSpecies = partyMenu->evoTargetSpecies;
        evoData->method = partyMenu->evoType;
        menu->taskData = evoData;
        menu->state = START_MENU_STATE_EVOLVE_INIT;
        break;

    case PARTY_MENU_EXIT_CODE_CUT:
    case PARTY_MENU_EXIT_CODE_FLY:
    case PARTY_MENU_EXIT_CODE_SURF:
    case PARTY_MENU_EXIT_CODE_STRENGTH:
    case PARTY_MENU_EXIT_CODE_DEFOG:
    case PARTY_MENU_EXIT_CODE_ROCK_SMASH:
    case PARTY_MENU_EXIT_CODE_WATERFALL:
    case PARTY_MENU_EXIT_CODE_ROCK_CLIMB:
    case PARTY_MENU_EXIT_CODE_FLASH:
    case PARTY_MENU_EXIT_CODE_TELEPORT:
    case PARTY_MENU_EXIT_CODE_DIG:
    case PARTY_MENU_EXIT_CODE_SWEET_SCENT:
    case PARTY_MENU_EXIT_CODE_CHATTER:
        FieldMovePokemon fieldMoveMon;

        fieldMoveMon.fieldMove = partyMenu->menuSelectionResult - PARTY_MENU_EXIT_CODE_CUT;
        fieldMoveMon.fieldMonId = partyMenu->selectedMonSlot;
        fieldMoveMon.fieldTask = fieldTask;

        FieldMoveTask task = (FieldMoveTask)FieldMove_GetTaskOrError(FIELD_MOVE_TASK, fieldMoveMon.fieldMove);
        task(&fieldMoveMon, &menu->fieldMoveContext);
        break;
    case PARTY_MENU_EXIT_CODE_RETURN_TO_BAG:
        menu->taskData = FieldSystem_OpenBag(fieldSystem, &menu->itemUseCtx);
        StartMenu_SetCallback(menu, StartMenu_ExitBag);
        break;
    default:
        if (partyMenu->mode == PARTY_MENU_MODE_USE_ITEM || partyMenu->mode == PARTY_MENU_MODE_TEACH_MOVE || partyMenu->mode == PARTY_MENU_MODE_TEACH_MOVE_DONE || partyMenu->mode == PARTY_MENU_MODE_USE_EVO_ITEM || partyMenu->mode == PARTY_MENU_MODE_LEVEL_MOVE_DONE) {
            menu->taskData = FieldSystem_OpenBag(fieldSystem, &menu->itemUseCtx);

            if (partyMenu->selectedMonSlot >= MAX_PARTY_SIZE) {
                BagContext_SetSelectedMonSlot(menu->taskData, 0);
            } else {
                BagContext_SetSelectedMonSlot(menu->taskData, partyMenu->selectedMonSlot);
            }

            StartMenu_SetCallback(menu, StartMenu_ExitBag);
        } else if (partyMenu->mode == PARTY_MENU_MODE_GIVE_ITEM) {
            menu->taskData = FieldSystem_OpenBag(fieldSystem, &menu->itemUseCtx);
            StartMenu_SetCallback(menu, StartMenu_ExitBag);
        } else {
            FieldSystem_StartFieldMap(fieldSystem);
            menu->state = START_MENU_STATE_REINIT;
        }
    }

    Heap_Free(partyMenu);

    return FALSE;
}

static BOOL StartMenu_SelectBag(FieldTask *fieldTask)
{
    StartMenu *menu = FieldTask_GetEnv(fieldTask);

    FieldMap_FadeScreen(FADE_TYPE_BRIGHTNESS_OUT);

    menu->callback = StartMenu_Bag;
    menu->state = START_MENU_STATE_APP_START;

    return TRUE;
}

static BOOL StartMenu_Bag(FieldTask *fieldTask)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    StartMenu *menu = FieldTask_GetEnv(fieldTask);

    menu->taskData = FieldSystem_OpenBag(fieldSystem, &menu->itemUseCtx);
    BagContext_SetSelectedMonSlot(menu->taskData, 0);
    menu->callback = StartMenu_ExitBag;

    FieldSystem_SaveStateIfCommunicationOff(fieldSystem);

    return FALSE;
}

static BOOL StartMenu_ExitBag(FieldTask *fieldTask)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    StartMenu *menu = FieldTask_GetEnv(fieldTask);
    BagContext *bagCtx = BagContext_New(HEAP_ID_FIELD2);

    memcpy(bagCtx, menu->taskData, BagContext_GetSize());
    Heap_Free(menu->taskData);

    switch (BagContext_GetExitCode(bagCtx)) {
    case BAG_EXIT_CODE_USE_ITEM:
        ItemMenuUseContext usageContext;

        usageContext.item = BagContext_GetItem(bagCtx);
        usageContext.selectedMonSlot = BagContext_GetSelectedMonSlot(bagCtx);
        usageContext.fieldTask = fieldTask;
        s32 itemFuncIndex = Item_LoadParam(usageContext.item, ITEM_PARAM_FIELD_USE_FUNC, HEAP_ID_FIELD2);
        ItemMenuUseFunc useItem = (ItemMenuUseFunc)ItemUseFunction_Get(ITEM_FUNC_USE_FROM_MENU, itemFuncIndex);
        useItem(&usageContext, &menu->itemUseCtx);
        break;
    case BAG_EXIT_CODE_CHECK_BERRY_TAG:
        StartMenu_ShowBerryTag(fieldTask, BagContext_GetItem(bagCtx));
        break;
    case BAG_EXIT_CODE_GIVE_ITEM:
        PartyMenu *partyMenu = Heap_Alloc(HEAP_ID_FIELD2, sizeof(PartyMenu));
        memset(partyMenu, 0, sizeof(PartyMenu));

        partyMenu->party = SaveData_GetParty(fieldSystem->saveData);
        partyMenu->bag = SaveData_GetBag(fieldSystem->saveData);
        partyMenu->mailbox = SaveData_GetMailbox(fieldSystem->saveData);
        partyMenu->options = SaveData_GetOptions(fieldSystem->saveData);
        partyMenu->fieldMoveContext = &menu->fieldMoveContext;
        partyMenu->type = PARTY_MENU_TYPE_BASIC;
        partyMenu->mode = PARTY_MENU_MODE_GIVE_ITEM;
        partyMenu->usedItemID = BagContext_GetItem(bagCtx);
        partyMenu->fieldSystem = fieldSystem;

        FieldSystem_StartChildProcess(fieldSystem, &gPokemonPartyAppTemplate, partyMenu);
        menu->taskData = partyMenu;
        StartMenu_SetCallback(menu, StartMenu_ExitPartyMenu);
        break;
    case BAG_EXIT_CODE_GIVE_FROM_MON_MENU:
        Party *party = SaveData_GetParty(fieldSystem->saveData);
        u32 slot = *(u32 *)menu->additionalTaskContext;
        u16 item = BagContext_GetItem(bagCtx);
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, slot);

        Heap_Free(menu->additionalTaskContext);

        if (Item_IsMail(item) == TRUE && Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL) == ITEM_NONE) {
            UnkStruct_02097728 *v11 = sub_0203D920(fieldSystem, 2, slot, Item_MailNumber(item), HEAP_ID_FIELD2);
            menu->taskData = v11;
            menu->additionalTaskContext = sub_0203C540(item, 0, slot);
            StartMenu_SetCallback(menu, StartMenu_ExitMail);
        } else {
            PartyMenu *partyMenu = Heap_Alloc(HEAP_ID_FIELD2, sizeof(PartyMenu));
            memset(partyMenu, 0, sizeof(PartyMenu));

            partyMenu->party = party;
            partyMenu->bag = SaveData_GetBag(fieldSystem->saveData);
            partyMenu->mailbox = SaveData_GetMailbox(fieldSystem->saveData);
            partyMenu->options = SaveData_GetOptions(fieldSystem->saveData);
            partyMenu->fieldMoveContext = &menu->fieldMoveContext;
            partyMenu->type = PARTY_MENU_TYPE_BASIC;
            partyMenu->usedItemID = BagContext_GetItem(bagCtx);
            partyMenu->selectedMonSlot = slot;
            partyMenu->fieldSystem = fieldSystem;

            if (partyMenu->usedItemID == ITEM_NONE) {
                partyMenu->mode = PARTY_MENU_MODE_FIELD;
            } else {
                partyMenu->mode = PARTY_MENU_MODE_GIVE_ITEM_DONE;
            }

            FieldSystem_StartChildProcess(fieldSystem, &gPokemonPartyAppTemplate, partyMenu);
            menu->taskData = partyMenu;
            StartMenu_SetCallback(menu, StartMenu_ExitPartyMenu);
        }
        break;
    case BAG_EXIT_CODE_DONE:
    default:
        FieldSystem_StartFieldMap(fieldSystem);
        menu->state = START_MENU_STATE_REINIT;
    }

    Heap_Free(bagCtx);

    return FALSE;
}

static BOOL StartMenu_SelectTrainerCase(FieldTask *fieldTask)
{
    StartMenu *menu = FieldTask_GetEnv(fieldTask);

    FieldMap_FadeScreen(FADE_TYPE_BRIGHTNESS_OUT);

    menu->callback = StartMenu_TrainerCase;
    menu->state = START_MENU_STATE_APP_START;

    return TRUE;
}

static BOOL StartMenu_TrainerCase(FieldTask *fieldTask)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    StartMenu *menu = FieldTask_GetEnv(fieldTask);

    menu->taskData = TrainerCase_New(HEAP_ID_FIELD2);

    TrainerCase_Init(TRUE, TRUE, 0, TRAINER_APPEARANCE_DEFAULT, fieldSystem, (TrainerCase *)menu->taskData);
    FieldSystem_OpenTrainerCase(fieldSystem, (TrainerCase *)menu->taskData);

    menu->callback = StartMenu_ExitTrainerCase;
    return FALSE;
}

static BOOL StartMenu_ExitTrainerCase(FieldTask *fieldTask)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    StartMenu *menu = FieldTask_GetEnv(fieldTask);

    TrainerCase_SaveBadgePolish(fieldSystem, (TrainerCase *)menu->taskData);
    TrainerCase_Free((TrainerCase *)menu->taskData);
    FieldSystem_StartFieldMap(fieldSystem);

    menu->state = START_MENU_STATE_REINIT;

    return FALSE;
}

static BOOL StartMenu_SelectSave(FieldTask *fieldTask)
{
    StartMenu *menu = FieldTask_GetEnv(fieldTask);

    StartMenu_Close(menu);
    Window_EraseStandardFrame(&menu->primaryWindow, TRUE);
    Bg_ScheduleTilemapTransfer(menu->primaryWindow.bgConfig, menu->primaryWindow.bgLayer);
    Window_Remove(&menu->primaryWindow);
    StartMenu_EraseBallCount(fieldTask);

    menu->state = START_MENU_STATE_SAVE;

    return TRUE;
}

static void StartMenu_Save(FieldTask *fieldTask)
{
    StartMenu *menu = FieldTask_GetEnv(fieldTask);
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    SaveMenu *saveMenu;

    if (SaveData_OverwriteCheck(fieldSystem->saveData)) {
        ScriptManager_Start(fieldTask, SCRIPT_ID(COMMON_SCRIPTS, 34), NULL, NULL);
    } else {
        menu->taskData = Heap_Alloc(HEAP_ID_FIELD3, sizeof(SaveMenu));
        saveMenu = menu->taskData;
        saveMenu->result = 0;

        ScriptManager_Start(fieldTask, SCRIPT_ID(COMMON_SCRIPTS, 5), NULL, &saveMenu->result);
    }

    menu->state = START_MENU_STATE_SAVE_WAIT;
}

static void StartMenu_SaveWait(FieldTask *fieldTask)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    StartMenu *menu = FieldTask_GetEnv(fieldTask);
    SaveMenu *saveMenu = menu->taskData;

    if (SaveData_OverwriteCheck(fieldSystem->saveData)) {
        menu->state = START_MENU_STATE_INIT;
    } else {
        if (saveMenu->result == 0) {
            menu->state = START_MENU_STATE_INIT;
        } else {
            menu->state = START_MENU_STATE_SAVED;
        }

        Heap_Free(saveMenu);
    }
}

static BOOL StartMenu_SelectOptions(FieldTask *fieldTask)
{
    StartMenu *menu = FieldTask_GetEnv(fieldTask);

    FieldMap_FadeScreen(FADE_TYPE_BRIGHTNESS_OUT);

    menu->callback = StartMenu_Options;
    menu->state = START_MENU_STATE_APP_START;

    return TRUE;
}

static BOOL StartMenu_Options(FieldTask *fieldTask)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    StartMenu *menu = FieldTask_GetEnv(fieldTask);

    menu->taskData = FieldSystem_OpenOptionsMenu(fieldSystem);
    menu->callback = StartMenu_ExitOptions;

    return FALSE;
}

static BOOL StartMenu_ExitOptions(FieldTask *fieldTask)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    StartMenu *menu = FieldTask_GetEnv(fieldTask);

    Heap_Free(menu->taskData);
    FieldSystem_StartFieldMap(fieldSystem);

    menu->state = START_MENU_STATE_REINIT;

    return FALSE;
}

static BOOL StartMenu_SelectChat(FieldTask *fieldTask)
{
    StartMenu *menu = FieldTask_GetEnv(fieldTask);

    FieldMap_FadeScreen(FADE_TYPE_BRIGHTNESS_OUT);

    menu->callback = StartMenu_Chat;
    menu->state = START_MENU_STATE_APP_START;

    return TRUE;
}

static BOOL StartMenu_Chat(FieldTask *fieldTask)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    StartMenu *menu = FieldTask_GetEnv(fieldTask);

    menu->taskData = sub_0209747C(2, 0, fieldSystem->saveData, HEAP_ID_FIELD2);

    Sentence sentence;
    sub_02014A9C(&sentence, 4);
    sub_02097500(menu->taskData, &sentence);
    sub_0203D874(fieldSystem, (UnkStruct_0209747C *)menu->taskData);

    menu->callback = StartMenu_ExitChat;

    return FALSE;
}

static BOOL StartMenu_ExitChat(FieldTask *fieldTask)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    StartMenu *menu = FieldTask_GetEnv(fieldTask);

    if (sub_02097528(menu->taskData) == 0) {
        Sentence sentence;
        sub_02097540(menu->taskData, &sentence);

        if (CommServerClient_IsInitialized()) {
            sub_0205C12C(&sentence);
            sub_0205C010(fieldSystem->unk_7C, &sentence);
        }

        menu->state = START_MENU_STATE_8;
    } else {
        menu->state = START_MENU_STATE_REINIT;
    }

    sub_020974EC((UnkStruct_0209747C *)menu->taskData);
    FieldSystem_StartFieldMap(fieldSystem);
    sub_0205C2B0(fieldSystem->unk_80);

    return FALSE;
}

static BOOL StartMenu_SelectRetire(FieldTask *fieldTask)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    StartMenu *menu = FieldTask_GetEnv(fieldTask);

    StartMenu_Close(menu);
    Window_EraseStandardFrame(&menu->primaryWindow, TRUE);
    Bg_ScheduleTilemapTransfer(menu->primaryWindow.bgConfig, menu->primaryWindow.bgLayer);
    Window_Remove(&menu->primaryWindow);
    StartMenu_EraseBallCount(fieldTask);

    if (SystemFlag_CheckSafariGameActive(SaveData_GetVarsFlags(fieldSystem->saveData)) == TRUE) {
        ScriptManager_Change(fieldTask, SCRIPT_ID(SAFARI_GAME, 21), NULL);
    } else {
        ScriptManager_Change(fieldTask, 4, NULL);
    }

    Heap_Free(menu);
    return FALSE;
}

static BOOL StartMenu_ExitSummary(FieldTask *fieldTask)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    StartMenu *menu = FieldTask_GetEnv(fieldTask);
    PokemonSummary *summary = Heap_Alloc(HEAP_ID_FIELD2, sizeof(PokemonSummary));

    memcpy(summary, menu->taskData, sizeof(PokemonSummary));
    Heap_Free(menu->taskData);

    switch (summary->mode) {
    case SUMMARY_MODE_SELECT_MOVE: {
        PartyMenu *partyMenu = Heap_Alloc(HEAP_ID_FIELD2, sizeof(PartyMenu));
        MenuOverwriteMoveData *overwriteData = menu->additionalTaskContext;

        memset(partyMenu, 0, sizeof(PartyMenu));

        partyMenu->party = SaveData_GetParty(fieldSystem->saveData);
        partyMenu->bag = SaveData_GetBag(fieldSystem->saveData);
        partyMenu->mailbox = SaveData_GetMailbox(fieldSystem->saveData);
        partyMenu->options = SaveData_GetOptions(fieldSystem->saveData);
        partyMenu->fieldMoveContext = &menu->fieldMoveContext;
        partyMenu->type = PARTY_MENU_TYPE_BASIC;
        partyMenu->fieldSystem = fieldSystem;

        if (overwriteData->usedItemID != ITEM_NONE) {
            partyMenu->mode = PARTY_MENU_MODE_TEACH_MOVE_DONE;
            partyMenu->levelUpMoveIndex = 0;
        } else {
            partyMenu->mode = PARTY_MENU_MODE_LEVEL_MOVE_DONE;
            partyMenu->levelUpMoveIndex = overwriteData->levelUpMoveIndex;
        }

        partyMenu->usedItemID = overwriteData->usedItemID;
        partyMenu->selectedMonSlot = summary->monIndex;
        partyMenu->learnedMove = summary->move;
        partyMenu->selectedMoveSlot = summary->selectedMoveSlot;

        FieldSystem_StartChildProcess(fieldSystem, &gPokemonPartyAppTemplate, partyMenu);
        Heap_Free(menu->additionalTaskContext);
        menu->taskData = partyMenu;
        StartMenu_SetCallback(menu, StartMenu_ExitPartyMenu);
    } break;
    default:
        menu->taskData = FieldSystem_OpenPartyMenu(fieldSystem, &menu->fieldMoveContext, summary->monIndex);
        StartMenu_SetCallback(menu, StartMenu_ExitPartyMenu);
    }

    Heap_Free(summary);

    return FALSE;
}

static void StartMenu_ShowBerryTag(FieldTask *fieldTask, u16 berryItemID)
{
    u8 berry;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    StartMenu *menu = FieldTask_GetEnv(fieldTask);

    menu->taskData = sub_020972FC(HEAP_ID_FIELD2);
    Bag *bag = SaveData_GetBag(fieldSystem->saveData);
    sub_02097320(menu->taskData, berryItemID, 1);
    u8 berryTypeCount = 0;

    for (berry = 0; berry < NUM_BERRIES; berry++) {
        berryItemID = Item_ForBerryNumber(berry);

        if (Bag_CanRemoveItem(bag, berryItemID, 1, HEAP_ID_FIELD2) == TRUE) {
            sub_02097320(menu->taskData, berryItemID, 0);
            berryTypeCount++;
        }
    }

    u8 scroll, index;
    BagCursor_GetFieldPocketPosition(fieldSystem->bagCursor, POCKET_BERRIES, &index, &scroll);
    sub_0209733C(menu->taskData, scroll, index, berryTypeCount + 3);

    sub_0203D2E4(fieldSystem, menu->taskData);
    StartMenu_SetCallback(menu, StartMenu_ExitBerryTag);
}

static BOOL StartMenu_ExitBerryTag(FieldTask *fieldTask)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    StartMenu *menu = FieldTask_GetEnv(fieldTask);

    u8 scroll, index;
    sub_02097390(menu->taskData, &scroll, &index);
    BagCursor_SetFieldPocketPosition(fieldSystem->bagCursor, POCKET_BERRIES, index, scroll);
    Heap_FreeExplicit(HEAP_ID_FIELD2, menu->taskData);

    menu->taskData = FieldSystem_OpenBag(fieldSystem, &menu->itemUseCtx);
    StartMenu_SetCallback(menu, StartMenu_ExitBag);

    return FALSE;
}

BOOL StartMenu_ExitTownMap(FieldTask *fieldTask)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    StartMenu *menu = FieldTask_GetEnv(fieldTask);

    Heap_FreeExplicit(HEAP_ID_FIELD2, menu->taskData);
    menu->taskData = FieldSystem_OpenBag(fieldSystem, &menu->itemUseCtx);
    StartMenu_SetCallback(menu, StartMenu_ExitBag);

    return 0;
}

BOOL StartMenu_FlyDestinationSelected(FieldTask *fieldTask)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    StartMenu *menu = FieldTask_GetEnv(fieldTask);
    u32 slot = *((u32 *)menu->additionalTaskContext);

    Heap_FreeExplicit(HEAP_ID_FIELD2, menu->additionalTaskContext);

    TownMapContext *mapCtx = (TownMapContext *)menu->taskData;

    if (!mapCtx->flyLocationSelected) {
        Heap_FreeExplicit(HEAP_ID_FIELD2, menu->taskData);
        menu->taskData = FieldSystem_OpenPartyMenu(fieldSystem, &menu->fieldMoveContext, slot);
        StartMenu_SetCallback(menu, StartMenu_ExitPartyMenu);
    } else {
        Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), slot);
        FlyContext *flyCtx = FlyContext_New(HEAP_ID_FIELD2, fieldSystem, mon, mapCtx->flyLocationMapHeader, mapCtx->flyLocationX * MAP_TILES_COUNT_X + MAP_TILES_COUNT_X / 2, mapCtx->flyLocationZ * MAP_TILES_COUNT_Z + MAP_TILES_COUNT_Z / 2);
        void *journalEntryLocationEvent = JournalEntry_CreateEventUsedMove(FIELD_MOVE_FLY, mapCtx->flyLocationMapHeader, HEAP_ID_FIELD2);

        JournalEntry_SaveData(fieldSystem->journalEntry, journalEntryLocationEvent, JOURNAL_LOCATION);
        Heap_FreeExplicit(HEAP_ID_FIELD2, menu->taskData);
        FieldSystem_StartFieldMap(fieldSystem);

        menu->callback = FieldMoves_FlyTask;
        menu->taskData = flyCtx;
        menu->state = START_MENU_STATE_NEW_TASK;
    }

    return FALSE;
}

BOOL StartMenu_ExitJournal(FieldTask *fieldTask)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    StartMenu *menu = FieldTask_GetEnv(fieldTask);

    menu->taskData = FieldSystem_OpenBag(fieldSystem, &menu->itemUseCtx);
    StartMenu_SetCallback(menu, StartMenu_ExitBag);

    return FALSE;
}

void *sub_0203C540(u16 itemID, u8 param1, u8 slot)
{
    UnkStruct_0203C540 *v0 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(UnkStruct_0203C540));

    v0->itemID = itemID;
    v0->slot = slot;
    v0->unk_03 = param1;

    return (void *)v0;
}

BOOL StartMenu_ExitMail(FieldTask *fieldTask)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    StartMenu *menu = FieldTask_GetEnv(fieldTask);
    UnkStruct_0203C540 *v2 = menu->additionalTaskContext;

    switch (v2->unk_03) {
    case 3:
        sub_02097770(menu->taskData);
        menu->taskData = FieldSystem_OpenBag(fieldSystem, &menu->itemUseCtx);
        StartMenu_SetCallback(menu, StartMenu_ExitBag);
        break;
    case 2:
        sub_02097770(menu->taskData);
        menu->taskData = FieldSystem_OpenPartyMenu(fieldSystem, &menu->fieldMoveContext, v2->slot);
        StartMenu_SetCallback(menu, StartMenu_ExitPartyMenu);
        break;
    case 0:
        if (sub_02097728(menu->taskData) == 1) {
            sub_0203C668(fieldSystem, menu, PARTY_MENU_MODE_GIVE_MAIL_DONE);
        } else {
            sub_02097770(menu->taskData);
            menu->taskData = FieldSystem_OpenPartyMenu(fieldSystem, &menu->fieldMoveContext, v2->slot);
            StartMenu_SetCallback(menu, StartMenu_ExitPartyMenu);
        }
        break;
    case 1:
        if (sub_02097728(menu->taskData) == 1) {
            sub_0203C668(fieldSystem, menu, PARTY_MENU_MODE_GIVE_MAIL);
        } else {
            sub_02097770(menu->taskData);
            menu->taskData = FieldSystem_OpenBag(fieldSystem, &menu->itemUseCtx);
            StartMenu_SetCallback(menu, StartMenu_ExitBag);
        }
        break;
    }

    Heap_Free(menu->additionalTaskContext);
    return 0;
}

static void sub_0203C668(FieldSystem *fieldSystem, StartMenu *menu, u8 mode) // TODO:
{
    UnkStruct_0203C540 *v0 = menu->additionalTaskContext;
    PartyMenu *partyMenu = Heap_Alloc(HEAP_ID_FIELD2, sizeof(PartyMenu));

    memset(partyMenu, 0, sizeof(PartyMenu));
    partyMenu->party = SaveData_GetParty(fieldSystem->saveData);
    partyMenu->bag = SaveData_GetBag(fieldSystem->saveData);
    partyMenu->mailbox = SaveData_GetMailbox(fieldSystem->saveData);
    partyMenu->options = SaveData_GetOptions(fieldSystem->saveData);
    partyMenu->fieldMoveContext = &menu->fieldMoveContext;
    partyMenu->type = PARTY_MENU_TYPE_BASIC;
    partyMenu->usedItemID = v0->itemID;
    partyMenu->selectedMonSlot = v0->slot;
    partyMenu->mode = mode;
    partyMenu->fieldSystem = fieldSystem;

    sub_02097750(menu->taskData, Party_GetPokemonBySlotIndex(partyMenu->party, v0->slot));
    sub_02097770(menu->taskData);
    FieldSystem_StartChildProcess(fieldSystem, &gPokemonPartyAppTemplate, partyMenu);

    menu->taskData = partyMenu;
    StartMenu_SetCallback(menu, StartMenu_ExitPartyMenu);
}

BOOL StartMenu_ExitPoffinCase(FieldTask *fieldTask)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    StartMenu *menu = FieldTask_GetEnv(fieldTask);

    PoffinCaseAppData_Free(menu->taskData);

    menu->taskData = FieldSystem_OpenBag(fieldSystem, &menu->itemUseCtx);
    StartMenu_SetCallback(menu, StartMenu_ExitBag);

    return FALSE;
}

BOOL StartMenu_ExitPalPad(FieldTask *fieldTask)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    StartMenu *menu = FieldTask_GetEnv(fieldTask);

    menu->taskData = FieldSystem_OpenBag(fieldSystem, &menu->itemUseCtx);
    StartMenu_SetCallback(menu, StartMenu_ExitBag);

    return FALSE;
}

BOOL StartMenu_ExitVsRecorder(FieldTask *fieldTask)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    StartMenu *menu = FieldTask_GetEnv(fieldTask);

    menu->taskData = FieldSystem_OpenBag(fieldSystem, &menu->itemUseCtx);
    StartMenu_SetCallback(menu, StartMenu_ExitBag);

    return FALSE;
}

static void StartMenu_EvolveInit(FieldTask *fieldTask)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    StartMenu *menu = FieldTask_GetEnv(fieldTask);
    MenuEvolutionData *taskData = menu->taskData;

    Sound_StopWaveOutAndSequences();
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_EVOLUTION, HEAP_SIZE_EVOLUTION);

    Party *party = SaveData_GetParty(fieldSystem->saveData);
    Pokemon *mon = Party_GetPokemonBySlotIndex(party, taskData->slot);

    EvolutionData *evoData;
    if (taskData->class == EVO_CLASS_BY_LEVEL) {
        evoData = Evolution_Begin(party, mon, taskData->targetSpecies, SaveData_GetOptions(fieldSystem->saveData), PokemonSummaryScreen_ShowContestData(fieldSystem->saveData), SaveData_GetPokedex(fieldSystem->saveData), SaveData_GetBag(fieldSystem->saveData), SaveData_GetGameRecords(fieldSystem->saveData), SaveData_GetPoketch(fieldSystem->saveData), taskData->method, 0x1, HEAP_ID_EVOLUTION);
    } else {
        evoData = Evolution_Begin(party, mon, taskData->targetSpecies, SaveData_GetOptions(fieldSystem->saveData), PokemonSummaryScreen_ShowContestData(fieldSystem->saveData), SaveData_GetPokedex(fieldSystem->saveData), SaveData_GetBag(fieldSystem->saveData), SaveData_GetGameRecords(fieldSystem->saveData), SaveData_GetPoketch(fieldSystem->saveData), taskData->method, NULL, HEAP_ID_EVOLUTION);
    }

    u32 *slot = Heap_Alloc(HEAP_ID_FIELD2, sizeof(u32));

    *slot = taskData->slot;
    menu->additionalTaskContext = slot;

    Heap_Free(menu->taskData);

    menu->taskData = evoData;
    menu->state = START_MENU_STATE_EVOLVE;
}

static void StartMenu_Evolve(FieldTask *fieldTask)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    StartMenu *menu = FieldTask_GetEnv(fieldTask);

    if (Evolution_IsDone(menu->taskData) == TRUE) {
        Evolution_Free(menu->taskData);
        Heap_Destroy(HEAP_ID_EVOLUTION);
        Sound_StopBGM(SEQ_SHINKA, 0);
        Sound_SetScene(SOUND_SCENE_NONE);
        FieldBGM_PlayEffectiveForMapHeader(fieldSystem, fieldSystem->location->mapId);

        menu->taskData = FieldSystem_OpenBag(fieldSystem, &menu->itemUseCtx);

        u32 slot = *((u32 *)menu->additionalTaskContext);

        BagContext_SetSelectedMonSlot(menu->taskData, slot);
        Heap_Free(menu->additionalTaskContext);

        StartMenu_SetCallback(menu, StartMenu_ExitBag);
    }
}
