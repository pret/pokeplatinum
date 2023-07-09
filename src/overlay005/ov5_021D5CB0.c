#include <nitro.h>
#include <string.h>

#include "struct_decls/narc.h"

#include "narc.h"
#include "heap.h"
#include "unk_0201DBEC.h"
#include "unk_0201DD00.h"
#include "overlay005/ov5_021D5CB0.h"

typedef struct {
    char unk_00[16];
    u8 unk_10[18][2];
} UnkStruct_ov5_021D5DEC_sub1;

typedef struct {
    u8 * unk_00;
    int unk_04;
    NNSG3dResTex * unk_08;
    void * unk_0C;
    UnkStruct_ov5_021D5DEC_sub1 * unk_10;
    u16 unk_14;
    u16 unk_16;
} UnkStruct_ov5_021D5DEC;

typedef struct {
    u32 unk_00;
    UnkStruct_ov5_021D5DEC_sub1 unk_04[0];
} UnkStruct_ov5_021D5CE4;

typedef struct UnkStruct_ov5_021D5CB0_t {
    void * unk_00;
    UnkStruct_ov5_021D5CE4 * unk_04;
    UnkStruct_ov5_021D5DEC unk_08[16];
} UnkStruct_ov5_021D5CB0;

static int ov5_021D5D30(UnkStruct_ov5_021D5CB0 * param0, NNSG3dResTex * param1, int param2, NARC * param3);

UnkStruct_ov5_021D5CB0 * ov5_021D5CB0 (void)
{
    int v0;
    UnkStruct_ov5_021D5CB0 * v1 = NULL;

    v1 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021D5CB0));

    GF_ASSERT(v1);

    for (v0 = 0; v0 < 16; v0++) {
        v1->unk_08[v0].unk_14 = 0;
        v1->unk_08[v0].unk_16 = 0;
        v1->unk_08[v0].unk_00 = NULL;
        v1->unk_08[v0].unk_08 = NULL;
        v1->unk_08[v0].unk_10 = NULL;
        v1->unk_08[v0].unk_0C = NULL;
    }

    return v1;
}

int ov5_021D5CE4 (UnkStruct_ov5_021D5CB0 * param0, NNSG3dResTex * param1)
{
    int v0, v1 = 0;
    NARC * v2;

    v2 = NARC_ctor(155, 4);

    param0->unk_00 = NARC_AllocAndReadWholeMember(v2, 0, 4);
    param0->unk_04 = (UnkStruct_ov5_021D5CE4 *)param0->unk_00;

    for (v0 = 0; v0 < param0->unk_04->unk_00; v0++) {
        if (ov5_021D5D30(param0, param1, v0, v2) >= 0) {
            v1++;
        }
    }

    NARC_dtor(v2);

    return v1;
}

static int ov5_021D5D30 (UnkStruct_ov5_021D5CB0 * param0, NNSG3dResTex * param1, int param2, NARC * param3)
{
    int v0, v1;
    char v2[40];

    if (param0 == NULL) {
        return -1;
    }

    for (v0 = 0; v0 < 16; v0++) {
        if (param0->unk_08[v0].unk_0C == NULL) {
            break;
        }
    }

    if ((v0 == 16) || (param1 == NULL)) {
        return -1;
    }

    param0->unk_08[v0].unk_00 = sub_0201DF50(param1, param0->unk_04->unk_04[param2].unk_00);

    if (param0->unk_08[v0].unk_00 == NULL) {
        return -1;
    }

    param0->unk_08[v0].unk_04 = sub_0201DFE4(param1, param0->unk_04->unk_04[param2].unk_00);
    sprintf(v2, "data/fld_anime%d.bin", param2);
    param0->unk_08[v0].unk_10 = &(param0->unk_04->unk_04[param2]);
    param0->unk_08[v0].unk_0C = NARC_AllocAndReadWholeMember(param3, param2 + 1, 4);
    param0->unk_08[v0].unk_08 = NNS_G3dGetTex((NNSG3dResFileHeader *)param0->unk_08[v0].unk_0C);

    return v0;
}

void ov5_021D5DEC (UnkStruct_ov5_021D5CB0 * param0)
{
    int v0;

    if (param0 == NULL) {
        return;
    }

    for (v0 = 0; v0 < 16; v0++) {
        UnkStruct_ov5_021D5DEC * v1 = &param0->unk_08[v0];

        if (v1->unk_0C == NULL) {
            continue;
        }

        if (v1->unk_10 == NULL) {
            continue;
        }

        if (v1->unk_10->unk_10[v1->unk_14][1] <= v1->unk_16) {
            v1->unk_16 = 0;
            v1->unk_14++;

            if (v1->unk_10->unk_10[v1->unk_14][0] == 0xff) {
                v1->unk_14 = 0;
            }

            sub_0201DC68(NNS_GFD_DST_3D_TEX_VRAM, (u32)v1->unk_00, sub_0201DEAC(v1->unk_08, v1->unk_10->unk_10[v1->unk_14][0]), v1->unk_04);
        } else {
            v1->unk_16++;
        }
    }
}

void ov5_021D5E5C (UnkStruct_ov5_021D5CB0 * param0, int param1)
{
    if (param0 == NULL) {
        return;
    }

    if (param0->unk_08[param1].unk_0C) {
        Heap_FreeToHeap(param0->unk_08[param1].unk_0C);
    }

    if (param0->unk_08[param1].unk_10 != NULL) {
        param0->unk_08[param1].unk_10 = NULL;
    }

    param0->unk_08[param1].unk_14 = 0;
    param0->unk_08[param1].unk_16 = 0;
}

void ov5_021D5E8C (UnkStruct_ov5_021D5CB0 * param0)
{
    int v0;

    if (param0 == NULL) {
        return;
    }

    for (v0 = 0; v0 < 16; v0++) {
        ov5_021D5E5C(param0, v0);
    }

    Heap_FreeToHeap(param0->unk_00);
}

void ov5_021D5EAC (UnkStruct_ov5_021D5CB0 * param0)
{
    if (param0 != NULL) {
        Heap_FreeToHeap(param0);
        param0 = NULL;
    }
}
