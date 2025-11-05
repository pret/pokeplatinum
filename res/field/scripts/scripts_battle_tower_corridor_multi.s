#include "macros/scrcmd.inc"
#include "constants/map_object.h"

#define LOCALID_LEFT_GUIDE    0
#define LOCALID_RIGHT_GUIDE   1
#define LOCALID_PLAYER_LEADER 2
#define LOCALID_PLAYER_FRIEND 3

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
    HideObject 2
    HideObject 3
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
    ApplyMovement LOCALID_LEFT_GUIDE, BattleTowerCorridorMulti_GuideEnterCorridorMovement
    ApplyMovement LOCALID_RIGHT_GUIDE, BattleTowerCorridorMulti_GuideEnterCorridorMovement
    WaitMovement
    ShowObject LOCALID_PLAYER_LEADER
    ShowObject LOCALID_PLAYER_FRIEND
    ApplyMovement LOCALID_PLAYER_LEADER, BattleTowerCorridorMulti_PlayerEnterCorridorMovement
    ApplyMovement LOCALID_PLAYER_FRIEND, BattleTowerCorridorMulti_PlayerEnterCorridorMovement
    WaitMovement
    PlayDoorCloseAnimation ANIMATION_TAG_DOOR_1
    PlayDoorCloseAnimation ANIMATION_TAG_DOOR_2
    WaitForAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_2
    UnloadAnimation ANIMATION_TAG_DOOR_1
    UnloadAnimation ANIMATION_TAG_DOOR_2
    Return

BattleTowerCorridorMulti_ApplyWalkToBattleRoomMovement:
    ApplyMovement LOCALID_LEFT_GUIDE, BattleTowerCorridorMulti_LeftGuideWalkToBattleRoomMovement
    ApplyMovement LOCALID_PLAYER_LEADER, BattleTowerCorridorMulti_PlayerLeaderWalkToBattleRoomMovement
    ApplyMovement LOCALID_RIGHT_GUIDE, BattleTowerCorridorMulti_RightGuideWalkToBattleRoomMovement
    ApplyMovement LOCALID_PLAYER_FRIEND, BattleTowerCorridorMulti_PlayerFriendWalkToBattleRoomMovement
    WaitMovement
    Return

BattleTowerCorridorMulti_ApplyEnterBattleRoomMovement:
    ApplyMovement LOCALID_LEFT_GUIDE, BattleTowerCorridorMulti_GuideEnterBattleRoomMovement
    ApplyMovement LOCALID_RIGHT_GUIDE, BattleTowerCorridorMulti_GuideEnterBattleRoomMovement
    ApplyMovement LOCALID_PLAYER_LEADER, BattleTowerCorridorMulti_PlayerEnterBattleRoomMovement
    ApplyMovement LOCALID_PLAYER_FRIEND, BattleTowerCorridorMulti_PlayerEnterBattleRoomMovement
    WaitMovement
    Return

    .balign 4, 0
BattleTowerCorridorMulti_GuideEnterCorridorMovement:
    WalkNormalSouth 3
    FaceNorth
    EndMovement

    .balign 4, 0
BattleTowerCorridorMulti_PlayerEnterCorridorMovement:
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
BattleTowerCorridorMulti_PlayerLeaderWalkToBattleRoomMovement:
    WalkNormalSouth
    WalkNormalEast 5
    EndMovement

    .balign 4, 0
BattleTowerCorridorMulti_PlayerFriendWalkToBattleRoomMovement:
    WalkNormalSouth
    WalkNormalWest 5
    EndMovement

    .balign 4, 0
BattleTowerCorridorMulti_PlayerEnterBattleRoomMovement:
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
BattleTowerCorridorMulti_LeftGuideWalkToBattleRoomMovement:
    WalkNormalEast 5
    WalkNormalNorth
    Delay8
    FaceEast
    Delay4
    FaceNorth
    Delay4
    EndMovement

    .balign 4, 0
BattleTowerCorridorMulti_RightGuideWalkToBattleRoomMovement:
    WalkNormalWest 5
    WalkNormalNorth
    Delay8
    FaceWest
    Delay4
    FaceNorth
    Delay4
    EndMovement

    .balign 4, 0
BattleTowerCorridorMulti_GuideEnterBattleRoomMovement:
    WalkNormalNorth
    SetInvisible
    EndMovement
