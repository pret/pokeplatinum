#ifndef POKEPLATINUM_STRUCT_OV72_0223DB98_T_H
#define POKEPLATINUM_STRUCT_OV72_0223DB98_T_H

#include "struct_decls/struct_02015920_decl.h"

#include "overlay072/struct_ov72_0223E7D8.h"
#include "overlay072/struct_ov72_0223E80C.h"
#include "overlay072/struct_ov72_0223EAD8.h"

#include "bg_window.h"
#include "cell_actor.h"
#include "game_options.h"
#include "game_records.h"
#include "message.h"
#include "sprite_resource.h"
#include "sprite_util.h"
#include "strbuf.h"
#include "string_template.h"

struct UnkStruct_ov72_0223DB98_t {
    BgConfig *unk_00;
    BOOL unk_04;
    GameRecords *records;
    Options *unk_0C;
    StringTemplate *unk_10;
    MessageLoader *unk_14;
    Strbuf *unk_18[5];
    Strbuf *unk_2C;
    Strbuf *unk_30;
    Strbuf *unk_34;
    int unk_38;
    CellActorCollection *unk_3C;
    UnkStruct_0200C738 unk_40;
    SpriteResourceCollection *unk_1CC[4];
    SpriteResource *unk_1DC[2][4];
    CellActorResourceData unk_1FC;
    CellActorResourceData unk_220;
    CellActor *unk_244[14];
    CellActor *unk_27C[14];
    CellActor *unk_2B4[9];
    Window unk_2D8[5];
    Window unk_328;
    Window unk_338;
    Window unk_348;
    Window unk_358;
    Window *unk_368[2];
    int unk_370;
    int unk_374;
    int unk_378;
    u8 unk_37C[16384];
    u16 unk_437C;
    u8 unk_437E;
    u8 unk_437F;
    UnkStruct_ov72_0223E7D8 unk_4380;
    UnkStruct_ov72_0223E7D8 unk_4391[5];
    UnkStruct_ov72_0223E80C unk_43E6[5];
    u8 unk_43FA[6144];
    u8 *unk_5BFC;
    u8 unk_5C00[256];
    UnkStruct_02015920 *unk_5D00;
    UnkStruct_ov72_0223EAD8 unk_5D04;
    int unk_5D0C;
    int unk_5D10;
};

#endif // POKEPLATINUM_STRUCT_OV72_0223DB98_T_H
