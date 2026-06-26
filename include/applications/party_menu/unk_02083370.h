#ifndef POKEPLATINUM_UNK_02083370_H
#define POKEPLATINUM_UNK_02083370_H

#include "applications/party_menu/defs.h"

u32 PartyMenu_GetAction(u8 action);
void PartyMenu_ClearContextWindow(PartyMenuApplication *application);
int sub_02083658(PartyMenuApplication *application);
int sub_020836A8(PartyMenuApplication *application);
int sub_020836E4(PartyMenuApplication *application);
int sub_020839BC(PartyMenuApplication *application);
enum PartyMenuState sub_02083A78(PartyMenuApplication *application);
enum PartyMenuState sub_02083AA4(PartyMenuApplication *application);
void PartyMenu_ResetCursor(PartyMenuApplication *application);
void sub_02083BD4(PartyMenuApplication *application);
BOOL sub_02083D1C(PartyMenuApplication *application);
int sub_020845A8(PartyMenuApplication *application);
int sub_02084780(PartyMenuApplication *application);
int sub_02084B34(PartyMenuApplication *application);

#endif // POKEPLATINUM_UNK_02083370_H
