#include "overlay022/ov22_02259560.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_020298D8.h"

#include "overlay022/ov22_02254DE0.h"
#include "overlay022/ov22_02259098.h"
#include "overlay022/struct_ov22_02255040.h"
#include "overlay022/struct_ov22_02259560.h"
#include "overlay022/struct_ov22_022596B0.h"

void ov22_02259560(UnkStruct_ov22_02259560 *param0, int param1) {
    if (param0->unk_04 < 3) {
        UnkStruct_ov22_02255040 *v0 = param0->unk_00;
        ov22_02254F6C(v0, param1);
    } else {
        UnkStruct_020298D8 *v1 = param0->unk_00;
        ov22_022591D0(v1, param1);
    }
}

BOOL ov22_02259578(UnkStruct_ov22_02259560 *param0, int param1, int param2) {
    if (param0->unk_04 < 3) {
        UnkStruct_ov22_02255040 *v0 = param0->unk_00;

        if (param1 == 0xffffffff) {
            return ov22_02254E44(v0);
        } else {
            return ov22_02254EDC(v0, param1, param2);
        }
    }

    {
        UnkStruct_020298D8 *v1 = param0->unk_00;

        if (param1 == 0xffffffff) {
            return ov22_02259238(v1);
        } else {
            return ov22_02259244(v1, param1, param2);
        }
    }
}

BOOL ov22_022595AC(UnkStruct_ov22_02259560 *param0, int *param1, int *param2, NNSG2dCharacterData **param3) {
    NNSG2dCharacterData *v0;

    if (param0->unk_04 == 0) {
        UnkStruct_ov22_02255040 *v1 = param0->unk_00;

        v0 = param3[v1->unk_00];
        return ov22_02254E54(v1, param1, param2, v0);
    }

    if (param0->unk_04 == 1) {
        UnkStruct_ov22_02255040 *v2 = param0->unk_00;
        int v3 = v2->unk_00 + 100;

        v0 = param3[v3];
        return ov22_02254E54(v2, param1, param2, v0);
    }

    if (param0->unk_04 == 2) {
        UnkStruct_ov22_02255040 *v4 = param0->unk_00;
        int v5 = v4->unk_00 + 100;

        v0 = param3[v5];
        return ov22_02254E54(v4, param1, param2, v0);
    }

    {
        UnkStruct_020298D8 *v6 = param0->unk_00;

        v0 = param3[(100 + 18)];
        return ov22_02259278(v6, param1, param2, v0);
    }
}

void ov22_022595F8(UnkStruct_ov22_02259560 *param0, int param1, int param2) {
    if (param0->unk_04 < 3) {
        UnkStruct_ov22_02255040 *v0 = param0->unk_00;

        ov22_02254EF4(v0, param1, param2);
    } else {
        UnkStruct_020298D8 *v1 = param0->unk_00;
        int v2, v3;

        ov22_02259270(v1, &v2, &v3);
        v2 /= 2;
        v3 /= 2;
        param1 += v2;
        param2 += v3;
        ov22_022591EC(v1, param1, param2);
    }
}

void ov22_02259648(UnkStruct_ov22_02259560 *param0, int *param1, int *param2) {
    if (param0->unk_04 < 3) {
        UnkStruct_ov22_02255040 *v0 = param0->unk_00;
        ov22_02254F00(v0, param1, param2);
    } else {
        UnkStruct_020298D8 *v1 = param0->unk_00;
        int v2, v3;

        ov22_02259250(v1, param1, param2);
        ov22_02259270(v1, &v2, &v3);

        v2 /= 2;
        v3 /= 2;
        *param1 -= v2;
        *param2 -= v3;
    }
}

void ov22_02259698(UnkStruct_ov22_02259560 *param0, int *param1, int *param2) {
    if (param0->unk_04 < 3) {
        UnkStruct_ov22_02255040 *v0 = param0->unk_00;
        ov22_02254F30(v0, param1, param2);
    } else {
        UnkStruct_020298D8 *v1 = param0->unk_00;
        ov22_02259270(v1, param1, param2);
    }
}

void ov22_022596B0(UnkStruct_ov22_02259560 *param0, int *param1, int *param2, int *param3, int *param4) {
    if (param0->unk_04 < 3) {
        UnkStruct_ov22_02255040 *v0 = param0->unk_00;
        ov22_02254F84(v0, param1, param3);
        *param2 = *param1;
        *param4 = *param3;
    } else {
        UnkStruct_ov22_022596B0 v1;
        UnkStruct_020298D8 *v2 = param0->unk_00;

        ov22_02259358(v2, &v1);

        *param1 = v1.unk_00;
        *param2 = v1.unk_01;
        *param3 = v1.unk_02;
        *param4 = v1.unk_03;
    }
}

void ov22_022596EC(UnkStruct_ov22_02259560 *param0, int param1, int param2) {
    UnkStruct_ov22_02259560 *v0;
    int v1, v2;

    v0 = param0->unk_08;

    while (v0 != param0) {
        ov22_02259648(v0, &v1, &v2);

        v1 += param1;
        v2 += param2;

        ov22_022595F8(v0, v1, v2);

        v0 = v0->unk_08;
    }
}

void ov22_02259724(UnkStruct_ov22_02259560 *param0, int *param1, int *param2, int *param3, int *param4) {
    int v0, v1;
    int v2, v3;
    int v4, v5;
    int v6, v7;

    ov22_02259698(param0, &v0, &v1);
    ov22_02259648(param0, &v2, &v3);
    ov22_022596B0(param0, &v4, &v6, &v5, &v7);

    *param1 = v3 + v5;
    *param2 = v3 + v1 - v7;
    *param3 = v2 + v4;
    *param4 = v2 + v0 - v6;
}

void ov22_02259780(UnkStruct_ov22_02259560 *param0, int *param1, int *param2) {
    int v0, v1;
    int v2, v3;

    ov22_02259698(param0, &v0, &v1);
    ov22_02259648(param0, &v2, &v3);

    *param1 = v2 + (v0 / 2);
    *param2 = v3 + (v1 / 2);
}
