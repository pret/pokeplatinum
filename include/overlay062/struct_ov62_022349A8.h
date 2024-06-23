#ifndef POKEPLATINUM_STRUCT_OV62_022349A8_H
#define POKEPLATINUM_STRUCT_OV62_022349A8_H

#include "overlay061/struct_ov61_0222B138.h"
#include "overlay061/struct_ov61_0222B920.h"
#include "overlay062/funcptr_ov62_022349A8.h"
#include "overlay062/struct_ov62_022349A8_sub1.h"
#include "overlay062/struct_ov62_022349A8_sub2.h"
#include "overlay062/struct_ov62_022349A8_sub3.h"
#include "overlay062/struct_ov62_0223CAA4.h"

#include "message.h"
#include "savedata.h"
#include "strbuf.h"
#include "string_template.h"

typedef struct {
    SaveData *unk_00;
    UnkFuncPtr_ov62_022349A8 unk_04;
    void *unk_08;
    UnkStruct_ov62_022349A8_sub1 unk_0C;
    int unk_144;
    int unk_148;
    int unk_14C;
    UnkStruct_ov62_022349A8_sub2 unk_150;
    UnkStruct_ov62_0223CAA4 unk_17C;
    void *unk_18C;
    UnkStruct_ov62_022349A8_sub3 unk_190;
    void *unk_3B4;
    int unk_3B8;
    int unk_3BC;
    int unk_3C0;
    BOOL unk_3C4;
    BOOL unk_3C8;
    UnkStruct_ov61_0222B138 unk_3CC;
    int unk_3D8;
    int unk_3DC;
    int unk_3E0;
    int unk_3E4;
    int unk_3E8;
    int unk_3EC;
    int unk_3F0;
    MessageLoader *unk_3F4;
    StringTemplate *unk_3F8;
    Strbuf *unk_3FC;
    UnkStruct_ov61_0222B920 unk_400;
    u8 unk_40D;
    u8 unk_40E;
} UnkStruct_ov62_022349A8;

#endif // POKEPLATINUM_STRUCT_OV62_022349A8_H
