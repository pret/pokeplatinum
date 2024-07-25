#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0012
    ScriptEntry _0074
    ScriptEntry _0156
    ScriptEntry _0181
    .short 0xFD13

_0012:
    GoToIfEq 0x40DE, 0, _0054
    SetFlag 0x1EA
    SetFlag 0x1EB
    ScrCmd_207 0x4000
    GoToIfEq 0x4000, 1, _0056
    ScrCmd_1DD 55, 0, 0x4000
    SetVar 0x4020, 0x4000
    ScrCmd_1DD 55, 1, 0x4000
    SetVar 0x4021, 0x4000
_0054:
    End

_0056:
    ScrCmd_1DD 55, 0, 0x4000
    SetVar 0x4021, 0x4000
    ScrCmd_1DD 55, 1, 0x4000
    SetVar 0x4020, 0x4000
    End

_0074:
    CallIfNe 0x40DE, 0, _0090
    GoToIfEq 0x40DE, 3, _009E
_008E:
    End

_0090:
    ScrCmd_1B2 0xFF
    ScrCmd_06B 8, 0, 0
    Return

_009E:
    ScrCmd_187 2, 5, 0, 5, 3
    ScrCmd_187 3, 5, 0, 6, 3
    GoTo _008E
    End

_00BE:
    Message 2
    PlaySound SEQ_ASA
    WaitSound
    ScrCmd_14E
    Return

_00CB:
    ScrCmd_1DD 43, 0, 0x800C
    GoToIfEq 0x800C, 3, _0114
    WaitTime 30, 0x800C
    SetVar 0x40D8, 1
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_TOWER, 0, 7, 6, 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_0114:
    WaitTime 30, 0x800C
    SetVar 0x40D8, 1
    ScrCmd_136
    ScrCmd_135 6
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_136
    ScrCmd_135 8
    ScrCmd_150
    Warp MAP_HEADER_BATTLE_TOWER, 0, 7, 6, 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_0156:
    LockAll
    SetVar 0x40DE, 3
    Call _048D
    ScrCmd_1DD 43, 0, 0x800C
    GoToIfEq 0x800C, 3, _039E
    GoTo _02B0
    End

_0181:
    LockAll
    SetVar 0x40DE, 3
    Call _048D
    Call _04A1
    GoTo _02E8
    End

_019D:
    ScrCmd_1DD 40, 0, 0
    Call _04C5
    Call _0529
    ScrCmd_1FE 0
    WaitABPress
    CloseMessage
    Call _0535
    ScrCmd_1FE 1
    WaitABPress
    CloseMessage
    Call _0505
    ScrCmd_1DD 42, 0, 0
    ScrCmd_0EC 0x800C
    SetVar 0x8004, 0x800C
    Return

_01DF:
    ScrCmd_1DD 40, 0, 0
    Call _04C5
    Call _0529
    ScrCmd_1FE 0
    WaitTime 30, 0x800C
    CloseMessage
    Call _0535
    ScrCmd_1FE 1
    WaitTime 30, 0x800C
    CloseMessage
    Call _0505
    ScrCmd_136
    ScrCmd_135 4
    ScrCmd_1DD 42, 0, 0
    ScrCmd_0EC 0x800C
    SetVar 0x8004, 0x800C
    Return

_022F:
    ScrCmd_1DD 37, 0, 0
    SetVar 0x4000, 0
    GoTo _00CB
    End

_0245:
    ScrCmd_1DD 38, 0, 0
    SetVar 0x4000, 1
    GoTo _00CB
    End

_025B:
    SetVar 0x40D8, 2
    ScrCmd_1DD 39, 0, 0
    ScrCmd_1DC
    Message 0
    ScrCmd_18D
    ScrCmd_12D 0x800C
    ScrCmd_18E
    PlayFanfare SEQ_SE_DP_SAVE
    WaitFanfare SEQ_SE_DP_SAVE
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    ScrCmd_1DD 2, 0, 0
    End

_0296:
    GoTo _022F
    End

_029E:
    ScrCmd_1DD 34, 0, 0x800C
    ScrCmd_1DD 35, 0, 0x800C
    Return

_02B0:
    Call _019D
    GoToIfEq 0x8004, 0, _022F
    Call _029E
    GoToIfEq 0x800C, 1, _0245
    Call _0541
    Call _0565
    Call _00BE
_02E8:
    ScrCmd_1DD 33, 0, 0x8004
    BufferNumber 0, 0x8004
    Message 3
    ScrCmd_044 31, 11, 0, 0, 0x800C
    ScrCmd_33A 1
    ScrCmd_046 146, 0xFF, 0
    ScrCmd_046 147, 0xFF, 1
    ScrCmd_046 148, 0xFF, 2
    ScrCmd_047
    CloseMessage
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0354
    GoToIfEq 0x8008, 1, _0362
    GoToIfEq 0x8008, 2, _0380
    GoTo _0354
    End

_0354:
    Call _0589
    GoTo _02B0
    End

_0362:
    Message 4
    ScrCmd_03E 0x800C
    CloseMessage
    GoToIfEq 0x800C, 0, _025B
    GoTo _02E8
    End

_0380:
    Message 5
    ScrCmd_03E 0x800C
    CloseMessage
    GoToIfEq 0x800C, 0, _0296
    GoTo _02E8
    End

_039E:
    Call _01DF
    GoToIfEq 0x8004, 0, _022F
    Call _029E
    GoToIfEq 0x800C, 1, _0245
    Call _0541
    Call _0565
    Call _00BE
_03D6:
    ScrCmd_1DD 33, 0, 0x8004
    BufferNumber 0, 0x8004
    Message 3
    ScrCmd_044 31, 13, 0, 0, 0x800C
    ScrCmd_33A 1
    ScrCmd_046 146, 0xFF, 0
    ScrCmd_046 148, 0xFF, 1
    ScrCmd_047
    CloseMessage
    SetVar 0x4000, 0
    GoToIfEq 0x800C, 1, _0452
_0418:
    Message 12
    ScrCmd_136
    ScrCmd_135 5
    ScrCmd_1E1 2, 0x4000, 0x800C
    ScrCmd_1E2 2, 0x4000
    CloseMessage
    SetVar 0x8008, 0x4000
    GoToIfEq 0x8008, 1, _0474
    Call _0589
    GoTo _039E
    End

_0452:
    Message 5
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _03D6
    SetVar 0x4000, 1
    GoTo _0418
    End

_0474:
    Message 11
    WaitTime 30, 0x800C
    ScrCmd_136
    ScrCmd_135 7
    CloseMessage
    GoTo _0296
    End

_048D:
    ApplyMovement 2, _05B0
    ApplyMovement 3, _05C4
    WaitMovement
    Return

_04A1:
    ApplyMovement 0, _0644
    ApplyMovement 1, _0644
    ApplyMovement 2, _0664
    ApplyMovement 3, _0664
    WaitMovement
    Return

_04C5:
    ScrCmd_1DD 41, 0, 0x800C
    SetVar 0x4022, 0x800C
    ScrCmd_1DD 41, 1, 0x800C
    SetVar 0x4023, 0x800C
    ClearFlag 0x1EA
    ClearFlag 0x1EB
    ScrCmd_064 5
    ScrCmd_064 4
    ApplyMovement 5, _05D8
    ApplyMovement 4, _05EC
    WaitMovement
    Return

_0505:
    ApplyMovement 2, _0600
    ApplyMovement 3, _0600
    ApplyMovement 5, _0608
    ApplyMovement 4, _0608
    WaitMovement
    Return

_0529:
    ApplyMovement 5, _0610
    WaitMovement
    Return

_0535:
    ApplyMovement 4, _0610
    WaitMovement
    Return

_0541:
    ApplyMovement 5, _0618
    ApplyMovement 4, _0628
    WaitMovement
    SetFlag 0x1EA
    SetFlag 0x1EB
    ScrCmd_065 5
    ScrCmd_065 4
    Return

_0565:
    ApplyMovement 2, _0638
    ApplyMovement 3, _0638
    ApplyMovement 0, _0644
    ApplyMovement 1, _0644
    WaitMovement
    Return

_0589:
    ApplyMovement 2, _064C
    ApplyMovement 3, _064C
    ApplyMovement 0, _0654
    ApplyMovement 1, _0654
    WaitMovement
    Return

    .balign 4, 0
_05B0:
    MoveAction_00C
    MoveAction_00E 3
    MoveAction_00C 3
    MoveAction_003
    EndMovement

    .balign 4, 0
_05C4:
    MoveAction_00C
    MoveAction_00E 4
    MoveAction_00C 2
    MoveAction_003
    EndMovement

    .balign 4, 0
_05D8:
    MoveAction_00D
    MoveAction_00F 3
    MoveAction_00D 3
    MoveAction_002
    EndMovement

    .balign 4, 0
_05EC:
    MoveAction_00D
    MoveAction_00F 4
    MoveAction_00D 2
    MoveAction_002
    EndMovement

    .balign 4, 0
_0600:
    MoveAction_00F
    EndMovement

    .balign 4, 0
_0608:
    MoveAction_00E
    EndMovement

    .balign 4, 0
_0610:
    MoveAction_01E
    EndMovement

    .balign 4, 0
_0618:
    MoveAction_00C 3
    MoveAction_00E 2
    MoveAction_00C
    EndMovement

    .balign 4, 0
_0628:
    MoveAction_00C 2
    MoveAction_00E 3
    MoveAction_00C
    EndMovement

    .balign 4, 0
_0638:
    MoveAction_00E
    MoveAction_002
    EndMovement

    .balign 4, 0
_0644:
    MoveAction_00F
    EndMovement

    .balign 4, 0
_064C:
    MoveAction_003
    EndMovement

    .balign 4, 0
_0654:
    MoveAction_002
    MoveAction_00E
    MoveAction_003
    EndMovement

    .balign 4, 0
_0664:
    MoveAction_002
    EndMovement
