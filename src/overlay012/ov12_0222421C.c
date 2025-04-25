#include "overlay012/ov12_0222421C.h"

#include <nitro.h>
#include <string.h>

#include "unk_02014000.h"

#include "overlay012/ov12_0221FC20.h"
#include "overlay012/ov12_02225104.h"
#include "overlay012/ov12_02225640.h"
#include "overlay012/ov12_02235254.h"
#include "overlay012/struct_ov12_0221FCDC_decl.h"
#include "overlay012/struct_ov12_02225640.h"

#include "heap.h"
#include "inlines.h"
#include "spl.h"
#include "unk_02014000.h"

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
} UnkStruct_ov12_022396AC;

static void ov12_0222421C(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1);
static void ov12_022242E0(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1);
static void ov12_02224614(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1);
static void ov12_02224E74(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1);
static void ov12_02224EA8(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1);
static void ov12_02224EB8(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1);
static void ov12_02225008(UnkStruct_ov12_02225640 *param0, int param1, VecFx32 *param2);
static void ov12_02225094(UnkStruct_ov12_02225640 *param0, VecFx32 *param1);

static void ov12_0222421C(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1)
{
    if (param1->unk_0C[2] != 0) {
        ov12_022242E0(param0, param1);
    }

    if (param1->unk_0C[3] != 0) {
        ov12_02224614(param0, param1);
    }

    if (param1->unk_0C[4] != 0x0) {
        ov12_02224E74(param0, param1);
    }

    ov12_02224EA8(param0, param1);

    if (param1->unk_0C[0] != 0) {
        ov12_02224EB8(param0, param1);
    }
}

static void ov12_02224260(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1, VecFx32 *param2)
{
    UnkStruct_ov12_0221FCDC *v0;
    ParticleSystem *v1;
    int v2;
    int v3;
    int v4;
    int v5;

    v0 = param1->unk_00;

    v1 = ov12_02220250(v0);
    v2 = sub_02014790(v1);
    v4 = ov12_02220248(v0);
    v5 = ov12_0223525C(v0, v4);

    if (v5 == 0x3) {
        v3 = 0;
    } else {
        v3 = 1;
    }

    ov12_02235448(v3, param2, ov12_0221FDD4(v0), v2);
}

static void ov12_022242A0(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1, VecFx32 *param2)
{
    UnkStruct_ov12_0221FCDC *v0;
    ParticleSystem *v1;
    int v2;
    int v3;
    int v4;
    int v5;
    int v6;

    v0 = param1->unk_00;
    v1 = ov12_02220250(v0);
    v3 = sub_02014790(v1);
    v5 = ov12_02220240(v0);
    v6 = ov12_0223525C(v0, v5);

    if (v6 == 0x3) {
        v4 = 0;
    } else {
        v4 = 1;
    }

    ov12_02235448(v4, param2, ov12_0221FDD4(v0), v3);
}

static void ov12_022242E0(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1)
{
    VecFx32 v0;

    switch (param1->unk_0C[2]) {
    case 0:
        break;
    case 1:
        ov12_02235508(param1->unk_00, param1->unk_24, &v0);
        break;
    case 2:
        ov12_02235508(param1->unk_00, param1->unk_28, &v0);
        break;
    case 6:
        ov12_02235538(param1->unk_00, param1->unk_24, &v0);
        break;
    case 7:
        ov12_02235538(param1->unk_00, param1->unk_28, &v0);
        break;
    case 10:
        ov12_02235568(param1->unk_00, param1->unk_24, &v0);
        break;
    case 11:
        ov12_02235568(param1->unk_00, param1->unk_28, &v0);
        break;
    case 14:
        ov12_02235598(param1->unk_00, param1->unk_24, &v0);
        break;
    case 15:
        ov12_02235598(param1->unk_00, param1->unk_28, &v0);
        break;
    case 16:
        ov12_022355C8(param1->unk_00, param1->unk_24, &v0);
        break;
    case 17:
        ov12_022355C8(param1->unk_00, param1->unk_28, &v0);
        break;
    case 18:
        ov12_022355F8(param1->unk_00, param1->unk_24, &v0);
        break;
    case 19:
        ov12_022355F8(param1->unk_00, param1->unk_28, &v0);
        break;
    case 20:
        ov12_02235628(param1->unk_00, param1->unk_24, &v0);
        break;
    case 21:
        ov12_02235628(param1->unk_00, param1->unk_28, &v0);
        break;
    case 22:
        ov12_02235658(param1->unk_00, param1->unk_24, &v0);
        break;
    case 23:
        ov12_02235658(param1->unk_00, param1->unk_28, &v0);
        break;
    case 24:
        ov12_02235688(param1->unk_00, param1->unk_24, &v0);
        break;
    case 25:
        ov12_02235688(param1->unk_00, param1->unk_28, &v0);
        break;
    case 26:
        ov12_022356B8(param1->unk_00, param1->unk_24, &v0);
        break;
    case 27:
        ov12_022356B8(param1->unk_00, param1->unk_28, &v0);
        break;
    case 8:
        ov12_02235718(param1->unk_00, param1->unk_24, &v0);
        break;
    case 9:
        ov12_02235718(param1->unk_00, param1->unk_28, &v0);
        break;
    case 3: {
        int v1[3 + 1];

        ov12_0222325C(param1->unk_00, v1, 3 + 1);
        param1->unk_08 = ov12_02224FC4(param1);
        VEC_Set(&v0, v1[1], v1[2], v1[3]);

        if (v1[0] == 1) {
            param1->unk_08 = 1;
        }

        v0.x *= param1->unk_08;
        v0.y *= param1->unk_08;
    } break;
    case 4:
        ov12_02235508(param1->unk_00, param1->unk_24, &v0);
        ov12_02225094(param1, &v0);
        break;
    case 5:
        ov12_02235508(param1->unk_00, param1->unk_28, &v0);
        ov12_02225094(param1, &v0);
        break;
    case 100:
        ov12_02235508(param1->unk_00, param1->unk_24, &v0);
        ov12_02225008(param1, param1->unk_24, &v0);
        break;
    case 101:
        ov12_02235508(param1->unk_00, param1->unk_28, &v0);
        ov12_02225008(param1, param1->unk_28, &v0);
        break;
    case 12:
        ov12_022242A0(param0, param1, &v0);
        ov12_02225094(param1, &v0);
        break;
    case 13:
        ov12_02224260(param0, param1, &v0);
        ov12_02225094(param1, &v0);
        break;
    case 28:
        VEC_Set(&v0, 11488, 0, 0);
        break;
    case 33:
        VEC_Set(&v0, -5000, -6000, 0);
        break;
    case 34:
        ov12_02235508(param1->unk_00, param1->unk_24, &v0);
        break;

    case 31: {
        int v2;
        int v3[][2] = {
            { -5760, -4352 },
            { 9488, -1984 },
            { -11760, 3280 },
            { 13768, -1464 },
            { -5376, -2808 },
            { 6984, 2056 }
        };

        v2 = ov12_02235254(param1->unk_00, param1->unk_24);
        VEC_Set(&v0, v3[v2][0], v3[v2][1], 0);
    } break;
    case 30: {
        int v4;
        int v5[][2] = {
            { -11020, -3488 },
            { 10880, 7656 },
            { -15060, -3160 },
            { 15000, 7240 },
            { -8224, -4608 },
            { 8424, 8896 },
            { 15000, -2752 },
        };

        if (ov12_0221FDD4(param1->unk_00) == 1) {
            v4 = 6;
        } else {
            v4 = ov12_02235254(param1->unk_00, param1->unk_24);
        }

        VEC_Set(&v0, v5[v4][0], v5[v4][1], 0);
    } break;
    case 32: {
        int v6;
        int v7[][2] = {
            { -4608, -4480 },
            { 7624, 2248 },
            { -9024, -3018 },
            { 13056, 2816 },
            { -2432, -4800 },
            { 6208, 3840 },
            { 7072, -3648 }
        };

        if (ov12_0221FDD4(param1->unk_00) == 1) {
            v6 = 6;
        } else {
            v6 = ov12_02235254(param1->unk_00, param1->unk_24);
        }

        VEC_Set(&v0, v7[v6][0], v7[v6][1], 0);
    } break;
    }

    param1->unk_2C = v0;

    SPLEmitter_SetPosX(param0, v0.x);
    SPLEmitter_SetPosY(param0, v0.y);
    SPLEmitter_SetPosZ(param0, v0.z);
}

static const UnkStruct_ov12_022396AC Unk_ov12_022396AC[6][6];
static const UnkStruct_ov12_022396AC Unk_ov12_02238FEC[6][6];
static const UnkStruct_ov12_022396AC Unk_ov12_0223919C[6][6];
static const UnkStruct_ov12_022396AC Unk_ov12_022394FC[6][6];
static const UnkStruct_ov12_022396AC Unk_ov12_0223985C[6][6];
static const UnkStruct_ov12_022396AC Unk_ov12_0223934C[6][6];
static const UnkStruct_ov12_022396AC Unk_ov12_02239A0C[6][6];
static const UnkStruct_ov12_022396AC Unk_ov12_02239BBC[6][6];

static void ov12_02224614(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1)
{
    int v0;
    int v1;
    VecFx16 v2;

    v0 = ov12_02235254(param1->unk_00, param1->unk_24);
    v1 = ov12_02235254(param1->unk_00, param1->unk_28);

    switch (param1->unk_0C[3]) {
    case 0:
        VEC_Fx16Set(&v2, 0, 0, 0);
        break;
    case 1:
    case 2:
        if (ov12_0221FDD4(param1->unk_00) == 1) {
            if (param1->unk_0C[1] == 2) {
                VEC_Fx16Set(&v2, -3336, +1840, 736);
            } else {
                VEC_Fx16Set(&v2, +2336, -1440, 736);
            }
        } else {
            VEC_Fx16Set(&v2, Unk_ov12_022396AC[v0][v1].unk_00, Unk_ov12_022396AC[v0][v1].unk_04, Unk_ov12_022396AC[v0][v1].unk_08 / 2);
        }
        break;
    case 4:
        if (ov12_0221FDD4(param1->unk_00) == 1) {
            VEC_Fx16Set(&v2, -Unk_ov12_022396AC[v0][v1].unk_00, Unk_ov12_022396AC[v0][v1].unk_04, Unk_ov12_022396AC[v0][v1].unk_08 / 2);
        } else {
            if (ov12_0223525C(param1->unk_00, param1->unk_24) == ov12_0223525C(param1->unk_00, param1->unk_28)) {
                VEC_Fx16Set(&v2, Unk_ov12_022396AC[v0][v1].unk_00, Unk_ov12_022396AC[v0][v1].unk_04, Unk_ov12_022396AC[v0][v1].unk_08 / 2);
            } else if (ov12_0223525C(param1->unk_00, param1->unk_24) == 0x3) {
                VEC_Fx16Set(&v2, Unk_ov12_022396AC[0][1].unk_00, Unk_ov12_022396AC[0][1].unk_04, Unk_ov12_022396AC[0][1].unk_08 / 2);
            } else {
                VEC_Fx16Set(&v2, Unk_ov12_022396AC[1][0].unk_00, Unk_ov12_022396AC[1][0].unk_04, Unk_ov12_022396AC[1][0].unk_08 / 2);
            }
        }
        break;
    case 5:
        if (ov12_0221FDD4(param1->unk_00) == 1) {
            VEC_Fx16Set(&v2, -Unk_ov12_022396AC[v0][v1].unk_00, Unk_ov12_022396AC[v0][v1].unk_04, Unk_ov12_022396AC[v0][v1].unk_08 / 2);
        } else {
            if (ov12_0223525C(param1->unk_00, param1->unk_24) == ov12_0223525C(param1->unk_00, param1->unk_28)) {
                VEC_Fx16Set(&v2, Unk_ov12_022396AC[v0][v1].unk_00, Unk_ov12_022396AC[v0][v1].unk_04, Unk_ov12_022396AC[v0][v1].unk_08 / 2);
            } else if (ov12_0223525C(param1->unk_00, param1->unk_24) == 0x3) {
                VEC_Fx16Set(&v2, Unk_ov12_022396AC[0][1].unk_00, Unk_ov12_022396AC[0][1].unk_04, Unk_ov12_022396AC[0][1].unk_08 / 2);
            } else {
                VEC_Fx16Set(&v2, Unk_ov12_022396AC[1][0].unk_00, Unk_ov12_022396AC[1][0].unk_04, Unk_ov12_022396AC[1][0].unk_08 / 2);
            }
        }
        break;
    case 8:
    case 9:
        if (ov12_0221FDD4(param1->unk_00) == 1) {
            if (param1->unk_0C[1] == 2) {
                VEC_Fx16Set(&v2, -2336, +1440, 736);
            } else {
                VEC_Fx16Set(&v2, +2336, -1440, 736);
            }
        } else {
            VEC_Fx16Set(&v2, Unk_ov12_02238FEC[v0][v1].unk_00, Unk_ov12_02238FEC[v0][v1].unk_04, Unk_ov12_02238FEC[v0][v1].unk_08 / 2);
        }
        break;
    case 10:
    case 11:
        if (ov12_0221FDD4(param1->unk_00) == 1) {
            VEC_Fx16Set(&v2, -2336, +1440, 736);
        } else {
            VEC_Fx16Set(&v2, Unk_ov12_0223919C[v0][v1].unk_00, Unk_ov12_02238FEC[v0][v1].unk_04, Unk_ov12_02238FEC[v0][v1].unk_08 / 2);
        }
        break;
    case 12:
    case 13:
        if (ov12_0221FDD4(param1->unk_00) == 1) {
            VEC_Fx16Set(&v2, -2936, +1440, 736);
        } else {
            VEC_Fx16Set(&v2, Unk_ov12_022394FC[v0][v1].unk_00, Unk_ov12_022394FC[v0][v1].unk_04, Unk_ov12_022394FC[v0][v1].unk_08);
        }
        break;
    case 14:
    case 15:
        if (ov12_0221FDD4(param1->unk_00) == 1) {
            VEC_Fx16Set(&v2, -2336, +1440, 736);
        } else {
            VEC_Fx16Set(&v2, Unk_ov12_0223985C[v0][v1].unk_00, Unk_ov12_0223985C[v0][v1].unk_04, Unk_ov12_0223985C[v0][v1].unk_08);
        }
        break;
    case 16:
    case 17:
        if (ov12_0221FDD4(param1->unk_00) == 1) {
            VEC_Fx16Set(&v2, -2336, +1440, 736);
        } else {
            VEC_Fx16Set(&v2, Unk_ov12_0223934C[v0][v1].unk_00, Unk_ov12_0223934C[v0][v1].unk_04, Unk_ov12_0223934C[v0][v1].unk_08);
        }
        break;
    case 18:
    case 19:
        if (ov12_0221FDD4(param1->unk_00) == 1) {
            VEC_Fx16Set(&v2, -2336, +1440, 736);
        } else {
            VEC_Fx16Set(&v2, Unk_ov12_02239A0C[v0][v1].unk_00, Unk_ov12_02239A0C[v0][v1].unk_04, Unk_ov12_02239A0C[v0][v1].unk_08);
        }
        break;
    case 20:
    case 21:
        if (ov12_0221FDD4(param1->unk_00) == 1) {
            VEC_Fx16Set(&v2, -4336, +1440, 736);
        } else {
            VEC_Fx16Set(&v2, Unk_ov12_02239BBC[v0][v1].unk_00, Unk_ov12_02239BBC[v0][v1].unk_04, Unk_ov12_02239BBC[v0][v1].unk_08);
        }
        break;
    case 6:
    case 7: {
        int v3;
        int v4[4];
        int v5[4];
        int v6[4];
        int v7[4];
        int v8[4];
        int v9[4];
        int v10[4];
        int v11[7][4] = {
            {
                3176,
                1960,
                -296,
                0,
            },
            {
                3232,
                1600,
                1568,
                0,
            },
            {
                5984,
                2496,
                6208,
                0,
            },
            {
                2688,
                1408,
                1536,
                0,
            },
            {
                -896,
                384,
                800,
                0,
            },
            {
                2336,
                1440,
                736,
                0,
            },
            {
                1888,
                1856,
                1760,
                0,
            },
        };
        int v12[4] = {
            -2336,
            1440,
            736,
            0,
        };

        for (v3 = 0; v3 < 4; v3++) {
            v4[v3] = v11[0][v3];
            v5[v3] = v11[1][v3];
            v6[v3] = v11[2][v3];
            v7[v3] = v11[3][v3];
            v8[v3] = v11[4][v3];
            v9[v3] = v11[5][v3];
            v10[v3] = v11[6][v3];
        }

        if (ov12_0221FDD4(param1->unk_00) == 1) {
            for (v3 = 0; v3 < 4; v3++) {
                v4[v3] = v12[v3];
                v5[v3] = v12[v3];
                v6[v3] = v12[v3];
                v7[v3] = v12[v3];
                v8[v3] = v12[v3];
                v9[v3] = v12[v3];
                v10[v3] = v12[v3];
            }
        }

        switch (v0) {
        case 0:
        default:
            VEC_Fx16Set(&v2, v4[0], v4[1], v4[2]);
            break;
        case 1:
            if (v4[3] == 1) {
                VEC_Fx16Set(&v2, v4[0], v4[1], v4[2]);
            } else {
                VEC_Fx16Set(&v2, -v4[0], -v4[1], -v4[2]);
            }
            break;
        case 2:
            if (v1 == 3) {
                VEC_Fx16Set(&v2, v5[0], v5[1], v5[2]);
            } else if (v1 == 5) {
                VEC_Fx16Set(&v2, v7[0], v7[1], v7[2]);
            } else {
                VEC_Fx16Set(&v2, v6[0], v6[1], v6[2]);
            }
            break;
        case 3:
            if (v1 == 2) {
                if (v5[3] == 1) {
                    VEC_Fx16Set(&v2, v5[0], v5[1], v5[2]);
                } else {
                    VEC_Fx16Set(&v2, -v5[0], -v5[1], -v5[2]);
                }
            } else if (v1 == 5) {
                if (v6[3] == 1) {
                    VEC_Fx16Set(&v2, -v8[0], -v8[1], -v8[2]);
                } else {
                    VEC_Fx16Set(&v2, v8[0], v8[1], v8[2]);
                }
            } else {
                if (v9[3] == 1) {
                    VEC_Fx16Set(&v2, v9[0], v9[1], v9[2]);
                } else {
                    VEC_Fx16Set(&v2, -v9[0], -v9[1], -v9[2]);
                }
            }
            break;
        case 4:
            if (v1 == 3) {
                VEC_Fx16Set(&v2, v9[0], v9[1], v9[2]);
            } else if (v1 == 5) {
                VEC_Fx16Set(&v2, v10[0], v10[1], v10[2]);
            } else {
                VEC_Fx16Set(&v2, v8[0], v8[1], v8[2]);
            }
            break;
        case 5:
            if (v1 == 3) {
                if (v5[3] == 1) {
                    VEC_Fx16Set(&v2, v8[0], v8[1], v8[2]);
                } else {
                    VEC_Fx16Set(&v2, -v8[0], -v8[1], -v8[2]);
                }
            } else if (v1 == 2) {
                if (v5[3] == 1) {
                    VEC_Fx16Set(&v2, v7[0], v7[1], v7[2]);
                } else {
                    VEC_Fx16Set(&v2, -v7[0], -v7[1], -v7[2]);
                }
            } else {
                if (v5[3] == 1) {
                    VEC_Fx16Set(&v2, v10[0], v10[1], v10[2]);
                } else {
                    VEC_Fx16Set(&v2, -v10[0], -v10[1], -v10[2]);
                }
            }
            break;
        }
    } break;
    case 3:
        VEC_Fx16Set(&v2, -800, 1200, 500);
        break;
    case 22:
        VEC_Fx16Set(&v2, -3410, -2644, 0);
        break;
    case 25:
        VEC_Fx16Set(&v2, -3440, 1952, 0);
        break;
    case 26:
        if (ov12_0223525C(param1->unk_00, param1->unk_24) == 0x3) {
            VEC_Fx16Set(&v2, 3776, 2112, 0);
        } else {
            VEC_Fx16Set(&v2, -6000, -2200, 0);
        }
        break;
    case 24: {
        int v13;
        int v14[][2] = {
            { 2864, 3752 },
            { -2944, 1456 },
            { 2840, -854 },
            { -3760, -2536 },
            { 2288, 2408 },
            { -3312, -2776 },
        };

        v13 = ov12_02235254(param1->unk_00, param1->unk_24);
        VEC_Fx16Set(&v2, v14[v13][0], v14[v13][1], 0);
    } break;
    }

    SPLEmitter_SetAxis(param0, &v2);
}

static void ov12_02224E74(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1)
{
    int v0;
    int v1;
    int v2;

    v0 = ov12_02225614();

    for (v1 = 0; v1 < v0; v1++) {
        v2 = ov12_022255EC(v1);

        if (inline_ov12_02235998(param1->unk_0C[4], v2) == 0) {
            continue;
        }

        ov12_022255D4(v1, param0, param1);
    }
}

static void ov12_02224EA8(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1)
{
    ov12_0222584C(param1->unk_0C[5], param0, param1);
}

static void ov12_02224EB8(SPLEmitter *param0, UnkStruct_ov12_02225640 *param1)
{
    fx32 v0;
    int v1;
    int v2;
    int v3 = 0;

    v1 = ov12_02235254(param1->unk_00, param1->unk_24);
    v2 = ov12_02235254(param1->unk_00, param1->unk_28);

    switch (v2) {
    case 0:
    case 2:
    case 4:
        v3 = 0;
        break;
    case 1:
    case 3:
    case 5:
        v3 = 1;
        break;
    }

    switch (param1->unk_0C[0]) {
    case 0:
        break;
    case 1:
        if (v2 == 0) {
            v0 = 256;
        } else {
            v0 = -5120;
        }
        break;
    case 2:
        if (v2 == 0) {
            v0 = 0;
        } else {
            v0 = -5376;
        }
        break;
    case 3:
        break;
    }

    SPLEmitter_SetPosZ(param0, v0);
}

void ov12_02224F14(SPLEmitter *param0)
{
    UnkStruct_ov12_0221FCDC *v0;
    UnkStruct_ov12_02225640 *v1;

    v0 = sub_02014764();
    v1 = Heap_AllocFromHeap(ov12_0221FDE4(v0), sizeof(UnkStruct_ov12_02225640));

    v1->unk_00 = v0;
    v1->unk_04 = ov12_02220250(v1->unk_00);

    ov12_0222325C(v1->unk_00, v1->unk_0C, 6);

    {
        switch (v1->unk_0C[1]) {
        case 0:
        default:
            v1->unk_24 = ov12_02220240(v1->unk_00);
            v1->unk_28 = ov12_02220248(v1->unk_00);
            break;
        case 1:
            v1->unk_24 = ov12_02220248(v1->unk_00);
            v1->unk_28 = ov12_02220240(v1->unk_00);
            break;
        case 2:
            v1->unk_24 = ov12_02220240(v1->unk_00);
            v1->unk_28 = ov12_02220248(v1->unk_00);
            break;
        case 3:
            v1->unk_24 = ov12_02220248(v1->unk_00);
            v1->unk_28 = ov12_02220240(v1->unk_00);
            break;
        case 4:
            v1->unk_24 = ov12_02220240(v1->unk_00);
            v1->unk_28 = ov12_02220248(v1->unk_00);
            break;
        }
    }

    ov12_0222421C(param0, v1);
    Heap_FreeToHeap(v1);
}

s8 ov12_02224FC4(UnkStruct_ov12_02225640 *param0)
{
    s8 v0 = 1;
    int v1 = ov12_02235254(param0->unk_00, param0->unk_24);
    int v2 = ov12_02235254(param0->unk_00, param0->unk_28);

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

static void ov12_02225008(UnkStruct_ov12_02225640 *param0, int param1, VecFx32 *param2)
{
    int v0;
    VecFx32 v1 = { 0, 0, 0 };
    int v2[4];
    int v3[4];

    for (v0 = 0; v0 < 6; v0++) {
        if (v0 == ov12_02235254(param0->unk_00, param1)) {
            ov12_0222325C(param0->unk_00, v2, 3 + 1);
        } else {
            ov12_0222325C(param0->unk_00, v3, 3 + 1);
        }
    }

    param0->unk_08 = ov12_02224FC4(param0);
    VEC_Set(&v1, v2[1], v2[2], v2[3]);

    if (v2[0] == 1) {
        param0->unk_08 = 1;
    }

    v1.x *= param0->unk_08;
    v1.y *= param0->unk_08;
    v1.z *= param0->unk_08;

    (*param2).x += v1.x;
    (*param2).y += v1.y;
    (*param2).z += v1.z;
}

static void ov12_02225094(UnkStruct_ov12_02225640 *param0, VecFx32 *param1)
{
    int v0[3 + 1];
    VecFx32 v1 = { 0, 0, 0 };

    ov12_0222325C(param0->unk_00, v0, 3 + 1);
    param0->unk_08 = ov12_02224FC4(param0);
    VEC_Set(&v1, v0[1], v0[2], v0[3]);

    if (v0[0] == 1) {
        param0->unk_08 = 1;
    }

    v1.x *= param0->unk_08;
    v1.y *= param0->unk_08;
    v1.z *= param0->unk_08;

    (*param1).x += v1.x;
    (*param1).y += v1.y;
    (*param1).z += v1.z;
}

static const UnkStruct_ov12_022396AC Unk_ov12_022396AC[][6] = {
    {
        { 0x0, 0x0, 0x0 },
        { 0xEC0, 0x840, 0xBF8 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
    },
    {
        { -4228, -2728, 0xBF8 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
    },
    {
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x1762, 0x630, 0xBF8 },
        { 0x410, -600, 0x0 },
        { 0x10D0, 0x9E8, 0xBF8 },
    },
    {
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { -6480, -2040, 0xBF8 },
        { 0x0, 0x0, 0x0 },
        { -4384, -2968, 0xBF8 },
        { -832, 0xE0, 0x0 },
    },
    {
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { -2008, 0x178, 0x0 },
        { 0xFC2, 0xA88, 0xBF8 },
        { 0x0, 0x0, 0x0 },
        { 0xC14, 0xBDC, 0xBF8 },
    },
    {
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { -4760, -2672, 0xBF8 },
        { 0x6C0, -400, 0x0 },
        { -3472, -4648, 0xBF8 },
        { 0x0, 0x0, 0x0 },
    },
};

static const UnkStruct_ov12_022396AC Unk_ov12_02238FEC[][6] = {
    {
        { 0x0, 0x0, 0x0 },
        { 0x968, 0x4E0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
    },
    {
        { -1544, -936, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
    },
    {
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x798, 0x150, 0x0 },
        { 0x238, -560, 0x0 },
        { 0x798, 0x3A0, 0x0 },
    },
    {
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { -2424, -816, 0x0 },
        { 0x0, 0x0, 0x0 },
        { -2424, -1024, 0x0 },
        { -872, 0x8, 0x0 },
    },
    {
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { -1432, 0x78, 0x0 },
        { 0x5D8, 0x308, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x5D8, 0x4B8, 0x0 },
    },
    {
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { -1920, -824, 0x0 },
        { 0x2A0, 0x8, 0x0 },
        { -1920, -1076, 0x0 },
        { 0x0, 0x0, 0x0 },
    },
};

static const UnkStruct_ov12_022396AC Unk_ov12_0223919C[][6] = {
    {
        { 0x0, 0x0, 0x0 },
        { 0x580, 0x2E0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
    },
    {
        { -1208, -784, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
    },
    {
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x7F8, 0x2A0, 0x0 },
        { 0x3A0, -616, 0x0 },
        { 0x6E0, 0x310, 0x0 },
    },
    {
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { -1816, -664, 0x0 },
        { 0x0, 0x0, 0x0 },
        { -1440, -928, 0x0 },
        { -680, 0x8, 0x0 },
    },
    {
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { -1032, 0x8, 0x0 },
        { 0x500, 0x2A0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x438, 0x408, 0x0 },
    },
    {
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { -1648, -480, 0x0 },
        { 0x318, 0x8, 0x0 },
        { -960, -928, 0x0 },
        { 0x0, 0x0, 0x0 },
    },
};

static const UnkStruct_ov12_022396AC Unk_ov12_022394FC[][6] = {
    {
        { 0x0, 0x0, 0x0 },
        { 0x9E0, 0x634, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
    },
    {
        { -4264, -5056, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
    },
    {
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0xF58, 0x458, 0x0 },
        { 0x2C0, -672, 0x0 },
        { 0xAE0, 0x460, 0x0 },
    },
    {
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { -4152, -1560, 0x0 },
        { 0x0, 0x0, 0x0 },
        { -3096, -1976, 0x0 },
        { -692, -24, 0x0 },
    },
    {
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { -792, 0x68, 0x0 },
        { 0xB08, 0x650, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x860, 0x790, 0x0 },
    },
    {
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { -2904, -1528, 0x0 },
        { 0x468, -408, 0x0 },
        { -1912, -2072, 0x0 },
        { 0x0, 0x0, 0x0 },
    },
};

static const UnkStruct_ov12_022396AC Unk_ov12_0223985C[][6] = {
    {
        { 0x0, 0x0, 0x0 },
        { 0x7A0, 0x448, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
    },
    {
        { -2016, -968, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
    },
    {
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x780, 0x300, 0x0 },
        { 0x340, -448, 0x0 },
        { 0x6C0, 0x340, 0x0 },
    },
    {
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { -2096, -744, 0x0 },
        { 0x0, 0x0, 0x0 },
        { -2096, -1240, 0x0 },
        { -752, 0x18, 0x0 },
    },
    {
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { -1008, 0xA8, 0x0 },
        { 0x6D0, 0x368, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x5D8, 0x4D8, 0x0 },
    },
    {
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { -1980, -712, 0x0 },
        { 0x278, -200, 0x0 },
        { -1680, -1656, 0x0 },
        { 0x0, 0x0, 0x0 },
    },
};

static const UnkStruct_ov12_022396AC Unk_ov12_0223934C[][6] = {
    {
        { 0x0, 0x0, 0x0 },
        { 0xC80, 0x6B8, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
    },
    {
        { -3520, -1976, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
    },
    {
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0xDE8, 0x3C8, 0x0 },
        { 0x640, -1472, 0x0 },
        { 0xCC0, 0x610, 0x0 },
    },
    {
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { -4000, -784, 0x0 },
        { 0x0, 0x0, 0x0 },
        { -3232, -2256, 0x0 },
        { -1248, 0x230, 0x0 },
    },
    {
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { -1080, 0x4D8, 0x0 },
        { 0xC48, 0x798, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x848, 0x920, 0x0 },
    },
    {
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { -2992, -1440, 0x0 },
        { 0x760, -592, 0x0 },
        { -2592, -2704, 0x0 },
        { 0x0, 0x0, 0x0 },
    },
};

static const UnkStruct_ov12_022396AC Unk_ov12_02239A0C[][6] = {
    {
        { 0x0, 0x0, 0x0 },
        { 0x640, -64, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
    },
    {
        { -1856, -1608, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
    },
    {
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x7D0, -192, 0x0 },
        { 0x2A0, -1328, 0x0 },
        { 0x7D0, 0xC0, 0x0 },
    },
    {
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { -2184, -1536, 0x0 },
        { 0x0, 0x0, 0x0 },
        { -2064, -1880, 0x0 },
        { -592, -792, 0x0 },
    },
    {
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { -1288, -128, 0x0 },
        { 0x5F8, -448, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x5F8, 0x128, 0x0 },
    },
    {
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { -1528, -1560, 0x0 },
        { 0x358, -368, 0x0 },
        { -1384, -2032, 0x0 },
        { 0x0, 0x0, 0x0 },
    },
};

static const UnkStruct_ov12_022396AC Unk_ov12_02239BBC[][6] = {
    {
        { 0x0, 0x0, 0x0 },
        { 0xE00, 0x800, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
    },
    {
        { -3392, -1776, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
    },
    {
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x1380, 0x7F0, 0x0 },
        { 0x400, -688, 0x0 },
        { 0xEC0, 0x7B0, 0x0 },
    },
    {
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { -5544, -1592, 0x0 },
        { 0x0, 0x0, 0x0 },
        { -3752, -2232, 0x0 },
        { -1704, 0x108, 0x0 },
    },
    {
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { -2008, -64, 0x0 },
        { 0xFF8, 0x930, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0xA54, 0x970, 0x0 },
    },
    {
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0 },
        { -3784, -1936, 0x0 },
        { 0x6F8, -16, 0x0 },
        { -3240, -2744, 0x0 },
        { 0x0, 0x0, 0x0 },
    },
};
