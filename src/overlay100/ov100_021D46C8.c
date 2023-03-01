#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "string/strbuf.h"

#include "struct_defs/struct_020985E4.h"
#include "overlay100/struct_ov100_021D46C8.h"
#include "overlay100/struct_ov100_021D4890.h"
#include "overlay100/struct_ov100_021D49B4.h"
#include "overlay100/struct_ov100_021D4DD8.h"
#include "overlay115/struct_ov115_0226527C.h"

#include "unk_02002F38.h"
#include "unk_0200AC5C.h"
#include "unk_0200B358.h"
#include "unk_0200DA60.h"
#include "unk_020170BC.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "gx_layers.h"
#include "unk_02020020.h"
#include "string/strbuf.h"
#include "unk_02025E68.h"
#include "unk_020279FC.h"
#include "overlay100/ov100_021D44C0.h"
#include "overlay100/ov100_021D46C8.h"

int ov100_021D46C8 (UnkStruct_ov100_021D46C8 * param0, UnkStruct_020985E4 * param1, int param2)
{
    int v0;
    UnkStruct_0200B144 * v1;
    Strbuf * v2;
    Strbuf * v3 = PLString_Init(511, 111);
    u8 v4 = 0;

    v1 = param0->unk_2C;
    v2 = sub_0200B1EC(v1, param2);

    if (param2 == 22) {
        Strbuf * v5 = sub_02025F04(param1->unk_08, 111);
        UnkStruct_0200B358 * v6 = sub_0200B358(111);

        sub_0200B48C(v6, 0, v5, 0, 1, GAME_LANGUAGE);
        sub_0200C388(v6, v3, v2);
        PLString_Free(v5);
        sub_0200B3F0(v6);
    } else {
        PLString_Copy(v3, v2);
    }

    v4 = sub_02027AC0(param1->unk_04);
    sub_0201ADA4(&param0->unk_30, 0xFF);

    v0 = sub_0201D738(&param0->unk_30, 1, v3, 0, 0, v4, NULL);
    sub_0201A954(&param0->unk_30);

    sub_0200E060(&param0->unk_30, 0, 500, 15);
    PLString_Free(v2);
    PLString_Free(v3);

    param0->unk_40 = v0;

    return v0;
}

void ov100_021D4788 (UnkStruct_ov100_021D46C8 * param0)
{
    sub_0200E084(&param0->unk_30, 1);
    sub_0201ACF4(&param0->unk_30);
}

void ov100_021D47A0 (UnkStruct_ov100_021D46C8 * param0)
{
    VecFx32 v0 = {0, -FX32_ONE, -FX32_ONE};
    VecFx32 v1 = {-2043, -3548, 110};

    VEC_Normalize(&v0, &v0);
    NNS_G3dGlbLightVector(0, v0.x, v0.y, v0.z);
    NNS_G3dGlbLightColor(0, GX_RGB(31, 31, 31));

    VEC_Normalize(&v1, &v1);
    NNS_G3dGlbLightVector(1, v1.x, v1.y, v1.z);
    NNS_G3dGlbLightColor(1, GX_RGB(23, 23, 25));

    NNS_G3dGlbMaterialColorDiffAmb(GX_RGB(16, 16, 16), GX_RGB(14, 14, 14), 0);
    NNS_G3dGlbMaterialColorSpecEmi(GX_RGB(20, 20, 20), GX_RGB(16, 16, 16), 0);
}

void ov100_021D4844 (UnkStruct_ov100_021D46C8 * param0)
{
    UnkStruct_ov115_0226527C v0 = sub_02020A94(param0->unk_18);
    VecFx32 v1 = sub_02020ABC(param0->unk_18);

    sub_02020ADC(&v1, param0->unk_18);
    sub_020209D4(&v0, param0->unk_18);
}

void ov100_021D4890 (UnkStruct_ov100_021D4890 * param0)
{
    UnkStruct_ov115_0226527C v0;

    param0->unk_24[0] = param0->unk_08;
    param0->unk_24[1] = ((65535 / 360) * param0->unk_0C / param0->unk_08);
    param0->unk_24[2] = ((65535 / 360) * param0->unk_10 / param0->unk_08);
    param0->unk_24[3] = ((65535 / 360) * param0->unk_14 / param0->unk_08);

    param0->unk_38[1] = param0->unk_18 / param0->unk_08;
    param0->unk_38[2] = param0->unk_1C / param0->unk_08;
    param0->unk_38[3] = param0->unk_20 / param0->unk_08;

    v0 = sub_02020A94(param0->unk_00);

    param0->unk_4C.unk_00 = v0.unk_00 + ((65535 / 360) * param0->unk_0C);
    param0->unk_4C.unk_02 = v0.unk_02 + ((65535 / 360) * param0->unk_10);
    param0->unk_4C.unk_04 = v0.unk_04 + ((65535 / 360) * param0->unk_14);
}

BOOL ov100_021D4920 (UnkStruct_ov100_021D4890 * param0)
{
    BOOL v0 = 0;
    UnkStruct_ov115_0226527C v1 = sub_02020A94(param0->unk_00);

    if (param0->unk_24[0] == 0) {
        return 1;
    }

    if ((--param0->unk_24[0]) == 0) {
        v1.unk_00 = param0->unk_4C.unk_00;
        v1.unk_02 = param0->unk_4C.unk_02;
        v1.unk_04 = param0->unk_4C.unk_04;
        v0 = 1;
    } else {
        v1.unk_00 += (param0->unk_24[1]);
        v1.unk_02 += (param0->unk_24[2]);
        v1.unk_04 += (param0->unk_24[3]);

        param0->unk_04->x += param0->unk_38[1];
        param0->unk_04->y += param0->unk_38[2];
        param0->unk_04->z += param0->unk_38[3];
    }

    sub_020209D4(&v1, param0->unk_00);

    return v0;
}

void ov100_021D49B4 (UnkStruct_ov100_021D49B4 * param0)
{
    if (param0->unk_174 == 0) {
        return;
    }

    if (param0->unk_160) {
        BOOL v0 = 0;

        if (param0->unk_164) {
            if (param0->unk_158 == 0) {
                sub_020171CC(&param0->unk_88[0], param0->unk_154);
            } else {
                ov100_021D45A4(param0);
                ov100_021D4510(param0);
            }
        } else {
            if (param0->unk_170) {
                int v1;

                for (v1 = 0; v1 < 4; v1++) {
                    v0 = sub_02017204(&param0->unk_88[v1], param0->unk_154);
                }
            } else {
                v0 = sub_02017204(&param0->unk_88[0], param0->unk_154);
            }
        }

        if (param0->unk_168) {
            sub_020171CC(&param0->unk_88[1], param0->unk_154);
        }

        if (param0->unk_16C) {
            sub_02017204(&param0->unk_88[1], param0->unk_154);
        }

        if (v0 == 1) {
            param0->unk_160 = 0;
        }
    }

    NNS_G3dGePushMtx();
    sub_02017294(&param0->unk_00);
    NNS_G3dGePopMtx(1);
}

void ov100_021D4A84 (UnkStruct_ov100_021D49B4 * param0)
{
    sub_02017110(&param0->unk_78);
}

void ov100_021D4A90 (int param0, UnkStruct_ov100_021D49B4 * param1, NNSFndAllocator * param2)
{
    sub_020171A0(&param1->unk_88[param0], param2);
}

void ov100_021D4AA4 (UnkStruct_ov100_021D49B4 * param0, NNSFndAllocator * param1, int param2)
{
    int v0;

    ov100_021D4A84(param0);

    for (v0 = 0; v0 < param2; v0++) {
        ov100_021D4A90(v0, param0, param1);
    }
}

void ov100_021D4AC8 (UnkStruct_ov100_021D49B4 * param0, int param1, NARC * param2)
{
    sub_020170D8(&param0->unk_78, param2, param1, 111);
    sub_02017258(&param0->unk_00, &param0->unk_78);
    sub_02017350(&param0->unk_00, 0, 0, 0);
    sub_0201736C(&param0->unk_00, FX32_CONST(1.00f), FX32_CONST(1.00f), FX32_CONST(1.00f));
    sub_02017348(&param0->unk_00, 1);

    param0->unk_174 = 1;
}

void ov100_021D4B10 (UnkStruct_ov100_021D49B4 * param0, UnkStruct_ov100_021D49B4 * param1, int param2, NARC * param3)
{
    sub_02017258(&param1->unk_00, &param0->unk_78);
    sub_02017350(&param1->unk_00, 0, 0, 0);
    sub_0201736C(&param1->unk_00, FX32_CONST(1.00f), FX32_CONST(1.00f), FX32_CONST(1.00f));
    sub_02017348(&param1->unk_00, 1);

    param1->unk_174 = 1;
}

void ov100_021D4B4C (int param0, UnkStruct_ov100_021D49B4 * param1, int param2, NARC * param3, NNSFndAllocator * param4)
{
    sub_02017164(&param1->unk_88[param0], &param1->unk_78, param3, param2, 111, param4);
    sub_02017240(&param1->unk_88[param0], 0);
    sub_0201727C(&param1->unk_00, &param1->unk_88[param0]);

    param1->unk_154 = FX32_CONST(1);
    param1->unk_180 = 0xFF;
    param1->unk_178 = 0xFF;
}

void ov100_021D4BA0 (int param0, UnkStruct_ov100_021D49B4 * param1, UnkStruct_ov100_021D49B4 * param2, int param3, NARC * param4, NNSFndAllocator * param5)
{
    sub_02017164(&param2->unk_88[param0], &param1->unk_78, param4, param3, 111, param5);
    sub_02017240(&param2->unk_88[param0], 0);
    sub_0201727C(&param2->unk_00, &param2->unk_88[param0]);

    param2->unk_154 = FX32_CONST(1);
    param2->unk_180 = 0xFF;
    param2->unk_178 = 0xFF;
}

void ov100_021D4BF0 (UnkStruct_ov100_021D46C8 * param0)
{
    if (param0->unk_C0 == 0) {
        if (param0->unk_C1 < 31) {
            param0->unk_C1++;
        } else {
            param0->unk_C0 ^= 1;
        }
    } else {
        if (param0->unk_C1 > 0) {
            param0->unk_C1--;
        } else {
            param0->unk_C0 ^= 1;
        }
    }

    sub_020039B0(param0->unk_10, 1, 0, 4, param0->unk_C1 / 8, 0xCCCC);
    sub_020039B0(param0->unk_10, 1, 4, 6, param0->unk_C1 / 8, 0xCCCC);
}

void ov100_021D4C94 (UnkStruct_ov100_021D46C8 * param0, int param1)
{
    int v0;
    const u8 v1[] = {
        4, 4, 4,
    };
    const v2[][2] = {
        {0, 31},
        {0, 31},
        {0, 31},
    };
    const u8 v3[][2] = {
        {0, 32},
        {0, 32},
        {0, 32},
    };
    const int v4[] = {
        0x10, 0x10, 0x10,
    };

    v0 = param1;

    if (param1 >= NELEMS(v4)) {
        v0 = NELEMS(v4) - 1;
    }

    if (param0->unk_C0 == 2) {
        if (param0->unk_C2 < ((v0 + 1) * 2)) {
            param0->unk_C2++;
        } else {
            param0->unk_C0 = 0;
            param0->unk_C2 = 0;
        }

        return;
    }

    if (param0->unk_C0 == 0) {
        if (param0->unk_C1 < v2[v0][1]) {
            param0->unk_C1++;
        } else {
            param0->unk_C0++;
        }
    } else {
        if (param0->unk_C1 > v2[v0][0]) {
            param0->unk_C1--;
        } else {
            param0->unk_C0++;
        }
    }

    sub_020039B0(param0->unk_10, 1, v3[v0][0], v3[v0][1], param0->unk_C1 / v1[v0], v4[v0]);
}

void ov100_021D4DC8 (int param0)
{
    Unk_021BF67C.unk_65 = param0;
    GXLayers_SwapDisplay();
}

void ov100_021D4DD8 (UnkStruct_ov100_021D4DD8 * param0, int param1)
{
    param0->unk_0C.unk_50.unk_03 = param1;
    G2_SetBlendBrightness((GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), param0->unk_0C.unk_50.unk_03);
    G2S_SetBlendBrightness((GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), param0->unk_0C.unk_50.unk_03);
}
