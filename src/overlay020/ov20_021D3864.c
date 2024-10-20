#include "overlay020/ov20_021D3864.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_020998EC_decl.h"
#include "struct_defs/struct_0205AA50.h"

#include "overlay020/ov20_021D2098.h"
#include "overlay020/struct_ov20_021D16E8_decl.h"
#include "overlay020/struct_ov20_021D2128_decl.h"
#include "overlay061/struct_ov61_0222C884.h"

#include "cell_actor.h"
#include "font.h"
#include "heap.h"
#include "message.h"
#include "strbuf.h"
#include "text.h"
#include "unk_02006E3C.h"
#include "unk_02018340.h"

typedef struct UnkStruct_ov20_021D3980_t {
    UnkStruct_ov20_021D2128 *unk_00;
    const UnkStruct_ov20_021D16E8 *unk_04;
    const UnkStruct_020998EC *unk_08;
    CellActor *unk_0C;
} UnkStruct_ov20_021D3980;

static void ov20_021D390C(BGL *param0, const UnkStruct_ov61_0222C884 *param1, u32 param2);
static void ov20_021D3980(UnkStruct_ov20_021D3980 *param0);

UnkStruct_ov20_021D3980 *ov20_021D3864(UnkStruct_ov20_021D2128 *param0, const UnkStruct_ov20_021D16E8 *param1, const UnkStruct_020998EC *param2)
{
    UnkStruct_ov20_021D3980 *v0 = Heap_AllocFromHeap(35, sizeof(UnkStruct_ov20_021D3980));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_0C = NULL;

    return v0;
}

void ov20_021D3880(UnkStruct_ov20_021D3980 *param0)
{
    if (param0->unk_0C) {
        CellActor_Delete(param0->unk_0C);
    }

    Heap_FreeToHeap(param0);
}

void ov20_021D3898(UnkStruct_ov20_021D3980 *param0, NARC *param1)
{
    static const UnkStruct_ov61_0222C884 v0 = {
        3, 3, 6, 10, 2, 13, 64
    };
    static const UnkStruct_ov61_0222C884 v1 = {
        3, 19, 6, 10, 2, 13, 84
    };
    BGL *v2;

    v2 = ov20_021D2E04(param0->unk_00);

    sub_0200710C(param1, 4, v2, 3, 0, 0, 1, 35);
    sub_020070E8(param1, 5, v2, 3, 0, 0, 1, 35);

    ov20_021D390C(v2, &v0, 0);
    ov20_021D390C(v2, &v1, 1);
    ov20_021D3980(param0);

    sub_02019448(v2, 3);
}

static void ov20_021D390C(BGL *param0, const UnkStruct_ov61_0222C884 *param1, u32 param2)
{
    Window v0;
    Strbuf *v1;
    u32 v2;

    sub_0201A8D4(param0, &v0, param1);
    sub_0201A9F4(&v0);
    BGL_FillWindow(&v0, 14);

    v1 = MessageBank_GetNewStrbufFromNARC(26, 438, param2, 35);
    v2 = ((param1->unk_03 * 8) - Font_CalcStrbufWidth(FONT_SYSTEM, v1, 0)) / 2;

    Text_AddPrinterWithParamsAndColor(&v0, FONT_SYSTEM, v1, v2, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 14), NULL);
    sub_0201ACCC(&v0);
    Strbuf_Free(v1);
    BGL_DeleteWindow(&v0);
}

static void ov20_021D3980(UnkStruct_ov20_021D3980 *param0)
{
    CellActorResourceData v0;

    ov20_021D2E0C(param0->unk_00, &v0, 0, 3);
    param0->unk_0C = ov20_021D2E50(param0->unk_00, &v0, 64, 56, 5, NNS_G2D_VRAM_TYPE_2DMAIN);

    CellActor_SetAnim(param0->unk_0C, 2);
    CellActor_SetDrawFlag(param0->unk_0C, 0);
}

void ov20_021D39BC(UnkStruct_ov20_021D3980 *param0)
{
    CellActor_SetAnim(param0->unk_0C, 3);
}

void ov20_021D39C8(UnkStruct_ov20_021D3980 *param0)
{
    CellActor_SetAnim(param0->unk_0C, 2);
}

void ov20_021D39D4(UnkStruct_ov20_021D3980 *param0, BOOL param1)
{
    CellActor_SetDrawFlag(param0->unk_0C, param1);
}

BOOL ov20_021D39E0(UnkStruct_ov20_021D3980 *param0)
{
    return CellActor_GetDrawFlag(param0->unk_0C);
}

void ov20_021D39EC(UnkStruct_ov20_021D3980 *param0, int param1)
{
    VecFx32 v0;

    v0.z = 0;

    switch (param1) {
    case 0:
    default:
        v0.x = 64 * FX32_ONE;
        v0.y = 56 * FX32_ONE;
        break;
    case 1:
        v0.x = 192 * FX32_ONE;
        v0.y = 56 * FX32_ONE;
        break;
    }

    CellActor_SetPosition(param0->unk_0C, &v0);
    CellActor_SetAnim(param0->unk_0C, 2);
}

void ov20_021D3A2C(UnkStruct_ov20_021D3980 *param0)
{
    sub_02019184(ov20_021D2E04(param0->unk_00), 3, 3, 64);
}

void ov20_021D3A40(UnkStruct_ov20_021D3980 *param0)
{
    sub_02019184(ov20_021D2E04(param0->unk_00), 3, 3, 0);
}
