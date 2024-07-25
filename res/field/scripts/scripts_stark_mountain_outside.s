#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0012
    ScriptEntry _0018
    ScriptEntry _002F
    ScriptEntry _0118
    .short 0xFD13

_0012:
    SetFlag 0x9D1
    End

_0018:
    ScrCmd_036 9, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_002F:
    LockAll
    ApplyMovement 6, _00A4
    ApplyMovement 7, _00E0
    WaitMovement
    Message 0
    CloseMessage
    ApplyMovement 6, _00AC
    ApplyMovement 7, _00EC
    WaitMovement
    ApplyMovement 7, _0100
    WaitMovement
    Message 1
    CloseMessage
    ApplyMovement 6, _00C4
    WaitMovement
    Message 2
    CloseMessage
    ApplyMovement 6, _00D4
    ApplyMovement 7, _0108
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ScrCmd_065 6
    ScrCmd_065 7
    WaitFanfare SEQ_SE_DP_KAIDAN2
    SetVar 0x40A0, 1
    ReleaseAll
    End

    .balign 4, 0
_00A4:
    MoveAction_00F 4
    EndMovement

    .balign 4, 0
_00AC:
    MoveAction_00D 2
    MoveAction_00F 4
    MoveAction_00C
    EndMovement

    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_00C4:
    MoveAction_022
    MoveAction_03F 2
    MoveAction_020
    EndMovement

    .balign 4, 0
_00D4:
    MoveAction_00C 2
    MoveAction_045
    EndMovement

    .balign 4, 0
_00E0:
    MoveAction_00C
    MoveAction_00F 3
    EndMovement

    .balign 4, 0
_00EC:
    MoveAction_00F
    MoveAction_00D 2
    MoveAction_00F 3
    MoveAction_00C
    EndMovement

    .balign 4, 0
_0100:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0108:
    MoveAction_00F
    MoveAction_00C 2
    MoveAction_045
    EndMovement

_0118:
    LockAll
    Message 3
    CloseMessage
    WaitTime 15, 0x800C
    Message 4
    ApplyMovement 5, _01F0
    WaitMovement
    Message 5
    CloseMessage
    ApplyMovement 5, _01F8
    WaitMovement
    ApplyMovement 4, _01CC
    WaitMovement
    BufferPlayerName 0
    Message 6
    CloseMessage
    WaitTime 15, 0x800C
    ApplyMovement 5, _0204
    ApplyMovement 4, _01DC
    WaitMovement
    BufferPlayerName 0
    Message 7
    CloseMessage
    ApplyMovement 5, _0214
    ApplyMovement 0xFF, _0238
    WaitMovement
    ScrCmd_065 5
    ApplyMovement 4, _01E8
    ApplyMovement 0xFF, _0240
    WaitMovement
    BufferPlayerName 0
    Message 8
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_065 4
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    SetVar 0x40A0, 3
    ReleaseAll
    End

    .balign 4, 0
_01CC:
    MoveAction_022
    MoveAction_03F 2
    MoveAction_021
    EndMovement

    .balign 4, 0
_01DC:
    MoveAction_03F
    MoveAction_022
    EndMovement

    .balign 4, 0
_01E8:
    MoveAction_021
    EndMovement

    .balign 4, 0
_01F0:
    MoveAction_023
    EndMovement

    .balign 4, 0
_01F8:
    MoveAction_00C 2
    MoveAction_045
    EndMovement

    .balign 4, 0
_0204:
    MoveAction_046
    MoveAction_00D
    MoveAction_023
    EndMovement

    .balign 4, 0
_0214:
    MoveAction_00D 2
    MoveAction_00E 5
    MoveAction_00C 2
    MoveAction_00E 3
    MoveAction_015 9
    MoveAction_017 10
    MoveAction_00C 6
    MoveAction_00F 8
    EndMovement

    .balign 4, 0
_0238:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0240:
    MoveAction_020
    EndMovement
