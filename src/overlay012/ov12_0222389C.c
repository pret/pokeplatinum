#include "overlay012/ov12_0222389C.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02014014_decl.h"

#include "overlay012/ov12_0221FC20.h"
#include "overlay012/ov12_02235254.h"
#include "overlay012/struct_ov12_0221FCDC_decl.h"
#include "overlay115/camera_angle.h"

#include "camera.h"
#include "spl.h"
#include "unk_02014000.h"

static s8 ov12_0222389C(UnkStruct_ov12_0221FCDC *param0, int param1, int param2);

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

static s8 ov12_0222389C(UnkStruct_ov12_0221FCDC *param0, int param1, int param2)
{
    s8 v0 = 1;
    int v1, v2;

    v1 = ov12_02235254(param0, param1);
    v2 = ov12_02235254(param0, param2);

    switch (v1) {
    case 0:
    default:
        break;
    case 1:
        v0 = -1;
        break;
    case 2:
        break;
    case 3:
        v0 = -1;
        break;
    case 4:
        break;
    case 5:
        v0 = -1;
        break;
    }

    return v0;
}

void ov12_022238DC(UnkSPLStruct6 *param0)
{
    return;
}

void ov12_022238E0(UnkSPLStruct6 *param0)
{
    UnkStruct_ov12_0221FCDC *v0;
    UnkStruct_02014014 *v1;
    int v2, v3, v4;
    VecFx32 v5, v6, v7;

    v0 = sub_02014764();
    v2 = ov12_02220240(v0);
    v3 = ov12_02220248(v0);
    v2 = 1;
    v3 = 0;
    v1 = ov12_02220250(v0);

    {
        int v8, v9;
        int v10;

        if (ov12_0223525C(v0, v2) == 0x3) {
            ov12_02235508(v0, v2, &v5);
        } else {
            v8 = ov12_02235254(v0, v2);
            v9 = ov12_02235310(v8);
            v10 = sub_02014790(v1);
            v4 = ov12_0221FDD4(v0);

            ov12_02235448(v9, &v5, v4, v10);
            ov12_02235448(v8, &v6, v4, v10);
        }
    }

    SPL_UnkInline2(param0, v5.x);
    SPL_UnkInline3(param0, v5.y);
    SPL_UnkInline4(param0, v5.z);

    ov12_02235760(v2, &v7);

    {
        CameraAngle v11;
        Camera *camera;

        camera = sub_02014784(v1);

        switch (v2) {
        case 2:
        default:
            v11 = Camera_GetAngle(camera);
            Camera_SetAngleAroundTarget(&v11, camera);
            break;
        case 3:
            v11 = Camera_GetAngle(camera);
            v11.x += 65536 / 2;
            v11.y += 65536 / 2;
            Camera_SetAngleAroundTarget(&v11, camera);
            break;
        }
    }
}

void ov12_02223998(UnkSPLStruct6 *param0)
{
    UnkStruct_ov12_0221FCDC *v0;
    UnkStruct_02014014 *v1;
    int v2;
    VecFx32 v3, v4;

    v0 = sub_02014764();
    v2 = ov12_02220248(v0);
    v1 = ov12_02220250(v0);

    ov12_02235508(v0, 0, &v3);

    SPL_UnkInline2(param0, v3.x);
    SPL_UnkInline3(param0, v3.y);
    SPL_UnkInline4(param0, v3.z);

    ov12_02235760(v2, &v4);
    sub_02014744(v1, &v4);
}

void ov12_022239F4(UnkSPLStruct6 *param0)
{
    UnkStruct_ov12_0221FCDC *v0;
    int v1;
    VecFx32 v2;

    v0 = sub_02014764();
    v1 = ov12_02220248(v0);

    ov12_02235508(v0, v1, &v2);

    SPL_UnkInline2(param0, v2.x);
    SPL_UnkInline3(param0, v2.y);
    SPL_UnkInline4(param0, v2.z);
}

void ov12_02223A38(UnkSPLStruct6 *param0)
{
    UnkStruct_ov12_0221FCDC *v0;
    int v1;
    VecFx32 v2;

    v0 = sub_02014764();
    v1 = ov12_02220240(v0);

    ov12_02235508(v0, v1, &v2);

    SPL_UnkInline2(param0, v2.x);
    SPL_UnkInline3(param0, v2.y);
    SPL_UnkInline4(param0, v2.z);
}

void ov12_02223A7C(UnkSPLStruct6 *param0)
{
    UnkStruct_ov12_0221FCDC *v0;
    int v1;
    int v2;
    VecFx32 v3;

    v0 = sub_02014764();
    v1 = ov12_02220240(v0);
    v2 = ov12_02220248(v0);

    ov12_02235508(v0, v1, &v3);

    SPL_UnkInline2(param0, v3.x);
    SPL_UnkInline3(param0, v3.y);
    SPL_UnkInline4(param0, v3.z);
}

void ov12_02223AC8(UnkSPLStruct6 *param0)
{
    UnkStruct_ov12_0221FCDC *v0;
    VecFx32 v1;
    UnkStruct_02014014 *v2;
    int v3;
    int v4;
    int v5;
    int v6;

    v0 = sub_02014764();
    v2 = ov12_02220250(v0);
    v3 = sub_02014790(v2);
    v5 = ov12_02220240(v0);
    v6 = ov12_0223525C(v0, v5);

    if (v6 == 0x3) {
        v4 = 0;
    } else {
        v4 = 1;
    }

    ov12_02235448(v4, &v1, ov12_0221FDD4(v0), v3);

    SPL_UnkInline2(param0, v1.x);
    SPL_UnkInline3(param0, v1.y);
    SPL_UnkInline4(param0, v1.z);
}

void ov12_02223B30(UnkSPLStruct6 *param0)
{
    UnkStruct_ov12_0221FCDC *v0;
    VecFx32 v1;
    UnkStruct_02014014 *v2;
    int v3;
    int v4;
    int v5;
    int v6;
    int v7;

    v0 = sub_02014764();
    v2 = ov12_02220250(v0);
    v4 = sub_02014790(v2);
    v6 = ov12_02220248(v0);
    v7 = ov12_0223525C(v0, v6);

    if (v7 == 0x3) {
        v5 = 0;
    } else {
        v5 = 1;
    }

    ov12_02235448(v5, &v1, ov12_0221FDD4(v0), v4);

    SPL_UnkInline2(param0, v1.x);
    SPL_UnkInline3(param0, v1.y);
    SPL_UnkInline4(param0, v1.z);
}

void ov12_02223B98(UnkSPLStruct6 *param0)
{
    UnkStruct_ov12_0221FCDC *v0;
    int v1;
    int v2;
    int v3;
    int v4;
    int v5;
    int v6;
    VecFx32 v7;
    s16 v8[6] = { 0x0, 0x0, 0x0, 0x0, 0, 0 };
    s16 v9[][6] = {
        { 0x0, 0x0, 0xFF, 0xFF, 0xFF, 0xFF },
        { 0x0, 0x0, 0xFF, 0xFF, 0xFF, 0xFF },
        { 0xFF, 0xFF, 0xFF, -16, 0xFF, -16 },
        { 0xFF, 0xFF, 0x20, 0xFF, 0x20, 0xFF },
        { 0xFF, 0xFF, 0xFF, 0x10, 0xFF, 0x4 },
        { 0xFF, 0xFF, -16, 0xFF, 0x0, 0xFF }
    };
    s16 v10[][6] = {
        { 0x0, 0x0, 0xFF, 0xFF, 0xFF, 0xFF },
        { 0x0, 0x0, 0xFF, 0xFF, 0xFF, 0xFF },
        { 0xFF, 0xFF, 0xFF, 0x10, 0xFF, 0x10 },
        { 0xFF, 0xFF, 0x0, 0xFF, 0x0, 0xFF },
        { 0xFF, 0xFF, 0xFF, 0x0, 0xFF, 0x0 },
        { 0xFF, 0xFF, 0x18, 0xFF, 0x18, 0xFF }
    };

    v0 = sub_02014764();
    v1 = ov12_02220240(v0);
    v2 = ov12_02220248(v0);
    v3 = ov12_02235254(v0, v1);
    v4 = ov12_02235254(v0, v2);
    v5 = v9[v3][v4] * 172;
    v6 = v10[v3][v4] * 172;

    VEC_Set(&v7, v5, v6, 0);

    SPL_UnkInline2(param0, v7.x);
    SPL_UnkInline3(param0, v7.y);
    SPL_UnkInline4(param0, v7.z);
}

static void ov12_02223C40(int param0, s8 param1, VecFx32 *param2)
{
    fx32 *v0 = &(param2->x);
    fx32 *v1 = &(param2->y);
    fx32 *v2 = &(param2->z);

    switch (param0) {
    case 0:
        break;
    case 1:
        (*v0) *= param1;
        break;
    case 2:
        (*v1) *= param1;
        break;
    case 3:
        (*v2) *= param1;
        break;
    case 4:
        (*v0) *= param1;
        (*v1) *= param1;
        break;
    case 5:
        (*v0) *= param1;
        (*v2) *= param1;
        break;
    case 6:
        (*v1) *= param1;
        (*v2) *= param1;
        break;
    case 7:
        (*v0) *= param1;
        (*v1) *= param1;
        (*v2) *= param1;
        break;
    }
}

static void ov12_02223CD4(UnkStruct_ov12_0221FCDC *param0, UnkSPLStruct6 *param1, int param2, int param3, int param4, s8 param5, VecFx32 *param6)
{
    VecFx32 v0 = { 0, 0, 0 };

    switch (param4) {
    case 0:
        break;
    case 1:
        sub_02014988(param1, &v0);
        v0.x *= param5;
        v0.y *= param5;
        v0.z *= param5;
        break;
    case 2:
        v0.x = 0 * param5;
        v0.y = 3200 * param5;
        v0.z = 0 * param5;
        break;
    case 3:
        ov12_02235508(param0, param3, &v0);
        break;
    case 4:
        ov12_02235508(param0, param2, &v0);
        break;
    case 5: {
        int v1[4] = { 0, 0, 0, 0 };

        ov12_0222325C(param0, v1, 4);
        VEC_Set(&v0, v1[0], v1[1], v1[2]);
        ov12_02223C40(v1[3], param5, &v0);
    } break;
    }

    v0.x -= param6->x;
    v0.y -= param6->y;
    v0.z -= param6->z;

    sub_02014970(param1, &v0);
}

static void ov12_02223DA4(UnkStruct_ov12_0221FCDC *param0, UnkSPLStruct6 *param1, int param2, int param3, int param4, s8 param5, VecFx32 *param6)
{
    VecFx32 v0 = { 0, 0, 0 };

    switch (param4) {
    case 0:
        break;
    case 1:
        sub_020148A8(param1, &v0);
        v0.x *= param5;
        v0.y *= param5;
        v0.z *= param5;
        break;
    case 2:
        v0.x = 0 * param5;
        v0.y = 3200 * param5;
        v0.z = 0 * param5;
        break;
    case 3:
        ov12_02235508(param0, param3, &v0);
        break;
    case 4:
        ov12_02235508(param0, param2, &v0);
        break;
    case 5: {
        int v1[4] = { 0, 0, 0, 0 };

        ov12_0222325C(param0, v1, 4);
        VEC_Set(&v0, v1[0], v1[1], v1[2]);
        ov12_02223C40(v1[3], param5, &v0);
    } break;
    }

    v0.x -= param6->x;
    v0.y -= param6->y;
    v0.z -= param6->z;

    sub_02014890(param1, &v0);
}

static void ov12_02223E74(UnkStruct_ov12_0221FCDC *param0, UnkSPLStruct6 *param1, int param2, int param3, int param4, int param5)
{
    UnkStruct_02014014 *v0;
    VecFx32 v1;
    int v2, v3;
    VecFx16 v4;
    s8 v5 = 1;

    v0 = ov12_02220250(param0);
    v2 = ov12_02235254(param0, param2);
    v3 = ov12_02235254(param0, param3);

    {
        int v6[3], v7[3], v8[3], v9[3], v10[3], v11[3], v12[3];

        ov12_0222325C(param0, v6, 3);
        ov12_0222325C(param0, v7, 3);
        ov12_0222325C(param0, v9, 3);
        ov12_0222325C(param0, v8, 3);
        ov12_0222325C(param0, v11, 3);
        ov12_0222325C(param0, v12, 3);
        ov12_0222325C(param0, v10, 3);

        switch (v2) {
        case 0:
        default:
            VEC_Fx16Set(&v4, v6[0], v6[1], v6[2]);
            break;
        case 1:
            v5 = -1;
            VEC_Fx16Set(&v4, -v6[0], -v6[1], -v6[2]);
            break;
        case 2:
            if (v3 == 3) {
                VEC_Fx16Set(&v4, v7[0], v7[1], v7[2]);
            } else if (v3 == 5) {
                VEC_Fx16Set(&v4, v9[0], v9[1], v9[2]);
            } else {
                VEC_Fx16Set(&v4, v8[0], v8[1], v8[2]);
            }
            break;
        case 3:
            v5 = -1;

            if (v3 == 2) {
                VEC_Fx16Set(&v4, -v7[0], -v7[1], -v7[2]);
            } else if (v3 == 5) {
                VEC_Fx16Set(&v4, -v8[0], -v8[1], -v8[2]);
            } else {
                VEC_Fx16Set(&v4, -v11[0], -v11[1], -v11[2]);
            }
            break;
        case 4:
            if (v3 == 3) {
                VEC_Fx16Set(&v4, v11[0], v11[1], v11[2]);
            } else if (v3 == 5) {
                VEC_Fx16Set(&v4, v12[0], v12[1], v12[2]);
            } else {
                VEC_Fx16Set(&v4, v10[0], v10[1], v10[2]);
            }
            break;
        case 5:
            v5 = -1;

            if (v3 == 3) {
                VEC_Fx16Set(&v4, -v10[0], -v10[1], -v10[2]);
            } else if (v3 == 2) {
                VEC_Fx16Set(&v4, -v9[0], -v9[1], -v9[2]);
            } else {
                VEC_Fx16Set(&v4, -v12[0], -v12[1], -v12[2]);
            }
            break;
        }
    }

    v5 = ov12_0222389C(param0, param2, param3);

    {
        int v13[3] = { 0, 0, 0 };
        VecFx32 v14;

        ov12_0222325C(param0, v13, 3);
        ov12_02235508(param0, param2, &v14);

        if ((v13[0] == 0) && (v13[1] == 0) && (v13[2] == 0)) {
            v1 = v14;

            SPL_UnkInline2(param1, v14.x);
            SPL_UnkInline3(param1, v14.y);
            SPL_UnkInline4(param1, v14.z);
        } else {
            VEC_Set(&v1, v13[0], v13[1], v13[2]);

            if ((v13[0] == 0) && (v13[1] == 3200)) {
                v5 = 1;
            }

            v1.x *= v5;
            v1.y *= v5;
            v1.z = v14.z * v5;

            SPL_UnkInline2(param1, v1.x);
            SPL_UnkInline3(param1, v1.y);
            SPL_UnkInline4(param1, v1.z);
        }
    }

    {
        switch (param4) {
        case 0:
            break;
        case 1:
            ov12_02223CD4(param0, param1, param2, param3, param5, v5, &v1);
            break;
        case 2:
            ov12_02223DA4(param0, param1, param2, param3, param5, v5, &v1);
            break;
        }
    }

    SPL_UnkInline5(param1, &v4);
}

static void ov12_02224138(UnkSPLStruct6 *param0, int param1, int param2)
{
    int v0, v1;
    UnkStruct_ov12_0221FCDC *v2;

    v2 = sub_02014764();
    v0 = ov12_02220240(v2);
    v1 = ov12_02220248(v2);

    ov12_02223E74(v2, param0, v0, v1, param1, param2);
}

void ov12_02224168(UnkSPLStruct6 *param0)
{
    ov12_02224138(param0, 0, 0);
}

void ov12_02224174(UnkSPLStruct6 *param0)
{
    ov12_02224138(param0, 1, 1);
}

void ov12_02224180(UnkSPLStruct6 *param0)
{
    ov12_02224138(param0, 1, 2);
}

void ov12_0222418C(UnkSPLStruct6 *param0)
{
    ov12_02224138(param0, 1, 3);
}

void ov12_02224198(UnkSPLStruct6 *param0)
{
    ov12_02224138(param0, 1, 4);
}

void ov12_022241A4(UnkSPLStruct6 *param0)
{
    ov12_02224138(param0, 1, 5);
}

void ov12_022241B0(UnkSPLStruct6 *param0)
{
    ov12_02224138(param0, 2, 1);
}

void ov12_022241BC(UnkSPLStruct6 *param0)
{
    ov12_02224138(param0, 2, 2);
}

void ov12_022241C8(UnkSPLStruct6 *param0)
{
    ov12_02224138(param0, 2, 3);
}

void ov12_022241D4(UnkSPLStruct6 *param0)
{
    ov12_02224138(param0, 2, 4);
}

void ov12_022241E0(UnkSPLStruct6 *param0)
{
    ov12_02224138(param0, 2, 5);
}

void ov12_022241EC(UnkSPLStruct6 *param0)
{
    int v0, v1;
    UnkStruct_ov12_0221FCDC *v2;

    v2 = sub_02014764();
    v0 = ov12_02220240(v2);
    v1 = ov12_02220248(v2);

    ov12_02223E74(v2, param0, v1, v0, 0, 0);
}
