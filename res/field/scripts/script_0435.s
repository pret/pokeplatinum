    .include "macros/scrcmd.inc"

    .data

    .long _0016-.-4
    .long _001C-.-4
    .long _00A4-.-4
    .long _00B7-.-4
    .long _00CE-.-4
    .short 0xFD13

_0016:
    SetFlag 0x9E6
    End

_001C:
    CheckFlag 0x994
    ScrCmd_01D 1, _009F
    ScrCmd_200 0x4000
    CompareVarToValue 0x4000, 80
    ScrCmd_01C 1, _0047
    CompareVarToValue 0x4000, 0x15F
    ScrCmd_01C 1, _0047
    End

_0047:
    CheckFlag 3
    ScrCmd_01C 1, _009D
    ScrCmd_069 0x4000, 0x4001
    CompareVarToValue 0x4000, 0x12B
    ScrCmd_01C 0, _009D
    CompareVarToValue 0x4000, 0x132
    ScrCmd_01C 2, _009D
    CompareVarToValue 0x4001, 0x240
    ScrCmd_01C 1, _008E
    CompareVarToValue 0x4001, 0x2A9
    ScrCmd_01C 1, _008E
    End

_008E:
    SetFlag 3
    SetFlag 0x994
    ScrCmd_2BF
    ScrCmd_0C9 1
    End

_009D:
    End

_009F:
    ScrCmd_0C9 1
    Return

_00A4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00B7:
    ScrCmd_036 1, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_00CE:
    ScrCmd_036 2, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

    .byte 0
    .byte 0
    .byte 0
