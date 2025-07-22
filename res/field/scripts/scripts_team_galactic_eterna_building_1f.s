#include "macros/scrcmd.inc"
#include "generated/distribution_events.h"
#include "res/text/bank/team_galactic_eterna_building_1f.h"


    ScriptEntry _0020
    ScriptEntry _0033
    ScriptEntry _0046
    ScriptEntry _0057
    ScriptEntry _006A
    ScriptEntry _0134
    ScriptEntry _001E
    ScriptEntryEnd

_001E:
    End

_0020:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0033:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0046:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0057:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_006A:
    LockAll
    ApplyMovement 4, _00FC
    ApplyMovement LOCALID_PLAYER, _00F0
    WaitMovement
    Message 0
    CloseMessage
    ApplyMovement 4, _0110
    WaitMovement
    ClearFlag FLAG_UNK_0x01BB
    SetObjectEventPos 5, 12, 15
    SetObjectEventMovementType 5, MOVEMENT_TYPE_LOOK_LEFT
    SetObjectEventDir 5, DIR_WEST
    AddObject 5
    RemoveObject 4
    SetFlag FLAG_UNK_0x0071
    SetVar VAR_UNK_0x411D, 1
    WaitTime 30, VAR_RESULT
    Message 1
    ApplyMovement 5, _0110
    WaitMovement
    ClearFlag FLAG_UNK_0x01C2
    SetObjectEventPos 4, 12, 15
    SetObjectEventMovementType 4, MOVEMENT_TYPE_LOOK_LEFT
    SetObjectEventDir 4, DIR_WEST
    AddObject 4
    RemoveObject 5
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_00F0:
    Delay8 9
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_00FC:
    WalkOnSpotFastWest
    EmoteExclamationMark
    Delay8 2
    WalkNormalWest 2
    EndMovement

    .balign 4, 0
_0110:
    FaceSouth
    Delay2
    FaceEast
    Delay4
    FaceNorth
    Delay4
    FaceWest
    Delay2
    EndMovement

_0134:
    CheckItem ITEM_SECRET_KEY, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _01AA
    CheckDistributionEvent DISTRIBUTION_EVENT_ROTOM, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _01AA
    GoToIfUnset FLAG_UNK_0x0081, _01AA
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 0
    BufferItemName 1, 0x1D3
    Message 6
    CloseMessage
    PlayFanfare SEQ_SE_DP_W062
    FadeScreen 6, 1, 0, 0x7FFF
    WaitFadeScreen
    RemoveObject 6
    WaitFanfare SEQ_SE_DP_W062
    FadeScreen 6, 1, 1, 0x7FFF
    WaitFadeScreen
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01AA:
    End
