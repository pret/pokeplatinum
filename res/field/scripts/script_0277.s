    .include "macros/scrcmd.inc"

    .data

    .long _001E-.-4
    .long _0024-.-4
    .long _01D8-.-4
    .long _01D8-.-4
    .long _01DA-.-4
    .long _02EF-.-4
    .long _0306-.-4
    .short 0xFD13

_001E:
    ScrCmd_01E 0x9CE
    End

_0024:
    ScrCmd_060
    ScrCmd_01A _00CC
    ScrCmd_0E5 0x128, 0
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _006E
    ScrCmd_01A _00EE
    ScrCmd_0E5 0x129, 0
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _006E
    ScrCmd_01A _010E
    ScrCmd_01E 0x989
    ScrCmd_061
    End

_006E:
    ScrCmd_0EB
    ScrCmd_061
    End

    .balign 4, 0
_0074:
    MoveAction_021
    MoveAction_04B
    EndMovement

    .balign 4, 0
_0080:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0088:
    MoveAction_021
    EndMovement

    .byte 12
    .byte 0
    .byte 9
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 12
    .byte 0
    .byte 9
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_00A0:
    MoveAction_00D
    MoveAction_023
    MoveAction_03F 3
    MoveAction_021
    EndMovement

    .balign 4, 0
_00B4:
    MoveAction_00D
    MoveAction_023
    MoveAction_03F 3
    MoveAction_00F
    MoveAction_021
    EndMovement

_00CC:
    ScrCmd_02C 0
    ScrCmd_02C 1
    ScrCmd_05E 0, _0074
    ScrCmd_05E 1, _0074
    ScrCmd_05F
    ScrCmd_02C 2
    ScrCmd_02C 3
    ScrCmd_034
    ScrCmd_01B

_00EE:
    ScrCmd_05E 0, _0080
    ScrCmd_05F
    ScrCmd_02C 4
    ScrCmd_034
    ScrCmd_05E 0, _0088
    ScrCmd_05F
    ScrCmd_02C 5
    ScrCmd_034
    ScrCmd_01B

_010E:
    ScrCmd_02C 6
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_065 0
    ScrCmd_065 1
    ScrCmd_028 0x40E9, 1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_01F 0x19E
    ScrCmd_064 3
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 12
    ScrCmd_01D 1, _01BA
    ScrCmd_011 0x8004, 13
    ScrCmd_01D 1, _01C6
    ScrCmd_065 3
    ScrCmd_02C 7
    ScrCmd_028 0x8004, 0x1B6
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FC
    ScrCmd_01E 159
    ScrCmd_02C 8
    ScrCmd_028 0x8004, 94
    ScrCmd_028 0x8005, 10
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _01AD
    ScrCmd_014 0x7FC
    ScrCmd_02C 9
    ScrCmd_016 _01B0

_01AD:
    ScrCmd_02C 12
_01B0:
    ScrCmd_01E 160
    ScrCmd_031
    ScrCmd_034
    ScrCmd_01B

_01BA:
    ScrCmd_05E 2, _00A0
    ScrCmd_05F
    ScrCmd_01B

_01C6:
    ScrCmd_05E 2, _00B4
    ScrCmd_05F
    ScrCmd_01B

    .byte 235
    .byte 0
    .byte 97
    .byte 0
    .byte 2
    .byte 0

_01D8:
    End

_01DA:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 10
    ScrCmd_072 20, 2
    ScrCmd_016 _01F3
    End

_01F3:
    ScrCmd_041 30, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 15, 0
    ScrCmd_042 16, 1
    ScrCmd_042 17, 2
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _0241
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _026A
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _02C8
    ScrCmd_016 _02C8
    End

_0241:
    ScrCmd_071 0x800C, 100
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _02E2
    ScrCmd_028 0x8005, 1
    ScrCmd_028 0x8006, 100
    ScrCmd_016 _0293
    End

_026A:
    ScrCmd_071 0x800C, 0x3E8
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _02E2
    ScrCmd_028 0x8005, 10
    ScrCmd_028 0x8006, 0x3E8
    ScrCmd_016 _0293
    End

_0293:
    ScrCmd_028 0x8004, 94
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _02D5
    ScrCmd_1A3 0x8006
    ScrCmd_074
    ScrCmd_049 0x644
    ScrCmd_04B 0x644
    ScrCmd_014 0x7E0
    ScrCmd_073
    ScrCmd_034
    ScrCmd_061
    End

_02C8:
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_073
    ScrCmd_034
    ScrCmd_061
    End

_02D5:
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_073
    ScrCmd_034
    ScrCmd_061
    End

_02E2:
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_073
    ScrCmd_034
    ScrCmd_061
    End

_02EF:
    ScrCmd_036 18, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_0306:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_028 0x8004, 0x1B6
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FC
    ScrCmd_034
    ScrCmd_01E 159
    ScrCmd_065 3
    ScrCmd_061
    End
