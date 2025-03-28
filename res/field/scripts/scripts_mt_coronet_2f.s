#include "macros/scrcmd.inc"
#include "res/text/bank/mt_coronet_2f.h"

    .data

    ScriptEntry _0012
    ScriptEntry _0036
    ScriptEntry _01A0
    ScriptEntry _0023
    ScriptEntryEnd

_0012:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0023:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0036:
    LockAll
    GetPlayerMapPos 0x8004, 0x8005
    SetVar 0x40A9, 2
    SetObjectEventPos 5, 20, 25
    ScrCmd_188 5, 16
    ScrCmd_189 5, 2
    ClearFlag FLAG_UNK_0x029F,
    AddObject 5
    ApplyMovement 5, _0148
    WaitMovement
    CallCommonScript 0x807
    CallIfEq 0x8005, 24, _0109
    CallIfEq 0x8005, 25, _011D
    CallIfEq 0x8005, 26, _0131
    Message 0
    ApplyMovement 5, _0184
    WaitMovement
    Message 1
    ApplyMovement 5, _018C
    WaitMovement
    Message 2
    SetVar 0x8004, 68
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _00F2
    CallCommonScript 0x7FC
    Call _00E5
    CallCommonScript 0x808
    ReleaseAll
    End

_00E5:
    SetFlag FLAG_UNK_0x0160
    Message 3
    WaitABXPadPress
    CloseMessage
    Return

_00F2:
    Call _0100
    CallCommonScript 0x808
    ReleaseAll
    End

_0100:
    Message 4
    WaitABXPadPress
    CloseMessage
    Return

_0109:
    ApplyMovement 5, _015C
    ApplyMovement LOCALID_PLAYER, _0194
    WaitMovement
    Return

_011D:
    ApplyMovement 5, _016C
    ApplyMovement LOCALID_PLAYER, _0194
    WaitMovement
    Return

_0131:
    ApplyMovement 5, _0174
    ApplyMovement LOCALID_PLAYER, _0194
    WaitMovement
    Return

    .balign 4, 0
_0148:
    MoveAction_018 4
    MoveAction_063
    MoveAction_075
    MoveAction_063
    EndMovement

    .balign 4, 0
_015C:
    MoveAction_018 4
    MoveAction_016
    MoveAction_038
    EndMovement

    .balign 4, 0
_016C:
    MoveAction_018 4
    EndMovement

    .balign 4, 0
_0174:
    MoveAction_018 4
    MoveAction_017
    MoveAction_038
    EndMovement

    .balign 4, 0
_0184:
    MoveAction_033
    EndMovement

    .balign 4, 0
_018C:
    MoveAction_034
    EndMovement

    .balign 4, 0
_0194:
    MoveAction_063 4
    MoveAction_035
    EndMovement

_01A0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfUnset FLAG_UNK_0x0160, _01BE
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01BE:
    Message 5
    SetVar 0x8004, 68
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _01F0
    CallCommonScript 0x7FC
    Call _00E5
    ReleaseAll
    End

_01F0:
    Call _0100
    ReleaseAll
    End

    .byte 0
    .byte 0
