#ifndef POKEPLATINUM_PARTY_MENU_MAIN_H
#define POKEPLATINUM_PARTY_MENU_MAIN_H

#include "constants/heap.h"

#include "applications/party_menu/defs.h"

#include "overlay_manager.h"

#define PARTY_MENU_SELECTION_INELIGIBLE 0
#define PARTY_MENU_SELECTION_ELIGIBLE   1
#define PARTY_MENU_SELECTION_ENTERED    2

extern const ApplicationManagerTemplate gPokemonPartyAppTemplate;

void PartyMenu_UpdateFormChangeGraphicsMode(PartyMenuApplication *application, BOOL isTeardown);
u8 sub_0207EF04(PartyMenuApplication *application, u8 param1);
u8 PartyMenu_LoadMember(PartyMenuApplication *application, u8 slot);
const u16 *sub_0207F248(PartyMenuApplication *application);
void PartyMenu_UpdateSlotPalette(PartyMenuApplication *application, u8 slot);
void sub_0207FD68(PartyMenuApplication *application, u8 partySlot);
u8 PartyMenu_CheckEligibility(PartyMenuApplication *application, u8 slot);
u8 PartyMenu_CheckBattleHallEligibility(PartyMenuApplication *application, u8 slot);
u8 PartyMenu_CheckBattleCastleEligibility(PartyMenuApplication *application, u8 slot);
u8 PartyMenu_GetMemberPanelAnim(u8 menuType, u8 slot);
u8 GetElementIndex(u16 param0);
u32 sub_02081930(void);
u32 sub_02081934(void);
u32 sub_02081938(void);
u32 sub_0208193C(void);
void PartyMenu_LoadMemberPanelTilemaps(enum HeapID heapID, u16 *leadMember, u16 *backMembers, u16 *noMember);
void PartyMenu_SetupFormChangeAnim(PartyMenuApplication *application);
void PartyMenu_TeardownFormChangeAnim(PartyMenuApplication *application);

#endif // POKEPLATINUM_PARTY_MENU_MAIN_H
