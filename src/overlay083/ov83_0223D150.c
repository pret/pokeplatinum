#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02025E6C_decl.h"

#include "overlay083/struct_ov83_0223B784.h"
#include "overlay083/struct_ov83_0223D2E8.h"
#include "overlay083/struct_ov83_0223DB4C.h"
#include "overlay083/struct_ov83_0223DB4C_sub1.h"
#include "overlay083/struct_ov83_0223F88C.h"
#include "overlay083/struct_ov83_0223FCE8.h"
#include "overlay083/struct_ov83_022401AC.h"

#include "unk_020329E0.h"
#include "unk_02034198.h"
#include "overlay083/ov83_0223B5A0.h"
#include "overlay083/ov83_0223D144.h"
#include "overlay083/ov83_0223D150.h"
#include "overlay083/ov83_0223D4CC.h"
#include "overlay083/ov83_0223F7F4.h"

void ov83_0223D150 (UnkStruct_ov83_0223B784 * param0, UnkStruct_02025E6C * param1)
{
    int v0;
    int v1;

    if (param0->unk_1490 == 1) {
        param0->unk_1488 = sub_02035E18();
    } else {
        param0->unk_1488 = 1;
    }

    param0->unk_148C = ov83_0223D4CC(ov83_0223D144(), ov83_0223D14C(), param0, param0->unk_1490, param0->unk_00);
    memset(param0->unk_1494.unk_130, 4, sizeof(u8) * 4);

    if (param0->unk_1490 == 1) {
        v0 = 0;

        for (v1 = 0; v1 < 4; v1++) {
            param0->unk_1494.unk_134[v1] = sub_02032EE8(v1);

            if (param0->unk_1494.unk_134[v1] != NULL) {
                param0->unk_1494.unk_130[v0] = v1;
                v0++;
            }
        }
    } else {
        param0->unk_1494.unk_130[0] = 0;
        param0->unk_1494.unk_134[0] = param1;
    }
}

void ov83_0223D1EC (UnkStruct_ov83_0223B784 * param0)
{
    ov83_0223D558(param0->unk_148C);
    param0->unk_148C = NULL;
}

void ov83_0223D204 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov83_0223B784 * v0 = param3;
    ov83_0223B774(v0, 3);
}

void ov83_0223D210 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov83_0223B784 * v0 = param3;
    ov83_0223B77C(v0, 8);
}

void ov83_0223D21C (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov83_0223B784 * v0 = param3;

    memcpy(&v0->unk_1494.unk_6C, param2, param1);
    v0->unk_1494.unk_90[0].unk_08 = v0->unk_1494.unk_6C.unk_10;
    ov83_0223B774(v0, 5);
}

void ov83_0223D258 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov83_0223B784 * v0 = param3;
    int v1;
    int v2;

    if (ov83_0223D570(v0->unk_148C) == 0) {
        memcpy(&v0->unk_1494.unk_114[param0], param2, param1);
        v0->unk_1494.unk_124[param0] = 1;
        v0->unk_1494.unk_34.unk_00[param0] = v0->unk_1494.unk_114[param0];
        v2 = 0;

        for (v1 = 0; v1 < 4; v1++) {
            if (v0->unk_1494.unk_124[v1] == 1) {
                v2++;
            }
        }

        if (v2 >= v0->unk_1488) {
            ov83_0223FF44(&v0->unk_34C, &v0->unk_1494.unk_34.unk_10, v0->unk_1488);
            ov83_0223D508(24, &v0->unk_1494.unk_34, ov83_0223D4B4(), v0->unk_148C);
        }
    }
}

void ov83_0223D2E8 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov83_0223B784 * v0 = param3;
    UnkStruct_ov83_0223D2E8 * v1;
    UnkStruct_ov83_0223FCE8 * v2;
    BOOL v3;
    u8 v4;

    v1 = param2;
    v2 = &v1->unk_08;

    if ((v0->unk_1494.unk_90[param0].unk_08.unk_0E == 1) && (v2->unk_0E == 0) && (param0 == 0)) {
        v3 = 1;
        v4 = v0->unk_1494.unk_90[param0].unk_08.unk_0C;
    } else {
        v3 = 0;
    }

    memcpy(&v0->unk_1494.unk_90[param0], param2, param1);

    if (v3 == 1) {
        v0->unk_1494.unk_90[param0].unk_08.unk_0E = v3;
        v0->unk_1494.unk_90[param0].unk_08.unk_0C = v4;
    }

    v0->unk_1666++;
}

void ov83_0223D354 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov83_0223B784 * v0 = param3;
    UnkStruct_ov83_0223FCE8 * v1;
    BOOL v2;
    u8 v3;

    v1 = param2;

    if ((v0->unk_1494.unk_90[param0].unk_08.unk_0E == 1) && (v1->unk_0E == 0)) {
        v2 = 1;
        v3 = v0->unk_1494.unk_90[param0].unk_08.unk_0C;
    } else {
        v2 = 0;
    }

    memcpy(&v0->unk_1494.unk_90[param0].unk_08, param2, param1);

    if (v2 == 1) {
        v0->unk_1494.unk_90[param0].unk_08.unk_0E = v2;
        v0->unk_1494.unk_90[param0].unk_08.unk_0C = v3;
    }
}

void ov83_0223D3A8 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov83_0223B784 * v0 = param3;

    memcpy(&v0->unk_1494.unk_90[param0].unk_00, param2, param1);
    v0->unk_165C[param0]++;
}

void ov83_0223D3D8 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov83_0223B784 * v0 = param3;

    memcpy(&v0->unk_1494.unk_58, param2, param1);
    ov83_0223B774(v0, 10);
}

void ov83_0223D3F8 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov83_0223B784 * v0 = param3;
    memcpy(v0->unk_1494.unk_100, param2, param1);
}

void ov83_0223D410 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov83_0223B784 * v0 = param3;

    memcpy(&v0->unk_1494.unk_145, param2, param1);
    ov83_0223B774(v0, 12);
}

void ov83_0223D430 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov83_0223B784 * v0 = param3;
    int v1;
    int v2;
    u8 v3;

    if (ov83_0223D570(v0->unk_148C) == 0) {
        memcpy(&v0->unk_1494.unk_128[param0], param2, param1);
        v0->unk_1494.unk_12C[param0] = 1;

        v2 = 0;
        v3 = 1;

        for (v1 = 0; v1 < 4; v1++) {
            if (v0->unk_1494.unk_12C[v1] == 1) {
                v3 &= v0->unk_1494.unk_128[v1];
                v2++;
            }
        }

        if (v2 >= v0->unk_1488) {
            ov83_0223D508(29, &v3, ov83_0223D4B0(), v0->unk_148C);
        }
    }
}

int ov83_0223D4AC (void)
{
    return 0;
}

int ov83_0223D4B0 (void)
{
    return 1;
}

int ov83_0223D4B4 (void)
{
    return sizeof(UnkStruct_ov83_0223DB4C);
}

int ov83_0223D4B8 (void)
{
    return sizeof(UnkStruct_ov83_0223DB4C_sub1);
}

int ov83_0223D4BC (void)
{
    return sizeof(UnkStruct_ov83_0223D2E8);
}

int ov83_0223D4C0 (void)
{
    return sizeof(UnkStruct_ov83_022401AC);
}

int ov83_0223D4C4 (void)
{
    return sizeof(UnkStruct_ov83_0223FCE8);
}

int ov83_0223D4C8 (void)
{
    return sizeof(UnkStruct_ov83_0223F88C);
}
