#include "macros/scrcmd.inc"
#include "res/text/bank/celestic_town_cave.h"
#include "res/field/events/events_celestic_town_cave.h"


    ScriptEntry CelesticTownCave_Painting
    ScriptEntry CelesticTownCave_Cyrus
    ScriptEntry CelesticTownCave_Elder
    ScriptEntryEnd

CelesticTownCave_Painting:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    GoToIfSet FLAG_ARRESTED_CHARON_STARK_MOUNTAIN, CelesticTownCave_PaintingCynthia
    GoTo CelesticTownCave_ExaminePainting
    End

CelesticTownCave_ExaminePainting:
    GoToIfUnset FLAG_EXAMINED_CELESTIC_TOWN_CAVE_PAINTING, CelesticTownCave_EnterCyrus
    BufferPlayerName 0
    Message CelesticTownCave_Text_PlayerExaminedPainting
    WaitButton
    CloseMessage
    ReleaseAll
    End

CelesticTownCave_EnterCyrus:
    BufferPlayerName 0
    Message CelesticTownCave_Text_WhatsThisAbout
    CloseMessage
    SetFlag FLAG_EXAMINED_CELESTIC_TOWN_CAVE_PAINTING
    ClearFlag FLAG_HIDE_CELESTIC_TOWN_CAVE_ELDER
    SetObjectEventPos LOCALID_ELDER, 4, 11
    SetObjectEventDir LOCALID_ELDER, DIR_NORTH
    SetObjectEventMovementType LOCALID_ELDER, MOVEMENT_TYPE_LOOK_NORTH
    AddObject LOCALID_ELDER
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 9, CelesticTownCave_ElderEnterX9
    CallIfEq VAR_0x8004, 10, CelesticTownCave_ElderEnterX10
    Message CelesticTownCave_Text_AncientLegendOfSinnoh
    Message CelesticTownCave_Text_IdLikeToKnowMore
    CloseMessage
    ApplyMovement LOCALID_ELDER, CelesticTownCave_Movement_ElderWalkOnSpotSouth
    ApplyMovement LOCALID_PLAYER, CelesticTownCave_Movement_PlayerWalkOnSpotSouth
    WaitMovement
    Message CelesticTownCave_Text_WhoMightYouBe
    CloseMessage
    SetFlag FLAG_HIDE_CELESTIC_TOWN_ELDER
    ClearFlag FLAG_HIDE_CELESTIC_TOWN_CAVE_CYRUS
    SetObjectEventPos LOCALID_CYRUS, 4, 11
    SetObjectEventDir LOCALID_CYRUS, DIR_NORTH
    SetObjectEventMovementType LOCALID_CYRUS, MOVEMENT_TYPE_LOOK_NORTH
    AddObject LOCALID_CYRUS
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 9, CelesticTownCave_CyrusEnterX9
    CallIfEq VAR_0x8004, 10, CelesticTownCave_CyrusEnterX10
    Message CelesticTownCave_Text_MyNameIsCyrus
    Message CelesticTownCave_Text_NotInterested
    Message CelesticTownCave_Text_ChallengeMe
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, CelesticTownCave_BattleCyrus
    GoToIfEq VAR_RESULT, MENU_NO, CelesticTownCave_DontBattleNow
    End

CelesticTownCave_ElderEnterX9:
    ApplyMovement LOCALID_ELDER, CelesticTownCave_Movement_ElderEnterX9
    WaitMovement
    ApplyMovement LOCALID_PLAYER, CelesticTownCave_Movement_PlayerWalkOnSpotEast
    WaitMovement
    Return

CelesticTownCave_ElderEnterX10:
    ApplyMovement LOCALID_ELDER, CelesticTownCave_Movement_ElderEnterX10
    WaitMovement
    ApplyMovement LOCALID_PLAYER, CelesticTownCave_Movement_PlayerWalkOnSpotWest
    WaitMovement
    Return

CelesticTownCave_DontBattleNow:
    Message CelesticTownCave_Text_YouChoseCoward2
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 9, CelesticTownCave_CyrusPushPlayerX9
    CallIfEq VAR_0x8004, 10, CelesticTownCave_CyrusPushPlayerX10
    ReleaseAll
    End

CelesticTownCave_CyrusPushPlayerX9:
    ApplyMovement LOCALID_ELDER, CelesticTownCave_Movement_ElderWatchCyrusPushPlayerX9
    ApplyMovement LOCALID_PLAYER, CelesticTownCave_Movement_PlayerGetPushedX9
    ApplyMovement LOCALID_CYRUS, CelesticTownCave_Movement_CyrusPushPlayerX9
    WaitMovement
    Return

CelesticTownCave_CyrusPushPlayerX10:
    ApplyMovement LOCALID_ELDER, CelesticTownCave_Movement_ElderWatchCyrusPushPlayerX10
    ApplyMovement LOCALID_PLAYER, CelesticTownCave_Movement_PlayerGetPushedX10
    ApplyMovement LOCALID_CYRUS, CelesticTownCave_Movement_CyrusPushPlayerX10
    WaitMovement
    Return

CelesticTownCave_BattleCyrus:
    Message CelesticTownCave_Text_ErrorOfYourWays
    CloseMessage
    StartTrainerBattle TRAINER_GALACTIC_BOSS_CYRUS_CELESTIC_TOWN_RUINS
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, CelesticTownCave_Blackout
    Call CelesticTownCave_DefeatedCyrus
    ReleaseAll
    End

CelesticTownCave_DefeatedCyrus:
    ClearFlag FLAG_HIDE_CELESTIC_TOWN_CYNTHIA
    SetVar VAR_CELESTIC_TOWN_STATE, 1
    Message CelesticTownCave_Text_Remarkable
    CloseMessage
    WaitTime 15, VAR_RESULT
    FadeScreenOut
    WaitFadeScreen
    RemoveObject LOCALID_CYRUS
    FadeScreenIn
    WaitFadeScreen
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 8, CelesticTownCave_PlayerElderFaceEachOtherX8
    CallIfEq VAR_0x8004, 9, CelesticTownCave_PlayerElderFaceEachOtherX9
    CallIfEq VAR_0x8004, 10, CelesticTownCave_PlayerElderFaceEachOtherX10
    CallIfEq VAR_0x8004, 11, CelesticTownCave_PlayerElderFaceEachOtherX11
    Message CelesticTownCave_Text_YouShouldTakeThis
    SetVar VAR_0x8004, ITEM_HM03
    SetVar VAR_0x8005, 1
    Common_GiveItemQuantity
    SetFlag FLAG_HIDE_CELESTIC_TOWN_ELDER
    ClearFlag FLAG_HIDE_CELESTIC_TOWN_NORTH_HOUSE_ELDER
    SetFlag FLAG_DUMMY_2445
    Message CelesticTownCave_Text_SurfAcrossWater
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 9, CelesticTownCave_ElderLeaveX9
    CallIfEq VAR_0x8004, 10, CelesticTownCave_ElderLeaveX10
    CallIfEq VAR_0x8004, 11, CelesticTownCave_ElderLeaveX11
    RemoveObject LOCALID_ELDER
    Return

CelesticTownCave_CyrusEnterX9:
    ApplyMovement LOCALID_CYRUS, CelesticTownCave_Movement_CyrusEnterX9
    WaitMovement
    Return

CelesticTownCave_CyrusEnterX10:
    ApplyMovement LOCALID_CYRUS, CelesticTownCave_Movement_CyrusEnterX10
    WaitMovement
    Return

CelesticTownCave_PlayerElderFaceEachOtherX8:
    ApplyMovement LOCALID_PLAYER, CelesticTownCave_Movement_PlayerWalkEast
    ApplyMovement LOCALID_ELDER, CelesticTownCave_Movement_ElderWalkOnSpotWest
    WaitMovement
    Return

CelesticTownCave_PlayerElderFaceEachOtherX9:
    GoToIfEq VAR_0x8005, 4, CelesticTownCave_PlayerElderFaceEachOtherX9South
    ApplyMovement LOCALID_PLAYER, CelesticTownCave_Movement_PlayerWalkOnSpotEast2
    ApplyMovement LOCALID_ELDER, CelesticTownCave_Movement_ElderWalkOnSpotWest
    WaitMovement
    Return

CelesticTownCave_PlayerElderFaceEachOtherX9South:
    ApplyMovement LOCALID_PLAYER, CelesticTownCave_Movement_PlayerWalkNorthOnSpotEast
    ApplyMovement LOCALID_ELDER, CelesticTownCave_Movement_ElderWalkOnSpotWest
    WaitMovement
    Return

CelesticTownCave_Unused:
    ApplyMovement LOCALID_PLAYER, CelesticTownCave_UnusedMovement
    ApplyMovement LOCALID_ELDER, CelesticTownCave_Movement_ElderWalkOnSpotWest
    WaitMovement
    Return

CelesticTownCave_PlayerElderFaceEachOtherX10:
    GoToIfEq VAR_0x8005, 4, CelesticTownCave_PlayerElderFaceEachOtherX10South
    ApplyMovement LOCALID_PLAYER, CelesticTownCave_Movement_PlayerWalkOnSpotWest2
    ApplyMovement LOCALID_ELDER, CelesticTownCave_Movement_ElderWalkOnSpotEast
    WaitMovement
    Return

CelesticTownCave_PlayerElderFaceEachOtherX10South:
    ApplyMovement LOCALID_PLAYER, CelesticTownCave_Movement_PlayerWalkNorthOnSpotWest
    ApplyMovement LOCALID_ELDER, CelesticTownCave_Movement_ElderWalkOnSpotEast
    WaitMovement
    Return

CelesticTownCave_Unused2:
    ApplyMovement LOCALID_PLAYER, CelesticTownCave_UnusedMovement2
    ApplyMovement LOCALID_ELDER, CelesticTownCave_Movement_ElderWalkOnSpotWest
    WaitMovement
    Return

CelesticTownCave_PlayerElderFaceEachOtherX11:
    ApplyMovement LOCALID_PLAYER, CelesticTownCave_Movement_PlayerWalkWest
    ApplyMovement LOCALID_ELDER, CelesticTownCave_Movement_ElderWalkOnSpotEast2
    WaitMovement
    Return

CelesticTownCave_ElderLeaveX9:
    ApplyMovement LOCALID_PLAYER, CelesticTownCave_Movement_PlayerWatchElderLeave
    ApplyMovement LOCALID_ELDER, CelesticTownCave_Movement_ElderLeaveX9
    WaitMovement
    Return

CelesticTownCave_ElderLeaveX10:
    ApplyMovement LOCALID_PLAYER, CelesticTownCave_Movement_PlayerWatchElderLeave
    ApplyMovement LOCALID_ELDER, CelesticTownCave_Movement_ElderLeaveX10
    WaitMovement
    Return

CelesticTownCave_ElderLeaveX11:
    ApplyMovement LOCALID_PLAYER, CelesticTownCave_Movement_PlayerWatchElderLeave
    ApplyMovement LOCALID_ELDER, CelesticTownCave_Movement_ElderLeaveX11
    WaitMovement
    Return

CelesticTownCave_Blackout:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
CelesticTownCave_Movement_CyrusEnterX9:
    WalkNormalNorth 6
    WalkNormalEast
    WalkNormalNorth
    WalkNormalEast 5
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_CyrusEnterX10:
    WalkNormalNorth 6
    WalkNormalEast
    WalkNormalNorth
    WalkNormalEast 4
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_CyrusPushPlayerX9:
    WalkNormalWest
    WalkNormalNorth
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_CyrusPushPlayerX10:
    WalkNormalEast
    WalkNormalNorth
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_PlayerWalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_PlayerWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_PlayerGetPushedX9:
    Delay8
    FaceEast
    LockDir
    WalkFastWest
    UnlockDir
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_PlayerGetPushedX10:
    Delay8
    FaceWest
    LockDir
    WalkFastEast
    UnlockDir
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_PlayerWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_PlayerWalkEast:
    WalkNormalEast
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_PlayerWalkOnSpotEast2:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_PlayerWalkNorthOnSpotEast:
    WalkNormalNorth
    WalkOnSpotNormalEast
    EndMovement

CelesticTownCave_UnusedMovement:
    WalkNormalNorth 2
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_PlayerWalkOnSpotWest2:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_PlayerWalkNorthOnSpotWest:
    WalkNormalNorth
    WalkOnSpotNormalWest
    EndMovement

CelesticTownCave_UnusedMovement2:
    WalkNormalNorth 2
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_PlayerWalkWest:
    WalkNormalWest
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_PlayerWatchElderLeave:
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_ElderEnterX9:
    WalkNormalNorth 6
    WalkNormalEast
    WalkNormalNorth
    WalkNormalEast 5
    WalkNormalNorth
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_ElderEnterX10:
    WalkNormalNorth 6
    WalkNormalEast
    WalkNormalNorth
    WalkNormalEast 4
    WalkNormalNorth
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_ElderWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_ElderWatchCyrusPushPlayerX9:
    Delay8
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_ElderWatchCyrusPushPlayerX10:
    Delay8
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_ElderWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_ElderWalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_ElderWalkOnSpotEast2:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_ElderLeaveX9:
    WalkNormalSouth
    WalkNormalWest 5
    WalkNormalSouth
    WalkNormalWest
    WalkNormalSouth 6
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_ElderLeaveX10:
    WalkNormalSouth
    WalkNormalWest 4
    WalkNormalSouth
    WalkNormalWest
    WalkNormalSouth 6
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_ElderLeaveX11:
    WalkNormalSouth
    WalkNormalWest 5
    WalkNormalSouth
    WalkNormalWest
    WalkNormalSouth 6
    EndMovement

CelesticTownCave_Cyrus:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message CelesticTownCave_Text_WellChallengeMe
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, CelesticTownCave_YouChoseCoward
    Message CelesticTownCave_Text_ErrorOfYourWays
    CloseMessage
    StartTrainerBattle TRAINER_GALACTIC_BOSS_CYRUS_CELESTIC_TOWN_RUINS
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, CelesticTownCave_Blackout
    Call CelesticTownCave_DefeatedCyrus
    ReleaseAll
    End

CelesticTownCave_YouChoseCoward:
    Message CelesticTownCave_Text_YouChoseCoward
    WaitButton
    CloseMessage
    ReleaseAll
    End

CelesticTownCave_Elder:
    EventMessage CelesticTownCave_Text_WeValueMemories
    End

CelesticTownCave_PaintingCynthia:
    GoToIfSet FLAG_TALKED_TO_CELESTIC_TOWN_CAVE_CYNTHIA, CelesticTownCave_ExaminePainting
    SetFlag FLAG_TALKED_TO_CELESTIC_TOWN_CAVE_CYNTHIA
    ClearFlag FLAG_HIDE_CELESTIC_TOWN_CAVE_CYNTHIA
    SetObjectEventPos LOCALID_CYNTHIA, 4, 11
    AddObject LOCALID_CYNTHIA
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 9, CelesticTownCave_CynthiaEnterX9
    CallIfEq VAR_0x8004, 10, CelesticTownCave_CynthiaEnterX10
    Message CelesticTownCave_Text_PaintingDescribedThisWay
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 9, CelesticTownCave_CynthiaWalkOnSpotWest
    CallIfEq VAR_0x8004, 10, CelesticTownCave_CynthiaWalkOnSpotEast
    Message CelesticTownCave_Text_MayIContinue
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, CelesticTownCave_IGotCarriedAway
    CloseMessage
    ApplyMovement LOCALID_CYNTHIA, CelesticTownCave_Movement_CynthiaWalkOnSpotNorth
    ApplyMovement LOCALID_PLAYER, CelesticTownCave_Movement_PlayerDelayWalkOnSpotNorth
    WaitMovement
    WaitTime 15, VAR_RESULT
    Message CelesticTownCave_Text_OtherInterpretationContinueLonger
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 9, CelesticTownCave_CynthiaWalkOnSpotWest
    CallIfEq VAR_0x8004, 10, CelesticTownCave_CynthiaWalkOnSpotEast
    CallIfEq VAR_0x8004, 9, CelesticTownCave_PlayerWalkOnSpotEast
    CallIfEq VAR_0x8004, 10, CelesticTownCave_PlayerWalkOnSpotWest
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, CelesticTownCave_IGotCarriedAway
    Message CelesticTownCave_Text_ThanksForListening
    CloseMessage
    ApplyMovement LOCALID_PLAYER, CelesticTownCave_Movement_PlayerWatchCynthiaWalkSouth
    ApplyMovement LOCALID_CYNTHIA, CelesticTownCave_Movement_CynthiaWalkSouth
    WaitMovement
    Message CelesticTownCave_Text_NotSureHowGiratinaFits
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 9, CelesticTownCave_CynthiaWalkBackToPlayerX9
    CallIfEq VAR_0x8004, 10, CelesticTownCave_CynthiaWalkBackToPlayerX10
    Message CelesticTownCave_Text_MayISayLastBit
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, CelesticTownCave_IGotCarriedAway
    Message CelesticTownCave_Text_ThatsWhatIBelieve
    GoTo CelesticTownCave_CynthiaLeave
    End

CelesticTownCave_CynthiaEnterX9:
    ApplyMovement LOCALID_CYNTHIA, CelesticTownCave_Movement_CynthiaEnterX9
    WaitMovement
    ApplyMovement LOCALID_PLAYER, CelesticTownCave_Movement_PlayerWalkOnSpotEast3
    WaitMovement
    Return

CelesticTownCave_CynthiaEnterX10:
    ApplyMovement LOCALID_CYNTHIA, CelesticTownCave_Movement_CynthiaEnterX10
    WaitMovement
    ApplyMovement LOCALID_PLAYER, CelesticTownCave_Movement_PlayerWalkOnSpotWest3
    WaitMovement
    Return

CelesticTownCave_PlayerWalkOnSpotEast:
    ApplyMovement LOCALID_PLAYER, CelesticTownCave_Movement_PlayerWalkOnSpotEast3
    WaitMovement
    Return

CelesticTownCave_PlayerWalkOnSpotWest:
    ApplyMovement LOCALID_PLAYER, CelesticTownCave_Movement_PlayerWalkOnSpotWest3
    WaitMovement
    Return

CelesticTownCave_CynthiaWalkOnSpotWest:
    ApplyMovement LOCALID_CYNTHIA, CelesticTownCave_Movement_CynthiaWalkOnSpotWest
    WaitMovement
    Return

CelesticTownCave_CynthiaWalkOnSpotEast:
    ApplyMovement LOCALID_CYNTHIA, CelesticTownCave_Movement_CynthiaWalkOnSpotEast
    WaitMovement
    Return

CelesticTownCave_CynthiaWalkBackToPlayerX9:
    ApplyMovement LOCALID_CYNTHIA, CelesticTownCave_Movement_CynthiaWalkBackToPlayerX9
    ApplyMovement LOCALID_PLAYER, CelesticTownCave_Movement_PlayerWatchCynthiaWalkBackX9
    WaitMovement
    Return

CelesticTownCave_CynthiaWalkBackToPlayerX10:
    ApplyMovement LOCALID_CYNTHIA, CelesticTownCave_Movement_CynthiaWalkBackToPlayerX10
    ApplyMovement LOCALID_PLAYER, CelesticTownCave_Movement_PlayerWatchCynthiaWalkBackX10
    WaitMovement
    Return

CelesticTownCave_IGotCarriedAway:
    Message CelesticTownCave_Text_IGotCarriedAway
    GoTo CelesticTownCave_CynthiaLeave
    End

CelesticTownCave_CynthiaLeave:
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 9, CelesticTownCave_CynthiaLeaveX9
    CallIfEq VAR_0x8004, 10, CelesticTownCave_CynthiaLeaveX10
    RemoveObject LOCALID_CYNTHIA
    ReleaseAll
    End

CelesticTownCave_CynthiaLeaveX9:
    ApplyMovement LOCALID_CYNTHIA, CelesticTownCave_Movement_CynthiaLeaveX9
    ApplyMovement LOCALID_PLAYER, CelesticTownCave_Movement_PlayerWatchCynthiaLeave
    WaitMovement
    Return

CelesticTownCave_CynthiaLeaveX10:
    ApplyMovement LOCALID_CYNTHIA, CelesticTownCave_Movement_CynthiaLeaveX10
    ApplyMovement LOCALID_PLAYER, CelesticTownCave_Movement_PlayerWatchCynthiaLeave
    WaitMovement
    Return

    .balign 4, 0
CelesticTownCave_Movement_CynthiaEnterX9:
    WalkNormalNorth 6
    WalkNormalEast
    WalkNormalNorth
    WalkNormalEast 5
    WalkNormalNorth
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_CynthiaEnterX10:
    WalkNormalNorth 6
    WalkNormalEast
    WalkNormalNorth
    WalkNormalEast 4
    WalkNormalNorth
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_CynthiaWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_CynthiaWalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_CynthiaWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_CynthiaWalkSouth:
    WalkNormalSouth
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_CynthiaWalkBackToPlayerX9:
    WalkNormalNorth
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_CynthiaWalkBackToPlayerX10:
    WalkNormalNorth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_CynthiaLeaveX9:
    WalkNormalSouth
    WalkNormalWest 5
    WalkNormalSouth
    WalkNormalWest
    WalkNormalSouth 6
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_CynthiaLeaveX10:
    WalkNormalSouth
    WalkNormalWest 4
    WalkNormalSouth
    WalkNormalWest
    WalkNormalSouth 6
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_PlayerWalkOnSpotEast3:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_PlayerWalkOnSpotWest3:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_PlayerDelayWalkOnSpotNorth:
    Delay8
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_PlayerWatchCynthiaWalkSouth:
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_PlayerWatchCynthiaWalkBackX9:
    Delay8
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_PlayerWatchCynthiaWalkBackX10:
    Delay8
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
CelesticTownCave_Movement_PlayerWatchCynthiaLeave:
    Delay8 2
    FaceWest
    EndMovement
