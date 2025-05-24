#ifndef POKEPLATINUM_STRUCT_0203E0FC_H
#define POKEPLATINUM_STRUCT_0203E0FC_H

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

typedef struct {
    GlobalTrade *unk_00;
    SystemData *unk_04;
    Party *unk_08;
    PCBoxes *unk_0C;
    Pokedex *unk_10;
    WiFiList *unk_14;
    WiFiHistory *wiFiHistory;
    TrainerInfo *unk_1C;
    SaveData *saveData;
    Options *unk_24;
    GameRecords *records;
    JournalEntry *unk_2C;
    Bag *unk_30;
    int unk_34;
    int unk_38;
    int unk_3C;
    int unk_40;
} UnkStruct_0203E0FC;

#endif // POKEPLATINUM_STRUCT_0203E0FC_H
