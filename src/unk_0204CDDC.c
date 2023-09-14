#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_0203E724_decl.h"

#include "struct_defs/struct_0203E724_t.h"

#include "unk_0201D15C.h"
#include "unk_0204CDDC.h"
#include "unk_020507CC.h"
#include "unk_0206AFE0.h"

BOOL sub_0204CF68(UnkStruct_0203E724 * param0);
BOOL sub_0204CF8C(UnkStruct_0203E724 * param0);
BOOL sub_0204CFC4(UnkStruct_0203E724 * param0);

BOOL sub_0204CDDC (UnkStruct_0203E724 * param0)
{
    sub_0206B218(sub_020507E4(param0->unk_34->unk_0C));
    return 0;
}

BOOL sub_0204CDF0 (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);

    *v0 = sub_0206B228(sub_020507E4(param0->unk_34->unk_0C));
    return 0;
}

static const u16 Unk_020EBF84[6][10] = {
    {0x0, 0x5, 0x15, 0x6, 0x1A, 0xD, 0x19, 0x1F, 0x10, 0x21},
    {0x2, 0x13, 0x14, 0x18, 0x11, 0x0, 0x17, 0x1D, 0x1C, 0xF},
    {0x9, 0x8, 0x3, 0x6, 0x16, 0x1E, 0x11, 0x7, 0xE, 0x20},
    {0xC, 0x12, 0x15, 0xD, 0x1F, 0x8, 0x19, 0x18, 0x1B, 0x7},
    {0x5, 0x3, 0x1A, 0x13, 0x14, 0x1, 0xB, 0x10, 0x16, 0xF},
    {0xC, 0x1E, 0x2, 0x14, 0x1D, 0x4, 0x9, 0x1B, 0xE, 0xA}
};

BOOL sub_0204CE1C (UnkStruct_0203E724 * param0)
{
    u8 v0, v1;
    u16 v2;
    u16 * v3 = inline_0204FCAC(param0);
    u16 v4 = inline_02049538(param0);

    v2 = LCRNG_Next() % 100;

    if (v2 < 15) {
        v0 = 0;
    } else if (v2 < (15 + 15)) {
        v0 = 1;
    } else if (v2 < (15 + 15 + 15)) {
        v0 = 2;
    } else if (v2 < (15 + 15 + 15 + 15)) {
        v0 = 3;
    } else if (v2 < (15 + 15 + 15 + 15 + 10)) {
        v0 = 4;
    } else if (v2 < (15 + 15 + 15 + 15 + 10 + 10)) {
        v0 = 5;
    } else if (v2 < (15 + 15 + 15 + 15 + 10 + 10 + 8)) {
        v0 = 6;
    } else if (v2 < (15 + 15 + 15 + 15 + 10 + 10 + 8 + 5)) {
        v0 = 7;
    } else if (v2 < (15 + 15 + 15 + 15 + 10 + 10 + 8 + 5 + 5)) {
        v0 = 8;
    } else {
        v0 = 9;
    }

    switch (v4) {
    case 390:
    case 391:
    case 392:
        v1 = 0;
        break;
    case 393:
    case 394:
    case 395:
        v1 = 1;
        break;
    case 387:
    case 388:
    case 389:
        v1 = 2;
        break;
    case 54:
    case 427:
    case 425:
        v1 = 3;
        break;
    case 25:
    case 35:
    case 417:
    case 440:
        v1 = 4;
        break;
    case 39:
    case 255:
    case 300:
    case 285:
        v1 = 5;
        break;

    default:
        v1 = 0;
    }

    *v3 = Unk_020EBF84[v1][v0];

    return 0;
}

static const u16 Unk_020EBF64[] = {
    0xB0,
    0xAF,
    0xB1,
    0xB2,
    0xB3,
    0xB4,
    0xB5,
    0xB6,
    0xB7,
    0xB,
    0x7,
    0xA,
    0x10,
    0x1B,
    0x20,
    0x21
};

BOOL sub_0204CF68 (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);

    *v0 = (LCRNG_Next() % (NELEMS(Unk_020EBF64)));
    return 0;
}

BOOL sub_0204CF8C (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    u16 * v1 = inline_0204FCAC(param0);

    if (v0 < 9) {
        *v1 = 0;
    } else {
        *v1 = 1;
    }

    return 0;
}

BOOL sub_0204CFC4 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = Unk_020EBF64[v0];
    return 0;
}
