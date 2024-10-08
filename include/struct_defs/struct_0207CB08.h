#ifndef POKEPLATINUM_STRUCT_0207CB08_H
#define POKEPLATINUM_STRUCT_0207CB08_H

#include "overlay084/struct_ov84_0223BE5C.h"

#include "savedata.h"

typedef struct UnkStruct_0207CB08_t {
    SaveData *unk_00;
    UnkStruct_ov84_0223BE5C unk_04[8];
    u8 unk_64;
    u8 unk_65;
    u16 unk_66;
    u16 unk_68;
    u8 padding_6A[2];
    void *unk_6C;
    void *unk_70;
    u8 unk_74;
    u8 unk_75;
    u16 unk_76_0 : 1;
    u16 mapLoadType : 15;
} UnkStruct_0207CB08;

#endif // POKEPLATINUM_STRUCT_0207CB08_H
