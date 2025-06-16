#ifndef POKEPLATINUM_STRUCT_0209C194_1_H
#define POKEPLATINUM_STRUCT_0209C194_1_H

#include "struct_decls/struct_0205C22C_decl.h"

#include "field/field_system_decl.h"

#include "game_options.h"
#include "game_records.h"
#include "journal.h"
#include "savedata.h"

typedef struct {
    int unk_00;
    int unk_04;
    SaveData *saveData;
    UnkStruct_0205C22C *unk_0C;
    Options *unk_10;
    GameRecords *records;
    JournalEntry *unk_18;
    FieldSystem *fieldSystem;
} UnkStruct_0209C194_1;

#endif // POKEPLATINUM_STRUCT_0209C194_1_H
