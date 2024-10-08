#include "overlay006/ov6_02243258.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_decls/struct_020711EC_decl.h"
#include "struct_defs/archived_sprite.h"
#include "struct_defs/struct_0200C738.h"

#include "field/field_system.h"
#include "overlay005/ov5_021F0EB0.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"
#include "overlay101/struct_ov101_021D86B0.h"

#include "cell_actor.h"
#include "gx_layers.h"
#include "heap.h"
#include "map_object.h"
#include "narc.h"
#include "player_avatar.h"
#include "pokemon.h"
#include "sprite_resource.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_02005474.h"
#include "unk_020093B4.h"
#include "unk_0200A328.h"
#include "unk_0200F174.h"
#include "unk_020131EC.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "unk_0205D8CC.h"
#include "unk_020711EC.h"

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    u32 unk_20;
    u16 unk_24;
    u16 unk_26;
    int unk_28;
    int unk_2C;
    u32 unk_30;
    u32 unk_34;
    u32 unk_38;
    u32 unk_3C;
    u32 unk_40;
    fx32 unk_44;
    fx32 unk_48;
    fx32 unk_4C;
    fx32 unk_50;
    fx32 unk_54;
    fx32 unk_58;
    Pokemon *unk_5C;
    FieldSystem *fieldSystem;
    NNSG2dScreenData *unk_64;
    NNSG2dCharacterData *unk_68;
    NNSG2dPaletteData *unk_6C;
    CellActorCollection *unk_70;
    UnkStruct_0200C738 unk_74;
    SpriteResourceCollection *unk_200;
    SpriteResourceCollection *unk_204;
    SpriteResourceCollection *unk_208;
    SpriteResourceCollection *unk_20C;
    SpriteResource *unk_210[4];
    SpriteResource *unk_220[3];
    SpriteResource *unk_22C[4];
    SpriteResource *unk_23C[2];
    UnkStruct_020711EC *unk_244;
    CellActor *unk_248;
    CellActor *unk_24C;
    UnkStruct_ov101_021D5D90 *unk_250;
    UnkStruct_ov101_021D5D90 *unk_254;
    ArchivedSprite unk_258;
    int unk_268;
    int unk_26C;
    void *unk_270;
    void *unk_274;
    SysTask *unk_278;
    SysTask *unk_27C;
} UnkStruct_ov6_02243FFC;

typedef struct {
    u32 unk_00;
    u32 unk_04;
} UnkStruct_ov6_02249108;

typedef struct {
    UnkStruct_ov6_02243FFC *unk_00;
} UnkStruct_ov6_0224543C;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    int unk_04;
    VecFx32 unk_08;
    VecFx32 unk_14;
    VecFx32 unk_20;
    VecFx32 unk_2C;
    fx32 unk_38;
    fx32 unk_3C;
    fx32 unk_40;
    fx32 unk_44;
    fx32 unk_48;
    fx32 unk_4C;
    fx32 unk_50;
    fx32 unk_54;
    CellActor *unk_58;
    UnkStruct_ov6_0224543C unk_5C;
    UnkStruct_ov101_021D5D90 *unk_60;
    SysTask *unk_64;
} UnkStruct_ov6_02249198;

typedef struct {
    UnkStruct_ov6_02243FFC *unk_00;
    CellActor *unk_04;
} UnkStruct_ov6_02245B4C;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    VecFx32 unk_10;
    UnkStruct_ov6_02243FFC *unk_1C;
    CellActor *unk_20;
} UnkStruct_ov6_02245B74;

typedef struct {
    s16 unk_00;
    s16 unk_02;
    SpriteResource *unk_04;
} UnkStruct_ov6_02243258_sub1;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    s8 unk_04;
    s8 unk_05;
    s8 unk_06;
    s8 unk_07;
    CellActorCollection *unk_08;
    UnkStruct_0200C738 unk_0C;
    SpriteResourceCollection *unk_198;
    SpriteResourceCollection *unk_19C;
    SpriteResourceCollection *unk_1A0;
    SpriteResourceCollection *unk_1A4;
    UnkStruct_ov6_02243258_sub1 *unk_1A8;
    UnkStruct_ov6_02243258_sub1 *unk_1AC;
    UnkStruct_ov6_02243258_sub1 *unk_1B0;
    UnkStruct_ov6_02243258_sub1 *unk_1B4;
} UnkStruct_ov6_02243258;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    FieldSystem *fieldSystem;
    UnkStruct_ov6_02243258 unk_18;
    CellActor *unk_1D0;
    UnkStruct_020711EC *unk_1D4;
    UnkStruct_ov101_021D5D90 *unk_1D8;
    SysTask *unk_1DC;
} UnkStruct_ov6_02249270;

typedef struct {
    UnkStruct_020711EC *unk_00;
    FieldSystem *fieldSystem;
    CellActor *unk_08;
    UnkStruct_ov6_02243258 *unk_0C;
} UnkStruct_ov6_02243888;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    int unk_04;
    VecFx32 unk_08;
    VecFx32 unk_14;
    VecFx32 unk_20;
    VecFx32 unk_2C;
    fx32 unk_38;
    fx32 unk_3C;
    fx32 unk_40;
    fx32 unk_44;
    fx32 unk_48;
    fx32 unk_4C;
    fx32 unk_50;
    fx32 unk_54;
    UnkStruct_ov6_02243888 unk_58;
    CellActor *unk_68;
    UnkStruct_ov101_021D5D90 *unk_6C;
    SysTask *unk_70;
} UnkStruct_ov6_02249110;

typedef struct {
    int unk_00;
    int unk_04;
    UnkStruct_ov6_02243FFC *unk_08;
    VecFx32 unk_0C;
} UnkStruct_ov6_02245328;

typedef struct {
    int unk_00;
    int unk_04;
    CellActor *unk_08;
    UnkStruct_ov6_02245328 unk_0C;
} UnkStruct_ov6_02245364;

typedef struct {
    fx32 unk_00;
    fx32 unk_04;
    fx32 unk_08;
    int unk_0C;
    int unk_10;
} UnkStruct_ov6_0224936C;

typedef struct {
    int camera;
    int unk_04;
    int unk_08;
    VecFx32 unk_0C;
    VecFx32 unk_18;
    fx32 unk_24;
    fx32 unk_28;
    MapObject *unk_2C;
    UnkStruct_ov6_02243FFC *unk_30;
} UnkStruct_ov100_021D4890;

typedef struct {
    CellActor *unk_00;
    UnkStruct_ov6_02243FFC *unk_04;
} UnkStruct_ov6_02245F80;

static UnkStruct_ov6_02243FFC *ov6_02243FDC(FieldSystem *fieldSystem);
static void ov6_02243FFC(UnkStruct_ov6_02243FFC *param0);
static void ov6_02244004(SysTask *param0, void *param1);
static void ov6_022443B8(SysTask *param0, void *param1);
static void ov6_0224464C(UnkStruct_ov6_02243FFC *param0);
static void ov6_02244674(UnkStruct_ov6_02243FFC *param0);
static void ov6_0224469C(UnkStruct_ov6_02243FFC *param0);
static void ov6_022446B8(SysTask *param0, void *param1);
static void ov6_02244734(SysTask *param0, void *param1);
static void ov6_022447B4(SysTask *param0, void *param1);
static void ov6_022447EC(SysTask *param0, void *param1);
static void ov6_0224481C(UnkStruct_ov6_02243FFC *param0);
static void ov6_022448C8(UnkStruct_ov6_02243FFC *param0);
static NARC *ov6_0224491C(void);
static void ov6_02244928(UnkStruct_ov6_02243FFC *param0, NARC *param1);
static void ov6_02244B6C(UnkStruct_ov6_02243FFC *param0);
static void ov6_02244C10(UnkStruct_ov6_02243FFC *param0);
static CellActor *ov6_02244C20(UnkStruct_ov6_02243FFC *param0, const VecFx32 *param1, u32 param2, u32 param3, u32 param4, u32 param5, int param6, int param7);
static CellActor *ov6_02244CD4(UnkStruct_ov6_02243FFC *param0, const VecFx32 *param1, int param2, int param3);
static CellActor *ov6_02244CFC(UnkStruct_ov6_02243FFC *param0, const VecFx32 *param1);
static void ov6_02244D34(CellActor *param0);
static CellActor *ov6_02244D4C(UnkStruct_ov6_02243FFC *param0, const VecFx32 *param1, int param2, int param3);
static void ov6_02244DB4(UnkStruct_ov6_02243FFC *param0);
static void ov6_02244E54(NARC *param0, u32 param1, NNSG2dPaletteData **param2);
static void ov6_02244E7C(BGL *param0, NARC *param1, u32 param2, NNSG2dCharacterData **param3);
static void ov6_02244EB4(BGL *param0, NARC *param1, u32 param2, NNSG2dScreenData **param3);
static void ov6_02244F20(BGL *param0);
static void ov6_02244F2C(UnkStruct_ov6_02243FFC *param0);
static void ov6_02244F50(UnkStruct_ov6_02243FFC *param0);
static void ov6_02244F58(UnkStruct_ov6_02243FFC *param0);
static void ov6_02244F60(UnkStruct_ov6_02243FFC *param0);
static void ov6_02244F74(UnkStruct_ov6_02243FFC *param0);
static void ov6_02244F80(UnkStruct_ov6_02243FFC *param0, fx32 param1, fx32 param2, fx32 param3, fx32 param4);
static void ov6_02244F8C(UnkStruct_ov6_02243FFC *param0);
static void ov6_02244FB4(UnkStruct_ov6_02243FFC *param0);
static void ov6_02244FE4(SysTask *param0, void *param1);
static void ov6_0224508C(UnkStruct_ov6_02243FFC *param0, ArchivedSprite *param1);
static void *ov6_0224509C(Pokemon *param0, ArchivedSprite *param1, u32 param2);
static void *ov6_022450E4(ArchivedSprite *param0, u32 param1);
static SpriteResource *ov6_022450F4(UnkStruct_ov6_02243FFC *param0, NARC *param1);
static void ov6_02245118(UnkStruct_ov6_02243FFC *param0, void *param1);
static SpriteResource *ov6_0224514C(UnkStruct_ov6_02243FFC *param0, NARC *param1);
static void ov6_02245170(UnkStruct_ov6_02243FFC *param0, void *param1);
static void ov6_022451B8(UnkStruct_ov6_02243FFC *param0);
static CellActor *ov6_0224529C(UnkStruct_ov6_02243FFC *param0, const VecFx32 *param1);
static void ov6_022452BC(UnkStruct_ov6_02243FFC *param0, int param1);
static void ov6_02245328(UnkStruct_ov6_02243FFC *param0, const VecFx32 *param1, const VecFx32 *param2, int param3, int param4, int param5);
static void ov6_0224543C(UnkStruct_ov6_02243FFC *param0);
static void ov6_0224543C(UnkStruct_ov6_02243FFC *param0);
static int ov6_02245470(UnkStruct_ov6_02243FFC *param0);
static void ov6_02245480(UnkStruct_ov6_02243FFC *param0);
static void ov6_0224551C(UnkStruct_ov6_02243FFC *param0);
static void ov6_022456D4(UnkStruct_ov6_02243FFC *param0);
static UnkStruct_ov101_021D5D90 *ov6_02245B4C(UnkStruct_020711EC *param0, CellActor *param1);
static void ov6_02245B74(UnkStruct_ov101_021D5D90 *param0);
static void ov6_02245B80(UnkStruct_ov101_021D5D90 *param0);
static void ov6_02245BC8(UnkStruct_ov101_021D5D90 *param0);
static void ov6_02245F64(UnkStruct_ov6_02243FFC *param0, int param1);
static void ov6_02245FDC(UnkStruct_ov6_02243FFC *param0);
static void ov6_02246018(UnkStruct_ov6_02243FFC *param0);
static void ov6_02243F2C(void);
static void ov6_02243F50(void);
static void *ov6_02245F44(u32 param0, int param1);
static void ov6_02243F74(FieldSystem *fieldSystem, int param1);
static void ov6_02245D10(SysTask *param0, void *param1);

int (*const Unk_ov6_022492D8[])(UnkStruct_ov6_02243FFC *);
int (*const Unk_ov6_02249310[])(UnkStruct_ov6_02243FFC *);
static const UnkStruct_ov101_021D86B0 Unk_ov6_02249248;
int (*const *const Unk_ov6_02249198[])(UnkStruct_ov6_02249198 *);
int (*const Unk_ov6_022490E8[])(UnkStruct_ov6_02249198 *);
int (*const Unk_ov6_022490F0[])(UnkStruct_ov6_02249198 *);
int (*const Unk_ov6_022491EC[])(UnkStruct_ov6_02249198 *);
static const UnkStruct_ov101_021D86B0 Unk_ov6_0224920C;
static const UnkStruct_ov6_02249108 Unk_ov6_02249108[1];
static const UnkStruct_ov6_02249108 Unk_ov6_022490F8[1];
static const UnkStruct_ov6_02249108 Unk_ov6_02249118[1];
static const UnkStruct_ov6_02249108 Unk_ov6_02249100[1];

static void ov6_02243258(UnkStruct_ov6_02243258 *param0, int param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8, int param9)
{
    int v0;

    param0->unk_00 = param2;
    param0->unk_01 = param3;
    param0->unk_02 = param4;
    param0->unk_03 = param5;
    param0->unk_04 = param6;
    param0->unk_05 = param7;
    param0->unk_06 = param8;
    param0->unk_07 = param9;
    param0->unk_08 = sub_020095C4(param1, &param0->unk_0C, 4);

    sub_0200964C(&param0->unk_0C, 0, FX32_CONST(512));

    param0->unk_198 = SpriteResourceCollection_New(param2, 0, 4);
    param0->unk_19C = SpriteResourceCollection_New(param3, 1, 4);
    param0->unk_1A0 = SpriteResourceCollection_New(param4, 2, 4);
    param0->unk_1A4 = SpriteResourceCollection_New(param5, 3, 4);
    param0->unk_1A8 = ov6_02245F44(4, (sizeof(UnkStruct_ov6_02243258_sub1)) * param2);
    param0->unk_1AC = ov6_02245F44(4, (sizeof(UnkStruct_ov6_02243258_sub1)) * param3);
    param0->unk_1B0 = ov6_02245F44(4, (sizeof(UnkStruct_ov6_02243258_sub1)) * param4);
    param0->unk_1B4 = ov6_02245F44(4, (sizeof(UnkStruct_ov6_02243258_sub1)) * param5);

    for (v0 = 0; v0 < param2; param0->unk_1A8[v0].unk_00 = param6, v0++) {
        (void)0;
    }

    for (v0 = 0; v0 < param3; param0->unk_1AC[v0].unk_00 = param7, v0++) {
        (void)0;
    }

    for (v0 = 0; v0 < param4; param0->unk_1B0[v0].unk_00 = param8, v0++) {
        (void)0;
    }

    for (v0 = 0; v0 < param5; param0->unk_1B4[v0].unk_00 = param9, v0++) {
        (void)0;
    }
}

static void ov6_0224339C(UnkStruct_ov6_02243258 *param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_00; v0++) {
        if (param0->unk_1A8[v0].unk_00 != param0->unk_04) {
            sub_0200A4E4(param0->unk_1A8[v0].unk_04);
        }
    }

    for (v0 = 0; v0 < param0->unk_01; v0++) {
        if (param0->unk_1AC[v0].unk_00 != param0->unk_05) {
            sub_0200A6DC(param0->unk_1AC[v0].unk_04);
        }
    }

    for (v0 = 0; v0 < param0->unk_02; v0++) {
        if (param0->unk_1B0[v0].unk_00 != param0->unk_06) {
            SpriteResource_ReleaseData(param0->unk_1B0[v0].unk_04);
        }
    }

    for (v0 = 0; v0 < param0->unk_03; v0++) {
        if (param0->unk_1B4[v0].unk_00 != param0->unk_07) {
            SpriteResource_ReleaseData(param0->unk_1B4[v0].unk_04);
        }
    }

    SpriteResourceCollection_Delete(param0->unk_198);
    SpriteResourceCollection_Delete(param0->unk_19C);
    SpriteResourceCollection_Delete(param0->unk_1A0);
    SpriteResourceCollection_Delete(param0->unk_1A4);
    Heap_FreeToHeap(param0->unk_1A8);
    Heap_FreeToHeap(param0->unk_1AC);
    Heap_FreeToHeap(param0->unk_1B0);
    Heap_FreeToHeap(param0->unk_1B4);
    CellActorCollection_DeleteAll(param0->unk_08);
    CellActorCollection_Delete(param0->unk_08);
}

static void ov6_022434B0(UnkStruct_ov6_02243258 *param0, NARC *param1, int param2, int param3)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_00; v0++) {
        if (param0->unk_1A8[v0].unk_00 == param0->unk_04) {
            param0->unk_1A8[v0].unk_00 = param3;
            param0->unk_1A8[v0].unk_02 = 0;
            param0->unk_1A8[v0].unk_04 = SpriteResourceCollection_AddTilesFrom(param0->unk_198, param1, param2, 0, param3, NNS_G2D_VRAM_TYPE_2DMAIN, 4);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static void ov6_02243520(UnkStruct_ov6_02243258 *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_00; v0++) {
        if (param0->unk_1A8[v0].unk_00 == param1) {
            sub_0200A3DC(param0->unk_1A8[v0].unk_04);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static void ov6_02243554(UnkStruct_ov6_02243258 *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_00; v0++) {
        if (param0->unk_1A8[v0].unk_00 == param1) {
            SpriteResource_ReleaseData(param0->unk_1A8[v0].unk_04);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static void ov6_02243588(UnkStruct_ov6_02243258 *param0, NARC *param1, int param2, int param3)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_00; v0++) {
        if (param0->unk_1AC[v0].unk_00 == param0->unk_05) {
            param0->unk_1AC[v0].unk_00 = param3;
            param0->unk_1AC[v0].unk_02 = 0;
            param0->unk_1AC[v0].unk_04 = SpriteResourceCollection_AddPaletteFrom(
                param0->unk_19C, param1, param2, 0, param3, NNS_G2D_VRAM_TYPE_2DMAIN, 1, 4);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static void ov6_022435F8(UnkStruct_ov6_02243258 *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_01; v0++) {
        if (param0->unk_1AC[v0].unk_00 == param1) {
            sub_0200A640(param0->unk_1AC[v0].unk_04);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static void ov6_0224362C(UnkStruct_ov6_02243258 *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_01; v0++) {
        if (param0->unk_1AC[v0].unk_00 == param1) {
            SpriteResource_ReleaseData(param0->unk_1AC[v0].unk_04);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static void ov6_02243660(UnkStruct_ov6_02243258 *param0, NARC *param1, int param2, int param3)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_00; v0++) {
        if (param0->unk_1B0[v0].unk_00 == param0->unk_06) {
            param0->unk_1B0[v0].unk_00 = param3;
            param0->unk_1B0[v0].unk_02 = 0;
            param0->unk_1B0[v0].unk_04 = SpriteResourceCollection_AddFrom(
                param0->unk_1A0, param1, param2, 0, param3, 2, 4);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static void ov6_022436D0(UnkStruct_ov6_02243258 *param0, NARC *param1, int param2, int param3)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_00; v0++) {
        if (param0->unk_1B4[v0].unk_00 == param0->unk_07) {
            param0->unk_1B4[v0].unk_00 = param3;
            param0->unk_1B4[v0].unk_02 = 0;
            param0->unk_1B4[v0].unk_04 = SpriteResourceCollection_AddFrom(
                param0->unk_1A4, param1, param2, 0, param3, 3, 4);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static CellActor *ov6_02243740(UnkStruct_ov6_02243258 *param0, const VecFx32 *param1, u32 param2, u32 param3, u32 param4, u32 param5, int param6, int param7)
{
    CellActorResourceData v0;
    CellActorInitParams v1;
    CellActor *v2;

    if (param5 == param0->unk_07) {
        param5 = 0xffffffff;
    }

    sub_020093B4(
        &v0, param2, param3, param4, param5, 0xffffffff, 0xffffffff, 0, param6, param0->unk_198, param0->unk_19C, param0->unk_1A0, param0->unk_1A4, NULL, NULL);

    v1.collection = param0->unk_08;
    v1.resourceData = &v0;
    v1.position = *param1;
    v1.priority = param7;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.heapID = 4;
    v2 = CellActorCollection_Add(&v1);

    GF_ASSERT(v2 != NULL);
    return v2;
}

static void ov6_022437C8(CellActor *param0, VecFx32 *param1)
{
    const VecFx32 *v0 = CellActor_GetPosition(param0);
    *param1 = *v0;
}

static CellActor *ov6_022437DC(UnkStruct_ov6_02243258 *param0)
{
    CellActor *v0;
    VecFx32 v1 = { 0, 0, 0 };
    VecFx32 v2 = { 0, 0, 0 };
    VecFx32 v3 = { 0x1000, 0x1000, 0 };

    v0 = ov6_02243740(param0, &v1, 0, 0, 0, 2, 0, 132);

    CellActor_SetAffineOverwriteMode(v0, 2);
    CellActor_SetAffineTranslation(v0, &v2);
    CellActor_SetAffineScale(v0, &v3);
    CellActor_SetAffineZRotation(v0, sub_0201D2A4(0));

    return v0;
}

static CellActor *ov6_02243848(UnkStruct_ov6_02243258 *param0, int param1)
{
    VecFx32 v0 = { 0, 0, 0 };
    CellActor *v1;
    u32 v2 = 0;

    if (param1 == 1) {
        v2 = 1;
    }

    v1 = ov6_02243740(param0, &v0, 2, v2, 2, 1, 0, 131);

    CellActor_SetDrawFlag(v1, 0);
    CellActor_SetAnim(v1, 6);

    return v1;
}

static const UnkStruct_ov101_021D86B0 Unk_ov6_0224925C;
int (*const *const Unk_ov6_02249110[])(UnkStruct_ov6_02249110 *);

static UnkStruct_ov101_021D5D90 *ov6_02243888(FieldSystem *fieldSystem, UnkStruct_020711EC *param1, UnkStruct_ov6_02243258 *param2, CellActor *param3)
{
    UnkStruct_ov101_021D5D90 *v0;
    VecFx32 v1 = { 0, 0, 0 };
    UnkStruct_ov6_02243888 v2;

    v2.fieldSystem = fieldSystem;
    v2.unk_00 = param1;
    v2.unk_0C = param2;
    v2.unk_08 = param3;

    v0 = sub_02071330(param1, &Unk_ov6_0224925C, &v1, 0, &v2, 130);

    return v0;
}

static int ov6_022438BC(UnkStruct_ov101_021D5D90 *param0)
{
    UnkStruct_ov6_02249110 *v0 = sub_02071598(param0);
    return v0->unk_02;
}

static int ov6_022438C8(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    UnkStruct_ov6_02249110 *v0 = param1;
    const UnkStruct_ov6_02243888 *v1 = sub_020715BC(param0);

    v0->unk_58 = *v1;
    v0->unk_68 = ov6_022437DC(v0->unk_58.unk_0C);

    return 1;
}

static void ov6_022438EC(UnkStruct_ov101_021D5D90 *param0)
{
    UnkStruct_ov6_02249110 *v0 = sub_02071598(param0);

    if (v0->unk_6C) {
        sub_0207136C(v0->unk_6C);
    }

    if (v0->unk_70) {
        ov5_021F0EFC(v0->unk_70);
    }

    sub_0207136C(param0);
}

static void ov6_02243914(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    UnkStruct_ov6_02249110 *v0 = param1;
    CellActor_Delete(v0->unk_68);
}

static void ov6_02243920(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    UnkStruct_ov6_02249110 *v0 = param1;
    int (*const *v1)(UnkStruct_ov6_02249110 *);

    v1 = Unk_ov6_02249110[v0->unk_00];

    while (v1[v0->unk_01](v0) == 1) {
        (void)0;
    }
}

static const UnkStruct_ov101_021D86B0 Unk_ov6_0224925C = {
    (sizeof(UnkStruct_ov6_02249110)),
    ov6_022438C8,
    ov6_02243914,
    ov6_02243920,
    sub_020715FC
};

static int ov6_02243940(UnkStruct_ov6_02249110 *param0)
{
    param0->unk_02 = 0;
    CellActor_SetDrawFlag(param0->unk_68, 0);
    return 0;
}

static int (*const Unk_ov6_022490EC[])(UnkStruct_ov6_02249110 *) = {
    ov6_02243940,
};

static void ov6_02243950(UnkStruct_ov101_021D5D90 *param0)
{
    VecFx32 v0 = { (FX32_ONE * 128), (FX32_ONE * 111), 0 };
    VecFx32 v1 = { 0x2000, 0x2000, 0 };
    UnkStruct_ov6_02249110 *v2 = sub_02071598(param0);

    v2->unk_00 = 1;
    v2->unk_02 = 0;
    v2->unk_01 = 0;
    v2->unk_04 = 0;
    v2->unk_08 = v0;
    v2->unk_14.x = 0;
    v2->unk_14.y = 0;
    v2->unk_14.z = 0;
    v2->unk_38 = (FX32_ONE * 350);
    v2->unk_2C = v1;
    v2->unk_50 = 0x400;
    v2->unk_40 = (FX32_ONE * 45);
    v2->unk_48 = (FX32_ONE * (128 + 64));
    v2->unk_4C = (FX32_ONE * 32);
    v2->unk_14.x = sub_0201D264(45) * ((v2->unk_48) / FX32_ONE);
    v2->unk_14.y = sub_0201D250((v2->unk_40) / FX32_ONE) * ((v2->unk_48) / FX32_ONE);

    v0.x = v2->unk_08.x + v2->unk_14.x;
    v0.y = v2->unk_08.y + v2->unk_14.y;

    CellActor_SetPosition(v2->unk_68, &v0);
    CellActor_SetAffineScale(v2->unk_68, &v1);
    CellActor_SetAffineZRotation(v2->unk_68, sub_0201D2A4((v2->unk_38) / FX32_ONE));
    CellActor_SetPriority(v2->unk_68, 132);
    CellActor_SetDrawFlag(v2->unk_68, 1);

    v2->unk_6C = ov6_02245B4C(v2->unk_58.unk_00, v2->unk_58.unk_08);
    v2->unk_70 = ov5_021F0EB0(v2->unk_58.fieldSystem, 4);

    ov5_021F0F10(v2->unk_70, 1, -(FX32_ONE * 120), 12);

    {
        CellActor *v3;
        VecFx32 v4 = { 0, 0, 0 };
        VecFx32 v5 = { 0x2000, 0x2000, 0 };

        v3 = v2->unk_58.unk_08;

        CellActor_SetAffineOverwriteMode(v3, 2);
        CellActor_SetAffineTranslation(v3, &v4);
        CellActor_SetAffineScale(v3, &v5);
        CellActor_SetAffineZRotation(v3, sub_0201D2A4(0));
        CellActor_SetAnim(v3, 2);
    }

    ov6_02243F2C();
}

static int ov6_02243AB8(UnkStruct_ov6_02249110 *param0)
{
    VecFx32 v0;
    CellActor *v1 = param0->unk_68;
    CellActor *v2 = param0->unk_58.unk_08;

    param0->unk_48 -= param0->unk_4C;

    if (param0->unk_48 < 0) {
        param0->unk_48 = 0;
    }

    if (param0->unk_4C > 0x800) {
        param0->unk_4C -= 0x1c00;
    }

    if (param0->unk_4C < 0x1000) {
        param0->unk_4C = 0x1000;
    }

    param0->unk_14.x = sub_0201D264(45) * ((param0->unk_48) / FX32_ONE);
    param0->unk_14.y = sub_0201D250((param0->unk_40) / FX32_ONE) * ((param0->unk_48) / FX32_ONE);

    if (((param0->unk_40) / FX32_ONE) < 90) {
        param0->unk_40 += 0x4000;
    }

    param0->unk_2C.x -= param0->unk_50;

    if (param0->unk_2C.x < 0x1000) {
        param0->unk_2C.x = 0x1000;
    }

    param0->unk_2C.y -= param0->unk_50;

    if (param0->unk_2C.y < 0x1000) {
        param0->unk_2C.y = 0x1000;
    }

    CellActor_SetAffineScale(v1, &param0->unk_2C);
    CellActor_SetAffineScale(v2, &param0->unk_2C);

    v0.x = param0->unk_08.x + param0->unk_14.x;
    v0.y = param0->unk_08.y + param0->unk_14.y;

    CellActor_SetPosition(v1, &v0);
    v0.y -= (FX32_ONE * 18);
    CellActor_SetPosition(v2, &v0);

    if (param0->unk_48 == 0) {
        param0->unk_04 = 0;
        param0->unk_01++;
    } else {
        param0->unk_04++;
    }

    return 0;
}

static int ov6_02243BB8(UnkStruct_ov6_02249110 *param0)
{
    ov6_02245BC8(param0->unk_6C);
    ov5_021F0F10(param0->unk_70, 2, 0, 12);

    param0->unk_50 = 0x400;
    param0->unk_40 = (FX32_ONE * 128);
    param0->unk_48 = 0;
    param0->unk_4C = 0x1800;
    param0->unk_01++;

    return 1;
}

static int ov6_02243BEC(UnkStruct_ov6_02249110 *param0)
{
    VecFx32 v0;
    CellActor *v1 = param0->unk_68;

    param0->unk_48 += param0->unk_4C;
    param0->unk_4C += 0x1000;

    if (param0->unk_4C > (FX32_ONE * 16)) {
        param0->unk_4C = (FX32_ONE * 16);
    }

    param0->unk_14.x = sub_0201D264((param0->unk_40) / FX32_ONE) * ((param0->unk_48) / FX32_ONE);
    param0->unk_14.y = sub_0201D250(128) * ((param0->unk_48) / FX32_ONE);

    if (param0->unk_40 < (FX32_ONE * 160)) {
        param0->unk_40 += 0x1000;
    }

    param0->unk_38 += 0x2000;
    CellActor_SetAffineZRotation(v1, sub_0201D2A4((param0->unk_38) / FX32_ONE));
    param0->unk_2C.x += param0->unk_50;

    if (param0->unk_2C.x > 0x1000) {
        param0->unk_2C.x = 0x1000;
    }

    param0->unk_2C.y += param0->unk_50;

    if (param0->unk_2C.y > 0x1000) {
        param0->unk_2C.y = 0x1000;
    }

    CellActor_SetAffineScale(v1, &param0->unk_2C);

    v0.x = param0->unk_08.x + param0->unk_14.x;
    v0.y = param0->unk_08.y - param0->unk_14.y;

    CellActor_SetPosition(v1, &v0);

    if (((v0.y) / FX32_ONE) <= -16) {
        param0->unk_01++;
    }

    return 0;
}

static int ov6_02243CD8(UnkStruct_ov6_02249110 *param0)
{
    CellActor_SetDrawFlag(param0->unk_68, 0);
    CellActor_SetAnim(param0->unk_58.unk_08, 1);

    param0->unk_04 = 0;
    param0->unk_01++;

    return 1;
}

static int ov6_02243CFC(UnkStruct_ov6_02249110 *param0)
{
    param0->unk_04++;

    if (param0->unk_04 < 20) {
        return 0;
    }

    {
        VecFx32 v0 = { (FX32_ONE * (128 + 8)), (FX32_ONE * (111 - 32)), 0 };
        VecFx32 v1 = { 0x1000, 0x1000, 0 };

        param0->unk_04 = 0;
        param0->unk_08 = v0;
        param0->unk_14.x = 0;
        param0->unk_14.y = 0;
        param0->unk_14.z = 0;
        param0->unk_38 = (FX32_ONE * 0);
        param0->unk_2C = v1;
        param0->unk_50 = 0x200;
        param0->unk_40 = (FX32_ONE * 315);
        param0->unk_48 = (FX32_ONE * 128);
        param0->unk_4C = 0x2000;

        CellActor_SetPosition(param0->unk_68, &v0);
        CellActor_SetAffineScale(param0->unk_68, &v1);
        CellActor_SetAffineZRotation(param0->unk_68, sub_0201D2A4((param0->unk_38) / FX32_ONE));
        CellActor_SetDrawFlag(param0->unk_68, 1);
        CellActor_SetAnim(param0->unk_58.unk_08, 6);
        CellActor_SetAnimateFlag(param0->unk_58.unk_08, 1);
    }

    param0->unk_01++;
    return 1;
}

static int ov6_02243DC0(UnkStruct_ov6_02249110 *param0)
{
    VecFx32 v0;
    CellActor *v1 = param0->unk_68;

    param0->unk_48 -= param0->unk_4C;

    if (param0->unk_4C < (FX32_ONE * 16)) {
        param0->unk_4C += 0x2000;
    }

    if (param0->unk_48 < 0) {
        param0->unk_48 = 0;
    }

    param0->unk_14.x = sub_0201D264(315) * ((param0->unk_48) / FX32_ONE);
    param0->unk_14.y = sub_0201D250((param0->unk_40) / FX32_ONE) * ((param0->unk_48) / FX32_ONE);

    if (((param0->unk_40) / FX32_ONE) < 180) {
        param0->unk_40 -= 0x4000;
    }

    param0->unk_2C.x -= param0->unk_50;

    if (param0->unk_2C.x < 0x400) {
        param0->unk_2C.x = 0x400;
    }

    param0->unk_2C.y -= param0->unk_50;

    if (param0->unk_2C.y < 0x400) {
        param0->unk_2C.y = 0x400;
    }

    CellActor_SetAffineScale(v1, &param0->unk_2C);
    param0->unk_38 += 0x6000;

    if (((param0->unk_38) / FX32_ONE) > 60) {
        param0->unk_38 = (FX32_ONE * 60);
    }

    CellActor_SetAffineZRotation(v1, sub_0201D2A4((param0->unk_38) / FX32_ONE));

    v0.x = param0->unk_08.x + param0->unk_14.x;
    v0.y = param0->unk_08.y + param0->unk_14.y;

    CellActor_SetPosition(v1, &v0);

    if (param0->unk_48 <= 0) {
        CellActor_SetDrawFlag(v1, 0);
        param0->unk_01++;
    }

    return 0;
}

static int ov6_02243ECC(UnkStruct_ov6_02249110 *param0)
{
    param0->unk_04++;

    if (param0->unk_04 == 8) {
        CellActor_SetAnim(param0->unk_58.unk_08, 1);
        ov6_02243F74(param0->unk_58.fieldSystem, 0);
    }

    if (param0->unk_04 == 10) {
        CellActor_SetDrawFlag(param0->unk_58.unk_08, 0);
    }

    if ((param0->unk_04 > 15) && (ov5_021F0EF0(param0->unk_70) == 1)) {
        param0->unk_04 = 0;
        param0->unk_01++;
        param0->unk_02 = 2;
    }

    return 0;
}

static int ov6_02243F1C(UnkStruct_ov6_02249110 *param0)
{
    return 0;
}

static int (*const Unk_ov6_02249288[])(UnkStruct_ov6_02249110 *) = {
    ov6_02243AB8,
    ov6_02243BB8,
    ov6_02243BEC,
    ov6_02243CD8,
    ov6_02243CFC,
    ov6_02243DC0,
    ov6_02243ECC,
    ov6_02243F1C
};

static int (*const *const Unk_ov6_02249110[])(UnkStruct_ov6_02249110 *) = {
    Unk_ov6_022490EC,
    Unk_ov6_02249288
};

static NARC *ov6_02243F20(void)
{
    return NARC_ctor(NARC_INDEX_DATA__FIELD_CUTIN, 4);
}

static void ov6_02243F2C(void)
{
    sub_0200F174(0, 1, 1, 0x7fff, 6, 1, 4);
}

static void ov6_02243F50(void)
{
    sub_0200F174(0, 0, 0, 0x7fff, 6, 1, 4);
}

static void ov6_02243F74(FieldSystem *fieldSystem, int param1)
{
    MapObject *v0 = Player_MapObject(fieldSystem->playerAvatar);
    MapObject_SetHidden(v0, param1);
}

SysTask *ov6_02243F88(FieldSystem *fieldSystem, u32 param1, Pokemon *param2, int param3)
{
    SysTask *v0;
    UnkStruct_ov6_02243FFC *v1 = ov6_02243FDC(fieldSystem);

    v1->unk_5C = param2;
    v1->unk_0C = param3;
    v1->unk_20 = param1;

    if (param1 == 0) {
        v0 = SysTask_Start(ov6_02244004, v1, 133);
    } else {
        v0 = SysTask_Start(ov6_022443B8, v1, 133);
    }

    return v0;
}

int ov6_02243FBC(SysTask *param0)
{
    UnkStruct_ov6_02243FFC *v0 = SysTask_GetParam(param0);
    return v0->unk_04;
}

void ov6_02243FC8(SysTask *param0)
{
    UnkStruct_ov6_02243FFC *v0 = SysTask_GetParam(param0);

    ov6_02243FFC(v0);
    SysTask_Done(param0);
}

static UnkStruct_ov6_02243FFC *ov6_02243FDC(FieldSystem *fieldSystem)
{
    UnkStruct_ov6_02243FFC *v0 = Heap_AllocFromHeapAtEnd(4, (sizeof(UnkStruct_ov6_02243FFC)));

    memset(v0, 0, (sizeof(UnkStruct_ov6_02243FFC)));
    v0->fieldSystem = fieldSystem;

    return v0;
}

static void ov6_02243FFC(UnkStruct_ov6_02243FFC *param0)
{
    Heap_FreeToHeap(param0);
}

static void ov6_02244004(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_ov6_02243FFC *v1 = param1;

    do {
        v0 = Unk_ov6_022492D8[v1->unk_00](v1);
    } while (v0 == 1);

    if (v1->unk_10 == 1) {
        if (v1->unk_244 != NULL) {
            sub_020713D0(v1->unk_244);
        }

        ov6_02244C10(v1);
    }
}

static int ov6_02244038(UnkStruct_ov6_02243FFC *param0)
{
    ov6_0224481C(param0);
    ov6_0224464C(param0);
    param0->unk_00++;
    return 0;
}

static int ov6_02244050(UnkStruct_ov6_02243FFC *param0)
{
    if (param0->unk_26C == 0) {
        return 0;
    }

    {
        VecFx32 v0 = { (FX32_ONE * 128), (FX32_ONE * 96), 0 };
        VecFx32 v1 = { (FX32_ONE * (256 + 40)), (FX32_ONE * 96), 0 };

        param0->unk_248 = ov6_02244CFC(param0, &v0);
        param0->unk_24C = ov6_0224529C(param0, &v1);

        ov6_022452BC(param0, 1);
    }

    ov6_0224469C(param0);

    param0->unk_10 = 1;
    param0->unk_00++;

    return 1;
}

static int ov6_022440C0(UnkStruct_ov6_02243FFC *param0)
{
    ov6_02245FDC(param0);

    param0->unk_2C = 0;
    param0->unk_54 = (FX32_ONE * -64);
    param0->unk_44 = (FX32_ONE * 254);
    param0->unk_48 = (FX32_ONE * 255);
    param0->unk_4C = (FX32_ONE * (96 - 1));
    param0->unk_50 = (FX32_ONE * (96 + 1));
    param0->unk_2C = 1;
    param0->unk_00++;

    return 0;
}

static int ov6_022440F8(UnkStruct_ov6_02243FFC *param0)
{
    param0->unk_2C = 0;
    param0->unk_44 += param0->unk_54;

    if (param0->unk_44 <= 0) {
        param0->unk_44 = 0;
        param0->unk_54 = 0x2000;
        param0->unk_00++;
    }

    ov6_02244F80(param0, param0->unk_44, param0->unk_4C, param0->unk_48, param0->unk_50);
    param0->unk_2C = 1;

    return 0;
}

static int ov6_02244138(UnkStruct_ov6_02243FFC *param0)
{
    param0->unk_2C = 0;
    param0->unk_4C -= param0->unk_54;
    param0->unk_50 += param0->unk_54;
    param0->unk_54 += 0x2000;

    if (param0->unk_54 > (FX32_ONE * 32)) {
        param0->unk_54 = (FX32_ONE * 32);
    }

    if (param0->unk_4C < (FX32_ONE * (96 - 40))) {
        param0->unk_4C = (FX32_ONE * (96 - 40));
    }

    if (param0->unk_50 > (FX32_ONE * (96 + 40))) {
        param0->unk_50 = (FX32_ONE * (96 + 40));
    }

    ov6_02244F80(param0, param0->unk_44, param0->unk_4C, param0->unk_48, param0->unk_50);
    param0->unk_2C = 1;

    if ((param0->unk_4C == (FX32_ONE * (96 - 40))) && (param0->unk_50 == (FX32_ONE * (96 + 40)))) {
        ov6_02244D34(param0->unk_248);
        param0->unk_00++;
    }

    return 0;
}

static int ov6_022441BC(UnkStruct_ov6_02243FFC *param0)
{
    param0->unk_08++;

    if (param0->unk_08 >= 15) {
        param0->unk_08 = 0;
        param0->unk_58 = (FX32_ONE * -64);
        param0->unk_00++;
    }

    return 0;
}

static int ov6_022441DC(UnkStruct_ov6_02243FFC *param0)
{
    const VecFx32 *v0;
    VecFx32 v1;

    v0 = CellActor_GetPosition(param0->unk_24C);
    v1 = *v0;
    v1.x += param0->unk_58;

    if (v1.x <= (FX32_ONE * (128 + 32))) {
        v1.x = (FX32_ONE * (128 + 64));
        param0->unk_00++;
    }

    CellActor_SetPosition(param0->unk_24C, &v1);
    return 0;
}

static int ov6_02244228(UnkStruct_ov6_02243FFC *param0)
{
    const VecFx32 *v0;
    VecFx32 v1;

    param0->unk_58 /= 2;

    if (param0->unk_58 > (FX32_ONE * -2)) {
        param0->unk_58 = (FX32_ONE * -2);
        param0->unk_00++;

        {
            Pokemon_IsEligibleForAction(param0->unk_5C);
        }
    }

    v0 = CellActor_GetPosition(param0->unk_24C);
    v1 = *v0;
    v1.x += param0->unk_58;

    CellActor_SetPosition(param0->unk_24C, &v1);
    return 0;
}

static int ov6_02244284(UnkStruct_ov6_02243FFC *param0)
{
    param0->unk_08++;

    if (param0->unk_08 >= 8) {
        param0->unk_08 = 0;
        param0->unk_58 = (FX32_ONE * -1);
        param0->unk_00++;
    }

    return 0;
}

static int ov6_022442A4(UnkStruct_ov6_02243FFC *param0)
{
    const VecFx32 *v0;
    VecFx32 v1;

    param0->unk_58 *= 2;

    if (param0->unk_58 < (FX32_ONE * -64)) {
        param0->unk_58 = (FX32_ONE * -64);
    }

    v0 = CellActor_GetPosition(param0->unk_24C);
    v1 = *v0;
    v1.x += param0->unk_58;

    CellActor_SetPosition(param0->unk_24C, &v1);

    if (v1.x <= (FX32_ONE * -40)) {
        param0->unk_54 = 0x1000;
        param0->unk_00++;
    }

    return 0;
}

static int ov6_02244308(UnkStruct_ov6_02243FFC *param0)
{
    param0->unk_2C = 0;
    param0->unk_4C += param0->unk_54;
    param0->unk_50 -= param0->unk_54;
    param0->unk_54 += 0x4000;

    if (param0->unk_54 > (FX32_ONE * 32)) {
        param0->unk_54 = (FX32_ONE * 32);
    }

    if (param0->unk_4C >= (FX32_ONE * (96 - 8))) {
        param0->unk_4C = (FX32_ONE * (96 - 8));
    }

    if (param0->unk_50 <= (FX32_ONE * (96 + 8))) {
        param0->unk_50 = (FX32_ONE * (96 + 8));
    }

    ov6_02244F80(param0, param0->unk_44, param0->unk_4C, param0->unk_48, param0->unk_50);
    param0->unk_2C = 1;

    if ((param0->unk_4C == (FX32_ONE * (96 - 8))) && (param0->unk_50 == (FX32_ONE * (96 + 8)))) {
        ov6_02246018(param0);
        param0->unk_00++;
    }

    return 0;
}

static int ov6_02244388(UnkStruct_ov6_02243FFC *param0)
{
    ov6_022448C8(param0);
    param0->unk_10 = 0;
    param0->unk_00++;
    return 0;
}

static int ov6_0224439C(UnkStruct_ov6_02243FFC *param0)
{
    ov6_02244FB4(param0);
    param0->unk_00++;
    return 0;
}

static int ov6_022443B0(UnkStruct_ov6_02243FFC *param0)
{
    param0->unk_04 = 1;
    return 0;
}

static int (*const Unk_ov6_022492D8[])(UnkStruct_ov6_02243FFC *) = {
    ov6_02244038,
    ov6_02244050,
    ov6_022440C0,
    ov6_022440F8,
    ov6_02244138,
    ov6_022441BC,
    ov6_022441DC,
    ov6_02244228,
    ov6_02244284,
    ov6_022442A4,
    ov6_02244308,
    ov6_02244388,
    ov6_0224439C,
    ov6_022443B0
};

static void ov6_022443B8(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_ov6_02243FFC *v1 = param1;

    do {
        v0 = Unk_ov6_02249310[v1->unk_00](v1);
    } while (v0 == 1);

    if (v1->unk_10 == 1) {
        if (v1->unk_244 != NULL) {
            sub_020713D0(v1->unk_244);
        }

        ov6_02244C10(v1);
    }
}

static int ov6_022443EC(UnkStruct_ov6_02243FFC *param0)
{
    if (param0->unk_26C == 0) {
        return 0;
    }

    {
        VecFx32 v0 = { (FX32_ONE * 128), (FX32_ONE * 96), 0 };
        VecFx32 v1 = { (FX32_ONE * (256 + 40)), (FX32_ONE * 96), 0 };

        param0->unk_248 = ov6_02244CFC(param0, &v0);
        param0->unk_24C = ov6_0224529C(param0, &v1);
        ov6_022452BC(param0, 1);
    }

    ov6_0224469C(param0);

    param0->unk_10 = 1;
    param0->unk_00++;

    return 1;
}

static int ov6_0224445C(UnkStruct_ov6_02243FFC *param0)
{
    ov6_022451B8(param0);
    param0->unk_00++;
    return 0;
}

static int ov6_02244470(UnkStruct_ov6_02243FFC *param0)
{
    ov6_02244DB4(param0);
    ov6_02244674(param0);
    param0->unk_00++;
    return 0;
}

static int ov6_02244488(UnkStruct_ov6_02243FFC *param0)
{
    if (param0->unk_26C == 0) {
        return 0;
    }

    ov6_0224469C(param0);

    param0->unk_00++;
    return 1;
}

static int ov6_022444A8(UnkStruct_ov6_02243FFC *param0)
{
    ov6_0224543C(param0);
    ov6_0224551C(param0);
    ov6_02244F74(param0);
    ov6_02245F64(param0, 1);
    param0->unk_00++;
    return 0;
}

static int ov6_022444D0(UnkStruct_ov6_02243FFC *param0)
{
    if (ov6_02245470(param0) != 2) {
        return 0;
    }

    CellActor_SetAnim(param0->unk_248, 1);
    param0->unk_00++;

    return 0;
}

static int ov6_022444F8(UnkStruct_ov6_02243FFC *param0)
{
    param0->unk_08++;

    if (param0->unk_08 >= 20) {
        param0->unk_08 = 0;
        param0->unk_00++;

        ov6_022456D4(param0);
    }

    return 1;
}

static int ov6_02244518(UnkStruct_ov6_02243FFC *param0)
{
    if (ov6_02245470(param0) != 3) {
        return 0;
    }

    Sound_PlayEffect(1609);

    param0->unk_54 = 0x800;
    param0->unk_14 = 2;
    param0->unk_00++;

    return 1;
}

static int ov6_02244548(UnkStruct_ov6_02243FFC *param0)
{
    param0->unk_2C = 0;
    param0->unk_4C += param0->unk_54;
    param0->unk_50 -= param0->unk_54;
    param0->unk_54 += 0x800;

    if (param0->unk_54 > (FX32_ONE * 16)) {
        param0->unk_54 = (FX32_ONE * 16);
    }

    if (param0->unk_4C >= (FX32_ONE * (96 - 1))) {
        param0->unk_4C = (FX32_ONE * (96 - 1));
    }

    if (param0->unk_50 <= (FX32_ONE * (96 + 1))) {
        param0->unk_50 = (FX32_ONE * (96 + 1));
    }

    ov6_02244F80(param0, param0->unk_44, param0->unk_4C, param0->unk_48, param0->unk_50);
    param0->unk_2C = 1;

    if (param0->unk_18 == 0) {
        if (ov6_02245470(param0) == 4) {
            param0->unk_18 = 1;

            ov6_02243F50();
        }
    }

    if ((param0->unk_4C == (FX32_ONE * (96 - 1))) && (param0->unk_50 == (FX32_ONE * (96 + 1)))) {
        ov6_02244F20(param0->fieldSystem->unk_08);
        param0->unk_14 = 1;
        ov6_02244F58(param0);
        param0->unk_00++;
    }

    return 0;
}

static int ov6_022445EC(UnkStruct_ov6_02243FFC *param0)
{
    if (param0->unk_18 == 0) {
        if (ov6_02245470(param0) == 4) {
            param0->unk_18 = 1;

            ov6_02243F50();
        }
    }

    if (ov6_02245470(param0) != 2) {
        return 0;
    }

    if (param0->unk_18 == 0) {
        param0->unk_18 = 1;

        ov6_02243F50();
    }

    ov6_02245480(param0);
    param0->unk_00++;
    return 0;
}

static int ov6_02244634(UnkStruct_ov6_02243FFC *param0)
{
    if (ScreenWipe_Done()) {
        param0->unk_00++;
    }

    return 0;
}

static int (*const Unk_ov6_02249310[])(UnkStruct_ov6_02243FFC *) = {
    ov6_02244038,
    ov6_022443EC,
    ov6_022440C0,
    ov6_022440F8,
    ov6_02244138,
    ov6_022441BC,
    ov6_022441DC,
    ov6_02244228,
    ov6_02244284,
    ov6_022442A4,
    ov6_0224445C,
    ov6_02244470,
    ov6_02244488,
    ov6_022444A8,
    ov6_022444D0,
    ov6_022444F8,
    ov6_02244518,
    ov6_02244548,
    ov6_022445EC,
    ov6_02244634,
    ov6_02244388,
    ov6_0224439C,
    ov6_022443B0
};

static void ov6_0224464C(UnkStruct_ov6_02243FFC *param0)
{
    param0->unk_268 = 0;
    param0->unk_26C = 0;
    param0->unk_278 = SysTask_ExecuteOnVBlank(ov6_022446B8, param0, 0x80);
}

static void ov6_02244674(UnkStruct_ov6_02243FFC *param0)
{
    param0->unk_268 = 0;
    param0->unk_26C = 0;
    param0->unk_278 = SysTask_ExecuteOnVBlank(ov6_022447B4, param0, 0x80);
}

static void ov6_0224469C(UnkStruct_ov6_02243FFC *param0)
{
    if (param0->unk_278 != NULL) {
        SysTask_Done(param0->unk_278);
        param0->unk_278 = NULL;
    }
}

static void ov6_022446B8(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_ov6_02243FFC *v1 = param1;

    switch (v1->unk_268) {
    case 0:
        for (v0 = 0; v0 < 4; v0++) {
            if (v1->unk_210[v0] != NULL) {
                sub_0200A3DC(v1->unk_210[v0]);
            }
        }

        for (v0 = 0; v0 < 3; v0++) {
            if (v1->unk_220[v0] != NULL) {
                sub_0200A640(v1->unk_220[v0]);
            }
        }

        if (v1->unk_270 != NULL) {
            ov6_02245118(v1, v1->unk_270);
        }

        if (v1->unk_274 != NULL) {
            ov6_02245170(v1, v1->unk_274);
        }

        v1->unk_268++;
        SysTask_ExecuteAfterVBlank(ov6_02244734, v1, 0x80);

        break;
    }
}

static void ov6_02244734(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_ov6_02243FFC *v1 = param1;

    if (v1->unk_268 == 1) {
        for (v0 = 0; v0 < 4; v0++) {
            if (v1->unk_210[v0] != NULL) {
                SpriteResource_ReleaseData(v1->unk_210[v0]);
            }
        }

        for (v0 = 0; v0 < 3; v0++) {
            if (v1->unk_220[v0] != NULL) {
                SpriteResource_ReleaseData(v1->unk_220[v0]);
            }
        }

        if (v1->unk_270 != NULL) {
            Heap_FreeToHeap(v1->unk_270);
            v1->unk_270 = NULL;
        }

        if (v1->unk_274 != NULL) {
            Heap_FreeToHeap(v1->unk_274);
            v1->unk_274 = NULL;
        }

        v1->unk_26C = 1;
        SysTask_Done(param0);
    }
}

static void ov6_022447B4(SysTask *param0, void *param1)
{
    UnkStruct_ov6_02243FFC *v0 = param1;
    SpriteResource *v1 = SpriteResourceCollection_Find(v0->unk_200, 0);

    switch (v0->unk_268) {
    case 0:
        sub_0200A3DC(v1);
        SysTask_ExecuteAfterVBlank(ov6_022447EC, v0, 0x80);
        v0->unk_268++;
        break;
    }
}

static void ov6_022447EC(SysTask *param0, void *param1)
{
    UnkStruct_ov6_02243FFC *v0 = param1;
    SpriteResource *v1 = SpriteResourceCollection_Find(v0->unk_200, 0);

    if (v0->unk_268 == 1) {
        SpriteResource_ReleaseData(v1);
        v0->unk_26C = 1;
        SysTask_Done(param0);
    }
}

static void ov6_0224481C(UnkStruct_ov6_02243FFC *param0)
{
    NARC *v0 = ov6_0224491C();

    ov6_02244F80(param0, (FX32_ONE * 0), (FX32_ONE * 192), (FX32_ONE * 1), (FX32_ONE * 192));
    ov6_02244F2C(param0);

    param0->unk_24 = sub_0201A008(param0->fieldSystem->unk_08, 0);
    param0->unk_26 = sub_0201A008(param0->fieldSystem->unk_08, 3);

    G2_SetBG1Priority(1);
    G2_SetBG3Priority(0);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);

    ov6_02244E54(v0, 2, &param0->unk_6C);
    ov6_02244E7C(param0->fieldSystem->unk_08, v0, 0, &param0->unk_68);
    ov6_02244EB4(param0->fieldSystem->unk_08, v0, 1, &param0->unk_64);
    ov6_02244928(param0, v0);

    NARC_dtor(v0);
    param0->unk_244 = sub_020711EC(4, 32);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
}

static void ov6_022448C8(UnkStruct_ov6_02243FFC *param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);
    sub_0207121C(param0->unk_244);

    ov6_02244F20(param0->fieldSystem->unk_08);
    ov6_02244B6C(param0);

    G2_SetBG0Priority(param0->unk_24);
    G2_SetBG3Priority(param0->unk_26);

    sub_0205D8CC(0, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
}

static NARC *ov6_0224491C(void)
{
    return NARC_ctor(NARC_INDEX_DATA__FIELD_CUTIN, 4);
}

static void ov6_02244928(UnkStruct_ov6_02243FFC *param0, NARC *param1)
{
    int v0;

    ov6_0224508C(param0, &param0->unk_258);
    param0->unk_70 = sub_020095C4(32, &param0->unk_74, 4);
    sub_0200964C(&param0->unk_74, 0, FX32_CONST(512));

    param0->unk_200 = SpriteResourceCollection_New(4, 0, 4);
    param0->unk_204 = SpriteResourceCollection_New(3, 1, 4);
    param0->unk_208 = SpriteResourceCollection_New(4, 2, 4);
    param0->unk_20C = SpriteResourceCollection_New(2, 3, 4);

    for (v0 = 0; v0 < 1; v0++) {
        param0->unk_210[v0] = SpriteResourceCollection_AddTilesFrom(param0->unk_200, param1, Unk_ov6_02249108[v0].unk_04, 0, Unk_ov6_02249108[v0].unk_00, NNS_G2D_VRAM_TYPE_2DMAIN, 4);
    }

    if (param0->unk_0C == 0) {
        param0->unk_210[v0] = SpriteResourceCollection_AddTilesFrom(param0->unk_200, param1, 13, 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 4);
    } else {
        param0->unk_210[v0] = SpriteResourceCollection_AddTilesFrom(param0->unk_200, param1, 16, 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 4);
    }

    v0++;
    param0->unk_210[v0] = ov6_022450F4(param0, param1);

    for (v0 = 0; v0 < 1; v0++) {
        param0->unk_220[v0] = SpriteResourceCollection_AddPaletteFrom(param0->unk_204, param1, Unk_ov6_022490F8[v0].unk_04, 0, Unk_ov6_022490F8[v0].unk_00, NNS_G2D_VRAM_TYPE_2DMAIN, 1, 4);
    }

    if (param0->unk_0C == 0) {
        (void)0;
    } else {
        param0->unk_220[v0] = SpriteResourceCollection_AddPaletteFrom(param0->unk_204, param1, 4, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 1, 4);
        v0++;
    }

    param0->unk_220[v0] = ov6_0224514C(param0, param1);

    for (v0 = 0; v0 < 1; v0++) {
        param0->unk_22C[v0] = SpriteResourceCollection_AddFrom(
            param0->unk_208, param1, Unk_ov6_02249118[v0].unk_04, 0, Unk_ov6_02249118[v0].unk_00, 2, 4);
    }

    if (param0->unk_0C == 0) {
        param0->unk_22C[v0] = SpriteResourceCollection_AddFrom(param0->unk_208, param1, 14, 0, 2, 2, 4);
    } else {
        param0->unk_22C[v0] = SpriteResourceCollection_AddFrom(param0->unk_208, param1, 17, 0, 2, 2, 4);
    }

    v0++;
    param0->unk_22C[v0] = SpriteResourceCollection_AddFrom(param0->unk_208, param1, 6, 0, 3, 2, 4);

    for (v0 = 0; v0 < 1; v0++) {
        param0->unk_23C[v0] = SpriteResourceCollection_AddFrom(param0->unk_20C, param1, Unk_ov6_02249100[v0].unk_04, 0, Unk_ov6_02249100[v0].unk_00, 3, 4);
    }

    if (param0->unk_0C == 0) {
        param0->unk_23C[v0] = SpriteResourceCollection_AddFrom(param0->unk_20C, param1, 15, 0, 1, 3, 4);
    } else {
        param0->unk_23C[v0] = SpriteResourceCollection_AddFrom(param0->unk_20C, param1, 18, 0, 1, 3, 4);
    }

    param0->unk_270 = ov6_0224509C(param0->unk_5C, &param0->unk_258, 4);
    param0->unk_274 = ov6_022450E4(&param0->unk_258, 4);
}

static void ov6_02244B6C(UnkStruct_ov6_02243FFC *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_210[v0] != NULL) {
            sub_0200A4E4(param0->unk_210[v0]);
        }
    }

    for (v0 = 0; v0 < 3; v0++) {
        if (param0->unk_220[v0] != NULL) {
            sub_0200A6DC(param0->unk_220[v0]);
        }
    }

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_22C[v0] != NULL) {
            SpriteResource_ReleaseData(param0->unk_22C[v0]);
        }
    }

    for (v0 = 0; v0 < 2; v0++) {
        if (param0->unk_23C[v0] != NULL) {
            SpriteResource_ReleaseData(param0->unk_23C[v0]);
        }
    }

    SpriteResourceCollection_Delete(param0->unk_200);
    SpriteResourceCollection_Delete(param0->unk_204);
    SpriteResourceCollection_Delete(param0->unk_208);
    SpriteResourceCollection_Delete(param0->unk_20C);
    CellActorCollection_DeleteAll(param0->unk_70);
    CellActorCollection_Delete(param0->unk_70);
}

static void ov6_02244C10(UnkStruct_ov6_02243FFC *param0)
{
    if (param0->unk_70 != NULL) {
        CellActorCollection_Update(param0->unk_70);
    }
}

static CellActor *ov6_02244C20(UnkStruct_ov6_02243FFC *param0, const VecFx32 *param1, u32 param2, u32 param3, u32 param4, u32 param5, int param6, int param7)
{
    CellActorResourceData v0;
    CellActorInitParams v1;
    CellActor *v2;

    if (param5 == 4) {
        sub_020093B4(
            &v0, param2, param3, param4, 0xffffffff, 0xffffffff, 0xffffffff, 0, param6, param0->unk_200, param0->unk_204, param0->unk_208, NULL, NULL, NULL);
    } else {
        sub_020093B4(
            &v0, param2, param3, param4, param5, 0xffffffff, 0xffffffff, 0, param6, param0->unk_200, param0->unk_204, param0->unk_208, param0->unk_20C, NULL, NULL);
    }

    v1.collection = param0->unk_70;
    v1.resourceData = &v0;
    v1.position = *param1;
    v1.priority = param7;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.heapID = 4;

    v2 = CellActorCollection_Add(&v1);
    GF_ASSERT(v2 != NULL);

    return v2;
}

static CellActor *ov6_02244CD4(UnkStruct_ov6_02243FFC *param0, const VecFx32 *param1, int param2, int param3)
{
    CellActor *v0;

    v0 = ov6_02244C20(param0, param1, 1, 0, 1, 0, 0, param2);
    CellActor_SetAnim(v0, param3);

    return v0;
}

static CellActor *ov6_02244CFC(UnkStruct_ov6_02243FFC *param0, const VecFx32 *param1)
{
    CellActor *v0;
    u32 v1 = 0;

    if (param0->unk_0C == 1) {
        v1 = 1;
    }

    v0 = ov6_02244C20(param0, param1, 2, v1, 2, 1, 0, 131);

    CellActor_SetDrawFlag(v0, 0);
    CellActor_SetAnim(v0, 6);

    return v0;
}

static void ov6_02244D34(CellActor *param0)
{
    CellActor_SetAnimateFlag(param0, 1);
    CellActor_SetAnimSpeed(param0, FX32_ONE);
}

static CellActor *ov6_02244D4C(UnkStruct_ov6_02243FFC *param0, const VecFx32 *param1, int param2, int param3)
{
    CellActor *v0;
    VecFx32 v1 = { 0, 0, 0 };
    VecFx32 v2 = { 0x1000, 0x1000, 0 };

    v0 = ov6_02244C20(param0, param1, 0, 0, 0, 0xffffffff, 0, param2);

    CellActor_SetAffineOverwriteMode(v0, 2);
    CellActor_SetAffineTranslation(v0, &v1);
    CellActor_SetAffineScale(v0, &v2);
    CellActor_SetAffineZRotation(v0, sub_0201D2A4(0));

    return v0;
}

static void ov6_02244DB4(UnkStruct_ov6_02243FFC *param0)
{
    int v0;
    NARC *v1 = ov6_0224491C();

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_210[v0] == NULL) {
            param0->unk_210[v0] = SpriteResourceCollection_AddTilesFrom(param0->unk_200, v1, 7, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 4);
            break;
        }
    }

    GF_ASSERT(v0 < 4);

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_22C[v0] == NULL) {
            param0->unk_22C[v0] = SpriteResourceCollection_AddFrom(param0->unk_208, v1, 8, 0, 0, 2, 4);
            break;
        }
    }

    GF_ASSERT(v0 < 4);
    NARC_dtor(v1);
}

static void ov6_02244E54(NARC *param0, u32 param1, NNSG2dPaletteData **param2)
{
    void *v0;

    v0 = NARC_AllocAndReadWholeMember(param0, param1, 4);

    NNS_G2dGetUnpackedPaletteData(v0, param2);

    sub_0201972C(3, (*param2)->pRawData, (32 * 1), (32 * 12));
    Heap_FreeToHeap(v0);
}

static void ov6_02244E7C(BGL *param0, NARC *param1, u32 param2, NNSG2dCharacterData **param3)
{
    void *v0;

    v0 = NARC_AllocAndReadWholeMember(param1, param2, 4);
    NNS_G2dGetUnpackedCharacterData(v0, param3);

    sub_0201958C(param0, 3, (*param3)->pRawData, (*param3)->szByte, 0);
    Heap_FreeToHeap(v0);
}

static void ov6_02244EB4(BGL *param0, NARC *param1, u32 param2, NNSG2dScreenData **param3)
{
    void *v0;

    sub_02019184(param0, 3, 0, 0);
    sub_02019184(param0, 3, 3, 0);

    v0 = NARC_AllocAndReadWholeMember(param1, param2, 4);
    NNS_G2dGetUnpackedScreenData(v0, param3);

    sub_02019574(param0, 3, (void *)(*param3)->rawData, (*param3)->szByte);
    sub_02019E2C(param0, 3, 0, 0, 32, 32, 12);
    sub_02019448(param0, 3);
    Heap_FreeToHeap(v0);
}

static void ov6_02244F20(BGL *param0)
{
    sub_02019EBC(param0, 3);
}

static void ov6_02244F2C(UnkStruct_ov6_02243FFC *param0)
{
    ov6_02244F8C(param0);
    param0->unk_2C = 0;

    ov6_02244F58(param0);
    ov6_02244F60(param0);
    ov6_02244F50(param0);

    param0->unk_2C = 1;
}

static void ov6_02244F50(UnkStruct_ov6_02243FFC *param0)
{
    param0->unk_30 = (GX_WNDMASK_W0);
}

static void ov6_02244F58(UnkStruct_ov6_02243FFC *param0)
{
    param0->unk_30 = GX_WNDMASK_NONE;
}

static void ov6_02244F60(UnkStruct_ov6_02243FFC *param0)
{
    param0->unk_34 = (GX_WND_PLANEMASK_BG3) | GX_WND_PLANEMASK_OBJ;
    param0->unk_38 = 0;
    param0->unk_3C = (GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ) & (~(GX_WND_PLANEMASK_BG3));
    param0->unk_40 = 1;
}

static void ov6_02244F74(UnkStruct_ov6_02243FFC *param0)
{
    param0->unk_3C = (GX_WND_PLANEMASK_OBJ | GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3) & (~(GX_WND_PLANEMASK_BG3));
    param0->unk_40 = 1;
}

static void ov6_02244F80(UnkStruct_ov6_02243FFC *param0, fx32 param1, fx32 param2, fx32 param3, fx32 param4)
{
    param0->unk_44 = param1;
    param0->unk_48 = param3;
    param0->unk_4C = param2;
    param0->unk_50 = param4;
}

static void ov6_02244F8C(UnkStruct_ov6_02243FFC *param0)
{
    GF_ASSERT(param0->unk_27C == NULL);
    param0->unk_27C = SysTask_ExecuteOnVBlank(ov6_02244FE4, param0, 0x81);
}

static void ov6_02244FB4(UnkStruct_ov6_02243FFC *param0)
{
    GF_ASSERT(param0->unk_27C != NULL);

    SysTask_Done(param0->unk_27C);
    GX_SetVisibleWnd(GX_WNDMASK_NONE);
}

static void ov6_02244FE4(SysTask *param0, void *param1)
{
    UnkStruct_ov6_02243FFC *v0 = param1;

    if (v0->unk_2C == 0) {
        return;
    }

    GX_SetVisibleWnd(v0->unk_30);
    G2_SetWnd0InsidePlane(v0->unk_34, v0->unk_38);
    G2_SetWndOutsidePlane(v0->unk_3C, v0->unk_40);
    G2_SetWnd0Position(v0->unk_44 / FX32_ONE, v0->unk_4C / FX32_ONE, v0->unk_48 / FX32_ONE, v0->unk_50 / FX32_ONE);
}

static void ov6_0224508C(UnkStruct_ov6_02243FFC *param0, ArchivedSprite *param1)
{
    Pokemon_BuildArchivedSprite(param1, param0->unk_5C, 2);
}

static void *ov6_0224509C(Pokemon *param0, ArchivedSprite *param1, u32 param2)
{
    void *v0 = Heap_AllocFromHeap(4, (32 * 10) * 10);

    GF_ASSERT(v0 != NULL);

    {
        int v1 = Pokemon_GetValue(param0, MON_DATA_PERSONALITY, NULL);
        sub_02013750(param1->archive, param1->character, param2, v0, v1, 0, 2, param1->spindaSpots);
    }

    return v0;
}

static void *ov6_022450E4(ArchivedSprite *param0, u32 param1)
{
    void *v0 = sub_02013660(param0->archive, param0->palette, param1);
    return v0;
}

static SpriteResource *ov6_022450F4(UnkStruct_ov6_02243FFC *param0, NARC *param1)
{
    SpriteResource *v0;

    v0 = SpriteResourceCollection_AddTilesFrom(param0->unk_200, param1, 5, 0, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 4);
    return v0;
}

static void ov6_02245118(UnkStruct_ov6_02243FFC *param0, void *param1)
{
    u32 v0;
    SpriteResource *v1;
    const NNSG2dImageProxy *v2;

    v1 = SpriteResourceCollection_Find(param0->unk_200, 3);
    v2 = sub_0200A534(v1);
    v0 = NNS_G2dGetImageLocation(v2, NNS_G2D_VRAM_TYPE_2DMAIN);

    DC_FlushRange((void *)param1, ((32 * 10) * 10));
    GX_LoadOBJ(param1, v0, ((32 * 10) * 10));
}

static SpriteResource *ov6_0224514C(UnkStruct_ov6_02243FFC *param0, NARC *param1)
{
    SpriteResource *v0;

    v0 = SpriteResourceCollection_AddPaletteFrom(param0->unk_204, param1, 3, 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 1, 4);
    return v0;
}

static void ov6_02245170(UnkStruct_ov6_02243FFC *param0, void *param1)
{
    u32 v0;
    SpriteResource *v1;
    SpriteResource *v2;
    NNSG2dImageProxy *v3;
    const NNSG2dImagePaletteProxy *v4;

    v2 = SpriteResourceCollection_Find(param0->unk_200, 3);
    v3 = sub_0200A534(v2);
    v1 = SpriteResourceCollection_Find(param0->unk_204, 2);
    v4 = sub_0200A72C(v1, v3);
    v0 = NNS_G2dGetImagePaletteLocation(v4, NNS_G2D_VRAM_TYPE_2DMAIN);

    DC_FlushRange((void *)param1, 32);
    GX_LoadOBJPltt(param1, v0, 32);
}

static void ov6_022451B8(UnkStruct_ov6_02243FFC *param0)
{
    int v0;
    SpriteResource *v1 = SpriteResourceCollection_Find(param0->unk_200, 3);

    sub_0200A4E4(v1);
    SpriteResourceCollection_Remove(param0->unk_200, v1);

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_210[v0] == v1) {
            param0->unk_210[v0] = NULL;
            break;
        }
    }

    GF_ASSERT(v0 < 4);

    v1 = SpriteResourceCollection_Find(param0->unk_204, 2);
    sub_0200A6DC(v1);
    SpriteResourceCollection_Remove(param0->unk_204, v1);

    for (v0 = 0; v0 < 3; v0++) {
        if (param0->unk_220[v0] == v1) {
            param0->unk_220[v0] = NULL;
            break;
        }
    }

    GF_ASSERT(v0 < 3);
    v1 = SpriteResourceCollection_Find(param0->unk_208, 3);

    SpriteResource_ReleaseData(v1);
    SpriteResourceCollection_Remove(param0->unk_208, v1);

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_22C[v0] == v1) {
            param0->unk_22C[v0] = NULL;
            break;
        }
    }

    GF_ASSERT(v0 < 4);
}

static CellActor *ov6_0224529C(UnkStruct_ov6_02243FFC *param0, const VecFx32 *param1)
{
    CellActor *v0;

    v0 = ov6_02244C20(param0, param1, 3, 2, 3, 0xffffffff, 0, 129);
    return v0;
}

static const UnkStruct_ov101_021D86B0 Unk_ov6_02249220;

static const UnkStruct_ov6_0224936C Unk_ov6_0224936C[13] = {
    { (FX32_ONE * 15), (FX32_ONE * 63), (FX32_ONE * 16), 0x85, 0x0 },
    { (FX32_ONE * 76), (FX32_ONE * 67), (FX32_ONE * 16), 0x85, 0x0 },
    { (FX32_ONE * 128), (FX32_ONE * 61), (FX32_ONE * 24), 0x80, 0x1 },
    { (FX32_ONE * 240), (FX32_ONE * 69), (FX32_ONE * 16), 0x85, 0x0 },
    { (FX32_ONE * 40), (FX32_ONE * 78), (FX32_ONE * 24), 0x80, 0x1 },
    { (FX32_ONE * 72), (FX32_ONE * 91), (FX32_ONE * 16), 0x85, 0x0 },
    { (FX32_ONE * 208), (FX32_ONE * 86), (FX32_ONE * 24), 0x80, 0x1 },
    { (FX32_ONE * 56), (FX32_ONE * 116), (FX32_ONE * 16), 0x85, 0x0 },
    { (FX32_ONE * 95), (FX32_ONE * 109), (FX32_ONE * 24), 0x80, 0x1 },
    { (FX32_ONE * 159), (FX32_ONE * 100), (FX32_ONE * 16), 0x85, 0x0 },
    { (FX32_ONE * 24), (FX32_ONE * 126), (FX32_ONE * 24), 0x80, 0x1 },
    { (FX32_ONE * 140), (FX32_ONE * 125), (FX32_ONE * 24), 0x80, 0x1 },
    { (FX32_ONE * 221), (FX32_ONE * 124), (FX32_ONE * 24), 0x80, 0x1 }
};

static void ov6_022452BC(UnkStruct_ov6_02243FFC *param0, int param1)
{
    int v0, v1, v2;
    VecFx32 v3, v4;

    param0->unk_14 = 2;

    for (v0 = 0; v0 < 13; v0++) {
        v3.x = Unk_ov6_0224936C[v0].unk_00;
        v3.y = Unk_ov6_0224936C[v0].unk_04;
        v3.z = 0;
        v4.x = Unk_ov6_0224936C[v0].unk_08;
        v4.y = 0;
        v4.z = 0;
        v2 = Unk_ov6_0224936C[v0].unk_0C;
        v1 = Unk_ov6_0224936C[v0].unk_10;

        ov6_02245328(param0, &v3, &v4, v2, v1, param1);
        v3.x += (FX32_ONE * 256);
        ov6_02245328(param0, &v3, &v4, v2, v1, param1);
    }
}

static void ov6_02245328(UnkStruct_ov6_02243FFC *param0, const VecFx32 *param1, const VecFx32 *param2, int param3, int param4, int param5)
{
    UnkStruct_ov101_021D5D90 *v0;
    UnkStruct_ov6_02245328 v1;

    v1.unk_00 = param3;
    v1.unk_04 = param5;
    v1.unk_08 = param0;
    v1.unk_0C = *param2;

    v0 = sub_02071330(param0->unk_244, &Unk_ov6_02249220, param1, param4, &v1, 132);
}

static int ov6_02245364(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    VecFx32 v0;
    UnkStruct_ov6_02245364 *v1 = param1;
    const UnkStruct_ov6_02245328 *v2 = sub_020715BC(param0);

    v1->unk_0C = *v2;
    v1->unk_04 = sub_020715B4(param0);

    sub_020715E4(param0, &v0);

    v1->unk_08 = ov6_02244CD4(v1->unk_0C.unk_08, &v0, v1->unk_0C.unk_00, v1->unk_04);
    CellActor_SetDrawFlag(v1->unk_08, 0);

    return 1;
}

static void ov6_022453AC(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    UnkStruct_ov6_02245364 *v0 = param1;
    CellActor_Delete(v0->unk_08);
}

static void ov6_022453B8(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    VecFx32 v0;
    UnkStruct_ov6_02245364 *v1 = param1;

    sub_020715E4(param0, &v0);

    v0.x += v1->unk_0C.unk_0C.x;
    v0.x %= (FX32_ONE * 512);

    sub_020715D4(param0, &v0);
    CellActor_SetPosition(v1->unk_08, &v0);

    if (v1->unk_0C.unk_04 == 1) {
        UnkStruct_ov6_02243FFC *v2 = v1->unk_0C.unk_08;

        if (v2->unk_14 == 2) {
            int v3 = 0;
            fx32 v4 = v2->unk_4C, v5 = v2->unk_50;

            if (((v0.y - (FX32_ONE * 2)) >= v4) && ((v0.y - (FX32_ONE * 2)) <= v5) && ((v0.y + (FX32_ONE * 2)) >= v4) && ((v0.y + (FX32_ONE * 2)) <= v5)) {
                v3 = 1;
            }

            CellActor_SetDrawFlag(v1->unk_08, v3);
        } else if (v2->unk_14 == 1) {
            CellActor_SetDrawFlag(v1->unk_08, 0);
        }
    }
}

static void ov6_02245438(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    UnkStruct_ov6_02245364 *v0 = param1;
}

static const UnkStruct_ov101_021D86B0 Unk_ov6_02249220 = {
    (sizeof(UnkStruct_ov6_02245364)),
    ov6_02245364,
    ov6_022453AC,
    ov6_022453B8,
    ov6_02245438
};

static void ov6_0224543C(UnkStruct_ov6_02243FFC *param0)
{
    VecFx32 v0 = { 0, 0, 0 };
    UnkStruct_ov6_0224543C v1;

    v1.unk_00 = param0;
    param0->unk_250 = sub_02071330(param0->unk_244, &Unk_ov6_02249248, &v0, 0, &v1, 130);
}

static int ov6_02245470(UnkStruct_ov6_02243FFC *param0)
{
    UnkStruct_ov6_02249198 *v0 = sub_02071598(param0->unk_250);
    return v0->unk_02;
}

static void ov6_02245480(UnkStruct_ov6_02243FFC *param0)
{
    UnkStruct_ov6_02249198 *v0 = sub_02071598(param0->unk_250);

    if (v0->unk_60) {
        sub_0207136C(v0->unk_60);
    }

    if (v0->unk_64) {
        ov5_021F0EFC(v0->unk_64);
    }

    sub_0207136C(param0->unk_250);
}

static int ov6_022454B0(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    VecFx32 v0;
    UnkStruct_ov6_02249198 *v1 = param1;
    const UnkStruct_ov6_0224543C *v2 = sub_020715BC(param0);

    v1->unk_5C = *v2;
    sub_020715E4(param0, &v0);
    v1->unk_58 = ov6_02244D4C(v1->unk_5C.unk_00, &v0, 0, 0);

    return 1;
}

static void ov6_022454DC(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    UnkStruct_ov6_02249198 *v0 = param1;
    CellActor_Delete(v0->unk_58);
}

static void ov6_022454E8(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    UnkStruct_ov6_02249198 *v0 = param1;
    int (*const *v1)(UnkStruct_ov6_02249198 *);

    v1 = Unk_ov6_02249198[v0->unk_00];

    while (v1[v0->unk_01](v0) == 1) {
        (void)0;
    }
}

static void ov6_02245508(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    UnkStruct_ov6_02249198 *v0 = param1;
}

static const UnkStruct_ov101_021D86B0 Unk_ov6_02249248 = {
    (sizeof(UnkStruct_ov6_02249198)),
    ov6_022454B0,
    ov6_022454DC,
    ov6_022454E8,
    ov6_02245508
};

static int (*const *const Unk_ov6_02249198[])(UnkStruct_ov6_02249198 *) = {
    Unk_ov6_022490E8,
    Unk_ov6_022490F0,
    Unk_ov6_022491EC,
};

static int ov6_0224550C(UnkStruct_ov6_02249198 *param0)
{
    param0->unk_02 = 0;
    CellActor_SetDrawFlag(param0->unk_58, 0);
    return 0;
}

static int (*const Unk_ov6_022490E8[])(UnkStruct_ov6_02249198 *) = {
    ov6_0224550C
};

static void ov6_0224551C(UnkStruct_ov6_02243FFC *param0)
{
    VecFx32 v0 = { (FX32_ONE * (128 + 8)), (FX32_ONE * (96 - 8)), 0 };
    VecFx32 v1 = { 0x400, 0x400, 0 };
    UnkStruct_ov6_02249198 *v2 = sub_02071598(param0->unk_250);

    v2->unk_00 = 1;
    v2->unk_01 = 0;
    v2->unk_02 = 0;
    v2->unk_08 = v0;
    v2->unk_14.x = 0;
    v2->unk_14.y = 0;
    v2->unk_14.z = 0;
    v2->unk_38 = (FX32_ONE * 60);
    v2->unk_2C = v1;
    v2->unk_50 = 0x200;
    v2->unk_40 = (FX32_ONE * 180);
    v2->unk_48 = 0;
    v2->unk_4C = 0x2000;

    CellActor_SetPosition(v2->unk_58, &v0);
    CellActor_SetAffineScale(v2->unk_58, &v1);
    CellActor_SetAffineZRotation(v2->unk_58, sub_0201D2A4((v2->unk_38) / FX32_ONE));
    CellActor_SetDrawFlag(v2->unk_58, 1);
}

static int ov6_022455C4(UnkStruct_ov6_02249198 *param0)
{
    VecFx32 v0;
    CellActor *v1 = param0->unk_58;

    param0->unk_48 += param0->unk_4C;

    if (param0->unk_4C < (FX32_ONE * 16)) {
        param0->unk_4C += 0x4000;
    }

    param0->unk_14.x = sub_0201D264(315) * ((param0->unk_48) / FX32_ONE);
    param0->unk_14.y = sub_0201D250((param0->unk_40) / FX32_ONE) * ((param0->unk_48) / FX32_ONE);

    if (((param0->unk_40) / FX32_ONE) < 270) {
        param0->unk_40 += 0x4000;
    }

    param0->unk_2C.x += param0->unk_50;

    if (param0->unk_2C.x > 0x1000) {
        param0->unk_2C.x = 0x1000;
    }

    param0->unk_2C.y += param0->unk_50;

    if (param0->unk_2C.y > 0x1000) {
        param0->unk_2C.y = 0x1000;
    }

    CellActor_SetAffineScale(v1, &param0->unk_2C);
    param0->unk_38 -= 0x6000;

    if (((param0->unk_38) / FX32_ONE) < 0) {
        param0->unk_38 = 0;
    }

    CellActor_SetAffineZRotation(v1, sub_0201D2A4((param0->unk_38) / FX32_ONE));

    v0.x = param0->unk_08.x + param0->unk_14.x;
    v0.y = param0->unk_08.y + param0->unk_14.y;

    CellActor_SetPosition(v1, &v0);

    if (v0.y < (FX32_ONE * -64)) {
        CellActor_SetDrawFlag(v1, 0);
        param0->unk_02 = 2;
        param0->unk_01++;
    }

    return 0;
}

static int ov6_022456D0(UnkStruct_ov6_02249198 *param0)
{
    return 0;
}

static int (*const Unk_ov6_022490F0[])(UnkStruct_ov6_02249198 *) = {
    ov6_022455C4,
    ov6_022456D0
};

static void ov6_022456D4(UnkStruct_ov6_02243FFC *param0)
{
    VecFx32 v0 = { (FX32_ONE * 128), (FX32_ONE * 104), 0 };
    VecFx32 v1 = { 0x1400, 0x1400, 0 };
    UnkStruct_ov6_02249198 *v2 = sub_02071598(param0->unk_250);

    v2->unk_00 = 2;
    v2->unk_01 = 0;
    v2->unk_02 = 1;
    v2->unk_04 = 0;
    v2->unk_08 = v0;
    v2->unk_14.x = 0;
    v2->unk_14.y = 0;
    v2->unk_14.z = 0;
    v2->unk_38 = (FX32_ONE * 315);
    v2->unk_2C = v1;
    v2->unk_50 = 0x100;
    v2->unk_40 = (FX32_ONE * 225);
    v2->unk_48 = (FX32_ONE * (128 + 64));
    v2->unk_4C = (FX32_ONE * 32);
    v2->unk_14.x = sub_0201D264(315) * ((v2->unk_48) / FX32_ONE);
    v2->unk_14.y = sub_0201D250((v2->unk_40) / FX32_ONE) * ((v2->unk_48) / FX32_ONE);

    v0.x = v2->unk_08.x + v2->unk_14.x;
    v0.y = v2->unk_08.y + v2->unk_14.y;

    CellActor_SetPosition(v2->unk_58, &v0);
    CellActor_SetAffineScale(v2->unk_58, &v1);
    CellActor_SetAffineZRotation(v2->unk_58, sub_0201D2A4((v2->unk_38) / FX32_ONE));
    CellActor_SetDrawFlag(v2->unk_58, 1);

    v2->unk_60 = ov6_02245B4C(param0->unk_244, param0->unk_248);
    param0->unk_1C = 1;
    v2->unk_64 = ov5_021F0EB0(param0->fieldSystem, 4);

    ov5_021F0F10(v2->unk_64, 1, -(FX32_ONE * 120), 12);

    {
        CellActor *v3;
        VecFx32 v4 = { 0, 0, 0 };
        VecFx32 v5 = { 0x1000, 0x1000, 0 };

        v3 = v2->unk_5C.unk_00->unk_248;

        CellActor_SetAffineOverwriteMode(v3, 2);
        CellActor_SetAffineTranslation(v3, &v4);
        CellActor_SetAffineScale(v3, &v5);
        CellActor_SetAffineZRotation(v3, sub_0201D2A4(0));
    }
}

static int ov6_02245840(UnkStruct_ov6_02249198 *param0)
{
    VecFx32 v0;
    CellActor *v1 = param0->unk_58;

    param0->unk_48 -= param0->unk_4C;

    if (param0->unk_48 < 0) {
        param0->unk_48 = 0;
    }

    if (param0->unk_4C > 0x800) {
        param0->unk_4C -= 0x1800;
    }

    if (param0->unk_4C < 0x1000) {
        param0->unk_4C = 0x1000;
    }

    param0->unk_14.x = sub_0201D264(315) * ((param0->unk_48) / FX32_ONE);
    param0->unk_14.y = sub_0201D250((param0->unk_40) / FX32_ONE) * ((param0->unk_48) / FX32_ONE);

    if (((param0->unk_40) / FX32_ONE) < 270) {
        param0->unk_40 += 0x4000;
    }

    param0->unk_2C.x += param0->unk_50;

    if (param0->unk_2C.x > 0x1800) {
        param0->unk_2C.x = 0x1800;
    }

    param0->unk_2C.y += param0->unk_50;

    if (param0->unk_2C.y > 0x1800) {
        param0->unk_2C.y = 0x1800;
    }

    CellActor_SetAffineScale(v1, &param0->unk_2C);
    param0->unk_38 += 0x8000;

    if (((param0->unk_38) / FX32_ONE) > 360) {
        param0->unk_38 = (FX32_ONE * 360);
    }

    CellActor_SetAffineZRotation(v1, sub_0201D2A4((param0->unk_38) / FX32_ONE));

    v0.x = param0->unk_08.x + param0->unk_14.x;
    v0.y = param0->unk_08.y + param0->unk_14.y;

    CellActor_SetPosition(v1, &v0);

    if (param0->unk_48 == 0) {
        param0->unk_04 = 0;
        param0->unk_01++;
    } else {
        param0->unk_04++;
    }

    if (param0->unk_04 == 12) {
        ov6_02245B80(param0->unk_60);
    }

    {
        CellActor *v2 = param0->unk_5C.unk_00->unk_248;
        const VecFx32 *v3 = CellActor_GetAffineScale(v2);
        VecFx32 v4 = *v3;

        v4.x += 0x80;

        if (v4.x > 0x1400) {
            v4.x = 0x1400;
        }

        v4.y += 0x80;

        if (v4.y > 0x1400) {
            v4.y = 0x1400;
        }

        CellActor_SetAffineScale(v2, &v4);
    }

    return 0;
}

static int ov6_022459B0(UnkStruct_ov6_02249198 *param0)
{
    CellActor *v0 = param0->unk_5C.unk_00->unk_248;

    CellActor_SetAnim(v0, 3);

    {
        fx32 v1, v2;
        const VecFx32 *v3 = CellActor_GetPosition(v0);

        v1 = v3->y;
        v3 = CellActor_GetPosition(param0->unk_58);
        v2 = v3->y;

        param0->unk_54 = v1 - v2;
    }

    ov6_02245B74(param0->unk_60);
    ov5_021F0F10(param0->unk_64, 2, 0, 12);

    param0->unk_50 = 0x100;
    param0->unk_40 = (FX32_ONE * 128);
    param0->unk_48 = 0;
    param0->unk_4C = 0x800;
    param0->unk_02 = 3;
    param0->unk_01++;

    return 1;
}

static int ov6_02245A0C(UnkStruct_ov6_02249198 *param0)
{
    VecFx32 v0;
    CellActor *v1 = param0->unk_58;

    param0->unk_48 += param0->unk_4C;
    param0->unk_4C += 0x1000;

    if (param0->unk_4C > (FX32_ONE * 16)) {
        param0->unk_4C = (FX32_ONE * 16);
    }

    param0->unk_14.x = sub_0201D264((param0->unk_40) / FX32_ONE) * ((param0->unk_48) / FX32_ONE);
    param0->unk_14.y = sub_0201D250(128) * ((param0->unk_48) / FX32_ONE);

    if (param0->unk_40 < (FX32_ONE * 135)) {
        param0->unk_40 += 0x1000;
    }

    param0->unk_2C.x += param0->unk_50;

    if (param0->unk_2C.x > 0x2000) {
        param0->unk_2C.x = 0x2000;
    }

    param0->unk_2C.y += param0->unk_50;

    if (param0->unk_2C.y > 0x2000) {
        param0->unk_2C.y = 0x2000;
    }

    CellActor_SetAffineScale(v1, &param0->unk_2C);

    v0.x = param0->unk_08.x + param0->unk_14.x;
    v0.y = param0->unk_08.y + param0->unk_14.y;

    CellActor_SetPosition(v1, &v0);

    {
        CellActor *v2 = param0->unk_5C.unk_00->unk_248;
        const VecFx32 *v3 = CellActor_GetAffineScale(v2);
        VecFx32 v4 = v0;
        VecFx32 v5 = *v3;

        param0->unk_54 -= 0x1000;

        v4.y += param0->unk_54;
        CellActor_SetPosition(v2, &v4);
        v5.x += 0x100;

        if (v5.x > 0x2000) {
            v5.x = 0x2000;
        }

        v5.y += 0x100;

        if (v5.y > 0x2000) {
            v5.y = 0x2000;
        }

        CellActor_SetAffineScale(v2, &v5);
    }

    if (((v0.y) / FX32_ONE) >= 240) {
        param0->unk_02 = 2;
        param0->unk_01++;
    }

    return 0;
}

static int ov6_02245B48(UnkStruct_ov6_02249198 *param0)
{
    return 0;
}

static int (*const Unk_ov6_022491EC[])(UnkStruct_ov6_02249198 *) = {
    ov6_02245840,
    ov6_022459B0,
    ov6_02245A0C,
    ov6_02245B48
};

static UnkStruct_ov101_021D5D90 *ov6_02245B4C(UnkStruct_020711EC *param0, CellActor *param1)
{
    UnkStruct_ov101_021D5D90 *v0;
    UnkStruct_ov6_02245B4C v1;
    VecFx32 v2 = { 0, 0, 0 };

    v1.unk_04 = param1;
    v0 = sub_02071330(param0, &Unk_ov6_0224920C, &v2, 0, &v1, 129);

    return v0;
}

static void ov6_02245B74(UnkStruct_ov101_021D5D90 *param0)
{
    UnkStruct_ov6_02245B74 *v0 = sub_02071598(param0);
    v0->unk_00 = 0;
}

static void ov6_02245B80(UnkStruct_ov101_021D5D90 *param0)
{
    VecFx32 v0;
    const VecFx32 *v1;
    UnkStruct_ov6_02245B74 *v2 = sub_02071598(param0);

    v2->unk_00 = 1;
    v2->unk_04 = 0;
    v2->unk_0C = 0;
    v2->unk_08 = 0;
    v2->unk_10.x = 0;
    v2->unk_10.y = 0;
    v2->unk_10.z = 0;
    v1 = CellActor_GetPosition(v2->unk_20);
    v0 = *v1;

    sub_020715D4(param0, &v0);
    CellActor_SetAnim(v2->unk_20, 5);
}

static void ov6_02245BC8(UnkStruct_ov101_021D5D90 *param0)
{
    VecFx32 v0;
    UnkStruct_ov6_02245B74 *v1 = sub_02071598(param0);

    v1->unk_00 = 2;
    v1->unk_04 = 0;
    v1->unk_0C = 0;
    v1->unk_08 = 0;
    v1->unk_10.x = 0;
    v1->unk_10.y = 0;
    v1->unk_10.z = 0;

    ov6_022437C8(v1->unk_20, &v0);

    sub_020715D4(param0, &v0);
    CellActor_SetAnim(v1->unk_20, 4);
}

static int ov6_02245C04(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    UnkStruct_ov6_02245B74 *v0 = param1;
    const UnkStruct_ov6_02245B4C *v1 = sub_020715BC(param0);

    v0->unk_1C = v1->unk_00;
    v0->unk_20 = v1->unk_04;

    return 1;
}

static const fx32 Unk_ov6_022492A8[12] = {
    (FX32_ONE * -12),
    (FX32_ONE * -16),
    (FX32_ONE * -20),
    (FX32_ONE * -24),
    (FX32_ONE * -26),
    (FX32_ONE * -28),
    (FX32_ONE * -28),
    (FX32_ONE * -28),
    (FX32_ONE * -26),
    (FX32_ONE * -24),
    (FX32_ONE * -22),
    (FX32_ONE * -20)
};

static const fx32 Unk_ov6_022491FC[4] = {
    (FX32_ONE * -4),
    (FX32_ONE * -6),
    (FX32_ONE * -7),
    (FX32_ONE * -8)
};

static void ov6_02245C18(UnkStruct_ov101_021D5D90 *param0, UnkStruct_ov6_02245B74 *param1)
{
    VecFx32 v0;

    switch (param1->unk_04) {
    case 0:
        param1->unk_10.y = Unk_ov6_022492A8[param1->unk_0C];
        sub_020715E4(param0, &v0);
        v0.y += param1->unk_10.y;
        CellActor_SetPosition(param1->unk_20, &v0);
        param1->unk_0C++;

        if (param1->unk_0C >= 12) {
            param1->unk_0C = 0;
            param1->unk_08 = 1;
            param1->unk_04++;
        }
    }
}

static void ov6_02245C64(UnkStruct_ov101_021D5D90 *param0, UnkStruct_ov6_02245B74 *param1)
{
    VecFx32 v0;

    switch (param1->unk_04) {
    case 0:
        param1->unk_10.y = Unk_ov6_022491FC[param1->unk_0C];
        sub_020715E4(param0, &v0);
        v0.y += param1->unk_10.y;
        CellActor_SetPosition(param1->unk_20, &v0);
        param1->unk_0C++;

        if (param1->unk_0C >= 4) {
            param1->unk_0C = 0;
            param1->unk_08 = 1;
            param1->unk_04++;
        }
    }
}

static void ov6_02245CB0(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    UnkStruct_ov6_02245B74 *v0 = param1;

    switch (v0->unk_00) {
    case 1:
        ov6_02245C18(param0, v0);
        break;
    case 2:
        ov6_02245C64(param0, v0);
        break;
    }
}

static const UnkStruct_ov101_021D86B0 Unk_ov6_0224920C = {
    sizeof(UnkStruct_ov6_02245B74),
    ov6_02245C04,
    sub_02071600,
    ov6_02245CB0,
    sub_020715FC
};

static const UnkStruct_ov101_021D86B0 dummy_field_cutin = {
    sizeof(UnkStruct_ov100_021D4890),
    NULL,
    sub_02071600,
    NULL,
    sub_020715FC,
};

int (*const Unk_ov6_02249270[])(UnkStruct_ov6_02249270 *);

SysTask *FieldTask_InitFlyLandingTask(FieldSystem *fieldSystem, int param1)
{
    UnkStruct_ov6_02249270 *v0 = ov6_02245F44(4, (sizeof(UnkStruct_ov6_02249270)));

    v0->unk_0C = param1;
    v0->fieldSystem = fieldSystem;

    {
        SysTask *v1 = SysTask_Start(ov6_02245D10, v0, 133);
        return v1;
    }
}

int ov6_02245CF0(SysTask *param0)
{
    UnkStruct_ov6_02249270 *v0 = SysTask_GetParam(param0);
    return v0->unk_04;
}

void ov6_02245CFC(SysTask *param0)
{
    UnkStruct_ov6_02249270 *v0 = SysTask_GetParam(param0);

    Heap_FreeToHeap(v0);
    SysTask_Done(param0);
}

static void ov6_02245D10(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_ov6_02249270 *v1 = param1;

    while (Unk_ov6_02249270[v1->unk_00](v1) == 1) {
        (void)0;
    }

    if (v1->unk_10) {
        if (v1->unk_1D4 != NULL) {
            sub_020713D0(v1->unk_1D4);
        }

        if (v1->unk_18.unk_08 != NULL) {
            CellActorCollection_Update(v1->unk_18.unk_08);
        }
    }
}

static int ov6_02245D48(UnkStruct_ov6_02249270 *param0)
{
    ov6_02243F74(param0->fieldSystem, 1);
    param0->unk_00++;
    return 0;
}

static int ov6_02245D60(UnkStruct_ov6_02249270 *param0)
{
    param0->unk_1D4 = sub_020711EC(4, 32);
    ov6_02243258(&param0->unk_18, 32, 2, 2, 2, 1, 4, 3, 4, 2);

    {
        NARC *v0 = ov6_02243F20();

        ov6_022434B0(&param0->unk_18, v0, 7, 0);
        ov6_02243588(&param0->unk_18, v0, 3, 0);
        ov6_02243660(&param0->unk_18, v0, 8, 0);

        ov6_02243520(&param0->unk_18, 0);
        ov6_022435F8(&param0->unk_18, 0);
        ov6_02243554(&param0->unk_18, 0);
        ov6_0224362C(&param0->unk_18, 0);

        if (param0->unk_0C == 0) {
            ov6_022434B0(&param0->unk_18, v0, 13, 2);
            ov6_02243660(&param0->unk_18, v0, 14, 2);
            ov6_022436D0(&param0->unk_18, v0, 15, 1);

            ov6_02243520(&param0->unk_18, 2);
            ov6_02243554(&param0->unk_18, 2);
        } else {
            ov6_022434B0(&param0->unk_18, v0, 16, 2);
            ov6_02243588(&param0->unk_18, v0, 4, 1);
            ov6_02243660(&param0->unk_18, v0, 17, 2);
            ov6_022436D0(&param0->unk_18, v0, 18, 1);

            ov6_02243520(&param0->unk_18, 2);
            ov6_022435F8(&param0->unk_18, 1);
            ov6_02243554(&param0->unk_18, 2);
            ov6_0224362C(&param0->unk_18, 1);
        }

        NARC_dtor(v0);
    }

    param0->unk_00++;
    return 0;
}

static int ov6_02245EA4(UnkStruct_ov6_02249270 *param0)
{
    param0->unk_1D0 = ov6_02243848(&param0->unk_18, param0->unk_0C);
    CellActor_SetDrawFlag(param0->unk_1D0, 1);

    param0->unk_1D8 = ov6_02243888(param0->fieldSystem, param0->unk_1D4, &param0->unk_18, param0->unk_1D0);
    ov6_02243950(param0->unk_1D8);

    param0->unk_00++;
    param0->unk_10 = 1;

    return 0;
}

static int ov6_02245EEC(UnkStruct_ov6_02249270 *param0)
{
    if (ov6_022438BC(param0->unk_1D8) != 2) {
        return 0;
    }

    ov6_022438EC(param0->unk_1D8);
    param0->unk_00++;

    return 0;
}

static int ov6_02245F18(UnkStruct_ov6_02249270 *param0)
{
    sub_0207121C(param0->unk_1D4);
    ov6_0224339C(&param0->unk_18);

    param0->unk_10 = 0;
    param0->unk_04 = 1;
    param0->unk_00++;

    return 0;
}

static int ov6_02245F40(UnkStruct_ov6_02249270 *param0)
{
    return 0;
}

static int (*const Unk_ov6_02249270[])(UnkStruct_ov6_02249270 *) = {
    ov6_02245D48,
    ov6_02245D60,
    ov6_02245EA4,
    ov6_02245EEC,
    ov6_02245F18,
    ov6_02245F40
};

static void *ov6_02245F44(u32 param0, int param1)
{
    void *v0 = Heap_AllocFromHeapAtEnd(param0, param1);

    GF_ASSERT(v0 != NULL);
    memset(v0, 0, param1);

    return v0;
}

static void ov6_02245F64(UnkStruct_ov6_02243FFC *param0, int param1)
{
    MapObject *v0 = Player_MapObject(param0->fieldSystem->playerAvatar);

    sub_02062DDC(v0);
    MapObject_SetHidden(v0, param1);
}

static int ov6_02245F80(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    const UnkStruct_ov6_02245F80 *v0 = sub_020715BC(param0);
    UnkStruct_ov6_02245F80 *v1 = param1;

    *v1 = *v0;
    return 1;
}

static void ov6_02245F94(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    fx32 v0, v1, v2;
    const VecFx32 *v3;
    UnkStruct_ov6_02245F80 *v4 = param1;

    v3 = CellActor_GetPosition(v4->unk_00);
    v0 = v3->y;
    v1 = v4->unk_04->unk_4C;
    v2 = v4->unk_04->unk_50;

    if (v4->unk_04->unk_1C == 0) {
        if (((v0 - (FX32_ONE * 8)) >= v1) && ((v0 + (FX32_ONE * 8)) <= v2)) {
            CellActor_SetDrawFlag(v4->unk_00, 1);
        } else {
            CellActor_SetDrawFlag(v4->unk_00, 0);
        }
    } else {
        CellActor_SetDrawFlag(v4->unk_00, 1);
    }
}

static const UnkStruct_ov101_021D86B0 Unk_ov6_02249234 = {
    sizeof(UnkStruct_ov6_02245F80),
    ov6_02245F80,
    sub_02071600,
    ov6_02245F94,
    sub_020715FC
};

static void ov6_02245FDC(UnkStruct_ov6_02243FFC *param0)
{
    VecFx32 v0 = { 0, 0, 0 };
    UnkStruct_ov6_02245F80 v1;

    v1.unk_00 = param0->unk_248;
    v1.unk_04 = param0;

    param0->unk_254 = sub_02071330(param0->unk_244, &Unk_ov6_02249234, &v0, 0, &v1, 134);
}

static void ov6_02246018(UnkStruct_ov6_02243FFC *param0)
{
    if (param0->unk_254 != NULL) {
        sub_0207136C(param0->unk_254);
        param0->unk_254 = NULL;
    }
}

static const UnkStruct_ov6_02249108 Unk_ov6_02249108[1] = {
    { 0x1, 0xA }
};

static const UnkStruct_ov6_02249108 Unk_ov6_022490F8[1] = {
    { 0x0, 0x3 }
};

static const UnkStruct_ov6_02249108 Unk_ov6_02249118[1] = {
    { 0x1, 0xB }
};

static const UnkStruct_ov6_02249108 Unk_ov6_02249100[1] = {
    { 0x0, 0xC }
};
