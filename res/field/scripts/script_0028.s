    .include "macros/scrcmd.inc"

    .data

    .long _00F0-.-4
    .long _00F2-.-4
    .long _00F4-.-4
    .long _0374-.-4
    .long _0387-.-4
    .long _039A-.-4
    .long _03AD-.-4
    .long _03C0-.-4
    .long _03D3-.-4
    .long _03E6-.-4
    .long _03F9-.-4
    .long _006B-.-4
    .long _0056-.-4
    .long _040C-.-4
    .long _0496-.-4
    .long _0520-.-4
    .long _0533-.-4
    .long _0546-.-4
    .long _0601-.-4
    .long _0652-.-4
    .long _074C-.-4
    .short 0xFD13

_0056:
    ScrCmd_011 0x40D5, 6
    ScrCmd_01D 1, _0065
    End

_0065:
    ScrCmd_1B2 0xFF
    ScrCmd_01B

_006B:
    ScrCmd_060
    ScrCmd_01A _0077
    ScrCmd_061
    End

_0077:
    ScrCmd_168 0, 0, 8, 2, 77
    ScrCmd_01A _00C5
    ScrCmd_1B1 0xFF
    ScrCmd_05E 0xFF, _00D8
    ScrCmd_05F
    ScrCmd_01A _00CD
    ScrCmd_168 0, 0, 8, 4, 77
    ScrCmd_01A _00C5
    ScrCmd_05E 0xFF, _00E8
    ScrCmd_05F
    ScrCmd_01A _00CD
    ScrCmd_028 0x40D5, 0
    ScrCmd_01B

_00C5:
    ScrCmd_16B 77
    ScrCmd_169 77
    ScrCmd_01B

_00CD:
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    ScrCmd_01B

    .balign 4, 0
_00D8:
    MoveAction_00D
    EndMovement

    .byte 13
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_00E8:
    MoveAction_00D 2
    EndMovement

_00F0:
    End

_00F2:
    End

_00F4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_2B7 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0368
    ScrCmd_020 195
    ScrCmd_01C 1, _02FB
    ScrCmd_01E 195
    ScrCmd_02C 0
    ScrCmd_016 _0127
    End

_0127:
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 129, 0
    ScrCmd_042 128, 1
    ScrCmd_042 130, 2
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _01E9
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _0172
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _02EA
    ScrCmd_016 _02EA
    End

_0172:
    ScrCmd_02C 2
    ScrCmd_016 _017D
    End

_017D:
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 131, 0
    ScrCmd_042 132, 1
    ScrCmd_042 133, 2
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _01C8
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _01D3
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _01DE
    ScrCmd_016 _01DE
    End

_01C8:
    ScrCmd_02C 3
    ScrCmd_016 _017D
    End

_01D3:
    ScrCmd_02C 4
    ScrCmd_016 _017D
    End

_01DE:
    ScrCmd_02C 5
    ScrCmd_016 _0127
    End

_01E9:
    ScrCmd_19A 0x800C
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 0, _0202
    ScrCmd_016 _0306
    End

_0202:
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_020D:
    ScrCmd_014 0x7D6
    ScrCmd_029 0x800C, 0x4000
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _02EA
    ScrCmd_14E
    ScrCmd_028 0x40D5, 6
    ScrCmd_02C 7
    ScrCmd_034
    ScrCmd_05E 0xFF, _0344
    ScrCmd_05F
    ScrCmd_168 0, 0, 8, 4, 77
    ScrCmd_01A _00C5
    ScrCmd_05E 0xFF, _0358
    ScrCmd_05F
    ScrCmd_01A _00CD
    ScrCmd_168 0, 0, 8, 2, 77
    ScrCmd_01A _00C5
    ScrCmd_05E 0xFF, _0350
    ScrCmd_05F
    ScrCmd_1B2 0xFF
    ScrCmd_05E 0xFF, _0360
    ScrCmd_05F
    ScrCmd_01A _00CD
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_2B2
    ScrCmd_0B3 0x800C
    ScrCmd_029 0x8004, 0x800C
    ScrCmd_0B2 0x8004, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _02CE
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_01A _0077
    ScrCmd_061
    End

_02CE:
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_01A _0077
    ScrCmd_016 _02EA
    End

_02EA:
    ScrCmd_028 0x40D5, 0
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_02FB:
    ScrCmd_02C 1
    ScrCmd_016 _0127
    End

_0306:
    ScrCmd_177 0x800C
    ScrCmd_011 0x800C, 6
    ScrCmd_01C 1, _031F
    ScrCmd_016 _020D
    End

_031F:
    ScrCmd_252 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0338
    ScrCmd_016 _020D
    End

_0338:
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_0344:
    MoveAction_00F
    MoveAction_020
    EndMovement

    .balign 4, 0
_0350:
    MoveAction_00C
    EndMovement

    .balign 4, 0
_0358:
    MoveAction_00C 2
    EndMovement

    .balign 4, 0
_0360:
    MoveAction_001
    EndMovement

_0368:
    ScrCmd_014 0x2338
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0374:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0387:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_039A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03AD:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03C0:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03D3:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03E6:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 16
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03F9:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 17
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_040C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_028 0x8005, 3
    ScrCmd_016 _0420
    End

_0420:
    ScrCmd_02C 36
    ScrCmd_041 31, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 38, 0
    ScrCmd_042 39, 1
    ScrCmd_042 40, 2
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _046A
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _048B
    ScrCmd_016 _0464
    End

_0464:
    ScrCmd_034
    ScrCmd_061
    End

_046A:
    ScrCmd_014 0x7D6
    ScrCmd_029 0x800C, 0x4000
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0464
    ScrCmd_034
    ScrCmd_014 0x802
    ScrCmd_061
    End

_048B:
    ScrCmd_02C 37
    ScrCmd_016 _0420
    End

_0496:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_028 0x8005, 4
    ScrCmd_016 _04AA
    End

_04AA:
    ScrCmd_02C 34
    ScrCmd_041 31, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 38, 0
    ScrCmd_042 39, 1
    ScrCmd_042 40, 2
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _04F4
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _0515
    ScrCmd_016 _04EE
    End

_04EE:
    ScrCmd_034
    ScrCmd_061
    End

_04F4:
    ScrCmd_014 0x7D6
    ScrCmd_029 0x800C, 0x4000
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _04EE
    ScrCmd_034
    ScrCmd_014 0x802
    ScrCmd_061
    End

_0515:
    ScrCmd_02C 35
    ScrCmd_016 _04AA
    End

_0520:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 32
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0533:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 33
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0546:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_2B7 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _05A0
    ScrCmd_028 0x8000, 0
    ScrCmd_198 0x8000, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _05CB
    ScrCmd_0D0 0, 0
    ScrCmd_02C 18
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _05AB
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _05B8
    End

_05A0:
    ScrCmd_02C 23
    ScrCmd_016 _05F9
    End

_05AB:
    ScrCmd_300
    ScrCmd_02C 20
    ScrCmd_016 _05F9
    End

_05B8:
    ScrCmd_0D0 0, 0
    ScrCmd_02C 21
    ScrCmd_016 _05F9

    .byte 2
    .byte 0
    .byte 44
    .byte 0
    .byte 18

_05CB:
    ScrCmd_02C 19
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _05AB
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _05EE
    End

_05EE:
    ScrCmd_02C 22
    ScrCmd_016 _05F9
    End

_05F9:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0601:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 29
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0647
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_034
    ScrCmd_30E 0x8004
    ScrCmd_011 0x8004, 0
    ScrCmd_01C 1, _0647
    ScrCmd_02C 30
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0647:
    ScrCmd_02C 31
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0652:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_07E 0x1B3, 1, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0696
    ScrCmd_020 0xAC3
    ScrCmd_01C 1, _06FD
    ScrCmd_020 207
    ScrCmd_01C 1, _06F2
    ScrCmd_02C 24
    ScrCmd_028 0x8004, 1
    ScrCmd_016 _06A1
    End

_0696:
    ScrCmd_02C 42
    ScrCmd_016 _0708
    End

_06A1:
    ScrCmd_1D6 0x8004, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _06D3
    ScrCmd_026 0x8004, 1
    ScrCmd_011 0x8004, 13
    ScrCmd_01C 3, _06A1
    ScrCmd_01E 207
    ScrCmd_016 _06F2
    End

_06D3:
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FD
    ScrCmd_02C 28
    ScrCmd_01A _0710
    ScrCmd_01E 0xAC3
    ScrCmd_016 _0708
    End

_06F2:
    ScrCmd_02C 27
    ScrCmd_016 _0708
    End

_06FD:
    ScrCmd_02C 26
    ScrCmd_016 _0708
    End

_0708:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0710:
    ScrCmd_028 0x8004, 1
    ScrCmd_016 _071E
    End

_071E:
    ScrCmd_1D6 0x8004, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _074A
    ScrCmd_026 0x8004, 1
    ScrCmd_011 0x8004, 13
    ScrCmd_01C 3, _071E
    ScrCmd_01E 207
    ScrCmd_01B

_074A:
    ScrCmd_01B

_074C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 41
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
