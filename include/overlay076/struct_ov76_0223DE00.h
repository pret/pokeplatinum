#ifndef POKEPLATINUM_STRUCT_OV76_0223DE00_H
#define POKEPLATINUM_STRUCT_OV76_0223DE00_H

#include "struct_decls/cell_actor_data.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0202CA88_decl.h"
#include "struct_defs/struct_0202CA28.h"
#include "struct_defs/struct_02097F18.h"

#include "overlay076/struct_ov76_0223B52C.h"
#include "overlay076/struct_ov76_0223BBAC.h"
#include "overlay076/struct_ov76_0223C398.h"
#include "overlay076/struct_ov76_0223DD88_sub1.h"
#include "overlay076/struct_ov76_0223DD88_sub2.h"
#include "overlay076/struct_ov76_0223DD88_sub3.h"

#include "pokemon.h"

typedef struct {
    UnkStruct_02097F18 *unk_00;
    UnkStruct_ov76_0223DD88_sub1 unk_04[12];
    UnkStruct_0202CA88 *unk_64;
    UnkStruct_0202CA28 unk_68;
    u8 unk_80[81];
    u8 padding_D1[3];
    UnkStruct_ov76_0223C398 unk_D4;
    UnkStruct_ov76_0223DD88_sub2 unk_264[12];
    CellActorData *unk_2F4[2];
    CellActorData *unk_2FC[6];
    CellActorData *unk_314[4];
    UnkStruct_ov76_0223B52C unk_324[8];
    int unk_3A4[8];
    int unk_3C4[2];
    int unk_3CC;
    u8 padding_3D0[4];
    int unk_3D4;
    int unk_3D8;
    int unk_3DC;
    int unk_3E0;
    UnkStruct_ov76_0223BBAC unk_3E4;
    UnkStruct_ov76_0223DD88_sub3 unk_418;
    Pokemon *unk_428;
    NARC *unk_42C;
} UnkStruct_ov76_0223DE00;

#endif // POKEPLATINUM_STRUCT_OV76_0223DE00_H
