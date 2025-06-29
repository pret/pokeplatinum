#ifndef POKEPLATINUM_STRUCT_GTS_PLAYER_DATA_H
#define POKEPLATINUM_STRUCT_GTS_PLAYER_DATA_H

#include "struct_decls/pc_boxes_decl.h"
#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_0202B370_decl.h"
#include "struct_decls/struct_0202DA40_decl.h"
#include "struct_defs/wi_fi_history.h"

#include "bag.h"
#include "game_options.h"
#include "game_records.h"
#include "journal.h"
#include "party.h"
#include "savedata.h"
#include "system_data.h"
#include "trainer_info.h"

typedef struct GTSPlayerData {
    GlobalTrade *globalTrade;
    SystemData *systemData;
    Party *party;
    PCBoxes *pcBoxes;
    Pokedex *pokedex;
    WiFiList *wiFiList;
    WiFiHistory *wiFiHistory;
    TrainerInfo *trainerInfo;
    SaveData *saveData;
    Options *options;
    GameRecords *records;
    JournalEntry *journalEntry;
    Bag *bag;
    int dexMode;
    int dwcProfileId;
    int showContestData;
    int unk_40;
} GTSPlayerData;

#endif // POKEPLATINUM_STRUCT_GTS_PLAYER_DATA_H
