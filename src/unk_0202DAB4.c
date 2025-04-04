#include "unk_0202DAB4.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0202DBAC.h"
#include "struct_defs/struct_0202DF40.h"
#include "struct_defs/union_0204C4D0.h"

#include "savedata/save_table.h"

#include "savedata.h"

typedef struct MysteryGift {
    u8 unk_00[256];
    UnkStruct_0202DF40 unk_100[8];
    UnkStruct_0202DBAC unk_920[3];
} MysteryGift;

MysteryGift *SaveData_GetMysteryGift(SaveData *param0);

int MysteryGift_SaveSize(void)
{
    return sizeof(MysteryGift);
}

void MysteryGift_Init(MysteryGift *param0)
{
    SaveData_SetChecksum(31);
}

static BOOL sub_0202DAC8(u16 param0)
{
    if ((param0 > 0) && (param0 < 14)) {
        return 1;
    }

    return 0;
}

UnkStruct_0202DF40 *sub_0202DAD8(MysteryGift *param0, int param1)
{
    if ((param1 >= 0) && (param1 < 8)) {
        if (sub_0202DAC8(param0->unk_100[param1].unk_00)) {
            return &param0->unk_100[param1];
        }
    }

    return (UnkStruct_0202DF40 *)NULL;
}

UnkStruct_0202DBAC *sub_0202DB00(MysteryGift *param0, int param1)
{
    if ((param1 >= 0) && (param1 < 3)) {
        if (sub_0202DAC8(param0->unk_920[param1].unk_00)) {
            return &param0->unk_920[param1];
        }
    }

    return NULL;
}

BOOL sub_0202DB2C(MysteryGift *param0, const void *param1, int param2)
{
    int v0;
    BOOL v1 = 0;

    if (sub_0202DCE0(param0) == 0) {
        return 0;
    }

    for (v0 = 0; v0 < 8; v0++) {
        if (!sub_0202DAC8(param0->unk_100[v0].unk_00)) {
            MI_CpuCopy8(param1, &param0->unk_100[v0], sizeof(UnkStruct_0202DF40));
            param0->unk_100[v0].unk_02_0 = param2;
            v1 = 1;
            break;
        }
    }

    SaveData_SetChecksum(31);

    return v1;
}

BOOL sub_0202DBAC(MysteryGift *param0, const void *param1)
{
    int v0;
    UnkStruct_0202DBAC *v1 = (UnkStruct_0202DBAC *)param1;
    BOOL v2 = 0;

    if (sub_0202DD08(param0) == 0) {
        return 0;
    }

    if ((v1->unk_104.unk_4E_3 == 1) && (sub_0202DCE0(param0) == 0)) {
        return 0;
    }

    for (v0 = 0; v0 < 3; v0++) {
        if (!sub_0202DAC8(param0->unk_920[v0].unk_00)) {
            MI_CpuCopy8(v1, &param0->unk_920[v0], sizeof(UnkStruct_0202DBAC));

            if (v1->unk_104.unk_4E_3 == 1) {
                sub_0202DB2C(param0, (const void *)&v1->unk_00, v0);
            }

            v2 = 1;
            break;
        }
    }

    SaveData_SetChecksum(31);

    return v2;
}

BOOL sub_0202DC48(MysteryGift *param0, int param1)
{
    GF_ASSERT(param1 < 8);

    param0->unk_100[param1].unk_00 = 0;
    param0->unk_100[param1].unk_02_0 = 0;

    SaveData_SetChecksum(31);

    return 1;
}

BOOL sub_0202DC7C(MysteryGift *param0, int param1)
{
    GF_ASSERT(param1 < 3);

    param0->unk_920[param1].unk_00 = 0;

    sub_0202DE8C(param0, param0->unk_920[param1].unk_104.unk_4C);
    sub_0202DDE8(param0, param1);
    SaveData_SetChecksum(31);

    return 1;
}

BOOL sub_0202DCB8(MysteryGift *param0, int param1)
{
    GF_ASSERT(param1 < 3);

    param0->unk_920[param1].unk_00 = 0;
    SaveData_SetChecksum(31);

    return 1;
}

BOOL sub_0202DCE0(MysteryGift *param0)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        if (!sub_0202DAC8(param0->unk_100[v0].unk_00)) {
            return 1;
        }
    }

    return 0;
}

BOOL sub_0202DD08(MysteryGift *param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        if (!sub_0202DAC8(param0->unk_920[v0].unk_00)) {
            return 1;
        }
    }

    return 0;
}

BOOL sub_0202DD30(const MysteryGift *param0, int param1)
{
    GF_ASSERT(param1 < 8);

    if (sub_0202DAC8(param0->unk_100[param1].unk_00)) {
        return 1;
    }

    return 0;
}

BOOL sub_0202DD5C(const MysteryGift *param0, int param1)
{
    GF_ASSERT(param1 < 3);

    if (sub_0202DAC8(param0->unk_920[param1].unk_00)) {
        return 1;
    }

    return 0;
}

BOOL sub_0202DD88(const MysteryGift *param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        if (sub_0202DD5C(param0, v0) == 1) {
            return 1;
        }
    }

    return 0;
}

BOOL sub_0202DDA8(const MysteryGift *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        if (sub_0202DAC8(param0->unk_100[v0].unk_00)) {
            if (param0->unk_100[v0].unk_02_0 == param1) {
                return 1;
            }
        }
    }

    return 0;
}

void sub_0202DDE8(const MysteryGift *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        if (sub_0202DAC8(param0->unk_100[v0].unk_00)) {
            if (param0->unk_100[v0].unk_02_0 == param1) {
                sub_0202DC48((MysteryGift *)param0, v0);
                return;
            }
        }
    }
}

BOOL sub_0202DE2C(MysteryGift *param0, int param1)
{
    GF_ASSERT(param1 < 2048);
    return !!(param0->unk_00[param1 / 8] & (1 << (param1 & 7)));
}

void sub_0202DE5C(MysteryGift *param0, int param1)
{
    GF_ASSERT(param1 < 2048);

    param0->unk_00[param1 / 8] |= (1 << (param1 & 7));
    SaveData_SetChecksum(31);
}

void sub_0202DE8C(MysteryGift *param0, int param1)
{
    u8 v0 = (u8) ~(1 << (param1 & 7));

    GF_ASSERT(param1 < 2048);

    param0->unk_00[param1 / 8] &= v0;
    SaveData_SetChecksum(31);
}

BOOL sub_0202DEC4(MysteryGift *param0)
{
    return sub_0202DE2C(param0, (2048 - 1));
}

void sub_0202DED4(MysteryGift *param0)
{
    sub_0202DE5C(param0, (2048 - 1));
}

static MysteryGift *Unk_021C07A0 = NULL;

void sub_0202DEE4(SaveData *param0, int param1)
{
    int v0;

    if (Unk_021C07A0 == NULL) {
        Unk_021C07A0 = SaveData_GetMysteryGift(param0);
    }

    SaveData_SetChecksum(31);
}

void sub_0202DF04(SaveData *param0, int param1)
{
    int v0;

    if (Unk_021C07A0) {
        Unk_021C07A0 = NULL;
    }
}

int sub_0202DF18(void)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        if (sub_0202DD30(Unk_021C07A0, v0) == 1) {
            return v0;
        }
    }

    return -1;
}

int sub_0202DF40(int param0)
{
    UnkStruct_0202DF40 *v0 = sub_0202DAD8(Unk_021C07A0, param0);

    if (v0) {
        return (int)v0->unk_00;
    }

    return 0;
}

UnkUnion_0204C4D0 *sub_0202DF5C(int param0)
{
    UnkStruct_0202DF40 *v0 = sub_0202DAD8(Unk_021C07A0, param0);

    if (v0) {
        return &v0->unk_04;
    }

    return NULL;
}

void sub_0202DF78(int param0)
{
    sub_0202DC48(Unk_021C07A0, param0);
}
