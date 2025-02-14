#include "overlay012/ov12_02235254.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02014014_decl.h"
#include "struct_defs/pokemon_sprite.h"

#include "overlay012/ov12_0221FC20.h"
#include "overlay012/struct_ov12_0221FCDC_decl.h"
#include "overlay012/struct_ov12_02235350.h"
#include "overlay012/struct_ov12_0223595C.h"
#include "overlay012/struct_ov12_02235998.h"

#include "heap.h"
#include "inlines.h"
#include "sprite_system.h"
#include "unk_0200762C.h"
#include "unk_02014000.h"

void ov17_022413D8(void);
void include_unk_ov12_0223A218(VecFx32 *dummy);

static const VecFx32 Unk_ov12_0223A218 = {
    0x1700,
    0x4D00,
    -0x1000
};

static const VecFx32 Unk_ov12_0223A224 = {
    0x0,
    -FX32_ONE,
    0x0
};

void include_unk_ov12_0223A218(VecFx32 *dummy)
{
    *dummy = Unk_ov12_0223A218;
}

int ov12_02235254(UnkStruct_ov12_0221FCDC *param0, int param1)
{
    return ov12_022232B8(param0, param1);
}

int ov12_0223525C(UnkStruct_ov12_0221FCDC *param0, int param1)
{
    int v0;
    int v1;

    v0 = ov12_022232B8(param0, param1);

    switch (v0) {
    case 0:
    case 2:
    case 4:
        v1 = 0x3;
        break;
    case 1:
    case 3:
    case 5:
        v1 = 0x4;
        break;
    }

    return v1;
}

int ov12_02235288(UnkStruct_ov12_0221FCDC *param0, int param1)
{
    int v0;
    int v1;

    for (v0 = 0; v0 < 4; v0++) {
        v1 = ov12_022232B8(param0, v0);

        if (v1 == param1) {
            return v0;
        }
    }

    return 0;
}

int ov12_022352AC(UnkStruct_ov12_0221FCDC *param0, int param1)
{
    int v0;
    int v1;
    int v2;

    v1 = ov12_022232B8(param0, param1);

    if ((v1 == 0) || (v1 == 1)) {
        return v1;
    }

    for (v0 = 0; v0 < 4; v0++) {
        v2 = ov12_022232B8(param0, v0);

        switch (v1) {
        case 2:
            if (v2 == 4) {
                return v0;
            }
            break;
        case 4:
            if (v2 == 2) {
                return v0;
            }
            break;
        case 3:
            if (v2 == 5) {
                return v0;
            }
            break;
        case 5:
            if (v2 == 3) {
                return v0;
            }
            break;
        }
    }

    GF_ASSERT(0);

    return v1;
}

int ov12_02235310(int param0)
{
    switch (param0) {
    case 0:
        return 1;
    case 1:
        return 0;
    case 2:
        return 3;
    case 3:
        return 2;
    case 4:
        return 5;
    case 5:
        return 4;
    }

    GF_ASSERT(0);
    return 0;
}

void ov12_02235350(int param0, int param1, UnkStruct_ov12_02235350 *param2)
{
    const UnkStruct_ov12_02235350 v0[] = {
        { 0x40, 0x70 },
        { 0xC0, 0x30 },
        { 0x28, 0x70 },
        { 0xD8, 0x32 },
        { 0x50, 0x78 },
        { 0xB0, 0x2A }
    };
    const UnkStruct_ov12_02235350 v1[] = {
        { 0xD8, 0x70 },
        { 0x50, 0x2A },
        { 0xD8, 0x70 },
        { 0x50, 0x2A },
        { 0xD8, 0x70 },
        { 0x50, 0x2A }
    };

    if (param1) {
        *param2 = v1[param0];
        return;
    }

    *param2 = v0[param0];
}

void ov12_022353AC(UnkStruct_ov12_0221FCDC *param0, int param1, UnkStruct_ov12_02235350 *param2)
{
    int v0, v1;

    v0 = ov12_02235254(param0, param1);
    v1 = ov12_0221FDD4(param0);

    ov12_02235350(v0, v1, param2);
}

static void ov12_022353CC(int param0, VecFx32 *param1, int param2, int param3, int param4)
{
    int v0;
    const VecFx32 *v1;
    const VecFx32 v2[][24] = {
        {
            { -9616, -5464, 0x40 },
            { -10240, -6400, 0x40 },
            { -3968, -3328, 0x40 },
            { -6568, -4000, 0x40 },
            { -3968, -3328, 0x40 },
            { -6720, -5792, 0x40 },
            { -8632, -6936, 0x0 },
            { -8632, -6936, 0x0 },
            { -12544, -3840, 0x0 },
            { -12544, -3840, 0x0 },
            { -9632, -5856, 0x0 },
            { -9632, -5856, 0x0 },
            { -4144, -5200, 0x0 },
            { -4144, -5200, 0x0 },
            { -12480, -4288, 0x0 },
            { -12480, -4288, 0x0 },
            { -1792, -4224, 0x0 },
            { -1792, -4224, 0x0 },
            { -8320, -4160, 0x0 },
            { -8320, -4160, 0x0 },
            { 0x2378, 0x15A0, 0x0 },
            { 0x2378, 0x15A0, 0x0 },
            { -6248, -2944, 0x0 },
            { -6248, -2944, 0x0 },
        },
        {
            { 0x2B30, 0x1130, -5248 },
            { 0x2800, 0xC00, -5248 },
            { 0x2480, 0x880, -5248 },
            { 0x2260, 0x1940, -5248 },
            { 0x2480, 0x880, -5248 },
            { 0x38C0, 0x1F60, -5248 },
            { 0x3268, 0x13F4, 0x0 },
            { 0x3268, 0x13F4, 0x0 },
            { 0x1538, 0x1A18, 0x0 },
            { 0x1538, 0x1A18, 0x0 },
            { 0x3358, 0x2C08, 0x0 },
            { 0x3358, 0x2C08, 0x0 },
            { 0x40D0, 0x1430, 0x0 },
            { 0x40D0, 0x1430, 0x0 },
            { 0x3380, 0x1DC0, 0x0 },
            { 0x3380, 0x1DC0, 0x0 },
            { 0x4200, 0xD00, 0x0 },
            { 0x4200, 0xD00, 0x0 },
            { 0x2A80, 0x1180, 0x0 },
            { 0x2A80, 0x1180, 0x0 },
            { -6936, -4832, 0x0 },
            { -6936, -4832, 0x0 },
            { 0x2058, 0x1538, 0x0 },
            { 0x2058, 0x1538, 0x0 },
        },
        {
            { -14936, -5032, 0x40 },
            { -15360, -6272, 0x40 },
            { -9856, -3200, 0x40 },
            { -11400, -2944, 0x40 },
            { -9856, -3200, 0x40 },
            { -9856, -3200, 0x40 },
            { -9456, -3104, 0x0 },
            { -9456, -3104, 0x0 },
            { -17856, -3624, 0x0 },
            { -17856, -3624, 0x0 },
            { -12592, -2976, 0x0 },
            { -12592, -2976, 0x0 },
            { -6366, -3776, 0x0 },
            { -6366, -3776, 0x0 },
            { -14912, -2176, 0x0 },
            { -14912, -2176, 0x0 },
            { -6080, -5504, 0x0 },
            { -6080, -5504, 0x0 },
            { -12032, -3200, 0x0 },
            { -12032, -3200, 0x0 },
            { 0x2A48, 0x1D40, 0x0 },
            { 0x2A48, 0x1D40, 0x0 },
            { -9856, -3200, 0x0 },
            { -9856, -3200, 0x0 },
        },
        {
            { 0x1CC8, 0x1748, -5248 },
            { 0x3500, 0xB80, -5248 },
            { 0x3500, 0xB80, -5248 },
            { 0x3170, 0x1668, -5248 },
            { 0x3500, 0xB80, -5248 },
            { 0x3500, 0xB80, -5248 },
            { 0x4640, 0x18C0, 0x0 },
            { 0x4640, 0x18C0, 0x0 },
            { 0x1F58, 0x1778, 0x0 },
            { 0x1F58, 0x1778, 0x0 },
            { 0x3310, 0x1840, 0x0 },
            { 0x3310, 0x1840, 0x0 },
            { 0x4400, 0x1440, 0x0 },
            { 0x4400, 0x1440, 0x0 },
            { 0x3F00, 0x1CC0, 0x0 },
            { 0x3F00, 0x1CC0, 0x0 },
            { 0x50C0, 0xD98, 0x0 },
            { 0x50C0, 0xD98, 0x0 },
            { 0x3480, 0x1520, 0x0 },
            { 0x3480, 0x1520, 0x0 },
            { -9536, -3120, 0xAA8 },
            { -9536, -3120, 0xAA8 },
            { 0x3500, 0xB80, 0x0 },
            { 0x3500, 0xB80, 0x0 },
        },
        {
            { -5364, -6568, -0x400 },
            { -7552, -6912, -0x400 },
            { -2308, -5632, -0x400 },
            { -2984, -5272, -0x400 },
            { -2308, -5632, -0x400 },
            { -2308, -5632, -0x400 },
            { -2480, -5568, 0x0 },
            { -2480, -5568, 0x0 },
            { -8200, -4776, 0x0 },
            { -8200, -4776, 0x0 },
            { -5600, -6480, 0x0 },
            { -5600, -6480, 0x0 },
            { -632, -5176, 0x0 },
            { -632, -5176, 0x0 },
            { -8448, -8384, 0x0 },
            { -8448, -8384, 0x0 },
            { 0x200, -6528, 0x0 },
            { 0x200, -6528, 0x0 },
            { -6848, -6144, 0x0 },
            { -6848, -6144, 0x0 },
            { 0x1420, 0x1D40, 0x0 },
            { 0x1420, 0x1D40, 0x0 },
            { -2308, -5632, 0x0 },
            { -2308, -5632, 0x0 },
        },
        {
            { 0x3B50, 0x1148, -0x1cb0 },
            { 0x1B00, 0x1000, -0x1cb0 },
            { 0x1B00, 0x1000, -0x1cb0 },
            { 0x1AF8, 0x2048, -0x1cb0 },
            { 0x1B00, 0x1000, -0x1cb0 },
            { 0x1B00, 0x1000, -0x1cb0 },
            { 0x3210, 0x15E0, 0x0 },
            { 0x3210, 0x15E0, 0x0 },
            { 0x7D8, 0x1258, 0x0 },
            { 0x7D8, 0x1258, 0x0 },
            { 0x1F58, 0x18A8, 0x0 },
            { 0x1F58, 0x18A8, 0x0 },
            { 0x2E08, 0x1808, 0x0 },
            { 0x2E08, 0x1808, 0x0 },
            { 0x2700, 0x2500, 0x0 },
            { 0x2700, 0x2500, 0x0 },
            { 0x3640, 0xD98, 0x0 },
            { 0x3640, 0xD98, 0x0 },
            { 0x1840, 0x1540, 0x0 },
            { 0x1840, 0x1540, 0x0 },
            { -5408, -6000, 0x0 },
            { -5408, -6000, 0x0 },
            { 0x1B00, 0x1000, 0x0 },
            { 0x1B00, 0x1000, 0x0 },
        },
        {
            { 0x1CC8, -5032, 0x40 },
            { 0x3500, -6272, 0x40 },
            { 0x3500, -3200, 0x40 },
            { 0x3170, -2944, 0x40 },
            { 0x3500, -3200, 0x40 },
            { 0x3500, -3200, 0x40 },
            { 0x3500, -3200, 0x0 },
            { 0x3500, -3200, 0x0 },
            { 0x1D90, -3200, 0x0 },
            { 0x1D90, -3200, 0x0 },
            { 0x3500, -3200, 0x0 },
            { 0x3500, -3200, 0x0 },
            { 0x3500, -3200, 0x0 },
            { 0x3500, -3200, 0x0 },
            { 0x3500, -3200, 0x0 },
            { 0x3500, -3200, 0x0 },
            { 0x3500, -3200, 0x0 },
            { 0x3500, -3200, 0x0 },
            { 0x3500, -3200, 0x0 },
            { 0x3500, -3200, 0x0 },
            { -9536, 0x1D40, 0x0 },
            { -9536, 0x1D40, 0x0 },
            { 0x3500, -3200, 0x0 },
            { 0x3500, -2944, 0x0 },
        },
        {
            { -5364, 0x1148, -5248 },
            { -7552, 0x1000, -5248 },
            { -2308, 0x1000, -5248 },
            { -2984, 0x2048, -5248 },
            { -2308, 0x1000, -5248 },
            { -2308, 0x1000, -5248 },
            { -2480, 0x15E0, 0x0 },
            { -2480, 0x15E0, 0x0 },
            { -8200, 0x1258, 0x0 },
            { -8200, 0x1258, 0x0 },
            { -5600, 0x18A8, 0x0 },
            { -5600, 0x18A8, 0x0 },
            { -632, 0x1808, 0x0 },
            { -632, 0x1808, 0x0 },
            { -8448, 0x2500, 0x0 },
            { -8448, 0x2500, 0x0 },
            { 0x200, 0xD98, 0x0 },
            { 0x200, 0xD98, 0x0 },
            { -6848, 0x1540, 0x0 },
            { -6848, 0x1540, 0x0 },
            { 0x1420, -6000, 0xAA8 },
            { 0x1420, -5408, 0xAA8 },
            { -2308, 0x1000, 0x0 },
            { -2984, 0x2048, 0x0 },
        },
    };

    if (param2 == 1) {
        switch (param0) {
        case 0:
            param0 = 5 + 1;
            break;
        case 1:
            param0 = 5 + 2;
            break;
        default:
            GF_ASSERT(FALSE);
            break;
        }
    }

    v0 = param3 + (param4 * 2);
    v1 = &v2[param0][v0];

    VEC_Set(param1, v1->x, v1->y, v1->z);
}

void ov12_02235448(int param0, VecFx32 *param1, int param2, int param3)
{
    ov12_022353CC(param0, param1, param2, param3, 0);
}

void ov12_02235458(int param0, VecFx32 *param1, int param2, int param3)
{
    ov12_022353CC(param0, param1, param2, param3, 1);
}

void ov12_02235468(int param0, VecFx32 *param1, int param2, int param3)
{
    ov12_022353CC(param0, param1, param2, param3, 2);
}

void ov12_02235478(int param0, VecFx32 *param1, int param2, int param3)
{
    ov12_022353CC(param0, param1, param2, param3, 3);
}

void ov12_02235488(int param0, VecFx32 *param1, int param2, int param3)
{
    ov12_022353CC(param0, param1, param2, param3, 4);
}

void ov12_02235498(int param0, VecFx32 *param1, int param2, int param3)
{
    ov12_022353CC(param0, param1, param2, param3, 5);
}

void ov12_022354A8(int param0, VecFx32 *param1, int param2, int param3)
{
    ov12_022353CC(param0, param1, param2, param3, 6);
}

void ov12_022354B8(int param0, VecFx32 *param1, int param2, int param3)
{
    ov12_022353CC(param0, param1, param2, param3, 7);
}

void ov12_022354C8(int param0, VecFx32 *param1, int param2, int param3)
{
    ov12_022353CC(param0, param1, param2, param3, 8);
}

void ov12_022354D8(int param0, VecFx32 *param1, int param2, int param3)
{
    ov12_022353CC(param0, param1, param2, param3, 9);
}

void ov12_022354E8(int param0, VecFx32 *param1, int param2, int param3)
{
    ov12_022353CC(param0, param1, param2, param3, 10);
}

void ov12_022354F8(int param0, VecFx32 *param1, int param2, int param3)
{
    ov12_022353CC(param0, param1, param2, param3, 11);
}

void ov12_02235508(UnkStruct_ov12_0221FCDC *param0, int param1, VecFx32 *param2)
{
    int v0, v1;
    int v2;
    UnkStruct_02014014 *v3;

    v3 = ov12_02220250(param0);
    v2 = sub_02014790(v3);
    v0 = ov12_02235254(param0, param1);
    v1 = ov12_0221FDD4(param0);

    ov12_02235448(v0, param2, v1, v2);
}

void ov12_02235538(UnkStruct_ov12_0221FCDC *param0, int param1, VecFx32 *param2)
{
    int v0, v1;
    int v2;
    UnkStruct_02014014 *v3;

    v3 = ov12_02220250(param0);
    v2 = sub_02014790(v3);
    v0 = ov12_02235254(param0, param1);
    v1 = ov12_0221FDD4(param0);

    ov12_02235458(v0, param2, v1, v2);
}

void ov12_02235568(UnkStruct_ov12_0221FCDC *param0, int param1, VecFx32 *param2)
{
    int v0, v1;
    int v2;
    UnkStruct_02014014 *v3;

    v3 = ov12_02220250(param0);
    v2 = sub_02014790(v3);
    v0 = ov12_02235254(param0, param1);
    v1 = ov12_0221FDD4(param0);

    ov12_02235468(v0, param2, v1, v2);
}

void ov12_02235598(UnkStruct_ov12_0221FCDC *param0, int param1, VecFx32 *param2)
{
    int v0, v1;
    int v2;
    UnkStruct_02014014 *v3;

    v3 = ov12_02220250(param0);
    v2 = sub_02014790(v3);
    v0 = ov12_02235254(param0, param1);
    v1 = ov12_0221FDD4(param0);

    ov12_02235478(v0, param2, v1, v2);
}

void ov12_022355C8(UnkStruct_ov12_0221FCDC *param0, int param1, VecFx32 *param2)
{
    int v0, v1;
    int v2;
    UnkStruct_02014014 *v3;

    v3 = ov12_02220250(param0);
    v2 = sub_02014790(v3);
    v0 = ov12_02235254(param0, param1);
    v1 = ov12_0221FDD4(param0);

    ov12_02235488(v0, param2, v1, v2);
}

void ov12_022355F8(UnkStruct_ov12_0221FCDC *param0, int param1, VecFx32 *param2)
{
    int v0, v1;
    int v2;
    UnkStruct_02014014 *v3;

    v3 = ov12_02220250(param0);
    v2 = sub_02014790(v3);
    v0 = ov12_02235254(param0, param1);
    v1 = ov12_0221FDD4(param0);

    ov12_02235498(v0, param2, v1, v2);
}

void ov12_02235628(UnkStruct_ov12_0221FCDC *param0, int param1, VecFx32 *param2)
{
    int v0, v1;
    int v2;
    UnkStruct_02014014 *v3;

    v3 = ov12_02220250(param0);
    v2 = sub_02014790(v3);
    v0 = ov12_02235254(param0, param1);
    v1 = ov12_0221FDD4(param0);

    ov12_022354A8(v0, param2, v1, v2);
}

void ov12_02235658(UnkStruct_ov12_0221FCDC *param0, int param1, VecFx32 *param2)
{
    int v0, v1;
    int v2;
    UnkStruct_02014014 *v3;

    v3 = ov12_02220250(param0);
    v2 = sub_02014790(v3);
    v0 = ov12_02235254(param0, param1);
    v1 = ov12_0221FDD4(param0);

    ov12_022354B8(v0, param2, v1, v2);
}

void ov12_02235688(UnkStruct_ov12_0221FCDC *param0, int param1, VecFx32 *param2)
{
    int v0, v1;
    int v2;
    UnkStruct_02014014 *v3;

    v3 = ov12_02220250(param0);
    v2 = sub_02014790(v3);
    v0 = ov12_02235254(param0, param1);
    v1 = ov12_0221FDD4(param0);

    ov12_022354C8(v0, param2, v1, v2);
}

void ov12_022356B8(UnkStruct_ov12_0221FCDC *param0, int param1, VecFx32 *param2)
{
    int v0, v1;
    int v2;
    UnkStruct_02014014 *v3;

    v3 = ov12_02220250(param0);
    v2 = sub_02014790(v3);
    v0 = ov12_02235254(param0, param1);
    v1 = ov12_0221FDD4(param0);

    ov12_022354D8(v0, param2, v1, v2);
}

void ov12_022356E8(UnkStruct_ov12_0221FCDC *param0, int param1, VecFx32 *param2)
{
    int v0, v1;
    int v2;
    UnkStruct_02014014 *v3;

    v3 = ov12_02220250(param0);
    v2 = sub_02014790(v3);
    v0 = ov12_02235254(param0, param1);
    v1 = ov12_0221FDD4(param0);

    ov12_022354E8(v0, param2, v1, v2);
}

void ov12_02235718(UnkStruct_ov12_0221FCDC *param0, int param1, VecFx32 *param2)
{
    int v0, v1;
    int v2;
    UnkStruct_02014014 *v3;

    v3 = ov12_02220250(param0);
    v2 = sub_02014790(v3);
    v0 = ov12_02235254(param0, param1);
    v1 = ov12_0221FDD4(param0);

    ov12_022354F8(v0, param2, v1, v2);
}

void ov12_02235748(VecFx32 *param0)
{
    param0->x = 0;
    param0->y = (+16512) + (60 * 172);
    param0->z = 0;
}

void ov12_02235758(int param0, VecFx32 *param1, int param2, int param3)
{
    ov12_02235448(param0, param1, param2, param3);
}

void ov12_02235760(int param0, VecFx32 *param1)
{
    if (param0 == 0) {
        sub_02014770(param1);
    } else {
        *param1 = Unk_ov12_0223A224;
    }
}

void ov12_02235780(UnkStruct_ov12_0221FCDC *param0, int param1, int param2)
{
    int v0 = param1;
    int v1 = param2;

    if (param1 == 0xffffffff) {
        v0 = 26;
    }

    if (param2 == 0xffffffff) {
        v1 = 5;
    }

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, (1 << ov12_022233EC(param0, 2)) | GX_BLEND_PLANEMASK_BG0, v0, v1);
}

void ov12_022357BC(UnkStruct_ov12_0221FCDC *param0, int param1, int param2, int param3)
{
    int v0 = param2;
    int v1 = param3;

    if (param2 == 0xffffffff) {
        v0 = 26;
    }

    if (param3 == 0xffffffff) {
        v1 = 5;
    }

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, param1, v0, v1);
}

void ov12_022357EC(UnkStruct_ov12_0221FCDC *param0, int param1, int param2)
{
    int v0 = param1;
    int v1 = param2;

    if (param1 == 0xffffffff) {
        v0 = 26;
    }

    if (param2 == 0xffffffff) {
        v1 = 5;
    }

    G2_SetBlendAlpha((1 << ov12_022233EC(param0, 1)), (1 << ov12_022233EC(param0, 2)) | GX_WND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_OBJ, v0, v1);
}

void ov12_02235838(UnkStruct_ov12_0221FCDC *param0, int param1, BOOL param2)
{
    if (param1 == 0) {
        G2_SetWnd0InsidePlane((1 << ov12_022233EC(param0, 2)) | (1 << ov12_022233EC(param0, 0)) | (1 << ov12_022233EC(param0, 1)) | GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_OBJ, param2);
    } else {
        G2_SetWnd1InsidePlane((1 << ov12_022233EC(param0, 2)) | (1 << ov12_022233EC(param0, 0)) | (1 << ov12_022233EC(param0, 1)) | GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_OBJ, param2);
    }

    G2_SetWndOutsidePlane((1 << ov12_022233EC(param0, 0)) | (1 << ov12_022233EC(param0, 1)) | GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_OBJ, 1);
}

void ov12_02235918(PokemonSprite *param0, UnkStruct_ov12_02235350 *param1)
{
    if (param0 == NULL) {
        param1->unk_00 = 0;
        param1->unk_02 = 0;
        return;
    } else if (sub_02008B38(param0) == 0) {
        param1->unk_00 = 0;
        param1->unk_02 = 0;
        return;
    }

    param1->unk_00 = sub_020080C0(param0, 0);
    param1->unk_02 = sub_020080C0(param0, 1);
}

void ov12_02235950(ManagedSprite *param0, UnkStruct_ov12_02235350 *param1)
{
    ManagedSprite_GetPositionXY(param0, &(param1->unk_00), &(param1->unk_02));
}

void ov12_0223595C(UnkStruct_ov12_0221FCDC *param0, UnkStruct_ov12_0223595C *param1)
{
    param1->unk_00 = 0;
    param1->unk_01 = 0;
    param1->unk_02 = 0;
    param1->unk_03 = 0;
    param1->unk_04 = param0;
    param1->unk_08 = ov12_02220308(param0);
    param1->unk_0C = ov12_022202EC(param0);
    param1->unk_10 = ov12_02220300(param0);
    param1->unk_14 = ov12_02220278(param0);
    param1->unk_18 = ov12_0222332C(param0);
}

void ov12_02235998(UnkStruct_ov12_0221FCDC *param0, int param1, UnkStruct_ov12_02235998 *param2, int *param3)
{
    *param3 = 0;

    if (inline_ov12_02235998(param1, 0x40) == 1) {
        int v0 = ov12_02220240(param0);
        int v1;
        int v2;

        param2[*param3].unk_08 = ov12_022232FC(param0, v0);

        if (param2[*param3].unk_08 != NULL) {
            param2[*param3].unk_10 = v0;
            ov12_02235918(param2[*param3].unk_08, &param2[*param3].unk_04);
            (*param3)++;
        }

        v1 = ov12_022352AC(param0, v0);
        param2[*param3].unk_08 = ov12_022232FC(param0, v1);

        if (param2[*param3].unk_08 != NULL) {
            param2[*param3].unk_10 = v1;
            ov12_02235918(param2[*param3].unk_08, &param2[*param3].unk_04);
            (*param3)++;
        }

        v2 = ov12_022232B8(param0, v0);
        v2 = ov12_02235310(v2);
        v1 = ov12_02235288(param0, v2);

        param2[*param3].unk_08 = ov12_022232FC(param0, v1);

        if (param2[*param3].unk_08 != NULL) {
            param2[*param3].unk_10 = v1;
            ov12_02235918(param2[*param3].unk_08, &param2[*param3].unk_04);
            (*param3)++;
        }

        v1 = ov12_022352AC(param0, v1);
        param2[*param3].unk_08 = ov12_022232FC(param0, v1);

        if (param2[*param3].unk_08 != NULL) {
            param2[*param3].unk_10 = v1;
            ov12_02235918(param2[*param3].unk_08, &param2[*param3].unk_04);
            (*param3)++;
        }

        return;
    }

    if (inline_ov12_02235998(param1, 0x20) == 1) {
        int v3 = ov12_02220240(param0);
        int v4;
        int v5;

        v4 = ov12_022352AC(param0, v3);

        if (v4 != v3) {
            param2[*param3].unk_08 = ov12_022232FC(param0, v4);

            if (param2[*param3].unk_08 != NULL) {
                param2[*param3].unk_10 = v4;
                ov12_02235918(param2[*param3].unk_08, &param2[*param3].unk_04);
                (*param3)++;
            }
        }

        v5 = ov12_022232B8(param0, v3);
        v5 = ov12_02235310(v5);
        v4 = ov12_02235288(param0, v5);

        if (v4 != v3) {
            param2[*param3].unk_08 = ov12_022232FC(param0, v4);

            if (param2[*param3].unk_08 != NULL) {
                param2[*param3].unk_10 = v4;
                ov12_02235918(param2[*param3].unk_08, &param2[*param3].unk_04);
                (*param3)++;
            }
        }

        v4 = ov12_022352AC(param0, v4);

        if (v4 != v3) {
            param2[*param3].unk_08 = ov12_022232FC(param0, v4);

            if (param2[*param3].unk_08 != NULL) {
                param2[*param3].unk_10 = v4;
                ov12_02235918(param2[*param3].unk_08, &param2[*param3].unk_04);
                (*param3)++;
            }
        }

        return;
    }

    if (inline_ov12_02235998(param1, 0x2) == 1) {
        param2[*param3].unk_08 = ov12_022232FC(param0, ov12_02220240(param0));

        if (param2[*param3].unk_08 != NULL) {
            param2[*param3].unk_10 = ov12_02220240(param0);
            ov12_02235918(param2[*param3].unk_08, &param2[*param3].unk_04);
            (*param3)++;
        }
    }

    if (ov12_02223364(param0) == 1) {
        if (inline_ov12_02235998(param1, 0x4) == 1) {
            param2[*param3].unk_08 = ov12_022232FC(param0, ov12_022352AC(param0, ov12_02220240(param0)));

            if (param2[*param3].unk_08 != NULL) {
                param2[*param3].unk_10 = ov12_022352AC(param0, ov12_02220240(param0));
                ov12_02235918(param2[*param3].unk_08, &param2[*param3].unk_04);
                (*param3)++;
            }
        }
    }

    if (inline_ov12_02235998(param1, 0x8) == 1) {
        param2[*param3].unk_08 = ov12_022232FC(param0, ov12_02220248(param0));

        if (param2[*param3].unk_08 != NULL) {
            param2[*param3].unk_10 = ov12_02220248(param0);
            ov12_02235918(param2[*param3].unk_08, &param2[*param3].unk_04);
            (*param3)++;
        }
    }

    if (ov12_02223364(param0) == 1) {
        if (inline_ov12_02235998(param1, 0x10) == 1) {
            param2[*param3].unk_08 = ov12_022232FC(param0, ov12_022352AC(param0, ov12_02220248(param0)));

            if (param2[*param3].unk_08 != NULL) {
                param2[*param3].unk_10 = ov12_022352AC(param0, ov12_02220248(param0));
                ov12_02235918(param2[*param3].unk_08, &param2[*param3].unk_04);
                (*param3)++;
            }
        }
    }
}

void ov12_02235D74(UnkStruct_ov12_0221FCDC *param0, int param1, UnkStruct_ov12_02235998 *param2, int *param3)
{
    *param3 = 0;

    if (inline_ov12_02235998(param1, 0x2) == 1) {
        param2[*param3].unk_0C = ov12_022202C0(param0, *param3);
        ov12_02235950(param2[*param3].unk_0C, &param2[*param3].unk_04);
        (*param3)++;
    }

    if (inline_ov12_02235998(param1, 0x4) == 1) {
        param2[*param3].unk_0C = ov12_022202C0(param0, *param3);
        ov12_02235950(param2[*param3].unk_0C, &param2[*param3].unk_04);
        (*param3)++;
    }

    if (inline_ov12_02235998(param1, 0x8) == 1) {
        param2[*param3].unk_0C = ov12_022202C0(param0, *param3);
        ov12_02235950(param2[*param3].unk_0C, &param2[*param3].unk_04);
        (*param3)++;
    }

    if (inline_ov12_02235998(param1, 0x10) == 1) {
        param2[*param3].unk_0C = ov12_022202C0(param0, *param3);
        ov12_02235950(param2[*param3].unk_0C, &param2[*param3].unk_04);
        (*param3)++;
    }
}

void *ov12_02235E50(UnkStruct_ov12_0221FCDC *param0, int param1)
{
    int v0;
    void *v1;

    v1 = NULL;

    GF_ASSERT(param0 != NULL);

    v0 = ov12_0221FDE4(param0);
    v1 = Heap_AllocFromHeap(v0, param1);

    GF_ASSERT(v1 != NULL);
    memset(v1, 0, param1);

    return v1;
}

void ov12_02235E80(void *param0)
{
    GF_ASSERT(param0 != NULL);
    Heap_FreeToHeap(param0);
}
