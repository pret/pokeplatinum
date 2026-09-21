#ifndef POKEPLATINUM_STRUCT_OV100_021D1C98_SUB1_H
#define POKEPLATINUM_STRUCT_OV100_021D1C98_SUB1_H

#include "overlay100/struct_ov100_021D49B4.h"

typedef struct CastModels {
    int unused_00;
    CutsceneModel unk_04; // static background prop, unidentified; present and untouched in both stages
    CutsceneModel distortionRipple;
    CutsceneModel shockwave;
    CutsceneModel dropletSplash;
    CutsceneModel summonBubble[2];
    CutsceneModel unk_934[5]; // Dialga/Palkia stage: [0]/[1] are the twin whirlpools; Giratina stage: [0..4] are its 5-stage rise/transform sequence
    CutsceneModel unk_10DC[2]; // Dialga/Palkia stage: the falling summon balls; Giratina stage: the shadow pool's growth + eyes-appearing effect
    CutsceneModel trainers[2]; // 0 = player, 1 = Cyrus
    CutsceneModel shadow[4];
} CastModels;

#endif // POKEPLATINUM_STRUCT_OV100_021D1C98_SUB1_H
