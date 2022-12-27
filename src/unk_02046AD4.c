#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_0203E724_decl.h"

#include "struct_defs/struct_0203E724_t.h"

#include "unk_02025E08.h"
#include "unk_02025E68.h"
#include "unk_0203D1B8.h"
#include "unk_02046AD4.h"
#include "overlay007/ov7_0224CD28.h"

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_020EBAFC;

const UnkStruct_020EBAFC Unk_020EBAFC[] = {
	{ 0x4, 0x1 },
	{ 0x3, 0x3 },
	{ 0x2, 0x4 },
	{ 0x11, 0x1 },
	{ 0x1A, 0x2 },
	{ 0x19, 0x4 },
	{ 0x18, 0x5 },
	{ 0x17, 0x6 },
	{ 0x1C, 0x3 },
	{ 0x12, 0x1 },
	{ 0x16, 0x1 },
	{ 0x15, 0x2 },
	{ 0x13, 0x2 },
	{ 0x14, 0x2 },
	{ 0x1B, 0x4 },
	{ 0x4E, 0x2 },
	{ 0x4F, 0x2 },
	{ 0x4C, 0x3 },
	{ 0x4D, 0x4 }
};

const u16 Unk_020EB978[] = {
	0x92,
	0xE,
	0xffff
};

const u16 Unk_020EB98C[] = {
	0x8D,
	0xE,
	0x6,
	0xffff
};

const u16 Unk_020EB984[] = {
	0x8C,
	0xE,
	0x6,
	0xffff
};

const u16 Unk_020EB9D0[] = {
	0x92,
	0xE,
	0x6,
	0x8,
	0xffff
};

const u16 Unk_020EB994[] = {
	0x24,
	0x22,
	0x23,
	0x25,
	0xffff
};

const u16 Unk_020EB9DA[] = {
	0x8F,
	0xE,
	0x6,
	0x8,
	0xffff
};

const u16 Unk_020EB9C6[] = {
	0x92,
	0x6,
	0x8,
	0xD,
	0xffff
};

const u16 Unk_020EB9A8[] = {
	0x92,
	0x8,
	0xD,
	0xF,
	0xffff
};

const u16 Unk_020EBACA[] = {
	0x11,
	0x1A,
	0x19,
	0x18,
	0x1C,
	0x12,
	0x16,
	0x13,
	0x14,
	0x15,
	0x1B,
	0xffff
};

const u16 Unk_020EBAE2[] = {
	0x4,
	0x3,
	0x2,
	0x4E,
	0x3F,
	0x4F,
	0x4C,
	0x4D,
	0x89,
	0x8A,
	0x8B,
	0x91,
	0xffff
};

const u16 Unk_020EBAB8[] = {
	0x3B,
	0x39,
	0x3A,
	0x37,
	0x38,
	0x3C,
	0x3D,
	0x3E,
	0xffff
};

const u16 Unk_020EB9FC[] = {
	0x2E,
	0x2F,
	0x31,
	0x34,
	0x30,
	0x2D,
	0xffff
};

const u16 Unk_020EBA66[] = {
	0x19A,
	0x158,
	0x17D,
	0x15B,
	0x168,
	0x157,
	0x18D,
	0xffff
};

const u16 Unk_020EBA18[] = {
	0x16D,
	0x160,
	0x155,
	0x15D,
	0x17B,
	0x156,
	0xffff
};

const u16 Unk_020EB9B2[] = {
	0x92,
	0xD,
	0xF,
	0xA,
	0xffff
};

const u16 Unk_020EB9BC[] = {
	0x90,
	0xD,
	0xF,
	0xA,
	0xffff
};

const u16 Unk_020EB99E[] = {
	0x92,
	0xF,
	0xA,
	0x9,
	0xffff
};

const u16 Unk_020EB97E[] = {
	0x8E,
	0xB,
	0xffff
};

const u16 Unk_020EBAA6[] = {
	0xE,
	0x6,
	0x8,
	0xD,
	0xF,
	0xA,
	0x9,
	0xB,
	0xffff
};

const u16 Unk_020EB9E4[] = {
	0x9F,
	0xA0,
	0xA1,
	0xA2,
	0xA3,
	0xffff
};

const u16 *Unk_02100B1C[] = {
	Unk_020EB978,
	Unk_020EB98C,
	Unk_020EB984,
	Unk_020EB9D0,
	Unk_020EB994,
	Unk_020EB9DA,
	Unk_020EB9C6,
	Unk_020EB9A8,
	Unk_020EBACA,
	Unk_020EBAE2,
	Unk_020EBAB8,
	Unk_020EB9FC,
	Unk_020EBA66,
	Unk_020EBA18,
	Unk_020EB9B2,
	Unk_020EB9BC,
	Unk_020EB99E,
	Unk_020EB97E,
	Unk_020EBAA6,
	Unk_020EB9E4
};

const u16 Unk_020EB9F0[] = {
	0x7,
	0x16,
	0x19,
	0x1A,
	0x1B,
	0xffff
};

const u16 Unk_020EBA0A[] = {
	0x73,
	0x74,
	0x75,
	0x77,
	0x78,
	0x79,
	0xffff
};

const u16 *Unk_02100AF8[] = {
	Unk_020EB9F0,
	Unk_020EBA0A
};

const u16 Unk_020EBA76[] = {
	0x1,
	0x8,
	0x1D,
	0x2B,
	0xF,
	0x16,
	0x24,
	0xffff
};

const u16 Unk_020EBA26[] = {
	0x2,
	0x9,
	0x1E,
	0x25,
	0x2C,
	0x10,
	0x17,
	0xffff
};

const u16 Unk_020EBA36[] = {
	0x3,
	0xA,
	0x1F,
	0x26,
	0x2D,
	0x11,
	0x18,
	0xffff
};

const u16 Unk_020EBA56[] = {
	0x4,
	0x19,
	0x20,
	0x27,
	0x2E,
	0xB,
	0x12,
	0xffff
};

const u16 Unk_020EBA86[] = {
	0x1A,
	0x21,
	0x28,
	0x2F,
	0x5,
	0xC,
	0x13,
	0xffff
};

const u16 Unk_020EBA46[] = {
	0x1B,
	0x22,
	0x29,
	0x30,
	0x6,
	0xD,
	0x14,
	0xffff
};

const u16 Unk_020EBA96[] = {
	0x7,
	0x31,
	0x1C,
	0x2A,
	0xE,
	0x15,
	0x23,
	0xffff
};

const u16 *Unk_02100B00[] = {
	Unk_020EBA76,
	Unk_020EBA26,
	Unk_020EBA36,
	Unk_020EBA56,
	Unk_020EBA86,
	Unk_020EBA46,
	Unk_020EBA96
};

BOOL sub_02046AD4 (UnkStruct_0203E724 * param0)
{
    u16 v0[64];
    u8 v1, v2, v3, v4;
    u16 v5 = inline_02049538(param0);

    v3 = 0;
    v2 = 0;
    v1 = 0;

    for (v4 = 0; v4 < 8; v4++) {
        if (sub_02025F34(sub_02025E38(param0->unk_34->unk_0C), v4) == 1) {
            v2++;
        }
    }

    switch (v2) {
    case 0:
        v1 = 1;
        break;
    case 1:
    case 2:
        v1 = 2;
        break;
    case 3:
    case 4:
        v1 = 3;
        break;
    case 5:
    case 6:
        v1 = 4;
        break;
    case 7:
        v1 = 5;
        break;
    case 8:
        v1 = 6;
        break;
    default:
        v1 = 1;
        break;
    }

    for (v4 = 0; v4 < (NELEMS(Unk_020EBAFC)); v4++) {
        if (v1 >= Unk_020EBAFC[v4].unk_02) {
            v0[v3] = Unk_020EBAFC[v4].unk_00;
            v3++;
        }
    }

    v0[v3] = 0xffff;

    ov7_0224CDA4(param0->unk_28, param0->unk_34, v0, 0, 0);
    return 1;
}

BOOL sub_02046B9C (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    BOOL v1;

    if ((v0 == 8) || (v0 == 9) || (v0 == 10) || (v0 == 11) || (v0 == 12) || (v0 == 13) || (v0 == 19)) {
        v1 = 1;
    } else {
        v1 = 0;
    }

    ov7_0224CDA4(param0->unk_28, param0->unk_34, (u16 *)Unk_02100B1C[v0], 0, v1);
    return 1;
}

BOOL sub_02046BF4 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    BOOL v1;

    if ((v0 == 0) || (v0 == 1)) {
        v1 = 1;
    } else {
        v1 = 0;
    }

    ov7_0224CDA4(param0->unk_28, param0->unk_34, (u16 *)Unk_02100AF8[v0], 1, v1);
    return 1;
}

BOOL sub_02046C34 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);

    ov7_0224CDA4(param0->unk_28, param0->unk_34, (u16 *)Unk_02100B00[v0], 2, 0);
    return 1;
}

BOOL sub_02046C6C (UnkStruct_0203E724 * param0)
{
    sub_0203E518(param0->unk_34->unk_10);
    return 1;
}
