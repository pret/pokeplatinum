#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02009714_decl.h"
#include "struct_decls/struct_02009DC8_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/sys_task.h"
#include "struct_decls/struct_020218BC_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_decls/struct_020711EC_decl.h"
#include "pokemon.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"

#include "struct_defs/struct_02008A90.h"
#include "struct_defs/struct_0200C738.h"
#include "struct_defs/struct_0203CDB0.h"
#include "overlay019/struct_ov19_021DA864.h"
#include "overlay083/struct_ov83_0223D9A8.h"
#include "overlay101/struct_ov101_021D86B0.h"

#include "unk_02005474.h"
#include "narc.h"
#include "unk_020093B4.h"
#include "unk_02009714.h"
#include "unk_0200A328.h"
#include "unk_0200D9E8.h"
#include "unk_0200F174.h"
#include "unk_020131EC.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201CCF0.h"
#include "unk_0201D15C.h"
#include "gx_layers.h"
#include "unk_020218BC.h"
#include "unk_0205D8CC.h"
#include "unk_0205E7D0.h"
#include "unk_02061804.h"
#include "unk_020711EC.h"
#include "pokemon.h"
#include "overlay005/ov5_021F0EB0.h"
#include "overlay006/ov6_02243258.h"

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
    Pokemon * unk_5C;
    UnkStruct_0203CDB0 * unk_60;
    NNSG2dScreenData * unk_64;
    NNSG2dCharacterData * unk_68;
    NNSG2dPaletteData * unk_6C;
    UnkStruct_020218BC * unk_70;
    UnkStruct_0200C738 unk_74;
    UnkStruct_02009714 * unk_200;
    UnkStruct_02009714 * unk_204;
    UnkStruct_02009714 * unk_208;
    UnkStruct_02009714 * unk_20C;
    UnkStruct_02009DC8 * unk_210[4];
    UnkStruct_02009DC8 * unk_220[3];
    UnkStruct_02009DC8 * unk_22C[4];
    UnkStruct_02009DC8 * unk_23C[2];
    UnkStruct_020711EC * unk_244;
    UnkStruct_02022550 * unk_248;
    UnkStruct_02022550 * unk_24C;
    UnkStruct_ov101_021D5D90 * unk_250;
    UnkStruct_ov101_021D5D90 * unk_254;
    UnkStruct_02008A90 unk_258;
    int unk_268;
    int unk_26C;
    void * unk_270;
    void * unk_274;
    SysTask * unk_278;
    SysTask * unk_27C;
} UnkStruct_ov6_02243FFC;

typedef struct {
    u32 unk_00;
    u32 unk_04;
} UnkStruct_ov6_02249108;

typedef struct {
    UnkStruct_ov6_02243FFC * unk_00;
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
    UnkStruct_02022550 * unk_58;
    UnkStruct_ov6_0224543C unk_5C;
    UnkStruct_ov101_021D5D90 * unk_60;
    SysTask * unk_64;
} UnkStruct_ov6_02249198;

typedef struct {
    UnkStruct_ov6_02243FFC * unk_00;
    UnkStruct_02022550 * unk_04;
} UnkStruct_ov6_02245B4C;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    VecFx32 unk_10;
    UnkStruct_ov6_02243FFC * unk_1C;
    UnkStruct_02022550 * unk_20;
} UnkStruct_ov6_02245B74;

typedef struct {
    s16 unk_00;
    s16 unk_02;
    UnkStruct_02009DC8 * unk_04;
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
    UnkStruct_020218BC * unk_08;
    UnkStruct_0200C738 unk_0C;
    UnkStruct_02009714 * unk_198;
    UnkStruct_02009714 * unk_19C;
    UnkStruct_02009714 * unk_1A0;
    UnkStruct_02009714 * unk_1A4;
    UnkStruct_ov6_02243258_sub1 * unk_1A8;
    UnkStruct_ov6_02243258_sub1 * unk_1AC;
    UnkStruct_ov6_02243258_sub1 * unk_1B0;
    UnkStruct_ov6_02243258_sub1 * unk_1B4;
} UnkStruct_ov6_02243258;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    UnkStruct_0203CDB0 * unk_14;
    UnkStruct_ov6_02243258 unk_18;
    UnkStruct_02022550 * unk_1D0;
    UnkStruct_020711EC * unk_1D4;
    UnkStruct_ov101_021D5D90 * unk_1D8;
    SysTask * unk_1DC;
} UnkStruct_ov6_02249270;

typedef struct {
    UnkStruct_020711EC * unk_00;
    UnkStruct_0203CDB0 * unk_04;
    UnkStruct_02022550 * unk_08;
    UnkStruct_ov6_02243258 * unk_0C;
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
    UnkStruct_02022550 * unk_68;
    UnkStruct_ov101_021D5D90 * unk_6C;
    SysTask * unk_70;
} UnkStruct_ov6_02249110;

typedef struct {
    int unk_00;
    int unk_04;
    UnkStruct_ov6_02243FFC * unk_08;
    VecFx32 unk_0C;
} UnkStruct_ov6_02245328;

typedef struct {
    int unk_00;
    int unk_04;
    UnkStruct_02022550 * unk_08;
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
    int unk_00;
    int unk_04;
    int unk_08;
    VecFx32 unk_0C;
    VecFx32 unk_18;
    fx32 unk_24;
    fx32 unk_28;
    UnkStruct_02061AB4 * unk_2C;
    UnkStruct_ov6_02243FFC * unk_30;
} UnkStruct_ov100_021D4890;

typedef struct {
    UnkStruct_02022550 * unk_00;
    UnkStruct_ov6_02243FFC * unk_04;
} UnkStruct_ov6_02245F80;

static UnkStruct_ov6_02243FFC * ov6_02243FDC(UnkStruct_0203CDB0 * param0);
static void ov6_02243FFC(UnkStruct_ov6_02243FFC * param0);
static void ov6_02244004(SysTask * param0, void * param1);
static void ov6_022443B8(SysTask * param0, void * param1);
static void ov6_0224464C(UnkStruct_ov6_02243FFC * param0);
static void ov6_02244674(UnkStruct_ov6_02243FFC * param0);
static void ov6_0224469C(UnkStruct_ov6_02243FFC * param0);
static void ov6_022446B8(SysTask * param0, void * param1);
static void ov6_02244734(SysTask * param0, void * param1);
static void ov6_022447B4(SysTask * param0, void * param1);
static void ov6_022447EC(SysTask * param0, void * param1);
static void ov6_0224481C(UnkStruct_ov6_02243FFC * param0);
static void ov6_022448C8(UnkStruct_ov6_02243FFC * param0);
static NARC * ov6_0224491C(void);
static void ov6_02244928(UnkStruct_ov6_02243FFC * param0, NARC * param1);
static void ov6_02244B6C(UnkStruct_ov6_02243FFC * param0);
static void ov6_02244C10(UnkStruct_ov6_02243FFC * param0);
static UnkStruct_02022550 * ov6_02244C20(UnkStruct_ov6_02243FFC * param0, const VecFx32 * param1, u32 param2, u32 param3, u32 param4, u32 param5, int param6, int param7);
static UnkStruct_02022550 * ov6_02244CD4(UnkStruct_ov6_02243FFC * param0, const VecFx32 * param1, int param2, int param3);
static UnkStruct_02022550 * ov6_02244CFC(UnkStruct_ov6_02243FFC * param0, const VecFx32 * param1);
static void ov6_02244D34(UnkStruct_02022550 * param0);
static UnkStruct_02022550 * ov6_02244D4C(UnkStruct_ov6_02243FFC * param0, const VecFx32 * param1, int param2, int param3);
static void ov6_02244DB4(UnkStruct_ov6_02243FFC * param0);
static void ov6_02244E54(NARC * param0, u32 param1, NNSG2dPaletteData ** param2);
static void ov6_02244E7C(BGL * param0, NARC * param1, u32 param2, NNSG2dCharacterData ** param3);
static void ov6_02244EB4(BGL * param0, NARC * param1, u32 param2, NNSG2dScreenData ** param3);
static void ov6_02244F20(BGL * param0);
static void ov6_02244F2C(UnkStruct_ov6_02243FFC * param0);
static void ov6_02244F50(UnkStruct_ov6_02243FFC * param0);
static void ov6_02244F58(UnkStruct_ov6_02243FFC * param0);
static void ov6_02244F60(UnkStruct_ov6_02243FFC * param0);
static void ov6_02244F74(UnkStruct_ov6_02243FFC * param0);
static void ov6_02244F80(UnkStruct_ov6_02243FFC * param0, fx32 param1, fx32 param2, fx32 param3, fx32 param4);
static void ov6_02244F8C(UnkStruct_ov6_02243FFC * param0);
static void ov6_02244FB4(UnkStruct_ov6_02243FFC * param0);
static void ov6_02244FE4(SysTask * param0, void * param1);
static void ov6_0224508C(UnkStruct_ov6_02243FFC * param0, UnkStruct_02008A90 * param1);
static void * ov6_0224509C(Pokemon * param0, UnkStruct_02008A90 * param1, u32 param2);
static void * ov6_022450E4(UnkStruct_02008A90 * param0, u32 param1);
static UnkStruct_02009DC8 * ov6_022450F4(UnkStruct_ov6_02243FFC * param0, NARC * param1);
static void ov6_02245118(UnkStruct_ov6_02243FFC * param0, void * param1);
static UnkStruct_02009DC8 * ov6_0224514C(UnkStruct_ov6_02243FFC * param0, NARC * param1);
static void ov6_02245170(UnkStruct_ov6_02243FFC * param0, void * param1);
static void ov6_022451B8(UnkStruct_ov6_02243FFC * param0);
static UnkStruct_02022550 * ov6_0224529C(UnkStruct_ov6_02243FFC * param0, const VecFx32 * param1);
static void ov6_022452BC(UnkStruct_ov6_02243FFC * param0, int param1);
static void ov6_02245328(UnkStruct_ov6_02243FFC * param0, const VecFx32 * param1, const VecFx32 * param2, int param3, int param4, int param5);
static void ov6_0224543C(UnkStruct_ov6_02243FFC * param0);
static void ov6_0224543C(UnkStruct_ov6_02243FFC * param0);
static int ov6_02245470(UnkStruct_ov6_02243FFC * param0);
static void ov6_02245480(UnkStruct_ov6_02243FFC * param0);
static void ov6_0224551C(UnkStruct_ov6_02243FFC * param0);
static void ov6_022456D4(UnkStruct_ov6_02243FFC * param0);
static UnkStruct_ov101_021D5D90 * ov6_02245B4C(UnkStruct_020711EC * param0, UnkStruct_02022550 * param1);
static void ov6_02245B74(UnkStruct_ov101_021D5D90 * param0);
static void ov6_02245B80(UnkStruct_ov101_021D5D90 * param0);
static void ov6_02245BC8(UnkStruct_ov101_021D5D90 * param0);
static void ov6_02245F64(UnkStruct_ov6_02243FFC * param0, int param1);
static void ov6_02245FDC(UnkStruct_ov6_02243FFC * param0);
static void ov6_02246018(UnkStruct_ov6_02243FFC * param0);
static void ov6_02243F2C(void);
static void ov6_02243F50(void);
static void * ov6_02245F44(u32 param0, int param1);
static void ov6_02243F74(UnkStruct_0203CDB0 * param0, int param1);
static void ov6_02245D10(SysTask * param0, void * param1);

int(*const Unk_ov6_022492D8[])(UnkStruct_ov6_02243FFC *);
int(*const Unk_ov6_02249310[])(UnkStruct_ov6_02243FFC *);
static const UnkStruct_ov101_021D86B0 Unk_ov6_02249248;
int(*const * const Unk_ov6_02249198[])(UnkStruct_ov6_02249198 *);
int(*const Unk_ov6_022490E8[])(UnkStruct_ov6_02249198 *);
int(*const Unk_ov6_022490F0[])(UnkStruct_ov6_02249198 *);
int(*const Unk_ov6_022491EC[])(UnkStruct_ov6_02249198 *);
static const UnkStruct_ov101_021D86B0 Unk_ov6_0224920C;
static const UnkStruct_ov6_02249108 Unk_ov6_02249108[1];
static const UnkStruct_ov6_02249108 Unk_ov6_022490F8[1];
static const UnkStruct_ov6_02249108 Unk_ov6_02249118[1];
static const UnkStruct_ov6_02249108 Unk_ov6_02249100[1];

static void ov6_02243258 (UnkStruct_ov6_02243258 * param0, int param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8, int param9)
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

    param0->unk_198 = sub_02009714(param2, 0, 4);
    param0->unk_19C = sub_02009714(param3, 1, 4);
    param0->unk_1A0 = sub_02009714(param4, 2, 4);
    param0->unk_1A4 = sub_02009714(param5, 3, 4);
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

static void ov6_0224339C (UnkStruct_ov6_02243258 * param0)
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
            sub_02009D4C(param0->unk_1B0[v0].unk_04);
        }
    }

    for (v0 = 0; v0 < param0->unk_03; v0++) {
        if (param0->unk_1B4[v0].unk_00 != param0->unk_07) {
            sub_02009D4C(param0->unk_1B4[v0].unk_04);
        }
    }

    sub_02009754(param0->unk_198);
    sub_02009754(param0->unk_19C);
    sub_02009754(param0->unk_1A0);
    sub_02009754(param0->unk_1A4);
    Heap_FreeToHeap(param0->unk_1A8);
    Heap_FreeToHeap(param0->unk_1AC);
    Heap_FreeToHeap(param0->unk_1B0);
    Heap_FreeToHeap(param0->unk_1B4);
    sub_020219C0(param0->unk_08);
    sub_02021964(param0->unk_08);
}

static void ov6_022434B0 (UnkStruct_ov6_02243258 * param0, NARC * param1, int param2, int param3)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_00; v0++) {
        if (param0->unk_1A8[v0].unk_00 == param0->unk_04) {
            param0->unk_1A8[v0].unk_00 = param3;
            param0->unk_1A8[v0].unk_02 = 0;
            param0->unk_1A8[v0].unk_04 = sub_02009A4C(param0->unk_198, param1, param2, 0, param3, NNS_G2D_VRAM_TYPE_2DMAIN, 4);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static void ov6_02243520 (UnkStruct_ov6_02243258 * param0, int param1)
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

static void ov6_02243554 (UnkStruct_ov6_02243258 * param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_00; v0++) {
        if (param0->unk_1A8[v0].unk_00 == param1) {
            sub_02009D4C(param0->unk_1A8[v0].unk_04);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static void ov6_02243588 (UnkStruct_ov6_02243258 * param0, NARC * param1, int param2, int param3)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_00; v0++) {
        if (param0->unk_1AC[v0].unk_00 == param0->unk_05) {
            param0->unk_1AC[v0].unk_00 = param3;
            param0->unk_1AC[v0].unk_02 = 0;
            param0->unk_1AC[v0].unk_04 = sub_02009B04(
                param0->unk_19C, param1, param2, 0, param3, NNS_G2D_VRAM_TYPE_2DMAIN, 1, 4);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static void ov6_022435F8 (UnkStruct_ov6_02243258 * param0, int param1)
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

static void ov6_0224362C (UnkStruct_ov6_02243258 * param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_01; v0++) {
        if (param0->unk_1AC[v0].unk_00 == param1) {
            sub_02009D4C(param0->unk_1AC[v0].unk_04);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static void ov6_02243660 (UnkStruct_ov6_02243258 * param0, NARC * param1, int param2, int param3)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_00; v0++) {
        if (param0->unk_1B0[v0].unk_00 == param0->unk_06) {
            param0->unk_1B0[v0].unk_00 = param3;
            param0->unk_1B0[v0].unk_02 = 0;
            param0->unk_1B0[v0].unk_04 = sub_02009BC4(
                param0->unk_1A0, param1, param2, 0, param3, 2, 4);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static void ov6_022436D0 (UnkStruct_ov6_02243258 * param0, NARC * param1, int param2, int param3)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_00; v0++) {
        if (param0->unk_1B4[v0].unk_00 == param0->unk_07) {
            param0->unk_1B4[v0].unk_00 = param3;
            param0->unk_1B4[v0].unk_02 = 0;
            param0->unk_1B4[v0].unk_04 = sub_02009BC4(
                param0->unk_1A4, param1, param2, 0, param3, 3, 4);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static UnkStruct_02022550 * ov6_02243740 (UnkStruct_ov6_02243258 * param0, const VecFx32 * param1, u32 param2, u32 param3, u32 param4, u32 param5, int param6, int param7)
{
    UnkStruct_ov19_021DA864 v0;
    UnkStruct_ov83_0223D9A8 v1;
    UnkStruct_02022550 * v2;

    if (param5 == param0->unk_07) {
        param5 = 0xffffffff;
    }

    sub_020093B4(
        &v0, param2, param3, param4, param5, 0xffffffff, 0xffffffff, 0, param6, param0->unk_198, param0->unk_19C, param0->unk_1A0, param0->unk_1A4, NULL, NULL);

    v1.unk_00 = param0->unk_08;
    v1.unk_04 = &v0;
    v1.unk_08 = *param1;
    v1.unk_14 = param7;
    v1.unk_18 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.unk_1C = 4;
    v2 = sub_02021B90(&v1);

    GF_ASSERT(v2 != NULL);
    return v2;
}

static void ov6_022437C8 (UnkStruct_02022550 * param0, VecFx32 * param1)
{
    const VecFx32 * v0 = sub_02021D28(param0);
    *param1 = *v0;
}

static UnkStruct_02022550 * ov6_022437DC (UnkStruct_ov6_02243258 * param0)
{
    UnkStruct_02022550 * v0;
    VecFx32 v1 = {0, 0, 0};
    VecFx32 v2 = {0, 0, 0};
    VecFx32 v3 = {0x1000, 0x1000, 0};

    v0 = ov6_02243740(param0, &v1, 0, 0, 0, 2, 0, 132);

    sub_02021CF8(v0, 2);
    sub_02021C60(v0, &v2);
    sub_02021C70(v0, &v3);
    sub_02021C94(v0, sub_0201D2A4(0));

    return v0;
}

static UnkStruct_02022550 * ov6_02243848 (UnkStruct_ov6_02243258 * param0, int param1)
{
    VecFx32 v0 = {0, 0, 0};
    UnkStruct_02022550 * v1;
    u32 v2 = 0;

    if (param1 == 1) {
        v2 = 1;
    }

    v1 = ov6_02243740(param0, &v0, 2, v2, 2, 1, 0, 131);

    sub_02021CAC(v1, 0);
    sub_02021D6C(v1, 6);

    return v1;
}

static const UnkStruct_ov101_021D86B0 Unk_ov6_0224925C;
int(*const * const Unk_ov6_02249110[])(UnkStruct_ov6_02249110 *);

static UnkStruct_ov101_021D5D90 * ov6_02243888 (UnkStruct_0203CDB0 * param0, UnkStruct_020711EC * param1, UnkStruct_ov6_02243258 * param2, UnkStruct_02022550 * param3)
{
    UnkStruct_ov101_021D5D90 * v0;
    VecFx32 v1 = {0, 0, 0};
    UnkStruct_ov6_02243888 v2;

    v2.unk_04 = param0;
    v2.unk_00 = param1;
    v2.unk_0C = param2;
    v2.unk_08 = param3;

    v0 = sub_02071330(param1, &Unk_ov6_0224925C, &v1, 0, &v2, 130);

    return v0;
}

static int ov6_022438BC (UnkStruct_ov101_021D5D90 * param0)
{
    UnkStruct_ov6_02249110 * v0 = sub_02071598(param0);
    return v0->unk_02;
}

static int ov6_022438C8 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    UnkStruct_ov6_02249110 * v0 = param1;
    const UnkStruct_ov6_02243888 * v1 = sub_020715BC(param0);

    v0->unk_58 = *v1;
    v0->unk_68 = ov6_022437DC(v0->unk_58.unk_0C);

    return 1;
}

static void ov6_022438EC (UnkStruct_ov101_021D5D90 * param0)
{
    UnkStruct_ov6_02249110 * v0 = sub_02071598(param0);

    if (v0->unk_6C) {
        sub_0207136C(v0->unk_6C);
    }

    if (v0->unk_70) {
        ov5_021F0EFC(v0->unk_70);
    }

    sub_0207136C(param0);
}

static void ov6_02243914 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    UnkStruct_ov6_02249110 * v0 = param1;
    sub_02021BD4(v0->unk_68);
}

static void ov6_02243920 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    UnkStruct_ov6_02249110 * v0 = param1;
    int(*const * v1)(UnkStruct_ov6_02249110 *);

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

static int ov6_02243940 (UnkStruct_ov6_02249110 * param0)
{
    param0->unk_02 = 0;
    sub_02021CAC(param0->unk_68, 0);
    return 0;
}

static int(*const Unk_ov6_022490EC[])(UnkStruct_ov6_02249110 *) = {
    ov6_02243940,
};

static void ov6_02243950 (UnkStruct_ov101_021D5D90 * param0)
{
    VecFx32 v0 = {(FX32_ONE * 128), (FX32_ONE * 111), 0};
    VecFx32 v1 = {0x2000, 0x2000, 0};
    UnkStruct_ov6_02249110 * v2 = sub_02071598(param0);

    v2->unk_00 = 1;
    v2->unk_02 = 0;
    v2->unk_01 = 0;
    v2->unk_04 = 0;
    v2->unk_08 = v0;
    v2->unk_14.x = 0; v2->unk_14.y = 0; v2->unk_14.z = 0;
    v2->unk_38 = (FX32_ONE * 350);
    v2->unk_2C = v1;
    v2->unk_50 = 0x400;
    v2->unk_40 = (FX32_ONE * 45);
    v2->unk_48 = (FX32_ONE * (128 + 64));
    v2->unk_4C = (FX32_ONE * 32);
    v2->unk_14.x = sub_0201D264(45) * ((v2->unk_48) / FX32_ONE);
    v2->unk_14.y = sub_0201D250(((v2->unk_40) / FX32_ONE)) * ((v2->unk_48) / FX32_ONE);

    v0.x = v2->unk_08.x + v2->unk_14.x;
    v0.y = v2->unk_08.y + v2->unk_14.y;

    sub_02021C50(v2->unk_68, &v0);
    sub_02021C70(v2->unk_68, &v1);
    sub_02021C94(v2->unk_68, sub_0201D2A4(((v2->unk_38) / FX32_ONE)));
    sub_02021F58(v2->unk_68, 132);
    sub_02021CAC(v2->unk_68, 1);

    v2->unk_6C = ov6_02245B4C(v2->unk_58.unk_00, v2->unk_58.unk_08);
    v2->unk_70 = ov5_021F0EB0(v2->unk_58.unk_04, 4);

    ov5_021F0F10(v2->unk_70, 1, -((FX32_ONE * 120)), 12);

    {
        UnkStruct_02022550 * v3;
        VecFx32 v4 = {0, 0, 0};
        VecFx32 v5 = {0x2000, 0x2000, 0};

        v3 = v2->unk_58.unk_08;

        sub_02021CF8(v3, 2);
        sub_02021C60(v3, &v4);
        sub_02021C70(v3, &v5);
        sub_02021C94(v3, sub_0201D2A4(0));
        sub_02021D6C(v3, 2);
    }

    ov6_02243F2C();
}

static int ov6_02243AB8 (UnkStruct_ov6_02249110 * param0)
{
    VecFx32 v0;
    UnkStruct_02022550 * v1 = param0->unk_68;
    UnkStruct_02022550 * v2 = param0->unk_58.unk_08;

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
    param0->unk_14.y = sub_0201D250(((param0->unk_40) / FX32_ONE)) * ((param0->unk_48) / FX32_ONE);

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

    sub_02021C70(v1, &param0->unk_2C);
    sub_02021C70(v2, &param0->unk_2C);

    v0.x = param0->unk_08.x + param0->unk_14.x;
    v0.y = param0->unk_08.y + param0->unk_14.y;

    sub_02021C50(v1, &v0);
    v0.y -= (FX32_ONE * 18);
    sub_02021C50(v2, &v0);

    if (param0->unk_48 == 0) {
        param0->unk_04 = 0;
        param0->unk_01++;
    } else {
        param0->unk_04++;
    }

    return 0;
}

static int ov6_02243BB8 (UnkStruct_ov6_02249110 * param0)
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

static int ov6_02243BEC (UnkStruct_ov6_02249110 * param0)
{
    VecFx32 v0;
    UnkStruct_02022550 * v1 = param0->unk_68;

    param0->unk_48 += param0->unk_4C;
    param0->unk_4C += 0x1000;

    if (param0->unk_4C > (FX32_ONE * 16)) {
        param0->unk_4C = (FX32_ONE * 16);
    }

    param0->unk_14.x = sub_0201D264(((param0->unk_40) / FX32_ONE)) * ((param0->unk_48) / FX32_ONE);
    param0->unk_14.y = sub_0201D250(128) * ((param0->unk_48) / FX32_ONE);

    if (param0->unk_40 < (FX32_ONE * 160)) {
        param0->unk_40 += 0x1000;
    }

    param0->unk_38 += 0x2000;
    sub_02021C94(v1, sub_0201D2A4(((param0->unk_38) / FX32_ONE)));
    param0->unk_2C.x += param0->unk_50;

    if (param0->unk_2C.x > 0x1000) {
        param0->unk_2C.x = 0x1000;
    }

    param0->unk_2C.y += param0->unk_50;

    if (param0->unk_2C.y > 0x1000) {
        param0->unk_2C.y = 0x1000;
    }

    sub_02021C70(v1, &param0->unk_2C);

    v0.x = param0->unk_08.x + param0->unk_14.x;
    v0.y = param0->unk_08.y - param0->unk_14.y;

    sub_02021C50(v1, &v0);

    if (((v0.y) / FX32_ONE) <= -16) {
        param0->unk_01++;
    }

    return 0;
}

static int ov6_02243CD8 (UnkStruct_ov6_02249110 * param0)
{
    sub_02021CAC(param0->unk_68, 0);
    sub_02021D6C(param0->unk_58.unk_08, 1);

    param0->unk_04 = 0;
    param0->unk_01++;

    return 1;
}

static int ov6_02243CFC (UnkStruct_ov6_02249110 * param0)
{
    param0->unk_04++;

    if (param0->unk_04 < 20) {
        return 0;
    }

    {
        VecFx32 v0 = {(FX32_ONE * (128 + 8)), (FX32_ONE * (111 - 32)), 0};
        VecFx32 v1 = {0x1000, 0x1000, 0};

        param0->unk_04 = 0;
        param0->unk_08 = v0;
        param0->unk_14.x = 0; param0->unk_14.y = 0; param0->unk_14.z = 0;
        param0->unk_38 = (FX32_ONE * 0);
        param0->unk_2C = v1;
        param0->unk_50 = 0x200;
        param0->unk_40 = (FX32_ONE * 315);
        param0->unk_48 = (FX32_ONE * 128);
        param0->unk_4C = 0x2000;

        sub_02021C50(param0->unk_68, &v0);
        sub_02021C70(param0->unk_68, &v1);
        sub_02021C94(param0->unk_68, sub_0201D2A4(((param0->unk_38) / FX32_ONE)));
        sub_02021CAC(param0->unk_68, 1);
        sub_02021D6C(param0->unk_58.unk_08, 6);
        sub_02021CC8(param0->unk_58.unk_08, 1);
    }

    param0->unk_01++;
    return 1;
}

static int ov6_02243DC0 (UnkStruct_ov6_02249110 * param0)
{
    VecFx32 v0;
    UnkStruct_02022550 * v1 = param0->unk_68;

    param0->unk_48 -= param0->unk_4C;

    if (param0->unk_4C < (FX32_ONE * 16)) {
        param0->unk_4C += 0x2000;
    }

    if (param0->unk_48 < 0) {
        param0->unk_48 = 0;
    }

    param0->unk_14.x = sub_0201D264(315) * ((param0->unk_48) / FX32_ONE);
    param0->unk_14.y = sub_0201D250(((param0->unk_40) / FX32_ONE)) * ((param0->unk_48) / FX32_ONE);

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

    sub_02021C70(v1, &param0->unk_2C);
    param0->unk_38 += 0x6000;

    if (((param0->unk_38) / FX32_ONE) > 60) {
        param0->unk_38 = (FX32_ONE * 60);
    }

    sub_02021C94(v1, sub_0201D2A4(((param0->unk_38) / FX32_ONE)));

    v0.x = param0->unk_08.x + param0->unk_14.x;
    v0.y = param0->unk_08.y + param0->unk_14.y;

    sub_02021C50(v1, &v0);

    if (param0->unk_48 <= 0) {
        sub_02021CAC(v1, 0);
        param0->unk_01++;
    }

    return 0;
}

static int ov6_02243ECC (UnkStruct_ov6_02249110 * param0)
{
    param0->unk_04++;

    if (param0->unk_04 == 8) {
        sub_02021D6C(param0->unk_58.unk_08, 1);
        ov6_02243F74(param0->unk_58.unk_04, 0);
    }

    if (param0->unk_04 == 10) {
        sub_02021CAC(param0->unk_58.unk_08, 0);
    }

    if ((param0->unk_04 > 15) && (ov5_021F0EF0(param0->unk_70) == 1)) {
        param0->unk_04 = 0;
        param0->unk_01++;
        param0->unk_02 = 2;
    }

    return 0;
}

static int ov6_02243F1C (UnkStruct_ov6_02249110 * param0)
{
    return 0;
}

static int(*const Unk_ov6_02249288[])(UnkStruct_ov6_02249110 *) = {
    ov6_02243AB8,
    ov6_02243BB8,
    ov6_02243BEC,
    ov6_02243CD8,
    ov6_02243CFC,
    ov6_02243DC0,
    ov6_02243ECC,
    ov6_02243F1C
};

static int(*const * const Unk_ov6_02249110[])(UnkStruct_ov6_02249110 *) = {
    Unk_ov6_022490EC,
    Unk_ov6_02249288
};

static NARC * ov6_02243F20 (void)
{
    return NARC_ctor(NARC_INDEX_DATA__FIELD_CUTIN, 4);
}

static void ov6_02243F2C (void)
{
    sub_0200F174(0, 1, 1, 0x7fff, 6, 1, 4);
}

static void ov6_02243F50 (void)
{
    sub_0200F174(0, 0, 0, 0x7fff, 6, 1, 4);
}

static void ov6_02243F74 (UnkStruct_0203CDB0 * param0, int param1)
{
    UnkStruct_02061AB4 * v0 = sub_0205EB3C(param0->unk_3C);
    sub_02062D64(v0, param1);
}

SysTask * ov6_02243F88 (UnkStruct_0203CDB0 * param0, u32 param1, Pokemon * param2, int param3)
{
    SysTask * v0;
    UnkStruct_ov6_02243FFC * v1 = ov6_02243FDC(param0);

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

int ov6_02243FBC (SysTask * param0)
{
    UnkStruct_ov6_02243FFC * v0 = sub_0201CED0(param0);
    return v0->unk_04;
}

void ov6_02243FC8 (SysTask * param0)
{
    UnkStruct_ov6_02243FFC * v0 = sub_0201CED0(param0);

    ov6_02243FFC(v0);
    SysTask_Done(param0);
}

static UnkStruct_ov6_02243FFC * ov6_02243FDC (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_ov6_02243FFC * v0 = Heap_AllocFromHeapAtEnd(4, (sizeof(UnkStruct_ov6_02243FFC)));

    memset(v0, 0, (sizeof(UnkStruct_ov6_02243FFC)));
    v0->unk_60 = param0;

    return v0;
}

static void ov6_02243FFC (UnkStruct_ov6_02243FFC * param0)
{
    Heap_FreeToHeap(param0);
}

static void ov6_02244004 (SysTask * param0, void * param1)
{
    int v0;
    UnkStruct_ov6_02243FFC * v1 = param1;

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

static int ov6_02244038 (UnkStruct_ov6_02243FFC * param0)
{
    ov6_0224481C(param0);
    ov6_0224464C(param0);
    param0->unk_00++;
    return 0;
}

static int ov6_02244050 (UnkStruct_ov6_02243FFC * param0)
{
    if (param0->unk_26C == 0) {
        return 0;
    }

    {
        VecFx32 v0 = {(FX32_ONE * 128), (FX32_ONE * 96), 0};
        VecFx32 v1 = {(FX32_ONE * (256 + 40)), (FX32_ONE * 96), 0};

        param0->unk_248 = ov6_02244CFC(param0, &v0);
        param0->unk_24C = ov6_0224529C(param0, &v1);

        ov6_022452BC(param0, 1);
    }

    ov6_0224469C(param0);

    param0->unk_10 = 1;
    param0->unk_00++;

    return 1;
}

static int ov6_022440C0 (UnkStruct_ov6_02243FFC * param0)
{
    ov6_02245FDC(param0);

    param0->unk_2C = 0;
    param0->unk_54 = (FX32_ONE * -64);
    param0->unk_44 = (FX32_ONE * 254);
    param0->unk_48 = (FX32_ONE * 255);
    param0->unk_4C = (FX32_ONE * ((96 - 1)));
    param0->unk_50 = (FX32_ONE * ((96 + 1)));
    param0->unk_2C = 1;
    param0->unk_00++;

    return 0;
}

static int ov6_022440F8 (UnkStruct_ov6_02243FFC * param0)
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

static int ov6_02244138 (UnkStruct_ov6_02243FFC * param0)
{
    param0->unk_2C = 0;
    param0->unk_4C -= param0->unk_54;
    param0->unk_50 += param0->unk_54;
    param0->unk_54 += 0x2000;

    if (param0->unk_54 > (FX32_ONE * 32)) {
        param0->unk_54 = (FX32_ONE * 32);
    }

    if (param0->unk_4C < (FX32_ONE * ((96 - 40)))) {
        param0->unk_4C = (FX32_ONE * ((96 - 40)));
    }

    if (param0->unk_50 > (FX32_ONE * ((96 + 40)))) {
        param0->unk_50 = (FX32_ONE * ((96 + 40)));
    }

    ov6_02244F80(param0, param0->unk_44, param0->unk_4C, param0->unk_48, param0->unk_50);
    param0->unk_2C = 1;

    if ((param0->unk_4C == (FX32_ONE * ((96 - 40)))) && (param0->unk_50 == (FX32_ONE * ((96 + 40))))) {
        ov6_02244D34(param0->unk_248);
        param0->unk_00++;
    }

    return 0;
}

static int ov6_022441BC (UnkStruct_ov6_02243FFC * param0)
{
    param0->unk_08++;

    if (param0->unk_08 >= 15) {
        param0->unk_08 = 0;
        param0->unk_58 = (FX32_ONE * -64);
        param0->unk_00++;
    }

    return 0;
}

static int ov6_022441DC (UnkStruct_ov6_02243FFC * param0)
{
    const VecFx32 * v0;
    VecFx32 v1;

    v0 = sub_02021D28(param0->unk_24C);
    v1 = *v0;
    v1.x += param0->unk_58;

    if (v1.x <= (FX32_ONE * (128 + 32))) {
        v1.x = (FX32_ONE * (128 + 64));
        param0->unk_00++;
    }

    sub_02021C50(param0->unk_24C, &v1);
    return 0;
}

static int ov6_02244228 (UnkStruct_ov6_02243FFC * param0)
{
    const VecFx32 * v0;
    VecFx32 v1;

    param0->unk_58 /= 2;

    if (param0->unk_58 > (FX32_ONE * -2)) {
        param0->unk_58 = (FX32_ONE * -2);
        param0->unk_00++;

        {
            sub_02077E3C(param0->unk_5C);
        }
    }

    v0 = sub_02021D28(param0->unk_24C);
    v1 = *v0;
    v1.x += param0->unk_58;

    sub_02021C50(param0->unk_24C, &v1);
    return 0;
}

static int ov6_02244284 (UnkStruct_ov6_02243FFC * param0)
{
    param0->unk_08++;

    if (param0->unk_08 >= 8) {
        param0->unk_08 = 0;
        param0->unk_58 = (FX32_ONE * -1);
        param0->unk_00++;
    }

    return 0;
}

static int ov6_022442A4 (UnkStruct_ov6_02243FFC * param0)
{
    const VecFx32 * v0;
    VecFx32 v1;

    param0->unk_58 *= 2;

    if (param0->unk_58 < (FX32_ONE * -64)) {
        param0->unk_58 = (FX32_ONE * -64);
    }

    v0 = sub_02021D28(param0->unk_24C);
    v1 = *v0;
    v1.x += param0->unk_58;

    sub_02021C50(param0->unk_24C, &v1);

    if (v1.x <= (FX32_ONE * -40)) {
        param0->unk_54 = 0x1000;
        param0->unk_00++;
    }

    return 0;
}

static int ov6_02244308 (UnkStruct_ov6_02243FFC * param0)
{
    param0->unk_2C = 0;
    param0->unk_4C += param0->unk_54;
    param0->unk_50 -= param0->unk_54;
    param0->unk_54 += 0x4000;

    if (param0->unk_54 > (FX32_ONE * 32)) {
        param0->unk_54 = (FX32_ONE * 32);
    }

    if (param0->unk_4C >= (FX32_ONE * ((96 - 8)))) {
        param0->unk_4C = (FX32_ONE * ((96 - 8)));
    }

    if (param0->unk_50 <= (FX32_ONE * ((96 + 8)))) {
        param0->unk_50 = (FX32_ONE * ((96 + 8)));
    }

    ov6_02244F80(param0, param0->unk_44, param0->unk_4C, param0->unk_48, param0->unk_50);
    param0->unk_2C = 1;

    if ((param0->unk_4C == (FX32_ONE * ((96 - 8)))) && (param0->unk_50 == (FX32_ONE * ((96 + 8))))) {
        ov6_02246018(param0);
        param0->unk_00++;
    }

    return 0;
}

static int ov6_02244388 (UnkStruct_ov6_02243FFC * param0)
{
    ov6_022448C8(param0);
    param0->unk_10 = 0;
    param0->unk_00++;
    return 0;
}

static int ov6_0224439C (UnkStruct_ov6_02243FFC * param0)
{
    ov6_02244FB4(param0);
    param0->unk_00++;
    return 0;
}

static int ov6_022443B0 (UnkStruct_ov6_02243FFC * param0)
{
    param0->unk_04 = 1;
    return 0;
}

static int(*const Unk_ov6_022492D8[])(UnkStruct_ov6_02243FFC *) = {
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

static void ov6_022443B8 (SysTask * param0, void * param1)
{
    int v0;
    UnkStruct_ov6_02243FFC * v1 = param1;

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

static int ov6_022443EC (UnkStruct_ov6_02243FFC * param0)
{
    if (param0->unk_26C == 0) {
        return 0;
    }

    {
        VecFx32 v0 = {(FX32_ONE * 128), (FX32_ONE * 96), 0};
        VecFx32 v1 = {(FX32_ONE * (256 + 40)), (FX32_ONE * 96), 0};

        param0->unk_248 = ov6_02244CFC(param0, &v0);
        param0->unk_24C = ov6_0224529C(param0, &v1);
        ov6_022452BC(param0, 1);
    }

    ov6_0224469C(param0);

    param0->unk_10 = 1;
    param0->unk_00++;

    return 1;
}

static int ov6_0224445C (UnkStruct_ov6_02243FFC * param0)
{
    ov6_022451B8(param0);
    param0->unk_00++;
    return 0;
}

static int ov6_02244470 (UnkStruct_ov6_02243FFC * param0)
{
    ov6_02244DB4(param0);
    ov6_02244674(param0);
    param0->unk_00++;
    return 0;
}

static int ov6_02244488 (UnkStruct_ov6_02243FFC * param0)
{
    if (param0->unk_26C == 0) {
        return 0;
    }

    ov6_0224469C(param0);

    param0->unk_00++;
    return 1;
}

static int ov6_022444A8 (UnkStruct_ov6_02243FFC * param0)
{
    ov6_0224543C(param0);
    ov6_0224551C(param0);
    ov6_02244F74(param0);
    ov6_02245F64(param0, 1);
    param0->unk_00++;
    return 0;
}

static int ov6_022444D0 (UnkStruct_ov6_02243FFC * param0)
{
    if (ov6_02245470(param0) != 2) {
        return 0;
    }

    sub_02021D6C(param0->unk_248, 1);
    param0->unk_00++;

    return 0;
}

static int ov6_022444F8 (UnkStruct_ov6_02243FFC * param0)
{
    param0->unk_08++;

    if (param0->unk_08 >= 20) {
        param0->unk_08 = 0;
        param0->unk_00++;

        ov6_022456D4(param0);
    }

    return 1;
}

static int ov6_02244518 (UnkStruct_ov6_02243FFC * param0)
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

static int ov6_02244548 (UnkStruct_ov6_02243FFC * param0)
{
    param0->unk_2C = 0;
    param0->unk_4C += param0->unk_54;
    param0->unk_50 -= param0->unk_54;
    param0->unk_54 += 0x800;

    if (param0->unk_54 > (FX32_ONE * 16)) {
        param0->unk_54 = (FX32_ONE * 16);
    }

    if (param0->unk_4C >= (FX32_ONE * ((96 - 1)))) {
        param0->unk_4C = (FX32_ONE * ((96 - 1)));
    }

    if (param0->unk_50 <= (FX32_ONE * ((96 + 1)))) {
        param0->unk_50 = (FX32_ONE * ((96 + 1)));
    }

    ov6_02244F80(param0, param0->unk_44, param0->unk_4C, param0->unk_48, param0->unk_50);
    param0->unk_2C = 1;

    if (param0->unk_18 == 0) {
        if (ov6_02245470(param0) == 4) {
            param0->unk_18 = 1;

            ov6_02243F50();
        }
    }

    if ((param0->unk_4C == (FX32_ONE * ((96 - 1)))) && (param0->unk_50 == (FX32_ONE * ((96 + 1))))) {
        ov6_02244F20(param0->unk_60->unk_08);
        param0->unk_14 = 1;
        ov6_02244F58(param0);
        param0->unk_00++;
    }

    return 0;
}

static int ov6_022445EC (UnkStruct_ov6_02243FFC * param0)
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

static int ov6_02244634 (UnkStruct_ov6_02243FFC * param0)
{
    if (ScreenWipe_Done()) {
        param0->unk_00++;
    }

    return 0;
}

static int(*const Unk_ov6_02249310[])(UnkStruct_ov6_02243FFC *) = {
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

static void ov6_0224464C (UnkStruct_ov6_02243FFC * param0)
{
    param0->unk_268 = 0;
    param0->unk_26C = 0;
    param0->unk_278 = sub_0200DA04(ov6_022446B8, param0, 0x80);
}

static void ov6_02244674 (UnkStruct_ov6_02243FFC * param0)
{
    param0->unk_268 = 0;
    param0->unk_26C = 0;
    param0->unk_278 = sub_0200DA04(ov6_022447B4, param0, 0x80);
}

static void ov6_0224469C (UnkStruct_ov6_02243FFC * param0)
{
    if (param0->unk_278 != NULL) {
        SysTask_Done(param0->unk_278);
        param0->unk_278 = NULL;
    }
}

static void ov6_022446B8 (SysTask * param0, void * param1)
{
    int v0;
    UnkStruct_ov6_02243FFC * v1 = param1;

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
        sub_0200DA3C(ov6_02244734, v1, 0x80);

        break;
    }
}

static void ov6_02244734 (SysTask * param0, void * param1)
{
    int v0;
    UnkStruct_ov6_02243FFC * v1 = param1;

    if (v1->unk_268 == 1) {
        for (v0 = 0; v0 < 4; v0++) {
            if (v1->unk_210[v0] != NULL) {
                sub_02009D4C(v1->unk_210[v0]);
            }
        }

        for (v0 = 0; v0 < 3; v0++) {
            if (v1->unk_220[v0] != NULL) {
                sub_02009D4C(v1->unk_220[v0]);
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

static void ov6_022447B4 (SysTask * param0, void * param1)
{
    UnkStruct_ov6_02243FFC * v0 = param1;
    UnkStruct_02009DC8 * v1 = sub_02009DC8(v0->unk_200, 0);

    switch (v0->unk_268) {
    case 0:
        sub_0200A3DC(v1);
        sub_0200DA3C(ov6_022447EC, v0, 0x80);
        v0->unk_268++;
        break;
    }
}

static void ov6_022447EC (SysTask * param0, void * param1)
{
    UnkStruct_ov6_02243FFC * v0 = param1;
    UnkStruct_02009DC8 * v1 = sub_02009DC8(v0->unk_200, 0);

    if (v0->unk_268 == 1) {
        sub_02009D4C(v1);
        v0->unk_26C = 1;
        SysTask_Done(param0);
    }
}

static void ov6_0224481C (UnkStruct_ov6_02243FFC * param0)
{
    NARC * v0 = ov6_0224491C();

    ov6_02244F80(param0, (FX32_ONE * 0), (FX32_ONE * 192), (FX32_ONE * 1), (FX32_ONE * 192));
    ov6_02244F2C(param0);

    param0->unk_24 = sub_0201A008(param0->unk_60->unk_08, 0);
    param0->unk_26 = sub_0201A008(param0->unk_60->unk_08, 3);

    G2_SetBG1Priority(1);
    G2_SetBG3Priority(0);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);

    ov6_02244E54(v0, 2, &param0->unk_6C);
    ov6_02244E7C(param0->unk_60->unk_08, v0, 0, &param0->unk_68);
    ov6_02244EB4(param0->unk_60->unk_08, v0, 1, &param0->unk_64);
    ov6_02244928(param0, v0);

    NARC_dtor(v0);
    param0->unk_244 = sub_020711EC(4, 32);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
}

static void ov6_022448C8 (UnkStruct_ov6_02243FFC * param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);
    sub_0207121C(param0->unk_244);

    ov6_02244F20(param0->unk_60->unk_08);
    ov6_02244B6C(param0);

    G2_SetBG0Priority(param0->unk_24);
    G2_SetBG3Priority(param0->unk_26);

    sub_0205D8CC(0, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
}

static NARC * ov6_0224491C (void)
{
    return NARC_ctor(NARC_INDEX_DATA__FIELD_CUTIN, 4);
}

static void ov6_02244928 (UnkStruct_ov6_02243FFC * param0, NARC * param1)
{
    int v0;

    ov6_0224508C(param0, &param0->unk_258);
    param0->unk_70 = sub_020095C4(32, &param0->unk_74, 4);
    sub_0200964C(&param0->unk_74, 0, FX32_CONST(512));

    param0->unk_200 = sub_02009714(4, 0, 4);
    param0->unk_204 = sub_02009714(3, 1, 4);
    param0->unk_208 = sub_02009714(4, 2, 4);
    param0->unk_20C = sub_02009714(2, 3, 4);

    for (v0 = 0; v0 < 1; v0++) {
        param0->unk_210[v0] = sub_02009A4C(param0->unk_200, param1, Unk_ov6_02249108[v0].unk_04, 0, Unk_ov6_02249108[v0].unk_00, NNS_G2D_VRAM_TYPE_2DMAIN, 4);
    }

    if (param0->unk_0C == 0) {
        param0->unk_210[v0] = sub_02009A4C(param0->unk_200, param1, 13, 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 4);
    } else {
        param0->unk_210[v0] = sub_02009A4C(param0->unk_200, param1, 16, 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 4);
    }

    v0++;
    param0->unk_210[v0] = ov6_022450F4(param0, param1);

    for (v0 = 0; v0 < 1; v0++) {
        param0->unk_220[v0] = sub_02009B04(param0->unk_204, param1, Unk_ov6_022490F8[v0].unk_04, 0, Unk_ov6_022490F8[v0].unk_00, NNS_G2D_VRAM_TYPE_2DMAIN, 1, 4);
    }

    if (param0->unk_0C == 0) {
        (void)0;
    } else {
        param0->unk_220[v0] = sub_02009B04(param0->unk_204, param1, 4, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 1, 4);
        v0++;
    }

    param0->unk_220[v0] = ov6_0224514C(param0, param1);

    for (v0 = 0; v0 < 1; v0++) {
        param0->unk_22C[v0] = sub_02009BC4(
            param0->unk_208, param1, Unk_ov6_02249118[v0].unk_04, 0, Unk_ov6_02249118[v0].unk_00, 2, 4);
    }

    if (param0->unk_0C == 0) {
        param0->unk_22C[v0] = sub_02009BC4(param0->unk_208, param1, 14, 0, 2, 2, 4);
    } else {
        param0->unk_22C[v0] = sub_02009BC4(param0->unk_208, param1, 17, 0, 2, 2, 4);
    }

    v0++;
    param0->unk_22C[v0] = sub_02009BC4(param0->unk_208, param1, 6, 0, 3, 2, 4);

    for (v0 = 0; v0 < 1; v0++) {
        param0->unk_23C[v0] = sub_02009BC4(param0->unk_20C, param1, Unk_ov6_02249100[v0].unk_04, 0, Unk_ov6_02249100[v0].unk_00, 3, 4);
    }

    if (param0->unk_0C == 0) {
        param0->unk_23C[v0] = sub_02009BC4(param0->unk_20C, param1, 15, 0, 1, 3, 4);
    } else {
        param0->unk_23C[v0] = sub_02009BC4(param0->unk_20C, param1, 18, 0, 1, 3, 4);
    }

    param0->unk_270 = ov6_0224509C(param0->unk_5C, &param0->unk_258, 4);
    param0->unk_274 = ov6_022450E4(&param0->unk_258, 4);
}

static void ov6_02244B6C (UnkStruct_ov6_02243FFC * param0)
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
            sub_02009D4C(param0->unk_22C[v0]);
        }
    }

    for (v0 = 0; v0 < 2; v0++) {
        if (param0->unk_23C[v0] != NULL) {
            sub_02009D4C(param0->unk_23C[v0]);
        }
    }

    sub_02009754(param0->unk_200);
    sub_02009754(param0->unk_204);
    sub_02009754(param0->unk_208);
    sub_02009754(param0->unk_20C);
    sub_020219C0(param0->unk_70);
    sub_02021964(param0->unk_70);
}

static void ov6_02244C10 (UnkStruct_ov6_02243FFC * param0)
{
    if (param0->unk_70 != NULL) {
        sub_020219F8(param0->unk_70);
    }
}

static UnkStruct_02022550 * ov6_02244C20 (UnkStruct_ov6_02243FFC * param0, const VecFx32 * param1, u32 param2, u32 param3, u32 param4, u32 param5, int param6, int param7)
{
    UnkStruct_ov19_021DA864 v0;
    UnkStruct_ov83_0223D9A8 v1;
    UnkStruct_02022550 * v2;

    if (param5 == 4) {
        sub_020093B4(
            &v0, param2, param3, param4, 0xffffffff, 0xffffffff, 0xffffffff, 0, param6, param0->unk_200, param0->unk_204, param0->unk_208, NULL, NULL, NULL);
    } else {
        sub_020093B4(
            &v0, param2, param3, param4, param5, 0xffffffff, 0xffffffff, 0, param6, param0->unk_200, param0->unk_204, param0->unk_208, param0->unk_20C, NULL, NULL);
    }

    v1.unk_00 = param0->unk_70;
    v1.unk_04 = &v0;
    v1.unk_08 = *param1;
    v1.unk_14 = param7;
    v1.unk_18 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.unk_1C = 4;

    v2 = sub_02021B90(&v1);
    GF_ASSERT(v2 != NULL);

    return v2;
}

static UnkStruct_02022550 * ov6_02244CD4 (UnkStruct_ov6_02243FFC * param0, const VecFx32 * param1, int param2, int param3)
{
    UnkStruct_02022550 * v0;

    v0 = ov6_02244C20(param0, param1, 1, 0, 1, 0, 0, param2);
    sub_02021D6C(v0, param3);

    return v0;
}

static UnkStruct_02022550 * ov6_02244CFC (UnkStruct_ov6_02243FFC * param0, const VecFx32 * param1)
{
    UnkStruct_02022550 * v0;
    u32 v1 = 0;

    if (param0->unk_0C == 1) {
        v1 = 1;
    }

    v0 = ov6_02244C20(param0, param1, 2, v1, 2, 1, 0, 131);

    sub_02021CAC(v0, 0);
    sub_02021D6C(v0, 6);

    return v0;
}

static void ov6_02244D34 (UnkStruct_02022550 * param0)
{
    sub_02021CC8(param0, 1);
    sub_02021CE4(param0, FX32_ONE);
}

static UnkStruct_02022550 * ov6_02244D4C (UnkStruct_ov6_02243FFC * param0, const VecFx32 * param1, int param2, int param3)
{
    UnkStruct_02022550 * v0;
    VecFx32 v1 = {0, 0, 0};
    VecFx32 v2 = {0x1000, 0x1000, 0};

    v0 = ov6_02244C20(param0, param1, 0, 0, 0, 0xffffffff, 0, param2);

    sub_02021CF8(v0, 2);
    sub_02021C60(v0, &v1);
    sub_02021C70(v0, &v2);
    sub_02021C94(v0, sub_0201D2A4(0));

    return v0;
}

static void ov6_02244DB4 (UnkStruct_ov6_02243FFC * param0)
{
    int v0;
    NARC * v1 = ov6_0224491C();

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_210[v0] == NULL) {
            param0->unk_210[v0] = sub_02009A4C(param0->unk_200, v1, 7, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 4);
            break;
        }
    }

    GF_ASSERT(v0 < 4);

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_22C[v0] == NULL) {
            param0->unk_22C[v0] = sub_02009BC4(param0->unk_208, v1, 8, 0, 0, 2, 4);
            break;
        }
    }

    GF_ASSERT(v0 < 4);
    NARC_dtor(v1);
}

static void ov6_02244E54 (NARC * param0, u32 param1, NNSG2dPaletteData ** param2)
{
    void * v0;

    v0 = NARC_AllocAndReadWholeMember(param0, param1, 4);

    NNS_G2dGetUnpackedPaletteData(v0, param2);

    sub_0201972C(3, (*param2)->pRawData, (32 * 1), (32 * 12));
    Heap_FreeToHeap(v0);
}

static void ov6_02244E7C (BGL * param0, NARC * param1, u32 param2, NNSG2dCharacterData ** param3)
{
    void * v0;

    v0 = NARC_AllocAndReadWholeMember(param1, param2, 4);
    NNS_G2dGetUnpackedCharacterData(v0, param3);

    sub_0201958C(param0, 3, (*param3)->pRawData, (*param3)->szByte, 0);
    Heap_FreeToHeap(v0);
}

static void ov6_02244EB4 (BGL * param0, NARC * param1, u32 param2, NNSG2dScreenData ** param3)
{
    void * v0;

    sub_02019184(param0, 3, 0, 0);
    sub_02019184(param0, 3, 3, 0);

    v0 = NARC_AllocAndReadWholeMember(param1, param2, 4);
    NNS_G2dGetUnpackedScreenData(v0, param3);

    sub_02019574(param0, 3, (void *)(*param3)->rawData, (*param3)->szByte);
    sub_02019E2C(param0, 3, 0, 0, 32, 32, 12);
    sub_02019448(param0, 3);
    Heap_FreeToHeap(v0);
}

static void ov6_02244F20 (BGL * param0)
{
    sub_02019EBC(param0, 3);
}

static void ov6_02244F2C (UnkStruct_ov6_02243FFC * param0)
{
    ov6_02244F8C(param0);
    param0->unk_2C = 0;

    ov6_02244F58(param0);
    ov6_02244F60(param0);
    ov6_02244F50(param0);

    param0->unk_2C = 1;
}

static void ov6_02244F50 (UnkStruct_ov6_02243FFC * param0)
{
    param0->unk_30 = (GX_WNDMASK_W0);
}

static void ov6_02244F58 (UnkStruct_ov6_02243FFC * param0)
{
    param0->unk_30 = GX_WNDMASK_NONE;
}

static void ov6_02244F60 (UnkStruct_ov6_02243FFC * param0)
{
    param0->unk_34 = (GX_WND_PLANEMASK_BG3) | GX_WND_PLANEMASK_OBJ;
    param0->unk_38 = 0;
    param0->unk_3C = (GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ) & (~(GX_WND_PLANEMASK_BG3));
    param0->unk_40 = 1;
}

static void ov6_02244F74 (UnkStruct_ov6_02243FFC * param0)
{
    param0->unk_3C = (GX_WND_PLANEMASK_OBJ | GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3) & (~(GX_WND_PLANEMASK_BG3));
    param0->unk_40 = 1;
}

static void ov6_02244F80 (UnkStruct_ov6_02243FFC * param0, fx32 param1, fx32 param2, fx32 param3, fx32 param4)
{
    param0->unk_44 = param1;
    param0->unk_48 = param3;
    param0->unk_4C = param2;
    param0->unk_50 = param4;
}

static void ov6_02244F8C (UnkStruct_ov6_02243FFC * param0)
{
    GF_ASSERT(param0->unk_27C == NULL);
    param0->unk_27C = sub_0200DA04(ov6_02244FE4, param0, 0x81);
}

static void ov6_02244FB4 (UnkStruct_ov6_02243FFC * param0)
{
    GF_ASSERT(param0->unk_27C != NULL);

    SysTask_Done(param0->unk_27C);
    GX_SetVisibleWnd(GX_WNDMASK_NONE);
}

static void ov6_02244FE4 (SysTask * param0, void * param1)
{
    UnkStruct_ov6_02243FFC * v0 = param1;

    if (v0->unk_2C == 0) {
        return;
    }

    GX_SetVisibleWnd(v0->unk_30);
    G2_SetWnd0InsidePlane(v0->unk_34, v0->unk_38);
    G2_SetWndOutsidePlane(v0->unk_3C, v0->unk_40);
    G2_SetWnd0Position(v0->unk_44 / FX32_ONE, v0->unk_4C / FX32_ONE, v0->unk_48 / FX32_ONE, v0->unk_50 / FX32_ONE);
}

static void ov6_0224508C (UnkStruct_ov6_02243FFC * param0, UnkStruct_02008A90 * param1)
{
    sub_02075EF4(param1, param0->unk_5C, 2);
}

static void * ov6_0224509C (Pokemon * param0, UnkStruct_02008A90 * param1, u32 param2)
{
    void * v0 = Heap_AllocFromHeap(4, (32 * 10) * 10);

    GF_ASSERT(v0 != NULL);

    {
        int v1 = Pokemon_GetValue(param0, MON_DATA_PERSONALITY, NULL);
        sub_02013750(param1->unk_00, param1->unk_02, param2, v0, v1, 0, 2, param1->unk_06);
    }

    return v0;
}

static void * ov6_022450E4 (UnkStruct_02008A90 * param0, u32 param1)
{
    void * v0 = sub_02013660(param0->unk_00, param0->unk_04, param1);
    return v0;
}

static UnkStruct_02009DC8 * ov6_022450F4 (UnkStruct_ov6_02243FFC * param0, NARC * param1)
{
    UnkStruct_02009DC8 * v0;

    v0 = sub_02009A4C(param0->unk_200, param1, 5, 0, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 4);
    return v0;
}

static void ov6_02245118 (UnkStruct_ov6_02243FFC * param0, void * param1)
{
    u32 v0;
    UnkStruct_02009DC8 * v1;
    const NNSG2dImageProxy * v2;

    v1 = sub_02009DC8(param0->unk_200, 3);
    v2 = sub_0200A534(v1);
    v0 = NNS_G2dGetImageLocation(v2, NNS_G2D_VRAM_TYPE_2DMAIN);

    DC_FlushRange((void *)param1, ((32 * 10) * 10));
    GX_LoadOBJ(param1, v0, ((32 * 10) * 10));
}

static UnkStruct_02009DC8 * ov6_0224514C (UnkStruct_ov6_02243FFC * param0, NARC * param1)
{
    UnkStruct_02009DC8 * v0;

    v0 = sub_02009B04(param0->unk_204, param1, 3, 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 1, 4);
    return v0;
}

static void ov6_02245170 (UnkStruct_ov6_02243FFC * param0, void * param1)
{
    u32 v0;
    UnkStruct_02009DC8 * v1;
    UnkStruct_02009DC8 * v2;
    NNSG2dImageProxy * v3;
    const NNSG2dImagePaletteProxy * v4;

    v2 = sub_02009DC8(param0->unk_200, 3);
    v3 = sub_0200A534(v2);
    v1 = sub_02009DC8(param0->unk_204, 2);
    v4 = sub_0200A72C(v1, v3);
    v0 = NNS_G2dGetImagePaletteLocation(v4, NNS_G2D_VRAM_TYPE_2DMAIN);

    DC_FlushRange((void *)param1, 32);
    GX_LoadOBJPltt(param1, v0, 32);
}

static void ov6_022451B8 (UnkStruct_ov6_02243FFC * param0)
{
    int v0;
    UnkStruct_02009DC8 * v1 = sub_02009DC8(param0->unk_200, 3);

    sub_0200A4E4(v1);
    sub_02009D68(param0->unk_200, v1);

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_210[v0] == v1) {
            param0->unk_210[v0] = NULL;
            break;
        }
    }

    GF_ASSERT(v0 < 4);

    v1 = sub_02009DC8(param0->unk_204, 2);
    sub_0200A6DC(v1);
    sub_02009D68(param0->unk_204, v1);

    for (v0 = 0; v0 < 3; v0++) {
        if (param0->unk_220[v0] == v1) {
            param0->unk_220[v0] = NULL;
            break;
        }
    }

    GF_ASSERT(v0 < 3);
    v1 = sub_02009DC8(param0->unk_208, 3);

    sub_02009D4C(v1);
    sub_02009D68(param0->unk_208, v1);

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_22C[v0] == v1) {
            param0->unk_22C[v0] = NULL;
            break;
        }
    }

    GF_ASSERT(v0 < 4);
}

static UnkStruct_02022550 * ov6_0224529C (UnkStruct_ov6_02243FFC * param0, const VecFx32 * param1)
{
    UnkStruct_02022550 * v0;

    v0 = ov6_02244C20(param0, param1, 3, 2, 3, 0xffffffff, 0, 129);
    return v0;
}

static const UnkStruct_ov101_021D86B0 Unk_ov6_02249220;

static const UnkStruct_ov6_0224936C Unk_ov6_0224936C[13] = {
    {(FX32_ONE * 15), (FX32_ONE * 63), ((FX32_ONE * 16)), 0x85, 0x0},
    {(FX32_ONE * 76), (FX32_ONE * 67), ((FX32_ONE * 16)), 0x85, 0x0},
    {(FX32_ONE * 128), (FX32_ONE * 61), ((FX32_ONE * 24)), 0x80, 0x1},
    {(FX32_ONE * 240), (FX32_ONE * 69), ((FX32_ONE * 16)), 0x85, 0x0},
    {(FX32_ONE * 40), (FX32_ONE * 78), ((FX32_ONE * 24)), 0x80, 0x1},
    {(FX32_ONE * 72), (FX32_ONE * 91), ((FX32_ONE * 16)), 0x85, 0x0},
    {(FX32_ONE * 208), (FX32_ONE * 86), ((FX32_ONE * 24)), 0x80, 0x1},
    {(FX32_ONE * 56), (FX32_ONE * 116), ((FX32_ONE * 16)), 0x85, 0x0},
    {(FX32_ONE * 95), (FX32_ONE * 109), ((FX32_ONE * 24)), 0x80, 0x1},
    {(FX32_ONE * 159), (FX32_ONE * 100), ((FX32_ONE * 16)), 0x85, 0x0},
    {(FX32_ONE * 24), (FX32_ONE * 126), ((FX32_ONE * 24)), 0x80, 0x1},
    {(FX32_ONE * 140), (FX32_ONE * 125), ((FX32_ONE * 24)), 0x80, 0x1},
    {(FX32_ONE * 221), (FX32_ONE * 124), ((FX32_ONE * 24)), 0x80, 0x1}
};

static void ov6_022452BC (UnkStruct_ov6_02243FFC * param0, int param1)
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

static void ov6_02245328 (UnkStruct_ov6_02243FFC * param0, const VecFx32 * param1, const VecFx32 * param2, int param3, int param4, int param5)
{
    UnkStruct_ov101_021D5D90 * v0;
    UnkStruct_ov6_02245328 v1;

    v1.unk_00 = param3;
    v1.unk_04 = param5;
    v1.unk_08 = param0;
    v1.unk_0C = *param2;

    v0 = sub_02071330(param0->unk_244, &Unk_ov6_02249220, param1, param4, &v1, 132);
}

static int ov6_02245364 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    VecFx32 v0;
    UnkStruct_ov6_02245364 * v1 = param1;
    const UnkStruct_ov6_02245328 * v2 = sub_020715BC(param0);

    v1->unk_0C = *v2;
    v1->unk_04 = sub_020715B4(param0);

    sub_020715E4(param0, &v0);

    v1->unk_08 = ov6_02244CD4(v1->unk_0C.unk_08, &v0, v1->unk_0C.unk_00, v1->unk_04);
    sub_02021CAC(v1->unk_08, 0);

    return 1;
}

static void ov6_022453AC (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    UnkStruct_ov6_02245364 * v0 = param1;
    sub_02021BD4(v0->unk_08);
}

static void ov6_022453B8 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    VecFx32 v0;
    UnkStruct_ov6_02245364 * v1 = param1;

    sub_020715E4(param0, &v0);

    v0.x += v1->unk_0C.unk_0C.x;
    v0.x %= (FX32_ONE * 512);

    sub_020715D4(param0, &v0);
    sub_02021C50(v1->unk_08, &v0);

    if (v1->unk_0C.unk_04 == 1) {
        UnkStruct_ov6_02243FFC * v2 = v1->unk_0C.unk_08;

        if (v2->unk_14 == 2) {
            int v3 = 0;
            fx32 v4 = v2->unk_4C, v5 = v2->unk_50;

            if (((v0.y - (FX32_ONE * 2)) >= v4) && ((v0.y - (FX32_ONE * 2)) <= v5) && ((v0.y + (FX32_ONE * 2)) >= v4) && ((v0.y + (FX32_ONE * 2)) <= v5)) {
                v3 = 1;
            }

            sub_02021CAC(v1->unk_08, v3);
        } else if (v2->unk_14 == 1) {
            sub_02021CAC(v1->unk_08, 0);
        }
    }
}

static void ov6_02245438 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    UnkStruct_ov6_02245364 * v0 = param1;
}

static const UnkStruct_ov101_021D86B0 Unk_ov6_02249220 = {
    (sizeof(UnkStruct_ov6_02245364)),
    ov6_02245364,
    ov6_022453AC,
    ov6_022453B8,
    ov6_02245438
};

static void ov6_0224543C (UnkStruct_ov6_02243FFC * param0)
{
    VecFx32 v0 = {0, 0, 0};
    UnkStruct_ov6_0224543C v1;

    v1.unk_00 = param0;
    param0->unk_250 = sub_02071330(param0->unk_244, &Unk_ov6_02249248, &v0, 0, &v1, 130);
}

static int ov6_02245470 (UnkStruct_ov6_02243FFC * param0)
{
    UnkStruct_ov6_02249198 * v0 = sub_02071598(param0->unk_250);
    return v0->unk_02;
}

static void ov6_02245480 (UnkStruct_ov6_02243FFC * param0)
{
    UnkStruct_ov6_02249198 * v0 = sub_02071598(param0->unk_250);

    if (v0->unk_60) {
        sub_0207136C(v0->unk_60);
    }

    if (v0->unk_64) {
        ov5_021F0EFC(v0->unk_64);
    }

    sub_0207136C(param0->unk_250);
}

static int ov6_022454B0 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    VecFx32 v0;
    UnkStruct_ov6_02249198 * v1 = param1;
    const UnkStruct_ov6_0224543C * v2 = sub_020715BC(param0);

    v1->unk_5C = *v2;
    sub_020715E4(param0, &v0);
    v1->unk_58 = ov6_02244D4C(v1->unk_5C.unk_00, &v0, 0, 0);

    return 1;
}

static void ov6_022454DC (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    UnkStruct_ov6_02249198 * v0 = param1;
    sub_02021BD4(v0->unk_58);
}

static void ov6_022454E8 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    UnkStruct_ov6_02249198 * v0 = param1;
    int(*const * v1)(UnkStruct_ov6_02249198 *);

    v1 = Unk_ov6_02249198[v0->unk_00];

    while (v1[v0->unk_01](v0) == 1) {
        (void)0;
    }
}

static void ov6_02245508 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    UnkStruct_ov6_02249198 * v0 = param1;
}

static const UnkStruct_ov101_021D86B0 Unk_ov6_02249248 = {
    (sizeof(UnkStruct_ov6_02249198)),
    ov6_022454B0,
    ov6_022454DC,
    ov6_022454E8,
    ov6_02245508
};

static int(*const * const Unk_ov6_02249198[])(UnkStruct_ov6_02249198 *) = {
    Unk_ov6_022490E8, Unk_ov6_022490F0, Unk_ov6_022491EC,
};

static int ov6_0224550C (UnkStruct_ov6_02249198 * param0)
{
    param0->unk_02 = 0;
    sub_02021CAC(param0->unk_58, 0);
    return 0;
}

static int(*const Unk_ov6_022490E8[])(UnkStruct_ov6_02249198 *) = {
    ov6_0224550C
};

static void ov6_0224551C (UnkStruct_ov6_02243FFC * param0)
{
    VecFx32 v0 = {(FX32_ONE * (128 + 8)), (FX32_ONE * (96 - 8)), 0};
    VecFx32 v1 = {0x400, 0x400, 0};
    UnkStruct_ov6_02249198 * v2 = sub_02071598(param0->unk_250);

    v2->unk_00 = 1;
    v2->unk_01 = 0;
    v2->unk_02 = 0;
    v2->unk_08 = v0;
    v2->unk_14.x = 0; v2->unk_14.y = 0; v2->unk_14.z = 0;
    v2->unk_38 = (FX32_ONE * 60);
    v2->unk_2C = v1;
    v2->unk_50 = 0x200;
    v2->unk_40 = (FX32_ONE * 180);
    v2->unk_48 = 0;
    v2->unk_4C = 0x2000;

    sub_02021C50(v2->unk_58, &v0);
    sub_02021C70(v2->unk_58, &v1);
    sub_02021C94(v2->unk_58, sub_0201D2A4(((v2->unk_38) / FX32_ONE)));
    sub_02021CAC(v2->unk_58, 1);
}

static int ov6_022455C4 (UnkStruct_ov6_02249198 * param0)
{
    VecFx32 v0;
    UnkStruct_02022550 * v1 = param0->unk_58;

    param0->unk_48 += param0->unk_4C;

    if (param0->unk_4C < (FX32_ONE * 16)) {
        param0->unk_4C += 0x4000;
    }

    param0->unk_14.x = sub_0201D264(315) * ((param0->unk_48) / FX32_ONE);
    param0->unk_14.y = sub_0201D250(((param0->unk_40) / FX32_ONE)) * ((param0->unk_48) / FX32_ONE);

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

    sub_02021C70(v1, &param0->unk_2C);
    param0->unk_38 -= 0x6000;

    if (((param0->unk_38) / FX32_ONE) < 0) {
        param0->unk_38 = 0;
    }

    sub_02021C94(v1, sub_0201D2A4(((param0->unk_38) / FX32_ONE)));

    v0.x = param0->unk_08.x + param0->unk_14.x;
    v0.y = param0->unk_08.y + param0->unk_14.y;

    sub_02021C50(v1, &v0);

    if (v0.y < (FX32_ONE * -64)) {
        sub_02021CAC(v1, 0);
        param0->unk_02 = 2;
        param0->unk_01++;
    }

    return 0;
}

static int ov6_022456D0 (UnkStruct_ov6_02249198 * param0)
{
    return 0;
}

static int(*const Unk_ov6_022490F0[])(UnkStruct_ov6_02249198 *) = {
    ov6_022455C4,
    ov6_022456D0
};

static void ov6_022456D4 (UnkStruct_ov6_02243FFC * param0)
{
    VecFx32 v0 = {(FX32_ONE * 128), (FX32_ONE * 104), 0};
    VecFx32 v1 = {0x1400, 0x1400, 0};
    UnkStruct_ov6_02249198 * v2 = sub_02071598(param0->unk_250);

    v2->unk_00 = 2;
    v2->unk_01 = 0;
    v2->unk_02 = 1;
    v2->unk_04 = 0;
    v2->unk_08 = v0;
    v2->unk_14.x = 0; v2->unk_14.y = 0; v2->unk_14.z = 0;
    v2->unk_38 = (FX32_ONE * 315);
    v2->unk_2C = v1;
    v2->unk_50 = 0x100;
    v2->unk_40 = (FX32_ONE * 225);
    v2->unk_48 = (FX32_ONE * (128 + 64));
    v2->unk_4C = (FX32_ONE * 32);
    v2->unk_14.x = sub_0201D264(315) * ((v2->unk_48) / FX32_ONE);
    v2->unk_14.y = sub_0201D250(((v2->unk_40) / FX32_ONE)) * ((v2->unk_48) / FX32_ONE);

    v0.x = v2->unk_08.x + v2->unk_14.x;
    v0.y = v2->unk_08.y + v2->unk_14.y;

    sub_02021C50(v2->unk_58, &v0);
    sub_02021C70(v2->unk_58, &v1);
    sub_02021C94(v2->unk_58, sub_0201D2A4(((v2->unk_38) / FX32_ONE)));
    sub_02021CAC(v2->unk_58, 1);

    v2->unk_60 = ov6_02245B4C(param0->unk_244, param0->unk_248);
    param0->unk_1C = 1;
    v2->unk_64 = ov5_021F0EB0(param0->unk_60, 4);

    ov5_021F0F10(v2->unk_64, 1, -((FX32_ONE * 120)), 12);

    {
        UnkStruct_02022550 * v3;
        VecFx32 v4 = {0, 0, 0};
        VecFx32 v5 = {0x1000, 0x1000, 0};

        v3 = v2->unk_5C.unk_00->unk_248;

        sub_02021CF8(v3, 2);
        sub_02021C60(v3, &v4);
        sub_02021C70(v3, &v5);
        sub_02021C94(v3, sub_0201D2A4(0));
    }
}

static int ov6_02245840 (UnkStruct_ov6_02249198 * param0)
{
    VecFx32 v0;
    UnkStruct_02022550 * v1 = param0->unk_58;

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
    param0->unk_14.y = sub_0201D250(((param0->unk_40) / FX32_ONE)) * ((param0->unk_48) / FX32_ONE);

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

    sub_02021C70(v1, &param0->unk_2C);
    param0->unk_38 += 0x8000;

    if (((param0->unk_38) / FX32_ONE) > 360) {
        param0->unk_38 = (FX32_ONE * 360);
    }

    sub_02021C94(v1, sub_0201D2A4(((param0->unk_38) / FX32_ONE)));

    v0.x = param0->unk_08.x + param0->unk_14.x;
    v0.y = param0->unk_08.y + param0->unk_14.y;

    sub_02021C50(v1, &v0);

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
        UnkStruct_02022550 * v2 = param0->unk_5C.unk_00->unk_248;
        const VecFx32 * v3 = sub_02021D2C(v2);
        VecFx32 v4 = *v3;

        v4.x += 0x80;

        if (v4.x > 0x1400) {
            v4.x = 0x1400;
        }

        v4.y += 0x80;

        if (v4.y > 0x1400) {
            v4.y = 0x1400;
        }

        sub_02021C70(v2, &v4);
    }

    return 0;
}

static int ov6_022459B0 (UnkStruct_ov6_02249198 * param0)
{
    UnkStruct_02022550 * v0 = param0->unk_5C.unk_00->unk_248;

    sub_02021D6C(v0, 3);

    {
        fx32 v1, v2;
        const VecFx32 * v3 = sub_02021D28(v0);

        v1 = v3->y;
        v3 = sub_02021D28(param0->unk_58);
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

static int ov6_02245A0C (UnkStruct_ov6_02249198 * param0)
{
    VecFx32 v0;
    UnkStruct_02022550 * v1 = param0->unk_58;

    param0->unk_48 += param0->unk_4C;
    param0->unk_4C += 0x1000;

    if (param0->unk_4C > (FX32_ONE * 16)) {
        param0->unk_4C = (FX32_ONE * 16);
    }

    param0->unk_14.x = sub_0201D264(((param0->unk_40) / FX32_ONE)) * ((param0->unk_48) / FX32_ONE);
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

    sub_02021C70(v1, &param0->unk_2C);

    v0.x = param0->unk_08.x + param0->unk_14.x;
    v0.y = param0->unk_08.y + param0->unk_14.y;

    sub_02021C50(v1, &v0);

    {
        UnkStruct_02022550 * v2 = param0->unk_5C.unk_00->unk_248;
        const VecFx32 * v3 = sub_02021D2C(v2);
        VecFx32 v4 = v0;
        VecFx32 v5 = *v3;

        param0->unk_54 -= 0x1000;

        v4.y += param0->unk_54;
        sub_02021C50(v2, &v4);
        v5.x += 0x100;

        if (v5.x > 0x2000) {
            v5.x = 0x2000;
        }

        v5.y += 0x100;

        if (v5.y > 0x2000) {
            v5.y = 0x2000;
        }

        sub_02021C70(v2, &v5);
    }

    if (((v0.y) / FX32_ONE) >= 240) {
        param0->unk_02 = 2;
        param0->unk_01++;
    }

    return 0;
}

static int ov6_02245B48 (UnkStruct_ov6_02249198 * param0)
{
    return 0;
}

static int(*const Unk_ov6_022491EC[])(UnkStruct_ov6_02249198 *) = {
    ov6_02245840,
    ov6_022459B0,
    ov6_02245A0C,
    ov6_02245B48
};

static UnkStruct_ov101_021D5D90 * ov6_02245B4C (UnkStruct_020711EC * param0, UnkStruct_02022550 * param1)
{
    UnkStruct_ov101_021D5D90 * v0;
    UnkStruct_ov6_02245B4C v1;
    VecFx32 v2 = {0, 0, 0};

    v1.unk_04 = param1;
    v0 = sub_02071330(param0, &Unk_ov6_0224920C, &v2, 0, &v1, 129);

    return v0;
}

static void ov6_02245B74 (UnkStruct_ov101_021D5D90 * param0)
{
    UnkStruct_ov6_02245B74 * v0 = sub_02071598(param0);
    v0->unk_00 = 0;
}

static void ov6_02245B80 (UnkStruct_ov101_021D5D90 * param0)
{
    VecFx32 v0;
    const VecFx32 * v1;
    UnkStruct_ov6_02245B74 * v2 = sub_02071598(param0);

    v2->unk_00 = 1;
    v2->unk_04 = 0;
    v2->unk_0C = 0;
    v2->unk_08 = 0;
    v2->unk_10.x = 0; v2->unk_10.y = 0; v2->unk_10.z = 0;
    v1 = sub_02021D28(v2->unk_20);
    v0 = *v1;

    sub_020715D4(param0, &v0);
    sub_02021D6C(v2->unk_20, 5);
}

static void ov6_02245BC8 (UnkStruct_ov101_021D5D90 * param0)
{
    VecFx32 v0;
    UnkStruct_ov6_02245B74 * v1 = sub_02071598(param0);

    v1->unk_00 = 2;
    v1->unk_04 = 0;
    v1->unk_0C = 0;
    v1->unk_08 = 0;
    v1->unk_10.x = 0; v1->unk_10.y = 0; v1->unk_10.z = 0;

    ov6_022437C8(v1->unk_20, &v0);

    sub_020715D4(param0, &v0);
    sub_02021D6C(v1->unk_20, 4);
}

static int ov6_02245C04 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    UnkStruct_ov6_02245B74 * v0 = param1;
    const UnkStruct_ov6_02245B4C * v1 = sub_020715BC(param0);

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

static void ov6_02245C18 (UnkStruct_ov101_021D5D90 * param0, UnkStruct_ov6_02245B74 * param1)
{
    VecFx32 v0;

    switch (param1->unk_04) {
    case 0:
        param1->unk_10.y = Unk_ov6_022492A8[param1->unk_0C];
        sub_020715E4(param0, &v0);
        v0.y += param1->unk_10.y;
        sub_02021C50(param1->unk_20, &v0);
        param1->unk_0C++;

        if (param1->unk_0C >= 12) {
            param1->unk_0C = 0;
            param1->unk_08 = 1;
            param1->unk_04++;
        }
    }
}

static void ov6_02245C64 (UnkStruct_ov101_021D5D90 * param0, UnkStruct_ov6_02245B74 * param1)
{
    VecFx32 v0;

    switch (param1->unk_04) {
    case 0:
        param1->unk_10.y = Unk_ov6_022491FC[param1->unk_0C];
        sub_020715E4(param0, &v0);
        v0.y += param1->unk_10.y;
        sub_02021C50(param1->unk_20, &v0);
        param1->unk_0C++;

        if (param1->unk_0C >= 4) {
            param1->unk_0C = 0;
            param1->unk_08 = 1;
            param1->unk_04++;
        }
    }
}

static void ov6_02245CB0 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    UnkStruct_ov6_02245B74 * v0 = param1;

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
    sizeof(UnkStruct_ov100_021D4890), NULL, sub_02071600, NULL, sub_020715FC,
};

int(*const Unk_ov6_02249270[])(UnkStruct_ov6_02249270 *);

SysTask * ov6_02245CCC (UnkStruct_0203CDB0 * param0, int param1)
{
    UnkStruct_ov6_02249270 * v0 = ov6_02245F44(4, (sizeof(UnkStruct_ov6_02249270)));

    v0->unk_0C = param1;
    v0->unk_14 = param0;

    {
        SysTask * v1 = SysTask_Start(ov6_02245D10, v0, 133);
        return v1;
    }
}

int ov6_02245CF0 (SysTask * param0)
{
    UnkStruct_ov6_02249270 * v0 = sub_0201CED0(param0);
    return v0->unk_04;
}

void ov6_02245CFC (SysTask * param0)
{
    UnkStruct_ov6_02249270 * v0 = sub_0201CED0(param0);

    Heap_FreeToHeap(v0);
    SysTask_Done(param0);
}

static void ov6_02245D10 (SysTask * param0, void * param1)
{
    int v0;
    UnkStruct_ov6_02249270 * v1 = param1;

    while (Unk_ov6_02249270[v1->unk_00](v1) == 1) {
        (void)0;
    }

    if (v1->unk_10) {
        if (v1->unk_1D4 != NULL) {
            sub_020713D0(v1->unk_1D4);
        }

        if (v1->unk_18.unk_08 != NULL) {
            sub_020219F8(v1->unk_18.unk_08);
        }
    }
}

static int ov6_02245D48 (UnkStruct_ov6_02249270 * param0)
{
    ov6_02243F74(param0->unk_14, 1);
    param0->unk_00++;
    return 0;
}

static int ov6_02245D60 (UnkStruct_ov6_02249270 * param0)
{
    param0->unk_1D4 = sub_020711EC(4, 32);
    ov6_02243258(&param0->unk_18, 32, 2, 2, 2, 1, 4, 3, 4, 2);

    {
        NARC * v0 = ov6_02243F20();

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

static int ov6_02245EA4 (UnkStruct_ov6_02249270 * param0)
{
    param0->unk_1D0 = ov6_02243848(&param0->unk_18, param0->unk_0C);
    sub_02021CAC(param0->unk_1D0, 1);

    param0->unk_1D8 = ov6_02243888(param0->unk_14, param0->unk_1D4, &param0->unk_18, param0->unk_1D0);
    ov6_02243950(param0->unk_1D8);

    param0->unk_00++;
    param0->unk_10 = 1;

    return 0;
}

static int ov6_02245EEC (UnkStruct_ov6_02249270 * param0)
{
    if (ov6_022438BC(param0->unk_1D8) != 2) {
        return 0;
    }

    ov6_022438EC(param0->unk_1D8);
    param0->unk_00++;

    return 0;
}

static int ov6_02245F18 (UnkStruct_ov6_02249270 * param0)
{
    sub_0207121C(param0->unk_1D4);
    ov6_0224339C(&param0->unk_18);

    param0->unk_10 = 0;
    param0->unk_04 = 1;
    param0->unk_00++;

    return 0;
}

static int ov6_02245F40 (UnkStruct_ov6_02249270 * param0)
{
    return 0;
}

static int(*const Unk_ov6_02249270[])(UnkStruct_ov6_02249270 *) = {
    ov6_02245D48,
    ov6_02245D60,
    ov6_02245EA4,
    ov6_02245EEC,
    ov6_02245F18,
    ov6_02245F40
};

static void * ov6_02245F44 (u32 param0, int param1)
{
    void * v0 = Heap_AllocFromHeapAtEnd(param0, param1);

    GF_ASSERT(v0 != NULL);
    memset(v0, 0, param1);

    return v0;
}

static void ov6_02245F64 (UnkStruct_ov6_02243FFC * param0, int param1)
{
    UnkStruct_02061AB4 * v0 = sub_0205EB3C(param0->unk_60->unk_3C);

    sub_02062DDC(v0);
    sub_02062D64(v0, param1);
}

static int ov6_02245F80 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    const UnkStruct_ov6_02245F80 * v0 = sub_020715BC(param0);
    UnkStruct_ov6_02245F80 * v1 = param1;

    *v1 = *v0;
    return 1;
}

static void ov6_02245F94 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    fx32 v0, v1, v2;
    const VecFx32 * v3;
    UnkStruct_ov6_02245F80 * v4 = param1;

    v3 = sub_02021D28(v4->unk_00);
    v0 = v3->y;
    v1 = v4->unk_04->unk_4C;
    v2 = v4->unk_04->unk_50;

    if (v4->unk_04->unk_1C == 0) {
        if (((v0 - (FX32_ONE * 8)) >= v1) && ((v0 + (FX32_ONE * 8)) <= v2)) {
            sub_02021CAC(v4->unk_00, 1);
        } else {
            sub_02021CAC(v4->unk_00, 0);
        }
    } else {
        sub_02021CAC(v4->unk_00, 1);
    }
}

static const UnkStruct_ov101_021D86B0 Unk_ov6_02249234 = {
    sizeof(UnkStruct_ov6_02245F80),
    ov6_02245F80,
    sub_02071600,
    ov6_02245F94,
    sub_020715FC
};

static void ov6_02245FDC (UnkStruct_ov6_02243FFC * param0)
{
    VecFx32 v0 = {0, 0, 0};
    UnkStruct_ov6_02245F80 v1;

    v1.unk_00 = param0->unk_248;
    v1.unk_04 = param0;

    param0->unk_254 = sub_02071330(param0->unk_244, &Unk_ov6_02249234, &v0, 0, &v1, 134);
}

static void ov6_02246018 (UnkStruct_ov6_02243FFC * param0)
{
    if (param0->unk_254 != NULL) {
        sub_0207136C(param0->unk_254);
        param0->unk_254 = NULL;
    }
}

static const UnkStruct_ov6_02249108 Unk_ov6_02249108[1] = {
    {0x1, 0xA}
};

static const UnkStruct_ov6_02249108 Unk_ov6_022490F8[1] = {
    {0x0, 0x3}
};

static const UnkStruct_ov6_02249108 Unk_ov6_02249118[1] = {
    {0x1, 0xB}
};

static const UnkStruct_ov6_02249108 Unk_ov6_02249100[1] = {
    {0x0, 0xC}
};
