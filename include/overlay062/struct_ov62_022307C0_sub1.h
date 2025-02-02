#ifndef POKEPLATINUM_STRUCT_OV62_022307C0_SUB1_H
#define POKEPLATINUM_STRUCT_OV62_022307C0_SUB1_H

#include "struct_decls/cell_actor_data.h"
#include "struct_decls/font_oam.h"
#include "struct_decls/struct_02012B20_decl.h"

#include "char_transfer.h"
#include "touch_screen.h"

typedef struct {
    CellActorData *unk_00;
    u8 padding_04[8];
    BOOL unk_0C;
    TouchScreenRect *unk_10;
    FontOAM *unk_14;
    UnkStruct_02012B20 *unk_18;
    SpriteManagerAllocation unk_1C;
} UnkStruct_ov62_022307C0_sub1;

#endif // POKEPLATINUM_STRUCT_OV62_022307C0_SUB1_H
