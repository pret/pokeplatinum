#ifndef POKEPLATINUM_STRUCT_OV116_02262A8C_H
#define POKEPLATINUM_STRUCT_OV116_02262A8C_H

#include <nitro/fx/fx.h>

#include "overlay116/struct_ov116_02260490.h"
#include "overlay116/struct_ov116_02262A8C_sub1.h"
#include "overlay116/struct_ov116_02262A8C_sub2.h"
#include "overlay116/struct_ov116_02262D08.h"
#include "overlay116/struct_ov116_022647BC.h"
#include "overlay116/struct_ov116_022649E4.h"
#include "overlay116/struct_ov116_0226501C.h"
#include "overlay116/struct_ov116_0226534C.h"
#include "overlay116/struct_ov116_022660A8.h"

#include "bg_window.h"
#include "sprite_system.h"

typedef struct {
    u32 unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    u8 padding_10[4];
    UnkStruct_ov116_022649E4 *unk_14;
    u8 padding_18[4];
    ManagedSprite *unk_1C[3];
    ManagedSprite *unk_20[3];
    ManagedSprite *unk_24[3];
    ManagedSprite *unk_28[36];
    ManagedSprite *unk_B8[4];
    ManagedSprite *unk_C8[2];
    ManagedSprite *unk_D0[2];
    ManagedSprite *unk_D8;
    u16 unk_DC[4];
    u8 padding_E4[12];
    int unk_F0;
    int unk_F4;
    int unk_F8;
    UnkStruct_ov116_0226501C unk_FC;
    UnkStruct_ov116_0226501C unk_308[3];
    UnkStruct_ov116_0226501C unk_92C;
    UnkStruct_ov116_0226501C unk_B38[8];
    UnkStruct_ov116_0226501C unk_1B98;
    UnkStruct_ov116_0226501C unk_1DA4;
    VecFx32 unk_1FB0;
    UnkStruct_ov116_02262A8C_sub1 unk_1FBC;
    Window unk_1FC8;
    Window unk_1FD8[4];
    UnkStruct_ov116_022660A8 unk_2018;
    UnkStruct_ov116_0226534C unk_20C4;
    UnkStruct_ov116_022647BC unk_214C[8];
    UnkStruct_ov116_02262D08 unk_268C[4];
    UnkStruct_ov116_02262A8C_sub2 unk_279C;
    UnkStruct_ov116_02260490 unk_2858[4];
    u8 padding_2868[4];
    u32 unk_286C;
    int unk_2870;
    BOOL unk_2874;
} UnkStruct_ov116_02262A8C;

#endif // POKEPLATINUM_STRUCT_OV116_02262A8C_H
