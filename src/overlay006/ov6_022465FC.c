#include "overlay006/ov6_022465FC.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0202440C_decl.h"

#include "field/field_system.h"
#include "overlay006/ov6_02246444.h"
#include "overlay006/struct_ov6_022465F4_decl.h"
#include "savedata/save_table.h"

#include "math.h"
#include "narc.h"
#include "rtc.h"
#include "unk_0202E2CC.h"
#include "unk_020559DC.h"
#include "unk_0206CCB0.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
} UnkStruct_ov6_02249470;

static const UnkStruct_ov6_02249470 Unk_ov6_02249470[] = {
    { 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6 },
    { 0x7, 0x8, 0x9, 0xA, 0xB, 0xC, 0xD },
    { 0xE, 0xF, 0x10, 0x11, 0x12, 0x13, 0x14 },
    { 0x15, 0x16, 0x17, 0x18, 0x19, 0x1A, 0x1B },
    { 0x1C, 0x1D, 0x1E, 0x1F, 0x20, 0x21, 0x22 },
    { 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29 },
    { 0x2A, 0x2B, 0x2C, 0x2D, 0x2E, 0x2F, 0x30 },
    { 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37 },
    { 0x38, 0x39, 0x3A, 0x3B, 0x3C, 0x3D, 0x3E }
};

void ov6_022465FC(FieldSystem *fieldSystem)
{
    TVBroadcast *v0 = SaveData_TVBroadcast(fieldSystem->saveData);
    sub_0202E374(v0, 1);
}

int ov6_0224660C(FieldSystem *fieldSystem)
{
    int v0;
    TVBroadcast *v1 = SaveData_TVBroadcast(fieldSystem->saveData);

    if (sub_0202E380(v1) == 1) {
        return 0;
    }

    v0 = sub_0202E3DC(v1);

    if (v0 == 0) {
        return 2;
    }

    if (v0 == 4) {
        return 1;
    }

    return 3;
}

static int ov6_0224663C(FieldSystem *fieldSystem)
{
    u8 v0;
    u8 v1[7];
    int v2, v3, v4;
    int v5;

    v2 = (sub_02055BD0(fieldSystem) + 6) % 7;
    v3 = sub_02055BDC(fieldSystem);
    v4 = sub_02055BE8(fieldSystem);
    v5 = (((19 + v3) % 24) * 4 + (v4 / 15)) * 7;

    NARC_ReadFromMemberByIndexPair(v1, NARC_INDEX_ARC__TV, 0, v5, sizeof(u8) * 7);
    v0 = v1[v2];

    GF_ASSERT(0 < v0 && v0 < 10);
    return v0;
}

static int ov6_0224669C(int param0)
{
    u8 v0;
    int v1 = (1 + 11) * (param0 - 1);

    NARC_ReadFromMemberByIndexPair(&v0, NARC_INDEX_ARC__TV, 1, v1, sizeof(u8));

    GF_ASSERT(v0 < 6);
    return v0;
}

static void ov6_022466C8(int param0, u8 *param1)
{
    u8 v0;
    int v1 = (1 + 11) * (param0 - 1) + 1;

    NARC_ReadFromMemberByIndexPair(param1, NARC_INDEX_ARC__TV, 1, v1, sizeof(u8) * 11);
}

static BOOL ov6_022466E8(FieldSystem *fieldSystem, int param1, int param2)
{
    return 1;
}

static void ov6_022466EC(int param0, FieldSystem *fieldSystem, u8 *param2)
{
    u8 v0[11];
    int v1, v2;
    TVBroadcast *v3 = SaveData_TVBroadcast(fieldSystem->saveData);

    ov6_022466C8(param0, v0);
    MI_CpuClear8(param2, sizeof(u8) * 11);

    for (v1 = 0, v2 = 0; v1 < 11; v1++) {
        if (v0[v1] == 0) {
            break;
        }

        if (ov6_022466E8(fieldSystem, param0, v0[v1]) == 1) {
            param2[v2] = v0[v1];
            v2++;
        }
    }
}

static int ov6_0224673C(FieldSystem *fieldSystem, const u8 *param1)
{
    u8 v0[11];
    int v1, v2;

    MI_CpuClear8(v0, sizeof(u8) * 11);

    for (v1 = 0, v2 = 0; v1 < 11; v1++) {
        if (param1[v1] != 0) {
            v0[v2] = param1[v1];
            v2++;
        }
    }

    if (v2 == 0) {
        return 0;
    } else if (v2 == 1) {
        return v0[0];
    }

    return v0[MTRNG_Next() % v2];
}

static int ov6_0224678C(TVBroadcast *param0, int param1, int param2, BOOL param3, BOOL param4, u8 *param5)
{
    if ((param1 != 4) && (param1 != 5)) {
        return sub_0202E614(param0, param1, param2, param3, param4, param5);
    }

    if (param4) {
        return 0;
    }

    if (!param3) {
        return 0;
    }

    if (sub_0202E3C4(param0, param2) == 0) {
        param5[0] = param2;
        return 1;
    }

    return 0;
}

static int ov6_022467DC(int param0, FieldSystem *fieldSystem, BOOL param2, BOOL param3, const u8 *param4, u8 *param5)
{
    u8 v0[16];
    TVBroadcast *v1 = SaveData_TVBroadcast(fieldSystem->saveData);
    int v2, v3;
    int v4 = 0;

    while (*param4 != 0) {
        MI_CpuClear8(v0, 16);

        if (ov6_0224678C(v1, param0, *param4, param2, param3, v0)) {
            for (v3 = 0; v0[v3] != 0 && v3 < 16; v3++) {
                param5[v4] = v0[v3];
                v4++;
            }
        }

        param4++;
    }

    return v4;
}

static void ov6_02246844(FieldSystem *fieldSystem, int param1, u8 *param2)
{
    int v0;
    UnkStruct_ov6_022465F4 *v1;

    for (v0 = 0; *param2 != 0 && v0 < 16; param2++, v0++) {
        v1 = ov6_022465A0(fieldSystem, param1, *param2);

        if (!sub_0206CD2C(param1, fieldSystem, v1)) {
            *param2 = 0;
        }

        ov6_022465F4(v1);
    }
}

static void ov6_02246884(FieldSystem *fieldSystem, u8 *param1)
{
    TVBroadcast *v0 = SaveData_TVBroadcast(fieldSystem->saveData);

    while (*param1 != 0) {
        if (sub_0202E3C4(v0, *param1)) {
            *param1 = 0;
        }

        param1++;
    }
}

int ov6_022468B0(FieldSystem *fieldSystem, BOOL param1, BOOL param2)
{
    u8 v0[11];
    u8 v1[16];
    int v2;
    int v3;
    int v4;

    v3 = ov6_0224663C(fieldSystem);
    v4 = ov6_0224669C(v3);

    MI_CpuClear8(v0, 11);
    MI_CpuClear8(v1, 16);

    ov6_022466EC(v3, fieldSystem, v0);

    v2 = ov6_022467DC(v4, fieldSystem, param1, param2, v0, v1);

    if (v2 == 0) {
        return 0;
    }

    ov6_02246844(fieldSystem, v4, v1);
    ov6_02246884(fieldSystem, v1);

    v2 = ov6_0224673C(fieldSystem, v1);

    return v2;
}

int ov6_02246920(FieldSystem *fieldSystem)
{
    int v0 = ov6_022468B0(fieldSystem, 0, 0);

    if (v0) {
        return v0;
    }

    v0 = ov6_022468B0(fieldSystem, 1, 0);

    if (v0) {
        return v0;
    }

    v0 = ov6_022468B0(fieldSystem, 0, 1);

    if (v0) {
        return v0;
    }

    v0 = ov6_022468B0(fieldSystem, 1, 1);
    return v0;
}

static const UnkStruct_ov6_02249470 *ov6_02246958(FieldSystem *fieldSystem)
{
    int v0 = ov6_0224663C(fieldSystem);

    GF_ASSERT(v0 <= NELEMS(Unk_ov6_02249470));
    return &Unk_ov6_02249470[v0 - 1];
}

int ov6_02246978(FieldSystem *fieldSystem, int param1)
{
    TVBroadcast *v0 = SaveData_TVBroadcast(fieldSystem->saveData);
    const UnkStruct_ov6_02249470 *v1 = ov6_02246958(fieldSystem);

    switch (param1) {
    default:
        GF_ASSERT(0);
    case 0:
        switch (GetTimeOfDay()) {
        case 0:
            return v1->unk_00;
        case 1:
            return v1->unk_01;
        default:
            return v1->unk_02;
        }
    case 1:
        if (sub_0202E3DC(v0) == 0) {
            return v1->unk_03;
        } else {
            return v1->unk_04;
        }
    case 2:
        return v1->unk_05;
    case 3:
        return v1->unk_06;
    }
}

BOOL ov6_022469E0(FieldSystem *fieldSystem, StringTemplate *param1, int param2, u16 *param3, u16 *param4)
{
    int v0 = ov6_0224663C(fieldSystem);
    int v1 = ov6_0224669C(v0);
    TVBroadcast *v2 = SaveData_TVBroadcast(fieldSystem->saveData);
    UnkStruct_ov6_022465F4 *v3;

    sub_0202E384(v2, param2);

    v3 = ov6_022465A0(fieldSystem, v1, param2);

    ov6_0224647C(v3);
    *param4 = sub_0206CD00(v1, fieldSystem, param1, v3, param3);
    ov6_022465F4(v3);

    return 1;
}
