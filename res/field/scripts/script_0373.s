    .include "macros/scrcmd.inc"

    .data

    .long _01AC-.-4
    .long _0275-.-4
    .long _02FE-.-4
    .long _0365-.-4
    .long _03C6-.-4
    .long _0427-.-4
    .long _002A-.-4
    .long _015D-.-4
    .long _018D-.-4
    .long _0204-.-4
    .short 0xFD13

_002A:
    ScrCmd_020 227
    ScrCmd_01C 0, _0121
    ScrCmd_011 0x40DF, 2
    ScrCmd_01C 5, _0057
    ScrCmd_1DD 55, 2, 0x4009
    ScrCmd_011 0x4009, 0
    ScrCmd_01C 1, _0121
_0057:
    ScrCmd_01F 0x1EC
_005B:
    ScrCmd_020 228
    ScrCmd_01C 0, _012D
    ScrCmd_011 0x40DF, 2
    ScrCmd_01C 5, _0088
    ScrCmd_1DD 55, 2, 0x4009
    ScrCmd_011 0x4009, 1
    ScrCmd_01C 1, _012D
_0088:
    ScrCmd_01F 0x1ED
_008C:
    ScrCmd_020 229
    ScrCmd_01C 0, _0139
    ScrCmd_011 0x40DF, 2
    ScrCmd_01C 5, _00B9
    ScrCmd_1DD 55, 2, 0x4009
    ScrCmd_011 0x4009, 2
    ScrCmd_01C 1, _0139
_00B9:
    ScrCmd_01F 0x1EE
_00BD:
    ScrCmd_020 230
    ScrCmd_01C 0, _0145
    ScrCmd_011 0x40DF, 2
    ScrCmd_01C 5, _00EA
    ScrCmd_1DD 55, 2, 0x4009
    ScrCmd_011 0x4009, 3
    ScrCmd_01C 1, _0145
_00EA:
    ScrCmd_01F 0x1EF
_00EE:
    ScrCmd_020 231
    ScrCmd_01C 0, _0151
    ScrCmd_011 0x40DF, 2
    ScrCmd_01C 5, _011B
    ScrCmd_1DD 55, 2, 0x4009
    ScrCmd_011 0x4009, 4
    ScrCmd_01C 1, _0151
_011B:
    ScrCmd_01F 0x1F0
_011F:
    ScrCmd_002

_0121:
    ScrCmd_01E 0x1EC
    ScrCmd_016 _005B
    ScrCmd_002

_012D:
    ScrCmd_01E 0x1ED
    ScrCmd_016 _008C
    ScrCmd_002

_0139:
    ScrCmd_01E 0x1EE
    ScrCmd_016 _00BD
    ScrCmd_002

_0145:
    ScrCmd_01E 0x1EF
    ScrCmd_016 _00EE
    ScrCmd_002

_0151:
    ScrCmd_01E 0x1F0
    ScrCmd_016 _011F
    ScrCmd_002

_015D:
    ScrCmd_011 0x40DF, 1
    ScrCmd_01D 1, _0179
    ScrCmd_011 0x40DF, 2
    ScrCmd_01C 1, _017F
    ScrCmd_002

_0179:
    ScrCmd_1B2 0xFF
    ScrCmd_01B

_017F:
    ScrCmd_187 0, 8, 0, 3, 1
    ScrCmd_002

_018D:
    ScrCmd_060
    ScrCmd_028 0x40DF, 0
    ScrCmd_01A _04A6
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_1DD 56, 0, 0
    ScrCmd_061
    ScrCmd_002

_01AC:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_0CD 0
    ScrCmd_02C 1
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _01D4
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_01D4:
    ScrCmd_034
    ScrCmd_061
    ScrCmd_028 0x40D8, 3
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x146, 0, 11, 6, 0
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_002

_0204:
    ScrCmd_060
    ScrCmd_028 0x40DF, 0
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_01A _04E0
    ScrCmd_028 0x40DB, 2
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x147, 0, 3, 6, 0
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    ScrCmd_002

_0245:
    ScrCmd_1DE 0x4009, 0, 0x8004, 0x8005
    ScrCmd_0DA 0, 0x8004, 0, 0
    ScrCmd_0D4 1, 0x8005
    ScrCmd_1DE 0x4009, 1, 0x8004, 0x8005
    ScrCmd_0DA 2, 0x8004, 0, 0
    ScrCmd_0D4 3, 0x8005
    ScrCmd_01B

_0275:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_011 0x40DF, 2
    ScrCmd_01C 1, _02D2
    ScrCmd_028 0x4009, 0
    ScrCmd_1DE 0x4009, 0, 0x8004, 0x8005
    ScrCmd_341 0, 0x8004, 0, 0
    ScrCmd_0D4 1, 0x8005
    ScrCmd_1DE 0x4009, 1, 0x8004, 0x8005
    ScrCmd_341 2, 0x8004, 0, 0
    ScrCmd_0D4 3, 0x8005
    ScrCmd_02C 6
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _02DD
_02D2:
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_02DD:
    ScrCmd_1DD 50, 0x4009, 0
    ScrCmd_028 0x40DF, 2
    ScrCmd_02C 8
    ScrCmd_034
    ScrCmd_061
    ScrCmd_062 1
    ScrCmd_016 _055C
    ScrCmd_002

_02FE:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_011 0x40DF, 2
    ScrCmd_01C 1, _0336
    ScrCmd_028 0x4009, 1
    ScrCmd_01A _0245
    ScrCmd_0CD 4
    ScrCmd_02C 15
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0341
_0336:
    ScrCmd_02C 16
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0341:
    ScrCmd_1DD 50, 0x4009, 0
    ScrCmd_028 0x40DF, 2
    ScrCmd_0CD 0
    ScrCmd_02C 17
    ScrCmd_034
    ScrCmd_061
    ScrCmd_062 2
    ScrCmd_016 _05A1
    ScrCmd_002

_0365:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_011 0x40DF, 2
    ScrCmd_01C 1, _039A
    ScrCmd_028 0x4009, 2
    ScrCmd_01A _0245
    ScrCmd_02C 3
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _03A5
_039A:
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_03A5:
    ScrCmd_1DD 50, 0x4009, 0
    ScrCmd_028 0x40DF, 2
    ScrCmd_02C 5
    ScrCmd_034
    ScrCmd_061
    ScrCmd_062 3
    ScrCmd_016 _05E6
    ScrCmd_002

_03C6:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_011 0x40DF, 2
    ScrCmd_01C 1, _03FB
    ScrCmd_028 0x4009, 3
    ScrCmd_01A _0245
    ScrCmd_02C 12
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0406
_03FB:
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0406:
    ScrCmd_1DD 50, 0x4009, 0
    ScrCmd_028 0x40DF, 2
    ScrCmd_02C 14
    ScrCmd_034
    ScrCmd_061
    ScrCmd_062 4
    ScrCmd_016 _062B
    ScrCmd_002

_0427:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_011 0x40DF, 2
    ScrCmd_01C 1, _045C
    ScrCmd_028 0x4009, 4
    ScrCmd_01A _0245
    ScrCmd_02C 9
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0467
_045C:
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0467:
    ScrCmd_1DD 50, 0x4009, 0
    ScrCmd_028 0x40DF, 2
    ScrCmd_02C 11
    ScrCmd_034
    ScrCmd_061
    ScrCmd_062 5
    ScrCmd_016 _0670
    ScrCmd_002

_0488:
    ScrCmd_168 0, 0, 8, 2, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ScrCmd_01B

_049B:
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    ScrCmd_01B

_04A6:
    ScrCmd_01A _0488
    ScrCmd_05E 0, _06C8
    ScrCmd_05F
    ScrCmd_1B1 0xFF
    ScrCmd_05E 0xFF, _06B8
    ScrCmd_05F
    ScrCmd_01A _049B
    ScrCmd_05E 0, _06D8
    ScrCmd_05F
    ScrCmd_05E 0xFF, _06C0
    ScrCmd_05F
    ScrCmd_01B

_04E0:
    ScrCmd_01A _0488
    ScrCmd_05E 0, _070C
    ScrCmd_05E 0xFF, _0700
    ScrCmd_05F
    ScrCmd_01A _049B
    ScrCmd_01B

_0500:
    ScrCmd_05E 0x4000, _0718
    ScrCmd_05F
    ScrCmd_05E 0, _06E4
    ScrCmd_05F
    ScrCmd_01A _0488
    ScrCmd_05E 0x4000, _0720
    ScrCmd_05F
    ScrCmd_01A _049B
    ScrCmd_05E 0, _06F4
    ScrCmd_05F
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x1ED, 0, 8, 4, 0
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    ScrCmd_002

_055C:
    ScrCmd_028 0x4000, 1
    ScrCmd_069 0x8000, 0x8001
    ScrCmd_011 0x8000, 12
    ScrCmd_01C 1, _057D
    ScrCmd_016 _058F
    ScrCmd_002

_057D:
    ScrCmd_05E 1, _072C
    ScrCmd_05F
    ScrCmd_016 _0500
    ScrCmd_002

_058F:
    ScrCmd_05E 1, _0740
    ScrCmd_05F
    ScrCmd_016 _0500
    ScrCmd_002

_05A1:
    ScrCmd_028 0x4000, 2
    ScrCmd_069 0x8000, 0x8001
    ScrCmd_011 0x8000, 4
    ScrCmd_01C 1, _05C2
    ScrCmd_016 _05D4
    ScrCmd_002

_05C2:
    ScrCmd_05E 2, _0758
    ScrCmd_05F
    ScrCmd_016 _0500
    ScrCmd_002

_05D4:
    ScrCmd_05E 2, _0768
    ScrCmd_05F
    ScrCmd_016 _0500
    ScrCmd_002

_05E6:
    ScrCmd_028 0x4000, 3
    ScrCmd_069 0x8000, 0x8001
    ScrCmd_011 0x8001, 7
    ScrCmd_01C 1, _0607
    ScrCmd_016 _0619
    ScrCmd_002

_0607:
    ScrCmd_05E 3, _0774
    ScrCmd_05F
    ScrCmd_016 _0500
    ScrCmd_002

_0619:
    ScrCmd_05E 3, _0784
    ScrCmd_05F
    ScrCmd_016 _0500
    ScrCmd_002

_062B:
    ScrCmd_028 0x4000, 4
    ScrCmd_069 0x8000, 0x8001
    ScrCmd_011 0x8001, 9
    ScrCmd_01C 1, _064C
    ScrCmd_016 _065E
    ScrCmd_002

_064C:
    ScrCmd_05E 4, _0790
    ScrCmd_05F
    ScrCmd_016 _0500
    ScrCmd_002

_065E:
    ScrCmd_05E 4, _07A4
    ScrCmd_05F
    ScrCmd_016 _0500
    ScrCmd_002

_0670:
    ScrCmd_028 0x4000, 5
    ScrCmd_069 0x8000, 0x8001
    ScrCmd_011 0x8000, 8
    ScrCmd_01C 1, _0691
    ScrCmd_016 _06A3
    ScrCmd_002

_0691:
    ScrCmd_05E 5, _07B8
    ScrCmd_05F
    ScrCmd_016 _0500
    ScrCmd_002

_06A3:
    ScrCmd_05E 5, _07C8
    ScrCmd_05F
    ScrCmd_016 _0500

    .byte 2
    .byte 0
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_06B8:
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_06C0:
    MoveAction_000
    EndMovement

    .balign 4, 0
_06C8:
    MoveAction_00D 2
    MoveAction_00E
    MoveAction_003
    EndMovement

    .balign 4, 0
_06D8:
    MoveAction_00F
    MoveAction_001
    EndMovement

    .balign 4, 0
_06E4:
    MoveAction_001
    MoveAction_012
    MoveAction_003
    EndMovement

    .balign 4, 0
_06F4:
    MoveAction_013
    MoveAction_001
    EndMovement

    .balign 4, 0
_0700:
    MoveAction_00C 2
    MoveAction_045
    EndMovement

    .balign 4, 0
_070C:
    MoveAction_00C
    MoveAction_045
    EndMovement

    .balign 4, 0
_0718:
    MoveAction_000
    EndMovement

    .balign 4, 0
_0720:
    MoveAction_010 2
    MoveAction_045
    EndMovement

    .balign 4, 0
_072C:
    MoveAction_011
    MoveAction_012 3
    MoveAction_010 7
    MoveAction_012 2
    EndMovement

    .balign 4, 0
_0740:
    MoveAction_012
    MoveAction_010
    MoveAction_012 2
    MoveAction_010 5
    MoveAction_012 2
    EndMovement

    .balign 4, 0
_0758:
    MoveAction_013
    MoveAction_010 2
    MoveAction_013 3
    EndMovement

    .balign 4, 0
_0768:
    MoveAction_010 2
    MoveAction_013 4
    EndMovement

    .balign 4, 0
_0774:
    MoveAction_012
    MoveAction_010 4
    MoveAction_012 2
    EndMovement

    .balign 4, 0
_0784:
    MoveAction_010 4
    MoveAction_012 3
    EndMovement

    .balign 4, 0
_0790:
    MoveAction_011
    MoveAction_013 4
    MoveAction_010 7
    MoveAction_013 2
    EndMovement

    .balign 4, 0
_07A4:
    MoveAction_010
    MoveAction_013 4
    MoveAction_010 5
    MoveAction_013 2
    EndMovement

    .balign 4, 0
_07B8:
    MoveAction_012
    MoveAction_010 5
    MoveAction_013 2
    EndMovement

    .balign 4, 0
_07C8:
    MoveAction_013 3
    MoveAction_010 5
    MoveAction_012 2
    EndMovement
