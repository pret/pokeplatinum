#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_city.h"
#include "res/field/events/events_veilstone_city.h"


    ScriptEntry VeilstoneCity_OnTransition
    ScriptEntry VeilstoneCity_Guitarist1
    ScriptEntry VeilstoneCity_Guitarist2
    ScriptEntry VeilstoneCity_PokefanM
    ScriptEntry VeilstoneCity_BattleGirl1
    ScriptEntry VeilstoneCity_Roughneck1
    ScriptEntry VeilstoneCity_Roughneck2
    ScriptEntry VeilstoneCity_Lady
    ScriptEntry VeilstoneCity_BattleGirl2
    ScriptEntry VeilstoneCity_TriggerGruntBlockWarehouse
    ScriptEntry VeilstoneCity_GruntMWarehouseNorth
    ScriptEntry VeilstoneCity_GruntMWarehouseSouth
    ScriptEntry VeilstoneCity_GruntMStorageKey
    ScriptEntry VeilstoneCity_GruntMSoutheast
    ScriptEntry VeilstoneCity_TriggerCrasherWake
    ScriptEntry VeilstoneCity_Counterpart
    ScriptEntry VeilstoneCity_MapSign
    ScriptEntry VeilstoneCity_GymSign
    ScriptEntry VeilstoneCity_SignGalacticWarehouse
    ScriptEntry VeilstoneCity_SignGalacticBuilding
    ScriptEntry VeilstoneCity_SignDepartmentStore
    ScriptEntry VeilstoneCity_SignGameCorner
    ScriptEntry VeilstoneCity_SignPrizeExchange
    ScriptEntry VeilstoneCity_SignLakeValor
    ScriptEntry VeilstoneCity_DeoxysMeteoriteSpeed
    ScriptEntry VeilstoneCity_DeoxysMeteoriteDefense
    ScriptEntry VeilstoneCity_DeoxysMeteoriteAttack
    ScriptEntry VeilstoneCity_DeoxysMeteoriteNormal
    ScriptEntry VeilstoneCity_OnFrameCounterpartNeedsHelp
    ScriptEntry VeilstoneCity_Looker
    ScriptEntry VeilstoneCity_Guitarist3
    ScriptEntry VeilstoneCity_BattleGirl3
    ScriptEntryEnd

VeilstoneCity_OnTransition:
    CallIfSet FLAG_VEILSTONE_CITY_GRUNT_DROPPED_STORAGE_KEY, VeilstoneCity_SetLookerPositionAtGalacticBuilding
    CallIfGe VAR_VEILSTONE_CITY_COUNTERPART_NEEDS_HELP_STATE, 2, VeilstoneCity_SetCounterpartPositionAtWarehouse
    GetPlayerGender VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_MALE, VeilstoneCity_SetCounterpartGraphicsDawn
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_FEMALE, VeilstoneCity_SetCounterpartGraphicsLucas
    End

VeilstoneCity_SetCounterpartPositionAtWarehouse:
    SetObjectEventPos LOCALID_COUNTERPART, 696, 596
    SetObjectEventMovementType LOCALID_COUNTERPART, MOVEMENT_TYPE_LOOK_EAST
    SetObjectEventDir LOCALID_COUNTERPART, DIR_EAST
    Return

VeilstoneCity_SetCounterpartGraphicsDawn:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_PLAYER_F
    End

VeilstoneCity_SetCounterpartGraphicsLucas:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_PLAYER_M
    End

VeilstoneCity_SetLookerPositionAtGalacticBuilding:
    SetObjectEventPos LOCALID_LOOKER, 717, 593
    SetObjectEventMovementType LOCALID_LOOKER, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir LOCALID_LOOKER, DIR_NORTH
    Return

VeilstoneCity_TriggerCrasherWake:
    LockAll
    ApplyMovement LOCALID_COUNTERPART, VeilstoneCity_Movement_CounterpartNoticePlayerBeforeGym
    WaitMovement
    Common_SetCounterpartBGM
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 681, VeilstoneCity_CounterpartWalkToPlayerX681
    CallIfEq VAR_0x8004, 682, VeilstoneCity_CounterpartWalkToPlayerX682
    CallIfEq VAR_0x8004, 683, VeilstoneCity_CounterpartWalkToPlayerX683
    CallIfEq VAR_0x8004, 684, VeilstoneCity_CounterpartWalkToPlayerX684
    GetPlayerGender VAR_0x8004
    CallIfEq VAR_0x8004, GENDER_MALE, VeilstoneCity_DawnWillYouTakeTheGymChallenge
    CallIfEq VAR_0x8004, GENDER_FEMALE, VeilstoneCity_LucasWillYouTakeOnTheGymLeader
    CloseMessage
    Common_FadeToDefaultMusic
    LoadDoorAnimation 21, 19, 12, 3, ANIMATION_TAG_DOOR_1
    PlayDoorOpenAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    ClearFlag FLAG_HIDE_VEILSTONE_CRASHER_WAKE
    AddObject LOCALID_CRASHER_WAKE
    ApplyMovement LOCALID_CRASHER_WAKE, VeilstoneCity_Movement_CrasherWakeExitGym
    WaitMovement
    PlayDoorCloseAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    UnloadAnimation ANIMATION_TAG_DOOR_1
    ApplyMovement LOCALID_COUNTERPART, VeilstoneCity_Movement_CounterpartFaceCrasherWake
    WaitMovement
    Message VeilstoneCity_Text_CrashCrashCrasherWake
    CloseMessage
    ApplyMovement LOCALID_CRASHER_WAKE, VeilstoneCity_Movement_CrasherWakeNoticePlayer
    WaitMovement
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 681, VeilstoneCity_CrasherWakeWalkToPlayerX681
    CallIfEq VAR_0x8004, 682, VeilstoneCity_CrasherWakeWalkToPlayerX682
    CallIfEq VAR_0x8004, 683, VeilstoneCity_CrasherWakeWalkToPlayerX683
    CallIfEq VAR_0x8004, 684, VeilstoneCity_CrasherWakeWalkToPlayerX684
    Message VeilstoneCity_Text_YoureChallengingTheGymLeader
    Message VeilstoneCity_Text_ImCrasherWakeOfPastoriaGym
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 681, VeilstoneCity_CrasherWakeLeaveX681
    CallIfEq VAR_0x8004, 682, VeilstoneCity_CrasherWakeLeaveX682
    CallIfEq VAR_0x8004, 683, VeilstoneCity_CrasherWakeLeaveX683
    CallIfEq VAR_0x8004, 684, VeilstoneCity_CrasherWakeLeaveX684
    RemoveObject LOCALID_CRASHER_WAKE
    WaitTime 20, VAR_RESULT
    GetPlayerGender VAR_0x8004
    CallIfEq VAR_0x8004, GENDER_MALE, VeilstoneCity_DawnGoodLuck
    CallIfEq VAR_0x8004, GENDER_FEMALE, VeilstoneCity_LucasGoodLuck
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 681, VeilstoneCity_CounterpartLeaveX681
    CallIfEq VAR_0x8004, 682, VeilstoneCity_CounterpartLeaveX682
    CallIfEq VAR_0x8004, 683, VeilstoneCity_CounterpartLeaveX683
    CallIfEq VAR_0x8004, 684, VeilstoneCity_CounterpartLeaveX684
    RemoveObject LOCALID_COUNTERPART
    SetVar VAR_VEILSTONE_CITY_CRASHER_WAKE_STATE, 1
    ReleaseAll
    End

VeilstoneCity_DawnWillYouTakeTheGymChallenge:
    BufferPlayerName 0
    Message VeilstoneCity_Text_DawnWillYouTakeTheGymChallenge
    Return

VeilstoneCity_LucasWillYouTakeOnTheGymLeader:
    BufferPlayerName 0
    Message VeilstoneCity_Text_LucasWillYouTakeOnTheGymLeader
    Return

VeilstoneCity_DawnGoodLuck:
    BufferPlayerName 0
    Message VeilstoneCity_Text_DawnDotDotDot
    CloseMessage
    WaitTime 15, VAR_RESULT
    ApplyMovement LOCALID_PLAYER, VeilstoneCity_Movement_PlayerFaceCounterpartAfterCrasherWake
    WaitMovement
    Message VeilstoneCity_Text_DawnGoodLuck
    Return

VeilstoneCity_LucasGoodLuck:
    BufferPlayerName 0
    Message VeilstoneCity_Text_LucasDotDotDot
    CloseMessage
    WaitTime 15, VAR_RESULT
    ApplyMovement LOCALID_PLAYER, VeilstoneCity_Movement_PlayerFaceCounterpartAfterCrasherWake
    WaitMovement
    Message VeilstoneCity_Text_LucasGoodLuck
    Return

VeilstoneCity_CounterpartWalkToPlayerX681:
    ApplyMovement LOCALID_COUNTERPART, VeilstoneCity_Movement_CounterpartWalkToPlayerX681
    WaitMovement
    Return

VeilstoneCity_CounterpartWalkToPlayerX682:
    ApplyMovement LOCALID_COUNTERPART, VeilstoneCity_Movement_CounterpartWalkToPlayerX682
    WaitMovement
    Return

VeilstoneCity_CounterpartWalkToPlayerX683:
    ApplyMovement LOCALID_COUNTERPART, VeilstoneCity_Movement_CounterpartWalkToPlayerX683
    WaitMovement
    Return

VeilstoneCity_CounterpartWalkToPlayerX684:
    ApplyMovement LOCALID_COUNTERPART, VeilstoneCity_Movement_CounterpartWalkToPlayerX684
    WaitMovement
    Return

VeilstoneCity_CrasherWakeWalkToPlayerX681:
    ApplyMovement LOCALID_CRASHER_WAKE, VeilstoneCity_Movement_CrasherWakeWalkToPlayerX681
    ApplyMovement LOCALID_COUNTERPART, VeilstoneCity_Movement_CounterpartWatchCrasherWakeWalkToPlayerX681
    ApplyMovement LOCALID_PLAYER, VeilstoneCity_Movement_PlayerWatchCrasherWakeWalkToPlayerX681
    WaitMovement
    Return

VeilstoneCity_CrasherWakeWalkToPlayerX682:
    ApplyMovement LOCALID_CRASHER_WAKE, VeilstoneCity_Movement_CrasherWakeWalkToPlayerX682
    ApplyMovement LOCALID_COUNTERPART, VeilstoneCity_Movement_CounterpartWatchCrasherWakeWalkToPlayerX682
    ApplyMovement LOCALID_PLAYER, VeilstoneCity_Movement_PlayerWatchCrasherWakeWalkToPlayerX682
    WaitMovement
    Return

VeilstoneCity_CrasherWakeWalkToPlayerX683:
    ApplyMovement LOCALID_CRASHER_WAKE, VeilstoneCity_Movement_CrasherWakeWalkToPlayerX683
    ApplyMovement LOCALID_COUNTERPART, VeilstoneCity_Movement_CounterpartWatchCrasherWakeWalkToPlayerX683
    ApplyMovement LOCALID_PLAYER, VeilstoneCity_Movement_PlayerWatchCrasherWakeWalkToPlayerX683
    WaitMovement
    Return

VeilstoneCity_CrasherWakeWalkToPlayerX684:
    ApplyMovement LOCALID_CRASHER_WAKE, VeilstoneCity_Movement_CrasherWakeWalkToPlayerX684
    ApplyMovement LOCALID_COUNTERPART, VeilstoneCity_Movement_CounterpartWatchCrasherWakeWalkToPlayerX684
    ApplyMovement LOCALID_PLAYER, VeilstoneCity_Movement_PlayerWatchCrasherWakeWalkToPlayerX684
    WaitMovement
    Return

VeilstoneCity_CrasherWakeLeaveX681:
    ApplyMovement LOCALID_CRASHER_WAKE, VeilstoneCity_Movement_CrasherWakeLeaveX681
    ApplyMovement LOCALID_COUNTERPART, VeilstoneCity_Movement_CounterpartWatchCrasherWakeLeave
    ApplyMovement LOCALID_PLAYER, VeilstoneCity_Movement_PlayerWatchCrasherWakeLeave
    WaitMovement
    Return

VeilstoneCity_CrasherWakeLeaveX682:
    ApplyMovement LOCALID_CRASHER_WAKE, VeilstoneCity_Movement_CrasherWakeLeaveX682
    ApplyMovement LOCALID_COUNTERPART, VeilstoneCity_Movement_CounterpartWatchCrasherWakeLeave
    ApplyMovement LOCALID_PLAYER, VeilstoneCity_Movement_PlayerWatchCrasherWakeLeave
    WaitMovement
    Return

VeilstoneCity_CrasherWakeLeaveX683:
    ApplyMovement LOCALID_CRASHER_WAKE, VeilstoneCity_Movement_CrasherWakeLeaveX683
    ApplyMovement LOCALID_COUNTERPART, VeilstoneCity_Movement_CounterpartWatchCrasherWakeLeave
    ApplyMovement LOCALID_PLAYER, VeilstoneCity_Movement_PlayerWatchCrasherWakeLeave
    WaitMovement
    Return

VeilstoneCity_CrasherWakeLeaveX684:
    ApplyMovement LOCALID_CRASHER_WAKE, VeilstoneCity_Movement_CrasherWakeLeaveX684
    ApplyMovement LOCALID_COUNTERPART, VeilstoneCity_Movement_CounterpartWatchCrasherWakeLeave
    ApplyMovement LOCALID_PLAYER, VeilstoneCity_Movement_PlayerWatchCrasherWakeLeave
    WaitMovement
    Return

VeilstoneCity_CounterpartLeaveX681:
    ApplyMovement LOCALID_COUNTERPART, VeilstoneCity_Movement_CounterpartLeaveWest
    ApplyMovement LOCALID_PLAYER, VeilstoneCity_Movement_PlayerWatchCounterpartLeaveWest
    WaitMovement
    Return

VeilstoneCity_CounterpartLeaveX682:
    ApplyMovement LOCALID_COUNTERPART, VeilstoneCity_Movement_CounterpartLeaveWest
    ApplyMovement LOCALID_PLAYER, VeilstoneCity_Movement_PlayerWatchCounterpartLeaveWest
    WaitMovement
    Return

VeilstoneCity_CounterpartLeaveX683:
    ApplyMovement LOCALID_COUNTERPART, VeilstoneCity_Movement_CounterpartLeaveEast
    ApplyMovement LOCALID_PLAYER, VeilstoneCity_Movement_PlayerWatchCounterpartLeaveEast
    WaitMovement
    Return

VeilstoneCity_CounterpartLeaveX684:
    ApplyMovement LOCALID_COUNTERPART, VeilstoneCity_Movement_CounterpartLeaveEast
    ApplyMovement LOCALID_PLAYER, VeilstoneCity_Movement_PlayerWatchCounterpartLeaveEast
    WaitMovement
    Return

    .balign 4, 0
VeilstoneCity_Movement_CounterpartNoticePlayerBeforeGym:
    Delay8
    WalkOnSpotNormalSouth
    EmoteExclamationMark
    Delay8
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_CounterpartWalkToPlayerX681:
    WalkNormalWest
    WalkNormalSouth
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_CounterpartWalkToPlayerX682:
    WalkNormalSouth
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_CounterpartWalkToPlayerX683:
    WalkNormalEast
    WalkNormalSouth
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_CounterpartWalkToPlayerX684:
    WalkNormalEast 2
    WalkNormalSouth
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_CounterpartFaceCrasherWake:
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_CounterpartWatchCrasherWakeWalkToPlayerX681:
    Delay8 4
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_CounterpartWatchCrasherWakeWalkToPlayerX682:
    Delay8 3
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_CounterpartWatchCrasherWakeWalkToPlayerX683:
    Delay8 2
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_CounterpartWatchCrasherWakeWalkToPlayerX684:
    Delay8 4
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_CounterpartLeaveWest:
    WalkNormalEast
    WalkNormalSouth 9
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_CounterpartLeaveEast:
    WalkNormalWest
    WalkNormalSouth 9
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_CounterpartWatchCrasherWakeLeave:
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

VeilstoneCity_UnusedMovement:
    Delay8
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_PlayerWatchCrasherWakeWalkToPlayerX681:
    Delay8 4
    Delay4
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_PlayerWatchCrasherWakeWalkToPlayerX682:
    Delay8 3
    Delay4
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_PlayerWatchCrasherWakeWalkToPlayerX683:
    Delay8 2
    Delay4
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_PlayerWatchCrasherWakeWalkToPlayerX684:
    Delay8 4
    Delay4
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_PlayerFaceCounterpartAfterCrasherWake:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_PlayerWatchCounterpartLeaveWest:
    Delay8 2
    WalkOnSpotNormalEast
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_PlayerWatchCounterpartLeaveEast:
    Delay8 2
    WalkOnSpotNormalWest
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_PlayerWatchCrasherWakeLeave:
    Delay8
    Delay4
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_CrasherWakeExitGym:
    WalkNormalSouth
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_CrasherWakeNoticePlayer:
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_CrasherWakeWalkToPlayerX681:
    WalkNormalSouth 4
    WalkNormalWest 2
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_CrasherWakeWalkToPlayerX682:
    WalkNormalSouth 4
    WalkNormalWest
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_CrasherWakeWalkToPlayerX683:
    WalkNormalSouth 4
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_CrasherWakeWalkToPlayerX684:
    WalkNormalSouth
    WalkNormalWest
    WalkNormalSouth 3
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_CrasherWakeLeaveX681:
    WalkNormalSouth 8
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_CrasherWakeLeaveX682:
    WalkNormalSouth 8
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_CrasherWakeLeaveX683:
    WalkNormalSouth 8
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_CrasherWakeLeaveX684:
    WalkNormalSouth 8
    EndMovement

VeilstoneCity_Counterpart:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetPlayerGender VAR_0x8004
    GoToIfEq VAR_0x8004, GENDER_MALE, VeilstoneCity_Dawn
    GoToIfEq VAR_0x8004, GENDER_FEMALE, VeilstoneCity_Lucas
    End

VeilstoneCity_Dawn:
    BufferPlayerName 0
    Message VeilstoneCity_Text_DawnAskForHelp
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, VeilstoneCity_DawnAcceptTeamUp
    GoTo VeilstoneCity_DawnDeclineTeamUp

VeilstoneCity_DawnAcceptTeamUp:
    Message VeilstoneCity_Text_DawnTeamUp
    GoTo VeilstoneCity_WarehouseScene

VeilstoneCity_DawnDeclineTeamUp:
    Message VeilstoneCity_Text_DawnIllBeWaiting
    WaitButton
    CloseMessage
    ReleaseAll
    End

VeilstoneCity_Lucas:
    BufferPlayerName 0
    Message VeilstoneCity_Text_LucasAskForHelp
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, VeilstoneCity_LucasAcceptTeamUp
    GoTo VeilstoneCity_LucasDeclineTeamUp

VeilstoneCity_LucasAcceptTeamUp:
    Message VeilstoneCity_Text_LucasTeamUp
    GoTo VeilstoneCity_WarehouseScene

VeilstoneCity_LucasDeclineTeamUp:
    Message VeilstoneCity_Text_LucasIllBeWaiting
    WaitButton
    CloseMessage
    ReleaseAll
    End

VeilstoneCity_WarehouseScene:
    CloseMessage
    GetPlayerDir VAR_RESULT
    CallIfEq VAR_RESULT, DIR_EAST, VeilstoneCity_PlayerAndCounterpartWalkToGruntsEast
    CallIfEq VAR_RESULT, DIR_SOUTH, VeilstoneCity_PlayerAndCounterpartWalkToGruntsSouth
    CallIfEq VAR_RESULT, DIR_NORTH, VeilstoneCity_PlayerAndCounterpartWalkToGruntsNorth
    Call VeilstoneCity_SetPlayerCounterpartPartnerTeam
    StartTagBattle VAR_0x8004, TRAINER_GALACTIC_GRUNT_VEILSTONE_CITY_1, TRAINER_GALACTIC_GRUNT_VEILSTONE_CITY_2
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, VeilstoneCity_BlackOut
    Message VeilstoneCity_Text_AwwThatStinks
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8005, 595, VeilstoneCity_GruntMWarehouseSouthWalkOnSpotWest
    CallIfEq VAR_0x8005, 597, VeilstoneCity_GruntMWarehouseNorthWalkOnSpotWest
    Message VeilstoneCity_Text_TakeYourPokedex
    CloseMessage
    WaitTime 15, VAR_RESULT
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8005, 595, VeilstoneCity_GruntMWarehouseNorthLeave
    CallIfEq VAR_0x8005, 597, VeilstoneCity_GruntMWarehouseNorthLeave2
    RemoveObject LOCALID_GRUNT_M_WAREHOUSE_NORTH
    Message VeilstoneCity_Text_WeWillRunLikeGrunts
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8005, 595, VeilstoneCity_GruntMWarehouseSouthLeave
    CallIfEq VAR_0x8005, 597, VeilstoneCity_GruntMWarehouseSouthLeave2
    RemoveObject LOCALID_GRUNT_M_WAREHOUSE_SOUTH
    GetPlayerGender VAR_0x8004
    CallIfEq VAR_0x8004, GENDER_MALE, VeilstoneCity_DawnWhatsGoingOn
    CallIfEq VAR_0x8004, GENDER_FEMALE, VeilstoneCity_LucasWhatsGoingOnHere
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8005, 595, VeilstoneCity_PlayerAndCounterpartFaceEachOtherZ595
    CallIfEq VAR_0x8005, 597, VeilstoneCity_PlayerAndCounterpartFaceEachOtherZ597
    WaitTime 10, VAR_RESULT
    BufferPlayerName 0
    GetPlayerGender VAR_0x8004
    CallIfEq VAR_0x8004, GENDER_MALE, VeilstoneCity_DawnThankYouSincerely
    CallIfEq VAR_0x8004, GENDER_FEMALE, VeilstoneCity_LucasThanksHonestly
    CloseMessage
    WaitTime 15, VAR_RESULT
    ClearFlag FLAG_HIDE_VEILSTONE_CITY_LOOKER
    SetObjectEventPos LOCALID_LOOKER, 692, 606
    AddObject LOCALID_LOOKER
    Common_SetLookerBGM
    ApplyMovement LOCALID_LOOKER, VeilstoneCity_Movement_LookerEnterAfterBattle
    WaitMovement
    Message VeilstoneCity_Text_HaveNoFear
    CloseMessage
    ApplyMovement LOCALID_COUNTERPART, VeilstoneCity_Movement_CounterpartFaceLooker
    ApplyMovement LOCALID_PLAYER, VeilstoneCity_Movement_PlayerFaceLooker
    WaitMovement
    GetPlayerGender VAR_0x8004
    CallIfEq VAR_0x8004, GENDER_MALE, VeilstoneCity_DawnFunnyManFromJubilife
    CallIfEq VAR_0x8004, GENDER_FEMALE, VeilstoneCity_LucasWeirdoFromJubilife
    Message VeilstoneCity_Text_YouInsultMeToMyFace
    GetPlayerGender VAR_0x8004
    CallIfEq VAR_0x8004, GENDER_MALE, VeilstoneCity_DawnIShouldBeGoingNow
    CallIfEq VAR_0x8004, GENDER_FEMALE, VeilstoneCity_LucasIllBeGoingNow
    CloseMessage
    ApplyMovement LOCALID_COUNTERPART, VeilstoneCity_Movement_CounterpartLeaveAfterBattle
    ApplyMovement LOCALID_LOOKER, VeilstoneCity_Movement_LookerWatchCounterpartLeave
    WaitMovement
    RemoveObject LOCALID_COUNTERPART
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 595, VeilstoneCity_LookerWalkToPlayerZ595
    GoToIfEq VAR_0x8005, 597, VeilstoneCity_LookerWalkToPlayerZ597
    End

VeilstoneCity_LookerWalkToPlayerZ595:
    ApplyMovement LOCALID_PLAYER, VeilstoneCity_Movement_PlayerFaceLookerSouth
    ApplyMovement LOCALID_LOOKER, VeilstoneCity_Movement_LookerWalkToPlayerZ595
    WaitMovement
    GoTo VeilstoneCity_WellTakeALook
    End

VeilstoneCity_LookerWalkToPlayerZ597:
    ApplyMovement LOCALID_PLAYER, VeilstoneCity_Movement_PlayerFaceLookerNorth
    ApplyMovement LOCALID_LOOKER, VeilstoneCity_Movement_LookerWalkToPlayerZ597
    WaitMovement
    GoTo VeilstoneCity_WellTakeALook
    End

VeilstoneCity_WellTakeALook:
    Message VeilstoneCity_Text_WellTakeALook
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 595, VeilstoneCity_EnterWarehouseZ595
    GoToIfEq VAR_0x8005, 597, VeilstoneCity_EnterWarehouseZ597
    End

VeilstoneCity_Unused:
    SetObjectEventPos LOCALID_LOOKER, 692, 603
    Return

VeilstoneCity_Unused2:
    SetObjectEventPos LOCALID_LOOKER, 692, 605
    Return

VeilstoneCity_EnterWarehouseZ595:
    ApplyMovement LOCALID_LOOKER, VeilstoneCity_Movement_LookerEnterWarehouse
    ApplyMovement LOCALID_PLAYER, VeilstoneCity_Movement_PlayerEnterWarehouseZ595
    WaitMovement
    GoTo VeilstoneCity_WarpToWarehouse
    End

VeilstoneCity_EnterWarehouseZ597:
    ApplyMovement LOCALID_LOOKER, VeilstoneCity_Movement_LookerEnterWarehouse
    ApplyMovement LOCALID_PLAYER, VeilstoneCity_Movement_PlayerEnterWarehouseZ597
    WaitMovement
    GoTo VeilstoneCity_WarpToWarehouse
    End

VeilstoneCity_WarpToWarehouse:
    SetFlag FLAG_HIDE_PASTORIA_CITY_RIVAL
    SetFlag FLAG_HIDE_VEILSTONE_CITY_LOOKER
    ClearFlag FLAG_HIDE_VEILSTONE_CITY_GALACTIC_WAREHOUSE_LOOKER
    SetVar VAR_VEILSTONE_CITY_GALACTIC_WAREHOUSE_STATE, 1
    PlaySE SEQ_SE_DP_KAIDAN2
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_VEILSTONE_CITY_GALACTIC_WAREHOUSE, 0, 8, 11, DIR_NORTH
    FadeScreenIn
    WaitFadeScreen
    End

VeilstoneCity_SetPlayerCounterpartPartnerTeam:
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, VeilstoneCity_SetDawnPartnerTeam
    GoToIfEq VAR_RESULT, GENDER_FEMALE, VeilstoneCity_SetLucasPartnerTeam
    End

VeilstoneCity_SetDawnPartnerTeam:
    GetPlayerStarterSpecies VAR_RESULT
    SetVar VAR_0x8004, TRAINER_DAWN_VEILSTONE_CITY_CHIMCHAR
    GoToIfEq VAR_RESULT, SPECIES_CHIMCHAR, VeilstoneCity_SetCounterpartPartnerTeamReturn
    SetVar VAR_0x8004, TRAINER_DAWN_VEILSTONE_CITY_PIPLUP
    GoToIfEq VAR_RESULT, SPECIES_PIPLUP, VeilstoneCity_SetCounterpartPartnerTeamReturn
    SetVar VAR_0x8004, TRAINER_DAWN_VEILSTONE_CITY_TURTWIG
    Return

VeilstoneCity_SetLucasPartnerTeam:
    GetPlayerStarterSpecies VAR_RESULT
    SetVar VAR_0x8004, TRAINER_LUCAS_VEILSTONE_CITY_CHIMCHAR
    GoToIfEq VAR_RESULT, SPECIES_CHIMCHAR, VeilstoneCity_SetCounterpartPartnerTeamReturn
    SetVar VAR_0x8004, TRAINER_LUCAS_VEILSTONE_CITY_PIPLUP
    GoToIfEq VAR_RESULT, SPECIES_PIPLUP, VeilstoneCity_SetCounterpartPartnerTeamReturn
    SetVar VAR_0x8004, TRAINER_LUCAS_VEILSTONE_CITY_TURTWIG
    Return

VeilstoneCity_SetCounterpartPartnerTeamReturn:
    Return

VeilstoneCity_PlayerAndCounterpartWalkToGruntsEast:
    ApplyMovement LOCALID_COUNTERPART, VeilstoneCity_Movement_CounterpartWalkToGruntEast
    ApplyMovement LOCALID_PLAYER, VeilstoneCity_Movement_PlayerWalkToGruntEast
    WaitMovement
    Return

VeilstoneCity_PlayerAndCounterpartWalkToGruntsSouth:
    ApplyMovement LOCALID_COUNTERPART, VeilstoneCity_Movement_CounterpartWalkToGruntSouth
    ApplyMovement LOCALID_PLAYER, VeilstoneCity_Movement_PlayerWalkToGruntSouth
    WaitMovement
    Return

VeilstoneCity_PlayerAndCounterpartWalkToGruntsNorth:
    ApplyMovement LOCALID_COUNTERPART, VeilstoneCity_Movement_CounterpartWalkToGruntNorth
    ApplyMovement LOCALID_PLAYER, VeilstoneCity_Movement_PlayerWalkToGruntNorth
    WaitMovement
    Return

VeilstoneCity_GruntMWarehouseSouthWalkOnSpotWest:
    ApplyMovement LOCALID_GRUNT_M_WAREHOUSE_SOUTH, VeilstoneCity_Movement_GruntWalkOnSpotWest
    WaitMovement
    Return

VeilstoneCity_GruntMWarehouseNorthWalkOnSpotWest:
    ApplyMovement LOCALID_GRUNT_M_WAREHOUSE_NORTH, VeilstoneCity_Movement_GruntWalkOnSpotWest
    WaitMovement
    Return

VeilstoneCity_GruntMWarehouseNorthLeave:
    ApplyMovement LOCALID_GRUNT_M_WAREHOUSE_NORTH, VeilstoneCity_Movement_GruntMWarehouseNorthLeave
    WaitMovement
    Return

VeilstoneCity_GruntMWarehouseNorthLeave2:
    ApplyMovement LOCALID_GRUNT_M_WAREHOUSE_NORTH, VeilstoneCity_Movement_GruntMWarehouseNorthLeave
    WaitMovement
    Return

VeilstoneCity_GruntMWarehouseSouthLeave:
    ApplyMovement LOCALID_GRUNT_M_WAREHOUSE_SOUTH, VeilstoneCity_Movement_GruntMWarehouseSouthLeave
    WaitMovement
    Return

VeilstoneCity_GruntMWarehouseSouthLeave2:
    ApplyMovement LOCALID_GRUNT_M_WAREHOUSE_SOUTH, VeilstoneCity_Movement_GruntMWarehouseSouthLeave
    WaitMovement
    Return

VeilstoneCity_DawnWhatsGoingOn:
    Message VeilstoneCity_Text_DawnWhatsGoingOn
    Return

VeilstoneCity_LucasWhatsGoingOnHere:
    Message VeilstoneCity_Text_LucasWhatsGoingOnHere
    Return

VeilstoneCity_DawnThankYouSincerely:
    Message VeilstoneCity_Text_DawnThankYouSincerely
    Return

VeilstoneCity_LucasThanksHonestly:
    Message VeilstoneCity_Text_LucasThanksHonestly
    Return

VeilstoneCity_DawnFunnyManFromJubilife:
    Message VeilstoneCity_Text_DawnFunnyManFromJubilife
    Return

VeilstoneCity_LucasWeirdoFromJubilife:
    Message VeilstoneCity_Text_LucasWeirdoFromJubilife
    Return

VeilstoneCity_DawnIShouldBeGoingNow:
    Message VeilstoneCity_Text_DawnIShouldBeGoingNow
    Return

VeilstoneCity_LucasIllBeGoingNow:
    Message VeilstoneCity_Text_LucasIllBeGoingNow
    Return

VeilstoneCity_PlayerAndCounterpartFaceEachOtherZ595:
    ApplyMovement LOCALID_COUNTERPART, VeilstoneCity_Movement_CounterpartWalkOnSpotNorth
    ApplyMovement LOCALID_PLAYER, VeilstoneCity_Movement_PlayerWalkOnSpotSouth
    WaitMovement
    Return

VeilstoneCity_PlayerAndCounterpartFaceEachOtherZ597:
    ApplyMovement LOCALID_COUNTERPART, VeilstoneCity_Movement_CounterpartWalkOnSpotSouth
    ApplyMovement LOCALID_PLAYER, VeilstoneCity_Movement_PlayerWalkOnSpotNorth
    WaitMovement
    Return

VeilstoneCity_BlackOut:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
VeilstoneCity_Movement_LookerEnterAfterBattle:
    WalkFastNorth 10
    WalkFastEast 3
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_LookerWatchCounterpartLeave:
    Delay8 2
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_LookerWalkToPlayerZ595:
    WalkNormalEast
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_LookerWalkToPlayerZ597:
    WalkNormalEast
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_LookerEnterWarehouse:
    WalkNormalEast 5
    WalkNormalNorth 4
    SetInvisible
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_CounterpartWalkToGruntEast:
    WalkNormalSouth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_CounterpartWalkToGruntSouth:
    WalkNormalSouth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_CounterpartWalkToGruntNorth:
    WalkNormalNorth
    WalkOnSpotNormalEast
    EndMovement

VeilstoneCity_UnusedMovement2:
    Delay4
    WalkOnSpotNormalWest
    EmoteExclamationMark
    Delay8
    EndMovement

VeilstoneCity_UnusedMovement3:
    WalkNormalWest 4
    EndMovement

VeilstoneCity_UnusedMovement4:
    WalkNormalSouth 2
    WalkNormalWest 2
    WalkNormalSouth 6
    EndMovement

VeilstoneCity_UnusedMovement5:
    Delay8
    WalkOnSpotNormalNorth
    WalkOnSpotNormalWest
    EndMovement

VeilstoneCity_UnusedMovement6:
    Delay8
    WalkOnSpotNormalSouth
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_CounterpartWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_CounterpartWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_CounterpartFaceLooker:
    WalkOnSpotFastWest
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_CounterpartLeaveAfterBattle:
    WalkNormalWest 3
    WalkNormalSouth 10
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_PlayerWalkToGruntEast:
    WalkNormalNorth
    WalkNormalEast
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_PlayerWalkToGruntSouth:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_PlayerWalkToGruntNorth:
    WalkOnSpotNormalEast
    EndMovement

VeilstoneCity_UnusedMovement7:
    Delay8
    WalkOnSpotNormalSouth
    WalkOnSpotNormalWest
    EndMovement

VeilstoneCity_UnusedMovement8:
    Delay8
    WalkOnSpotNormalNorth
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_PlayerWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_PlayerWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_PlayerFaceLooker:
    WalkOnSpotNormalWest
    EndMovement

VeilstoneCity_UnusedMovement9:
    Delay8
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_PlayerFaceLookerSouth:
    Delay8
    FaceSouth
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_PlayerFaceLookerNorth:
    Delay8
    FaceNorth
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_PlayerEnterWarehouseZ595:
    WalkNormalSouth
    WalkNormalEast 5
    WalkNormalNorth 5
    SetInvisible
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_PlayerEnterWarehouseZ597:
    WalkNormalNorth
    WalkNormalEast 5
    WalkNormalNorth 5
    SetInvisible
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_GruntWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_GruntMWarehouseNorthLeave:
    WalkFastEast 4
    WalkFastNorth 4
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_GruntMWarehouseSouthLeave:
    WalkFastEast 4
    WalkFastNorth 6
    WalkOnSpotFastNorth
    EndMovement

VeilstoneCity_Guitarist1:
    NPCMessage VeilstoneCity_Text_GalacticHasHMInWarehouse
    End

VeilstoneCity_Guitarist2:
    NPCMessage VeilstoneCity_Text_AClownIsGivingAwayCoinCases
    End

VeilstoneCity_PokefanM:
    NPCMessage VeilstoneCity_Text_GameCornerIsDangerous
    End

VeilstoneCity_BattleGirl1:
    NPCMessage VeilstoneCity_Text_IGotATMFromGameCorner
    End

VeilstoneCity_Roughneck1:
    NPCMessage VeilstoneCity_Text_MayleneIsVeilstonesGymLeader
    End

VeilstoneCity_Roughneck2:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_VEILSTONE_CITY_TM63, VeilstoneCity_EmbargoMakesItemsUnusable
    Message VeilstoneCity_Text_VeilstoneIsTheCityOfStone
    SetVar VAR_0x8004, ITEM_TM63
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, VeilstoneCity_BagIsFull
    Common_GiveItemQuantity
    SetFlag FLAG_RECEIVED_VEILSTONE_CITY_TM63
    GoTo VeilstoneCity_EmbargoMakesItemsUnusable

VeilstoneCity_EmbargoMakesItemsUnusable:
    Message VeilstoneCity_Text_EmbargoMakesItemsUnusable
    WaitButton
    CloseMessage
    ReleaseAll
    End

VeilstoneCity_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

VeilstoneCity_Lady:
    NPCMessage VeilstoneCity_Text_ICameToShopAtDepartmentStore
    End

VeilstoneCity_BattleGirl2:
    NPCMessage VeilstoneCity_Text_IBoughtANewParasol
    End

VeilstoneCity_TriggerGruntBlockWarehouse:
    LockAll
    ApplyMovement LOCALID_GRUNT_M_WAREHOUSE_NORTH, VeilstoneCity_Grunt_FaceSouth
    ApplyMovement LOCALID_PLAYER, VeilstoneCity_Player_FaceNorth
    WaitMovement
    Message VeilstoneCity_Text_ThisIsGalacticsWarehouse
    CloseMessage
    ApplyMovement LOCALID_GRUNT_M_WAREHOUSE_NORTH, VeilstoneCity_Grunt_PushPlayerBack
    ApplyMovement LOCALID_PLAYER, VeilstoneCity_Player_GetPushed
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
VeilstoneCity_Player_FaceNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
VeilstoneCity_Grunt_FaceSouth:
    WalkOnSpotNormalSouth
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
VeilstoneCity_Grunt_PushPlayerBack:
    WalkFastSouth
    WalkOnSpotNormalWest
    Delay8 2
    WalkNormalNorth
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
VeilstoneCity_Player_GetPushed:
    WalkNormalWest
    EndMovement

VeilstoneCity_GruntMWarehouseNorth:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfBadgeAcquired BADGE_ID_COBBLE, VeilstoneCity_YouveBroughtYourBuddy
    Message VeilstoneCity_Text_ThisIsGalacticsWarehouse2
    WaitButton
    CloseMessage
    ReleaseAll
    End

VeilstoneCity_YouveBroughtYourBuddy:
    Message VeilstoneCity_Text_YouveBroughtYourBuddy
    WaitButton
    CloseMessage
    ReleaseAll
    End

VeilstoneCity_GruntMWarehouseSouth:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfBadgeAcquired BADGE_ID_COBBLE, VeilstoneCity_WellTakeYouOn
    Message VeilstoneCity_Text_ThisIsTheAwesomeWarehouse
    WaitButton
    CloseMessage
    ReleaseAll
    End

VeilstoneCity_WellTakeYouOn:
    Message VeilstoneCity_Text_WellTakeYouOn
    WaitButton
    CloseMessage
    ReleaseAll
    End

VeilstoneCity_GruntMStorageKey:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message VeilstoneCity_Text_LookAtThoseAntennae
    CloseMessage
    FacePlayer
    ApplyMovement LOCALID_GRUNT_M_STORAGE_KEY, VeilstoneCity_Movement_GruntMStorageKeyNoticePlayer
    WaitMovement
    Message VeilstoneCity_Text_IKnowNothingAboutStorageKey
    CloseMessage
    SetFlag FLAG_VEILSTONE_CITY_GRUNT_DROPPED_STORAGE_KEY
    SetObjectEventPos LOCALID_LOOKER, 723, 601
    SetObjectEventMovementType LOCALID_LOOKER, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir LOCALID_LOOKER, DIR_NORTH
    ClearFlag FLAG_HIDE_VEILSTONE_CITY_LOOKER
    AddObject LOCALID_LOOKER
    GetPlayerDir VAR_RESULT
    GoToIfEq VAR_RESULT, DIR_NORTH, VeilstoneCity_GruntMStorageKeyLeaveNorth
    GoToIfEq VAR_RESULT, DIR_SOUTH, VeilstoneCity_GruntMStorageKeyLeaveSouth
    GoToIfEq VAR_RESULT, DIR_WEST, VeilstoneCity_GruntMStorageKeyLeaveWest
    GoToIfEq VAR_RESULT, DIR_EAST, VeilstoneCity_GruntMStorageKeyLeaveEast
    End

VeilstoneCity_GruntMStorageKeyLeaveNorth:
    ApplyMovement LOCALID_PLAYER, VeilstoneCity_Movement_PlayerWatchGruntMStorageKeyLeaveNorth
    ApplyMovement LOCALID_GRUNT_M_STORAGE_KEY, VeilstoneCity_Movement_GruntMStorageKeyLeaveNorthSouthEast
    WaitMovement
    Common_SetLookerBGM
    ApplyMovement LOCALID_LOOKER, VeilstoneCity_Movement_LookerEnterNorth
    WaitMovement
    GoTo VeilstoneCity_RemoveGruntMStorageKey
    End

VeilstoneCity_GruntMStorageKeyLeaveSouth:
    ApplyMovement LOCALID_GRUNT_M_STORAGE_KEY, VeilstoneCity_Movement_GruntMStorageKeyLeaveNorthSouthEast
    WaitMovement
    Common_SetLookerBGM
    ApplyMovement LOCALID_LOOKER, VeilstoneCity_Movement_LookerEnterSouth
    WaitMovement
    GoTo VeilstoneCity_RemoveGruntMStorageKey
    End

VeilstoneCity_GruntMStorageKeyLeaveEast:
    ApplyMovement LOCALID_PLAYER, VeilstoneCity_Movement_PlayerWatchGruntMStorageKeyLeaveEast
    ApplyMovement LOCALID_GRUNT_M_STORAGE_KEY, VeilstoneCity_Movement_GruntMStorageKeyLeaveNorthSouthEast
    WaitMovement
    Common_SetLookerBGM
    ApplyMovement LOCALID_LOOKER, VeilstoneCity_Movement_LookerEnterEast
    WaitMovement
    GoTo VeilstoneCity_RemoveGruntMStorageKey
    End

VeilstoneCity_GruntMStorageKeyLeaveWest:
    ApplyMovement LOCALID_PLAYER, VeilstoneCity_Movement_PlayerWatchGruntMStorageKeyLeaveWest
    ApplyMovement LOCALID_GRUNT_M_STORAGE_KEY, VeilstoneCity_Movement_GruntMStorageKeyLeaveWest
    WaitMovement
    Common_SetLookerBGM
    ApplyMovement LOCALID_LOOKER, VeilstoneCity_Movement_LookerEnterWest
    WaitMovement
    GoTo VeilstoneCity_RemoveGruntMStorageKey
    End

VeilstoneCity_RemoveGruntMStorageKey:
    RemoveObject LOCALID_GRUNT_M_STORAGE_KEY
    GoTo VeilstoneCity_AskWillYouEnterTheHideout
    End

VeilstoneCity_AskWillYouEnterTheHideout:
    Message VeilstoneCity_Text_WillYouEnterTheHideout
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, VeilstoneCity_WeWillMeetInside
    GoTo VeilstoneCity_SneakingInIsDaunting
    End

VeilstoneCity_WeWillMeetInside:
    SetVar VAR_VEILSTONE_CITY_GALACTIC_WAREHOUSE_STATE, 3
    SetFlag FLAG_AGREED_WITH_LOOKER_TO_ENTER_HIDEOUT
    Message VeilstoneCity_Text_WeWillMeetInside
    CloseMessage
    Common_FadeToDefaultMusic4
    ReleaseAll
    End

VeilstoneCity_SneakingInIsDaunting:
    Message VeilstoneCity_Text_SneakingInIsDaunting
    WaitButton
    CloseMessage
    Common_FadeToDefaultMusic4
    ReleaseAll
    End

    .balign 4, 0
VeilstoneCity_Movement_GruntMStorageKeyNoticePlayer:
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_GruntMStorageKeyLeaveNorthSouthEast:
    WalkFastEast
    WalkFastSouth 2
    WalkFastEast
    WalkFastSouth 9
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_GruntMStorageKeyLeaveWest:
    WalkFastSouth 2
    WalkFastEast 2
    WalkFastSouth 9
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_PlayerWatchGruntMStorageKeyLeaveNorth:
    Delay8
    WalkOnSpotNormalEast
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_PlayerWatchGruntMStorageKeyLeaveEast:
    Delay8 2
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_PlayerWatchGruntMStorageKeyLeaveWest:
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_LookerEnterSouth:
    WalkNormalNorth 6
    WalkNormalWest 2
    WalkNormalNorth 2
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_LookerEnterNorth:
    WalkNormalNorth 6
    WalkNormalWest 2
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_LookerEnterEast:
    WalkNormalNorth 6
    WalkNormalWest 3
    WalkNormalNorth
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_LookerEnterWest:
    WalkNormalNorth 6
    WalkNormalWest
    WalkNormalNorth
    EndMovement

VeilstoneCity_Looker:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ApplyMovement LOCALID_LOOKER, VeilstoneCity_Movement_LookerNoticePlayer
    WaitMovement
    BufferPlayerName 0
    Message VeilstoneCity_Text_Player
    Common_SetLookerBGM
    GoToIfSet FLAG_AGREED_WITH_LOOKER_TO_ENTER_HIDEOUT, VeilstoneCity_WeWillMeetInside
    GoTo VeilstoneCity_AskWillYouEnterTheHideout
    End

    .balign 4, 0
VeilstoneCity_Movement_LookerNoticePlayer:
    Delay8
    EmoteExclamationMark
    Delay8
    EndMovement

VeilstoneCity_GruntMSoutheast:
    NPCMessage VeilstoneCity_Text_WeHaveHMFlyInWarehouse
    End

VeilstoneCity_MapSign:
    ShowMapSign VeilstoneCity_Text_MapSign
    End

VeilstoneCity_GymSign:
    ShowScrollingSign VeilstoneCity_Text_SignPokemonGym
    End

VeilstoneCity_SignGalacticWarehouse:
    ShowLandmarkSign VeilstoneCity_Text_SignGalacticWarehouse
    End

VeilstoneCity_SignGalacticBuilding:
    ShowLandmarkSign VeilstoneCity_Text_SignGalacticVeilstoneBuilding
    End

VeilstoneCity_SignDepartmentStore:
    ShowLandmarkSign VeilstoneCity_Text_SignVeilstoneDepartmentStore
    End

VeilstoneCity_SignGameCorner:
    ShowLandmarkSign VeilstoneCity_Text_SignVeilstoneGameCorner
    End

VeilstoneCity_SignPrizeExchange:
    ShowLandmarkSign VeilstoneCity_Text_SignPrizeExchange
    End

VeilstoneCity_SignLakeValor:
    ShowLandmarkSign VeilstoneCity_Text_SignLakeValor
    End

VeilstoneCity_DeoxysMeteoriteSpeed:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    CheckPartyHasSpecies2 SPECIES_DEOXYS, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, VeilstoneCity_MeteoriteFromTheStars
    ChangeDeoxysForm DEOXYS_FORM_SPEED
    PlayCry SPECIES_DEOXYS
    Message VeilstoneCity_Text_MeteoriteSpeed
    WaitButton
    WaitCry
    CloseMessage
    ReleaseAll
    End

VeilstoneCity_DeoxysMeteoriteDefense:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    CheckPartyHasSpecies2 SPECIES_DEOXYS, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, VeilstoneCity_MeteoriteFromTheStars
    ChangeDeoxysForm DEOXYS_FORM_DEFENSE
    PlayCry SPECIES_DEOXYS
    Message VeilstoneCity_Text_MeteoriteDefense
    WaitButton
    WaitCry
    CloseMessage
    ReleaseAll
    End

VeilstoneCity_DeoxysMeteoriteAttack:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    CheckPartyHasSpecies2 SPECIES_DEOXYS, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, VeilstoneCity_MeteoriteFromTheStars
    ChangeDeoxysForm DEOXYS_FORM_ATTACK
    PlayCry SPECIES_DEOXYS
    Message VeilstoneCity_Text_MeteoriteAttack
    WaitButton
    WaitCry
    CloseMessage
    ReleaseAll
    End

VeilstoneCity_DeoxysMeteoriteNormal:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    CheckPartyHasSpecies2 SPECIES_DEOXYS, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, VeilstoneCity_MeteoriteFromTheStars
    ChangeDeoxysForm DEOXYS_FORM_NORMAL
    PlayCry SPECIES_DEOXYS
    Message VeilstoneCity_Text_MeteoriteNormal
    WaitButton
    WaitCry
    CloseMessage
    ReleaseAll
    End

VeilstoneCity_MeteoriteFromTheStars:
    Message VeilstoneCity_Text_MeteoriteFromTheStars
    WaitButton
    CloseMessage
    ReleaseAll
    End

VeilstoneCity_OnFrameCounterpartNeedsHelp:
    LockAll
    ApplyMovement LOCALID_COUNTERPART, VeilstoneCity_Movement_CounterpartNoticePlayerAfterGym
    WaitMovement
    GetPlayerGender VAR_0x8004
    CallIfEq VAR_0x8004, GENDER_MALE, VeilstoneCity_DawnPleaseCanYouHelpMe
    CallIfEq VAR_0x8004, GENDER_FEMALE, VeilstoneCity_LucasListenINeedYourHelp
    CloseMessage
    ApplyMovement LOCALID_COUNTERPART, VeilstoneCity_Movement_CounterpartLeaveNeedsHelp
    WaitMovement
    RemoveObject LOCALID_COUNTERPART
    Call VeilstoneCity_SetCounterpartPositionAtWarehouse
    ClearFlag FLAG_HIDE_VEILSTONE_COUNTERPART
    AddObject LOCALID_COUNTERPART
    SetVar VAR_VEILSTONE_CITY_COUNTERPART_NEEDS_HELP_STATE, 2
    ReleaseAll
    End

VeilstoneCity_DawnPleaseCanYouHelpMe:
    BufferPlayerName 0
    Message VeilstoneCity_Text_DawnPleaseCanYouHelpMe
    Return

VeilstoneCity_LucasListenINeedYourHelp:
    BufferPlayerName 0
    Message VeilstoneCity_Text_LucasListenINeedYourHelp
    Return

    .balign 4, 0
VeilstoneCity_Movement_CounterpartNoticePlayerAfterGym:
    WalkOnSpotNormalNorth
    EmoteExclamationMark
    WalkNormalEast 2
    WalkNormalNorth
    EndMovement

    .balign 4, 0
VeilstoneCity_Movement_CounterpartLeaveNeedsHelp:
    WalkNormalSouth 9
    EndMovement

VeilstoneCity_Guitarist3:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message VeilstoneCity_Text_FrenchDoYouLikePokemon
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, VeilstoneCity_FrenchHardToBelieve
    Message VeilstoneCity_Text_FrenchMeToo
    GoTo VeilstoneCity_Guitarist3End
    End

VeilstoneCity_FrenchHardToBelieve:
    Message VeilstoneCity_Text_FrenchHardToBelieve
    GoTo VeilstoneCity_Guitarist3End
    End

VeilstoneCity_Guitarist3End:
    WaitButton
    CloseMessage
    ReleaseAll
    End

VeilstoneCity_BattleGirl3:
    NPCMessage VeilstoneCity_Text_AManSpokeInForeignLanguage
    End

    .balign 4, 0
