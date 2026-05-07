#include "macros/scrcmd.inc"
#include "res/text/bank/battle_tower_battle_salon.h"
#include "res/field/events/events_battle_tower_battle_salon.h"
#include "constants/map_object.h"


    ScriptEntry BattleTowerBattleSalon_Attendant
    ScriptEntry BattleTowerBattleSalon_Cheryl
    ScriptEntry BattleTowerBattleSalon_Mira
    ScriptEntry BattleTowerBattleSalon_Riley
    ScriptEntry BattleTowerBattleSalon_Marley
    ScriptEntry BattleTowerBattleSalon_Buck
    ScriptEntry BattleTowerBattleSalon_OnTransition
    ScriptEntry BattleTowerBattleSalon_OnResume
    ScriptEntry BattleTowerBattleSalon_OnFrameEnterBattleSalon
    ScriptEntry BattleTowerBattleSalon_OnFrameEnterBattleRoom
    ScriptEntryEnd

BattleTowerBattleSalon_OnTransition:
    GoToIfUnset FLAG_TRAVELED_WITH_CHERYL, BattleTowerBattleSalon_HideCheryl
    GoToIfNe VAR_BATTLE_TOWER_BATTLE_SALON_STATE, 2, BattleTowerBattleSalon_ShowCheryl
    CallBattleTowerFunction BT_FUNC_GET_PARTNER_PARAM, BT_PARAM_PARTNER_ID, VAR_MAP_LOCAL_9
    GoToIfEq VAR_MAP_LOCAL_9, BT_PARTNER_CHERYL, BattleTowerBattleSalon_HideCheryl
BattleTowerBattleSalon_ShowCheryl:
    ClearFlag FLAG_HIDE_BATTLE_SALON_CHERYL
BattleTowerBattleSalon_CheckShowMira:
    GoToIfUnset FLAG_TRAVELED_WITH_MIRA, BattleTowerBattleSalon_HideMira
    GoToIfNe VAR_BATTLE_TOWER_BATTLE_SALON_STATE, 2, BattleTowerBattleSalon_ShowMira
    CallBattleTowerFunction BT_FUNC_GET_PARTNER_PARAM, BT_PARAM_PARTNER_ID, VAR_MAP_LOCAL_9
    GoToIfEq VAR_MAP_LOCAL_9, BT_PARTNER_MIRA, BattleTowerBattleSalon_HideMira
BattleTowerBattleSalon_ShowMira:
    ClearFlag FLAG_HIDE_BATTLE_SALON_MIRA
BattleTowerBattleSalon_CheckShowRiley:
    GoToIfUnset FLAG_RECEIVED_RIOLU_EGG_FROM_RILEY, BattleTowerBattleSalon_HideRiley
    GoToIfNe VAR_BATTLE_TOWER_BATTLE_SALON_STATE, 2, BattleTowerBattleSalon_ShowRiley
    CallBattleTowerFunction BT_FUNC_GET_PARTNER_PARAM, BT_PARAM_PARTNER_ID, VAR_MAP_LOCAL_9
    GoToIfEq VAR_MAP_LOCAL_9, BT_PARTNER_RILEY, BattleTowerBattleSalon_HideRiley
BattleTowerBattleSalon_ShowRiley:
    ClearFlag FLAG_HIDE_BATTLE_SALON_RILEY
BattleTowerBattleSalon_CheckShowMarley:
    GoToIfUnset FLAG_TRAVELED_WITH_MARLEY, BattleTowerBattleSalon_HideMarley
    GoToIfNe VAR_BATTLE_TOWER_BATTLE_SALON_STATE, 2, BattleTowerBattleSalon_ShowMarley
    CallBattleTowerFunction BT_FUNC_GET_PARTNER_PARAM, BT_PARAM_PARTNER_ID, VAR_MAP_LOCAL_9
    GoToIfEq VAR_MAP_LOCAL_9, BT_PARTNER_MARLEY, BattleTowerBattleSalon_HideMarley
BattleTowerBattleSalon_ShowMarley:
    ClearFlag FLAG_HIDE_BATTLE_SALON_MARLEY
BattleTowerBattleSalon_CheckShowBuck:
    GoToIfUnset FLAG_BUCK_LEFT_BATTLEGROUND, BattleTowerBattleSalon_HideBuck
    GoToIfNe VAR_BATTLE_TOWER_BATTLE_SALON_STATE, 2, BattleTowerBattleSalon_ShowBuck
    CallBattleTowerFunction BT_FUNC_GET_PARTNER_PARAM, BT_PARAM_PARTNER_ID, VAR_MAP_LOCAL_9
    GoToIfEq VAR_MAP_LOCAL_9, BT_PARTNER_BUCK, BattleTowerBattleSalon_HideBuck
BattleTowerBattleSalon_ShowBuck:
    ClearFlag FLAG_HIDE_BATTLE_SALON_BUCK
BattleTowerBattleSalon_EndCheckShowPartners:
    End

BattleTowerBattleSalon_HideCheryl:
    SetFlag FLAG_HIDE_BATTLE_SALON_CHERYL
    GoTo BattleTowerBattleSalon_CheckShowMira
    End

BattleTowerBattleSalon_HideMira:
    SetFlag FLAG_HIDE_BATTLE_SALON_MIRA
    GoTo BattleTowerBattleSalon_CheckShowRiley
    End

BattleTowerBattleSalon_HideRiley:
    SetFlag FLAG_HIDE_BATTLE_SALON_RILEY
    GoTo BattleTowerBattleSalon_CheckShowMarley
    End

BattleTowerBattleSalon_HideMarley:
    SetFlag FLAG_HIDE_BATTLE_SALON_MARLEY
    GoTo BattleTowerBattleSalon_CheckShowBuck
    End

BattleTowerBattleSalon_HideBuck:
    SetFlag FLAG_HIDE_BATTLE_SALON_BUCK
    GoTo BattleTowerBattleSalon_EndCheckShowPartners
    End

BattleTowerBattleSalon_OnResume:
    CallIfEq VAR_BATTLE_TOWER_BATTLE_SALON_STATE, 1, BattleTowerBattleSalon_HidePlayer
    GoToIfEq VAR_BATTLE_TOWER_BATTLE_SALON_STATE, 2, BattleTowerBattleSalon_SetAttendantPositionAtDoor
    End

BattleTowerBattleSalon_HidePlayer:
    HideObject LOCALID_PLAYER
    Return

BattleTowerBattleSalon_SetAttendantPositionAtDoor:
    SetPosition LOCALID_TEALA, 8, 0, 3, DIR_SOUTH
    End

BattleTowerBattleSalon_OnFrameEnterBattleSalon:
    LockAll
    SetVar VAR_BATTLE_TOWER_BATTLE_SALON_STATE, 0
    Call BattleTowerBattleSalon_EnterBattleSalon
    Message BattleTowerBattleSalon_Text_PleaseFindAPartner
    CloseMessage
    CallBattleTowerFunction BT_FUNC_UNK_56, 0, 0
    ReleaseAll
    End

BattleTowerBattleSalon_Attendant:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 0
    Message BattleTowerBattleSalon_Text_WouldYouLikeToQuit
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, BattleTowerBattleSalon_Quit
    Message BattleTowerBattleSalon_Text_PleaseFindAPartner
    CloseMessage
    ReleaseAll
    End

BattleTowerBattleSalon_Quit:
    CloseMessage
    ReleaseAll
    SetVar VAR_BATTLE_TOWER_LOBBY_LOAD_ACTION, 3
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_TOWER, 0, 11, 6, DIR_NORTH
    FadeScreenIn
    WaitFadeScreen
    End

BattleTowerBattleSalon_OnFrameEnterBattleRoom:
    LockAll
    SetVar VAR_BATTLE_TOWER_BATTLE_SALON_STATE, 0
    Message BattleTowerBattleSalon_Text_ShowYouToMultiBattleRoom
    CloseMessage
    Call BattleTowerBattleSalon_EnterBattleRoom
    SetVar VAR_BATTLE_TOWER_ELEVATOR_LOAD_ACTION, 2
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_TOWER_ELEVATOR, 0, 3, 6, DIR_NORTH
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

BattleTowerBattleSalon_BufferSpeciesAndMoveNames:
    GetBattleTowerPartnerSpeciesAndMove VAR_MAP_LOCAL_9, 0, VAR_0x8004, VAR_0x8005
    BufferSpeciesNameFromVar 0, VAR_0x8004, 0, 0
    BufferMoveName 1, VAR_0x8005
    GetBattleTowerPartnerSpeciesAndMove VAR_MAP_LOCAL_9, 1, VAR_0x8004, VAR_0x8005
    BufferSpeciesNameFromVar 2, VAR_0x8004, 0, 0
    BufferMoveName 3, VAR_0x8005
    Return

BattleTowerBattleSalon_Cheryl:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfEq VAR_BATTLE_TOWER_BATTLE_SALON_STATE, 2, BattleTowerBattleSalon_CherylDontTeamUp
    SetVar VAR_MAP_LOCAL_9, BT_PARTNER_CHERYL
    GetBattleTowerPartnerSpeciesAndMove VAR_MAP_LOCAL_9, 0, VAR_0x8004, VAR_0x8005
    BufferSpeciesNameWithArticle 0, VAR_0x8004
    BufferMoveName 1, VAR_0x8005
    GetBattleTowerPartnerSpeciesAndMove VAR_MAP_LOCAL_9, 1, VAR_0x8004, VAR_0x8005
    BufferSpeciesNameWithArticle 2, VAR_0x8004
    BufferMoveName 3, VAR_0x8005
    Message BattleTowerBattleSalon_Text_CherylAskTeamUp
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, BattleTowerBattleSalon_CherylTeamUp
BattleTowerBattleSalon_CherylDontTeamUp:
    Message BattleTowerBattleSalon_Text_CherylDontTeamUp
    WaitButton
    CloseMessage
    ReleaseAll
    End

BattleTowerBattleSalon_CherylTeamUp:
    CallBattleTowerFunction BT_FUNC_SET_PARTNER_ID, VAR_MAP_LOCAL_9, 0
    SetVar VAR_BATTLE_TOWER_BATTLE_SALON_STATE, 2
    Message BattleTowerBattleSalon_Text_CherylTeamUp
    CloseMessage
    ReleaseAll
    LockObject LOCALID_CHERYL
    GoTo BattleTowerBattleSalon_CherylWalkToAttendant
    End

BattleTowerBattleSalon_Mira:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfEq VAR_BATTLE_TOWER_BATTLE_SALON_STATE, 2, BattleTowerBattleSalon_MiraDontTeamUp
    SetVar VAR_MAP_LOCAL_9, BT_PARTNER_MIRA
    Call BattleTowerBattleSalon_BufferSpeciesAndMoveNames
    BufferPlayerName 4
    Message BattleTowerBattleSalon_Text_MiraAskTeamUp
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, BattleTowerBattleSalon_MiraTeamUp
BattleTowerBattleSalon_MiraDontTeamUp:
    Message BattleTowerBattleSalon_Text_MiraDontTeamUp
    WaitButton
    CloseMessage
    ReleaseAll
    End

BattleTowerBattleSalon_MiraTeamUp:
    CallBattleTowerFunction BT_FUNC_SET_PARTNER_ID, VAR_MAP_LOCAL_9, 0
    SetVar VAR_BATTLE_TOWER_BATTLE_SALON_STATE, 2
    BufferPlayerName 0
    Message BattleTowerBattleSalon_Text_MiraTeamUp
    CloseMessage
    ReleaseAll
    LockObject LOCALID_MIRA
    GoTo BattleTowerBattleSalon_MiraWalkToAttendant
    End

BattleTowerBattleSalon_Riley:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfEq VAR_BATTLE_TOWER_BATTLE_SALON_STATE, 2, BattleTowerBattleSalon_RileyDontTeamUp
    SetVar VAR_MAP_LOCAL_9, BT_PARTNER_RILEY
    Call BattleTowerBattleSalon_BufferSpeciesAndMoveNames
    Message BattleTowerBattleSalon_Text_RileyAskTeamUp
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, BattleTowerBattleSalon_RileyTeamUp
BattleTowerBattleSalon_RileyDontTeamUp:
    Message BattleTowerBattleSalon_Text_RileyDontTeamUp
    WaitButton
    CloseMessage
    ReleaseAll
    End

BattleTowerBattleSalon_RileyTeamUp:
    CallBattleTowerFunction BT_FUNC_SET_PARTNER_ID, VAR_MAP_LOCAL_9, 0
    SetVar VAR_BATTLE_TOWER_BATTLE_SALON_STATE, 2
    Message BattleTowerBattleSalon_Text_RileyTeamUp
    CloseMessage
    ReleaseAll
    LockObject LOCALID_RILEY
    GoTo BattleTowerBattleSalon_RileyWalkToAttendant
    End

BattleTowerBattleSalon_Marley:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfEq VAR_BATTLE_TOWER_BATTLE_SALON_STATE, 2, BattleTowerBattleSalon_MarleyDontTeamUp
    SetVar VAR_MAP_LOCAL_9, BT_PARTNER_MARLEY
    Call BattleTowerBattleSalon_BufferSpeciesAndMoveNames
    Message BattleTowerBattleSalon_Text_MarleyAskTeamUp
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, BattleTowerBattleSalon_MarleyTeamUp
BattleTowerBattleSalon_MarleyDontTeamUp:
    Message BattleTowerBattleSalon_Text_MarleyDontTeamUp
    WaitButton
    CloseMessage
    ReleaseAll
    End

BattleTowerBattleSalon_MarleyTeamUp:
    CallBattleTowerFunction BT_FUNC_SET_PARTNER_ID, VAR_MAP_LOCAL_9, 0
    SetVar VAR_BATTLE_TOWER_BATTLE_SALON_STATE, 2
    Message BattleTowerBattleSalon_Text_MarleyTeamUp
    CloseMessage
    ReleaseAll
    LockObject LOCALID_MARLEY
    GoTo BattleTowerBattleSalon_MarleyWalkToAttendant
    End

BattleTowerBattleSalon_Buck:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfEq VAR_BATTLE_TOWER_BATTLE_SALON_STATE, 2, BattleTowerBattleSalon_BuckDontTeamUp
    SetVar VAR_MAP_LOCAL_9, BT_PARTNER_BUCK
    Call BattleTowerBattleSalon_BufferSpeciesAndMoveNames
    Message BattleTowerBattleSalon_Text_BuckAskTeamUp
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, BattleTowerBattleSalon_BuckTeamUp
BattleTowerBattleSalon_BuckDontTeamUp:
    Message BattleTowerBattleSalon_Text_BuckDontTeamUp
    WaitButton
    CloseMessage
    ReleaseAll
    End

BattleTowerBattleSalon_BuckTeamUp:
    CallBattleTowerFunction BT_FUNC_SET_PARTNER_ID, VAR_MAP_LOCAL_9, 0
    SetVar VAR_BATTLE_TOWER_BATTLE_SALON_STATE, 2
    Message BattleTowerBattleSalon_Text_BuckTeamUp
    CloseMessage
    ReleaseAll
    LockObject LOCALID_BUCK
    GoTo BattleTowerBattleSalon_BuckWalkToAttendant
    End

BattleTowerBattleSalon_PlayOpenDoorAnimation:
    LoadDoorAnimation 0, 0, 8, 2, ANIMATION_TAG_DOOR_1
    PlayDoorOpenAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    Return

BattleTowerBattleSalon_PlayCloseDoorAnimation:
    PlayDoorCloseAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    UnloadAnimation ANIMATION_TAG_DOOR_1
    Return

BattleTowerBattleSalon_EnterBattleSalon:
    Call BattleTowerBattleSalon_PlayOpenDoorAnimation
    ApplyMovement LOCALID_TEALA, BattleTowerBattleSalon_Movement_AttendantEnterBattleSalon
    WaitMovement
    ShowObject LOCALID_PLAYER
    ApplyMovement LOCALID_PLAYER, BattleTowerBattleSalon_Movement_PlayerEnterBattleSalon
    WaitMovement
    Call BattleTowerBattleSalon_PlayCloseDoorAnimation
    ApplyMovement LOCALID_TEALA, BattleTowerBattleSalon_Movement_AttendantBlockDoor
    WaitMovement
    ApplyMovement LOCALID_PLAYER, BattleTowerBattleSalon_Movement_PlayerFaceNorth
    WaitMovement
    Return

BattleTowerBattleSalon_EnterBattleRoom:
    Call BattleTowerBattleSalon_PlayOpenDoorAnimation
    ApplyMovement LOCALID_TEALA, BattleTowerBattleSalon_Movement_AttendantEnterBattleRoom
    ApplyMovement LOCALID_PLAYER, BattleTowerBattleSalon_Movement_PlayerEnterBattleRoom
    WaitMovement
    Call BattleTowerBattleSalon_PlayCloseDoorAnimation
    Return

BattleTowerBattleSalon_PartnerEnterBattleRoom:
    ApplyMovement VAR_MAP_LOCAL_0, BattleTowerBattleSalon_Movement_PartnerFaceNorth
    WaitMovement
    ApplyMovement LOCALID_TEALA, BattleTowerBattleSalon_Movement_AttendantMoveAway
    WaitMovement
    Call BattleTowerBattleSalon_PlayOpenDoorAnimation
    ApplyMovement VAR_MAP_LOCAL_0, BattleTowerBattleSalon_Movement_PartnerEnterBattleRoom
    WaitMovement
    Call BattleTowerBattleSalon_PlayCloseDoorAnimation
    ApplyMovement LOCALID_TEALA, BattleTowerBattleSalon_Movement_AttendantMoveBack
    WaitMovement
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_TOWER_BATTLE_SALON, 0, 8, 4, DIR_NORTH
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

BattleTowerBattleSalon_CherylWalkToAttendant:
    SetVar VAR_MAP_LOCAL_0, LOCALID_CHERYL
    GetPlayerMapPos VAR_0x8000, VAR_0x8001
    GoToIfEq VAR_0x8000, 12, BattleTowerBattleSalon_CherylWalkWestToAttendant
    GoTo BattleTowerBattleSalon_CherylWalkSouthToAttendant
    End

BattleTowerBattleSalon_CherylWalkWestToAttendant:
    ApplyMovement LOCALID_CHERYL, BattleTowerBattleSalon_Movement_CherylWalkSouthToAttendant
    WaitMovement
    GoTo BattleTowerBattleSalon_PartnerEnterBattleRoom
    End

BattleTowerBattleSalon_CherylWalkSouthToAttendant:
    ApplyMovement LOCALID_CHERYL, BattleTowerBattleSalon_Movement_CherylWalkWestToAttendant
    WaitMovement
    GoTo BattleTowerBattleSalon_PartnerEnterBattleRoom
    End

BattleTowerBattleSalon_MiraWalkToAttendant:
    SetVar VAR_MAP_LOCAL_0, LOCALID_MIRA
    GetPlayerMapPos VAR_0x8000, VAR_0x8001
    GoToIfEq VAR_0x8000, 4, BattleTowerBattleSalon_MiraWalkEastToAttendant
    GoTo BattleTowerBattleSalon_MiraWalkNorthToAttendant
    End

BattleTowerBattleSalon_MiraWalkEastToAttendant:
    ApplyMovement LOCALID_MIRA, BattleTowerBattleSalon_Movement_MiraWalkEastToAttendant
    WaitMovement
    GoTo BattleTowerBattleSalon_PartnerEnterBattleRoom
    End

BattleTowerBattleSalon_MiraWalkNorthToAttendant:
    ApplyMovement LOCALID_MIRA, BattleTowerBattleSalon_Movement_MiraWalkNorthToAttendant
    WaitMovement
    GoTo BattleTowerBattleSalon_PartnerEnterBattleRoom
    End

BattleTowerBattleSalon_RileyWalkToAttendant:
    SetVar VAR_MAP_LOCAL_0, LOCALID_RILEY
    GetPlayerMapPos VAR_0x8000, VAR_0x8001
    GoToIfEq VAR_0x8001, 7, BattleTowerBattleSalon_RileyWalkWestToAttendant
    GoTo BattleTowerBattleSalon_RileyWalkNorthToAttendant
    End

BattleTowerBattleSalon_RileyWalkWestToAttendant:
    ApplyMovement LOCALID_RILEY, BattleTowerBattleSalon_Movement_RileyWalkWestToAttendant
    WaitMovement
    GoTo BattleTowerBattleSalon_PartnerEnterBattleRoom
    End

BattleTowerBattleSalon_RileyWalkNorthToAttendant:
    ApplyMovement LOCALID_RILEY, BattleTowerBattleSalon_Movement_RileyWalkNorthToAttendant
    WaitMovement
    GoTo BattleTowerBattleSalon_PartnerEnterBattleRoom
    End

BattleTowerBattleSalon_MarleyWalkToAttendant:
    SetVar VAR_MAP_LOCAL_0, LOCALID_MARLEY
    GetPlayerMapPos VAR_0x8000, VAR_0x8001
    GoToIfEq VAR_0x8001, 9, BattleTowerBattleSalon_MarleyWalkSouthToAttendant
    GoTo BattleTowerBattleSalon_MarleyWalkNorthToAttendant
    End

BattleTowerBattleSalon_MarleyWalkSouthToAttendant:
    ApplyMovement LOCALID_MARLEY, BattleTowerBattleSalon_Movement_MarleyWalkSouthToAttendant
    WaitMovement
    GoTo BattleTowerBattleSalon_PartnerEnterBattleRoom
    End

BattleTowerBattleSalon_MarleyWalkNorthToAttendant:
    ApplyMovement LOCALID_MARLEY, BattleTowerBattleSalon_Movement_MarleyWalkNorthToAttendant
    WaitMovement
    GoTo BattleTowerBattleSalon_PartnerEnterBattleRoom
    End

BattleTowerBattleSalon_BuckWalkToAttendant:
    SetVar VAR_MAP_LOCAL_0, LOCALID_BUCK
    GetPlayerMapPos VAR_0x8000, VAR_0x8001
    GoToIfEq VAR_0x8000, 8, BattleTowerBattleSalon_BuckWalkWestToAttendant
    GoTo BattleTowerBattleSalon_BuckWalkEastToAttendant
    End

BattleTowerBattleSalon_BuckWalkWestToAttendant:
    ApplyMovement LOCALID_BUCK, BattleTowerBattleSalon_Movement_BuckWalkWestToAttendant
    WaitMovement
    GoTo BattleTowerBattleSalon_PartnerEnterBattleRoom
    End

BattleTowerBattleSalon_BuckWalkEastToAttendant:
    ApplyMovement LOCALID_BUCK, BattleTowerBattleSalon_Movement_BuckWalkEastToAttendant
    WaitMovement
    GoTo BattleTowerBattleSalon_PartnerEnterBattleRoom
    End

    .balign 4, 0
BattleTowerBattleSalon_Movement_PlayerEnterBattleSalon:
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_Movement_PlayerFaceNorth:
    FaceNorth
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_Movement_AttendantEnterBattleSalon:
    WalkNormalSouth 2
    WalkNormalWest
    FaceEast
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_Movement_AttendantBlockDoor:
    WalkNormalEast
    FaceSouth
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_Movement_AttendantMoveAway:
    FaceSouth
    WalkFastWest
    FaceEast
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_Movement_AttendantMoveBack:
    WalkFastEast
    FaceSouth
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_Movement_PlayerEnterBattleRoom:
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_Movement_AttendantEnterBattleRoom:
    WalkNormalNorth
    SetInvisible
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_Movement_PartnerFaceNorth:
    FaceNorth
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_Movement_PartnerEnterBattleRoom:
    WalkFastNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_Movement_CherylWalkSouthToAttendant:
    WalkFastSouth
    WalkFastWest 3
    WalkFastNorth 7
    WalkFastWest 2
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_Movement_CherylWalkWestToAttendant:
    WalkFastWest
    WalkFastNorth
    WalkFastWest 2
    WalkFastNorth 5
    WalkFastWest 2
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_Movement_MiraWalkEastToAttendant:
    WalkFastEast
    WalkFastNorth 2
    WalkFastEast 3
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_Movement_MiraWalkNorthToAttendant:
    WalkFastNorth 2
    WalkFastEast 4
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_Movement_RileyWalkWestToAttendant:
    WalkFastWest
    WalkFastNorth 4
    WalkFastWest 2
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_Movement_RileyWalkNorthToAttendant:
    WalkFastNorth 4
    WalkFastWest 3
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_Movement_MarleyWalkSouthToAttendant:
    WalkFastSouth
    WalkFastEast 4
    WalkFastNorth 7
    WalkFastEast 2
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_Movement_MarleyWalkNorthToAttendant:
    WalkFastNorth
    WalkFastEast 4
    WalkFastNorth 5
    WalkFastEast 2
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_Movement_BuckWalkWestToAttendant:
    WalkFastWest
    WalkFastNorth 5
    WalkFastEast 2
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_Movement_BuckWalkEastToAttendant:
    WalkFastEast 3
    WalkFastNorth 5
    WalkFastWest 2
    EndMovement
