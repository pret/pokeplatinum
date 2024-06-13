#ifndef POKEPLATINUM_WATER_ENCOUNTER_DATA_H
#define POKEPLATINUM_WATER_ENCOUNTER_DATA_H

typedef struct {
    // Min Level
    char unk_00;
    // Max Level
    char unk_01;
    u8 padding_02[2];
    // Species
    int unk_04;
} WaterEncounterData;

#endif // POKEPLATINUM_WATER_ENCOUNTER_DATA_H
