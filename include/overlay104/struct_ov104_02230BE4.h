#ifndef POKEPLATINUM_STRUCT_OV104_02230BE4_H
#define POKEPLATINUM_STRUCT_OV104_02230BE4_H

#include "game_options.h"
#include "journal.h"
#include "field/field_system_decl.h"
#include "bag.h"
#include "struct_defs/struct_0209C370.h"
#include "savedata.h"

typedef struct {
    void * unk_00;
    const Options * unk_04;
    SaveData * unk_08;
    Journal * unk_0C;
    UnkStruct_0207D99C * unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    UnkStruct_0209C370 * unk_20;
    u8 unk_24;
    FieldSystem * fieldSystem;
} UnkStruct_ov104_02230BE4;

#endif // POKEPLATINUM_STRUCT_OV104_02230BE4_H
