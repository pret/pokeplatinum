#include "overlay080/ov80_021D2AF4.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"

#include "overlay080/struct_ov80_021D2AF4.h"
#include "overlay080/struct_ov80_021D2C1C.h"
#include "overlay080/struct_ov80_021D2C5C.h"
#include "overlay080/struct_ov80_021D2C5C_sub1.h"
#include "overlay080/struct_ov80_021D2E10.h"

#include "cell_actor.h"
#include "heap.h"
#include "sprite_renderer.h"

const UnkStruct_ov80_021D2C5C_sub1 Unk_ov80_021D31D8[20] = {
    { 0x19B, 0x0, 0x0, 0x0, 0x0, 0x15, 0xBD },
    { 0x1A2, 0x1, 0x0, 0x0, 0x0, 0x23, 0xB6 },
    { 0x1AA, 0x2, 0x1, 0x0, 0x0, 0x23, 0x88 },
    { 0x1B1, 0x3, 0x5, 0x0, 0x0, 0x7A, 0x8C },
    { 0x1BA, 0x4, 0x0, 0x0, 0x0, 0x62, 0x70 },
    { 0x1C2, 0x5, 0x0, 0x0, 0x0, 0x8C, 0x46 },
    { 0x1C9, 0x6, 0x0, 0x0, 0x0, 0xAF, 0x62 },
    { 0x3, 0x7, 0x2, 0x1, 0x0, 0x1F, 0xA4 },
    { 0x21, 0x8, 0x1, 0x1, 0x0, 0x7, 0x9D },
    { 0x2D, 0x9, 0x4, 0x1, 0x0, 0x3C, 0xA4 },
    { 0x41, 0xA, 0x3, 0x1, 0x0, 0x42, 0x73 },
    { 0x56, 0xB, 0x2, 0x1, 0x0, 0x65, 0x96 },
    { 0x78, 0xC, 0x2, 0x1, 0x0, 0x81, 0xB2 },
    { 0x84, 0xD, 0x2, 0x1, 0x0, 0x96, 0x81 },
    { 0x96, 0xE, 0x2, 0x1, 0x0, 0xB9, 0xA4 },
    { 0xA5, 0xF, 0x1, 0x1, 0x0, 0x4D, 0x2D },
    { 0xBC, 0x11, 0x5, 0x1, 0x0, 0x89, 0x5B },
    { 0x188, 0x43, 0x6, 0x1, 0x1, 0x3F, 0xC4 },
    { 0xAC, 0x10, 0x6, 0x1, 0x2, 0xB6, 0x7E },
    { 0xAC, 0x44, 0x0, 0x1, 0x3, 0xB6, 0x77 }
};

UnkStruct_ov80_021D2C1C *ov80_021D2AF4(SpriteRenderer *param0, SpriteGfxHandler *param1, u8 *param2, short param3, int param4)
{
    UnkStruct_ov80_021D2C1C *v0;
    UnkStruct_ov80_021D2C5C *v1;
    const UnkStruct_ov80_021D2C5C_sub1 *v2;
    short v3;
    static const CellActorPropsTemplate v4 = {
        4, 0, 0, 0, 0, 10, 5, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 0, 0, 0
    };

    v0 = Heap_AllocFromHeap(param4, sizeof(UnkStruct_ov80_021D2C1C));
    memset(v0, 0, sizeof(UnkStruct_ov80_021D2C1C));

    v0->unk_00 = param3;
    v0->unk_08 = Heap_AllocFromHeap(param4, sizeof(UnkStruct_ov80_021D2C5C) * v0->unk_00);
    memset(v0->unk_08, 0, sizeof(UnkStruct_ov80_021D2C5C) * v0->unk_00);

    v2 = Unk_ov80_021D31D8;

    for (v3 = 0; v3 < v0->unk_00; v3++) {
        v1 = &v0->unk_08[v3];
        v1->unk_00.unk_00 = v2[v3].unk_00;
        v1->unk_00.unk_08 = v2[v3].unk_08;
        v1->unk_00.unk_09 = v2[v3].unk_09;
        v1->unk_00.unk_0A = v2[v3].unk_0A;
        v1->unk_00.unk_0C = v2[v3].unk_0C;
        v1->unk_00.unk_10 = v2[v3].unk_10;
        v1->unk_14 = param2[v3];
        v1->unk_18 = SpriteRenderer_CreateCellActorFromTemplate(param0, param1, &v4);

        CellActor_SetDrawFlag(v1->unk_18, 1);

        if (v1->unk_14) {
            CellActor_SetExplicitPalette(v1->unk_18, 5 + v1->unk_00.unk_09 + v1->unk_14);
        } else {
            if ((v1->unk_00.unk_0A == 1) || (v1->unk_00.unk_0A == 2)) {
                CellActor_SetDrawFlag(v1->unk_18, 0);
            }
        }

        CellActor_UpdateAnim(v1->unk_18, FX32_CONST(v1->unk_00.unk_08));
        CellActor_SetPositionXY(v1->unk_18, v1->unk_00.unk_0C + 25, v1->unk_00.unk_10 + -34);
    }

    return v0;
}

void ov80_021D2C1C(UnkStruct_ov80_021D2C1C *param0)
{
    UnkStruct_ov80_021D2C5C *v0;
    short v1;

    for (v1 = 0; v1 < param0->unk_00; v1++) {
        v0 = &param0->unk_08[v1];
        CellActor_SetAffineZRotationEx(v0->unk_18, 0, 0);
        CellActor_Delete(v0->unk_18);
    }

    Heap_FreeToHeap(param0->unk_08);
    Heap_FreeToHeap(param0);
}

UnkStruct_ov80_021D2C5C *ov80_021D2C5C(UnkStruct_ov80_021D2C1C *param0, int param1, int param2, int param3)
{
    UnkStruct_ov80_021D2C5C *v0;
    short v1, v2;

    for (v1 = 0; v1 < param0->unk_00; v1++) {
        v0 = &(param0->unk_08[v1]);

        if (v0->unk_00.unk_00 != param1) {
            continue;
        }

        switch (v0->unk_00.unk_0A) {
        case 0:
            return v0;
        case 1:
            if ((9 == param2) && (28 == param3)) {
                return v0;
            }
            break;
        case 2:
            if ((26 == param2) && (18 == param3)) {
                return v0;
            }
            break;
        case 3:
            if ((26 == param2) && (17 == param3)) {
                return v0;
            }
            break;
        }
    }

    return NULL;
}

int ov80_021D2CC0(UnkStruct_ov80_021D2C1C *param0, int param1, int param2, int param3)
{
    UnkStruct_ov80_021D2C5C *v0;
    short v1, v2;

    v2 = 0;

    if (param0 == NULL) {
        return 0;
    }

    v0 = ov80_021D2C5C(param0, param1, param2, param3);

    if ((v0 == NULL) || (v0->unk_14 == 0)) {
        if (param0->unk_04 != NULL) {
            CellActor_SetExplicitPalette(param0->unk_04->unk_18, 5 + param0->unk_04->unk_00.unk_09 + param0->unk_04->unk_14);
        }

        param0->unk_04 = NULL;
        return 0;
    }

    if (param0->unk_04 == NULL) {
        param0->unk_02 = 0;
        param0->unk_03 = 0;
    } else {
        if ((v0->unk_00.unk_0A == 2) || (v0->unk_00.unk_0A == 3)) {
            CellActor_SetExplicitPalette(param0->unk_04->unk_18, 5 + param0->unk_04->unk_00.unk_09 + param0->unk_04->unk_14);
        }
    }

    param0->unk_04 = v0;
    return 1;
}

void ov80_021D2D28(UnkStruct_ov80_021D2C1C *param0, int param1)
{
    short v0;
    UnkStruct_ov80_021D2C5C *v1;

    if ((param0->unk_04 == NULL) || (param1 != 1)) {
        return;
    }

    if (param0->unk_03 == 0) {
        CellActor_SetExplicitPalette(param0->unk_04->unk_18, 8 + param0->unk_04->unk_00.unk_09);
    } else {
        CellActor_SetExplicitPalette(param0->unk_04->unk_18, 5 + param0->unk_04->unk_00.unk_09 + param0->unk_04->unk_14);
    }

    param0->unk_02++;

    if (param0->unk_02 == 16) {
        param0->unk_02 = 0;
        param0->unk_03 ^= 1;
    }
}

UnkStruct_ov80_021D2E10 *ov80_021D2D70(const char *param0, int param1)
{
    FSFile v0;
    int v1, v2;
    int v3;
    UnkStruct_ov80_021D2E10 *v4;
    UnkStruct_ov80_021D2AF4 *v5;

    FS_InitFile(&v0);

    if (!FS_OpenFile(&v0, param0)) {
        GF_ASSERT(0);
        return NULL;
    }

    v1 = FS_ReadFile(&v0, &v3, 4);
    GF_ASSERT(v1 >= 0);

    v4 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_ov80_021D2E10));
    memset(v4, 0, sizeof(UnkStruct_ov80_021D2E10));

    v4->unk_04 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_ov80_021D2AF4) * v3);
    memset(v4->unk_04, 0, sizeof(UnkStruct_ov80_021D2AF4) * v3);

    v4->unk_00 = v3;

    for (v2 = 0; v2 < v4->unk_00; v2++) {
        v5 = &(v4->unk_04[v2]);
        v1 = FS_ReadFile(&v0, v5, sizeof(UnkStruct_ov80_021D2AF4));
        v5->unk_16 = v2;
    }

    (void)FS_CloseFile(&v0);

    return v4;
}

void ov80_021D2E10(UnkStruct_ov80_021D2E10 *param0)
{
    Heap_FreeToHeap(param0->unk_04);
    Heap_FreeToHeap(param0);
}

UnkStruct_ov80_021D2AF4 *ov80_021D2E24(UnkStruct_ov80_021D2E10 *param0, int param1, int param2, u16 param3)
{
    int v0;
    UnkStruct_ov80_021D2AF4 *v1;

    for (v0 = 0; v0 < param0->unk_00; v0++) {
        v1 = &(param0->unk_04[v0]);

        if ((v1->unk_00 == param1) && (v1->unk_02 == param2)) {
            if ((v1->unk_14 == 0) || (v1->unk_14 & param3)) {
                return v1;
            } else {
                return NULL;
            }
        }
    }

    return NULL;
}
