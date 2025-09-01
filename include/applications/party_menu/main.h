#ifndef POKEPLATINUM_PARTY_MENU_MAIN_H
#define POKEPLATINUM_PARTY_MENU_MAIN_H

#include "constants/heap.h"

#include "applications/party_menu/defs.h"

#include "overlay_manager.h"

extern const ApplicationManagerTemplate gPokemonPartyAppTemplate;

void sub_0207EA74(PartyMenuApplication *application, int param1);
u8 sub_0207EF04(PartyMenuApplication *application, u8 param1);
u8 sub_0207EF14(PartyMenuApplication *application, u8 partySlot);
const u16 *sub_0207F248(PartyMenuApplication *application);
void PartyMenu_UpdateSlotPalette(PartyMenuApplication *application, u8 partySlot);
void sub_0207FD68(PartyMenuApplication *application, u8 partySlot);
u8 sub_02080354(PartyMenuApplication *application, u8 partySlot);
u8 sub_02080404(PartyMenuApplication *application, u8 partySlot);
u8 sub_02080488(PartyMenuApplication *application, u8 partySlot);
u8 sub_020805D0(u8 param0, u8 param1);
u8 GetElementIndex(u16 param0);
u32 sub_02081930(void);
u32 sub_02081934(void);
u32 sub_02081938(void);
u32 sub_0208193C(void);
void PartyMenu_LoadMemberPanelTilemaps(enum HeapID heapID, u16 *leadMember, u16 *backMembers, u16 *noMember);
void LoadOverlay118(PartyMenuApplication *application);
void UnloadOverlay118(PartyMenuApplication *application);

#endif // POKEPLATINUM_PARTY_MENU_MAIN_H
