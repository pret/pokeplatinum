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
    SystemData *systemData;
    SaveData *saveData;
    Options *options;
    DWCUserData *userData;
    int unk_18;
    int profileId;
    int unk_20;
    int unk_24;
} UnkStruct_0206BC70;

#endif // POKEPLATINUM_STRUCT_0206BC70_H
