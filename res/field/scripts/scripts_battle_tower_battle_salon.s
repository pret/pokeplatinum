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
    ScriptEntry BattleTowerBattleSalon_CheckShowCheryl
    ScriptEntry _015D
    ScriptEntry BattleTowerBattleSalon_Enter
    ScriptEntry BattleTowerBattleSalon_EnterBattleRoom
    ScriptEntryEnd

BattleTowerBattleSalon_CheckShowCheryl:
    GoToIfUnset FLAG_TRAVELED_WITH_CHERYL, BattleTowerBattleSalon_HideCheryl
    GoToIfNe VAR_UNK_0x40DF, 2, BattleTowerBattleSalon_ShowCheryl
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_PARTNER_PARAM, BT_PARAM_PARTNER_ID, VAR_MAP_LOCAL_9
    GoToIfEq VAR_MAP_LOCAL_9, BT_PARTNER_CHERYL, BattleTowerBattleSalon_HideCheryl
BattleTowerBattleSalon_ShowCheryl:
    ClearFlag FLAG_HIDE_BATTLE_SALON_CHERYL
BattleTowerBattleSalon_CheckShowMira:
    GoToIfUnset FLAG_TRAVELED_WITH_MIRA, BattleTowerBattleSalon_HideMira
    GoToIfNe VAR_UNK_0x40DF, 2, BattleTowerBattleSalon_ShowMira
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_PARTNER_PARAM, BT_PARAM_PARTNER_ID, VAR_MAP_LOCAL_9
    GoToIfEq VAR_MAP_LOCAL_9, BT_PARTNER_MIRA, BattleTowerBattleSalon_HideMira
BattleTowerBattleSalon_ShowMira:
    ClearFlag FLAG_HIDE_BATTLE_SALON_MIRA
BattleTowerBattleSalon_CheckShowRiley:
    GoToIfUnset FLAG_TRAVELED_WITH_RILEY, BattleTowerBattleSalon_HideRiley
    GoToIfNe VAR_UNK_0x40DF, 2, BattleTowerBattleSalon_ShowRiley
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_PARTNER_PARAM, BT_PARAM_PARTNER_ID, VAR_MAP_LOCAL_9
    GoToIfEq VAR_MAP_LOCAL_9, BT_PARTNER_RILEY, BattleTowerBattleSalon_HideRiley
BattleTowerBattleSalon_ShowRiley:
    ClearFlag FLAG_HIDE_BATTLE_SALON_RILEY
BattleTowerBattleSalon_CheckShowMarley:
    GoToIfUnset FLAG_TRAVELED_WITH_MARLEY, BattleTowerBattleSalon_HideMarley
    GoToIfNe VAR_UNK_0x40DF, 2, BattleTowerBattleSalon_ShowMarley
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_PARTNER_PARAM, BT_PARAM_PARTNER_ID, VAR_MAP_LOCAL_9
    GoToIfEq VAR_MAP_LOCAL_9, BT_PARTNER_MARLEY, BattleTowerBattleSalon_HideMarley
BattleTowerBattleSalon_ShowMarley:
    ClearFlag FLAG_HIDE_BATTLE_SALON_MARLEY
BattleTowerBattleSalon_CheckShowBuck:
    GoToIfUnset FLAG_BUCK_LEFT_BATTLEGROUND, BattleTowerBattleSalon_HideBuck
    GoToIfNe VAR_UNK_0x40DF, 2, BattleTowerBattleSalon_ShowBuck
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_PARTNER_PARAM, BT_PARAM_PARTNER_ID, VAR_MAP_LOCAL_9
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

_015D:
    CallIfEq VAR_UNK_0x40DF, 1, BattleTowerBattleSalon_HidePlayer
    GoToIfEq VAR_UNK_0x40DF, 2, BattleTowerBattleSalon_SetAttendantPositionAtDoor
    End

BattleTowerBattleSalon_HidePlayer:
    HideObject LOCALID_PLAYER
    Return

BattleTowerBattleSalon_SetAttendantPositionAtDoor:
    SetPosition BATTLE_TOWER_BATTLE_SALON_TEALA, 8, 0, 3, 1
    End

BattleTowerBattleSalon_Enter:
    LockAll
    SetVar VAR_UNK_0x40DF, 0
    Call BattleTowerBattleSalon_PlayEnterBattleSalonAnimation
    Message BattleTowerBattleSalon_Text_PleaseFindAPartner
    CloseMessage
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_56, 0, 0
    ReleaseAll
    End

BattleTowerBattleSalon_Attendant:
    PlayFanfare SEQ_SE_CONFIRM
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
    SetVar VAR_UNK_0x40D8, 3
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_TOWER, 0, 11, 6, 0
    FadeScreenIn
    WaitFadeScreen
    End

BattleTowerBattleSalon_EnterBattleRoom:
    LockAll
    SetVar VAR_UNK_0x40DF, 0
    Message BattleTowerBattleSalon_Text_ShowYouToMultiBattleRoom
    CloseMessage
    Call BattleTowerBattleSalon_PlayEnterBattleRoomAnimation
    SetVar VAR_UNK_0x40DB, 2
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_TOWER_ELEVATOR, 0, 3, 6, 0
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
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfEq VAR_UNK_0x40DF, 2, BattleTowerBattleSalon_CherylDontTeamUp
    SetVar VAR_MAP_LOCAL_9, BT_PARTNER_CHERYL
    GetBattleTowerPartnerSpeciesAndMove VAR_MAP_LOCAL_9, 0, VAR_0x8004, VAR_0x8005
    BufferSpeciesNameWithArticle 0, VAR_0x8004
    BufferMoveName 1, VAR_0x8005
    GetBattleTowerPartnerSpeciesAndMove VAR_MAP_LOCAL_9, 1, VAR_0x8004, VAR_0x8005
    BufferSpeciesNameWithArticle 2, VAR_0x8004
    BufferMoveName 3, VAR_0x8005
    Message BattleTowerBattleSalon_Text_CherylWouldYouLikeToTeamUp
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, BattleTowerBattleSalon_CherylTeamUp
BattleTowerBattleSalon_CherylDontTeamUp:
    Message BattleTowerBattleSalon_Text_CherylDontTeamUp
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

BattleTowerBattleSalon_CherylTeamUp:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_SET_PARTNER_ID, VAR_MAP_LOCAL_9, 0
    SetVar VAR_UNK_0x40DF, 2
    Message BattleTowerBattleSalon_Text_CherylTeamUp
    CloseMessage
    ReleaseAll
    LockObject BATTLE_TOWER_BATTLE_SALON_CHERYL
    GoTo BattleTowerBattleSalon_CherylWalkToAttendant
    End

BattleTowerBattleSalon_Mira:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfEq VAR_UNK_0x40DF, 2, BattleTowerBattleSalon_MiraDontTeamUp
    SetVar VAR_MAP_LOCAL_9, BT_PARTNER_MIRA
    Call BattleTowerBattleSalon_BufferSpeciesAndMoveNames
    BufferPlayerName 4
    Message BattleTowerBattleSalon_Text_MiraWouldYouLikeToTeamUp
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, BattleTowerBattleSalon_MiraTeamUp
BattleTowerBattleSalon_MiraDontTeamUp:
    Message BattleTowerBattleSalon_Text_MiraDontTeamUp
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

BattleTowerBattleSalon_MiraTeamUp:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_SET_PARTNER_ID, VAR_MAP_LOCAL_9, 0
    SetVar VAR_UNK_0x40DF, 2
    BufferPlayerName 0
    Message BattleTowerBattleSalon_Text_MiraTeamUp
    CloseMessage
    ReleaseAll
    LockObject BATTLE_TOWER_BATTLE_SALON_MIRA
    GoTo BattleTowerBattleSalon_MiraWalkToAttendant
    End

BattleTowerBattleSalon_Riley:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfEq VAR_UNK_0x40DF, 2, BattleTowerBattleSalon_RileyDontTeamUp
    SetVar VAR_MAP_LOCAL_9, BT_PARTNER_RILEY
    Call BattleTowerBattleSalon_BufferSpeciesAndMoveNames
    Message BattleTowerBattleSalon_Text_RileyWouldYouLikeToTeamUp
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, BattleTowerBattleSalon_RileyTeamUp
BattleTowerBattleSalon_RileyDontTeamUp:
    Message BattleTowerBattleSalon_Text_RileyDontTeamUp
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

BattleTowerBattleSalon_RileyTeamUp:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_SET_PARTNER_ID, VAR_MAP_LOCAL_9, 0
    SetVar VAR_UNK_0x40DF, 2
    Message BattleTowerBattleSalon_Text_RileyTeamUp
    CloseMessage
    ReleaseAll
    LockObject BATTLE_TOWER_BATTLE_SALON_RILEY
    GoTo BattleTowerBattleSalon_RileyWalkToAttendant
    End

BattleTowerBattleSalon_Marley:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfEq VAR_UNK_0x40DF, 2, BattleTowerBattleSalon_MarleyDontTeamUp
    SetVar VAR_MAP_LOCAL_9, BT_PARTNER_MARLEY
    Call BattleTowerBattleSalon_BufferSpeciesAndMoveNames
    Message BattleTowerBattleSalon_Text_MarleyWouldYouLikeToTeamUp
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, BattleTowerBattleSalon_MarleyTeamUp
BattleTowerBattleSalon_MarleyDontTeamUp:
    Message BattleTowerBattleSalon_Text_MarleyDontTeamUp
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

BattleTowerBattleSalon_MarleyTeamUp:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_SET_PARTNER_ID, VAR_MAP_LOCAL_9, 0
    SetVar VAR_UNK_0x40DF, 2
    Message BattleTowerBattleSalon_Text_MarleyTeamUp
    CloseMessage
    ReleaseAll
    LockObject BATTLE_TOWER_BATTLE_SALON_MARLEY
    GoTo BattleTowerBattleSalon_MarleyWalkToAttendant
    End

BattleTowerBattleSalon_Buck:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfEq VAR_UNK_0x40DF, 2, BattleTowerBattleSalon_BuckDontTeamUp
    SetVar VAR_MAP_LOCAL_9, BT_PARTNER_BUCK
    Call BattleTowerBattleSalon_BufferSpeciesAndMoveNames
    Message BattleTowerBattleSalon_Text_BuckWouldYouLikeToTeamUp
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, BattleTowerBattleSalon_BuckTeamUp
BattleTowerBattleSalon_BuckDontTeamUp:
    Message BattleTowerBattleSalon_Text_BuckDontTeamUp
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

BattleTowerBattleSalon_BuckTeamUp:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_SET_PARTNER_ID, VAR_MAP_LOCAL_9, 0
    SetVar VAR_UNK_0x40DF, 2
    Message BattleTowerBattleSalon_Text_BuckTeamUp
    CloseMessage
    ReleaseAll
    LockObject BATTLE_TOWER_BATTLE_SALON_BUCK
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

BattleTowerBattleSalon_PlayEnterBattleSalonAnimation:
    Call BattleTowerBattleSalon_PlayOpenDoorAnimation
    ApplyMovement BATTLE_TOWER_BATTLE_SALON_TEALA, BattleTowerBattleSalon_AttendantEnterBattleSalonMovement
    WaitMovement
    ShowObject LOCALID_PLAYER
    ApplyMovement LOCALID_PLAYER, BattleTowerBattleSalon_PlayerEnterBattleSalonMovement
    WaitMovement
    Call BattleTowerBattleSalon_PlayCloseDoorAnimation
    ApplyMovement BATTLE_TOWER_BATTLE_SALON_TEALA, BattleTowerBattleSalon_AttendantBlockDoorMovement
    WaitMovement
    ApplyMovement LOCALID_PLAYER, BattleTowerBattleSalon_PlayerFaceNorthMovement
    WaitMovement
    Return

BattleTowerBattleSalon_PlayEnterBattleRoomAnimation:
    Call BattleTowerBattleSalon_PlayOpenDoorAnimation
    ApplyMovement BATTLE_TOWER_BATTLE_SALON_TEALA, BattleTowerBattleSalon_AttendantEnterBattleRoomMovement
    ApplyMovement LOCALID_PLAYER, BattleTowerBattleSalon_PlayerEnterBattleRoomMovement
    WaitMovement
    Call BattleTowerBattleSalon_PlayCloseDoorAnimation
    Return

BattleTowerBattleSalon_PartnerEnterBattleRoom:
    ApplyMovement VAR_MAP_LOCAL_0, BattleTowerBattleSalon_PartnerFaceNorthMovement
    WaitMovement
    ApplyMovement BATTLE_TOWER_BATTLE_SALON_TEALA, BattleTowerBattleSalon_AttendantMoveAwayMovement
    WaitMovement
    Call BattleTowerBattleSalon_PlayOpenDoorAnimation
    ApplyMovement VAR_MAP_LOCAL_0, BattleTowerBattleSalon_PartnerEnterBattleRoomMovement
    WaitMovement
    Call BattleTowerBattleSalon_PlayCloseDoorAnimation
    ApplyMovement BATTLE_TOWER_BATTLE_SALON_TEALA, BattleTowerBattleSalon_AttendantMoveBackMovement
    WaitMovement
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_TOWER_BATTLE_SALON, 0, 8, 4, 0
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

BattleTowerBattleSalon_CherylWalkToAttendant:
    SetVar VAR_MAP_LOCAL_0, BATTLE_TOWER_BATTLE_SALON_CHERYL
    GetPlayerMapPos VAR_0x8000, VAR_0x8001
    GoToIfEq VAR_0x8000, 12, BattleTowerBattleSalon_CherylWalkWestToAttendant
    GoTo BattleTowerBattleSalon_CherylWalkSouthToAttendant
    End

BattleTowerBattleSalon_CherylWalkWestToAttendant:
    ApplyMovement BATTLE_TOWER_BATTLE_SALON_CHERYL, BattleTowerBattleSalon_CherylWalkSouthToAttendantMovement
    WaitMovement
    GoTo BattleTowerBattleSalon_PartnerEnterBattleRoom
    End

BattleTowerBattleSalon_CherylWalkSouthToAttendant:
    ApplyMovement BATTLE_TOWER_BATTLE_SALON_CHERYL, BattleTowerBattleSalon_CherylWalkWestToAttendantMovement
    WaitMovement
    GoTo BattleTowerBattleSalon_PartnerEnterBattleRoom
    End

BattleTowerBattleSalon_MiraWalkToAttendant:
    SetVar VAR_MAP_LOCAL_0, BATTLE_TOWER_BATTLE_SALON_MIRA
    GetPlayerMapPos VAR_0x8000, VAR_0x8001
    GoToIfEq VAR_0x8000, 4, BattleTowerBattleSalon_MiraWalkEastToAttendant
    GoTo BattleTowerBattleSalon_MiraWalkNorthToAttendant
    End

BattleTowerBattleSalon_MiraWalkEastToAttendant:
    ApplyMovement BATTLE_TOWER_BATTLE_SALON_MIRA, BattleTowerBattleSalon_MiraWalkEastToAttendantMovement
    WaitMovement
    GoTo BattleTowerBattleSalon_PartnerEnterBattleRoom
    End

BattleTowerBattleSalon_MiraWalkNorthToAttendant:
    ApplyMovement BATTLE_TOWER_BATTLE_SALON_MIRA, BattleTowerBattleSalon_MiraWalkNorthToAttendantMovement
    WaitMovement
    GoTo BattleTowerBattleSalon_PartnerEnterBattleRoom
    End

BattleTowerBattleSalon_RileyWalkToAttendant:
    SetVar VAR_MAP_LOCAL_0, BATTLE_TOWER_BATTLE_SALON_RILEY
    GetPlayerMapPos VAR_0x8000, VAR_0x8001
    GoToIfEq VAR_0x8001, 7, BattleTowerBattleSalon_RileyWalkWestToAttendant
    GoTo BattleTowerBattleSalon_RileyWalkNorthToAttendant
    End

BattleTowerBattleSalon_RileyWalkWestToAttendant:
    ApplyMovement BATTLE_TOWER_BATTLE_SALON_RILEY, BattleTowerBattleSalon_RileyWalkWestToAttendantMovement
    WaitMovement
    GoTo BattleTowerBattleSalon_PartnerEnterBattleRoom
    End

BattleTowerBattleSalon_RileyWalkNorthToAttendant:
    ApplyMovement BATTLE_TOWER_BATTLE_SALON_RILEY, BattleTowerBattleSalon_RileyWalkNorthToAttendantMovement
    WaitMovement
    GoTo BattleTowerBattleSalon_PartnerEnterBattleRoom
    End

BattleTowerBattleSalon_MarleyWalkToAttendant:
    SetVar VAR_MAP_LOCAL_0, BATTLE_TOWER_BATTLE_SALON_MARLEY
    GetPlayerMapPos VAR_0x8000, VAR_0x8001
    GoToIfEq VAR_0x8001, 9, BattleTowerBattleSalon_MarleyWalkSouthToAttendant
    GoTo BattleTowerBattleSalon_MarleyWalkNorthToAttendant
    End

BattleTowerBattleSalon_MarleyWalkSouthToAttendant:
    ApplyMovement BATTLE_TOWER_BATTLE_SALON_MARLEY, BattleTowerBattleSalon_MarleyWalkSouthToAttendantMovement
    WaitMovement
    GoTo BattleTowerBattleSalon_PartnerEnterBattleRoom
    End

BattleTowerBattleSalon_MarleyWalkNorthToAttendant:
    ApplyMovement BATTLE_TOWER_BATTLE_SALON_MARLEY, BattleTowerBattleSalon_MarleyWalkNorthToAttendantMovement
    WaitMovement
    GoTo BattleTowerBattleSalon_PartnerEnterBattleRoom
    End

BattleTowerBattleSalon_BuckWalkToAttendant:
    SetVar VAR_MAP_LOCAL_0, BATTLE_TOWER_BATTLE_SALON_BUCK
    GetPlayerMapPos VAR_0x8000, VAR_0x8001
    GoToIfEq VAR_0x8000, 8, BattleTowerBattleSalon_BuckWalkWestToAttendant
    GoTo BattleTowerBattleSalon_BuckWalkEastToAttendant
    End

BattleTowerBattleSalon_BuckWalkWestToAttendant:
    ApplyMovement BATTLE_TOWER_BATTLE_SALON_BUCK, BattleTowerBattleSalon_BuckWalkWestToAttendantMovement
    WaitMovement
    GoTo BattleTowerBattleSalon_PartnerEnterBattleRoom
    End

BattleTowerBattleSalon_BuckWalkEastToAttendant:
    ApplyMovement BATTLE_TOWER_BATTLE_SALON_BUCK, BattleTowerBattleSalon_BuckWalkEastToAttendantMovement
    WaitMovement
    GoTo BattleTowerBattleSalon_PartnerEnterBattleRoom
    End

    .balign 4, 0
BattleTowerBattleSalon_PlayerEnterBattleSalonMovement:
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_PlayerFaceNorthMovement:
    FaceNorth
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_AttendantEnterBattleSalonMovement:
    WalkNormalSouth 2
    WalkNormalWest
    FaceEast
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_AttendantBlockDoorMovement:
    WalkNormalEast
    FaceSouth
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_AttendantMoveAwayMovement:
    FaceSouth
    WalkFastWest
    FaceEast
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_AttendantMoveBackMovement:
    WalkFastEast
    FaceSouth
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_PlayerEnterBattleRoomMovement:
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_AttendantEnterBattleRoomMovement:
    WalkNormalNorth
    SetInvisible
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_PartnerFaceNorthMovement:
    FaceNorth
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_PartnerEnterBattleRoomMovement:
    WalkFastNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_CherylWalkSouthToAttendantMovement:
    WalkFastSouth
    WalkFastWest 3
    WalkFastNorth 7
    WalkFastWest 2
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_CherylWalkWestToAttendantMovement:
    WalkFastWest
    WalkFastNorth
    WalkFastWest 2
    WalkFastNorth 5
    WalkFastWest 2
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_MiraWalkEastToAttendantMovement:
    WalkFastEast
    WalkFastNorth 2
    WalkFastEast 3
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_MiraWalkNorthToAttendantMovement:
    WalkFastNorth 2
    WalkFastEast 4
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_RileyWalkWestToAttendantMovement:
    WalkFastWest
    WalkFastNorth 4
    WalkFastWest 2
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_RileyWalkNorthToAttendantMovement:
    WalkFastNorth 4
    WalkFastWest 3
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_MarleyWalkSouthToAttendantMovement:
    WalkFastSouth
    WalkFastEast 4
    WalkFastNorth 7
    WalkFastEast 2
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_MarleyWalkNorthToAttendantMovement:
    WalkFastNorth
    WalkFastEast 4
    WalkFastNorth 5
    WalkFastEast 2
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_BuckWalkWestToAttendantMovement:
    WalkFastWest
    WalkFastNorth 5
    WalkFastEast 2
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_BuckWalkEastToAttendantMovement:
    WalkFastEast 3
    WalkFastNorth 5
    WalkFastWest 2
    EndMovement
