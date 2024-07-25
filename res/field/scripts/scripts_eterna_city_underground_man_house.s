#include "macros/scrcmd.inc"

    .data

    ScriptEntry _001A
    ScriptEntry _0634
    ScriptEntry _0647
    ScriptEntry _0674
    ScriptEntry _0685
    ScriptEntry _0747
    .short 0xFD13

_001A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe 0x40B6, 9, _00B2
    GoToIfSet 0x113, _0164
    GoToIfSet 121, _007E
    Message 0
    SetVar 0x8004, 0x1AC
    SetVar 0x8005, 1
    CallCommonScript 0x7FC
    SetFlag 121
    ClearFlag 0x111
    Message 1
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _009C
    SetFlag 0x113
    GoTo _0164

_007E:
    Message 2
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _009C
    SetFlag 0x113
    GoTo _0164

_009C:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A7:
    Message 29
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00B2:
    Message 33
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00BD:
    SetFlag 0x111
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00CC:
    SetFlag 0x111
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00DB:
    SetFlag 0x111
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00EA:
    SetFlag 0x111
    Message 16
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00F9:
    SetFlag 0x111
    Message 20
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0108:
    SetFlag 0x111
    Message 24
    CloseMessage
    Call _057F
    Message 25
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0122:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_012D:
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0138:
    Message 13
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0143:
    Message 17
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_014E:
    Message 21
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0159:
    Message 26
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0164:
    GoToIfEq 0x40B6, 0, _01DF
    GoToIfEq 0x40B6, 1, _023D
    GoToIfEq 0x40B6, 2, _029B
    GoToIfEq 0x40B6, 3, _02D9
    GoToIfEq 0x40B6, 4, _0347
    GoToIfEq 0x40B6, 5, _03D9
    GoToIfEq 0x40B6, 6, _0448
    GoToIfEq 0x40B6, 7, _04A9
    GoToIfEq 0x40B6, 8, _050A
    GoTo _00B2

_01DF:
    GoToIfUnset 0x111, _00BD
    GoToIfUnset 0x96E, _0122
    SetVar 0x40B6, 1
    ClearFlag 0x111
    Message 6
    SetVar 0x8004, 1
    SetVar 0x8005, 1
    CallCommonScript 0x7DD
    SetVar 0x8004, 23
    SetVar 0x8005, 1
    CallCommonScript 0x7DD
    SetVar 0x8004, 28
    SetVar 0x8005, 1
    CallCommonScript 0x7DD
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_023D:
    GoToIfUnset 0x111, _00CC
    GoToIfUnset 0x96F, _012D
    SetVar 0x40B6, 2
    ClearFlag 0x111
    Message 10
    SetVar 0x8004, 1
    SetVar 0x8005, 1
    CallCommonScript 0x7DE
    SetVar 0x8004, 3
    SetVar 0x8005, 1
    CallCommonScript 0x7DE
    SetVar 0x8004, 4
    SetVar 0x8005, 1
    CallCommonScript 0x7DE
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_029B:
    GoToIfUnset 0x111, _00DB
    GoToIfUnset 0x970, _0138
    SetVar 0x40B6, 3
    ClearFlag 0x111
    Message 14
    SetVar 0x8004, 33
    SetVar 0x8005, 1
    CallCommonScript 0x7DD
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02D9:
    GoToIfUnset 0x111, _00EA
    GoToIfUnset 0x971, _0143
    SetVar 0x40B6, 4
    ClearFlag 0x111
    Message 18
    SetVar 0x8004, 11
    SetVar 0x8005, 1
    CallCommonScript 0x7FE
    SetVar 0x8004, 9
    SetVar 0x8005, 1
    CallCommonScript 0x7FE
    SetVar 0x8004, 17
    SetVar 0x8005, 1
    CallCommonScript 0x7FE
    SetVar 0x8004, 113
    SetVar 0x8005, 1
    CallCommonScript 0x7FE
    Message 19
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0347:
    GoToIfUnset 0x111, _00F9
    GoToIfUnset 0x972, _014E
    SetVar 0x40B6, 5
    ClearFlag 0x111
    ClearFlag 252
    Message 22
    Call _037F
    Message 23
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_037F:
    ScrCmd_0DE 0x800C
    GoToIfEq 0x800C, 0x186, _03A3
    GoToIfEq 0x800C, 0x183, _03B5
    GoTo _03C7

_03A3:
    SetVar 0x8004, 101
    SetVar 0x8005, 1
    CallCommonScript 0x7FE
    Return

_03B5:
    SetVar 0x8004, 102
    SetVar 0x8005, 1
    CallCommonScript 0x7FE
    Return

_03C7:
    SetVar 0x8004, 103
    SetVar 0x8005, 1
    CallCommonScript 0x7FE
    Return

_03D9:
    GoToIfUnset 0x111, _0108
    GoToIfUnset 0x973, _0159
    CallIfSet 252, _057A
    CallIfUnset 252, _0443
    SetVar 0x8004, 81
    SetVar 0x8005, 1
    ScrCmd_085 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _056B
    CallCommonScript 0x7FE
    SetVar 0x40B6, 6
    ClearFlag 0x111
    ClearFlag 252
    Message 28
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0443:
    Message 27
    Return

_0448:
    ScrCmd_24A 0x800C
    GoToIfLt 0x800C, 3, _00A7
    CallIfSet 252, _057A
    CallIfUnset 252, _04A4
    SetVar 0x8004, 82
    SetVar 0x8005, 1
    ScrCmd_085 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _056B
    CallCommonScript 0x7DC
    SetVar 0x40B6, 7
    ClearFlag 252
    CloseMessage
    ReleaseAll
    End

_04A4:
    Message 30
    Return

_04A9:
    ScrCmd_24A 0x800C
    GoToIfLt 0x800C, 10, _00A7
    CallIfSet 252, _057A
    CallIfUnset 252, _0505
    SetVar 0x8004, 83
    SetVar 0x8005, 1
    ScrCmd_085 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _056B
    CallCommonScript 0x7DC
    SetVar 0x40B6, 8
    ClearFlag 252
    CloseMessage
    ReleaseAll
    End

_0505:
    Message 31
    Return

_050A:
    ScrCmd_24A 0x800C
    GoToIfLt 0x800C, 50, _00A7
    CallIfSet 252, _057A
    CallIfUnset 252, _0566
    SetVar 0x8004, 84
    SetVar 0x8005, 1
    ScrCmd_085 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _056B
    CallCommonScript 0x7DC
    SetVar 0x40B6, 9
    ClearFlag 252
    CloseMessage
    ReleaseAll
    End

_0566:
    Message 32
    Return

_056B:
    SetFlag 252
    Message 34
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_057A:
    Message 35
    Return

_057F:
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8004, 5, _05B2
    GoToIfEq 0x8004, 7, _05BE
    GoToIfEq 0x8005, 4, _05CA
    GoTo _05D6

_05B2:
    ApplyMovement 2, _05E4
    WaitMovement
    Return

_05BE:
    ApplyMovement 2, _05F8
    WaitMovement
    Return

_05CA:
    ApplyMovement 2, _060C
    WaitMovement
    Return

_05D6:
    ApplyMovement 2, _0620
    WaitMovement
    Return

    .balign 4, 0
_05E4:
    MoveAction_008
    MoveAction_009 2
    MoveAction_008
    MoveAction_026
    EndMovement

    .balign 4, 0
_05F8:
    MoveAction_008
    MoveAction_009 2
    MoveAction_008
    MoveAction_027
    EndMovement

    .balign 4, 0
_060C:
    MoveAction_00A
    MoveAction_00B 2
    MoveAction_00A
    MoveAction_024
    EndMovement

    .balign 4, 0
_0620:
    MoveAction_00A
    MoveAction_00B 2
    MoveAction_00A
    MoveAction_025
    EndMovement

_0634:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 36
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0647:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 189, _0669
    SetFlag 189
    Message 38
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0669:
    Message 39
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0674:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 40
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0685:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 41
    GoTo _0696
    End

_0696:
    Message 42
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 180, 0
    ScrCmd_042 181, 1
    ScrCmd_042 182, 2
    ScrCmd_042 183, 3
    ScrCmd_042 184, 4
    ScrCmd_042 12, 5
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _070A
    GoToIfEq 0x8008, 1, _0715
    GoToIfEq 0x8008, 2, _0720
    GoToIfEq 0x8008, 3, _072B
    GoToIfEq 0x8008, 4, _0736
    GoTo _0741
    End

_070A:
    Message 43
    GoTo _0696
    End

_0715:
    Message 44
    GoTo _0696
    End

_0720:
    Message 45
    GoTo _0696
    End

_072B:
    Message 46
    GoTo _0696
    End

_0736:
    Message 47
    GoTo _0696
    End

_0741:
    CloseMessage
    ReleaseAll
    End

_0747:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 37
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
