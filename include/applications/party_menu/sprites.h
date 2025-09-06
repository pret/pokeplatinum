#ifndef POKEPLATINUM_PARTY_MENU_SPRITES_H
#define POKEPLATINUM_PARTY_MENU_SPRITES_H

#include "applications/party_menu/defs.h"

#include "narc.h"

void PartyMenu_InitSpriteResources(PartyMenuApplication *application);
void PartyMenu_DrawMemberSpeciesIcon(PartyMenuApplication *application, u8 slot, u16 x, u16 y, NARC *narc);
void PartyMenu_LoadMemberSpeciesIcon(PartyMenuApplication *application, u8 slot);
void PartyMenu_InitSprites(PartyMenuApplication *application);
void PartyMenu_DrawMemberPokeBall(PartyMenuApplication *application, u8 slot, u16 x, u16 y);
void PartyMenu_CleanupSprites(PartyMenuApplication *application);
void PartyMenu_DrawMemberStatusCondition(PartyMenuApplication *application, u8 slot, u8 icon);
void PartyMenu_DrawMemberHeldItem(PartyMenuApplication *application, u8 slot, u16 item);
void PartyMenu_DrawMemberMail(PartyMenuApplication *application, u8 slot);
void PartyMenu_AlignMemberHeldItem(PartyMenuApplication *application, u8 slot, s16 x, s16 y);
void PartyMenu_AlignMemberBallSeal(PartyMenuApplication *application, u8 slot);
void PartyMenu_DrawMemberBallSeal(PartyMenuApplication *application, u8 slot);
void PartyMenu_UpdateMemberIcons(PartyMenuApplication *application);
void PartyMenu_UpdateCursor(PartyMenuApplication *application, u8 slot, u8 palette);
void PartyMenu_InitTouchButtonEffect(PartyMenuApplication *application, s16 x, s16 y);
void PartyMenu_UpdateTouchButtonEffect(PartyMenuApplication *application);

#endif // POKEPLATINUM_PARTY_MENU_SPRITES_H
