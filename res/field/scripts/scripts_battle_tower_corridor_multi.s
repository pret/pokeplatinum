#include "macros/scrcmd.inc"
#include "res/field/events/events_battle_tower_corridor_multi.h"
#include "constants/map_object.h"


    ScriptEntry BattleTowerCorridorMulti_OnTransition
    ScriptEntry BattleTowerCorridorMulti_OnResume
    ScriptEntry BattleTowerCorridorMulti_OnFrameEnterBattleRoom
    ScriptEntryEnd

BattleTowerCorridorMulti_OnTransition:
    GoToIfEq VAR_BATTLE_TOWER_CORRIDOR_MULTI_LOAD_ACTION, 0, BattleTowerCorridorMulti_OnTransitionEnd
    GetCurNetID VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 1, BattleTowerCorridorMulti_SetPlayer2Graphics
    CallBattleTowerFunction BT_FUNC_GET_PARTNER_PARAM, BT_PARAM_PLAYER_GRAPHICS_ID, VAR_MAP_LOCAL_0
    SetVar VAR_OBJ_GFX_ID_0, VAR_MAP_LOCAL_0
    CallBattleTowerFunction BT_FUNC_GET_PARTNER_PARAM, BT_PARAM_PARTNER_GRAPHICS_ID, VAR_MAP_LOCAL_0
    SetVar VAR_OBJ_GFX_ID_1, VAR_MAP_LOCAL_0
BattleTowerCorridorMulti_OnTransitionEnd:
    End

BattleTowerCorridorMulti_SetPlayer2Graphics:
    CallBattleTowerFunction BT_FUNC_GET_PARTNER_PARAM, BT_PARAM_PLAYER_GRAPHICS_ID, VAR_MAP_LOCAL_0
    SetVar VAR_OBJ_GFX_ID_1, VAR_MAP_LOCAL_0
    CallBattleTowerFunction BT_FUNC_GET_PARTNER_PARAM, BT_PARAM_PARTNER_GRAPHICS_ID, VAR_MAP_LOCAL_0
    SetVar VAR_OBJ_GFX_ID_0, VAR_MAP_LOCAL_0
    End

BattleTowerCorridorMulti_OnResume:
    CallIfNe VAR_BATTLE_TOWER_CORRIDOR_MULTI_LOAD_ACTION, 0, BattleTowerCorridorMulti_HidePlayerMoveCamera
    HideObject LOCALID_LEADER
    HideObject LOCALID_PARTNER
    End

BattleTowerCorridorMulti_HidePlayerMoveCamera:
    HideObject LOCALID_PLAYER
    MoveCamera 8, 0, 0
    Return

BattleTowerCorridorMulti_OnFrameEnterBattleRoom:
    LockAll
    Call BattleTowerCorridorMulti_EnterCorridor
    Call BattleTowerCorridorMulti_WalkToBattleRoom
    Call BattleTowerCorridorMulti_EnterBattleRoom
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_TOWER_MULTI_BATTLE_ROOM, 0, 7, 5, DIR_NORTH
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

BattleTowerCorridorMulti_EnterCorridor:
    LoadDoorAnimation 0, 0, 3, 2, ANIMATION_TAG_DOOR_1
    LoadDoorAnimation 0, 0, 14, 2, ANIMATION_TAG_DOOR_2
    PlayDoorOpenAnimation ANIMATION_TAG_DOOR_1
    PlayDoorOpenAnimation ANIMATION_TAG_DOOR_2
    WaitForAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_2
    ApplyMovement LOCALID_ATTENDANT_LEFT, BattleTowerCorridorMulti_Movement_AttendantEnterCorridor
    ApplyMovement LOCALID_ATTENDANT_RIGHT, BattleTowerCorridorMulti_Movement_AttendantEnterCorridor
    WaitMovement
    ShowObject LOCALID_LEADER
    ShowObject LOCALID_PARTNER
    ApplyMovement LOCALID_LEADER, BattleTowerCorridorMulti_Movement_PlayerEnterCorridor
    ApplyMovement LOCALID_PARTNER, BattleTowerCorridorMulti_Movement_PlayerEnterCorridor
    WaitMovement
    PlayDoorCloseAnimation ANIMATION_TAG_DOOR_1
    PlayDoorCloseAnimation ANIMATION_TAG_DOOR_2
    WaitForAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_2
    UnloadAnimation ANIMATION_TAG_DOOR_1
    UnloadAnimation ANIMATION_TAG_DOOR_2
    Return

BattleTowerCorridorMulti_WalkToBattleRoom:
    ApplyMovement LOCALID_ATTENDANT_LEFT, BattleTowerCorridorMulti_Movement_AttendantLeftWalkToBattleRoom
    ApplyMovement LOCALID_LEADER, BattleTowerCorridorMulti_Movement_LeaderWalkToBattleRoom
    ApplyMovement LOCALID_ATTENDANT_RIGHT, BattleTowerCorridorMulti_Movement_AttendantRightWalkToBattleRoom
    ApplyMovement LOCALID_PARTNER, BattleTowerCorridorMulti_Movement_PartnerWalkToBattleRoom
    WaitMovement
    Return

BattleTowerCorridorMulti_EnterBattleRoom:
    ApplyMovement LOCALID_ATTENDANT_LEFT, BattleTowerCorridorMulti_Movement_AttendantEnterBattleRoom
    ApplyMovement LOCALID_ATTENDANT_RIGHT, BattleTowerCorridorMulti_Movement_AttendantEnterBattleRoom
    ApplyMovement LOCALID_LEADER, BattleTowerCorridorMulti_Movement_PlayerEnterBattleRoom
    ApplyMovement LOCALID_PARTNER, BattleTowerCorridorMulti_Movement_PlayerEnterBattleRoom
    WaitMovement
    Return

    .balign 4, 0
BattleTowerCorridorMulti_Movement_AttendantEnterCorridor:
    WalkNormalSouth 3
    FaceNorth
    EndMovement

    .balign 4, 0
BattleTowerCorridorMulti_Movement_PlayerEnterCorridor:
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
BattleTowerCorridorMulti_Movement_LeaderWalkToBattleRoom:
    WalkNormalSouth
    WalkNormalEast 5
    EndMovement

    .balign 4, 0
BattleTowerCorridorMulti_Movement_PartnerWalkToBattleRoom:
    WalkNormalSouth
    WalkNormalWest 5
    EndMovement

    .balign 4, 0
BattleTowerCorridorMulti_Movement_PlayerEnterBattleRoom:
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
BattleTowerCorridorMulti_Movement_AttendantLeftWalkToBattleRoom:
    WalkNormalEast 5
    WalkNormalNorth
    Delay8
    FaceEast
    Delay4
    FaceNorth
    Delay4
    EndMovement

    .balign 4, 0
BattleTowerCorridorMulti_Movement_AttendantRightWalkToBattleRoom:
    WalkNormalWest 5
    WalkNormalNorth
    Delay8
    FaceWest
    Delay4
    FaceNorth
    Delay4
    EndMovement

    .balign 4, 0
BattleTowerCorridorMulti_Movement_AttendantEnterBattleRoom:
    WalkNormalNorth
    SetInvisible
    EndMovement
