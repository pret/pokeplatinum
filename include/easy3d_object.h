#ifndef POKEPLATINUM_EASY3D_OBJECT_H
#define POKEPLATINUM_EASY3D_OBJECT_H

#include "struct_decls/struct_02006C24_decl.h"

#include <nnsys.h>
#include <nitro/fx/fx.h>

typedef struct {
    void * unk_00;
    NNSG3dResMdlSet * unk_04;
    NNSG3dResMdl * unk_08;
    NNSG3dResTex * unk_0C;
} UnkStruct_020170F4;

typedef struct {
    void * unk_00;
    void * unk_04;
    NNSG3dAnmObj * unk_08;
    fx32 unk_0C;
    BOOL unk_10;
} UnkStruct_02017248;

typedef struct {
    NNSG3dRenderObj unk_00;
    VecFx32 unk_54;
    VecFx32 unk_60;
    BOOL unk_6C;
    u16 unk_70[3];
    u8 padding_76[2];
} UnkStruct_02017294;

void sub_020170BC(UnkStruct_020170F4 * param0, u32 param1, u32 param2, u32 param3);
void sub_020170D8(UnkStruct_020170F4 * param0, NARC * param1, u32 param2, u32 param3);
void sub_02017110(UnkStruct_020170F4 * param0);
void sub_02017164(UnkStruct_02017248 * param0, const UnkStruct_020170F4 * param1, NARC * param2, u32 param3, u32 param4, NNSFndAllocator * param5);
void sub_02017190(UnkStruct_02017248 * param0, const UnkStruct_020170F4 * param1, void * param2, NNSFndAllocator * param3);
void sub_020171A0(UnkStruct_02017248 * param0, NNSFndAllocator * param1);
void sub_020171CC(UnkStruct_02017248 * param0, fx32 param1);
BOOL sub_02017204(UnkStruct_02017248 * param0, fx32 param1);
void sub_02017240(UnkStruct_02017248 * param0, fx32 param1);
fx32 sub_02017248(const UnkStruct_02017248 * param0);
fx32 sub_0201724C(const UnkStruct_02017248 * param0);
void sub_02017258(UnkStruct_02017294 * param0, UnkStruct_020170F4 * param1);
void sub_0201727C(UnkStruct_02017294 * param0, UnkStruct_02017248 * param1);
void sub_02017288(UnkStruct_02017294 * param0, UnkStruct_02017248 * param1);
void sub_02017294(UnkStruct_02017294 * param0);
void sub_02017330(UnkStruct_02017294 * param0, const MtxFx33 * param1);
void sub_02017348(UnkStruct_02017294 * param0, BOOL param1);
BOOL sub_0201734C(const UnkStruct_02017294 * param0);
void sub_02017350(UnkStruct_02017294 * param0, fx32 param1, fx32 param2, fx32 param3);
void sub_02017358(const UnkStruct_02017294 * param0, fx32 * param1, fx32 * param2, fx32 * param3);
void sub_0201736C(UnkStruct_02017294 * param0, fx32 param1, fx32 param2, fx32 param3);
void sub_02017374(const UnkStruct_02017294 * param0, fx32 * param1, fx32 * param2, fx32 * param3);
void sub_02017388(UnkStruct_02017294 * param0, u16 param1, u32 param2);
u16 sub_02017394(const UnkStruct_02017294 * param0, u32 param1);

#endif // POKEPLATINUM_EASY3D_OBJECT_H
