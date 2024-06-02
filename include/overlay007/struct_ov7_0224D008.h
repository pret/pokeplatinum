#ifndef POKEPLATINUM_STRUCT_OV7_0224D008_H
#define POKEPLATINUM_STRUCT_OV7_0224D008_H

#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_02001AF4_decl.h"
#include "message.h"
#include "string_template.h"
#include "struct_decls/struct_0200C440_decl.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_020203AC_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "strbuf.h"
#include "trainer_info.h"
#include "game_options.h"
#include "struct_decls/struct_0202B628_decl.h"
#include "struct_decls/struct_0202CD88_decl.h"
#include "struct_decls/struct_020507E4_decl.h"
#include "struct_defs/struct_0205AA50.h"
#include "savedata.h"
#include "overlay005/struct_ov5_021D30A8.h"

typedef struct {
    BGL * unk_00;
    void * unk_04;
    Window unk_08[6];
    Window unk_68;
    BmpList * unk_78;
    ResourceMetadata * unk_7C;
    UIControlData * unk_80;
    ResourceMetadata * unk_84;
    MessageLoader * unk_88;
    StringTemplate * unk_8C;
    UnkStruct_020203AC * unk_90;
    UnkStruct_ov5_021D30A8 unk_94;
    GraphicElementData * unk_25C[4];
    u16 unk_26C[2];
    TrainerInfo * unk_270;
    void * unk_274;
    Options * unk_278;
    UnkStruct_0202B628 * unk_27C;
    UnkStruct_0202CD88 * unk_280;
    SaveData * unk_284;
    FieldEvents * unk_288;
    BOOL unk_28C;
    u16 * unk_290;
    u8 unk_294;
    u8 unk_295;
    u8 unk_296;
    u8 unk_297;
    Strbuf* unk_298;
    u8 unk_29C[4];
    int unk_2A0;
    u8 unk_2A4;
    u8 unk_2A5;
    u8 unk_2A6;
    u8 unk_2A7;
    u8 unk_2A8;
    u8 unk_2A9;
    u16 unk_2AA;
    s16 unk_2AC;
    u16 unk_2AE;
    u32 unk_2B0;
    UnkStruct_0200C440 * unk_2B4;
} UnkStruct_ov7_0224D008;

#endif // POKEPLATINUM_STRUCT_OV7_0224D008_H
