#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 152, _0113
    Call _0119
    GoToIfEq 0x800C, 1, _0106
    GoToIfSet 153, _00B3
    GoToIfSet 0x119, _008B
    BufferPlayerName 0
    Message 0
    CloseMessage
    ApplyMovement 0, _0158
    WaitMovement
    Message 1
    SetVar 0x8004, 252
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0091
    CallCommonScript 0x7FC
    SetFlag 0x119
    Message 2
    GoTo _009B
    End

_008B:
    CallCommonScript 0x26E0
    End

_0091:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_009B:
    ScrCmd_21C 3
    ScrCmd_21C 4
    ScrCmd_21C 5
    SetFlag 153
    Message 3
    GoTo _0150
    End

_00B3:
    CallIfEq 0x405E, 3, _00E5
    CallIfEq 0x405F, 3, _00F0
    CallIfEq 0x4060, 3, _00FB
    Message 4
    GoTo _0150
    End

_00E5:
    SetVar 0x405E, 0
    ScrCmd_21C 3
    Return

_00F0:
    SetVar 0x405F, 0
    ScrCmd_21C 4
    Return

_00FB:
    SetVar 0x4060, 0
    ScrCmd_21C 5
    Return

_0106:
    Message 5
    SetFlag 152
    CallCommonScript 0x26E1
    End

_0113:
    CallCommonScript 0x26E0
    End

_0119:
    GoToIfNe 0x405E, 1, _0148
    GoToIfNe 0x405F, 1, _0148
    GoToIfNe 0x4060, 1, _0148
    SetVar 0x800C, 1
    Return

_0148:
    SetVar 0x800C, 0
    Return

_0150:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0158:
    MoveAction_04B
    EndMovement
