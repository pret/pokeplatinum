#include "macros/scrcmd.inc"
#include "res/text/bank/resort_area_ribbon_syndicate_2f.h"
#include "res/field/events/events_resort_area_ribbon_syndicate_2f.h"


    ScriptEntry ResortAreaRibbonSyndicate2F_Receptionist3
    ScriptEntry ResortAreaRibbonSyndicate2F_Receptionist1
    ScriptEntry ResortAreaRibbonSyndicate2F_Receptionist2
    ScriptEntry ResortAreaRibbonSyndicate2F_Receptionist4
    ScriptEntryEnd

ResortAreaRibbonSyndicate2F_Receptionist3:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_GOT_SPA_TREATMENT_RESORT_AREA_RIBBON_SYNDICATE_2F, ResortAreaRibbonSyndicate2F_OneSessionADay
    GoToIfEq VAR_MAP_LOCAL_A, 1, ResortAreaRibbonSyndicate2F_OneSessionADay
    GetFirstNonEggInParty VAR_MAP_LOCAL_0
    BufferPlayerName 0
    BufferPartyMonNickname 1, VAR_MAP_LOCAL_0
    Message ResortAreaRibbonSyndicate2F_Text_CareToHaveSpaTreatment
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, ResortAreaRibbonSyndicate2F_SeeYouAgain
    GoTo ResortAreaRibbonSyndicate2F_RightThisWayPlease

ResortAreaRibbonSyndicate2F_SeeYouAgain:
    Message ResortAreaRibbonSyndicate2F_Text_SeeYouAgain
    WaitButton
    CloseMessage
    ReleaseAll
    End

ResortAreaRibbonSyndicate2F_RightThisWayPlease:
    Message ResortAreaRibbonSyndicate2F_Text_RightThisWayPlease
    CloseMessage
    Call ResortAreaRibbonSyndicate2F_WalkToChair
    GoTo ResortAreaRibbonSyndicate2F_ReadyToBegin

ResortAreaRibbonSyndicate2F_ReadyToBegin:
    Message ResortAreaRibbonSyndicate2F_Text_ReadyToBegin
    GetRandom VAR_RESULT, 4
    GoToIfEq VAR_RESULT, 0, ResortAreaRibbonSyndicate2F_OilContainsDiamonds
    GoToIfEq VAR_RESULT, 1, ResortAreaRibbonSyndicate2F_FoamContainsPearls
    GoToIfEq VAR_RESULT, 2, ResortAreaRibbonSyndicate2F_ToxinsForcedOut
    GoTo ResortAreaRibbonSyndicate2F_PerfumedByAroma

ResortAreaRibbonSyndicate2F_OilContainsDiamonds:
    Message ResortAreaRibbonSyndicate2F_Text_OilContainsDiamonds
    GoTo ResortAreaRibbonSyndicate2F_TreatmentEnd

ResortAreaRibbonSyndicate2F_FoamContainsPearls:
    Message ResortAreaRibbonSyndicate2F_Text_FoamContainsPearls
    GoTo ResortAreaRibbonSyndicate2F_TreatmentEnd

ResortAreaRibbonSyndicate2F_ToxinsForcedOut:
    Message ResortAreaRibbonSyndicate2F_Text_ToxinsForcedOut
    GoTo ResortAreaRibbonSyndicate2F_TreatmentEnd

ResortAreaRibbonSyndicate2F_PerfumedByAroma:
    Message ResortAreaRibbonSyndicate2F_Text_PerfumedByAroma
    GoTo ResortAreaRibbonSyndicate2F_TreatmentEnd

ResortAreaRibbonSyndicate2F_TreatmentEnd:
    CloseMessage
    PlaySE SEQ_SE_DP_FW367
    Call ResortAreaRibbonSyndicate2F_IncreaseFriendship
    WaitButton
    CloseMessage
    ReleaseAll
    End

ResortAreaRibbonSyndicate2F_OneSessionADay:
    Message ResortAreaRibbonSyndicate2F_Text_OneSessionADay
    WaitButton
    CloseMessage
    ReleaseAll
    End

ResortAreaRibbonSyndicate2F_IncreaseFriendship:
    GetRandom VAR_RESULT, 100
    GoToIfLt VAR_RESULT, 5, ResortAreaRibbonSyndicate2F_MuchMoreFriendly
    GoToIfLt VAR_RESULT, 30, ResortAreaRibbonSyndicate2F_MoreFriendly
    GoTo ResortAreaRibbonSyndicate2F_LittleMoreFriendly

ResortAreaRibbonSyndicate2F_MuchMoreFriendly:
    IncreasePartyMonFriendship 30, VAR_MAP_LOCAL_0
    Call ResortAreaRibbonSyndicate2F_FinishTreatment
    Message ResortAreaRibbonSyndicate2F_Text_MuchMoreFriendly
    Return

ResortAreaRibbonSyndicate2F_MoreFriendly:
    IncreasePartyMonFriendship 10, VAR_MAP_LOCAL_0
    Call ResortAreaRibbonSyndicate2F_FinishTreatment
    Message ResortAreaRibbonSyndicate2F_Text_MoreFriendly
    Return

ResortAreaRibbonSyndicate2F_LittleMoreFriendly:
    IncreasePartyMonFriendship 5, VAR_MAP_LOCAL_0
    Call ResortAreaRibbonSyndicate2F_FinishTreatment
    Message ResortAreaRibbonSyndicate2F_Text_LittleMoreFriendly
    Return

ResortAreaRibbonSyndicate2F_FinishTreatment:
    WaitSE SEQ_SE_DP_FW367
    SetFlag FLAG_GOT_SPA_TREATMENT_RESORT_AREA_RIBBON_SYNDICATE_2F
    SetVar VAR_MAP_LOCAL_A, 1
    ApplyMovement LOCALID_RECEPTIONIST_2, ResortAreaRibbonSyndicate2F_Movement_Receptionist2MoveAside
    WaitMovement
    Return

ResortAreaRibbonSyndicate2F_WalkToChair:
    GetPlayerMapPos VAR_0x8005, VAR_0x8006
    GoToIfEq VAR_0x8005, 11, ResortAreaRibbonSyndicate2F_WalkToChairX11
    GoToIfEq VAR_0x8005, 13, ResortAreaRibbonSyndicate2F_WalkToChairX13
    GoToIfEq VAR_0x8006, 4, ResortAreaRibbonSyndicate2F_WalkToChairZ4
    GoTo ResortAreaRibbonSyndicate2F_WalkToChairZ6

ResortAreaRibbonSyndicate2F_WalkToChairX11:
    ApplyMovement LOCALID_PLAYER, ResortAreaRibbonSyndicate2F_Movement_PlayerWalkToChairX11
    ApplyMovement LOCALID_RECEPTIONIST_3, ResortAreaRibbonSyndicate2F_Movement_Receptionist3WalkToChairX11
    WaitMovement
    GoTo ResortAreaRibbonSyndicate2F_ReceptionistsSurroundPlayer

ResortAreaRibbonSyndicate2F_WalkToChairX13:
    ApplyMovement LOCALID_PLAYER, ResortAreaRibbonSyndicate2F_Movement_PlayerWalkToChairX13
    ApplyMovement LOCALID_RECEPTIONIST_3, ResortAreaRibbonSyndicate2F_Movement_Receptionist3WalkToChairX13
    WaitMovement
    GoTo ResortAreaRibbonSyndicate2F_ReceptionistsSurroundPlayer

ResortAreaRibbonSyndicate2F_WalkToChairZ4:
    ApplyMovement LOCALID_PLAYER, ResortAreaRibbonSyndicate2F_Movement_PlayerWalkToChairZ4
    ApplyMovement LOCALID_RECEPTIONIST_3, ResortAreaRibbonSyndicate2F_Movement_Receptionist3WalkToChairZ4
    WaitMovement
    GoTo ResortAreaRibbonSyndicate2F_ReceptionistsSurroundPlayer

ResortAreaRibbonSyndicate2F_WalkToChairZ6:
    ApplyMovement LOCALID_PLAYER, ResortAreaRibbonSyndicate2F_Movement_PlayerWalkToChairZ6
    ApplyMovement LOCALID_RECEPTIONIST_3, ResortAreaRibbonSyndicate2F_Movement_Receptionist3WalkToChairZ6
    WaitMovement
    GoTo ResortAreaRibbonSyndicate2F_ReceptionistsSurroundPlayer

ResortAreaRibbonSyndicate2F_ReceptionistsSurroundPlayer:
    ApplyMovement LOCALID_RECEPTIONIST_1, ResortAreaRibbonSyndicate2F_Movement_Receptionist1WalkToPlayer
    ApplyMovement LOCALID_RECEPTIONIST_2, ResortAreaRibbonSyndicate2F_Movement_Receptionist2WalkToPlayer
    ApplyMovement LOCALID_RECEPTIONIST_4, ResortAreaRibbonSyndicate2F_Movement_Receptionist4WalkToPlayer
    WaitMovement
    Return

    .balign 4, 0
ResortAreaRibbonSyndicate2F_Movement_Receptionist3WalkToChairX11:
    WalkNormalEast 2
    WalkNormalSouth 2
    WalkNormalEast 3
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
ResortAreaRibbonSyndicate2F_Movement_Receptionist3WalkToChairX13:
    WalkNormalSouth
    WalkNormalEast
    WalkNormalSouth
    WalkNormalEast 4
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
ResortAreaRibbonSyndicate2F_Movement_Receptionist3WalkToChairZ4:
    WalkNormalEast 2
    WalkNormalSouth 2
    WalkNormalEast 3
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
ResortAreaRibbonSyndicate2F_Movement_Receptionist3WalkToChairZ6:
    WalkNormalEast
    WalkNormalSouth
    WalkNormalEast 2
    WalkNormalSouth
    WalkNormalEast 2
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
ResortAreaRibbonSyndicate2F_Movement_PlayerWalkToChairX11:
    WalkNormalEast 3
    WalkNormalSouth 2
    WalkNormalEast 2
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
ResortAreaRibbonSyndicate2F_Movement_PlayerWalkToChairX13:
    Delay8 2
    WalkNormalSouth 2
    WalkNormalEast 3
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
ResortAreaRibbonSyndicate2F_Movement_PlayerWalkToChairZ4:
    WalkNormalSouth
    WalkNormalEast 3
    WalkNormalSouth 2
    WalkNormalEast
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
ResortAreaRibbonSyndicate2F_Movement_PlayerWalkToChairZ6:
    Delay8 2
    WalkNormalEast 3
    WalkNormalSouth
    WalkNormalEast
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
ResortAreaRibbonSyndicate2F_Movement_Receptionist1WalkToPlayer:
    WalkNormalSouth
    EndMovement

    .balign 4, 0
ResortAreaRibbonSyndicate2F_Movement_Receptionist2WalkToPlayer:
    WalkNormalEast 3
    EndMovement

    .balign 4, 0
ResortAreaRibbonSyndicate2F_Movement_Receptionist4WalkToPlayer:
    WalkNormalNorth 4
    EndMovement

    .balign 4, 0
ResortAreaRibbonSyndicate2F_Movement_Receptionist2MoveAside:
    WalkNormalNorth
    WalkOnSpotNormalSouth
    EndMovement

ResortAreaRibbonSyndicate2F_Receptionist1:
    NPCMessage ResortAreaRibbonSyndicate2F_Text_KeepFromSeeingOthers
    End

ResortAreaRibbonSyndicate2F_Receptionist2:
    NPCMessage ResortAreaRibbonSyndicate2F_Text_OnlyFiveMembersADay
    End

ResortAreaRibbonSyndicate2F_Receptionist4:
    NPCMessage ResortAreaRibbonSyndicate2F_Text_BringMembersCloser
    End

    .balign 4, 0
