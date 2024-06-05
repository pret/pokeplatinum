    .include "macros/scrcmd.inc"

    .data

    .long _004F-.-4
    .long _0062-.-4
    .long _0093-.-4
    .long _00A6-.-4
    .long _00B9-.-4
    .long _00CC-.-4
    .long _0123-.-4
    .long _013A-.-4
    .long _0151-.-4
    .long _0034-.-4
    .long _0032-.-4
    .long _0168-.-4
    .short 0xFD13

_0032:
    End

_0034:
    ScrCmd_1BF 0x4000
    CompareVar 0x4000, 0
    GoToIf 5, _0047
    End

_0047:
    ScrCmd_189 3, 3
    End

_004F:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0062:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_15B 4, 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _0088
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0088:
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0093:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00A6:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00B9:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00CC:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_134 9, 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _0118
    ScrCmd_11E 0x800C
    CompareVar 0x800C, 50
    GoToIf 0, _010D
    ScrCmd_02C 10
    SetVar 0x8004, 9
    ScrCmd_014 0x7D9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_010D:
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0118:
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0123:
    ScrCmd_036 12, 0, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_013A:
    ScrCmd_036 13, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_0151:
    ScrCmd_036 14, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_0168:
    ScrCmd_060
    ApplyMovement 0xFF, _0218
    WaitMovement
    ScrCmd_014 0x7FA
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_186 18, 0x8004, 0x295
    ClearFlag 0x21E
    ScrCmd_064 18
    ScrCmd_062 18
    ApplyMovement 0xFF, _0228
    ApplyMovement 18, _01E8
    WaitMovement
    ScrCmd_02C 0
    ScrCmd_034
    ApplyMovement 18, _01F0
    WaitMovement
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 1
    ApplyMovement 18, _0208
    WaitMovement
    ScrCmd_02C 2
    ScrCmd_034
    ApplyMovement 18, _0210
    WaitMovement
    ScrCmd_065 18
    ScrCmd_014 0x7FB
    SetVar 0x4073, 1
    ScrCmd_061
    End

    .balign 4, 0
_01E8:
    MoveAction_011 7
    EndMovement

    .balign 4, 0
_01F0:
    MoveAction_026
    MoveAction_03F
    MoveAction_027
    MoveAction_03F
    MoveAction_025
    EndMovement

    .balign 4, 0
_0208:
    MoveAction_04B
    EndMovement

    .balign 4, 0
_0210:
    MoveAction_010 7
    EndMovement

    .balign 4, 0
_0218:
    MoveAction_03F
    MoveAction_04B
    MoveAction_03F 3
    EndMovement

    .balign 4, 0
_0228:
    MoveAction_000
    EndMovement
