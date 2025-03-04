#ifndef POKEPLATINUM_UNK_02014000_H
#define POKEPLATINUM_UNK_02014000_H

#include <nitro/fx/fx.h>
#include <nnsys.h>

#include "struct_decls/struct_02014014_decl.h"

#include "functypes/funcptr_02014014.h"
#include "functypes/funcptr_020146F4.h"

#include "camera.h"
#include "spl.h"

void sub_02014000(void);
UnkStruct_02014014 *sub_02014014(UnkFuncPtr_02014014 param0, UnkFuncPtr_02014014 param1, void *param2, int param3, int param4, int heapID);
void sub_0201411C(UnkStruct_02014014 *param0);
void sub_020141E4(void);
void *sub_020144C4(int param0, int param1, int param2);
void sub_020144CC(UnkStruct_02014014 *param0, void *param1, int param2, int param3);
void sub_020145B4(NNSGfdTexKey param0);
void sub_020145F4(NNSGfdPlttKey param0);
void sub_02014638(UnkStruct_02014014 *param0);
void sub_02014674(UnkStruct_02014014 *param0);
int sub_02014680(void);
int sub_0201469C(void);
int sub_020146C0(void);
SPLEmitter *sub_020146E4(UnkStruct_02014014 *param0, int param1, const VecFx32 *param2);
SPLEmitter *sub_020146F4(UnkStruct_02014014 *param0, int param1, UnkFuncPtr_020146F4 param2, void *param3);
s32 sub_02014710(UnkStruct_02014014 *param0);
void sub_02014718(UnkStruct_02014014 *param0);
void sub_02014724(UnkStruct_02014014 *param0, SPLEmitter *param1);
void *sub_02014730(UnkStruct_02014014 *param0);
void sub_02014734(UnkStruct_02014014 *param0, VecFx32 *param1);
void sub_02014744(UnkStruct_02014014 *param0, const VecFx32 *param1);
void *sub_02014764(void);
void sub_02014770(VecFx32 *param0);
Camera *sub_02014784(UnkStruct_02014014 *param0);
void sub_02014788(UnkStruct_02014014 *param0, int param1);
u8 sub_02014790(UnkStruct_02014014 *param0);
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
