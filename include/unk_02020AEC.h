#ifndef POKEPLATINUM_UNK_02020AEC_H
#define POKEPLATINUM_UNK_02020AEC_H

#include <nitro/fx/fx.h>
#include <nnsys.h>

#include "constants/heap.h"

#include "struct_decls/struct_0201DD00_decl.h"
#include "struct_decls/struct_0201DDF4_decl.h"
#include "struct_defs/struct_020217F4.h"
#include "struct_defs/struct_02024184.h"

#include "overlay005/struct_ov5_021DF84C.h"
#include "overlay005/struct_ov5_021EDDAC.h"

typedef struct UnkStruct_020216E0 UnkStruct_020216E0;
typedef void (*UnkFuncPtr_02021444)(UnkStruct_020216E0 *, void *);

typedef struct UnkStruct_020216E0 {
    VecFx32 unk_00;
    VecFx32 unk_0C;
    const MtxFx33 *unk_18;
    void *unk_1C;
    UnkFuncPtr_02021444 unk_20;
    u8 unk_24;
    void *unk_28;
    const UnkStruct_020217F4 *unk_2C;
    NNSG3dRenderObj unk_30;
    NNSG3dResMdlSet *unk_84;
    NNSG3dResMdl *unk_88;
    NNSG3dResTex *unk_8C;
    const NNSG3dResTex *unk_90;
    NNSGfdTexKey unk_94;
    NNSGfdTexKey unk_98;
    NNSGfdPlttKey unk_9C;
    UnkStruct_02024184 unk_A0;
    UnkStruct_0201DDF4 *unk_B0;
    u8 unk_B4;
    u16 unk_B6;
    fx32 unk_B8;
    UnkStruct_020216E0 *unk_BC;
    UnkStruct_020216E0 *unk_C0;
} UnkStruct_020216E0;

typedef struct UnkStruct_02020C44_t {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    UnkStruct_020216E0 *unk_04;
    int unk_08;
    UnkStruct_020216E0 unk_0C;
    UnkStruct_020216E0 **unk_CC;
    int unk_D0;
    NNSFndAllocator *unk_D4;
    UnkStruct_0201DD00 *unk_D8;
} UnkStruct_02020C44;

typedef struct {
    UnkStruct_02020C44 *unk_00;
    const UnkStruct_ov5_021DF84C *unk_04;
    VecFx32 unk_08;
    VecFx32 unk_14;
} UnkStruct_ov5_021DF7F8;

void sub_02020B14(UnkStruct_020216E0 *param0);
void sub_02020B90(int param0, enum HeapID heapID);
void sub_02020BD0(void);
void sub_02020C08(void);
UnkStruct_02020C44 *sub_02020C44(const UnkStruct_ov5_021EDDAC *param0);
BOOL sub_02020CCC(UnkStruct_02020C44 *param0);
BOOL sub_02020D14(UnkStruct_02020C44 *param0);
BOOL sub_02020D50(UnkStruct_02020C44 *param0);
void sub_02020D68(UnkStruct_02020C44 *param0);
UnkStruct_020216E0 *sub_0202119C(const UnkStruct_ov5_021DF7F8 *param0);
BOOL sub_020211FC(UnkStruct_020216E0 *param0);
void sub_0202125C(UnkStruct_ov5_021DF84C *param0, void *param1, const NNSG3dResTex *param2, const UnkStruct_020217F4 *param3, const UnkStruct_02024184 *param4, NNSGfdTexKey param5, NNSGfdTexKey param6, NNSGfdPlttKey param7);
void sub_02021284(UnkStruct_ov5_021DF84C *param0, void *param1, const NNSG3dResTex *param2, const UnkStruct_020217F4 *param3, const UnkStruct_02024184 *param4);
void sub_020212A8(UnkStruct_020216E0 *param0, const VecFx32 *param1);
const VecFx32 *sub_020212C0(const UnkStruct_020216E0 *param0);
void sub_020212D0(UnkStruct_020216E0 *param0, const VecFx32 *param1);
const VecFx32 *sub_020212EC(const UnkStruct_020216E0 *param0);
void sub_020212FC(UnkStruct_020216E0 *param0, const MtxFx33 *param1);
const MtxFx33 *sub_02021310(const UnkStruct_020216E0 *param0);
void sub_02021320(UnkStruct_020216E0 *param0, u8 param1);
u8 sub_02021334(const UnkStruct_020216E0 *param0);
void sub_02021344(UnkStruct_020216E0 *param0, int param1);
int sub_02021358(const UnkStruct_020216E0 *param0);
int sub_02021368(UnkStruct_020216E0 *param0, fx32 param1);
void sub_02021380(UnkStruct_020216E0 *param0, fx32 param1);
fx32 sub_02021394(const UnkStruct_020216E0 *param0);
void sub_020213A4(UnkStruct_020216E0 *param0, fx32 param1);
fx32 sub_020213D4(const UnkStruct_020216E0 *param0);
NNSG3dResMdl *sub_020213F4(const UnkStruct_020216E0 *param0);
int sub_02021404(const UnkStruct_020216E0 *param0);
void sub_02021414(UnkStruct_020216E0 *param0);
NNSG3dResMdl *sub_02021430(UnkStruct_020216E0 *param0);
NNSG3dResTex *sub_02021438(UnkStruct_020216E0 *param0);
NNSG3dRenderObj *sub_02021440(UnkStruct_020216E0 *param0);
void sub_02021444(UnkStruct_020216E0 *param0, UnkFuncPtr_02021444 param1, void *param2);

#endif // POKEPLATINUM_UNK_02020AEC_H
