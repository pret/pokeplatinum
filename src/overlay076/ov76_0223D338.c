#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02012CE0_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_0202CD88_decl.h"
#include "pokemon.h"

#include "overlay076/const_ov76_0223EF3C.h"

#include "struct_defs/struct_02007C10.h"
#include "struct_defs/struct_02008A90.h"
#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_02015958.h"
#include "struct_defs/union_02022594_020225E0.h"
#include "struct_defs/struct_0202CA28.h"
#include "struct_defs/struct_0202CA64.h"
#include "struct_defs/struct_02099F80.h"
#include "overlay012/struct_ov12_02236030.h"
#include "overlay012/struct_ov12_02237728.h"
#include "overlay076/struct_ov76_0223BF74.h"
#include "overlay076/funcptr_ov76_0223D674.h"
#include "overlay076/struct_ov76_0223DE00.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "unk_02001AF4.h"
#include "unk_02002F38.h"
#include "unk_02005474.h"
#include "narc.h"
#include "unk_0200762C.h"
#include "unk_0200C6E4.h"
#include "unk_0200D9E8.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02012744.h"
#include "unk_02013A04.h"
#include "unk_02015920.h"
#include "unk_02015F84.h"
#include "unk_02017728.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201DBEC.h"
#include "gx_layers.h"
#include "unk_02022594.h"
#include "unk_02023FCC.h"
#include "unk_0202C9F4.h"
#include "unk_0202CD50.h"
#include "pokemon.h"
#include "unk_02097B18.h"
#include "overlay012/ov12_02235E94.h"
#include "overlay076/ov76_0223B140.h"
#include "overlay076/ov76_0223B870.h"
#include "overlay076/ov76_0223D338.h"

typedef struct {
    int unk_00;
    UnkStruct_0200D0F4 * unk_04;
    UnkStruct_02012CE0 * unk_08;
} UnkStruct_ov76_0223D9AC;

static BOOL ov76_0223D674(UnkStruct_ov76_0223DE00 * param0);
static BOOL ov76_0223DF94(UnkStruct_ov76_0223DE00 * param0);
static BOOL ov76_0223E8A4(UnkStruct_ov76_0223DE00 * param0);
static BOOL ov76_0223E950(UnkStruct_ov76_0223DE00 * param0);
static BOOL ov76_0223E9C4(UnkStruct_ov76_0223DE00 * param0);
static BOOL ov76_0223EB1C(UnkStruct_ov76_0223DE00 * param0);

void ov76_0223D338 (UnkStruct_ov76_0223DE00 * param0)
{
    sub_0202CA10(param0->unk_04[param0->unk_3C4[0]].unk_04, &param0->unk_68);
}

void ov76_0223D350 (UnkStruct_ov76_0223DE00 * param0)
{
    sub_0202CA10(&param0->unk_68, param0->unk_04[param0->unk_3C4[0]].unk_04);
}

void ov76_0223D368 (UnkStruct_ov76_0223DE00 * param0)
{
    int v0;

    for (v0 = 0; v0 < (80 + 1); v0++) {
        param0->unk_80[v0] = sub_0202CA90(param0->unk_64, v0);
    }
}

void ov76_0223D384 (UnkStruct_ov76_0223DE00 * param0)
{
    int v0;

    for (v0 = 0; v0 < (80 + 1); v0++) {
        sub_0202CADC(param0->unk_64, v0, param0->unk_80[v0]);
    }
}

void ov76_0223D3A0 (void)
{
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2, 11, 7);
    G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, 7, 8);
}

void ov76_0223D3CC (UnkStruct_ov76_0223DE00 * param0)
{
    int v0;
    int v1;
    Pokemon * v2;

    if (param0->unk_04[param0->unk_3C4[0]].unk_00 != 0xff) {
        v2 = param0->unk_00->unk_04[param0->unk_04[param0->unk_3C4[0]].unk_00];
        Pokemon_Copy(v2, param0->unk_428);

        return;
    }

    for (v0 = 0; v0 < param0->unk_00->unk_00; v0++) {
        v2 = param0->unk_00->unk_04[v0];
        v1 = Pokemon_GetValue(v2, MON_DATA_IS_EGG, NULL);

        if (v1 != 0) {
            continue;
        }

        Pokemon_Copy(v2, param0->unk_428);
        break;
    }
}

int ov76_0223D430 (UnkStruct_0202CA28 * param0)
{
    int v0;
    int v1 = 0;
    int v2;
    UnkStruct_0202CA64 * v3;

    v2 = 0;

    for (v0 = 0; v0 < 8; v0++) {
        v3 = sub_0202CA64(param0, v0);

        if (sub_0202CA7C(v3) != 0) {
            v2++;
        }
    }

    if (v2 != 0) {
        v1 = 1;
    }

    return v1;
}

int ov76_0223D45C (UnkStruct_ov76_0223DE00 * param0, int param1)
{
    int v0;
    int v1;
    int v2;

    v0 = param0->unk_264[param1].unk_00;
    v1 = param0->unk_264[param1].unk_04;

    if ((v0 == 0xff) && (v1 == 0)) {
        v2 = 0;
    } else if ((v0 == 0xff) && (v1 == 1)) {
        v2 = 1;
    } else if ((v0 != 0xff) && (v1 == 1)) {
        v2 = 2;
    } else {
        v2 = 3;
    }

    return v2;
}

static void ov76_0223D494 (UnkStruct_ov76_0223DE00 * param0, int param1, int param2, int param3)
{
    if (param2 == 0xff) {
        param0->unk_3D4 = param0->unk_3D8;
    } else {
        param0->unk_3D4 = param2;
    }

    param0->unk_3CC = param1;
    param0->unk_3D8 = param3;
    param0->unk_3DC = 0;
}

static int ov76_0223D4C4 (UnkStruct_ov76_0223DE00 * param0)
{
    sub_0200DC9C(&param0->unk_D4.unk_18[1], 1);
    sub_0201ACF4(&param0->unk_D4.unk_18[1]);
    sub_02001BC4(param0->unk_D4.unk_CC, NULL);
    sub_02013A3C(param0->unk_D4.unk_C8);
    sub_0201A8FC(&param0->unk_D4.unk_18[1]);

    return 1;
}

static int ov76_0223D4FC (UnkStruct_ov76_0223DE00 * param0)
{
    ov76_0223D494(param0, 1, 0, 3);
    return 0;
}

static int ov76_0223D50C (UnkStruct_ov76_0223DE00 * param0)
{
    ov76_0223B400(param0);
    ov76_0223B808(param0);
    ov76_0223C7E0(param0);
    ov76_0223D494(param0, 2, 0, 0);

    return 0;
}

static int ov76_0223D530 (UnkStruct_ov76_0223DE00 * param0)
{
    ov76_0223D494(param0, 3, 0, 3);
    return 0;
}

static int ov76_0223D540 (UnkStruct_ov76_0223DE00 * param0)
{
    ov76_0223D494(param0, 4, 0, 3);
    return 0;
}

const UnkStruct_ov76_0223BF74 Unk_ov76_0223EF3C[] = {
    {0, (const u32)ov76_0223D4FC},
    {1, (const u32)ov76_0223D4C4},
    {2, (const u32)ov76_0223D50C},
    {3, (const u32)ov76_0223D530},
    {4, (const u32)ov76_0223D540},
};

static BOOL(*const Unk_ov76_0223EE04[])(UnkStruct_ov76_0223DE00 * cbmw) = {
    ov76_0223D674,
    ov76_0223DF94,
    ov76_0223E8A4,
    ov76_0223E950,
    ov76_0223E9C4,
    ov76_0223EB1C,
};

BOOL ov76_0223D550 (UnkStruct_ov76_0223DE00 * param0)
{
    BOOL v0;

    v0 = Unk_ov76_0223EE04[param0->unk_3CC](param0);
    sub_0200C7EC(param0->unk_D4.unk_0C);

    return v0;
}

static BOOL ov76_0223D574 (int * param0)
{
    int * v0 = param0;

    if (Unk_021BF67C.unk_4C & PAD_KEY_RIGHT) {
        (*v0)++;
        (*v0) %= 12;
    } else if (Unk_021BF67C.unk_4C & PAD_KEY_LEFT) {
        if (*v0 > 0) {
            (*v0)--;
        } else {
            *v0 = 12 - 1;
        }
    } else if (Unk_021BF67C.unk_4C & PAD_KEY_UP) {
        if ((*v0 / 4) != 0) {
            (*v0) -= 4;
            (*v0) %= 12;
        } else {
            return 0;
        }
    } else if (Unk_021BF67C.unk_4C & PAD_KEY_DOWN) {
        if ((*v0 / 4) != (3 - 1)) {
            (*v0) += 4;
            (*v0) %= 12;
        } else {
            return 0;
        }
    } else {
        return 0;
    }

    return 1;
}

static void ov76_0223D600 (UnkStruct_ov76_0223DE00 * param0, int param1, BOOL param2)
{
    s16 v0, v1;
    int v2 = 0;

    if (param1 == 0) {
        v2 = 1;
    }

    ov76_0223C0EC(param0->unk_3C4[param1], &v0, &v1);
    sub_0200D4C4(param0->unk_2F4[param1], v0, v1);

    if (param2 == 1) {
        param0->unk_3C4[v2] = param0->unk_3C4[param1];
        ov76_0223C0EC(param0->unk_3C4[v2], &v0, &v1);
        sub_0200D4C4(param0->unk_2F4[v2], v0, v1);
    }
}

static BOOL ov76_0223D674 (UnkStruct_ov76_0223DE00 * param0)
{
    switch (param0->unk_3D4) {
    case 0:
    {
        NARC * v0;

        v0 = NARC_ctor(NARC_INDEX_APPLICATION__CUSTOM_BALL__DATA__CB_DATA, 53);

        ov76_0223C110(param0);
        ov76_0223C188(param0);
        ov76_0223C288(param0);
        ov76_0223CE84(param0, v0);
        ov76_0223CF24(param0, v0);
        ov76_0223CF88(param0, v0);
        ov76_0223C354(param0);
        ov76_0223C61C(param0, v0);
        ov76_0223CA98(param0->unk_D4.unk_10, &param0->unk_D4.unk_18[0], 1, 2, 21, 27, 2, (0 + ((1 + (18 + 12)) + 9)));
        ov76_0223B208(param0);
        ov76_0223B69C(param0, 1);
        ov76_0223B1E0(param0);
        ov76_0223CFEC(param0, v0);
        ov76_0223D16C(param0);
        ov76_0223C438(param0, v0);
        ov76_0223C4AC(param0);
        ov76_0223D338(param0);
        ov76_0223D368(param0);
        ov76_0223BA90(param0, param0->unk_418.unk_00);
        ov76_0223BB04(param0);
        ov76_0223BBAC(param0);
        ov76_0223D2F4(param0, 0);
        ov76_0223C568(param0, 0);
        ov76_0223B940(param0);
        ov76_0223B96C(param0, 0);
        ov76_0223CA30(&param0->unk_D4.unk_18[0], 7);
        ov76_0223CE2C();
        ov76_0223DCB8(param0, 0);

        NARC_dtor(v0);
    }
        param0->unk_3D4++;
        break;

    case 1:
        ov76_0223CE44();
        param0->unk_3D4++;
        break;

    case 2:
        if (sub_0200F2AC() != 1) {
            break;
        }

        param0->unk_3D4++;

    case 3:
    {
        BOOL v1;
        int v2;
        int v3;

        if (sub_02022798() == 1) {
            ov76_0223D4FC(param0);
            break;
        }

        v2 = param0->unk_3C4[0];
        v1 = ov76_0223D574(&(param0->unk_3C4[0]));
        v3 = param0->unk_3C4[0];
        param0->unk_3C4[0] = v2;

        if (v1 == 1) {
            ov76_0223B400(param0);
            ov76_0223B808(param0);
            ov76_0223C7E0(param0);

            param0->unk_3C4[0] = v3;

            ov76_0223D600(param0, 0, 1);
            ov76_0223B678(param0);
            ov76_0223B208(param0);
            ov76_0223B69C(param0, 1);
            ov76_0223B1E0(param0);

            sub_02005748(1500);
        } else if (Unk_021BF67C.unk_48 & PAD_BUTTON_A) {
            param0->unk_3D4++;
            ov76_0223CA30(&param0->unk_D4.unk_18[0], 8);
            ov76_0223BF74(param0->unk_D4.unk_10, &param0->unk_D4.unk_18[1], 1, param0, param0->unk_3C4[0]);
            sub_02005748(1500);
        } else if (Unk_021BF67C.unk_48 & PAD_BUTTON_B) {
            param0->unk_3D4 = 5;
            sub_02005748(1501);
        }
    }
    break;
    case 4:
    {
        UnkFuncPtr_ov76_0223D674 v4;
        u32 v5 = sub_02001BE0(param0->unk_D4.unk_CC);

        switch (v5) {
        case 0xfffffffe:
            ov76_0223D4C4(param0);
            ov76_0223CA30(&param0->unk_D4.unk_18[0], 7);
            param0->unk_3D4 = 3;
            break;
        case 0xffffffff:
            break;
        default:
            v4 = (UnkFuncPtr_ov76_0223D674)v5;

            if (v4 != NULL) {
                int v6 = v4(param0);

                if (v6 != 1) {
                    ov76_0223D4C4(param0);
                    break;
                }

                ov76_0223CA30(&param0->unk_D4.unk_18[0], 7);
                param0->unk_3D4 = 3;
            }
            break;
        }
    }
    break;
    case 5:
        ov76_0223CE64();
        param0->unk_3D4++;
        break;
    case 6:
        if (sub_0200F2AC() != 1) {
            break;
        }
        sub_0201A8FC(&param0->unk_D4.unk_18[0]);
        ov76_0223C8BC(param0);
        ov76_0223C32C(param0);
        ov76_0223D31C(param0);
        ov76_0223C588(param0);
        ov76_0223BC70(param0);
        sub_02097F30(param0->unk_00, 0);
        return 0;
    }

    ov76_0223C304(param0);
    ov76_0223C88C(param0);

    return 1;
}

void ov76_0223D94C (UnkStruct_0200D0F4 * param0, int param1)
{
    switch (param1) {
    case 0:
        sub_0200D3CC(param0, 1);
        break;
    case 2:
        sub_0200D3CC(param0, 2);
        break;
    case 1:
    case 3:
        sub_0200D3CC(param0, 0);
        break;
    default:
        GF_ASSERT(0);
        break;
    }
}

static void ov76_0223D984 (UnkStruct_02012CE0 * param0, int param1, int param2)
{
    int v0;
    int v1;

    if (param0 != NULL) {
        sub_020129A4(param0, &v0, &v1);
        sub_020128C4(param0, v0 + param1, v1 + param2);
    }
}

static void ov76_0223D9AC (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov76_0223D9AC * v0 = param1;

    switch (v0->unk_00) {
    case 3:
        ov76_0223D984(v0->unk_08, 0, -1);
        sub_0200D3CC(v0->unk_04, 2);
        v0->unk_00++;
        break;
    case 6:
        ov76_0223D984(v0->unk_08, 0, +2);
        sub_0200D3CC(v0->unk_04, 0);
        sub_0200DA58(param0);
        Heap_FreeToHeap(v0);
        break;
    default:
        v0->unk_00++;
        break;
    }
}

static void ov76_0223DA00 (UnkStruct_0200D0F4 * param0, UnkStruct_02012CE0 * param1)
{
    UnkStruct_ov76_0223D9AC * v0;

    v0 = Heap_AllocFromHeap(53, sizeof(UnkStruct_ov76_0223D9AC));

    v0->unk_00 = 1;
    v0->unk_04 = param0;
    v0->unk_08 = param1;

    ov76_0223D984(v0->unk_08, 0, -1);
    sub_0200D9E8(ov76_0223D9AC, v0, 1000);
}

void ov76_0223DA34 (u32 param0, u32 param1, void * param2)
{
    UnkStruct_ov76_0223DE00 * v0 = (UnkStruct_ov76_0223DE00 *)param2;

    if (v0->unk_D4.unk_04 == 0) {
        return;
    }

    switch (param0) {
    case 8:
        if (param1 == 0) {
            if (v0->unk_418.unk_00 > 0) {
                v0->unk_418.unk_00--;
            } else {
                v0->unk_418.unk_00 = v0->unk_418.unk_04 - 1;
            }

            ov76_0223BC70(v0);
            ov76_0223BA90(v0, v0->unk_418.unk_00);
            ov76_0223BB04(v0);
            ov76_0223BBAC(v0);
            ov76_0223CC8C(v0);
            sub_02005748(1733);
        }

        ov76_0223D94C(v0->unk_3E4.unk_00[8], param1);
        break;
    case 9:
        if (param1 == 0) {
            v0->unk_418.unk_00++;
            v0->unk_418.unk_00 %= v0->unk_418.unk_04;

            ov76_0223BC70(v0);
            ov76_0223BA90(v0, v0->unk_418.unk_00);
            ov76_0223BB04(v0);
            ov76_0223BBAC(v0);
            ov76_0223CC8C(v0);
            sub_02005748(1733);
        }
        ov76_0223D94C(v0->unk_3E4.unk_00[9], param1);
        break;
    case 10:
        if (param1 == 0) {
            if (v0->unk_3D4 != 5) {
                v0->unk_3D4 = 5;
                sub_02005748(1501);
            }

            ov76_0223DA00(v0->unk_3E4.unk_00[10], NULL);
        }

        ov76_0223D94C(v0->unk_3E4.unk_00[10], param1);
        break;
    case 11:
        if (param1 == 0) {
            if (v0->unk_3D4 != 6) {
                v0->unk_3D4 = 6;
                ov76_0223DCB8(v0, 0);
                sub_02005748(1506);
            }

            ov76_0223DA00(v0->unk_3E4.unk_00[11], v0->unk_D4.unk_164[0]);
        }

        ov76_0223D94C(v0->unk_3E4.unk_00[11], param1);
        break;
    case 12:
        if (param1 == 0) {
            if (v0->unk_3D4 != 7) {
                v0->unk_3D4 = 7;
                ov76_0223DCB8(v0, 0);
                sub_02005748(1501);
            }

            ov76_0223DA00(v0->unk_3E4.unk_00[12], v0->unk_D4.unk_164[1]);
        }

        ov76_0223D94C(v0->unk_3E4.unk_00[12], param1);
        break;
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    {
        int v1;

        if (param1 == 0) {
            if (ov76_0223B2F8(v0) == 0) {
                sub_02005748(1522);
                ov76_0223CA30(&v0->unk_D4.unk_18[0], 15);
            } else {
                if ((v0->unk_418.unk_08[param0] != 0) && (sub_0202CA90(v0->unk_64, v0->unk_418.unk_08[param0] - 1) != 0)) {
                    v0->unk_D4.unk_00 = ov76_0223B278(v0, param0);
                    v1 = sub_02098164(v0->unk_418.unk_08[param0]);

                    ov76_0223CDC4(&v0->unk_D4.unk_18[0], v1);
                    sub_0202CAE0(v0->unk_00->unk_20, v0->unk_418.unk_08[param0], -1);
                    ov76_0223CD20(v0, param0);
                    sub_02005748(1515);
                } else {
                    if (v0->unk_418.unk_08[param0] != 0) {
                        sub_02005748(1522);
                        ov76_0223CA30(&v0->unk_D4.unk_18[0], 16);
                    }
                }
            }
        }
    }
    break;
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    {
        int v2;
        int v3;

        if (param1 == 0) {
            v2 = param0 - 13;
            ov76_0223B5C4(v0, param1, v2);
            v3 = sub_02098164(v0->unk_324[v2].unk_04);

            ov76_0223CDC4(&v0->unk_D4.unk_18[0], v3);
            sub_02005748(1515);
        }
    }
    break;
    default:
        GF_ASSERT(0);
        break;
    }
}

BOOL ov76_0223DCB0 (UnkStruct_ov76_0223DE00 * param0)
{
    return param0->unk_D4.unk_184;
}

void ov76_0223DCB8 (UnkStruct_ov76_0223DE00 * param0, BOOL param1)
{
    param0->unk_D4.unk_04 = param1;
}

static const UnkUnion_02022594 Unk_ov76_0223EE44[] = {
    {16, 32, 8, 24},
    {16, 32, 64, 80},
    {40, 56, 8, 24},
    {40, 56, 64, 80},
    {64, 80, 8, 24},
    {64, 80, 64, 80},
    {88, 104, 8, 24},
    {88, 104, 64, 80},
    {104, 128, 8, 48},
    {104, 128, 56, 96},
    {168, 188, 18, 77},
    {168, 188, 97, 156},
    {168, 188, 178, 237},
};

void ov76_0223DCC0 (UnkStruct_ov76_0223DE00 * param0)
{
    int v0;
    const UnkUnion_02022594 v1 = {0, 0, 0, 0};

    for (v0 = 0; v0 < 13; v0++) {
        param0->unk_D4.unk_FC[v0] = Unk_ov76_0223EE44[v0];
    }

    for ( ; v0 < 21; v0++) {
        param0->unk_D4.unk_FC[v0] = v1;
        param0->unk_324[v0 - 13].unk_0C = &param0->unk_D4.unk_FC[v0];
    }

    param0->unk_D4.unk_F8 = sub_02023FCC(param0->unk_D4.unk_FC, 21, ov76_0223DA34, param0, 53);
}

void ov76_0223DD88 (UnkStruct_ov76_0223DE00 * param0)
{
    UnkStruct_02008A90 v0;
    UnkStruct_02007C10 v1[10];
    int v2;
    int v3;

    sub_02075EF4(&v0, param0->unk_428, 2);

    v2 = Pokemon_GetValue(param0->unk_428, MON_DATA_SPECIES, NULL);
    v3 = sub_020765AC(param0->unk_428, 2);

    param0->unk_D4.unk_D8 = v3;
    sub_020789BC(param0->unk_42C, &v1[0], v2, 1);
    param0->unk_D4.unk_D4 = sub_02007C34(param0->unk_D4.unk_D0, &v0, (256 - 64), 48 + v3, -0x280, 0, &v1[0], NULL);
}

static void ov76_0223DE00 (UnkStruct_ov76_0223DE00 * param0)
{
    int v0;
    int v1;

    v0 = Pokemon_GetValue(param0->unk_428, MON_DATA_SPECIES, NULL);
    v1 = Pokemon_GetNature(param0->unk_428);

    sub_02007B98(param0->unk_D4.unk_D4, 1);
    sub_020789F4(param0->unk_42C, param0->unk_D4.unk_188, param0->unk_D4.unk_D4, v0, 2, 0, 0);
}

static void ov76_0223DE54 (UnkStruct_ov76_0223DE00 * param0)
{
    sub_02007DEC(param0->unk_D4.unk_D4, 12, 0x0);
    sub_02007DEC(param0->unk_D4.unk_D4, 13, 0x0);
}

static BOOL ov76_0223DE78 (UnkStruct_ov76_0223DE00 * param0)
{
    if (sub_020080C0(param0->unk_D4.unk_D4, 12) == 0x100) {
        return 0;
    } else if (sub_020080C0(param0->unk_D4.unk_D4, 12) >= 0x100) {
        sub_02007DEC(param0->unk_D4.unk_D4, 12, 0x100);
        sub_02007DEC(param0->unk_D4.unk_D4, 13, 0x100);
        return 0;
    } else {
        sub_02008274(param0->unk_D4.unk_D4, 12, 0x20);
        sub_02008274(param0->unk_D4.unk_D4, 13, 0x20);
        sub_020087C8(param0->unk_D4.unk_D4, param0->unk_D4.unk_D8);
    }

    return 1;
}

static BOOL ov76_0223DEF4 (UnkStruct_ov76_0223DE00 * param0)
{
    if (sub_020080C0(param0->unk_D4.unk_D4, 12) == 0x0) {
        return 0;
    } else if (sub_020080C0(param0->unk_D4.unk_D4, 12) <= 0x0) {
        sub_02007DEC(param0->unk_D4.unk_D4, 12, 0x0);
        sub_02007DEC(param0->unk_D4.unk_D4, 13, 0x0);
        return 0;
    } else {
        sub_02008274(param0->unk_D4.unk_D4, 12, -0x20);
        sub_02008274(param0->unk_D4.unk_D4, 13, -0x20);
        sub_020087C8(param0->unk_D4.unk_D4, param0->unk_D4.unk_D8);
    }

    return 1;
}

void ov76_0223DF70 (UnkStruct_ov76_0223DE00 * param0, int param1)
{
    sub_02007DEC(param0->unk_D4.unk_D4, 6, param1);
}

void ov76_0223DF84 (UnkStruct_ov76_0223DE00 * param0)
{
    sub_02007DC8(param0->unk_D4.unk_D4);
}

static BOOL ov76_0223DF94 (UnkStruct_ov76_0223DE00 * param0)
{
    switch (param0->unk_3D4) {
    case 0:
        ov76_0223DCB8(param0, 0);
        ov76_0223CA30(&param0->unk_D4.unk_18[0], 0xFFFF);
        ov76_0223CB58(param0);
        ov76_0223CC8C(param0);
        ov76_0223BD30(param0, +1, 4);
        ov76_0223D338(param0);
        ov76_0223D368(param0);
        param0->unk_D4.unk_18C = 0;
        param0->unk_3D4++;
        break;
    case 1:
        if (ov76_0223DCB0(param0) == 1) {
            break;
        }

        sub_02003178(param0->unk_D4.unk_14, 0x1, (1 << 0) | (1 << 1), 0, 0, 16, 0);
        sub_02003178(param0->unk_D4.unk_14, 0x4, 0xFFFF, 0, 0, 16, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 0);
        GXLayers_EngineBToggleLayers((GX_PLANEMASK_BG2), 1);
        sub_02019060(7, 1);
        ov76_0223D2F4(param0, 1);
        ov76_0223C568(param0, 1);
        ov76_0223B96C(param0, 1);
        param0->unk_3D4++;
        break;
    case 2:
        if (sub_0200384C(param0->unk_D4.unk_14) != 0) {
            break;
        }
        sub_02019060(3, 1);
        sub_02003178(param0->unk_D4.unk_14, 0x1, (1 << 1), 0, 16, 0, 0);
        param0->unk_3D4++;
        break;
    case 3:
        if (sub_0200384C(param0->unk_D4.unk_14) != 0) {
            break;
        }
        ov76_0223DCB8(param0, 1);
        param0->unk_3D4++;
        break;
    case 4:
        break;
    case 5:
    {
        switch (param0->unk_3DC) {
        case 0:
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
            sub_02003178(param0->unk_D4.unk_14, 0x2, (1 << 0) | (1 << 1) | (1 << 3) | (1 << 11), 0, 0, 10, 0);
            sub_02003178(param0->unk_D4.unk_14, 0x8, 0xFFFF, 0, 0, 10, 0);
            ov76_0223DCB8(param0, 0);
            param0->unk_3E0 = 0;
            ov76_0223D3CC(param0);
            ov76_0223DD88(param0);
            ov76_0223DF70(param0, 1);
            ov76_0223CA30(&param0->unk_D4.unk_18[0], 13);
            param0->unk_3DC++;
            break;
        case 1:
            if (sub_0200384C(param0->unk_D4.unk_14) != 0) {
                break;
            }

            {
                UnkStruct_ov12_02237728 v0;

                v0.unk_00 = 1;
                v0.unk_04 = 53;
                v0.unk_08 = 0;
                v0.unk_0C = 0xFF;
                v0.unk_14 = 0;
                v0.unk_18 = 1;
                v0.unk_1C = param0->unk_D4.unk_08;
                v0.unk_20 = param0->unk_D4.unk_14;
                v0.unk_10 = Pokemon_GetValue(param0->unk_428, MON_DATA_POKEBALL, NULL);

                param0->unk_D4.unk_158 = ov12_02237728(&v0);
                param0->unk_3DC++;
            }
            break;
        case 2:
        {
            int v1;
            UnkStruct_0202CA28 v2;
            UnkStruct_ov12_02236030 v3 = {0};

            v3.unk_00 = 1;
            v3.unk_08 = param0->unk_428;
            v1 = param0->unk_3C4[0] + 1;

            ov76_0223B848(&v2, param0);
            Pokemon_SetValue(param0->unk_428, 162, (u8 *)&v1);
            Pokemon_SetValue(param0->unk_428, 171, &v2);

            param0->unk_D4.unk_154 = ov12_02236004(53, &v3);
            ov12_02236320(param0->unk_D4.unk_154);
        }
            param0->unk_3DC++;
            param0->unk_3E0 = 0;
            break;
        case 3:
            if (ov12_02236374(param0->unk_D4.unk_154) != 1) {
                break;
            }

            if (ov12_02237810(param0->unk_D4.unk_158) == 1) {
                ov76_0223DE78(param0);
                ov12_022363B4(param0->unk_D4.unk_154);
                ov76_0223DF70(param0, 0);
                ov76_0223DE54(param0);
                sub_02005748(1734);
                param0->unk_3DC++;
            }
            break;
        case 4:
        {
            BOOL v4 = ov76_0223DE78(param0);

            if (ov12_022377F8(param0->unk_D4.unk_158) != 0) {
                break;
            }

            if (v4 == 0) {
                ov12_0223783C(param0->unk_D4.unk_158);
                GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 0);
                ov76_0223DE00(param0);
                param0->unk_3E0 = 0;
                param0->unk_3DC++;
            }
        }
        break;
        case 5:
            if (ov12_022363C4(param0->unk_D4.unk_154) != 0) {
                break;
            }

            if (sub_020160F4(param0->unk_D4.unk_188, 0) != 1) {
                break;
            }

            if (sub_02007C24(param0->unk_D4.unk_D4) != 0) {
                break;
            }

            ov12_02236428(param0->unk_D4.unk_154);
            param0->unk_3DC++;
            break;
        case 6:
            if ((++param0->unk_3E0) < 30) {
                break;
            }

            param0->unk_3E0 = 0;
            {
                UnkStruct_ov12_02237728 v5;

                v5.unk_00 = 1;
                v5.unk_04 = 53;
                v5.unk_08 = 5;
                v5.unk_0C = 0xFF;
                v5.unk_14 = 0;
                v5.unk_18 = 1;
                v5.unk_1C = param0->unk_D4.unk_08;
                v5.unk_20 = param0->unk_D4.unk_14;
                v5.unk_10 = Pokemon_GetValue(param0->unk_428, MON_DATA_POKEBALL, NULL);

                param0->unk_D4.unk_158 = ov12_02237728(&v5);

                ov76_0223D3A0();
                GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

                param0->unk_3DC++;
            }
            break;
        case 7:
        {
            BOOL v6 = ov76_0223DEF4(param0);

            if ((ov12_022377F8(param0->unk_D4.unk_158) == 0) && (v6 == 0)) {
                sub_02003178(param0->unk_D4.unk_14, 0x2, (1 << 0) | (1 << 1) | (1 << 3) | (1 << 11), 0, 10, 0, 0);
                sub_02003178(param0->unk_D4.unk_14, 0x8, 0xFFFF, 0, 10, 0, 0);
                ov76_0223DF70(param0, 1);
                ov76_0223DF84(param0);
                ov12_0223783C(param0->unk_D4.unk_158);
                param0->unk_3DC++;
            }
        }
        break;
        default:
            if (sub_0200384C(param0->unk_D4.unk_14) != 0) {
                break;
            }

            GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 0);
            ov76_0223DCB8(param0, 1);
            param0->unk_3DC = 0;
            param0->unk_3D4 = 4;
            ov76_0223CA30(&param0->unk_D4.unk_18[0], 0xFFFF);
            break;
        }
    }
    break;
    case 6:
        ov76_0223CA30(&param0->unk_D4.unk_18[0], 12);

        if (ov76_0223B78C(param0) == 1) {
            param0->unk_D4.unk_18C = 1;
        }

        ov76_0223B808(param0);
        ov76_0223C7E0(param0);
        {
            UnkStruct_0202CD88 * v7;
            v7 = sub_0202CD88(param0->unk_00->unk_28);

            sub_0202CFEC(v7, 6);
        }

        {
            Pokemon * v8;

            if (param0->unk_264[param0->unk_3C4[0]].unk_00 != 0xff) {
                v8 = param0->unk_00->unk_04[param0->unk_264[param0->unk_3C4[0]].unk_00];

                Pokemon_SetValue(v8, 171, sub_0202CA28(param0->unk_00->unk_20, param0->unk_3C4[0]));
            }
        }
        param0->unk_3D4 = 8;
        break;
    case 7:
    {
        switch (param0->unk_3DC) {
        case 0:
            if (ov76_0223B78C(param0) == 0) {
                param0->unk_3D4 = 8;
                break;
            }

            sub_02003178(param0->unk_D4.unk_14, 0x2, (1 << 0) | (1 << 1) | (1 << 3) | (1 << 11), 0, 0, 10, 0);
            sub_02003178(param0->unk_D4.unk_14, 0x8, 0xFFFF, 0, 0, 10, 0);
            ov76_0223DCB8(param0, 0);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
            param0->unk_3DC++;
            break;
        case 1:
            if (sub_0200384C(param0->unk_D4.unk_14) != 0) {
                break;
            }

            sub_02003858(param0->unk_D4.unk_14, 0);
            ov76_0223CA98(param0->unk_D4.unk_10, &param0->unk_D4.unk_18[2], 4, 2, 1, 27, 4, (0 + ((1 + (18 + 12)) + 9)));

            {
                UnkStruct_02015958 v9;

                v9.unk_00 = param0->unk_D4.unk_10;
                v9.unk_04 = 4;
                v9.unk_08 = (((((3 + 1)) * 2) + ((((3 + 1)) * 2) + ((((3 + 1)) * 2) + ((((3 + 1)) * 2) + ((((3 + 1)) * 2) + ((((3 + 1)) * 2) + ((((3 + 1)) * 2) + ((((3 + 1)) * 2) + ((27 * 4) + (0 + ((1 + (18 + 12)) + 9))))))))))));
                v9.unk_0C = 5;
                v9.unk_10 = 25;
                v9.unk_11 = 6;

                param0->unk_D4.unk_150 = sub_02015920(53);
                sub_02015958(param0->unk_D4.unk_150, &v9);
            }

            ov76_0223CA30(&param0->unk_D4.unk_18[2], 14);
            param0->unk_3DC++;
            break;
        case 2:
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 1);
            param0->unk_3DC++;
        case 3:
        {
            u32 v10;
            v10 = sub_020159FC(param0->unk_D4.unk_150);

            switch (v10) {
            case 1:
            case 2:
                param0->unk_3E0 = v10;
                sub_02003858(param0->unk_D4.unk_14, 1);
                sub_02015A54(param0->unk_D4.unk_150);
                sub_02015938(param0->unk_D4.unk_150);
                sub_0200E084(&param0->unk_D4.unk_18[2], 1);
                sub_0201ACF4(&param0->unk_D4.unk_18[2]);
                sub_0201A8FC(&param0->unk_D4.unk_18[2]);
                param0->unk_3DC++;
                break;
            case 0:
            default:
                break;
            }
        }
        break;
        case 4:
            sub_02003178(param0->unk_D4.unk_14, 0x2, (1 << 0) | (1 << 1) | (1 << 3) | (1 << 11), 0, 10, 0, 0);
            sub_02003178(param0->unk_D4.unk_14, 0x8, 0xFFFF, 0, 10, 0, 0);
            param0->unk_3DC++;
            break;
        case 5:
            if (sub_0200384C(param0->unk_D4.unk_14) != 0) {
                break;
            }

            switch (param0->unk_3E0) {
            case 1:
                ov76_0223D350(param0);
                ov76_0223D384(param0);
                ov76_0223CC8C(param0);
                ov76_0223B678(param0);
                ov76_0223B208(param0);
                ov76_0223B69C(param0, 1);
                param0->unk_3D4 = 6;
                break;
            case 2:
                param0->unk_3D4 = 4;
                break;
            case 0:
            default:
                break;
            }

            ov76_0223DCB8(param0, 1);
            param0->unk_3DC = 0;
        }
    }
    break;
    case 8:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
        sub_02003178(param0->unk_D4.unk_14, 0x1, (1 << 1), 0, 0, 16, 0);
        param0->unk_3D4++;
        break;
    case 9:

        if (sub_0200384C(param0->unk_D4.unk_14) != 0) {
            break;
        }

        sub_02003178(param0->unk_D4.unk_14, 0x1, (1 << 0), 0, 16, 0, 0);
        sub_02003178(param0->unk_D4.unk_14, 0x4, 0xFFFF, 0, 16, 0, 0);
        sub_02019060(3, 3);
        sub_02019060(7, 3);
        GXLayers_EngineBToggleLayers((GX_PLANEMASK_BG2), 0);
        ov76_0223D2F4(param0, 0);
        ov76_0223C568(param0, 0);
        ov76_0223B96C(param0, 0);
        ov76_0223BD30(param0, -1, 4);
        ov76_0223DCB8(param0, 0);
        param0->unk_3D4++;
        break;
    case 10:
        if (sub_0200384C(param0->unk_D4.unk_14) != 0) {
            break;
        }

        if (ov76_0223DCB0(param0) == 1) {
            break;
        }

        sub_0200D3F4(param0->unk_2F4[1], 0);
        ov76_0223D494(param0, 0, 0xff, 0);
        ov76_0223CA30(&param0->unk_D4.unk_18[0], 7);
        ov76_0223CDA4(param0);

        return 1;
    }

    if (param0->unk_D4.unk_00 == 0xFF) {
        sub_0202404C(param0->unk_D4.unk_F8);
    } else {
        u32 v11, v12;
        int v13;
        BOOL v14;

        v13 = param0->unk_D4.unk_00;
        v14 = sub_020227A4(&v11, &v12);

        if (v14) {
            int v15;

            v15 = sub_02098164(param0->unk_324[v13].unk_04);
            ov76_0223CDC4(&param0->unk_D4.unk_18[0], v15);
            sub_0200D4C4(param0->unk_324[v13].unk_08, v11, v12);
            ov76_0223B758(param0, v13);
            ov76_0223B7D4(param0, v13);
        } else {
            BOOL v16;

            v16 = ov76_0223B6C4(param0, v13);
            ov76_0223B184(param0->unk_324[v13].unk_0C, param0->unk_324[v13].unk_08, 0);

            if (v16 == 0) {
                sub_0202CB20(param0->unk_00->unk_20, param0->unk_324[v13].unk_04, +1);
                ov76_0223CC8C(param0);
                ov76_0223B704(param0, v13);
            }

            sub_02005748(1514);
            param0->unk_D4.unk_00 = 0xFF;
            ov76_0223CDC4(&param0->unk_D4.unk_18[0], 0xFFFF);
        }
    }

    ov76_0223D318(param0);
    ov76_0223C544(param0);
    ov76_0223C304(param0);
    ov76_0223C88C(param0);

    return 1;
}

static BOOL ov76_0223E8A4 (UnkStruct_ov76_0223DE00 * param0)
{
    switch (param0->unk_3D4) {
    case 0:
        param0->unk_3D4++;
    case 1:
        ov76_0223CE64();
        param0->unk_3D4++;
        break;
    case 2:
        if (sub_0200F2AC() != 1) {
            break;
        }

        sub_0201A8FC(&param0->unk_D4.unk_18[0]);
        ov76_0223C8BC(param0);
        ov76_0223C32C(param0);
        ov76_0223D31C(param0);
        ov76_0223C588(param0);
        ov76_0223BC70(param0);
        sub_02097F30(param0->unk_00, 1);

        return 0;
    }

    ov76_0223C304(param0);
    ov76_0223C88C(param0);

    return 1;
}

void ov76_0223E91C (UnkStruct_ov76_0223DE00 * param0, int param1)
{
    int v0;
    int v1;
    int v2 = 0;
    UnkStruct_0202CA28 v3;

    v1 = param0->unk_04[param1].unk_00;

    if (v1 != 0xff) {
        Pokemon_SetValue(param0->unk_00->unk_04[v1], 162, (u8 *)&v2);
    }

    param0->unk_04[param1].unk_00 = 0xff;
    ov76_0223C7E0(param0);
}

static BOOL ov76_0223E950 (UnkStruct_ov76_0223DE00 * param0)
{
    switch (param0->unk_3D4) {
    case 0:
        ov76_0223E91C(param0, param0->unk_3C4[0]);
        ov76_0223CA30(&param0->unk_D4.unk_18[0], 9);
        param0->unk_3D4++;
        break;
    case 1:
        if (Unk_021BF67C.unk_48 & (0x1 | 0x2 | 0x400 | 0x800 | 0x40 | 0x80 | 0x20 | 0x10)) {
            param0->unk_3D4++;
        }
        break;
    case 2:
        ov76_0223D494(param0, 0, 0xff, 0);
        ov76_0223CA30(&param0->unk_D4.unk_18[0], 7);
        break;
    }

    ov76_0223C304(param0);
    ov76_0223C88C(param0);

    return 1;
}

static BOOL ov76_0223E9C4 (UnkStruct_ov76_0223DE00 * param0)
{
    switch (param0->unk_3D4) {
    case 0:
        sub_0200D474(param0->unk_2F4[0], 25);
        sub_0200D474(param0->unk_2F4[1], 20);
        sub_0200D364(param0->unk_2F4[0], 1);
        ov76_0223CA30(&param0->unk_D4.unk_18[0], 10);
        sub_0200D3F4(param0->unk_2F4[1], 1);
        param0->unk_3D4++;
    case 1:
    {
        BOOL v0;

        v0 = ov76_0223D574(&(param0->unk_3C4[1]));

        if (v0 == 1) {
            ov76_0223D600(param0, 1, 0);

            sub_02005748(1500);
        } else if (Unk_021BF67C.unk_48 & PAD_BUTTON_A) {
            ov76_0223C80C(param0, param0->unk_3C4[0], param0->unk_3C4[1]);
            ov76_0223D600(param0, 1, 1);
            ov76_0223CA30(&param0->unk_D4.unk_18[0], 11);
            param0->unk_3D4 = 2;
            sub_02005748(1500);
        } else if (Unk_021BF67C.unk_48 & PAD_BUTTON_B) {
            sub_0200D3F4(param0->unk_2F4[1], 0);
            ov76_0223D600(param0, 0, 1);
            param0->unk_3D4 = 3;
            sub_02005748(1501);
        }
    }
    break;
    case 2:
        if (Unk_021BF67C.unk_48 & (0x1 | 0x2 | 0x400 | 0x800 | 0x40 | 0x80 | 0x20 | 0x10)) {
            param0->unk_3D4 = 3;
        }
        break;
    case 3:
        sub_0200D474(param0->unk_2F4[0], 20);
        sub_0200D474(param0->unk_2F4[1], 25);
        ov76_0223D494(param0, 0, 0xff, 0);
        sub_0200D364(param0->unk_2F4[0], 0);
        ov76_0223CA30(&param0->unk_D4.unk_18[0], 7);
        break;
    }

    ov76_0223C304(param0);
    ov76_0223C88C(param0);

    return 1;
}

static BOOL ov76_0223EB1C (UnkStruct_ov76_0223DE00 * param0)
{
    return 0;
}

void ov76_0223EB20 (int param0)
{
    sub_02017798(NULL, NULL);
    sub_020177A4();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
}

void ov76_0223EB54 (int param0)
{
    sub_02017798(NULL, NULL);
    sub_020177A4();
}

void ov76_0223EB64 (UnkStruct_02018340 * param0)
{
    GXLayers_DisableEngineALayers();

    {
        UnkStruct_02099F80 v0 = {
            GX_VRAM_BG_128_A,
            GX_VRAM_BGEXTPLTT_NONE,
            GX_VRAM_SUB_BG_32_H,
            GX_VRAM_SUB_BGEXTPLTT_NONE,
            GX_VRAM_OBJ_64_E,
            GX_VRAM_OBJEXTPLTT_NONE,
            GX_VRAM_SUB_OBJ_16_I,
            GX_VRAM_SUB_OBJEXTPLTT_NONE,
            GX_VRAM_TEX_01_BC,
            GX_VRAM_TEXPLTT_01_FG
        };

        GXLayers_SetBanks(&v0);

        MI_CpuClear32((void *)HW_BG_VRAM, HW_BG_VRAM_SIZE);
        MI_CpuClear32((void *)HW_DB_BG_VRAM, HW_DB_BG_VRAM_SIZE);
        MI_CpuClear32((void *)HW_OBJ_VRAM, HW_OBJ_VRAM_SIZE);
        MI_CpuClear32((void *)HW_DB_OBJ_VRAM, HW_DB_OBJ_VRAM_SIZE);
    }

    {
        UnkStruct_ov84_0223BA5C v1 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_3D,
        };

        sub_02018368(&v1);
    }

    {
        UnkStruct_ov97_0222DB78 v2[] = {
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x0000,
                GX_BG_CHARBASE_0x04000,
                GX_BG_EXTPLTT_01,
                0,
                0,
                0,
                0
            },
            {
                0,
                0,
                0x2000,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x1000,
                GX_BG_CHARBASE_0x0c000,
                GX_BG_EXTPLTT_01,
                2,
                0,
                0,
                0
            },
            {
                0,
                0,
                0x1000,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x3000,
                GX_BG_CHARBASE_0x10000,
                GX_BG_EXTPLTT_01,
                3,
                0,
                0,
                0
            },
        };

        sub_020183C4(param0, 1, &v2[0], 0);
        sub_020183C4(param0, 2, &v2[1], 0);
        sub_020183C4(param0, 3, &v2[2], 0);
        sub_02019EBC(param0, 1);
        sub_02019EBC(param0, 2);
        sub_02019EBC(param0, 3);

        G2_SetBG0Priority(1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
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
                GX_BG_SCRBASE_0x6800,
                GX_BG_CHARBASE_0x00000,
                GX_BG_EXTPLTT_01,
                0,
                0,
                0,
                0
            },
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x7000,
                GX_BG_CHARBASE_0x04000,
                GX_BG_EXTPLTT_01,
                2,
                0,
                0,
                0
            },
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x6000,
                GX_BG_CHARBASE_0x00000,
                GX_BG_EXTPLTT_01,
                1,
                0,
                0,
                0
            },
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x7800,
                GX_BG_CHARBASE_0x04000,
                GX_BG_EXTPLTT_01,
                3,
                0,
                0,
                0
            },
        };

        sub_020183C4(param0, 4, &v3[0], 0);
        sub_020183C4(param0, 5, &v3[1], 0);
        sub_020183C4(param0, 6, &v3[2], 0);
        sub_020183C4(param0, 7, &v3[3], 0);
        sub_02019EBC(param0, 4);
        sub_02019EBC(param0, 5);
        sub_02019EBC(param0, 6);
        sub_02019EBC(param0, 7);
        GXLayers_EngineBToggleLayers((GX_PLANEMASK_BG2), 0);
    }
}

void ov76_0223ECB0 (void * param0)
{
    UnkStruct_ov76_0223DE00 * v0 = param0;

    sub_02008A94(v0->unk_D4.unk_D0);
    sub_0201DCAC();
    sub_0200C800();
    sub_02003694(v0->unk_D4.unk_14);
    sub_0201C2B8(v0->unk_D4.unk_10);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}
