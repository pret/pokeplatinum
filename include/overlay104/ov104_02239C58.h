#ifndef POKEPLATINUM_OV104_02239C58_H
#define POKEPLATINUM_OV104_02239C58_H

#include "struct_decls/battle_frontier_decl.h"

#include "applications/party_menu/defs.h"
#include "applications/pokemon_summary_screen/main.h"
#include "field/field_system.h"

#include "savedata.h"

typedef struct WFCFacilitySelector {
    SaveData *saveData;
    void *unused;
    u16 commBuffer[40];
    u8 partnerGender;
    u8 partnerDroppedOut;
    u16 unused2[8];
    u8 selectedMonSlots[4];
    u8 partnersSelectedFacility;
    u8 msgsReceived;
    u8 unused3;
    u8 partnerNotPlayingAgain;
    u16 partnersLatestStreak;
    u16 partnersStreakDeletionChoice;
    u16 selectedSpecies[4];
    u16 selectedItems[4];
    u16 partnersSelectedSpecies[4];
    u16 partnersSelectedItems[4];
    FieldSystem *fieldSystem;
    u8 unused4;
    u8 dummy;
    u8 unused5;
    u8 selectedMonSlot;
    u8 selectedFacility;
    u8 partyMenuSelectionOrder[4];
    PartyMenu *partyMenu;
    PokemonSummary *summaryApp;
    u16 *subAppResult;
} WFCFacilitySelector;

WFCFacilitySelector *WFCFacilitySelector_Init(SaveData *saveData);
void WFCFacilitySelector_Free(WFCFacilitySelector *selector);
BOOL WFCFacilitySelector_SendCommMessage(WFCFacilitySelector *selector, u16 command, u16 arg1, u16 arg2);
void WFCFacilitySelector_ManageSubApp(BattleFrontier *frontier, WFCFacilitySelector *selector, u16 action);

#endif // POKEPLATINUM_OV104_02239C58_H
