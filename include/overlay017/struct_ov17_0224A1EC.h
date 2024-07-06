#ifndef POKEPLATINUM_STRUCT_OV17_0224A1EC_H
#define POKEPLATINUM_STRUCT_OV17_0224A1EC_H

#include "struct_decls/cell_actor_data.h"
#include "struct_decls/sprite_decl.h"
#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02007768_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02012744_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02095C48_sub1.h"

#include "battle/struct_ov16_0223E0C8.h"
#include "overlay017/struct_ov17_0223F2E4.h"
#include "overlay017/struct_ov17_0224A1EC_sub1.h"
#include "overlay017/struct_ov17_0224A8D4.h"
#include "overlay017/struct_ov17_0224ABFC.h"
#include "overlay017/struct_ov17_0224AE84.h"
#include "overlay017/struct_ov17_0224B058.h"
#include "overlay017/struct_ov17_0224B09C.h"
#include "overlay017/struct_ov17_0224C384.h"
#include "overlay017/struct_ov17_0224C9A4.h"
#include "overlay017/struct_ov17_02253084.h"

#include "message.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task_manager.h"

typedef struct {
    UnkStruct_02095C48_sub1 *unk_00;
    UnkStruct_ov17_0224B09C unk_04[4];
    UnkStruct_02007768 *unk_44;
    Sprite *unk_48[4];
    SpriteRenderer *unk_58;
    SpriteGfxHandler *unk_5C;
    BGL *unk_60;
    Window unk_64[2];
    MessageLoader *unk_84;
    StringTemplate *unk_88;
    Strbuf *unk_8C;
    PaletteData *unk_90;
    UnkStruct_02012744 *unk_94;
    UnkStruct_ov16_0223E0C8 unk_98[4];
    CellActorData *unk_D8[68];
    CellActorData *unk_1E8;
    SysTask *unk_1EC;
    UnkStruct_ov17_0224C9A4 unk_1F0;
    UnkStruct_ov17_0224C384 *unk_1FC;
    UnkStruct_ov17_0224ABFC unk_200[4];
    UnkStruct_ov17_0224A1EC_sub1 unk_254[4];
    UnkStruct_ov17_0224AE84 unk_290[4][16];
    UnkStruct_ov17_0224B058 unk_910;
    UnkStruct_ov17_0224A8D4 unk_92C[3];
    CellActorData *unk_960[3];
    UnkStruct_ov17_0223F2E4 unk_96C[3][3];
    const UnkStruct_ov17_02253084 *unk_A10;
    u8 unk_A14[4];
    u8 unk_A18;
    u8 unk_A19[4];
    u8 unk_A1D[4];
    u8 unk_A21[4];
    u8 unk_A25;
    u8 unk_A26;
    u8 unk_A27;
    u8 unk_A28[4];
    u8 unk_A2C;
} UnkStruct_ov17_0224A1EC;

#endif // POKEPLATINUM_STRUCT_OV17_0224A1EC_H
