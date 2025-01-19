#ifndef POKEPLATINUM_STRUCT_OV88_0223C370_H
#define POKEPLATINUM_STRUCT_OV88_0223C370_H

#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_02027F8C_decl.h"
#include "struct_decls/struct_0202C878_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_defs/pokemon.h"

#include "field/field_system_decl.h"

#include "game_options.h"
#include "game_records.h"
#include "journal.h"
#include "savedata.h"
#include "trainer_info.h"

typedef struct {
    FieldSystem *fieldSystem;
    TrainerInfo *unk_04;
    Party *unk_08;
    UnkStruct_02027F8C *unk_0C;
    SaveData *unk_10;
    UnkStruct_0202C878 *unk_14;
    Options *unk_18;
    JournalEntry *unk_1C;
    GameRecords *records;
    PokedexData *unk_24;
    int unk_28;
    int unk_2C;
    int unk_30;
    int unk_34;
    TrainerInfo *unk_38;
    Pokemon *unk_3C;
    Pokemon *unk_40;
} UnkStruct_ov88_0223C370;

#endif // POKEPLATINUM_STRUCT_OV88_0223C370_H
