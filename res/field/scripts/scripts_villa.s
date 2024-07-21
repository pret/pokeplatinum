#include "macros/scrcmd.inc"

    .data

    ScriptEntry _00B2
    ScriptEntry _029C
    ScriptEntry _030C
    ScriptEntry _0432
    ScriptEntry _049C
    ScriptEntry _050C
    ScriptEntry _0576
    ScriptEntry _05E0
    ScriptEntry _064A
    ScriptEntry _06C4
    ScriptEntry _0734
    ScriptEntry _079E
    ScriptEntry _0815
    ScriptEntry _0944
    ScriptEntry _09AE
    ScriptEntry _0A50
    ScriptEntry _0AF4
    ScriptEntry _0B5C
    ScriptEntry _0BBC
    ScriptEntry _0C24
    ScriptEntry _0C88
    ScriptEntry _0C99
    ScriptEntry _0CAA
    ScriptEntry _0CBB
    ScriptEntry _0CCC
    ScriptEntry _0CDD
    ScriptEntry _0CEE
    ScriptEntry _0D03
    ScriptEntry _0D14
    ScriptEntry _0D30
    ScriptEntry _0D41
    ScriptEntry _0D55
    ScriptEntry _0DD1
    ScriptEntry _0DE2
    ScriptEntry _0DF3
    ScriptEntry _0E08
    ScriptEntry _0E19
    ScriptEntry _0E2A
    ScriptEntry _0E3B
    ScriptEntry _0E4C
    ScriptEntry _0E65
    ScriptEntry _0EB4
    ScriptEntry _15F3
    ScriptEntry _1624
    .short 0xFD13

_00B2:
    ScrCmd_2F0
    ScrCmd_14D 0x4000
    CallIfEq 0x4000, 0, _01EF
    CallIfEq 0x4000, 1, _01F7
    GoToIfSet 0x9AC, _01ED
    SetFlag 0x2A7
    SetFlag 0x2A8
    SetFlag 0x2A9
    SetFlag 0x2AB
    SetFlag 0x2AC
    SetFlag 0x2AE
    SetFlag 0x2B0
    SetFlag 0x2B1
    SetFlag 0x2B3
    SetFlag 0x2B4
    SetFlag 0x2B6
    SetFlag 0x2B7
    SetFlag 0x2B8
    SetFlag 0x2B9
    GoToIfEq 0x404E, 0xFF, _01FF
    SetVar 0x400F, 0x404E
    CallIfEq 0x404E, 0, _0201
    CallIfEq 0x404E, 1, _0207
    CallIfEq 0x404E, 2, _020D
    CallIfEq 0x404E, 3, _021E
    CallIfEq 0x404E, 4, _0224
    CallIfEq 0x404E, 5, _0235
    CallIfEq 0x404E, 6, _0246
    CallIfEq 0x404E, 7, _0248
    CallIfEq 0x404E, 8, _0259
    CallIfEq 0x404E, 9, _025B
    CallIfEq 0x404E, 10, _026C
    CallIfEq 0x404E, 11, _026E
    CallIfEq 0x404E, 12, _0274
    CallIfEq 0x404E, 13, _0276
    CallIfEq 0x404E, 14, _0280
    End

_01ED:
    End

_01EF:
    SetVar 0x4021, 97
    Return

_01F7:
    SetVar 0x4021, 0
    Return

_01FF:
    End

_0201:
    ClearFlag 0x2A7
    Return

_0207:
    ClearFlag 0x2A8
    Return

_020D:
    GoToIfUnset 0x9AB, _029A
    ClearFlag 0x2A9
    Return

_021E:
    ClearFlag 0x2AB
    Return

_0224:
    GoToIfUnset 0x9AB, _029A
    ClearFlag 0x2AC
    Return

_0235:
    GoToIfUnset 0x9AB, _029A
    ClearFlag 0x2AE
    Return

_0246:
    Return

_0248:
    GoToIfUnset 0x9AB, _029A
    ClearFlag 0x2B1
    Return

_0259:
    Return

_025B:
    GoToIfUnset 0x9AB, _029A
    ClearFlag 0x2B4
    Return

_026C:
    Return

_026E:
    ClearFlag 0x2B7
    Return

_0274:
    Return

_0276:
    ClearFlag 0x2B9
    ClearFlag 0x2B7
    Return

_0280:
    ScrCmd_186 7, 6, 8
    ScrCmd_186 10, 7, 8
    ClearFlag 0x2B1
    ClearFlag 0x2B6
    Return

_029A:
    Return

_029C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferRivalName 0
    BufferPlayerName 1
    CallIfEq 0x405A, 0, _02F3
    CallIfEq 0x405A, 1, _02F8
    CallIfEq 0x405A, 2, _02FD
    CallIfEq 0x405A, 3, _0302
    CallIfEq 0x405A, 4, _0307
    GoTo _0AEC
    End

_02F3:
    Message 15
    Return

_02F8:
    Message 16
    Return

_02FD:
    Message 17
    Return

_0302:
    Message 18
    Return

_0307:
    Message 19
    Return

_030C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 1
    CallIfEq 0x405A, 0, _0360
    CallIfEq 0x405A, 1, _0380
    CallIfEq 0x405A, 2, _03A0
    CallIfEq 0x405A, 3, _03C0
    CallIfEq 0x405A, 4, _03E0
    GoTo _0AEC
    End

_0360:
    ScrCmd_14D 0x4000
    CallIfEq 0x4000, 0, _0400
    CallIfEq 0x4000, 1, _0405
    Return

_0380:
    ScrCmd_14D 0x4000
    CallIfEq 0x4000, 0, _040A
    CallIfEq 0x4000, 1, _040F
    Return

_03A0:
    ScrCmd_14D 0x4000
    CallIfEq 0x4000, 0, _0414
    CallIfEq 0x4000, 1, _0419
    Return

_03C0:
    ScrCmd_14D 0x4000
    CallIfEq 0x4000, 0, _041E
    CallIfEq 0x4000, 1, _0423
    Return

_03E0:
    ScrCmd_14D 0x4000
    CallIfEq 0x4000, 0, _0428
    CallIfEq 0x4000, 1, _042D
    Return

_0400:
    Message 20
    Return

_0405:
    Message 25
    Return

_040A:
    Message 21
    Return

_040F:
    Message 26
    Return

_0414:
    Message 22
    Return

_0419:
    Message 27
    Return

_041E:
    Message 23
    Return

_0423:
    Message 28
    Return

_0428:
    Message 24
    Return

_042D:
    Message 29
    Return

_0432:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallIfEq 0x405A, 0, _0483
    CallIfEq 0x405A, 1, _0488
    CallIfEq 0x405A, 2, _048D
    CallIfEq 0x405A, 3, _0492
    CallIfEq 0x405A, 4, _0497
    GoTo _0AEC
    End

_0483:
    Message 30
    Return

_0488:
    Message 31
    Return

_048D:
    Message 32
    Return

_0492:
    Message 33
    Return

_0497:
    Message 34
    Return

_049C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferRivalName 0
    BufferPlayerName 1
    CallIfEq 0x405A, 0, _04F3
    CallIfEq 0x405A, 1, _04F8
    CallIfEq 0x405A, 2, _04FD
    CallIfEq 0x405A, 3, _0502
    CallIfEq 0x405A, 4, _0507
    GoTo _0AEC
    End

_04F3:
    Message 35
    Return

_04F8:
    Message 36
    Return

_04FD:
    Message 37
    Return

_0502:
    Message 38
    Return

_0507:
    Message 39
    Return

_050C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallIfEq 0x405A, 0, _055D
    CallIfEq 0x405A, 1, _0562
    CallIfEq 0x405A, 2, _0567
    CallIfEq 0x405A, 3, _056C
    CallIfEq 0x405A, 4, _0571
    GoTo _0AEC
    End

_055D:
    Message 40
    Return

_0562:
    Message 41
    Return

_0567:
    Message 42
    Return

_056C:
    Message 43
    Return

_0571:
    Message 44
    Return

_0576:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallIfEq 0x405A, 0, _05C7
    CallIfEq 0x405A, 1, _05CC
    CallIfEq 0x405A, 2, _05D1
    CallIfEq 0x405A, 3, _05D6
    CallIfEq 0x405A, 4, _05DB
    GoTo _0AEC
    End

_05C7:
    Message 45
    Return

_05CC:
    Message 46
    Return

_05D1:
    Message 47
    Return

_05D6:
    Message 48
    Return

_05DB:
    Message 49
    Return

_05E0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallIfEq 0x405A, 0, _0631
    CallIfEq 0x405A, 1, _0636
    CallIfEq 0x405A, 2, _063B
    CallIfEq 0x405A, 3, _0640
    CallIfEq 0x405A, 4, _0645
    GoTo _0AEC
    End

_0631:
    Message 50
    Return

_0636:
    Message 51
    Return

_063B:
    Message 52
    Return

_0640:
    Message 53
    Return

_0645:
    Message 54
    Return

_064A:
    GoToIfEq 0x404E, 14, _0A50
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 1
    CallIfEq 0x405A, 0, _06AB
    CallIfEq 0x405A, 1, _06B0
    CallIfEq 0x405A, 2, _06B5
    CallIfEq 0x405A, 3, _06BA
    CallIfEq 0x405A, 4, _06BF
    GoTo _0AEC
    End

_06AB:
    Message 55
    Return

_06B0:
    Message 56
    Return

_06B5:
    Message 57
    Return

_06BA:
    Message 58
    Return

_06BF:
    Message 59
    Return

_06C4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallIfEq 0x405A, 0, _0715
    CallIfEq 0x405A, 1, _071D
    CallIfEq 0x405A, 2, _0722
    CallIfEq 0x405A, 3, _072A
    CallIfEq 0x405A, 4, _072F
    GoTo _0AEC
    End

_0715:
    BufferRivalName 0
    Message 60
    Return

_071D:
    Message 61
    Return

_0722:
    BufferRivalName 0
    Message 62
    Return

_072A:
    Message 63
    Return

_072F:
    Message 64
    Return

_0734:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallIfEq 0x405A, 0, _0785
    CallIfEq 0x405A, 1, _078A
    CallIfEq 0x405A, 2, _078F
    CallIfEq 0x405A, 3, _0794
    CallIfEq 0x405A, 4, _0799
    GoTo _0AEC
    End

_0785:
    Message 65
    Return

_078A:
    Message 66
    Return

_078F:
    Message 67
    Return

_0794:
    Message 68
    Return

_0799:
    Message 69
    Return

_079E:
    GoToIfEq 0x404E, 14, _0A50
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallIfEq 0x405A, 0, _07FC
    CallIfEq 0x405A, 1, _0801
    CallIfEq 0x405A, 2, _0806
    CallIfEq 0x405A, 3, _080B
    CallIfEq 0x405A, 4, _0810
    GoTo _0AEC
    End

_07FC:
    Message 70
    Return

_0801:
    Message 71
    Return

_0806:
    Message 72
    Return

_080B:
    Message 73
    Return

_0810:
    Message 74
    Return

_0815:
    GoToIfEq 0x404E, 13, _088C
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallIfEq 0x405A, 0, _0873
    CallIfEq 0x405A, 1, _0878
    CallIfEq 0x405A, 2, _087D
    CallIfEq 0x405A, 3, _0882
    CallIfEq 0x405A, 4, _0887
    GoTo _0AEC
    End

_0873:
    Message 75
    Return

_0878:
    Message 76
    Return

_087D:
    Message 77
    Return

_0882:
    Message 78
    Return

_0887:
    Message 79
    Return

_088C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CallIfEq 0x405A, 0, _08DB
    CallIfEq 0x405A, 1, _08E2
    CallIfEq 0x405A, 2, _08E9
    CallIfEq 0x405A, 3, _0900
    CallIfEq 0x405A, 4, _0917
    GoTo _0AEC
    End

_08DB:
    FacePlayer
    Message 86
    Return

_08E2:
    FacePlayer
    Message 88
    Return

_08E9:
    ApplyMovement 11, _0930
    ApplyMovement 13, _093C
    WaitMovement
    Message 89
    Return

_0900:
    ApplyMovement 11, _0930
    ApplyMovement 13, _093C
    WaitMovement
    Message 90
    Return

_0917:
    ApplyMovement 11, _0930
    ApplyMovement 13, _093C
    WaitMovement
    Message 91
    Return

    .balign 4, 0
_0930:
    MoveAction_03F
    MoveAction_023
    EndMovement

    .balign 4, 0
_093C:
    MoveAction_022
    EndMovement

_0944:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallIfEq 0x405A, 0, _0995
    CallIfEq 0x405A, 1, _099A
    CallIfEq 0x405A, 2, _099F
    CallIfEq 0x405A, 3, _09A4
    CallIfEq 0x405A, 4, _09A9
    GoTo _0AEC
    End

_0995:
    Message 80
    Return

_099A:
    Message 81
    Return

_099F:
    Message 82
    Return

_09A4:
    Message 83
    Return

_09A9:
    Message 84
    Return

_09AE:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CallIfEq 0x405A, 0, _09FD
    CallIfEq 0x405A, 1, _0A04
    CallIfEq 0x405A, 2, _0A0B
    CallIfEq 0x405A, 3, _0A22
    CallIfEq 0x405A, 4, _0A39
    GoTo _0AEC
    End

_09FD:
    FacePlayer
    Message 85
    Return

_0A04:
    FacePlayer
    Message 87
    Return

_0A0B:
    ApplyMovement 11, _0930
    ApplyMovement 13, _093C
    WaitMovement
    Message 89
    Return

_0A22:
    ApplyMovement 11, _0930
    ApplyMovement 13, _093C
    WaitMovement
    Message 90
    Return

_0A39:
    ApplyMovement 11, _0930
    ApplyMovement 13, _093C
    WaitMovement
    Message 91
    Return

_0A50:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    BufferPlayerName 1
    ApplyMovement 10, _0AE0
    ApplyMovement 7, _0AD8
    WaitMovement
    CallIfEq 0x405A, 0, _0AB4
    CallIfEq 0x405A, 1, _0AB9
    CallIfEq 0x405A, 2, _0ABE
    CallIfEq 0x405A, 3, _0AC3
    CallIfEq 0x405A, 4, _0AC8
    GoTo _0AEC
    End

_0AB4:
    Message 92
    Return

_0AB9:
    Message 93
    Return

_0ABE:
    Message 94
    Return

_0AC3:
    Message 95
    Return

_0AC8:
    GoToIfUnset 0x9A9, _0AB4
    Message 96
    Return

    .balign 4, 0
_0AD8:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0AE0:
    MoveAction_03F
    MoveAction_022
    EndMovement

_0AEC:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0AF4:
    LockAll
    PlayFanfare SEQ_SE_DP_DOOR_OPEN
    ClearFlag 0x2B0
    ScrCmd_186 6, 11, 11
    ScrCmd_188 6, 14
    ScrCmd_189 6, 0
    ScrCmd_064 6
    WaitFanfare SEQ_SE_DP_DOOR_OPEN
    ApplyMovement 0xFF, _0B3C
    ApplyMovement 6, _0B4C
    WaitMovement
    SetFlag 0x9AC
    SetVar 0x400F, 0
    ReleaseAll
    End

    .balign 4, 0
_0B3C:
    MoveAction_021
    MoveAction_03F 5
    MoveAction_022
    EndMovement

    .balign 4, 0
_0B4C:
    MoveAction_00E 2
    MoveAction_00C 5
    MoveAction_00E 3
    EndMovement

_0B5C:
    LockAll
    PlayFanfare SEQ_SE_DP_DOOR_OPEN
    ClearFlag 0x2B3
    ScrCmd_186 9, 11, 11
    ScrCmd_188 9, 14
    ScrCmd_189 9, 0
    ScrCmd_064 9
    WaitFanfare SEQ_SE_DP_DOOR_OPEN
    ApplyMovement 0xFF, _0BAC
    ApplyMovement 9, _0BA4
    WaitMovement
    SetFlag 0x9AC
    SetVar 0x400F, 0
    ReleaseAll
    End

    .balign 4, 0
_0BA4:
    MoveAction_00F 8
    EndMovement

    .balign 4, 0
_0BAC:
    MoveAction_021
    MoveAction_03F 3
    MoveAction_023
    EndMovement

_0BBC:
    LockAll
    PlayFanfare SEQ_SE_DP_DOOR_OPEN
    ClearFlag 0x2B6
    ScrCmd_186 10, 11, 11
    ScrCmd_188 10, 14
    ScrCmd_189 10, 0
    ScrCmd_064 10
    WaitFanfare SEQ_SE_DP_DOOR_OPEN
    ApplyMovement 0xFF, _0C14
    ApplyMovement 10, _0C04
    WaitMovement
    SetFlag 0x9AC
    SetVar 0x400F, 0
    ReleaseAll
    End

    .balign 4, 0
_0C04:
    MoveAction_00E 2
    MoveAction_00C 3
    MoveAction_00E 2
    EndMovement

    .balign 4, 0
_0C14:
    MoveAction_021
    MoveAction_03F 4
    MoveAction_022
    EndMovement

_0C24:
    LockAll
    PlayFanfare SEQ_SE_DP_DOOR_OPEN
    ClearFlag 0x2B8
    ScrCmd_186 12, 11, 11
    ScrCmd_188 12, 14
    ScrCmd_189 12, 0
    ScrCmd_064 12
    WaitFanfare SEQ_SE_DP_DOOR_OPEN
    ApplyMovement 0xFF, _0C78
    ApplyMovement 12, _0C6C
    WaitMovement
    SetFlag 0x9AC
    SetVar 0x400F, 0
    ReleaseAll
    End

    .balign 4, 0
_0C6C:
    MoveAction_00E 8
    MoveAction_00C 6
    EndMovement

    .balign 4, 0
_0C78:
    MoveAction_021
    MoveAction_03F 5
    MoveAction_022
    EndMovement

_0C88:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 99
    GoTo _0E5D
    End

_0C99:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 100
    GoTo _0E5D
    End

_0CAA:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 101
    GoTo _0E5D
    End

_0CBB:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 102
    GoTo _0E5D
    End

_0CCC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 103
    GoTo _0E5D
    End

_0CDD:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 104
    GoTo _0E5D
    End

_0CEE:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    PlayMusic SEQ_PL_AUDIO
    Message 105
    GoTo _0E5D
    End

_0D03:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 106
    GoTo _0E5D
    End

_0D14:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfSet 0x9A2, _0D63
    Message 107
    GoTo _0E5D
    End

_0D30:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 108
    GoTo _0E5D
    End

_0D41:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    BufferPlayerName 0
    Message 109
    GoTo _0E5D
    End

_0D55:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoTo _0D63
    End

_0D63:
    Message 110
    GoTo _0D6E
    End

_0D6E:
    ScrCmd_2FA 0x8004
    ScrCmd_2F8
    SetVar 0x8007, 0
    WaitTime 1, 0x800C
    GoTo _0D88
    End

_0D88:
    AddVar 0x8007, 1
    WaitTime 1, 0x800C
    Dummy1 0x8007
    ScrCmd_2FC 0x800C
    GoToIfEq 0x800C, 1, _0DC2
    Dummy1 0x8007
    GoToIfEq 0x8007, 0x258, _0DC2
    GoTo _0D88
    End

_0DC2:
    ScrCmd_2F9 0x8004
    CloseMessage
    ReleaseAll
    End

    .byte 44
    .byte 0
    .byte 118
    .byte 27
    .byte 0

_0DD1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 111
    GoTo _0E5D
    End

_0DE2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 112
    GoTo _0E5D
    End

_0DF3:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    PlayMusic SEQ_PL_PIANO
    Message 113
    GoTo _0E5D
    End

_0E08:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 114
    GoTo _0E5D
    End

_0E19:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 115
    GoTo _0E5D
    End

_0E2A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 116
    GoTo _0E5D
    End

_0E3B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 117
    GoTo _0E5D
    End

_0E4C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 118
    GoTo _0E5D
    End

_0E5D:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0E65:
    LockAll
    SetVar 0x40A1, 1
    ScrCmd_072 21, 1
    Message 0
    ScrCmd_045 1, 1, 0, 1, 0x8002
    ScrCmd_046 189, 0xFF, 0
    ScrCmd_047
    GoToIfNe 0x8002, 0, _0EA7
    Call _0F7C
    CloseMessage
    Call _1092
    ReleaseAll
    End

_0EA7:
    Message 1
    WaitABXPadPress
    CloseMessage
    ScrCmd_073
    ReleaseAll
    End

_0EB4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_072 21, 1
    Message 1
    ScrCmd_045 1, 1, 0, 1, 0x8002
    ScrCmd_046 189, 0xFF, 0
    ScrCmd_047
    GoToIfNe 0x8002, 0, _1478
    Call _0F7C
    CloseMessage
    Call _1092
    ReleaseAll
    End

_0EF6:
    ScrCmd_045 1, 1, 0, 1, 0x8002
    Call _19E4
    Call _1A05
    Call _1A26
    Call _1A47
    Call _1A68
    Call _1A89
    Call _1AAA
    Call _1ACB
    Call _1AEC
    Call _1B0D
    Call _1B2E
    Call _1B4F
    Call _1B7B
    Call _1BAF
    Call _1BE3
    Call _1C17
    Call _1C4B
    Call _1C7F
    Call _1CB3
    Call _1CDF
    ScrCmd_327 18
    Return

_0F7C:
    PlayFanfare SEQ_SE_DP_REGI
    CallIfEq 0x8002, 0, _2079
    CallIfEq 0x8002, 1, _208D
    CallIfEq 0x8002, 2, _20A1
    CallIfEq 0x8002, 3, _20B5
    CallIfEq 0x8002, 4, _20C9
    CallIfEq 0x8002, 5, _20DD
    CallIfEq 0x8002, 6, _20F1
    CallIfEq 0x8002, 7, _2105
    CallIfEq 0x8002, 8, _2119
    CallIfEq 0x8002, 9, _212D
    CallIfEq 0x8002, 10, _2141
    CallIfEq 0x8002, 11, _2155
    CallIfEq 0x8002, 12, _2169
    CallIfEq 0x8002, 13, _217D
    CallIfEq 0x8002, 14, _2191
    CallIfEq 0x8002, 15, _21A5
    CallIfEq 0x8002, 16, _21B9
    CallIfEq 0x8002, 17, _21CD
    CallIfEq 0x8002, 18, _21E1
    CallIfEq 0x8002, 19, _21F5
    ScrCmd_074
    WaitFanfare SEQ_SE_DP_REGI
    ScrCmd_073
    ScrCmd_30D 0x8002
    Return

_1092:
    ClearFlag 0x2C5
    ClearFlag 0x2C7
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_VILLA, 0, 10, 6, 1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x8002, 0, _1485
    GoToIfNe 0x8002, 0, _1514
    End

_10DA:
    Call _2209
    GoToIfEq 0x404E, 0, _1103
    ScrCmd_186 1, 11, 11
    ScrCmd_188 1, 14
    ScrCmd_189 1, 0
    Return

_1103:
    ScrCmd_186 1, 10, 8
    ScrCmd_188 1, 14
    ScrCmd_189 1, 0
    ClearFlag 0x2A7
    ScrCmd_064 1
    Return

_1121:
    Call _2209
    GoToIfEq 0x404E, 1, _114A
    ScrCmd_186 0, 11, 11
    ScrCmd_188 0, 14
    ScrCmd_189 0, 0
    Return

_114A:
    ScrCmd_186 0, 10, 8
    ScrCmd_188 0, 14
    ScrCmd_189 0, 0
    ClearFlag 0x2A8
    ScrCmd_064 0
    Return

_1168:
    Call _2209
    GoToIfEq 0x404E, 2, _1199
    GoTo _1183
    End

_1183:
    ScrCmd_186 2, 11, 11
    ScrCmd_188 2, 14
    ScrCmd_189 2, 0
    Return

_1199:
    GoToIfUnset 0x9AB, _1183
    ScrCmd_186 2, 10, 8
    ScrCmd_188 2, 14
    ScrCmd_189 2, 0
    ClearFlag 0x2A9
    ScrCmd_064 2
    Return

_11C2:
    Call _2209
    GoToIfEq 0x404E, 5, _11F3
    GoTo _11DD
    End

_11DD:
    ScrCmd_186 5, 11, 11
    ScrCmd_188 5, 14
    ScrCmd_189 5, 0
    Return

_11F3:
    GoToIfUnset 0x9AB, _11DD
    ScrCmd_186 5, 10, 8
    ScrCmd_188 5, 14
    ScrCmd_189 5, 0
    ClearFlag 0x2AE
    ScrCmd_064 5
    Return

_121C:
    Call _2209
    GoToIfEq 0x404E, 12, _1245
    ScrCmd_186 12, 11, 11
    ScrCmd_188 12, 14
    ScrCmd_189 12, 0
    Return

_1245:
    ScrCmd_186 12, 10, 8
    ScrCmd_188 12, 14
    ScrCmd_189 12, 0
    ClearFlag 0x2B8
    ScrCmd_064 12
    Return

_1263:
    CallIfNe 0x404E, 0, _12A3
    SetFlag 0x9AB
    SetVar 0x404E, 0xFF
    ApplyMovement 0xFF, _1454
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message 9
    CloseMessage
    ApplyMovement 1, _1468
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ScrCmd_065 1
    Return

_12A3:
    ClearFlag 0x2A7
    ScrCmd_064 1
    PlayFanfare SEQ_SE_DP_DOOR_OPEN
    WaitFanfare SEQ_SE_DP_DOOR_OPEN
    ApplyMovement 1, _145C
    WaitMovement
    Return

_12BF:
    CallIfNe 0x404E, 1, _1316
    SetFlag 0x9AB
    SetVar 0x404E, 1
    BufferRivalName 0
    BufferPlayerName 1
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _12FC
    GoToIfEq 0x800C, 1, _1307
    End

_12FC:
    Message 10
    GoTo _1312
    End

_1307:
    Message 11
    GoTo _1312
    End

_1312:
    CloseMessage
    Return

_1316:
    ClearFlag 0x2A8
    ScrCmd_064 0
    PlayFanfare SEQ_SE_DP_DOOR_OPEN
    WaitFanfare SEQ_SE_DP_DOOR_OPEN
    ApplyMovement 0, _145C
    WaitMovement
    Return

_1332:
    CallIfNe 0x404E, 2, _1374
    CallIfEq 0x404E, 2, _1367
    SetFlag 0x9AB
    SetFlag 0x2AA
    SetVar 0x404E, 2
    BufferRivalName 0
    BufferPlayerName 1
    Message 12
    CloseMessage
    Return

_1367:
    GoToIfUnset 0x9AB, _1374
    Return

_1374:
    ClearFlag 0x2A9
    ScrCmd_064 2
    PlayFanfare SEQ_SE_DP_DOOR_OPEN
    WaitFanfare SEQ_SE_DP_DOOR_OPEN
    ApplyMovement 2, _145C
    WaitMovement
    Return

_1390:
    CallIfNe 0x404E, 5, _13D2
    CallIfEq 0x404E, 5, _13C5
    SetFlag 0x9AB
    SetFlag 0x2B2
    SetVar 0x404E, 5
    BufferRivalName 0
    BufferPlayerName 1
    Message 13
    CloseMessage
    Return

_13C5:
    GoToIfUnset 0x9AB, _13D2
    Return

_13D2:
    ClearFlag 0x2AE
    ScrCmd_064 5
    PlayFanfare SEQ_SE_DP_DOOR_OPEN
    WaitFanfare SEQ_SE_DP_DOOR_OPEN
    ApplyMovement 5, _145C
    WaitMovement
    Return

_13EE:
    CallIfNe 0x404E, 12, _1436
    CallIfEq 0x404E, 12, _1429
    SetFlag 0x9AB
    SetVar 0x404E, 12
    SetVar 0x400F, 0
    SetFlag 0x9AC
    BufferRivalName 0
    BufferPlayerName 1
    Message 14
    CloseMessage
    Return

_1429:
    GoToIfUnset 0x9AC, _1436
    Return

_1436:
    ClearFlag 0x2B8
    ScrCmd_064 12
    PlayFanfare SEQ_SE_DP_DOOR_OPEN
    WaitFanfare SEQ_SE_DP_DOOR_OPEN
    ApplyMovement 12, _145C
    WaitMovement
    Return

    .balign 4, 0
_1454:
    MoveAction_021
    EndMovement

    .balign 4, 0
_145C:
    MoveAction_00E
    MoveAction_00C 3
    EndMovement

    .balign 4, 0
_1468:
    MoveAction_00D 3
    MoveAction_00F
    MoveAction_021
    EndMovement

_1478:
    Message 1
    WaitABXPadPress
    CloseMessage
    ScrCmd_073
    ReleaseAll
    End

_1485:
    Message 3
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_065 15
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ApplyMovement 14, _14FC
    ApplyMovement 0xFF, _14F0
    WaitMovement
    Message 4
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_065 14
    Call _156D
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    Call _15B0
    SetVar 0x40A1, 2
    Return

    .balign 4, 0
_14F0:
    MoveAction_03F
    MoveAction_022
    EndMovement

    .balign 4, 0
_14FC:
    MoveAction_023
    EndMovement

    .byte 13
    .byte 0
    .byte 3
    .byte 0
    .byte 15
    .byte 0
    .byte 1
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_1514:
    Call _18F8
    GoToIfEq 0x800C, 1, _155E
    Message 7
    GoTo _1532
    End

_1532:
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_065 15
    Call _156D
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    Call _15B0
    Return

_155E:
    ScrCmd_30A 49
    Message 8
    GoTo _1532
    End

_156D:
    CallIfEq 0x8002, 0, _10DA
    CallIfEq 0x8002, 2, _1121
    CallIfEq 0x8002, 7, _1168
    CallIfEq 0x8002, 9, _11C2
    CallIfEq 0x8002, 14, _121C
    Return

_15B0:
    CallIfEq 0x8002, 0, _1263
    CallIfEq 0x8002, 2, _12BF
    CallIfEq 0x8002, 7, _1332
    CallIfEq 0x8002, 9, _1390
    CallIfEq 0x8002, 14, _13EE
    Return

_15F3:
    LockAll
    ApplyMovement 14, _1614
    WaitMovement
    Message 2
    CloseMessage
    ApplyMovement 0xFF, _161C
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
_1614:
    MoveAction_021
    EndMovement

    .balign 4, 0
_161C:
    MoveAction_00C
    EndMovement

_1624:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_072 21, 1
    BufferPlayerName 1
    Message 119
    Call _18F8
    GoToIfEq 0x800C, 1, _1651
    GoTo _165C
    End

_1651:
    Message 124
    GoTo _1667
    End

_165C:
    Message 120
    GoTo _1667
    End

_1667:
    Call _0EF6
    SetVar 0x8003, 1
    CallIfEq 0x8002, 0, _1EA5
    CallIfEq 0x8002, 1, _1EB2
    CallIfEq 0x8002, 2, _1EBF
    CallIfEq 0x8002, 3, _1ECC
    CallIfEq 0x8002, 4, _1ED9
    CallIfEq 0x8002, 5, _1EE6
    CallIfEq 0x8002, 6, _1EF3
    CallIfEq 0x8002, 7, _1F00
    CallIfEq 0x8002, 8, _1F0D
    CallIfEq 0x8002, 9, _1F1A
    CallIfEq 0x8002, 10, _1F27
    CallIfEq 0x8002, 11, _1F34
    CallIfEq 0x8002, 12, _1F41
    CallIfEq 0x8002, 13, _1F4E
    CallIfEq 0x8002, 14, _1F5B
    CallIfEq 0x8002, 15, _1F68
    CallIfEq 0x8002, 16, _1F75
    CallIfEq 0x8002, 17, _1F82
    CallIfEq 0x8002, 18, _1F8F
    CallIfEq 0x8002, 19, _1F9C
    GoToIfEq 0x8002, -2, _18DE
    GoToIfEq 0x8003, 0, _18C8
    Message 121
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _18DE
    CallIfEq 0x8002, 0, _1FB1
    CallIfEq 0x8002, 1, _1FBB
    CallIfEq 0x8002, 2, _1FC5
    CallIfEq 0x8002, 3, _1FCF
    CallIfEq 0x8002, 4, _1FD9
    CallIfEq 0x8002, 5, _1FE3
    CallIfEq 0x8002, 6, _1FED
    CallIfEq 0x8002, 7, _1FF7
    CallIfEq 0x8002, 8, _2001
    CallIfEq 0x8002, 9, _200B
    CallIfEq 0x8002, 10, _2015
    CallIfEq 0x8002, 11, _201F
    CallIfEq 0x8002, 12, _2029
    CallIfEq 0x8002, 13, _2033
    CallIfEq 0x8002, 14, _203D
    CallIfEq 0x8002, 15, _2047
    CallIfEq 0x8002, 16, _2051
    CallIfEq 0x8002, 17, _205B
    CallIfEq 0x8002, 18, _2065
    CallIfEq 0x8002, 19, _206F
    GoToIfEq 0x8003, 0, _18D3
    Call _0F7C
    CloseMessage
    Call _1092
    ReleaseAll
    End

_18C8:
    Message 122
    GoTo _18E6
    End

_18D3:
    Message 123
    GoTo _18E6
    End

_18DE:
    GoTo _18F0
    End

_18E6:
    WaitABXPadPress
    GoTo _18F0
    End

_18F0:
    CloseMessage
    ScrCmd_073
    ReleaseAll
    End

_18F8:
    GoToIfUnset 0x997, _19DC
    GoToIfUnset 0x998, _19DC
    GoToIfUnset 0x999, _19DC
    GoToIfUnset 0x99A, _19DC
    GoToIfUnset 0x99B, _19DC
    GoToIfUnset 0x99C, _19DC
    GoToIfUnset 0x99D, _19DC
    GoToIfUnset 0x99E, _19DC
    GoToIfUnset 0x99F, _19DC
    GoToIfUnset 0x9A0, _19DC
    GoToIfUnset 0x9A1, _19DC
    GoToIfUnset 0x9A2, _19DC
    GoToIfUnset 0x9A3, _19DC
    GoToIfUnset 0x9A4, _19DC
    GoToIfUnset 0x9A5, _19DC
    GoToIfUnset 0x9A6, _19DC
    GoToIfUnset 0x9A7, _19DC
    GoToIfUnset 0x9A8, _19DC
    GoToIfUnset 0x9A9, _19DC
    GoToIfUnset 0x9AA, _19DC
    SetVar 0x800C, 1
    Return

_19DC:
    SetVar 0x800C, 0
    Return

_19E4:
    ScrCmd_2F5 0, 0, 1, 6
    CallIfUnset 0x997, _1D15
    CallIfSet 0x997, _1D1F
    Return

_1A05:
    ScrCmd_2F5 0, 0x1D4C0, 1, 6
    CallIfUnset 0x998, _1D29
    CallIfSet 0x998, _1D33
    Return

_1A26:
    ScrCmd_2F5 0, 0x15F90, 1, 6
    CallIfUnset 0x999, _1D3D
    CallIfSet 0x999, _1D47
    Return

_1A47:
    ScrCmd_2F5 0, 0x2DA78, 1, 6
    CallIfUnset 0x99A, _1D51
    CallIfSet 0x99A, _1D5B
    Return

_1A68:
    ScrCmd_2F5 0, 0xE290, 1, 6
    CallIfUnset 0x99B, _1D65
    CallIfSet 0x99B, _1D6F
    Return

_1A89:
    ScrCmd_2F5 0, 0x35B60, 1, 6
    CallIfUnset 0x99C, _1D79
    CallIfSet 0x99C, _1D83
    Return

_1AAA:
    ScrCmd_2F5 0, 0x27100, 1, 6
    CallIfUnset 0x99D, _1D8D
    CallIfSet 0x99D, _1D97
    Return

_1ACB:
    ScrCmd_2F5 0, 0x249F0, 1, 6
    CallIfUnset 0x99E, _1DA1
    CallIfSet 0x99E, _1DAB
    Return

_1AEC:
    ScrCmd_2F5 0, 0x1F018, 1, 6
    CallIfUnset 0x99F, _1DB5
    CallIfSet 0x99F, _1DBF
    Return

_1B0D:
    ScrCmd_2F5 0, 0x1D4C0, 1, 6
    CallIfUnset 0x9A0, _1DC9
    CallIfSet 0x9A0, _1DD3
    Return

_1B2E:
    ScrCmd_2F5 0, 0x29040, 1, 6
    CallIfUnset 0x9A1, _1DDD
    CallIfSet 0x9A1, _1DE7
    Return

_1B4F:
    GoToIfUnset 0x99F, _1D13
    ScrCmd_2F5 0, 0x62D4, 1, 6
    CallIfUnset 0x9A2, _1DF1
    CallIfSet 0x9A2, _1DFB
    Return

_1B7B:
    ScrCmd_30F 13, 0x800C
    GoToIfEq 0x800C, 0, _1D13
    ScrCmd_2F5 0, 0x249F0, 1, 6
    CallIfUnset 0x9A3, _1E05
    CallIfSet 0x9A3, _1E0F
    Return

_1BAF:
    ScrCmd_30F 14, 0x800C
    GoToIfEq 0x800C, 0, _1D13
    ScrCmd_2F5 0, 0x249F0, 1, 6
    CallIfUnset 0x9A4, _1E19
    CallIfSet 0x9A4, _1E23
    Return

_1BE3:
    ScrCmd_30F 15, 0x800C
    GoToIfEq 0x800C, 0, _1D13
    ScrCmd_2F5 0, 0x23D0C, 1, 6
    CallIfUnset 0x9A5, _1E2D
    CallIfSet 0x9A5, _1E37
    Return

_1C17:
    ScrCmd_30F 16, 0x800C
    GoToIfEq 0x800C, 0, _1D13
    ScrCmd_2F5 0, 0x32C80, 1, 6
    CallIfUnset 0x9A6, _1E41
    CallIfSet 0x9A6, _1E4B
    Return

_1C4B:
    ScrCmd_30F 17, 0x800C
    GoToIfEq 0x800C, 0, _1D13
    ScrCmd_2F5 0, 0xCB20, 1, 6
    CallIfUnset 0x9A7, _1E55
    CallIfSet 0x9A7, _1E5F
    Return

_1C7F:
    ScrCmd_30F 18, 0x800C
    GoToIfEq 0x800C, 0, _1D13
    ScrCmd_2F5 0, 0x222E0, 1, 6
    CallIfUnset 0x9A8, _1E69
    CallIfSet 0x9A8, _1E73
    Return

_1CB3:
    GoToIfUnset 0x9A6, _1D13
    ScrCmd_2F5 0, 0x1A5E0, 1, 6
    CallIfUnset 0x9A9, _1E7D
    CallIfSet 0x9A9, _1E87
    Return

_1CDF:
    ScrCmd_30F 20, 0x800C
    GoToIfEq 0x800C, 0, _1D13
    ScrCmd_2F5 0, 0x1D4C0, 1, 6
    CallIfUnset 0x9AA, _1E91
    CallIfSet 0x9AA, _1E9B
    Return

_1D13:
    Return

_1D15:
    ScrCmd_046 149, 0xFF, 0
    Return

_1D1F:
    ScrCmd_046 169, 0xFF, 0
    Return

_1D29:
    ScrCmd_046 150, 0xFF, 1
    Return

_1D33:
    ScrCmd_046 170, 0xFF, 1
    Return

_1D3D:
    ScrCmd_046 151, 0xFF, 2
    Return

_1D47:
    ScrCmd_046 171, 0xFF, 2
    Return

_1D51:
    ScrCmd_046 152, 0xFF, 3
    Return

_1D5B:
    ScrCmd_046 172, 0xFF, 3
    Return

_1D65:
    ScrCmd_046 153, 0xFF, 4
    Return

_1D6F:
    ScrCmd_046 173, 0xFF, 4
    Return

_1D79:
    ScrCmd_046 154, 0xFF, 5
    Return

_1D83:
    ScrCmd_046 174, 0xFF, 5
    Return

_1D8D:
    ScrCmd_046 155, 0xFF, 6
    Return

_1D97:
    ScrCmd_046 175, 0xFF, 6
    Return

_1DA1:
    ScrCmd_046 156, 0xFF, 7
    Return

_1DAB:
    ScrCmd_046 176, 0xFF, 7
    Return

_1DB5:
    ScrCmd_046 157, 0xFF, 8
    Return

_1DBF:
    ScrCmd_046 177, 0xFF, 8
    Return

_1DC9:
    ScrCmd_046 158, 0xFF, 9
    Return

_1DD3:
    ScrCmd_046 178, 0xFF, 9
    Return

_1DDD:
    ScrCmd_046 159, 0xFF, 10
    Return

_1DE7:
    ScrCmd_046 179, 0xFF, 10
    Return

_1DF1:
    ScrCmd_046 160, 0xFF, 11
    Return

_1DFB:
    ScrCmd_046 180, 0xFF, 11
    Return

_1E05:
    ScrCmd_046 161, 0xFF, 12
    Return

_1E0F:
    ScrCmd_046 181, 0xFF, 12
    Return

_1E19:
    ScrCmd_046 162, 0xFF, 13
    Return

_1E23:
    ScrCmd_046 182, 0xFF, 13
    Return

_1E2D:
    ScrCmd_046 163, 0xFF, 14
    Return

_1E37:
    ScrCmd_046 183, 0xFF, 14
    Return

_1E41:
    ScrCmd_046 164, 0xFF, 15
    Return

_1E4B:
    ScrCmd_046 184, 0xFF, 15
    Return

_1E55:
    ScrCmd_046 165, 0xFF, 16
    Return

_1E5F:
    ScrCmd_046 185, 0xFF, 16
    Return

_1E69:
    ScrCmd_046 166, 0xFF, 17
    Return

_1E73:
    ScrCmd_046 186, 0xFF, 17
    Return

_1E7D:
    ScrCmd_046 167, 0xFF, 18
    Return

_1E87:
    ScrCmd_046 187, 0xFF, 18
    Return

_1E91:
    ScrCmd_046 168, 0xFF, 19
    Return

_1E9B:
    ScrCmd_046 188, 0xFF, 19
    Return

_1EA5:
    GoToIfSet 0x997, _1FA9
    Return

_1EB2:
    GoToIfSet 0x998, _1FA9
    Return

_1EBF:
    GoToIfSet 0x999, _1FA9
    Return

_1ECC:
    GoToIfSet 0x99A, _1FA9
    Return

_1ED9:
    GoToIfSet 0x99B, _1FA9
    Return

_1EE6:
    GoToIfSet 0x99C, _1FA9
    Return

_1EF3:
    GoToIfSet 0x99D, _1FA9
    Return

_1F00:
    GoToIfSet 0x99E, _1FA9
    Return

_1F0D:
    GoToIfSet 0x99F, _1FA9
    Return

_1F1A:
    GoToIfSet 0x9A0, _1FA9
    Return

_1F27:
    GoToIfSet 0x9A1, _1FA9
    Return

_1F34:
    GoToIfSet 0x9A2, _1FA9
    Return

_1F41:
    GoToIfSet 0x9A3, _1FA9
    Return

_1F4E:
    GoToIfSet 0x9A4, _1FA9
    Return

_1F5B:
    GoToIfSet 0x9A5, _1FA9
    Return

_1F68:
    GoToIfSet 0x9A6, _1FA9
    Return

_1F75:
    GoToIfSet 0x9A7, _1FA9
    Return

_1F82:
    GoToIfSet 0x9A8, _1FA9
    Return

_1F8F:
    GoToIfSet 0x9A9, _1FA9
    Return

_1F9C:
    GoToIfSet 0x9AA, _1FA9
    Return

_1FA9:
    SetVar 0x8003, 0
    Return

_1FB1:
    ScrCmd_071 0x8003, 0
    Return

_1FBB:
    ScrCmd_071 0x8003, 0x1D4C0
    Return

_1FC5:
    ScrCmd_071 0x8003, 0x15F90
    Return

_1FCF:
    ScrCmd_071 0x8003, 0x2DA78
    Return

_1FD9:
    ScrCmd_071 0x8003, 0xE290
    Return

_1FE3:
    ScrCmd_071 0x8003, 0x35B60
    Return

_1FED:
    ScrCmd_071 0x8003, 0x27100
    Return

_1FF7:
    ScrCmd_071 0x8003, 0x249F0
    Return

_2001:
    ScrCmd_071 0x8003, 0x1F018
    Return

_200B:
    ScrCmd_071 0x8003, 0x1D4C0
    Return

_2015:
    ScrCmd_071 0x8003, 0x29040
    Return

_201F:
    ScrCmd_071 0x8003, 0x62D4
    Return

_2029:
    ScrCmd_071 0x8003, 0x249F0
    Return

_2033:
    ScrCmd_071 0x8003, 0x249F0
    Return

_203D:
    ScrCmd_071 0x8003, 0x23D0C
    Return

_2047:
    ScrCmd_071 0x8003, 0x32C80
    Return

_2051:
    ScrCmd_071 0x8003, 0xCB20
    Return

_205B:
    ScrCmd_071 0x8003, 0x222E0
    Return

_2065:
    ScrCmd_071 0x8003, 0x1A5E0
    Return

_206F:
    ScrCmd_071 0x8003, 0x1D4C0
    Return

_2079:
    ScrCmd_335 35, 0
    ScrCmd_070 0
    SetFlag 0x997
    Return

_208D:
    ScrCmd_335 35, 0x1D4C0
    ScrCmd_070 0x1D4C0
    SetFlag 0x998
    Return

_20A1:
    ScrCmd_335 35, 0x15F90
    ScrCmd_070 0x15F90
    SetFlag 0x999
    Return

_20B5:
    ScrCmd_335 35, 0x2DA78
    ScrCmd_070 0x2DA78
    SetFlag 0x99A
    Return

_20C9:
    ScrCmd_335 35, 0xE290
    ScrCmd_070 0xE290
    SetFlag 0x99B
    Return

_20DD:
    ScrCmd_335 35, 0x35B60
    ScrCmd_070 0x35B60
    SetFlag 0x99C
    Return

_20F1:
    ScrCmd_335 35, 0x27100
    ScrCmd_070 0x27100
    SetFlag 0x99D
    Return

_2105:
    ScrCmd_335 35, 0x249F0
    ScrCmd_070 0x249F0
    SetFlag 0x99E
    Return

_2119:
    ScrCmd_335 35, 0x1F018
    ScrCmd_070 0x1F018
    SetFlag 0x99F
    Return

_212D:
    ScrCmd_335 35, 0x1D4C0
    ScrCmd_070 0x1D4C0
    SetFlag 0x9A0
    Return

_2141:
    ScrCmd_335 35, 0x29040
    ScrCmd_070 0x29040
    SetFlag 0x9A1
    Return

_2155:
    ScrCmd_335 35, 0x62D4
    ScrCmd_070 0x62D4
    SetFlag 0x9A2
    Return

_2169:
    ScrCmd_335 35, 0x249F0
    ScrCmd_070 0x249F0
    SetFlag 0x9A3
    Return

_217D:
    ScrCmd_335 35, 0x249F0
    ScrCmd_070 0x249F0
    SetFlag 0x9A4
    Return

_2191:
    ScrCmd_335 35, 0x23D0C
    ScrCmd_070 0x23D0C
    SetFlag 0x9A5
    Return

_21A5:
    ScrCmd_335 35, 0x32C80
    ScrCmd_070 0x32C80
    SetFlag 0x9A6
    Return

_21B9:
    ScrCmd_335 35, 0xCB20
    ScrCmd_070 0xCB20
    SetFlag 0x9A7
    Return

_21CD:
    ScrCmd_335 35, 0x222E0
    ScrCmd_070 0x222E0
    SetFlag 0x9A8
    Return

_21E1:
    ScrCmd_335 35, 0x1A5E0
    ScrCmd_070 0x1A5E0
    SetFlag 0x9A9
    Return

_21F5:
    ScrCmd_335 35, 0x1D4C0
    ScrCmd_070 0x1D4C0
    SetFlag 0x9AA
    Return

_2209:
    CallIfEq 0x404E, 0, _22CE
    CallIfEq 0x404E, 1, _22D4
    CallIfEq 0x404E, 2, _22DA
    CallIfEq 0x404E, 3, _22EB
    CallIfEq 0x404E, 4, _22F1
    CallIfEq 0x404E, 5, _2302
    CallIfEq 0x404E, 6, _2313
    CallIfEq 0x404E, 7, _2324
    CallIfEq 0x404E, 8, _2335
    CallIfEq 0x404E, 9, _2346
    CallIfEq 0x404E, 10, _2357
    CallIfEq 0x404E, 11, _2368
    CallIfEq 0x404E, 12, _236E
    CallIfEq 0x404E, 13, _237F
    CallIfEq 0x404E, 14, _2389
    Return

_22CE:
    ScrCmd_065 1
    Return

_22D4:
    ScrCmd_065 0
    Return

_22DA:
    GoToIfUnset 0x9AB, _2395
    ScrCmd_065 2
    Return

_22EB:
    ScrCmd_065 3
    Return

_22F1:
    GoToIfUnset 0x9AB, _2395
    ScrCmd_065 4
    Return

_2302:
    GoToIfUnset 0x9AB, _2395
    ScrCmd_065 5
    Return

_2313:
    GoToIfUnset 0x9AC, _2393
    ScrCmd_065 6
    Return

_2324:
    GoToIfUnset 0x9AB, _2395
    ScrCmd_065 7
    Return

_2335:
    GoToIfUnset 0x9AC, _2393
    ScrCmd_065 9
    Return

_2346:
    GoToIfUnset 0x9AB, _2395
    ScrCmd_065 8
    Return

_2357:
    GoToIfUnset 0x9AC, _2393
    ScrCmd_065 10
    Return

_2368:
    ScrCmd_065 11
    Return

_236E:
    GoToIfUnset 0x9AC, _2393
    ScrCmd_065 12
    Return

_237F:
    ScrCmd_065 13
    ScrCmd_065 11
    Return

_2389:
    ScrCmd_065 7
    ScrCmd_065 10
    Return

_2393:
    Return

_2395:
    SetFlag 0x2AA
    SetFlag 0x2AD
    SetFlag 0x2AF
    SetFlag 0x2B2
    SetFlag 0x2B5
    Return

    .byte 0
