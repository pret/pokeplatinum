#ifndef POKEPLATINUM_STRUCT_DEF_FRONTIER_RECORDS_APP_ARGS_H
#define POKEPLATINUM_STRUCT_DEF_FRONTIER_RECORDS_APP_ARGS_H

#include "savedata.h"

typedef struct FrontierRecordsAppArgs {
    SaveData *saveData;
    u8 challengeType;
    u8 facility;
    u16 species;
} FrontierRecordsAppArgs;

#endif // POKEPLATINUM_STRUCT_DEF_FRONTIER_RECORDS_APP_ARGS_H
