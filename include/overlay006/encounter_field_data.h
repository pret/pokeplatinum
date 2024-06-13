#ifndef POKEPLATINUM_FIELD_ENCOUNTER_DATA_H
#define POKEPLATINUM_FIELD_ENCOUNTER_DATA_H

typedef struct {
    char level;
    u8 padding_01[3];
    int species;
} FieldEncounterData;

#endif // POKEPLATINUM_FIELD_ENCOUNTER_DATA_H
