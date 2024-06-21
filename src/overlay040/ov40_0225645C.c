#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/sys_task.h"
#include "overlay025/struct_ov25_02255224_decl.h"
#include "overlay025/struct_ov25_022555E8_decl.h"
#include "overlay025/struct_ov25_022558C4_decl.h"
#include "overlay040/struct_ov40_0225645C_decl.h"

#include "overlay025/struct_ov25_0225517C.h"
#include "overlay025/struct_ov25_02255810.h"
#include "overlay025/struct_ov25_02255958.h"
#include "overlay040/struct_ov40_0225645C_1.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "unk_02006E3C.h"
#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_02018340.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "overlay025/poketch_system.h"
#include "overlay025/ov25_02254560.h"
#include "overlay025/ov25_02255090.h"
#include "overlay025/ov25_02255540.h"
#include "overlay040/ov40_0225645C.h"

struct UnkStruct_ov40_0225645C_t {
    const UnkStruct_ov40_0225645C_1 * unk_00;
    BGL * unk_04;
    u32 unk_08[6];
    UnkStruct_ov25_022555E8 * unk_20;
    UnkStruct_ov25_022558C4 * unk_24[11];
    UnkStruct_ov25_02255958 unk_50;
    UnkStruct_ov25_02255958 unk_64;
    u32 unk_78;
    u32 unk_7C;
    u32 unk_80;
    BOOL unk_84;
    BOOL unk_88;
    SysTask * unk_8C;
};

static void ov40_022564D4(UnkStruct_ov40_0225645C * param0, const UnkStruct_ov40_0225645C_1 * param1);
static void ov40_02256598(UnkStruct_ov40_0225645C * param0);
static void ov40_02256604(UnkStruct_ov25_02255224 * param0);
static void ov40_02256618(SysTask * param0, void * param1);
static void ov40_022566B0(SysTask * param0, void * param1);
static void ov40_02256704(SysTask * param0, void * param1);
static void ov40_022567D8(UnkStruct_ov40_0225645C * param0);
static void ov40_022567E0(SysTask * param0, void * param1);
static void ov40_02256808(u32 param0, const UnkStruct_ov40_0225645C_1 * param1);
static void ov40_02256848(UnkStruct_ov40_0225645C * param0, const UnkStruct_ov40_0225645C_1 * param1);
static void ov40_02256958(UnkStruct_ov25_022558C4 ** param0, u32 param1);
static void ov40_02256A14(UnkStruct_ov25_022558C4 * param0, u32 param1);

BOOL ov40_0225645C (UnkStruct_ov40_0225645C ** param0, const UnkStruct_ov40_0225645C_1 * param1, BGL * param2)
{
    UnkStruct_ov40_0225645C * v0 = (UnkStruct_ov40_0225645C *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov40_0225645C));

    if (v0 != NULL) {
        ov25_02255090(v0->unk_08, 4);

        v0->unk_00 = param1;
        v0->unk_04 = ov25_02254674();
        v0->unk_20 = ov25_02254664();
        v0->unk_88 = 0;
        v0->unk_8C = CoreSys_ExecuteAfterVBlank(ov40_022567E0, v0, 0);

        ov40_022564D4(v0, param1);

        if (v0->unk_04 != NULL) {
            *param0 = v0;
            return 1;
        }
    }

    return 0;
}

void ov40_022564B8 (UnkStruct_ov40_0225645C * param0)
{
    if (param0 != NULL) {
        ov40_02256598(param0);
        SysTask_Done(param0->unk_8C);
        Heap_FreeToHeap(param0);
    }
}

static void ov40_022564D4 (UnkStruct_ov40_0225645C * param0, const UnkStruct_ov40_0225645C_1 * param1)
{
    static const UnkStruct_ov25_02255810 v0[] = {
        {
            {(56 << FX32_SHIFT), (128 << FX32_SHIFT)},
            7,
            0,
            2,
            0,
            1
        },
        {
            {(168 << FX32_SHIFT), (128 << FX32_SHIFT)},
            6,
            0,
            2,
            0,
            1
        },
        {
            {(112 << FX32_SHIFT), (136 << FX32_SHIFT)},
            4,
            0,
            2,
            0,
            1
        },
        {
            {(48 << FX32_SHIFT), (40 << FX32_SHIFT)},
            0,
            0,
            2,
            0,
            0
        },
        {
            {(64 << FX32_SHIFT), (40 << FX32_SHIFT)},
            0,
            0,
            2,
            0,
            0
        },
        {
            {(80 << FX32_SHIFT), (40 << FX32_SHIFT)},
            0,
            0,
            2,
            0,
            0
        },
        {
            {(152 << FX32_SHIFT), (40 << FX32_SHIFT)},
            0,
            0,
            2,
            0,
            0
        },
        {
            {(168 << FX32_SHIFT), (40 << FX32_SHIFT)},
            0,
            0,
            2,
            0,
            0
        },
        {
            {(184 << FX32_SHIFT), (40 << FX32_SHIFT)},
            0,
            0,
            2,
            0,
            0
        },
        {
            {(96 << FX32_SHIFT), (40 << FX32_SHIFT)},
            10,
            0,
            2,
            0,
            0
        },
        {
            {(200 << FX32_SHIFT), (40 << FX32_SHIFT)},
            10,
            0,
            2,
            0,
            0
        },
    };
    int v1;
    u32 v2[3];
    u32 v3;

    ov25_02255360(1);

    v3 = sub_02006EC0(12, 84, 1, 0, 0, 1, 8);
    v3 /= 20;
    param0->unk_78 = v3;

    ov40_02256808(v3, param1);
    ov25_02255958(&param0->unk_50, 12, 82, 83, 8);
    ov25_02255958(&param0->unk_64, 12, 5, 6, 8);

    for (v1 = 0; v1 < 11; v1++) {
        if ((v1 >= 0) && (v1 <= 2)) {
            param0->unk_24[v1] = ov25_02255810(param0->unk_20, &v0[v1], &param0->unk_64);
            ov25_02255940(param0->unk_24[v1], v3 + v1 * 0x20);
        } else {
            param0->unk_24[v1] = ov25_02255810(param0->unk_20, &v0[v1], &param0->unk_50);
        }

        ov25_02255948(param0->unk_24[v1], 1);
    }

    ov40_02256848(param0, param1);
}

static void ov40_02256598 (UnkStruct_ov40_0225645C * param0)
{
    int v0;

    for (v0 = 0; v0 < 11; v0++) {
        if (param0->unk_24[v0]) {
            ov25_022558B0(param0->unk_20, param0->unk_24[v0]);
        }
    }

    ov25_022559B0(&param0->unk_64);
    ov25_022559B0(&param0->unk_50);
}

static const UnkStruct_ov25_0225517C Unk_ov40_02256A60[] = {
    {0x0, ov40_02256618, 0x0},
    {0x1, ov40_022566B0, 0x0},
    {0x2, ov40_02256704, 0x0},
    {0x0, NULL, 0x0}
};

void ov40_022565C8 (UnkStruct_ov40_0225645C * param0, u32 param1)
{
    ov25_0225517C(Unk_ov40_02256A60, param1, param0, param0->unk_00, param0->unk_08, 2, 8);
}

BOOL ov40_022565EC (UnkStruct_ov40_0225645C * param0, u32 param1)
{
    return ov25_02255130(param0->unk_08, param1);
}

BOOL ov40_022565F8 (UnkStruct_ov40_0225645C * param0)
{
    return ov25_02255154(param0->unk_08);
}

static void ov40_02256604 (UnkStruct_ov25_02255224 * param0)
{
    UnkStruct_ov40_0225645C * v0 = ov25_0225523C(param0);
    ov25_02255224(v0->unk_08, param0);
}

static void ov40_02256618 (SysTask * param0, void * param1)
{
    static const UnkStruct_ov97_0222DB78 v0 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0x7000,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        2,
        0,
        0,
        1
    };
    GXSDispCnt v1;
    UnkStruct_ov40_0225645C * v2;

    v2 = ov25_0225523C(param1);

    sub_020183C4(v2->unk_04, 6, &v0, 0);
    sub_02006E3C(12, 81, v2->unk_04, 6, 0, 0, 1, 8);
    sub_02006E60(12, 80, v2->unk_04, 6, 0, 0, 1, 8);

    ov25_022546B8(0, 0);
    sub_02019448(v2->unk_04, 6);

    G2S_SetBGMosaicSize(0, 0);
    G2S_SetOBJMosaicSize(0, 0);

    v1 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v1.visiblePlane | GX_PLANEMASK_BG2);

    ov40_02256604(param1);
}

static void ov40_022566B0 (SysTask * param0, void * param1)
{
    UnkStruct_ov40_0225645C * v0 = ov25_0225523C(param1);

    switch (ov25_02255248(param1)) {
    case 0:
        v0->unk_84 = 1;
        ov25_0225524C(param1);
        break;
    case 1:
        if (ov40_022565EC(v0, 2)) {
            G2S_SetBGMosaicSize(0, 0);
            G2S_SetOBJMosaicSize(0, 0);
            sub_02019044(v0->unk_04, 6);
            ov40_02256604(param1);
        }
        break;
    }
}

static void ov40_02256704 (SysTask * param0, void * param1)
{
    UnkStruct_ov40_0225645C * v0 = ov25_0225523C(param1);
    const UnkStruct_ov40_0225645C_1 * v1 = ov25_02255240(param1);

    switch (ov25_02255248(param1)) {
    case 0:
        v0->unk_84 = 0;
        v0->unk_80 = 0;
        v0->unk_7C = 10;
        ov40_022567D8(v0);
        PoketchSystem_PlaySoundEffect(1656);
        ov25_0225524C(param1);
        break;
    case 1:
        ov40_02256808(v0->unk_78, v1);
        ov40_02256848(v0, v1);
        ov25_0225524C(param1);
        break;
    case 2:
        if (v0->unk_84) {
            v0->unk_7C = 0;
            ov40_022567D8(v0);
            ov25_0225524C(param1);
            break;
        }

        if (++(v0->unk_80) >= 4) {
            v0->unk_80 = 0;
            v0->unk_7C--;

            ov40_022567D8(v0);

            if (v0->unk_7C == 0) {
                ov25_0225524C(param1);
            }
        }
        break;
    case 3:
        ov40_02256604(param1);
        break;
    }
}

static void ov40_022567D8 (UnkStruct_ov40_0225645C * param0)
{
    param0->unk_88 = 1;
}

static void ov40_022567E0 (SysTask * param0, void * param1)
{
    UnkStruct_ov40_0225645C * v0 = param1;

    if (v0->unk_88) {
        G2S_SetBGMosaicSize(v0->unk_7C, v0->unk_7C);
        G2S_SetOBJMosaicSize(v0->unk_7C, v0->unk_7C);
        v0->unk_88 = 0;
    }
}

static void ov40_02256808 (u32 param0, const UnkStruct_ov40_0225645C_1 * param1)
{
    u32 v0;
    u32 v1[3];

    v0 = PokeIconSpriteIndex(1, 1, 0);

    v1[0] = (param1->unk_00 > 0) ? param1->unk_04[0] : v0;
    v1[1] = (param1->unk_00 > 1) ? param1->unk_04[1] : v0;
    v1[2] = v0;

    ov25_022553A0(param0, v1, NELEMS(v1), 1);
}

static void ov40_02256848 (UnkStruct_ov40_0225645C * param0, const UnkStruct_ov40_0225645C_1 * param1)
{
    int v0;
    BOOL v1;

    for (v0 = 0; v0 < param1->unk_00; v0++) {
        ov25_02255938(param0->unk_24[0 + v0], 1 + PokeIconPaletteIndex(param1->unk_1C[v0], param1->unk_20[v0], 0));
    }

    ov25_02255938(param0->unk_24[2], 1 + PokeIconPaletteIndex(1, 0, 1));

    if (param1->unk_00 > 0) {
        if (PokemonPersonalData_GetFormValue(param1->unk_1C[0], param1->unk_20[0], 28)) {
            ov25_022558C4(param0->unk_24[0], 6);
        } else {
            ov25_022558C4(param0->unk_24[0], 7);
        }
    }

    ov40_02256958(&(param0->unk_24[3]), param1->unk_0C[0]);
    ov40_02256958(&(param0->unk_24[6]), param1->unk_0C[1]);
    ov40_02256A14(param0->unk_24[9], param1->unk_14[0]);
    ov40_02256A14(param0->unk_24[10], param1->unk_14[1]);

    v1 = (param1->unk_00 == 0);

    ov25_02255914(param0->unk_24[0], v1);
    ov25_02255914(param0->unk_24[3], v1);
    ov25_02255914(param0->unk_24[4], v1);
    ov25_02255914(param0->unk_24[5], v1);
    ov25_02255914(param0->unk_24[9], v1);

    v1 = (param1->unk_00 <= 1);

    ov25_02255914(param0->unk_24[1], v1);
    ov25_02255914(param0->unk_24[6], v1);
    ov25_02255914(param0->unk_24[7], v1);
    ov25_02255914(param0->unk_24[8], v1);
    ov25_02255914(param0->unk_24[10], v1);

    ov25_02255914(param0->unk_24[2], (param1->unk_01 == 0));
}

static void ov40_02256958 (UnkStruct_ov25_022558C4 ** param0, u32 param1)
{
    u32 v0[3];
    int v1;

    if (param1 > 100) {
        param1 = 100;
    }

    CP_SetDiv32_32(param1, 100);
    v0[0] = CP_GetDivResult32();

    CP_SetDiv32_32(CP_GetDivRemainder32(), 10);
    v0[1] = CP_GetDivResult32();
    v0[2] = CP_GetDivRemainder32();

    for (v1 = 0; v1 < 3; v1++) {
        ov25_022558C4(param0[v1], v0[v1]);
    }

    ov25_02255914(param0[0], (param1 < 100));
    ov25_02255914(param0[1], (param1 < 10));
}

static void ov40_02256A14 (UnkStruct_ov25_022558C4 * param0, u32 param1)
{
    switch (param1) {
    case 0:
        ov25_022558C4(param0, 10);
        break;
    case 1:
        ov25_022558C4(param0, 11);
        break;
    default:
        ov25_022558C4(param0, 12);
        break;
    }
}
