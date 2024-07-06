#include "overlay094/ov94_022443E0.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "overlay094/ov94_0223BCB0.h"
#include "overlay094/ov94_0223FB48.h"
#include "overlay094/struct_ov94_0223FD4C.h"

#include "overlay_manager.h"
#include "pokemon_summary_app.h"
#include "unk_0202D778.h"

#include "constdata/const_020F410C.h"

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

int ov94_022443E0(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    param0->unk_B8.monData = ov94_022411DC(param0->unk_00->unk_08, param0->unk_00->unk_0C, param0->unk_110, param0->unk_112);
    param0->unk_B8.dataType = 2;
    param0->unk_B8.max = 1;
    param0->unk_B8.pos = 0;
    param0->unk_B8.mode = 1;
    param0->unk_B8.move = 0;
    param0->unk_B8.contest = PokemonSummary_ShowContestData(param0->unk_00->unk_20);
    param0->unk_B8.dexMode = param0->unk_00->unk_34;
    param0->unk_B8.options = param0->unk_00->unk_24;
    param0->unk_B8.ribbons = sub_0202D79C(param0->unk_00->unk_20);

    PokemonSummary_FlagVisiblePages(&param0->unk_B8, Unk_ov94_02246360);
    PokemonSummary_SetPlayerProfile(&param0->unk_B8, param0->unk_00->unk_1C);

    param0->unk_B4 = OverlayManager_New(&Unk_020F410C, &param0->unk_B8, 62);
    param0->unk_104 = 1;

    return 2;
}

int ov94_02244490(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    int v0 = 3;

    if (OverlayManager_Exec(param0->unk_B4)) {
        OverlayManager_Free(param0->unk_B4);
        ov94_0223C4C0(param0, 5, param0->unk_24);

        v0 = 4;
    }

    return v0;
}

int ov94_022444BC(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    ov94_0223C4C8(param0);
    return 1;
}
