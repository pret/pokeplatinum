#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"

#include "struct_decls/struct_020067E8_decl.h"
#include "struct_decls/struct_02018340_decl.h"

#include "struct_defs/struct_02099F80.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay104/struct_ov104_022412F4.h"
#include "overlay104/struct_ov104_02241308.h"
#include "overlay104/struct_ov104_0224133C.h"
#include "overlay116/struct_ov116_0226048C.h"
#include "overlay116/struct_ov116_02260494.h"
#include "overlay116/struct_ov116_02260498.h"
#include "overlay116/struct_ov116_0226139C.h"
#include "overlay116/struct_ov116_02262A8C.h"
#include "overlay116/struct_ov116_0226501C.h"

#include "unk_02002F38.h"
#include "unk_02005474.h"
#include "unk_020067E8.h"
#include "narc.h"
#include "unk_020093B4.h"
#include "unk_0200C6E4.h"
#include "unk_0200F174.h"
#include "unk_020170BC.h"
#include "unk_02017728.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "unk_0201DBEC.h"
#include "unk_0201E3D8.h"
#include "gx_layers.h"
#include "unk_02020020.h"
#include "unk_02024220.h"
#include "unk_020329E0.h"
#include "unk_02034198.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"
#include "unk_020393C8.h"
#include "overlay004/ov4_021D0D80.h"
#include "overlay114/ov114_0225C700.h"
#include "overlay116/ov116_02260440.h"
#include "overlay116/ov116_022604C4.h"
#include "overlay116/ov116_02261870.h"
#include "overlay116/ov116_02262A44.h"
#include "overlay116/ov116_02262A8C.h"
#include "overlay116/ov116_0226432C.h"
#include "overlay116/ov116_02266FEC.h"

static void ov116_022612CC(UnkStruct_ov116_0226139C * param0);
static void ov116_02261494(UnkStruct_02018340 * param0);
static void ov116_022616CC(UnkStruct_ov116_0226139C * param0);
static BOOL ov116_02261768(int param0);
static void ov116_0226178C(UnkStruct_ov116_0226139C * param0, BOOL param1, int param2, int * param3);
static void ov116_02261794(void * param0);
static void ov116_022610FC(UnkStruct_ov116_0226139C * param0);
static void ov116_02261244(UnkStruct_ov116_0226139C * param0);
static u32 ov116_022617E4(UnkStruct_ov116_0226139C * param0);

static void ov116_022604C4 (UnkStruct_ov116_0226139C * param0)
{
    param0->unk_78 = LCRNG_GetSeed();

    ov116_022612CC(param0);
    sub_02017798(ov116_02261794, param0);
    sub_020177A4();
    sub_0201DBEC(32, 106);
    sub_0200966C(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_128K);
    sub_02009704(NNS_G2D_VRAM_TYPE_2DMAIN);
    sub_02039734();

    {
        NNSG2dPaletteData * v0;
        void * v1 = sub_020394A8(106);

        NNS_G2dGetUnpackedPaletteData(v1, &v0);
        sub_02002FBC(param0->unk_48.unk_14, v0->pRawData, 2, 14 * 16, 32);
        Heap_FreeToHeap(v1);
    }

    {
        int v2 = sub_02032E64();

        param0->unk_44 = sub_0203608C();
        ov116_022604A8(param0);

        if (ov116_022617C4(param0) == 1) {
            param0->unk_00 = ov116_02262A44(v2, &param0->unk_48);
        }

        param0->unk_04 = ov116_02262A8C(v2, param0->unk_44, &param0->unk_48);
        param0->unk_04->unk_2870 = param0->unk_14.unk_00;
        param0->unk_04->unk_286C = param0->unk_78;
    }

    {
        u32 v3;

        sub_0201E3D8();
        v3 = sub_0201E450(4);
    }

    ov116_022628B8(param0);
    ov116_022622C8(param0);
    ov116_022625A8(param0, param0->unk_04);
    ov116_02261D70(param0->unk_04);
    ov116_02261D08(param0->unk_04);
    ov116_02262724(param0->unk_04);
    ov116_02262840(param0->unk_04);
    ov116_02262034(param0, ov116_02264680(param0, param0->unk_44));

    {
        {
            int v4;
            int v5[][2] = {
                {44, 43},
                {46, 45},
                {48, 47},
                {50, 49},
                {44, 43},
                {46, 45},
                {48, 47},
                {50, 49},
                {44, 43},
                {46, 45},
                {48, 47},
                {50, 49},
                {44, 43},
                {46, 45},
                {48, 47},
                {50, 49},
            };

            for (v4 = 0; v4 < 8; v4++) {
                ov116_022618A8(&param0->unk_04->unk_B38[v4], param0->unk_48.unk_00, v5[v4][0]);
                ov116_022618B4(&param0->unk_04->unk_B38[v4], param0->unk_14.unk_00);

                sub_02017164(&param0->unk_04->unk_B38[v4].unk_88[0], &param0->unk_04->unk_B38[v4].unk_78, param0->unk_48.unk_00, v5[v4][1], 106, &param0->unk_48.unk_24);
                sub_0201727C(&param0->unk_04->unk_B38[v4].unk_00, &param0->unk_04->unk_B38[v4].unk_88[0]);
                sub_02017240(&param0->unk_04->unk_B38[v4].unk_88[0], 0);
                sub_02017348(&param0->unk_04->unk_B38[v4].unk_00, 0);

                {
                    int v6 = 5;

                    if (param0->unk_14.unk_00) {
                        v6 = 5;
                    }

                    if (v4 % 2) {
                        param0->unk_04->unk_B38[v4].unk_1E0.x += FX32_CONST(v4 * 5);
                    } else {
                        param0->unk_04->unk_B38[v4].unk_1E0.x -= FX32_CONST(v4 * 5);
                    }

                    if (v4 < 8) {
                        param0->unk_04->unk_B38[v4].unk_1E0.z += FX32_CONST((v4 + 1) * v6);
                    } else {
                        param0->unk_04->unk_B38[v4].unk_1E0.z -= FX32_CONST(v4 * 5);
                    }
                }
            }
        }

        ov116_022618A8(&param0->unk_04->unk_92C, param0->unk_48.unk_00, 71);
        ov116_022618B4(&param0->unk_04->unk_92C, param0->unk_14.unk_00);
        sub_02017348(&param0->unk_04->unk_92C.unk_00, 0);

        {
            int v7[] = {
                0x3,
                0x1,
                0x4,
                0x2,
            };

            int v8 = v7[ov116_02264680(param0, param0->unk_44)];

            ov116_022618A8(&param0->unk_04->unk_FC, param0->unk_48.unk_00, v8);
            ov116_022618B4(&param0->unk_04->unk_FC, param0->unk_14.unk_00);
            ov116_022618A8(&param0->unk_04->unk_308[0], param0->unk_48.unk_00, 51);
            ov116_022618A8(&param0->unk_04->unk_308[1], param0->unk_48.unk_00, 57);
            ov116_022618A8(&param0->unk_04->unk_308[2], param0->unk_48.unk_00, 55);
            ov116_022618B4(&param0->unk_04->unk_308[0], param0->unk_14.unk_00);
            ov116_022618B4(&param0->unk_04->unk_308[1], param0->unk_14.unk_00);
            ov116_022618B4(&param0->unk_04->unk_308[2], param0->unk_14.unk_00);

            {
                UnkStruct_ov116_0226501C * v9;
                int v10;

                v9 = &param0->unk_04->unk_308[0];

                v10 = 53;
                sub_02017164(&v9->unk_88[0], &v9->unk_78, param0->unk_48.unk_00, v10, 106, &param0->unk_48.unk_24);
                sub_0201727C(&v9->unk_00, &v9->unk_88[0]);
                sub_02017240(&v9->unk_88[0], 0);

                v10 = 52;
                sub_02017164(&v9->unk_88[1], &v9->unk_78, param0->unk_48.unk_00, v10, 106, &param0->unk_48.unk_24);
                sub_02017240(&v9->unk_88[1], 0);

                v10 = 58;
                sub_02017164(&v9->unk_88[2], &v9->unk_78, param0->unk_48.unk_00, v10, 106, &param0->unk_48.unk_24);
                sub_02017240(&v9->unk_88[2], 0);

                v9 = &param0->unk_04->unk_308[1];
                v10 = 56;
                sub_02017164(&v9->unk_88[0], &v9->unk_78, param0->unk_48.unk_00, v10, 106, &param0->unk_48.unk_24);
                sub_0201727C(&v9->unk_00, &v9->unk_88[0]);
                sub_02017240(&v9->unk_88[0], 0);

                v9 = &param0->unk_04->unk_308[2];
                v10 = 54;
                sub_02017164(&v9->unk_88[0], &v9->unk_78, param0->unk_48.unk_00, v10, 106, &param0->unk_48.unk_24);
                sub_0201727C(&v9->unk_00, &v9->unk_88[0]);
                sub_02017240(&v9->unk_88[0], 0);
            }
        }

        if (param0->unk_14.unk_00) {
            param0->unk_04->unk_FC.unk_1E0.y = (-8 * FX32_ONE);
            param0->unk_04->unk_308[0].unk_1E0.y = (-8 * FX32_ONE);
            param0->unk_04->unk_308[1].unk_1E0.y = (-8 * FX32_ONE);
            param0->unk_04->unk_308[2].unk_1E0.y = (-8 * FX32_ONE);
        }
    }

    param0->unk_7C = ov114_0225CAD4(sub_0200D9B0(param0->unk_48.unk_0C), 106);
    sub_02003070(param0->unk_48.unk_14, 2, 0 * 16, 16 * 0x20);

    if (param0->unk_80->unk_3C) {
        ov4_021D1E74(106);
    }
}

int ov116_022609B4 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov116_0226139C * v0;

    Heap_Create(3, 106, 0x65000);
    v0 = sub_0200681C(param0, sizeof(UnkStruct_ov116_0226139C), 106);
    memset(v0, 0, sizeof(UnkStruct_ov116_0226139C));

    v0->unk_80 = sub_02006840(param0);

    {
        int v1;
        int v2 = 0;

        for (v1 = 0; v1 < 4; v1++) {
            v0->unk_B4[v1] = 0xFF;

            if (sub_02032EE8(v1) != NULL) {
                v0->unk_B4[v2] = v1;
                v2++;
            }
        }
    }

    ov114_0225C700(&v0->unk_84, v0->unk_80->unk_38, v0->unk_80->unk_34, v0->unk_80->unk_3C, &v0->unk_80->unk_00);
    return 1;
}

static void ov116_02260A2C (UnkStruct_ov116_02262A8C * param0, u32 param1, u32 param2)
{
    s16 v0, v1;
    BOOL v2;

    if ((param1 == 0) && (param2 == 0)) {
        param0->unk_1FBC.unk_00 = 0;
        param0->unk_1FBC.unk_04 = 0;

        if (param0->unk_FC.unk_1F8 != 0) {
            v2 = ov116_0226452C(&param0->unk_FC, 1.0f);

            if (v2 = 1) {
                VecFx32 v3 = {0, (FX32_CONST(100)), 0};
                VecFx32 v4;
                MTX_MultVec43(&v3, &param0->unk_308[0].unk_1B0, &param0->unk_1FB0);
            }
        } else {
            param0->unk_FC.unk_1FC = 0.0f;
            param0->unk_FC.unk_200 = 0.0f;

            ov116_0226432C(&param0->unk_FC, param0->unk_1FBC.unk_00, param0->unk_1FBC.unk_04, param0->unk_1FBC.unk_00, param0->unk_1FBC.unk_04, (2.35 * 0.80), 0);
            ov116_0226432C(&param0->unk_308[0], param0->unk_1FBC.unk_00, param0->unk_1FBC.unk_04, param0->unk_1FBC.unk_00, param0->unk_1FBC.unk_04, (0.22), 0);
        }
    } else {
        f32 v5 = ((100 - (param0->unk_1FB0.y >> FX32_SHIFT)) / 40);

        if ((param0->unk_1FB0.y >> FX32_SHIFT) >= 95) {
            v5 = 0.1f;
        }

        if (param0->unk_1FBC.unk_00 == 0) {
            param0->unk_1FBC.unk_00 = param1;
            param0->unk_1FBC.unk_04 = param2;
        }

        v2 = ov116_0226432C(&param0->unk_FC, param1, param2, param0->unk_1FBC.unk_00, param0->unk_1FBC.unk_04, (2.50 * 0.80), 1);

        if (v2 = 1) {
            VecFx32 v6 = {0, (FX32_CONST(100)), 0};
            VecFx32 v7;
            MTX_MultVec43(&v6, &param0->unk_308[0].unk_1B0, &param0->unk_1FB0);
        }

        if (sub_020057D4(1394) == 0) {
            sub_02005748(1394);
        }

        param0->unk_1FBC.unk_00 = param1;
        param0->unk_1FBC.unk_04 = param2;
    }
}

static BOOL ov116_02260B6C (UnkStruct_ov116_02262A8C * param0)
{
    int v0;
    int v1;
    int v2, v3;
    s16 v4[][2] = {
        {0, 0},
        {0, -40},
        {0, -30},
        {0, -20},
        {0, -10},
        {0, 0},
        {0, 10},
        {0, 20},
        {0, 30},
        {0, 40},
        {0, 00},
        {0, 0},
        {0, 0},
        {0, -40},
        {0, -30},
        {0, -20},
        {0, -10},
        {0, 0},
        {0, 10},
        {0, 20},
        {0, 30},
        {0, 40},
        {0, 00},
        {0, 0},
        {0, 0},
        {10, 0},
        {20, 0},
        {30, 0},
        {40, 0},
        {50, 0},
        {60, 0},
        {70, 0},
        {80, 0},
        {90, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {10, 0},
        {20, 0},
        {30, 0},
        {40, 0},
        {50, 0},
        {60, 0},
        {70, 0},
        {80, 0},
        {90, 0},
        {0, 0},
        {0, 0},
    };

    v0 = sub_0200D3E0(param0->unk_D8);
    v1 = (param0->unk_0C * 12) + v0;
    v2 = v4[v1][0];
    v3 = v4[v1][1];

    if ((v2 == 0) && (v3 == 0)) {
        ov116_02260A2C(param0, 0, 0);
    } else {
        ov116_02260A2C(param0, 128 + v2, 128 + v3);

        if (v2 != 0) {
            ov116_0226493C(param0, 88 + v2, 128 + v3);
        } else {
            ov116_0226493C(param0, 128 + v2, 128 + v3);
        }
    }

    if (v0 == 0) {
        if (param0->unk_08 != v0) {
            param0->unk_0C++;
        }
    }

    param0->unk_08 = v0;

    if (param0->unk_0C == 2) {
        if (sub_0200D37C(param0->unk_D8) != 2) {
            sub_0200D4C4(param0->unk_D8, 128, 100);
            sub_0200D370(param0->unk_D8, 2);

            ov116_02266FEC(&param0->unk_FC.unk_190);
            ov116_02266FEC(&param0->unk_FC.unk_1A0);
            ov116_0226432C(&param0->unk_FC, 0, 0, +5, +5, 0.80, 0);
            ov116_0226432C(&param0->unk_FC, 0, 0, -5, -5, 0.80, 0);
        }
    }

    if ((param0->unk_0C == 3) && (v0 == 11)) {
        param0->unk_08 = 0;
        param0->unk_0C = 0;

        sub_0200D3F4(param0->unk_D8, 0);

        ov116_02266FEC(&param0->unk_FC.unk_190);
        ov116_02266FEC(&param0->unk_FC.unk_1A0);
        ov116_0226432C(&param0->unk_FC, 0, 0, +5, +5, 0.80, 0);
        ov116_0226432C(&param0->unk_FC, 0, 0, -5, -5, 0.80, 0);

        return 1;
    }

    sub_0200D33C(param0->unk_D8);

    return 0;
}

int ov116_02260CF4 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov116_0226139C * v0 = sub_0200682C(param0);
    BOOL v1 = 0;
    u32 v2;

    v2 = ov116_022617E4(v0);

    switch (v2) {
    case 1:
        return 0;
    case 2:
        return 1;
    case 0:
    default:
        break;
    }

    switch (*param1) {
    case 0:
        v1 = 1;
        v0->unk_94 = ov114_0225C820(&v0->unk_84, 106);
        ov116_0226178C(v0, v1, 1, param1);
        break;
    case 1:
        v1 = ov114_0225C8BC(v0->unk_94);
        ov116_0226178C(v0, v1, 2, param1);
        break;
    case 2:
        v1 = 1;
        v0->unk_14.unk_00 = ov114_0225C8CC(v0->unk_94);
        ov114_0225C838(v0->unk_94);
        v0->unk_94 = NULL;
        ov116_022604C4(v0);
        ov116_0226178C(v0, v1, 3, param1);
        break;
    case 3:
        v1 = ov116_02261768(27);
        ov116_022620AC(v0, v0->unk_04);
        ov116_0226178C(v0, v1, 4, param1);
        break;
    case 4:
        v1 = sub_0200F2AC();
        ov116_0226178C(v0, v1, 5, param1);
        break;
    case 5:
        v1 = 1;

        if (v1 == 0) {
            break;
        }

        ov116_02261F70(v0->unk_04);
        ov116_02265470(v0->unk_04);
        ov116_02265A1C(v0->unk_04);
        ov116_0226178C(v0, v1, 6, param1);
        break;
    case 6:
        v1 = ov116_02260B6C(v0->unk_04);

        if (v1) {
            if (ov116_022617C4(v0) == 1) {
                v0->unk_14.unk_04 = v0->unk_78;
                sub_020359DC(22, &v0->unk_14, sizeof(UnkStruct_ov116_0226048C));
            }
        }

        ov116_0226178C(v0, v1, 7, param1);
        break;
    case 7:
        v1 = v0->unk_08;
        ov116_0226178C(v0, v1, 8, param1);
        break;
    case 8:
        v1 = 1;
        ov114_0225CB8C(v0->unk_7C);
        ov116_0226178C(v0, v1, 9, param1);
        break;
    case 9:
        v1 = 1;
        v1 = ov114_0225CBE0(v0->unk_7C);

        if (v1) {
            ov116_02262264(v0->unk_04);
            ov116_02262004(v0->unk_04);
        }

        ov116_0226178C(v0, v1, 10, param1);
        break;
    case 10:
        v1 = v0->unk_0C;

        if (v0->unk_0C) {
            if (v0->unk_04->unk_279C.unk_04 < ((30 * 40) - 0)) {
                v1 = 0;
            }
        }

        if (v1 == 0) {
            if (ov116_022617C4(v0) == 1) {
                if (ov116_02262A74(v0->unk_00) == 0) {
                    sub_020057A4(1393, 0);
                    sub_020359DC(23, NULL, 0);
                }
            }
            ov116_02263B30(v0->unk_04);
        }
        ov116_0226178C(v0, v1, 11, param1);
        break;
    case 11:
        v1 = 1;
        sub_020057A4(1395, 0);
        sub_020057A4(1393, 0);
        ov114_0225CBB0(v0->unk_7C);
        ov116_0226178C(v0, v1, 12, param1);
        break;
    case 12:
        v1 = ov114_0225CBE0(v0->unk_7C);
        ov116_0226178C(v0, v1, 13, param1);
        break;
    case 13:
        v1 = 1;
        v0->unk_1C.unk_00 = (v0->unk_04->unk_279C.unk_10 / 10) * 100;

        if (v0->unk_1C.unk_00 >= 100000) {
            v0->unk_1C.unk_00 = 100000;
        }

        if (v0->unk_04->unk_279C.unk_B4 == 0) {
            v0->unk_1C.unk_00 = 1;
        }

        sub_020359DC(25, &v0->unk_1C, sizeof(UnkStruct_ov116_02260494));
        ov116_0226178C(v0, v1, 14, param1);
        break;
    case 14:
        v1 = 0;
        {
            int v3;
            int v4 = 0;

            for (v3 = 0; v3 < 4; v3++) {
                if (v0->unk_24.unk_00[v3].unk_00 != 0) {
                    v4++;
                }
            }

            if (v4 == v0->unk_04->unk_04) {
                v1 = 1;
            }
        }
        ov116_0226178C(v0, v1, 15, param1);
        break;
    case 15:
        v1 = ov116_02261768(26);
        ov116_0226178C(v0, v1, 16, param1);
        break;
    case 16:
        v1 = sub_0200F2AC();

        if (v1) {
            ov116_022610FC(v0);
        }

        ov116_0226178C(v0, v1, 17, param1);
        break;
    case 17:
        v1 = 1;
        {
            int v5;
            int v6;

            for (v5 = 0; v5 < 4; v5++) {
                v6 = ov116_02264680(v0, v5);

                if (v6 == 0xFF) {
                    continue;
                }

                v0->unk_98.unk_00[v6] = v0->unk_24.unk_00[v5].unk_00;

                if (v0->unk_98.unk_00[v6] <= 1) {
                    v0->unk_98.unk_00[v6] = 0;
                }
            }

            ov114_0225C9A8(&v0->unk_98, v0->unk_84.unk_08);
        }
        v0->unk_B0 = ov114_0225C8EC(&v0->unk_84, &v0->unk_98, 106);
        ov116_0226178C(v0, v1, 18, param1);
        break;
    case 18:
        v1 = ov114_0225C9A0(v0->unk_B0);

        if (v1) {
            BOOL v7 = ov114_0225C9A4(v0->unk_B0);

            ov114_0225C904(v0->unk_B0);
            v0->unk_B0 = NULL;

            if (v7) {
                v0->unk_C4 = 1;
                ov116_02261244(v0);
                ov116_0226178C(v0, v1, 0, param1);

                if (v0->unk_80->unk_3C) {
                    ov4_021D1F18();
                }
                break;
            }
        }
        ov116_0226178C(v0, v1, 19, param1);
        break;
    case 19:
        v1 = 1;
        sub_020364F0(27);

        if (v0->unk_80->unk_3C) {
            ov4_021D1F18();
        }

        ov116_0226178C(v0, v1, 20, param1);
        break;
    case 20:
    default:
        v1 = sub_02036540(27);
        return (v1 == 1) ? 1 : 0;
        break;
    }

    if ((*param1 >= 3) && (*param1 < 16)) {
        ov116_02261F08(v0->unk_04);
        ov116_02261940(v0);
    }

    return 0;
}

static void ov116_022610FC (UnkStruct_ov116_0226139C * param0)
{
    sub_02017798(NULL, NULL);
    sub_020177A4();
    sub_0201DC3C();

    {
        u32 v0;
        v0 = sub_0201E530();
    }

    LCRNG_SetSeed(param0->unk_78);

    ov116_02261F3C(param0->unk_04);
    ov116_02261DF0(param0->unk_04);
    ov116_02261E40(param0->unk_04);
    ov116_0226281C(param0->unk_04);
    ov116_022628AC(param0->unk_04);
    ov116_0226192C(&param0->unk_04->unk_FC);
    ov116_0226192C(&param0->unk_04->unk_308[0]);
    ov116_0226192C(&param0->unk_04->unk_308[1]);
    ov116_0226192C(&param0->unk_04->unk_308[2]);
    ov116_0226192C(&param0->unk_04->unk_92C);

    sub_020171A0(&param0->unk_04->unk_308[0].unk_88[0], &param0->unk_48.unk_24);
    sub_020171A0(&param0->unk_04->unk_308[0].unk_88[1], &param0->unk_48.unk_24);
    sub_020171A0(&param0->unk_04->unk_308[0].unk_88[2], &param0->unk_48.unk_24);
    sub_020171A0(&param0->unk_04->unk_308[1].unk_88[0], &param0->unk_48.unk_24);
    sub_020171A0(&param0->unk_04->unk_308[2].unk_88[0], &param0->unk_48.unk_24);

    {
        int v1;

        for (v1 = 0; v1 < 8; v1++) {
            ov116_0226192C(&param0->unk_04->unk_B38[v1]);
            sub_020171A0(&param0->unk_04->unk_B38[v1].unk_88[0], &param0->unk_48.unk_24);
            sub_020171A0(&param0->unk_04->unk_B38[v1].unk_88[1], &param0->unk_48.unk_24);
        }
    }

    ov114_0225CB38(param0->unk_7C);
    ov116_0226139C(param0);

    if (ov116_022617C4(param0) == 1) {
        ov116_02262A6C(param0->unk_00);
    }

    ov116_02262C64(param0->unk_04);

    param0->unk_00 = NULL;
    param0->unk_04 = NULL;
}

static void ov116_02261244 (UnkStruct_ov116_0226139C * param0)
{
    param0->unk_0C = 0;
    param0->unk_08 = 0;
    param0->unk_10 = 0;

    memset(&param0->unk_1C, 0, sizeof(UnkStruct_ov116_02260494));
    memset(&param0->unk_24, 0, sizeof(UnkStruct_ov116_02260498));
}

int ov116_0226126C (UnkStruct_020067E8 * param0, int * param1)
{
    switch (*param1) {
    case 0:
    {
        u32 v0;
        UnkStruct_ov116_0226139C * v1 = sub_0200682C(param0);

        v0 = ov116_022617E4(v1);

        sub_02006830(param0);
        Heap_Destroy(106);
        sub_020388F4(0, 1);

        if (v0 != 0) {
            return 1;
        }

        sub_020364F0(999);
        (*param1)++;
    }
    break;
    default:
        if ((sub_02036540(999) == 1) || (sub_02035E18() < sub_02032E64())) {
            return 1;
        }
        break;
    }

    return 0;
}

static void ov116_022612CC (UnkStruct_ov116_0226139C * param0)
{
    param0->unk_48.unk_00 = NARC_ctor(NARC_INDEX_ARC__MANENE, 106);
    param0->unk_48.unk_04 = NARC_ctor(NARC_INDEX_GRAPHIC__BUCKET, 106);
    param0->unk_48.unk_10 = sub_02018340(106);
    param0->unk_48.unk_14 = sub_02002F38(106);
    param0->unk_48.unk_18 = sub_02024220(106, 0, 1, 0, 4, NULL);
    param0->unk_48.unk_1C = sub_020203AC(106);

    ov116_02261C88(param0);

    sub_02003858(param0->unk_48.unk_14, 1);
    sub_02002F70(param0->unk_48.unk_14, 0, 0x200, 106);
    sub_02002F70(param0->unk_48.unk_14, 1, 0x200, 106);
    sub_02002F70(param0->unk_48.unk_14, 2, 0x200, 106);
    sub_02002F70(param0->unk_48.unk_14, 3, 0x200, 106);

    ov116_02261494(param0->unk_48.unk_10);
    ov116_022616CC(param0);

    G3X_AlphaBlend(1);

    {
        static const GXRgb v0[8] = {
            GX_RGB(0, 0, 0),
            GX_RGB(4, 4, 4),
            GX_RGB(4, 4, 4),
            GX_RGB(4, 4, 4),
            GX_RGB(4, 4, 4),
            GX_RGB(4, 4, 4),
            GX_RGB(4, 4, 4),
            GX_RGB(4, 4, 4),
        };

        G3X_EdgeMarking(1);
        G3X_SetEdgeColorTable(v0);
    }

    Heap_FndInitAllocatorForExpHeap(&param0->unk_48.unk_24, 106, 32);
}

void ov116_0226139C (UnkStruct_ov116_0226139C * param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 0);
    sub_02019044(param0->unk_48.unk_10, 0);
    sub_02019044(param0->unk_48.unk_10, 1);
    sub_02019044(param0->unk_48.unk_10, 2);
    sub_02019044(param0->unk_48.unk_10, 3);
    sub_02019044(param0->unk_48.unk_10, 4);
    sub_02019044(param0->unk_48.unk_10, 5);
    sub_02019044(param0->unk_48.unk_10, 6);
    sub_02019044(param0->unk_48.unk_10, 7);
    Heap_FreeToHeap(param0->unk_48.unk_10);
    sub_02002FA0(param0->unk_48.unk_14, 0);
    sub_02002FA0(param0->unk_48.unk_14, 1);
    sub_02002FA0(param0->unk_48.unk_14, 2);
    sub_02002FA0(param0->unk_48.unk_14, 3);
    sub_02002F54(param0->unk_48.unk_14);
    NARC_dtor(param0->unk_48.unk_00);
    NARC_dtor(param0->unk_48.unk_04);
    sub_020242C4(param0->unk_48.unk_18);
    sub_020203B8(param0->unk_48.unk_1C);
    sub_0200D0B0(param0->unk_48.unk_08, param0->unk_48.unk_0C);
    sub_0200C8D4(param0->unk_48.unk_08);

    Unk_021BF67C.unk_65 = 0;

    GXLayers_SwapDisplay();
    G3X_AlphaBlend(0);
}

static void ov116_02261494 (UnkStruct_02018340 * param0)
{
    GXLayers_DisableEngineALayers();
    {
        UnkStruct_ov84_0223BA5C v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_3D,
        };
        sub_02018368(&v0);
    }
    {
        UnkStruct_02099F80 v1 = {
            GX_VRAM_BG_128_A,
            GX_VRAM_BGEXTPLTT_NONE,
            GX_VRAM_SUB_BG_128_C,
            GX_VRAM_SUB_BGEXTPLTT_NONE,
            GX_VRAM_OBJ_64_E,
            GX_VRAM_OBJEXTPLTT_NONE,
            GX_VRAM_SUB_OBJ_16_I,
            GX_VRAM_SUB_OBJEXTPLTT_NONE,
            GX_VRAM_TEX_0_B,
            GX_VRAM_TEXPLTT_01_FG
        };

        GXLayers_SetBanks(&v1);
        MI_CpuClear32((void *)HW_BG_VRAM, HW_BG_VRAM_SIZE);
        MI_CpuClear32((void *)HW_DB_BG_VRAM, HW_DB_BG_VRAM_SIZE);
        MI_CpuClear32((void *)HW_OBJ_VRAM, HW_OBJ_VRAM_SIZE);
        MI_CpuClear32((void *)HW_DB_OBJ_VRAM, HW_DB_OBJ_VRAM_SIZE);
    }
    {
        UnkStruct_ov97_0222DB78 v2[] = {
            {
                0x0,
                0x0,
                0x800,
                0x0,
                0x1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x2000,
                GX_BG_CHARBASE_0x10000,
                GX_BG_EXTPLTT_01,
                0x3,
                0x0,
                0x0,
                0x0
            },
            {
                0x0,
                0x0,
                0x1000,
                0x0,
                0x3,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x2800,
                GX_BG_CHARBASE_0x14000,
                GX_BG_EXTPLTT_01,
                0x2,
                0x0,
                0x0,
                0x0
            },
            {
                0x0,
                0x0,
                0x1000,
                0x0,
                0x3,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x3800,
                GX_BG_CHARBASE_0x14000,
                GX_BG_EXTPLTT_01,
                0x2,
                0x0,
                0x0,
                0x0
            },
            {
                0x0,
                0x0,
                0x800,
                0x0,
                0x1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x4800,
                GX_BG_CHARBASE_0x10000,
                GX_BG_EXTPLTT_01,
                0x3,
                0x0,
                0x0,
                0x0
            },
        };

        sub_02019690(1, 32, 0, 106);
        sub_02019690(2, 32, 0, 106);
        sub_02019690(3, 32, 0, 106);
        sub_020183C4(param0, 1, &v2[1], 0);
        sub_020183C4(param0, 2, &v2[2], 0);
        sub_020183C4(param0, 3, &v2[3], 0);
        sub_02019EBC(param0, 0);
        sub_02019EBC(param0, 1);
        sub_02019EBC(param0, 2);
        sub_02019EBC(param0, 3);
    }
    {
        UnkStruct_ov97_0222DB78 v3[] = {
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0xb000,
                GX_BG_CHARBASE_0x00000,
                GX_BG_EXTPLTT_01,
                3,
                0,
                0,
                0
            },
            {
                0,
                0,
                0x1000,
                0,
                3,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0xb800,
                GX_BG_CHARBASE_0x04000,
                GX_BG_EXTPLTT_01,
                1,
                0,
                0,
                0
            },
            {
                0,
                0,
                0x1000,
                0,
                3,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0xc800,
                GX_BG_CHARBASE_0x04000,
                GX_BG_EXTPLTT_01,
                1,
                0,
                0,
                0
            },
            {
                0,
                0,
                0x1000,
                0,
                2,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0xd800,
                GX_BG_CHARBASE_0x04000,
                GX_BG_EXTPLTT_01,
                0,
                0,
                0,
                0
            },
        };

        sub_02019690(4, 32, 0, 106);
        sub_02019690(5, 32, 0, 106);
        sub_02019690(6, 32, 0, 106);
        sub_02019690(7, 32, 0, 106);
        sub_020183C4(param0, 4, &v3[0], 0);
        sub_020183C4(param0, 5, &v3[1], 0);
        sub_020183C4(param0, 6, &v3[2], 0);
        sub_020183C4(param0, 7, &v3[3], 0);
        sub_02019EBC(param0, 4);
        sub_02019EBC(param0, 5);
        sub_02019EBC(param0, 6);
        sub_02019EBC(param0, 7);
    }

    sub_02019690(4, 32, 0, 106);
    sub_02019690(5, 32, 0, 106);
    sub_02019690(6, 32, 0, 106);
    sub_02019690(7, 32, 0, 106);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);

    Unk_021BF67C.unk_65 = 1;

    GXLayers_SwapDisplay();
    G2_SetBlendAlpha(0, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ, 7, 10);
    G2S_SetBlendAlpha(0, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_OBJ, 7, 10);
}

static void ov116_022616CC (UnkStruct_ov116_0226139C * param0)
{
    param0->unk_48.unk_08 = sub_0200C6E4(106);
    {
        const UnkStruct_ov104_0224133C v0 = {
            0,
            128,
            0,
            32,
            0,
            128,
            0,
            32,
        };

        const UnkStruct_ov104_022412F4 v1 = {
            64 + 64,
            1024 * 0x40,
            512 * 0x20,
            GX_OBJVRAMMODE_CHAR_1D_128K,
            GX_OBJVRAMMODE_CHAR_1D_32K
        };

        sub_0200C73C(param0->unk_48.unk_08, &v0, &v1, 16 + 16);
    }
    {
        BOOL v2;
        const UnkStruct_ov104_02241308 v3 = {
            64 + 64,
            16 + 16,
            128,
            128,
            16,
            16,
        };

        param0->unk_48.unk_0C = sub_0200C704(param0->unk_48.unk_08);

        v2 = sub_0200C7C0(param0->unk_48.unk_08, param0->unk_48.unk_0C, 255);
        GF_ASSERT(v2);

        v2 = sub_0200CB30(param0->unk_48.unk_08, param0->unk_48.unk_0C, &v3);
        GF_ASSERT(v2);
    }
    sub_0200964C(sub_0200C738(param0->unk_48.unk_08), 0, (192 + 64) << FX32_SHIFT);
}

static BOOL ov116_02261768 (int param0)
{
    sub_0200F174(0, param0, param0, 0, 6, 1, 106);
    return 1;
}

static void ov116_0226178C (UnkStruct_ov116_0226139C * param0, BOOL param1, int param2, int * param3)
{
    if (param1) {
        *param3 = param2;
    }
}

static void ov116_02261794 (void * param0)
{
    UnkStruct_ov116_0226139C * v0 = param0;

    sub_0201DCAC();
    sub_0200C800();
    sub_02003694(v0->unk_48.unk_14);
    sub_0201C2B8(v0->unk_48.unk_10);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

BOOL ov116_022617C4 (UnkStruct_ov116_0226139C * param0)
{
    return (param0->unk_44 == 0) ? 1 : 0;
}

void ov116_022617D4 (UnkStruct_ov116_0226139C * param0)
{
    param0->unk_08 = 1;
}

void ov116_022617DC (UnkStruct_ov116_0226139C * param0)
{
    param0->unk_0C = 1;
}

static u32 ov116_022617E4 (UnkStruct_ov116_0226139C * param0)
{
    if (ov114_0225CA54(&param0->unk_84) == 1) {
        if (param0->unk_48.unk_2C.unk_00 == 0) {
            if (sub_0200F2AC() == 1) {
                sub_0200F2C0();
            }

            sub_0200F370(0x0);
            param0->unk_48.unk_2C.unk_00 = 1;

            return 1;
        } else {
            if (ov114_0225CA98(&param0->unk_84) == 0) {
                return 1;
            }

            if (param0->unk_04 != NULL) {
                ov116_02262264(param0->unk_04);
                ov116_02262004(param0->unk_04);
                ov116_022610FC(param0);
            }

            if (param0->unk_B0 != NULL) {
                ov114_0225C904(param0->unk_B0);
                param0->unk_B0 = NULL;
            }

            if (param0->unk_94 != NULL) {
                ov114_0225C838(param0->unk_94);
                param0->unk_94 = NULL;
            }

            return 2;
        }
    }

    return 0;
}
