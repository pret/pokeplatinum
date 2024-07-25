#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _001D
    .short 0xFD13

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_001D:
    LockAll
    ApplyMovement 1, _0264
    WaitMovement
    CallCommonScript 0x7FA
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8005, 5, _014E
    CallIfEq 0x8005, 6, _015A
    CallIfEq 0x8005, 7, _0166
    CallIfEq 0x8005, 8, _0172
    CallIfEq 0x8005, 9, _017E
    BufferRivalName 0
    BufferPlayerName 1
    Message 1
    CloseMessage
    ScrCmd_0DE 0x800C
    GoToIfEq 0x800C, 0x183, _00B3
    GoToIfEq 0x800C, 0x186, _00C1
    GoTo _00A5
    End

_00A5:
    ScrCmd_0E5 0x1D6, 0
    GoTo _00CF
    End

_00B3:
    ScrCmd_0E5 0x1D7, 0
    GoTo _00CF
    End

_00C1:
    ScrCmd_0E5 0x1D8, 0
    GoTo _00CF
    End

_00CF:
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _0148
    BufferRivalName 0
    BufferPlayerName 1
    Message 2
    CloseMessage
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8005, 5, _018A
    CallIfEq 0x8005, 6, _0196
    CallIfEq 0x8005, 7, _01A2
    CallIfEq 0x8005, 8, _01AE
    CallIfEq 0x8005, 9, _01BA
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ScrCmd_065 1
    WaitFanfare SEQ_SE_DP_KAIDAN2
    SetVar 0x407B, 2
    ReleaseAll
    End

_0148:
    ScrCmd_0EB
    ReleaseAll
    End

_014E:
    ApplyMovement 1, _01D4
    WaitMovement
    Return

_015A:
    ApplyMovement 1, _01E4
    WaitMovement
    Return

_0166:
    ApplyMovement 1, _01F4
    WaitMovement
    Return

_0172:
    ApplyMovement 1, _01FC
    WaitMovement
    Return

_017E:
    ApplyMovement 1, _020C
    WaitMovement
    Return

_018A:
    ApplyMovement 1, _021C
    WaitMovement
    Return

_0196:
    ApplyMovement 1, _022C
    WaitMovement
    Return

_01A2:
    ApplyMovement 1, _023C
    WaitMovement
    Return

_01AE:
    ApplyMovement 1, _0244
    WaitMovement
    Return

_01BA:
    ApplyMovement 1, _0254
    WaitMovement
    Return

    .byte 0
    .byte 0
    .byte 18
    .byte 0
    .byte 4
    .byte 0
    .byte 75
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_01D4:
    MoveAction_012 2
    MoveAction_010 2
    MoveAction_026
    EndMovement

    .balign 4, 0
_01E4:
    MoveAction_012 2
    MoveAction_010
    MoveAction_026
    EndMovement

    .balign 4, 0
_01F4:
    MoveAction_012 2
    EndMovement

    .balign 4, 0
_01FC:
    MoveAction_012 2
    MoveAction_011
    MoveAction_026
    EndMovement

    .balign 4, 0
_020C:
    MoveAction_012 2
    MoveAction_011 2
    MoveAction_026
    EndMovement

    .balign 4, 0
_021C:
    MoveAction_013 2
    MoveAction_011 2
    MoveAction_013 2
    EndMovement

    .balign 4, 0
_022C:
    MoveAction_013 2
    MoveAction_011
    MoveAction_013 2
    EndMovement

    .balign 4, 0
_023C:
    MoveAction_013 4
    EndMovement

    .balign 4, 0
_0244:
    MoveAction_013 2
    MoveAction_010
    MoveAction_013 2
    EndMovement

    .balign 4, 0
_0254:
    MoveAction_013 2
    MoveAction_010 2
    MoveAction_013 2
    EndMovement

    .balign 4, 0
_0264:
    MoveAction_03F
    MoveAction_04B
    MoveAction_03F
    EndMovement
