#ifndef POKEPLATINUM_STRUCT_OV19_021DC680_H
#define POKEPLATINUM_STRUCT_OV19_021DC680_H

#include <nnsys.h>

#include "applications/pc_boxes/box_application.h"
#include "applications/pc_boxes/struct_ov19_021D61B0_decl.h"
#include "applications/pc_boxes/struct_ov19_021D8318.h"
#include "applications/pc_boxes/struct_ov19_021DA384.h"
#include "applications/pc_boxes/struct_ov19_021DCD18.h"

#include "bg_window.h"
#include "sprite.h"

typedef struct {
    UnkStruct_ov19_021D61B0 *unk_00;
    BgConfig *unk_04;
    SpriteList *unk_08;
    const BoxApplication *unk_0C;
    UnkStruct_ov19_021D8318 *unk_10;
    void *unk_14;
    NNSG2dScreenData *unk_18;
    void *unk_1C;
    fx32 unk_20;
    fx32 unk_24;
    u8 unk_28;
    u8 unk_29;
    u8 unk_2A;
    u8 unk_2B;
    BOOL unk_2C;
    u32 unk_30;
    int unk_34;
    UnkStruct_ov19_021DA384 *unk_38;
    UnkStruct_ov19_021DCD18 unk_3C[6];
    u8 unk_174;
    u8 padding_175[3];
} UnkStruct_ov19_021DC680;

#endif // POKEPLATINUM_STRUCT_OV19_021DC680_H
