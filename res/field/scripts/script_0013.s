    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _0054-.-4
    .long _0067-.-4
    .long _007A-.-4
    .short 0xFD13

_0012:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ApplyMovement 0, _0044
    WaitMovement
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_003 8, 0x800C
    ApplyMovement 0, _004C
    WaitMovement
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_0044:
    MoveAction_003
    EndMovement

    .balign 4, 0
_004C:
    MoveAction_002
    EndMovement

_0054:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0067:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_007A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 4
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _009C
    GoTo _015B

_009C:
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_034
    ScrCmd_244 0, 0x800C, 0x8000, 0x8001
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    CompareVar 0x800C, 0
    GoToIf 1, _015B
    ScrCmd_02C 5
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_034
    ScrCmd_244 0, 0x800C, 0x8002, 0x8003
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    CompareVar 0x800C, 0
    GoToIf 1, _015B
    ScrCmd_249 0x800C, 0x8000, 0x8001, 0x8002, 0x8003
    CompareVar 0x800C, 0xFF
    GoToIf 1, _0131
    CompareVar 0x800C, 0
    GoToIf 1, _0131
    GoTo _0166

_0131:
    ScrCmd_2AA 0x800C, 0x8000, 0x8001, 0x8002, 0x8003
    CompareVar 0x800C, 0
    GoToIf 1, _0150
    GoTo _0171

_0150:
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_015B:
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0166:
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0171:
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_2AC
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
