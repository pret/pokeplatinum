#ifndef POKEPLATINUM_STRUCT_OV84_0223B5A0_H
#define POKEPLATINUM_STRUCT_OV84_0223B5A0_H

#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "message.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_0200C440_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/cell_actor_data.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "strbuf.h"
#include "trainer_info.h"
#include "struct_defs/options.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_decls/struct_0207CB08_decl.h"
#include "struct_decls/struct_0207D3C0_decl.h"
#include "overlay084/struct_ov84_0223B5A0_sub1.h"
#include "overlay084/struct_ov84_0223C920.h"

typedef struct {
    BGL * unk_00;
    Window unk_04[11];
    Window unk_B4[1];
    UnkStruct_0207CB08 * unk_C4;
    UnkStruct_0207D3C0 * unk_C8;
    TrainerInfo * unk_CC;
    Options * unk_D0;
    NARC * unk_D4;
    SpriteRenderer * unk_D8;
    SpriteGfxHandler * unk_DC;
    CellActorData * unk_E0[12];
    UnkStruct_0200C440 * unk_110;
    MessageLoader * unk_114;
    StringFormatter * unk_118;
    MessageLoader * unk_11C;
    MessageLoader * unk_120;
    Strbuf* unk_124[12];
    ResourceMetadata * unk_154;
    UIControlData * unk_158;
    UnkStruct_0200112C * unk_15C;
    ResourceMetadata * unk_160;
    Strbuf* unk_164[165];
    Strbuf* unk_3F8;
    Strbuf* unk_3FC;
    Strbuf* unk_400;
    Strbuf* unk_404[8];
    u8 unk_424;
    u8 unk_425;
    u8 unk_426;
    u8 unk_427;
    u8 unk_428;
    UnkStruct_ov84_0223C920 unk_429;
    u8 padding_431[35];
    UnkStruct_ov84_0223B5A0_sub1 unk_454;
    u8 unk_478;
    u8 unk_479;
    u8 unk_47A;
    u8 unk_47B;
    u32 unk_47C;
    u8 unk_480;
    u8 unk_481;
    u8 unk_482;
    u8 unk_483;
    u32 unk_484;
    s16 unk_488;
    u16 unk_48A;
    u32 unk_48C;
    u8 unk_490;
    u8 unk_491;
    u8 unk_492;
    u8 padding_493;
    s32 unk_494;
    s16 unk_498;
    s16 unk_49A;
    u8 padding_49C[2];
    u16 unk_49E;
    u16 unk_4A0;
    u8 padding_4A2[2];
} UnkStruct_ov84_0223B5A0;

#endif // POKEPLATINUM_STRUCT_OV84_0223B5A0_H
