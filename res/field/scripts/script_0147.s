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
    ScrCmd_01C 1, _0068
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _0072
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _007C
    ScrCmd_011 0x8008, 3
    ScrCmd_01C 1, _0086
    ScrCmd_011 0x8008, 4
    ScrCmd_01C 1, _0090
    ScrCmd_011 0x8008, 5
    ScrCmd_01C 1, _009A
    End

_0068:
    ScrCmd_347 0, 5
    ScrCmd_016 _00A6

_0072:
    ScrCmd_347 0, 4
    ScrCmd_016 _00A6

_007C:
    ScrCmd_347 0, 3
    ScrCmd_016 _00A6

_0086:
    ScrCmd_347 0, 2
    ScrCmd_016 _00A6

_0090:
    ScrCmd_347 0, 1
    ScrCmd_016 _00A6

_009A:
    ScrCmd_347 0, 0
    ScrCmd_016 _00A6
    End

_00A6:
    ScrCmd_11D 20, 1, 0x40CE, 0x40CE
    ScrCmd_02C 0
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 120, 0
    ScrCmd_042 119, 1
    ScrCmd_042 118, 2
    ScrCmd_042 117, 3
    ScrCmd_042 116, 4
    ScrCmd_042 121, 5
    ScrCmd_042 124, 6
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _02BC
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _026D
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _021E
    ScrCmd_011 0x8008, 3
    ScrCmd_01C 1, _01CF
    ScrCmd_011 0x8008, 4
    ScrCmd_01C 1, _0180
    ScrCmd_011 0x8008, 5
    ScrCmd_01C 1, _0131
    ScrCmd_016 _03F6

_0131:
    ScrCmd_003 1, 0x800C
    ScrCmd_11C 0x40CE
    ScrCmd_11B 0x236, 1, 18, 2, 1
    ScrCmd_011 0x40CE, 5
    ScrCmd_01C 1, _03DF
    ScrCmd_011 0x40CE, 5
    ScrCmd_01D 2, _030B
    ScrCmd_011 0x40CE, 5
    ScrCmd_01D 0, _0316
    ScrCmd_01A _0321
    ScrCmd_028 0x40CE, 5
    ScrCmd_016 _033F

_0180:
    ScrCmd_003 1, 0x800C
    ScrCmd_11C 0x40CE
    ScrCmd_11B 137, 2, 18, 2, 1
    ScrCmd_011 0x40CE, 4
    ScrCmd_01C 1, _03DF
    ScrCmd_011 0x40CE, 4
    ScrCmd_01D 2, _030B
    ScrCmd_011 0x40CE, 4
    ScrCmd_01D 0, _0316
    ScrCmd_01A _0321
    ScrCmd_028 0x40CE, 4
    ScrCmd_016 _033F

_01CF:
    ScrCmd_003 1, 0x800C
    ScrCmd_11C 0x40CE
    ScrCmd_11B 138, 2, 18, 2, 1
    ScrCmd_011 0x40CE, 3
    ScrCmd_01C 1, _03DF
    ScrCmd_011 0x40CE, 3
    ScrCmd_01D 2, _030B
    ScrCmd_011 0x40CE, 3
    ScrCmd_01D 0, _0316
    ScrCmd_01A _0321
    ScrCmd_028 0x40CE, 3
    ScrCmd_016 _033F

_021E:
    ScrCmd_003 1, 0x800C
    ScrCmd_11C 0x40CE
    ScrCmd_11B 139, 2, 18, 2, 1
    ScrCmd_011 0x40CE, 2
    ScrCmd_01C 1, _03DF
    ScrCmd_011 0x40CE, 2
    ScrCmd_01D 2, _030B
    ScrCmd_011 0x40CE, 2
    ScrCmd_01D 0, _0316
    ScrCmd_01A _0321
    ScrCmd_028 0x40CE, 2
    ScrCmd_016 _033F

_026D:
    ScrCmd_003 1, 0x800C
    ScrCmd_11C 0x40CE
    ScrCmd_11B 140, 2, 18, 2, 1
    ScrCmd_011 0x40CE, 1
    ScrCmd_01C 1, _03DF
    ScrCmd_011 0x40CE, 1
    ScrCmd_01D 2, _030B
    ScrCmd_011 0x40CE, 1
    ScrCmd_01D 0, _0316
    ScrCmd_01A _0321
    ScrCmd_028 0x40CE, 1
    ScrCmd_016 _033F

_02BC:
    ScrCmd_003 1, 0x800C
    ScrCmd_11C 0x40CE
    ScrCmd_11B 141, 1, 18, 2, 1
    ScrCmd_011 0x40CE, 0
    ScrCmd_01C 1, _03DF
    ScrCmd_011 0x40CE, 0
    ScrCmd_01D 2, _030B
    ScrCmd_011 0x40CE, 0
    ScrCmd_01D 0, _0316
    ScrCmd_01A _0321
    ScrCmd_028 0x40CE, 0
    ScrCmd_016 _033F

_030B:
    ScrCmd_02C 2
    ScrCmd_028 0x8004, 0
    ScrCmd_01B

_0316:
    ScrCmd_02C 3
    ScrCmd_028 0x8004, 1
    ScrCmd_01B

_0321:
    ScrCmd_028 0x40CE, 0xFFFF
    ScrCmd_034
    ScrCmd_05E 0, _0410
    ScrCmd_05F
    ScrCmd_04B 0x5DC
    ScrCmd_23C 0x8004, 4
    ScrCmd_01B

_033F:
    ScrCmd_029 0x8008, 0x40CE
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _0395
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _03A0
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _03AB
    ScrCmd_011 0x8008, 3
    ScrCmd_01C 1, _03B6
    ScrCmd_011 0x8008, 4
    ScrCmd_01C 1, _03C1
    ScrCmd_011 0x8008, 5
    ScrCmd_01C 1, _03CC
    End

_0395:
    ScrCmd_02C 9
    ScrCmd_016 _03D7
    End

_03A0:
    ScrCmd_02C 8
    ScrCmd_016 _03D7
    End

_03AB:
    ScrCmd_02C 7
    ScrCmd_016 _03D7
    End

_03B6:
    ScrCmd_02C 6
    ScrCmd_016 _03D7
    End

_03C1:
    ScrCmd_02C 5
    ScrCmd_016 _03D7
    End

_03CC:
    ScrCmd_02C 10
    ScrCmd_016 _03D7
    End

_03D7:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03DF:
    ScrCmd_028 0x40CE, 0xFFFF
    ScrCmd_003 1, 0x800C
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03F6:
    ScrCmd_028 0x40CE, 0xFFFF
    ScrCmd_003 1, 0x800C
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_0410:
    MoveAction_021
    EndMovement
