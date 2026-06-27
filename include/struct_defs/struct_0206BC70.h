#ifndef POKEPLATINUM_STRUCT_0206BC70_H
#define POKEPLATINUM_STRUCT_0206BC70_H

#include <dwc.h>

#include "struct_defs/wifi_battle_tower_data.h"

#include "game_options.h"
#include "savedata.h"
#include "system_data.h"

typedef struct {
    WifiBattleTowerRecord *record;
    WifiBattleTowerDownloadData *downloadData;
    SystemData *systemData;
    SaveData *saveData;
    Options *options;
    DWCUserData *userData;
    int mode;
    int profileId;
    int unk_20;
    int unk_24;
} UnkStruct_0206BC70;

#endif // POKEPLATINUM_STRUCT_0206BC70_H
