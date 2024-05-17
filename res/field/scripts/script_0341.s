    .include "macros/scrcmd.inc"

    .data

    .long _0022-.-4
    .long _0028-.-4
    .long _0051-.-4
    .long _007A-.-4
    .long _00A3-.-4
    .long _00DF-.-4
    .long _0174-.-4
    .long _00CC-.-4
    .short 0xFD13

_0022:
    SetFlag 0x9DD
    End

_0028:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 0x15E
    GoToIf 1, _0046
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0046:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0051:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 0x15E
    GoToIf 1, _006F
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_006F:
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_007A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 0x15E
    GoToIf 1, _0098
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0098:
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00A3:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 0x15E
    GoToIf 1, _00C1
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00C1:
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00CC:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00DF:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_07E 0x1B8, 1, 0x800C
    CompareVarToValue 0x800C, 1
    GoToIf 1, _0107
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0107:
    ScrCmd_02C 10
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _012A
    CompareVarToValue 0x800C, 1
    GoToIf 1, _015E
    End

_012A:
    ScrCmd_0CD 0
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_04B 0x5DC
    ScrCmd_049 0x608
    ApplyMovement 5, _0164
    ApplyMovement 6, _016C
    WaitMovement
    SetFlag 0x224
    ScrCmd_065 5
    ScrCmd_065 6
    ScrCmd_034
    ScrCmd_061
    End

_015E:
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_0164:
    MoveAction_012
    EndMovement

    .balign 4, 0
_016C:
    MoveAction_013
    EndMovement

_0174:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
