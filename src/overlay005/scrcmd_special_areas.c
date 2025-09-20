#include "overlay005/scrcmd_special_areas.h"

#include <nitro.h>
#include <string.h>

#include "constants/pokemon.h"
#include "generated/game_records.h"
#include "generated/items.h"
#include "generated/maps.h"
#include "generated/species.h"

#include "struct_decls/struct_020216E0_decl.h"
#include "struct_decls/struct_020308A0_decl.h"
#include "struct_decls/struct_02061830_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/wi_fi_history.h"

#include "applications/pokedex/pokedex_sort.h"
#include "field/field_system.h"
#include "overlay005/ov5_021EB1A0.h"
#include "overlay005/ov5_021ECE40.h"
#include "overlay005/struct_ov5_021F6704_decl.h"

#include "bag.h"
#include "berry_patch_graphics.h"
#include "bg_window.h"
#include "field_script_context.h"
#include "font.h"
#include "game_records.h"
#include "graphics.h"
#include "heap.h"
#include "inlines.h"
#include "list_menu.h"
#include "map_object.h"
#include "math_util.h"
#include "message.h"
#include "narc.h"
#include "party.h"
#include "player_avatar.h"
#include "pokedex.h"
#include "pokemon.h"
#include "render_window.h"
#include "savedata_misc.h"
#include "screen_fade.h"
#include "script_manager.h"
#include "sound.h"
#include "sound_playback.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system_vars.h"
#include "unk_02020AEC.h"
#include "unk_0202C858.h"
#include "unk_02030880.h"
#include "unk_02038F8C.h"
#include "unk_02054884.h"
#include "unk_0205DFC4.h"
#include "vars_flags.h"

#include "res/text/bank/battle_tower.h"

#define MAX_MENU_SYSTEM_ITEMS 120

// Achievement requirement constants
#define ACHIEVEMENT_MIN_WIN_STREAK           1
#define ACHIEVEMENT_MIN_PRINT_STATE          2
#define ACHIEVEMENT_MIN_HALL_OF_FAME_ENTRIES 10
#define ACHIEVEMENT_MIN_BATTLEGROUND_BATTLES 50
#define ACHIEVEMENT_MIN_BERRIES_PLANTED      50
#define ACHIEVEMENT_MIN_EGGS_HATCHED         30
#define ACHIEVEMENT_MIN_STEP_COUNT           300000

// PokedexDataMenu Constants
#define POKEDEX_MENU_MAX_DISPLAY_ITEMS 8
#define POKEDEX_MENU_ITEM_WIDTH        11
#define POKEDEX_MENU_ITEM_HEIGHT       2

// Secret Base Progress System Constants
// 127 (0x7F): Maximum progress when all 7 locations are discovered (bit flags 0-6 set)
// 260 (0x104): Special completion marker to distinguish from bit-flag progress
#define SECRET_BASE_MAX_PROGRESS     127
#define SECRET_BASE_COMPLETION_VALUE 260

typedef struct {
    s16 tileX;
    s16 tileY;
} TilePosition;

struct PokedexDataMenu_t {
    FieldSystem *fieldSystem;
    SysTask *task;
    Window menuWindow;
    Window *parentWindow;
    Strbuf *itemTextBuffers[MAX_MENU_SYSTEM_ITEMS];
    MessageLoader *messageLoader;
    StringTemplate *stringTemplate;
    u8 delayCounter;
    u8 unused_205;
    u8 maxItems;
    u8 allowCancel : 1;
    u8 ownsMessageLoader : 1;
    u8 unused_207_2 : 6;
    u8 windowX;
    u8 windowY;
    u8 unused_20A;
    u8 itemCount;
    u16 *unused_20C;
    u16 *selectedIndexPtr;
    u16 *cursorPosPtr;
    u16 *scrollPosPtr;
    ListMenuTemplate listMenuTemplate;
    ListMenu *listMenu;
    u16 unused_240;
    u16 unused_242;
    StringList menuChoices[MAX_MENU_SYSTEM_ITEMS];
    u16 unused_230[MAX_MENU_SYSTEM_ITEMS];
    u16 currentCursorPos;
};

static u16 *LoadPokedexData(int heapID, int fileIndex, int *pokedexLength);
BOOL ScrCmd_ShowPokedexDataMenu(ScriptContext *ctx);
static BOOL PokedexDataMenu_IsSelectionComplete(ScriptContext *ctx);
static void CalculatePokemonPotential(Pokemon *pokemon, int *potential, int *rating);
BOOL ScrCmd_SetFavoritePokemon(ScriptContext *ctx);
BOOL ScrCmd_GetFavoritePokemon(ScriptContext *ctx);
BOOL ScrCmd_CheckAchievementRequirements(ScriptContext *ctx);
BOOL ScrCmd_SetPokemonForm(ScriptContext *ctx);
static void PokedexDataMenu_SetMessageLoader(PokedexDataMenu *menu, MessageLoader *loader);
static void PokedexDataMenu_Init(FieldSystem *fieldSystem, PokedexDataMenu *menu, u8 x, u8 y, u8 maxItems, u8 allowCancel, u16 *selectedIndex, StringTemplate *template, Window *window, MessageLoader *loader, u16 *cursorPos, u16 *scrollPos);
PokedexDataMenu *PokedexDataMenu_New(FieldSystem *fieldSystem, u8 x, u8 y, u8 maxItems, u8 allowCancel, u16 *selectedIndex, StringTemplate *template, Window *window, MessageLoader *loader, u16 *cursorPos, u16 *scrollPos);
void PokedexDataMenu_AddMenuEntry(PokedexDataMenu *menu, u32 messageIndex, u32 colorIndex, u32 itemIndex);
static void PokedexDataMenu_ShowMenu(PokedexDataMenu *menu);
static void PokedexDataMenu_AddMenuEntryInternal(PokedexDataMenu *menu, u32 messageIndex, u32 colorIndex, u32 itemIndex);
static void PokedexDataMenu_InitMenuTemplate(PokedexDataMenu *menu);
static void PokedexDataMenu_PrintCallback(ListMenu *menu, u32 index, u8 y);
static void PokedexDataMenu_CursorCallback(ListMenu *menu, u32 index, u8 y);
static void PokedexDataMenu_ProcessInput(SysTask *task, void *data);
static void PokedexDataMenu_Delete(PokedexDataMenu *menu);

static u16 BattleFrontierPokedexFileIndices[] = {
    NUMSTATFILES + PDSI_ABC,
    NUMSTATFILES + PDSI_DEF,
    NUMSTATFILES + PDSI_GHI,
    NUMSTATFILES + PDSI_JKL,
    NUMSTATFILES + PDSI_MNO,
    NUMSTATFILES + PDSI_PQR,
    NUMSTATFILES + PDSI_STU,
    NUMSTATFILES + PDSI_VWX,
    NUMSTATFILES + PDSI_YZ
};

BOOL ScrCmd_ShowPokedexDataMenu(ScriptContext *ctx)
{
    int battleStageCount;
    BattleFrontierStage *battleStage;
    u16 pokemonSpecies;
    u16 *pokedexData;
    int i, pokedexLength;
    MessageLoader *speciesLoader;
    MessageLoader *menuLoader;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    PokedexDataMenu *menuSystem;
    StringTemplate **stringTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u16 battleStageIndex = ScriptContext_GetVar(ctx);
    u16 stageType = ScriptContext_GetVar(ctx);
    u16 selectedIndexVar = ScriptContext_ReadHalfWord(ctx);
    u16 cursorPosVar = ScriptContext_ReadHalfWord(ctx);
    u16 scrollPosVar = ScriptContext_ReadHalfWord(ctx);

    ctx->data[0] = selectedIndexVar;

    speciesLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SPECIES_NAME, HEAP_ID_FIELD3);
    menuSystem = PokedexDataMenu_New(fieldSystem, 20, 1, 0, 1, FieldSystem_GetVarPointer(fieldSystem, selectedIndexVar), *stringTemplate, FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_WINDOW), speciesLoader, FieldSystem_GetVarPointer(fieldSystem, cursorPosVar), FieldSystem_GetVarPointer(fieldSystem, scrollPosVar));
    battleStage = sub_020308A0(fieldSystem->saveData, HEAP_ID_FIELD2, &battleStageCount);

    if (battleStageCount == 1) {
        pokedexData = LoadPokedexData(HEAP_ID_FIELD3, BattleFrontierPokedexFileIndices[stageType], &pokedexLength);

        for (i = 0; i < pokedexLength; i++) {
            pokemonSpecies = sub_020308BC(fieldSystem->saveData, battleStage, sub_0205E584(battleStageIndex), pokedexData[i]);

            if (pokemonSpecies != SPECIES_NONE) {
                PokedexDataMenu_AddMenuEntry(menuSystem, pokedexData[i], 0xff, pokedexData[i]);
            }
        }

        Heap_Free(pokedexData);
    }

    if (battleStage != NULL) {
        Heap_Free(battleStage);
    }

    menuLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MENU_ENTRIES, HEAP_ID_FIELD3);

    PokedexDataMenu_SetMessageLoader(menuSystem, menuLoader);
    PokedexDataMenu_AddMenuEntry(menuSystem, 12, 0xff, 0xfffe);

    MessageLoader_Free(menuLoader);

    PokedexDataMenu_SetMessageLoader(menuSystem, speciesLoader);
    PokedexDataMenu_ShowMenu(menuSystem);

    ScriptContext_Pause(ctx, PokedexDataMenu_IsSelectionComplete);
    MessageLoader_Free(speciesLoader);

    return TRUE;
}

static BOOL PokedexDataMenu_IsSelectionComplete(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *selectedIndex = FieldSystem_GetVarPointer(fieldSystem, ctx->data[0]);

    if (*selectedIndex == LIST_MENU_NO_SELECTION_YET) {
        return FALSE;
    }

    return TRUE;
}

static u16 *LoadPokedexData(int heapID, int fileIndex, int *pokedexLength)
{
    u32 pokedexSize;
    u16 *pokedex = LoadMemberFromNARC_OutFileSize(NARC_INDEX_APPLICATION__ZUKANLIST__ZKN_DATA__ZUKAN_DATA, fileIndex, 0, heapID, 0, &pokedexSize);
    *pokedexLength = pokedexSize / sizeof(u16);

    return pokedex;
}

static void PokedexDataMenu_SetMessageLoader(PokedexDataMenu *menu, MessageLoader *loader)
{
    menu->messageLoader = loader;
    return;
}

static void PokedexDataMenu_Init(FieldSystem *fieldSystem, PokedexDataMenu *menu, u8 x, u8 y, u8 maxItems, u8 allowCancel, u16 *selectedIndex, StringTemplate *template, Window *window, MessageLoader *loader, u16 *cursorPos, u16 *scrollPos)
{
    int i;

    menu->messageLoader = loader;
    menu->ownsMessageLoader = 0;
    menu->stringTemplate = template;
    menu->fieldSystem = fieldSystem;
    menu->selectedIndexPtr = selectedIndex;

    *menu->selectedIndexPtr = 0;

    menu->cursorPosPtr = cursorPos;
    menu->scrollPosPtr = scrollPos;
    menu->allowCancel = allowCancel;
    menu->maxItems = maxItems;
    menu->windowX = x;
    menu->windowY = y;
    menu->itemCount = 0;
    menu->parentWindow = window;
    menu->delayCounter = 3;
    menu->currentCursorPos = maxItems;

    for (i = 0; i < MAX_MENU_SYSTEM_ITEMS; i++) {
        menu->menuChoices[i].entry = NULL;
        menu->menuChoices[i].index = 0;
        menu->unused_230[i] = 0xff;
    }

    for (i = 0; i < MAX_MENU_SYSTEM_ITEMS; i++) {
        menu->itemTextBuffers[i] = Strbuf_Init(40 * 2, HEAP_ID_FIELD1);
    }

    *menu->selectedIndexPtr = LIST_MENU_NO_SELECTION_YET;
    return;
}

PokedexDataMenu *PokedexDataMenu_New(FieldSystem *fieldSystem, u8 x, u8 y, u8 maxItems, u8 allowCancel, u16 *selectedIndex, StringTemplate *template, Window *window, MessageLoader *loader, u16 *cursorPos, u16 *scrollPos)
{
    PokedexDataMenu *menu;
    int i;

    menu = Heap_Alloc(HEAP_ID_FIELD1, sizeof(PokedexDataMenu));

    if (menu == NULL) {
        return NULL;
    }

    memset(menu, 0, sizeof(PokedexDataMenu));
    PokedexDataMenu_Init(fieldSystem, menu, x, y, maxItems, allowCancel, selectedIndex, template, window, loader, cursorPos, scrollPos);

    return menu;
}

void PokedexDataMenu_AddMenuEntry(PokedexDataMenu *menu, u32 messageIndex, u32 colorIndex, u32 itemIndex)
{
    PokedexDataMenu_AddMenuEntryInternal(menu, messageIndex, colorIndex, itemIndex);
    return;
}

static void PokedexDataMenu_ShowMenu(PokedexDataMenu *menu)
{
    if (menu->itemCount > POKEDEX_MENU_MAX_DISPLAY_ITEMS) {
        Window_Add(menu->fieldSystem->bgConfig, &menu->menuWindow, BG_LAYER_MAIN_3, menu->windowX, menu->windowY, POKEDEX_MENU_ITEM_WIDTH, POKEDEX_MENU_MAX_DISPLAY_ITEMS * POKEDEX_MENU_ITEM_HEIGHT, PLTT_13, 1);
    } else {
        Window_Add(menu->fieldSystem->bgConfig, &menu->menuWindow, BG_LAYER_MAIN_3, menu->windowX, menu->windowY, POKEDEX_MENU_ITEM_WIDTH, menu->itemCount * POKEDEX_MENU_ITEM_HEIGHT, PLTT_13, 1);
    }

    LoadStandardWindowGraphics(menu->fieldSystem->bgConfig, BG_LAYER_MAIN_3, (1024 - (18 + 12) - 9), 11, STANDARD_WINDOW_SYSTEM, HEAP_ID_FIELD1);
    Window_DrawStandardFrame(&menu->menuWindow, TRUE, (1024 - (18 + 12) - 9), PLTT_11);
    PokedexDataMenu_InitMenuTemplate(menu);

    menu->listMenu = ListMenu_New((const ListMenuTemplate *)&menu->listMenuTemplate, *menu->cursorPosPtr, *menu->scrollPosPtr, HEAP_ID_FIELD1);
    menu->task = SysTask_Start(PokedexDataMenu_ProcessInput, menu, 0);

    return;
}

static void PokedexDataMenu_AddMenuEntryInternal(PokedexDataMenu *menu, u32 messageIndex, u32 colorIndex, u32 itemIndex)
{
    int i;
    void *temp;

    {
        Strbuf *tempStrbuf = Strbuf_Init(40 * 2, HEAP_ID_FIELD1);

        MessageLoader_GetStrbuf(menu->messageLoader, messageIndex, tempStrbuf);
        StringTemplate_Format(menu->stringTemplate, menu->itemTextBuffers[menu->itemCount], tempStrbuf);
        menu->menuChoices[menu->itemCount].entry = (void *)menu->itemTextBuffers[menu->itemCount];
        Strbuf_Free(tempStrbuf);
    }

    if (itemIndex == 0xfa) {
        menu->menuChoices[menu->itemCount].index = 0xfffffffd;
    } else {
        menu->menuChoices[menu->itemCount].index = itemIndex;
    }

    menu->unused_230[menu->itemCount] = colorIndex;
    menu->itemCount++;

    return;
}

static void PokedexDataMenu_InitMenuTemplate(PokedexDataMenu *menu)
{
    menu->listMenuTemplate.choices = menu->menuChoices;
    menu->listMenuTemplate.cursorCallback = PokedexDataMenu_CursorCallback;
    menu->listMenuTemplate.printCallback = PokedexDataMenu_PrintCallback;
    menu->listMenuTemplate.window = &menu->menuWindow;
    menu->listMenuTemplate.count = menu->itemCount;
    menu->listMenuTemplate.maxDisplay = POKEDEX_MENU_MAX_DISPLAY_ITEMS;
    menu->listMenuTemplate.headerXOffset = 1;
    menu->listMenuTemplate.textXOffset = 12;
    menu->listMenuTemplate.cursorXOffset = 2;
    menu->listMenuTemplate.yOffset = 1;
    menu->listMenuTemplate.textColorFg = 1;
    menu->listMenuTemplate.textColorBg = 15;
    menu->listMenuTemplate.textColorShadow = 2;
    menu->listMenuTemplate.letterSpacing = 0;
    menu->listMenuTemplate.lineSpacing = 0;
    menu->listMenuTemplate.pagerMode = PAGER_MODE_LEFT_RIGHT_PAD;
    menu->listMenuTemplate.fontID = FONT_SYSTEM;
    menu->listMenuTemplate.cursorType = 0;
    menu->listMenuTemplate.parent = (void *)menu;

    return;
}

static void PokedexDataMenu_PrintCallback(ListMenu *menu, u32 index, u8 y)
{
    if (index == 0xfffffffd) {
        ListMenu_SetAltTextColors(menu, 3, 15, 4);
    } else {
        ListMenu_SetAltTextColors(menu, 1, 15, 2);
    }
}

static void PokedexDataMenu_CursorCallback(ListMenu *menu, u32 index, u8 y)
{
    u32 temp1, temp2;
    u16 listPos = 0;
    u16 cursorPos = 0;
    PokedexDataMenu *menuSystem = (PokedexDataMenu *)ListMenu_GetAttribute(menu, LIST_MENU_PARENT);

    ListMenu_GetListAndCursorPos(menu, &listPos, &cursorPos);

    if (menuSystem->cursorPosPtr != NULL && menuSystem->scrollPosPtr != NULL) {
        *menuSystem->cursorPosPtr = listPos;
        *menuSystem->scrollPosPtr = cursorPos;
    }

    return;
}

static void PokedexDataMenu_ProcessInput(SysTask *task, void *data)
{
    u16 oldCursorPos;
    u32 inputResult;
    PokedexDataMenu *menuSystem = (PokedexDataMenu *)data;

    if (menuSystem->delayCounter != 0) {
        menuSystem->delayCounter--;
        return;
    }

    if (IsScreenFadeDone() == FALSE) {
        return;
    }

    inputResult = ListMenu_ProcessInput(menuSystem->listMenu);
    oldCursorPos = menuSystem->currentCursorPos;

    ListMenu_CalcTrueCursorPos(menuSystem->listMenu, &menuSystem->currentCursorPos);

    if (oldCursorPos != menuSystem->currentCursorPos) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    switch (inputResult) {
    case 0xffffffff:
        break;
    case 0xfffffffe:
        if (menuSystem->allowCancel == 1) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            *menuSystem->selectedIndexPtr = 0xfffe;
            PokedexDataMenu_Delete(data);
        }
        break;
    default:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        *menuSystem->selectedIndexPtr = inputResult;
        PokedexDataMenu_Delete(data);
        break;
    }

    return;
}

static void PokedexDataMenu_Delete(PokedexDataMenu *menu)
{
    int i;

    Sound_PlayEffect(SEQ_SE_CONFIRM);
    ListMenu_Free(menu->listMenu, NULL, NULL);
    Window_EraseStandardFrame(menu->listMenuTemplate.window, 0);
    Window_Remove(&menu->menuWindow);

    for (i = 0; i < MAX_MENU_SYSTEM_ITEMS; i++) {
        Strbuf_Free(menu->itemTextBuffers[i]);
    }

    if (menu->ownsMessageLoader == 1) {
        MessageLoader_Free(menu->messageLoader);
    }

    SysTask_Done(menu->task);
    Heap_Free(menu);

    return;
}

static const u16 sHighestIVMessageIndices[] = {
    pl_msg_00000304_00122,
    pl_msg_00000304_00123,
    pl_msg_00000304_00124,
    pl_msg_00000304_00127,
    pl_msg_00000304_00125,
    pl_msg_00000304_00126
};

BOOL ScrCmd_JudgeStats(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 selectedIndex = ScriptContext_GetVar(ctx);
    u16 *totalIVs = ScriptContext_GetVarPointer(ctx);
    u16 *highestIVIndex = ScriptContext_GetVarPointer(ctx);
    u16 *highestIVValue = ScriptContext_GetVarPointer(ctx);

    Pokemon *targetPokemon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), selectedIndex);

    u32 pokemonIVs[MAX_PARTY_SIZE];
    pokemonIVs[0] = Pokemon_GetValue(targetPokemon, MON_DATA_HP_IV, NULL);
    pokemonIVs[1] = Pokemon_GetValue(targetPokemon, MON_DATA_ATK_IV, NULL);
    pokemonIVs[2] = Pokemon_GetValue(targetPokemon, MON_DATA_DEF_IV, NULL);
    pokemonIVs[3] = Pokemon_GetValue(targetPokemon, MON_DATA_SPEED_IV, NULL);
    pokemonIVs[4] = Pokemon_GetValue(targetPokemon, MON_DATA_SPATK_IV, NULL);
    pokemonIVs[5] = Pokemon_GetValue(targetPokemon, MON_DATA_SPDEF_IV, NULL);

    *totalIVs = 0;
    u8 i;

    for (i = 0; i < MAX_PARTY_SIZE; i++) {
        *totalIVs += pokemonIVs[i];
    }

    *highestIVIndex = 0;
    *highestIVValue = pokemonIVs[0];

    for (i = 1; i < MAX_PARTY_SIZE; i++) {
        if (pokemonIVs[*highestIVIndex] < pokemonIVs[i]) {
            *highestIVIndex = i;
            *highestIVValue = pokemonIVs[i];
        } else if (pokemonIVs[*highestIVIndex] == pokemonIVs[i]) {
            if (LCRNG_Next() % 2 == 0) {
                *highestIVIndex = i;
                *highestIVValue = pokemonIVs[i];
            }
        }
    }

    *highestIVIndex = sHighestIVMessageIndices[*highestIVIndex];
    return FALSE;
}

BOOL ScrCmd_CountGriseousOrbs(ScriptContext *ctx)
{
    Pokemon *pokemon;
    Party *party;
    int partyCount, i, bagResult;
    int pokemonSpecies, pokemonForm;
    u32 emptyHeldItem;
    int heldItems[MAX_PARTY_SIZE];
    int griseousOrbCount = 0;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *result = ScriptContext_GetVarPointer(ctx);

    party = SaveData_GetParty(fieldSystem->saveData);
    partyCount = Party_GetCurrentCount(party);
    *result = 0;

    for (i = 0; i < partyCount; i++) {
        pokemon = Party_GetPokemonBySlotIndex(party, i);
        heldItems[i] = Pokemon_GetValue(pokemon, MON_DATA_HELD_ITEM, NULL);

        if (heldItems[i] == ITEM_GRISEOUS_ORB) {
            griseousOrbCount++;
        }
    }

    if (griseousOrbCount > 0) {
        bagResult = Bag_TryAddItem(SaveData_GetBag(fieldSystem->saveData), ITEM_GRISEOUS_ORB, griseousOrbCount, HEAP_ID_FIELD1);

        if (bagResult == 0) {
            *result = 0xff;
            return FALSE;
        }

        emptyHeldItem = 0;

        for (i = 0; i < partyCount; i++) {
            if (heldItems[i] == ITEM_GRISEOUS_ORB) {
                pokemon = Party_GetPokemonBySlotIndex(party, i);
                Pokemon_SetValue(pokemon, MON_DATA_HELD_ITEM, &emptyHeldItem);
            }
        }
    }

    for (i = 0; i < partyCount; i++) {
        pokemon = Party_GetPokemonBySlotIndex(party, i);
        pokemonForm = Pokemon_GetValue(pokemon, MON_DATA_FORM, NULL);

        if (pokemonForm > 0) {
            pokemonSpecies = Pokemon_GetValue(pokemon, MON_DATA_SPECIES, NULL);

            switch (pokemonSpecies) {
            case SPECIES_GIRATINA:
                Pokemon_SetGiratinaFormByHeldItem(pokemon);
                break;
            case SPECIES_ROTOM:
                Pokemon_SetRotomForm(pokemon, ROTOM_FORM_BASE, 0);
                break;
            case SPECIES_SHAYMIN:
                Pokemon_SetShayminForm(pokemon, SHAYMIN_FORM_LAND);
                break;
            }
        }
    }

    return FALSE;
}

BOOL ScrCmd_TryRevertPokemonForm(ScriptContext *ctx)
{
    Pokemon *pokemon;
    Party *party;
    int pokemonSpecies, pokemonForm;
    u32 emptyHeldItem;
    int currentHeldItem;
    int bagNotFull;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 partySlot = ScriptContext_GetVar(ctx);
    u16 *result = ScriptContext_GetVarPointer(ctx);

    party = SaveData_GetParty(fieldSystem->saveData);
    pokemon = Party_GetPokemonBySlotIndex(party, partySlot);

    *result = 0;

    if (partySlot == PARTY_SLOT_NONE) {
        return FALSE;
    }

    currentHeldItem = Pokemon_GetValue(pokemon, MON_DATA_HELD_ITEM, NULL);

    if (currentHeldItem == ITEM_GRISEOUS_ORB) {
        bagNotFull = Bag_TryAddItem(SaveData_GetBag(fieldSystem->saveData), ITEM_GRISEOUS_ORB, 1, HEAP_ID_FIELD1);

        if (bagNotFull == 0) {
            *result = 0xff;
            return FALSE;
        }

        emptyHeldItem = 0;
        Pokemon_SetValue(pokemon, MON_DATA_HELD_ITEM, &emptyHeldItem);
    }

    pokemonForm = Pokemon_GetValue(pokemon, MON_DATA_FORM, NULL);

    if (pokemonForm > 0) {
        pokemonSpecies = Pokemon_GetValue(pokemon, MON_DATA_SPECIES, NULL);

        switch (pokemonSpecies) {
        case SPECIES_GIRATINA:
            Pokemon_SetGiratinaFormByHeldItem(pokemon);
            break;
        case SPECIES_ROTOM:
            Pokemon_SetRotomForm(pokemon, ROTOM_FORM_BASE, 0);
            break;
        case SPECIES_SHAYMIN:
            Pokemon_SetShayminForm(pokemon, SHAYMIN_FORM_LAND);
            break;
        }
    }

    return FALSE;
}

BOOL ScrCmd_SetPokemonForm(ScriptContext *ctx)
{
    Pokemon *pokemon;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 partySlot = ScriptContext_GetVar(ctx);
    u16 newForm = ScriptContext_GetVar(ctx);

    pokemon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), partySlot);
    Pokemon_SetValue(pokemon, MON_DATA_FORM, &newForm);

    return FALSE;
}

BOOL ScrCmd_GetPartyRotomCountAndFirst(ScriptContext *ctx)
{
    int partyCount, i, count;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *destVarCount = ScriptContext_GetVarPointer(ctx);
    u16 *destVarPartySlot = ScriptContext_GetVarPointer(ctx);

    count = 0;
    *destVarPartySlot = PARTY_SLOT_NONE;
    Party *party = SaveData_GetParty(fieldSystem->saveData);
    partyCount = Party_GetCurrentCount(party);

    for (i = 0; i < partyCount; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);
        u32 species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
        u32 form = Pokemon_GetValue(mon, MON_DATA_FORM, NULL);
        u32 isEgg = Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL);

        if (species == SPECIES_ROTOM && form != ROTOM_FORM_BASE && isEgg == FALSE) {
            if (*destVarPartySlot == PARTY_SLOT_NONE) {
                *destVarPartySlot = i;
            }

            count++;
        }
    }

    *destVarCount = count;
    return FALSE;
}

BOOL ScrCmd_SetRotomForm(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 partySlot = ScriptContext_GetVar(ctx);
    u16 moveSlot = ScriptContext_GetVar(ctx);
    u16 newForm = ScriptContext_GetVar(ctx);
    u16 form = ScriptContext_GetVar(ctx);

    Party *party = SaveData_GetParty(fieldSystem->saveData);
    Pokemon *mon = Party_GetPokemonBySlotIndex(party, partySlot);

    Pokemon_SetRotomForm(mon, form, moveSlot);
    Pokedex_Capture(SaveData_GetPokedex(fieldSystem->saveData), mon);

    return FALSE;
}

BOOL ScrCmd_GetPokemonPotential(ScriptContext *ctx)
{
    u16 species;
    int potential, rating;
    Pokemon *pokemon;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 partySlot = ScriptContext_GetVar(ctx);
    u16 *result = ScriptContext_GetVarPointer(ctx);

    pokemon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), partySlot);
    species = Pokemon_GetValue(pokemon, MON_DATA_SPECIES, NULL);

    if (Pokemon_GetValue(pokemon, MON_DATA_IS_EGG, NULL) == 0) {
        switch (species) {
        case SPECIES_CATERPIE:
        case SPECIES_METAPOD:
        case SPECIES_WEEDLE:
        case SPECIES_KAKUNA:
        case SPECIES_MAGIKARP:
        case SPECIES_DITTO:
        case SPECIES_WOBBUFFET:
        case SPECIES_SMEARGLE:
        case SPECIES_WURMPLE:
        case SPECIES_SILCOON:
        case SPECIES_CASCOON:
        case SPECIES_WYNAUT:
        case SPECIES_BELDUM:
        case SPECIES_BURMY:
        case SPECIES_COMBEE:
        case SPECIES_KRICKETOT:
            *result = 0xffff;
            return FALSE;
        }
    }

    CalculatePokemonPotential(pokemon, &potential, &rating);
    *result = rating;

    return FALSE;
}

static void CalculatePokemonPotential(Pokemon *pokemon, int *potential, int *rating)
{
    int hpIV;
    int atkIV;
    int defIV;
    int speedIV;
    int spAtkIV;
    int spDefIV;

    hpIV = Pokemon_GetValue(pokemon, MON_DATA_HP_IV, NULL);
    atkIV = Pokemon_GetValue(pokemon, MON_DATA_ATK_IV, NULL);
    defIV = Pokemon_GetValue(pokemon, MON_DATA_DEF_IV, NULL);
    speedIV = Pokemon_GetValue(pokemon, MON_DATA_SPEED_IV, NULL);
    spAtkIV = Pokemon_GetValue(pokemon, MON_DATA_SPATK_IV, NULL);
    spDefIV = Pokemon_GetValue(pokemon, MON_DATA_SPDEF_IV, NULL);

    if (potential != NULL) {
        // Calculate Pokemon potential using the 2nd bit (bit 1) of each IV
        // This creates a 6-bit value where each stat contributes 0 or 2
        *potential = ((hpIV & 2) >> 1) | // HP bit 1 → position 0
            ((atkIV & 2) >> 0) | // Attack bit 1 → position 1
            ((defIV & 2) << 1) | // Defense bit 1 → position 2
            ((speedIV & 2) << 2) | // Speed bit 1 → position 3
            ((spAtkIV & 2) << 3) | // Sp.Atk bit 1 → position 4
            ((spDefIV & 2) << 4); // Sp.Def bit 1 → position 5

        // Scale from 0-63 range to 30-70 range for potential display
        *potential = (*potential * 40 / 63) + 30;
    }

    if (rating != NULL) {
        // Calculate Pokemon rating using the 1st bit (bit 0) of each IV
        // This creates a 6-bit value where each stat contributes 0 or 1
        *rating = ((hpIV & 1) >> 0) | // HP bit 0 → position 0
            ((atkIV & 1) << 1) | // Attack bit 0 → position 1
            ((defIV & 1) << 2) | // Defense bit 0 → position 2
            ((speedIV & 1) << 3) | // Speed bit 0 → position 3
            ((spAtkIV & 1) << 4) | // Sp.Atk bit 0 → position 4
            ((spDefIV & 1) << 5); // Sp.Def bit 0 → position 5

        // Scale from 0-63 range to 1-16 range for rating display
        *rating = (*rating * 15 / 63) + 1;

        // Apply bonus to high ratings (9+ gets +1 boost)
        if (*rating >= 9) {
            *rating = (*rating) + 1;
        }
    }
}

BOOL ScrCmd_SetFavoritePokemon(ScriptContext *ctx)
{
    MiscSaveBlock *miscSaveBlock;
    Pokemon *pokemon;
    FieldSystem *fieldSystem = ctx->fieldSystem;

    pokemon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), 0);
    miscSaveBlock = SaveData_MiscSaveBlock(fieldSystem->saveData);

    MiscSaveBlock_SetFavoriteMon(miscSaveBlock, Pokemon_GetValue(pokemon, MON_DATA_SPECIES, NULL), Pokemon_GetValue(pokemon, MON_DATA_FORM, NULL), Pokemon_GetValue(pokemon, MON_DATA_IS_EGG, NULL));
    return FALSE;
}

BOOL ScrCmd_GetFavoritePokemon(ScriptContext *ctx)
{
    int species, form, isEgg;
    MiscSaveBlock *miscSaveBlock;
    Pokemon *pokemon;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *speciesPtr = ScriptContext_GetVarPointer(ctx);
    u16 *formPtr = ScriptContext_GetVarPointer(ctx);
    u16 *isEggPtr = ScriptContext_GetVarPointer(ctx);

    miscSaveBlock = SaveData_MiscSaveBlock(fieldSystem->saveData);
    MiscSaveBlock_FavoriteMon(miscSaveBlock, &species, &form, &isEgg);

    *speciesPtr = species;
    *formPtr = form;
    *isEggPtr = isEgg;

    return FALSE;
}

BOOL ScrCmd_GetPartyMonForm2(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 partySlot = ScriptContext_GetVar(ctx);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    Party *party = SaveData_GetParty(fieldSystem->saveData);
    Pokemon *mon = Party_GetPokemonBySlotIndex(party, partySlot);

    *destVar = Pokemon_GetValue(mon, MON_DATA_FORM, NULL);

    return FALSE;
}

BOOL ScrCmd_CheckAchievementRequirements(ScriptContext *ctx)
{
    VarsFlags *varsFlags;
    GameRecords *gameRecords;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 achievementType = ScriptContext_GetVar(ctx);
    u16 *result = ScriptContext_GetVarPointer(ctx);

    varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);
    gameRecords = SaveData_GetGameRecords(fieldSystem->saveData);
    *result = TRUE;

    switch (achievementType) {
    case 13:
        if (GameRecords_GetRecordValue(gameRecords, RECORD_BATTLE_TOWER_WIN_STREAK) < ACHIEVEMENT_MIN_WIN_STREAK) {
            *result = FALSE;
        }

        if (GameRecords_GetRecordValue(gameRecords, RECORD_BATTLE_FACTORY_WIN_STREAK) < ACHIEVEMENT_MIN_WIN_STREAK) {
            *result = FALSE;
        }

        if (GameRecords_GetRecordValue(gameRecords, RECORD_BATTLE_HALL_WIN_STREAK) < ACHIEVEMENT_MIN_WIN_STREAK) {
            *result = FALSE;
        }

        if (GameRecords_GetRecordValue(gameRecords, RECORD_BATTLE_CASTLE_WIN_STREAK) < ACHIEVEMENT_MIN_WIN_STREAK) {
            *result = FALSE;
        }

        if (GameRecords_GetRecordValue(gameRecords, RECORD_BATTLE_ARCADE_WIN_STREAK) < ACHIEVEMENT_MIN_WIN_STREAK) {
            *result = FALSE;
        }
        break;
    case 14:
        *result = FALSE;

        if (SystemVars_GetBattleFactoryPrintState(varsFlags) >= ACHIEVEMENT_MIN_PRINT_STATE) {
            *result = TRUE;
        }

        if (SystemVars_GetBattleHallPrintState(varsFlags) >= ACHIEVEMENT_MIN_PRINT_STATE) {
            *result = TRUE;
        }

        if (SystemVars_GetBattleCastlePrintState(varsFlags) >= ACHIEVEMENT_MIN_PRINT_STATE) {
            *result = TRUE;
        }

        if (SystemVars_GetBattleArcadePrintState(varsFlags) >= ACHIEVEMENT_MIN_PRINT_STATE) {
            *result = TRUE;
        }

        if (SystemVars_GetBattleTowerPrintState(varsFlags) >= ACHIEVEMENT_MIN_PRINT_STATE) {
            *result = TRUE;
        }
        break;
    case 15:
        if (GameRecords_GetRecordValue(gameRecords, RECORD_HALL_OF_FAME_ENTRIES) < ACHIEVEMENT_MIN_HALL_OF_FAME_ENTRIES) {
            *result = FALSE;
        }
        break;
    case 16:
        if (GameRecords_GetRecordValue(gameRecords, RECORD_BATTLEGROUND_BATTLES) < ACHIEVEMENT_MIN_BATTLEGROUND_BATTLES) {
            *result = FALSE;
        }
        break;
    case 17:
        if (GameRecords_GetRecordValue(gameRecords, RECORD_BERRIES_PLANTED) < ACHIEVEMENT_MIN_BERRIES_PLANTED) {
            *result = FALSE;
        }
        break;
    case 18:
        if (GameRecords_GetRecordValue(gameRecords, RECORD_EGGS_HATCHED) < ACHIEVEMENT_MIN_EGGS_HATCHED) {
            *result = FALSE;
        }
        break;
    case 20:
        if (GameRecords_GetRecordValue(gameRecords, RECORD_STEP_COUNT) < ACHIEVEMENT_MIN_STEP_COUNT) {
            *result = FALSE;
        }
        break;
    }

    return FALSE;
}

BOOL ScrCmd_ScriptSync(ScriptContext *ctx)
{
    return TRUE;
}

static const TilePosition SecretBasePositions1[] = {
    { 4, 7 },
    { 5, 5 },
    { 5, 9 },
    { 7, 7 },
    { 9, 5 },
    { 9, 9 },
    { 10, 7 }
};

static const TilePosition SecretBasePositions2[] = {
    { 3, 7 },
    { 5, 7 },
    { 7, 5 },
    { 7, 7 },
    { 7, 9 },
    { 9, 7 },
    { 11, 7 }
};

static const TilePosition SecretBasePositions3[] = {
    { 5, 5 },
    { 5, 7 },
    { 5, 9 },
    { 7, 7 },
    { 9, 5 },
    { 9, 7 },
    { 9, 9 }
};

BOOL ScrCmd_IncrementSecretBaseProgress(ScriptContext *ctx)
{
    int i, maxProgress;
    u16 *progressPtr = ScriptContext_GetVarPointer(ctx);
    enum MapID secretBaseType = ScriptContext_GetVar(ctx);
    u16 currentTileX = ScriptContext_GetVar(ctx);
    u16 currentTileY = ScriptContext_GetVar(ctx);

    switch (secretBaseType) {
    case MAP_UNDERGROUND_SECRET_BASE_AREA_1:
        maxProgress = SECRET_BASE_MAX_PROGRESS;

        for (i = 0; i < NELEMS(SecretBasePositions1); i++) {
            if (currentTileX == SecretBasePositions1[i].tileX && currentTileY == SecretBasePositions1[i].tileY) {
                Sound_PlayEffect(SEQ_SE_PL_JUMP2);
                *progressPtr |= (1 << i);
                break;
            }
        }
        break;
    case MAP_UNDERGROUND_SECRET_BASE_AREA_2:
        maxProgress = SECRET_BASE_MAX_PROGRESS;

        for (i = 0; i < NELEMS(SecretBasePositions2); i++) {
            if (currentTileX == SecretBasePositions2[i].tileX && currentTileY == SecretBasePositions2[i].tileY) {
                Sound_PlayEffect(SEQ_SE_PL_JUMP2);
                *progressPtr |= (1 << i);
                break;
            }
        }
        break;
    case MAP_UNDERGROUND_SECRET_BASE_AREA_3:
        maxProgress = SECRET_BASE_MAX_PROGRESS;

        for (i = 0; i < NELEMS(SecretBasePositions3); i++) {
            if (currentTileX == SecretBasePositions3[i].tileX && currentTileY == SecretBasePositions3[i].tileY) {
                Sound_PlayEffect(SEQ_SE_PL_JUMP2);
                *progressPtr |= (1 << i);
                break;
            }
        }
        break;
    }

    // When all 7 locations are discovered (127), set special completion marker (260)
    if (*progressPtr == maxProgress) {
        *progressPtr = SECRET_BASE_COMPLETION_VALUE;
    }

    return FALSE;
}

BOOL ScrCmd_ElevateAllMapObjects(ScriptContext *ctx)
{
    fx32 playerY;
    VecFx32 position;
    UnkStruct_020216E0 *graphics;
    int index = 0;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    MapObjectManager *mapObjMan = fieldSystem->mapObjMan;
    MapObject *playerMapObject = Player_MapObject(fieldSystem->playerAvatar);
    MapObject *currentMapObject;

    MapObject_GetPosPtr(playerMapObject, &position);
    playerY = position.y;

    while (sub_020625B0(mapObjMan, &currentMapObject, &index, MAP_OBJ_STATUS_ACTIVE) == 1) {
        if (currentMapObject != playerMapObject) {
            MapObject_SetStatusFlagOn(currentMapObject, MAP_OBJ_STATUS_ELEVATED);

            if (MapObject_CheckStatusFlag(currentMapObject, MAP_OBJ_STATUS_ELEVATION_TARGET) == TRUE) {
                MapObject_GetPosPtr(currentMapObject, &position);
                position.y = playerY;
                MapObject_SetPos(currentMapObject, &position);
                MapObject_SetY(currentMapObject, (playerY >> 3) / FX32_ONE );
            }

            graphics = ov5_021EB1A0(currentMapObject);

            if (graphics == NULL && BerryPatchGraphics_IsBerryPatch(MapObject_GetGraphicsID(currentMapObject))) {
                if (sub_02062D4C(currentMapObject)) {
                    sub_02062B68(currentMapObject);
                    graphics = BerryPatchGraphics_GetGraphicsObject(currentMapObject);
                }
            }

            if (graphics != NULL) {
                ov5_021EDEB4(currentMapObject, graphics);
                sub_02021320(graphics, 1);
            }
        }
    }

    return FALSE;
}

BOOL ScrCmd_ResetAllMapObjectElevation(ScriptContext *ctx)
{
    int index = 0;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    MapObjectManager *mapObjMan = fieldSystem->mapObjMan;
    MapObject *playerMapObject = Player_MapObject(fieldSystem->playerAvatar);
    MapObject *currentMapObject;

    while (sub_020625B0(mapObjMan, &currentMapObject, &index, MAP_OBJ_STATUS_ACTIVE) == 1) {
        if (currentMapObject != playerMapObject) {
            MapObject_SetStatusFlagOff(currentMapObject, MAP_OBJ_STATUS_ELEVATED);
        }
    }

    return FALSE;
}

static void ElevateMapObject(MapObject *mapObject, int yPosition)
{
    VecFx32 position;
    UnkStruct_020216E0 *graphics;

    MapObject_SetStatusFlagOn(mapObject, MAP_OBJ_STATUS_ELEVATED);
    MapObject_GetPosPtr(mapObject, &position);

    position.y = ((yPosition << 4) * FX32_ONE);

    MapObject_SetPos(mapObject, &position);
    MapObject_SetY(mapObject, yPosition * 2);

    graphics = ov5_021EB1A0(mapObject);

    if (graphics != NULL) {
        ov5_021EDEB4(mapObject, graphics);
        sub_02021320(graphics, 1);
    }
}

BOOL ScrCmd_ElevateSpecificMapObjects(ScriptContext *ctx)
{
    MapObject *mapObject;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    MapObjectManager *mapObjMan = fieldSystem->mapObjMan;

    mapObject = MapObjMan_LocalMapObjByIndex(mapObjMan, 32);

    if (mapObject != NULL) {
        ElevateMapObject(mapObject, 9);
    }

    mapObject = MapObjMan_LocalMapObjByIndex(mapObjMan, 2);

    if (mapObject != NULL) {
        ElevateMapObject(mapObject, 9);
    }

    return FALSE;
}

BOOL ScrCmd_ResetSpecificMapObjectElevation(ScriptContext *ctx)
{
    MapObject *mapObject;
    MapObjectManager *mapObjMan = ctx->fieldSystem->mapObjMan;

    mapObject = MapObjMan_LocalMapObjByIndex(mapObjMan, 32);

    if (mapObject != NULL) {
        MapObject_SetStatusFlagOff(mapObject, MAP_OBJ_STATUS_ELEVATED);
    }

    mapObject = MapObjMan_LocalMapObjByIndex(mapObjMan, 2);

    if (mapObject != NULL) {
        MapObject_SetStatusFlagOff(mapObject, MAP_OBJ_STATUS_ELEVATED);
    }

    return FALSE;
}

BOOL ScrCmd_ElevateMapObjectByPosition(ScriptContext *ctx)
{
    int elevationHeight;
    MapObject *mapObject = MapObjMan_LocalMapObjByIndex(ctx->fieldSystem->mapObjMan, 15);
    if (mapObject != NULL) {
        switch (MapObject_GetX(mapObject)) {
        case 28:
            elevationHeight = 6;
            break;
        case 38:
            elevationHeight = 5;
            break;
        case 40:
            elevationHeight = 3;
            break;
        case 48:
            elevationHeight = 2;
            break;
        default:
            elevationHeight = 4;
            break;
        }
        ElevateMapObject(mapObject, elevationHeight);
    }
    return FALSE;
}

BOOL ScrCmd_ResetMapObjectElevation(ScriptContext *ctx)
{
    MapObject *mapObject = MapObjMan_LocalMapObjByIndex(ctx->fieldSystem->mapObjMan, 15);
    if (mapObject != NULL) {
        MapObject_SetStatusFlagOff(mapObject, MAP_OBJ_STATUS_ELEVATED);
    }
    return FALSE;
}

BOOL ScrCmd_ClearWiFiHistory(ScriptContext *ctx)
{
    WiFiHistory *wiFiHistory = SaveData_WiFiHistory(ctx->fieldSystem->saveData);

    sub_02038F8C(wiFiHistory);
    return TRUE;
}

BOOL ScrCmd_SetPlayerVolume(ScriptContext *ctx)
{
    u16 volume = ScriptContext_GetVar(ctx);

    Sound_SetPlayerVolume(1, volume);
    return FALSE;
}
