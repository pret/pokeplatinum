#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0202442C_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_02099F80.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay097/struct_ov97_0223829C.h"

#include "unk_02018340.h"
#include "unk_0201FE94.h"
#include "unk_0202440C.h"
#include "unk_020244AC.h"
#include "unk_0202DAB4.h"
#include "overlay097/ov97_02232054.h"

void ov97_02232054 (void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_C,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_32_H,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_B,
        GX_VRAM_TEXPLTT_01_FG
    };

    sub_0201FE94(&v0);
}

void ov97_02232074 (UnkStruct_02018340 * param0)
{
    {
        UnkStruct_ov84_0223BA5C v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D
        };

        sub_02018368(&v0);
    }

    {
        UnkStruct_ov97_0222DB78 v1 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xe000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0, 0, &v1, 0);
        sub_02019EBC(param0, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xe800,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        sub_020183C4(param0, 1, &v2, 0);
        sub_02019EBC(param0, 1);
    }

    {
        UnkStruct_ov97_0222DB78 v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_23,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0, 2, &v3, 0);
        sub_02019EBC(param0, 2);
    }

    {
        UnkStruct_ov97_0222DB78 v4 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf800,
            GX_BG_CHARBASE_0x0c000,
            GX_BG_EXTPLTT_23,
            3,
            0,
            0,
            0
        };

        sub_020183C4(param0, 3, &v4, 0);
        sub_02019EBC(param0, 3);
    }
}

int ov97_02232148 (UnkStruct_021C0794 * param0, UnkStruct_ov97_0223829C * param1)
{
    u32 v0;
    UnkStruct_0202442C * v1 = sub_0202442C(param0);

    v0 = param1->unk_00.unk_48;

    if ((v0 == 0xFFFFFFFF) && (param1->unk_00.unk_4C == 0xFFFF)) {
        sub_0202DABC(v1);
        sub_02024760(param0, 0);

        OS_ResetSystem(0);
    }

    if ((param1->unk_00.unk_4C >= 100) && (param1->unk_00.unk_4C <= 152)) {
        v0 |= (1 << 12) + (1 << 7) + (1 << 8);
    }

    if (v0 == 0) {
        v0 = ~0;
    }

    if ((v0 & (1 << GAME_VERSION)) == 0) {
        return 1;
    }

    if ((param1->unk_00.unk_4E_0 == 1) && (sub_0202DE2C(v1, param1->unk_00.unk_4C) == 1)) {
        return 2;
    }

    if ((param1->unk_00.unk_4E_2 == 1) && (sub_0202DD08(v1) == 0)) {
        return 4;
    }

    if (sub_0202DCE0(v1) == 0) {
        return 3;
    }

    if (param1->unk_00.unk_4E_5 == 1) {
        return 5;
    }

    return 0;
}
