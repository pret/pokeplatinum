#include <nitro.h>
#include <string.h>
#include <dwc.h>

#include "trainer_info.h"
#include "struct_decls/struct_0202B370_decl.h"
#include "struct_decls/struct_0202B4A0_decl.h"
#include "struct_decls/struct_0202C878_decl.h"
#include "savedata.h"

#include "struct_defs/struct_0202610C.h"

#include "heap.h"
#include "unk_02025E08.h"
#include "trainer_info.h"
#include "unk_0202602C.h"
#include "unk_0202854C.h"
#include "unk_0202ACE0.h"
#include "unk_0202B37C.h"
#include "unk_0202C858.h"
#include "unk_020329E0.h"
#include "unk_02033200.h"
#include "communication_system.h"
#include "unk_0203909C.h"

typedef struct {
    u8 unk_00[32];
    u8 unk_20[32];
    DWCFriendData unk_40;
    u16 unk_4C[8];
    u8 unk_5C[6];
    u8 unk_62;
    u8 unk_63;
    u8 unk_64;
    u8 unk_65;
} UnkStruct_02032BEC;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
} UnkStruct_021C07B4_sub1;

typedef struct {
    TrainerInfo * unk_00;
    const UnkStruct_0202610C * unk_04;
    SaveData * unk_08;
    UnkStruct_02032BEC unk_0C[8];
    TrainerInfo * unk_33C[8];
    UnkStruct_021C07B4_sub1 unk_35C[8];
    u8 unk_38C[8];
    u8 unk_394;
    u8 unk_395;
    u8 unk_396;
} UnkStruct_021C07B4;

static UnkStruct_021C07B4 * Unk_021C07B4;

void sub_020329E0 (SaveData * param0, const UnkStruct_0202610C * param1)
{
    int v0;
    TrainerInfo * v1 = sub_02025E38(param0);

    if (Unk_021C07B4) {
        return;
    }

    Unk_021C07B4 = Heap_AllocFromHeap(15, sizeof(UnkStruct_021C07B4));
    MI_CpuClear8(Unk_021C07B4, sizeof(UnkStruct_021C07B4));

    for (v0 = 0; v0 < (7 + 1); v0++) {
        Unk_021C07B4->unk_33C[v0] = (TrainerInfo *)&Unk_021C07B4->unk_0C[v0].unk_20[0];
        sub_02032D98(v0);
    }

    Unk_021C07B4->unk_394 = 0;
    Unk_021C07B4->unk_395 = 0;
    Unk_021C07B4->unk_396 = 0;
    Unk_021C07B4->unk_08 = param0;
    Unk_021C07B4->unk_04 = param1;

    TrainerInfo_Copy(v1, Unk_021C07B4->unk_33C[0]);
}

void sub_02032A70 (void)
{
    int v0;

    if (Unk_021C07B4) {
        for (v0 = 0; v0 < (7 + 1); v0++) {
            Unk_021C07B4->unk_33C[v0] = NULL;
        }

        if (Unk_021C07B4) {
            Heap_FreeToHeap(Unk_021C07B4);
        }

        Unk_021C07B4 = NULL;
    }
}

BOOL sub_02032AAC (void)
{
    return Unk_021C07B4 != NULL;
}

void sub_02032AC0 (void)
{
    u16 v0 = sub_0203608C();
    TrainerInfo * v1;
    const u16 * v2;
    UnkStruct_0202B4A0 * v3 = sub_0202B4A0(Unk_021C07B4->unk_08);
    UnkStruct_0202B370 * v4 = sub_0202B370(Unk_021C07B4->unk_08);
    UnkStruct_0202C878 * v5 = sub_0202C878(Unk_021C07B4->unk_08);

    if (Unk_021C07B4->unk_00) {
        v1 = Unk_021C07B4->unk_00;
    } else {
        v1 = sub_02025E38(Unk_021C07B4->unk_08);
    }

    TrainerInfo_Copy(v1, Unk_021C07B4->unk_33C[v0]);
    OS_GetMacAddress(&Unk_021C07B4->unk_0C[v0].unk_5C[0]);

    v2 = sub_0202B42C(v3, 1, 0);

    MI_CpuCopy8(v2, Unk_021C07B4->unk_0C[v0].unk_4C, sizeof(Unk_021C07B4->unk_0C[v0].unk_4C));

    Unk_021C07B4->unk_0C[v0].unk_63 = sub_0202C8C0(v5);
    Unk_021C07B4->unk_0C[v0].unk_64 = sub_0202C8C4(v5);
    Unk_021C07B4->unk_0C[v0].unk_65 = sub_02028810(Unk_021C07B4->unk_08);
    Unk_021C07B4->unk_0C[v0].unk_65 = 1 - Unk_021C07B4->unk_0C[v0].unk_65;

    DWC_CreateExchangeToken(sub_0202AD28(v4), &Unk_021C07B4->unk_0C[v0].unk_40);
    MI_CpuClear8(Unk_021C07B4->unk_0C[v0].unk_00, 32);

    if (Unk_021C07B4->unk_04) {
        sub_02026034(Unk_021C07B4->unk_04, (UnkStruct_0202610C *)Unk_021C07B4->unk_0C[v0].unk_00);
    }

    sub_020359DC(3, &Unk_021C07B4->unk_0C[v0], sizeof(UnkStruct_02032BEC));
}

int sub_02032BC0 (void)
{
    return sizeof(UnkStruct_02032BEC);
}

void sub_02032BC4 (int param0, int param1, void * param2, void * param3)
{
    if (Unk_021C07B4) {
        Unk_021C07B4->unk_394 = 1;
    } else {
        (void)0;
    }
}

BOOL sub_02032BDC (void)
{
    return Unk_021C07B4->unk_394;
}

void sub_02032BEC (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_02032BEC * v0 = (UnkStruct_02032BEC *)param2;

    if (!Unk_021C07B4) {
        return;
    }

    if (!sub_02035D78(param0)) {
        return;
    }

    MI_CpuCopy8(param2, &Unk_021C07B4->unk_0C[v0->unk_62], sizeof(UnkStruct_02032BEC));
    Unk_021C07B4->unk_396 = v0->unk_62;

    if (TrainerInfo_HasNoName(Unk_021C07B4->unk_33C[Unk_021C07B4->unk_396]) == 1) {
        return;
    }

    if (Unk_021C07B4->unk_38C[Unk_021C07B4->unk_396] < 2) {
        Unk_021C07B4->unk_38C[Unk_021C07B4->unk_396] = 1;

        if (sub_0203608C() == Unk_021C07B4->unk_396) {
            Unk_021C07B4->unk_38C[Unk_021C07B4->unk_396] = 3;
        }
    }
}

void sub_02032C80 (int param0, int param1, void * param2, void * param3)
{
    int v0;

    if (!Unk_021C07B4) {
        return;
    }

    MI_CpuCopy8(param2, &Unk_021C07B4->unk_0C[param0], sizeof(UnkStruct_02032BEC));
    sub_02033FDC(&Unk_021C07B4->unk_0C[param0].unk_5C[0], param0);

    Unk_021C07B4->unk_38C[param0] = 1;

    if (sub_0203608C() == param0) {
        Unk_021C07B4->unk_38C[param0] = 3;
    } else {
        Unk_021C07B4->unk_395 = 1;
    }
}

BOOL sub_02032CE8 (void)
{
    int v0;

    if (!Unk_021C07B4->unk_395) {
        return 0;
    }

    if (sub_0203608C() != 0) {
        return 0;
    }

    if (!sub_02036254(5)) {
        for (v0 = 0; v0 < (7 + 1); v0++) {
            if (Unk_021C07B4->unk_38C[v0] != 0) {
                Unk_021C07B4->unk_0C[v0].unk_62 = v0;
                MI_CpuCopy8(Unk_021C07B4->unk_33C[v0], Unk_021C07B4->unk_0C[v0].unk_20, TrainerInfo_Size());
                sub_02035F00(4, &Unk_021C07B4->unk_0C[v0], sizeof(UnkStruct_02032BEC));
            }
        }

        sub_02035F00(5, NULL, 0);
        Unk_021C07B4->unk_395 = 0;
        return 1;
    }

    return 0;
}

BOOL sub_02032D84 (void)
{
    return Unk_021C07B4->unk_395;
}

void sub_02032D98 (int param0)
{
    TrainerInfo_Init(Unk_021C07B4->unk_33C[param0]);
    Unk_021C07B4->unk_38C[param0] = 0;
}

BOOL sub_02032DC4 (int param0)
{
    return Unk_021C07B4->unk_38C[param0] == 1;
}

BOOL sub_02032DE0 (int param0)
{
    return (Unk_021C07B4->unk_38C[param0] == 2) || (Unk_021C07B4->unk_38C[param0] == 1);
}

BOOL sub_02032E00 (int param0)
{
    return Unk_021C07B4->unk_38C[param0] == 2;
}

void sub_02032E1C (int param0)
{
    Unk_021C07B4->unk_38C[param0] = 2;
}

void sub_02032E30 (int param0)
{
    Unk_021C07B4->unk_38C[param0] = 3;
}

int sub_02032E44 (void)
{
    int v0;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if (Unk_021C07B4->unk_38C[v0] == 1) {
            return v0;
        }
    }

    return 0xff;
}

int sub_02032E64 (void)
{
    int v0;
    int v1 = 0;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        switch (Unk_021C07B4->unk_38C[v0]) {
        case 2:
        case 3:
            v1++;
            break;
        }
    }

    return v1;
}

BOOL sub_02032E90 (void)
{
    int v0;
    BOOL v1 = 0;

    if (Unk_021C07B4) {
        if (sub_02035E18() == 0) {
            return v1;
        }

        for (v0 = 0; v0 < (7 + 1); v0++) {
            if (!sub_02035D78(v0) && !((v0 == 0) && sub_02036180())) {
                if (Unk_021C07B4->unk_38C[v0] != 0) {
                    sub_02032D98(v0);
                    v1 = 1;
                }
            }
        }
    }

    return v1;
}

TrainerInfo * sub_02032EE8 (int param0)
{
    if (!Unk_021C07B4) {
        return NULL;
    }

    switch (Unk_021C07B4->unk_38C[param0]) {
    case 1:
    case 2:
    case 3:
        return Unk_021C07B4->unk_33C[param0];
    }

    return NULL;
}

DWCFriendData * sub_02032F1C (int param0)
{
    if (Unk_021C07B4->unk_38C[param0] != 0) {
        return &Unk_021C07B4->unk_0C[param0].unk_40;
    }

    return NULL;
}

int sub_02032F40 (int param0)
{
    return sub_02039390(Unk_021C07B4->unk_08, param0);
}

u16 * sub_02032F54 (int param0)
{
    if (Unk_021C07B4->unk_38C[param0] != 0) {
        return Unk_021C07B4->unk_0C[param0].unk_4C;
    }

    return NULL;
}

int sub_02032F78 (int param0)
{
    if (Unk_021C07B4->unk_38C[param0] != 0) {
        return Unk_021C07B4->unk_0C[param0].unk_63;
    }

    return 0;
}

int sub_02032F9C (int param0)
{
    if (Unk_021C07B4->unk_38C[param0] != 0) {
        return Unk_021C07B4->unk_0C[param0].unk_64;
    }

    return 0;
}

int sub_02032FC0 (int param0)
{
    if (Unk_021C07B4->unk_38C[param0] != 0) {
        return Unk_021C07B4->unk_0C[param0].unk_65;
    }

    return 0;
}

BOOL sub_02032FE4 (void)
{
    int v0, v1;

    for (v0 = 0; v0 < (7 + 1) - 1; v0++) {
        if (sub_02035D78(v0) && (Unk_021C07B4->unk_38C[v0] != 0)) {
            if (sub_02035D78(v0 + 1) && (Unk_021C07B4->unk_38C[v0 + 1] != 0)) {
                for (v1 = 0; v1 < 32; v1++) {
                    if (Unk_021C07B4->unk_0C[v0].unk_00[v1] != Unk_021C07B4->unk_0C[v0 + 1].unk_00[v1]) {
                        return 0;
                    }
                }
            }
        }
    }

    return 1;
}

static void sub_02033054 (int param0, int param1)
{
    int v0;
    int v1, v2;

    if (Unk_021C07B4 == NULL) {
        return;
    }

    if (param0 != 2) {
        v1 = sub_020362F4(sub_0203608C()) & 0x1;
    }

    for (v0 = 0; v0 < sub_02035E18(); v0++) {
        if (sub_02035D78(v0) && (Unk_021C07B4->unk_38C[v0] != 0)) {
            if (param0 == 0) {
                v2 = sub_020362F4(v0) & 0x1;

                if (v1 != v2) {
                    Unk_021C07B4->unk_35C[v0].unk_00 += param1;
                }
            } else if (param0 == 1) {
                v2 = sub_020362F4(v0) & 0x1;

                if (v1 != v2) {
                    Unk_021C07B4->unk_35C[v0].unk_02 += param1;
                }
            } else {
                Unk_021C07B4->unk_35C[v0].unk_04 += param1;
            }
        }
    }
}

void sub_02033114 (SaveData * param0)
{
    UnkStruct_0202B370 * v0 = sub_0202B370(param0);
    int v1, v2, v3;

    for (v1 = 0; v1 < sub_02035E18(); v1++) {
        DWCFriendData * v4 = sub_02032F1C(v1);

        if (v4 == NULL) {
            continue;
        }

        v2 = sub_0203909C(param0, v4, &v3);

        switch (v2) {
        case 0:
        case 1:
            GF_ASSERT(v3 >= 0);

            sub_0202B174(v0, v3, Unk_021C07B4->unk_35C[v1].unk_00, Unk_021C07B4->unk_35C[v1].unk_02, Unk_021C07B4->unk_35C[v1].unk_04);
            break;
        }
    }

    for (v1 = 0; v1 < (7 + 1); v1++) {
        Unk_021C07B4->unk_35C[v1].unk_00 = 0;
        Unk_021C07B4->unk_35C[v1].unk_02 = 0;
        Unk_021C07B4->unk_35C[v1].unk_04 = 0;
    }
}

void sub_020331B4 (SaveData * param0, int param1)
{
    if (param1 == 1) {
        sub_02033054(0, 1);
    } else if (param1 == -1) {
        sub_02033054(1, 1);
    }

    sub_02033114(param0);
}

void sub_020331E0 (SaveData * param0, int param1)
{
    sub_02033054(2, param1);
    sub_02033114(param0);
}

void sub_020331F4 (TrainerInfo * param0)
{
    Unk_021C07B4->unk_00 = param0;
}
