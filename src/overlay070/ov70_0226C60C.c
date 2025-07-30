#include "overlay070/ov70_0226C60C.h"

#include <nitro.h>
#include <ppwlobby/ppw_lobby.h>
#include <string.h>

#include "overlay066/ov66_0222DDF0.h"
#include "overlay066/struct_ov66_0222DFF8_decl.h"
#include "overlay070/ov70_0225C9B4.h"
#include "overlay070/ov70_0225D9A4.h"
#include "overlay070/ov70_02261E10.h"
#include "overlay070/ov70_0226C338.h"
#include "overlay070/ov70_0226C8B4.h"
#include "overlay070/ov70_0226CE54.h"
#include "overlay070/struct_ov70_0225CA20_decl.h"
#include "overlay070/struct_ov70_0225DEE8_decl.h"
#include "overlay070/struct_ov70_02261E10_decl.h"
#include "overlay070/struct_ov70_0226C39C_decl.h"
#include "overlay070/struct_ov70_0226C914_decl.h"
#include "overlay070/struct_ov70_0226CF38_decl.h"

#include "heap.h"

typedef struct UnkStruct_ov70_0226C6F8_t {
    UnkStruct_ov70_0225DEE8 *unk_00;
    UnkStruct_ov66_0222DFF8 *unk_04;
    UnkStruct_ov70_02261E10 *unk_08;
    UnkStruct_ov70_0225CA20 *unk_0C;
    UnkStruct_ov70_0226C39C *unk_10;
    UnkStruct_ov70_0226CF38 *unk_14;
    UnkStruct_ov70_0226C914 *unk_18;
} UnkStruct_ov70_0226C6F8;

static u32 ov70_0226C81C(PPW_LOBBY_TIME_EVENT param0);
static u32 ov70_0226C848(PPW_LOBBY_TIME_EVENT param0);
static u32 ov70_0226C87C(PPW_LOBBY_TIME_EVENT param0);
static void ov70_0226C8A8(UnkStruct_ov70_0226C6F8 *param0);

UnkStruct_ov70_0226C6F8 *ov70_0226C60C(u32 heapID, UnkStruct_ov70_0225DEE8 *param1)
{
    UnkStruct_ov70_0226C6F8 *v0;
    u32 v1, v2, v3;
    u32 v4, v5, v6, v7, v8, v9;

    v0 = Heap_Alloc(heapID, sizeof(UnkStruct_ov70_0226C6F8));
    memset(v0, 0, sizeof(UnkStruct_ov70_0226C6F8));

    v0->unk_00 = param1;
    v0->unk_04 = ov70_0225DEE8(param1);
    v0->unk_08 = ov70_0225DEF8(param1);
    v0->unk_0C = ov70_0225DEF0(param1);

    v1 = ov70_0226C81C(ov66_0222E1B8(v0->unk_04));
    v2 = ov70_0226C848(ov66_0222E1D0(v0->unk_04));
    v3 = ov70_0226C87C(ov66_0222E1E8(v0->unk_04));

    v0->unk_10 = ov70_0226C338(heapID, v1, v2, v3);
    v0->unk_14 = ov70_0226CE54(param1, heapID);
    v0->unk_18 = ov70_0226C8B4(v0->unk_04, v0->unk_08, heapID);

    ov70_0225CAEC(v0->unk_0C, v1);

    v4 = ov66_0222E158(v0->unk_04);
    v5 = ov66_0222E120(v0->unk_04);
    v6 = ov66_0222E170(v0->unk_04);
    v7 = ov66_0222E19C(v0->unk_04);
    v8 = ov66_0222E12C(v0->unk_04);
    v9 = ov66_0222E190(v0->unk_04);

    {
        if (v4 == 2) {
            ov70_0226260C(v0->unk_08);
        }
    }

    {
        if (v4 != 1) {
            if ((v4 == 0) && (v7 == 1)) {
                ov70_02262658(v0->unk_08, 3);
            }
        }
    }

    {
        if (v6 == 1) {
            ov70_0226246C(v0->unk_08);
        }
    }

    {
        if (v8 == 1) {
            ov70_0226C8A8(v0);
        }
    }

    return v0;
}

void ov70_0226C6F8(UnkStruct_ov70_0226C6F8 *param0)
{
    ov70_0226C914(param0->unk_18);
    ov70_0226CF38(param0->unk_14);
    ov70_0226C39C(param0->unk_10);

    Heap_Free(param0);
}

void ov70_0226C718(UnkStruct_ov70_0226C6F8 *param0)
{
    if (ov66_0222E084(param0->unk_04, 1)) {
        u32 v0;

        v0 = ov70_0226C81C(ov66_0222E1B8(param0->unk_04));

        ov70_0226C430(param0->unk_10, v0);
        ov70_0225CB08(param0->unk_0C, v0);
    }

    if (ov66_0222E084(param0->unk_04, 2)) {
        u32 v1;

        v1 = ov70_0226C848(ov66_0222E1D0(param0->unk_04));
        ov70_0226C4A0(param0->unk_10, v1);
    }

    if (ov66_0222E084(param0->unk_04, 3)) {
        u32 v2;

        v2 = ov70_0226C87C(ov66_0222E1E8(param0->unk_04));
        ov70_0226C4C8(param0->unk_10, v2);
    }

    if ((ov66_0222E19C(param0->unk_04) == 1) && (ov66_0222E158(param0->unk_04) == 0)) {
        if (ov70_0226271C(param0->unk_08) == 0) {
            ov70_02262658(param0->unk_08, 1);
        }
    }

    if (ov66_0222E084(param0->unk_04, 5)) {
        if (ov66_0222E158(param0->unk_04) == 1) {
            ov70_0226260C(param0->unk_08);
            ov70_02262658(param0->unk_08, 2);
        } else {
            (void)0;
        }
    }

    if (ov66_0222E084(param0->unk_04, 6)) {
        if (ov66_0222E170(param0->unk_04) == 1) {
            ov70_0226246C(param0->unk_08);
        }
    }

    if (ov66_0222E12C(param0->unk_04) == 1) {
        ov70_02262478(param0->unk_08);

        ov70_0226C8A8(param0);
    }

    ov70_0226C3A4(param0->unk_10);
    ov70_0226CF40(param0->unk_14);
    ov70_0226C924(param0->unk_18);
}

BOOL ov70_0226C810(const UnkStruct_ov70_0226C6F8 *param0, u32 param1, int param2)
{
    return ov70_0226CFFC(param0->unk_14, param1, param2);
}

static u32 ov70_0226C81C(PPW_LOBBY_TIME_EVENT param0)
{
    switch (param0) {
    case PPW_LOBBY_TIME_EVENT_NEON_A0:
    case PPW_LOBBY_TIME_EVENT_NEON_A1:
    case PPW_LOBBY_TIME_EVENT_NEON_A2:
    case PPW_LOBBY_TIME_EVENT_NEON_A3:
    case PPW_LOBBY_TIME_EVENT_NEON_A4:
    case PPW_LOBBY_TIME_EVENT_NEON_A5:
        return param0 - PPW_LOBBY_TIME_EVENT_NEON_A0;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}

static u32 ov70_0226C848(PPW_LOBBY_TIME_EVENT param0)
{
    switch (param0) {
    case PPW_LOBBY_TIME_EVENT_NEON_B0:
    case PPW_LOBBY_TIME_EVENT_NEON_B1:
    case PPW_LOBBY_TIME_EVENT_NEON_B2:
    case PPW_LOBBY_TIME_EVENT_NEON_B3:
        return param0 - PPW_LOBBY_TIME_EVENT_NEON_B0;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}

static u32 ov70_0226C87C(PPW_LOBBY_TIME_EVENT param0)
{
    switch (param0) {
    case PPW_LOBBY_TIME_EVENT_NEON_C0:
    case PPW_LOBBY_TIME_EVENT_NEON_C1:
    case PPW_LOBBY_TIME_EVENT_NEON_C2:
    case PPW_LOBBY_TIME_EVENT_NEON_C3:
        return param0 - PPW_LOBBY_TIME_EVENT_NEON_C0;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}

static void ov70_0226C8A8(UnkStruct_ov70_0226C6F8 *param0)
{
    NNS_G3dGlbLightColor(2, GX_RGB(0, 0, 0));
}
