#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_0203E724_decl.h"

#include "struct_defs/struct_0203E724_t.h"

#include "unk_02025E08.h"
#include "trainer_info.h"
#include "unk_0203D1B8.h"
#include "unk_02046AD4.h"
#include "overlay007/ov7_0224CD28.h"

#include "data/mart_items.h"

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
        if (TrainerInfo_HasBadge(sub_02025E38(param0->unk_34->unk_0C), v4) == 1) {
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

    for (v4 = 0; v4 < (NELEMS(PokeMartCommonItems)); v4++) {
        if (v1 >= PokeMartCommonItems[v4].unk_02) {
            v0[v3] = PokeMartCommonItems[v4].itemID;
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

    ov7_0224CDA4(param0->unk_28, param0->unk_34, (u16 *)PokeMartSpecialties[v0], 0, v1);
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
