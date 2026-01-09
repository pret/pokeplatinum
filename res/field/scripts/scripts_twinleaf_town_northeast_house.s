#include "macros/scrcmd.inc"
#include "res/text/bank/twinleaf_town_northeast_house.h"


    ScriptEntry TwinleafTownNortheastHouse_Guitarist
    ScriptEntryEnd

TwinleafTownNortheastHouse_Guitarist:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe VAR_VISITED_LAKE_VERITY_WITH_RIVAL, 1, TwinleafTownNortheastHouse_IWentOnAnAdventureALongTimeAgo
    GoTo TwinleafTownNortheastHouse_YoureOffToHangWithRivalAgainRight

TwinleafTownNortheastHouse_YoureOffToHangWithRivalAgainRight:
    BufferRivalName 0
    Message TwinleafTownNortheastHouse_Text_YoureOffToHangWithRivalAgainRight
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

TwinleafTownNortheastHouse_IWentOnAnAdventureALongTimeAgo:
    Message TwinleafTownNortheastHouse_Text_IWentOnAnAdventureALongTimeAgo
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
