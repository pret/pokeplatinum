    .include "macros/scrcmd.inc"

    .data

    .long _000E-.-4
    .long _005E-.-4
    .long _0079-.-4
    .short 0xFD13

_000E:
    ScrCmd_22D 2, 0x4000
    CompareVar 0x4000, 0
    GoToIf 1, _0058
    ScrCmd_07E 0x1C6, 1, 0x4000
    CompareVar 0x4000, 0
    GoToIf 1, _0058
    ScrCmd_28B 0, 0x4000
    CompareVar 0x4000, 0
    GoToIf 1, _0058
    CheckFlag 0x158
    GoToIf 1, _0058
    ClearFlag 0x240
    End

_0058:
    SetFlag 0x240
    End

_005E:
    CheckFlag 142
    GoToIf 1, _006B
    End

_006B:
    SetFlag 0x240
    ScrCmd_065 0
    ClearFlag 142
    End

_0079:
    ScrCmd_060
    ScrCmd_049 0x5DC
    ScrCmd_04B 0x5DC
    ScrCmd_02C 0
    ScrCmd_034
    SetFlag 142
    ScrCmd_2BD 0x1EB, 50
    ClearFlag 142
    ScrCmd_0EC 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _014C
    ScrCmd_2BC 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _00D8
    SetFlag 0x158
_00BC:
    SetFlag 0x241
    CompareVar 0x40F8, 2
    GoToIf 1, _00E3
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00D8:
    ScrCmd_02C 1
    ScrCmd_034
    GoTo _00BC

_00E3:
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_003 30, 0x800C
    ScrCmd_0BC 6, 3, 0, 0
    ScrCmd_0BD
    ScrCmd_0BC 6, 3, 1, 0
    ScrCmd_0BD
    ScrCmd_0BC 6, 3, 0, 0
    ScrCmd_0BD
    ScrCmd_0BC 6, 3, 1, 0
    ScrCmd_0BD
    ScrCmd_0BC 6, 6, 0, 0
    ScrCmd_0BD
    ScrCmd_003 120, 0x800C
    ScrCmd_0BE 43, 0, 8, 6, 1
    ScrCmd_0BC 6, 6, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    End

_014C:
    ScrCmd_0EB
    ScrCmd_061
    End

    .byte 0
    .byte 0
