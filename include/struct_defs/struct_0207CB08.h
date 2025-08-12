#ifndef POKEPLATINUM_STRUCT_0207CB08_H
#define POKEPLATINUM_STRUCT_0207CB08_H

#include "overlay084/struct_ov84_0223BE5C.h"

#include "savedata.h"

typedef struct UnkStruct_0207CB08_t {
    SaveData *saveData;
    BagInterfacePocketInfo accessiblePockets[POCKET_MAX];
    u8 currPocketIdx;
    u8 context;
    u16 selectedItem;
    u16 exitCode;
    u8 padding_6A[2];
    BagCursor *bagCursor;
    void *unk_70;
    u8 unk_74;
    u8 unk_75;
    u16 unk_76_0 : 1;
    u16 mapLoadType : 15;
} UnkStruct_0207CB08;

#endif // POKEPLATINUM_STRUCT_0207CB08_H
