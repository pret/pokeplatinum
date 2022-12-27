#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02073C74_decl.h"
#include "struct_decls/struct_02079FF4_decl.h"

#include "overlay006/struct_ov6_02240D5C.h"

#include "unk_02051B50.h"
#include "unk_02054884.h"
#include "unk_02073C2C.h"
#include "overlay005/ov5_021DDBE8.h"

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_020EC208;

static const UnkStruct_020EC208 Unk_020EC208[35] = {
    {0xC, 0x45D},
    {0xD, 0x45D},
    {0xE, 0x45D},
    {0xF, 0x45D},
    {0x10, 0x45D},
    {0x11, 0x45D},
    {0x12, 0x45D},
    {0x13, 0x45D},
    {0x14, 0x470},
    {0x15, 0x470},
    {0x16, 0x470},
    {0x17, 0x470},
    {0x18, 0x462},
    {0xffff, 0x464},
    {0x19, 0x45C},
    {0x1A, 0x461},
    {0x1A, 0x45E},
    {0xffff, 0x45E},
    {0x1A, 0x465},
    {0x19, 0x466},
    {0xffff, 0x45C},
    {0xffff, 0x466},
    {0x19, 0x4B1},
    {0x19, 0x4B4},
    {0x1B, 0x463},
    {0x1C, 0x46E},
    {0x1C, 0x460},
    {0x1D, 0x45F},
    {0x1D, 0x45F},
    {0x1E, 0x45F},
    {0x1E, 0x45C},
    {0x1D, 0x4B2},
    {0x1E, 0x45D},
    {0xffff, 0x45F},
    {0xffff, 0x45C}
};

static u32 sub_02051C20(u32 param0);
static u32 sub_02051CD0(UnkStruct_02079FF4 * param0, int param1);
static u32 sub_02051B50(const UnkStruct_ov6_02240D5C * param0);
static u32 sub_02051BBC(u32 param0, const UnkStruct_ov6_02240D5C * param1);
static u32 sub_02051BE8(u32 param0, const UnkStruct_ov6_02240D5C * param1);

static u32 sub_02051B50 (const UnkStruct_ov6_02240D5C * param0)
{
    u32 v0 = param0->unk_00;
    u32 v1;
    u32 v2;

    if ((v0 & 0x1)) {
        v1 = sub_02051C20(param0->unk_28[1].unk_01);

        if (v0 & 0x80) {
            if (v1 == 31) {
                return v1;
            }

            if (v0 & 0x2) {
                return 29;
            }

            return 27;
        }

        if ((v1 == 24) || (v1 == 25) || (v1 == 26)) {
            return v1;
        }

        if (v0 & 0x2) {
            if (v1 == 7) {
                return 32;
            }

            return 29;
        }

        if (v0 & 0x4) {
            return 28;
        }

        return v1;
    }

    v2 = sub_02051CD0(param0->unk_04[1], param0->unk_134);

    if (v2 < 34) {
        return v2;
    }

    if (v0 & 0x2) {
        return 30;
    }

    return v2;
}

static u32 sub_02051BBC (u32 param0, const UnkStruct_ov6_02240D5C * param1)
{
    GF_ASSERT(param0 < 35);

    if (Unk_020EC208[param0].unk_00 == 0xffff) {
        return ov5_021DEEC8(param1);
    } else {
        return Unk_020EC208[param0].unk_00;
    }
}

static u32 sub_02051BE8 (u32 param0, const UnkStruct_ov6_02240D5C * param1)
{
    GF_ASSERT(param0 < 35);
    return Unk_020EC208[param0].unk_02;
}

u32 sub_02051C00 (const UnkStruct_ov6_02240D5C * param0)
{
    u32 v0;

    v0 = sub_02051B50(param0);
    return sub_02051BBC(v0, param0);
}

u32 sub_02051C10 (const UnkStruct_ov6_02240D5C * param0)
{
    u32 v0;

    v0 = sub_02051B50(param0);
    return sub_02051BE8(v0, param0);
}

static u32 sub_02051C20 (u32 param0)
{
    u32 v0 = 33;

    switch (param0) {
    case 62:
        v0 = 0;
        break;
    case 74:
        v0 = 1;
        break;
    case 75:
        v0 = 2;
        break;
    case 76:
        v0 = 3;
        break;
    case 77:
        v0 = 4;
        break;
    case 78:
        v0 = 5;
        break;
    case 64:
        v0 = 6;
        break;
    case 79:
        v0 = 7;
        break;
    case 65:
        v0 = 8;
        break;
    case 66:
        v0 = 9;
        break;
    case 67:
        v0 = 10;
        break;
    case 68:
        v0 = 11;
        break;
    case 69:
        v0 = 12;
        break;
    case 63:
        v0 = 13;
        break;
    case 86:
        v0 = 26;
        break;
    case 72:
    case 87:
    case 88:
        v0 = 25;
        break;
    case 73:
    case 89:
        v0 = 24;
        break;
    case 97:
    case 99:
    case 100:
    case 101:
    case 102:
        v0 = 31;
        break;
    default:
        break;
    }

    return v0;
}

static u32 sub_02051CD0 (UnkStruct_02079FF4 * param0, int param1)
{
    UnkStruct_02073C74 * v0;
    u32 v1;
    u32 v2 = 34;

    v0 = sub_02054A40(param0);
    v1 = sub_02074470(v0, 5, NULL);

    switch (v1) {
    case 492:
        v2 = 14;
        break;
    case 488:
        v2 = 20;
        break;
    case 487:
        v2 = 22;
        break;
    case 379:
    case 378:
    case 377:
        if (param1 != 251) {
            v2 = 23;
        }
        break;
    case 486:
    case 485:
    case 491:
    case 479:
        v2 = 19;
        break;
    case 481:
        v2 = 17;
        break;
    case 480:
    case 482:
        v2 = 16;
        break;
    case 483:
    case 484:
        v2 = 15;
        break;
    case 493:
        v2 = 18;
        break;
    case 146:
    case 144:
    case 145:
        if (param1 != 251) {
            v2 = 21;
        }
        break;
    default:
        break;
    }

    return v2;
}
