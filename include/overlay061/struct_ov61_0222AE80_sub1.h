#ifndef POKEPLATINUM_STRUCT_OV61_0222AE80_SUB1_H
#define POKEPLATINUM_STRUCT_OV61_0222AE80_SUB1_H

#include "constants/string.h"

typedef struct {
    u32 personality;
    u32 otID;
    u16 species;
    u16 trainerName[TRAINER_NAME_LEN + 1];
    s8 priority;
    u8 xPos;
    u8 yPos;
    u8 form;
} UnkStruct_ov61_0222AE80_sub1;

#endif // POKEPLATINUM_STRUCT_OV61_0222AE80_SUB1_H
