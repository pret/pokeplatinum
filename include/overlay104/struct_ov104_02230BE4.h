#ifndef POKEPLATINUM_STRUCT_OV104_02230BE4_H
#define POKEPLATINUM_STRUCT_OV104_02230BE4_H

#include "field/field_system_decl.h"

#include "bag.h"
#include "game_options.h"
#include "journal.h"
#include "savedata.h"

typedef struct {
    void *unk_00;
    const Options *options;
    SaveData *saveData;
    JournalEntry *journalEntry;
    BagCursor *bagCursor;
    int unk_14;
    int unk_18;
    int unk_1C;
    u8 *unk_20;
    u8 unk_24;
    FieldSystem *fieldSystem;
} UnkStruct_ov104_02230BE4;

#endif // POKEPLATINUM_STRUCT_OV104_02230BE4_H
