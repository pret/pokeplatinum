#ifndef POKEPLATINUM_WILD_ENCOUNTER_DATA_H
#define POKEPLATINUM_WILD_ENCOUNTER_DATA_H

#include "overlay006/encounter_field_data.h"
#include "overlay006/encounter_water_data.h"

typedef struct WildEncounterData {
    // encounter rate land
    int unk_00;
    // 12 land encounter slots
    FieldEncounterData unk_04[12];
    int unk_40[2];
    // Day/twilight encounters
    int unk_48[2];
    // Night encounters
    int unk_50[2];
    int unk_58[4];
    int unk_60[5];
    int unk_7C;
    int unk_80[2];
    int unk_88[2];
    int unk_90[2];
    int unk_98[2];
    int unk_A0[2];
    // Surf rate
    int unk_A8;
    WaterEncounterData unk_AC[5];
    // Old Rod rate
    int unk_CC;
    WaterEncounterData unk_D0[5];
    // good rod rate
    int unk_F0;
    WaterEncounterData unk_F4[5];
    // super rod rate
    int unk_114;
    WaterEncounterData unk_118[5];
    // ???
    int unk_138;
    WaterEncounterData unk_13C[5];
} WildEncounterData;

#endif // POKEPLATINUM_WILD_ENCOUNTER_DATA_H
