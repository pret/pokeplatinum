#include "macros/scrcmd.inc"
#include "res/text/bank/route_210_south.h"
#include "res/field/events/events_route_210_south.h"


    ScriptEntry Route210South_Psyduck
    ScriptEntry Route210South_Unused
    ScriptEntry Route210South_AceTrainerF
    ScriptEntry Route210South_SignCafeCabin
    ScriptEntry Route210South_ArrowSignpostSolaceonTown
    ScriptEntry Route210South_JoggerWyatt
    ScriptEntry Route210South_OnTransition
    ScriptEntryEnd

Route210South_OnTransition:
    GetTimeOfDay VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, TIMEOFDAY_MORNING, Route210South_SetJoggerBattle
    GoToIfInRange VAR_MAP_LOCAL_0, TIMEOFDAY_DAY, TIMEOFDAY_LATE_NIGHT, Route210South_SetJoggerNoBattle
    End

Route210South_SetJoggerBattle:
    ClearFlag FLAG_HIDE_ROUTE_210_SOUTH_JOGGER_WYATT
    SetFlag FLAG_HIDE_ROUTE_210_SOUTH_JOGGER_WYATT_NO_BATTLE
    End

Route210South_SetJoggerNoBattle:
    ClearFlag FLAG_HIDE_ROUTE_210_SOUTH_JOGGER_WYATT_NO_BATTLE
    SetFlag FLAG_HIDE_ROUTE_210_SOUTH_JOGGER_WYATT
    End

Route210South_Psyduck:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckItem ITEM_SECRETPOTION, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, Route210South_AskUseSecretPotion
    Message Route210South_Text_PsyduckAreStandingFirm
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route210South_AskUseSecretPotion:
    Message Route210South_Text_AskUseSecretPotion
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Route210South_UseSecretPotion
    GoToIfEq VAR_RESULT, MENU_NO, Route210South_DontUseSecretPotion
    End

Route210South_DontUseSecretPotion:
    CloseMessage
    ReleaseAll
    End

Route210South_UseSecretPotion:
    BufferPlayerName 0
    BufferItemName 1, ITEM_SECRETPOTION
    Message Route210South_Text_PlayerUsedTheSecretPotion
    CloseMessage
    PlayCry SPECIES_PSYDUCK
    WaitCry
    ApplyMovement LOCALID_PSYDUCK_3, Route210South_Movement_PsyduckExclamationMark
    ApplyMovement LOCALID_PSYDUCK_4, Route210South_Movement_PsyduckExclamationMark
    ApplyMovement LOCALID_PSYDUCK_2, Route210South_Movement_PsyduckExclamationMark
    ApplyMovement LOCALID_PSYDUCK_1, Route210South_Movement_PsyduckExclamationMark
    WaitMovement
    ApplyMovement LOCALID_PSYDUCK_3, Route210South_Movement_Psyduck3Leave
    ApplyMovement LOCALID_PSYDUCK_4, Route210South_Movement_Psyduck4Leave
    ApplyMovement LOCALID_PSYDUCK_2, Route210South_Movement_Psyduck2Leave
    ApplyMovement LOCALID_PSYDUCK_1, Route210South_Movement_Psyduck1Leave
    WaitMovement
    RemoveObject LOCALID_PSYDUCK_3
    RemoveObject LOCALID_PSYDUCK_4
    RemoveObject LOCALID_PSYDUCK_2
    RemoveObject LOCALID_PSYDUCK_1
    WaitTime 45, VAR_RESULT
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8004, 560, Route210South_SetCynthiaPositionX560
    GoToIfEq VAR_0x8004, 561, Route210South_SetCynthiaPositionX561
    End

Route210South_SetCynthiaPositionX560:
    SetObjectEventPos LOCALID_CYNTHIA, 560, 596
    SetObjectEventMovementType LOCALID_CYNTHIA, MOVEMENT_TYPE_LOOK_NORTH
    GoTo Route210South_CynthiaEnter

Route210South_SetCynthiaPositionX561:
    SetObjectEventPos LOCALID_CYNTHIA, 561, 596
    SetObjectEventMovementType LOCALID_CYNTHIA, MOVEMENT_TYPE_LOOK_NORTH
    GoTo Route210South_CynthiaEnter

Route210South_CynthiaEnter:
    ClearFlag FLAG_HIDE_ROUTE_210_SOUTH_CYNTHIA
    AddObject LOCALID_CYNTHIA
    LockObject LOCALID_CYNTHIA
    ApplyMovement LOCALID_CYNTHIA, Route210South_Movement_CynthiaEnter
    WaitMovement
    ApplyMovement LOCALID_PLAYER, Route210South_Movement_PlayerWalkOnSpotSouth
    WaitMovement
    Message Route210South_Text_DeliverThisOldCharm
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Route210South_AcceptOldCharm
    GoToIfEq VAR_RESULT, MENU_NO, Route210South_RefuseOldCharm
    End

Route210South_RefuseOldCharm:
    Message Route210South_Text_WillYouGoToCelestic
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Route210South_AcceptOldCharm
    GoToIfEq VAR_RESULT, MENU_NO, Route210South_RefuseOldCharm
    End

Route210South_AcceptOldCharm:
    SetVar VAR_0x8004, ITEM_OLD_CHARM
    SetVar VAR_0x8005, 1
    Common_GiveItemQuantity
    Message Route210South_Text_ImCountingOnYou
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8004, 560, Route210South_CynthiaLeaveX560
    GoToIfEq VAR_0x8004, 561, Route210South_CynthiaLeaveX561
    End

Route210South_CynthiaLeaveX560:
    ApplyMovement LOCALID_CYNTHIA, Route210South_Movement_CynthiaLeaveX560
    WaitMovement
    GoTo Route210South_RemoveCynthia

Route210South_CynthiaLeaveX561:
    ApplyMovement LOCALID_CYNTHIA, Route210South_Movement_CynthiaLeaveX561
    WaitMovement
    GoTo Route210South_RemoveCynthia

Route210South_RemoveCynthia:
    RemoveObject LOCALID_CYNTHIA
    SetFlag FLAG_USED_SECRETPOTION
    ReleaseAll
    End

    .balign 4, 0
Route210South_Movement_PsyduckExclamationMark:
    EmoteExclamationMark
    Delay8 4
    EndMovement

    .balign 4, 0
Route210South_Movement_Psyduck3Leave:
    WalkNormalNorth
    WalkOnSpotNormalSouth
    Delay8 8
    WalkNormalNorth 8
    EndMovement

    .balign 4, 0
Route210South_Movement_Psyduck4Leave:
    WalkNormalNorth 2
    WalkOnSpotNormalSouth 2
    Delay8 6
    WalkNormalNorth 8
    EndMovement

    .balign 4, 0
Route210South_Movement_Psyduck2Leave:
    WalkOnSpotNormalEast
    WalkOnSpotNormalWest
    WalkOnSpotNormalEast
    Delay8 2
    WalkOnSpotNormalNorth
    WalkFastNorth 2
    Delay8 2
    WalkNormalWest 3
    WalkOnSpotNormalEast
    EmoteExclamationMark
    WalkFastEast 3
    WalkFastNorth 8
    EndMovement

    .balign 4, 0
Route210South_Movement_Psyduck1Leave:
    WalkNormalNorth 2
    Delay8 8
    WalkNormalNorth 8
    EndMovement

    .balign 4, 0
Route210South_Movement_CynthiaEnter:
    WalkNormalNorth 7
    EndMovement

    .balign 4, 0
Route210South_Movement_CynthiaLeaveX560:
    WalkNormalSouth 9
    EndMovement

    .balign 4, 0
Route210South_Movement_CynthiaLeaveX561:
    WalkNormalSouth 9
    EndMovement

    .balign 4, 0
Route210South_Movement_PlayerWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

Route210South_UnusedMovement:
    Delay8
    WalkOnSpotNormalEast
    Delay8
    WalkOnSpotNormalNorth
    EndMovement

Route210South_UnusedMovement2:
    Delay8
    WalkOnSpotNormalWest
    Delay8
    WalkOnSpotNormalNorth
    EndMovement

Route210South_Unused:
    NPCMessage Route210South_Text_Dummy6
    End

Route210South_AceTrainerF:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_ROUTE_210_SOUTH_TM51, Route210South_BirdPokemonWouldCrash
    Message Route210South_Text_YouShouldRestToo
    SetVar VAR_0x8004, ITEM_TM51
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, Route210South_BagIsFull
    Common_GiveItemQuantity
    SetFlag FLAG_RECEIVED_ROUTE_210_SOUTH_TM51
    GoTo Route210South_BirdPokemonWouldCrash

Route210South_BirdPokemonWouldCrash:
    Message Route210South_Text_BirdPokemonWouldCrash
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route210South_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

Route210South_SignCafeCabin:
    ShowLandmarkSign Route210South_Text_SignCafeCabin
    End

Route210South_ArrowSignpostSolaceonTown:
    ShowArrowSign Route210South_Text_SignRt210SolaceonTown
    End

Route210South_JoggerWyatt:
    NPCMessage Route210South_Text_WellKeepOnRunning
    End

    .balign 4, 0
