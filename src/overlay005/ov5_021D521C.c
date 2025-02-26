#include "overlay005/ov5_021D521C.h"

#include <nitro.h>
#include <string.h>

#include "constants/narc.h"

#include "overlay005/ov5_021D5878.h"
#include "overlay005/struct_ov5_021D52F4.h"
#include "overlay005/struct_ov5_021D5894.h"

#include "ascii_util.h"
#include "graphics.h"
#include "heap.h"
#include "rtc.h"

typedef struct UnkStruct_ov5_021D538C_t {
    u32 unk_00;
    UnkStruct_ov5_021D52F4 *unk_04;
    int unk_08;
    UnkStruct_ov5_021D5894 *unk_0C;
    BOOL unk_10;
} UnkStruct_ov5_021D538C;

static void ov5_021D538C(UnkStruct_ov5_021D538C *param0);
static u32 ov5_021D53D4(u32 param0, UnkStruct_ov5_021D52F4 **param1);
static void ov5_021D555C(UnkStruct_ov5_021D52F4 **param0);
static char *ov5_021D5570(char *param0, GXRgb *param1, VecFx16 *param2);
static char *ov5_021D5660(char *param0, GXRgb *param1);

UnkStruct_ov5_021D538C *ov5_021D521C(UnkStruct_ov5_021D5894 *param0, const u8 param1)
{
    int v0;
    UnkStruct_ov5_021D538C *v1;
    int v2;

    GF_ASSERT(param1 < 4);

    v1 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021D538C));

    v1->unk_0C = param0;
    v1->unk_00 = ov5_021D53D4(param1, &v1->unk_04);
    v1->unk_08 = 0;

    v2 = GetSecondsSinceMidnight() / 2;

    for (v0 = 0; v0 < v1->unk_00; v0++) {
        if (v1->unk_04[v0].unk_00 > v2) {
            v1->unk_08 = v0;
            break;
        }
    }

    v1->unk_10 = 1;
    ov5_021D538C(v1);

    return v1;
}

void ov5_021D5278(UnkStruct_ov5_021D538C **param0)
{
    GF_ASSERT(param0);

    ov5_021D555C(&(*param0)->unk_04);
    Heap_FreeToHeapExplicit(4, *param0);

    *param0 = NULL;
}

void ov5_021D5298(UnkStruct_ov5_021D538C *param0)
{
    u32 v0;
    int v1;
    int v2;
    int v3;
    int v4;

    GF_ASSERT(param0);

    v4 = GetSecondsSinceMidnight() / 2;

    if (param0->unk_00 > 1) {
        if ((param0->unk_08 - 1) >= 0) {
            v2 = param0->unk_04[param0->unk_08 - 1].unk_00;
        } else {
            v2 = 0;
        }

        v3 = param0->unk_04[param0->unk_08].unk_00;

        if ((v4 >= v3) || (v4 < v2)) {
            param0->unk_08++;

            if (param0->unk_08 >= param0->unk_00) {
                param0->unk_08 = 0;
            }

            if (param0->unk_10) {
                ov5_021D538C(param0);
            }
        }
    }
}

void ov5_021D52F4(const UnkStruct_ov5_021D52F4 *param0, UnkStruct_ov5_021D5894 *param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        int v1 = (1 << v0);

        if ((param0->unk_04 & v1) != 0) {
            ov5_021D5A50(param1, v0, param0->unk_10[v0].x, param0->unk_10[v0].y, param0->unk_10[v0].z);
            ov5_021D5A78(param1, v0, param0->unk_08[v0]);
        } else {
            ov5_021D5A50(param1, v0, 0, 0, 0);
            ov5_021D5A78(param1, v0, GX_RGB(0, 0, 0));
        }
    }

    ov5_021D5A8C(param1, param0->unk_28, 0, 0);
    ov5_021D5AA0(param1, param0->unk_2A, 1);
    ov5_021D5AB4(param1, param0->unk_2C, 0, 0);
    ov5_021D5AC8(param1, param0->unk_2E, 1);
}

static void ov5_021D538C(UnkStruct_ov5_021D538C *param0)
{
    UnkStruct_ov5_021D52F4 *v0 = &param0->unk_04[param0->unk_08];
    ov5_021D52F4(v0, param0->unk_0C);
}

void ov5_021D53A4(NNSG3dResMdl *param0)
{
    NNS_G3dMdlUseGlbDiff(param0);
    NNS_G3dMdlUseGlbAmb(param0);
    NNS_G3dMdlUseGlbSpec(param0);
    NNS_G3dMdlUseGlbEmi(param0);
}

static u32 ov5_021D53D4(u32 param0, UnkStruct_ov5_021D52F4 **param1)
{
    int v0, v1;
    int v2;
    void *v3;
    void *v4;
    char v5[256];
    char *v6;
    char v7[256];
    UnkStruct_ov5_021D52F4 *v8;

    v4 = LoadMemberFromNARC(NARC_INDEX_DATA__AREALIGHT, param0, 0, 4, 0);
    v3 = v4;
    v2 = 0;

    do {
        v3 = Ascii_CopyToTerminator(v3, v5, 0xd);

        if (!((v5[0] == 'E') && (v5[1] == 'O') && (v5[2] == 'F'))) {
            v3 = Ascii_CopyToTerminator(v3, v5, 0xd);
            v3 = Ascii_CopyToTerminator(v3, v5, 0xd);
            v3 = Ascii_CopyToTerminator(v3, v5, 0xd);
            v3 = Ascii_CopyToTerminator(v3, v5, 0xd);
            v3 = Ascii_CopyToTerminator(v3, v5, 0xd);
            v3 = Ascii_CopyToTerminator(v3, v5, 0xd);
            v3 = Ascii_CopyToTerminator(v3, v5, 0xd);
            v3 = Ascii_CopyToTerminator(v3, v5, 0xd);
            v3 = Ascii_CopyToTerminator(v3, v5, 0xd);
            v2++;
        }
    } while (!((v5[0] == 'E') && (v5[1] == 'O') && (v5[2] == 'F')));

    *param1 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021D52F4) * v2);
    MI_CpuClear8(*param1, sizeof(UnkStruct_ov5_021D52F4) * v2);
    v3 = v4;

    for (v0 = 0; v0 < v2; v0++) {
        v8 = &((*param1)[v0]);
        v3 = Ascii_CopyToTerminator(v3, v5, 0xd);
        v6 = v5;
        v6 = Ascii_CopyToTerminator(v6, v7, ',');
        v8->unk_00 = Ascii_ConvertToInt(v7);

        for (v1 = 0; v1 < 4; v1++) {
            v3 = ov5_021D5570(v3, &v8->unk_08[v1], &v8->unk_10[v1]);

            if (v8->unk_08[v1] != 0xffff) {
                v8->unk_04 |= 1 << v1;
            } else {
                v8->unk_08[v1] = 0;
            }
        }

        v3 = ov5_021D5660(v3, &v8->unk_28);
        v3 = ov5_021D5660(v3, &v8->unk_2A);
        v3 = ov5_021D5660(v3, &v8->unk_2C);
        v3 = ov5_021D5660(v3, &v8->unk_2E);
        v3 = Ascii_CopyToTerminator(v3, v5, 0xd);
    }

    Heap_FreeToHeapExplicit(4, v4);

    return v2;
}

static void ov5_021D555C(UnkStruct_ov5_021D52F4 **param0)
{
    Heap_FreeToHeapExplicit(4, *param0);
    *param0 = NULL;
}

static char *ov5_021D5570(char *param0, GXRgb *param1, VecFx16 *param2)
{
    char v0[256];
    char v1[256];
    char *v2;
    u32 v3;
    int v4;
    u16 v5[3];
    s32 v6[3];

    param0 = Ascii_CopyToTerminator(param0, v0, 0xd);

    v2 = v0;
    v2 = Ascii_CopyToTerminator(v2, v1, ',');
    v3 = Ascii_ConvertToInt(v1);

    if (v3 == 1) {
        for (v4 = 0; v4 < 3; v4++) {
            v2 = Ascii_CopyToTerminator(v2, v1, ',');
            v5[v4] = Ascii_ConvertToInt(v1);
        }

        *param1 = GX_RGB(v5[0], v5[1], v5[2]);

        for (v4 = 0; v4 < 3; v4++) {
            v2 = Ascii_CopyToTerminator(v2, v1, ',');
            v6[v4] = Ascii_ConvertToInt(v1);
        }

        param2->x = v6[0];
        param2->y = v6[1];
        param2->z = v6[2];

        if (param2->x > FX16_ONE) {
            param2->x = FX16_ONE;
        }

        if (param2->x < -FX16_ONE) {
            param2->x = -FX16_ONE;
        }

        if (param2->y > FX16_ONE) {
            param2->y = FX16_ONE;
        }

        if (param2->y < -FX16_ONE) {
            param2->y = -FX16_ONE;
        }

        if (param2->z > FX16_ONE) {
            param2->z = FX16_ONE;
        }

        if (param2->z < -FX16_ONE) {
            param2->z = -FX16_ONE;
        }
    } else {
        *param1 = 0xffff;
    }

    return param0;
}

static char *ov5_021D5660(char *param0, GXRgb *param1)
{
    char v0[256];
    char v1[256];
    char *v2;
    int v3;
    u16 v4[3];

    param0 = Ascii_CopyToTerminator(param0, v0, 0xd);
    v2 = v0;

    for (v3 = 0; v3 < 3; v3++) {
        v2 = Ascii_CopyToTerminator(v2, v1, ',');
        v4[v3] = Ascii_ConvertToInt(v1);
    }

    *param1 = GX_RGB(v4[0], v4[1], v4[2]);

    return param0;
}
