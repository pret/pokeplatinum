#include "overlay005/scrcmd_move_tutor.h"

#include <nitro.h>
#include <string.h>

#include "constants/forms.h"
#include "constants/heap.h"
#include "constants/palette.h"
#include "constants/species.h"
#include "generated/items.h"
#include "generated/moves.h"

#include "field/field_system.h"
#include "overlay005/field_menu.h"

#include "bag.h"
#include "bg_window.h"
#include "field_script_context.h"
#include "font.h"
#include "heap.h"
#include "inlines.h"
#include "list_menu.h"
#include "message.h"
#include "party.h"
#include "pokedex.h"
#include "pokemon.h"
#include "render_window.h"
#include "script_manager.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "tutor_movesets.h"
#include "sound_playback.h"
#include "unk_0200F174.h"
#include "unk_02054884.h"

#include "res/pokemon/species_learnsets_by_tutor.h"
#include "res/text/bank/common_strings_2.h"

typedef struct {
    FieldSystem *fieldSystem;
    SysTask *sysTask;
    Window moveSelectWindow;
    Window *window;
    Strbuf *moveNames[NELEMS(sTeachableMoves) + 1];
    MessageLoader *messageLoader;
    StringTemplate *stringTemplate;
    u8 sysTaskDelay;
    u8 unk_C1;
    u8 initialCursorPos;
    u8 canExitWithB : 1;
    u8 freeMsgLoaderOnDelete : 1;
    u8 unused_C3_2 : 6;
    u8 tilemapLeft;
    u8 tilemapTop;
    u8 unk_C6;
    u8 menuOptionsCount;
    u16 *unk_C8;
    u16 *selectedOptionPtr;
    ListMenuTemplate menuTemplate;
    ListMenu *moveSelectionMenu;
    u16 unk_F4;
    u16 unk_F6;
    StringList movesChoices[NELEMS(sTeachableMoves) + 1];
    u16 unk_230[NELEMS(sTeachableMoves) + 1];
    u16 cursorPos;
} MoveTutorManager;

static BOOL ScriptContextShouldResume(ScriptContext *ctx);
static u16 GetMoveID(u16 moveIndex);
static u16 GetMoveIndex(u16 moveID);
static u8 Pokemon_ReadMovesetMaskByte(Pokemon *pokemon, u8 offset);
static BOOL Pokemon_HasLearnableMovesAt(Pokemon *pokemon, enum TutorLocation location);
static void MoveTutorManager_SetMessageLoader(MoveTutorManager *moveTutorManager, MessageLoader *messageLoader);
static void MoveTutorManager_Init(FieldSystem *fieldSystem, MoveTutorManager *moveTutorManager, u8 tilemapLeft, u8 tilemapTop, u8 initialCursorPos, u8 canExitWithB, u16 *selectedOptionPtr, StringTemplate *stringTemplate, Window *scriptManagerWindow, MessageLoader *messageLoader);
MoveTutorManager *MoveTutorManager_New(FieldSystem *fieldSystem, u8 tilemapLeft, u8 tilemapTop, u8 initialCursorPos, u8 canExitWithB, u16 *selectedOptionPtr, StringTemplate *stringTemplate, Window *window, MessageLoader *messageLoader);
void MoveTutorManager_AddMenuEntry(MoveTutorManager *moveTutorManager, u32 stringEntryID, u32 param2, u32 index);
static void MoveTutorManager_ShowMoveSelectionMenu(MoveTutorManager *moveTutorManager);
static void _MoveTutorManager_AddMenuEntry(MoveTutorManager *moveTutorManager, u32 stringEntryID, u32 param2, u32 index);
static void MoveTutorManager_InitMenuTemplate(MoveTutorManager *moveTutorManager);
static void MoveSelectionMenuCursorCallback(ListMenu *moveTutorManager, u32 index, u8 onInit);
static void SysTaskCallback(SysTask *sysTask, void *moveTutorManager);
static void MoveTutorManager_Delete(MoveTutorManager *moveTutorManager);

BOOL ScrCmd_CheckHasSeenSpecies(ScriptContext *ctx)
{
    u16 species = FieldSystem_TryGetVar(ctx->fieldSystem, ScriptContext_ReadHalfWord(ctx));
    u16 *seen = FieldSystem_GetVarPointer(ctx->fieldSystem, ScriptContext_ReadHalfWord(ctx));

    *seen = Pokedex_HasSeenSpecies(SaveData_GetPokedex(ctx->fieldSystem->saveData), species);
    return FALSE;
}

BOOL ScrCmd_CheckHasLearnableTutorMoves(ScriptContext *ctx)
{
    u16 partySlot = ScriptContext_GetVar(ctx);
    u16 location = ScriptContext_GetVar(ctx);
    u16 *hasLearnableMoves = ScriptContext_GetVarPointer(ctx);

    Pokemon *pokemon = Party_GetPokemonBySlotIndex(SaveData_GetParty(ctx->fieldSystem->saveData), partySlot);
    *hasLearnableMoves = Pokemon_HasLearnableMovesAt(pokemon, location);

    return FALSE;
}

BOOL ScrCmd_ResetMoveSlot(ScriptContext *ctx)
{
    u16 partySlot = ScriptContext_GetVar(ctx);
    u16 moveID = ScriptContext_GetVar(ctx);
    u16 moveSlot = ScriptContext_GetVar(ctx);

    sub_02054988(SaveData_GetParty(ctx->fieldSystem->saveData), partySlot, moveID, moveSlot);
    return FALSE;
}

BOOL ScrCmd_CheckCanAffordMove(ScriptContext *ctx)
{
    int teachableMoveIndex;
    u8 redCost, blueCost, yellowCost, greenCost;

    u16 selectedMove = ScriptContext_GetVar(ctx);
    u16 *canTeach = ScriptContext_GetVarPointer(ctx);

    Bag *bag = SaveData_GetBag(ctx->fieldSystem->saveData);

    for (teachableMoveIndex = 0; teachableMoveIndex < NELEMS(sTeachableMoves); teachableMoveIndex++) {
        if (selectedMove == sTeachableMoves[teachableMoveIndex].moveID) {
            redCost = sTeachableMoves[teachableMoveIndex].redCost;
            blueCost = sTeachableMoves[teachableMoveIndex].blueCost;
            yellowCost = sTeachableMoves[teachableMoveIndex].yellowCost;
            greenCost = sTeachableMoves[teachableMoveIndex].greenCost;
            break;
        }
    }

    if (teachableMoveIndex == NELEMS(sTeachableMoves)) {
        GF_ASSERT(FALSE);
        *canTeach = FALSE;
        return FALSE;
    }

    *canTeach = TRUE;

    if (redCost && Bag_CanRemoveItem(bag, ITEM_RED_SHARD, redCost, HEAP_ID_FIELD_TASK) == FALSE) {
        *canTeach = FALSE;
    }

    if (blueCost && Bag_CanRemoveItem(bag, ITEM_BLUE_SHARD, blueCost, HEAP_ID_FIELD_TASK) == FALSE) {
        *canTeach = FALSE;
    }

    if (yellowCost && Bag_CanRemoveItem(bag, ITEM_YELLOW_SHARD, yellowCost, HEAP_ID_FIELD_TASK) == FALSE) {
        *canTeach = FALSE;
    }

    if (greenCost && Bag_CanRemoveItem(bag, ITEM_GREEN_SHARD, greenCost, HEAP_ID_FIELD_TASK) == FALSE) {
        *canTeach = FALSE;
    }

    return FALSE;
}

BOOL ScrCmd_PayShardsCost(ScriptContext *ctx)
{
    int teachableMovesIndex;
    u8 redCost, blueCost, yellowCost, greenCost;
    u16 toTeach = ScriptContext_GetVar(ctx);

    Bag *bag = SaveData_GetBag(ctx->fieldSystem->saveData);

    for (teachableMovesIndex = 0; teachableMovesIndex < NELEMS(sTeachableMoves); teachableMovesIndex++) {
        if (toTeach == sTeachableMoves[teachableMovesIndex].moveID) {
            redCost = sTeachableMoves[teachableMovesIndex].redCost;
            blueCost = sTeachableMoves[teachableMovesIndex].blueCost;
            yellowCost = sTeachableMoves[teachableMovesIndex].yellowCost;
            greenCost = sTeachableMoves[teachableMovesIndex].greenCost;
            break;
        }
    }

    if (teachableMovesIndex == NELEMS(sTeachableMoves)) {
        GF_ASSERT(FALSE);
    }

    Bag_TryRemoveItem(bag, ITEM_RED_SHARD, redCost, HEAP_ID_FIELD_TASK);
    Bag_TryRemoveItem(bag, ITEM_BLUE_SHARD, blueCost, HEAP_ID_FIELD_TASK);
    Bag_TryRemoveItem(bag, ITEM_YELLOW_SHARD, yellowCost, HEAP_ID_FIELD_TASK);
    Bag_TryRemoveItem(bag, ITEM_GREEN_SHARD, greenCost, HEAP_ID_FIELD_TASK);

    return FALSE;
}

static u16 GetMoveID(u16 moveIndex)
{
    return sTeachableMoves[moveIndex].moveID;
}

static u16 GetMoveIndex(u16 moveID)
{
    for (int moveIndex = 0; moveIndex < NELEMS(sTeachableMoves); moveIndex++) {
        if (sTeachableMoves[moveIndex].moveID == moveID) {
            return moveIndex;
        }
    }

    GF_ASSERT(FALSE);
    return 0;
}

static u8 Pokemon_ReadMovesetMaskByte(Pokemon *pokemon, u8 offset)
{
    u32 species = Pokemon_GetValue(pokemon, MON_DATA_SPECIES, NULL);
    u32 form = Pokemon_GetValue(pokemon, MON_DATA_FORM, NULL);
    u16 moveset = species;

    switch (species) {
    case SPECIES_DEOXYS:
        if (form == 1) {
            moveset = MOVESET_FORM_DEOXYS_ATTACK;
        } else if (form == 2) {
            moveset = MOVESET_FORM_DEOXYS_DEFENSE;
        } else if (form == 3) {
            moveset = MOVESET_FORM_DEOXYS_SPEED;
        }
        break;
    case SPECIES_WORMADAM:
        if (form == 1) {
            moveset = MOVESET_FORM_WORMADAM_SANDY;
        } else if (form == 2) {
            moveset = MOVESET_FORM_WORMADAM_TRASH;
        }
        break;
    case SPECIES_GIRATINA:
        if (form == 1) {
            moveset = MOVESET_FORM_GIRATINA_ORIGIN;
        }
        break;
    case SPECIES_SHAYMIN:
        if (form == 1) {
            moveset = MOVESET_FORM_SHAYMIN_SKY;
        }
        break;
    case SPECIES_ROTOM:
        if (form == 1) {
            moveset = MOVESET_FORM_ROTOM_HEAT;
        } else if (form == 2) {
            moveset = MOVESET_FORM_ROTOM_WASH;
        } else if (form == 3) {
            moveset = MOVESET_FORM_ROTOM_FROST;
        } else if (form == 4) {
            moveset = MOVESET_FORM_ROTOM_FAN;
        } else if (form == 5) {
            moveset = MOVESET_FORM_ROTOM_MOW;
        }
        break;
    }

    return sSpeciesLearnsetsByTutor[moveset - 1].maskData[offset];
}

static BOOL Pokemon_HasLearnableMovesAt(Pokemon *pokemon, enum TutorLocation location)
{
    int movesetMaskByteOffset, movesetMaskBitOffset, knownMovesIndex;
    u8 movesetMask, canLearn;
    u32 species;
    u16 knownMoves[LEARNED_MOVES_MAX];

    species = Pokemon_GetValue(pokemon, MON_DATA_SPECIES, NULL);

    for (knownMovesIndex = 0; knownMovesIndex < LEARNED_MOVES_MAX; knownMovesIndex++) {
        knownMoves[knownMovesIndex] = Pokemon_GetValue(pokemon, MON_DATA_MOVE1 + knownMovesIndex, NULL);
    }

    for (movesetMaskByteOffset = 0; movesetMaskByteOffset < MOVESET_MASK_SIZE; movesetMaskByteOffset++) {
        movesetMask = Pokemon_ReadMovesetMaskByte(pokemon, movesetMaskByteOffset);

        for (movesetMaskBitOffset = 0; movesetMaskBitOffset < 8; movesetMaskBitOffset++) {
            canLearn = ((movesetMask >> movesetMaskBitOffset) & 0x1);

            if ((canLearn == TRUE) && (location == sTeachableMoves[movesetMaskByteOffset * 8 + movesetMaskBitOffset].location)) {
                for (knownMovesIndex = 0; knownMovesIndex < LEARNED_MOVES_MAX; knownMovesIndex++) {
                    if (knownMoves[knownMovesIndex] == sTeachableMoves[movesetMaskByteOffset * 8 + movesetMaskBitOffset].moveID) {
                        break;
                    }
                }

                if (knownMovesIndex == LEARNED_MOVES_MAX) {
                    return TRUE;
                }
            }
        }
    }

    return FALSE;
}

BOOL ScrCmd_ShowMoveTutorMoveSelectionMenu(ScriptContext *scriptContext)
{
    u8 movesetMaskByte, canLearn;
    int i, knownMoveIndex;
    Pokemon *pokemon;
    MessageLoader *moveNamesLoader;
    MessageLoader *miscMessageLoader;
    FieldSystem *fieldSystem = scriptContext->fieldSystem;
    MoveTutorManager *moveTutorManager;
    u16 knownMoves[LEARNED_MOVES_MAX];
    u16 learnableMoves[NELEMS(sTeachableMoves)];
    StringTemplate **stringTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u16 partySlot = ScriptContext_GetVar(scriptContext);
    u16 location = ScriptContext_GetVar(scriptContext);
    u16 selectedOptionVar = ScriptContext_ReadHalfWord(scriptContext);

    scriptContext->data[0] = selectedOptionVar;

    if (partySlot != 0xff) {
        pokemon = Party_GetPokemonBySlotIndex(SaveData_GetParty(scriptContext->fieldSystem->saveData), partySlot);
    }

    moveNamesLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MOVE_NAMES, HEAP_ID_FIELD_TASK);
    moveTutorManager = MoveTutorManager_New(fieldSystem, 20, 1, 0, TRUE, FieldSystem_GetVarPointer(fieldSystem, selectedOptionVar), *stringTemplate, FieldSystem_GetScriptMemberPtr(scriptContext->fieldSystem, SCRIPT_MANAGER_WINDOW), moveNamesLoader);

    for (i = 0; i < NELEMS(sTeachableMoves); i++) {
        learnableMoves[i] = MOVE_NONE;
    }

    int learnableMovesCount = 0;

    if (partySlot != 0xff) {
        for (knownMoveIndex = 0; knownMoveIndex < LEARNED_MOVES_MAX; knownMoveIndex++) {
            knownMoves[knownMoveIndex] = Pokemon_GetValue(pokemon, (MON_DATA_MOVE1 + knownMoveIndex), NULL);
        }

        for (i = 0; i < MOVESET_MASK_SIZE; i++) {
            movesetMaskByte = Pokemon_ReadMovesetMaskByte(pokemon, i);

            for (int j = 0; j < 8; j++) {
                canLearn = ((movesetMaskByte >> j) & 0x1);

                if ((canLearn == TRUE) && (location == sTeachableMoves[i * 8 + j].location)) {
                    for (knownMoveIndex = 0; knownMoveIndex < LEARNED_MOVES_MAX; knownMoveIndex++) {
                        if (knownMoves[knownMoveIndex] == sTeachableMoves[i * 8 + j].moveID) {
                            break;
                        }
                    }

                    if (knownMoveIndex == LEARNED_MOVES_MAX) {
                        learnableMoves[learnableMovesCount] = sTeachableMoves[i * 8 + j].moveID;
                        learnableMovesCount++;
                    }
                }
            }
        }
    } else {
        for (int teachableMove = 0; teachableMove < NELEMS(sTeachableMoves); teachableMove++) {
            if (location == sTeachableMoves[teachableMove].location) {
                learnableMoves[learnableMovesCount] = GetMoveID(teachableMove);
                learnableMovesCount++;
            }
        }
    }

    for (int i = 0; i < learnableMovesCount; i++) {
        MoveTutorManager_AddMenuEntry(moveTutorManager, learnableMoves[i], 0xff, learnableMoves[i]);
    }

    miscMessageLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_COMMON_STRINGS_2, HEAP_ID_FIELD_TASK);

    MoveTutorManager_SetMessageLoader(moveTutorManager, miscMessageLoader);
    MoveTutorManager_AddMenuEntry(moveTutorManager, pl_msg_00000361_00005, 0xff, (u16)LIST_CANCEL); // cast required to match
    MessageLoader_Free(miscMessageLoader);

    MoveTutorManager_SetMessageLoader(moveTutorManager, moveNamesLoader);
    MoveTutorManager_ShowMoveSelectionMenu(moveTutorManager);
    ScriptContext_Pause(scriptContext, ScriptContextShouldResume);
    MessageLoader_Free(moveNamesLoader);

    return TRUE;
}

static BOOL ScriptContextShouldResume(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *selectedOptionPtr = FieldSystem_GetVarPointer(fieldSystem, ctx->data[0]);

    if (*selectedOptionPtr == LIST_MENU_NO_SELECTION_YET) {
        return FALSE;
    }

    return TRUE;
}

static void MoveTutorManager_SetMessageLoader(MoveTutorManager *moveTutorManager, MessageLoader *messageLoader)
{
    moveTutorManager->messageLoader = messageLoader;
}

static void MoveTutorManager_Init(FieldSystem *fieldSystem, MoveTutorManager *moveTutorManager, u8 tilemapLeft, u8 tilemapTop, u8 initialCursorPos, u8 canExitWithB, u16 *selectedOptionPtr, StringTemplate *stringTemplate, Window *window, MessageLoader *messageLoader)
{
    int moveIndex;

    moveTutorManager->messageLoader = messageLoader;
    moveTutorManager->freeMsgLoaderOnDelete = FALSE;
    moveTutorManager->stringTemplate = stringTemplate;
    moveTutorManager->fieldSystem = fieldSystem;
    moveTutorManager->selectedOptionPtr = selectedOptionPtr;
    moveTutorManager->canExitWithB = canExitWithB;
    moveTutorManager->initialCursorPos = initialCursorPos;
    moveTutorManager->tilemapLeft = tilemapLeft;
    moveTutorManager->tilemapTop = tilemapTop;
    moveTutorManager->menuOptionsCount = 0;
    moveTutorManager->window = window;
    moveTutorManager->sysTaskDelay = 3;
    moveTutorManager->cursorPos = initialCursorPos;

    for (moveIndex = 0; moveIndex < (NELEMS(sTeachableMoves) + 1); moveIndex++) {
        moveTutorManager->movesChoices[moveIndex].entry = NULL;
        moveTutorManager->movesChoices[moveIndex].index = 0;
        moveTutorManager->unk_230[moveIndex] = 0xff;
    }

    for (moveIndex = 0; moveIndex < (NELEMS(sTeachableMoves) + 1); moveIndex++) {
        moveTutorManager->moveNames[moveIndex] = Strbuf_Init((40 * 2), HEAP_ID_FIELD);
    }

    *moveTutorManager->selectedOptionPtr = LIST_MENU_NO_SELECTION_YET;
}

MoveTutorManager *MoveTutorManager_New(FieldSystem *fieldSystem, u8 tilemapLeft, u8 tilemapTop, u8 initialCursorPos, u8 canExitWithB, u16 *selectedOptionPtr, StringTemplate *stringTemplate, Window *window, MessageLoader *messageLoader)
{
    MoveTutorManager *moveTutorManager = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(MoveTutorManager));

    if (moveTutorManager == NULL) {
        return NULL;
    }

    memset(moveTutorManager, 0, sizeof(MoveTutorManager));
    MoveTutorManager_Init(fieldSystem, moveTutorManager, tilemapLeft, tilemapTop, initialCursorPos, canExitWithB, selectedOptionPtr, stringTemplate, window, messageLoader);

    return moveTutorManager;
}

void MoveTutorManager_AddMenuEntry(MoveTutorManager *moveTutorManager, u32 stringEntryID, u32 param2, u32 index)
{
    _MoveTutorManager_AddMenuEntry(moveTutorManager, stringEntryID, param2, index);
}

static void MoveTutorManager_ShowMoveSelectionMenu(MoveTutorManager *moveTutorManager)
{
    if (moveTutorManager->menuOptionsCount > 8) {
        Window_Add(moveTutorManager->fieldSystem->bgConfig, &moveTutorManager->moveSelectWindow, 3, moveTutorManager->tilemapLeft, moveTutorManager->tilemapTop, 11, 8 * 2, 13, 1);
    } else {
        Window_Add(moveTutorManager->fieldSystem->bgConfig, &moveTutorManager->moveSelectWindow, 3, moveTutorManager->tilemapLeft, moveTutorManager->tilemapTop, 11, moveTutorManager->menuOptionsCount * 2, 13, 1);
    }

    LoadStandardWindowGraphics(moveTutorManager->fieldSystem->bgConfig, 3, 1024 - (18 + 12) - 9, 11, STANDARD_WINDOW_SYSTEM, HEAP_ID_FIELD);
    Window_DrawStandardFrame(&moveTutorManager->moveSelectWindow, TRUE, 1024 - (18 + 12) - 9, 11);
    MoveTutorManager_InitMenuTemplate(moveTutorManager);

    moveTutorManager->moveSelectionMenu = ListMenu_New((const ListMenuTemplate *)&moveTutorManager->menuTemplate, 0, moveTutorManager->initialCursorPos, HEAP_ID_FIELD);
    moveTutorManager->sysTask = SysTask_Start(SysTaskCallback, moveTutorManager, 0);
}

static void _MoveTutorManager_AddMenuEntry(MoveTutorManager *moveTutorManager, u32 stringEntryID, u32 param2, u32 index)
{
    {
        Strbuf *strbuf = Strbuf_Init((40 * 2), HEAP_ID_FIELD);

        MessageLoader_GetStrbuf(moveTutorManager->messageLoader, stringEntryID, strbuf);
        StringTemplate_Format(moveTutorManager->stringTemplate, moveTutorManager->moveNames[moveTutorManager->menuOptionsCount], strbuf);
        moveTutorManager->movesChoices[moveTutorManager->menuOptionsCount].entry = (const void *)moveTutorManager->moveNames[moveTutorManager->menuOptionsCount];
        Strbuf_Free(strbuf);
    }

    if (index == 0xfa) {
        moveTutorManager->movesChoices[moveTutorManager->menuOptionsCount].index = 0xfffffffd;
    } else {
        moveTutorManager->movesChoices[moveTutorManager->menuOptionsCount].index = index;
    }

    moveTutorManager->unk_230[moveTutorManager->menuOptionsCount] = param2;
    moveTutorManager->menuOptionsCount++;
}

static void MoveTutorManager_InitMenuTemplate(MoveTutorManager *moveTutorManager)
{
    moveTutorManager->menuTemplate.choices = moveTutorManager->movesChoices;
    moveTutorManager->menuTemplate.cursorCallback = MoveSelectionMenuCursorCallback;
    moveTutorManager->menuTemplate.printCallback = NULL;
    moveTutorManager->menuTemplate.window = &moveTutorManager->moveSelectWindow;
    moveTutorManager->menuTemplate.count = moveTutorManager->menuOptionsCount;
    moveTutorManager->menuTemplate.maxDisplay = 8;
    moveTutorManager->menuTemplate.headerXOffset = 1;
    moveTutorManager->menuTemplate.textXOffset = 12;
    moveTutorManager->menuTemplate.cursorXOffset = 2;
    moveTutorManager->menuTemplate.yOffset = 1;
    moveTutorManager->menuTemplate.textColorFg = 1;
    moveTutorManager->menuTemplate.textColorBg = 15;
    moveTutorManager->menuTemplate.textColorShadow = 2;
    moveTutorManager->menuTemplate.letterSpacing = 0;
    moveTutorManager->menuTemplate.lineSpacing = 0;
    moveTutorManager->menuTemplate.pagerMode = PAGER_MODE_LEFT_RIGHT_PAD;
    moveTutorManager->menuTemplate.fontID = FONT_SYSTEM;
    moveTutorManager->menuTemplate.cursorType = 0;
    moveTutorManager->menuTemplate.parent = (void *)moveTutorManager;
}

static void MoveSelectionMenuCursorCallback(ListMenu *listMenu, u32 index, u8 onInit)
{
    MoveTutorManager *moveTutorManager = (MoveTutorManager *)ListMenu_GetAttribute(listMenu, LIST_MENU_PARENT);
}

static void SysTaskCallback(SysTask *sysTask, void *_moveTutorManager)
{
    MoveTutorManager *moveTutorManager = (MoveTutorManager *)_moveTutorManager;

    if (moveTutorManager->sysTaskDelay != 0) {
        moveTutorManager->sysTaskDelay--;
        return;
    }

    if (IsScreenTransitionDone() == FALSE) {
        return;
    }

    u32 selectedEntry = ListMenu_ProcessInput(moveTutorManager->moveSelectionMenu);
    u16 previousCursorPos = moveTutorManager->cursorPos;

    ListMenu_CalcTrueCursorPos(moveTutorManager->moveSelectionMenu, &moveTutorManager->cursorPos);

    if (previousCursorPos != moveTutorManager->cursorPos) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    switch (selectedEntry) {
    case LIST_NOTHING_CHOSEN:
        break;
    case LIST_CANCEL:
        if (moveTutorManager->canExitWithB == TRUE) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            *moveTutorManager->selectedOptionPtr = LIST_CANCEL;

            MoveTutorManager_Delete(moveTutorManager);
        }
        break;
    default: // Player selected a move
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        *moveTutorManager->selectedOptionPtr = selectedEntry;
        MoveTutorManager_Delete(moveTutorManager);
        break;
    }
}

static void MoveTutorManager_Delete(MoveTutorManager *moveTutorManager)
{
    Sound_PlayEffect(SEQ_SE_CONFIRM);
    ListMenu_Free(moveTutorManager->moveSelectionMenu, NULL, NULL);
    Window_EraseStandardFrame(moveTutorManager->menuTemplate.window, FALSE);
    Window_Remove(&moveTutorManager->moveSelectWindow);

    for (int i = 0; i < NELEMS(sTeachableMoves) + 1; i++) {
        Strbuf_Free(moveTutorManager->moveNames[i]);
    }

    if (moveTutorManager->freeMsgLoaderOnDelete == TRUE) {
        MessageLoader_Free(moveTutorManager->messageLoader);
    }

    SysTask_Done(moveTutorManager->sysTask);
    Heap_FreeToHeap(moveTutorManager);
}

BOOL ScrCmd_ShowShardsCost(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    FieldMenuManager **v2 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_FIELD_MENU_MANAGER);
    u8 v3 = ScriptContext_ReadByte(ctx);
    u8 v4 = ScriptContext_ReadByte(ctx);
    u16 selectedMove = ScriptContext_GetVar(ctx);
    u16 *selectedOptionPtr = ScriptContext_GetVarPointer(ctx);

    selectedMove = GetMoveIndex(selectedMove);
    *v2 = FieldMenuManager_NewMoveTutorCostWindow(fieldSystem, v3, v4, selectedOptionPtr, *strTemplate, sTeachableMoves[selectedMove].redCost, sTeachableMoves[selectedMove].blueCost, sTeachableMoves[selectedMove].yellowCost, sTeachableMoves[selectedMove].greenCost);

    return FALSE;
}

BOOL ScrCmd_CloseShardCostWindow(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    FieldMenuManager **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_FIELD_MENU_MANAGER);

    FieldMenuManager_DeleteMoveTutorCost(*v1);
    return FALSE;
}
