#ifndef POKEPLATINUM_STRUCT_OV94_0223FD4C_H
#define POKEPLATINUM_STRUCT_OV94_0223FD4C_H

#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_02001AF4_decl.h"
#include "overlay_manager.h"
#include "struct_decls/struct_02009714_decl.h"
#include "struct_decls/struct_02009DC8_decl.h"
#include "message.h"
#include "string_template.h"
#include "struct_defs/struct_0200C738.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "sys_task_manager.h"
#include "cell_actor.h"
#include "strbuf.h"
#include "trainer_info.h"
#include "struct_decls/struct_0202B370_decl.h"
#include "struct_defs/struct_0203E0FC.h"
#include "struct_defs/struct_0205AA50.h"
#include "pokemon.h"
#include "struct_decls/struct_0207AE68_decl.h"
#include "struct_defs/pokemon_summary.h"
#include "overlay006/struct_ov6_02246254.h"
#include "cell_actor.h"
#include "overlay061/struct_ov61_0222C3B0.h"
#include "overlay094/struct_ov94_0223BA88.h"
#include "overlay094/struct_ov94_0223BA88_sub2.h"
#include "overlay094/struct_ov94_0223BA88_sub3.h"
#include "overlay094/struct_ov94_0223FD4C_sub1.h"
#include "overlay094/struct_ov94_0223FD4C_sub2.h"
#include "overlay094/struct_ov94_0223FD4C_sub3.h"
#include "overlay094/struct_ov94_02242AAC.h"
#include "overlay096/struct_ov96_0223B574.h"
#include "overlay096/struct_ov96_0223B574_1.h"

#include <nnsys.h>
#include <dwc.h>

typedef struct UnkStruct_ov94_0223FD4C_t {
    UnkStruct_0203E0FC * unk_00;
    BGL * unk_04;
    UnkStruct_0202B370 * unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
    int unk_24;
    int unk_28;
    int unk_2C;
    int unk_30;
    u16 unk_34;
    u16 unk_36;
    u16 unk_38;
    u16 unk_3A;
    int unk_3C;
    int unk_40;
    int unk_44;
    int unk_48;
    void * unk_4C;
    NNSFndHeapHandle unk_50;
    DWCInetControl unk_54;
    OverlayManager * unk_B4;
    PokemonSummary unk_B8;
    UnkStruct_ov6_02246254 unk_E8;
    UnkStruct_0207AE68 * unk_100;
    int unk_104;
    u16 unk_108;
    u16 unk_10A;
    u16 unk_10C;
    u16 unk_10E;
    u16 unk_110;
    u16 unk_112;
    BoxPokemon * unk_114;
    int unk_118;
    int unk_11C;
    TrainerInfo * unk_120;
    UnkStruct_ov94_0223FD4C_sub1 unk_124;
    UnkStruct_ov94_0223BA88 unk_12C;
    UnkStruct_ov94_0223BA88 unk_250[7];
    UnkStruct_ov94_0223BA88 unk_A4C;
    UnkStruct_ov94_0223BA88_sub2 unk_B70;
    UnkStruct_ov94_0223BA88_sub3 unk_B74;
    UnkStruct_ov94_0223BA88_sub3 unk_B7A;
    UnkStruct_ov94_0223BA88_sub3 unk_B80;
    int unk_B88;
    StringTemplate * unk_B8C;
    MessageLoader * unk_B90;
    MessageLoader * unk_B94;
    MessageLoader * unk_B98;
    MessageLoader * unk_B9C;
    MessageLoader * unk_BA0;
    Strbuf* unk_BA4;
    Strbuf* unk_BA8;
    Strbuf* unk_BAC;
    Strbuf* unk_BB0;
    Strbuf* unk_BB4[10];
    Strbuf* unk_BDC;
    int unk_BE0;
    CellActorCollection * unk_BE4;
    UnkStruct_0200C738 unk_BE8;
    UnkStruct_02009714 * unk_D74[4];
    UnkStruct_02009DC8 * unk_D84[3][4];
    CellActorResourceData unk_DB4;
    CellActorResourceData unk_DD8;
    CellActorResourceData unk_DFC;
    CellActor * unk_E20;
    CellActor * unk_E24;
    CellActor * unk_E28[30];
    CellActor * unk_EA0[30];
    CellActor * unk_F18[6];
    CellActor * unk_F30;
    CellActor * unk_F34[8];
    CellActor * unk_F54[2];
    Window unk_F5C;
    Window unk_F6C;
    Window unk_F7C;
    Window unk_F8C;
    Window unk_F9C[3];
    Window unk_FCC[13];
    Window unk_109C;
    Window unk_10AC[2];
    ResourceMetadata * unk_10CC;
    UIControlData * unk_10D0;
    UIControlData * unk_10D4;
    BmpList * unk_10D8;
    void * unk_10DC;
    int unk_10E0;
    UnkStruct_ov94_0223FD4C_sub3 * unk_10E4;
    u16 unk_10E8;
    u16 unk_10EA;
    SysTask * unk_10EC;
    u16 unk_10F0;
    u16 unk_10F2;
    void * unk_10F4;
    NNSG2dCharacterData * unk_10F8;
    void * unk_10FC;
    NNSG2dPaletteData * unk_1100;
    Pokemon * unk_1104;
    UnkStruct_ov94_0223FD4C_sub2 * unk_1108;
    u16 unk_110C;
    u16 unk_110E;
    u32 unk_1110;
    void * unk_1114;
    void (* unk_1118)(void * param0);
    UnkStruct_ov94_02242AAC unk_111C;
    UnkStruct_ov96_0223B574 unk_1144;
    UnkStruct_ov96_0223B574_1 unk_11A8;
    int unk_11B0;
    UnkStruct_ov61_0222C3B0 unk_11B4;
    s16 unk_14E0;
    s16 unk_14E2;
    s32 unk_14E4;
} UnkStruct_ov94_0223FD4C;

#endif // POKEPLATINUM_STRUCT_OV94_0223FD4C_H
