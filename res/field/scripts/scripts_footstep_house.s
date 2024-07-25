#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _0010
    .short 0xFD13

_000A:
    SetFlag 0x9ED
    End

_0010:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_247 0x8002
    BufferPartyMonSpecies 0, 0x8002
    BufferPlayerName 1
    BufferPartyMonNickname 2, 0x8002
    ScrCmd_23A 0x8000, 0x8001, 0x8002
    GoToIfSet 249, _004B
    SetFlag 249
    Message 0
    CloseMessage
    GoTo _0056

_004B:
    Message 1
    CloseMessage
    GoTo _0056

_0056:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    WaitTime 40, 0x800C
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    Call _008A
    WaitTime 20, 0x800C
    ScrCmd_1E5 116
    GoTo _0150

_008A:
    GetPlayerMapPos 0x8005, 0x8006
    GoToIfEq 0x8005, 4, _00BD
    GoToIfEq 0x8005, 6, _00C9
    GoToIfEq 0x8006, 5, _00D5
    GoTo _00E1

_00BD:
    ApplyMovement 0, _0698
    WaitMovement
    Return

_00C9:
    ApplyMovement 0, _06A8
    WaitMovement
    Return

_00D5:
    ApplyMovement 0, _06B8
    WaitMovement
    Return

_00E1:
    ApplyMovement 0, _06C8
    WaitMovement
    Return

_00ED:
    GetPlayerMapPos 0x8005, 0x8006
    GoToIfEq 0x8005, 4, _0120
    GoToIfEq 0x8005, 6, _012C
    GoToIfEq 0x8006, 5, _0138
    GoTo _0144

_0120:
    ApplyMovement 0, _06D8
    WaitMovement
    Return

_012C:
    ApplyMovement 0, _06E0
    WaitMovement
    Return

_0138:
    ApplyMovement 0, _06E8
    WaitMovement
    Return

_0144:
    ApplyMovement 0, _06F0
    WaitMovement
    Return

_0150:
    GoToIfEq 0x8001, 1, _018A
    GoToIfEq 0x8001, 2, _019D
    GoToIfEq 0x8001, 3, _01B0
    GoToIfEq 0x8001, 4, _01C3
    GoTo _0574

_018A:
    GoToIfEq 0x8000, 1, _01D6
    GoTo _0216

_019D:
    GoToIfEq 0x8000, 1, _0256
    GoTo _0296

_01B0:
    GoToIfEq 0x8000, 1, _02D6
    GoTo _0316

_01C3:
    GoToIfEq 0x8000, 1, _0356
    GoTo _0396

_01D6:
    ScrCmd_1B9 0x800C, 0x8002
    GoToIfGe 0x800C, 0xFF, _03FA
    GoToIfGe 0x800C, 200, _03F1
    GoToIfGe 0x800C, 150, _03E8
    GoToIfGe 0x800C, 70, _03DF
    GoTo _03D6

_0216:
    ScrCmd_1B9 0x800C, 0x8002
    GoToIfGe 0x800C, 0xFF, _0427
    GoToIfGe 0x800C, 200, _041E
    GoToIfGe 0x800C, 150, _0415
    GoToIfGe 0x800C, 70, _040C
    GoTo _0403

_0256:
    ScrCmd_1B9 0x800C, 0x8002
    GoToIfGe 0x800C, 0xFF, _0454
    GoToIfGe 0x800C, 200, _044B
    GoToIfGe 0x800C, 150, _0442
    GoToIfGe 0x800C, 70, _0439
    GoTo _0430

_0296:
    ScrCmd_1B9 0x800C, 0x8002
    GoToIfGe 0x800C, 0xFF, _0481
    GoToIfGe 0x800C, 200, _0478
    GoToIfGe 0x800C, 150, _046F
    GoToIfGe 0x800C, 70, _0466
    GoTo _045D

_02D6:
    ScrCmd_1B9 0x800C, 0x8002
    GoToIfGe 0x800C, 0xFF, _04AE
    GoToIfGe 0x800C, 200, _04A5
    GoToIfGe 0x800C, 150, _049C
    GoToIfGe 0x800C, 70, _0493
    GoTo _048A

_0316:
    ScrCmd_1B9 0x800C, 0x8002
    GoToIfGe 0x800C, 0xFF, _04DB
    GoToIfGe 0x800C, 200, _04D2
    GoToIfGe 0x800C, 150, _04C9
    GoToIfGe 0x800C, 70, _04C0
    GoTo _04B7

_0356:
    ScrCmd_1B9 0x800C, 0x8002
    GoToIfGe 0x800C, 0xFF, _0508
    GoToIfGe 0x800C, 200, _04FF
    GoToIfGe 0x800C, 150, _04F6
    GoToIfGe 0x800C, 70, _04ED
    GoTo _04E4

_0396:
    ScrCmd_1B9 0x800C, 0x8002
    GoToIfGe 0x800C, 0xFF, _0535
    GoToIfGe 0x800C, 200, _052C
    GoToIfGe 0x800C, 150, _0523
    GoToIfGe 0x800C, 70, _051A
    GoTo _0511

_03D6:
    Message 10
    GoTo _05A5

_03DF:
    Message 11
    GoTo _05A5

_03E8:
    Message 12
    GoTo _05A5

_03F1:
    Message 13
    GoTo _05A5

_03FA:
    Message 14
    GoTo _053E

_0403:
    Message 15
    GoTo _05C4

_040C:
    Message 16
    GoTo _05C4

_0415:
    Message 17
    GoTo _05C4

_041E:
    Message 18
    GoTo _05C4

_0427:
    Message 19
    GoTo _0559

_0430:
    Message 20
    GoTo _05A5

_0439:
    Message 21
    GoTo _05A5

_0442:
    Message 22
    GoTo _05A5

_044B:
    Message 23
    GoTo _05A5

_0454:
    Message 24
    GoTo _053E

_045D:
    Message 25
    GoTo _05C4

_0466:
    Message 26
    GoTo _05C4

_046F:
    Message 27
    GoTo _05C4

_0478:
    Message 28
    GoTo _05C4

_0481:
    Message 29
    GoTo _0559

_048A:
    Message 30
    GoTo _05A5

_0493:
    Message 31
    GoTo _05A5

_049C:
    Message 32
    GoTo _05A5

_04A5:
    Message 33
    GoTo _05A5

_04AE:
    Message 34
    GoTo _053E

_04B7:
    Message 35
    GoTo _05C4

_04C0:
    Message 36
    GoTo _05C4

_04C9:
    Message 37
    GoTo _05C4

_04D2:
    Message 38
    GoTo _05C4

_04DB:
    Message 39
    GoTo _0559

_04E4:
    Message 40
    GoTo _05A5

_04ED:
    Message 41
    GoTo _05A5

_04F6:
    Message 42
    GoTo _05A5

_04FF:
    Message 43
    GoTo _05A5

_0508:
    Message 44
    GoTo _053E

_0511:
    Message 45
    GoTo _05C4

_051A:
    Message 46
    GoTo _05C4

_0523:
    Message 47
    GoTo _05C4

_052C:
    Message 48
    GoTo _05C4

_0535:
    Message 49
    GoTo _0559

_053E:
    ScrCmd_230 0x800C, 0x8002, 69
    GoToIfEq 0x800C, 0, _0602
    GoTo _05A5

_0559:
    ScrCmd_230 0x800C, 0x8002, 69
    GoToIfEq 0x800C, 0, _0633
    GoTo _05C4

_0574:
    Message 50
    ScrCmd_1B9 0x800C, 0x8002
    GoToIfLt 0x800C, 0xFF, _05E3
    ScrCmd_230 0x800C, 0x8002, 69
    GoToIfEq 0x800C, 0, _0664
    GoTo _05E3

_05A5:
    CloseMessage
    WaitTime 20, 0x800C
    Call _00ED
    WaitTime 10, 0x800C
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_05C4:
    CloseMessage
    WaitTime 20, 0x800C
    Call _00ED
    WaitTime 10, 0x800C
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_05E3:
    CloseMessage
    WaitTime 20, 0x800C
    Call _00ED
    WaitTime 10, 0x800C
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0602:
    CloseMessage
    WaitTime 20, 0x800C
    Call _00ED
    WaitTime 10, 0x800C
    Message 5
    PlaySound SEQ_FANFA1
    Message 8
    WaitSound
    ScrCmd_231 0x8002, 69
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0633:
    CloseMessage
    WaitTime 20, 0x800C
    Call _00ED
    WaitTime 10, 0x800C
    Message 6
    PlaySound SEQ_FANFA1
    Message 8
    WaitSound
    ScrCmd_231 0x8002, 69
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0664:
    CloseMessage
    WaitTime 20, 0x800C
    Call _00ED
    WaitTime 10, 0x800C
    Message 7
    PlaySound SEQ_FANFA1
    Message 8
    WaitSound
    ScrCmd_231 0x8002, 69
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0698:
    MoveAction_047
    MoveAction_00F
    MoveAction_048
    EndMovement

    .balign 4, 0
_06A8:
    MoveAction_047
    MoveAction_00E
    MoveAction_048
    EndMovement

    .balign 4, 0
_06B8:
    MoveAction_047
    MoveAction_00D
    MoveAction_048
    EndMovement

    .balign 4, 0
_06C8:
    MoveAction_047
    MoveAction_00C
    MoveAction_048
    EndMovement

    .balign 4, 0
_06D8:
    MoveAction_00E
    EndMovement

    .balign 4, 0
_06E0:
    MoveAction_00F
    EndMovement

    .balign 4, 0
_06E8:
    MoveAction_00C
    EndMovement

    .balign 4, 0
_06F0:
    MoveAction_00D
    EndMovement
