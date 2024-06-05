    .include "macros/scrcmd.inc"

    .data

    .long _005E-.-4
    .long _0062-.-4
    .long _00AF-.-4
    .long _0178-.-4
    .long _0242-.-4
    .long _030C-.-4
    .long _03D6-.-4
    .long _04A0-.-4
    .long _056A-.-4
    .long _00A0-.-4
    .long _0634-.-4
    .long _063C-.-4
    .long _0644-.-4
    .long _0652-.-4
    .long _0660-.-4
    .long _066E-.-4
    .long _067C-.-4
    .long _068A-.-4
    .long _0698-.-4
    .long _06A6-.-4
    .long _06B4-.-4
    .long _012B-.-4
    .long _00ED-.-4
    .short 0xFD13

_005E:
    ScrCmd_20E
    End

_0062:
    ScrCmd_060
    ScrCmd_049 0x5F1
    ScrCmd_02C 0
    ScrCmd_030
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 125, 0, 5, 2, 1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    SetVar 0x40DA, 2
    ScrCmd_202 1
    ScrCmd_061
    End

_00A0:
    ScrCmd_060
    SetVar 0x40DA, 2
    ScrCmd_202 1
    ScrCmd_061
    End

_00AF:
    ScrCmd_060
    ScrCmd_049 0x5F1
    ScrCmd_02C 1
    ScrCmd_030
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 125, 0, 5, 2, 1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    SetVar 0x40DA, 2
    ScrCmd_202 1
    ScrCmd_061
    End

_00ED:
    ScrCmd_060
    ScrCmd_049 0x5F1
    ScrCmd_02C 2
    ScrCmd_030
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 125, 0, 5, 2, 1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    SetVar 0x40DA, 2
    ScrCmd_202 1
    ScrCmd_061
    End

_012B:
    ScrCmd_060
    ScrCmd_02C 5
    ScrCmd_03E 0x800C
    ScrCmd_034
    GoToIfNe 0x800C, 0, _0174
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 125, 0, 5, 2, 1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    SetVar 0x40DA, 2
    ScrCmd_202 1
    ScrCmd_061
    End

_0174:
    ScrCmd_061
    End

_0178:
    ScrCmd_060
    ScrCmd_02C 3
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 188, 0
    ScrCmd_042 189, 1
    ScrCmd_042 190, 2
    ScrCmd_042 191, 3
    ScrCmd_042 192, 4
    ScrCmd_043
    ScrCmd_034
    GoToIfEq 0x800C, 4, _06C2
    GoToIfEq 0x800C, -2, _06C2
    ScrCmd_210 0, 0x8004
    SetVar 0x8005, 0
    CallIfEq 0x8004, 6, _0634
    ScrCmd_211 0
    CallIfEq 0x800C, 0, _06D0
    CallIfEq 0x800C, 1, _06DC
    CallIfEq 0x800C, 2, _06D0
    CallIfEq 0x800C, 3, _06DC
    CallIfEq 0x800C, 0, _068A
    CallIfEq 0x800C, 1, _0698
    CallIfEq 0x800C, 2, _06A6
    CallIfEq 0x800C, 3, _06B4
    ScrCmd_211 1
    ScrCmd_061
    End

_0242:
    ScrCmd_060
    ScrCmd_02C 3
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 188, 0
    ScrCmd_042 189, 1
    ScrCmd_042 190, 2
    ScrCmd_042 191, 3
    ScrCmd_042 192, 4
    ScrCmd_043
    ScrCmd_034
    GoToIfEq 0x800C, 4, _06C2
    GoToIfEq 0x800C, -2, _06C2
    ScrCmd_210 0, 0x8004
    SetVar 0x8005, 0
    CallIfEq 0x8004, 6, _0634
    ScrCmd_211 0
    CallIfEq 0x800C, 0, _06F4
    CallIfEq 0x800C, 1, _06E8
    CallIfEq 0x800C, 2, _06F4
    CallIfEq 0x800C, 3, _06E8
    CallIfEq 0x800C, 0, _068A
    CallIfEq 0x800C, 1, _0698
    CallIfEq 0x800C, 2, _06A6
    CallIfEq 0x800C, 3, _06B4
    ScrCmd_211 1
    ScrCmd_061
    End

_030C:
    ScrCmd_060
    ScrCmd_02C 3
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 186, 0
    ScrCmd_042 187, 1
    ScrCmd_042 190, 2
    ScrCmd_042 191, 3
    ScrCmd_042 192, 4
    ScrCmd_043
    ScrCmd_034
    GoToIfEq 0x800C, 4, _06C2
    GoToIfEq 0x800C, -2, _06C2
    ScrCmd_210 1, 0x8004
    SetVar 0x8005, 1
    CallIfEq 0x8004, 6, _0634
    ScrCmd_211 0
    CallIfEq 0x800C, 0, _06D0
    CallIfEq 0x800C, 1, _06DC
    CallIfEq 0x800C, 2, _06D0
    CallIfEq 0x800C, 3, _06DC
    CallIfEq 0x800C, 0, _066E
    CallIfEq 0x800C, 1, _067C
    CallIfEq 0x800C, 2, _06A6
    CallIfEq 0x800C, 3, _06B4
    ScrCmd_211 1
    ScrCmd_061
    End

_03D6:
    ScrCmd_060
    ScrCmd_02C 3
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 186, 0
    ScrCmd_042 187, 1
    ScrCmd_042 190, 2
    ScrCmd_042 191, 3
    ScrCmd_042 192, 4
    ScrCmd_043
    ScrCmd_034
    GoToIfEq 0x800C, 4, _06C2
    GoToIfEq 0x800C, -2, _06C2
    ScrCmd_210 1, 0x8004
    SetVar 0x8005, 1
    CallIfEq 0x8004, 6, _0634
    ScrCmd_211 0
    CallIfEq 0x800C, 0, _06F4
    CallIfEq 0x800C, 1, _06E8
    CallIfEq 0x800C, 2, _06F4
    CallIfEq 0x800C, 3, _06E8
    CallIfEq 0x800C, 0, _066E
    CallIfEq 0x800C, 1, _067C
    CallIfEq 0x800C, 2, _06A6
    CallIfEq 0x800C, 3, _06B4
    ScrCmd_211 1
    ScrCmd_061
    End

_04A0:
    ScrCmd_060
    ScrCmd_02C 3
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 186, 0
    ScrCmd_042 187, 1
    ScrCmd_042 188, 2
    ScrCmd_042 189, 3
    ScrCmd_042 192, 4
    ScrCmd_043
    ScrCmd_034
    GoToIfEq 0x800C, 4, _06C2
    GoToIfEq 0x800C, -2, _06C2
    ScrCmd_210 2, 0x8004
    SetVar 0x8005, 2
    CallIfEq 0x8004, 6, _0634
    ScrCmd_211 0
    CallIfEq 0x800C, 0, _06D0
    CallIfEq 0x800C, 1, _06DC
    CallIfEq 0x800C, 2, _06D0
    CallIfEq 0x800C, 3, _06DC
    CallIfEq 0x800C, 0, _066E
    CallIfEq 0x800C, 1, _067C
    CallIfEq 0x800C, 2, _068A
    CallIfEq 0x800C, 3, _0698
    ScrCmd_211 1
    ScrCmd_061
    End

_056A:
    ScrCmd_060
    ScrCmd_02C 3
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 186, 0
    ScrCmd_042 187, 1
    ScrCmd_042 188, 2
    ScrCmd_042 189, 3
    ScrCmd_042 192, 4
    ScrCmd_043
    ScrCmd_034
    GoToIfEq 0x800C, 4, _06C2
    GoToIfEq 0x800C, -2, _06C2
    ScrCmd_210 2, 0x8004
    SetVar 0x8005, 2
    CallIfEq 0x8004, 6, _0634
    ScrCmd_211 0
    CallIfEq 0x800C, 0, _06F4
    CallIfEq 0x800C, 1, _06E8
    CallIfEq 0x800C, 2, _06F4
    CallIfEq 0x800C, 3, _06E8
    CallIfEq 0x800C, 0, _066E
    CallIfEq 0x800C, 1, _067C
    CallIfEq 0x800C, 2, _068A
    CallIfEq 0x800C, 3, _0698
    ScrCmd_211 1
    ScrCmd_061
    End

_0634:
    ScrCmd_20F 0x8005, 3
    Return

_063C:
    ScrCmd_20F 0x8006, 4
    Return

_0644:
    SetVar 0x8006, 0
    Call _063C
    Return

_0652:
    SetVar 0x8006, 1
    Call _063C
    Return

_0660:
    SetVar 0x8006, 2
    Call _063C
    Return

_066E:
    Call _0644
    Call _070C
    Return

_067C:
    Call _0644
    Call _0700
    Return

_068A:
    Call _0652
    Call _070C
    Return

_0698:
    Call _0652
    Call _0700
    Return

_06A6:
    Call _0660
    Call _070C
    Return

_06B4:
    Call _0660
    Call _0700
    Return

_06C2:
    ScrCmd_0CD 0
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_06D0:
    ApplyMovement 0xFF, _0718
    WaitMovement
    Return

_06DC:
    ApplyMovement 0xFF, _0724
    WaitMovement
    Return

_06E8:
    ApplyMovement 0xFF, _0730
    WaitMovement
    Return

_06F4:
    ApplyMovement 0xFF, _073C
    WaitMovement
    Return

_0700:
    ApplyMovement 0xFF, _0748
    WaitMovement
    Return

_070C:
    ApplyMovement 0xFF, _0754
    WaitMovement
    Return

    .balign 4, 0
_0718:
    MoveAction_00F 3
    MoveAction_045
    EndMovement

    .balign 4, 0
_0724:
    MoveAction_00F 4
    MoveAction_045
    EndMovement

    .balign 4, 0
_0730:
    MoveAction_00E 3
    MoveAction_045
    EndMovement

    .balign 4, 0
_073C:
    MoveAction_00E 4
    MoveAction_045
    EndMovement

    .balign 4, 0
_0748:
    MoveAction_046
    MoveAction_00F 3
    EndMovement

    .balign 4, 0
_0754:
    MoveAction_046
    MoveAction_00E 3
    EndMovement
