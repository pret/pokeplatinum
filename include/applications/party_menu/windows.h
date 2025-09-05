#ifndef POKEPLATINUM_PARTY_MENU_WINDOWS_H
#define POKEPLATINUM_PARTY_MENU_WINDOWS_H

#include "applications/party_menu/defs.h"

#include "pokemon.h"

#define PRINT_MESSAGE_PRELOADED -1

void PartyMenu_AddWindows(PartyMenuApplication *application);
void PartyMenu_RemoveWindows(PartyMenuApplication *application);
void PartyMenu_LoadContextMenuStrings(PartyMenuApplication *application);
void PartyMenu_SetKnownFieldMove(PartyMenuApplication *application, u16 move, u8 menuEntry);
void PartyMenu_DrawContextMenu(PartyMenuApplication *application, const u8 *entries, u8 numEntries);
void PartyMenu_LoadContextMenuPrompt(PartyMenuApplication *application);
void PartyMenu_SetMemberName(PartyMenuApplication *application, Pokemon *mon, u32 slot);
void PartyMenu_PrintMemberName(PartyMenuApplication *application, u8 slot);
void PartyMenu_PrintMemberLevel(PartyMenuApplication *application, u8 slot);
void PartyMenu_PrintMemberCurrentHP(PartyMenuApplication *application, u8 slot);
void PartyMenu_ClearMemberHP(PartyMenuApplication *application, u8 slot);
void PartyMenu_DrawMemberHealthbar(PartyMenuApplication *application, u8 slot);
void PartyMenu_DrawMemberPanelData(PartyMenuApplication *application, u8 slot);
void PartyMenu_LoadMemberWindowTiles(PartyMenuApplication *application, u8 slot);
void PartyMenu_CopyMemberWindowToVRAM(PartyMenuApplication *application, u8 slot);
void PartyMenu_PrintMemberComment_CanUseEvoItem(PartyMenuApplication *application, u8 slot);
void PartyMenu_PrintMemberComment_CanLearnMove(PartyMenuApplication *application, u8 slot);
void PartyMenu_PrintMemberComment_IsContestEligible(PartyMenuApplication *application, u8 slot);
void PartyMenu_PrintMemberNameAndLevel(PartyMenuApplication *application, u8 slot);
void PartyMenu_PrintSelectionEligibility(PartyMenuApplication *application, u8 slot);
void PartyMenu_PrintButtonText(PartyMenuApplication *application, u8 flags);
void PartyMenu_PrintShortMessage(PartyMenuApplication *application, u32 bankEntry, u8 drawBox);
void PartyMenu_PrintMediumMessage(PartyMenuApplication *application, u32 bankEntry, u8 drawBox);
void PartyMenu_PrintLongMessage(PartyMenuApplication *application, u32 bankEntry, u8 drawBox);
void PartyMenu_AddLongMessagePrinter(PartyMenuApplication *application);
void PartyMenu_DrawYesNoChoice(PartyMenuApplication *application);
void PartyMenu_DrawLevelUpStatIncreases(PartyMenuApplication *application);
void PartyMenu_DrawLevelUpNewStatValues(PartyMenuApplication *application);
void PartyMenu_RemoveContextWindow(PartyMenuApplication *application);

#endif // POKEPLATINUM_PARTY_MENU_WINDOWS_H
