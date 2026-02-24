#ifndef POKEPLATINUM_BILLBOARD_H
#define POKEPLATINUM_BILLBOARD_H

#include <nitro/fx/fx.h>
#include <nnsys.h>

#include "constants/heap.h"

#include "struct_decls/struct_0201DD00_decl.h"
#include "struct_decls/struct_0201DDF4_decl.h"
#include "struct_defs/struct_020217F4.h"

#include "billboard_gfx_sequence.h"

typedef struct Billboard Billboard;
typedef void (*BillboardCallback)(Billboard *, void *);

typedef struct Billboard {
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
    BillboardGfxSequence gfxSequence;
    UnkStruct_0201DDF4 *unk_B0;
    u8 unk_B4;
    u16 unk_B6;
    fx32 unk_B8;
    Billboard *next;
    Billboard *prev;
} Billboard;

typedef struct BillboardList {
    u8 active;
    u8 draw;
    u8 unused;
    u8 redraw;
    Billboard *billboards;
    int capacity;
    Billboard sentinelData;
    Billboard **freeBillboards;
    int freeBillboardHead;
    NNSFndAllocator *allocator;
    UnkStruct_0201DD00 *unk_D8;
} BillboardList;

typedef struct BillboardResources {
    void *modelRes;
    const NNSG3dResTex *texture;
    const UnkStruct_020217F4 *unk_08;
    BillboardGfxSequence gfxSequence;
    NNSGfdTexKey texKey;
    NNSGfdTexKey tex4x4Key;
    NNSGfdPlttKey plttKey;
} BillboardResources;

typedef struct BillboardListTemplate {
    BillboardList *list;
    const BillboardResources *resources;
    VecFx32 pos;
    VecFx32 scale;
} BillboardListTemplate;

typedef struct BillboardListParams {
    int maxElements;
    enum HeapID heapID;
} BillboardListParams;

typedef struct UnkStruct_ov5_021ED110 {
    u32 unk_00;
    BillboardResources *unk_04;
} UnkStruct_ov5_021ED110;

void Billboard_Reset(Billboard *billboard);
void BillboardLists_New(int count, enum HeapID heapID);
void BillboardLists_Delete(void);
void BillboardLists_Draw(void);
BillboardList *BillboardList_New(const BillboardListParams *params);
BOOL BillboardList_Delete(BillboardList *list);
BOOL BillboardList_DeleteAll(BillboardList *list);
BOOL sub_02020D50(BillboardList *param0);
void sub_02020D68(BillboardList *param0);
Billboard *sub_0202119C(const BillboardListTemplate *param0);
BOOL sub_020211FC(Billboard *param0);
void sub_0202125C(BillboardResources *param0, void *param1, const NNSG3dResTex *param2, const UnkStruct_020217F4 *param3, const BillboardGfxSequence *param4, NNSGfdTexKey param5, NNSGfdTexKey param6, NNSGfdPlttKey param7);
void sub_02021284(BillboardResources *param0, void *param1, const NNSG3dResTex *param2, const UnkStruct_020217F4 *param3, const BillboardGfxSequence *param4);
void sub_020212A8(Billboard *param0, const VecFx32 *param1);
const VecFx32 *sub_020212C0(const Billboard *param0);
void sub_020212D0(Billboard *param0, const VecFx32 *param1);
const VecFx32 *sub_020212EC(const Billboard *param0);
void sub_020212FC(Billboard *param0, const MtxFx33 *param1);
const MtxFx33 *sub_02021310(const Billboard *param0);
void sub_02021320(Billboard *param0, u8 param1);
u8 sub_02021334(const Billboard *param0);
void sub_02021344(Billboard *param0, int param1);
int sub_02021358(const Billboard *param0);
int sub_02021368(Billboard *param0, fx32 param1);
void sub_02021380(Billboard *param0, fx32 param1);
fx32 sub_02021394(const Billboard *param0);
void sub_020213A4(Billboard *param0, fx32 param1);
fx32 sub_020213D4(const Billboard *param0);
NNSG3dResMdl *sub_020213F4(const Billboard *param0);
int sub_02021404(const Billboard *param0);
void sub_02021414(Billboard *param0);
NNSG3dResMdl *sub_02021430(Billboard *param0);
NNSG3dResTex *sub_02021438(Billboard *param0);
NNSG3dRenderObj *sub_02021440(Billboard *param0);
void sub_02021444(Billboard *param0, BillboardCallback param1, void *param2);

#endif // POKEPLATINUM_BILLBOARD_H
