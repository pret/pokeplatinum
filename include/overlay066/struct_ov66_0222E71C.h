#ifndef POKEPLATINUM_STRUCT_OV66_0222E71C_H
#define POKEPLATINUM_STRUCT_OV66_0222E71C_H

#include "constants/pokemon.h"
#include "constants/string.h"

#include "overlay066/struct_ov66_0222E908.h"
#include "overlay066/struct_ov66_02231428.h"

#include "charcode.h"

typedef struct UnkStruct_ov66_0222E71C {
    s32 unk_00;
    u32 trainerID;
    charcode_t trainerName[TRAINER_NAME_LEN + 1];
    UnkStruct_ov66_02231428 unk_18;
    UnkStruct_ov66_02231428 unk_1C;
    u16 partySpecies[MAX_PARTY_SIZE];
    u8 partyForms[MAX_PARTY_SIZE];
    u8 partyIsEgg[MAX_PARTY_SIZE];
    u8 trainerGender;
    u8 language;
    u16 trainerAppearanceIdx;
    u16 country;
    u8 region;
    u8 isNationalDexObtained;
    u8 isMainStoryCleared;
    u8 unk_41;
    u8 gameVersion;
    u8 unk_43;
    s64 unk_44;
    u8 unk_4C[12];
    s32 unk_58[12];
    u16 types[2];
    UnkStruct_ov66_0222E908 unk_8C;
} UnkStruct_ov66_0222E71C;

#endif // POKEPLATINUM_STRUCT_OV66_0222E71C_H
