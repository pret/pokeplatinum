#ifndef POKEPLATINUM_UNK_02002328_H
#define POKEPLATINUM_UNK_02002328_H

#include "struct_defs/struct_0205AA50.h"

#include "strbuf.h"

typedef struct {
    union {
        const u16 *unk_00_val1;
        const Strbuf *unk_00_val2;
    };
    Window *unk_04;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    u8 unk_0B;
    u16 unk_0C;
    u16 unk_0E;
    u16 unk_10;
    u16 unk_12;
    u8 unk_14;
    u8 unk_15;
    u8 unk_16;
    u8 unk_17;
    u16 unk_18;
    u8 unk_1A;
    u8 unk_1B;
} UnkStruct_0201D738;

typedef BOOL (*UnkFuncPtr_0201D834)(UnkStruct_0201D738 *, u16);

typedef struct {
    UnkStruct_0201D738 unk_00;
    UnkFuncPtr_0201D834 unk_1C;
    u8 unk_20[7];
    u8 unk_27;
    u8 unk_28;
    u8 unk_29_0 : 7;
    u8 unk_29_7 : 1;
    u8 unk_2A;
    u8 unk_2B;
    u8 unk_2C;
    u8 unk_2D;
    u16 unk_2E;
    void *unk_30;
} UnkStruct_0201D834;

int sub_02002328(UnkStruct_0201D834 *param0);
void sub_020027A8(u16 param0);
void sub_020027B4(UnkStruct_0201D834 *param0);
void sub_020027E0(UnkStruct_0201D834 *param0);
void sub_02002968(UnkStruct_0201D834 *param0);
BOOL sub_02002A44(UnkStruct_0201D834 *param0);
BOOL sub_02002A80(UnkStruct_0201D834 *param0);
BOOL sub_02002AA4(UnkStruct_0201D834 *param0);
void sub_02002AC8(int param0);
void sub_02002AE4(int param0);
void sub_02002B20(int param0);
u8 sub_02002B3C(void);
void sub_02002B4C(void);
u8 sub_02002B5C(void);
void sub_02002B6C(void);

#endif // POKEPLATINUM_UNK_02002328_H
