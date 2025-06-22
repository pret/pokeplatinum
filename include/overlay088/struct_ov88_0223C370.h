#ifndef POKEPLATINUM_STRUCT_OV88_0223C370_H
#define POKEPLATINUM_STRUCT_OV88_0223C370_H

#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_02027F8C_decl.h"
#include "struct_defs/wi_fi_history.h"

#include "field/field_system_decl.h"

#include "game_options.h"
#include "game_records.h"
#include "journal.h"
#include "party.h"
#include "pokemon.h"
#include "savedata.h"
#include "trainer_info.h"

typedef struct {
    FieldSystem *fieldSystem;
    TrainerInfo *unk_04;
    Party *unk_08;
    PalPad *unk_0C;
    SaveData *saveData;
    WiFiHistory *wiFiHistory;
    Options *options;
    JournalEntry *unk_1C;
    GameRecords *records;
    Pokedex *unk_24;
    int unk_28;
    int unk_2C;
    int unk_30;
    int unk_34;
    TrainerInfo *unk_38;
    Pokemon *unk_3C;
    Pokemon *unk_40;
} UnkStruct_ov88_0223C370;

#endif // POKEPLATINUM_STRUCT_OV88_0223C370_H
