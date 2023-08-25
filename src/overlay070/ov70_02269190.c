#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"

#include "struct_decls/struct_02006C24_decl.h"
#include "overlay066/struct_ov66_0222DFF8_decl.h"
#include "overlay070/struct_ov70_0225C894_decl.h"
#include "overlay070/struct_ov70_0225CA20_decl.h"
#include "overlay070/struct_ov70_0225CC54_decl.h"
#include "overlay070/struct_ov70_02260AD4_decl.h"

#include "struct_defs/struct_020170F4.h"
#include "struct_defs/struct_02017248.h"
#include "struct_defs/struct_02017294.h"
#include "overlay063/struct_ov63_0222CC3C.h"

#include "unk_02005474.h"
#include "narc.h"
#include "unk_02006E3C.h"
#include "unk_020170BC.h"
#include "heap.h"
#include "overlay070/ov70_0225C700.h"
#include "overlay070/ov70_0225C858.h"
#include "overlay070/ov70_0225C9B4.h"
#include "overlay070/ov70_02260A70.h"
#include "overlay070/ov70_02269190.h"

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_ov70_0226E514;

typedef struct {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
} UnkStruct_ov70_0226E2EC;

typedef struct {
    s32 unk_00;
    fx32 unk_04;
    fx32 unk_08;
    fx32 unk_0C;
    fx32 unk_10;
    fx32 unk_14;
    fx32 unk_18;
    fx32 unk_1C;
    fx32 unk_20;
    fx32 unk_24;
} UnkStruct_ov70_022692B4;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    fx32 unk_04;
    fx32 unk_08;
} UnkStruct_ov70_0226949C;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02[2];
} UnkStruct_ov70_0226E5A4;

typedef struct {
    s16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u8 unk_06;
    u8 unk_07;
    UnkStruct_ov70_022692B4 unk_08[4];
    UnkStruct_ov70_0226949C unk_A8[4];
    UnkStruct_02017294 * unk_D8[4];
    const UnkStruct_ov70_0225CC54 * unk_E8;
} UnkStruct_ov70_0226BD64;

typedef union {
    struct {
        s8 unk_00;
        s8 unk_01;
        s16 unk_02;
        fx32 unk_04;
        u8 unk_08[3];
        u8 unk_0B;
        u8 unk_0C[3];
        u8 unk_0F;
        u8 unk_10;
        u8 unk_11;
        u8 unk_12[2];
        UnkStruct_ov70_0226949C unk_14[3];
        UnkStruct_ov70_022692B4 unk_38[3];
        UnkStruct_ov70_022692B4 unk_B0;
        UnkStruct_ov70_0226949C unk_D8;
    } val1;
    struct {
        s32 unk_00;
        s32 unk_04[3];
    } val2;
    struct {
        s8 unk_00;
        s8 unk_01;
        u8 unk_02;
        u8 unk_03;
        s8 unk_04[16];
        UnkStruct_ov70_022692B4 unk_14[16];
    } val3;
    struct {
        s8 unk_00;
        s8 unk_01;
        s8 unk_02[2];
    } val4;
    struct {
        s32 unk_00;
    } val5;
    struct {
        s16 unk_00;
        s16 unk_02;
    } val6;
    struct {
        UnkStruct_ov70_0226BD64 unk_00[4];
        const UnkStruct_ov70_0226E2EC * unk_3B0;
        u16 unk_3B4;
        u16 unk_3B6;
        u16 unk_3B8;
        u16 unk_3BA;
    } val7;
} UnkStruct_ov70_0226BC40;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    s16 unk_02;
    u32 unk_04;
    UnkStruct_ov70_0225CC54 * unk_08;
    UnkStruct_02017294 unk_0C[18];
    const UnkStruct_ov70_0226E5A4 * unk_87C[18];
    fx32 unk_8C4[18][2];
    UnkStruct_ov70_0226BC40 unk_954;
} UnkStruct_ov70_02269800;

typedef struct UnkStruct_ov70_02269204_t {
    UnkStruct_ov66_0222DFF8 * unk_00;
    UnkStruct_ov70_0225CA20 * unk_04;
    UnkStruct_ov70_02260AD4 * unk_08;
    UnkStruct_ov70_0225C894 * unk_0C;
    UnkStruct_ov70_02269800 unk_10[20];
    UnkStruct_020170F4 unk_10550[15];
    void * unk_10640[39];
    UnkStruct_02017248 unk_106DC[16];
    NNSFndAllocator unk_1081C;
} UnkStruct_ov70_02269204;

static void ov70_022692B4(UnkStruct_ov70_022692B4 * param0, fx32 param1, fx32 param2, fx32 param3, fx32 param4, fx32 param5, fx32 param6, s32 param7);
static BOOL ov70_022692DC(UnkStruct_ov70_022692B4 * param0, s32 param1);
static void ov70_02269488(const UnkStruct_ov70_022692B4 * param0, fx32 * param1, fx32 * param2, fx32 * param3);
static void ov70_0226949C(UnkStruct_ov70_0226949C * param0, u16 param1, u16 param2, fx32 param3);
static void ov70_022694D0(UnkStruct_ov70_0226949C * param0);
static void ov70_02269508(const UnkStruct_ov70_0226949C * param0, fx32 * param1);
static void ov70_02269510(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1, u32 param2);
static void ov70_02269540(UnkStruct_ov70_02269204 * param0, NARC * param1, u32 param2);
static void ov70_022695C4(UnkStruct_ov70_02269204 * param0);
static void ov70_022695E0(UnkStruct_ov70_02269204 * param0, NARC * param1, u32 param2);
static void ov70_02269608(UnkStruct_ov70_02269204 * param0);
static void ov70_0226965C(UnkStruct_ov70_02269204 * param0, NARC * param1, u32 param2);
static void ov70_02269700(UnkStruct_ov70_02269204 * param0);
static void ov70_02269738(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1, UnkStruct_ov70_0225CC54 * param2, u32 param3);
static void ov70_0226978C(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static BOOL ov70_022697C8(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static void ov70_022697F0(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static BOOL ov70_02269800(const UnkStruct_ov70_02269800 * param0);
static BOOL ov70_02269810(const UnkStruct_ov70_02269800 * param0, u32 param1);
static void ov70_02269828(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1, u32 param2, const UnkStruct_ov70_0226E5A4 * param3);
static void ov70_02269878(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1, u32 param2);
static void ov70_022699BC(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1, u32 param2, u32 param3);
static BOOL ov70_022699D0(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1, u32 param2, u32 param3);
static void ov70_022699E4(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1, u32 param2, u32 param3, fx32 param4);
static BOOL ov70_02269A3C(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1, u32 param2, u32 param3, fx32 param4);
static void ov70_02269A90(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1, u32 param2, u32 param3, fx32 param4);
static fx32 ov70_02269AE8(const UnkStruct_ov70_02269204 * param0, const UnkStruct_ov70_02269800 * param1, u32 param2, u32 param3);
static void ov70_02269B10(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static void ov70_02269B1C(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static void ov70_02269B28(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static void ov70_02269B34(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static void ov70_02269B40(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static void ov70_02269B4C(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static void ov70_02269B58(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static void ov70_02269BB8(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static void ov70_02269CFC(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static void ov70_02269F30(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static void ov70_0226A1FC(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static void ov70_0226A208(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static void ov70_0226A214(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static void ov70_0226A220(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static void ov70_0226A22C(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static void ov70_0226A238(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static void ov70_0226A244(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static void ov70_0226A294(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static void ov70_0226A2E4(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static void ov70_0226A334(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static void ov70_0226A384(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static void ov70_0226A3D4(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static void ov70_0226A424(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static void ov70_0226A478(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static void ov70_0226A4CC(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static BOOL ov70_0226A520(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static BOOL ov70_0226A5F0(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static BOOL ov70_0226A5FC(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static BOOL ov70_0226A608(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static BOOL ov70_0226A614(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static BOOL ov70_0226A6C8(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static BOOL ov70_0226A820(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static BOOL ov70_0226A858(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static BOOL ov70_0226A930(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static BOOL ov70_0226A958(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static BOOL ov70_0226A998(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static void ov70_0226A9D0(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1, u32 param2);
static void ov70_0226AB14(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static void ov70_0226ABAC(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static BOOL ov70_0226AC08(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static BOOL ov70_0226AC24(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static BOOL ov70_0226AD20(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static void ov70_0226ADA0(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static void ov70_0226ADBC(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static void ov70_0226AF1C(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static BOOL ov70_0226AF60(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static BOOL ov70_0226AF7C(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static BOOL ov70_0226B1D0(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static void ov70_0226B324(UnkStruct_ov70_02269800 * param0);
static void ov70_0226B51C(UnkStruct_ov70_02269800 * param0);
static BOOL ov70_0226B714(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1, u32 param2, u32 param3);
static void ov70_0226B744(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1, u32 param2);
static void ov70_0226B7B0(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1, u32 param2);
static BOOL ov70_0226B8C4(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1, u32 param2);
static void ov70_0226B92C(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1, u32 param2);
static BOOL ov70_0226B998(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1, u32 param2);
static void ov70_0226BAC8(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1, u32 param2);
static void ov70_0226BB34(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static void ov70_0226BBA8(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static void ov70_0226BBDC(UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1);
static void ov70_0226BC40(UnkStruct_ov70_0226BC40 * param0, const UnkStruct_ov70_0226E2EC * param1, u32 param2, u32 param3, u32 param4, UnkStruct_ov70_02269800 * param5);
static int ov70_0226BCC0(UnkStruct_ov70_0226BC40 * param0, u32 param1);
static void ov70_0226BD64(UnkStruct_ov70_0226BD64 * param0, UnkStruct_02017294 * param1, UnkStruct_02017294 * param2, UnkStruct_02017294 * param3, UnkStruct_02017294 * param4, const UnkStruct_ov70_0225CC54 * param5, u32 param6);
static void ov70_0226BDA0(UnkStruct_ov70_0226BD64 * param0, u32 param1);
static BOOL ov70_0226BDE8(UnkStruct_ov70_0226BD64 * param0);
static void ov70_0226BE3C(UnkStruct_ov70_0226BD64 * param0, const UnkStruct_ov70_0225CC54 * param1);
static BOOL ov70_0226BF5C(UnkStruct_ov70_0226BD64 * param0);
static void ov70_0226BFE4(UnkStruct_ov70_0226BD64 * param0, const UnkStruct_ov70_0225CC54 * param1);
static BOOL ov70_0226C0D8(UnkStruct_ov70_0226BD64 * param0);
static void ov70_0226C17C(UnkStruct_ov70_0226BD64 * param0, const UnkStruct_ov70_0225CC54 * param1);
static BOOL ov70_0226C1DC(UnkStruct_ov70_0226BD64 * param0);
static void ov70_0226C2A4(UnkStruct_ov70_0226BD64 * param0, u32 param1, const VecFx32 * param2, fx32 param3, fx32 param4, fx32 param5, fx32 param6, u32 param7);

static const u8 Unk_ov70_0226E2E8[3] = {
    0x30,
    0x54,
    0x80
};

static const UnkStruct_ov63_0222CC3C Unk_ov70_0226E328[3] = {
    {0x2, 0x38},
    {0xE, 0x38},
    {0x8, 0x3C}
};

static const UnkStruct_ov63_0222CC3C Unk_ov70_0226E340[3] = {
    {0x2, 0x2C},
    {0xE, 0x2C},
    {0x8, 0x30}
};

static const VecFx32 Unk_ov70_0226E370[4] = {
    {(8 * FX32_ONE), (FX32_CONST(16)), (-8 * FX32_ONE) + (10 * FX32_ONE)},
    {(8 * FX32_ONE) + (10 * FX32_ONE), (FX32_CONST(16)), (-8 * FX32_ONE)},
    {(8 * FX32_ONE), (FX32_CONST(16)), (-8 * FX32_ONE) - (10 * FX32_ONE)},
    {(8 * FX32_ONE) - (10 * FX32_ONE), (FX32_CONST(16)), (-8 * FX32_ONE)}
};

static const VecFx32 Unk_ov70_0226E3A0[4] = {
    {0x0, (-FX32_CONST(8)), (FX32_CONST(8))},
    {(FX32_CONST(8)), (-FX32_CONST(8)), 0x0},
    {0x0, (-FX32_CONST(8)), -(FX32_CONST(8))},
    {-(FX32_CONST(8)), (-FX32_CONST(8)), 0x0}
};

static const UnkStruct_ov70_0226E514 Unk_ov70_0226E514[3][12] = {
    {
        {0x0, 0x1},
        {0x0, 0x0},
        {0x0, 0x2},
        {0x0, 0x0},
        {0x0, 0x1},
        {0x0, 0x0},
        {0x0, 0x2},
        {0x0, 0x0},
        {0x0, 0x1},
        {0x0, 0x0},
        {0x0, 0x2},
        {0x0, 0x0}
    },
    {
        {0x1, 0x1},
        {0x1, 0x0},
        {0x0, 0x2},
        {0x0, 0x0},
        {0x1, 0x1},
        {0x1, 0x0},
        {0x0, 0x2},
        {0x0, 0x0},
        {0x1, 0x1},
        {0x1, 0x0},
        {0x0, 0x2},
        {0x0, 0x0}
    },
    {
        {0x0, 0x1},
        {0x0, 0x0},
        {0x1, 0x2},
        {0x1, 0x0},
        {0x2, 0x1},
        {0x2, 0x0},
        {0x0, 0x2},
        {0x1, 0x1},
        {0x2, 0x2},
        {0x0, 0x1},
        {0x1, 0x2},
        {0x2, 0x1}
    }
};

static const u8 Unk_ov70_0226E640[16] = {
    0x13,
    0x14,
    0x13,
    0x14,
    0x13,
    0x14,
    0x13,
    0x14,
    0x13,
    0x14,
    0x13,
    0x14,
    0x13,
    0x14,
    0x13,
    0x14
};

static const u8 Unk_ov70_0226E650[16] = {
    0x13,
    0x14,
    0x15,
    0x13,
    0x1C,
    0x1D,
    0x1B,
    0x19,
    0x19,
    0x1D,
    0x14,
    0x13,
    0x1D,
    0x1B,
    0x17,
    0x13
};

static const u8 Unk_ov70_0226E660[16] = {
    0x13,
    0x14,
    0x1F,
    0x23,
    0x20,
    0x22,
    0x1B,
    0x1E,
    0x24,
    0x1D,
    0x18,
    0x21,
    0x1E,
    0x15,
    0x22,
    0x1F
};

static const UnkStruct_ov70_0226E2EC Unk_ov70_0226E2EC[] = {
    {0x0, 0x0, 0x2},
    {0x18, 0x2, 0x2}
};

static const UnkStruct_ov70_0226E2EC Unk_ov70_0226E304[] = {
    {0x0, 0x0, 0x3},
    {0x18, 0x2, 0x3}
};

static const UnkStruct_ov70_0226E2EC Unk_ov70_0226E34C[] = {
    {0x0, 0x0, 0x4},
    {0x10, 0x2, 0x4},
    {0x20, 0x0, 0x4}
};

static const UnkStruct_ov70_0226E2EC Unk_ov70_0226E2FC[] = {
    {0x0, 0x0, 0x2},
    {0x18, 0x2, 0x2}
};

static const UnkStruct_ov70_0226E2EC Unk_ov70_0226E334[] = {
    {0x0, 0x0, 0x3},
    {0x10, 0x2, 0x3},
    {0x28, 0x0, 0x3}
};

static const UnkStruct_ov70_0226E2EC Unk_ov70_0226E358[] = {
    {0x0, 0x0, 0x4},
    {0x10, 0x2, 0x4},
    {0x23, 0x0, 0x4}
};

static const UnkStruct_ov70_0226E2EC Unk_ov70_0226E314[] = {
    {0x0, 0x0, 0x2},
    {0x18, 0x1, 0x2}
};

static const UnkStruct_ov70_0226E2EC Unk_ov70_0226E2F4[] = {
    {0x0, 0x0, 0x2},
    {0x18, 0x2, 0x2}
};

static const UnkStruct_ov70_0226E2EC Unk_ov70_0226E30C[] = {
    {0x0, 0x0, 0x4},
    {0x14, 0x2, 0x4}
};

static const UnkStruct_ov70_0226E5A4 Unk_ov70_0226E5A4[39] = {
    {
        0x0,
        0x0,
        {0x0, 0x11}
    },
    {
        0x0,
        0x1,
        {0x0, 0x11}
    },
    {
        0x0,
        0x2,
        {0x0, 0x11}
    },
    {
        0x1,
        0x3,
        {0x1, 0x2}
    },
    {
        0x1,
        0x4,
        {0x1, 0x2}
    },
    {
        0x1,
        0x5,
        {0x1, 0x2}
    },
    {
        0x1,
        0x6,
        {0x3, 0x11}
    },
    {
        0x1,
        0x7,
        {0x3, 0x11}
    },
    {
        0x1,
        0x8,
        {0x3, 0x11}
    },
    {
        0x5,
        0xB,
        {0x6, 0x11}
    },
    {
        0x3,
        0x9,
        {0x4, 0x11}
    },
    {
        0x4,
        0xA,
        {0x5, 0x11}
    },
    {
        0x6,
        0xC,
        {0x7, 0x11}
    },
    {
        0x7,
        0xD,
        {0x8, 0x11}
    },
    {
        0x8,
        0xE,
        {0x9, 0x11}
    },
    {
        0x9,
        0xF,
        {0xA, 0x11}
    },
    {
        0xA,
        0x10,
        {0xB, 0x11}
    },
    {
        0xB,
        0x11,
        {0xC, 0x11}
    },
    {
        0xC,
        0x12,
        {0xD, 0x11}
    },
    {
        0x2,
        0x13,
        {0x11, 0x11}
    },
    {
        0x2,
        0x14,
        {0x11, 0x11}
    },
    {
        0x2,
        0x15,
        {0x11, 0x11}
    },
    {
        0x2,
        0x16,
        {0x11, 0x11}
    },
    {
        0x2,
        0x17,
        {0x11, 0x11}
    },
    {
        0x2,
        0x18,
        {0x11, 0x11}
    },
    {
        0x2,
        0x19,
        {0x11, 0x11}
    },
    {
        0x2,
        0x1A,
        {0x11, 0x11}
    },
    {
        0x2,
        0x1B,
        {0x11, 0x11}
    },
    {
        0x2,
        0x1C,
        {0x11, 0x11}
    },
    {
        0x2,
        0x1D,
        {0x11, 0x11}
    },
    {
        0x2,
        0x1E,
        {0x11, 0x11}
    },
    {
        0x2,
        0x1F,
        {0x11, 0x11}
    },
    {
        0x2,
        0x20,
        {0x11, 0x11}
    },
    {
        0x2,
        0x21,
        {0x11, 0x11}
    },
    {
        0x2,
        0x22,
        {0x11, 0x11}
    },
    {
        0x2,
        0x23,
        {0x11, 0x11}
    },
    {
        0x2,
        0x24,
        {0x11, 0x11}
    },
    {
        0xD,
        0x25,
        {0xE, 0x11}
    },
    {
        0xE,
        0x26,
        {0xF, 0x11}
    }
};

UnkStruct_ov70_02269204 * ov70_02269190 (UnkStruct_ov66_0222DFF8 * param0, UnkStruct_ov70_0225C894 * param1, UnkStruct_ov70_02260AD4 * param2, UnkStruct_ov70_0225CA20 * param3, u32 param4, u32 param5)
{
    UnkStruct_ov70_02269204 * v0;

    v0 = Heap_AllocFromHeap(param4, sizeof(UnkStruct_ov70_02269204));
    memset(v0, 0, sizeof(UnkStruct_ov70_02269204));

    v0->unk_00 = param0;
    v0->unk_04 = param3;
    v0->unk_08 = param2;
    v0->unk_0C = param1;

    {
        NARC * v1;

        v1 = NARC_ctor(NARC_INDEX_GRAPHIC__WIFI_LOBBY_OTHER, param4);

        Heap_FndInitAllocatorForExpHeap(&v0->unk_1081C, param5, 4);

        ov70_02269540(v0, v1, param5);
        ov70_022695E0(v0, v1, param5);
        ov70_0226965C(v0, v1, param5);

        NARC_dtor(v1);
    }

    return v0;
}

void ov70_02269204 (UnkStruct_ov70_02269204 * param0)
{
    {
        ov70_022695C4(param0);
        ov70_02269608(param0);
        ov70_02269700(param0);
    }

    Heap_FreeToHeap(param0);
}

void ov70_02269220 (UnkStruct_ov70_02269204 * param0)
{
    int v0;

    for (v0 = 0; v0 < 20; v0++) {
        ov70_0226978C(param0, &param0->unk_10[v0]);
    }
}

void ov70_02269240 (UnkStruct_ov70_02269204 * param0)
{
    int v0;
    BOOL v1;
    UnkStruct_ov70_0225CC54 * v2;

    v2 = ov70_0225CCAC(param0->unk_04);

    for (v0 = 0; v0 < 20; v0++) {
        ov70_022697C8(param0, &param0->unk_10[v0]);
    }
}

void ov70_02269268 (UnkStruct_ov70_02269204 * param0, u32 param1, u32 param2)
{
    UnkStruct_ov70_0225CC54 * v0;

    GF_ASSERT(param1 < 20);

    v0 = ov70_0225CC70(param0->unk_04, param1);

    if (v0 == NULL) {
        return;
    }

    ov70_02269738(param0, &param0->unk_10[param1], v0, param2);
}

BOOL ov70_02269298 (const UnkStruct_ov70_02269204 * param0, u32 param1)
{
    if (ov70_02269800(&param0->unk_10[param1]) == 1) {
        return 0;
    }

    return 1;
}

static void ov70_022692B4 (UnkStruct_ov70_022692B4 * param0, fx32 param1, fx32 param2, fx32 param3, fx32 param4, fx32 param5, fx32 param6, s32 param7)
{
    param0->unk_00 = param7;
    param0->unk_04 = param1;
    param0->unk_10 = param2 - param1;
    param0->unk_14 = param1;
    param0->unk_08 = param3;
    param0->unk_18 = param4 - param3;
    param0->unk_1C = param3;
    param0->unk_0C = param5;
    param0->unk_20 = param6 - param5;
    param0->unk_24 = param5;
}

static BOOL ov70_022692DC (UnkStruct_ov70_022692B4 * param0, s32 param1)
{
    s32 v0;
    BOOL v1 = 0;

    if (param1 > param0->unk_00) {
        v0 = param0->unk_00;
        v1 = 1;
    } else {
        v0 = param1;
    }

    if (param0->unk_10 != 0) {
        param0->unk_04 = param0->unk_14 + FX_Div(FX_Mul(FX32_CONST(v0), param0->unk_10), FX32_CONST(param0->unk_00));
    }

    if (param0->unk_18 != 0) {
        param0->unk_08 = param0->unk_1C + FX_Div(FX_Mul(FX32_CONST(v0), param0->unk_18), FX32_CONST(param0->unk_00));
    }

    if (param0->unk_20 != 0) {
        param0->unk_0C = param0->unk_24 + FX_Div(FX_Mul(FX32_CONST(v0), param0->unk_20), FX32_CONST(param0->unk_00));
    }

    return v1;
}

static void ov70_02269488 (const UnkStruct_ov70_022692B4 * param0, fx32 * param1, fx32 * param2, fx32 * param3)
{
    *param1 = param0->unk_04;
    *param2 = param0->unk_08;
    *param3 = param0->unk_0C;
}

static void ov70_0226949C (UnkStruct_ov70_0226949C * param0, u16 param1, u16 param2, fx32 param3)
{
    param0->unk_00 = param1;
    param0->unk_02 = param2;
    param0->unk_04 = param3;
    param0->unk_08 = FX_Mul(FX_SinIdx(param1), param0->unk_04);
}

static void ov70_022694D0 (UnkStruct_ov70_0226949C * param0)
{
    param0->unk_00 += param0->unk_02;
    param0->unk_08 = FX_Mul(FX_SinIdx(param0->unk_00), param0->unk_04);
}

static void ov70_02269508 (const UnkStruct_ov70_0226949C * param0, fx32 * param1)
{
    *param1 = param0->unk_08;
}

static void ov70_02269510 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1, u32 param2)
{
    if (param1->unk_08 == ov70_0225CCAC(param0->unk_04)) {
        sub_02005770(param2, 5);
    } else {
        if (ov70_0225CE70(param1->unk_08) == 0) {
            sub_02005748(param2);
        }
    }
}

static void ov70_02269540 (UnkStruct_ov70_02269204 * param0, NARC * param1, u32 param2)
{
    int v0;

    for (v0 = 0; v0 < 15; v0++) {
        param0->unk_10550[v0].unk_00 = sub_0200723C(param1, 129 + v0, 0, param2, 0);
        param0->unk_10550[v0].unk_04 = NNS_G3dGetMdlSet(param0->unk_10550[v0].unk_00);
        param0->unk_10550[v0].unk_08 = NNS_G3dGetMdlByIdx(param0->unk_10550[v0].unk_04, 0);
        param0->unk_10550[v0].unk_0C = NULL;

        NNS_G3dMdlSetMdlEmiAll(param0->unk_10550[v0].unk_08, GX_RGB(31, 31, 31));
    }
}

static void ov70_022695C4 (UnkStruct_ov70_02269204 * param0)
{
    int v0;

    for (v0 = 0; v0 < 15; v0++) {
        Heap_FreeToHeap(param0->unk_10550[v0].unk_00);
    }
}

static void ov70_022695E0 (UnkStruct_ov70_02269204 * param0, NARC * param1, u32 param2)
{
    int v0;

    for (v0 = 0; v0 < 39; v0++) {
        ov70_0225C730(&param0->unk_10640[v0], param1, 144 + v0, param2);
    }
}

static void ov70_02269608 (UnkStruct_ov70_02269204 * param0)
{
    int v0;
    NNSG3dTexKey v1;
    NNSG3dTexKey v2;
    NNSG3dPlttKey v3;
    NNSG3dResTex * v4;

    for (v0 = 0; v0 < 39; v0++) {
        v4 = NNS_G3dGetTex(param0->unk_10640[v0]);

        NNS_G3dTexReleaseTexKey(v4, &v1, &v2);
        NNS_GfdFreeTexVram(v1);
        NNS_GfdFreeTexVram(v2);

        v3 = NNS_G3dPlttReleasePlttKey(v4);
        NNS_GfdFreePlttVram(v3);
        Heap_FreeToHeap(param0->unk_10640[v0]);
    }
}

static void ov70_0226965C (UnkStruct_ov70_02269204 * param0, NARC * param1, u32 param2)
{
    int v0, v1;

    for (v0 = 0; v0 < 39; v0++) {
        for (v1 = 0; v1 < 2; v1++) {
            if (Unk_ov70_0226E5A4[v0].unk_02[v1] != 17) {
                if (param0->unk_106DC[Unk_ov70_0226E5A4[v0].unk_02[v1]].unk_00 == NULL) {
                    param0->unk_10550[Unk_ov70_0226E5A4[v0].unk_00].unk_0C = NNS_G3dGetTex(param0->unk_10640[Unk_ov70_0226E5A4[v0].unk_01]);
                    sub_02017164(&param0->unk_106DC[Unk_ov70_0226E5A4[v0].unk_02[v1]], &param0->unk_10550[Unk_ov70_0226E5A4[v0].unk_00], param1, 183 + Unk_ov70_0226E5A4[v0].unk_02[v1], param2, &param0->unk_1081C);
                }
            }
        }
    }
}

static void ov70_02269700 (UnkStruct_ov70_02269204 * param0)
{
    int v0;

    for (v0 = 0; v0 < 16; v0++) {
        if (param0->unk_106DC[v0].unk_00 != NULL) {
            sub_020171A0(&param0->unk_106DC[v0], &param0->unk_1081C);
            param0->unk_106DC[v0].unk_00 = NULL;
        }
    }
}

static void ov70_02269738 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1, UnkStruct_ov70_0225CC54 * param2, u32 param3)
{
    static void(*const v0[27])(UnkStruct_ov70_02269204 *, UnkStruct_ov70_02269800 *) = {
        ov70_0226A244,
        ov70_0226A294,
        ov70_0226A2E4,
        ov70_0226A334,
        ov70_0226A384,
        ov70_0226A3D4,
        ov70_0226A424,
        ov70_0226A478,
        ov70_0226A4CC,
        ov70_02269B10,
        ov70_02269B1C,
        ov70_02269B28,
        ov70_02269B58,
        ov70_02269B58,
        ov70_02269B58,
        ov70_02269B34,
        ov70_02269B40,
        ov70_02269B4C,
        ov70_02269BB8,
        ov70_02269CFC,
        ov70_02269F30,
        ov70_0226A220,
        ov70_0226A22C,
        ov70_0226A238,
        ov70_0226A1FC,
        ov70_0226A208,
        ov70_0226A214
    };

    static const u32 v1[27] = {
        1413,
        1414,
        1415,
        1419,
        1420,
        1421,
        1416,
        1417,
        1418,
        1427,
        1428,
        1429,
        1433,
        1434,
        1435,
        1422,
        1423,
        1424,
        1439,
        1440,
        1441,
        1442,
        1443,
        1444,
        1426,
        1426,
        1426
    };

    GF_ASSERT(param3 < 27);

    ov70_022697F0(param0, param1);

    param1->unk_08 = param2;
    param1->unk_00 = param3;
    param1->unk_04 = 40 + ov70_0225CD60(param2, 5);

    v0[param1->unk_00](param0, param1);

    ov70_02269510(param0, param1, v1[param1->unk_00]);
}

static void ov70_0226978C (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    static BOOL(*const v0[27])(UnkStruct_ov70_02269204 *, UnkStruct_ov70_02269800 *) = {
        ov70_0226A930,
        ov70_0226A930,
        ov70_0226A930,
        ov70_0226A930,
        ov70_0226A930,
        ov70_0226A930,
        ov70_0226A958,
        ov70_0226A958,
        ov70_0226A958,
        ov70_0226A520,
        ov70_0226A520,
        ov70_0226A520,
        ov70_0226A5F0,
        ov70_0226A5FC,
        ov70_0226A608,
        ov70_0226A614,
        ov70_0226A614,
        ov70_0226A614,
        ov70_0226A6C8,
        ov70_0226A6C8,
        ov70_0226A6C8,
        ov70_0226A858,
        ov70_0226A858,
        ov70_0226A858,
        ov70_0226A820,
        ov70_0226A820,
        ov70_0226A820
    };

    if (ov70_02269800(param1) == 0) {
        return;
    }

    GF_ASSERT(param1->unk_00 < 27);

    if (v0[param1->unk_00](param0, param1) == 1) {
        ov70_022697F0(param0, param1);
    }
}

static BOOL ov70_022697C8 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    if (ov70_02269800(param1) == 0) {
        return 0;
    }

    GF_ASSERT(param1->unk_00 < 27);

    return ov70_0226A998(param0, param1);
}

static void ov70_022697F0 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    memset(param1, 0, sizeof(UnkStruct_ov70_02269800));
}

static BOOL ov70_02269800 (const UnkStruct_ov70_02269800 * param0)
{
    if (param0->unk_08 == NULL) {
        return 0;
    }

    return 1;
}

static BOOL ov70_02269810 (const UnkStruct_ov70_02269800 * param0, u32 param1)
{
    if (param0->unk_87C[param1] == NULL) {
        return 0;
    }

    return 1;
}

static void ov70_02269828 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1, u32 param2, const UnkStruct_ov70_0226E5A4 * param3)
{
    int v0;

    GF_ASSERT(param2 < 18);
    GF_ASSERT(param1->unk_87C[param2] == NULL);

    param1->unk_87C[param2] = param3;

    sub_02017258(&param1->unk_0C[param2], &param0->unk_10550[param3->unk_00]);
}

static void ov70_02269878 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1, u32 param2)
{
    BOOL v0;
    void * v1;
    UnkStruct_020170F4 * v2;
    UnkStruct_02017248 * v3;
    int v4;

    GF_ASSERT(param1->unk_87C[param2] != NULL);

    if (sub_0201734C(&param1->unk_0C[param2]) == 0) {
        return;
    }

    v1 = param0->unk_10640[param1->unk_87C[param2]->unk_01];
    v2 = &param0->unk_10550[param1->unk_87C[param2]->unk_00];
    v2->unk_0C = NNS_G3dGetTex(v1);
    v0 = NNS_G3dForceBindMdlTex(v2->unk_08, v2->unk_0C, 0, 0);
    GF_ASSERT(v0);

    v0 = NNS_G3dForceBindMdlPltt(v2->unk_08, v2->unk_0C, 0, 0);
    GF_ASSERT(v0);

    for (v4 = 0; v4 < 2; v4++) {
        if (param1->unk_87C[param2]->unk_02[v4] != 17) {
            v3 = &param0->unk_106DC[param1->unk_87C[param2]->unk_02[v4]];
            sub_0201727C(&param1->unk_0C[param2], v3);
            sub_02017240(v3, param1->unk_8C4[param2][v4]);
        } else {
            break;
        }
    }

    NNS_G3dMdlSetMdlPolygonIDAll(v2->unk_08, param1->unk_04);
    sub_02017294(&param1->unk_0C[param2]);

    for (v4 = 0; v4 < 2; v4++) {
        if (param1->unk_87C[param2]->unk_02[v4] != 17) {
            v3 = &param0->unk_106DC[param1->unk_87C[param2]->unk_02[v4]];
            sub_02017288(&param1->unk_0C[param2], v3);
        } else {
            break;
        }
    }

    NNS_G3dReleaseMdlTex(v2->unk_08);
    NNS_G3dReleaseMdlPltt(v2->unk_08);

    v2->unk_0C = NULL;
}

static void ov70_022699BC (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1, u32 param2, u32 param3)
{
    ov70_022699E4(param0, param1, param2, param3, (FX32_ONE * 2));
}

static BOOL ov70_022699D0 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1, u32 param2, u32 param3)
{
    return ov70_02269A3C(param0, param1, param2, param3, (FX32_ONE * 2));
}

static void ov70_022699E4 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1, u32 param2, u32 param3, fx32 param4)
{
    fx32 v0;
    UnkStruct_02017248 * v1;

    v1 = &param0->unk_106DC[param1->unk_87C[param2]->unk_02[param3]];
    v0 = sub_0201724C(v1);

    if ((param1->unk_8C4[param2][param3] + param4) < v0) {
        param1->unk_8C4[param2][param3] += param4;
    } else {
        param1->unk_8C4[param2][param3] = (param1->unk_8C4[param2][param3] + (FX32_ONE * 2)) % v0;
    }
}

static BOOL ov70_02269A3C (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1, u32 param2, u32 param3, fx32 param4)
{
    fx32 v0;
    BOOL v1;
    UnkStruct_02017248 * v2;

    v2 = &param0->unk_106DC[param1->unk_87C[param2]->unk_02[param3]];
    v0 = sub_0201724C(v2);

    if ((param1->unk_8C4[param2][param3] + param4) < v0) {
        param1->unk_8C4[param2][param3] += param4;
        v1 = 0;
    } else {
        param1->unk_8C4[param2][param3] = v0 - FX32_HALF;
        v1 = 1;
    }

    return v1;
}

static void ov70_02269A90 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1, u32 param2, u32 param3, fx32 param4)
{
    fx32 v0;
    UnkStruct_02017248 * v1;

    v1 = &param0->unk_106DC[param1->unk_87C[param2]->unk_02[param3]];
    v0 = sub_0201724C(v1);

    if (v0 < param4) {
        param1->unk_8C4[param2][param3] = v0 - FX32_HALF;
    } else {
        param1->unk_8C4[param2][param3] = param4;
    }
}

static fx32 ov70_02269AE8 (const UnkStruct_ov70_02269204 * param0, const UnkStruct_ov70_02269800 * param1, u32 param2, u32 param3)
{
    fx32 v0;
    const UnkStruct_02017248 * v1;

    v1 = &param0->unk_106DC[param1->unk_87C[param2]->unk_02[param3]];
    return sub_02017248(v1);
}

static void ov70_02269B10 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    ov70_0226B92C(param0, param1, 1);
}

static void ov70_02269B1C (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    ov70_0226B92C(param0, param1, 2);
}

static void ov70_02269B28 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    ov70_0226B92C(param0, param1, 3);
}

static void ov70_02269B34 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    ov70_0226BAC8(param0, param1, 1);
}

static void ov70_02269B40 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    ov70_0226BAC8(param0, param1, 2);
}

static void ov70_02269B4C (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    ov70_0226BAC8(param0, param1, 3);
}

static void ov70_02269B58 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    int v0;
    VecFx32 v1;

    for (v0 = 0; v0 < 3; v0++) {
        ov70_02269828(param0, param1, v0, &Unk_ov70_0226E5A4[3 + v0]);
        ov70_0225D054(param1->unk_08, &v1);

        v1.x += (FX32_CONST(0));
        v1.z += (FX32_CONST(0));
        v1.y += (FX32_CONST(8)) + (FX_Mul(FX32_ONE * v0, (FX32_CONST(0))));

        sub_02017350(&param1->unk_0C[v0], v1.x, v1.y, v1.z);
        sub_02017348(&param1->unk_0C[v0], 0);
    }

    param1->unk_954.val5.unk_00 = 0xff;
}

static void ov70_02269BB8 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    VecFx32 v0, v1;
    u32 v2;

    ov70_02269828(param0, param1, 1, &Unk_ov70_0226E5A4[9]);
    ov70_02269828(param0, param1, 0, &Unk_ov70_0226E5A4[12]);
    sub_02017348(&param1->unk_0C[1], 0);
    ov70_0225D054(param1->unk_08, &v0);

    v0.y += (FX32_CONST(16));
    v0.x += (FX32_CONST(8));
    v1 = v0;
    v1.y += (FX32_CONST(16));

    param1->unk_954.val2.unk_04[0] = 8;

    v2 = ov70_0225CD60(param1->unk_08, 6);

    switch (v2) {
    case 0:
        v0.z -= (FX32_CONST(28));
        v1.z -= (FX32_CONST(14));
        sub_02017388(&param1->unk_0C[1], ((270 * 0xffff) / 360), 1);
        break;
    case 1:
        v0.z += (FX32_CONST(24));
        v1.z += (FX32_CONST(11));
        sub_02017388(&param1->unk_0C[1], ((90 * 0xffff) / 360), 1);
        break;
    case 2:
        v0.x -= (FX32_CONST(23));
        v1.x -= (FX32_CONST(7));
        v1.z += (FX32_CONST(8));
        sub_02017388(&param1->unk_0C[1], ((0 * 0xffff) / 360), 1);
        break;
    case 3:
        v0.x += (FX32_CONST(23));
        v1.x += (FX32_CONST(7));
        v1.z += (FX32_CONST(8));
        sub_02017388(&param1->unk_0C[1], ((180 * 0xffff) / 360), 1);
        break;
    default:
        break;
    }

    sub_02017350(&param1->unk_0C[1], v0.x, v0.y, v0.z);
    sub_02017350(&param1->unk_0C[0], v1.x, v1.y, v1.z);
}

static void ov70_02269CFC (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    VecFx32 v0, v1;
    u32 v2;

    ov70_02269828(param0, param1, 1, &Unk_ov70_0226E5A4[9]);
    ov70_02269828(param0, param1, 0, &Unk_ov70_0226E5A4[12]);
    ov70_02269828(param0, param1, 2, &Unk_ov70_0226E5A4[10]);
    sub_02017348(&param1->unk_0C[1], 0);
    ov70_0225D054(param1->unk_08, &v0);

    v0.y += (FX32_CONST(16));
    v0.x += (FX32_CONST(8));
    v1 = v0;
    v1.y += (FX32_CONST(16));

    param1->unk_954.val2.unk_04[0] = 8;
    param1->unk_954.val2.unk_04[1] = 8;

    v2 = ov70_0225CD60(param1->unk_08, 6);

    switch (v2) {
    case 0:
        v0.z -= (FX32_CONST(28));
        v1.z -= (FX32_CONST(14));
        sub_02017388(&param1->unk_0C[1], (((270 - 40) * 0xffff) / 360), 1);
        sub_02017388(&param1->unk_0C[2], (((270 + 40) * 0xffff) / 360), 1);
        sub_02017350(&param1->unk_0C[1], v0.x + (FX32_CONST(8)), v0.y, v0.z);
        sub_02017350(&param1->unk_0C[2], v0.x - (FX32_CONST(8)), v0.y, v0.z);
        break;
    case 1:
        v0.z += (FX32_CONST(24));
        v1.z += (FX32_CONST(11));

        sub_02017388(&param1->unk_0C[1], (((90 - 40) * 0xffff) / 360), 1);
        sub_02017388(&param1->unk_0C[2], (((90 + 40) * 0xffff) / 360), 1);
        sub_02017350(&param1->unk_0C[1], v0.x - (FX32_CONST(8)), v0.y, v0.z);
        sub_02017350(&param1->unk_0C[2], v0.x + (FX32_CONST(8)), v0.y, v0.z);
        break;
    case 2:
        v0.x -= (FX32_CONST(23));
        v1.x -= (FX32_CONST(7));
        v1.z += (FX32_CONST(8));

        sub_02017388(&param1->unk_0C[1], (((0 - 40) * 0xffff) / 360), 1);
        sub_02017388(&param1->unk_0C[2], (((0 + 40) * 0xffff) / 360), 1);
        sub_02017350(&param1->unk_0C[1], v0.x, v0.y, v0.z - (FX32_CONST(8)));
        sub_02017350(&param1->unk_0C[2], v0.x, v0.y, v0.z + (FX32_CONST(8)));
        break;
    case 3:
        v0.x += (FX32_CONST(23));
        v1.x += (FX32_CONST(7));
        v1.z += (FX32_CONST(8));

        sub_02017388(&param1->unk_0C[1], (((180 - 40) * 0xffff) / 360), 1);
        sub_02017388(&param1->unk_0C[2], (((180 + 40) * 0xffff) / 360), 1);
        sub_02017350(&param1->unk_0C[1], v0.x, v0.y, v0.z + (FX32_CONST(8)));
        sub_02017350(&param1->unk_0C[2], v0.x, v0.y, v0.z - (FX32_CONST(8)));
        break;
    default:
        break;
    }

    sub_02017350(&param1->unk_0C[0], v1.x, v1.y, v1.z);
}

static void ov70_02269F30 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    VecFx32 v0, v1;
    u32 v2;

    ov70_02269828(param0, param1, 1, &Unk_ov70_0226E5A4[9]);
    ov70_02269828(param0, param1, 0, &Unk_ov70_0226E5A4[12]);
    ov70_02269828(param0, param1, 2, &Unk_ov70_0226E5A4[10]);
    ov70_02269828(param0, param1, 3, &Unk_ov70_0226E5A4[11]);

    sub_02017348(&param1->unk_0C[1], 0);

    param1->unk_954.val2.unk_04[0] = 8;
    param1->unk_954.val2.unk_04[1] = 8;
    param1->unk_954.val2.unk_04[2] = 8;

    ov70_0225D054(param1->unk_08, &v0);

    v0.y += (FX32_CONST(16));
    v0.x += (FX32_CONST(8));
    v1 = v0;
    v1.y += (FX32_CONST(16));
    v2 = ov70_0225CD60(param1->unk_08, 6);

    switch (v2) {
    case 0:
        v0.z -= (FX32_CONST(28));
        v1.z -= (FX32_CONST(14));

        sub_02017388(&param1->unk_0C[1], (((270 - 40) * 0xffff) / 360), 1);
        sub_02017388(&param1->unk_0C[2], (((270 + 40) * 0xffff) / 360), 1);
        sub_02017388(&param1->unk_0C[3], ((270 * 0xffff) / 360), 1);
        sub_02017350(&param1->unk_0C[1], v0.x + (FX32_CONST(8)), v0.y, v0.z);
        sub_02017350(&param1->unk_0C[2], v0.x - (FX32_CONST(8)), v0.y, v0.z);
        sub_02017350(&param1->unk_0C[3], v0.x, v0.y, v0.z);
        break;
    case 1:
        v0.z += (FX32_CONST(24));
        v1.z += (FX32_CONST(11));

        sub_02017388(&param1->unk_0C[1], (((90 - 40) * 0xffff) / 360), 1);
        sub_02017388(&param1->unk_0C[2], (((90 + 40) * 0xffff) / 360), 1);
        sub_02017388(&param1->unk_0C[3], ((90 * 0xffff) / 360), 1);
        sub_02017350(&param1->unk_0C[1], v0.x - (FX32_CONST(8)), v0.y, v0.z);
        sub_02017350(&param1->unk_0C[2], v0.x + (FX32_CONST(8)), v0.y, v0.z);
        sub_02017350(&param1->unk_0C[3], v0.x, v0.y, v0.z);
        break;
    case 2:
        v0.x -= (FX32_CONST(23));
        v1.x -= (FX32_CONST(7));
        v1.z += (FX32_CONST(8));

        sub_02017388(&param1->unk_0C[1], (((0 - 40) * 0xffff) / 360), 1);
        sub_02017388(&param1->unk_0C[2], (((0 + 40) * 0xffff) / 360), 1);
        sub_02017388(&param1->unk_0C[3], ((0 * 0xffff) / 360), 1);
        sub_02017350(&param1->unk_0C[1], v0.x, v0.y, v0.z - (FX32_CONST(8)));
        sub_02017350(&param1->unk_0C[2], v0.x, v0.y, v0.z + (FX32_CONST(8)));
        sub_02017350(&param1->unk_0C[3], v0.x, v0.y, v0.z);
        break;
    case 3:
        v0.x += (FX32_CONST(23));
        v1.x += (FX32_CONST(7));
        v1.z += (FX32_CONST(8));

        sub_02017388(&param1->unk_0C[1], (((180 - 40) * 0xffff) / 360), 1);
        sub_02017388(&param1->unk_0C[2], (((180 + 40) * 0xffff) / 360), 1);
        sub_02017388(&param1->unk_0C[3], ((180 * 0xffff) / 360), 1);
        sub_02017350(&param1->unk_0C[1], v0.x, v0.y, v0.z + (FX32_CONST(8)));
        sub_02017350(&param1->unk_0C[2], v0.x, v0.y, v0.z - (FX32_CONST(8)));
        sub_02017350(&param1->unk_0C[3], v0.x, v0.y, v0.z);
        break;
    default:
        break;
    }

    sub_02017350(&param1->unk_0C[0], v1.x, v1.y, v1.z);
}

static void ov70_0226A1FC (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    ov70_0226A9D0(param0, param1, 1);
}

static void ov70_0226A208 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    ov70_0226A9D0(param0, param1, 2);
}

static void ov70_0226A214 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    ov70_0226A9D0(param0, param1, 3);
}

static void ov70_0226A220 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    ov70_0226B7B0(param0, param1, 1);
}

static void ov70_0226A22C (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    ov70_0226B7B0(param0, param1, 2);
}

static void ov70_0226A238 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    ov70_0226B7B0(param0, param1, 4);
}

static void ov70_0226A244 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    int v0;

    for (v0 = 0; v0 < 16; v0++) {
        ov70_02269828(param0, param1, v0, &Unk_ov70_0226E5A4[Unk_ov70_0226E640[v0]]);
    }

    ov70_0226BC40(&param1->unk_954, Unk_ov70_0226E2EC, NELEMS(Unk_ov70_0226E2EC), 33, 0, param1);
}

static void ov70_0226A294 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    int v0;

    for (v0 = 0; v0 < 16; v0++) {
        ov70_02269828(param0, param1, v0, &Unk_ov70_0226E5A4[Unk_ov70_0226E650[v0]]);
    }

    ov70_0226BC40(&param1->unk_954, Unk_ov70_0226E304, NELEMS(Unk_ov70_0226E304), 33, 0, param1);
}

static void ov70_0226A2E4 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    int v0;

    for (v0 = 0; v0 < 16; v0++) {
        ov70_02269828(param0, param1, v0, &Unk_ov70_0226E5A4[Unk_ov70_0226E660[v0]]);
    }

    ov70_0226BC40(&param1->unk_954, Unk_ov70_0226E34C, NELEMS(Unk_ov70_0226E34C), 33, 0, param1);
}

static void ov70_0226A334 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    int v0;

    for (v0 = 0; v0 < 16; v0++) {
        ov70_02269828(param0, param1, v0, &Unk_ov70_0226E5A4[Unk_ov70_0226E640[v0]]);
    }

    ov70_0226BC40(&param1->unk_954, Unk_ov70_0226E2FC, NELEMS(Unk_ov70_0226E2FC), 33, 1, param1);
}

static void ov70_0226A384 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    int v0;

    for (v0 = 0; v0 < 16; v0++) {
        ov70_02269828(param0, param1, v0, &Unk_ov70_0226E5A4[Unk_ov70_0226E650[v0]]);
    }

    ov70_0226BC40(&param1->unk_954, Unk_ov70_0226E334, NELEMS(Unk_ov70_0226E334), 41, 1, param1);
}

static void ov70_0226A3D4 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    int v0;

    for (v0 = 0; v0 < 16; v0++) {
        ov70_02269828(param0, param1, v0, &Unk_ov70_0226E5A4[Unk_ov70_0226E660[v0]]);
    }

    ov70_0226BC40(&param1->unk_954, Unk_ov70_0226E358, NELEMS(Unk_ov70_0226E358), 33, 1, param1);
}

static void ov70_0226A424 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    int v0;
    VecFx32 v1;

    for (v0 = 0; v0 < 16; v0++) {
        ov70_02269828(param0, param1, v0, &Unk_ov70_0226E5A4[Unk_ov70_0226E640[v0]]);
    }

    ov70_0226BC40(&param1->unk_954, Unk_ov70_0226E314, NELEMS(Unk_ov70_0226E314), 33, 2, param1);
    ov70_0226BB34(param0, param1);
}

static void ov70_0226A478 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    int v0;
    VecFx32 v1;

    for (v0 = 0; v0 < 16; v0++) {
        ov70_02269828(param0, param1, v0, &Unk_ov70_0226E5A4[Unk_ov70_0226E650[v0]]);
    }

    ov70_0226BC40(&param1->unk_954, Unk_ov70_0226E2F4, NELEMS(Unk_ov70_0226E2F4), 33, 2, param1);
    ov70_0226BB34(param0, param1);
}

static void ov70_0226A4CC (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    int v0;

    for (v0 = 0; v0 < 16; v0++) {
        ov70_02269828(param0, param1, v0, &Unk_ov70_0226E5A4[Unk_ov70_0226E660[v0]]);
    }

    ov70_0226BC40(&param1->unk_954, Unk_ov70_0226E30C, NELEMS(Unk_ov70_0226E30C), 33, 2, param1);
    ov70_0226BB34(param0, param1);
}

static BOOL ov70_0226A520 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    int v0;
    BOOL v1;
    u32 v2;
    u32 v3;

    if ((param1->unk_02 + 1) <= 54) {
        param1->unk_02++;
    }

    v2 = (param1->unk_02 * 6) / 54;

    for (v0 = param1->unk_954.val4.unk_01; v0 < v2; v0++) {
        v3 = v0 % 3;

        if (v3 < param1->unk_954.val4.unk_00) {
            sub_02017348(&param1->unk_0C[v3], 1);
        }
    }

    param1->unk_954.val4.unk_01 = v2;

    v1 = 1;

    for (v0 = 0; v0 < param1->unk_954.val4.unk_00; v0++) {
        if (sub_0201734C(&param1->unk_0C[v0]) == 1) {
            v1 = ov70_022699D0(param0, param1, v0, 0);

            if (v1) {
                sub_02017348(&param1->unk_0C[v0], 0);
                ov70_02269A90(param0, param1, v0, 0, 0);
            }
        }
    }

    if ((param1->unk_954.val4.unk_01 >= 6) && (v1 == 1)) {
        return 1;
    }

    return 0;
}

static BOOL ov70_0226A5F0 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    return ov70_0226B998(param0, param1, 0);
}

static BOOL ov70_0226A5FC (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    return ov70_0226B998(param0, param1, 1);
}

static BOOL ov70_0226A608 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    return ov70_0226B998(param0, param1, 2);
}

static BOOL ov70_0226A614 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    u32 v0;
    int v1;
    BOOL v2;

    v0 = (param1->unk_02 * 3) / 32;

    if (v0 != param1->unk_954.val6.unk_00) {
        param1->unk_954.val6.unk_00 = v0;

        if (param1->unk_954.val6.unk_02 > v0) {
            if (v0 > 0) {
                sub_02017348(&param1->unk_0C[v0 - 1], 0);
            }

            sub_02017348(&param1->unk_0C[v0], 1);
        }
    }

    if (param1->unk_02 < 32) {
        param1->unk_02++;
    }

    v2 = 0;

    for (v1 = 0; v1 < param1->unk_954.val6.unk_02; v1++) {
        if (sub_0201734C(&param1->unk_0C[v1])) {
            if (v1 == param1->unk_954.val6.unk_02 - 1) {
                v2 = ov70_022699D0(param0, param1, v1, 0);
            } else {
                ov70_022699BC(param0, param1, v1, 0);
            }
        }
    }

    return v2;
}

static BOOL ov70_0226A6C8 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    BOOL v0;
    BOOL v1;
    int v2;

    GF_ASSERT(param1->unk_87C[0]->unk_02[0] != 17);

    if (param1->unk_954.val2.unk_00 > 0) {
        param1->unk_954.val2.unk_00--;
        sub_02017348(&param1->unk_0C[0], 0);
    } else {
        if (param1->unk_02 < 3) {
            if (ov70_02269810(param1, param1->unk_02 + 1) == 1) {
                sub_02017348(&param1->unk_0C[0], 1);
                v0 = ov70_022699D0(param0, param1, 0, 0);

                if (v0 == 1) {
                    param1->unk_02++;
                    param1->unk_954.val2.unk_00 = 3;

                    if (param1->unk_02 < 3) {
                        ov70_02269A90(param0, param1, 0, 0, 0);
                    } else {
                        sub_02017348(&param1->unk_0C[0], 0);
                    }
                }
            }
        }
    }

    v1 = 1;

    for (v2 = 1; v2 <= 3; v2++) {
        if (ov70_02269810(param1, v2) == 1) {
            if (param1->unk_02 > (v2 - 1)) {
                sub_02017348(&param1->unk_0C[v2], 1);
                v0 = ov70_02269A3C(param0, param1, v2, 0, FX32_CONST(2.50f));

                if (v0 == 0) {
                    v1 = 0;
                } else {
                    s32 v3;
                    s32 v4;

                    v4 = v2 - 1;

                    if (param1->unk_954.val2.unk_04[v4] == 0) {
                        sub_02017348(&param1->unk_0C[v2], 0);
                        NNS_G3dMdlSetMdlAlphaAll(param0->unk_10550[param1->unk_87C[v2]->unk_00].unk_08, 31);
                    } else {
                        param1->unk_954.val2.unk_04[v4]--;
                        v3 = (param1->unk_954.val2.unk_04[v4] * 20) / 8;
                        NNS_G3dMdlSetMdlAlphaAll(param0->unk_10550[param1->unk_87C[v2]->unk_00].unk_08, v3);
                        v1 = 0;
                    }
                }
            } else {
                v1 = 0;
            }
        }
    }

    return v1;
}

static BOOL ov70_0226A820 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    BOOL v0;

    switch (param1->unk_01) {
    case 0:
        v0 = ov70_0226AC08(param0, param1);

        if (v0) {
            param1->unk_01 = 1;
            ov70_0226ADA0(param0, param1);
        }
        break;
    case 1:
        v0 = ov70_0226AF60(param0, param1);

        if (v0) {
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov70_0226A858 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    BOOL v0;
    u32 v1;
    int v2;

    if ((param1->unk_954.val3.unk_01 < param1->unk_954.val3.unk_02)) {
        param1->unk_954.val3.unk_00++;

        if (param1->unk_954.val3.unk_00 >= 8) {
            param1->unk_954.val3.unk_00 = 0;
            param1->unk_954.val3.unk_01++;
        }

        v1 = (param1->unk_954.val3.unk_00 * 4) / 8;
        v1 += param1->unk_954.val3.unk_01 * 4;

        for (v2 = param1->unk_954.val3.unk_03; v2 < v1; v2++) {
            sub_02017348(&param1->unk_0C[v2], 1);
        }

        param1->unk_954.val3.unk_03 = v1;
    }

    for (v2 = 0; v2 < param1->unk_954.val3.unk_03; v2++) {
        if (sub_0201734C(&param1->unk_0C[v2]) == 1) {
            v0 = ov70_0226B8C4(param0, param1, v2);

            if (v0 == 1) {
                sub_02017348(&param1->unk_0C[v2], 0);
            }
        }
    }

    if ((param1->unk_954.val3.unk_01 == param1->unk_954.val3.unk_02) && (v0 == 1)) {
        return 1;
    }

    return 0;
}

static BOOL ov70_0226A930 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    u32 v0;

    v0 = ov70_0226BCC0(&param1->unk_954, param1->unk_02);
    param1->unk_02++;

    if (v0 == 2) {
        return 1;
    }

    return 0;
}

static BOOL ov70_0226A958 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    u32 v0;
    int v1;

    v0 = ov70_0226BCC0(&param1->unk_954, param1->unk_02);
    param1->unk_02++;

    if (v0 == 1) {
        ov70_0226BBA8(param0, param1);
    }

    ov70_0226BBDC(param0, param1);

    if (v0 == 2) {
        return 1;
    }

    return 0;
}

static BOOL ov70_0226A998 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    int v0;

    if (ov70_0225CE70(param1->unk_08) == 1) {
        return 0;
    }

    for (v0 = 0; v0 < 18; v0++) {
        if (ov70_02269810(param1, v0) == 1) {
            ov70_02269878(param0, param1, v0);
        }
    }

    return 1;
}

static void ov70_0226A9D0 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1, u32 param2)
{
    VecFx32 v0;

    {
        if (param1->unk_08 == ov70_0225CCAC(param0->unk_04)) {
            ov70_02260B3C(param0->unk_08);
        }
    }

    {
        UnkStruct_ov63_0222CC3C v1;
        u32 v2;

        v1 = ov70_0225CD34(param1->unk_08);
        v2 = ov70_0225C8C4(param0->unk_0C, (v1.unk_00) / 16, (v1.unk_02) / 16);

        if (v2 == 42) {
            param1->unk_954.val1.unk_11 = 1;
        } else {
            param1->unk_954.val1.unk_11 = 0;
        }
    }

    switch (param2) {
    case 1:
        ov70_02269828(param0, param1, 0, &Unk_ov70_0226E5A4[16]);
        ov70_0226B714(param0, param1, 0, 0);
        break;
    case 2:
        ov70_02269828(param0, param1, 0, &Unk_ov70_0226E5A4[16]);
        ov70_02269828(param0, param1, 1, &Unk_ov70_0226E5A4[17]);
        ov70_0226B714(param0, param1, 0, 2);
        ov70_0226B714(param0, param1, 1, 1);
        break;
    default:
    case 3:
        ov70_02269828(param0, param1, 0, &Unk_ov70_0226E5A4[16]);
        ov70_02269828(param0, param1, 1, &Unk_ov70_0226E5A4[17]);
        ov70_02269828(param0, param1, 2, &Unk_ov70_0226E5A4[18]);
        ov70_0226B714(param0, param1, 0, 0);
        ov70_0226B714(param0, param1, 1, 2);
        ov70_0226B714(param0, param1, 2, 1);
        break;
    }

    param1->unk_954.val1.unk_01 = param2;
    ov70_0225D030(param1->unk_08, 0);

    if (param1->unk_954.val1.unk_11 == 0) {
        ov70_0226AB14(param0, param1);
    } else {
        ov70_0226ABAC(param0, param1);
    }
}

static void ov70_0226AB14 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    VecFx32 v0;

    ov70_0225D054(param1->unk_08, &v0);
    ov70_022692B4(&param1->unk_954.val1.unk_B0, v0.x, v0.x, v0.y, v0.y + FX32_CONST(Unk_ov70_0226E2E8[param1->unk_954.val1.unk_01 - 1]), v0.z, v0.z, 108);
    ov70_0226949C(&param1->unk_954.val1.unk_D8, 0, (10 * 182), FX32_CONST(8));
    ov70_0226B324(param1);

    param1->unk_954.val1.unk_02 = 0;
}

static void ov70_0226ABAC (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    VecFx32 v0;

    ov70_0225D054(param1->unk_08, &v0);
    ov70_022692B4(&param1->unk_954.val1.unk_B0, v0.x, v0.x, v0.y, v0.y + FX32_CONST(2), v0.z, v0.z, 2);
    ov70_0226949C(&param1->unk_954.val1.unk_D8, 0, (10 * 182), FX32_CONST(0));
    ov70_0226B51C(param1);

    param1->unk_954.val1.unk_02 = 0;
}

static BOOL ov70_0226AC08 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    BOOL v0;

    if (param1->unk_954.val1.unk_11 == 0) {
        v0 = ov70_0226AC24(param0, param1);
    } else {
        v0 = ov70_0226AD20(param0, param1);
    }

    return v0;
}

static BOOL ov70_0226AC24 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    BOOL v0;
    VecFx32 v1;
    fx32 v2;
    int v3;

    v0 = ov70_022692DC(&param1->unk_954.val1.unk_B0, param1->unk_954.val1.unk_02);
    ov70_022694D0(&param1->unk_954.val1.unk_D8);
    param1->unk_954.val1.unk_02++;

    ov70_0225D054(param1->unk_08, &v1);
    ov70_02269488(&param1->unk_954.val1.unk_B0, &v1.x, &v1.y, &v1.z);
    ov70_02269508(&param1->unk_954.val1.unk_D8, &v2);

    if (v0 == 0) {
        v1.x += v2;
    }

    ov70_0225D048(param1->unk_08, &v1);
    ov70_0226B324(param1);

    for (v3 = 0; v3 < param1->unk_954.val1.unk_01; v3++) {
        ov70_0226B744(param0, param1, v3);
    }

    if (param1->unk_08 == ov70_0225CCAC(param0->unk_04)) {
        u32 v4 = 4;

        if (Unk_021BF67C.unk_48 & PAD_KEY_UP) {
            v4 = 0;
        }

        if (Unk_021BF67C.unk_48 & PAD_KEY_DOWN) {
            v4 = 1;
        }

        if (Unk_021BF67C.unk_48 & PAD_KEY_RIGHT) {
            v4 = 3;
        }

        if (Unk_021BF67C.unk_48 & PAD_KEY_LEFT) {
            v4 = 2;
        }

        if (v4 != 4) {
            ov70_0225D060(param1->unk_08, v4);
            ov70_0225CD04(param1->unk_08, ov70_0225CD34(param1->unk_08), v4);
        }
    }

    return v0;
}

static BOOL ov70_0226AD20 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    BOOL v0;
    VecFx32 v1;
    int v2;

    v0 = ov70_022692DC(&param1->unk_954.val1.unk_B0, param1->unk_954.val1.unk_02);
    ov70_022694D0(&param1->unk_954.val1.unk_D8);
    param1->unk_954.val1.unk_02++;

    ov70_0225D054(param1->unk_08, &v1);
    ov70_02269488(&param1->unk_954.val1.unk_B0, &v1.x, &v1.y, &v1.z);
    ov70_0225D048(param1->unk_08, &v1);
    ov70_0226B51C(param1);

    for (v2 = 0; v2 < param1->unk_954.val1.unk_01; v2++) {
        ov70_0226B744(param0, param1, v2);
    }

    return v0;
}

static void ov70_0226ADA0 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    if (param1->unk_954.val1.unk_11 == 0) {
        ov70_0226ADBC(param0, param1);
    } else {
        ov70_0226AF1C(param0, param1);
    }
}

static void ov70_0226ADBC (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    VecFx32 v0;
    VecFx32 v1;
    int v2;
    u32 v3;

    ov70_0225D054(param1->unk_08, &v0);
    ov70_022692B4(&param1->unk_954.val1.unk_B0, v0.x, v0.x, v0.y, v0.y - FX32_CONST(Unk_ov70_0226E2E8[param1->unk_954.val1.unk_01 - 1]), v0.z, v0.z, 10);

    param1->unk_954.val1.unk_02 = 0;
    param1->unk_954.val1.unk_00 = 0;

    for (v2 = 0; v2 < param1->unk_954.val1.unk_01; v2++) {
        sub_02017358(&param1->unk_0C[v2], &v0.x, &v0.y, &v0.z);
        v3 = param1->unk_954.val1.unk_0C[v2];

        switch (v3) {
        case 0:
            v1.x = v0.x;
            v1.y = v0.y + (FX32_CONST(64));
            v1.z = v0.z - (FX32_CONST(64));
            break;
        case 1:
            v1.x = v0.x + (FX32_CONST(64));
            v1.y = v0.y + (FX32_CONST(64));
            v1.z = v0.z;
            break;
        case 2:
            v1.x = v0.x - (FX32_CONST(64));
            v1.y = v0.y + (FX32_CONST(64));
            v1.z = v0.z;
            break;
        }

        ov70_022692B4(&param1->unk_954.val1.unk_38[v2], v0.x, v1.x, v0.y, v1.y, v0.z, v1.z, (10 + 16));
        ov70_0226949C(&param1->unk_954.val1.unk_14[v2], 0, (15 * 182), (FX32_CONST(6)));
        ov70_0226B714(param0, param1, v2, 3);
    }

    param1->unk_954.val1.unk_10 = 0;
}

static void ov70_0226AF1C (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    VecFx32 v0;
    VecFx32 v1;

    ov70_0225D054(param1->unk_08, &v0);
    ov70_022692B4(&param1->unk_954.val1.unk_B0, v0.x, v0.x, v0.y, v0.y - FX32_CONST(2), v0.z, v0.z, 1);

    param1->unk_954.val1.unk_02 = 0;
    param1->unk_954.val1.unk_00 = 0;
}

static BOOL ov70_0226AF60 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    BOOL v0;

    if (param1->unk_954.val1.unk_11 == 0) {
        v0 = ov70_0226AF7C(param0, param1);
    } else {
        v0 = ov70_0226B1D0(param0, param1);
    }

    return v0;
}

static BOOL ov70_0226AF7C (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    int v0;

    switch (param1->unk_954.val1.unk_00) {
    case 0:
        param1->unk_954.val1.unk_02++;

        if (param1->unk_954.val1.unk_02 >= 8) {
            param1->unk_954.val1.unk_00 = 1;
        }
        break;
    case 1:
        ov70_0225D09C(param1->unk_08, 1);
        param1->unk_954.val1.unk_02 = 16;
        param1->unk_954.val1.unk_00 = 2;
        break;
    case 2:
        param1->unk_954.val1.unk_02--;

        if (param1->unk_954.val1.unk_02 <= 0) {
            ov70_0225D09C(param1->unk_08, 0);
            param1->unk_954.val1.unk_00 = 3;
            param1->unk_954.val1.unk_02 = 0;

            {
                u32 v1;

                v1 = ov70_0225CD60(param1->unk_08, 6);
                ov70_0225D060(param1->unk_08, v1);
            }
        }
        break;
    case 3:
    {
        BOOL v2;
        VecFx32 v3;

        v2 = ov70_022692DC(&param1->unk_954.val1.unk_B0, param1->unk_954.val1.unk_02);
        param1->unk_954.val1.unk_02++;

        ov70_0225D054(param1->unk_08, &v3);
        ov70_02269488(&param1->unk_954.val1.unk_B0, &v3.x, &v3.y, &v3.z);
        ov70_0225D048(param1->unk_08, &v3);

        if (v2 == 1) {
            param1->unk_954.val1.unk_00 = 4;
            param1->unk_954.val1.unk_02 = 0;
            param1->unk_954.val1.unk_04 = v3.y;

            ov70_02269510(param0, param1, 1451);
        }
    }
    break;
    case 4:
    {
        u16 v4;
        fx32 v5;
        VecFx32 v6;

        v4 = (0x7fff * param1->unk_954.val1.unk_02) / 10;
        v5 = FX_Mul(FX_SinIdx(v4), (FX32_CONST(8)));

        ov70_0225D054(param1->unk_08, &v6);
        v6.y = param1->unk_954.val1.unk_04 + v5;
        ov70_0225D048(param1->unk_08, &v6);

        if ((param1->unk_954.val1.unk_02 + 1) > 10) {
            ov70_0225D030(param1->unk_08, 1);

            {
                if (param1->unk_08 == ov70_0225CCAC(param0->unk_04)) {
                    ov70_02260B38(param0->unk_08, param1->unk_08);
                }
            }

            return 1;
        } else {
            param1->unk_954.val1.unk_02++;
        }
    }
    break;
    }

    param1->unk_954.val1.unk_10++;

    for (v0 = 0; v0 < param1->unk_954.val1.unk_01; v0++) {
        {
            BOOL v7;
            VecFx32 v8;
            fx32 v9;
            BOOL v10;

            v7 = ov70_022692DC(&param1->unk_954.val1.unk_38[v0], param1->unk_954.val1.unk_10);

            if (v7 == 0) {
                ov70_022694D0(&param1->unk_954.val1.unk_14[v0]);
                sub_02017358(&param1->unk_0C[v0], &v8.x, &v8.y, &v8.z);
                ov70_02269488(&param1->unk_954.val1.unk_38[v0], &v8.x, &v8.y, &v8.z);
                ov70_02269508(&param1->unk_954.val1.unk_14[v0], &v9);

                v8.x += v9;

                sub_02017350(&param1->unk_0C[v0], v8.x, v8.y, v8.z);
            } else {
                v10 = ov70_0226B714(param0, param1, v0, 4);

                if (v10 == 1) {
                    ov70_02269510(param0, param1, 1425);
                }
            }
        }

        ov70_0226B744(param0, param1, v0);
    }

    return 0;
}

static BOOL ov70_0226B1D0 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    int v0;

    for (v0 = 0; v0 < param1->unk_954.val1.unk_01; v0++) {
        ov70_0226B744(param0, param1, v0);
    }

    switch (param1->unk_954.val1.unk_00) {
    case 0:
        ov70_02269510(param0, param1, 1425);

        for (v0 = 0; v0 < param1->unk_954.val1.unk_01; v0++) {
            ov70_0226B714(param0, param1, v0, 4);
        }

        param1->unk_954.val1.unk_00 = 1;
        break;
    case 1:
        ov70_0225D09C(param1->unk_08, 1);
        param1->unk_954.val1.unk_02 = 8;
        param1->unk_954.val1.unk_00 = 2;
        break;
    case 2:
        param1->unk_954.val1.unk_02--;

        if (param1->unk_954.val1.unk_02 <= 0) {
            ov70_0225D09C(param1->unk_08, 0);
            param1->unk_954.val1.unk_00 = 3;
            param1->unk_954.val1.unk_02 = 0;

            {
                u32 v1;

                v1 = ov70_0225CD60(param1->unk_08, 6);
                ov70_0225D060(param1->unk_08, v1);
            }
        }
        break;
    case 3:
    {
        BOOL v2;
        VecFx32 v3;

        v2 = ov70_022692DC(&param1->unk_954.val1.unk_B0, param1->unk_954.val1.unk_02);
        param1->unk_954.val1.unk_02++;

        ov70_0225D054(param1->unk_08, &v3);
        ov70_02269488(&param1->unk_954.val1.unk_B0, &v3.x, &v3.y, &v3.z);
        ov70_0225D048(param1->unk_08, &v3);

        if (v2 == 1) {
            param1->unk_954.val1.unk_02 = 0;
            param1->unk_954.val1.unk_04 = v3.y;

            ov70_02269510(param0, param1, 1451);
            ov70_0225D030(param1->unk_08, 1);

            {
                if (param1->unk_08 == ov70_0225CCAC(param0->unk_04)) {
                    ov70_02260B38(param0->unk_08, param1->unk_08);
                }
            }

            return 1;
        }
    }
    break;
    }

    return 0;
}

static void ov70_0226B324 (UnkStruct_ov70_02269800 * param0)
{
    VecFx32 v0;

    ov70_0225D054(param0->unk_08, &v0);

    switch (param0->unk_954.val1.unk_01) {
    case 1:
        sub_02017350(&param0->unk_0C[0], v0.x + FX32_CONST(Unk_ov70_0226E328[2].unk_00), v0.y + FX32_CONST(Unk_ov70_0226E328[2].unk_02), v0.z + (FX32_CONST(1)));
        break;
    case 2:
        sub_02017350(&param0->unk_0C[0], v0.x + FX32_CONST(Unk_ov70_0226E328[0].unk_00), v0.y + FX32_CONST(Unk_ov70_0226E328[0].unk_02), v0.z + (FX32_CONST(1)));
        sub_02017350(&param0->unk_0C[1], v0.x + FX32_CONST(Unk_ov70_0226E328[1].unk_00), v0.y + FX32_CONST(Unk_ov70_0226E328[1].unk_02), v0.z + (FX32_CONST(1)));
        break;
    default:
    case 3:
        sub_02017350(&param0->unk_0C[0], v0.x + FX32_CONST(Unk_ov70_0226E328[2].unk_00), v0.y + FX32_CONST(Unk_ov70_0226E328[2].unk_02), v0.z + (FX32_CONST(1)));
        sub_02017350(&param0->unk_0C[1], v0.x + FX32_CONST(Unk_ov70_0226E328[0].unk_00), v0.y + FX32_CONST(Unk_ov70_0226E328[0].unk_02), v0.z + (FX32_CONST(1)));
        sub_02017350(&param0->unk_0C[2], v0.x + FX32_CONST(Unk_ov70_0226E328[1].unk_00), v0.y + FX32_CONST(Unk_ov70_0226E328[1].unk_02), v0.z + (FX32_CONST(1)));
        break;
    }
}

static void ov70_0226B51C (UnkStruct_ov70_02269800 * param0)
{
    VecFx32 v0;

    ov70_0225D054(param0->unk_08, &v0);

    switch (param0->unk_954.val1.unk_01) {
    case 1:
        sub_02017350(&param0->unk_0C[0], v0.x + FX32_CONST(Unk_ov70_0226E340[2].unk_00), v0.y + FX32_CONST(Unk_ov70_0226E340[2].unk_02), v0.z + (-FX32_CONST(8)));
        break;
    case 2:
        sub_02017350(&param0->unk_0C[0], v0.x + FX32_CONST(Unk_ov70_0226E340[0].unk_00), v0.y + FX32_CONST(Unk_ov70_0226E340[0].unk_02), v0.z + (-FX32_CONST(8)));
        sub_02017350(&param0->unk_0C[1], v0.x + FX32_CONST(Unk_ov70_0226E340[1].unk_00), v0.y + FX32_CONST(Unk_ov70_0226E340[1].unk_02), v0.z + (-FX32_CONST(8)));
        break;
    default:
    case 3:
        sub_02017350(&param0->unk_0C[0], v0.x + FX32_CONST(Unk_ov70_0226E340[2].unk_00), v0.y + FX32_CONST(Unk_ov70_0226E340[2].unk_02), v0.z + (-FX32_CONST(8)));
        sub_02017350(&param0->unk_0C[1], v0.x + FX32_CONST(Unk_ov70_0226E340[0].unk_00), v0.y + FX32_CONST(Unk_ov70_0226E340[0].unk_02), v0.z + (-FX32_CONST(8)));
        sub_02017350(&param0->unk_0C[2], v0.x + FX32_CONST(Unk_ov70_0226E340[1].unk_00), v0.y + FX32_CONST(Unk_ov70_0226E340[1].unk_02), v0.z + (-FX32_CONST(8)));
        break;
    }
}

static BOOL ov70_0226B714 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1, u32 param2, u32 param3)
{
    if (param1->unk_954.val1.unk_0C[param2] != param3) {
        param1->unk_954.val1.unk_0C[param2] = param3;
        param1->unk_954.val1.unk_08[param2] = 0;
        ov70_02269A90(param0, param1, param2, 0, (param3 * (FX32_ONE * 2)));
        return 1;
    }

    return 0;
}

static void ov70_0226B744 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1, u32 param2)
{
    fx32 v0;
    u32 v1;

    v1 = param1->unk_954.val1.unk_0C[param2];

    if (param1->unk_954.val1.unk_08[param2] <= 0) {
        v0 = ov70_02269AE8(param0, param1, param2, 0);

        if (v0 == (v1 * (FX32_ONE * 2))) {
            v0 = (v1 * (FX32_ONE * 2)) + FX32_ONE;
        } else {
            if (v1 != 4) {
                v0 = (v1 * (FX32_ONE * 2));
            } else {
                sub_02017348(&param1->unk_0C[param2], 0);
            }
        }

        ov70_02269A90(param0, param1, param2, 0, v0);

        param1->unk_954.val1.unk_08[param2] = 8;
    }

    param1->unk_954.val1.unk_08[param2]--;
}

static void ov70_0226B7B0 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1, u32 param2)
{
    int v0, v1;
    VecFx32 v2;
    VecFx32 v3;
    VecFx32 v4;
    u32 v5;
    u32 v6;

    ov70_0225D054(param1->unk_08, &v2);

    for (v0 = 0; v0 < param2; v0++) {
        v6 = 13 + v0;

        if (v6 > 15) {
            v6 = 15;
        }

        for (v1 = 0; v1 < 4; v1++) {
            v5 = (v0 * 4) + v1;
            ov70_02269828(param0, param1, v5, &Unk_ov70_0226E5A4[v6]);
            VEC_Add(&v2, &Unk_ov70_0226E370[v1], &v3);
            VEC_Add(&v3, &Unk_ov70_0226E3A0[v1], &v4);
            sub_02017350(&param1->unk_0C[v5], v3.x, v3.y, v3.z);
            sub_02017348(&param1->unk_0C[v5], 0);
            param1->unk_954.val3.unk_04[v5] = 0;
            ov70_022692B4(&param1->unk_954.val3.unk_14[v5], v3.x, v4.x, v3.y, v4.y, v3.z, v4.z, 14);
        }
    }

    param1->unk_954.val3.unk_02 = param2;
    param1->unk_954.val3.unk_01 = 0;
    param1->unk_954.val3.unk_00 = 0;
    param1->unk_954.val3.unk_03 = 0;
}

static BOOL ov70_0226B8C4 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1, u32 param2)
{
    BOOL v0;
    VecFx32 v1;

    param1->unk_954.val3.unk_04[param2]++;

    v0 = ov70_022692DC(&param1->unk_954.val3.unk_14[param2], param1->unk_954.val3.unk_04[param2]);

    ov70_02269488(&param1->unk_954.val3.unk_14[param2], &v1.x, &v1.y, &v1.z);
    sub_02017350(&param1->unk_0C[param2], v1.x, v1.y, v1.z);
    ov70_022699BC(param0, param1, param2, 0);

    return v0;
}

static void ov70_0226B92C (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1, u32 param2)
{
    int v0;
    VecFx32 v1;

    for (v0 = 0; v0 < param2; v0++) {
        ov70_02269828(param0, param1, v0, &Unk_ov70_0226E5A4[0 + v0]);
        ov70_0225D054(param1->unk_08, &v1);

        v1.y += (FX32_CONST(8));
        v1.z += (FX32_CONST(6));

        sub_02017350(&param1->unk_0C[v0], v1.x, v1.y, v1.z);
        sub_02017348(&param1->unk_0C[v0], 0);
    }

    param1->unk_954.val4.unk_00 = param2;
}

static BOOL ov70_0226B998 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1, u32 param2)
{
    BOOL v0;
    u32 v1;
    UnkStruct_ov70_0226E514 v2;

    v1 = (param1->unk_02 * 12) / 48;

    if (v1 != param1->unk_954.val5.unk_00) {
        param1->unk_954.val5.unk_00 = v1;

        if (v1 > 0) {
            v2 = Unk_ov70_0226E514[param2][v1 - 1];
            sub_02017348(&param1->unk_0C[v2.unk_00], 0);
        }

        v2 = Unk_ov70_0226E514[param2][v1];

        if (0 != v2.unk_02) {
            ov70_02269A90(param0, param1, v2.unk_00, 0, FX32_CONST(v2.unk_02));
            ov70_02269A90(param0, param1, v2.unk_00, 1, FX32_CONST(v2.unk_02));
            sub_02017348(&param1->unk_0C[v2.unk_00], 1);
        } else {
            sub_02017348(&param1->unk_0C[v2.unk_00], 0);
        }
    }

    if (param1->unk_02 < 48) {
        param1->unk_02++;
    }

    if ((param1->unk_02 >= 48)) {
        return 1;
    }

    return 0;
}

static void ov70_0226BAC8 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1, u32 param2)
{
    int v0;
    VecFx32 v1;

    for (v0 = 0; v0 < param2; v0++) {
        ov70_02269828(param0, param1, v0, &Unk_ov70_0226E5A4[6 + v0]);
        ov70_0225D054(param1->unk_08, &v1);

        v1.y += (FX32_CONST(8));

        sub_02017350(&param1->unk_0C[v0], v1.x, v1.y, v1.z);
        sub_02017348(&param1->unk_0C[v0], 0);
    }

    param1->unk_954.val6.unk_00 = 0xff;
    param1->unk_954.val6.unk_02 = param2;
}

static void ov70_0226BB34 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    VecFx32 v0;
    int v1;

    ov70_0225D054(param1->unk_08, &v0);

    v0.z += (-FX32_CONST(10));
    v0.x += (-FX32_CONST(4));
    v0.y += (FX32_CONST(16)) + (-FX32_CONST(0));

    for (v1 = 0; v1 < 2; v1++) {
        ov70_02269828(param0, param1, 16 + v1, &Unk_ov70_0226E5A4[37 + v1]);
        sub_02017350(&param1->unk_0C[v1 + 16], v0.x + (v1 * (FX32_CONST(24))), v0.y, v0.z);
    }
}

static void ov70_0226BBA8 (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    int v0;

    param1->unk_954.val7.unk_3B8 = 1;
    param1->unk_954.val7.unk_3BA = 0;

    for (v0 = 0; v0 < 2; v0++) {
        sub_02017348(&param1->unk_0C[v0 + 16], 1);
    }
}

static void ov70_0226BBDC (UnkStruct_ov70_02269204 * param0, UnkStruct_ov70_02269800 * param1)
{
    int v0;

    if (param1->unk_954.val7.unk_3B8 == 0) {
        return;
    }

    if (param1->unk_954.val7.unk_3BA < 13) {
        param1->unk_954.val7.unk_3BA++;
    } else {
        param1->unk_954.val7.unk_3B8 = 0;
    }

    for (v0 = 0; v0 < 2; v0++) {
        if (param1->unk_954.val7.unk_3BA < 13) {
            ov70_022699BC(param0, param1, v0 + 16, 0);
        } else {
            sub_02017348(&param1->unk_0C[v0 + 16], 0);
        }
    }
}

static void ov70_0226BC40 (UnkStruct_ov70_0226BC40 * param0, const UnkStruct_ov70_0226E2EC * param1, u32 param2, u32 param3, u32 param4, UnkStruct_ov70_02269800 * param5)
{
    int v0;

    param0->val7.unk_3B0 = param1;
    param0->val7.unk_3B4 = param2;
    param0->val7.unk_3B6 = param3;

    for (v0 = 0; v0 < 4; v0++) {
        ov70_0226BD64(&param0->val7.unk_00[v0], &param5->unk_0C[(v0 * 4) + 0], &param5->unk_0C[(v0 * 4) + 1], &param5->unk_0C[(v0 * 4) + 2], &param5->unk_0C[(v0 * 4) + 3], param5->unk_08, param4);
    }
}

static int ov70_0226BCC0 (UnkStruct_ov70_0226BC40 * param0, u32 param1)
{
    int v0;
    UnkStruct_ov70_0226E2EC v1;
    BOOL v2;
    BOOL v3;
    BOOL v4 = 0;

    for (v0 = 0; v0 < param0->val7.unk_3B4; v0++) {
        v1 = param0->val7.unk_3B0[v0];

        if (v1.unk_00 == param1) {
            GF_ASSERT(v1.unk_02 < 4);
            GF_ASSERT(v1.unk_03 <= 4);
            ov70_0226BDA0(&param0->val7.unk_00[v1.unk_02], v1.unk_03);
            v4 = 1;
        }
    }

    v3 = 1;

    for (v0 = 0; v0 < 4; v0++) {
        v2 = ov70_0226BDE8(&param0->val7.unk_00[v0]);

        if (v2 == 0) {
            v3 = 0;
        }
    }

    if ((param0->val7.unk_3B6 <= param1) && (v3 == 1)) {
        v4 = 2;
    }

    return v4;
}

static void ov70_0226BD64 (UnkStruct_ov70_0226BD64 * param0, UnkStruct_02017294 * param1, UnkStruct_02017294 * param2, UnkStruct_02017294 * param3, UnkStruct_02017294 * param4, const UnkStruct_ov70_0225CC54 * param5, u32 param6)
{
    GF_ASSERT(param6 < 3);

    param0->unk_D8[0] = param1;
    param0->unk_D8[1] = param2;
    param0->unk_D8[2] = param3;
    param0->unk_D8[3] = param4;
    param0->unk_E8 = param5;
    param0->unk_02 = param6;
}

static void ov70_0226BDA0 (UnkStruct_ov70_0226BD64 * param0, u32 param1)
{
    int v0;

    static void(*const v1[3])(UnkStruct_ov70_0226BD64 *, const UnkStruct_ov70_0225CC54 *) = {
        ov70_0226BE3C, ov70_0226BFE4, ov70_0226C17C
    };

    for (v0 = 0; v0 < param1; v0++) {
        sub_02017348(param0->unk_D8[v0], 1);
    }

    param0->unk_00 = 0;
    param0->unk_06 = 1;
    param0->unk_04 = param1;

    v1[param0->unk_02](param0, param0->unk_E8);
}

static BOOL ov70_0226BDE8 (UnkStruct_ov70_0226BD64 * param0)
{
    int v0;
    BOOL v1;

    static BOOL(*const v2[3])(UnkStruct_ov70_0226BD64 *) = {
        ov70_0226BF5C, ov70_0226C0D8, ov70_0226C1DC
    };

    if (param0->unk_06 == 0) {
        return 1;
    }

    v1 = v2[param0->unk_02](param0);

    param0->unk_00++;

    if (v1 == 1) {
        for (v0 = 0; v0 < param0->unk_04; v0++) {
            sub_02017348(param0->unk_D8[v0], 0);
        }

        param0->unk_06 = 0;
    }

    return v1;
}

static void ov70_0226BE3C (UnkStruct_ov70_0226BD64 * param0, const UnkStruct_ov70_0225CC54 * param1)
{
    int v0;
    VecFx32 v1;
    VecFx32 v2;
    u16 v3;

    ov70_0225D054(param1, &v1);

    v1.x += (FX32_CONST(8));
    v1.y += (FX32_CONST(16));
    v1.z += (-FX32_CONST(8));

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        switch (v0) {
        case 0:
            v2.x = v1.x - (FX32_CONST(12));
            v2.y = v1.y + (FX32_CONST(16));
            v2.z = v1.z + 0;
            v3 = ((0 * 0xffff) / 360);
            break;
        case 1:
            v2.x = v1.x + (FX32_CONST(12));
            v2.y = v1.y + (FX32_CONST(16));
            v2.z = v1.z + 0;
            v3 = ((180 * 0xffff) / 360);
            break;
        case 2:
            v2.x = v1.x - (FX32_CONST(8));
            v2.y = v1.y + (FX32_CONST(16));
            v2.z = v1.z - (FX32_CONST(6));
            v3 = ((180 * 0xffff) / 360);
            break;
        case 3:
            v2.x = v1.x + (FX32_CONST(8));
            v2.y = v1.y + (FX32_CONST(16));
            v2.z = v1.z - (FX32_CONST(6));
            v3 = ((0 * 0xffff) / 360);
            break;
        }

        ov70_022692B4(&param0->unk_08[v0], v1.x, v2.x, v1.y, v2.y, v1.z, v2.z, 18);
        ov70_0226949C(&param0->unk_A8[v0], v3, (((18 * 0xffff) / 360)), (FX32_CONST(6)));
        sub_02017350(param0->unk_D8[v0], v1.x, v1.y, v1.z);
    }
}

static BOOL ov70_0226BF5C (UnkStruct_ov70_0226BD64 * param0)
{
    int v0;
    BOOL v1;
    VecFx32 v2;
    fx32 v3;

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        ov70_022694D0(&param0->unk_A8[v0]);

        v1 = ov70_022692DC(&param0->unk_08[v0], param0->unk_00);

        ov70_02269508(&param0->unk_A8[v0], &v3);
        ov70_02269488(&param0->unk_08[v0], &v2.x, &v2.y, &v2.z);

        v2.x += v3;

        sub_02017350(param0->unk_D8[v0], v2.x, v2.y, v2.z);
    }

    return v1;
}

static void ov70_0226BFE4 (UnkStruct_ov70_0226BD64 * param0, const UnkStruct_ov70_0225CC54 * param1)
{
    int v0;
    VecFx32 v1;
    VecFx32 v2;

    ov70_0225D054(param1, &v1);

    v1.x += (FX32_CONST(8));
    v1.y += (FX32_CONST(8));
    v1.z += (-FX32_CONST(8));

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        switch (v0) {
        case 0:
            v2.x = v1.x - (FX32_CONST(16));
            v2.y = v1.y;
            v2.z = v1.z + (FX32_CONST(16));
            break;
        case 1:
            v2.x = v1.x + (FX32_CONST(16));
            v2.y = v1.y;
            v2.z = v1.z + (FX32_CONST(16));
            break;
        case 2:
            if (param0->unk_04 == 3) {
                v2.x = v1.x;
                v2.y = v1.y;
                v2.z = v1.z - ((FX32_CONST(16)) + (FX32_CONST(16)));
            } else {
                v2.x = v1.x - (FX32_CONST(16));
                v2.y = v1.y;
                v2.z = v1.z - (FX32_CONST(16));
            }
            break;
        case 3:
            v2.x = v1.x + (FX32_CONST(16));
            v2.y = v1.y;
            v2.z = v1.z - (FX32_CONST(16));
            break;
        }

        ov70_022692B4(&param0->unk_08[v0], v1.x, v2.x, v1.y, v2.y, v1.z, v2.z, 19);
        ov70_0226949C(&param0->unk_A8[v0], (((30 * 0xffff) / 360)), (((10 * 0xffff) / 360)), (FX32_CONST(32)));
    }

    ov70_0226C0D8(param0);
}

static BOOL ov70_0226C0D8 (UnkStruct_ov70_0226BD64 * param0)
{
    int v0;
    BOOL v1;
    VecFx32 v2;
    fx32 v3;

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        if (param0->unk_00 == 14) {
            ov70_0226949C(&param0->unk_A8[v0], (((0 * 0xffff) / 360)), (((20 * 0xffff) / 360)), (FX32_CONST(12)));
        } else {
            ov70_022694D0(&param0->unk_A8[v0]);
        }

        ov70_022692DC(&param0->unk_08[v0], param0->unk_00);
        ov70_02269508(&param0->unk_A8[v0], &v3);
        ov70_02269488(&param0->unk_08[v0], &v2.x, &v2.y, &v2.z);

        v2.y += v3;

        sub_02017350(param0->unk_D8[v0], v2.x, v2.y, v2.z);
    }

    if (param0->unk_00 >= (14 + 8)) {
        return 1;
    }

    return 0;
}

static void ov70_0226C17C (UnkStruct_ov70_0226BD64 * param0, const UnkStruct_ov70_0225CC54 * param1)
{
    int v0;
    VecFx32 v1;
    VecFx32 v2;

    ov70_0225D054(param1, &v1);

    v1.x += (FX32_CONST(8));
    v1.y += (FX32_CONST(16)) + (FX32_CONST(4));
    v1.z += (-FX32_CONST(8));

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        ov70_0226C2A4(param0, v0, &v1, (FX32_CONST(13)), (FX32_CONST(5)), (FX32_CONST(7)), (FX32_CONST(14)), 8);
    }
}

static BOOL ov70_0226C1DC (UnkStruct_ov70_0226BD64 * param0)
{
    int v0;
    BOOL v1;
    VecFx32 v2;

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        v1 = ov70_022692DC(&param0->unk_08[v0], param0->unk_00);

        ov70_02269488(&param0->unk_08[v0], &v2.x, &v2.y, &v2.z);
        sub_02017350(param0->unk_D8[v0], v2.x, v2.y, v2.z);

        if (v1 == 1) {
            if (param0->unk_07 == 0) {
                ov70_0226C2A4(param0, v0, &v2, (-FX32_CONST(3)), (FX32_CONST(4)), (-FX32_CONST(3)), (FX32_CONST(3)), 3);
            } else {
                ov70_0226C2A4(param0, v0, &v2, (FX32_CONST(10)), (FX32_CONST(5)), (FX32_CONST(6)), (FX32_CONST(10)), 4);
            }
        }
    }

    if (v1 == 1) {
        if ((param0->unk_07 + 1) < 3) {
            param0->unk_07++;
            param0->unk_00 = 0;
        } else {
            return 1;
        }
    }

    return 0;
}

static void ov70_0226C2A4 (UnkStruct_ov70_0226BD64 * param0, u32 param1, const VecFx32 * param2, fx32 param3, fx32 param4, fx32 param5, fx32 param6, u32 param7)
{
    VecFx32 v0;

    switch (param1) {
    case 0:
        v0.x = param2->x - param3;
        v0.y = param2->y + param4;
        v0.z = param2->z;
        break;
    case 1:
        v0.x = param2->x + param3;
        v0.y = param2->y + param4;
        v0.z = param2->z;
        break;
    case 2:
        v0.x = param2->x - param5;
        v0.y = param2->y + param6;
        v0.z = param2->z;
        break;
    case 3:
        v0.x = param2->x + param5;
        v0.y = param2->y + param6;
        v0.z = param2->z;
        break;
    }

    ov70_022692B4(&param0->unk_08[param1], param2->x, v0.x, param2->y, v0.y, param2->z, v0.z, param7);
    sub_02017350(param0->unk_D8[param1], param2->x, param2->y, param2->z);
}
