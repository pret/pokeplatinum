#ifndef POKEPLATINUM_PALETTE_FADE_H
#define POKEPLATINUM_PALETTE_FADE_H

#include "hardware_window.h"

typedef void (*UnkFuncPtr_0200F634)(void *);

typedef struct UnkStruct_0200F600 {
    void *unk_00[2];
    UnkFuncPtr_0200F634 unk_08[2];
    int unk_10[2];
} UnkStruct_0200F600;

typedef struct UnkStruct_0200F7A0 {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    void *unk_14;
    HardwareWindowSettings *unk_18;
    UnkStruct_0200F600 *unk_1C;
    int heapID;
    u16 unk_24;
    u8 padding_26[2];
    u32 unk_28;
    u32 unk_2C;
} UnkStruct_0200F7A0;

void StartScreenTransition(int param0, int param1, int param2, u16 param3, int param4, int param5, int heapID);
void sub_0200F27C(void);
BOOL IsScreenTransitionDone(void);
void sub_0200F2C0(void);
void sub_0200F32C(int param0);
void sub_0200F338(int param0);
void sub_0200F344(int param0, u16 param1);
void sub_0200F370(u16 param0);
void sub_0200F3B0(int param0, u16 param1);
void sub_0200F42C(u16 param0);
void sub_0200F44C(int param0, int param1);
void sub_0200F6D8(UnkStruct_0200F600 *param0, void *param1, UnkFuncPtr_0200F634 param2, int param3, int heapID);
void sub_0200F704(UnkStruct_0200F600 *param0, int param1, int heapID);

#endif // POKEPLATINUM_PALETTE_FADE_H
