    .include "macros/scrcmd.inc"

    .data

    .long _0006-.-4
    .short 0xFD13

_0006:
    ScrCmd_060
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_05E 3, _0234
    ScrCmd_05F
    ScrCmd_02C 0
    ScrCmd_034
    CompareVarToValue 0x8005, 12
    ScrCmd_01D 1, _01AD
    CompareVarToValue 0x8005, 13
    ScrCmd_01D 1, _01C1
    ScrCmd_066 0x8004, 0x8005
    ScrCmd_0BC 6, 3, 0, 0
    ScrCmd_05E 241, _01F8
    ScrCmd_05F
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_003 15, 0x800C
    ClearFlag 0x253
    ScrCmd_064 2
    ScrCmd_05E 2, _01D8
    ScrCmd_05F
    ScrCmd_049 0x60F
    ScrCmd_003 30, 0x800C
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_049 0x60F
    ScrCmd_003 30, 0x800C
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_003 30, 0x800C
    ScrCmd_02C 3
    ScrCmd_034
    ScrCmd_049 0x60F
    ScrCmd_003 15, 0x800C
    ScrCmd_02C 4
    ScrCmd_02C 5
    ScrCmd_034
    ScrCmd_003 15, 0x800C
    ScrCmd_05E 2, _01E8
    ScrCmd_05F
    ScrCmd_065 2
    ScrCmd_0BC 6, 3, 0, 0
    ScrCmd_0BD
    ScrCmd_05E 241, _0204
    ScrCmd_05F
    ScrCmd_067
    ScrCmd_065 0
    ScrCmd_065 1
    ScrCmd_065 4
    ScrCmd_065 5
    ScrCmd_065 6
    ScrCmd_065 7
    ScrCmd_065 8
    ScrCmd_065 9
    ScrCmd_065 10
    ScrCmd_065 11
    ScrCmd_065 12
    ScrCmd_065 13
    ScrCmd_065 14
    ScrCmd_065 15
    ScrCmd_065 16
    ScrCmd_065 17
    ScrCmd_065 18
    ScrCmd_065 19
    ScrCmd_065 20
    ScrCmd_065 21
    ScrCmd_065 22
    ScrCmd_065 23
    ScrCmd_065 24
    ScrCmd_065 25
    ScrCmd_065 26
    ScrCmd_065 27
    ScrCmd_065 28
    ScrCmd_065 29
    ScrCmd_065 30
    ScrCmd_065 31
    ScrCmd_065 32
    ScrCmd_065 33
    ScrCmd_065 34
    ScrCmd_065 35
    ScrCmd_05E 3, _0248
    ScrCmd_05E 0xFF, _0224
    ScrCmd_05F
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_003 15, 0x800C
    ScrCmd_02C 6
    ScrCmd_034
    ScrCmd_05E 3, _0250
    ScrCmd_05E 0xFF, _022C
    ScrCmd_05F
    ScrCmd_065 3
    ScrCmd_028 0x408E, 1
    ScrCmd_061
    End

_01AD:
    ScrCmd_05E 3, _0240
    ScrCmd_05E 0xFF, _0210
    ScrCmd_05F
    Return

_01C1:
    ScrCmd_05E 3, _0240
    ScrCmd_05E 0xFF, _021C
    ScrCmd_05F
    Return

    .balign 4, 0
_01D8:
    MoveAction_00D 3
    MoveAction_00E 4
    MoveAction_00D
    EndMovement

    .balign 4, 0
_01E8:
    MoveAction_00C
    MoveAction_00F 4
    MoveAction_00C 3
    EndMovement

    .balign 4, 0
_01F8:
    MoveAction_00E 6
    MoveAction_00C 6
    EndMovement

    .balign 4, 0
_0204:
    MoveAction_00D 6
    MoveAction_00F 6
    EndMovement

    .balign 4, 0
_0210:
    MoveAction_00D
    MoveAction_00E
    EndMovement

    .balign 4, 0
_021C:
    MoveAction_00E
    EndMovement

    .balign 4, 0
_0224:
    MoveAction_020
    EndMovement

    .balign 4, 0
_022C:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0234:
    MoveAction_027
    MoveAction_04B
    EndMovement

    .balign 4, 0
_0240:
    MoveAction_026
    EndMovement

    .balign 4, 0
_0248:
    MoveAction_025
    EndMovement

    .balign 4, 0
_0250:
    MoveAction_012
    MoveAction_024
    MoveAction_03F
    MoveAction_025
    MoveAction_03E
    MoveAction_026
    MoveAction_03F
    MoveAction_012 9
    EndMovement
