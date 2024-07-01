#ifndef POKEPLATINUM_STRUCT_OV22_0225A0E4_H
#define POKEPLATINUM_STRUCT_OV22_0225A0E4_H

#include <nnsys.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02007768_decl.h"
#include "struct_decls/struct_02009714_decl.h"
#include "struct_decls/struct_02015064_decl.h"
#include "struct_decls/struct_02015128_decl.h"
#include "struct_decls/struct_020151A4_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_0200C738.h"

#include "cell_actor.h"
#include "resource_collection.h"

typedef struct {
    UnkStruct_02015064 *unk_00;
    UnkStruct_02015128 **unk_04;
    int unk_08;
    int unk_0C;
    UnkStruct_020151A4 **unk_10;
    int unk_14;
    int unk_18;
    BOOL unk_1C;
    UnkStruct_02007768 *unk_20;
    NNSGfdTexKey unk_24;
    NNSGfdPlttKey unk_28;
    BOOL unk_2C;
    u8 *unk_30;
    ResourceCollection *unk_34;
    NNSG2dCharacterData **unk_38;
    int unk_3C;
    BGL *unk_40;
    CellActorCollection *unk_44;
    SpriteResourceCollection *unk_48[4];
    UnkStruct_0200C738 unk_58;
    NARC *unk_5C;
} UnkStruct_ov22_0225A0E4;

#endif // POKEPLATINUM_STRUCT_OV22_0225A0E4_H
