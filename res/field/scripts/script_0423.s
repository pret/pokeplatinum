    .include "macros/scrcmd.inc"

    .data

    .long _001A-.-4
    .long _00F4-.-4
    .long _01A3-.-4
    .long _043C-.-4
    .long _048E-.-4
    .long _0650-.-4
    .short 0xFD13

_001A:
    ScrCmd_060
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_05E 0xFF, _00D8
    ScrCmd_05F
    ScrCmd_02C 1
    ScrCmd_028 0x8004, 0x1B5
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FC
    ScrCmd_016 _0046
    End

_0046:
    ScrCmd_02C 2
    ScrCmd_040 31, 13, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 153, 0
    ScrCmd_042 154, 1
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _0086
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _00C6
    ScrCmd_016 _00C6
    End

_0086:
    ScrCmd_02C 3
    ScrCmd_040 31, 13, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 155, 0
    ScrCmd_042 154, 1
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _0086
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _00C6
    ScrCmd_016 _00C6
    End

_00C6:
    ScrCmd_028 0x40D4, 1
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_00D8:
    MoveAction_020
    MoveAction_03F 2
    MoveAction_00C 4
    MoveAction_00E
    MoveAction_000
    MoveAction_03F 2
    EndMovement

_00F4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 5
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0123
    ScrCmd_016 _0118
    End

_0118:
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0123:
    ScrCmd_02C 6
    ScrCmd_040 31, 13, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 153, 0
    ScrCmd_042 154, 1
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _0163
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _0118
    ScrCmd_016 _0118
    End

_0163:
    ScrCmd_02C 3
    ScrCmd_040 31, 13, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 155, 0
    ScrCmd_042 154, 1
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _0163
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _0118
    ScrCmd_016 _0118
    End

_01A3:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_2B7 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0430
    ScrCmd_016 _01C4
    End

_01C4:
    ScrCmd_02C 7
    ScrCmd_041 31, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 14, 0
    ScrCmd_042 15, 1
    ScrCmd_042 16, 2
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _0213
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _0208
    ScrCmd_016 _026C
    End

_0208:
    ScrCmd_02C 13
    ScrCmd_016 _01C4
    End

_0213:
    ScrCmd_2A4 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _022C
    ScrCmd_016 _0277
    End

_022C:
    ScrCmd_2A3 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0261
    ScrCmd_016 _0245
    End

_0245:
    ScrCmd_02C 11
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0277
    ScrCmd_016 _026C
    End

_0261:
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_026C:
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0277:
    ScrCmd_31D 0x800C
    ScrCmd_011 0x800C, 0xFF
    ScrCmd_01C 1, _02A9
    ScrCmd_14E
    ScrCmd_014 0x7D6
    ScrCmd_029 0x800C, 0x4000
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _02AF
    ScrCmd_016 _026C
    End

_02A9:
    ScrCmd_014 0x809
    End

_02AF:
    ScrCmd_02C 10
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_05E 0xFF, _03B8
    ScrCmd_05F
    ScrCmd_016 _02CC
    End

_02CC:
    ScrCmd_168 0, 0, 9, 5, 77
    ScrCmd_01A _0320
    ScrCmd_05E 0xFF, _03C4
    ScrCmd_05F
    ScrCmd_01A _0328
    ScrCmd_05E 0xFF, _03CC
    ScrCmd_05F
    ScrCmd_168 0, 0, 9, 2, 77
    ScrCmd_01A _0320
    ScrCmd_05E 0xFF, _03D4
    ScrCmd_05F
    ScrCmd_01A _0328
    ScrCmd_016 _0333
    End

_0320:
    ScrCmd_16B 77
    ScrCmd_169 77
    ScrCmd_01B

_0328:
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    ScrCmd_01B

_0333:
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_1F8
    ScrCmd_2A4 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _035A
    ScrCmd_0A3
    ScrCmd_016 _035C

_035A:
    ScrCmd_0A3
_035C:
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_168 0, 0, 8, 2, 77
    ScrCmd_01A _0320
    ScrCmd_05E 0xFF, _03EC
    ScrCmd_05F
    ScrCmd_01A _0328
    ScrCmd_05E 0xFF, _03FC
    ScrCmd_05F
    ScrCmd_168 0, 0, 8, 5, 77
    ScrCmd_01A _0320
    ScrCmd_05E 0xFF, _0404
    ScrCmd_05F
    ScrCmd_01A _0328
    End

    .balign 4, 0
_03B8:
    MoveAction_00F
    MoveAction_020
    EndMovement

    .balign 4, 0
_03C4:
    MoveAction_00C 2
    EndMovement

    .balign 4, 0
_03CC:
    MoveAction_00C
    EndMovement

    .balign 4, 0
_03D4:
    MoveAction_00C
    MoveAction_045
    EndMovement

    .balign 4, 0
_03E0:
    MoveAction_00C 2
    MoveAction_045
    EndMovement

    .balign 4, 0
_03EC:
    MoveAction_001
    MoveAction_046
    MoveAction_00D
    EndMovement

    .balign 4, 0
_03FC:
    MoveAction_00D
    EndMovement

    .balign 4, 0
_0404:
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_040C:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0414:
    MoveAction_00C
    MoveAction_00F
    MoveAction_020
    EndMovement

    .balign 4, 0
_0424:
    MoveAction_00C
    MoveAction_045
    EndMovement

_0430:
    ScrCmd_014 0x2338
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_043C:
    ScrCmd_1F9 0x40B8
    ScrCmd_028 0x40DD, 0
    ScrCmd_028 0x40DE, 0
    ScrCmd_028 0x40B8, 0
    ScrCmd_028 0x40B9, 0
    ScrCmd_028 0x40BD, 0
    ScrCmd_028 0x40BB, 0
    ScrCmd_028 0x40BE, 0
    ScrCmd_028 0x40D8, 0
    ScrCmd_028 0x40B7, 0
    ScrCmd_028 0x40BC, 0
    ScrCmd_028 0x40BA, 0
    ScrCmd_028 0x40BF, 0
    ScrCmd_1F9 0x40B8
    End

_048E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_323 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _04BC
    ScrCmd_201 0x405C
    ScrCmd_029 0x405D, 0x800D
    ScrCmd_02C 17
    ScrCmd_016 _04C7
    End

_04BC:
    ScrCmd_02C 25
    ScrCmd_016 _0513
    End

_04C7:
    ScrCmd_041 31, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 22, 0
    ScrCmd_042 23, 1
    ScrCmd_042 24, 2
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _0526
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _051B
    ScrCmd_016 _0508
    End

_0508:
    ScrCmd_02C 20
    ScrCmd_016 _0513
    End

_0513:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_051B:
    ScrCmd_02C 21
    ScrCmd_016 _04C7
    End

_0526:
    ScrCmd_14E
    ScrCmd_014 0x7D6
    ScrCmd_029 0x800C, 0x4000
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0508
    ScrCmd_02C 19
    ScrCmd_034
    ScrCmd_05E 0xFF, _03B8
    ScrCmd_05F
    ScrCmd_168 0, 0, 5, 5, 77
    ScrCmd_01A _0320
    ScrCmd_05E 0x800D, _040C
    ScrCmd_05E 0xFF, _03C4
    ScrCmd_05F
    ScrCmd_01A _0328
    ScrCmd_05E 0x800D, _0414
    ScrCmd_05F
    ScrCmd_168 0, 0, 5, 2, 77
    ScrCmd_01A _0320
    ScrCmd_05E 0xFF, _03E0
    ScrCmd_05E 0x800D, _0424
    ScrCmd_05F
    ScrCmd_01A _0328
    ScrCmd_028 0x4003, 0
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x24A, 0, 20, 11, 0
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    End

    .byte 188
    .byte 0
    .byte 6
    .byte 0
    .byte 1
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 189
    .byte 0
    .byte 248
    .byte 1
    .byte 179
    .byte 0
    .byte 12
    .byte 128
    .byte 41
    .byte 0
    .byte 4
    .byte 128
    .byte 12
    .byte 128
    .byte 247
    .byte 2
    .byte 4
    .byte 128
    .byte 161
    .byte 0
    .byte 188
    .byte 0
    .byte 6
    .byte 0
    .byte 1
    .byte 0
    .byte 1
    .byte 0
    .byte 0
    .byte 0
    .byte 189
    .byte 0
    .byte 104
    .byte 1
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 5
    .byte 0
    .byte 2
    .byte 0
    .byte 77
    .byte 26
    .byte 0
    .byte 15
    .byte 253
    .byte 0xFF
    .byte 0xFF
    .byte 94
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 211
    .byte 253
    .byte 0xFF
    .byte 0xFF
    .byte 95
    .byte 0
    .byte 26
    .byte 0
    .byte 7
    .byte 253
    .byte 0xFF
    .byte 0xFF
    .byte 94
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 211
    .byte 253
    .byte 0xFF
    .byte 0xFF
    .byte 95
    .byte 0
    .byte 104
    .byte 1
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 5
    .byte 0
    .byte 5
    .byte 0
    .byte 77
    .byte 26
    .byte 0
    .byte 228
    .byte 252
    .byte 0xFF
    .byte 0xFF
    .byte 94
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 192
    .byte 253
    .byte 0xFF
    .byte 0xFF
    .byte 95
    .byte 0
    .byte 26
    .byte 0
    .byte 220
    .byte 252
    .byte 0xFF
    .byte 0xFF
    .byte 97
    .byte 0
    .byte 2
    .byte 0

_0650:
    ScrCmd_060
    ScrCmd_168 0, 0, 5, 2, 77
    ScrCmd_01A _0320
    ScrCmd_05E 0xFF, _03EC
    ScrCmd_05F
    ScrCmd_01A _0328
    ScrCmd_05E 0xFF, _03FC
    ScrCmd_05F
    ScrCmd_168 0, 0, 5, 5, 77
    ScrCmd_01A _0320
    ScrCmd_05E 0xFF, _0404
    ScrCmd_05F
    ScrCmd_01A _0328
    ScrCmd_028 0x4080, 0
    ScrCmd_061
    End
