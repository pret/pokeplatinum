#include "macros/scrcmd.inc"
#include "generated/distribution_events.h"
#include "res/text/bank/spear_pillar_dialga.h"


    ScriptEntry SpearPillarDialga_Rift
    ScriptEntry SpearPillarDialga_OnTransition
    ScriptEntryEnd

SpearPillarDialga_OnTransition:
    Call SpearPillarDialga_TryEnableHallOfOrigin
    End

SpearPillarDialga_TryEnableHallOfOrigin:
    CheckGameCompleted VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, SpearPillarDialga_TryEnableHallOfOriginEnd
    GetNationalDexEnabled VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, SpearPillarDialga_TryEnableHallOfOriginEnd
    CheckItem ITEM_AZURE_FLUTE, 1, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, SpearPillarDialga_TryEnableHallOfOriginEnd
    CheckDistributionEvent DISTRIBUTION_EVENT_ARCEUS, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, SpearPillarDialga_TryEnableHallOfOriginEnd
    GoToIfSet FLAG_CAUGHT_ARCEUS, SpearPillarDialga_TryEnableHallOfOriginEnd
    SetVar VAR_HALL_OF_ORIGIN_STATE, 1
    GoTo SpearPillarDialga_TryEnableHallOfOriginEnd
    End

SpearPillarDialga_TryEnableHallOfOriginEnd:
    Return

SpearPillarDialga_Rift:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    GoToIfGe VAR_SPEAR_PILLAR_DIALGA_STATE, 1, SpearPillarDialga_TimeEmanatesFromRift
    GoToIfSet FLAG_CAUGHT_DIALGA, SpearPillarDialga_TimeEmanatesFromRift
    Message SpearPillarDialga_Text_WillYouChallengeDialga
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, SpearPillarDialga_RiftEnd
    PlayCry SPECIES_DIALGA
    Message SpearPillarDialga_Text_DialgaCry
    WaitCry
    CloseMessage
    StartLegendaryBattle SPECIES_DIALGA, 70
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, SpearPillarDialga_BlackOut
    SetVar VAR_SPEAR_PILLAR_DIALGA_STATE, 1
    CheckDidNotCapture VAR_RESULT
    CallIfEq VAR_RESULT, FALSE, SpearPillarDialga_SetFlagCaughtDialga
    ReleaseAll
    End

SpearPillarDialga_BlackOut:
    BlackOutFromBattle
    ReleaseAll
    End

SpearPillarDialga_SetFlagCaughtDialga:
    SetFlag FLAG_CAUGHT_DIALGA
    Return

SpearPillarDialga_TimeEmanatesFromRift:
    Message SpearPillarDialga_Text_TimeEmanatesFromRift
    WaitButton
    GoTo SpearPillarDialga_RiftEnd
    End

SpearPillarDialga_RiftEnd:
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
