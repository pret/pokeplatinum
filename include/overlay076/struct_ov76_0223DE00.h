#ifndef POKEPLATINUM_STRUCT_OV76_0223DE00_H
#define POKEPLATINUM_STRUCT_OV76_0223DE00_H

#include "struct_defs/struct_02097F18.h"

#include "overlay076/struct_ov76_0223BBAC.h"
#include "overlay076/struct_ov76_0223C398.h"
#include "overlay076/struct_ov76_0223DD88_sub1.h"
#include "overlay076/struct_ov76_0223DD88_sub2.h"
#include "overlay076/struct_ov76_0223DD88_sub3.h"
#include "overlay076/unk_0223B140.h"

#include "narc.h"
#include "pokemon.h"
#include "sprite_system.h"

typedef struct {
    UnkStruct_02097F18 *unk_00; // handles sprites
    UnkStruct_ov76_0223DD88_sub1 capsules[CAPSULE_NUM];
    SealCounts *sealCount;
    BallCapsule unk_68;
    u8 unk_80[81];
    u8 unused[3];
    UnkStruct_ov76_0223C398 unk_D4;
    UnkStruct_ov76_0223DD88_sub2 unk_264[CAPSULE_NUM];
    ManagedSprite *unk_2F4[2]; // these may be ui
    ManagedSprite *unk_2FC[6];
    ManagedSprite *unk_314[4];
    SealRenderInfo sealRenderInfo[SEALS_PER_CAPSULE];
    int unk_3A4[SEALS_PER_CAPSULE];
    int unk_3C4[2]; // [0] is current index?
    int unk_3CC;
    u8 unused[4];
    int unk_3D4;
    int unk_3D8;
    int unk_3DC;
    int unk_3E0;
    SealSprites sprites;
    UnkStruct_ov76_0223DD88_sub3 unk_418;
    Pokemon *pokemon;
    NARC *unk_42C; // NARC_ctor(NARC_INDEX_POKETOOL__POKE_EDIT__PL_POKE_DATA, HEAP_ID_53)
} UnkStruct_ov76_0223DE00; // this should be the main struct

#endif // POKEPLATINUM_STRUCT_OV76_0223DE00_H
