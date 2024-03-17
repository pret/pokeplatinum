    .include "macros/scrcmd.inc"

    .data

    .long _005E-.-4
    .long _0062-.-4
    .long _00AF-.-4
    .long _0178-.-4
    .long _0242-.-4
    .long _030C-.-4
    .long _03D6-.-4
    .long _04A0-.-4
    .long _056A-.-4
    .long _00A0-.-4
    .long _0634-.-4
    .long _063C-.-4
    .long _0644-.-4
    .long _0652-.-4
    .long _0660-.-4
    .long _066E-.-4
    .long _067C-.-4
    .long _068A-.-4
    .long _0698-.-4
    .long _06A6-.-4
    .long _06B4-.-4
    .long _012B-.-4
    .long _00ED-.-4
    .short 0xFD13

_005E:
    ScrCmd_20E
    ScrCmd_002

_0062:
    ScrCmd_060
    ScrCmd_049 0x5F1
    ScrCmd_02C 0
    ScrCmd_030
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 125, 0, 5, 2, 1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_028 0x40DA, 2
    ScrCmd_202 1
    ScrCmd_061
    ScrCmd_002

_00A0:
    ScrCmd_060
    ScrCmd_028 0x40DA, 2
    ScrCmd_202 1
    ScrCmd_061
    ScrCmd_002

_00AF:
    ScrCmd_060
    ScrCmd_049 0x5F1
    ScrCmd_02C 1
    ScrCmd_030
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 125, 0, 5, 2, 1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_028 0x40DA, 2
    ScrCmd_202 1
    ScrCmd_061
    ScrCmd_002

_00ED:
    ScrCmd_060
    ScrCmd_049 0x5F1
    ScrCmd_02C 2
    ScrCmd_030
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 125, 0, 5, 2, 1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_028 0x40DA, 2
    ScrCmd_202 1
    ScrCmd_061
    ScrCmd_002

_012B:
    ScrCmd_060
    ScrCmd_02C 5
    ScrCmd_03E 0x800C
    ScrCmd_034
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 5, _0174
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 125, 0, 5, 2, 1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_028 0x40DA, 2
    ScrCmd_202 1
    ScrCmd_061
    ScrCmd_002

_0174:
    ScrCmd_061
    ScrCmd_002

_0178:
    ScrCmd_060
    ScrCmd_02C 3
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 188, 0
    ScrCmd_042 189, 1
    ScrCmd_042 190, 2
    ScrCmd_042 191, 3
    ScrCmd_042 192, 4
    ScrCmd_043
    ScrCmd_034
    ScrCmd_011 0x800C, 4
    ScrCmd_01C 1, _06C2
    ScrCmd_011 0x800C, 0xFFFE
    ScrCmd_01C 1, _06C2
    ScrCmd_210 0, 0x8004
    ScrCmd_028 0x8005, 0
    ScrCmd_011 0x8004, 6
    ScrCmd_01D 1, _0634
    ScrCmd_211 0
    ScrCmd_011 0x800C, 0
    ScrCmd_01D 1, _06D0
    ScrCmd_011 0x800C, 1
    ScrCmd_01D 1, _06DC
    ScrCmd_011 0x800C, 2
    ScrCmd_01D 1, _06D0
    ScrCmd_011 0x800C, 3
    ScrCmd_01D 1, _06DC
    ScrCmd_011 0x800C, 0
    ScrCmd_01D 1, _068A
    ScrCmd_011 0x800C, 1
    ScrCmd_01D 1, _0698
    ScrCmd_011 0x800C, 2
    ScrCmd_01D 1, _06A6
    ScrCmd_011 0x800C, 3
    ScrCmd_01D 1, _06B4
    ScrCmd_211 1
    ScrCmd_061
    ScrCmd_002

_0242:
    ScrCmd_060
    ScrCmd_02C 3
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 188, 0
    ScrCmd_042 189, 1
    ScrCmd_042 190, 2
    ScrCmd_042 191, 3
    ScrCmd_042 192, 4
    ScrCmd_043
    ScrCmd_034
    ScrCmd_011 0x800C, 4
    ScrCmd_01C 1, _06C2
    ScrCmd_011 0x800C, 0xFFFE
    ScrCmd_01C 1, _06C2
    ScrCmd_210 0, 0x8004
    ScrCmd_028 0x8005, 0
    ScrCmd_011 0x8004, 6
    ScrCmd_01D 1, _0634
    ScrCmd_211 0
    ScrCmd_011 0x800C, 0
    ScrCmd_01D 1, _06F4
    ScrCmd_011 0x800C, 1
    ScrCmd_01D 1, _06E8
    ScrCmd_011 0x800C, 2
    ScrCmd_01D 1, _06F4
    ScrCmd_011 0x800C, 3
    ScrCmd_01D 1, _06E8
    ScrCmd_011 0x800C, 0
    ScrCmd_01D 1, _068A
    ScrCmd_011 0x800C, 1
    ScrCmd_01D 1, _0698
    ScrCmd_011 0x800C, 2
    ScrCmd_01D 1, _06A6
    ScrCmd_011 0x800C, 3
    ScrCmd_01D 1, _06B4
    ScrCmd_211 1
    ScrCmd_061
    ScrCmd_002

_030C:
    ScrCmd_060
    ScrCmd_02C 3
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 186, 0
    ScrCmd_042 187, 1
    ScrCmd_042 190, 2
    ScrCmd_042 191, 3
    ScrCmd_042 192, 4
    ScrCmd_043
    ScrCmd_034
    ScrCmd_011 0x800C, 4
    ScrCmd_01C 1, _06C2
    ScrCmd_011 0x800C, 0xFFFE
    ScrCmd_01C 1, _06C2
    ScrCmd_210 1, 0x8004
    ScrCmd_028 0x8005, 1
    ScrCmd_011 0x8004, 6
    ScrCmd_01D 1, _0634
    ScrCmd_211 0
    ScrCmd_011 0x800C, 0
    ScrCmd_01D 1, _06D0
    ScrCmd_011 0x800C, 1
    ScrCmd_01D 1, _06DC
    ScrCmd_011 0x800C, 2
    ScrCmd_01D 1, _06D0
    ScrCmd_011 0x800C, 3
    ScrCmd_01D 1, _06DC
    ScrCmd_011 0x800C, 0
    ScrCmd_01D 1, _066E
    ScrCmd_011 0x800C, 1
    ScrCmd_01D 1, _067C
    ScrCmd_011 0x800C, 2
    ScrCmd_01D 1, _06A6
    ScrCmd_011 0x800C, 3
    ScrCmd_01D 1, _06B4
    ScrCmd_211 1
    ScrCmd_061
    ScrCmd_002

_03D6:
    ScrCmd_060
    ScrCmd_02C 3
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 186, 0
    ScrCmd_042 187, 1
    ScrCmd_042 190, 2
    ScrCmd_042 191, 3
    ScrCmd_042 192, 4
    ScrCmd_043
    ScrCmd_034
    ScrCmd_011 0x800C, 4
    ScrCmd_01C 1, _06C2
    ScrCmd_011 0x800C, 0xFFFE
    ScrCmd_01C 1, _06C2
    ScrCmd_210 1, 0x8004
    ScrCmd_028 0x8005, 1
    ScrCmd_011 0x8004, 6
    ScrCmd_01D 1, _0634
    ScrCmd_211 0
    ScrCmd_011 0x800C, 0
    ScrCmd_01D 1, _06F4
    ScrCmd_011 0x800C, 1
    ScrCmd_01D 1, _06E8
    ScrCmd_011 0x800C, 2
    ScrCmd_01D 1, _06F4
    ScrCmd_011 0x800C, 3
    ScrCmd_01D 1, _06E8
    ScrCmd_011 0x800C, 0
    ScrCmd_01D 1, _066E
    ScrCmd_011 0x800C, 1
    ScrCmd_01D 1, _067C
    ScrCmd_011 0x800C, 2
    ScrCmd_01D 1, _06A6
    ScrCmd_011 0x800C, 3
    ScrCmd_01D 1, _06B4
    ScrCmd_211 1
    ScrCmd_061
    ScrCmd_002

_04A0:
    ScrCmd_060
    ScrCmd_02C 3
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 186, 0
    ScrCmd_042 187, 1
    ScrCmd_042 188, 2
    ScrCmd_042 189, 3
    ScrCmd_042 192, 4
    ScrCmd_043
    ScrCmd_034
    ScrCmd_011 0x800C, 4
    ScrCmd_01C 1, _06C2
    ScrCmd_011 0x800C, 0xFFFE
    ScrCmd_01C 1, _06C2
    ScrCmd_210 2, 0x8004
    ScrCmd_028 0x8005, 2
    ScrCmd_011 0x8004, 6
    ScrCmd_01D 1, _0634
    ScrCmd_211 0
    ScrCmd_011 0x800C, 0
    ScrCmd_01D 1, _06D0
    ScrCmd_011 0x800C, 1
    ScrCmd_01D 1, _06DC
    ScrCmd_011 0x800C, 2
    ScrCmd_01D 1, _06D0
    ScrCmd_011 0x800C, 3
    ScrCmd_01D 1, _06DC
    ScrCmd_011 0x800C, 0
    ScrCmd_01D 1, _066E
    ScrCmd_011 0x800C, 1
    ScrCmd_01D 1, _067C
    ScrCmd_011 0x800C, 2
    ScrCmd_01D 1, _068A
    ScrCmd_011 0x800C, 3
    ScrCmd_01D 1, _0698
    ScrCmd_211 1
    ScrCmd_061
    ScrCmd_002

_056A:
    ScrCmd_060
    ScrCmd_02C 3
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 186, 0
    ScrCmd_042 187, 1
    ScrCmd_042 188, 2
    ScrCmd_042 189, 3
    ScrCmd_042 192, 4
    ScrCmd_043
    ScrCmd_034
    ScrCmd_011 0x800C, 4
    ScrCmd_01C 1, _06C2
    ScrCmd_011 0x800C, 0xFFFE
    ScrCmd_01C 1, _06C2
    ScrCmd_210 2, 0x8004
    ScrCmd_028 0x8005, 2
    ScrCmd_011 0x8004, 6
    ScrCmd_01D 1, _0634
    ScrCmd_211 0
    ScrCmd_011 0x800C, 0
    ScrCmd_01D 1, _06F4
    ScrCmd_011 0x800C, 1
    ScrCmd_01D 1, _06E8
    ScrCmd_011 0x800C, 2
    ScrCmd_01D 1, _06F4
    ScrCmd_011 0x800C, 3
    ScrCmd_01D 1, _06E8
    ScrCmd_011 0x800C, 0
    ScrCmd_01D 1, _066E
    ScrCmd_011 0x800C, 1
    ScrCmd_01D 1, _067C
    ScrCmd_011 0x800C, 2
    ScrCmd_01D 1, _068A
    ScrCmd_011 0x800C, 3
    ScrCmd_01D 1, _0698
    ScrCmd_211 1
    ScrCmd_061
    ScrCmd_002

_0634:
    ScrCmd_20F 0x8005, 3
    ScrCmd_01B

_063C:
    ScrCmd_20F 0x8006, 4
    ScrCmd_01B

_0644:
    ScrCmd_028 0x8006, 0
    ScrCmd_01A _063C
    ScrCmd_01B

_0652:
    ScrCmd_028 0x8006, 1
    ScrCmd_01A _063C
    ScrCmd_01B

_0660:
    ScrCmd_028 0x8006, 2
    ScrCmd_01A _063C
    ScrCmd_01B

_066E:
    ScrCmd_01A _0644
    ScrCmd_01A _070C
    ScrCmd_01B

_067C:
    ScrCmd_01A _0644
    ScrCmd_01A _0700
    ScrCmd_01B

_068A:
    ScrCmd_01A _0652
    ScrCmd_01A _070C
    ScrCmd_01B

_0698:
    ScrCmd_01A _0652
    ScrCmd_01A _0700
    ScrCmd_01B

_06A6:
    ScrCmd_01A _0660
    ScrCmd_01A _070C
    ScrCmd_01B

_06B4:
    ScrCmd_01A _0660
    ScrCmd_01A _0700
    ScrCmd_01B

_06C2:
    ScrCmd_0CD 0
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_06D0:
    ScrCmd_05E 0xFF, _0718
    ScrCmd_05F
    ScrCmd_01B

_06DC:
    ScrCmd_05E 0xFF, _0724
    ScrCmd_05F
    ScrCmd_01B

_06E8:
    ScrCmd_05E 0xFF, _0730
    ScrCmd_05F
    ScrCmd_01B

_06F4:
    ScrCmd_05E 0xFF, _073C
    ScrCmd_05F
    ScrCmd_01B

_0700:
    ScrCmd_05E 0xFF, _0748
    ScrCmd_05F
    ScrCmd_01B

_070C:
    ScrCmd_05E 0xFF, _0754
    ScrCmd_05F
    ScrCmd_01B

    .balign 4, 0
_0718:
    MoveAction_00F 3
    MoveAction_045
    EndMovement

    .balign 4, 0
_0724:
    MoveAction_00F 4
    MoveAction_045
    EndMovement

    .balign 4, 0
_0730:
    MoveAction_00E 3
    MoveAction_045
    EndMovement

    .balign 4, 0
_073C:
    MoveAction_00E 4
    MoveAction_045
    EndMovement

    .balign 4, 0
_0748:
    MoveAction_046
    MoveAction_00F 3
    EndMovement

    .balign 4, 0
_0754:
    MoveAction_046
    MoveAction_00E 3
    EndMovement
