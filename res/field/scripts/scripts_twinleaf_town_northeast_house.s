#include "macros/scrcmd.inc"
#include "res/text/bank/twinleaf_town_northeast_house.h"


    ScriptEntry TwinleafTownNortheastHouse_Guitarist
    ScriptEntryEnd

TwinleafTownNortheastHouse_Guitarist:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe VAR_VISITED_LAKE_VERITY_WITH_RIVAL, 1, TwinleafTownNortheastHouse_AdventureLongTimeAgo
    GoTo TwinleafTownNortheastHouse_YoureOffToHangWithRival

TwinleafTownNortheastHouse_YoureOffToHangWithRival:
    BufferRivalName 0
    Message TwinleafTownNortheastHouse_Text_YoureOffToHangWithRival
    WaitButton
    CloseMessage
    ReleaseAll
    End

TwinleafTownNortheastHouse_AdventureLongTimeAgo:
    Message TwinleafTownNortheastHouse_Text_AdventureLongTimeAgo
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
