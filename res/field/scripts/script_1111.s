    .include "macros/scrcmd.inc"

    .data

    .long _0006-.-4
    .short 0xFD13

_0006:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_11C 0x40CE
    ScrCmd_029 0x8008, 0x40CE
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _0034
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _003E
    ScrCmd_002

_0034:
    ScrCmd_347 0, 2
    ScrCmd_016 _0048

_003E:
    ScrCmd_347 0, 1
    ScrCmd_016 _0048

_0048:
    ScrCmd_11D 20, 1, 0x40CE, 0x40CE
    ScrCmd_02C 0
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 117, 0
    ScrCmd_042 116, 1
    ScrCmd_042 124, 2
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _008F
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _00CA
    ScrCmd_016 _0152

_008F:
    ScrCmd_003 1, 0x800C
    ScrCmd_11C 0x40CE
    ScrCmd_11B 0x1CE, 0, 18, 2, 1
    ScrCmd_011 0x40CE, 0
    ScrCmd_01C 1, _0164
    ScrCmd_028 0x8004, 0
    ScrCmd_01A _0105
    ScrCmd_028 0x40CE, 0
    ScrCmd_016 _0147

_00CA:
    ScrCmd_003 1, 0x800C
    ScrCmd_11C 0x40CE
    ScrCmd_11B 0x1CD, 1, 18, 2, 1
    ScrCmd_011 0x40CE, 1
    ScrCmd_01C 1, _0164
    ScrCmd_028 0x8004, 1
    ScrCmd_01A _0105
    ScrCmd_028 0x40CE, 1
    ScrCmd_016 _0147

_0105:
    ScrCmd_028 0x40CE, 0xFFFF
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _013D
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _0142
    ScrCmd_034
    ScrCmd_05E 0, _017C
    ScrCmd_05F
    ScrCmd_04B 0x5DC
    ScrCmd_23C 0x8004, 4
    ScrCmd_01B

_013D:
    ScrCmd_02C 2
    ScrCmd_01B

_0142:
    ScrCmd_02C 1
    ScrCmd_01B

_0147:
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0152:
    ScrCmd_028 0x40CE, 0xFFFF
    ScrCmd_003 1, 0x800C
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0164:
    ScrCmd_028 0x40CE, 0xFFFF
    ScrCmd_003 1, 0x800C
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_017C:
    MoveAction_021
    EndMovement
