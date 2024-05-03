    .include "macros/scrcmd.inc"

    .data

    .long _0022-.-4
    .long _0026-.-4
    .long _0041-.-4
    .long _009E-.-4
    .long _00C4-.-4
    .long _020A-.-4
    .long _021D-.-4
    .long _0232-.-4
    .short 0xFD13

_0022:
    ScrCmd_2F2
    End

_0026:
    CheckFlag 142
    GoToIf 1, _0033
    End

_0033:
    ScrCmd_31F
    SetVar 0x4055, 14
    ScrCmd_065 128
    End

_0041:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 13
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0061
    ScrCmd_034
    ScrCmd_061
    End

_0061:
    ScrCmd_0CD 0
    ScrCmd_02C 14
    ScrCmd_034
    ScrCmd_270 2, 1
    SetVar 0x40AA, 1
    ScrCmd_049 0x5D2
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x10B, 0, 32, 17, 1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    End

_009E:
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x245, 0, 89, 57, 1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    End

_00C4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_04C 0x1E7, 0
    ScrCmd_02C 2
    ScrCmd_04D
    ScrCmd_034
    SetFlag 142
    ScrCmd_319 0x1E7, 47
    ClearFlag 142
    ScrCmd_0EC 0x800C
    ScrCmd_314 0x800C
    CompareVarToValue 0x800C, 2
    GoToIf 1, _0204
    CompareVarToValue 0x800C, 3
    GoToIf 1, _0204
    CompareVarToValue 0x800C, 5
    GoToIf 1, _014E
    CompareVarToValue 0x800C, 6
    GoToIf 1, _014E
    CompareVarToValue 0x800C, 4
    GoToIf 1, _016E
    ScrCmd_311 130
    ScrCmd_311 129
    ApplyMovement 129, _0250
    WaitMovement
    ScrCmd_02C 3
    ScrCmd_034
    ScrCmd_02C 4
    GoTo _0194

_014E:
    ScrCmd_311 130
    ScrCmd_311 129
    ApplyMovement 129, _0250
    WaitMovement
    ScrCmd_02C 3
    ScrCmd_034
    ScrCmd_02C 6
    GoTo _0194

_016E:
    SetFlag 0x121
    SetFlag 0x250
    ClearFlag 0x278
    ScrCmd_311 130
    ScrCmd_311 129
    ApplyMovement 129, _0250
    WaitMovement
    ScrCmd_02C 3
    ScrCmd_034
    ScrCmd_02C 5
_0194:
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_066 0x8004, 0x8005
    ApplyMovement 241, _0280
    ApplyMovement 130, _026C
    ApplyMovement 129, _0258
    ApplyMovement 0xFF, _0244
    WaitMovement
    ScrCmd_02C 7
    ScrCmd_02C 8
    ScrCmd_02C 9
    ScrCmd_02C 10
    ScrCmd_034
    ApplyMovement 130, _0274
    WaitMovement
    ScrCmd_312 130
    ApplyMovement 241, _0288
    WaitMovement
    ScrCmd_067
    ScrCmd_02C 11
    ApplyMovement 129, _0264
    WaitMovement
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0204:
    ScrCmd_0EB
    ScrCmd_061
    End

_020A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_021D:
    ScrCmd_060
    ScrCmd_04C 0x1E7, 0
    ScrCmd_02C 0
    ScrCmd_04D
    ScrCmd_032
    ScrCmd_034
    ScrCmd_061
    End

_0232:
    ScrCmd_060
    ScrCmd_0CD 0
    ScrCmd_02C 1
    ScrCmd_032
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_0244:
    MoveAction_021
    MoveAction_04B
    EndMovement

    .balign 4, 0
_0250:
    MoveAction_075 2
    EndMovement

    .balign 4, 0
_0258:
    MoveAction_021
    MoveAction_04B
    EndMovement

    .balign 4, 0
_0264:
    MoveAction_020
    EndMovement

    .balign 4, 0
_026C:
    MoveAction_075
    EndMovement

    .balign 4, 0
_0274:
    MoveAction_076
    MoveAction_00D 5
    EndMovement

    .balign 4, 0
_0280:
    MoveAction_00D 5
    EndMovement

    .balign 4, 0
_0288:
    MoveAction_00C 5
    EndMovement
