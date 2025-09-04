#ifndef POKEPLATINUM_UNK_020819DC_H
#define POKEPLATINUM_UNK_020819DC_H

#include "applications/party_menu/defs.h"

#include "pokemon.h"

void PartyMenu_AddWindows(PartyMenuApplication *application);
void sub_02081B90(PartyMenuApplication *param0);
void PartyMenu_LoadContextMenuStrings(PartyMenuApplication *param0);
void sub_02081CAC(PartyMenuApplication *param0, u16 param1, u8 param2);
void sub_02081CF4(PartyMenuApplication *param0, const u8 *param1, u8 param2);
void sub_02081E08(PartyMenuApplication *param0);
void PartyMenu_SetMemberName(PartyMenuApplication *application, Pokemon *mon, u32 slot);
void PartyMenu_PrintMemberName(PartyMenuApplication *application, u8 slot);
void PartyMenu_PrintMemberLevel(PartyMenuApplication *application, u8 slot);
void PartyMenu_PrintMemberCurrentHP(PartyMenuApplication *application, u8 slot);
void sub_02082098(PartyMenuApplication *param0, u8 param1);
void PartyMenu_DrawMemberHealthbar(PartyMenuApplication *application, u8 slot);
void PartyMenu_DrawMemberPanelData(PartyMenuApplication *application, u8 slot);
void sub_020822BC(PartyMenuApplication *param0, u8 param1);
void sub_020822F4(PartyMenuApplication *param0, u8 param1);
void PartyMenu_PrintMemberComment_CanUseEvoItem(PartyMenuApplication *application, u8 slot);
void PartyMenu_PrintMemberComment_CanLearnMove(PartyMenuApplication *application, u8 slot);
void PartyMenu_PrintMemberComment_IsContestEligible(PartyMenuApplication *application, u8 slot);
void PartyMenu_PrintMemberNameAndLevel(PartyMenuApplication *application, u8 slot);
void PartyMenu_PrintSelectionEligibility(PartyMenuApplication *application, u8 slot);
void PartyMenu_PrintButtonText(PartyMenuApplication *application, u8 flags);
void PartyMenu_PrintShortMessage(PartyMenuApplication *param0, u32 param1, u8 param2);
void sub_020826F4(PartyMenuApplication *param0, u32 param1, u8 param2);
void sub_02082708(PartyMenuApplication *param0, u32 param1, u8 param2);
void sub_0208274C(PartyMenuApplication *param0);
void sub_020827EC(PartyMenuApplication *param0);
void sub_020829DC(PartyMenuApplication *param0);
void sub_02082B58(PartyMenuApplication *param0);
void sub_02082C10(PartyMenuApplication *param0);

#endif // POKEPLATINUM_UNK_020819DC_H
