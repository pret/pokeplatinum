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
#include "struct_decls/struct_0207AE68_decl.h"
#include "struct_decls/struct_0207CB08_decl.h"
#include "struct_decls/struct_0209747C_decl.h"
#include "struct_defs/sentence.h"
#include "struct_defs/struct_0203D8AC.h"
#include "struct_defs/struct_02068630.h"
#include "struct_defs/struct_020708E0.h"
#include "struct_defs/struct_02097728.h"
#include "struct_defs/struct_02098C44.h"

#include "applications/pokedex/pokedex_main.h"
#include "applications/pokemon_summary_screen/main.h"
#include "field/field_system.h"
#include "functypes/funcptr_0203BC5C.h"
#include "overlay005/fieldmap.h"
#include "overlay005/ov5_021D2F14.h"
#include "overlay005/save_info_window.h"

#include "bag.h"
#include "bg_window.h"
#include "catching_show.h"
#include "dexmode_checker.h"
#include "field_move_tasks.h"
#include "field_overworld_state.h"
#include "field_system.h"
#include "field_task.h"
#include "font.h"
#include "game_records.h"
#include "gx_layers.h"
#include "heap.h"
#include "item.h"
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
#include "strbuf.h"
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
#include "unk_020683F4.h"
#include "unk_0206B9D8.h"
#include "unk_0207064C.h"
#include "unk_0207AE68.h"
#include "unk_0207CB08.h"
#include "unk_020972FC.h"
#include "unk_0209747C.h"
#include "unk_02097624.h"
#include "unk_020989DC.h"
#include "vars_flags.h"

#include "constdata/const_020EA02C.h"
#include "constdata/const_020F1E88.h"
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
static BOOL StartMenu_PokedexEnd(FieldTask *taskMan);
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
static BOOL sub_0203B78C(FieldTask *taskMan);
static BOOL StartMenu_SelectBag(FieldTask *taskMan);
static BOOL StartMenu_Bag(FieldTask *taskMan);
static BOOL sub_0203BC5C(FieldTask *taskMan);
static BOOL StartMenu_SelectSave(FieldTask *taskMan);
static void StartMenu_SaveWait(FieldTask *taskMan);
static void StartMenu_Save(FieldTask *taskMan);
static BOOL sub_0203C1C8(FieldTask *taskMan);
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

void sub_0203AB00(FieldSystem *fieldSystem)
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
            ov5_021D1744(1);
            menu->state = START_MENU_STATE_14;
        }
        break;
    case START_MENU_STATE_8:
        if (FieldSystem_IsRunningFieldMap(fieldSystem)) {
            ov5_021D1744(1);
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
            ov5_021D1744(1);
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
        SpriteList_Update(menu->unk_38.unk_00);
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

    Window_Add(fieldSystem->bgConfig, &menu->unk_00, 3, 20, 1, 11, optionCount * 3, 12, ((((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - (11 * 22)));
    LoadStandardWindowGraphics(fieldSystem->bgConfig, BG_LAYER_MAIN_3, 1024 - (18 + 12) - 9, 11, 1, HEAP_ID_FIELD2);
    Window_DrawStandardFrame(&menu->unk_00, 1, 1024 - (18 + 12) - 9, 11);

    v2 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_START_MENU, HEAP_ID_FIELD2);

    menu->unk_24 = StringList_New(optionCount, HEAP_ID_FIELD2);
    menu->unk_28 = 0;

    for (i = 0; i < optionCount; i++) {
        if (menu->options[i] == MENU_POS_TRAINER_CARD) {
            StringTemplate *v6;
            Strbuf *v7;
            Strbuf *v8;

            v6 = StringTemplate_Default(HEAP_ID_FIELD2);
            v7 = Strbuf_Init(8, HEAP_ID_FIELD2);
            v8 = MessageLoader_GetNewStrbuf(v2, sStartMenuActions[menu->options[i]].text);

            StringTemplate_SetPlayerName(v6, 0, SaveData_GetTrainerInfo(fieldSystem->saveData));
            StringTemplate_Format(v6, v7, v8);
            StringList_AddFromStrbuf(menu->unk_24, v7, menu->options[i]);

            Strbuf_Free(v8);
            Strbuf_Free(v7);
            StringTemplate_Free(v6);
        } else {
            StringList_AddFromMessageBank(
                menu->unk_24, v2, sStartMenuActions[menu->options[i]].text, menu->options[i]);
        }

        if (fieldSystem->unk_90 == menu->options[i]) {
            menu->unk_28 = i;
        }
    }

    fieldSystem->unk_90 = menu->options[menu->unk_28];
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
    Strbuf *v4;
    Strbuf *v5;
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

    Window_Add(fieldSystem->bgConfig, &menu->unk_10, 3, 1, 1, 12, 4, 13, (((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)));
    LoadStandardWindowGraphics(fieldSystem->bgConfig, BG_LAYER_MAIN_3, 1024 - (18 + 12) - 9, 11, 1, HEAP_ID_FIELD2);
    Window_DrawStandardFrame(&menu->unk_10, 1, 1024 - (18 + 12) - 9, 11);
    Window_FillTilemap(&menu->unk_10, 15);

    v2 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_START_MENU, HEAP_ID_FIELD2);

    if (v6 == 0) {
        v5 = MessageLoader_GetNewStrbuf(v2, 9);
    } else {
        v5 = MessageLoader_GetNewStrbuf(v2, 10);
    }

    Text_AddPrinterWithParams(&menu->unk_10, FONT_SYSTEM, v5, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(v5);

    v3 = StringTemplate_Default(HEAP_ID_FIELD2);
    v4 = Strbuf_Init(32, HEAP_ID_FIELD2);
    v5 = MessageLoader_GetNewStrbuf(v2, 11);

    if (v6 == 0) {
        u16 *v7 = FieldOverworldState_GetSafariBallCount(SaveData_GetFieldOverworldState(fieldSystem->saveData));

        StringTemplate_SetNumber(v3, 0, *v7, 2, 0, 1);
    } else {
        int parkBallCount = CatchingShow_GetParkBallCount(fieldSystem);

        StringTemplate_SetNumber(v3, 0, parkBallCount, 2, 0, 1);
    }

    StringTemplate_Format(v3, v4, v5);
    Text_AddPrinterWithParams(&menu->unk_10, FONT_SYSTEM, v4, 0, 16, TEXT_SPEED_NO_TRANSFER, NULL);

    Strbuf_Free(v4);
    Strbuf_Free(v5);
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
        fieldSystem->unk_90 = menu->options[menu->unk_28];
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
    NARC *v2;

    ov5_021D3190(&menu->unk_38, &v0, (7 + 1), HEAP_ID_FIELD2);

    v2 = NARC_ctor(NARC_INDEX_GRAPHIC__MENU_GRA, HEAP_ID_FIELD2);

    ov5_021D32E8(&menu->unk_38, v2, 5, 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 13528);
    ov5_021D3374(&menu->unk_38, v2, 1, 0, 13528);
    ov5_021D339C(&menu->unk_38, v2, 0, 0, 13528);
    ov5_021D3414(&menu->unk_38, v2, 2, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 13528);

    menu->unk_200[0] = ov5_021D3584(&menu->unk_38, &Unk_020EA0A4[0]);

    sub_0203B558(menu->unk_200[0]->sprite, menu->unk_28);

    ov5_021D3374(&menu->unk_38, v2, 4, 0, 13529);
    ov5_021D339C(&menu->unk_38, v2, 3, 0, 13529);
    ov5_021D3414(&menu->unk_38, v2, 6, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 13529);

    for (i = 0; i < optionCount; i++) {
        SpriteTemplate v3;

        v3 = Unk_020EA0A4[1];
        v3.y += 24 * i;

        if ((options[i] == MENU_POS_BAG) && (gender == GENDER_FEMALE)) {
            v3.animIdx = 9 * 3;
        } else {
            v3.animIdx = options[i] * 3;
        }

        menu->unk_200[1 + i] = ov5_021D3584(&menu->unk_38, &v3);

        {
            VecFx32 v4 = { FX32_ONE, FX32_ONE, FX32_ONE };
            Sprite_SetAffineScaleEx(menu->unk_200[1 + i]->sprite, &v4, 1);
        }
    }

    sub_0203B588(menu->unk_200[1 + menu->unk_28]->sprite, 2, 1);

    menu->unk_220 = optionCount + 1;

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    NARC_dtor(v2);
}

static void sub_0203B4E8(StartMenu *menu)
{
    u16 i;

    for (i = 0; i < menu->unk_220; i++) {
        Sprite_DeleteAndFreeResources(menu->unk_200[i]);
    }

    ov5_021D375C(&menu->unk_38);
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

void sub_0203B674(StartMenu *menu, void *param1)
{
    menu->callback = param1;
    menu->state = START_MENU_STATE_APP_RUN;
}

static BOOL StartMenu_SelectPokedex(FieldTask *taskMan)
{
    StartMenu *menu = FieldTask_GetEnv(taskMan);

    ov5_021D1744(0);

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
    menu->callback = StartMenu_PokedexEnd;

    return FALSE;
}

static BOOL StartMenu_PokedexEnd(FieldTask *taskMan)
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

    ov5_021D1744(0);

    menu->callback = sub_0203B78C;
    menu->state = START_MENU_STATE_APP_START;

    return TRUE;
}

static BOOL sub_0203B78C(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    StartMenu *menu = FieldTask_GetEnv(taskMan);

    menu->taskData = sub_0203D390(fieldSystem, &menu->fieldMoveContext, 0);
    menu->callback = sub_0203B7C0;

    return 0;
}

BOOL sub_0203B7C0(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    StartMenu *menu = FieldTask_GetEnv(taskMan);
    PartyManagementData *partyMan = (PartyManagementData *)Heap_Alloc(HEAP_ID_FIELD2, sizeof(PartyManagementData));

    memcpy(partyMan, menu->taskData, sizeof(PartyManagementData));
    Heap_Free(menu->taskData);

    switch (partyMan->menuSelectionResult) {
    case 1: {
        PokemonSummary *summary = Heap_Alloc(HEAP_ID_FIELD2, sizeof(PokemonSummary));

        summary->monData = SaveData_GetParty(fieldSystem->saveData);
        summary->options = SaveData_GetOptions(fieldSystem->saveData);
        summary->dataType = SUMMARY_DATA_PARTY_MON;
        summary->monIndex = partyMan->selectedMonSlot;
        summary->monMax = Party_GetCurrentCount(summary->monData);
        summary->move = 0;
        summary->mode = SUMMARY_MODE_NORMAL;
        summary->specialRibbons = sub_0202D79C(fieldSystem->saveData);
        summary->dexMode = SaveData_GetDexMode(fieldSystem->saveData);
        summary->showContest = PokemonSummaryScreen_ShowContestData(fieldSystem->saveData);
        summary->chatotCry = NULL;

        PokemonSummaryScreen_FlagVisiblePages(summary, Unk_020EA02C);
        PokemonSummaryScreen_SetPlayerProfile(summary, SaveData_GetTrainerInfo(fieldSystem->saveData));
        FieldSystem_OpenSummaryScreen(fieldSystem, summary);

        menu->taskData = summary;
        sub_0203B674(menu, sub_0203C1C8);
    } break;
    case 4: {
        PokemonSummary *summary = Heap_Alloc(HEAP_ID_FIELD2, sizeof(PokemonSummary));

        summary->monData = SaveData_GetParty(fieldSystem->saveData);
        summary->options = SaveData_GetOptions(fieldSystem->saveData);
        summary->dataType = SUMMARY_DATA_PARTY_MON;
        summary->monIndex = partyMan->selectedMonSlot;
        summary->monMax = 1;
        summary->move = partyMan->learnedMove;
        summary->mode = SUMMARY_MODE_SELECT_MOVE;
        summary->dexMode = SaveData_GetDexMode(fieldSystem->saveData);
        summary->showContest = PokemonSummaryScreen_ShowContestData(fieldSystem->saveData);
        summary->chatotCry = NULL;

        PokemonSummaryScreen_FlagVisiblePages(summary, Unk_020EA01C);
        PokemonSummaryScreen_SetPlayerProfile(summary, SaveData_GetTrainerInfo(fieldSystem->saveData));
        FieldSystem_OpenSummaryScreen(fieldSystem, summary);

        UnkStruct_0203C1C8 *v5 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(UnkStruct_0203C1C8));

        v5->unk_00 = partyMan->usedItemID;
        v5->unk_02 = 0;
        menu->unk_260 = v5;

        menu->taskData = summary;
        sub_0203B674(menu, sub_0203C1C8);
    } break;
    case 5: {
        PokemonSummary *summary = Heap_Alloc(HEAP_ID_FIELD2, sizeof(PokemonSummary));

        summary->monData = SaveData_GetParty(fieldSystem->saveData);
        summary->options = SaveData_GetOptions(fieldSystem->saveData);
        summary->dataType = SUMMARY_DATA_PARTY_MON;
        summary->monIndex = partyMan->selectedMonSlot;
        summary->monMax = 1;
        summary->move = partyMan->learnedMove;
        summary->mode = SUMMARY_MODE_SELECT_MOVE;
        summary->dexMode = SaveData_GetDexMode(fieldSystem->saveData);
        summary->showContest = PokemonSummaryScreen_ShowContestData(fieldSystem->saveData);
        summary->chatotCry = NULL;

        PokemonSummaryScreen_FlagVisiblePages(summary, Unk_020EA01C);
        PokemonSummaryScreen_SetPlayerProfile(summary, SaveData_GetTrainerInfo(fieldSystem->saveData));
        FieldSystem_OpenSummaryScreen(fieldSystem, summary);

        UnkStruct_0203C1C8 *v7 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(UnkStruct_0203C1C8));

        v7->unk_00 = 0;
        v7->unk_02 = (u16)partyMan->unk_34;
        menu->unk_260 = v7;

        menu->taskData = summary;
        sub_0203B674(menu, sub_0203C1C8);
    } break;
    case 6: {
        UnkStruct_02097728 *v8;

        v8 = sub_0203D920(fieldSystem, 2, partyMan->selectedMonSlot, Item_MailNumber(partyMan->usedItemID), HEAP_ID_FIELD2);
        menu->taskData = v8;

        if (partyMan->unk_20 == 10) {
            menu->unk_260 = sub_0203C540(
                partyMan->usedItemID, 0, partyMan->selectedMonSlot);
        } else {
            menu->unk_260 = sub_0203C540(
                partyMan->usedItemID, 1, partyMan->selectedMonSlot);
        }

        sub_0203B674(menu, sub_0203C558);
    } break;
    case 7: {
        UnkStruct_02097728 *v9;
        Pokemon *v10;

        v10 = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), partyMan->selectedMonSlot);
        v9 = sub_0203D984(fieldSystem, v10, HEAP_ID_FIELD2);

        menu->taskData = v9;
        menu->unk_260 = sub_0203C540(partyMan->usedItemID, 2, partyMan->selectedMonSlot);

        sub_0203B674(menu, sub_0203C558);
    } break;
    case 3: {
        u32 *v13 = (u32 *)Heap_Alloc(HEAP_ID_FIELD2, 4);
        *v13 = partyMan->selectedMonSlot;
        menu->unk_260 = (void *)v13;

        Bag *bag = SaveData_GetBag(fieldSystem->saveData);
        TrainerInfo *v12 = SaveData_GetTrainerInfo(fieldSystem->saveData);
        menu->taskData = sub_0207D824(bag, Unk_020EA020, HEAP_ID_FIELD2);

        sub_0207CB2C(menu->taskData, fieldSystem->saveData, 1, fieldSystem->bagCursor);

        sub_0203D1E4(fieldSystem, menu->taskData);
        sub_0203B674(menu, sub_0203BC5C);
    } break;
    case 8: {
        UnkStruct_0203C7B8 *v14 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(UnkStruct_0203C7B8));

        v14->unk_02 = partyMan->usedItemID;
        v14->unk_01 = 3;
        v14->unk_00 = partyMan->selectedMonSlot;
        v14->unk_04 = partyMan->evoTargetSpecies;
        v14->unk_08 = partyMan->evoType;

        menu->taskData = v14;
        menu->state = START_MENU_STATE_EVOLVE_INIT;
    } break;
    case 9: {
        UnkStruct_0203C7B8 *v15 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(UnkStruct_0203C7B8));

        v15->unk_02 = MapHeader_GetMapEvolutionMethod(fieldSystem->location->mapId);
        v15->unk_01 = 0;
        v15->unk_00 = partyMan->selectedMonSlot;
        v15->unk_04 = partyMan->evoTargetSpecies;
        v15->unk_08 = partyMan->evoType;
        menu->taskData = v15;
        menu->state = START_MENU_STATE_EVOLVE_INIT;
    } break;
    case 16:
    case 11:
    case 12:
    case 15:
    case 14:
    case 13:
    case 18:
    case 17:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
        FieldMoveTaskContext v16;
        FieldMovePokemon fieldMoveMon;

        fieldMoveMon.fieldMove = partyMan->menuSelectionResult - 11;
        fieldMoveMon.fieldMonId = partyMan->selectedMonSlot;
        fieldMoveMon.fieldTask = taskMan;

        v16 = (FieldMoveTaskContext)FieldMove_GetTaskOrError(FIELD_MOVE_TASK, fieldMoveMon.fieldMove);
        v16(&fieldMoveMon, &menu->fieldMoveContext);
        break;
    case 10:
        menu->taskData = sub_0203D20C(fieldSystem, &menu->unk_230);
        sub_0203B674(menu, sub_0203BC5C);
        break;
    default:
        if ((partyMan->unk_20 == 5) || (partyMan->unk_20 == 6) || (partyMan->unk_20 == 7) || (partyMan->unk_20 == 16) || (partyMan->unk_20 == 8)) {
            menu->taskData = sub_0203D20C(fieldSystem, &menu->unk_230);

            if (partyMan->selectedMonSlot >= 6) {
                sub_0207CB70(menu->taskData, 0);
            } else {
                sub_0207CB70(menu->taskData, partyMan->selectedMonSlot);
            }

            sub_0203B674(menu, sub_0203BC5C);
        } else if (partyMan->unk_20 == 9) {
            menu->taskData = sub_0203D20C(fieldSystem, &menu->unk_230);
            sub_0203B674(menu, sub_0203BC5C);
        } else {
            FieldSystem_StartFieldMap(fieldSystem);
            menu->state = START_MENU_STATE_12;
        }
    }

    Heap_Free(partyMan);

    return 0;
}

static BOOL StartMenu_SelectBag(FieldTask *taskMan)
{
    StartMenu *menu = FieldTask_GetEnv(taskMan);

    ov5_021D1744(0);

    menu->callback = StartMenu_Bag;
    menu->state = START_MENU_STATE_APP_START;

    return TRUE;
}

static BOOL StartMenu_Bag(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    StartMenu *menu = FieldTask_GetEnv(taskMan);

    menu->taskData = sub_0203D20C(fieldSystem, &menu->unk_230);
    sub_0207CB70(menu->taskData, 0);
    menu->callback = sub_0203BC5C;

    FieldSystem_SaveStateIfCommunicationOff(fieldSystem);

    return FALSE;
}

static BOOL sub_0203BC5C(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    StartMenu *menu = FieldTask_GetEnv(taskMan);
    UnkStruct_0207CB08 *v2 = sub_0207CB08(HEAP_ID_FIELD2);

    memcpy(v2, menu->taskData, sub_0207CB20());
    Heap_Free(menu->taskData);

    switch (sub_0207CB9C(v2)) {
    case 0: {
        UnkFuncPtr_0203BC5C v3;
        UnkStruct_02068630 v4;
        s32 v5;

        v4.unk_04 = sub_0207CB94(v2);
        v4.unk_06 = sub_0207CBA4(v2);
        v4.unk_00 = taskMan;
        v5 = Item_LoadParam(v4.unk_04, ITEM_PARAM_FIELD_USE_FUNC, HEAP_ID_FIELD2);
        v3 = (UnkFuncPtr_0203BC5C)sub_020683F4(0, v5);
        v3(&v4, &menu->unk_230);
    } break;
    case 1:
        sub_0203C2D8(taskMan, sub_0207CB94(v2));
        break;
    case 2: {
        PartyManagementData *partyMan;

        partyMan = Heap_Alloc(HEAP_ID_FIELD2, sizeof(PartyManagementData));
        memset(partyMan, 0, sizeof(PartyManagementData));

        partyMan->party = SaveData_GetParty(fieldSystem->saveData);
        partyMan->bag = SaveData_GetBag(fieldSystem->saveData);
        partyMan->mailbox = SaveData_GetMailbox(fieldSystem->saveData);
        partyMan->options = SaveData_GetOptions(fieldSystem->saveData);
        partyMan->fieldMoveContext = &menu->fieldMoveContext;
        partyMan->unk_21 = 0;
        partyMan->unk_20 = 9;
        partyMan->usedItemID = sub_0207CB94(v2);
        partyMan->fieldSystem = fieldSystem;

        FieldSystem_StartChildProcess(fieldSystem, &Unk_020F1E88, partyMan);
        menu->taskData = partyMan;
        sub_0203B674(menu, sub_0203B7C0);
    } break;
    case 4: {
        Party *party = SaveData_GetParty(fieldSystem->saveData);
        u32 v9 = *(u32 *)menu->unk_260;
        u16 item = sub_0207CB94(v2);
        Pokemon *v8 = Party_GetPokemonBySlotIndex(party, v9);

        Heap_Free(menu->unk_260);

        if ((Item_IsMail(item) == TRUE) && (Pokemon_GetValue(v8, MON_DATA_HELD_ITEM, NULL) == 0)) {
            UnkStruct_02097728 *v11;
            UnkStruct_0203C540 *v12;

            v11 = sub_0203D920(fieldSystem, 2, v9, Item_MailNumber(item), HEAP_ID_FIELD2);
            menu->taskData = v11;
            menu->unk_260 = sub_0203C540(item, 0, (u8)v9);
            sub_0203B674(menu, sub_0203C558);
        } else {
            PartyManagementData *partyMan;

            partyMan = Heap_Alloc(HEAP_ID_FIELD2, sizeof(PartyManagementData));
            memset(partyMan, 0, sizeof(PartyManagementData));

            partyMan->party = party;
            partyMan->bag = SaveData_GetBag(fieldSystem->saveData);
            partyMan->mailbox = SaveData_GetMailbox(fieldSystem->saveData);
            partyMan->options = SaveData_GetOptions(fieldSystem->saveData);
            partyMan->fieldMoveContext = &menu->fieldMoveContext;
            partyMan->unk_21 = 0;
            partyMan->usedItemID = sub_0207CB94(v2);
            partyMan->selectedMonSlot = (u8)v9;
            partyMan->fieldSystem = fieldSystem;

            if (partyMan->usedItemID == 0) {
                partyMan->unk_20 = 0;
            } else {
                partyMan->unk_20 = 10;
            }

            FieldSystem_StartChildProcess(fieldSystem, &Unk_020F1E88, partyMan);
            menu->taskData = partyMan;
            sub_0203B674(menu, sub_0203B7C0);
        }
    } break;
    case 5:
    default:
        FieldSystem_StartFieldMap(fieldSystem);
        menu->state = START_MENU_STATE_12;
    }

    Heap_Free(v2);

    return 0;
}

static BOOL StartMenu_SelectTrainerCard(FieldTask *taskMan)
{
    StartMenu *menu = FieldTask_GetEnv(taskMan);

    ov5_021D1744(0);

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
        ScriptManager_Start(taskMan, 2034, NULL, NULL);
    } else {
        menu->taskData = Heap_Alloc(HEAP_ID_FIELD3, sizeof(SaveMenu));
        saveMenu = menu->taskData;
        saveMenu->unk_04 = 0;

        ScriptManager_Start(taskMan, 2005, NULL, &saveMenu->unk_04);
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

    ov5_021D1744(0);

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

    ov5_021D1744(0);

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
        ScriptManager_Change(taskMan, 8821, NULL);
    } else {
        ScriptManager_Change(taskMan, 4, NULL);
    }

    Heap_Free(menu);
    return 0;
}

static BOOL sub_0203C1C8(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    StartMenu *menu = FieldTask_GetEnv(taskMan);
    PokemonSummary *v2 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(PokemonSummary));

    memcpy(v2, menu->taskData, sizeof(PokemonSummary));
    Heap_Free(menu->taskData);

    switch (v2->mode) {
    case SUMMARY_MODE_SELECT_MOVE: {
        PartyManagementData *partyMan;
        UnkStruct_0203C1C8 *v4;

        partyMan = Heap_Alloc(HEAP_ID_FIELD2, sizeof(PartyManagementData));
        v4 = (UnkStruct_0203C1C8 *)menu->unk_260;

        memset(partyMan, 0, sizeof(PartyManagementData));

        partyMan->party = SaveData_GetParty(fieldSystem->saveData);
        partyMan->bag = SaveData_GetBag(fieldSystem->saveData);
        partyMan->mailbox = SaveData_GetMailbox(fieldSystem->saveData);
        partyMan->options = SaveData_GetOptions(fieldSystem->saveData);
        partyMan->fieldMoveContext = &menu->fieldMoveContext;
        partyMan->unk_21 = 0;
        partyMan->fieldSystem = fieldSystem;

        if (v4->unk_00 != 0) {
            partyMan->unk_20 = 7;
            partyMan->unk_34 = 0;
        } else {
            partyMan->unk_20 = 8;
            partyMan->unk_34 = v4->unk_02;
        }

        partyMan->usedItemID = v4->unk_00;
        partyMan->selectedMonSlot = v2->monIndex;
        partyMan->learnedMove = v2->move;
        partyMan->selectedMoveSlot = v2->selectedMoveSlot;

        FieldSystem_StartChildProcess(fieldSystem, &Unk_020F1E88, partyMan);
        Heap_Free(menu->unk_260);
        menu->taskData = partyMan;
        sub_0203B674(menu, sub_0203B7C0);
    } break;
    default:
        menu->taskData = sub_0203D390(fieldSystem, &menu->fieldMoveContext, v2->monIndex);
        sub_0203B674(menu, sub_0203B7C0);
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
    sub_0203B674(menu, sub_0203C390);
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
    sub_0203B674(menu, sub_0203BC5C);

    return 0;
}

BOOL sub_0203C3F4(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    StartMenu *menu = FieldTask_GetEnv(taskMan);

    Heap_FreeExplicit(HEAP_ID_FIELD2, menu->taskData);
    menu->taskData = sub_0203D20C(fieldSystem, &menu->unk_230);
    sub_0203B674(menu, sub_0203BC5C);

    return 0;
}

BOOL sub_0203C434(FieldTask *taskMan)
{
    FieldSystem *fieldSystem;
    StartMenu *menu;
    UnkStruct_0203D8AC *v2;
    u32 v3;

    fieldSystem = FieldTask_GetFieldSystem(taskMan);
    menu = FieldTask_GetEnv(taskMan);
    v3 = *((u32 *)menu->unk_260);

    Heap_FreeExplicit(HEAP_ID_FIELD2, menu->unk_260);

    v2 = (UnkStruct_0203D8AC *)menu->taskData;

    if (!(v2->unk_10)) {
        Heap_FreeExplicit(HEAP_ID_FIELD2, menu->taskData);
        menu->taskData = sub_0203D390(fieldSystem, &menu->fieldMoveContext, v3);
        sub_0203B674(menu, sub_0203B7C0);
    } else {
        Pokemon *mon;
        void *v5;
        void *journalEntryLocationEvent;

        mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), v3);
        v5 = sub_0207064C(HEAP_ID_FIELD2, fieldSystem, mon, v2->unk_1C, v2->unk_14 * 32 + 16, v2->unk_18 * 32 + 16);
        journalEntryLocationEvent = JournalEntry_CreateEventUsedMove(LOCATION_EVENT_FLEW_TO_LOCATION - LOCATION_EVENT_USED_CUT, v2->unk_1C, HEAP_ID_FIELD2);

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
    sub_0203B674(menu, sub_0203BC5C);

    return 0;
}

static void sub_0203C668(FieldSystem *fieldSystem, StartMenu *param1, u8 param2);

void *sub_0203C540(u16 fieldSystem, u8 param1, u8 param2)
{
    UnkStruct_0203C540 *v0 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(UnkStruct_0203C540));

    v0->unk_00 = fieldSystem;
    v0->unk_02 = param2;
    v0->unk_03 = param1;

    return (void *)v0;
}

BOOL sub_0203C558(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    StartMenu *menu = FieldTask_GetEnv(taskMan);
    UnkStruct_0203C540 *v2 = menu->unk_260;

    switch (v2->unk_03) {
    case 3:
        sub_02097770(menu->taskData);
        menu->taskData = sub_0203D20C(fieldSystem, &menu->unk_230);
        sub_0203B674(menu, sub_0203BC5C);
        break;
    case 2:
        sub_02097770(menu->taskData);
        menu->taskData = sub_0203D390(fieldSystem, &menu->fieldMoveContext, v2->unk_02);
        sub_0203B674(menu, sub_0203B7C0);
        break;
    case 0:
        if (sub_02097728(menu->taskData) == 1) {
            sub_0203C668(fieldSystem, menu, 12);
        } else {
            sub_02097770(menu->taskData);
            menu->taskData = sub_0203D390(fieldSystem, &menu->fieldMoveContext, v2->unk_02);
            sub_0203B674(menu, sub_0203B7C0);
        }
        break;
    case 1:
        if (sub_02097728(menu->taskData) == 1) {
            sub_0203C668(fieldSystem, menu, 11);
        } else {
            sub_02097770(menu->taskData);
            menu->taskData = sub_0203D20C(fieldSystem, &menu->unk_230);
            sub_0203B674(menu, sub_0203BC5C);
        }
        break;
    }

    Heap_Free(menu->unk_260);
    return 0;
}

static void sub_0203C668(FieldSystem *fieldSystem, StartMenu *menu, u8 param2)
{
    UnkStruct_0203C540 *v0 = menu->unk_260;
    PartyManagementData *partyMan = Heap_Alloc(HEAP_ID_FIELD2, sizeof(PartyManagementData));

    memset(partyMan, 0, sizeof(PartyManagementData));
    partyMan->party = SaveData_GetParty(fieldSystem->saveData);
    partyMan->bag = SaveData_GetBag(fieldSystem->saveData);
    partyMan->mailbox = SaveData_GetMailbox(fieldSystem->saveData);
    partyMan->options = SaveData_GetOptions(fieldSystem->saveData);
    partyMan->fieldMoveContext = &menu->fieldMoveContext;
    partyMan->unk_21 = 0;
    partyMan->usedItemID = v0->unk_00;
    partyMan->selectedMonSlot = v0->unk_02;
    partyMan->unk_20 = param2;
    partyMan->fieldSystem = fieldSystem;

    sub_02097750(menu->taskData, Party_GetPokemonBySlotIndex(partyMan->party, v0->unk_02));
    sub_02097770(menu->taskData);
    FieldSystem_StartChildProcess(fieldSystem, &Unk_020F1E88, partyMan);

    menu->taskData = partyMan;
    sub_0203B674(menu, sub_0203B7C0);
}

BOOL sub_0203C710(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    StartMenu *menu = FieldTask_GetEnv(taskMan);

    sub_02098AF0(menu->taskData);

    menu->taskData = sub_0203D20C(fieldSystem, &menu->unk_230);
    sub_0203B674(menu, sub_0203BC5C);

    return 0;
}

BOOL sub_0203C750(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    StartMenu *menu = FieldTask_GetEnv(taskMan);

    menu->taskData = sub_0203D20C(fieldSystem, &menu->unk_230);
    sub_0203B674(menu, sub_0203BC5C);

    return 0;
}

BOOL sub_0203C784(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    StartMenu *menu = FieldTask_GetEnv(taskMan);

    menu->taskData = sub_0203D20C(fieldSystem, &menu->unk_230);
    sub_0203B674(menu, sub_0203BC5C);

    return 0;
}

static void StartMenu_EvolveInit(FieldTask *taskMan)
{
    FieldSystem *fieldSystem;
    StartMenu *menu;
    UnkStruct_0203C7B8 *v2;
    Party *v3;
    Pokemon *v4;
    UnkStruct_0207AE68 *v5;

    fieldSystem = FieldTask_GetFieldSystem(taskMan);
    menu = FieldTask_GetEnv(taskMan);
    v2 = menu->taskData;

    Sound_StopWaveOutAndSequences();
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_73, 0x30000);

    v3 = SaveData_GetParty(fieldSystem->saveData);
    v4 = Party_GetPokemonBySlotIndex(v3, v2->unk_00);

    if (v2->unk_01 == 0) {
        v5 = sub_0207AE68(v3, v4, v2->unk_04, SaveData_GetOptions(fieldSystem->saveData), PokemonSummaryScreen_ShowContestData(fieldSystem->saveData), SaveData_GetPokedex(fieldSystem->saveData), SaveData_GetBag(fieldSystem->saveData), SaveData_GetGameRecords(fieldSystem->saveData), SaveData_GetPoketch(fieldSystem->saveData), v2->unk_08, 0x1, HEAP_ID_73);
    } else {
        v5 = sub_0207AE68(v3, v4, v2->unk_04, SaveData_GetOptions(fieldSystem->saveData), PokemonSummaryScreen_ShowContestData(fieldSystem->saveData), SaveData_GetPokedex(fieldSystem->saveData), SaveData_GetBag(fieldSystem->saveData), SaveData_GetGameRecords(fieldSystem->saveData), SaveData_GetPoketch(fieldSystem->saveData), v2->unk_08, NULL, HEAP_ID_73);
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

    if (sub_0207B0D0(menu->taskData) == 1) {
        sub_0207B0E0(menu->taskData);
        Heap_Destroy(HEAP_ID_73);
        Sound_StopBGM(SEQ_SHINKA, 0);
        Sound_SetScene(SOUND_SCENE_NONE);
        sub_020556A0(fieldSystem, fieldSystem->location->mapId);

        menu->taskData = sub_0203D20C(fieldSystem, &menu->unk_230);

        {
            u32 v2 = *((u32 *)menu->unk_260);

            sub_0207CB70(menu->taskData, (u8)v2);
            Heap_Free(menu->unk_260);
        }

        sub_0203B674(menu, sub_0203BC5C);
    }
}
