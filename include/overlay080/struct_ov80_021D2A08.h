#ifndef POKEPLATINUM_STRUCT_OV80_021D2A08_H
#define POKEPLATINUM_STRUCT_OV80_021D2A08_H

#include "struct_decls/message_formatter.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_0200D0F4_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/strbuf.h"
#include "struct_decls/struct_02039EBC_decl.h"
#include "struct_defs/struct_0203D8AC.h"
#include "overlay080/struct_ov80_021D259C.h"
#include "overlay080/struct_ov80_021D2AF4.h"
#include "overlay080/struct_ov80_021D2C1C.h"
#include "overlay080/struct_ov80_021D2E10.h"

#include <nnsys.h>

typedef struct UnkStruct_ov80_021D2A08_t {
    u8 unk_00;
    u8 unk_01;
    u16 unk_02;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
    int unk_24;
    UnkStruct_02018340 * unk_28;
    UnkStruct_0203D8AC * unk_2C;
    UnkStruct_02039EBC * unk_30;
    void * unk_34;
    int (* unk_38)(struct UnkStruct_ov80_021D2A08_t *);
    UnkStruct_ov80_021D2C1C * unk_3C;
    UnkStruct_ov80_021D2E10 * unk_40;
    UnkStruct_ov80_021D259C unk_44[5];
    MessageFormatter * unk_80;
    MessageFormatter * unk_84;
    Strbuf* unk_88;
    int unk_8C;
    int unk_90;
    UnkStruct_ov80_021D2AF4 * unk_94;
    void * unk_98;
    void * unk_9C;
    void * unk_A0;
    void * unk_A4;
    void * unk_A8;
    void * unk_AC;
    void * unk_B0;
    void * unk_B4;
    NNSG2dScreenData * unk_B8;
    NNSG2dScreenData * unk_BC;
    NNSG2dScreenData * unk_C0;
    NNSG2dScreenData * unk_C4;
    NNSG2dScreenData * unk_C8;
    NNSG2dScreenData * unk_CC;
    NNSG2dScreenData * unk_D0;
    NNSG2dScreenData * unk_D4;
    UnkStruct_0200C6E4 * unk_D8;
    UnkStruct_0200C704 * unk_DC;
    UnkStruct_0200D0F4 * unk_E0;
} UnkStruct_ov80_021D2A08;

#endif // POKEPLATINUM_STRUCT_OV80_021D2A08_H
