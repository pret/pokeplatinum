#include <nitro.h>
#include <string.h>

#include "core_sys.h"

#include "struct_defs/union_02022594_020225E0.h"
#include "struct_defs/struct_0208D7BC.h"

#include "unk_02005474.h"
#include "unk_02018340.h"
#include "unk_02022594.h"
#include "unk_0208EA44.h"
#include "unk_020920C0.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
} UnkStruct_020F5164;

static void sub_0223D0BC(UnkStruct_0208D7BC * param0);
static int sub_020921FC(UnkStruct_0208D7BC * param0);

static const UnkStruct_020F5164 Unk_020F5164[] = {
    {0x0, 0x1, 0x1, 0x4},
    {0x1, 0x1, 0x2, 0xA},
    {0x2, 0x2, 0x5, 0xF},
    {0x3, 0x3, 0xA, 0x12},
    {0x4, 0x2, 0x11, 0x12},
    {0x5, 0x3, 0x16, 0xF},
    {0x6, 0x4, 0x19, 0xA},
    {0x7, 0x4, 0x1A, 0x4},
    {0xFF, 0xFF, 0xFF, 0xFF}
};

static const UnkStruct_020F5164 Unk_020F514C[] = {
    {0x0, 0x1, 0x2, 0x9},
    {0x1, 0x1, 0x6, 0xF},
    {0x2, 0x2, 0xE, 0x12},
    {0x3, 0x3, 0x16, 0xF},
    {0x7, 0x4, 0x1A, 0x9},
    {0xFF, 0xFF, 0xFF, 0xFF}
};

static const UnkStruct_020F5164 Unk_020F5128[] = {
    {0x3, 0x3, 0xA, 0x12},
    {0x5, 0x3, 0x11, 0x12},
    {0xFF, 0xFF, 0xFF, 0xFF}
};

static const UnkStruct_020F5164 * Unk_02100D84[] = {
    Unk_020F5164,
    Unk_020F514C,
    Unk_020F5128
};

static const UnkUnion_02022594 Unk_020F5188[] = {
    {0x20, 0x47, 0x8, 0x2F},
    {0x50, 0x77, 0x10, 0x37},
    {0x78, 0x9F, 0x28, 0x4F},
    {0x90, 0xB7, 0x50, 0x77},
    {0x90, 0xB7, 0x88, 0xAF},
    {0x78, 0x9F, 0xB0, 0xD7},
    {0x50, 0x77, 0xC8, 0xEF},
    {0x20, 0x47, 0xD0, 0xF7},
    {0xFF, 0x0, 0x0, 0x0}
};

static const UnkUnion_02022594 Unk_020F5134[] = {
    {0x48, 0x6F, 0xC, 0x33},
    {0x78, 0x9F, 0x2C, 0x53},
    {0x90, 0xB7, 0x6C, 0x93},
    {0x78, 0x9F, 0xAC, 0xD3},
    {0x48, 0x6F, 0xCC, 0xF3},
    {0xFF, 0x0, 0x0, 0x0}
};

static const UnkUnion_02022594 Unk_020F511C[] = {
    {0x90, 0xB7, 0x50, 0x77},
    {0x90, 0xB7, 0x88, 0xAF},
    {0xFF, 0x0, 0x0, 0x0}
};

static const UnkUnion_02022594 * Unk_02100D78[] = {
    Unk_020F5188,
    Unk_020F5134,
    Unk_020F511C
};

void sub_020920C0 (UnkStruct_0208D7BC * param0)
{
    switch (param0->unk_24C->unk_12) {
    case 0:
    case 1:
        if (param0->unk_24C->unk_2C != 0) {
            param0->unk_6A7_0 = 0;
        } else {
            param0->unk_6A7_0 = 1;
            sub_0201C63C(param0->unk_00, 4, 0, 4);
        }
        break;
    case 2:
    case 3:
    default:
        param0->unk_6A7_0 = 0xf;
    }

    sub_0209219C(param0);
}

static void sub_0209212C (UnkStruct_0208D7BC * param0, const UnkStruct_020F5164 * param1, u8 param2)
{
    u16 * v0;
    u16 v1;
    u8 v2;
    u8 v3, v4;

    v0 = (u16 *)sub_02019FE4(param0->unk_00, 4);
    v1 = (param1->unk_00 & 1) * 15 + (param1->unk_00 / 2) * (30 * 5) + param2 * 5 + 30;

    for (v3 = 0; v3 < 5; v3++) {
        for (v4 = 0; v4 < 5; v4++) {
            v0[(v3 + param1->unk_03) * 32 + v4 + param1->unk_02] = v1 + v3 * 30 + v4 + (param1->unk_01 << 12);
        }
    }
}

void sub_0209219C (UnkStruct_0208D7BC * param0)
{
    const UnkStruct_020F5164 * v0;
    u8 v1;

    if (param0->unk_6A7_0 == 0xf) {
        return;
    }

    v0 = Unk_02100D84[param0->unk_6A7_0];
    v1 = 0;

    while (TRUE) {
        if (v0[v1].unk_00 == 0xff) {
            break;
        }

        sub_0209212C(param0, &v0[v1], 0);
        v1++;
    }

    sub_0201C3C0(param0->unk_00, 4);
}

u8 sub_020921E4 (UnkStruct_0208D7BC * param0)
{
    int v0;

    v0 = sub_020921FC(param0);

    if (v0 != 0xffffffff) {
        return v0;
    }

    return 0xff;
}

static int sub_020921FC (UnkStruct_0208D7BC * param0)
{
    int v0;

    if (param0->unk_6A7_0 == 0xf) {
        return 0xffffffff;
    }

    v0 = sub_02022664(Unk_02100D78[param0->unk_6A7_0]);

    return v0;
}

static int sub_02092224 (UnkStruct_0208D7BC * param0)
{
    int v0;

    if (param0->unk_6A7_0 == 0xf) {
        return 0xffffffff;
    }

    v0 = sub_02022644(Unk_02100D78[param0->unk_6A7_0]);

    if (v0 != 0xffffffff) {
        u16 v1 = 0xfffe;

        if (sub_0201C784(param0->unk_00, 4, gCoreSys.unk_5C, gCoreSys.unk_5E, &v1) == 0) {
            return 0xffffffff;
        }
    }

    return v0;
}

u8 sub_0209228C (UnkStruct_0208D7BC * param0)
{
    const UnkStruct_020F5164 * v0 = Unk_02100D84[param0->unk_6A7_0];

    switch (param0->unk_6AD) {
    case 0:
        sub_02005748(1508);
        sub_0209219C(param0);
        sub_0209212C(param0, &v0[param0->unk_6AE], 2);
        sub_0201C3C0(param0->unk_00, 4);
        sub_0208F600(param0);
        param0->unk_6AC = 0;
        param0->unk_6AD = 1;
        break;

    case 1:
        param0->unk_6AD = 2;
        break;

    case 2:
        if (param0->unk_6AC != 3) {
            param0->unk_6AC++;
            break;
        }

        sub_0208F684(param0);

        if (sub_02092224(param0) != param0->unk_6AE) {
            if ((param0->unk_250.unk_50_28 != 0) && (v0[param0->unk_6AE].unk_00 != 1) && (v0[param0->unk_6AE].unk_00 != 7)) {
                sub_0209212C(param0, &v0[param0->unk_6AE], 0);
            } else {
                sub_0209212C(param0, &v0[param0->unk_6AE], 1);
            }

            sub_0201C3C0(param0->unk_00, 4);
            return 1;
        }
    }

    return 0;
}

void sub_02092368 (UnkStruct_0208D7BC * param0, s16 * param1, s16 * param2)
{
    const UnkStruct_020F5164 * v0 = Unk_02100D84[param0->unk_6A7_0];

    *param1 = v0[param0->unk_6AE].unk_02 * 8 + (5 * 8) / 2;
    *param2 = v0[param0->unk_6AE].unk_03 * 8 + (5 * 8) / 2;
}

u8 sub_020923A4 (UnkStruct_0208D7BC * param0, u8 param1)
{
    const UnkStruct_020F5164 * v0 = Unk_02100D84[param0->unk_6A7_0];
    return v0[param1].unk_00;
}
