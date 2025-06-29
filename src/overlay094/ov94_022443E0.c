#include "overlay094/ov94_022443E0.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "applications/pokemon_summary_screen/main.h"
#include "overlay094/ov94_0223BCB0.h"
#include "overlay094/ov94_0223FB48.h"
#include "overlay094/struct_ov94_0223FD4C.h"

#include "overlay_manager.h"
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
    param0->unk_B8.monData = ov94_022411DC(param0->unk_00->unk_08, param0->unk_00->pcBoxes, param0->unk_110, param0->unk_112);
    param0->unk_B8.dataType = SUMMARY_DATA_BOX_MON;
    param0->unk_B8.monMax = 1;
    param0->unk_B8.monIndex = 0;
    param0->unk_B8.mode = SUMMARY_MODE_LOCK_MOVES;
    param0->unk_B8.move = 0;
    param0->unk_B8.showContest = PokemonSummaryScreen_ShowContestData(param0->unk_00->saveData);
    param0->unk_B8.dexMode = param0->unk_00->unk_34;
    param0->unk_B8.options = param0->unk_00->options;
    param0->unk_B8.specialRibbons = sub_0202D79C(param0->unk_00->saveData);

    PokemonSummaryScreen_FlagVisiblePages(&param0->unk_B8, Unk_ov94_02246360);
    PokemonSummaryScreen_SetPlayerProfile(&param0->unk_B8, param0->unk_00->unk_1C);

    param0->appMan = ApplicationManager_New(&gPokemonSummaryScreenApp, &param0->unk_B8, 62);
    param0->unk_104 = 1;

    return 2;
}

int ov94_02244490(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    int v0 = 3;

    if (ApplicationManager_Exec(param0->appMan)) {
        ApplicationManager_Free(param0->appMan);
        ov94_Setunk_18Andunk_24(param0, 5, param0->unk_24);

        v0 = 4;
    }

    return v0;
}

int ov94_022444BC(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    ov94_0223C4C8(param0);
    return 1;
}
