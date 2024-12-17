#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _0538
    ScriptEntry _0585
    .short 0xFD13

_000E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfSet 214, _0596
    GoTo _0027
    End

_0027:
    GoToIfUnset 167, _0040
    BufferPlayerName 0
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0040:
    BufferPlayerName 0
    Message 0
    CloseMessage
    SetFlag 167
    ClearFlag 0x229
    ScrCmd_186 0, 4, 11
    ScrCmd_189 0, 0
    ScrCmd_188 0, 14
    ScrCmd_064 0
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8004, 9, _0110
    CallIfEq 0x8004, 10, _0126
    Message 1
    Message 2
    CloseMessage
    ApplyMovement 0, _04B8
    ApplyMovement 0xFF, _0424
    WaitMovement
    Message 3
    CloseMessage
    SetFlag 0x1AC
    ClearFlag 0x29B
    ScrCmd_186 1, 4, 11
    ScrCmd_189 1, 0
    ScrCmd_188 1, 14
    ScrCmd_064 1
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8004, 9, _0285
    CallIfEq 0x8004, 10, _0291
    Message 4
    Message 5
    Message 6
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _019D
    GoToIfEq 0x800C, 1, _013C
    End

_0110:
    ApplyMovement 0, _0488
    WaitMovement
    ApplyMovement 0xFF, _03E4
    WaitMovement
    Return

_0126:
    ApplyMovement 0, _04A0
    WaitMovement
    ApplyMovement 0xFF, _03EC
    WaitMovement
    Return

_013C:
    Message 10
    CloseMessage
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8004, 9, _0165
    CallIfEq 0x8004, 10, _0181
    ReleaseAll
    End

_0165:
    ApplyMovement 0, _04C0
    ApplyMovement 0xFF, _03F4
    ApplyMovement 1, _03CC
    WaitMovement
    Return

_0181:
    ApplyMovement 0, _04CC
    ApplyMovement 0xFF, _040C
    ApplyMovement 1, _03D8
    WaitMovement
    Return

_019D:
    Message 8
    CloseMessage
    StartTrainerBattle trainer_galactic_boss_cyrus_celestic_town_ruins
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, 0, _0393
    Call _01C3
    ReleaseAll
    End

_01C3:
    ClearFlag 0x1BD
    SetVar 0x4074, 1
    Message 11
    CloseMessage
    WaitTime 15, 0x800C
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_065 1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8004, 8, _029D
    CallIfEq 0x8004, 9, _02B1
    CallIfEq 0x8004, 10, _02FA
    CallIfEq 0x8004, 11, _0343
    Message 13
    SetVar 0x8004, 0x1A6
    SetVar 0x8005, 1
    CallCommonScript 0x7FC
    SetFlag 0x1AC
    ClearFlag 0x1C3
    SetFlag 0x98D
    Message 14
    CloseMessage
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8004, 9, _0357
    CallIfEq 0x8004, 10, _036B
    CallIfEq 0x8004, 11, _037F
    ScrCmd_065 0
    Return

_0285:
    ApplyMovement 1, _039C
    WaitMovement
    Return

_0291:
    ApplyMovement 1, _03B4
    WaitMovement
    Return

_029D:
    ApplyMovement 0xFF, _042C
    ApplyMovement 0, _04D8
    WaitMovement
    Return

_02B1:
    GoToIfEq 0x8005, 4, _02D2
    ApplyMovement 0xFF, _0434
    ApplyMovement 0, _04D8
    WaitMovement
    Return

_02D2:
    ApplyMovement 0xFF, _043C
    ApplyMovement 0, _04D8
    WaitMovement
    Return

    .byte 94
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 90
    .byte 1
    .byte 0
    .byte 0
    .byte 94
    .byte 0
    .byte 0
    .byte 0
    .byte 226
    .byte 1
    .byte 0
    .byte 0
    .byte 95
    .byte 0
    .byte 27
    .byte 0

_02FA:
    GoToIfEq 0x8005, 4, _031B
    ApplyMovement 0xFF, _0454
    ApplyMovement 0, _04E0
    WaitMovement
    Return

_031B:
    ApplyMovement 0xFF, _045C
    ApplyMovement 0, _04E0
    WaitMovement
    Return

    .byte 94
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 49
    .byte 1
    .byte 0
    .byte 0
    .byte 94
    .byte 0
    .byte 0
    .byte 0
    .byte 153
    .byte 1
    .byte 0
    .byte 0
    .byte 95
    .byte 0
    .byte 27
    .byte 0

_0343:
    ApplyMovement 0xFF, _0474
    ApplyMovement 0, _04E8
    WaitMovement
    Return

_0357:
    ApplyMovement 0xFF, _047C
    ApplyMovement 0, _04F0
    WaitMovement
    Return

_036B:
    ApplyMovement 0xFF, _047C
    ApplyMovement 0, _0508
    WaitMovement
    Return

_037F:
    ApplyMovement 0xFF, _047C
    ApplyMovement 0, _0520
    WaitMovement
    Return

_0393:
    ScrCmd_0EB
    ReleaseAll
    End

    .balign 4, 0
_039C:
    MoveAction_012 6
    MoveAction_015
    MoveAction_012
    MoveAction_015 5
    MoveAction_032
    EndMovement

    .balign 4, 0
_03B4:
    MoveAction_012 6
    MoveAction_015
    MoveAction_012
    MoveAction_015 4
    MoveAction_032
    EndMovement

    .balign 4, 0
_03CC:
    MoveAction_014
    MoveAction_012
    EndMovement

    .balign 4, 0
_03D8:
    MoveAction_015
    MoveAction_012
    EndMovement

    .balign 4, 0
_03E4:
    MoveAction_035
    EndMovement

    .balign 4, 0
_03EC:
    MoveAction_034
    EndMovement

    .balign 4, 0
_03F4:
    MoveAction_063
    MoveAction_003
    MoveAction_071
    MoveAction_018
    MoveAction_072
    EndMovement

    .balign 4, 0
_040C:
    MoveAction_063
    MoveAction_002
    MoveAction_071
    MoveAction_019
    MoveAction_072
    EndMovement

    .balign 4, 0
_0424:
    MoveAction_033
    EndMovement

    .balign 4, 0
_042C:
    MoveAction_015
    EndMovement

    .balign 4, 0
_0434:
    MoveAction_035
    EndMovement

    .balign 4, 0
_043C:
    MoveAction_012
    MoveAction_035
    EndMovement

    .byte 12
    .byte 0
    .byte 2
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0454:
    MoveAction_034
    EndMovement

    .balign 4, 0
_045C:
    MoveAction_012
    MoveAction_034
    EndMovement

    .byte 12
    .byte 0
    .byte 2
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0474:
    MoveAction_014
    EndMovement

    .balign 4, 0
_047C:
    MoveAction_063
    MoveAction_033
    EndMovement

    .balign 4, 0
_0488:
    MoveAction_012 6
    MoveAction_015
    MoveAction_012
    MoveAction_015 5
    MoveAction_012
    EndMovement

    .balign 4, 0
_04A0:
    MoveAction_012 6
    MoveAction_015
    MoveAction_012
    MoveAction_015 4
    MoveAction_012
    EndMovement

    .balign 4, 0
_04B8:
    MoveAction_033
    EndMovement

    .balign 4, 0
_04C0:
    MoveAction_063
    MoveAction_034
    EndMovement

    .balign 4, 0
_04CC:
    MoveAction_063
    MoveAction_035
    EndMovement

    .balign 4, 0
_04D8:
    MoveAction_034
    EndMovement

    .balign 4, 0
_04E0:
    MoveAction_035
    EndMovement

    .balign 4, 0
_04E8:
    MoveAction_035
    EndMovement

    .balign 4, 0
_04F0:
    MoveAction_013
    MoveAction_014 5
    MoveAction_013
    MoveAction_014
    MoveAction_013 6
    EndMovement

    .balign 4, 0
_0508:
    MoveAction_013
    MoveAction_014 4
    MoveAction_013
    MoveAction_014
    MoveAction_013 6
    EndMovement

    .balign 4, 0
_0520:
    MoveAction_013
    MoveAction_014 5
    MoveAction_013
    MoveAction_014
    MoveAction_013 6
    EndMovement

_0538:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 7
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _057A
    Message 8
    CloseMessage
    StartTrainerBattle trainer_galactic_boss_cyrus_celestic_town_ruins
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, 0, _0393
    Call _01C3
    ReleaseAll
    End

_057A:
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0585:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0596:
    GoToIfSet 0x124, _0027
    SetFlag 0x124
    ClearFlag 0x1A6
    ScrCmd_186 2, 4, 11
    ScrCmd_064 2
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8004, 9, _06CF
    CallIfEq 0x8004, 10, _06E5
    Message 16
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8004, 9, _0713
    CallIfEq 0x8004, 10, _071F
    Message 17
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0753
    CloseMessage
    ApplyMovement 2, _07F0
    ApplyMovement 0xFF, _0858
    WaitMovement
    WaitTime 15, 0x800C
    Message 18
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8004, 9, _0713
    CallIfEq 0x8004, 10, _071F
    CallIfEq 0x8004, 9, _06FB
    CallIfEq 0x8004, 10, _0707
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0753
    Message 19
    CloseMessage
    ApplyMovement 0xFF, _0864
    ApplyMovement 2, _07F8
    WaitMovement
    Message 20
    CloseMessage
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8004, 9, _072B
    CallIfEq 0x8004, 10, _073F
    Message 21
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0753
    Message 22
    GoTo _075E
    End

_06CF:
    ApplyMovement 2, _07B0
    WaitMovement
    ApplyMovement 0xFF, _0848
    WaitMovement
    Return

_06E5:
    ApplyMovement 2, _07C8
    WaitMovement
    ApplyMovement 0xFF, _0850
    WaitMovement
    Return

_06FB:
    ApplyMovement 0xFF, _0848
    WaitMovement
    Return

_0707:
    ApplyMovement 0xFF, _0850
    WaitMovement
    Return

_0713:
    ApplyMovement 2, _07E0
    WaitMovement
    Return

_071F:
    ApplyMovement 2, _07E8
    WaitMovement
    Return

_072B:
    ApplyMovement 2, _0800
    ApplyMovement 0xFF, _0870
    WaitMovement
    Return

_073F:
    ApplyMovement 2, _080C
    ApplyMovement 0xFF, _087C
    WaitMovement
    Return

_0753:
    Message 23
    GoTo _075E
    End

_075E:
    CloseMessage
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8004, 9, _0788
    CallIfEq 0x8004, 10, _079C
    ScrCmd_065 2
    ReleaseAll
    End

_0788:
    ApplyMovement 2, _0818
    ApplyMovement 0xFF, _0888
    WaitMovement
    Return

_079C:
    ApplyMovement 2, _0830
    ApplyMovement 0xFF, _0888
    WaitMovement
    Return

    .balign 4, 0
_07B0:
    MoveAction_012 6
    MoveAction_015
    MoveAction_012
    MoveAction_015 5
    MoveAction_012
    EndMovement

    .balign 4, 0
_07C8:
    MoveAction_012 6
    MoveAction_015
    MoveAction_012
    MoveAction_015 4
    MoveAction_012
    EndMovement

    .balign 4, 0
_07E0:
    MoveAction_034
    EndMovement

    .balign 4, 0
_07E8:
    MoveAction_035
    EndMovement

    .balign 4, 0
_07F0:
    MoveAction_032
    EndMovement

    .balign 4, 0
_07F8:
    MoveAction_013
    EndMovement

    .balign 4, 0
_0800:
    MoveAction_012
    MoveAction_034
    EndMovement

    .balign 4, 0
_080C:
    MoveAction_012
    MoveAction_035
    EndMovement

    .balign 4, 0
_0818:
    MoveAction_013
    MoveAction_014 5
    MoveAction_013
    MoveAction_014
    MoveAction_013 6
    EndMovement

    .balign 4, 0
_0830:
    MoveAction_013
    MoveAction_014 4
    MoveAction_013
    MoveAction_014
    MoveAction_013 6
    EndMovement

    .balign 4, 0
_0848:
    MoveAction_035
    EndMovement

    .balign 4, 0
_0850:
    MoveAction_034
    EndMovement

    .balign 4, 0
_0858:
    MoveAction_063
    MoveAction_032
    EndMovement

    .balign 4, 0
_0864:
    MoveAction_063
    MoveAction_033
    EndMovement

    .balign 4, 0
_0870:
    MoveAction_063
    MoveAction_035
    EndMovement

    .balign 4, 0
_087C:
    MoveAction_063
    MoveAction_034
    EndMovement

    .balign 4, 0
_0888:
    MoveAction_063 2
    MoveAction_002
    EndMovement
