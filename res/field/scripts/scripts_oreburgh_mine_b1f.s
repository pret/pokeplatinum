#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_mine_b1f.h"

    .data

    ScriptEntry _0012
    ScriptEntry _002F
    ScriptEntry _0042
    ScriptEntry _0055
    ScriptEntryEnd

_0012:
    SetFlag FLAG_UNK_0x09C2
    SetFlag FLAG_UNK_0x02C8
    CallIfEq 0x4056, 1, _0029
    End

_0029:
    ClearFlag FLAG_UNK_0x02C8
    Return

_002F:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0042:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0055:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00A5, _012B
    Message 2
    GoTo _0073
    End

_0073:
    SetVar 0x8004, 0x12A
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0114
    CallCommonScript 0x7FC
    Message 5
    CloseMessage
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8005, 3, _00CC
    GoToIfEq 0x8005, 4, _00DE
    GoToIfEq 0x8005, 5, _00F0
    End

_00CC:
    ApplyMovement 3, _0138
    WaitMovement
    GoTo _0102
    End

_00DE:
    ApplyMovement 3, _0144
    WaitMovement
    GoTo _0102
    End

_00F0:
    ApplyMovement 3, _0144
    WaitMovement
    GoTo _0102
    End

_0102:
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject 3
    SetVar 0x4056, 2
    ReleaseAll
    End

_0114:
    SetFlag FLAG_UNK_0x00A5
    Message 3
    GoTo _0123
    End

_0123:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_012B:
    Message 4
    GoTo _0073

    .byte 2
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0138:
    MoveAction_014
    MoveAction_012 3
    EndMovement

    .balign 4, 0
_0144:
    MoveAction_012 3
    EndMovement
