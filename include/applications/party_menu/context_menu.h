#ifndef POKEPLATINUM_CONTEXT_MENU_H
#define POKEPLATINUM_CONTEXT_MENU_H

#include "applications/party_menu/defs.h"

typedef void (*PartyMenuAction)(PartyMenuApplication *application, int *partyMenuState);

u32 PartyMenu_GetAction(u8 action);
void PartyMenu_ClearContextWindow(PartyMenuApplication *application);

void PartyMenu_ResetCursor(PartyMenuApplication *application);
void PartyMenu_PrepareSwitch(PartyMenuApplication *application);
BOOL PartyMenu_DoSwitch(PartyMenuApplication *application);

enum PartyMenuState PartyMenu_ChangeForm(PartyMenuApplication *application);
enum PartyMenuState PartyMenu_SetBallCapsule(PartyMenuApplication *application);
enum PartyMenuState PartyMenu_WaitABPress(PartyMenuApplication *application);
enum PartyMenuState PartyMenu_WaitABPress2(PartyMenuApplication *application);
enum PartyMenuState PartyMenu_WaitABPressChooseMons(PartyMenuApplication *application);
enum PartyMenuState PartyMenuCB_DetachBallSeal_Clear(PartyMenuApplication *application);
enum PartyMenuState PartyMenu_WaitForPrinter(PartyMenuApplication *application);
enum PartyMenuState PartyMenu_WaitForPrinterThenFormChange(PartyMenuApplication *application);
enum PartyMenuState PartyMenuCB_DetachBallSeal_Cancel(PartyMenuApplication *application);

#endif // POKEPLATINUM_CONTEXT_MENU_H
