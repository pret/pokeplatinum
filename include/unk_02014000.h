#ifndef POKEPLATINUM_UNK_02014000_H
#define POKEPLATINUM_UNK_02014000_H

#include <nitro/fx/fx.h>
#include <nnsys.h>

#include "functypes/funcptr_020146F4.h"

#include "camera.h"
#include "spl.h"

typedef struct ParticleSystem {
    SPLManager *unk_00;
    void *unk_04;
    SPLEmitter *unk_08;
    void *unk_0C;
    void *unk_10;
    void *unk_14;
    SPLTexVRAMAllocFunc unk_18;
    SPLPalVRAMAllocFunc unk_1C;
    Camera *camera;
    VecFx32 unk_24;
    u16 unk_30;
    VecFx32 unk_34;
    VecFx32 unk_40;
    VecFx32 unk_4C;
    union {
        NNSGfdFrmTexVramState unk_58_val1;
        NNSGfdTexKey unk_58_val2[16];
    };
    union {
        NNSGfdFrmPlttVramState unk_98_val1;
        NNSGfdPlttKey unk_98_val2[16];
    };
    u8 unk_D8;
    u8 unk_D9;
    u8 unk_DA;
    u8 unk_DB;
} ParticleSystem;

void sub_02014000(void);
ParticleSystem *sub_02014014(SPLTexVRAMAllocFunc param0, SPLPalVRAMAllocFunc param1, void *param2, int param3, int param4, int heapID);
void sub_0201411C(ParticleSystem *param0);
void sub_020141E4(void);
void *sub_020144C4(int param0, int param1, int param2);
void sub_020144CC(ParticleSystem *param0, void *param1, int param2, int param3);
void sub_020145B4(NNSGfdTexKey param0);
void sub_020145F4(NNSGfdPlttKey param0);
void sub_02014638(ParticleSystem *param0);
void sub_02014674(ParticleSystem *param0);
int sub_02014680(void);
int sub_0201469C(void);
int sub_020146C0(void);
SPLEmitter *sub_020146E4(ParticleSystem *param0, int param1, const VecFx32 *param2);
SPLEmitter *sub_020146F4(ParticleSystem *param0, int param1, UnkFuncPtr_020146F4 param2, void *param3);
s32 sub_02014710(ParticleSystem *param0);
void sub_02014718(ParticleSystem *param0);
void sub_02014724(ParticleSystem *param0, SPLEmitter *param1);
void *sub_02014730(ParticleSystem *param0);
void sub_02014734(ParticleSystem *param0, VecFx32 *param1);
void sub_02014744(ParticleSystem *param0, const VecFx32 *param1);
void *sub_02014764(void);
void sub_02014770(VecFx32 *param0);
Camera *sub_02014784(ParticleSystem *param0);
void sub_02014788(ParticleSystem *param0, int param1);
u8 sub_02014790(ParticleSystem *param0);
void sub_02014798(SPLEmitter *param0, VecFx16 *param1);
void sub_020147B0(SPLEmitter *param0, fx32 param1);
void sub_02014874(SPLEmitter *param0, VecFx16 *param1);
void sub_02014890(SPLEmitter *param0, VecFx32 *param1);
void sub_020148A8(SPLEmitter *param0, VecFx32 *param1);
void sub_020148DC(SPLEmitter *param0, fx16 *param1);
void sub_020148F4(SPLEmitter *param0, fx16 *param1);
void sub_02014910(SPLEmitter *param0, u16 *param1);
void sub_02014924(SPLEmitter *param0, u16 *param1);
void sub_02014940(SPLEmitter *param0, u16 *param1);
void sub_02014954(SPLEmitter *param0, u16 *param1);
void sub_02014970(SPLEmitter *param0, VecFx32 *param1);
void sub_02014988(SPLEmitter *param0, VecFx32 *param1);
void sub_020149BC(SPLEmitter *param0, fx16 *param1);
void sub_020149D4(SPLEmitter *param0, fx16 *param1);

#endif // POKEPLATINUM_UNK_02014000_H
