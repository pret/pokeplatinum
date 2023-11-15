#include <nitro.h>
#include <string.h>

#include <cstdlib>

#include "assert.h"

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "message.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/sys_task.h"
#include "strbuf.h"
#include "pokemon.h"

#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_0205AA50.h"
#include "overlay016/struct_ov16_022674C4.h"
#include "overlay104/struct_ov104_0223F9E0.h"

#include "unk_02002F38.h"
#include "narc.h"
#include "message.h"
#include "unk_0200B358.h"
#include "unk_0200C440.h"
#include "unk_0200C6E4.h"
#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "unk_0201D670.h"
#include "unk_020218BC.h"
#include "strbuf.h"
#include "pokemon.h"
#include "unk_0208C098.h"
#include "overlay016/ov16_0223DF00.h"
#include "overlay016/ov16_02266F1C.h"

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_ov16_0226F64C;

typedef struct {
    UnkStruct_ov16_022674C4 * unk_00;
    u8 * unk_04;
    u8 unk_08;
    u8 unk_09;
    s8 unk_0A;
} UnkStruct_ov16_0226834C;

static s32 ov16_02267EDC(UnkStruct_ov16_022674C4 * param0, int param1);
static s32 ov16_022680D8(s32 param0, s32 param1, s32 param2, s32 * param3, u8 param4, u16 param5);
static u8 ov16_02268194(s32 param0, s32 param1, s32 param2, s32 * param3, u8 * param4, u8 param5);
static u32 ov16_02268210(s32 param0, s32 param1, s32 param2, u8 param3);
static const u8 * ov16_02268250(int param0);
static void ov16_02267F70(UnkStruct_ov16_022674C4 * param0, u8 param1);
static void ov16_02267864(UnkStruct_ov16_022674C4 * param0);
static void ov16_022679C8(UnkStruct_ov16_022674C4 * param0);
static void ov16_02267A4C(UnkStruct_ov16_022674C4 * param0);
static void ov16_02267B6C(UnkStruct_ov16_022674C4 * param0, u32 param1);
static void ov16_02267BF8(UnkStruct_ov16_022674C4 * param0);
static void ov16_02267C58(UnkStruct_ov16_022674C4 * param0);
static void ov16_02267CA8(UnkStruct_ov16_022674C4 * param0, int param1);
static void ov16_02267CE8(UnkStruct_ov16_022674C4 * param0, u32 param1);
static void ov16_02267DC4(UnkStruct_ov16_022674C4 * param0, u32 param1);
static void ov16_02266FE4(UnkStruct_0200C6E4 * param0, UnkStruct_0200C704 * param1, NARC * param2, PaletteSys * param3, int param4);
static void ov16_02267244(UnkStruct_ov16_022674C4 * param0);
static void ov16_0226728C(UnkStruct_ov16_022674C4 * param0);
static const UnkStruct_ov104_0223F9E0 * ov16_022682B0(u8 param0);
static const UnkStruct_ov104_0223F9E0 * ov16_02268314(u8 param0);
static void ov16_0226774C(SysTask * param0, void * param1);
static void ov16_02268380(SysTask * param0, void * param1);
void ov16_02268470(UnkStruct_ov16_022674C4 * param0);
void ov16_02268498(UnkStruct_ov16_022674C4 * param0);
static void ov16_022684BC(SysTask * param0, void * param1);
static void ov16_022675F8(UnkStruct_ov16_022674C4 * param0, int param1);

__attribute__((aligned(4))) static const s8 Unk_ov16_0226F334[] = {
    0x48,
    0x0,
    0x48,
    0x0,
    0x48,
    0x0
};

static const UnkStruct_ov16_0226F64C Unk_ov16_0226F64C[][4] = {
    {
        {0x260, 0xA0},
        {0x360, 0xA0},
        {0xA00, 0x60},
        {0xB00, 0x60}
    },
    {
        {0x220, 0xE0},
        {0x320, 0xE0},
        {0xA00, 0x20},
        {0xB00, 0x20}
    },
    {
        {0x240, 0xC0},
        {0x340, 0xC0},
        {0xA00, 0x40},
        {0xB00, 0x40}
    },
    {
        {0x220, 0xE0},
        {0x320, 0xE0},
        {0xA00, 0x20},
        {0xB00, 0x20}
    },
    {
        {0x240, 0xC0},
        {0x340, 0xC0},
        {0xA00, 0x40},
        {0xB00, 0x40}
    },
    {
        {0x220, 0xE0},
        {0x320, 0xE0},
        {0xA00, 0x20},
        {0xB00, 0x20}
    }
};

static const UnkStruct_ov16_0226F64C Unk_ov16_0226F47C[][2] = {
    {
        {0xA60, 0x40},
        {0xB60, 0x40}
    },
    {
        {0xA20, 0x40},
        {0xB20, 0x40}
    },
    {
        {0xA40, 0x40},
        {0xB40, 0x40}
    },
    {
        {0xA20, 0x40},
        {0xB20, 0x40}
    },
    {
        {0xA40, 0x40},
        {0xB40, 0x40}
    },
    {
        {0xA20, 0x40},
        {0xB20, 0x40}
    }
};

static const UnkStruct_ov16_0226F64C Unk_ov16_0226F3EC[][2] = {
    {
        {0xAA0, 0x60},
        {0xBA0, 0x60}
    },
    {
        {0xA60, 0x60},
        {0xB60, 0x60}
    },
    {
        {0xA80, 0x60},
        {0xB80, 0x60}
    },
    {
        {0xA60, 0x60},
        {0xB60, 0x60}
    },
    {
        {0xA80, 0x60},
        {0xB80, 0x60}
    },
    {
        {0xA60, 0x60},
        {0xB60, 0x60}
    }
};

static const UnkStruct_ov16_0226F64C Unk_ov16_0226F41C[][2] = {
    {
        {0x0, 0x0},
        {0xD00, 0x60}
    },
    {
        {0x620, 0x60},
        {0x0, 0x0}
    },
    {
        {0x0, 0x0},
        {0xC00, 0x60}
    },
    {
        {0x620, 0x60},
        {0x0, 0x0}
    },
    {
        {0x0, 0x0},
        {0xC00, 0x60}
    },
    {
        {0x620, 0x60},
        {0x0, 0x0}
    }
};

static const UnkStruct_ov16_0226F64C Unk_ov16_0226F3BC[] = {
    {0xD80, 0x60},
    {0x6A0, 0x60},
    {0xC80, 0x60},
    {0x6A0, 0x60},
    {0xC80, 0x60},
    {0x6A0, 0x60}
};

static const UnkStruct_ov16_0226F64C Unk_ov16_0226F44C[][2] = {
    {
        {0x4E0, 0x0},
        {0xC20, 0xC0}
    },
    {
        {0x4E0, 0x20},
        {0xC00, 0xA0}
    },
    {
        {0x4E0, 0x0},
        {0xC00, 0xC0}
    },
    {
        {0x4E0, 0x20},
        {0xC00, 0xA0}
    },
    {
        {0x4E0, 0x0},
        {0xC00, 0xC0}
    },
    {
        {0x4E0, 0x20},
        {0xC00, 0xA0}
    }
};

static const UnkStruct_ov16_0226F64C Unk_ov16_0226F38C[] = {
    {0x460, 0x20},
    {0x420, 0x20},
    {0x440, 0x20},
    {0x420, 0x20},
    {0x440, 0x20},
    {0x420, 0x20}
};

static const UnkStruct_ov16_0226F64C Unk_ov16_0226F35C[] = {
    {0x480, 0x60},
    {0x440, 0x60},
    {0x460, 0x60},
    {0x440, 0x60},
    {0x460, 0x60},
    {0x440, 0x60}
};

static const UnkStruct_ov16_0226F64C Unk_ov16_0226F33C[4] = {
    {0x240, 0xC0},
    {0x340, 0xC0},
    {0xA00, 0xE0},
    {0xB00, 0xE0}
};

static const UnkStruct_ov16_0226F64C Unk_ov16_0226F34C[4] = {
    {0x440, 0xC0},
    {0x540, 0xC0},
    {0xC00, 0xE0},
    {0xD00, 0xE0}
};

static const UnkStruct_ov16_0226F64C Unk_ov16_0226F374[] = {
    {0x0, 0x0},
    {0x0, 0x0},
    {0x4C0, 0x40},
    {0x0, 0x0},
    {0x4C0, 0x40},
    {0x0, 0x0}
};

static const UnkStruct_ov16_0226F64C Unk_ov16_0226F3A4[] = {
    {0x0, 0x0},
    {0x0, 0x0},
    {0xCC0, 0x20},
    {0x0, 0x0},
    {0xCC0, 0x20},
    {0x0, 0x0}
};

static const UnkStruct_ov16_0226F64C Unk_ov16_0226F3D4[] = {
    {0x0, 0x0},
    {0x0, 0x0},
    {0xC60, 0x20},
    {0x0, 0x0},
    {0xC60, 0x20},
    {0x0, 0x0}
};

static const UnkStruct_ov104_0223F9E0 Unk_ov16_0226F5B0 = {
    0xC0,
    0x74,
    0x0,
    0x0,
    23,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    {0xBF, 0x4E26, 0xBE, 0xBD, 0xFFFFFFFF, 0xFFFFFFFF},
    0x0,
    0x0
};

static const UnkStruct_ov104_0223F9E0 Unk_ov16_0226F5E4 = {
    0x3A,
    0x24,
    0x0,
    0x0,
    24,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    {0xBC, 0x4E26, 0xBB, 0xBA, 0xFFFFFFFF, 0xFFFFFFFF},
    0x0,
    0x0
};

static const UnkStruct_ov104_0223F9E0 Unk_ov16_0226F4AC = {
    0xC0,
    0x67,
    0x0,
    0x0,
    28,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    {0xC8, 0x4E26, 0xC7, 0xC6, 0xFFFFFFFF, 0xFFFFFFFF},
    0x0,
    0x0
};

static const UnkStruct_ov104_0223F9E0 Unk_ov16_0226F4E0 = {
    0x40,
    0x10,
    0x0,
    0x0,
    25,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    {0xC2, 0x4E26, 0xC1, 0xC0, 0xFFFFFFFF, 0xFFFFFFFF},
    0x0,
    0x0
};

static const UnkStruct_ov104_0223F9E0 Unk_ov16_0226F548 = {
    0xC6,
    0x84,
    0x0,
    0x0,
    26,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    {0xCB, 0x4E26, 0xCA, 0xC9, 0xFFFFFFFF, 0xFFFFFFFF},
    0x0,
    0x0
};

static const UnkStruct_ov104_0223F9E0 Unk_ov16_0226F618 = {
    0x3A,
    0x2D,
    0x0,
    0x0,
    27,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    {0xC5, 0x4E26, 0xC4, 0xC3, 0xFFFFFFFF, 0xFFFFFFFF},
    0x0,
    0x0
};

static const UnkStruct_ov104_0223F9E0 Unk_ov16_0226F514 = {
    0x0,
    0x0,
    0x0,
    0x0,
    17,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    {0xB9, 0x4E26, 0xB8, 0xB7, 0xFFFFFFFF, 0xFFFFFFFF},
    0x0,
    0x0
};

static const UnkStruct_ov104_0223F9E0 Unk_ov16_0226F57C = {
    0xC0,
    0x74,
    0x0,
    0x0,
    23,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    {0xFD, 0x4E28, 0xFE, 0xFF, 0xFFFFFFFF, 0xFFFFFFFF},
    0x0,
    0x0
};

#include "overlay016/rodata_ov16_0226F6AC.h"

void ov16_02266F1C (UnkStruct_0200C6E4 * param0, UnkStruct_0200C704 * param1, NARC * param2, PaletteSys * param3, int param4)
{
    const UnkStruct_ov104_0223F9E0 * v0;

    v0 = ov16_022682B0(param4);

    sub_0200CC3C(param0, param1, param2, v0->unk_14[0], 1, NNS_G2D_VRAM_TYPE_2DMAIN, v0->unk_14[0]);
    sub_0200CDC4(param3, 2, param0, param1, param2, 71, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 20006);
    sub_0200CE24(param0, param1, param2, v0->unk_14[2], 1, v0->unk_14[2]);
    sub_0200CE54(param0, param1, param2, v0->unk_14[3], 1, v0->unk_14[3]);
    sub_0200CDC4(param3, 2, param0, param1, param2, 71, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 20007);

    if ((param4 == 6) || (param4 == 7)) {
        sub_0200CDC4(param3, 2, param0, param1, param2, 81, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 20008);
    }
}

static void ov16_02266FE4 (UnkStruct_0200C6E4 * param0, UnkStruct_0200C704 * param1, NARC * param2, PaletteSys * param3, int param4)
{
    const UnkStruct_ov104_0223F9E0 * v0;

    v0 = ov16_02268314(param4);

    if (v0 != NULL) {
        sub_0200CC3C(param0, param1, param2, v0->unk_14[0], 1, NNS_G2D_VRAM_TYPE_2DMAIN, v0->unk_14[0]);
        sub_0200CDC4(param3, 2, param0, param1, param2, 71, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 20006);
        sub_0200CE24(param0, param1, param2, v0->unk_14[2], 1, v0->unk_14[2]);
        sub_0200CE54(param0, param1, param2, v0->unk_14[3], 1, v0->unk_14[3]);
    }
}

CellActorData * ov16_02267060 (UnkStruct_0200C6E4 * param0, UnkStruct_0200C704 * param1, int param2)
{
    const UnkStruct_ov104_0223F9E0 * v0;
    CellActorData * v1;

    v0 = ov16_022682B0(param2);
    v1 = sub_0200CE6C(param0, param1, v0);

    sub_0200D324(v1->unk_00);
    return v1;
}

void ov16_02267084 (UnkStruct_ov16_022674C4 * param0, u32 param1, u32 param2)
{
    int v0 = 0;
    u32 v1;

    GF_ASSERT(param0->unk_04 != NULL);

    v1 = param2;

    if (param0->unk_25 == 6) {
        param2 &= ((1 << 10) | (1 << 11));
    } else if (param0->unk_25 == 7) {
        param2 &= ((1 << 12) | (1 << 13));
    } else {
        param2 &= 0xffffffff ^ (((1 << 10) | (1 << 11)) | ((1 << 12) | (1 << 13)));
    }

    switch (param0->unk_25) {
    case 1:
    case 3:
    case 5:
        param2 &= 0xffffffff ^ ((1 << 1) | (1 << 2) | (1 << 5));
        v0 = 1;
        break;
    case 2:
    case 4:
        param2 &= 0xffffffff ^ ((1 << 5) | (1 << 9));

        if (param0->unk_4F_3 == 0) {
            param2 &= 0xffffffff ^ ((1 << 1) | (1 << 2));
        } else {
            param2 &= 0xffffffff ^ ((1 << 0));
        }
        break;
    case 0:
        param2 &= 0xffffffff ^ ((1 << 9));
        break;
    case 6:
    case 7:
        break;
    }

    if (BattleSystem_BattleType(param0->unk_0C) & 0x1) {
        param2 &= 0xffffffff ^ ((1 << 9));
    }

    if (param2 & (1 << 0)) {
        ov16_022674C4(param0, 0);
        ov16_02267EDC(param0, 0);
    }

    if (param2 & (1 << 1)) {
        ov16_02267B6C(param0, param1);
    }

    if (param2 & (1 << 2)) {
        ov16_02267BF8(param0);
    }

    if ((param2 & (1 << 7)) || (param2 & (1 << 6))) {
        ov16_022679C8(param0);
    }

    if (param2 & (1 << 3)) {
        ov16_02267A4C(param0);
    }

    if (param2 & (1 << 4)) {
        ov16_02267864(param0);
    }

    if (param2 & (1 << 5)) {
        ov16_0226752C(param0, 0);
        ov16_02267EDC(param0, 1);
    }

    if (param2 & (1 << 9)) {
        ov16_02267C58(param0);
    }

    if (param2 & (1 << 8)) {
        switch (param0->unk_4A) {
        default:
        case 0:
            ov16_02267CA8(param0, 38);
            break;
        case 1:
            ov16_02267CA8(param0, 47);
            break;
        case 2:
            ov16_02267CA8(param0, 50);
            break;
        case 3:
            ov16_02267CA8(param0, 53);
            break;
        case 4:
            ov16_02267CA8(param0, 44);
            break;
        case 5:
            ov16_02267CA8(param0, 41);
            break;
        }
    }

    if (param2 & ((1 << 10) | (1 << 12))) {
        ov16_02267CE8(param0, param2);
    }

    if (param2 & ((1 << 11) | (1 << 13))) {
        ov16_02267DC4(param0, param2);
    }
}

void ov16_02267220 (UnkStruct_ov16_022674C4 * param0)
{
    if (param0->unk_50 != NULL) {
        SysTask_Done(param0->unk_50);
        param0->unk_50 = NULL;
    }

    if (param0->unk_04 == NULL) {
        return;
    }

    sub_0200D0F4(param0->unk_04);
    param0->unk_04 = NULL;
}

static void ov16_02267244 (UnkStruct_ov16_022674C4 * param0)
{
    if (param0->unk_08 == NULL) {
        return;
    }

    sub_0200D0F4(param0->unk_08);
    param0->unk_08 = NULL;
}

void ov16_02267258 (UnkStruct_ov16_022674C4 * param0)
{
    UnkStruct_0200C6E4 * v0;
    UnkStruct_0200C704 * v1;
    const UnkStruct_ov104_0223F9E0 * v2;

    v2 = ov16_022682B0(param0->unk_25);
    v0 = ov16_0223E010(param0->unk_0C);
    v1 = ov16_0223E018(param0->unk_0C);

    sub_0200D070(v1, v2->unk_14[0]);
    sub_0200D090(v1, v2->unk_14[2]);
    sub_0200D0A0(v1, v2->unk_14[3]);
}

static void ov16_0226728C (UnkStruct_ov16_022674C4 * param0)
{
    UnkStruct_0200C6E4 * v0;
    UnkStruct_0200C704 * v1;
    const UnkStruct_ov104_0223F9E0 * v2;

    v2 = ov16_02268314(param0->unk_25);

    if (v2 == NULL) {
        return;
    }

    v0 = ov16_0223E010(param0->unk_0C);
    v1 = ov16_0223E018(param0->unk_0C);

    sub_0200D070(v1, v2->unk_14[0]);
    sub_0200D090(v1, v2->unk_14[2]);
    sub_0200D0A0(v1, v2->unk_14[3]);
}

void ov16_022672C4 (UnkStruct_ov16_022674C4 * param0)
{
    const UnkStruct_ov104_0223F9E0 * v0;
    UnkStruct_0200C6E4 * v1;
    UnkStruct_0200C704 * v2;
    PaletteSys * v3;
    NARC * v4;

    v4 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, 5);
    v1 = ov16_0223E010(param0->unk_0C);
    v2 = ov16_0223E018(param0->unk_0C);
    v3 = BattleSystem_PaletteSys(param0->unk_0C);
    v0 = ov16_022682B0(param0->unk_25);

    ov16_02266F1C(v1, v2, v4, v3, param0->unk_25);
    param0->unk_04 = ov16_02267060(v1, v2, param0->unk_25);

    ov16_02266FE4(v1, v2, v4, v3, param0->unk_25);

    if (param0->unk_08 != NULL) {
        sub_0200D494(param0->unk_08->unk_00, v0->unk_00 - Unk_ov16_0226F334[param0->unk_25], v0->unk_02 + 0);
    }

    NARC_dtor(v4);
}

void ov16_02267360 (UnkStruct_ov16_022674C4 * param0)
{
    ov16_02267220(param0);
    ov16_02267258(param0);
    ov16_02267244(param0);
    ov16_0226728C(param0);
}

void ov16_0226737C (UnkStruct_ov16_022674C4 * param0)
{
    const u8 * v0;
    NNSG2dImageProxy * v1;
    void * v2;

    switch (param0->unk_25) {
    case 2:
    case 4:
        break;
    default:
        return;
    }

    param0->unk_4F_3 ^= 1;

    v2 = G2_GetOBJCharPtr();
    v1 = sub_02021F98(param0->unk_04->unk_00);

    if (param0->unk_4F_3 == 1) {
        v0 = ov16_02268250(70);
        MI_CpuCopy16(v0, (void *)((u32)v2 + Unk_ov16_0226F374[param0->unk_25].unk_00 + 0x20 + v1->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), 0x20);
        v0 = ov16_02268250(71);
        MI_CpuCopy16(v0, (void *)((u32)v2 + Unk_ov16_0226F3A4[param0->unk_25].unk_00 + 0x20 + v1->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), 0x20);

        v0 = ov16_02268250(69);
        MI_CpuCopy16(v0, (void *)((u32)v2 + Unk_ov16_0226F3D4[param0->unk_25].unk_00 + v1->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F3D4[param0->unk_25].unk_02);

        ov16_02267084(param0, param0->unk_28, (1 << 1) | (1 << 2));
    } else {
        v0 = ov16_02268250(66);
        MI_CpuCopy16(v0, (void *)((u32)v2 + Unk_ov16_0226F374[param0->unk_25].unk_00 + v1->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F374[param0->unk_25].unk_02);

        v0 = ov16_02268250(68);
        MI_CpuCopy16(v0, (void *)((u32)v2 + Unk_ov16_0226F3A4[param0->unk_25].unk_00 + v1->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F3A4[param0->unk_25].unk_02);

        v0 = ov16_02268250(38);
        MI_CpuCopy16(v0, (void *)((u32)v2 + Unk_ov16_0226F3A4[param0->unk_25].unk_00 + 0x20 + v1->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), 0x20);

        ov16_02267084(param0, param0->unk_28, (1 << 0));
    }
}

void ov16_022674C4 (UnkStruct_ov16_022674C4 * param0, int param1)
{
    param0->unk_34 = -2147483648;

    if (param0->unk_28 + param1 < 0) {
        param1 -= param0->unk_28 + param1;
    }

    if (param0->unk_28 + param1 > param0->unk_2C) {
        param1 -= (param0->unk_28 + param1) - param0->unk_2C;
    }

    param0->unk_30 = -param1;

    if (param0->unk_28 < 0) {
        param0->unk_28 = 0;
    }

    if (param0->unk_28 > param0->unk_2C) {
        param0->unk_28 = param0->unk_2C;
    }
}

s32 ov16_022674F8 (UnkStruct_ov16_022674C4 * param0)
{
    s32 v0;

    v0 = ov16_02267EDC(param0, 0);

    if (v0 == -1) {
        param0->unk_28 -= param0->unk_30;
        ov16_02267084(param0, param0->unk_28, (1 << 1));
    } else {
        ov16_02267084(param0, v0, (1 << 1));
    }

    return v0;
}

void ov16_0226752C (UnkStruct_ov16_022674C4 * param0, int param1)
{
    param0->unk_44 = -2147483648;

    if (param0->unk_38 + param1 < 0) {
        param1 -= param0->unk_38 + param1;
    }

    if (param0->unk_38 + param1 > param0->unk_3C) {
        param1 -= (param0->unk_38 + param1) - param0->unk_3C;
    }

    param0->unk_40 = -param1;

    if (param0->unk_38 < 0) {
        param0->unk_38 = 0;
    }

    if (param0->unk_38 > param0->unk_3C) {
        param0->unk_38 = param0->unk_3C;
    }
}

s32 ov16_02267560 (UnkStruct_ov16_022674C4 * param0)
{
    s32 v0;

    v0 = ov16_02267EDC(param0, 1);

    if (v0 == -1) {
        param0->unk_38 -= param0->unk_40;
    }

    return v0;
}

void ov16_0226757C (UnkStruct_ov16_022674C4 * param0)
{
    if (param0->unk_08 != NULL) {
        sub_02021CC8(param0->unk_08->unk_00, 1);
        ov16_022675F8(param0, 1);
    }

    if ((BattleSystem_BattleType(param0->unk_0C) & (0x20 | 0x200)) == 0) {
        ov16_02268470(param0);
    }
}

void ov16_022675AC (UnkStruct_ov16_022674C4 * param0)
{
    if (param0->unk_08 != NULL) {
        sub_02021CC8(param0->unk_08->unk_00, 0);
        sub_02021E50(param0->unk_08->unk_00, 0);
        ov16_022675F8(param0, 0);
    }

    ov16_02268498(param0);
}

void ov16_022675D8 (UnkStruct_ov16_022674C4 * param0, int param1)
{
    if (param0->unk_04 == NULL) {
        return;
    }

    sub_0200D460(param0->unk_04, param1);

    if (param0->unk_08 != NULL) {
        sub_0200D460(param0->unk_08, param1);
    }
}

static void ov16_022675F8 (UnkStruct_ov16_022674C4 * param0, int param1)
{
    if (param0->unk_08 != NULL) {
        if ((BattleSystem_BattleType(param0->unk_0C) & (0x20 | 0x200)) && (param1 == 1)) {
            (void)0;
        } else {
            sub_0200D3F4(param0->unk_08, param1);
        }
    }
}

void ov16_02267620 (UnkStruct_ov16_022674C4 * param0, int param1)
{
    if (param0->unk_04 == NULL) {
        return;
    }

    sub_0200D3F4(param0->unk_04, param1);
    ov16_022675F8(param0, param1);
}

void ov16_0226763C (UnkStruct_ov16_022674C4 * param0, int param1, int param2)
{
    const UnkStruct_ov104_0223F9E0 * v0;

    GF_ASSERT(param0->unk_04 != NULL);
    v0 = ov16_022682B0(param0->unk_25);

    sub_0200D494(param0->unk_04->unk_00, v0->unk_00 + param1, v0->unk_02 + param2);

    if (param0->unk_08 != NULL) {
        sub_0200D494(param0->unk_08->unk_00, v0->unk_00 + param1 - Unk_ov16_0226F334[param0->unk_25], v0->unk_02 + param2 + 0);
    }
}

void ov16_022676A8 (UnkStruct_ov16_022674C4 * param0, int param1)
{
    GF_ASSERT(param0 != NULL);
    GF_ASSERT(param0->unk_04 != NULL);

    param0->unk_4F_1 = 0;
    param0->unk_4F_0 = param1;

    if (param1 == 0) {
        switch (param0->unk_25) {
        case 0:
        case 2:
        case 4:
        case 6:
        case 7:
            ov16_0226763C(param0, 160, 0);
            break;
        default:
            ov16_0226763C(param0, -160, 0);
            break;
        }
    } else {
        ov16_0226763C(param0, 0, 0);
    }

    SysTask_Start(ov16_0226774C, param0, 990);
}

static void ov16_0226774C (SysTask * param0, void * param1)
{
    UnkStruct_ov16_022674C4 * v0 = param1;
    s16 v1, v2;
    const UnkStruct_ov104_0223F9E0 * v3;
    int v4;

    v4 = 0;
    v3 = ov16_022682B0(v0->unk_25);

    sub_0200D550(v0->unk_04, &v1, &v2);

    switch (v0->unk_25) {
    case 0:
    case 2:
    case 4:
    case 6:
    case 7:
        if (v0->unk_4F_0 == 0) {
            v1 -= 24;

            if (v1 < v3->unk_00) {
                v1 = v3->unk_00;
                v4++;
            }
        } else {
            v1 += 24;

            if (v1 > v3->unk_00 + 160) {
                v1 = v3->unk_00 + 160;
                v4++;
            }
        }
        break;
    default:
        if (v0->unk_4F_0 == 0) {
            v1 += 24;

            if (v1 > v3->unk_00) {
                v1 = v3->unk_00;
                v4++;
            }
        } else {
            v1 -= 24;

            if (v1 < v3->unk_00 - 24) {
                v1 = v3->unk_00 - 24;
                v4++;
            }
        }
        break;
    }

    sub_0200D4C4(v0->unk_04, v1, v2);

    if (v0->unk_08 != NULL) {
        sub_0200D4C4(v0->unk_08, v1 - Unk_ov16_0226F334[v0->unk_25], v2 + 0);
    }

    if (v4 > 0) {
        v0->unk_4F_1 = 1;
        SysTask_Done(param0);
        return;
    }
}

static void ov16_02267864 (UnkStruct_ov16_022674C4 * param0)
{
    BGL * v0;
    u8 * v1;
    NNSG2dImageProxy * v2;
    Window v3;
    MessageLoader * v4;
    Strbuf* v5, * v6;
    Pokemon * v7;
    BoxPokemon * v8;
    UnkStruct_0200B358 * v9;

    v0 = BattleSystem_BGL(param0->unk_0C);
    v4 = BattleSystem_MessageLoader(param0->unk_0C);
    v9 = ov16_0223E0D0(param0->unk_0C);
    v5 = Strbuf_Init((12 + (5 * 2)), 5);
    v6 = MessageLoader_GetNewStrbuf(v4, 964);
    v7 = BattleSystem_PartyPokemon(param0->unk_0C, param0->unk_24, param0->unk_26);
    v8 = Pokemon_GetBoxPokemon(v7);

    sub_0200B5CC(v9, 0, v8);
    sub_0200C388(v9, v5, v6);
    sub_0201A870(v0, &v3, 8, 2, 0, 0xf);
    sub_0201D7E0(&v3, 0, v5, 0, 0, 0xff, ((u32)(((0xe & 0xff) << 16) | ((2 & 0xff) << 8) | (((0xf & 0xff) << 0)))), 0, 0, NULL);

    v1 = v3.unk_0C;

    {
        void * v10;
        u8 * v11, * v12;

        v10 = G2_GetOBJCharPtr();
        v2 = sub_02021F98(param0->unk_04->unk_00);
        v11 = v1;
        v12 = &v1[8 * 0x20];

        MI_CpuCopy16(v11, (void *)((u32)v10 + Unk_ov16_0226F64C[param0->unk_25][0].unk_00 + v2->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F64C[param0->unk_25][0].unk_02);
        MI_CpuCopy16(v12, (void *)((u32)v10 + Unk_ov16_0226F64C[param0->unk_25][1].unk_00 + v2->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F64C[param0->unk_25][1].unk_02);

        MI_CpuCopy16(&v11[Unk_ov16_0226F64C[param0->unk_25][0].unk_02], (void *)((u32)v10 + Unk_ov16_0226F64C[param0->unk_25][2].unk_00 + v2->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F64C[param0->unk_25][2].unk_02);
        MI_CpuCopy16(&v12[Unk_ov16_0226F64C[param0->unk_25][1].unk_02], (void *)((u32)v10 + Unk_ov16_0226F64C[param0->unk_25][3].unk_00 + v2->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F64C[param0->unk_25][3].unk_02);
    }

    BGL_DeleteWindow(&v3);
    Strbuf_Free(v5);
    Strbuf_Free(v6);
}

static void ov16_022679C8 (UnkStruct_ov16_022674C4 * param0)
{
    NNSG2dImageProxy * v0;
    const u8 * v1;
    const u8 * v2;
    int v3, v4;

    if (param0->unk_49 == 0) {
        v3 = 74;
        v4 = 62;
    } else if (param0->unk_49 == 1) {
        v3 = 72;
        v4 = 60;
    } else {
        v3 = 76;
        v4 = 64;
    }

    v1 = ov16_02268250(v3);
    v2 = ov16_02268250(v4);

    {
        void * v5;

        v5 = G2_GetOBJCharPtr();
        v0 = sub_02021F98(param0->unk_04->unk_00);

        MI_CpuCopy16(v2, (void *)((u32)v5 + Unk_ov16_0226F47C[param0->unk_25][0].unk_00 + v0->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F47C[param0->unk_25][0].unk_02);
        MI_CpuCopy16(v1, (void *)((u32)v5 + Unk_ov16_0226F47C[param0->unk_25][1].unk_00 + v0->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F47C[param0->unk_25][1].unk_02);
    }
}

static void ov16_02267A4C (UnkStruct_ov16_022674C4 * param0)
{
    u8 * v0, * v1;
    NNSG2dImageProxy * v2;
    int v3, v4, v5, v6;

    v3 = 3 * 0x20;
    v0 = Heap_AllocFromHeap(5, v3);
    v1 = Heap_AllocFromHeap(5, v3 * 2);

    MI_CpuFill8(v0, 0xf | (0xf << 4), v3);
    sub_0200C67C(ov16_0223E054(param0->unk_0C), param0->unk_48, 3, 0, v0);

    {
        void * v7;
        u8 * v8, * v9;

        v7 = G2_GetOBJCharPtr();
        v2 = sub_02021F98(param0->unk_04->unk_00);

        MI_CpuCopy16((void *)((u32)v7 + Unk_ov16_0226F3EC[param0->unk_25][0].unk_00 + v2->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), v1, Unk_ov16_0226F3EC[param0->unk_25][0].unk_02);
        MI_CpuCopy16((void *)((u32)v7 + Unk_ov16_0226F3EC[param0->unk_25][1].unk_00 + v2->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), &v1[v3], Unk_ov16_0226F3EC[param0->unk_25][1].unk_02);

        v6 = 0;

        for (v5 = 0; v5 < v3; v5 += 32) {
            for (v4 = 0; v4 < 16; v4++) {
                v1[v5 + 16 + v4] = v0[v6];
                v1[v5 + v4 + v3] = v0[v6 + 16];
                v6++;
            }

            v6 += 16;
        }

        v8 = v1;
        v9 = &v1[v3];

        MI_CpuCopy16(v8, (void *)((u32)v7 + Unk_ov16_0226F3EC[param0->unk_25][0].unk_00 + v2->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F3EC[param0->unk_25][0].unk_02);
        MI_CpuCopy16(v9, (void *)((u32)v7 + Unk_ov16_0226F3EC[param0->unk_25][1].unk_00 + v2->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F3EC[param0->unk_25][1].unk_02);
    }

    Heap_FreeToHeap(v0);
    Heap_FreeToHeap(v1);
}

static void ov16_02267B6C (UnkStruct_ov16_022674C4 * param0, u32 param1)
{
    u8 * v0;
    NNSG2dImageProxy * v1;

    v0 = Heap_AllocFromHeap(5, 3 * 0x20);

    MI_CpuFill8(v0, 0xf | (0xf << 4), 3 * 0x20);
    sub_0200C67C(ov16_0223E04C(param0->unk_0C), param1, 3, 1, v0);

    {
        void * v2;
        u8 * v3;

        v2 = G2_GetOBJCharPtr();
        v1 = sub_02021F98(param0->unk_04->unk_00);
        v3 = v0;

        MI_CpuCopy16(v3, (void *)((u32)v2 + Unk_ov16_0226F41C[param0->unk_25][0].unk_00 + v1->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F41C[param0->unk_25][0].unk_02);
        MI_CpuCopy16(&v3[Unk_ov16_0226F41C[param0->unk_25][0].unk_02], (void *)((u32)v2 + Unk_ov16_0226F41C[param0->unk_25][1].unk_00 + v1->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F41C[param0->unk_25][1].unk_02);
    }

    Heap_FreeToHeap(v0);
}

static void ov16_02267BF8 (UnkStruct_ov16_022674C4 * param0)
{
    u8 * v0;
    NNSG2dImageProxy * v1;

    v0 = Heap_AllocFromHeap(5, 3 * 0x20);

    MI_CpuFill8(v0, 0xf | (0xf << 4), 3 * 0x20);
    sub_0200C67C(ov16_0223E04C(param0->unk_0C), param0->unk_2C, 3, 0, v0);

    {
        void * v2;
        u8 * v3;

        v2 = G2_GetOBJCharPtr();
        v1 = sub_02021F98(param0->unk_04->unk_00);
        v3 = v0;

        MI_CpuCopy16(v3, (void *)((u32)v2 + Unk_ov16_0226F3BC[param0->unk_25].unk_00 + v1->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F3BC[param0->unk_25].unk_02);
    }

    Heap_FreeToHeap(v0);
}

static void ov16_02267C58 (UnkStruct_ov16_022674C4 * param0)
{
    NNSG2dImageProxy * v0;
    const u8 * v1;

    if (param0->unk_4B == 1) {
        v1 = ov16_02268250(59);
    } else {
        v1 = ov16_02268250(38);
    }

    {
        void * v2;

        v2 = G2_GetOBJCharPtr();
        v0 = sub_02021F98(param0->unk_04->unk_00);

        MI_CpuCopy16(v1, (void *)((u32)v2 + Unk_ov16_0226F38C[param0->unk_25].unk_00 + v0->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F38C[param0->unk_25].unk_02);
    }
}

static void ov16_02267CA8 (UnkStruct_ov16_022674C4 * param0, int param1)
{
    NNSG2dImageProxy * v0;
    const u8 * v1;

    v1 = ov16_02268250(param1);

    {
        void * v2;

        v2 = G2_GetOBJCharPtr();
        v0 = sub_02021F98(param0->unk_04->unk_00);

        MI_CpuCopy16(v1, (void *)((u32)v2 + Unk_ov16_0226F35C[param0->unk_25].unk_00 + v0->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F35C[param0->unk_25].unk_02);
    }
}

static void ov16_02267CE8 (UnkStruct_ov16_022674C4 * param0, u32 param1)
{
    BGL * v0;
    u8 * v1;
    NNSG2dImageProxy * v2;
    Window v3;
    MessageLoader * v4;
    Strbuf* v5;

    v0 = BattleSystem_BGL(param0->unk_0C);
    v4 = BattleSystem_MessageLoader(param0->unk_0C);

    if (param1 & (1 << 10)) {
        v5 = MessageLoader_GetNewStrbuf(v4, 950);
    } else {
        v5 = MessageLoader_GetNewStrbuf(v4, 1220);
    }

    sub_0201A870(v0, &v3, 13, 2, 0, 0xf);
    sub_0201D7E0(&v3, 0, v5, 0, 0, 0xff, ((u32)(((0xe & 0xff) << 16) | ((2 & 0xff) << 8) | (((0xf & 0xff) << 0)))), 0, 0, NULL);

    v1 = v3.unk_0C;

    {
        void * v6;
        u8 * v7, * v8;

        v6 = G2_GetOBJCharPtr();
        v2 = sub_02021F98(param0->unk_04->unk_00);
        v7 = v1;
        v8 = &v1[13 * 0x20];

        MI_CpuCopy16(v7, (void *)((u32)v6 + Unk_ov16_0226F33C[0].unk_00 + v2->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F33C[0].unk_02);
        MI_CpuCopy16(v8, (void *)((u32)v6 + Unk_ov16_0226F33C[1].unk_00 + v2->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F33C[1].unk_02);

        MI_CpuCopy16(&v7[Unk_ov16_0226F33C[0].unk_02], (void *)((u32)v6 + Unk_ov16_0226F33C[2].unk_00 + v2->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F33C[2].unk_02);
        MI_CpuCopy16(&v8[Unk_ov16_0226F33C[1].unk_02], (void *)((u32)v6 + Unk_ov16_0226F33C[3].unk_00 + v2->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F33C[3].unk_02);
    }

    BGL_DeleteWindow(&v3);
    Strbuf_Free(v5);
}

static void ov16_02267DC4 (UnkStruct_ov16_022674C4 * param0, u32 param1)
{
    BGL * v0;
    u8 * v1;
    NNSG2dImageProxy * v2;
    Window v3;
    MessageLoader * v4;
    Strbuf* v5, * v6;
    UnkStruct_0200B358 * v7;

    v0 = BattleSystem_BGL(param0->unk_0C);
    v4 = BattleSystem_MessageLoader(param0->unk_0C);
    v7 = ov16_0223E0D0(param0->unk_0C);
    v5 = Strbuf_Init(30, 5);

    if (param1 & (1 << 10)) {
        v6 = MessageLoader_GetNewStrbuf(v4, 951);
    } else {
        v6 = MessageLoader_GetNewStrbuf(v4, 1221);
    }

    sub_0200B60C(v7, 0, param0->unk_27, 2, 1, 1);
    sub_0200C388(v7, v5, v6);
    sub_0201A870(v0, &v3, 13, 2, 0, 0xf);
    sub_0201D7E0(&v3, 0, v5, 0, 0, 0xff, ((u32)(((0xe & 0xff) << 16) | ((2 & 0xff) << 8) | (((0xf & 0xff) << 0)))), 0, 0, NULL);

    v1 = v3.unk_0C;

    {
        void * v8;
        u8 * v9, * v10;

        v8 = G2_GetOBJCharPtr();
        v2 = sub_02021F98(param0->unk_04->unk_00);
        v9 = v1;
        v10 = &v1[13 * 0x20];

        MI_CpuCopy16(v9, (void *)((u32)v8 + Unk_ov16_0226F34C[0].unk_00 + v2->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F34C[0].unk_02);
        MI_CpuCopy16(v10, (void *)((u32)v8 + Unk_ov16_0226F34C[1].unk_00 + v2->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F34C[1].unk_02);
        MI_CpuCopy16(&v9[Unk_ov16_0226F34C[0].unk_02], (void *)((u32)v8 + Unk_ov16_0226F34C[2].unk_00 + v2->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F34C[2].unk_02);
        MI_CpuCopy16(&v10[Unk_ov16_0226F34C[1].unk_02], (void *)((u32)v8 + Unk_ov16_0226F34C[3].unk_00 + v2->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F34C[3].unk_02);
    }

    BGL_DeleteWindow(&v3);
    Strbuf_Free(v5);
    Strbuf_Free(v6);
}

static s32 ov16_02267EDC (UnkStruct_ov16_022674C4 * param0, int param1)
{
    s32 v0;
    s32 v1;

    if (param1 == 0) {
        v0 = ov16_022680D8(param0->unk_2C, param0->unk_28, param0->unk_30, &param0->unk_34, 6, 1);
    } else {
        v1 = ov16_02268210(param0->unk_38, param0->unk_40, param0->unk_3C, 12);

        if (v1 == 0) {
            v1 = 1;
        }

        v1 = abs(param0->unk_40 / v1);
        v0 = ov16_022680D8(param0->unk_3C, param0->unk_38, param0->unk_40, &param0->unk_44, 12, v1);
    }

    if ((param1 == 0) && (param0->unk_4F_3 == 1)) {
        (void)0;
    } else {
        ov16_02267F70(param0, param1);
    }

    if (v0 == -1) {
        if (param1 == 0) {
            param0->unk_34 = 0;
        } else {
            param0->unk_44 = 0;
        }
    }

    return v0;
}

static void ov16_02267F70 (UnkStruct_ov16_022674C4 * param0, u8 param1)
{
    u8 v0;
    u8 v1[12];
    u8 v2, v3;
    u8 v4;
    u8 v5;
    const u8 * v6;
    void * v7;
    NNSG2dImageProxy * v8;
    int v9;

    v7 = G2_GetOBJCharPtr();
    v8 = sub_02021F98(param0->unk_04->unk_00);

    switch (param1) {
    case 0:
        v4 = ov16_02268194(param0->unk_2C, param0->unk_28, param0->unk_30, &param0->unk_34, v1, 6);

        {
            int v10;

            v10 = App_BarColor(v4, (8 * 6));

            switch (v10) {
            case 3:
                v3 = 2;
                break;
            case 2:
                v3 = 11;
                break;
            case 1:
            default:
                v3 = 20;
                break;
            }
        }

        v6 = ov16_02268250(v3);
        v9 = Unk_ov16_0226F44C[param0->unk_25][0].unk_02 / 0x20;

        for (v0 = 0; v0 < 6; v0++) {
            if (v0 < v9) {
                MI_CpuCopy16(v6 + (v1[v0] << 5), (void *)((u32)v7 + Unk_ov16_0226F44C[param0->unk_25][0].unk_00 + (v0 * 0x20) + v8->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), 0x20);
            } else {
                MI_CpuCopy16(v6 + (v1[v0] << 5), (void *)((u32)v7 + Unk_ov16_0226F44C[param0->unk_25][1].unk_00 + ((v0 - v9) * 0x20) + v8->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), 0x20);
            }
        }
        break;
    case 1:
        ov16_02268194(param0->unk_3C, param0->unk_38, param0->unk_40, &param0->unk_44, v1, 12);
        v5 = param0->unk_48;

        if (v5 == 100) {
            for (v0 = 0; v0 < 12; v0++) {
                v1[v0] = 0;
            }
        }

        v6 = ov16_02268250(29);

        for (v0 = 0; v0 < 12; v0++) {
            if (v0 < 5) {
                MI_CpuCopy16(v6 + (v1[v0] << 5), (void *)((u32)v7 + 1632 + (v0 * 0x20) + v8->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), 0x20);
            } else {
                MI_CpuCopy16(v6 + (v1[v0] << 5), (void *)((u32)v7 + 3584 + ((v0 - 5) * 0x20) + v8->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), 0x20);
            }
        }
        break;
    }
}

static s32 ov16_022680D8 (s32 param0, s32 param1, s32 param2, s32 * param3, u8 param4, u16 param5)
{
    s32 v0;
    s32 v1;
    u8 v2;
    s32 v3;

    v2 = param4 * 8;

    if (*param3 == -2147483648) {
        if (param0 < v2) {
            *param3 = param1 << 8;
        } else {
            *param3 = param1;
        }
    }

    v0 = param1 - param2;

    if (v0 < 0) {
        v0 = 0;
    } else if (v0 > param0) {
        v0 = param0;
    }

    if (param0 < v2) {
        if ((v0 == (*param3 >> 8)) && ((*param3 & 0xff) == 0)) {
            return -1;
        }
    } else {
        if (v0 == *param3) {
            return -1;
        }
    }

    if (param0 < v2) {
        v3 = param0 * 0x100 / v2;

        if (param2 < 0) {
            *param3 += v3;
            v1 = *param3 >> 8;

            if (v1 >= v0) {
                *param3 = v0 << 8;
                v1 = v0;
            }
        } else {
            *param3 -= v3;
            v1 = *param3 >> 8;

            if ((*param3 & 0xff) > 0) {
                v1++;
            }

            if (v1 <= v0) {
                *param3 = v0 << 8;
                v1 = v0;
            }
        }
    } else {
        if (param2 < 0) {
            *param3 += param5;

            if (*param3 > v0) {
                *param3 = v0;
            }
        } else {
            *param3 -= param5;

            if (*param3 < v0) {
                *param3 = v0;
            }
        }

        v1 = *param3;
    }

    return v1;
}

static u8 ov16_02268194 (s32 param0, s32 param1, s32 param2, s32 * param3, u8 * param4, u8 param5)
{
    int v0;
    u32 v1;
    u32 v2, v3;
    s32 v4;

    v4 = param1 - param2;

    if (v4 < 0) {
        v4 = 0;
    } else if (v4 > param0) {
        v4 = param0;
    }

    v1 = 8 * param5;

    for (v0 = 0; v0 < param5; v0++) {
        param4[v0] = 0;
    }

    if (param0 < v1) {
        v2 = (*param3 * v1 / param0) >> 8;
    } else {
        v2 = *param3 * v1 / param0;
    }

    v3 = v2;

    if ((v2 == 0) && (v4 > 0)) {
        param4[0] = 1;
        v3 = 1;
    } else {
        for (v0 = 0; v0 < param5; v0++) {
            if (v2 >= 8) {
                param4[v0] = 8;
                v2 -= 8;
            } else {
                param4[v0] = v2;
                break;
            }
        }
    }

    return v3;
}

static u32 ov16_02268210 (s32 param0, s32 param1, s32 param2, u8 param3)
{
    s8 v0, v1;
    u8 v2;
    s32 v3;

    v2 = param3 * 8;
    v3 = param0 - param1;

    if (v3 < 0) {
        v3 = 0;
    } else if (v3 > param2) {
        v3 = param2;
    }

    v0 = param0 * v2 / param2;
    v1 = v3 * v2 / param2;

    return abs(v0 - v1);
}

static const u8 * ov16_02268250 (int param0)
{
    return &Unk_ov16_0226F6AC[param0 * 0x20];
}

u8 ov16_0226825C (int param0, u32 param1)
{
    switch (param0) {
    case 0:
        if (param1 & 0x200) {
            return 7;
        }

        if (param1 & 0x20) {
            return 6;
        }

        return 0;
    case 1:
        return 1;
    case 2:
        return 2;
    case 3:
        return 3;
    case 4:
        return 4;
    case 5:
        return 5;
    default:
        GF_ASSERT(0);
        return NULL;
    }

    return 0;
}

static const UnkStruct_ov104_0223F9E0 * ov16_022682B0 (u8 param0)
{
    const UnkStruct_ov104_0223F9E0 * v0;

    switch (param0) {
    case 0:
        v0 = &Unk_ov16_0226F5B0;
        break;
    case 1:
        v0 = &Unk_ov16_0226F5E4;
        break;
    case 2:
        v0 = &Unk_ov16_0226F4AC;
        break;
    case 3:
        v0 = &Unk_ov16_0226F4E0;
        break;
    case 4:
        v0 = &Unk_ov16_0226F548;
        break;
    case 5:
        v0 = &Unk_ov16_0226F618;
        break;
    case 6:
    case 7:
        v0 = &Unk_ov16_0226F57C;
        break;
    default:
        GF_ASSERT(0);
        return NULL;
    }

    return v0;
}

static const UnkStruct_ov104_0223F9E0 * ov16_02268314 (u8 param0)
{
    const UnkStruct_ov104_0223F9E0 * v0;

    switch (param0) {
    case 0:
    case 2:
    case 4:
    case 6:
    case 7:
        v0 = &Unk_ov16_0226F514;
        break;
    case 1:
    case 3:
    case 5:
        return NULL;
    default:
        GF_ASSERT(0);
        return NULL;
    }

    return v0;
}

void ov16_0226834C (UnkStruct_ov16_022674C4 * param0, u8 * param1)
{
    UnkStruct_ov16_0226834C * v0;

    *param1 = 0;

    v0 = Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0226834C));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov16_0226834C));

    v0->unk_00 = param0;
    v0->unk_04 = param1;

    SysTask_Start(ov16_02268380, v0, 1000);
}

static void ov16_02268380 (SysTask * param0, void * param1)
{
    UnkStruct_ov16_0226834C * v0 = param1;
    UnkStruct_0200C704 * v1;
    int v2;
    PaletteSys * v3;

    v1 = ov16_0223E018(v0->unk_00->unk_0C);
    v3 = BattleSystem_PaletteSys(v0->unk_00->unk_0C);

    switch (v0->unk_08) {
    case 0:
        v2 = sub_0200D05C(v1, 20007, NNS_G2D_VRAM_TYPE_2DMAIN);
        sub_0200D41C(v0->unk_00->unk_04, v2);
        v0->unk_09 = v2;
        v0->unk_08++;
    case 1:
        v0->unk_0A += 2;

        if (v0->unk_0A >= 10) {
            v0->unk_0A = 10;
            v0->unk_08++;
        }

        sub_020039B0(v3, 2, v0->unk_09 * 16 + 0, 16, v0->unk_0A, 0x73a5);
        break;
    case 2:
        v0->unk_0A -= 2;

        if (v0->unk_0A <= 0) {
            v0->unk_0A = 0;
            v0->unk_08++;
        }

        sub_020039B0(v3, 2, v0->unk_09 * 16 + 0, 16, v0->unk_0A, 0x73a5);
        break;
    default:
        v2 = sub_0200D05C(v1, 20006, NNS_G2D_VRAM_TYPE_2DMAIN);
        sub_0200D41C(v0->unk_00->unk_04, v2);

        (*(v0->unk_04)) = 1;

        Heap_FreeToHeap(param1);
        SysTask_Done(param0);

        return;
    }
}

void ov16_02268468 (UnkStruct_ov16_022674C4 * param0)
{
    return;
}

void ov16_0226846C (UnkStruct_ov16_022674C4 * param0)
{
    return;
}

void ov16_02268470 (UnkStruct_ov16_022674C4 * param0)
{
    if (param0->unk_50 != NULL) {
        return;
    }

    param0->unk_54 = 0;
    param0->unk_50 = SysTask_Start(ov16_022684BC, param0, 1010);
}

void ov16_02268498 (UnkStruct_ov16_022674C4 * param0)
{
    if (param0->unk_50 != NULL) {
        SysTask_Done(param0->unk_50);
        param0->unk_50 = NULL;
    }

    param0->unk_54 = 0;
    ov16_0226763C(param0, 0, 0);
}

static void ov16_022684BC (SysTask * param0, void * param1)
{
    UnkStruct_ov16_022674C4 * v0 = param1;
    int v1;

    v0->unk_54 += 20;

    if (v0->unk_54 >= 360) {
        v0->unk_54 -= 360;
    }

    v1 = FX_Mul(sub_0201D15C(v0->unk_54), 0x1800) / FX32_ONE;
    ov16_0226763C(v0, 0, v1);
}
