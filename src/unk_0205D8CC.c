#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_02023790_decl.h"

#include "struct_defs/game_options.h"
#include "struct_defs/struct_0205AA50.h"

#include "unk_02002328.h"
#include "unk_02002B7C.h"
#include "unk_0200DA60.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "game_options.h"
#include "unk_0205D8CC.h"

void sub_0205D8CC (u32 param0, u32 param1)
{
    if (param1 == 1) {
        sub_0201D710();
    }

    sub_02002E7C(param0, 13 * 32, 4);
    sub_02002E98(param0, 12 * 32, 4);
}

void sub_0205D8F4 (UnkStruct_02018340 * param0, UnkStruct_0205AA50 * param1, u32 param2)
{
    if (param2 == 3) {
        sub_0201A7E8(param0, param1, 3, 2, 19, 27, 4, 12, (((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)));
    } else {
        sub_0201A7E8(param0, param1, 7, 2, 19, 27, 4, 12, (512 - (27 * 4)));
    }
}

void sub_0205D944 (UnkStruct_0205AA50 * param0, const GameOptions * param1)
{
    sub_0200DD0C(param0->unk_00, sub_0201C290(param0), 1024 - (18 + 12), 10, GameOptions_GetFrameStyle(param1), 4);
    sub_0205D988(param0);
    sub_0200E060(param0, 0, 1024 - (18 + 12), 10);
}

void sub_0205D988 (UnkStruct_0205AA50 * param0)
{
    sub_0201ADA4(param0, 15);
}

u8 sub_0205D994 (UnkStruct_0205AA50 * param0, UnkStruct_02023790 * param1, const GameOptions * param2, u8 param3)
{
    u8 v0;

    sub_02002AC8(param3);
    sub_02002AE4(0);
    sub_02002B20(0);

    v0 = sub_0201D738(param0, 1, param1, 0, 0, GameOptions_GetTextSpeedReductionFactor(param2), NULL);
    return v0;
}

u8 sub_0205D9CC (UnkStruct_0205AA50 * param0, UnkStruct_02023790 * param1, int param2, int param3, u8 param4, int param5)
{
    sub_02002AC8(param4);
    sub_02002AE4(param5);
    sub_02002B20(0);

    return sub_0201D738(param0, param2, param1, 0, 0, param3, NULL);
}

u8 sub_0205DA04 (u8 param0)
{
    if (sub_0201D724(param0) == 0) {
        return 1;
    }

    return 0;
}

void sub_0205DA1C (UnkStruct_02018340 * param0, UnkStruct_0205AA50 * param1, u16 param2, u16 param3)
{
    u16 v0, v1;

    if ((param2 == 0) || (param2 == 1)) {
        v0 = 9;
        v1 = 20;
    } else {
        v0 = 2;
        v1 = 27;
    }

    if (param3 == 3) {
        sub_0201A7E8(param0, param1, 3, v0, 19, v1, 4, 9, ((((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4))));
    } else {
        sub_0201A7E8(param0, param1, 7, v0, 19, v1, 4, 9, ((512 - (27 * 4))));
    }
}

void sub_0205DA80 (UnkStruct_0205AA50 * param0, u16 param1, u16 param2)
{
    sub_0200E2A4(param0->unk_00, sub_0201C290(param0), ((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)), 9, param1, param2, 4);
    sub_0201ADA4(param0, 15);
    sub_0200E69C(param0, 0, ((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)), 9, param1);
}
