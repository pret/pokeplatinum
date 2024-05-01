    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _00AB-.-4
    .long _004C-.-4
    .long _009D-.-4
    .short 0xFD13

_0012:
    ScrCmd_0CD 0
    ScrCmd_02C 0
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _0031
    GoTo _003E
    End

_0031:
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_015
    End

_003E:
    Call _00E8
    ScrCmd_034
    ScrCmd_061
    ScrCmd_015
    End

_004C:
    ScrCmd_0CD 0
    ScrCmd_14D 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01D 1, _0086
    CompareVarToValue 0x800C, 1
    ScrCmd_01D 1, _008B
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _0090
    GoTo _009D
    End

_0086:
    ScrCmd_02C 18
    Return

_008B:
    ScrCmd_02C 19
    Return

_0090:
    ScrCmd_02C 21
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_015
    End

_009D:
    Call _0126
    ScrCmd_034
    ScrCmd_061
    ScrCmd_015
    End

_00AB:
    Call _00B5
    ScrCmd_015
    End

_00B5:
    ScrCmd_22D 2, 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _00D6
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _00DF
    End

_00D6:
    ScrCmd_02C 43
    GoTo _00E8

_00DF:
    ScrCmd_02C 44
    GoTo _0126

_00E8:
    CheckFlag 0x9BA
    ScrCmd_01C 0, _0104
    ScrCmd_1E8 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01D 1, _0120
_0104:
    ScrCmd_11E 0x8004
    ScrCmd_0D5 0, 0x8004
    ScrCmd_02C 1
    ScrCmd_123 0, 0x800C
    ScrCmd_0CD 0
    ScrCmd_02D 0x800C
    ScrCmd_030
    Return

_0120:
    SetFlag 0x110
    Return

_0126:
    ScrCmd_121 0x8004
    ScrCmd_14D 0x8005
    ScrCmd_0D5 0, 0x8004
    ScrCmd_02C 20
    ScrCmd_123 1, 0x800C
    ScrCmd_0CD 0
    ScrCmd_02D 0x800C
    ScrCmd_030
    Return

    .byte 0
    .byte 0
