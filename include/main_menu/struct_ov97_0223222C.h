#ifndef POKEPLATINUM_STRUCT_MAIN_MENU_0223222C_H
#define POKEPLATINUM_STRUCT_MAIN_MENU_0223222C_H

#include <nitro/wm.h>

#include "main_menu/struct_ov97_02232AC8.h"
#include "main_menu/struct_ov97_02233268.h"
#include "main_menu/struct_ov97_022339EC.h"
#include "main_menu/union_ov97_022334FC.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u32 unk_04;
    int unk_08;
    u16 unk_0C;
    u16 unk_0E;
    BOOL unk_10;
    BOOL unk_14;
    BOOL unk_18;
    BOOL unk_1C;
    BOOL unk_20;
    WMscanParam *unk_24;
    WMbssDesc *unk_28;
    u32 unk_2C;
    u32 unk_30;
    void *unk_34;
    void *unk_38;
    void *unk_3C;
    UnkStruct_ov97_02233268 unk_40;
    UnkStruct_ov97_022339EC unk_78;
    UnkUnion_ov97_022334FC unk_90;
    UnkStruct_ov97_02232AC8 unk_254;
} UnkStruct_ov97_0223222C;

#endif // POKEPLATINUM_STRUCT_MAIN_MENU_0223222C_H
