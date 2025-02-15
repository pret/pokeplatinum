#ifndef POKEPLATINUM_STRUCT_OV62_0223118C_H
#define POKEPLATINUM_STRUCT_OV62_0223118C_H

#include "struct_decls/struct_02007768_decl.h"
#include "struct_decls/struct_02012744_decl.h"
#include "struct_decls/struct_02023FCC_decl.h"
#include "struct_defs/struct_0207C690.h"

#include "overlay062/struct_ov62_0223118C_sub1.h"
#include "overlay062/struct_ov62_02233310.h"
#include "overlay062/struct_ov62_0223359C.h"
#include "overlay062/struct_ov62_022349A8.h"

#include "bg_window.h"
#include "message.h"
#include "narc.h"
#include "palette.h"
#include "sprite_system.h"
#include "touch_screen.h"

typedef struct {
    NARC *unk_00;
    SpriteSystem *unk_04;
    SpriteManager *unk_08;
    u8 padding_0C[4];
    BgConfig *unk_10;
    PaletteData *unk_14;
    UnkStruct_02023FCC *unk_18;
    TouchScreenRect unk_1C[5];
    BOOL unk_30;
    MessageLoader *unk_34;
    MessageLoader *unk_38;
    UnkStruct_02012744 *unk_3C;
    int unk_40;
    int unk_44;
    u8 unk_48;
    u8 padding_49[3];
    GenericPointerData *unk_4C;
    UnkStruct_02007768 *unk_50;
    UnkStruct_ov62_022349A8 unk_54;
    UnkStruct_ov62_0223359C unk_46C;
    UnkStruct_ov62_02233310 unk_48C;
    u8 padding_4D8[24];
    UnkStruct_ov62_0223118C_sub1 unk_4F0;
    BOOL unk_510;
    BOOL unk_514;
} UnkStruct_ov62_0223118C;

#endif // POKEPLATINUM_STRUCT_OV62_0223118C_H
