#include "macros/scrcmd.inc"
#include "res/field/events/events_battle_tower_corridor.h"
#include "constants/map_object.h"


    ScriptEntry BattleTowerCorridorMulti_OnTransition
    ScriptEntry BattleTowerCorridorMulti_OnResume
    ScriptEntry BattleTowerCorridorMulti_OnFrameEnterBattleRoom
    ScriptEntryEnd

BattleTowerCorridorMulti_OnTransition:
    End

BattleTowerCorridorMulti_OnResume:
    CallIfNe VAR_BATTLE_TOWER_CORRIDOR_LOAD_ACTION, 0, BattleTowerCorridorMulti_HidePlayer
    End

BattleTowerCorridorMulti_HidePlayer:
    HideObject LOCALID_PLAYER
    Return

BattleTowerCorridorMulti_OnFrameEnterBattleRoom:
    LockAll
    Call BattleTowerCorridorMulti_EnterCorridor
    GetRandom VAR_RESULT, 4
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 1, BattleTowerCorridor_EnterBattleRoom2
    GoToIfEq VAR_0x8008, 2, BattleTowerCorridor_EnterBattleRoom3
    GoToIfEq VAR_0x8008, 3, BattleTowerCorridor_EnterBattleRoom4
    GoTo BattleTowerCorridor_EnterBattleRoom1

BattleTowerCorridor_WarpToBattleRoom:
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_TOWER_BATTLE_ROOM, 0, 7, 6, DIR_NORTH
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

BattleTowerCorridorMulti_EnterCorridor:
    LoadDoorAnimation 0, 0, 2, 2, ANIMATION_TAG_DOOR_1
    PlayDoorOpenAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    ApplyMovement LOCALID_ATTENDANT, BattleTowerCorridor_Movement_AttendantEnterCorridor
    WaitMovement
    ShowObject LOCALID_PLAYER
    ApplyMovement LOCALID_PLAYER, BattleTowerCorridor_Movement_PlayerEnterCorridor
    WaitMovement
    PlayDoorCloseAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    UnloadAnimation ANIMATION_TAG_DOOR_1
    Return

BattleTowerCorridor_Unused:
    ApplyMovement LOCALID_ATTENDANT, BattleTowerCorridor_Movement_Unused
    ApplyMovement LOCALID_PLAYER, BattleTowerCorridor_Movement_Unused2
    WaitMovement
    Return

BattleTowerCorridor_EnterBattleRoom1:
    ApplyMovement LOCALID_ATTENDANT, BattleTowerCorridor_Movement_AttendantWalkToBattleRoom1
    ApplyMovement LOCALID_PLAYER, BattleTowerCorridor_Movement_PlayerWalkToBattleRoom1
    WaitMovement
    GoTo BattleTowerCorridor_WarpToBattleRoom
    End

BattleTowerCorridor_EnterBattleRoom2:
    ApplyMovement LOCALID_ATTENDANT, BattleTowerCorridor_Movement_AttendantWalkToBattleRoom2
    ApplyMovement LOCALID_PLAYER, BattleTowerCorridor_Movement_PlayerWalkToBattleRoom2
    WaitMovement
    GoTo BattleTowerCorridor_WarpToBattleRoom
    End

BattleTowerCorridor_EnterBattleRoom3:
    ApplyMovement LOCALID_ATTENDANT, BattleTowerCorridor_Movement_AttendantWalkToBattleRoom3
    ApplyMovement LOCALID_PLAYER, BattleTowerCorridor_Movement_PlayerWalkToBattleRoom3
    WaitMovement
    GoTo BattleTowerCorridor_WarpToBattleRoom
    End

BattleTowerCorridor_EnterBattleRoom4:
    ApplyMovement LOCALID_ATTENDANT, BattleTowerCorridor_Movement_AttendantWalkToBattleRoom4
    ApplyMovement LOCALID_PLAYER, BattleTowerCorridor_Movement_PlayerWalkToBattleRoom4
    WaitMovement
    GoTo BattleTowerCorridor_WarpToBattleRoom
    End

    .balign 4, 0
BattleTowerCorridor_Movement_AttendantEnterCorridor:
    WalkNormalSouth 3
    FaceNorth
    EndMovement

    .balign 4, 0
BattleTowerCorridor_Movement_PlayerEnterCorridor:
    WalkNormalSouth 2
    EndMovement

BattleTowerCorridor_Movement_Unused:
    FaceNorth
    WalkNormalNorth 2
    SetInvisible
    EndMovement

BattleTowerCorridor_Movement_Unused2:
    WalkNormalEast
    FaceNorth
    WalkFasterNorth
    SetInvisible
    EndMovement

    .balign 4, 0
BattleTowerCorridor_Movement_AttendantWalkToBattleRoom1:
    WalkNormalEast 4
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
BattleTowerCorridor_Movement_PlayerWalkToBattleRoom1:
    WalkNormalSouth
    WalkNormalEast 4
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
BattleTowerCorridor_Movement_AttendantWalkToBattleRoom2:
    WalkNormalEast 8
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
BattleTowerCorridor_Movement_PlayerWalkToBattleRoom2:
    WalkNormalSouth
    WalkNormalEast 8
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
BattleTowerCorridor_Movement_AttendantWalkToBattleRoom3:
    WalkNormalEast 12
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
BattleTowerCorridor_Movement_PlayerWalkToBattleRoom3:
    WalkNormalSouth
    WalkNormalEast 12
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
BattleTowerCorridor_Movement_AttendantWalkToBattleRoom4:
    WalkNormalEast 16
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
BattleTowerCorridor_Movement_PlayerWalkToBattleRoom4:
    WalkNormalSouth
    WalkNormalEast 16
    WalkNormalNorth 2
    SetInvisible
    EndMovement
