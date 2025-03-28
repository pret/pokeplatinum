#include "macros/scrcmd.inc"
#include "generated/distribution_events.h"
#include "res/text/bank/team_galactic_eterna_building_1f.h"

    .data

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
    ScrCmd_188 5, 16
    ScrCmd_189 5, 2
    AddObject 5
    RemoveObject 4
    SetFlag FLAG_UNK_0x0071
    SetVar 0x411D, 1
    WaitTime 30, 0x800C
    Message 1
    ApplyMovement 5, _0110
    WaitMovement
    ClearFlag FLAG_UNK_0x01C2
    SetObjectEventPos 4, 12, 15
    ScrCmd_188 4, 16
    ScrCmd_189 4, 2
    AddObject 4
    RemoveObject 5
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_00F0:
    MoveAction_063 9
    MoveAction_035
    EndMovement

    .balign 4, 0
_00FC:
    MoveAction_038
    MoveAction_075
    MoveAction_063 2
    MoveAction_014 2
    EndMovement

    .balign 4, 0
_0110:
    MoveAction_001
    MoveAction_061
    MoveAction_003
    MoveAction_062
    MoveAction_000
    MoveAction_062
    MoveAction_002
    MoveAction_061
    EndMovement

_0134:
    CheckItem ITEM_SECRET_KEY, 1, 0x800C
    GoToIfEq 0x800C, FALSE, _01AA
    CheckDistributionEvent DISTRIBUTION_EVENT_ROTOM, 0x800C
    GoToIfEq 0x800C, FALSE, _01AA
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
