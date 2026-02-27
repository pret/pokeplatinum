#include "start_menu.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/map_load.h"
#include "constants/heap.h"
#include "generated/genders.h"
#include "generated/journal_location_events.h"
#include "generated/pokemon_data_params.h"
#include "generated/species.h"
#include "generated/text_banks.h"

#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_0209747C_decl.h"
#include "struct_defs/sentence.h"
#include "struct_defs/struct_020708E0.h"
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

#include "bag.h"
#include "bag_context.h"
#include "bg_window.h"
#include "catching_show.h"
#include "dexmode_checker.h"
#include "evolution.h"
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
#include "trainer_card.h"
#include "trainer_info.h"
#include "unk_02014A84.h"
#include "unk_0202D778.h"
#include "unk_02033200.h"
#include "unk_020366A0.h"
#include "unk_0203D1B8.h"
#include "unk_020553DC.h"
#include "unk_020559DC.h"
#include "unk_0205B33C.h"
#include "unk_0205C22C.h"
#include "unk_0205F180.h"
#include "unk_0206B9D8.h"
#include "unk_0207064C.h"
#include "unk_020972FC.h"
#include "unk_0209747C.h"
#include "unk_02097624.h"
#include "vars_flags.h"

#include "constdata/const_020EA02C.h"
#include "res/graphics/start_menu/start_menu.naix"
#include "res/text/bank/start_menu.h"

typedef enum StartMenuPos {
    MENU_POS_POKEDEX,
    MENU_POS_POKEMON,
    MENU_POS_BAG,
    MENU_POS_TRAINER_CARD,
    MENU_POS_SAVE,
    MENU_POS_OPTIONS,
    MENU_POS_EXIT,
    MENU_POS_CHAT,
    MENU_POS_RETIRE
} StartMenuPos;

typedef struct {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
} UnkStruct_0203C540;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u16 unk_02;
    u16 unk_04;
    int unk_08;
} UnkStruct_0203C7B8;

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_0203C1C8;

typedef struct {
    void *unk_00;
    u16 unk_04;
} SaveMenu;

static StartMenu *StartMenu_Alloc(void);
static u32 GetHiddenOptionFlags_Main(FieldSystem *fieldSystem);
static u32 GetHiddenOptionFlags_Safari(FieldSystem *fieldSystem);
static u32 GetHiddenOptionFlags_PalPark(FieldSystem *fieldSystem);
static u32 GetHiddenOptionFlags_BattleTowerSalon(FieldSystem *fieldSystem);
static u32 GetHiddenOptionFlags_UnionRoom(FieldSystem *fieldSystem);
static u32 GetHiddenOptionFlags_Colosseum(FieldSystem *fieldSystem);
static void sub_0203B318(StartMenu *menu, u8 *options, u32 optionCount, u8 gender);
static void sub_0203B4E8(StartMenu *menu);
static void sub_0203B520(StartMenu *menu);
static void sub_0203B558(Sprite *graphicElement, u32 param1);
static void sub_0203B588(Sprite *graphicElement, u16 param1, u16 param2);
static void sub_0203B5B4(StartMenu *menu, u16 param1, u16 param2);
static void sub_0203B5E8(Sprite *graphicElement);
static BOOL sub_0203AC44(FieldTask *taskMan);
static void sub_0203ADFC(FieldTask *taskMan);
static BOOL StartMenu_Select(FieldTask *taskMan);
static u32 StartMenu_MakeList(StartMenu *menu, u8 *param1);
static void StartMenu_Close(StartMenu *menu);
static void sub_0203B2EC(StartMenu *menu, FieldSystem *param1);
static void sub_0203B094(FieldTask *taskMan);
static void sub_0203B200(FieldTask *taskMan);
static void StartMenu_ApplicationStart(FieldTask *taskMan);
static void StartMenu_ApplicationRun(FieldTask *taskMan);
static BOOL StartMenu_SelectPokedex(FieldTask *taskMan);
static BOOL StartMenu_OpenPokedex(FieldTask *taskMan);
static BOOL StartMenu_ExitPokedex(FieldTask *taskMan);
static BOOL StartMenu_SelectTrainerCard(FieldTask *taskMan);
static BOOL StartMenu_TrainerCard(FieldTask *taskMan);
static BOOL sub_0203BF00(FieldTask *taskMan);
static BOOL StartMenu_SelectOptions(FieldTask *taskMan);
static BOOL StartMenu_Options(FieldTask *taskMan);
static BOOL sub_0203C050(FieldTask *taskMan);
static BOOL StartMenu_SelectChat(FieldTask *taskMan);
static BOOL sub_0203C0A0(FieldTask *taskMan);
static BOOL sub_0203C0F8(FieldTask *taskMan);
static BOOL StartMenu_SelectPokemon(FieldTask *taskMan);
static BOOL StartMenu_OpenPartyMenu(FieldTask *taskMan);
static BOOL StartMenu_SelectBag(FieldTask *taskMan);
static BOOL StartMenu_Bag(FieldTask *taskMan);
static BOOL StartMenu_ExitBag(FieldTask *taskMan);
static BOOL StartMenu_SelectSave(FieldTask *taskMan);
static void StartMenu_SaveWait(FieldTask *taskMan);
static void StartMenu_Save(FieldTask *taskMan);
static BOOL StartMenu_ExitSummary(FieldTask *taskMan);
static void sub_0203C2D8(FieldTask *taskMan, u16 param1);
static BOOL sub_0203C390(FieldTask *taskMan);
BOOL sub_0203C434(FieldTask *taskMan);
static void StartMenu_EvolveInit(FieldTask *taskMan);
static void StartMenu_Evolve(FieldTask *taskMan);
static BOOL StartMenu_SelectRetire(FieldTask *taskMan);

#define START_MENU_NO_ACTION   0xFFFFFFFF
#define START_MENU_EXIT_ACTION 0xFFFFFFFE

typedef struct StartMenuAction {
    u32 text;
    void *task;
} StartMenuAction;

// clang-format off
// `void *` is used for the `task` here to clean up the semantics of providing task functions for
// the table. As a bonus, it makes the exit action's special task-sentinel more visually prominent.
static const StartMenuAction sStartMenuActions[] = {
    [MENU_POS_POKEDEX]      = { StartMenu_Text_Pokedex, StartMenu_SelectPokedex        },
    [MENU_POS_POKEMON]      = { StartMenu_Text_Pokemon, StartMenu_SelectPokemon        },
    [MENU_POS_BAG]          = { StartMenu_Text_Bag,     StartMenu_SelectBag            },
    [MENU_POS_TRAINER_CARD] = { StartMenu_Text_Player,  StartMenu_SelectTrainerCard    },
    [MENU_POS_SAVE]         = { StartMenu_Text_Save,    StartMenu_SelectSave           },
    [MENU_POS_OPTIONS]      = { StartMenu_Text_Options, StartMenu_SelectOptions        },
    [MENU_POS_EXIT]         = { StartMenu_Text_Exit,    (void *)START_MENU_EXIT_ACTION },
    [MENU_POS_CHAT]         = { StartMenu_Text_Chat,    StartMenu_SelectChat           },
    [MENU_POS_RETIRE]       = { StartMenu_Text_Retire,  StartMenu_SelectRetire         },
};
// clang-format on

static const SpriteTemplate Unk_020EA0A4[] = {
    {
        0xCC,
        0x14,
        0x0,
        0x0,
        0x1,
        0x1,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        { 0x34D8, 0x34D8, 0x34D8, 0x34D8, 0x0, 0x0 },
        0x0,
        0x0,
    },
    {
        0xAE,
        0x14,
        0x0,
        0x0,
        0x0,
        0x0,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        { 0x34D9, 0x34D8, 0x34D9, 0x34D9, 0x0, 0x0 },
        0x0,
        0x0,
    },
};

static const u8 Unk_020EA020[] = {
    0x0,
    0x1,
    0x2,
    0x3,
    0x4,
    0x5,
    0x6,
    0x7,
    0xff,
};

const u8 Unk_020EA02C[] = {
    0x0,
    0x1,
    0x2,
    0x4,
    0x3,
    0x5,
    0x6,
    0x7,
    0x8,
};

static const u8 Unk_020EA01C[] = {
    0x3,
    0x5,
    0x8,
};

BOOL sub_0203A9C8(FieldSystem *fieldSystem)
{
    if (MapHeader_GetMapLabelTextID(fieldSystem->location->mapId) == 0) {
        return FALSE;
    }

    return TRUE;
}

#define HIDE_OPTION_POKEDEX      (1 << 0)
#define HIDE_OPTION_POKEMON      (1 << 1)
#define HIDE_OPTION_BAG          (1 << 2)
#define HIDE_OPTION_TRAINER_CARD (1 << 3)
#define HIDE_OPTION_SAVE         (1 << 4)
#define HIDE_OPTION_OPTIONS      (1 << 5)
#define HIDE_OPTION_EXIT         (1 << 6)
#define HIDE_OPTION_CHAT         (1 << 7)
#define HIDE_OPTION_RETIRE       (1 << 8)

void StartMenu_Init(FieldSystem *fieldSystem)
{
    StartMenu *menu = StartMenu_Alloc();

    if (SystemFlag_CheckSafariGameActive(SaveData_GetVarsFlags(fieldSystem->saveData)) == TRUE) {
        menu->hideOptionFlags = GetHiddenOptionFlags_Safari(fieldSystem);
    } else if (SystemFlag_CheckInPalPark(SaveData_GetVarsFlags(fieldSystem->saveData)) == TRUE) {
        menu->hideOptionFlags = GetHiddenOptionFlags_PalPark(fieldSystem);
    } else if (FieldSystem_IsInBattleTowerSalon(fieldSystem) == TRUE) {
        menu->hideOptionFlags = GetHiddenOptionFlags_BattleTowerSalon(fieldSystem);
    } else {
        menu->hideOptionFlags = GetHiddenOptionFlags_Main(fieldSystem);
    }

    menu->unk_228 = 0;

    if (sub_0205F588(fieldSystem->playerAvatar) == 1) {
        sub_0205F5E4(fieldSystem->playerAvatar, PlayerAvatar_GetDir(fieldSystem->playerAvatar));
    }

    FieldSystem_CreateTask(fieldSystem, sub_0203AC44, menu);
}

void sub_0203AA78(FieldSystem *fieldSystem)
{
    StartMenu *menu = StartMenu_Alloc();

    menu->hideOptionFlags = GetHiddenOptionFlags_UnionRoom(fieldSystem);
    menu->unk_228 = 1;

    if (sub_0205F588(fieldSystem->playerAvatar) == 1) {
        sub_0205F5E4(fieldSystem->playerAvatar, PlayerAvatar_GetDir(fieldSystem->playerAvatar));
    }

    FieldSystem_CreateTask(fieldSystem, sub_0203AC44, menu);
}

void sub_0203AABC(FieldSystem *fieldSystem)
{
    StartMenu *menu = StartMenu_Alloc();

    menu->hideOptionFlags = GetHiddenOptionFlags_Colosseum(fieldSystem);
    menu->unk_228 = 0;

    if (sub_0205F588(fieldSystem->playerAvatar) == 1) {
        sub_0205F5E4(fieldSystem->playerAvatar, PlayerAvatar_GetDir(fieldSystem->playerAvatar));
    }

    FieldSystem_CreateTask(fieldSystem, sub_0203AC44, menu);
}

void StartMenu_Open(FieldSystem *fieldSystem)
{
    StartMenu *menu;

    Sound_PlayEffect(SEQ_SE_DP_WIN_OPEN);
    menu = StartMenu_Alloc();

    menu->unk_228 = 0;

    if (SystemFlag_CheckSafariGameActive(SaveData_GetVarsFlags(fieldSystem->saveData)) == TRUE) {
        menu->hideOptionFlags = GetHiddenOptionFlags_Safari(fieldSystem);
    } else if (SystemFlag_CheckInPalPark(SaveData_GetVarsFlags(fieldSystem->saveData)) == TRUE) {
        menu->hideOptionFlags = GetHiddenOptionFlags_PalPark(fieldSystem);
    } else if (FieldSystem_IsInBattleTowerSalon(fieldSystem) == TRUE) {
        menu->hideOptionFlags = GetHiddenOptionFlags_BattleTowerSalon(fieldSystem);
    } else if (fieldSystem->mapLoadType == MAP_LOAD_TYPE_COLOSSEUM) {
        menu->hideOptionFlags = GetHiddenOptionFlags_Colosseum(fieldSystem);
    } else if (fieldSystem->mapLoadType == MAP_LOAD_TYPE_UNION) {
        menu->hideOptionFlags = GetHiddenOptionFlags_UnionRoom(fieldSystem);
        menu->unk_228 = 1;
    } else {
        menu->hideOptionFlags = GetHiddenOptionFlags_Main(fieldSystem);
    }

    FieldTask_InitJump(fieldSystem->task, sub_0203AC44, menu);
}

static StartMenu *StartMenu_Alloc(void)
{
    StartMenu *menu = Heap_Alloc(HEAP_ID_FIELD2, sizeof(StartMenu));

    menu->state = START_MENU_STATE_INIT;
    menu->unk_28 = 0;
    menu->taskData = NULL;

    return menu;
}

static u32 GetHiddenOptionFlags_Main(FieldSystem *fieldSystem)
{
    u32 hideFlags = 0;

    if (Pokedex_IsObtained(SaveData_GetPokedex(fieldSystem->saveData)) == FALSE) {
        hideFlags |= HIDE_OPTION_POKEDEX;
    }

    if (SystemVars_GetPlayerStarter(SaveData_GetVarsFlags(fieldSystem->saveData)) == SPECIES_NONE) {
        hideFlags |= HIDE_OPTION_POKEMON;
    }

    if (SystemFlag_CheckBagAcquired(SaveData_GetVarsFlags(fieldSystem->saveData)) == FALSE) {
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

static u32 GetHiddenOptionFlags_Safari(FieldSystem *fieldSystem)
{
    return HIDE_OPTION_SAVE | HIDE_OPTION_CHAT;
}

static u32 GetHiddenOptionFlags_PalPark(FieldSystem *fieldSystem)
{
    return HIDE_OPTION_SAVE | HIDE_OPTION_CHAT | HIDE_OPTION_BAG;
}

static u32 GetHiddenOptionFlags_BattleTowerSalon(FieldSystem *fieldSystem)
{
    return HIDE_OPTION_POKEDEX | HIDE_OPTION_BAG | HIDE_OPTION_SAVE | HIDE_OPTION_CHAT | HIDE_OPTION_RETIRE;
}

static u32 GetHiddenOptionFlags_UnionRoom(FieldSystem *fieldSystem)
{
    return HIDE_OPTION_SAVE | HIDE_OPTION_RETIRE;
}

static u32 GetHiddenOptionFlags_Colosseum(FieldSystem *fieldSystem)
{
    return HIDE_OPTION_SAVE | HIDE_OPTION_POKEDEX | HIDE_OPTION_CHAT | HIDE_OPTION_RETIRE;
}

static BOOL sub_0203AC44(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    StartMenu *menu = FieldTask_GetEnv(taskMan);

    switch (menu->state) {
    case START_MENU_STATE_INIT:
        MapObjectMan_PauseAllMovement(fieldSystem->mapObjMan);
        sub_0206842C(fieldSystem, &menu->unk_230);
        FieldMoves_SetUsableMoves(fieldSystem, &menu->fieldMoveContext);
        sub_0203ADFC(taskMan);
        sub_0203B094(taskMan);
        menu->state = START_MENU_STATE_SELECT;
        break;
    case START_MENU_STATE_SELECT:
        if (StartMenu_Select(taskMan) == FALSE) {
            return FALSE;
        }
        break;
    case START_MENU_STATE_APP_START:
        StartMenu_ApplicationStart(taskMan);
        break;
    case START_MENU_STATE_APP_RUN:
        StartMenu_ApplicationRun(taskMan);
        break;
    case START_MENU_STATE_SAVE:
        StartMenu_Save(taskMan);
        break;
    case START_MENU_STATE_SAVE_WAIT:
        StartMenu_SaveWait(taskMan);
        break;
    case START_MENU_STATE_EVOLVE_INIT:
        StartMenu_EvolveInit(taskMan);
        break;
    case START_MENU_STATE_EVOLVE:
        StartMenu_Evolve(taskMan);
        break;
    case START_MENU_STATE_12:
        if (FieldSystem_IsRunningFieldMap(fieldSystem)) {
            MapObjectMan_PauseAllMovement(fieldSystem->mapObjMan);
            sub_0203ADFC(taskMan);
            sub_0203B094(taskMan);
            FieldMap_FadeScreen(FADE_TYPE_BRIGHTNESS_IN);
            menu->state = START_MENU_STATE_14;
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
    case START_MENU_STATE_10:
        if (FieldSystem_IsRunningFieldMap(fieldSystem)) {
            MapObjectMan_PauseAllMovement(fieldSystem->mapObjMan);
            FieldMap_FadeScreen(FADE_TYPE_BRIGHTNESS_IN);
            menu->state = START_MENU_STATE_11;
        }
        break;
    case START_MENU_STATE_11:
        if (IsScreenFadeDone()) {
            FieldTask_InitJump(taskMan, menu->callback, menu->taskData);
            Heap_Free(menu);
        }
        break;
    case START_MENU_STATE_15:
        Heap_Free(menu);
        MapObjectMan_UnpauseAllMovement(fieldSystem->mapObjMan);
        return TRUE;
    case START_MENU_STATE_END:
        sub_0203B2EC(menu, fieldSystem);
        StartMenu_Close(menu);
        Window_EraseStandardFrame(&menu->unk_00, 1);
        Window_Remove(&menu->unk_00);
        sub_0203B200(taskMan);
        Bg_ScheduleTilemapTransfer(fieldSystem->bgConfig, 3);
        Heap_Free(menu);
        MapObjectMan_UnpauseAllMovement(fieldSystem->mapObjMan);
        return TRUE;
    case START_MENU_STATE_14:
        if (IsScreenFadeDone()) {
            menu->state = START_MENU_STATE_SELECT;
        }
        break;
    }

    if (menu->unk_20 != NULL) {
        sub_0203B520(menu);
        SpriteList_Update(menu->spriteManager.spriteList);
    }

    return FALSE;
}

static void sub_0203ADFC(FieldTask *taskMan)
{
    FieldSystem *fieldSystem;
    StartMenu *menu;
    MessageLoader *v2;
    MenuTemplate v3;
    u32 i, optionCount;

    fieldSystem = FieldTask_GetFieldSystem(taskMan);
    menu = FieldTask_GetEnv(taskMan);
    optionCount = StartMenu_MakeList(menu, menu->options);

    Window_Add(fieldSystem->bgConfig, &menu->unk_00, 3, 20, 1, 11, optionCount * 3, 12, (((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - (11 * 22));
    LoadStandardWindowGraphics(fieldSystem->bgConfig, BG_LAYER_MAIN_3, 1024 - (18 + 12) - 9, 11, 1, HEAP_ID_FIELD2);
    Window_DrawStandardFrame(&menu->unk_00, 1, 1024 - (18 + 12) - 9, 11);

    v2 = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_START_MENU, HEAP_ID_FIELD2);

    menu->unk_24 = StringList_New(optionCount, HEAP_ID_FIELD2);
    menu->unk_28 = 0;

    for (i = 0; i < optionCount; i++) {
        if (menu->options[i] == MENU_POS_TRAINER_CARD) {
            StringTemplate *v6;
            String *v7;
            String *v8;

            v6 = StringTemplate_Default(HEAP_ID_FIELD2);
            v7 = String_Init(8, HEAP_ID_FIELD2);
            v8 = MessageLoader_GetNewString(v2, sStartMenuActions[menu->options[i]].text);

            StringTemplate_SetPlayerName(v6, 0, SaveData_GetTrainerInfo(fieldSystem->saveData));
            StringTemplate_Format(v6, v7, v8);
            StringList_AddFromString(menu->unk_24, v7, menu->options[i]);

            String_Free(v8);
            String_Free(v7);
            StringTemplate_Free(v6);
        } else {
            StringList_AddFromMessageBank(
                menu->unk_24, v2, sStartMenuActions[menu->options[i]].text, menu->options[i]);
        }

        if (fieldSystem->menuCursorPos == menu->options[i]) {
            menu->unk_28 = i;
        }
    }

    fieldSystem->menuCursorPos = menu->options[menu->unk_28];
    MessageLoader_Free(v2);

    v3.choices = menu->unk_24;
    v3.window = &menu->unk_00;
    v3.fontID = FONT_MESSAGE;
    v3.xSize = 1;
    v3.ySize = optionCount;
    v3.lineSpacing = 8;
    v3.suppressCursor = TRUE;

    if (optionCount >= 4) {
        v3.loopAround = TRUE;
    } else {
        v3.loopAround = FALSE;
    }

    menu->unk_20 = Menu_New(&v3, 28, 4, menu->unk_28, HEAP_ID_FIELD2, PAD_BUTTON_B | PAD_BUTTON_X);

    Window_ScheduleCopyToVRAM(&menu->unk_00);
    sub_0203B318(menu, menu->options, optionCount, TrainerInfo_Gender(SaveData_GetTrainerInfo(fieldSystem->saveData)));
}

static u32 StartMenu_MakeList(StartMenu *menu, u8 *ret)
{
    u32 optionCount = 0;

    if ((menu->hideOptionFlags & HIDE_OPTION_RETIRE) == FALSE) {
        ret[optionCount] = MENU_POS_RETIRE;
        optionCount++;
    }

    if ((menu->hideOptionFlags & HIDE_OPTION_CHAT) == FALSE) {
        ret[optionCount] = MENU_POS_CHAT;
        optionCount++;
    }

    if ((menu->hideOptionFlags & HIDE_OPTION_POKEDEX) == FALSE) {
        ret[optionCount] = MENU_POS_POKEDEX;
        optionCount++;
    }

    if ((menu->hideOptionFlags & HIDE_OPTION_POKEMON) == FALSE) {
        ret[optionCount] = MENU_POS_POKEMON;
        optionCount++;
    }

    if ((menu->hideOptionFlags & HIDE_OPTION_BAG) == FALSE) {
        ret[optionCount] = MENU_POS_BAG;
        optionCount++;
    }

    if ((menu->hideOptionFlags & HIDE_OPTION_TRAINER_CARD) == FALSE) {
        ret[optionCount] = MENU_POS_TRAINER_CARD;
        optionCount++;
    }

    if ((menu->hideOptionFlags & HIDE_OPTION_SAVE) == FALSE) {
        ret[optionCount] = MENU_POS_SAVE;
        optionCount++;
    }

    if ((menu->hideOptionFlags & HIDE_OPTION_OPTIONS) == FALSE) {
        ret[optionCount] = MENU_POS_OPTIONS;
        optionCount++;
    }

    if ((menu->hideOptionFlags & HIDE_OPTION_EXIT) == FALSE) {
        ret[optionCount] = MENU_POS_EXIT;
        optionCount++;
    }

    return optionCount;
}

static void StartMenu_Close(StartMenu *menu)
{
    sub_0203B4E8(menu);
    Menu_Free(menu->unk_20, NULL);
    StringList_Free(menu->unk_24);

    menu->unk_20 = NULL;
}

static void sub_0203B094(FieldTask *taskMan)
{
    FieldSystem *fieldSystem;
    StartMenu *menu;
    MessageLoader *v2;
    StringTemplate *v3;
    String *v4;
    String *v5;
    u8 v6;

    fieldSystem = FieldTask_GetFieldSystem(taskMan);
    menu = FieldTask_GetEnv(taskMan);

    if (SystemFlag_CheckSafariGameActive(SaveData_GetVarsFlags(fieldSystem->saveData)) == TRUE) {
        v6 = 0;
    } else if (SystemFlag_CheckInPalPark(SaveData_GetVarsFlags(fieldSystem->saveData)) == TRUE) {
        v6 = 1;
    } else {
        return;
    }

    Window_Add(fieldSystem->bgConfig, &menu->unk_10, 3, 1, 1, 12, 4, 13, ((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4));
    LoadStandardWindowGraphics(fieldSystem->bgConfig, BG_LAYER_MAIN_3, 1024 - (18 + 12) - 9, 11, 1, HEAP_ID_FIELD2);
    Window_DrawStandardFrame(&menu->unk_10, 1, 1024 - (18 + 12) - 9, 11);
    Window_FillTilemap(&menu->unk_10, 15);

    v2 = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_START_MENU, HEAP_ID_FIELD2);

    if (v6 == 0) {
        v5 = MessageLoader_GetNewString(v2, 9);
    } else {
        v5 = MessageLoader_GetNewString(v2, 10);
    }

    Text_AddPrinterWithParams(&menu->unk_10, FONT_SYSTEM, v5, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    String_Free(v5);

    v3 = StringTemplate_Default(HEAP_ID_FIELD2);
    v4 = String_Init(32, HEAP_ID_FIELD2);
    v5 = MessageLoader_GetNewString(v2, 11);

    if (v6 == 0) {
        u16 *v7 = FieldOverworldState_GetSafariBallCount(SaveData_GetFieldOverworldState(fieldSystem->saveData));

        StringTemplate_SetNumber(v3, 0, *v7, 2, 0, 1);
    } else {
        int parkBallCount = FieldSystem_GetParkBallCount(fieldSystem);

        StringTemplate_SetNumber(v3, 0, parkBallCount, 2, 0, 1);
    }

    StringTemplate_Format(v3, v4, v5);
    Text_AddPrinterWithParams(&menu->unk_10, FONT_SYSTEM, v4, 0, 16, TEXT_SPEED_NO_TRANSFER, NULL);

    String_Free(v4);
    String_Free(v5);
    StringTemplate_Free(v3);
    MessageLoader_Free(v2);
    Window_ScheduleCopyToVRAM(&menu->unk_10);
}

static void sub_0203B200(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    StartMenu *menu = FieldTask_GetEnv(taskMan);

    if ((SystemFlag_CheckSafariGameActive(SaveData_GetVarsFlags(fieldSystem->saveData)) == FALSE)
        && (SystemFlag_CheckInPalPark(SaveData_GetVarsFlags(fieldSystem->saveData)) == FALSE)) {
        return;
    }

    Window_EraseStandardFrame(&menu->unk_10, 1);
    Window_Remove(&menu->unk_10);
}

static BOOL StartMenu_Select(FieldTask *taskMan)
{
    FieldSystem *fieldSystem;
    StartMenu *menu;
    u16 v2;

    fieldSystem = FieldTask_GetFieldSystem(taskMan);
    menu = FieldTask_GetEnv(taskMan);
    v2 = Menu_GetCursorPos(menu->unk_20);

    menu->unk_2C = Menu_ProcessInputWithSound(menu->unk_20, 1504);
    menu->unk_28 = Menu_GetCursorPos(menu->unk_20);

    if (v2 != menu->unk_28) {
        sub_0203B558(menu->unk_200[0]->sprite, menu->unk_28);
        sub_0203B5B4(menu, v2, menu->unk_28);
        fieldSystem->menuCursorPos = menu->options[menu->unk_28];
    }

    sub_0203B5E8(menu->unk_200[1 + menu->unk_28]->sprite);

    switch (menu->unk_2C) {
    case START_MENU_NO_ACTION:
        break;
    case START_MENU_EXIT_ACTION:
        menu->state = START_MENU_STATE_END;
        break;
    default:
        if ((u32)sStartMenuActions[menu->unk_2C].task == START_MENU_EXIT_ACTION) {
            menu->state = START_MENU_STATE_END;
        } else if ((u32)sStartMenuActions[menu->unk_2C].task != START_MENU_NO_ACTION) {
            FieldTaskFunc actionTask = sStartMenuActions[menu->unk_2C].task;
            return actionTask(taskMan);
        }
    }

    return TRUE;
}

static void sub_0203B2EC(StartMenu *menu, FieldSystem *fieldSystem)
{
    if (CommServerClient_IsInitialized()) {
        if (menu->unk_228) {
            sub_0205C2B0(fieldSystem->unk_80);

            sub_02036AC4();
            sub_0205BEA8(0);
        }
    }
}

static void sub_0203B318(StartMenu *menu, u8 *options, u32 optionCount, u8 gender)
{
    SpriteResourceCapacities v0 = {
        8, 1, 2, 2, 0, 0
    };
    u32 i;

    SpriteResourceManager_SetCapacities(&menu->spriteManager, &v0, 7 + 1, HEAP_ID_FIELD2);

    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__MENU_GRA, HEAP_ID_FIELD2);

    SpriteResourceManager_LoadPalette(&menu->spriteManager, narc, menu_NCLR, 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 13528);
    SpriteResourceManager_LoadCell(&menu->spriteManager, narc, cursor_cell_NCER, 0, 13528);
    SpriteResourceManager_LoadAnimation(&menu->spriteManager, narc, cursor_anim_NANR, 0, 13528);
    SpriteResourceManager_LoadTiles(&menu->spriteManager, narc, cursor_NCGR, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 13528);

    menu->unk_200[0] = SpriteResourceManager_CreateManagedSprite(&menu->spriteManager, &Unk_020EA0A4[0]);

    sub_0203B558(menu->unk_200[0]->sprite, menu->unk_28);

    SpriteResourceManager_LoadCell(&menu->spriteManager, narc, icons_cell_NCER, 0, 13529);
    SpriteResourceManager_LoadAnimation(&menu->spriteManager, narc, icons_anim_NANR, 0, 13529);
    SpriteResourceManager_LoadTiles(&menu->spriteManager, narc, icons_NCGR, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 13529);

    for (i = 0; i < optionCount; i++) {
        SpriteTemplate v3;

        v3 = Unk_020EA0A4[1];
        v3.y += 24 * i;

        if ((options[i] == MENU_POS_BAG) && (gender == GENDER_FEMALE)) {
            v3.animIdx = 9 * 3;
        } else {
            v3.animIdx = options[i] * 3;
        }

        menu->unk_200[1 + i] = SpriteResourceManager_CreateManagedSprite(&menu->spriteManager, &v3);

        {
            VecFx32 v4 = { FX32_ONE, FX32_ONE, FX32_ONE };
            Sprite_SetAffineScaleEx(menu->unk_200[1 + i]->sprite, &v4, 1);
        }
    }

    sub_0203B588(menu->unk_200[1 + menu->unk_28]->sprite, 2, 1);

    menu->unk_220 = optionCount + 1;

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    NARC_dtor(narc);
}

static void sub_0203B4E8(StartMenu *menu)
{
    u16 i;

    for (i = 0; i < menu->unk_220; i++) {
        Sprite_DeleteAndFreeResources(menu->unk_200[i]);
    }

    SpriteResourceManager_Cleanup(&menu->spriteManager);
}

static void sub_0203B520(StartMenu *menu)
{
    u16 i;

    for (i = 0; i < menu->unk_220; i++) {
        Sprite_UpdateAnim(menu->unk_200[i]->sprite, FX32_ONE);
    }
}

static void sub_0203B558(Sprite *graphicElement, u32 param1)
{
    VecFx32 vec;

    vec = *(Sprite_GetPosition(graphicElement));
    vec.y = (20 + 24 * param1) * FX32_ONE;

    Sprite_SetPosition(graphicElement, &vec);
}

static void sub_0203B588(Sprite *graphicElement, u16 param1, u16 param2)
{
    u32 v0 = Sprite_GetActiveAnim(graphicElement);

    Sprite_SetAnim(graphicElement, (v0 / 3) * 3 + param1);
    Sprite_SetExplicitPaletteWithOffset(graphicElement, param2);
}

static void sub_0203B5B4(StartMenu *menu, u16 param1, u16 param2)
{
    sub_0203B588(menu->unk_200[1 + param1]->sprite, 0, 0);
    sub_0203B588(menu->unk_200[1 + param2]->sprite, 1, 1);
}

static void sub_0203B5E8(Sprite *graphicElement)
{
    if ((Sprite_GetActiveAnim(graphicElement) % 3) != 1) {
        return;
    }

    if (Sprite_IsAnimated(graphicElement) == 0) {
        sub_0203B588(graphicElement, 2, 1);
    }
}

static void StartMenu_ApplicationStart(FieldTask *taskMan)
{
    FieldSystem *fieldSystem;
    StartMenu *menu;

    if (IsScreenFadeDone() == FALSE) {
        return;
    }

    fieldSystem = FieldTask_GetFieldSystem(taskMan);
    menu = FieldTask_GetEnv(taskMan);

    StartMenu_Close(menu);
    Window_Remove(&menu->unk_00);
    sub_0203B200(taskMan);

    menu->callback(taskMan);
    menu->state = START_MENU_STATE_APP_RUN;
}

static void StartMenu_ApplicationRun(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    StartMenu *menu = FieldTask_GetEnv(taskMan);

    if (FieldSystem_IsRunningApplication(fieldSystem)) {
        return;
    }

    menu->callback(taskMan);
}

void StartMenu_SetCallback(StartMenu *menu, void *callback)
{
    menu->callback = callback;
    menu->state = START_MENU_STATE_APP_RUN;
}

static BOOL StartMenu_SelectPokedex(FieldTask *taskMan)
{
    StartMenu *menu = FieldTask_GetEnv(taskMan);

    FieldMap_FadeScreen(FADE_TYPE_BRIGHTNESS_OUT);

    menu->callback = StartMenu_OpenPokedex;
    menu->state = START_MENU_STATE_APP_START;

    return TRUE;
}

static BOOL StartMenu_OpenPokedex(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    StartMenu *menu = FieldTask_GetEnv(taskMan);
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

    sub_0203E0AC(fieldSystem, pokedexArgs);

    menu->taskData = pokedexArgs;
    menu->callback = StartMenu_ExitPokedex;

    return FALSE;
}

static BOOL StartMenu_ExitPokedex(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    StartMenu *menu = FieldTask_GetEnv(taskMan);

    FieldSystem_StartFieldMap(fieldSystem);

    if (menu->taskData != NULL) {
        Heap_FreeExplicit(HEAP_ID_FIELD2, menu->taskData);
    }

    menu->state = START_MENU_STATE_12;

    return 0;
}

static BOOL StartMenu_SelectPokemon(FieldTask *taskMan)
{
    StartMenu *menu = FieldTask_GetEnv(taskMan);

    FieldMap_FadeScreen(FADE_TYPE_BRIGHTNESS_OUT);

    menu->callback = StartMenu_OpenPartyMenu;
    menu->state = START_MENU_STATE_APP_START;

    return TRUE;
}

static BOOL StartMenu_OpenPartyMenu(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    StartMenu *menu = FieldTask_GetEnv(taskMan);

    menu->taskData = FieldSystem_OpenPartyMenu(fieldSystem, &menu->fieldMoveContext, 0);
    menu->callback = StartMenu_ExitPartyMenu;

    return 0;
}

BOOL StartMenu_ExitPartyMenu(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    StartMenu *menu = FieldTask_GetEnv(taskMan);
    PartyMenu *partyMenu = (PartyMenu *)Heap_Alloc(HEAP_ID_FIELD2, sizeof(PartyMenu));

    memcpy(partyMenu, menu->taskData, sizeof(PartyMenu));
    Heap_Free(menu->taskData);

    switch (partyMenu->menuSelectionResult) {
    case PARTY_MENU_EXIT_CODE_SUMMARY: {
        PokemonSummary *summary = Heap_Alloc(HEAP_ID_FIELD2, sizeof(PokemonSummary));

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

        PokemonSummaryScreen_FlagVisiblePages(summary, Unk_020EA02C);
        PokemonSummaryScreen_SetPlayerProfile(summary, SaveData_GetTrainerInfo(fieldSystem->saveData));
        FieldSystem_OpenSummaryScreen(fieldSystem, summary);

        menu->taskData = summary;
        StartMenu_SetCallback(menu, StartMenu_ExitSummary);
    } break;
    case PARTY_MENU_EXIT_CODE_LEARNED_MOVE: {
        PokemonSummary *summary = Heap_Alloc(HEAP_ID_FIELD2, sizeof(PokemonSummary));

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

        PokemonSummaryScreen_FlagVisiblePages(summary, Unk_020EA01C);
        PokemonSummaryScreen_SetPlayerProfile(summary, SaveData_GetTrainerInfo(fieldSystem->saveData));
        FieldSystem_OpenSummaryScreen(fieldSystem, summary);

        UnkStruct_0203C1C8 *v5 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(UnkStruct_0203C1C8));

        v5->unk_00 = partyMenu->usedItemID;
        v5->unk_02 = 0;
        menu->unk_260 = v5;

        menu->taskData = summary;
        StartMenu_SetCallback(menu, StartMenu_ExitSummary);
    } break;
    case PARTY_MENU_EXIT_CODE_FORGET_MOVE: {
        PokemonSummary *summary = Heap_Alloc(HEAP_ID_FIELD2, sizeof(PokemonSummary));

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

        PokemonSummaryScreen_FlagVisiblePages(summary, Unk_020EA01C);
        PokemonSummaryScreen_SetPlayerProfile(summary, SaveData_GetTrainerInfo(fieldSystem->saveData));
        FieldSystem_OpenSummaryScreen(fieldSystem, summary);

        UnkStruct_0203C1C8 *v7 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(UnkStruct_0203C1C8));

        v7->unk_00 = 0;
        v7->unk_02 = (u16)partyMenu->unk_34;
        menu->unk_260 = v7;

        menu->taskData = summary;
        StartMenu_SetCallback(menu, StartMenu_ExitSummary);
    } break;
    case PARTY_MENU_EXIT_CODE_MAIL: {
        UnkStruct_02097728 *v8;

        v8 = sub_0203D920(fieldSystem, 2, partyMenu->selectedMonSlot, Item_MailNumber(partyMenu->usedItemID), HEAP_ID_FIELD2);
        menu->taskData = v8;

        if (partyMenu->mode == PARTY_MENU_MODE_GIVE_ITEM_DONE) {
            menu->unk_260 = sub_0203C540(
                partyMenu->usedItemID, 0, partyMenu->selectedMonSlot);
        } else {
            menu->unk_260 = sub_0203C540(
                partyMenu->usedItemID, 1, partyMenu->selectedMonSlot);
        }

        StartMenu_SetCallback(menu, StartMenu_ExitMail);
    } break;
    case PARTY_MENU_EXIT_CODE_READ_MAIL: {
        UnkStruct_02097728 *v9;
        Pokemon *v10;

        v10 = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), partyMenu->selectedMonSlot);
        v9 = sub_0203D984(fieldSystem, v10, HEAP_ID_FIELD2);

        menu->taskData = v9;
        menu->unk_260 = sub_0203C540(partyMenu->usedItemID, 2, partyMenu->selectedMonSlot);

        StartMenu_SetCallback(menu, StartMenu_ExitMail);
    } break;
    case PARTY_MENU_EXIT_CODE_GIVE_ITEM: {
        u32 *v13 = (u32 *)Heap_Alloc(HEAP_ID_FIELD2, 4);
        *v13 = partyMenu->selectedMonSlot;
        menu->unk_260 = (void *)v13;

        Bag *bag = SaveData_GetBag(fieldSystem->saveData);
        TrainerInfo *v12 = SaveData_GetTrainerInfo(fieldSystem->saveData);
        menu->taskData = BagContext_CreateWithPockets(bag, Unk_020EA020, HEAP_ID_FIELD2);

        BagContext_Init(menu->taskData, fieldSystem->saveData, 1, fieldSystem->bagCursor);

        sub_0203D1E4(fieldSystem, menu->taskData);
        StartMenu_SetCallback(menu, StartMenu_ExitBag);
    } break;
    case PARTY_MENU_EXIT_CODE_EVOLVE_BY_ITEM: {
        UnkStruct_0203C7B8 *v14 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(UnkStruct_0203C7B8));

        v14->unk_02 = partyMenu->usedItemID;
        v14->unk_01 = 3;
        v14->unk_00 = partyMenu->selectedMonSlot;
        v14->unk_04 = partyMenu->evoTargetSpecies;
        v14->unk_08 = partyMenu->evoType;

        menu->taskData = v14;
        menu->state = START_MENU_STATE_EVOLVE_INIT;
    } break;
    case PARTY_MENU_EXIT_CODE_EVOLVE_BY_LEVEL: {
        UnkStruct_0203C7B8 *v15 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(UnkStruct_0203C7B8));

        v15->unk_02 = MapHeader_GetMapEvolutionMethod(fieldSystem->location->mapId);
        v15->unk_01 = 0;
        v15->unk_00 = partyMenu->selectedMonSlot;
        v15->unk_04 = partyMenu->evoTargetSpecies;
        v15->unk_08 = partyMenu->evoType;
        menu->taskData = v15;
        menu->state = START_MENU_STATE_EVOLVE_INIT;
    } break;
    case PARTY_MENU_EXIT_CODE_ROCK_SMASH:
    case PARTY_MENU_EXIT_CODE_CUT:
    case PARTY_MENU_EXIT_CODE_FLY:
    case PARTY_MENU_EXIT_CODE_DEFOG:
    case PARTY_MENU_EXIT_CODE_STRENGTH:
    case PARTY_MENU_EXIT_CODE_SURF:
    case PARTY_MENU_EXIT_CODE_ROCK_CLIMB:
    case PARTY_MENU_EXIT_CODE_WATERFALL:
    case PARTY_MENU_EXIT_CODE_FLASH:
    case PARTY_MENU_EXIT_CODE_TELEPORT:
    case PARTY_MENU_EXIT_CODE_DIG:
    case PARTY_MENU_EXIT_CODE_SWEET_SCENT:
    case PARTY_MENU_EXIT_CODE_CHATTER:
        FieldMoveTaskContext v16;
        FieldMovePokemon fieldMoveMon;

        fieldMoveMon.fieldMove = partyMenu->menuSelectionResult - 11;
        fieldMoveMon.fieldMonId = partyMenu->selectedMonSlot;
        fieldMoveMon.fieldTask = taskMan;

        v16 = (FieldMoveTaskContext)FieldMove_GetTaskOrError(FIELD_MOVE_TASK, fieldMoveMon.fieldMove);
        v16(&fieldMoveMon, &menu->fieldMoveContext);
        break;
    case PARTY_MENU_EXIT_CODE_RETURN_TO_BAG:
        menu->taskData = sub_0203D20C(fieldSystem, &menu->unk_230);
        StartMenu_SetCallback(menu, StartMenu_ExitBag);
        break;
    default:
        if ((partyMenu->mode == PARTY_MENU_MODE_USE_ITEM) || (partyMenu->mode == PARTY_MENU_MODE_TEACH_MOVE) || (partyMenu->mode == PARTY_MENU_MODE_TEACH_MOVE_DONE) || (partyMenu->mode == PARTY_MENU_MODE_USE_EVO_ITEM) || (partyMenu->mode == PARTY_MENU_MODE_LEVEL_MOVE_DONE)) {
            menu->taskData = sub_0203D20C(fieldSystem, &menu->unk_230);

            if (partyMenu->selectedMonSlot >= 6) {
                BagContext_SetSelectedMonSlot(menu->taskData, 0);
            } else {
                BagContext_SetSelectedMonSlot(menu->taskData, partyMenu->selectedMonSlot);
            }

            StartMenu_SetCallback(menu, StartMenu_ExitBag);
        } else if (partyMenu->mode == PARTY_MENU_MODE_GIVE_ITEM) {
            menu->taskData = sub_0203D20C(fieldSystem, &menu->unk_230);
            StartMenu_SetCallback(menu, StartMenu_ExitBag);
        } else {
            FieldSystem_StartFieldMap(fieldSystem);
            menu->state = START_MENU_STATE_12;
        }
    }

    Heap_Free(partyMenu);

    return 0;
}

static BOOL StartMenu_SelectBag(FieldTask *taskMan)
{
    StartMenu *menu = FieldTask_GetEnv(taskMan);

    FieldMap_FadeScreen(FADE_TYPE_BRIGHTNESS_OUT);

    menu->callback = StartMenu_Bag;
    menu->state = START_MENU_STATE_APP_START;

    return TRUE;
}

static BOOL StartMenu_Bag(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    StartMenu *menu = FieldTask_GetEnv(taskMan);

    menu->taskData = sub_0203D20C(fieldSystem, &menu->unk_230);
    BagContext_SetSelectedMonSlot(menu->taskData, 0);
    menu->callback = StartMenu_ExitBag;

    FieldSystem_SaveStateIfCommunicationOff(fieldSystem);

    return FALSE;
}

static BOOL StartMenu_ExitBag(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    StartMenu *menu = FieldTask_GetEnv(taskMan);
    BagContext *bagCtx = BagContext_New(HEAP_ID_FIELD2);

    memcpy(bagCtx, menu->taskData, BagContext_GetSize());
    Heap_Free(menu->taskData);

    switch (BagContext_GetExitCode(bagCtx)) {
    case BAG_EXIT_CODE_USE_ITEM: {
        ItemMenuUseFunc v3;
        ItemMenuUseContext v4;
        s32 v5;

        v4.item = BagContext_GetItem(bagCtx);
        v4.selectedMonSlot = BagContext_GetSelectedMonSlot(bagCtx);
        v4.fieldTask = taskMan;
        v5 = Item_LoadParam(v4.item, ITEM_PARAM_FIELD_USE_FUNC, HEAP_ID_FIELD2);
        v3 = (ItemMenuUseFunc)GetItemUseFunction(USE_ITEM_TASK_MENU, v5);
        v3(&v4, &menu->unk_230);
    } break;
    case BAG_EXIT_CODE_SHOW_BERRY_DATA:
        sub_0203C2D8(taskMan, BagContext_GetItem(bagCtx));
        break;
    case BAG_EXIT_CODE_GIVE_ITEM: {
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
    } break;
    case BAG_EXIT_CODE_GIVE_FROM_MON_MENU: {
        Party *party = SaveData_GetParty(fieldSystem->saveData);
        u32 v9 = *(u32 *)menu->unk_260;
        u16 item = BagContext_GetItem(bagCtx);
        Pokemon *v8 = Party_GetPokemonBySlotIndex(party, v9);

        Heap_Free(menu->unk_260);

        if ((Item_IsMail(item) == TRUE) && (Pokemon_GetValue(v8, MON_DATA_HELD_ITEM, NULL) == 0)) {
            UnkStruct_02097728 *v11;
            UnkStruct_0203C540 *v12;

            v11 = sub_0203D920(fieldSystem, 2, v9, Item_MailNumber(item), HEAP_ID_FIELD2);
            menu->taskData = v11;
            menu->unk_260 = sub_0203C540(item, 0, (u8)v9);
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
            partyMenu->selectedMonSlot = v9; // Maybe selected slot?
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
    } break;
    case BAG_EXIT_CODE_DONE:
    default:
        FieldSystem_StartFieldMap(fieldSystem);
        menu->state = START_MENU_STATE_12;
    }

    Heap_Free(bagCtx);

    return 0;
}

static BOOL StartMenu_SelectTrainerCard(FieldTask *taskMan)
{
    StartMenu *menu = FieldTask_GetEnv(taskMan);

    FieldMap_FadeScreen(FADE_TYPE_BRIGHTNESS_OUT);

    menu->callback = StartMenu_TrainerCard;
    menu->state = START_MENU_STATE_APP_START;

    return TRUE;
}

static BOOL StartMenu_TrainerCard(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    StartMenu *menu = FieldTask_GetEnv(taskMan);

    menu->taskData = TrainerCard_New(HEAP_ID_FIELD2);

    TrainerCard_Init(TRUE, TRUE, 0, 0xFF, fieldSystem, (TrainerCard *)menu->taskData);
    FieldSystem_OpenTrainerCardScreen(fieldSystem, (TrainerCard *)menu->taskData);

    menu->callback = sub_0203BF00;
    return FALSE;
}

static BOOL sub_0203BF00(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    StartMenu *menu = FieldTask_GetEnv(taskMan);

    TrainerCard_SaveBadgePolish(fieldSystem, (TrainerCard *)menu->taskData);
    TrainerCard_Free((TrainerCard *)menu->taskData);
    FieldSystem_StartFieldMap(fieldSystem);

    menu->state = START_MENU_STATE_12;

    return FALSE;
}

static BOOL StartMenu_SelectSave(FieldTask *taskMan)
{
    StartMenu *menu = FieldTask_GetEnv(taskMan);

    StartMenu_Close(menu);
    Window_EraseStandardFrame(&menu->unk_00, 1);
    Bg_ScheduleTilemapTransfer(menu->unk_00.bgConfig, menu->unk_00.bgLayer);
    Window_Remove(&menu->unk_00);
    sub_0203B200(taskMan);

    menu->state = START_MENU_STATE_SAVE;

    return TRUE;
}

static void StartMenu_Save(FieldTask *taskMan)
{
    StartMenu *menu = FieldTask_GetEnv(taskMan);
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    SaveMenu *saveMenu;

    if (SaveData_OverwriteCheck(fieldSystem->saveData)) {
        ScriptManager_Start(taskMan, SCRIPT_ID(COMMON_SCRIPTS, 34), NULL, NULL);
    } else {
        menu->taskData = Heap_Alloc(HEAP_ID_FIELD3, sizeof(SaveMenu));
        saveMenu = menu->taskData;
        saveMenu->unk_04 = 0;

        ScriptManager_Start(taskMan, SCRIPT_ID(COMMON_SCRIPTS, 5), NULL, &saveMenu->unk_04);
    }

    menu->state = START_MENU_STATE_SAVE_WAIT;
}

static void StartMenu_SaveWait(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    StartMenu *menu = FieldTask_GetEnv(taskMan);
    SaveMenu *saveMenu = menu->taskData;

    if (SaveData_OverwriteCheck(fieldSystem->saveData)) {
        menu->state = START_MENU_STATE_INIT;
    } else {
        if (saveMenu->unk_04 == 0) {
            menu->state = START_MENU_STATE_INIT;
        } else {
            menu->state = START_MENU_STATE_15;
        }

        Heap_Free(saveMenu);
    }
}

static BOOL StartMenu_SelectOptions(FieldTask *taskMan)
{
    StartMenu *menu = FieldTask_GetEnv(taskMan);

    FieldMap_FadeScreen(FADE_TYPE_BRIGHTNESS_OUT);

    menu->callback = StartMenu_Options;
    menu->state = START_MENU_STATE_APP_START;

    return TRUE;
}

static BOOL StartMenu_Options(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    StartMenu *menu = FieldTask_GetEnv(taskMan);

    menu->taskData = FieldSystem_OpenOptionsMenu(fieldSystem);
    menu->callback = sub_0203C050;

    return FALSE;
}

static BOOL sub_0203C050(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    StartMenu *menu = FieldTask_GetEnv(taskMan);

    Heap_Free(menu->taskData);
    FieldSystem_StartFieldMap(fieldSystem);

    menu->state = START_MENU_STATE_12;

    return 0;
}

static BOOL StartMenu_SelectChat(FieldTask *taskMan)
{
    StartMenu *menu = FieldTask_GetEnv(taskMan);

    FieldMap_FadeScreen(FADE_TYPE_BRIGHTNESS_OUT);

    menu->callback = sub_0203C0A0;
    menu->state = START_MENU_STATE_APP_START;

    return 1;
}

static BOOL sub_0203C0A0(FieldTask *taskMan)
{
    FieldSystem *fieldSystem;
    StartMenu *menu;
    Sentence v2;

    fieldSystem = FieldTask_GetFieldSystem(taskMan);
    menu = FieldTask_GetEnv(taskMan);

    menu->taskData = sub_0209747C(2, 0, fieldSystem->saveData, HEAP_ID_FIELD2);

    sub_02014A9C(&v2, 4);
    sub_02097500(menu->taskData, &v2);
    sub_0203D874(fieldSystem, (UnkStruct_0209747C *)menu->taskData);

    menu->callback = sub_0203C0F8;

    return 0;
}

static BOOL sub_0203C0F8(FieldTask *taskMan)
{
    Sentence sentence;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    StartMenu *menu = FieldTask_GetEnv(taskMan);

    if (sub_02097528(menu->taskData) == 0) {
        sub_02097540(menu->taskData, &sentence);

        if (CommServerClient_IsInitialized()) {
            sub_0205C12C(&sentence);
            sub_0205C010(fieldSystem->unk_7C, &sentence);
        }

        menu->state = START_MENU_STATE_8;
    } else {
        menu->state = START_MENU_STATE_12;
    }

    sub_020974EC((UnkStruct_0209747C *)menu->taskData);
    FieldSystem_StartFieldMap(fieldSystem);
    sub_0205C2B0(fieldSystem->unk_80);

    return 0;
}

static BOOL StartMenu_SelectRetire(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    StartMenu *menu = FieldTask_GetEnv(taskMan);

    StartMenu_Close(menu);
    Window_EraseStandardFrame(&menu->unk_00, 1);
    Bg_ScheduleTilemapTransfer(menu->unk_00.bgConfig, menu->unk_00.bgLayer);
    Window_Remove(&menu->unk_00);
    sub_0203B200(taskMan);

    if (SystemFlag_CheckSafariGameActive(SaveData_GetVarsFlags(fieldSystem->saveData)) == TRUE) {
        ScriptManager_Change(taskMan, SCRIPT_ID(SAFARI_GAME, 21), NULL);
    } else {
        ScriptManager_Change(taskMan, 4, NULL);
    }

    Heap_Free(menu);
    return 0;
}

static BOOL StartMenu_ExitSummary(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    StartMenu *menu = FieldTask_GetEnv(taskMan);
    PokemonSummary *v2 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(PokemonSummary));

    memcpy(v2, menu->taskData, sizeof(PokemonSummary));
    Heap_Free(menu->taskData);

    switch (v2->mode) {
    case SUMMARY_MODE_SELECT_MOVE: {
        PartyMenu *partyMenu = Heap_Alloc(HEAP_ID_FIELD2, sizeof(PartyMenu));
        UnkStruct_0203C1C8 *v4 = menu->unk_260;

        memset(partyMenu, 0, sizeof(PartyMenu));

        partyMenu->party = SaveData_GetParty(fieldSystem->saveData);
        partyMenu->bag = SaveData_GetBag(fieldSystem->saveData);
        partyMenu->mailbox = SaveData_GetMailbox(fieldSystem->saveData);
        partyMenu->options = SaveData_GetOptions(fieldSystem->saveData);
        partyMenu->fieldMoveContext = &menu->fieldMoveContext;
        partyMenu->type = PARTY_MENU_TYPE_BASIC;
        partyMenu->fieldSystem = fieldSystem;

        if (v4->unk_00 != 0) {
            partyMenu->mode = PARTY_MENU_MODE_TEACH_MOVE_DONE;
            partyMenu->unk_34 = 0;
        } else {
            partyMenu->mode = PARTY_MENU_MODE_LEVEL_MOVE_DONE;
            partyMenu->unk_34 = v4->unk_02;
        }

        partyMenu->usedItemID = v4->unk_00;
        partyMenu->selectedMonSlot = v2->monIndex;
        partyMenu->learnedMove = v2->move;
        partyMenu->selectedMoveSlot = v2->selectedMoveSlot;

        FieldSystem_StartChildProcess(fieldSystem, &gPokemonPartyAppTemplate, partyMenu);
        Heap_Free(menu->unk_260);
        menu->taskData = partyMenu;
        StartMenu_SetCallback(menu, StartMenu_ExitPartyMenu);
    } break;
    default:
        menu->taskData = FieldSystem_OpenPartyMenu(fieldSystem, &menu->fieldMoveContext, v2->monIndex);
        StartMenu_SetCallback(menu, StartMenu_ExitPartyMenu);
    }

    Heap_Free(v2);

    return 0;
}

static void sub_0203C2D8(FieldTask *taskMan, u16 item)
{
    u8 i;
    u8 v4, v5, v6;

    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    StartMenu *menu = FieldTask_GetEnv(taskMan);

    menu->taskData = sub_020972FC(HEAP_ID_FIELD2);
    Bag *bag = SaveData_GetBag(fieldSystem->saveData);
    sub_02097320(menu->taskData, item, 1);
    v6 = 0;

    for (i = 0; i < NUM_BERRIES; i++) {
        item = Item_ForBerryNumber(i);

        if (Bag_CanRemoveItem(bag, item, 1, HEAP_ID_FIELD2) == TRUE) {
            sub_02097320(menu->taskData, item, 0);
            v6++;
        }
    }

    BagCursor_GetFieldPocketPosition(fieldSystem->bagCursor, 4, &v5, &v4);
    sub_0209733C(menu->taskData, v4, v5, v6 + 3);

    sub_0203D2E4(fieldSystem, menu->taskData);
    StartMenu_SetCallback(menu, sub_0203C390);
}

static BOOL sub_0203C390(FieldTask *taskMan)
{
    FieldSystem *fieldSystem;
    StartMenu *menu;
    u8 v2, v3;

    fieldSystem = FieldTask_GetFieldSystem(taskMan);
    menu = FieldTask_GetEnv(taskMan);

    sub_02097390(menu->taskData, &v2, &v3);
    BagCursor_SetFieldPocketPosition(fieldSystem->bagCursor, 4, v3, v2);
    Heap_FreeExplicit(HEAP_ID_FIELD2, menu->taskData);

    menu->taskData = sub_0203D20C(fieldSystem, &menu->unk_230);
    StartMenu_SetCallback(menu, StartMenu_ExitBag);

    return 0;
}

BOOL sub_0203C3F4(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    StartMenu *menu = FieldTask_GetEnv(taskMan);

    Heap_FreeExplicit(HEAP_ID_FIELD2, menu->taskData);
    menu->taskData = sub_0203D20C(fieldSystem, &menu->unk_230);
    StartMenu_SetCallback(menu, StartMenu_ExitBag);

    return 0;
}

BOOL sub_0203C434(FieldTask *taskMan)
{
    FieldSystem *fieldSystem;
    StartMenu *menu;
    TownMapContext *v2;
    u32 v3;

    fieldSystem = FieldTask_GetFieldSystem(taskMan);
    menu = FieldTask_GetEnv(taskMan);
    v3 = *((u32 *)menu->unk_260);

    Heap_FreeExplicit(HEAP_ID_FIELD2, menu->unk_260);

    v2 = (TownMapContext *)menu->taskData;

    if (!(v2->flyLocationSelected)) {
        Heap_FreeExplicit(HEAP_ID_FIELD2, menu->taskData);
        menu->taskData = FieldSystem_OpenPartyMenu(fieldSystem, &menu->fieldMoveContext, v3);
        StartMenu_SetCallback(menu, StartMenu_ExitPartyMenu);
    } else {
        Pokemon *mon;
        void *v5;
        void *journalEntryLocationEvent;

        mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), v3);
        v5 = sub_0207064C(HEAP_ID_FIELD2, fieldSystem, mon, v2->flyLocationMapHeader, v2->flyLocationX * 32 + 16, v2->flyLocationZ * 32 + 16);
        journalEntryLocationEvent = JournalEntry_CreateEventUsedMove(LOCATION_EVENT_FLEW_TO_LOCATION - LOCATION_EVENT_USED_CUT, v2->flyLocationMapHeader, HEAP_ID_FIELD2);

        JournalEntry_SaveData(fieldSystem->journalEntry, journalEntryLocationEvent, JOURNAL_LOCATION);
        Heap_FreeExplicit(HEAP_ID_FIELD2, menu->taskData);
        FieldSystem_StartFieldMap(fieldSystem);

        menu->callback = sub_02070680;
        menu->taskData = v5;
        menu->state = START_MENU_STATE_10;
    }

    return FALSE;
}

BOOL sub_0203C50C(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    StartMenu *menu = FieldTask_GetEnv(taskMan);

    menu->taskData = sub_0203D20C(fieldSystem, &menu->unk_230);
    StartMenu_SetCallback(menu, StartMenu_ExitBag);

    return 0;
}

static void sub_0203C668(FieldSystem *fieldSystem, StartMenu *menu, u8 mode);

void *sub_0203C540(u16 fieldSystem, u8 param1, u8 param2)
{
    UnkStruct_0203C540 *v0 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(UnkStruct_0203C540));

    v0->unk_00 = fieldSystem;
    v0->unk_02 = param2;
    v0->unk_03 = param1;

    return (void *)v0;
}

BOOL StartMenu_ExitMail(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    StartMenu *menu = FieldTask_GetEnv(taskMan);
    UnkStruct_0203C540 *v2 = menu->unk_260;

    switch (v2->unk_03) {
    case 3:
        sub_02097770(menu->taskData);
        menu->taskData = sub_0203D20C(fieldSystem, &menu->unk_230);
        StartMenu_SetCallback(menu, StartMenu_ExitBag);
        break;
    case 2:
        sub_02097770(menu->taskData);
        menu->taskData = FieldSystem_OpenPartyMenu(fieldSystem, &menu->fieldMoveContext, v2->unk_02);
        StartMenu_SetCallback(menu, StartMenu_ExitPartyMenu);
        break;
    case 0:
        if (sub_02097728(menu->taskData) == 1) {
            sub_0203C668(fieldSystem, menu, PARTY_MENU_MODE_GIVE_MAIL_DONE);
        } else {
            sub_02097770(menu->taskData);
            menu->taskData = FieldSystem_OpenPartyMenu(fieldSystem, &menu->fieldMoveContext, v2->unk_02);
            StartMenu_SetCallback(menu, StartMenu_ExitPartyMenu);
        }
        break;
    case 1:
        if (sub_02097728(menu->taskData) == 1) {
            sub_0203C668(fieldSystem, menu, PARTY_MENU_MODE_GIVE_MAIL);
        } else {
            sub_02097770(menu->taskData);
            menu->taskData = sub_0203D20C(fieldSystem, &menu->unk_230);
            StartMenu_SetCallback(menu, StartMenu_ExitBag);
        }
        break;
    }

    Heap_Free(menu->unk_260);
    return 0;
}

static void sub_0203C668(FieldSystem *fieldSystem, StartMenu *menu, u8 mode) // TODO:
{
    UnkStruct_0203C540 *v0 = menu->unk_260;
    PartyMenu *partyMenu = Heap_Alloc(HEAP_ID_FIELD2, sizeof(PartyMenu));

    memset(partyMenu, 0, sizeof(PartyMenu));
    partyMenu->party = SaveData_GetParty(fieldSystem->saveData);
    partyMenu->bag = SaveData_GetBag(fieldSystem->saveData);
    partyMenu->mailbox = SaveData_GetMailbox(fieldSystem->saveData);
    partyMenu->options = SaveData_GetOptions(fieldSystem->saveData);
    partyMenu->fieldMoveContext = &menu->fieldMoveContext;
    partyMenu->type = PARTY_MENU_TYPE_BASIC;
    partyMenu->usedItemID = v0->unk_00;
    partyMenu->selectedMonSlot = v0->unk_02;
    partyMenu->mode = mode;
    partyMenu->fieldSystem = fieldSystem;

    sub_02097750(menu->taskData, Party_GetPokemonBySlotIndex(partyMenu->party, v0->unk_02));
    sub_02097770(menu->taskData);
    FieldSystem_StartChildProcess(fieldSystem, &gPokemonPartyAppTemplate, partyMenu);

    menu->taskData = partyMenu;
    StartMenu_SetCallback(menu, StartMenu_ExitPartyMenu);
}

BOOL sub_0203C710(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    StartMenu *menu = FieldTask_GetEnv(taskMan);

    PoffinCaseAppData_Free(menu->taskData);

    menu->taskData = sub_0203D20C(fieldSystem, &menu->unk_230);
    StartMenu_SetCallback(menu, StartMenu_ExitBag);

    return 0;
}

BOOL sub_0203C750(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    StartMenu *menu = FieldTask_GetEnv(taskMan);

    menu->taskData = sub_0203D20C(fieldSystem, &menu->unk_230);
    StartMenu_SetCallback(menu, StartMenu_ExitBag);

    return 0;
}

BOOL sub_0203C784(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    StartMenu *menu = FieldTask_GetEnv(taskMan);

    menu->taskData = sub_0203D20C(fieldSystem, &menu->unk_230);
    StartMenu_SetCallback(menu, StartMenu_ExitBag);

    return 0;
}

static void StartMenu_EvolveInit(FieldTask *taskMan)
{
    FieldSystem *fieldSystem;
    StartMenu *menu;
    UnkStruct_0203C7B8 *v2;
    Party *v3;
    Pokemon *v4;
    EvolutionData *v5;

    fieldSystem = FieldTask_GetFieldSystem(taskMan);
    menu = FieldTask_GetEnv(taskMan);
    v2 = menu->taskData;

    Sound_StopWaveOutAndSequences();
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_73, 0x30000);

    v3 = SaveData_GetParty(fieldSystem->saveData);
    v4 = Party_GetPokemonBySlotIndex(v3, v2->unk_00);

    if (v2->unk_01 == 0) {
        v5 = Evolution_Begin(v3, v4, v2->unk_04, SaveData_GetOptions(fieldSystem->saveData), PokemonSummaryScreen_ShowContestData(fieldSystem->saveData), SaveData_GetPokedex(fieldSystem->saveData), SaveData_GetBag(fieldSystem->saveData), SaveData_GetGameRecords(fieldSystem->saveData), SaveData_GetPoketch(fieldSystem->saveData), v2->unk_08, 0x1, HEAP_ID_73);
    } else {
        v5 = Evolution_Begin(v3, v4, v2->unk_04, SaveData_GetOptions(fieldSystem->saveData), PokemonSummaryScreen_ShowContestData(fieldSystem->saveData), SaveData_GetPokedex(fieldSystem->saveData), SaveData_GetBag(fieldSystem->saveData), SaveData_GetGameRecords(fieldSystem->saveData), SaveData_GetPoketch(fieldSystem->saveData), v2->unk_08, NULL, HEAP_ID_73);
    }

    {
        u32 *v6 = Heap_Alloc(HEAP_ID_FIELD2, 4);

        *v6 = v2->unk_00;
        menu->unk_260 = v6;
    }

    Heap_Free(menu->taskData);

    menu->taskData = v5;
    menu->state = START_MENU_STATE_EVOLVE;
}

static void StartMenu_Evolve(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    StartMenu *menu = FieldTask_GetEnv(taskMan);

    if (Evolution_IsDone(menu->taskData) == 1) {
        Evolution_Free(menu->taskData);
        Heap_Destroy(HEAP_ID_73);
        Sound_StopBGM(SEQ_SHINKA, 0);
        Sound_SetScene(SOUND_SCENE_NONE);
        sub_020556A0(fieldSystem, fieldSystem->location->mapId);

        menu->taskData = sub_0203D20C(fieldSystem, &menu->unk_230);

        {
            u32 v2 = *((u32 *)menu->unk_260);

            BagContext_SetSelectedMonSlot(menu->taskData, (u8)v2);
            Heap_Free(menu->unk_260);
        }

        StartMenu_SetCallback(menu, StartMenu_ExitBag);
    }
}
