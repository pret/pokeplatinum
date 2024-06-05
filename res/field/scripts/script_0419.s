    .include "macros/scrcmd.inc"

    .data

    .long _0006-.-4
    .short 0xFD13

_0006:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 1
    GoToIf 1, _00D3
    ScrCmd_1E8 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _004C
    CheckFlag 171
    GoToIf 0, _0057
    ScrCmd_1E9 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _0057
    GoTo _0095

_004C:
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0057:
    CheckFlag 171
    CallIf 0, _00DE
    SetFlag 171
    SetFlag 1
    ScrCmd_02C 1
    ScrCmd_04E 0x486
    ScrCmd_04F
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_1EA
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    End

_0095:
    CheckFlag 172
    CallIf 0, _00E4
    SetFlag 172
    SetFlag 1
    ScrCmd_02C 2
    ScrCmd_04E 0x486
    ScrCmd_04F
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_1EB
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    End

_00D3:
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00DE:
    ScrCmd_260 26
    Return

_00E4:
    ScrCmd_260 27
    Return

    .byte 0
    .byte 0
