#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0593
    ScriptEntry _0680
    ScriptEntry _0693
    ScriptEntry _06A6
    ScriptEntry _06B9
    ScriptEntry _06CC
    ScriptEntry _06DF
    ScriptEntry _0099
    ScriptEntry _0530
    ScriptEntry _06F2
    ScriptEntry _0709
    ScriptEntry _071E
    ScriptEntry _0735
    ScriptEntry _074C
    ScriptEntry _0763
    ScriptEntry _077A
    ScriptEntry _0791
    ScriptEntry _0850
    ScriptEntry _004E
    .short 0xFD13

_004E:
    CallIfEq 0x40A6, 2, _0077
    CallIfEq 0x40A6, 3, _0077
    GoToIfEq 0x407E, 0, _0083
    End

_0077:
    SetFlag 0x199
    SetVar 0x40A6, 4
    Return

_0083:
    ScrCmd_186 18, 0x349, 0x316
    ScrCmd_188 18, 16
    ScrCmd_189 18, 2
    End

_0099:
    LockAll
    ApplyMovement 9, _04E8
    WaitMovement
    ClearFlag 0x255
    ScrCmd_064 20
    ScrCmd_062 20
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8004, 0x355, _00FA
    GoToIfEq 0x8004, 0x356, _0114
    GoToIfEq 0x8004, 0x357, _012E
    GoToIfEq 0x8004, 0x358, _0148
    GoToIfEq 0x8004, 0x359, _0162
    End

_00FA:
    ApplyMovement 20, _0454
    ApplyMovement 0xFF, _04F4
    WaitMovement
    GoTo _017C
    End

_0114:
    ApplyMovement 20, _0464
    ApplyMovement 0xFF, _04F4
    WaitMovement
    GoTo _017C
    End

_012E:
    ApplyMovement 20, _0474
    ApplyMovement 0xFF, _0504
    WaitMovement
    GoTo _017C
    End

_0148:
    ApplyMovement 20, _0480
    ApplyMovement 0xFF, _050C
    WaitMovement
    GoTo _017C
    End

_0162:
    ApplyMovement 20, _0490
    ApplyMovement 0xFF, _050C
    WaitMovement
    GoTo _017C
    End

_017C:
    BufferRivalName 0
    BufferPlayerName 1
    Message 10
    ApplyMovement 20, _04A0
    WaitMovement
    Message 11
    CallIfEq 0x8004, 0x355, _02BE
    CallIfEq 0x8004, 0x356, _02CA
    CallIfEq 0x8004, 0x357, _02D6
    CallIfEq 0x8004, 0x358, _02E2
    CallIfEq 0x8004, 0x359, _02EE
    Message 12
    CloseMessage
    CallIfEq 0x8004, 0x355, _02FA
    CallIfEq 0x8004, 0x356, _030E
    CallIfEq 0x8004, 0x357, _0322
    CallIfEq 0x8004, 0x358, _032E
    CallIfEq 0x8004, 0x359, _0342
    ScrCmd_065 20
    CallIfEq 0x8004, 0x355, _0356
    CallIfEq 0x8004, 0x356, _0362
    CallIfEq 0x8004, 0x357, _036E
    CallIfEq 0x8004, 0x358, _037A
    CallIfEq 0x8004, 0x359, _0386
    ApplyMovement 0xFF, _0528
    WaitMovement
    Message 13
    Call _0577
    CloseMessage
    CallIfEq 0x8004, 0x355, _0392
    CallIfEq 0x8004, 0x356, _039E
    CallIfEq 0x8004, 0x357, _03AA
    CallIfEq 0x8004, 0x358, _03B6
    CallIfEq 0x8004, 0x359, _03C2
    SetVar 0x407E, 3
    ReleaseAll
    End

_02BE:
    ApplyMovement 20, _04A8
    WaitMovement
    Return

_02CA:
    ApplyMovement 20, _04A8
    WaitMovement
    Return

_02D6:
    ApplyMovement 20, _04B0
    WaitMovement
    Return

_02E2:
    ApplyMovement 20, _04B8
    WaitMovement
    Return

_02EE:
    ApplyMovement 20, _04B8
    WaitMovement
    Return

_02FA:
    ApplyMovement 20, _04C0
    ApplyMovement 0xFF, _051C
    WaitMovement
    Return

_030E:
    ApplyMovement 20, _04C8
    ApplyMovement 0xFF, _051C
    WaitMovement
    Return

_0322:
    ApplyMovement 20, _04D0
    WaitMovement
    Return

_032E:
    ApplyMovement 20, _04D8
    ApplyMovement 0xFF, _051C
    WaitMovement
    Return

_0342:
    ApplyMovement 20, _04E0
    ApplyMovement 0xFF, _051C
    WaitMovement
    Return

_0356:
    ApplyMovement 9, _03D0
    WaitMovement
    Return

_0362:
    ApplyMovement 9, _03DC
    WaitMovement
    Return

_036E:
    ApplyMovement 9, _03E8
    WaitMovement
    Return

_037A:
    ApplyMovement 9, _03F4
    WaitMovement
    Return

_0386:
    ApplyMovement 9, _0400
    WaitMovement
    Return

_0392:
    ApplyMovement 9, _0408
    WaitMovement
    Return

_039E:
    ApplyMovement 9, _0418
    WaitMovement
    Return

_03AA:
    ApplyMovement 9, _0428
    WaitMovement
    Return

_03B6:
    ApplyMovement 9, _0438
    WaitMovement
    Return

_03C2:
    ApplyMovement 9, _0448
    WaitMovement
    Return

    .balign 4, 0
_03D0:
    MoveAction_00E 4
    MoveAction_00D
    EndMovement

    .balign 4, 0
_03DC:
    MoveAction_00E 3
    MoveAction_00D
    EndMovement

    .balign 4, 0
_03E8:
    MoveAction_00E 2
    MoveAction_00D
    EndMovement

    .balign 4, 0
_03F4:
    MoveAction_00E
    MoveAction_00D
    EndMovement

    .balign 4, 0
_0400:
    MoveAction_00D
    EndMovement

    .balign 4, 0
_0408:
    MoveAction_00C
    MoveAction_00F 4
    MoveAction_021
    EndMovement

    .balign 4, 0
_0418:
    MoveAction_00C
    MoveAction_00F 3
    MoveAction_021
    EndMovement

    .balign 4, 0
_0428:
    MoveAction_00C
    MoveAction_00F 2
    MoveAction_021
    EndMovement

    .balign 4, 0
_0438:
    MoveAction_00C
    MoveAction_00F
    MoveAction_021
    EndMovement

    .balign 4, 0
_0448:
    MoveAction_00C
    MoveAction_021
    EndMovement

    .balign 4, 0
_0454:
    MoveAction_03F
    MoveAction_010 4
    MoveAction_012
    EndMovement

    .balign 4, 0
_0464:
    MoveAction_03F
    MoveAction_010 4
    MoveAction_026
    EndMovement

    .balign 4, 0
_0474:
    MoveAction_03F
    MoveAction_010 3
    EndMovement

    .balign 4, 0
_0480:
    MoveAction_03F
    MoveAction_010 4
    MoveAction_027
    EndMovement

    .balign 4, 0
_0490:
    MoveAction_03F
    MoveAction_010 4
    MoveAction_013
    EndMovement

    .balign 4, 0
_04A0:
    MoveAction_025
    EndMovement

    .balign 4, 0
_04A8:
    MoveAction_026
    EndMovement

    .balign 4, 0
_04B0:
    MoveAction_024
    EndMovement

    .balign 4, 0
_04B8:
    MoveAction_027
    EndMovement

    .balign 4, 0
_04C0:
    MoveAction_011 8
    EndMovement

    .balign 4, 0
_04C8:
    MoveAction_011 8
    EndMovement

    .balign 4, 0
_04D0:
    MoveAction_011 8
    EndMovement

    .balign 4, 0
_04D8:
    MoveAction_011 8
    EndMovement

    .balign 4, 0
_04E0:
    MoveAction_011 8
    EndMovement

    .balign 4, 0
_04E8:
    MoveAction_021
    MoveAction_04B
    EndMovement

    .balign 4, 0
_04F4:
    MoveAction_021
    MoveAction_03F
    MoveAction_023
    EndMovement

    .balign 4, 0
_0504:
    MoveAction_021
    EndMovement

    .balign 4, 0
_050C:
    MoveAction_021
    MoveAction_03F 2
    MoveAction_022
    EndMovement

    .balign 4, 0
_051C:
    MoveAction_03F
    MoveAction_021
    EndMovement

    .balign 4, 0
_0528:
    MoveAction_020
    EndMovement

_0530:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 154, _056C
    Message 8
    ScrCmd_15B 7, 0x800C
    GoToIfEq 0x800C, 0, _0561
    GoTo _056C
    End

_0561:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_056C:
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0577:
    Message 6
    SetVar 0x8004, 0x1AA
    SetVar 0x8005, 1
    CallCommonScript 0x7FC
    SetFlag 154
    Message 7
    Return

_0593:
    LockAll
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8005, 0x316, _05B7
    GoToIfEq 0x8005, 0x317, _05C7
    End

_05B7:
    ApplyMovement 18, _063C
    WaitMovement
    GoTo _05D7

_05C7:
    ApplyMovement 18, _0650
    WaitMovement
    GoTo _05D7

_05D7:
    Message 0
    CloseMessage
    ApplyMovement 18, _0668
    WaitMovement
    WaitTime 15, 0x800C
    ApplyMovement 18, _0670
    WaitMovement
    Message 1
    CloseMessage
    WaitTime 15, 0x800C
    ApplyMovement 18, _0678
    WaitMovement
    ScrCmd_065 18
    WaitTime 1, 0x800C
    ScrCmd_186 18, 0x34D, 0x2EC
    ScrCmd_188 18, 15
    ScrCmd_189 18, 1
    ClearFlag 0x239
    ScrCmd_064 18
    SetVar 0x407E, 1
    ReleaseAll
    End

    .balign 4, 0
_063C:
    MoveAction_00E 3
    MoveAction_022
    MoveAction_04B
    MoveAction_00E 5
    EndMovement

    .balign 4, 0
_0650:
    MoveAction_00D
    MoveAction_00E 3
    MoveAction_022
    MoveAction_04B
    MoveAction_00E 5
    EndMovement

    .balign 4, 0
_0668:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0670:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0678:
    MoveAction_00F 9
    EndMovement

_0680:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 14
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0693:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 20
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_06A6:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_06B9:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 17
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_06CC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 18
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_06DF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 19
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_06F2:
    ScrCmd_036 21, 0, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_0709:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 22, 0x800C
    CallCommonScript 0x7D0
    End

_071E:
    ScrCmd_036 23, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_0735:
    ScrCmd_036 24, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_074C:
    ScrCmd_036 25, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_0763:
    ScrCmd_036 26, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_077A:
    ScrCmd_036 27, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_0791:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript 0x7E3
    ScrCmd_035
    ScrCmd_234 0x800C
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0806
    GoToIfEq 0x8008, 1, _0810
    GoToIfEq 0x8008, 2, _081A
    GoToIfEq 0x8008, 3, _0824
    GoToIfEq 0x8008, 4, _082E
    GoToIfEq 0x8008, 5, _0838
    GoToIfEq 0x8008, 6, _0842
    End

_0806:
    ScrCmd_14A 0
    GoTo _084C

_0810:
    ScrCmd_14A 1
    GoTo _084C

_081A:
    ScrCmd_14A 2
    GoTo _084C

_0824:
    ScrCmd_14A 3
    GoTo _084C

_082E:
    ScrCmd_14A 4
    GoTo _084C

_0838:
    ScrCmd_14A 5
    GoTo _084C

_0842:
    ScrCmd_14A 6
    GoTo _084C

_084C:
    ReleaseAll
    End

_0850:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0x162, _086E
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_086E:
    Message 3
    CloseMessage
    WaitTime 15, 0x800C
    ScrCmd_1BD 0x800C
    GoToIfEq 0x800C, 0, _08A6
    GoToIfEq 0x800C, 2, _08BE
    GoToIfEq 0x800C, 3, _08D6
    End

_08A6:
    ApplyMovement 18, _08F8
    ApplyMovement 0xFF, _0914
    WaitMovement
    GoTo _08EE

_08BE:
    ApplyMovement 18, _0908
    ApplyMovement 0xFF, _0920
    WaitMovement
    GoTo _08EE

_08D6:
    ApplyMovement 18, _0908
    ApplyMovement 0xFF, _0914
    WaitMovement
    GoTo _08EE

_08EE:
    ScrCmd_065 18
    ReleaseAll
    End

    .balign 4, 0
_08F8:
    MoveAction_00F
    MoveAction_00D 2
    MoveAction_00F 8
    EndMovement

    .balign 4, 0
_0908:
    MoveAction_00D 2
    MoveAction_00F 9
    EndMovement

    .balign 4, 0
_0914:
    MoveAction_03F
    MoveAction_003
    EndMovement

    .balign 4, 0
_0920:
    MoveAction_03F
    MoveAction_021
    MoveAction_023
    EndMovement
