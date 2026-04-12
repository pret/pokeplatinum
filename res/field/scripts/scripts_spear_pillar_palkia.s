#include "macros/scrcmd.inc"
#include "generated/distribution_events.h"
#include "res/text/bank/spear_pillar_palkia.h"


    ScriptEntry SpearPillarPalkia_Rift
    ScriptEntry SpearPillarPalkia_OnTransition
    ScriptEntryEnd

SpearPillarPalkia_OnTransition:
    Call SpearPillarPalkia_TryEnableHallOfOrigin
    End

SpearPillarPalkia_TryEnableHallOfOrigin:
    CheckGameCompleted VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, SpearPillarPalkia_TryEnableHallOfOriginEnd
    GetNationalDexEnabled VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, SpearPillarPalkia_TryEnableHallOfOriginEnd
    CheckItem ITEM_AZURE_FLUTE, 1, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, SpearPillarPalkia_TryEnableHallOfOriginEnd
    CheckDistributionEvent DISTRIBUTION_EVENT_ARCEUS, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, SpearPillarPalkia_TryEnableHallOfOriginEnd
    GoToIfSet FLAG_CAUGHT_ARCEUS, SpearPillarPalkia_TryEnableHallOfOriginEnd
    SetVar VAR_HALL_OF_ORIGIN_STATE, 1
    GoTo SpearPillarPalkia_TryEnableHallOfOriginEnd
    End

SpearPillarPalkia_TryEnableHallOfOriginEnd:
    Return

SpearPillarPalkia_Rift:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    GoToIfGe VAR_SPEAR_PILLAR_PALKIA_STATE, 1, SpearPillarPalkia_SpaceEmanatesFromRift
    GoToIfSet FLAG_CAUGHT_PALKIA, SpearPillarPalkia_SpaceEmanatesFromRift
    Message SpearPillarPalkia_Text_WillYouChallengePalkia
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, SpearPillarPalkia_RiftEnd
    PlayCry SPECIES_PALKIA
    Message SpearPillarPalkia_Text_PalkiaCry
    WaitCry
    CloseMessage
    StartLegendaryBattle SPECIES_PALKIA, 70
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, SpearPillarPalkia_BlackOut
    SetVar VAR_SPEAR_PILLAR_PALKIA_STATE, 1
    CheckDidNotCapture VAR_RESULT
    CallIfEq VAR_RESULT, FALSE, SpearPillarPalkia_SetFlagCaughtPalkia
    ReleaseAll
    End

SpearPillarPalkia_BlackOut:
    BlackOutFromBattle
    ReleaseAll
    End

SpearPillarPalkia_SetFlagCaughtPalkia:
    SetFlag FLAG_CAUGHT_PALKIA
    Return

SpearPillarPalkia_SpaceEmanatesFromRift:
    Message SpearPillarPalkia_Text_SpaceEmanatesFromRift
    WaitButton
    GoTo SpearPillarPalkia_RiftEnd
    End

SpearPillarPalkia_RiftEnd:
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
