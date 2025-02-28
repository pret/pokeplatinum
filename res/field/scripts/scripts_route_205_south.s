#include "macros/scrcmd.inc"
#include "res/text/bank/route_205_south.h"

    .data

    ScriptEntry _002A
    ScriptEntry _00F8
    ScriptEntry _010B
    ScriptEntry _002C
    ScriptEntry _011E
    ScriptEntry _015D
    ScriptEntry _0070
    ScriptEntry _0280
    ScriptEntry _0297
    ScriptEntry _02AE
    ScriptEntryEnd

_002A:
    End

_002C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ApplyMovement 13, _0060
    WaitMovement
    Message 2
    CloseMessage
    ApplyMovement 12, _0068
    WaitMovement
    Call _00B6
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0060:
    MoveAction_033
    EndMovement

    .balign 4, 0
_0068:
    MoveAction_033
    EndMovement

_0070:
    LockAll
    ApplyMovement 13, _00BC
    WaitMovement
    Message 2
    CloseMessage
    ApplyMovement 12, _00C4
    WaitMovement
    Message 3
    CloseMessage
    ApplyMovement 13, _00CC
    ApplyMovement LOCALID_PLAYER, _00EC
    WaitMovement
    ApplyMovement 12, _00E4
    WaitMovement
    Call _00B6
    ReleaseAll
    End

_00B6:
    SetFlag 127
    Return

    .balign 4, 0
_00BC:
    MoveAction_035
    EndMovement

    .balign 4, 0
_00C4:
    MoveAction_034
    EndMovement

    .balign 4, 0
_00CC:
    MoveAction_019
    MoveAction_037
    MoveAction_063 2
    MoveAction_014
    MoveAction_033
    EndMovement

    .balign 4, 0
_00E4:
    MoveAction_033
    EndMovement

    .balign 4, 0
_00EC:
    MoveAction_013
    MoveAction_036
    EndMovement

_00F8:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_010B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_011E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 145, _0142
    Call _014D
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0142:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_014D:
    SetFlag 0x1A1
    SetFlag 145
    SetVar 0x4089, 1
    Return

_015D:
    LockAll
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8005, 0x293, _01A8
    GoToIfEq 0x8005, 0x294, _01C2
    GoToIfEq 0x8005, 0x295, _01DC
    GoToIfEq 0x8005, 0x296, _01E2
    GoToIfEq 0x8005, 0x297, _01FC
    End

_01A8:
    ApplyMovement 18, _0238
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _0228
    WaitMovement
    GoTo _0216

_01C2:
    ApplyMovement 18, _024C
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _0228
    WaitMovement
    GoTo _0216

_01DC:
    GoTo _0216

_01E2:
    ApplyMovement 18, _025C
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _0230
    WaitMovement
    GoTo _0216

_01FC:
    ApplyMovement 18, _026C
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _0230
    WaitMovement
    GoTo _0216

_0216:
    Call _014D
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0228:
    MoveAction_033
    EndMovement

    .balign 4, 0
_0230:
    MoveAction_032
    EndMovement

    .balign 4, 0
_0238:
    MoveAction_032
    MoveAction_075
    MoveAction_063
    MoveAction_012
    EndMovement

    .balign 4, 0
_024C:
    MoveAction_032
    MoveAction_075
    MoveAction_063
    EndMovement

    .balign 4, 0
_025C:
    MoveAction_033
    MoveAction_075
    MoveAction_063
    EndMovement

    .balign 4, 0
_026C:
    MoveAction_033
    MoveAction_075
    MoveAction_063
    MoveAction_013
    EndMovement

_0280:
    DrawSignpostWithMessage 7, SIGNPOST_TYPE_ROUTE_MAP
    SetSignpostCommand SIGNPOST_CMD_SCROLL_IN
    WaitForSignpostDone
    GetSignpostInput
    CallCommonScript 0x7D0
    End

_0297:
    DrawSignpostWithMessage 8, SIGNPOST_TYPE_ROUTE_MAP
    SetSignpostCommand SIGNPOST_CMD_SCROLL_IN
    WaitForSignpostDone
    GetSignpostInput
    CallCommonScript 0x7D0
    End

_02AE:
    DrawSignpostTextBox
    SetSignpostCommand SIGNPOST_CMD_SCROLL_IN
    WaitForSignpostDone
    DrawSignpostMessage 9
    CallCommonScript 0x7D0
    End

    .byte 0
