#include "overlay019/ov19_021DA92C.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/archived_sprite.h"
#include "struct_defs/struct_0205AA50.h"

#include "overlay019/ov19_021D0D80.h"
#include "overlay019/ov19_021D61B0.h"
#include "overlay019/struct_ov19_021D4DF0.h"
#include "overlay019/struct_ov19_021D5BAC.h"
#include "overlay019/struct_ov19_021D61B0_decl.h"
#include "overlay019/struct_ov19_021DA9E0.h"
#include "overlay061/struct_ov61_0222C884.h"

#include "cell_actor.h"
#include "heap.h"
#include "message.h"
#include "pokemon.h"
#include "strbuf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "unk_02006E3C.h"
#include "unk_0200762C.h"
#include "unk_0200C440.h"
#include "unk_02018340.h"
#include "unk_0207C908.h"

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
    UnkStruct_ov19_021DA9E0 *unk_08;
} UnkStruct_ov19_021DAE2C;

u32 sub_0207C908(int param0);
u32 sub_0207C920(void);
u32 sub_0207C924(void);
u32 sub_0207C928(void);
u8 sub_0207C92C(int param0);
u32 sub_0207C944(void);
void sub_0201AA10(Window *param0, u32 param1, u32 param2);
static void ov19_021DAB44(UnkStruct_ov19_021DA9E0 *param0);
static void ov19_021DAC4C(UnkStruct_ov19_021DA9E0 *param0);
static void ov19_021DAC90(UnkStruct_ov19_021DA9E0 *param0);
static void ov19_021DACB0(UnkStruct_ov19_021DA9E0 *param0);
static void ov19_021DACDC(UnkStruct_ov19_021DA9E0 *param0);
static void ov19_021DACF8(SysTask *param0, void *param1);
static void ov19_021DADCC(UnkStruct_ov19_021DA9E0 *param0, fx32 param1);
static void ov19_021DAE10(UnkStruct_ov19_021DA9E0 *param0);
static void ov19_021DAE2C(UnkStruct_ov19_021DAE2C *param0);
static void ov19_021DAE60(Window *param0, UnkStruct_ov19_021DA9E0 *param1, u32 param2, u32 param3);
static void ov19_021DB0E4(UnkStruct_ov19_021DA9E0 *param0);
static void ov19_021DB24C(UnkStruct_ov19_021DA9E0 *param0, u8 param1);

BOOL ov19_021DA92C(UnkStruct_ov19_021DA9E0 *param0, UnkStruct_ov19_021D61B0 *param1, const UnkStruct_ov19_021D4DF0 *param2, BGL *param3, CellActorCollection *param4, const MessageLoader *param5, NARC *param6)
{
    int v0;

    if (ov19_021D5E08(param2) == 4) {
        param0->unk_00 = 0;
        return 1;
    }

    param0->unk_14 = param1;
    param0->unk_08 = param3;
    param0->unk_10 = param2;
    param0->unk_0C = param4;
    param0->unk_04 = NULL;
    param0->unk_4C = NULL;
    param0->unk_24 = NULL;
    param0->unk_20 = ov19_021D7818(param1);
    param0->unk_18 = sub_0200C440(9, 6, 15, 10);
    param0->unk_1C = sub_0200C440(1, 2, 15, 10);
    param0->unk_28 = sub_02007204(param6, 16, 1, &(param0->unk_2C), 10);
    param0->unk_30 = NULL;
    param0->unk_44 = MessageLoader_GetNewStrbuf(param5, 21);
    param0->unk_48 = MessageLoader_GetNewStrbuf(param5, 22);
    param0->unk_34 = sub_02006FA0(sub_0207C944(), sub_0207C924(), 1, &(param0->unk_38), 10);

    for (v0 = 0; v0 < 2; v0++) {
        param0->unk_3C[v0] = NULL;
    }

    param0->unk_00 = 1;

    return 1;
}

void ov19_021DA9E0(UnkStruct_ov19_021DA9E0 *param0)
{
    int v0;

    if (param0->unk_00 == 0) {
        return;
    }

    if (param0->unk_04) {
        for (v0 = 0; v0 < 4; v0++) {
            BGL_DeleteWindow(&param0->unk_04[v0]);
        }

        Heap_FreeToHeap(param0->unk_04);
        param0->unk_04 = NULL;
    }

    if (param0->unk_18) {
        sub_0200C560(param0->unk_18);
    }

    if (param0->unk_1C) {
        sub_0200C560(param0->unk_1C);
    }

    if (param0->unk_44) {
        Strbuf_Free(param0->unk_44);
    }

    if (param0->unk_48) {
        Strbuf_Free(param0->unk_48);
    }

    if (param0->unk_24) {
        sub_02007DC8(param0->unk_24);
        param0->unk_24 = NULL;
    }

    if (param0->unk_28) {
        Heap_FreeToHeap(param0->unk_28);
    }

    if (param0->unk_30) {
        CellActor_Delete(param0->unk_30);
    }

    if (param0->unk_34) {
        Heap_FreeToHeap(param0->unk_34);
    }

    for (v0 = 0; v0 < 2; v0++) {
        if (param0->unk_3C[v0] != NULL) {
            CellActor_Delete(param0->unk_3C[v0]);
        }
    }

    ov19_021DAC90(param0);
}

void ov19_021DAA80(UnkStruct_ov19_021DA9E0 *param0)
{
    if (param0->unk_00) {
        sub_02008A94(param0->unk_20);
    }
}

void ov19_021DAA90(UnkStruct_ov19_021DA9E0 *param0)
{
    ArchivedSprite v0;

    BuildArchivedPokemonSprite(&v0, 1, 0, 0, 0, 0, 0);
    param0->unk_24 = sub_02007C34(param0->unk_20, &v0, 44, 84, 0, 0, NULL, NULL);
}

BOOL ov19_021DAAC4(UnkStruct_ov19_021DA9E0 *param0)
{
    if (param0->unk_24) {
        sub_02007DC8(param0->unk_24);
        param0->unk_24 = NULL;
        return 0;
    }

    return 1;
}

void ov19_021DAADC(UnkStruct_ov19_021DA9E0 *param0)
{
    static const UnkStruct_ov61_0222C884 v0[] = {
        { 2, 0, 1, 10, 2, 1, 288 },
        { 2, 5, 3, 5, 1, 1, 308 },
        { 2, 0, 16, 10, 3, 3, 313 },
        { 2, 1, 21, 12, 4, 1, 343 }
    };

    if (param0->unk_00 == 0) {
        return;
    }

    param0->unk_04 = sub_0201A778(10, 4);

    if (param0->unk_04) {
        int v1;

        for (v1 = 0; v1 < 4; v1++) {
            sub_0201A8D4(param0->unk_08, &param0->unk_04[v1], &v0[v1]);

            if (v1 != 3) {
                sub_0201A9F4(&param0->unk_04[v1]);
            } else {
                sub_0201AA10(&param0->unk_04[v1], 12, 2);
            }
        }

        sub_02019448(param0->unk_08, 2);
    }

    ov19_021DAB44(param0);
    ov19_021DAC4C(param0);
}

static void ov19_021DAB44(UnkStruct_ov19_021DA9E0 *param0)
{
    NNSG2dImageProxy v0;
    CellActorResourceData v1;
    u32 v2, v3, v4;

    v2 = sub_0207C944();
    v3 = sub_0207C908(2);

    sub_02006E84(v2, sub_0207C920(), 1, 10 * 0x20, 0x20 * 3, 10);

    for (v4 = 0; v4 < 2; v4++) {
        NNS_G2dInitImageProxy(&v0);
        sub_02006F28(v2, v3, 1, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, (1504 + (8 * v4)) * 0x20, 10, &v0);
        ov19_021D783C(&v1, &v0, ov19_021D77D0(param0->unk_14), param0->unk_38, NULL, 3);

        param0->unk_3C[v4] = ov19_021D785C(param0->unk_0C, &v1, 24 + 36 * v4, 176, 46, NNS_G2D_VRAM_TYPE_2DMAIN);
        GF_ASSERT(param0->unk_3C[v4] != NULL);

        CellActor_SetDrawFlag(param0->unk_3C[v4], 0);
    }

    NNS_G2dInitImageProxy(&v0);

    sub_02006F00(18, 15, 1, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 1480 * 0x20, 10, &v0);
    ov19_021D783C(&v1, &v0, ov19_021D77D0(param0->unk_14), param0->unk_2C, NULL, 3);

    param0->unk_30 = ov19_021D785C(param0->unk_0C, &v1, 56, 176, 47, NNS_G2D_VRAM_TYPE_2DMAIN);
}

static void ov19_021DAC4C(UnkStruct_ov19_021DA9E0 *param0)
{
    if (param0->unk_4C == NULL) {
        UnkStruct_ov19_021DAE2C *v0 = Heap_AllocFromHeap(10, sizeof(UnkStruct_ov19_021DAE2C));

        if (v0) {
            const UnkStruct_ov19_021D5BAC *v1 = ov19_021D5E70(param0->unk_10);

            v0->unk_00 = (v1->unk_0F) ? 4 : 0;
            v0->unk_08 = param0;
            param0->unk_4C = SysTask_Start(ov19_021DACF8, v0, 1);
        } else {
            GF_ASSERT(0);
        }
    }
}

static void ov19_021DAC90(UnkStruct_ov19_021DA9E0 *param0)
{
    if (param0->unk_4C) {
        Heap_FreeToHeap(SysTask_GetParam(param0->unk_4C));
        SysTask_Done(param0->unk_4C);
        param0->unk_4C = NULL;
    }
}

static void ov19_021DACB0(UnkStruct_ov19_021DA9E0 *param0)
{
    UnkStruct_ov19_021DAE2C *v0 = SysTask_GetParam(param0->unk_4C);

    if (v0) {
        const UnkStruct_ov19_021D5BAC *v1 = ov19_021D5E70(param0->unk_10);

        v0->unk_00 = (v1->unk_0F) ? 4 : 0;
        ov19_021DAE10(param0);
    }
}

static void ov19_021DACDC(UnkStruct_ov19_021DA9E0 *param0)
{
    UnkStruct_ov19_021DAE2C *v0 = SysTask_GetParam(param0->unk_4C);

    if (v0) {
        v0->unk_00 = 4;
        ov19_021DAE10(param0);
    }
}

static void ov19_021DACF8(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021DAE2C *v0 = (UnkStruct_ov19_021DAE2C *)param1;
    UnkStruct_ov19_021DA9E0 *v1 = v0->unk_08;
    const UnkStruct_ov19_021D5BAC *v2;

    switch (v0->unk_00) {
    case 0:
        if (ov19_021D5E4C(v1->unk_10) == 0) {
            break;
        }

        v0->unk_02 = 0;
        v0->unk_00 = 1;
    case 1:
        ov19_021DAE60(&v1->unk_04[3], v1, v0->unk_02, 0);
        sub_0201ACCC(&v1->unk_04[3]);
        v0->unk_04 = 0;
        v0->unk_00 = 2;
        break;
    case 2:
        v2 = ov19_021D5E70(v1->unk_10);

        if (!v2->unk_0F && (++(v0->unk_04) > 80)) {
            ov19_021DAE2C(v0);
            v0->unk_04 = 0;
            v0->unk_06 = 0;
            v0->unk_00 = 3;
        }
        break;
    case 3:
        v0->unk_06 += 4;

        ov19_021DADCC(v1, 4 << FX32_SHIFT);
        sub_0201C04C(&v1->unk_04[3], 0, 4, 0x0);
        sub_0201ACCC(&v1->unk_04[3]);

        if (v0->unk_06 >= 16) {
            if (v0->unk_02 == 1) {
                ov19_021DAE10(v1);
            }

            if (++(v0->unk_02) >= 4) {
                v0->unk_02 = 0;
            }

            v0->unk_06 = 0;
            v0->unk_04 = 0;
            v0->unk_00 = 2;
        }
        break;
    case 4:
        break;
    }
}

static void ov19_021DADCC(UnkStruct_ov19_021DA9E0 *param0, fx32 param1)
{
    int v0;
    VecFx32 v1;

    for (v0 = 0; v0 < 2; v0++) {
        v1 = *CellActor_GetPosition(param0->unk_3C[v0]);
        v1.y -= param1;

        CellActor_SetPosition(param0->unk_3C[v0], &v1);

        if ((v0 == 0) && CellActor_GetDrawFlag(param0->unk_3C[v0])) {
            u32 v2, v3;

            v2 = v1.x >> FX32_SHIFT;
            v3 = v1.y >> FX32_SHIFT;
        }
    }
}

static void ov19_021DAE10(UnkStruct_ov19_021DA9E0 *param0)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        CellActor_SetDrawFlag(param0->unk_3C[v0], 0);
    }
}

static void ov19_021DAE2C(UnkStruct_ov19_021DAE2C *param0)
{
    u32 v0;
    Window *v1;

    v1 = &(param0->unk_08->unk_04[3]);

    BGL_FillWindow(v1, 0);
    ov19_021DAE60(v1, param0->unk_08, param0->unk_02, 0);

    v0 = param0->unk_02 + 1;

    if (v0 >= 4) {
        v0 = 0;
    }

    ov19_021DAE60(v1, param0->unk_08, v0, 1);
}

static void ov19_021DAE60(Window *param0, UnkStruct_ov19_021DA9E0 *param1, u32 param2, u32 param3)
{
    const Strbuf *v0;
    u32 v1;

    v1 = (param3 * 16) + 0;

    switch (param2) {
    case 0:
        v0 = param1->unk_10->unk_4C.unk_1C;
        break;
    case 2:
        v0 = param1->unk_10->unk_4C.unk_20;
        break;
    case 3:
        v0 = param1->unk_10->unk_4C.unk_24;
        break;

    case 1: {
        VecFx32 v2;
        u32 v3, v4;

        v3 = sub_0207C944();
        v4 = sub_0207C908(param1->unk_10->unk_4C.unk_0C);

        sub_02006EC0(sub_0207C944(), sub_0207C908(param1->unk_10->unk_4C.unk_0C), 0, 1504 * 0x20, 0, 1, 10);

        v2 = *CellActor_GetPosition(param1->unk_3C[0]);
        v2.y = (176 + (16 * param3)) << FX32_SHIFT;

        CellActor_SetPosition(param1->unk_3C[0], &v2);
        CellActor_SetExplicitPalette(param1->unk_3C[0], 10 + sub_0207C92C(param1->unk_10->unk_4C.unk_0C));
        CellActor_SetDrawFlag(param1->unk_3C[0], 1);

        if (param1->unk_10->unk_4C.unk_0C != param1->unk_10->unk_4C.unk_0D) {
            sub_02006EC0(sub_0207C944(), sub_0207C908(param1->unk_10->unk_4C.unk_0D), 0, (1504 + 8) * 0x20, 0, 1, 10);

            v2.x += (36 << FX32_SHIFT);

            CellActor_SetPosition(param1->unk_3C[1], &v2);
            CellActor_SetExplicitPalette(param1->unk_3C[1], 10 + sub_0207C92C(param1->unk_10->unk_4C.unk_0D));
            CellActor_SetDrawFlag(param1->unk_3C[1], 1);
        } else {
            CellActor_SetDrawFlag(param1->unk_3C[1], 0);
        }
    }
        return;
    default:
        return;
    }

    Text_AddPrinterWithParamsAndColor(param0, FONT_SYSTEM, v0, 0, v1, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(9, 6, 0), NULL);
}

void ov19_021DAF98(UnkStruct_ov19_021DA9E0 *param0)
{
    if (param0->unk_00 == 0) {
        return;
    }

    BGL_FillWindow(&param0->unk_04[0], 15);
    BGL_FillWindow(&param0->unk_04[1], 15);
    BGL_FillWindow(&param0->unk_04[2], 15);
    BGL_FillWindow(&param0->unk_04[3], 0);

    if (ov19_021D5E4C(param0->unk_10)) {
        ov19_021DB0E4(param0);
    }

    sub_0201ACCC(&param0->unk_04[0]);
    sub_0201ACCC(&param0->unk_04[1]);
    sub_0201ACCC(&param0->unk_04[2]);
    sub_0201ACCC(&param0->unk_04[3]);
}

void ov19_021DAFF8(UnkStruct_ov19_021DA9E0 *param0)
{
    if (param0->unk_00 == 0) {
        return;
    }

    BGL_FillWindow(&param0->unk_04[0], 15);
    BGL_FillWindow(&param0->unk_04[1], 15);
    BGL_FillWindow(&param0->unk_04[2], 15);
    BGL_FillWindow(&param0->unk_04[3], 0);

    if (param0->unk_24) {
        sub_02007DC8(param0->unk_24);
        param0->unk_24 = NULL;
    }

    if (ov19_021D5E4C(param0->unk_10)) {
        ov19_021DB0E4(param0);
    } else {
        ov19_021DB24C(param0, 0);
    }

    sub_0201ACCC(&param0->unk_04[0]);
    sub_0201ACCC(&param0->unk_04[1]);
    sub_0201ACCC(&param0->unk_04[2]);
    sub_0201ACCC(&param0->unk_04[3]);

    ov19_021DACB0(param0);
}

void ov19_021DB078(UnkStruct_ov19_021DA9E0 *param0)
{
    if (param0->unk_00 == 0) {
        return;
    }

    BGL_FillWindow(&param0->unk_04[0], 15);
    BGL_FillWindow(&param0->unk_04[1], 15);
    BGL_FillWindow(&param0->unk_04[2], 15);
    BGL_FillWindow(&param0->unk_04[3], 0);

    if (param0->unk_24) {
        sub_02007DC8(param0->unk_24);
        param0->unk_24 = NULL;
    }

    ov19_021DB24C(param0, 0);

    sub_0201ACCC(&param0->unk_04[0]);
    sub_0201ACCC(&param0->unk_04[1]);
    sub_0201ACCC(&param0->unk_04[2]);
    sub_0201ACCC(&param0->unk_04[3]);

    ov19_021DACDC(param0);
}

static void ov19_021DB0E4(UnkStruct_ov19_021DA9E0 *param0)
{
    ArchivedSprite v0;
    const UnkStruct_ov19_021D5BAC *v1;

    v1 = ov19_021D5E70(param0->unk_10);

    Text_AddPrinterWithParamsAndColor(&param0->unk_04[0], FONT_SYSTEM, v1->unk_18, 2, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(9, 6, 15), NULL);
    Text_AddPrinterWithParamsAndColor(&param0->unk_04[2], FONT_SYSTEM, v1->unk_14, 2, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 15), NULL);
    Text_AddPrinterWithParamsAndColor(&param0->unk_04[2], FONT_SYSTEM, v1->unk_14, 2, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 15), NULL);

    switch (v1->unk_0E) {
    case 0:
        Text_AddPrinterWithParamsAndColor(&param0->unk_04[2], FONT_SYSTEM, param0->unk_44, 70, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(7, 8, 15), NULL);
        break;
    case 1:
        Text_AddPrinterWithParamsAndColor(&param0->unk_04[2], FONT_SYSTEM, param0->unk_48, 70, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 4, 15), NULL);
        break;
    }

    if (v1->unk_0F == 0) {
        Text_AddPrinterWithParamsAndColor(&param0->unk_04[3], FONT_SYSTEM, v1->unk_1C, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(9, 6, 0), NULL);

        if (v1->unk_08) {
            sub_0200C648(param0->unk_18, 2, v1->unk_08, 3, 2, &(param0->unk_04[1]), 0, 0);
        }

        sub_0200C648(param0->unk_1C, 1, v1->unk_0A, 3, 1, &(param0->unk_04[2]), 0, 16);
    }

    BoxPokemon_BuildArchivedSprite(&v0, v1->unk_00, 2, 0);
    param0->unk_24 = sub_02007C34(param0->unk_20, &v0, 44, 84, 0, 0, NULL, NULL);
    ov19_021DB24C(param0, v1->unk_0B);
}

BOOL ov19_021DB220(UnkStruct_ov19_021DA9E0 *param0)
{
    if (param0->unk_00 == 0) {
        return 1;
    }

    return 1;
}

void ov19_021DB224(UnkStruct_ov19_021DA9E0 *param0)
{
    if (param0->unk_00 == 0) {
        return;
    }

    if (ov19_021D5E4C(param0->unk_10)) {
        const UnkStruct_ov19_021D5BAC *v0;

        v0 = ov19_021D5E70(param0->unk_10);
        ov19_021DB24C(param0, v0->unk_0B);
    }
}

static void ov19_021DB24C(UnkStruct_ov19_021DA9E0 *param0, u8 param1)
{
    u16 *v0;
    u32 v1;
    int v2;

    v1 = (19 * 32) + 4;
    v0 = sub_02019FE4(param0->unk_08, 2);
    v0 += v1;

    for (v2 = 0; v2 < 6; v2++) {
        if (param1 & (1 << v2)) {
            v0[v2] = (2 << 12) | (152 + v2);
        } else {
            v0[v2] = (2 << 12) | (132 + v2);
        }
    }

    sub_02019460(param0->unk_08, 2, v0, 6 * sizeof(u16), v1);
}

void ov19_021DB2B0(UnkStruct_ov19_021DA9E0 *param0)
{
    const UnkStruct_ov19_021D5BAC *v0;

    if (param0->unk_00 == 0) {
        return;
    }

    v0 = ov19_021D5E70(param0->unk_10);
    BGL_FillWindow(&param0->unk_04[3], 0);

    if (v0->unk_0F == 0) {
        Text_AddPrinterWithParamsAndColor(&param0->unk_04[3], FONT_SYSTEM, v0->unk_1C, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(9, 6, 0), NULL);
    }

    ov19_021DACB0(param0);
}
