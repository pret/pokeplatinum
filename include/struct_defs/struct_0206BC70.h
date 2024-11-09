#ifndef POKEPLATINUM_STRUCT_0206BC70_H
#define POKEPLATINUM_STRUCT_0206BC70_H

#include <dwc.h>

#include "struct_decls/struct_0202D750_decl.h"
#include "struct_decls/struct_0202D764_decl.h"

#include "game_options.h"
#include "savedata.h"
#include "system_data.h"

typedef struct {
    UnkStruct_0202D750 *unk_00;
    UnkStruct_0202D764 *unk_04;
    SystemData *unk_08;
    SaveData *unk_0C;
    Options *unk_10;
    DWCUserData *unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
    int unk_24;
} UnkStruct_0206BC70;

#endif // POKEPLATINUM_STRUCT_0206BC70_H
