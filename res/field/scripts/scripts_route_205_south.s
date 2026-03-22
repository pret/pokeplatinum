#include "macros/scrcmd.inc"
#include "res/text/bank/route_205_south.h"
#include "res/field/events/events_route_205_south.h"


    ScriptEntry Route205South_OnTransition
    ScriptEntry Route205South_BugCatcher
    ScriptEntry Route205South_Youngster
    ScriptEntry Route205South_Grunts
    ScriptEntry Route205South_LittleGirl
    ScriptEntry Route205South_TriggerLittleGirl
    ScriptEntry Route205South_TriggerGrunts
    ScriptEntry Route205South_ArrowSignpostFloaromaTown
    ScriptEntry Route205South_ArrowSignpostEternaForest
    ScriptEntry Route205South_TrainerTipsSignpost
    ScriptEntryEnd

Route205South_OnTransition:
    End

Route205South_Grunts:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ApplyMovement LOCALID_GRUNT_M_WEST, Route205South_Movement_GruntMWestWalkOnSpotSouth
    WaitMovement
    Message Route205South_Text_WeTeamGalacticAreConductingResearchInTheEternaForest
    CloseMessage
    ApplyMovement LOCALID_GRUNT_M_EAST, Route205South_Movement_GruntMEastWalkOnSpotSouth
    WaitMovement
    Call _00B6
    Message Route205South_Text_OurResearchInvolvesCatchingPokemonInTheFloweryMeadowsOfFloaroma2
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
Route205South_Movement_GruntMWestWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
Route205South_Movement_GruntMEastWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

Route205South_TriggerGrunts:
    LockAll
    ApplyMovement LOCALID_GRUNT_M_WEST, Route205South_Movement_GruntMWestWalkOnSpotEast
    WaitMovement
    Message Route205South_Text_WeTeamGalacticAreConductingResearchInTheEternaForest
    CloseMessage
    ApplyMovement LOCALID_GRUNT_M_EAST, Route205South_Movement_GruntMEastWalkOnSpotWest
    WaitMovement
    Message Route205South_Text_OurResearchInvolvesCatchingPokemonInTheFloweryMeadowsOfFloaroma1
    CloseMessage
    ApplyMovement LOCALID_GRUNT_M_WEST, Route205South_Movement_GruntMWestPushBackPlayer
    ApplyMovement LOCALID_PLAYER, Route205South_Movement_PlayerGetPushedBack
    WaitMovement
    ApplyMovement LOCALID_GRUNT_M_EAST, Route205South_Movement_GruntMEastTurnBackSouth
    WaitMovement
    Call _00B6
    ReleaseAll
    End

_00B6:
    SetFlag FLAG_UNK_0x007F
    Return

    .balign 4, 0
Route205South_Movement_GruntMWestWalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
Route205South_Movement_GruntMEastWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
Route205South_Movement_GruntMWestPushBackPlayer:
    WalkFastEast
    WalkOnSpotFastSouth
    Delay8 2
    WalkNormalWest
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
Route205South_Movement_GruntMEastTurnBackSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
Route205South_Movement_PlayerGetPushedBack:
    WalkNormalSouth
    WalkOnSpotFastNorth
    EndMovement

Route205South_BugCatcher:
    NPCMessage Route205South_Text_ManyPoisonTypePokemonMakeTheEternaForestTheirHome
    End

Route205South_Youngster:
    NPCMessage Route205South_Text_IfYouSlatherSweetHoneyOnASweetSmellingTree
    End

Route205South_LittleGirl:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_TALKED_TO_ROUTE_205_SOUTH_LITTLE_GIRL, Route205South_IWantToSeeMyPapaHesAtTheValleyWindworks
    Call Route205South_HideFloaromaTownGrunts
    Message Route205South_Text_HelpHelpTrainerPleaseIWantToSeeMyPapa
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route205South_IWantToSeeMyPapaHesAtTheValleyWindworks:
    Message Route205South_Text_IWantToSeeMyPapaHesAtTheValleyWindworks
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route205South_HideFloaromaTownGrunts:
    SetFlag FLAG_HIDE_FLOAROMA_TOWN_GRUNTS
    SetFlag FLAG_TALKED_TO_ROUTE_205_SOUTH_LITTLE_GIRL
    SetVar VAR_VALLEY_WINDWORKS_STATE, 1
    Return

Route205South_TriggerLittleGirl:
    LockAll
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 659, Route205South_LittleGirlNoticePlayerZ659
    GoToIfEq VAR_0x8005, 660, Route205South_LittleGirlNoticePlayerZ660
    GoToIfEq VAR_0x8005, 661, Route205South_DummyZ661 @ unreachable position
    GoToIfEq VAR_0x8005, 662, Route205South_LittleGirlNoticePlayerZ662
    GoToIfEq VAR_0x8005, 663, Route205South_LittleGirlNoticePlayerZ663
    End

Route205South_LittleGirlNoticePlayerZ659:
    ApplyMovement LOCALID_LITTLE_GIRL, Route205South_Movement_TwinNoticePlayerZ659
    WaitMovement
    ApplyMovement LOCALID_PLAYER, Route205South_Movement_PlayerWalkOnSpotSouth
    WaitMovement
    GoTo Route205South_HelpHelpTrainerPleaseIWantToSeeMyPapa

Route205South_LittleGirlNoticePlayerZ660:
    ApplyMovement LOCALID_LITTLE_GIRL, Route205South_Movement_TwinNoticePlayerZ660
    WaitMovement
    ApplyMovement LOCALID_PLAYER, Route205South_Movement_PlayerWalkOnSpotSouth
    WaitMovement
    GoTo Route205South_HelpHelpTrainerPleaseIWantToSeeMyPapa

Route205South_DummyZ661:
    GoTo Route205South_HelpHelpTrainerPleaseIWantToSeeMyPapa

Route205South_LittleGirlNoticePlayerZ662:
    ApplyMovement LOCALID_LITTLE_GIRL, Route205South_Movement_TwinNoticePlayerZ662
    WaitMovement
    ApplyMovement LOCALID_PLAYER, Route205South_Movement_PlayerWalkOnSpotNorth
    WaitMovement
    GoTo Route205South_HelpHelpTrainerPleaseIWantToSeeMyPapa

Route205South_LittleGirlNoticePlayerZ663:
    ApplyMovement LOCALID_LITTLE_GIRL, Route205South_Movement_TwinNoticePlayerZ663
    WaitMovement
    ApplyMovement LOCALID_PLAYER, Route205South_Movement_PlayerWalkOnSpotNorth
    WaitMovement
    GoTo Route205South_HelpHelpTrainerPleaseIWantToSeeMyPapa

Route205South_HelpHelpTrainerPleaseIWantToSeeMyPapa:
    Call Route205South_HideFloaromaTownGrunts
    Message Route205South_Text_HelpHelpTrainerPleaseIWantToSeeMyPapa
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
Route205South_Movement_PlayerWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
Route205South_Movement_PlayerWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
Route205South_Movement_TwinNoticePlayerZ659:
    WalkOnSpotNormalNorth
    EmoteExclamationMark
    Delay8
    WalkNormalNorth
    EndMovement

    .balign 4, 0
Route205South_Movement_TwinNoticePlayerZ660:
    WalkOnSpotNormalNorth
    EmoteExclamationMark
    Delay8
    EndMovement

    .balign 4, 0
Route205South_Movement_TwinNoticePlayerZ662:
    WalkOnSpotNormalSouth
    EmoteExclamationMark
    Delay8
    EndMovement

    .balign 4, 0
Route205South_Movement_TwinNoticePlayerZ663:
    WalkOnSpotNormalSouth
    EmoteExclamationMark
    Delay8
    WalkNormalSouth
    EndMovement

Route205South_ArrowSignpostFloaromaTown:
    ShowArrowSign Route205South_Text_Rt205FloaromaTown
    End

Route205South_ArrowSignpostEternaForest:
    ShowArrowSign Route205South_Text_Rt205EternaForest
    End

Route205South_TrainerTipsSignpost:
    ShowScrollingSign Route205South_Text_TrainerTipsTheItemsPlacedInYourBagAreAutomaticallySorted
    End

    .balign 4, 0
