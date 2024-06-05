    .include "macros/scrcmd.inc"

    .data

    .long _0020-.-4
    .long _0033-.-4
    .long _0046-.-4
    .long _0057-.-4
    .long _006A-.-4
    .long _0134-.-4
    .long _001E-.-4
    .short 0xFD13

_001E:
    End

_0020:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0033:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0046:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0057:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_006A:
    ScrCmd_060
    ApplyMovement 4, _00FC
    ApplyMovement 0xFF, _00F0
    WaitMovement
    ScrCmd_02C 0
    ScrCmd_034
    ApplyMovement 4, _0110
    WaitMovement
    ClearFlag 0x1BB
    ScrCmd_186 5, 12, 15
    ScrCmd_188 5, 16
    ScrCmd_189 5, 2
    ScrCmd_064 5
    ScrCmd_065 4
    SetFlag 113
    SetVar 0x411D, 1
    ScrCmd_003 30, 0x800C
    ScrCmd_02C 1
    ApplyMovement 5, _0110
    WaitMovement
    ClearFlag 0x1C2
    ScrCmd_186 4, 12, 15
    ScrCmd_188 4, 16
    ScrCmd_189 4, 2
    ScrCmd_064 4
    ScrCmd_065 5
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_00F0:
    MoveAction_03F 9
    MoveAction_023
    EndMovement

    .balign 4, 0
_00FC:
    MoveAction_026
    MoveAction_04B
    MoveAction_03F 2
    MoveAction_00E 2
    EndMovement

    .balign 4, 0
_0110:
    MoveAction_001
    MoveAction_03D
    MoveAction_003
    MoveAction_03E
    MoveAction_000
    MoveAction_03E
    MoveAction_002
    MoveAction_03D
    EndMovement

_0134:
    ScrCmd_07E 0x1D3, 1, 0x800C
    GoToIfEq 0x800C, 0, _01AA
    ScrCmd_28B 3, 0x800C
    GoToIfEq 0x800C, 0, _01AA
    GoToIfUnset 129, _01AA
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_0CD 0
    ScrCmd_0D1 1, 0x1D3
    ScrCmd_02C 6
    ScrCmd_034
    ScrCmd_049 0x5FB
    ScrCmd_0BC 6, 1, 0, 0x7FFF
    ScrCmd_0BD
    ScrCmd_065 6
    ScrCmd_04B 0x5FB
    ScrCmd_0BC 6, 1, 1, 0x7FFF
    ScrCmd_0BD
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01AA:
    End
