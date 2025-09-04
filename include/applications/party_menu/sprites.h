#ifndef POKEPLATINUM_UNK_02082C2C_H
#define POKEPLATINUM_UNK_02082C2C_H

#include "applications/party_menu/defs.h"

#include "narc.h"

void PartyMenu_InitSpriteResources(PartyMenuApplication *param0);
void PartyMenu_DrawMemberSpeciesIcon(PartyMenuApplication *param0, u8 param1, u16 param2, u16 param3, NARC *param4);
void sub_02082DA8(PartyMenuApplication *param0, u8 param1);
void PartyMenu_InitSprites(PartyMenuApplication *param0);
void PartyMenu_DrawMemberPokeBall(PartyMenuApplication *param0, u8 param1, u16 param2, u16 param3);
void sub_02082FF4(PartyMenuApplication *param0);
void PartyMenu_DrawMemberStatusCondition(PartyMenuApplication *param0, u8 param1, u8 param2);
void PartyMenu_DrawMemberHeldItem(PartyMenuApplication *param0, u8 param1, u16 param2);
void sub_02083080(PartyMenuApplication *param0, u8 param1);
void PartyMenu_AlignMemberHeldItem(PartyMenuApplication *param0, u8 param1, s16 param2, s16 param3);
void PartyMenu_AlignMemberBallSeal(PartyMenuApplication *param0, u8 param1);
void PartyMenu_DrawMemberBallSeal(PartyMenuApplication *param0, u8 param1);
void sub_020831B4(PartyMenuApplication *param0);
void sub_0208327C(PartyMenuApplication *param0, u8 param1, u8 param2);
void sub_020832E4(PartyMenuApplication *param0, s16 param1, s16 param2);
void sub_02083334(PartyMenuApplication *param0);

#endif // POKEPLATINUM_UNK_02082C2C_H
