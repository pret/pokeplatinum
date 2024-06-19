#ifndef POKEPLATINUM_BAG_H
#define POKEPLATINUM_BAG_H

#include "struct_defs/struct_0207CDEC.h"
#include "bag.h"
#include "bag.h"
#include "savedata.h"
#include "constants/heap.h"

typedef struct Bag {
    BagItem unk_00[165];
    BagItem unk_294[50];
    BagItem unk_35C[100];
    BagItem unk_4EC[12];
    BagItem unk_51C[40];
    BagItem unk_5BC[64];
    BagItem unk_6BC[15];
    BagItem unk_6F8[30];
    u32 unk_770;
} Bag;

typedef struct {
    u8 unk_00[8];
    u8 unk_08[8];
    u16 unk_10;
    u16 unk_12;
} UnkStruct_0207D99C_sub1;

typedef struct {
    u8 unk_00[5];
    u8 unk_05[5];
    u16 unk_0A;
    u16 unk_0C;
    u16 unk_0E;
} UnkStruct_0207D99C_sub2;

typedef struct UnkStruct_0207D99C_t {
    UnkStruct_0207D99C_sub1 unk_00;
    UnkStruct_0207D99C_sub2 unk_14;
} UnkStruct_0207D99C;

int Bag_SaveSize(void);
Bag *Bag_New(enum HeapId heapID);
void Bag_Init(Bag *bag);
void Bag_Copy(const Bag *src, Bag *dst);
u32 sub_0207D3FC(const Bag * param0);
void sub_0207D404(Bag * param0, u32 param1);
BOOL sub_0207D55C(Bag * param0, u16 param1, u16 param2, u32 param3);
BOOL sub_0207D570(Bag * param0, u16 param1, u16 param2, u32 param3);
BOOL Bag_SubtractItem(Bag * param0, u16 param1, u16 param2, u32 param3);
BOOL sub_0207D658(BagItem * param0, u32 param1, u16 param2, u16 param3, u32 param4);
BOOL sub_0207D688(Bag * param0, u16 param1, u16 param2, u32 param3);
BOOL sub_0207D69C(Bag * param0, u32 param1);
u16 sub_0207D730(Bag * param0, u16 param1, u32 param2);
u16 sub_0207D748(BagItem * param0, u32 param1, u16 param2, u32 param3);
void sub_0207D780(BagItem * param0, const u32 param1);
void sub_0207D7CC(BagItem * param0, const u32 param1);
void * sub_0207D824(Bag * param0, const u8 * param1, u32 param2);
BagItem * sub_0207D910(Bag * param0, u16 param1, u16 param2);
Bag * sub_0207D990(SaveData * param0);
UnkStruct_0207D99C * sub_0207D99C(u32 param0);
void sub_0207D9B4(UnkStruct_0207D99C * param0, u32 param1, u8 * param2, u8 * param3);
u16 sub_0207D9C4(UnkStruct_0207D99C * param0);
void sub_0207D9C8(UnkStruct_0207D99C * param0, u32 param1, u8 param2, u8 param3);
void sub_0207D9D4(UnkStruct_0207D99C * param0, u16 param1);
void sub_0207D9D8(UnkStruct_0207D99C * param0, u32 param1, u8 * param2, u8 * param3);
u16 sub_0207D9E4(UnkStruct_0207D99C * param0);
u16 sub_0207D9E8(UnkStruct_0207D99C * param0);
u16 sub_0207D9EC(UnkStruct_0207D99C * param0);
void sub_0207D9F0(UnkStruct_0207D99C * param0, u32 param1, u8 param2, u8 param3);
void sub_0207D9F8(UnkStruct_0207D99C * param0);
void Bag_SetLastItemUsed(UnkStruct_0207D99C * param0, u16 param1, u16 param2);
void sub_0207DA24(UnkStruct_0207D99C * param0, u16 param1);

#endif // POKEPLATINUM_BAG_H
