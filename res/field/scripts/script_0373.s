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
    CheckFlag 227
    ScrCmd_01C 0, _0121
    ScrCmd_011 0x40DF, 2
    ScrCmd_01C 5, _0057
    ScrCmd_1DD 55, 2, 0x4009
    ScrCmd_011 0x4009, 0
    ScrCmd_01C 1, _0121
_0057:
    ClearFlag 0x1EC
_005B:
    CheckFlag 228
    ScrCmd_01C 0, _012D
    ScrCmd_011 0x40DF, 2
    ScrCmd_01C 5, _0088
    ScrCmd_1DD 55, 2, 0x4009
    ScrCmd_011 0x4009, 1
    ScrCmd_01C 1, _012D
_0088:
    ClearFlag 0x1ED
_008C:
    CheckFlag 229
    ScrCmd_01C 0, _0139
    ScrCmd_011 0x40DF, 2
    ScrCmd_01C 5, _00B9
    ScrCmd_1DD 55, 2, 0x4009
    ScrCmd_011 0x4009, 2
    ScrCmd_01C 1, _0139
_00B9:
    ClearFlag 0x1EE
_00BD:
    CheckFlag 230
    ScrCmd_01C 0, _0145
    ScrCmd_011 0x40DF, 2
    ScrCmd_01C 5, _00EA
    ScrCmd_1DD 55, 2, 0x4009
    ScrCmd_011 0x4009, 3
    ScrCmd_01C 1, _0145
_00EA:
    ClearFlag 0x1EF
_00EE:
    CheckFlag 231
    ScrCmd_01C 0, _0151
    ScrCmd_011 0x40DF, 2
    ScrCmd_01C 5, _011B
    ScrCmd_1DD 55, 2, 0x4009
    ScrCmd_011 0x4009, 4
    ScrCmd_01C 1, _0151
_011B:
    ClearFlag 0x1F0
_011F:
    End

_0121:
    SetFlag 0x1EC
    GoTo _005B
    End

_012D:
    SetFlag 0x1ED
    GoTo _008C
    End

_0139:
    SetFlag 0x1EE
    GoTo _00BD
    End

_0145:
    SetFlag 0x1EF
    GoTo _00EE
    End

_0151:
    SetFlag 0x1F0
    GoTo _011F
    End

_015D:
    ScrCmd_011 0x40DF, 1
    ScrCmd_01D 1, _0179
    ScrCmd_011 0x40DF, 2
    ScrCmd_01C 1, _017F
    End

_0179:
    ScrCmd_1B2 0xFF
    Return

_017F:
    ScrCmd_187 0, 8, 0, 3, 1
    End

_018D:
    ScrCmd_060
    ScrCmd_028 0x40DF, 0
    Call _04A6
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_1DD 56, 0, 0
    ScrCmd_061
    End

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
    End

_01D4:
    ScrCmd_034
    ScrCmd_061
    ScrCmd_028 0x40D8, 3
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x146, 0, 11, 6, 0
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    End

_0204:
    ScrCmd_060
    ScrCmd_028 0x40DF, 0
    ScrCmd_02C 2
    ScrCmd_034
    Call _04E0
    ScrCmd_028 0x40DB, 2
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x147, 0, 3, 6, 0
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    End

_0245:
    ScrCmd_1DE 0x4009, 0, 0x8004, 0x8005
    ScrCmd_0DA 0, 0x8004, 0, 0
    ScrCmd_0D4 1, 0x8005
    ScrCmd_1DE 0x4009, 1, 0x8004, 0x8005
    ScrCmd_0DA 2, 0x8004, 0, 0
    ScrCmd_0D4 3, 0x8005
    Return

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
    End

_02DD:
    ScrCmd_1DD 50, 0x4009, 0
    ScrCmd_028 0x40DF, 2
    ScrCmd_02C 8
    ScrCmd_034
    ScrCmd_061
    ScrCmd_062 1
    GoTo _055C
    End

_02FE:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_011 0x40DF, 2
    ScrCmd_01C 1, _0336
    ScrCmd_028 0x4009, 1
    Call _0245
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
    End

_0341:
    ScrCmd_1DD 50, 0x4009, 0
    ScrCmd_028 0x40DF, 2
    ScrCmd_0CD 0
    ScrCmd_02C 17
    ScrCmd_034
    ScrCmd_061
    ScrCmd_062 2
    GoTo _05A1
    End

_0365:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_011 0x40DF, 2
    ScrCmd_01C 1, _039A
    ScrCmd_028 0x4009, 2
    Call _0245
    ScrCmd_02C 3
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _03A5
_039A:
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03A5:
    ScrCmd_1DD 50, 0x4009, 0
    ScrCmd_028 0x40DF, 2
    ScrCmd_02C 5
    ScrCmd_034
    ScrCmd_061
    ScrCmd_062 3
    GoTo _05E6
    End

_03C6:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_011 0x40DF, 2
    ScrCmd_01C 1, _03FB
    ScrCmd_028 0x4009, 3
    Call _0245
    ScrCmd_02C 12
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0406
_03FB:
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0406:
    ScrCmd_1DD 50, 0x4009, 0
    ScrCmd_028 0x40DF, 2
    ScrCmd_02C 14
    ScrCmd_034
    ScrCmd_061
    ScrCmd_062 4
    GoTo _062B
    End

_0427:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_011 0x40DF, 2
    ScrCmd_01C 1, _045C
    ScrCmd_028 0x4009, 4
    Call _0245
    ScrCmd_02C 9
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0467
_045C:
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0467:
    ScrCmd_1DD 50, 0x4009, 0
    ScrCmd_028 0x40DF, 2
    ScrCmd_02C 11
    ScrCmd_034
    ScrCmd_061
    ScrCmd_062 5
    GoTo _0670
    End

_0488:
    ScrCmd_168 0, 0, 8, 2, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    Return

_049B:
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    Return

_04A6:
    Call _0488
    ScrCmd_05E 0, _06C8
    ScrCmd_05F
    ScrCmd_1B1 0xFF
    ScrCmd_05E 0xFF, _06B8
    ScrCmd_05F
    Call _049B
    ScrCmd_05E 0, _06D8
    ScrCmd_05F
    ScrCmd_05E 0xFF, _06C0
    ScrCmd_05F
    Return

_04E0:
    Call _0488
    ScrCmd_05E 0, _070C
    ScrCmd_05E 0xFF, _0700
    ScrCmd_05F
    Call _049B
    Return

_0500:
    ScrCmd_05E 0x4000, _0718
    ScrCmd_05F
    ScrCmd_05E 0, _06E4
    ScrCmd_05F
    Call _0488
    ScrCmd_05E 0x4000, _0720
    ScrCmd_05F
    Call _049B
    ScrCmd_05E 0, _06F4
    ScrCmd_05F
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x1ED, 0, 8, 4, 0
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    End

_055C:
    ScrCmd_028 0x4000, 1
    ScrCmd_069 0x8000, 0x8001
    ScrCmd_011 0x8000, 12
    ScrCmd_01C 1, _057D
    GoTo _058F
    End

_057D:
    ScrCmd_05E 1, _072C
    ScrCmd_05F
    GoTo _0500
    End

_058F:
    ScrCmd_05E 1, _0740
    ScrCmd_05F
    GoTo _0500
    End

_05A1:
    ScrCmd_028 0x4000, 2
    ScrCmd_069 0x8000, 0x8001
    ScrCmd_011 0x8000, 4
    ScrCmd_01C 1, _05C2
    GoTo _05D4
    End

_05C2:
    ScrCmd_05E 2, _0758
    ScrCmd_05F
    GoTo _0500
    End

_05D4:
    ScrCmd_05E 2, _0768
    ScrCmd_05F
    GoTo _0500
    End

_05E6:
    ScrCmd_028 0x4000, 3
    ScrCmd_069 0x8000, 0x8001
    ScrCmd_011 0x8001, 7
    ScrCmd_01C 1, _0607
    GoTo _0619
    End

_0607:
    ScrCmd_05E 3, _0774
    ScrCmd_05F
    GoTo _0500
    End

_0619:
    ScrCmd_05E 3, _0784
    ScrCmd_05F
    GoTo _0500
    End

_062B:
    ScrCmd_028 0x4000, 4
    ScrCmd_069 0x8000, 0x8001
    ScrCmd_011 0x8001, 9
    ScrCmd_01C 1, _064C
    GoTo _065E
    End

_064C:
    ScrCmd_05E 4, _0790
    ScrCmd_05F
    GoTo _0500
    End

_065E:
    ScrCmd_05E 4, _07A4
    ScrCmd_05F
    GoTo _0500
    End

_0670:
    ScrCmd_028 0x4000, 5
    ScrCmd_069 0x8000, 0x8001
    ScrCmd_011 0x8000, 8
    ScrCmd_01C 1, _0691
    GoTo _06A3
    End

_0691:
    ScrCmd_05E 5, _07B8
    ScrCmd_05F
    GoTo _0500
    End

_06A3:
    ScrCmd_05E 5, _07C8
    ScrCmd_05F
    GoTo _0500

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
