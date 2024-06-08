    .include "macros/scrcmd.inc"

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
    ScrCmd_014 0x7D0
    End

_002F:
    ScrCmd_060
    ApplyMovement 6, _00A4
    ApplyMovement 7, _00E0
    WaitMovement
    ScrCmd_02C 0
    ScrCmd_034
    ApplyMovement 6, _00AC
    ApplyMovement 7, _00EC
    WaitMovement
    ApplyMovement 7, _0100
    WaitMovement
    ScrCmd_02C 1
    ScrCmd_034
    ApplyMovement 6, _00C4
    WaitMovement
    ScrCmd_02C 2
    ScrCmd_034
    ApplyMovement 6, _00D4
    ApplyMovement 7, _0108
    WaitMovement
    ScrCmd_049 0x603
    ScrCmd_065 6
    ScrCmd_065 7
    ScrCmd_04B 0x603
    SetVar 0x40A0, 1
    ScrCmd_061
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
    ScrCmd_060
    ScrCmd_02C 3
    ScrCmd_034
    ScrCmd_003 15, 0x800C
    ScrCmd_02C 4
    ApplyMovement 5, _01F0
    WaitMovement
    ScrCmd_02C 5
    ScrCmd_034
    ApplyMovement 5, _01F8
    WaitMovement
    ApplyMovement 4, _01CC
    WaitMovement
    ScrCmd_0CD 0
    ScrCmd_02C 6
    ScrCmd_034
    ScrCmd_003 15, 0x800C
    ApplyMovement 5, _0204
    ApplyMovement 4, _01DC
    WaitMovement
    ScrCmd_0CD 0
    ScrCmd_02C 7
    ScrCmd_034
    ApplyMovement 5, _0214
    ApplyMovement 0xFF, _0238
    WaitMovement
    ScrCmd_065 5
    ApplyMovement 4, _01E8
    ApplyMovement 0xFF, _0240
    WaitMovement
    ScrCmd_0CD 0
    ScrCmd_02C 8
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_065 4
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    SetVar 0x40A0, 3
    ScrCmd_061
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
