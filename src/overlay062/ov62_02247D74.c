#include <nitro.h>
#include <string.h>

#include "overlay062/ov62_const_funcptr_tables.h"

#include "strbuf.h"

#include "struct_defs/union_02022594_020225E0.h"
#include "struct_defs/struct_02030A80.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0208C06C.h"

#include "unk_02002F38.h"
#include "unk_02006E3C.h"
#include "message.h"
#include "string_template.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "gx_layers.h"
#include "unk_02022594.h"
#include "strbuf.h"
#include "unk_02030A80.h"
#include "overlay062/ov62_0222F2C0.h"
#include "overlay062/ov62_022300D8.h"
#include "overlay062/ov62_02231690.h"

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    Window unk_10[2];
} UnkStruct_ov62_02247F7C;

static void ov62_02247D74(UnkStruct_0208C06C * param0, BOOL param1);
static void ov62_02247DB4(UnkStruct_0208C06C * param0);
static void ov62_02247DD8(UnkStruct_0208C06C * param0, int param1, int param2);
static void ov62_02247E9C(UnkStruct_0208C06C * param0);
static void ov62_02247F7C(UnkStruct_0208C06C * param0);
static BOOL ov62_02247FA8(UnkStruct_0208C06C * param0);
static BOOL ov62_02247FFC(UnkStruct_0208C06C * param0);
static BOOL ov62_02248114(UnkStruct_0208C06C * param0);
static BOOL ov62_02248324(UnkStruct_0208C06C * param0);

static void ov62_02247D74 (UnkStruct_0208C06C * param0, BOOL param1)
{
    Window * v0 = &param0->unk_8A4;

    ov62_022302A8(param0, 2, param1);
    Window_Init(v0);
    BGL_AddWindow(param0->unk_14.unk_10, v0, 2, 1, 19, 30, 4, 14, 300);
}

static void ov62_02247DB4 (UnkStruct_0208C06C * param0)
{
    sub_0201ACF4(&param0->unk_8A4);
    BGL_DeleteWindow(&param0->unk_8A4);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
}

static void ov62_02247DD8 (UnkStruct_0208C06C * param0, int param1, int param2)
{
    Strbuf* v0;
    Window * v1 = &param0->unk_8A4;

    if (param1 == 282) {
        StringTemplate * v2;
        Strbuf* v3;
        Strbuf* v4;
        UnkStruct_02030A80 * v5 = param0->unk_88C[param2];

        v2 = ov62_02231690(102);
        v0 = Strbuf_Init(255, 102);
        v3 = sub_02030B94(v5, 102);

        ov62_022349A8(param0, v3);
        v4 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, param1);

        StringTemplate_SetStrbuf(v2, 0, v3, 0, 1, GAME_LANGUAGE);
        StringTemplate_Format(v2, v0, v4);
        Strbuf_Free(v3);
        Strbuf_Free(v4);
        StringTemplate_Free(v2);
    } else {
        v0 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, param1);
    }

    BGL_FillWindow(v1, 0xCC);
    sub_0201D78C(v1, 0, v0, 0, 0, 0xff, ((u32)(((15 & 0xff) << 16) | ((13 & 0xff) << 8) | ((12 & 0xff) << 0))), NULL);
    sub_0201A9A4(v1);
    Strbuf_Free(v0);
}

static void ov62_02247E9C (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02247F7C * v0 = param0->unk_860;
    Window * v1;
    Strbuf* v2;
    int v3 = 1;
    int v4;

    v1 = &v0->unk_10[0];

    Window_Init(v1);
    BGL_AddWindow(param0->unk_14.unk_10, v1, 6, 4, 6, 10, 2, 14, v3);
    BGL_FillWindow(v1, 0x0);

    v2 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, 130);
    v4 = ov62_0223429C(v1, v2);

    sub_0201D78C(v1, 0, v2, v4, 0, 0xff, ((u32)(((15 & 0xff) << 16) | ((13 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    Strbuf_Free(v2);
    sub_0201A9A4(v1);

    v3 += (10 * 2);
    v1 = &v0->unk_10[1];

    Window_Init(v1);
    BGL_AddWindow(param0->unk_14.unk_10, v1, 6, 18, 6, 10, 2, 14, v3);
    BGL_FillWindow(v1, 0x0);

    v2 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, 131);
    v4 = ov62_0223429C(v1, v2);

    sub_0201D78C(v1, 0, v2, v4, 0, 0xff, ((u32)(((15 & 0xff) << 16) | ((13 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    Strbuf_Free(v2);
    sub_0201A9A4(v1);
}

static void ov62_02247F7C (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02247F7C * v0 = param0->unk_860;

    sub_0201ACF4(&v0->unk_10[0]);
    BGL_DeleteWindow(&v0->unk_10[0]);
    sub_0201ACF4(&v0->unk_10[1]);
    BGL_DeleteWindow(&v0->unk_10[1]);
}

static BOOL ov62_02247FA8 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02247F7C * v0 = Heap_AllocFromHeap(102, sizeof(UnkStruct_ov62_02247F7C));

    memset(v0, 0, sizeof(UnkStruct_ov62_02247F7C));
    param0->unk_860 = v0;

    sub_02019EBC(param0->unk_14.unk_10, 2);
    sub_02019EBC(param0->unk_14.unk_10, 3);
    sub_02019EBC(param0->unk_14.unk_10, 6);
    sub_02019EBC(param0->unk_14.unk_10, 7);
    ov62_022315C8(&v0->unk_00, &v0->unk_04, 0);
    ov62_0222FB60(param0, 1);

    return 0;
}

static BOOL ov62_02247FFC (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02247F7C * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        if (ov62_02231664(&v0->unk_08, 1)) {
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, v0->unk_08, param0->unk_14.unk_44);
        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        sub_02003A2C(param0->unk_14.unk_14, 1, 0x2, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 1:
        BGL_SetPriority(0, 0);
        BGL_SetPriority(1, 3);
        BGL_SetPriority(2, 0);
        BGL_SetPriority(3, 2);
        BGL_SetPriority(4, 0);
        BGL_SetPriority(5, 3);
        BGL_SetPriority(6, 1);
        BGL_SetPriority(7, 2);
        sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 3, 0, 0, 0, 102);
        sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 7, 0, 0, 0, 102);
        ov62_02234540(param0, 1);
        ov62_02231454(param0);
        ov62_02234540(param0, 0);
        param0->unk_08++;
        break;
    default:
        ov62_0223376C(param0, 0);
        ov62_0222FB60(param0, 2);
        break;
    }

    return 0;
}

static const UnkUnion_02022594 Unk_ov62_02249788[] = {
    {0x28, 0x48, 0x20, 0x78},
    {0x28, 0x48, 0x90, 0xE8}
};

static BOOL ov62_02248114 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02247F7C * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_02247E9C(param0);
        ov62_02247D74(param0, 0);
        sub_0200710C(param0->unk_14.unk_00, 84, param0->unk_14.unk_10, 7, 0, 0, 0, 102);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        param0->unk_08++;
        break;
    case 1:
        ov62_02231664(&v0->unk_08, 0);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 2)) {
            ov62_02247DD8(param0, 282, param0->unk_86C);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 2:
        if (sub_02022760(&Unk_ov62_02249788[0])) {
            ov62_02234520(param0);
            ov62_02247DD8(param0, 283, 0);
            param0->unk_08++;
        } else if (sub_02022760(&Unk_ov62_02249788[1])) {
            ov62_02234520(param0);
            v0->unk_0C = 1;
            ov62_02247DB4(param0);
            param0->unk_08 = 4;
        }

        break;
    case 3:
        if (sub_02022760(&Unk_ov62_02249788[0])) {
            ov62_02234520(param0);
            ov62_022342BC(param0);
            v0->unk_0C = 0;
            param0->unk_08++;
        } else if (sub_02022760(&Unk_ov62_02249788[1])) {
            ov62_02234520(param0);
            ov62_02247DB4(param0);
            v0->unk_0C = 1;
            param0->unk_08++;
        }
        break;
    case 4:
        ov62_02247F7C(param0);
        param0->unk_08++;
        break;
    case 5:
        ov62_02231664(&v0->unk_08, 1);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 0)) {
            if (v0->unk_0C == 1) {
                ov62_0222FB60(param0, 3);
            } else {
                param0->unk_08++;
            }
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 6:
        if (ov62_022342CC(param0)) {
            ov62_022339A0(param0);
            ov62_022338A8(param0);
            ov62_02247DD8(param0, 285, 0);
            param0->unk_08++;
        } else {
            ov62_0222FB60(param0, 3);
        }
        break;
    default:
        if (!TouchScreen_Tapped()) {
            break;
        }

        ov62_02247DB4(param0);
        ov62_0222FB60(param0, 3);
        break;
    }

    return 0;
}

static BOOL ov62_02248324 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02247F7C * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        param0->unk_08++;
    case 1:
        param0->unk_08++;
    case 2:
        ov62_0223146C(param0);
        sub_02019EBC(param0->unk_14.unk_10, 2);
        sub_02019EBC(param0->unk_14.unk_10, 6);
        sub_02019EBC(param0->unk_14.unk_10, 3);
        sub_02019EBC(param0->unk_14.unk_10, 7);
        ov62_0223376C(param0, 1);
        param0->unk_08++;
        break;
    default:
        if (ov62_02233790(param0) == 0) {
            break;
        }

        if (ov62_02231664(&v0->unk_08, 0)) {
            ov62_022318E8(param0);
            ov62_02231688(&v0->unk_08);
            sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, 16, param0->unk_14.unk_44);
            ov62_0222FB44(param0, 1, 1, param0->unk_10);
            ov62_0222FB60(param0, 5);
            Heap_FreeToHeap(v0);
        } else {
            sub_02003A2C(param0->unk_14.unk_14, 1, 0x2, v0->unk_08, param0->unk_14.unk_44);
            sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        }
        break;
    }

    return 0;
}

BOOL(*const Unk_ov62_02249790[])(UnkStruct_0208C06C *) = {
    ov62_02247FA8,
    ov62_02247FFC,
    ov62_02248114,
    ov62_02248324,
};
