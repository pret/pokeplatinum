#include "overlay070/ov70_02261E10.h"

#include <nitro.h>
#include <string.h>

#include "overlay063/struct_ov63_0222CC3C.h"
#include "overlay070/ov70_0225C858.h"
#include "overlay070/ov70_02260B44.h"
#include "overlay070/struct_ov70_0225C894_decl.h"
#include "overlay070/struct_ov70_02260BB8_decl.h"
#include "overlay070/struct_ov70_02260E8C_decl.h"
#include "overlay070/struct_ov70_022610B8_decl.h"

#include "enums.h"
#include "heap.h"
#include "sound_playback.h"

typedef struct {
    UnkStruct_ov70_022610B8 *unk_00;
    u16 unk_04;
    s16 unk_06;
    fx32 unk_08;
} UnkStruct_ov70_022629FC;

typedef struct {
    UnkStruct_ov70_022610B8 *unk_00[3];
    UnkStruct_ov70_022610B8 *unk_0C[3];
    BOOL unk_18;
    UnkStruct_ov70_022629FC unk_1C[24];
    UnkStruct_ov70_022629FC unk_13C[24];
    UnkStruct_ov70_022610B8 *unk_25C[24];
    UnkStruct_ov70_022629FC unk_2BC[24];
    u8 unk_3DC;
    u8 unk_3DD;
    u8 unk_3DE;
    u8 unk_3DF;
    u32 unk_3E0;
} UnkStruct_ov70_02261E10_sub1;

typedef struct UnkStruct_ov70_02261E10_t {
    const UnkStruct_ov70_0225C894 *unk_00;
    UnkStruct_ov70_02260BB8 *unk_04;
    UnkStruct_ov70_022610B8 *unk_08[128];
    UnkStruct_ov70_02260E8C *unk_208[9];
    UnkStruct_ov70_02261E10_sub1 unk_22C;
    u8 unk_610;
    u8 unk_611;
    u8 unk_612;
    u8 unk_613;
} UnkStruct_ov70_02261E10;

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_ov70_0226D944;

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_ov70_0226D920;

static BOOL ov70_022628C8(const UnkStruct_ov70_022610B8 *param0, u8 param1, u8 param2);
static void ov70_02262908(UnkStruct_ov70_02260BB8 *param0, UnkStruct_ov70_022610B8 *param1);
static void ov70_02262938(UnkStruct_ov70_02260BB8 *param0, UnkStruct_ov70_022610B8 *param1);
static void ov70_02262968(UnkStruct_ov70_02261E10 *param0, UnkStruct_ov70_022610B8 *param1);
static void ov70_022629AC(UnkStruct_ov70_02261E10 *param0, UnkStruct_ov70_022610B8 *param1);
static void ov70_022629DC(UnkStruct_ov70_02261E10 *param0, UnkStruct_ov70_022610B8 *param1);
static void ov70_022629FC(UnkStruct_ov70_022629FC *param0, UnkStruct_ov70_022610B8 *param1);
static void ov70_02262A04(UnkStruct_ov70_022629FC *param0, UnkStruct_ov70_02260BB8 *param1);
static void ov70_02262A50(UnkStruct_ov70_022629FC *param0, UnkStruct_ov70_02260BB8 *param1, fx32 param2);
static void ov70_02262A80(UnkStruct_ov70_022629FC *param0);
static void ov70_02262AA4(UnkStruct_ov70_022629FC *param0, UnkStruct_ov70_02260BB8 *param1);
static void ov70_02262AE0(UnkStruct_ov70_022629FC *param0, UnkStruct_ov70_02260BB8 *param1);
static void ov70_02262B24(UnkStruct_ov70_022629FC *param0);
static BOOL ov70_02262B2C(UnkStruct_ov70_022629FC *param0, UnkStruct_ov70_02260BB8 *param1);
static void ov70_02262BD0(UnkStruct_ov70_022629FC *param0, fx32 param1);
static void ov70_02262BEC(UnkStruct_ov70_022629FC *param0, UnkStruct_ov70_02260BB8 *param1);
static void ov70_02262C64(UnkStruct_ov70_022629FC *param0, UnkStruct_ov70_02260BB8 *param1);
static void ov70_02262C94(UnkStruct_ov70_022629FC *param0, UnkStruct_ov70_02260BB8 *param1);
static void ov70_02262D0C(UnkStruct_ov70_022629FC *param0, UnkStruct_ov70_02260BB8 *param1);
static void ov70_02262D48(UnkStruct_ov70_022610B8 *param0, u32 param1);

static const UnkStruct_ov70_0226D944 Unk_ov70_0226D944[] = {
    { 0x18, 0x0 },
    { 0x19, 0x1 },
    { 0x1A, 0x2 },
    { 0x1B, 0x3 },
    { 0x1B, 0x3 },
    { 0x1C, 0x4 },
    { 0x21, 0x5 },
    { 0x46, 0x6 },
    { 0x47, 0x7 },
    { 0x48, 0x8 },
    { 0x4C, 0x9 },
    { 0x49, 0xA },
    { 0x4A, 0xA },
    { 0x4B, 0xA },
    { 0x4D, 0xB },
    { 0x4E, 0xC },
    { 0x4D, 0xD },
    { 0x4E, 0xD },
    { 0x4D, 0xE },
    { 0x4E, 0xE },
    { 0x19, 0xF },
    { 0x1A, 0xF },
    { 0x1B, 0xF },
    { 0x1B, 0xF },
    { 0x1C, 0xF },
    { 0x19, 0x10 },
    { 0x1A, 0x10 },
    { 0x1B, 0x10 },
    { 0x1B, 0x10 },
    { 0x1C, 0x10 },
    { 0x5C, 0xD },
    { 0x5D, 0xD },
    { 0x5C, 0xE },
    { 0x5D, 0xE },
    { 0x62, 0x11 }
};

static const s32 Unk_ov70_0226D90C[2] = {
    0xFFFFFFFFFFFFFFF5,
    0xC
};

static const UnkStruct_ov63_0222CC3C Unk_ov70_0226D914[3] = {
    { 0xFFFFFFFFFFFFFFFE, 0xA },
    { 0xE, 0xA },
    { 0x1E, 0xA }
};

static const UnkStruct_ov70_0226D920 Unk_ov70_0226D920[9] = {
    { 0x0, 0x0 },
    { 0x0, 0x0 },
    { 0x1, 0x0 },
    { 0x0, 0x1 },
    { 0x0, 0x1 },
    { 0x1, 0x1 },
    { 0x0, 0x2 },
    { 0x0, 0x2 },
    { 0x1, 0x2 }
};

UnkStruct_ov70_02261E10 *ov70_02261E10(int param0, int param1, const UnkStruct_ov70_0225C894 *param2, u32 heapID, u32 heapID2)
{
    UnkStruct_ov70_02261E10 *v0;
    int v1;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov70_02261E10));
    memset(v0, 0, sizeof(UnkStruct_ov70_02261E10));

    v0->unk_00 = param2;
    v0->unk_610 = param0;
    v0->unk_611 = param1;
    v0->unk_04 = ov70_02260B44(9, 128, heapID, heapID2);

    ov70_02260CE4(v0->unk_04, param1, param0, heapID, heapID2);

    {
        int v2;
        u32 v3;
        u16 v4, v5;

        for (v2 = 0; v2 < NELEMS(Unk_ov70_0226D944); v2++) {
            v3 = 0;

            while (ov70_0225C8D8(v0->unk_00, Unk_ov70_0226D944[v2].unk_00, &v4, &v5, v3) == 1) {
                v0->unk_08[v0->unk_612] = ov70_02260F90(
                    v0->unk_04, Unk_ov70_0226D944[v2].unk_02, v4, v5);

                switch (Unk_ov70_0226D944[v2].unk_02) {
                case 6:
                case 7:
                case 8:
                    ov70_0226110C(v0->unk_04, v0->unk_08[v0->unk_612], 0, 0);
                    v0->unk_22C.unk_00[Unk_ov70_0226D944[v2].unk_02 - 6] = v0->unk_08[v0->unk_612];
                    break;
                case 0:
                    ov70_0226110C(v0->unk_04, v0->unk_08[v0->unk_612], 0, 0);
                    ov70_0226110C(v0->unk_04, v0->unk_08[v0->unk_612], 1, 0);
                    ov70_0226110C(v0->unk_04, v0->unk_08[v0->unk_612], 2, 0);
                    break;
                case 10:
                    ov70_0226110C(v0->unk_04, v0->unk_08[v0->unk_612], 0, 2);
                    v0->unk_22C.unk_0C[Unk_ov70_0226D944[v2].unk_00 - 73] = v0->unk_08[v0->unk_612];
                    break;
                case 11:
                case 12:
                    ov70_0226110C(v0->unk_04, v0->unk_08[v0->unk_612], 0, 2);
                    break;
                case 13:
                    ov70_022629FC(&v0->unk_22C.unk_1C[v0->unk_22C.unk_3DC], v0->unk_08[v0->unk_612]);
                    v0->unk_22C.unk_3DC++;
                    GF_ASSERT(v0->unk_22C.unk_3DC <= 24);
                    ov70_0226138C(v0->unk_08[v0->unk_612], 0);

                    if ((Unk_ov70_0226D944[v2].unk_00 == 92) || (Unk_ov70_0226D944[v2].unk_00 == 93)) {
                        ov70_02262D48(v0->unk_08[v0->unk_612], Unk_ov70_0226D944[v2].unk_00);
                    }
                    break;
                case 14:
                    ov70_022629FC(&v0->unk_22C.unk_13C[v0->unk_22C.unk_3DD], v0->unk_08[v0->unk_612]);
                    v0->unk_22C.unk_3DD++;
                    GF_ASSERT(v0->unk_22C.unk_3DC <= 24);
                    ov70_0226138C(v0->unk_08[v0->unk_612], 0);

                    if ((Unk_ov70_0226D944[v2].unk_00 == 92) || (Unk_ov70_0226D944[v2].unk_00 == 93)) {
                        ov70_02262D48(v0->unk_08[v0->unk_612], Unk_ov70_0226D944[v2].unk_00);
                    }
                    break;
                case 15:
                    v0->unk_22C.unk_25C[v0->unk_22C.unk_3DE] = v0->unk_08[v0->unk_612];
                    v0->unk_22C.unk_3DE++;
                    GF_ASSERT(v0->unk_22C.unk_3DE <= 24);
                    ov70_0226138C(v0->unk_08[v0->unk_612], 0);
                    break;
                case 16:
                    ov70_022629FC(&v0->unk_22C.unk_2BC[v0->unk_22C.unk_3DF], v0->unk_08[v0->unk_612]);
                    v0->unk_22C.unk_3DF++;
                    GF_ASSERT(v0->unk_22C.unk_3DF <= 24);
                    ov70_0226138C(v0->unk_08[v0->unk_612], 0);

                    {
                        UnkStruct_ov63_0222CC3C v6;

                        v6 = ov70_022610E4(v0->unk_08[v0->unk_612]);
                        v6.unk_00 += 8;
                        v6.unk_02 += 20;
                        ov70_022610BC(v0->unk_08[v0->unk_612], v6);
                    }
                    break;
                }

                v0->unk_612++;
                v3++;
            }
        }
    }

    {
        VecFx32 v7;

        v7.x = 0;
        v7.z = (FX32_CONST(40));
        v7.y = (FX32_CONST(0));

        for (v1 = 0; v1 < 9; v1++) {
            v0->unk_208[v1] = ov70_02260E20(v0->unk_04, Unk_ov70_0226D920[v1].unk_00, Unk_ov70_0226D920[v1].unk_02, &v7);
            ov70_02260F38(v0->unk_208[v1], 0);
        }

        v0->unk_613 = 9;
    }

    return v0;
}

void ov70_022621AC(UnkStruct_ov70_02261E10 *param0)
{
    {
        int v0;

        for (v0 = 0; v0 < param0->unk_613; v0++) {
            ov70_02260E8C(param0->unk_208[v0]);
        }
    }

    {
        int v1;

        for (v1 = 0; v1 < param0->unk_612; v1++) {
            ov70_02261058(param0->unk_04, param0->unk_08[v1]);
        }
    }

    ov70_02260D80(param0->unk_04);
    ov70_02260BB8(param0->unk_04);

    Heap_Free(param0);
}

void ov70_02262210(UnkStruct_ov70_02261E10 *param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_22C.unk_3DC; v0++) {
        ov70_02262A04(&param0->unk_22C.unk_1C[v0], param0->unk_04);
    }

    for (v0 = 0; v0 < param0->unk_22C.unk_3DD; v0++) {
        ov70_02262BEC(&param0->unk_22C.unk_13C[v0], param0->unk_04);
    }

    for (v0 = 0; v0 < param0->unk_22C.unk_3DF; v0++) {
        ov70_02262C94(&param0->unk_22C.unk_2BC[v0], param0->unk_04);
    }

    ov70_02260BE8(param0->unk_04);
}

void ov70_02262298(UnkStruct_ov70_02261E10 *param0)
{
    ov70_02260C50(param0->unk_04);
}

void ov70_022622A4(UnkStruct_ov70_02261E10 *param0)
{
    ov70_02260CE0(param0->unk_04);
}

void ov70_022622B0(UnkStruct_ov70_02261E10 *param0, u32 param1, fx32 param2)
{
    VecFx32 v0;

    GF_ASSERT(param0->unk_613 > param1);

    v0.x = param2;
    v0.z = (FX32_CONST(40));
    v0.y = (FX32_CONST(0));

    ov70_02260EA0(param0->unk_208[param1], &v0);
}

void ov70_022622EC(UnkStruct_ov70_02261E10 *param0, u32 param1, const VecFx32 *param2)
{
    GF_ASSERT(param0->unk_613 > param1);
    ov70_02260EE4(param0->unk_208[param1], param2);
}

void ov70_02262318(const UnkStruct_ov70_02261E10 *param0, u32 param1, u32 param2, VecFx32 *param3)
{
    GF_ASSERT(param0->unk_613 > param1);
    GF_ASSERT(param2 < 3);

    ov70_02260F28(param0->unk_208[param1], param3);

    param3->x += (Unk_ov70_0226D914[param2].unk_00 * (FX32_ONE));
    param3->z += (Unk_ov70_0226D914[param2].unk_02 * (FX32_ONE));
    param3->y = (FX32_CONST(40));
}

BOOL ov70_02262374(UnkStruct_ov70_02261E10 *param0, u32 param1)
{
    GF_ASSERT(param0->unk_613 > param1);
    return ov70_02260F44(param0->unk_208[param1]);
}

BOOL ov70_0226239C(UnkStruct_ov70_02261E10 *param0, u32 param1)
{
    GF_ASSERT(param0->unk_613 > param1);
    return ov70_02260F5C(param0->unk_208[param1]);
}

void ov70_022623C4(UnkStruct_ov70_02261E10 *param0, u32 param1, BOOL param2)
{
    GF_ASSERT(param0->unk_613 > param1);
    ov70_02260F38(param0->unk_208[param1], param2);
}

void ov70_022623F0(UnkStruct_ov70_02261E10 *param0, u32 param1, u16 param2)
{
    GF_ASSERT(param0->unk_613 > param1);
    ov70_02260F74(param0->unk_208[param1], param2);
}

BOOL ov70_0226241C(const UnkStruct_ov70_02261E10 *param0, u32 param1)
{
    GF_ASSERT(param0->unk_613 > param1);
    return ov70_02260F80(param0->unk_208[param1]);
}

BOOL ov70_02262444(const UnkStruct_ov70_02261E10 *param0, u32 param1)
{
    GF_ASSERT(param0->unk_613 > param1);
    return ov70_02260F88(param0->unk_208[param1]);
}

void ov70_0226246C(UnkStruct_ov70_02261E10 *param0)
{
    ov70_02260DC8(param0->unk_04);
}

void ov70_02262478(UnkStruct_ov70_02261E10 *param0)
{
    ov70_02260DF4(param0->unk_04);
}

void ov70_02262484(UnkStruct_ov70_02261E10 *param0, u8 param1, u8 param2)
{
    int v0;
    BOOL v1[2];
    u32 v2;

    for (v0 = 0; v0 < param0->unk_612; v0++) {
        v1[0] = ov70_022628C8(param0->unk_08[v0], param1 - 1, param2 - 1);
        v1[1] = ov70_022628C8(param0->unk_08[v0], param1, param2 - 1);

        if ((v1[0] == 1) || (v1[1] == 1)) {
            v2 = ov70_022610B8(param0->unk_08[v0]);

            switch (v2) {
            case 1:
            case 2:
            case 3:
            case 4:
                if (param0->unk_611 == 4) {
                    ov70_022629AC(param0, param0->unk_08[v0]);
                } else {
                    ov70_02262968(param0, param0->unk_08[v0]);
                }
                break;
            default:
                break;
            }
        }
    }
}

void ov70_0226251C(UnkStruct_ov70_02261E10 *param0, BOOL param1)
{
    int v0;
    u32 v1;

    for (v0 = 0; v0 < param0->unk_612; v0++) {
        v1 = ov70_022610B8(param0->unk_08[v0]);

        switch (v1) {
        case 1:
        case 2:
        case 3:
        case 4:
            if (param1 == 1) {
                ov70_02261398(param0->unk_04, param0->unk_08[v0], 1 << 0);
            }
            break;
        case 15:
            if (param1 == 1) {
                ov70_022613C0(param0->unk_08[v0], FX32_HALF);
                ov70_0226110C(param0->unk_04, param0->unk_08[v0], 0, 6);
                ov70_0226110C(param0->unk_04, param0->unk_08[v0], 1, 6);
                ov70_0226110C(param0->unk_04, param0->unk_08[v0], 2, 6);
                ov70_0226138C(param0->unk_08[v0], 1);
            } else {
                ov70_02261220(param0->unk_04, param0->unk_08[v0], 0);
                ov70_02261220(param0->unk_04, param0->unk_08[v0], 1);
                ov70_02261220(param0->unk_04, param0->unk_08[v0], 2);
                ov70_0226138C(param0->unk_08[v0], 0);
            }
            break;
        default:
            break;
        }
    }
}

void ov70_022625D8(UnkStruct_ov70_02261E10 *param0, fx32 param1)
{
    int v0;
    u32 v1;

    for (v0 = 0; v0 < param0->unk_22C.unk_3DF; v0++) {
        ov70_02262BD0(&param0->unk_22C.unk_2BC[v0], param1);
    }
}

void ov70_0226260C(UnkStruct_ov70_02261E10 *param0)
{
    int v0;
    u32 v1;

    for (v0 = 0; v0 < param0->unk_612; v0++) {
        v1 = ov70_022610B8(param0->unk_08[v0]);

        switch (v1) {
        case 1:
        case 2:
        case 3:
        case 4:
            ov70_02261398(param0->unk_04, param0->unk_08[v0], 1 << 0);
            break;
        default:
            break;
        }
    }
}

void ov70_02262658(UnkStruct_ov70_02261E10 *param0, int param1)
{
    int v0;
    u32 v1;

    for (v0 = 0; v0 < param0->unk_612; v0++) {
        v1 = ov70_022610B8(param0->unk_08[v0]);

        switch (v1) {
        case 11:
        case 12:
            switch (param1) {
            case 0:
                ov70_0226110C(param0->unk_04, param0->unk_08[v0], 0, 2);
                param0->unk_22C.unk_18 = 0;
                break;
            case 1:
                ov70_0226111C(param0->unk_04, param0->unk_08[v0], 0, 1, ov70_02262908);
                param0->unk_22C.unk_18 = 1;
                break;
            case 2:
                ov70_0226111C(param0->unk_04, param0->unk_08[v0], 0, 4, ov70_02262938);
                ov70_02261220(param0->unk_04, param0->unk_08[v0], 1);
                param0->unk_22C.unk_18 = 0;
                break;
            case 3:
                ov70_0226110C(param0->unk_04, param0->unk_08[v0], 1, 0);
                ov70_02261220(param0->unk_04, param0->unk_08[v0], 0);
                param0->unk_22C.unk_18 = 1;
                break;
            default:
                break;
            }
            break;
        default:
            break;
        }
    }
}

BOOL ov70_0226271C(const UnkStruct_ov70_02261E10 *param0)
{
    return param0->unk_22C.unk_18;
}

void ov70_02262724(UnkStruct_ov70_02261E10 *param0, BOOL param1, fx32 param2)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_22C.unk_3DC; v0++) {
        ov70_02262754(param0, v0, param1, param2);
    }
}

BOOL ov70_02262754(UnkStruct_ov70_02261E10 *param0, u32 param1, BOOL param2, fx32 param3)
{
    int v0;
    UnkStruct_ov70_022629FC *v1;

    if (param1 < param0->unk_22C.unk_3DC) {
        v1 = &param0->unk_22C.unk_1C[param1];

        if (param2) {
            ov70_02262A50(v1, param0->unk_04, param3);
        } else {
            ov70_02262A80(v1);
        }

        return 1;
    }

    return 0;
}

void ov70_0226278C(UnkStruct_ov70_02261E10 *param0, fx32 param1)
{
    int v0;
    u32 v1;

    for (v0 = 0; v0 < param0->unk_22C.unk_3DD; v0++) {
        ov70_02262BD0(&param0->unk_22C.unk_13C[v0], param1);
    }
}

void ov70_022627BC(UnkStruct_ov70_02261E10 *param0, enum PlazaMinigame param1, u32 param2, BOOL param3, BOOL param4, BOOL param5)
{
    BOOL v0;
    UnkStruct_ov70_022610B8 *v1;
    UnkStruct_ov70_022610B8 *v2;
    u32 v3 = param1 - UnkEnum_ov66_022324D0_00;
    v2 = param0->unk_22C.unk_00[v3];
    v1 = param0->unk_22C.unk_0C[v3];

    if ((param4 == 1) || (param3 == 1)) {
        if (ov70_02261348(v2, 1) == 0) {
            ov70_0226110C(param0->unk_04, v2, 1, 0);
        }

        if (param4 == 1) {
            ov70_022612F0(param0->unk_04, v1, 0, FX32_CONST((5 + param2 - 1) * 4));
        } else {
            param0->unk_22C.unk_3E0 = (param0->unk_22C.unk_3E0 + 1) % 28;

            if (param0->unk_22C.unk_3E0 < (28 / 2)) {
                ov70_022612F0(param0->unk_04, v1, 0, FX32_CONST((1 + param2 - 1) * 4));
            } else {
                ov70_022612F0(param0->unk_04, v1, 0, FX32_CONST(0 * 4));
            }
        }
    } else {
        if (param5) {
            ov70_0226128C(param0->unk_04, v2);
            ov70_0226128C(param0->unk_04, v1);
            ov70_02261398(param0->unk_04, v2, 1 << 0);
        } else {
            ov70_02261220(param0->unk_04, v2, 1);
            ov70_022612F0(param0->unk_04, v1, 0, 0);
        }
    }
}

static BOOL ov70_022628C8(const UnkStruct_ov70_022610B8 *param0, u8 param1, u8 param2)
{
    UnkStruct_ov63_0222CC3C v0;
    UnkStruct_ov63_0222CC3C v1;

    v1.unk_00 = param1 * 16;
    v1.unk_02 = param2 * 16;

    v0 = ov70_022610E4(param0);

    if ((v0.unk_00 == v1.unk_00) && (v0.unk_02 == v1.unk_02)) {
        return 1;
    }

    return 0;
}

static void ov70_02262908(UnkStruct_ov70_02260BB8 *param0, UnkStruct_ov70_022610B8 *param1)
{
    u32 v0 = ov70_022610B8(param1);
    GF_ASSERT((v0 == 11) || (v0 == 12));

    if ((v0 == 11) || (v0 == 12)) {
        ov70_0226110C(param0, param1, 1, 0);
    }
}

static void ov70_02262938(UnkStruct_ov70_02260BB8 *param0, UnkStruct_ov70_022610B8 *param1)
{
    u32 v0 = ov70_022610B8(param1);
    GF_ASSERT((v0 == 11) || (v0 == 12));

    if ((v0 == 11) || (v0 == 12)) {
        ov70_0226110C(param0, param1, 0, 2);
    }
}

static void ov70_02262968(UnkStruct_ov70_02261E10 *param0, UnkStruct_ov70_022610B8 *param1)
{
    fx32 v0;
    BOOL v1;
    int v2;

    v1 = 0;

    if (ov70_022612B4(param0->unk_04, param1, 0) == 0) {
        v1 = 1;
    } else {
        v0 = ov70_02261368(param1, 0);

        if (v0 > 0x2000) {
            v1 = 1;
        }
    }

    if (v1 == 1) {
        ov70_022629DC(param0, param1);
        Sound_PlayEffect(SEQ_SE_PL_EFF02);
    }
}

static void ov70_022629AC(UnkStruct_ov70_02261E10 *param0, UnkStruct_ov70_022610B8 *param1)
{
    BOOL v0 = 0;

    if (ov70_022612B4(param0->unk_04, param1, 0) == 0) {
        v0 = 1;
    }

    if (v0 == 1) {
        ov70_022629DC(param0, param1);
        Sound_PlayEffect(SEQ_SE_PL_EFF04);
    }
}

static void ov70_022629DC(UnkStruct_ov70_02261E10 *param0, UnkStruct_ov70_022610B8 *param1)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        ov70_0226110C(param0->unk_04, param1, v0, 1);
    }
}

static void ov70_022629FC(UnkStruct_ov70_022629FC *param0, UnkStruct_ov70_022610B8 *param1)
{
    param0->unk_00 = param1;
    param0->unk_04 = 0;
}

static void ov70_02262A04(UnkStruct_ov70_022629FC *param0, UnkStruct_ov70_02260BB8 *param1)
{
    switch (param0->unk_04) {
    case 0:
        break;
    case 1:
        ov70_02262AA4(param0, param1);
        param0->unk_04 = 2;
        break;
    case 2:
        break;
    case 3:
        ov70_02262B24(param0);
        param0->unk_04 = 4;
        break;
    case 4:
        if (ov70_02262B2C(param0, param1) == 1) {
            ov70_02262AE0(param0, param1);
            param0->unk_04 = 0;
        }
        break;
    default:
        break;
    }
}

static void ov70_02262A50(UnkStruct_ov70_022629FC *param0, UnkStruct_ov70_02260BB8 *param1, fx32 param2)
{
    if ((param0->unk_04 == 1) || (param0->unk_04 == 2)) {
        return;
    }

    if ((param0->unk_04 == 3) || (param0->unk_04 == 4)) {
        ov70_02262AE0(param0, param1);
    }

    param0->unk_04 = 1;
    param0->unk_08 = param2;
}

static void ov70_02262A80(UnkStruct_ov70_022629FC *param0)
{
    if ((param0->unk_04 == 3) || (param0->unk_04 == 4)) {
        return;
    }

    if ((param0->unk_04 == 1) || (param0->unk_04 == 0)) {
        param0->unk_04 = 0;
        return;
    }

    param0->unk_04 = 3;
}

static void ov70_02262AA4(UnkStruct_ov70_022629FC *param0, UnkStruct_ov70_02260BB8 *param1)
{
    ov70_022613C0(param0->unk_00, param0->unk_08);
    ov70_0226110C(param1, param0->unk_00, 0, 0);
    ov70_0226110C(param1, param0->unk_00, 1, 0);
    ov70_0226110C(param1, param0->unk_00, 2, 0);
    ov70_0226138C(param0->unk_00, 1);
}

static void ov70_02262AE0(UnkStruct_ov70_022629FC *param0, UnkStruct_ov70_02260BB8 *param1)
{
    ov70_02261220(param1, param0->unk_00, 0);
    ov70_02261220(param1, param0->unk_00, 1);
    ov70_02261220(param1, param0->unk_00, 2);
    ov70_0226138C(param0->unk_00, 0);
    ov70_022613E0(param0->unk_00);
    ov70_022613E8(param0->unk_00, FX32_ONE, FX32_ONE, FX32_ONE);
}

static void ov70_02262B24(UnkStruct_ov70_022629FC *param0)
{
    param0->unk_06 = 0;
}

static BOOL ov70_02262B2C(UnkStruct_ov70_022629FC *param0, UnkStruct_ov70_02260BB8 *param1)
{
    if (param0->unk_06 < 10) {
        param0->unk_06++;

        {
            fx32 v0;
            fx32 v1;

            v0 = param0->unk_08 - 0;
            v1 = FX_Mul(param0->unk_06 << FX32_SHIFT, v0);
            v1 = FX_Div(v1, 10 << FX32_SHIFT);
            v1 += param0->unk_08;

            ov70_022613C0(param0->unk_00, v1);
        }

        {
            u32 v2;

            v2 = (param0->unk_06 * 31) / 10;
            v2 = 31 - v2;

            ov70_022613C8(param0->unk_00, v2, 31);
        }

        {
            fx32 v3;

            v3 = FX_Mul(param0->unk_06 << FX32_SHIFT, (FX32_CONST(0.180f)));
            v3 = FX_Div(v3, 10 << FX32_SHIFT);
            v3 = FX32_ONE + v3;

            ov70_022613E8(param0->unk_00, v3, v3, v3);
        }

        return 0;
    }

    return 1;
}

static void ov70_02262BD0(UnkStruct_ov70_022629FC *param0, fx32 param1)
{
    if ((param0->unk_04 == 1) || (param0->unk_04 == 2)) {
        return;
    }

    param0->unk_04 = 1;
    param0->unk_08 = param1;
}

static void ov70_02262BEC(UnkStruct_ov70_022629FC *param0, UnkStruct_ov70_02260BB8 *param1)
{
    switch (param0->unk_04) {
    case 0:
        break;
    case 1:
        ov70_02262C64(param0, param1);
        param0->unk_04 = 2;
        break;
    case 2:
        if (ov70_022612B4(param1, param0->unk_00, 0) == 0) {
            param0->unk_04 = 3;
        }
        break;
    case 3:
        ov70_02262B24(param0);
        param0->unk_04 = 4;
        break;
    case 4:
        if (ov70_02262B2C(param0, param1) == 1) {
            ov70_0226138C(param0->unk_00, 0);
            ov70_022613E0(param0->unk_00);
            ov70_022613E8(param0->unk_00, FX32_ONE, FX32_ONE, FX32_ONE);

            param0->unk_04 = 0;
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }
}

static void ov70_02262C64(UnkStruct_ov70_022629FC *param0, UnkStruct_ov70_02260BB8 *param1)
{
    ov70_022613C0(param0->unk_00, param0->unk_08);
    ov70_0226110C(param1, param0->unk_00, 0, 1);
    ov70_0226110C(param1, param0->unk_00, 1, 1);
    ov70_0226138C(param0->unk_00, 1);
}

static void ov70_02262C94(UnkStruct_ov70_022629FC *param0, UnkStruct_ov70_02260BB8 *param1)
{
    switch (param0->unk_04) {
    case 0:
        break;
    case 1:
        ov70_02262D0C(param0, param1);
        param0->unk_04 = 2;
        break;
    case 2:
        if (ov70_022612B4(param1, param0->unk_00, 0) == 0) {
            param0->unk_04 = 3;
        }
        break;
    case 3:
        ov70_02262B24(param0);
        param0->unk_04 = 4;
        break;
    case 4:
        if (ov70_02262B2C(param0, param1) == 1) {
            ov70_0226138C(param0->unk_00, 0);
            ov70_022613E0(param0->unk_00);
            ov70_022613E8(param0->unk_00, FX32_ONE, FX32_ONE, FX32_ONE);
            param0->unk_04 = 0;
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }
}

static void ov70_02262D0C(UnkStruct_ov70_022629FC *param0, UnkStruct_ov70_02260BB8 *param1)
{
    ov70_022613C0(param0->unk_00, param0->unk_08);
    ov70_0226110C(param1, param0->unk_00, 0, 1);
    ov70_0226110C(param1, param0->unk_00, 1, 1);
    ov70_0226110C(param1, param0->unk_00, 2, 1);
    ov70_0226138C(param0->unk_00, 1);
}

static void ov70_02262D48(UnkStruct_ov70_022610B8 *param0, u32 param1)
{
    UnkStruct_ov63_0222CC3C v0;
    u32 v1;

    GF_ASSERT((param1 == 92) || (param1 == 93));

    v1 = param1 - 92;
    v0 = ov70_022610E4(param0);
    v0.unk_00 += Unk_ov70_0226D90C[v1];
    v0.unk_02 += -10;

    ov70_022610BC(param0, v0);
}
