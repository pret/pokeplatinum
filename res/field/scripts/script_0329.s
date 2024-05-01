    .include "macros/scrcmd.inc"

    .data

    .long _0026-.-4
    .long _0060-.-4
    .long _0064-.-4
    .long _00F3-.-4
    .long _01A8-.-4
    .long _0464-.-4
    .long _0466-.-4
    .long _0468-.-4
    .long _01AA-.-4
    .short 0xFD13

_0026:
    ScrCmd_25B
    ScrCmd_020 229
    ScrCmd_01C 0, _0035
    End

_0035:
    ScrCmd_011 0x4092, 2
    ScrCmd_01C 1, _004A
    ScrCmd_028 0x4092, 0
    End

_004A:
    ScrCmd_186 4, 19, 41
    ScrCmd_188 4, 17
    ScrCmd_189 4, 3
    End

_0060:
    ScrCmd_25C
    End

_0064:
    ScrCmd_060
    ScrCmd_0C8 0
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8005, 2
    ScrCmd_01D 1, _00D1
    ScrCmd_011 0x8005, 3
    ScrCmd_01D 1, _00DD
    ScrCmd_0CD 0
    ScrCmd_020 225
    ScrCmd_01D 0, _00E9
    ScrCmd_020 225
    ScrCmd_01D 1, _00EE
    ScrCmd_0CD 0
    ScrCmd_04E 0x481
    ScrCmd_02C 1
    ScrCmd_04F
    ScrCmd_01E 225
    ScrCmd_028 0x4092, 1
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_028 0x403F, 0x261
    ScrCmd_161
    ScrCmd_06D 4, 48
    ScrCmd_061
    End

_00D1:
    ScrCmd_05E 4, _0170
    ScrCmd_05F
    Return

_00DD:
    ScrCmd_05E 4, _0184
    ScrCmd_05F
    Return

_00E9:
    ScrCmd_02C 0
    Return

_00EE:
    ScrCmd_02C 3
    Return

_00F3:
    ScrCmd_060
    ScrCmd_05E 0xFF, _0158
    ScrCmd_05E 4, _0160
    ScrCmd_05F
    ScrCmd_02C 4
    ScrCmd_034
    ScrCmd_028 0x4092, 0
    ScrCmd_162
    ScrCmd_06D 4, 16
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8005, 2
    ScrCmd_01D 1, _013E
    ScrCmd_011 0x8005, 3
    ScrCmd_01D 1, _014A
    ScrCmd_061
    End

_013E:
    ScrCmd_05E 4, _0190
    ScrCmd_05F
    Return

_014A:
    ScrCmd_05E 4, _01A0
    ScrCmd_05F
    Return

    .balign 4, 0
_0158:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0160:
    MoveAction_003
    EndMovement

    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0170:
    MoveAction_023
    MoveAction_04B
    MoveAction_00C
    MoveAction_023
    EndMovement

    .balign 4, 0
_0184:
    MoveAction_023
    MoveAction_04B
    EndMovement

    .balign 4, 0
_0190:
    MoveAction_00E
    MoveAction_00D
    MoveAction_022
    EndMovement

    .balign 4, 0
_01A0:
    MoveAction_00E
    EndMovement

_01A8:
    End

_01AA:
    ScrCmd_060
    ScrCmd_162
    ScrCmd_06D 4, 16
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8005, 40
    ScrCmd_01D 1, _0291
    ScrCmd_011 0x8005, 41
    ScrCmd_01D 1, _02A5
    ScrCmd_02C 5
    ScrCmd_034
    ScrCmd_05E 5, _0384
    ScrCmd_05F
    ScrCmd_02C 6
    ScrCmd_034
    ScrCmd_05E 6, _038C
    ScrCmd_05F
    ScrCmd_02C 7
    ScrCmd_034
    ScrCmd_05E 4, _040C
    ScrCmd_05F
    ScrCmd_0CD 0
    ScrCmd_02C 8
    ScrCmd_034
    ScrCmd_161
    ScrCmd_0E5 0x343, 0x344
    ScrCmd_162
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _037D
    ScrCmd_05E 5, _0394
    ScrCmd_05F
    ScrCmd_02C 9
    ScrCmd_034
    ScrCmd_05E 6, _039C
    ScrCmd_05F
    ScrCmd_02C 10
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_065 5
    ScrCmd_065 6
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8005, 40
    ScrCmd_01D 1, _02D1
    ScrCmd_011 0x8005, 41
    ScrCmd_01D 1, _02E5
    Call _02F9
    ScrCmd_2B6 4, 1
    ScrCmd_061
    End

_0291:
    ScrCmd_05E 4, _03D4
    ScrCmd_05E 0xFF, _0434
    ScrCmd_05F
    Return

_02A5:
    ScrCmd_05E 4, _03E4
    ScrCmd_05E 0xFF, _044C
    ScrCmd_05F
    Return

    .byte 94
    .byte 0
    .byte 4
    .byte 0
    .byte 51
    .byte 1
    .byte 0
    .byte 0
    .byte 95
    .byte 0
    .byte 27
    .byte 0
    .byte 94
    .byte 0
    .byte 4
    .byte 0
    .byte 51
    .byte 1
    .byte 0
    .byte 0
    .byte 95
    .byte 0
    .byte 27
    .byte 0

_02D1:
    ScrCmd_05E 4, _0414
    ScrCmd_05E 0xFF, _0424
    ScrCmd_05F
    Return

_02E5:
    ScrCmd_05E 4, _041C
    ScrCmd_05E 0xFF, _042C
    ScrCmd_05F
    Return

_02F9:
    ScrCmd_02C 11
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _031C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0366
    End

_031C:
    ScrCmd_177 0x800C
    ScrCmd_011 0x800C, 6
    ScrCmd_01C 1, _0353
    ScrCmd_04E 0x486
    ScrCmd_04F
    ScrCmd_02C 12
    ScrCmd_097 0x1BF, 10
    ScrCmd_01E 0x1E5
    ScrCmd_01F 226
    Call _0371
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    Return

_0353:
    ScrCmd_01E 226
    ScrCmd_028 0x4092, 2
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_034
    Return

_0366:
    ScrCmd_02C 14
    GoTo _02F9
    End

_0371:
    ScrCmd_01E 229
    ScrCmd_028 0x4092, 2
    Return

_037D:
    ScrCmd_0EB
    ScrCmd_061
    End

    .balign 4, 0
_0384:
    MoveAction_023
    EndMovement

    .balign 4, 0
_038C:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0394:
    MoveAction_021
    EndMovement

    .balign 4, 0
_039C:
    MoveAction_020
    EndMovement

    .byte 14
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
    .byte 12
    .byte 0
    .byte 1
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 2
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 12
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_03D4:
    MoveAction_022
    MoveAction_00D
    MoveAction_00E 2
    EndMovement

    .balign 4, 0
_03E4:
    MoveAction_022
    MoveAction_00C
    MoveAction_00E 2
    EndMovement

    .byte 13
    .byte 0
    .byte 1
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 12
    .byte 0
    .byte 1
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_040C:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0414:
    MoveAction_020
    EndMovement

    .balign 4, 0
_041C:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0424:
    MoveAction_021
    EndMovement

    .balign 4, 0
_042C:
    MoveAction_020
    EndMovement

    .balign 4, 0
_0434:
    MoveAction_03F 2
    MoveAction_021
    MoveAction_03F
    MoveAction_03D
    MoveAction_00E
    EndMovement

    .balign 4, 0
_044C:
    MoveAction_03F 2
    MoveAction_020
    MoveAction_03F
    MoveAction_03D
    MoveAction_00E
    EndMovement

_0464:
    End

_0466:
    End

_0468:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 226
    ScrCmd_01C 1, _0504
    ScrCmd_011 0x4092, 2
    ScrCmd_01C 1, _0513
    ScrCmd_011 0x40E3, 4
    ScrCmd_01C 4, _04EB
    ScrCmd_011 0x40E3, 3
    ScrCmd_01C 1, _04E0
    ScrCmd_011 0x40E3, 2
    ScrCmd_01C 1, _04D5
    ScrCmd_011 0x40E3, 1
    ScrCmd_01C 1, _04CA
    ScrCmd_0CD 0
    ScrCmd_02C 18
    GoTo _04F6
    End

_04CA:
    ScrCmd_02C 19
    GoTo _04F6
    End

_04D5:
    ScrCmd_02C 20
    GoTo _04F6
    End

_04E0:
    ScrCmd_02C 21
    GoTo _04F6
    End

_04EB:
    ScrCmd_02C 22
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_04F6:
    ScrCmd_026 0x40E3, 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0504:
    Call _02F9
    ScrCmd_2B6 4, 1
    ScrCmd_061
    End

_0513:
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
