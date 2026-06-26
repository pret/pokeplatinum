#ifndef POKEPLATINUM_PARTY_MENU_CALLBACKS_H
#define POKEPLATINUM_PARTY_MENU_CALLBACKS_H

#include "struct_defs/pokemon.h"

#include "applications/party_menu/defs.h"

// clang-format off
#define TEACH_MOVE_RESULT_CANNOT_LEARN      ((u8)-1)
#define TEACH_MOVE_RESULT_MUST_FORGET_FIRST ((u8)-2)
#define TEACH_MOVE_RESULT_ALREADY_LEARNED   ((u8)-3)
// clang-format on

void PartyMenu_SetItemUseCallback(PartyMenuApplication *application);
BOOL CheckItemSacredAsh(u16 itemID);

enum PartyMenuState PartyMenuCB_PrintThenWaitABPress(PartyMenuApplication *application);
enum PartyMenuState PartyMenuCB_HandleSacredAsh(PartyMenuApplication *application);
enum PartyMenuState PartyMenuCB_LevelMove_Exit(PartyMenuApplication *application);

// Returns either a result code (prefix: `TEACH_MOVE_RESULT_`) or the first open move slot in which to learn the move.
u8 PartyMenu_TeachMove_Check(PartyMenuApplication *application, Pokemon *mon);
enum PartyMenuState PartyMenuCB_TeachMove(PartyMenuApplication *application);
enum PartyMenuState PartyMenuCB_TeachMove_Exit(PartyMenuApplication *application);
enum PartyMenuState PartyMenuCB_TeachMove_HandleInput(PartyMenuApplication *application);

void PartyMenu_MoveSelection_Display(PartyMenuApplication *application, u8 restore);
int PartyMenu_MoveSelection_HandleInput(PartyMenuApplication *application);
void PartyMenu_GiveMail(PartyMenuApplication *application);

#endif // POKEPLATINUM_PARTY_MENU_CALLBACKS_H
