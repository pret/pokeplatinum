#ifndef POKEPLATINUM_STRUCT_OV97_0222D04C_H
#define POKEPLATINUM_STRUCT_OV97_0222D04C_H

#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_02009714_decl.h"
#include "struct_decls/struct_02009DC8_decl.h"
#include "message.h"
#include "string_template.h"
#include "struct_defs/struct_0200C738.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "strbuf.h"
#include "game_options.h"
#include "struct_defs/struct_0205AA50.h"
#include "savedata.h"
#include "cell_actor.h"
#include "overlay097/union_ov97_0222D2B0.h"
#include "overlay097/struct_ov97_0223829C.h"

#include <dwc.h>

typedef struct {
    BGL * unk_00;
    SaveData * unk_04;
    Options * unk_08;
    StringTemplate * unk_0C;
    MessageLoader * unk_10;
    Strbuf* unk_14;
    Window unk_18;
    Window unk_28[3];
    Window unk_58;
    int unk_68;
    int unk_6C;
    int unk_70;
    int unk_74;
    BmpList * unk_78;
    ResourceMetadata * unk_7C;
    int unk_80;
    int unk_84;
    int unk_88;
    UnkStruct_ov97_0223829C unk_8C;
    int unk_434;
    int unk_438;
    int unk_43C;
    int unk_440;
    CellActorCollection * unk_444;
    UnkStruct_0200C738 unk_448;
    UnkStruct_02009714 * unk_5D4[6];
    UnkStruct_02009DC8 * unk_5EC[6];
    CellActorResourceData unk_604;
    CellActor * unk_628;
    int unk_62C;
    int unk_630;
    int unk_634;
    u8 unk_638[4096];
    int unk_1638;
    int * unk_163C;
    int unk_1640;
    int unk_1644;
    u8 * unk_1648;
    DWCInetControl unk_164C;
    BOOL unk_16AC;
    int unk_16B0;
    int unk_16B4;
    char unk_16B8[4096];
    int unk_26B8;
    u32 unk_26BC;
    u32 unk_26C0;
    u32 unk_26C4;
    BOOL unk_26C8;
    int unk_26CC;
    int unk_26D0;
    int unk_26D4;
    DWCErrorType unk_26D8;
    BOOL (* unk_26DC)(void);
    Window unk_26E0;
    UnkUnion_ov97_0222D2B0 unk_26F0;
    void (* unk_2A48)(void *);
    int unk_2A4C;
    void * unk_2A50;
    int unk_2A54;
} UnkStruct_ov97_0222D04C;

#endif // POKEPLATINUM_STRUCT_OV97_0222D04C_H
