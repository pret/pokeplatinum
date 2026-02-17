#ifndef POKEPLATINUM_UNK_02020AEC_H
#define POKEPLATINUM_UNK_02020AEC_H

#include <nitro/fx/fx.h>
#include <nnsys.h>

#include "constants/heap.h"

#include "struct_decls/struct_0201DD00_decl.h"
#include "struct_decls/struct_0201DDF4_decl.h"
#include "struct_defs/struct_020217F4.h"
#include "struct_defs/struct_02024184.h"

typedef struct UnkStruct_020216E0 UnkStruct_020216E0;
typedef void (*BillboardCallback)(UnkStruct_020216E0 *, void *);

typedef struct UnkStruct_020216E0 {
    VecFx32 pos;
    VecFx32 scale;
    const MtxFx33 *rotMatrix;
    void *callbackParam;
    BillboardCallback callback;
    u8 draw;
    void *list;
    const UnkStruct_020217F4 *unk_2C;
    NNSG3dRenderObj renderObj;
    NNSG3dResMdlSet *modelSet;
    NNSG3dResMdl *model;
    NNSG3dResTex *texture;
    const NNSG3dResTex *unk_90;
    NNSGfdTexKey texKey;
    NNSGfdTexKey tex4x4Key;
    NNSGfdPlttKey plttKey;
    UnkStruct_02024184 unk_A0;
    UnkStruct_0201DDF4 *unk_B0;
    u8 unk_B4;
    u16 unk_B6;
    fx32 unk_B8;
    UnkStruct_020216E0 *next;
    UnkStruct_020216E0 *prev;
} UnkStruct_020216E0;

typedef struct UnkStruct_02020C44 {
    u8 active;
    u8 draw;
    u8 unused;
    u8 unk_03;
    UnkStruct_020216E0 *billboards;
    int capacity;
    UnkStruct_020216E0 sentinelData;
    UnkStruct_020216E0 **freeBillboards;
    int freeBillboardHead;
    NNSFndAllocator *allocator;
    UnkStruct_0201DD00 *unk_D8;
} UnkStruct_02020C44;

typedef struct UnkStruct_ov5_021DF84C {
    void *unk_00;
    const NNSG3dResTex *unk_04;
    const UnkStruct_020217F4 *unk_08;
    UnkStruct_02024184 unk_0C;
    NNSGfdTexKey unk_1C;
    NNSGfdTexKey unk_20;
    NNSGfdPlttKey unk_24;
} UnkStruct_ov5_021DF84C;

typedef struct UnkStruct_ov5_021DF7F8 {
    UnkStruct_02020C44 *unk_00;
    const UnkStruct_ov5_021DF84C *unk_04;
    VecFx32 unk_08;
    VecFx32 unk_14;
} UnkStruct_ov5_021DF7F8;

typedef struct UnkStruct_ov5_021EDDAC {
    int unk_00;
    enum HeapID heapID;
} UnkStruct_ov5_021EDDAC;

typedef struct UnkStruct_ov5_021ED110 {
    u32 unk_00;
    UnkStruct_ov5_021DF84C *unk_04;
} UnkStruct_ov5_021ED110;

void Billboard_Reset(UnkStruct_020216E0 *param0);
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
void sub_02021444(UnkStruct_020216E0 *param0, BillboardCallback param1, void *param2);

#endif // POKEPLATINUM_UNK_02020AEC_H
