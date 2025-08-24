#include "overlay063/ov63_0222BE18.h"

#include <nitro.h>
#include <string.h>

#include "overlay063/struct_ov63_0222CC3C.h"
#include "overlay063/struct_ov63_0222CCB8.h"
#include "overlay065/struct_ov65_022376D0.h"

#include "heap.h"

typedef struct UnkStruct_ov63_0222BEC0_t {
    BOOL unk_00;
    UnkStruct_ov63_0222CC3C unk_04;
    UnkStruct_ov63_0222CC3C unk_08;
    u16 unk_0C;
    u16 unk_0E;
    u16 unk_10;
    u16 unk_12;
    u8 unk_14;
    u8 unk_15;
    u16 unk_16;
} UnkStruct_ov63_0222BEC0;

typedef struct UnkStruct_ov63_0222BE18_t {
    UnkStruct_ov63_0222BEC0 *unk_00;
    u32 unk_04;
} UnkStruct_ov63_0222BE18;

static UnkStruct_ov63_0222BEC0 *ov63_0222C0B8(UnkStruct_ov63_0222BE18 *param0);
static void ov63_0222C350(UnkStruct_ov63_0222BEC0 *param0, const UnkStruct_ov63_0222CCB8 *param1);
static void ov63_0222C37C(UnkStruct_ov63_0222BEC0 *param0);
static void ov63_0222C3AC(UnkStruct_ov63_0222BEC0 *param0, UnkStruct_ov63_0222CC3C param1, int param2);
static void ov63_0222C404(UnkStruct_ov63_0222BEC0 *param0, UnkStruct_ov63_0222CC3C param1, int param2);
static void ov63_0222C470(UnkStruct_ov63_0222BEC0 *param0, UnkStruct_ov63_0222CC3C param1, int param2);
static void ov63_0222C508(UnkStruct_ov63_0222BEC0 *param0, UnkStruct_ov63_0222CC3C param1, int param2);
static void ov63_0222C5A0(UnkStruct_ov63_0222BEC0 *param0, UnkStruct_ov63_0222CC3C param1, int param2);
static void ov63_0222C5F8(UnkStruct_ov63_0222BEC0 *param0, UnkStruct_ov63_0222CC3C param1, int param2);
static void ov63_0222C664(UnkStruct_ov63_0222BEC0 *param0, UnkStruct_ov63_0222CC3C param1, int param2);
static void ov63_0222C6FC(UnkStruct_ov63_0222BEC0 *param0, UnkStruct_ov63_0222CC3C param1, int param2);
static void ov63_0222C794(UnkStruct_ov63_0222BEC0 *param0, UnkStruct_ov63_0222CC3C param1, int param2);
static void ov63_0222C800(UnkStruct_ov63_0222BEC0 *param0, UnkStruct_ov63_0222CC3C param1, int param2);
static void ov63_0222C86C(UnkStruct_ov63_0222BEC0 *param0, UnkStruct_ov63_0222CC3C param1, int param2);
static void ov63_0222C8D8(UnkStruct_ov63_0222BEC0 *param0, UnkStruct_ov63_0222CC3C param1, int param2);
static BOOL ov63_0222C944(UnkStruct_ov63_0222BEC0 *param0);
static BOOL ov63_0222C948(UnkStruct_ov63_0222BEC0 *param0);
static BOOL ov63_0222C950(UnkStruct_ov63_0222BEC0 *param0);
static BOOL ov63_0222C990(UnkStruct_ov63_0222BEC0 *param0);
static BOOL ov63_0222C9D0(UnkStruct_ov63_0222BEC0 *param0);
static BOOL ov63_0222C9D4(UnkStruct_ov63_0222BEC0 *param0);
static BOOL ov63_0222C9DC(UnkStruct_ov63_0222BEC0 *param0);
static void ov63_0222CA48(UnkStruct_ov63_0222BEC0 *param0);
static UnkStruct_ov63_0222CC3C ov63_0222C9E4(UnkStruct_ov63_0222CC3C param0, int param1);
static BOOL ov63_0222CA14(UnkStruct_ov63_0222BEC0 *param0);

UnkStruct_ov63_0222BE18 *ov63_0222BE18(u32 param0, u32 heapID)
{
    UnkStruct_ov63_0222BE18 *v0 = Heap_Alloc(heapID, sizeof(UnkStruct_ov63_0222BE18));
    GF_ASSERT(v0);

    v0->unk_04 = param0;
    v0->unk_00 = Heap_Alloc(heapID, sizeof(UnkStruct_ov63_0222BEC0) * v0->unk_04);
    GF_ASSERT(v0->unk_00);

    memset(v0->unk_00, 0, sizeof(UnkStruct_ov63_0222BEC0) * v0->unk_04);

    return v0;
}

void ov63_0222BE58(UnkStruct_ov63_0222BE18 *param0)
{
    GF_ASSERT(param0);
    Heap_Free(param0->unk_00);
    Heap_Free(param0);
}

void ov63_0222BE70(UnkStruct_ov63_0222BE18 *param0, const UnkStruct_ov63_0222CCB8 *param1)
{
    UnkStruct_ov63_0222BEC0 *v0 = ov63_0222BF18(param0, param1->unk_07);
    ov63_0222C350(v0, param1);
}

void ov63_0222BE84(UnkStruct_ov63_0222BE18 *param0)
{
    int v0;
    UnkStruct_ov63_0222BEC0 *v1;
    u32 v2 = ov63_0222BEB0(param0);

    for (v0 = 0; v0 < v2; v0++) {
        v1 = ov63_0222BF50(param0, v0);

        if (v1) {
            ov63_0222C37C(v1);
        }
    }
}

u32 ov63_0222BEB0(const UnkStruct_ov63_0222BE18 *param0)
{
    GF_ASSERT(param0);
    return param0->unk_04;
}

UnkStruct_ov63_0222BEC0 *ov63_0222BEC0(UnkStruct_ov63_0222BE18 *param0, const UnkStruct_ov65_022376D0 *param1)
{
    UnkStruct_ov63_0222BEC0 *v0;

    GF_ASSERT(param0);
    GF_ASSERT(param1);

    v0 = ov63_0222C0B8(param0);

    v0->unk_04.unk_00 = param1->unk_00;
    v0->unk_04.unk_02 = param1->unk_02;
    v0->unk_08.unk_00 = param1->unk_00;
    v0->unk_08.unk_02 = param1->unk_02;
    v0->unk_0C = param1->unk_04;
    v0->unk_15 = param1->unk_06;
    v0->unk_14 = param1->unk_08;
    v0->unk_0E = param1->unk_0A;
    v0->unk_00 = 1;

    return v0;
}

void ov63_0222BF08(UnkStruct_ov63_0222BEC0 *param0)
{
    memset(param0, 0, sizeof(UnkStruct_ov63_0222BEC0));
}

UnkStruct_ov63_0222BEC0 *ov63_0222BF18(UnkStruct_ov63_0222BE18 *param0, u16 param1)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        if (param0->unk_00[v0].unk_00 == 1) {
            if (param0->unk_00[v0].unk_0C == param1) {
                return &param0->unk_00[v0];
            }
        }
    }

    return NULL;
}

UnkStruct_ov63_0222BEC0 *ov63_0222BF50(UnkStruct_ov63_0222BE18 *param0, u16 param1)
{
    GF_ASSERT(param0);
    GF_ASSERT(param1 < param0->unk_04);

    if (param0->unk_00[param1].unk_00 == 1) {
        return &param0->unk_00[param1];
    }

    return NULL;
}

const UnkStruct_ov63_0222BEC0 *ov63_0222BF80(const UnkStruct_ov63_0222BE18 *param0, u16 param1)
{
    return ov63_0222BF18((UnkStruct_ov63_0222BE18 *)param0, param1);
}

const UnkStruct_ov63_0222BEC0 *ov63_0222BF88(const UnkStruct_ov63_0222BE18 *param0, u16 param1)
{
    return ov63_0222BF50((UnkStruct_ov63_0222BE18 *)param0, param1);
}

s32 ov63_0222BF90(const UnkStruct_ov63_0222BEC0 *param0, int param1)
{
    s32 v0;

    GF_ASSERT(param0);

    switch (param1) {
    case 0:
        v0 = param0->unk_04.unk_00;
        break;
    case 1:
        v0 = param0->unk_04.unk_02;
        break;
    case 2:
        v0 = param0->unk_08.unk_00;
        break;
    case 3:
        v0 = param0->unk_08.unk_02;
        break;
    case 4:
        v0 = param0->unk_0C;
        break;
    case 5:
        v0 = param0->unk_15;
        break;
    case 6:
        v0 = param0->unk_14;
        break;
    case 7:
        v0 = param0->unk_0E;
        break;
    case 8:
        v0 = param0->unk_10;
        break;
    case 9:
        v0 = param0->unk_12;
        break;
    case 10:
        v0 = param0->unk_16;
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return v0;
}

void ov63_0222C000(UnkStruct_ov63_0222BEC0 *param0, int param1, s32 param2)
{
    GF_ASSERT(param0);

    switch (param1) {
    case 0:
        param0->unk_04.unk_00 = param2;
        break;
    case 1:
        param0->unk_04.unk_02 = param2;
        break;
    case 2:
        param0->unk_08.unk_00 = param2;
        break;
    case 3:
        param0->unk_08.unk_02 = param2;
        break;
    case 4:
        param0->unk_0C = param2;
        break;
    case 5:
        GF_ASSERT(param2 < 12);
        param0->unk_15 = param2;
        break;
    case 6:
        GF_ASSERT(param2 < 4);
        param0->unk_14 = param2;
        break;
    case 7:
        param0->unk_0E = param2;
        break;
    case 8:
        param0->unk_10 = param2;
        break;
    case 9:
        param0->unk_12 = param2;
        break;
    case 10:
        param0->unk_16 = param2;
        break;
    default:
        GF_ASSERT(0);
        break;
    }
}

UnkStruct_ov63_0222CC3C ov63_0222C078(UnkStruct_ov63_0222CC3C param0, int param1)
{
    static const s8 v0[4][2] = {
        { 0, -16 },
        { 0, 16 },
        { -16, 0 },
        { 16, 0 },
    };

    param0.unk_00 += v0[param1][0];
    param0.unk_02 += v0[param1][1];

    return param0;
}

int ov63_0222C0AC(int param0)
{
    static const u8 v0[4] = {
        1,
        0,
        3,
        2,
    };

    return v0[param0];
}

static UnkStruct_ov63_0222BEC0 *ov63_0222C0B8(UnkStruct_ov63_0222BE18 *param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        if (param0->unk_00[v0].unk_00 == 0) {
            return &param0->unk_00[v0];
        }
    }

    GF_ASSERT(0);
    return NULL;
}

UnkStruct_ov63_0222CC3C ov63_0222C0E4(const UnkStruct_ov63_0222BEC0 *param0)
{
    return param0->unk_04;
}

UnkStruct_ov63_0222CC3C ov63_0222C0F0(const UnkStruct_ov63_0222BEC0 *param0)
{
    return param0->unk_08;
}

UnkStruct_ov63_0222CC3C ov63_0222C0FC(const UnkStruct_ov63_0222BEC0 *param0)
{
    s32 v0;
    s32 v1;
    UnkStruct_ov63_0222CC3C v2, v3;

    v0 = ov63_0222BF90(param0, 8);
    v1 = ov63_0222BF90(param0, 9);
    v2 = ov63_0222C0E4(param0);
    v3 = ov63_0222C0F0(param0);

    v2.unk_00 -= v3.unk_00;
    v2.unk_02 -= v3.unk_02;

    if (v0 > 0) {
        v2.unk_00 = (v0 * v2.unk_00) / v1;
        v2.unk_02 = (v0 * v2.unk_02) / v1;
    } else {
        v2.unk_00 = 0;
        v2.unk_02 = 0;
    }

    v2.unk_00 += v3.unk_00;
    v2.unk_02 += v3.unk_02;

    return v2;
}

void ov63_0222C1A4(UnkStruct_ov63_0222BEC0 *param0, UnkStruct_ov63_0222CC3C param1)
{
    param0->unk_04 = param1;
}

void ov63_0222C1B4(UnkStruct_ov63_0222BEC0 *param0, UnkStruct_ov63_0222CC3C param1)
{
    param0->unk_08 = param1;
}

const UnkStruct_ov63_0222BEC0 *ov63_0222C1C4(const UnkStruct_ov63_0222BEC0 *param0, const UnkStruct_ov63_0222BE18 *param1, int param2)
{
    int v0;
    u32 v1;
    UnkStruct_ov63_0222CC3C v2, v3;
    u32 v4, v5;
    const UnkStruct_ov63_0222BEC0 *v6;

    v2 = ov63_0222C0E4(param0);
    v2 = ov63_0222C078(v2, param2);
    v4 = ov63_0222BF90(param0, 4);
    v1 = ov63_0222BEB0(param1);

    for (v0 = 0; v0 < v1; v0++) {
        v6 = ov63_0222BF88(param1, v0);

        if (v6 == NULL) {
            continue;
        }

        v5 = ov63_0222BF90(v6, 4);

        if (v5 != v4) {
            v3 = ov63_0222C0E4(v6);

            if ((v3.unk_00 == v2.unk_00) && (v3.unk_02 == v2.unk_02)) {
                return v6;
            }

            v3 = ov63_0222C0F0(v6);

            if ((v3.unk_00 == v2.unk_00) && (v3.unk_02 == v2.unk_02)) {
                return v6;
            }
        }
    }

    return NULL;
}

const UnkStruct_ov63_0222BEC0 *ov63_0222C2AC(const UnkStruct_ov63_0222BE18 *param0, UnkStruct_ov63_0222CC3C param1)
{
    int v0;
    u32 v1;
    UnkStruct_ov63_0222CC3C v2;
    const UnkStruct_ov63_0222BEC0 *v3;

    v1 = ov63_0222BEB0(param0);

    for (v0 = 0; v0 < v1; v0++) {
        v3 = ov63_0222BF88(param0, v0);

        if (v3 == NULL) {
            continue;
        }

        v2 = ov63_0222C0E4(v3);

        if ((v2.unk_00 == param1.unk_00) && (v2.unk_02 == param1.unk_02)) {
            return v3;
        }

        v2 = ov63_0222C0F0(v3);

        if ((v2.unk_00 == param1.unk_00) && (v2.unk_02 == param1.unk_02)) {
            return v3;
        }
    }

    return NULL;
}

static void ov63_0222C350(UnkStruct_ov63_0222BEC0 *param0, const UnkStruct_ov63_0222CCB8 *param1)
{
    int v0;

    static void (*const v1[12])(UnkStruct_ov63_0222BEC0 *, UnkStruct_ov63_0222CC3C, int) = {
        ov63_0222C3AC,
        ov63_0222C404,
        ov63_0222C470,
        ov63_0222C508,
        ov63_0222C5A0,
        ov63_0222C5F8,
        ov63_0222C664,
        ov63_0222C6FC,
        ov63_0222C794,
        ov63_0222C800,
        ov63_0222C86C,
        ov63_0222C8D8,
    };

    v1[param1->unk_04](param0, param1->unk_00, param1->unk_06);
    param0->unk_16 = 0;
}

static void ov63_0222C37C(UnkStruct_ov63_0222BEC0 *param0)
{
    static BOOL (*const v0[12])(UnkStruct_ov63_0222BEC0 *) = {
        ov63_0222C944,
        ov63_0222C948,
        ov63_0222C950,
        ov63_0222C990,
        ov63_0222C9D0,
        ov63_0222C9D4,
        ov63_0222C950,
        ov63_0222C950,
        ov63_0222C9DC,
        ov63_0222C9DC,
        ov63_0222C9DC,
        ov63_0222C9DC,
    };

    u32 v1 = ov63_0222BF90(param0, 5);
    BOOL v2 = v0[v1](param0);
    param0->unk_16++;

    if (v2 == 1) {
        ov63_0222CA48(param0);
        param0->unk_16 = 0;
    }
}

static void ov63_0222C3AC(UnkStruct_ov63_0222BEC0 *param0, UnkStruct_ov63_0222CC3C param1, int param2)
{
    GF_ASSERT(param0);

    ov63_0222C1A4(param0, param1);
    ov63_0222C1B4(param0, param1);
    ov63_0222C000(param0, 6, param2);
    ov63_0222C000(param0, 5, 0);
}

static void ov63_0222C404(UnkStruct_ov63_0222BEC0 *param0, UnkStruct_ov63_0222CC3C param1, int param2)
{
    GF_ASSERT(param0);

    ov63_0222C1A4(param0, param1);
    ov63_0222C1B4(param0, param1);
    ov63_0222C000(param0, 6, param2);
    ov63_0222C000(param0, 5, 1);
    ov63_0222C000(param0, 8, 0);
    ov63_0222C000(param0, 9, 2);
}

static void ov63_0222C470(UnkStruct_ov63_0222BEC0 *param0, UnkStruct_ov63_0222CC3C param1, int param2)
{
    UnkStruct_ov63_0222CC3C v0;

    GF_ASSERT(param0);
    v0 = ov63_0222C9E4(param1, param2);

    ov63_0222C1B4(param0, param1);
    ov63_0222C1A4(param0, v0);
    ov63_0222C000(param0, 6, param2);
    ov63_0222C000(param0, 5, 2);
    ov63_0222C000(param0, 8, 0);
    ov63_0222C000(param0, 9, 8);
}

static void ov63_0222C508(UnkStruct_ov63_0222BEC0 *param0, UnkStruct_ov63_0222CC3C param1, int param2)
{
    UnkStruct_ov63_0222CC3C v0;

    GF_ASSERT(param0);
    v0 = ov63_0222C9E4(param1, param2);

    ov63_0222C1B4(param0, param1);
    ov63_0222C1A4(param0, v0);
    ov63_0222C000(param0, 6, param2);
    ov63_0222C000(param0, 5, 3);
    ov63_0222C000(param0, 8, 0);
    ov63_0222C000(param0, 9, 4);
}

static void ov63_0222C5A0(UnkStruct_ov63_0222BEC0 *param0, UnkStruct_ov63_0222CC3C param1, int param2)
{
    GF_ASSERT(param0);

    ov63_0222C1A4(param0, param1);
    ov63_0222C1B4(param0, param1);
    ov63_0222C000(param0, 6, param2);
    ov63_0222C000(param0, 5, 4);
}

static void ov63_0222C5F8(UnkStruct_ov63_0222BEC0 *param0, UnkStruct_ov63_0222CC3C param1, int param2)
{
    GF_ASSERT(param0);

    ov63_0222C1A4(param0, param1);
    ov63_0222C1B4(param0, param1);
    ov63_0222C000(param0, 6, param2);
    ov63_0222C000(param0, 5, 5);
    ov63_0222C000(param0, 8, 0);
    ov63_0222C000(param0, 9, 16);
}

static void ov63_0222C664(UnkStruct_ov63_0222BEC0 *param0, UnkStruct_ov63_0222CC3C param1, int param2)
{
    UnkStruct_ov63_0222CC3C v0;

    GF_ASSERT(param0);
    v0 = ov63_0222C9E4(param1, param2);

    ov63_0222C1B4(param0, param1);
    ov63_0222C1A4(param0, v0);
    ov63_0222C000(param0, 6, param2);
    ov63_0222C000(param0, 5, 6);
    ov63_0222C000(param0, 8, 0);
    ov63_0222C000(param0, 9, 16);
}

static void ov63_0222C6FC(UnkStruct_ov63_0222BEC0 *param0, UnkStruct_ov63_0222CC3C param1, int param2)
{
    UnkStruct_ov63_0222CC3C v0;

    GF_ASSERT(param0);
    v0 = ov63_0222C9E4(param1, param2);

    ov63_0222C1B4(param0, param1);
    ov63_0222C1A4(param0, v0);
    ov63_0222C000(param0, 6, param2);
    ov63_0222C000(param0, 5, 7);
    ov63_0222C000(param0, 8, 0);
    ov63_0222C000(param0, 9, 4);
}

static void ov63_0222C794(UnkStruct_ov63_0222BEC0 *param0, UnkStruct_ov63_0222CC3C param1, int param2)
{
    GF_ASSERT(param0);

    ov63_0222C1B4(param0, param1);
    ov63_0222C1A4(param0, param1);
    ov63_0222C000(param0, 6, param2);
    ov63_0222C000(param0, 5, 8);
    ov63_0222C000(param0, 8, 0);
    ov63_0222C000(param0, 9, 2);
}

static void ov63_0222C800(UnkStruct_ov63_0222BEC0 *param0, UnkStruct_ov63_0222CC3C param1, int param2)
{
    GF_ASSERT(param0);

    ov63_0222C1B4(param0, param1);
    ov63_0222C1A4(param0, param1);
    ov63_0222C000(param0, 6, param2);
    ov63_0222C000(param0, 5, 9);
    ov63_0222C000(param0, 8, 0);
    ov63_0222C000(param0, 9, 4);
}

static void ov63_0222C86C(UnkStruct_ov63_0222BEC0 *param0, UnkStruct_ov63_0222CC3C param1, int param2)
{
    GF_ASSERT(param0);

    ov63_0222C1B4(param0, param1);
    ov63_0222C1A4(param0, param1);
    ov63_0222C000(param0, 6, param2);
    ov63_0222C000(param0, 5, 10);
    ov63_0222C000(param0, 8, 0);
    ov63_0222C000(param0, 9, 8);
}

static void ov63_0222C8D8(UnkStruct_ov63_0222BEC0 *param0, UnkStruct_ov63_0222CC3C param1, int param2)
{
    GF_ASSERT(param0);

    ov63_0222C1B4(param0, param1);
    ov63_0222C1A4(param0, param1);
    ov63_0222C000(param0, 6, param2);
    ov63_0222C000(param0, 5, 11);
    ov63_0222C000(param0, 8, 0);
    ov63_0222C000(param0, 9, 16);
}

static BOOL ov63_0222C944(UnkStruct_ov63_0222BEC0 *param0)
{
    return 0;
}

static BOOL ov63_0222C948(UnkStruct_ov63_0222BEC0 *param0)
{
    return ov63_0222CA14(param0);
}

static BOOL ov63_0222C950(UnkStruct_ov63_0222BEC0 *param0)
{
    BOOL v0;
    UnkStruct_ov63_0222CC3C v1;

    v0 = ov63_0222CA14(param0);

    if (v0 == 1) {
        v1 = ov63_0222C0E4(param0);
        ov63_0222C1B4(param0, v1);
    }

    return v0;
}

static BOOL ov63_0222C990(UnkStruct_ov63_0222BEC0 *param0)
{
    BOOL v0;
    UnkStruct_ov63_0222CC3C v1;

    v0 = ov63_0222CA14(param0);

    if (v0 == 1) {
        v1 = ov63_0222C0E4(param0);
        ov63_0222C1B4(param0, v1);
    }

    return v0;
}

static BOOL ov63_0222C9D0(UnkStruct_ov63_0222BEC0 *param0)
{
    return 0;
}

static BOOL ov63_0222C9D4(UnkStruct_ov63_0222BEC0 *param0)
{
    return ov63_0222CA14(param0);
}

static BOOL ov63_0222C9DC(UnkStruct_ov63_0222BEC0 *param0)
{
    return ov63_0222CA14(param0);
}

static UnkStruct_ov63_0222CC3C ov63_0222C9E4(UnkStruct_ov63_0222CC3C param0, int param1)
{
    return ov63_0222C078(param0, param1);
}

static BOOL ov63_0222CA14(UnkStruct_ov63_0222BEC0 *param0)
{
    s32 v0;
    s32 v1;

    v0 = ov63_0222BF90(param0, 8);
    v1 = ov63_0222BF90(param0, 9);

    if (v0 < v1) {
        v0++;
        ov63_0222C000(param0, 8, v0);

        if (v0 < v1) {
            return 0;
        }
    }

    return 1;
}

static void ov63_0222CA48(UnkStruct_ov63_0222BEC0 *param0)
{
    UnkStruct_ov63_0222CC3C v0;
    int v1;

    v0 = ov63_0222C0E4(param0);
    v1 = ov63_0222BF90(param0, 6);

    ov63_0222C3AC(param0, v0, v1);
}
