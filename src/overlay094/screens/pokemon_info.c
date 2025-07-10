#include "overlay094/screens/pokemon_info.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "applications/pokemon_summary_screen/main.h"
#include "overlay094/application.h"
#include "overlay094/gts_application_state.h"
#include "overlay094/screens/select_pokemon.h"

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

int GTSApplication_PokemonInfo_Init(GTSApplicationState *param0, int param1)
{
    param0->unk_B8.monData = ov94_022411DC(param0->playerData->party, param0->playerData->pcBoxes, param0->selectedBoxId, param0->unk_112);
    param0->unk_B8.dataType = SUMMARY_DATA_BOX_MON;
    param0->unk_B8.monMax = 1;
    param0->unk_B8.monIndex = 0;
    param0->unk_B8.mode = SUMMARY_MODE_LOCK_MOVES;
    param0->unk_B8.move = 0;
    param0->unk_B8.showContest = PokemonSummaryScreen_ShowContestData(param0->playerData->saveData);
    param0->unk_B8.dexMode = param0->playerData->dexMode;
    param0->unk_B8.options = param0->playerData->options;
    param0->unk_B8.specialRibbons = sub_0202D79C(param0->playerData->saveData);

    PokemonSummaryScreen_FlagVisiblePages(&param0->unk_B8, Unk_ov94_02246360);
    PokemonSummaryScreen_SetPlayerProfile(&param0->unk_B8, param0->playerData->trainerInfo);

    param0->appMan = ApplicationManager_New(&gPokemonSummaryScreenApp, &param0->unk_B8, HEAP_ID_62);
    param0->hasTradedPokemon = TRUE;

    return 2;
}

int ov94_02244490(GTSApplicationState *param0, int param1)
{
    int v0 = 3;

    if (ApplicationManager_Exec(param0->appMan)) {
        ApplicationManager_Free(param0->appMan);
        GTSApplication_SetNextScreenWithArgument(param0, 5, param0->screenArgument);

        v0 = 4;
    }

    return v0;
}

int ov94_022444BC(GTSApplicationState *param0, int param1)
{
    GTSApplication_MoveToNextScreen(param0);
    return 1;
}
