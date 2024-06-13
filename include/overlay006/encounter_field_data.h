#ifndef POKEPLATINUM_FIELD_ENCOUNTER_DATA_H
#define POKEPLATINUM_FIELD_ENCOUNTER_DATA_H

typedef struct {
    // Level
    char unk_00;
    u8 padding_01[3];
    // Species
    int unk_04;
} FieldEncounterData;

#endif // POKEPLATINUM_FIELD_ENCOUNTER_DATA_H
