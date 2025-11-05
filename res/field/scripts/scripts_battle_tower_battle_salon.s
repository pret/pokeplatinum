#include "macros/scrcmd.inc"
#include "res/text/bank/battle_tower_battle_salon.h"
#include "constants/map_object.h"

#define LOCALID_GUIDE  0
#define LOCALID_CHERYL 1
#define LOCALID_MIRA   2
#define LOCALID_RILEY  3
#define LOCALID_MARLEY 4
#define LOCALID_BUCK   5


    ScriptEntry BattleTowerBattleSalon_Guide
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
    GoToIfEq VAR_UNK_0x40DF, 2, BattleTowerBattleSalon_SetGuidePositionAtDoor
    End

BattleTowerBattleSalon_HidePlayer:
    HideObject LOCALID_PLAYER
    Return

BattleTowerBattleSalon_SetGuidePositionAtDoor:
    SetPosition LOCALID_GUIDE, 8, 0, 3, 1
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

BattleTowerBattleSalon_Guide:
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
    LockObject LOCALID_CHERYL
    GoTo BattleTowerBattleSalon_CherylWalkToGuide
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
    LockObject LOCALID_MIRA
    GoTo BattleTowerBattleSalon_MiraWalkToGuide
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
    LockObject LOCALID_RILEY
    GoTo BattleTowerBattleSalon_RileyWalkToGuide
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
    LockObject LOCALID_MARLEY
    GoTo BattleTowerBattleSalon_MarleyWalkToGuide
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
    LockObject LOCALID_BUCK
    GoTo BattleTowerBattleSalon_BuckWalkToGuide
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
    ApplyMovement LOCALID_GUIDE, BattleTowerBattleSalon_GuideEnterBattleSalonMovement
    WaitMovement
    ShowObject LOCALID_PLAYER
    ApplyMovement LOCALID_PLAYER, BattleTowerBattleSalon_PlayerEnterBattleSalonMovement
    WaitMovement
    Call BattleTowerBattleSalon_PlayCloseDoorAnimation
    ApplyMovement LOCALID_GUIDE, BattleTowerBattleSalon_GuideBlockDoorMovement
    WaitMovement
    ApplyMovement LOCALID_PLAYER, BattleTowerBattleSalon_PlayerFaceNorthMovement
    WaitMovement
    Return

BattleTowerBattleSalon_PlayEnterBattleRoomAnimation:
    Call BattleTowerBattleSalon_PlayOpenDoorAnimation
    ApplyMovement LOCALID_GUIDE, BattleTowerBattleSalon_GuideEnterBattleRoomMovement
    ApplyMovement LOCALID_PLAYER, BattleTowerBattleSalon_PlayerEnterBattleRoomMovement
    WaitMovement
    Call BattleTowerBattleSalon_PlayCloseDoorAnimation
    Return

BattleTowerBattleSalon_PartnerEnterBattleRoom:
    ApplyMovement VAR_MAP_LOCAL_0, BattleTowerBattleSalon_PartnerFaceNorthMovement
    WaitMovement
    ApplyMovement LOCALID_GUIDE, BattleTowerBattleSalon_GuideMoveAwayMovement
    WaitMovement
    Call BattleTowerBattleSalon_PlayOpenDoorAnimation
    ApplyMovement VAR_MAP_LOCAL_0, BattleTowerBattleSalon_PartnerEnterBattleRoomMovement
    WaitMovement
    Call BattleTowerBattleSalon_PlayCloseDoorAnimation
    ApplyMovement LOCALID_GUIDE, BattleTowerBattleSalon_GuideMoveBackMovement
    WaitMovement
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_TOWER_BATTLE_SALON, 0, 8, 4, 0
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

BattleTowerBattleSalon_CherylWalkToGuide:
    SetVar VAR_MAP_LOCAL_0, LOCALID_CHERYL
    GetPlayerMapPos VAR_0x8000, VAR_0x8001
    GoToIfEq VAR_0x8000, 12, BattleTowerBattleSalon_CherylWalkWestToGuide
    GoTo BattleTowerBattleSalon_CherylWalkSouthToGuide
    End

BattleTowerBattleSalon_CherylWalkWestToGuide:
    ApplyMovement LOCALID_CHERYL, BattleTowerBattleSalon_CherylWalkSouthToGuideMovement
    WaitMovement
    GoTo BattleTowerBattleSalon_PartnerEnterBattleRoom
    End

BattleTowerBattleSalon_CherylWalkSouthToGuide:
    ApplyMovement LOCALID_CHERYL, BattleTowerBattleSalon_CherylWalkWestToGuideMovement
    WaitMovement
    GoTo BattleTowerBattleSalon_PartnerEnterBattleRoom
    End

BattleTowerBattleSalon_MiraWalkToGuide:
    SetVar VAR_MAP_LOCAL_0, LOCALID_MIRA
    GetPlayerMapPos VAR_0x8000, VAR_0x8001
    GoToIfEq VAR_0x8000, 4, BattleTowerBattleSalon_MiraWalkEastToGuide
    GoTo BattleTowerBattleSalon_MiraWalkNorthToGuide
    End

BattleTowerBattleSalon_MiraWalkEastToGuide:
    ApplyMovement LOCALID_MIRA, BattleTowerBattleSalon_MiraWalkEastToGuideMovement
    WaitMovement
    GoTo BattleTowerBattleSalon_PartnerEnterBattleRoom
    End

BattleTowerBattleSalon_MiraWalkNorthToGuide:
    ApplyMovement LOCALID_MIRA, BattleTowerBattleSalon_MiraWalkNorthToGuideMovement
    WaitMovement
    GoTo BattleTowerBattleSalon_PartnerEnterBattleRoom
    End

BattleTowerBattleSalon_RileyWalkToGuide:
    SetVar VAR_MAP_LOCAL_0, LOCALID_RILEY
    GetPlayerMapPos VAR_0x8000, VAR_0x8001
    GoToIfEq VAR_0x8001, 7, BattleTowerBattleSalon_RileyWalkWestToGuide
    GoTo BattleTowerBattleSalon_RileyWalkNorthToGuide
    End

BattleTowerBattleSalon_RileyWalkWestToGuide:
    ApplyMovement LOCALID_RILEY, BattleTowerBattleSalon_RileyWalkWestToGuideMovement
    WaitMovement
    GoTo BattleTowerBattleSalon_PartnerEnterBattleRoom
    End

BattleTowerBattleSalon_RileyWalkNorthToGuide:
    ApplyMovement LOCALID_RILEY, BattleTowerBattleSalon_RileyWalkNorthToGuideMovement
    WaitMovement
    GoTo BattleTowerBattleSalon_PartnerEnterBattleRoom
    End

BattleTowerBattleSalon_MarleyWalkToGuide:
    SetVar VAR_MAP_LOCAL_0, LOCALID_MARLEY
    GetPlayerMapPos VAR_0x8000, VAR_0x8001
    GoToIfEq VAR_0x8001, 9, BattleTowerBattleSalon_MarleyWalkSouthToGuide
    GoTo BattleTowerBattleSalon_MarleyWalkNorthToGuide
    End

BattleTowerBattleSalon_MarleyWalkSouthToGuide:
    ApplyMovement LOCALID_MARLEY, BattleTowerBattleSalon_MarleyWalkSouthToGuideMovement
    WaitMovement
    GoTo BattleTowerBattleSalon_PartnerEnterBattleRoom
    End

BattleTowerBattleSalon_MarleyWalkNorthToGuide:
    ApplyMovement LOCALID_MARLEY, BattleTowerBattleSalon_MarleyWalkNorthToGuideMovement
    WaitMovement
    GoTo BattleTowerBattleSalon_PartnerEnterBattleRoom
    End

BattleTowerBattleSalon_BuckWalkToGuide:
    SetVar VAR_MAP_LOCAL_0, LOCALID_BUCK
    GetPlayerMapPos VAR_0x8000, VAR_0x8001
    GoToIfEq VAR_0x8000, 8, BattleTowerBattleSalon_BuckWalkWestToGuide
    GoTo BattleTowerBattleSalon_BuckWalkEastToGuide
    End

BattleTowerBattleSalon_BuckWalkWestToGuide:
    ApplyMovement LOCALID_BUCK, BattleTowerBattleSalon_BuckWalkWestToGuideMovement
    WaitMovement
    GoTo BattleTowerBattleSalon_PartnerEnterBattleRoom
    End

BattleTowerBattleSalon_BuckWalkEastToGuide:
    ApplyMovement LOCALID_BUCK, BattleTowerBattleSalon_BuckWalkEastToGuideMovement
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
BattleTowerBattleSalon_GuideEnterBattleSalonMovement:
    WalkNormalSouth 2
    WalkNormalWest
    FaceEast
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_GuideBlockDoorMovement:
    WalkNormalEast
    FaceSouth
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_GuideMoveAwayMovement:
    FaceSouth
    WalkFastWest
    FaceEast
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_GuideMoveBackMovement:
    WalkFastEast
    FaceSouth
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_PlayerEnterBattleRoomMovement:
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_GuideEnterBattleRoomMovement:
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
BattleTowerBattleSalon_CherylWalkSouthToGuideMovement:
    WalkFastSouth
    WalkFastWest 3
    WalkFastNorth 7
    WalkFastWest 2
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_CherylWalkWestToGuideMovement:
    WalkFastWest
    WalkFastNorth
    WalkFastWest 2
    WalkFastNorth 5
    WalkFastWest 2
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_MiraWalkEastToGuideMovement:
    WalkFastEast
    WalkFastNorth 2
    WalkFastEast 3
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_MiraWalkNorthToGuideMovement:
    WalkFastNorth 2
    WalkFastEast 4
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_RileyWalkWestToGuideMovement:
    WalkFastWest
    WalkFastNorth 4
    WalkFastWest 2
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_RileyWalkNorthToGuideMovement:
    WalkFastNorth 4
    WalkFastWest 3
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_MarleyWalkSouthToGuideMovement:
    WalkFastSouth
    WalkFastEast 4
    WalkFastNorth 7
    WalkFastEast 2
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_MarleyWalkNorthToGuideMovement:
    WalkFastNorth
    WalkFastEast 4
    WalkFastNorth 5
    WalkFastEast 2
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_BuckWalkWestToGuideMovement:
    WalkFastWest
    WalkFastNorth 5
    WalkFastEast 2
    EndMovement

    .balign 4, 0
BattleTowerBattleSalon_BuckWalkEastToGuideMovement:
    WalkFastEast 3
    WalkFastNorth 5
    WalkFastWest 2
    EndMovement
