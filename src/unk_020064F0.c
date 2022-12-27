#include <nitro.h>
#include <string.h>

#include "unk_020064F0.h"

typedef struct {
    FSOverlayID unk_00;
    BOOL unk_04;
} UnkStruct_020064F0;

typedef struct {
    UnkStruct_020064F0 unk_00[8];
    UnkStruct_020064F0 unk_40[8];
    UnkStruct_020064F0 unk_80[8];
} UnkStruct_021BF370;

static void sub_020064F0(UnkStruct_020064F0 * param0);
static BOOL sub_02006644(const FSOverlayID param0);
static UnkStruct_020064F0 * sub_020066C0(int param0);
static BOOL sub_020066E4(const FSOverlayID param0, u32 * param1, u32 * param2);
static BOOL sub_0200671C(MIProcessor param0, FSOverlayID param1);
static BOOL sub_02006724(MIProcessor param0, FSOverlayID param1);
static BOOL sub_0200675C(MIProcessor param0, FSOverlayID param1);
void sub_02006514(const FSOverlayID param0);
int sub_02006544(const FSOverlayID param0);
BOOL sub_02006590(const FSOverlayID param0, int param1);

static UnkStruct_021BF370 Unk_021BF370;

static void sub_020064F0 (UnkStruct_020064F0 * param0)
{
    BOOL v0;

    GF_ASSERT(param0->unk_04 == 1);
    v0 = FS_UnloadOverlay(MI_PROCESSOR_ARM9, param0->unk_00);

    GF_ASSERT(v0 == 1);
    param0->unk_04 = 0;
}

void sub_02006514 (const FSOverlayID param0)
{
    UnkStruct_020064F0 * v0;
    int v1;
    int v2;

    v1 = sub_02006544(param0);
    v0 = sub_020066C0(v1);

    for (v2 = 0; v2 < 8; v2++) {
        if ((v0[v2].unk_04 == 1) && (v0[v2].unk_00 == param0)) {
            sub_020064F0(&v0[v2]);
            return;
        }
    }
}

int sub_02006544 (const FSOverlayID param0)
{
    FSOverlayInfo v0;
    BOOL v1;
    u32 v2;

    v1 = FS_LoadOverlayInfo(&v0, MI_PROCESSOR_ARM9, param0);
    GF_ASSERT(v1 == 1);
    v2 = (u32)FS_GetOverlayAddress(&v0);

    if ((v2 <= HW_ITCM_END) && (v2 >= HW_ITCM_IMAGE)) {
        return 1;
    } else if ((v2 <= HW_DTCM_END) && (v2 >= HW_DTCM)) {
        return 2;
    }

    return 0;
}

BOOL sub_02006590 (const FSOverlayID param0, int param1)
{
    BOOL v0;
    int v1;
    u32 v2 = FS_DMA_NOT_USE;
    UnkStruct_020064F0 * v3;
    int v4;

    if (sub_02006644(param0) == 0) {
        return 0;
    }

    v1 = sub_02006544(param0);
    v3 = sub_020066C0(v1);

    for (v4 = 0; v4 < 8; v4++) {
        if (v3[v4].unk_04 == 0) {
            v3 = &v3[v4];
            v3->unk_04 = 1;
            v3->unk_00 = param0;
            break;
        }
    }

    if (v4 >= 8) {
        GF_ASSERT(0);
        return 0;
    }

    if ((v1 == 1) || (v1 == 2)) {
        v2 = FS_SetDefaultDMA(FS_DMA_NOT_USE);
    }

    switch (param1) {
    case 0:
        v0 = sub_0200671C(MI_PROCESSOR_ARM9, param0);
        break;
    case 1:
        v0 = sub_02006724(MI_PROCESSOR_ARM9, param0);
        break;
    case 2:
        v0 = sub_0200675C(MI_PROCESSOR_ARM9, param0);
        break;
    default:
        GF_ASSERT(0);
        return 0;
    }

    if ((v1 == 1) || (v1 == 2)) {
        FS_SetDefaultDMA(v2);
    }

    if (v0 == 0) {
        GF_ASSERT(0);
        return 0;
    }

    return 1;
}

static BOOL sub_02006644 (const FSOverlayID param0)
{
    int v0;
    u32 v1, v2, v3, v4;
    BOOL v5;
    UnkStruct_020064F0 * v6;
    int v7;

    v5 = sub_020066E4(param0, &v1, &v2);

    if (v5 == 0) {
        return 0;
    }

    v0 = sub_02006544(param0);
    v6 = sub_020066C0(v0);

    for (v7 = 0; v7 < 8; v7++) {
        if (v6[v7].unk_04 == 1) {
            v5 = sub_020066E4(v6[v7].unk_00, &v3, &v4);

            if (v5 == 1) {
                if (((v1 >= v3) && (v1 < v4)) || ((v2 > v3) && (v2 <= v4)) || ((v1 <= v3) && (v2 >= v4))) {
                    GF_ASSERT(0);
                    return 0;
                }
            }
        }
    }

    return 1;
}

static UnkStruct_020064F0 * sub_020066C0 (int param0)
{
    UnkStruct_020064F0 * v0;

    switch (param0) {
    case 0:
    default:
        v0 = Unk_021BF370.unk_00;
        break;
    case 1:
        v0 = Unk_021BF370.unk_40;
        break;
    case 2:
        v0 = Unk_021BF370.unk_80;
        break;
    }

    return v0;
}

static BOOL sub_020066E4 (const FSOverlayID param0, u32 * param1, u32 * param2)
{
    FSOverlayInfo v0;
    BOOL v1;

    v1 = FS_LoadOverlayInfo(&v0, MI_PROCESSOR_ARM9, param0);

    if (v1 == 0) {
        GF_ASSERT(0);
        return 0;
    }

    *param1 = (u32)FS_GetOverlayAddress(&v0);
    *param2 = *param1 + FS_GetOverlayTotalSize(&v0);

    return 1;
}

static BOOL sub_0200671C (MIProcessor param0, FSOverlayID param1)
{
    return FS_LoadOverlay(param0, param1);
}

static BOOL sub_02006724 (MIProcessor param0, FSOverlayID param1)
{
    FSOverlayInfo v0;

    if (!FS_LoadOverlayInfo(&v0, param0, param1)) {
        return 0;
    }

    if (!FS_LoadOverlayImage(&v0)) {
        return 0;
    }

    FS_StartOverlay(&v0);
    return 1;
}

static BOOL sub_0200675C (MIProcessor param0, FSOverlayID param1)
{
    FSOverlayInfo v0;

    if (!FS_LoadOverlayInfo(&v0, param0, param1)) {
        return 0;
    }

    {
        FSFile v1;

        FS_InitFile(&v1);
        (void)FS_LoadOverlayImageAsync(&v0, &v1);
        (void)FS_WaitAsync(&v1);
        (void)FS_CloseFile(&v1);
    }

    FS_StartOverlay(&v0);
    return 1;
}
