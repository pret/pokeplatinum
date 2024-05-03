    .include "macros/scrcmd.inc"

    .data

    .long _004E-.-4
    .long _0012-.-4
    .long _0083-.-4
    .long _009A-.-4
    .short 0xFD13

_0012:
    CheckFlag 186
    GoToIf 0, _002A
    CheckFlag 186
    GoToIf 1, _003C
    End

_002A:
    ScrCmd_18A 2, 0x131, 229
    ScrCmd_18A 3, 0x132, 229
    End

_003C:
    ScrCmd_18A 0, 0x131, 229
    ScrCmd_18A 1, 0x132, 229
    End

_004E:
    ScrCmd_15B 6, 0x4000
    CompareVarToValue 0x4000, 1
    CallIf 1, _0079
    CheckFlag 186
    GoToIf 0, _002A
    CheckFlag 186
    GoToIf 1, _003C
    End

_0079:
    SetFlag 0x234
    ClearFlag 0x298
    Return

_0083:
    ScrCmd_036 5, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_009A:
    ScrCmd_060
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_066 0x8004, 0x8005
    ApplyMovement 241, _00E8
    WaitMovement
    ScrCmd_003 15, 0x800C
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 0
    ScrCmd_034
    ApplyMovement 2, _00F8
    WaitMovement
    ScrCmd_065 2
    ApplyMovement 241, _00F0
    WaitMovement
    ScrCmd_067
    SetVar 0x4084, 1
    ScrCmd_061
    End

    .balign 4, 0
_00E8:
    MoveAction_00C 6
    EndMovement

    .balign 4, 0
_00F0:
    MoveAction_00D 6
    EndMovement

    .balign 4, 0
_00F8:
    MoveAction_00C 3
    MoveAction_00E
    MoveAction_00C 4
    EndMovement
