#ifndef POKEPLATINUM_OV61_0222B008_H
#define POKEPLATINUM_OV61_0222B008_H

#include "struct_decls/pc_boxes_decl.h"
#include "struct_decls/struct_02030A80_decl.h"
#include "struct_defs/dress_up_photo.h"

#include "overlay061/struct_ov61_0222B138.h"
#include "overlay061/struct_ov61_0222B2D8.h"
#include "overlay061/struct_ov61_0222B920.h"
#include "overlay062/funcptr_ov62_022349A8.h"
#include "overlay062/struct_ov62_022349A8_sub2.h"
#include "overlay062/struct_ov62_022349A8_sub3.h"
#include "overlay062/struct_ov62_0223CAA4.h"
#include "overlay062/struct_ov62_02241130.h"

#include "gds.h"
#include "message.h"
#include "savedata.h"
#include "string_gf.h"
#include "string_template.h"

typedef struct {
    SaveData *saveData;
    UnkFuncPtr_ov62_022349A8 unk_04;
    void *unk_08;
    UnkStruct_ov62_022349A8_sub1 unk_0C;
    enum HeapID heapID;
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
    String *unk_3FC;
    UnkStruct_ov61_0222B920 unk_400;
    u8 unk_40D;
    u8 unk_40E;
} UnkStruct_ov62_022349A8;

int ov61_0222B008(UnkStruct_ov62_022349A8 *param0, const UnkStruct_ov62_02241130 *param1);
void ov61_0222B0F0(UnkStruct_ov62_022349A8 *param0);
int ov61_0222B1B4(UnkStruct_ov62_022349A8 *param0, UnkStruct_02030A80 *param1, DressUpPhoto *photo);
int ov61_0222B1FC(UnkStruct_ov62_022349A8 *param0, int param1);
int ov61_0222B224(UnkStruct_ov62_022349A8 *param0, int param1, UnkStruct_02030A80 *param2, const PCBoxes *pcBoxes, int param4);
int ov61_0222B290(UnkStruct_ov62_022349A8 *param0, int param1);
int ov61_0222B2B8(UnkStruct_ov62_022349A8 *param0);
int ov61_0222B2D8(UnkStruct_ov62_022349A8 *param0, UnkStruct_02030A80 *param1, UnkStruct_ov61_0222B2D8 param2[]);
int ov61_0222B338(UnkStruct_ov62_022349A8 *param0, UnkStruct_02030A80 *param1);
int ov61_0222B394(UnkStruct_ov62_022349A8 *param0, u16 param1, u8 param2, u8 param3, u8 param4);
int ov61_0222B3EC(UnkStruct_ov62_022349A8 *param0);
int ov61_0222B44C(UnkStruct_ov62_022349A8 *param0);
int ov61_0222B4A8(UnkStruct_ov62_022349A8 *param0);
int ov61_0222B4E4(UnkStruct_ov62_022349A8 *param0);
int ov61_0222B524(UnkStruct_ov62_022349A8 *param0, u64 param1);
int ov61_0222B550(UnkStruct_ov62_022349A8 *param0, u64 param1);
int ov61_0222B57C(UnkStruct_ov62_022349A8 *param0);
BOOL ov61_0222BB48(UnkStruct_ov62_022349A8 *param0, UnkStruct_ov62_0223CAA4 **param1);
BOOL ov61_0222BBBC(UnkStruct_ov62_022349A8 *param0);

#endif // POKEPLATINUM_OV61_0222B008_H
