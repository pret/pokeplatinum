#include "macros/scrcmd.inc"
#include "res/field/events/events_battle_tower_corridor_multi.h"
#include "constants/map_object.h"


    ScriptEntry BattleTowerCorridorMulti_SetPlayerGraphics
    ScriptEntry _0068
    ScriptEntry BattleTowerCorridorMulti_EnterCorridorAndGoToBattleRoom
    ScriptEntryEnd

BattleTowerCorridorMulti_SetPlayerGraphics:
    GoToIfEq VAR_UNK_0x40DD, 0, BattleTowerCorridorMulti_DontSetPlayerGraphics
    GetCurNetID VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 1, BattleTowerCorridorMulti_SetPlayer2Graphics
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_PARTNER_PARAM, BT_PARAM_PLAYER_GRAPHICS_ID, VAR_MAP_LOCAL_0
    SetVar VAR_OBJ_GFX_ID_0, VAR_MAP_LOCAL_0
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_PARTNER_PARAM, BT_PARAM_PARTNER_GRAPHICS_ID, VAR_MAP_LOCAL_0
    SetVar VAR_OBJ_GFX_ID_1, VAR_MAP_LOCAL_0
BattleTowerCorridorMulti_DontSetPlayerGraphics:
    End

BattleTowerCorridorMulti_SetPlayer2Graphics:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_PARTNER_PARAM, BT_PARAM_PLAYER_GRAPHICS_ID, VAR_MAP_LOCAL_0
    SetVar VAR_OBJ_GFX_ID_1, VAR_MAP_LOCAL_0
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_PARTNER_PARAM, BT_PARAM_PARTNER_GRAPHICS_ID, VAR_MAP_LOCAL_0
    SetVar VAR_OBJ_GFX_ID_0, VAR_MAP_LOCAL_0
    End

_0068:
    CallIfNe VAR_UNK_0x40DD, 0, _007F
    HideObject BATTLE_TOWER_CORRIDOR_MULTI_LEADER
    HideObject BATTLE_TOWER_CORRIDOR_MULTI_PARTNER
    End

_007F:
    HideObject LOCALID_PLAYER
    MoveCamera 8, 0, 0
    Return

BattleTowerCorridorMulti_EnterCorridorAndGoToBattleRoom:
    LockAll
    Call BattleTowerCorridorMulti_PlayEnterCorridorAnimation
    Call BattleTowerCorridorMulti_ApplyWalkToBattleRoomMovement
    Call BattleTowerCorridorMulti_ApplyEnterBattleRoomMovement
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_TOWER_MULTI_BATTLE_ROOM, 0, 7, 5, 0
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

BattleTowerCorridorMulti_PlayEnterCorridorAnimation:
    LoadDoorAnimation 0, 0, 3, 2, ANIMATION_TAG_DOOR_1
    LoadDoorAnimation 0, 0, 14, 2, ANIMATION_TAG_DOOR_2
    PlayDoorOpenAnimation ANIMATION_TAG_DOOR_1
    PlayDoorOpenAnimation ANIMATION_TAG_DOOR_2
    WaitForAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_2
    ApplyMovement BATTLE_TOWER_CORRIDOR_MULTI_LEFT_ATTENDANT, BattleTowerCorridorMulti_AttendantEnterCorridorMovement
    ApplyMovement BATTLE_TOWER_CORRIDOR_MULTI_RIGHT_ATTENDANT, BattleTowerCorridorMulti_AttendantEnterCorridorMovement
    WaitMovement
    ShowObject BATTLE_TOWER_CORRIDOR_MULTI_LEADER
    ShowObject BATTLE_TOWER_CORRIDOR_MULTI_PARTNER
    ApplyMovement BATTLE_TOWER_CORRIDOR_MULTI_LEADER, BattleTowerCorridorMulti_PlayerEnterCorridorMovement
    ApplyMovement BATTLE_TOWER_CORRIDOR_MULTI_PARTNER, BattleTowerCorridorMulti_PlayerEnterCorridorMovement
    WaitMovement
    PlayDoorCloseAnimation ANIMATION_TAG_DOOR_1
    PlayDoorCloseAnimation ANIMATION_TAG_DOOR_2
    WaitForAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_2
    UnloadAnimation ANIMATION_TAG_DOOR_1
    UnloadAnimation ANIMATION_TAG_DOOR_2
    Return

BattleTowerCorridorMulti_ApplyWalkToBattleRoomMovement:
    ApplyMovement BATTLE_TOWER_CORRIDOR_MULTI_LEFT_ATTENDANT, BattleTowerCorridorMulti_LeftAttendantWalkToBattleRoomMovement
    ApplyMovement BATTLE_TOWER_CORRIDOR_MULTI_LEADER, BattleTowerCorridorMulti_LeaderWalkToBattleRoomMovement
    ApplyMovement BATTLE_TOWER_CORRIDOR_MULTI_RIGHT_ATTENDANT, BattleTowerCorridorMulti_RightAttendantWalkToBattleRoomMovement
    ApplyMovement BATTLE_TOWER_CORRIDOR_MULTI_PARTNER, BattleTowerCorridorMulti_FriendWalkToBattleRoomMovement
    WaitMovement
    Return

BattleTowerCorridorMulti_ApplyEnterBattleRoomMovement:
    ApplyMovement BATTLE_TOWER_CORRIDOR_MULTI_LEFT_ATTENDANT, BattleTowerCorridorMulti_AttendantEnterBattleRoomMovement
    ApplyMovement BATTLE_TOWER_CORRIDOR_MULTI_RIGHT_ATTENDANT, BattleTowerCorridorMulti_AttendantEnterBattleRoomMovement
    ApplyMovement BATTLE_TOWER_CORRIDOR_MULTI_LEADER, BattleTowerCorridorMulti_PlayerEnterBattleRoomMovement
    ApplyMovement BATTLE_TOWER_CORRIDOR_MULTI_PARTNER, BattleTowerCorridorMulti_PlayerEnterBattleRoomMovement
    WaitMovement
    Return

    .balign 4, 0
BattleTowerCorridorMulti_AttendantEnterCorridorMovement:
    WalkNormalSouth 3
    FaceNorth
    EndMovement

    .balign 4, 0
BattleTowerCorridorMulti_PlayerEnterCorridorMovement:
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
BattleTowerCorridorMulti_LeaderWalkToBattleRoomMovement:
    WalkNormalSouth
    WalkNormalEast 5
    EndMovement

    .balign 4, 0
BattleTowerCorridorMulti_FriendWalkToBattleRoomMovement:
    WalkNormalSouth
    WalkNormalWest 5
    EndMovement

    .balign 4, 0
BattleTowerCorridorMulti_PlayerEnterBattleRoomMovement:
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
BattleTowerCorridorMulti_LeftAttendantWalkToBattleRoomMovement:
    WalkNormalEast 5
    WalkNormalNorth
    Delay8
    FaceEast
    Delay4
    FaceNorth
    Delay4
    EndMovement

    .balign 4, 0
BattleTowerCorridorMulti_RightAttendantWalkToBattleRoomMovement:
    WalkNormalWest 5
    WalkNormalNorth
    Delay8
    FaceWest
    Delay4
    FaceNorth
    Delay4
    EndMovement

    .balign 4, 0
BattleTowerCorridorMulti_AttendantEnterBattleRoomMovement:
    WalkNormalNorth
    SetInvisible
    EndMovement
