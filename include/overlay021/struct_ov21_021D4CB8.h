#ifndef POKEPLATINUM_STRUCT_OV21_021D4CB8_H
#define POKEPLATINUM_STRUCT_OV21_021D4CB8_H

#include <nnsys.h>

#include "overlay021/struct_ov21_021D4C0C_decl.h"

#include "bg_window.h"
#include "heap.h"
#include "sprite.h"

typedef struct {
    UnkStruct_ov21_021D4C0C *unk_00;
    const Window *unk_04;
    const NNSG2dImagePaletteProxy *unk_08;
    const Sprite *unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
    enum HeapId heapID;
} UnkStruct_ov21_021D4CB8;

#endif // POKEPLATINUM_STRUCT_OV21_021D4CB8_H
