    .include "macros/scrcmd.inc"

    .data

    .long _0036-.-4
    .long _007E-.-4
    .long _02F8-.-4
    .long _0400-.-4
    .long _0413-.-4
    .long _045F-.-4
    .long _0475-.-4
    .long _0488-.-4
    .long _049B-.-4
    .long _04B4-.-4
    .long _057C-.-4
    .long _02D8-.-4
    .long _0662-.-4
    .short 0xFD13

_0036:
    ScrCmd_01F 0x995
    ScrCmd_01E 0x9F3
    ScrCmd_011 0x40F3, 0
    ScrCmd_01C 5, _004D
    ScrCmd_002

_004D:
    ScrCmd_186 7, 8, 9
    ScrCmd_189 7, 2
    ScrCmd_002

_005D:
    ScrCmd_011 0x40E0, 0x7D0
    ScrCmd_01C 1, _0074
    ScrCmd_0CD 1
    ScrCmd_0D5 2, 0x40E0
    ScrCmd_01B

_0074:
    ScrCmd_0CE 1
    ScrCmd_0D5 2, 0x40E0
    ScrCmd_01B

_007E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _009D
    ScrCmd_016 _00D2

_009D:
    ScrCmd_020 211
    ScrCmd_01C 1, _01D6
    ScrCmd_01E 211
    ScrCmd_0CD 0
    ScrCmd_02C 21
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0107
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _01CB
    ScrCmd_002

_00D2:
    ScrCmd_020 211
    ScrCmd_01C 1, _01E2
    ScrCmd_01E 211
    ScrCmd_0CD 0
    ScrCmd_02C 22
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0107
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _01CB
    ScrCmd_002

_0107:
    ScrCmd_02C 23
    ScrCmd_016 _012B

_0110:
    ScrCmd_02C 24
    ScrCmd_016 _012B

_0119:
    ScrCmd_02C 25
    ScrCmd_016 _012B

_0122:
    ScrCmd_02C 26
    ScrCmd_016 _012B

_012B:
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 198, 0
    ScrCmd_042 199, 1
    ScrCmd_042 200, 2
    ScrCmd_042 202, 4
    ScrCmd_043
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0110
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0119
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 1, _0122
    ScrCmd_016 _0172

_0172:
    ScrCmd_02C 28
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _01CB
_0186:
    ScrCmd_028 0x800C, 0
    ScrCmd_252 0x800C
    ScrCmd_011 0x800C, 6
    ScrCmd_01C 0, _02AD
    ScrCmd_028 0x800C, 0
    ScrCmd_254 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0299
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0231
    ScrCmd_016 _0245

_01CB:
    ScrCmd_02C 29
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_01D6:
    ScrCmd_0CD 0
    ScrCmd_02C 30
    ScrCmd_016 _01EE

_01E2:
    ScrCmd_0CD 0
    ScrCmd_02C 31
    ScrCmd_016 _01EE

_01EE:
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 203, 0
    ScrCmd_042 204, 1
    ScrCmd_042 205, 2
    ScrCmd_043
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0186
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _02A4
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 1, _01CB
    ScrCmd_016 _01CB

_0231:
    ScrCmd_01A _005D
    ScrCmd_0CD 0
    ScrCmd_02C 32
    ScrCmd_034
    ScrCmd_016 _0259

_0245:
    ScrCmd_01A _005D
    ScrCmd_0CD 0
    ScrCmd_02C 33
    ScrCmd_034
    ScrCmd_016 _0259

_0259:
    ScrCmd_05E 7, _02B8
    ScrCmd_05F
    ScrCmd_05E 0xFF, _02CC
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 251, 0, 24, 47, 0
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    ScrCmd_002

_0299:
    ScrCmd_02C 34
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_02A4:
    ScrCmd_02C 35
    ScrCmd_016 _012B

_02AD:
    ScrCmd_02C 37
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_02B8:
    MoveAction_024
    MoveAction_00C 2
    MoveAction_00F
    MoveAction_026
    EndMovement

    .balign 4, 0
_02CC:
    MoveAction_00C 5
    MoveAction_045
    EndMovement

_02D8:
    ScrCmd_060
    ScrCmd_028 0x40F3, 0
    ScrCmd_05E 0xFF, _03E4
    ScrCmd_05F
    ScrCmd_05E 7, _03D8
    ScrCmd_05F
    ScrCmd_061
    ScrCmd_002

_02F8:
    ScrCmd_060
    ScrCmd_028 0x40F3, 0
    ScrCmd_05E 0xFF, _03EC
    ScrCmd_05F
    ScrCmd_256 0, 0x800C
    ScrCmd_0D5 0, 0x800C
    ScrCmd_256 1, 0x800C
    ScrCmd_0D5 1, 0x800C
    ScrCmd_256 2, 0x800C
    ScrCmd_0D5 2, 0x800C
    ScrCmd_256 3, 0x800C
    ScrCmd_0D5 3, 0x800C
    ScrCmd_02C 38
    ScrCmd_256 3, 0x800C
    ScrCmd_012 0x800C, 0x40E0
    ScrCmd_01C 2, _035B
    ScrCmd_02C 40
    ScrCmd_01A _07BE
    ScrCmd_016 _0370

_035B:
    ScrCmd_02C 39
    ScrCmd_01A _07BE
    ScrCmd_256 3, 0x40E0
    ScrCmd_016 _0370

_0370:
    ScrCmd_02C 41
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _03AB
    ScrCmd_02C 46
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _039E
    ScrCmd_016 _0370

_039E:
    ScrCmd_02C 43
    ScrCmd_030
    ScrCmd_034
    ScrCmd_016 _03BD

_03AB:
    ScrCmd_255
    ScrCmd_02C 42
    ScrCmd_02C 44
    ScrCmd_030
    ScrCmd_034
    ScrCmd_016 _03BD

_03BD:
    ScrCmd_05E 0xFF, _03F8
    ScrCmd_05F
    ScrCmd_05E 7, _03D8
    ScrCmd_05F
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_03D8:
    MoveAction_00E
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_03E4:
    MoveAction_00D 5
    EndMovement

    .balign 4, 0
_03EC:
    MoveAction_00D 2
    MoveAction_027
    EndMovement

    .balign 4, 0
_03F8:
    MoveAction_00D 4
    EndMovement

_0400:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 57
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0413:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_0CD 0
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 1, _0454
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0449
    ScrCmd_016 _043E

_043E:
    ScrCmd_02C 52
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0449:
    ScrCmd_02C 53
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0454:
    ScrCmd_02C 54
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_045F:
    ScrCmd_0CD 0
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 55
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0475:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 56
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0488:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 65
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_049B:
    ScrCmd_01A _005D
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 57
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_04B4:
    ScrCmd_060
    ScrCmd_01F 0x242
    ScrCmd_028 0x40E0, 0x7D0
    ScrCmd_05E 1, _0548
    ScrCmd_05F
    ScrCmd_14D 0x4000
    ScrCmd_0CD 0
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _04E4
    ScrCmd_016 _04ED

_04E4:
    ScrCmd_02C 0
    ScrCmd_016 _04F6

_04ED:
    ScrCmd_02C 1
    ScrCmd_016 _04F6

_04F6:
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_05E 1, _0558
    ScrCmd_05F
    ScrCmd_02C 3
    ScrCmd_028 0x8004, 19
    ScrCmd_014 0x7D9
    ScrCmd_02C 4
    ScrCmd_034
    ScrCmd_003 15, 0x800C
    ScrCmd_05E 0xFF, _0570
    ScrCmd_05F
    ScrCmd_05E 1, _0564
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_065 1
    ScrCmd_04B 0x603
    ScrCmd_028 0x40C6, 1
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0548:
    MoveAction_04B
    MoveAction_03F
    MoveAction_00D 3
    EndMovement

    .balign 4, 0
_0558:
    MoveAction_04B
    MoveAction_03F
    EndMovement

    .balign 4, 0
_0564:
    MoveAction_00D
    MoveAction_021
    EndMovement

    .balign 4, 0
_0570:
    MoveAction_00F
    MoveAction_022
    EndMovement

_057C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_011 0x400A, 1
    ScrCmd_01C 1, _062C
    ScrCmd_011 0x400A, 2
    ScrCmd_01C 1, _063C
    ScrCmd_134 21, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0657
    ScrCmd_02C 5
    ScrCmd_02C 6
    ScrCmd_134 20, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _05FB
    ScrCmd_02C 10
    ScrCmd_1C0 0x800C, 143
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _064C
    ScrCmd_02C 11
    ScrCmd_028 0x8004, 20
    ScrCmd_014 0x7D9
    ScrCmd_031
    ScrCmd_028 0x400A, 1
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_05FB:
    ScrCmd_02C 13
    ScrCmd_1C0 0x800C, 0x160
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _064C
    ScrCmd_02C 14
    ScrCmd_028 0x8004, 21
    ScrCmd_014 0x7D9
    ScrCmd_031
    ScrCmd_028 0x400A, 2
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_062C:
    ScrCmd_0D7 0, 20
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_063C:
    ScrCmd_0D7 0, 21
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_064C:
    ScrCmd_02C 19
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0657:
    ScrCmd_02C 20
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0662:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_011 0x4009, 1
    ScrCmd_01C 1, _06CF
    ScrCmd_26E 0x800C
    ScrCmd_011 0x800C, 4
    ScrCmd_01C 1, _06DA
    ScrCmd_011 0x800C, 5
    ScrCmd_01C 1, _0706
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0732
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 1, _0756
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _077A
    ScrCmd_016 _06C4
    ScrCmd_002

_06C4:
    ScrCmd_02C 66
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_06CF:
    ScrCmd_02C 72
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_06DA:
    ScrCmd_028 0x8004, 97
    ScrCmd_028 0x8005, 1
    ScrCmd_1D3 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _06C4
    ScrCmd_02C 67
    ScrCmd_016 _079E
    ScrCmd_002

_0706:
    ScrCmd_028 0x8004, 98
    ScrCmd_028 0x8005, 1
    ScrCmd_1D3 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _06C4
    ScrCmd_02C 68
    ScrCmd_016 _079E
    ScrCmd_002

_0732:
    ScrCmd_028 0x8004, 14
    ScrCmd_1D6 0x8004, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _06C4
    ScrCmd_02C 69
    ScrCmd_016 _07AE
    ScrCmd_002

_0756:
    ScrCmd_028 0x8004, 15
    ScrCmd_1D6 0x8004, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _06C4
    ScrCmd_02C 70
    ScrCmd_016 _07AE
    ScrCmd_002

_077A:
    ScrCmd_028 0x8004, 16
    ScrCmd_1D6 0x8004, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _06C4
    ScrCmd_02C 71
    ScrCmd_016 _07AE
    ScrCmd_002

_079E:
    ScrCmd_014 0x7DF
    ScrCmd_028 0x4009, 1
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_07AE:
    ScrCmd_014 0x7F4
    ScrCmd_028 0x4009, 1
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_07BE:
    ScrCmd_256 3, 0x800C
    ScrCmd_011 0x800C, 0xBB8
    ScrCmd_01D 0, _07FA
    ScrCmd_011 0x800C, 0xCE4
    ScrCmd_01D 0, _0870
    ScrCmd_011 0x800C, 0xDAC
    ScrCmd_01D 0, _08BF
    ScrCmd_011 0x800C, 0x2710
    ScrCmd_01D 0, _0928
    ScrCmd_01B

_07FA:
    ScrCmd_1B7 0x8006, 8
    ScrCmd_011 0x8006, 0
    ScrCmd_01D 1, _09B6
    ScrCmd_011 0x8006, 1
    ScrCmd_01D 1, _09BE
    ScrCmd_011 0x8006, 2
    ScrCmd_01D 1, _09C6
    ScrCmd_011 0x8006, 3
    ScrCmd_01D 1, _09CE
    ScrCmd_011 0x8006, 4
    ScrCmd_01D 1, _09D6
    ScrCmd_011 0x8006, 5
    ScrCmd_01D 1, _09DE
    ScrCmd_011 0x8006, 6
    ScrCmd_01D 1, _09E6
    ScrCmd_011 0x8006, 7
    ScrCmd_01D 1, _09EE
    ScrCmd_01A _0984
    ScrCmd_01B

_0870:
    ScrCmd_1B7 0x8006, 5
    ScrCmd_011 0x8006, 0
    ScrCmd_01D 1, _09F6
    ScrCmd_011 0x8006, 1
    ScrCmd_01D 1, _09FE
    ScrCmd_011 0x8006, 2
    ScrCmd_01D 1, _0A06
    ScrCmd_011 0x8006, 3
    ScrCmd_01D 1, _0A0E
    ScrCmd_011 0x8006, 4
    ScrCmd_01D 1, _0A16
    ScrCmd_01A _0984
    ScrCmd_01B

_08BF:
    ScrCmd_1B7 0x8006, 7
    ScrCmd_011 0x8006, 0
    ScrCmd_01D 1, _0A1E
    ScrCmd_011 0x8006, 1
    ScrCmd_01D 1, _0A26
    ScrCmd_011 0x8006, 2
    ScrCmd_01D 1, _0A2E
    ScrCmd_011 0x8006, 3
    ScrCmd_01D 1, _0A36
    ScrCmd_011 0x8006, 4
    ScrCmd_01D 1, _0A3E
    ScrCmd_011 0x8006, 5
    ScrCmd_01D 1, _0A46
    ScrCmd_011 0x8006, 6
    ScrCmd_01D 1, _0A4E
    ScrCmd_01A _0984
    ScrCmd_01B

_0928:
    ScrCmd_1B7 0x8006, 6
    ScrCmd_011 0x8006, 0
    ScrCmd_01D 1, _0A56
    ScrCmd_011 0x8006, 1
    ScrCmd_01D 1, _0A5E
    ScrCmd_011 0x8006, 2
    ScrCmd_01D 1, _0A66
    ScrCmd_011 0x8006, 3
    ScrCmd_01D 1, _0A6E
    ScrCmd_011 0x8006, 4
    ScrCmd_01D 1, _0A76
    ScrCmd_011 0x8006, 5
    ScrCmd_01D 1, _0A7E
    ScrCmd_01A _0984
    ScrCmd_01B

_0984:
    ScrCmd_07D 0x8006, 1, 0x8007
    ScrCmd_011 0x8007, 0
    ScrCmd_01D 5, _09A1
    ScrCmd_028 0x800C, 0x2710
    ScrCmd_01B

_09A1:
    ScrCmd_02C 45
    ScrCmd_029 0x8004, 0x8006
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FC
    ScrCmd_01B

_09B6:
    ScrCmd_028 0x8006, 149
    ScrCmd_01B

_09BE:
    ScrCmd_028 0x8006, 150
    ScrCmd_01B

_09C6:
    ScrCmd_028 0x8006, 151
    ScrCmd_01B

_09CE:
    ScrCmd_028 0x8006, 152
    ScrCmd_01B

_09D6:
    ScrCmd_028 0x8006, 153
    ScrCmd_01B

_09DE:
    ScrCmd_028 0x8006, 154
    ScrCmd_01B

_09E6:
    ScrCmd_028 0x8006, 155
    ScrCmd_01B

_09EE:
    ScrCmd_028 0x8006, 156
    ScrCmd_01B

_09F6:
    ScrCmd_028 0x8006, 159
    ScrCmd_01B

_09FE:
    ScrCmd_028 0x8006, 160
    ScrCmd_01B

_0A06:
    ScrCmd_028 0x8006, 161
    ScrCmd_01B

_0A0E:
    ScrCmd_028 0x8006, 162
    ScrCmd_01B

_0A16:
    ScrCmd_028 0x8006, 163
    ScrCmd_01B

_0A1E:
    ScrCmd_028 0x8006, 164
    ScrCmd_01B

_0A26:
    ScrCmd_028 0x8006, 165
    ScrCmd_01B

_0A2E:
    ScrCmd_028 0x8006, 166
    ScrCmd_01B

_0A36:
    ScrCmd_028 0x8006, 167
    ScrCmd_01B

_0A3E:
    ScrCmd_028 0x8006, 168
    ScrCmd_01B

_0A46:
    ScrCmd_028 0x8006, 157
    ScrCmd_01B

_0A4E:
    ScrCmd_028 0x8006, 158
    ScrCmd_01B

_0A56:
    ScrCmd_028 0x8006, 169
    ScrCmd_01B

_0A5E:
    ScrCmd_028 0x8006, 170
    ScrCmd_01B

_0A66:
    ScrCmd_028 0x8006, 171
    ScrCmd_01B

_0A6E:
    ScrCmd_028 0x8006, 172
    ScrCmd_01B

_0A76:
    ScrCmd_028 0x8006, 173
    ScrCmd_01B

_0A7E:
    ScrCmd_028 0x8006, 174
    ScrCmd_01B

    .byte 0
    .byte 0
