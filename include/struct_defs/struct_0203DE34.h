#ifndef POKEPLATINUM_STRUCT_0203DE34_H
#define POKEPLATINUM_STRUCT_0203DE34_H

#include "struct_decls/struct_0205C22C_decl.h"

#include "game_options.h"
#include "game_records.h"
#include "journal.h"
#include "savedata.h"

typedef struct {
    SaveData *saveData;
    UnkStruct_0205C22C *unk_04;
    Options *options;
    GameRecords *records;
    JournalEntry *unk_10;
} UnkStruct_0203DE34;

#endif // POKEPLATINUM_STRUCT_0203DE34_H
