#include <nitro.h>
#include <string.h>
#include <dwc.h>

#include "constdata/const_020F410C.h"

#include "overlay094/struct_ov94_0223FD4C.h"

#include "unk_020067E8.h"
#include "unk_0202D778.h"
#include "unk_0208C324.h"
#include "overlay094/ov94_0223BCB0.h"
#include "overlay094/ov94_0223FB48.h"
#include "overlay094/ov94_022443E0.h"

static const u8 Unk_ov94_02246360[] = {
    0x0,
    0x1,
    0x2,
    0x4,
    0x3,
    0x5,
    0x6,
    0x7,
    0x8
};

int ov94_022443E0 (UnkStruct_ov94_0223FD4C * param0, int param1)
{
    param0->unk_B8.unk_00 = ov94_022411DC(param0->unk_00->unk_08, param0->unk_00->unk_0C, param0->unk_110, param0->unk_112);
    param0->unk_B8.unk_11 = 2;
    param0->unk_B8.unk_13 = 1;
    param0->unk_B8.unk_14 = 0;
    param0->unk_B8.unk_12 = 1;
    param0->unk_B8.unk_18 = 0;
    param0->unk_B8.unk_2C = sub_0208C324(param0->unk_00->unk_20);
    param0->unk_B8.unk_1C = param0->unk_00->unk_34;
    param0->unk_B8.unk_04 = param0->unk_00->unk_24;
    param0->unk_B8.unk_20 = sub_0202D79C(param0->unk_00->unk_20);

    sub_0208D720(&param0->unk_B8, Unk_ov94_02246360);
    sub_0208E9C0(&param0->unk_B8, param0->unk_00->unk_1C);

    param0->unk_B4 = sub_020067E8(&Unk_020F410C, &param0->unk_B8, 62);
    param0->unk_104 = 1;

    return 2;
}

int ov94_02244490 (UnkStruct_ov94_0223FD4C * param0, int param1)
{
    int v0 = 3;

    if (sub_02006844(param0->unk_B4)) {
        sub_02006814(param0->unk_B4);
        ov94_0223C4C0(param0, 5, param0->unk_24);

        v0 = 4;
    }

    return v0;
}

int ov94_022444BC (UnkStruct_ov94_0223FD4C * param0, int param1)
{
    ov94_0223C4C8(param0);
    return 1;
}
