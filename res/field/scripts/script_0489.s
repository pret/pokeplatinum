    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _01CC-.-4
    .long _01F6-.-4
    .long _01E3-.-4
    .short 0xFD13

_0012:
    ScrCmd_060
    ScrCmd_069 0x8004, 0x8005
    CompareVar 0x8004, 0x2E3
    CallIf 1, _00E7
    ApplyMovement 4, _0188
    ApplyMovement 3, _0154
    ApplyMovement 0xFF, _0100
    WaitMovement
    ScrCmd_0CD 0
    ScrCmd_02C 5
    ScrCmd_034
    ApplyMovement 3, _0160
    WaitMovement
    ScrCmd_003 15, 0x800C
    ScrCmd_0CE 1
    ScrCmd_02C 6
    ScrCmd_034
    ApplyMovement 4, _0194
    WaitMovement
    ScrCmd_02C 7
    ScrCmd_0CE 1
    ScrCmd_02C 8
    ApplyMovement 4, _019C
    WaitMovement
    ScrCmd_0CD 0
    ScrCmd_02C 9
    ScrCmd_034
    ApplyMovement 4, _01B8
    ApplyMovement 0xFF, _012C
    ApplyMovement 3, _0168
    WaitMovement
    ScrCmd_065 4
    ApplyMovement 3, _0170
    ApplyMovement 0xFF, _0108
    WaitMovement
    ScrCmd_003 5, 0x800C
    ScrCmd_0CE 1
    ScrCmd_02C 10
    ScrCmd_02C 11
    ScrCmd_034
    ApplyMovement 3, _0178
    ApplyMovement 0xFF, _0118
    WaitMovement
    ScrCmd_065 3
    SetVar 0x408B, 1
    ScrCmd_061
    End

_00E7:
    ApplyMovement 0xFF, _00F4
    WaitMovement
    Return

    .balign 4, 0
_00F4:
    MoveAction_00E
    MoveAction_020
    EndMovement

    .balign 4, 0
_0100:
    MoveAction_000
    EndMovement

    .balign 4, 0
_0108:
    MoveAction_00F
    MoveAction_00C
    MoveAction_023
    EndMovement

    .balign 4, 0
_0118:
    MoveAction_03F
    MoveAction_021
    EndMovement

    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_012C:
    MoveAction_00E
    MoveAction_023
    MoveAction_03E
    MoveAction_021
    EndMovement

    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 62
    .byte 0
    .byte 1
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0154:
    MoveAction_021
    MoveAction_04B
    EndMovement

    .balign 4, 0
_0160:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0168:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0170:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0178:
    MoveAction_011 9
    EndMovement

    .byte 17
    .byte 0
    .byte 9
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0188:
    MoveAction_021
    MoveAction_04B
    EndMovement

    .balign 4, 0
_0194:
    MoveAction_023
    EndMovement

    .balign 4, 0
_019C:
    MoveAction_021
    EndMovement

    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_01B8:
    MoveAction_03F 2
    MoveAction_00D 9
    EndMovement

    .byte 13
    .byte 0
    .byte 9
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_01CC:
    ScrCmd_036 12, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_01E3:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01F6:
    ScrCmd_060
    ApplyMovement 11, _0280
    ApplyMovement 0xFF, _026C
    WaitMovement
    GoTo _0212
    End

_0212:
    ScrCmd_0CD 0
    ScrCmd_02C 0
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _0243
    CompareVar 0x800C, 1
    GoToIf 1, _0238
    End

_0238:
    ScrCmd_02C 3
    GoTo _0212
    End

_0243:
    ApplyMovement 11, _0290
    WaitMovement
    ScrCmd_02C 1
    ApplyMovement 11, _0298
    WaitMovement
    ScrCmd_02C 2
    ScrCmd_034
    SetVar 0x4119, 1
    ScrCmd_061
    End

    .balign 4, 0
_026C:
    MoveAction_000
    EndMovement

    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0280:
    MoveAction_021
    MoveAction_04B
    MoveAction_00D
    EndMovement

    .balign 4, 0
_0290:
    MoveAction_020
    EndMovement

    .balign 4, 0
_0298:
    MoveAction_021
    EndMovement
