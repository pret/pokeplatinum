#include "overlay012/ov12_02225104.h"

#include <nitro.h>
#include <string.h>

#include "overlay012/ov12_0221FC20.h"
#include "overlay012/ov12_0222421C.h"
#include "overlay012/ov12_02235254.h"
#include "overlay012/struct_ov12_02225640.h"

#include "spl.h"
#include "unk_02014000.h"

static void ov12_02225104(UnkStruct_ov12_02225640 *param0, int param1[]);
static BOOL ov12_02225110(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1);
static BOOL ov12_02225114(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1);
static BOOL ov12_022251F8(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1);
static BOOL ov12_022251FC(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1);
static BOOL ov12_02225200(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1);
static BOOL ov12_022252C8(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1);
static BOOL ov12_0222534C(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1);
static BOOL ov12_022253CC(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1);
static BOOL ov12_02225434(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1);
static BOOL ov12_02225438(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1);
static BOOL ov12_0222543C(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1);
static BOOL ov12_02225440(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1);
static BOOL ov12_02225444(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1);
static BOOL ov12_02225550(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1);

static BOOL (*const Unk_ov12_02239D6C[])(SPLEmitter *, UnkStruct_ov12_02225640 *) = {
    ov12_02225110,
    ov12_02225114,
    ov12_022251F8,
    ov12_022251FC,
    ov12_02225200,
    ov12_022252C8,
    ov12_0222534C,
    ov12_022253CC,
    ov12_02225434,
    ov12_02225438,
    ov12_0222543C,
    ov12_02225440,
    ov12_02225444,
    ov12_02225550
};

static void ov12_02225104(UnkStruct_ov12_02225640 *param0, int param1[])
{
    ov12_0222325C(param0->unk_00, param1, 5);
}

static BOOL ov12_02225110(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1)
{
    return 1;
}

static BOOL ov12_02225114(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1)
{
    int v0[5];
    VecFx16 v1 = { 0, 0, 0 };

    ov12_02225104(param1, v0);
    param1->unk_08 = ov12_02224FC4(param1);

    if (v0[1] == 1) {
        param1->unk_08 = 1;
    }

    switch (v0[0]) {
    case 0: {
        sub_02014874(param0, &v1);
        v1.x *= param1->unk_08;
        v1.y *= param1->unk_08;
        v1.z *= param1->unk_08;
    } break;
    case 1: {
        VEC_Fx16Set(&v1, v0[2], v0[3], v0[4]);

        v1.x *= param1->unk_08;
        v1.y *= param1->unk_08;
        v1.z *= param1->unk_08;

        sub_02014874(param0, &v1);

        return 1;
    } break;
    case 2:
    case 3:
    case 0xFF:
        break;
    }

    v1.x -= param1->unk_2C.x;
    v1.y -= param1->unk_2C.y;
    v1.z -= param1->unk_2C.z;

    sub_02014874(param0, &v1);
    return 1;
}

static BOOL ov12_022251F8(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1)
{
    return 1;
}

static BOOL ov12_022251FC(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1)
{
    return 1;
}

static BOOL ov12_02225200(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1)
{
    int v0[5];
    VecFx32 v1 = { 0, 0, 0 };

    ov12_02225104(param1, v0);
    param1->unk_08 = ov12_02224FC4(param1);

    if (v0[1] == 1) {
        param1->unk_08 = 1;
    }

    switch (v0[0]) {
    case 0: {
        sub_020148A8(param0, &v1);

        v1.x *= param1->unk_08;
        v1.y *= param1->unk_08;
        v1.z *= param1->unk_08;
    } break;
    case 1: {
        VEC_Set(&v1, v0[2], v0[3], v0[4]);

        v1.x *= param1->unk_08;
        v1.y *= param1->unk_08;
        v1.z *= param1->unk_08;
    } break;
    case 2:
        ov12_02235508(param1->unk_00, param1->unk_24, &v1);
        break;
    case 3:
        ov12_02235508(param1->unk_00, param1->unk_28, &v1);
        break;
    case 0xFF:
        break;
    }

    v1.x -= param1->unk_2C.x;
    v1.y -= param1->unk_2C.y;

    sub_02014890(param0, &v1);
    return 1;
}

static BOOL ov12_022252C8(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1)
{
    int v0[5];
    fx16 v1 = 0;

    ov12_02225104(param1, v0);
    param1->unk_08 = ov12_02224FC4(param1);

    if (v0[1] == 1) {
        param1->unk_08 = 1;
    }

    switch (v0[0]) {
    case 0: {
        sub_020148F4(param0, &v1);
        v1 *= param1->unk_08;
    } break;
    case 1: {
        v1 = v0[2];
        v1 *= param1->unk_08;
    } break;
    case 2:
    case 3:
    case 0xFF:
        break;
    }

    sub_020148DC(param0, &v1);
    return 1;
}

static BOOL ov12_0222534C(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1)
{
    int v0[5];
    u16 v1 = 0;

    ov12_02225104(param1, v0);
    param1->unk_08 = ov12_02224FC4(param1);

    if (v0[1] == 1) {
        param1->unk_08 = 1;
    }

    switch (v0[0]) {
    case 0: {
        sub_02014924(param0, &v1);
        v1 *= param1->unk_08;
    } break;
    case 1: {
        v1 = v0[2];
        v1 *= param1->unk_08;
    } break;
    case 2:
    case 3:
    case 0xFF:
        break;
    }

    sub_02014910(param0, &v1);
    return 1;
}

static BOOL ov12_022253CC(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1)
{
    int v0[5];
    u16 v1 = 0;

    ov12_02225104(param1, v0);
    param1->unk_08 = ov12_02224FC4(param1);

    if (v0[1] == 1) {
        param1->unk_08 = 1;
    }

    switch (v0[0]) {
    case 0: {
        sub_02014954(param0, &v1);
    } break;
    case 1: {
        v1 = v0[2];
    } break;
    case 2:
    case 3:
    case 0xFF:
        break;
    }

    sub_02014940(param0, &v1);
    return 1;
}

static BOOL ov12_02225434(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1)
{
    return 1;
}

static BOOL ov12_02225438(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1)
{
    return 1;
}

static BOOL ov12_0222543C(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1)
{
    return 1;
}

static BOOL ov12_02225440(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1)
{
    return 1;
}

static BOOL ov12_02225444(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1)
{
    int v0[5];
    VecFx32 v1 = { 0, 0, 0 };

    ov12_02225104(param1, v0);
    param1->unk_08 = ov12_02224FC4(param1);

    if (v0[1] == 1) {
        param1->unk_08 = 1;
    }

    switch (v0[0]) {
    case 0: {
        sub_02014988(param0, &v1);
        v1.x *= param1->unk_08;
        v1.y *= param1->unk_08;
        v1.z *= param1->unk_08;
    } break;
    case 1: {
        VEC_Set(&v1, v0[2], v0[3], v0[4]);

        v1.x *= param1->unk_08;
        v1.y *= param1->unk_08;
        v1.z *= param1->unk_08;
    } break;
    case 4:
        ov12_02235508(param1->unk_00, param1->unk_28, &v1);

        v1.x = (v1.x * v0[2]) / v0[3];
        v1.y = (v1.y * v0[2]) / v0[3];
        v1.z = (v1.z * v0[2]) / v0[3];
        break;
    case 2:
        ov12_02235508(param1->unk_00, param1->unk_24, &v1);
        break;
    case 3:
        ov12_02235508(param1->unk_00, param1->unk_28, &v1);
        break;
    case 0xFF:
        break;
    }

    v1.x -= param1->unk_2C.x;
    v1.y -= param1->unk_2C.y;
    v1.z -= param1->unk_2C.z;

    sub_02014970(param0, &v1);
    return 1;
}

static BOOL ov12_02225550(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1)
{
    int v0[5];
    fx16 v1 = 0;

    ov12_02225104(param1, v0);
    param1->unk_08 = ov12_02224FC4(param1);

    if (v0[1] == 1) {
        param1->unk_08 = 1;
    }

    switch (v0[0]) {
    case 0: {
        sub_020149D4(param0, &v1);
        v1 *= param1->unk_08;
    } break;
    case 1: {
        v1 = v0[2];
        v1 *= param1->unk_08;
    } break;
    case 2:
    case 3:
    case 0xFF:
        break;
    }

    sub_020149BC(param0, &v1);
    return 1;
}

void ov12_022255D4(int param0, SPLEmitter *param1, UnkStruct_ov12_02225640 *param2)
{
    BOOL v0 = Unk_ov12_02239D6C[param0](param1, param2);

    if (v0 == 0) {
        (void)0;
    }
}

int ov12_022255EC(int param0)
{
    const int v0[] = {
        0x0,
        0x2,
        0x4,
        0x8,
        0x10,
        0x20,
        0x40,
        0x80,
        0x100,
        0x200,
        0x400,
        0x800,
        0x1000,
        0x2000,
        0xFEFE
    };

    return v0[param0];
}

int ov12_02225614(void)
{
    int v0 = 0;
    int v1 = 0;

    do {
        int v2;

        v2 = ov12_022255EC(v0);
        v0++;

        if (v2 == 0xFEFE) {
            break;
        }

        v1++;
    } while (v1 < 0xFF);

    if (v1 >= 0xFF) {
        return 0;
    }

    return v0;
}
