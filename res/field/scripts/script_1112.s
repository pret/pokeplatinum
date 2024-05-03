    .include "macros/scrcmd.inc"

    .data

    .long _00B2-.-4
    .long _029C-.-4
    .long _030C-.-4
    .long _0432-.-4
    .long _049C-.-4
    .long _050C-.-4
    .long _0576-.-4
    .long _05E0-.-4
    .long _064A-.-4
    .long _06C4-.-4
    .long _0734-.-4
    .long _079E-.-4
    .long _0815-.-4
    .long _0944-.-4
    .long _09AE-.-4
    .long _0A50-.-4
    .long _0AF4-.-4
    .long _0B5C-.-4
    .long _0BBC-.-4
    .long _0C24-.-4
    .long _0C88-.-4
    .long _0C99-.-4
    .long _0CAA-.-4
    .long _0CBB-.-4
    .long _0CCC-.-4
    .long _0CDD-.-4
    .long _0CEE-.-4
    .long _0D03-.-4
    .long _0D14-.-4
    .long _0D30-.-4
    .long _0D41-.-4
    .long _0D55-.-4
    .long _0DD1-.-4
    .long _0DE2-.-4
    .long _0DF3-.-4
    .long _0E08-.-4
    .long _0E19-.-4
    .long _0E2A-.-4
    .long _0E3B-.-4
    .long _0E4C-.-4
    .long _0E65-.-4
    .long _0EB4-.-4
    .long _15F3-.-4
    .long _1624-.-4
    .short 0xFD13

_00B2:
    ScrCmd_2F0
    ScrCmd_14D 0x4000
    CompareVarToValue 0x4000, 0
    CallIf 1, _01EF
    CompareVarToValue 0x4000, 1
    CallIf 1, _01F7
    CheckFlag 0x9AC
    GoToIf 1, _01ED
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
    CompareVarToValue 0x404E, 0xFF
    GoToIf 1, _01FF
    SetVar 0x400F, 0x404E
    CompareVarToValue 0x404E, 0
    CallIf 1, _0201
    CompareVarToValue 0x404E, 1
    CallIf 1, _0207
    CompareVarToValue 0x404E, 2
    CallIf 1, _020D
    CompareVarToValue 0x404E, 3
    CallIf 1, _021E
    CompareVarToValue 0x404E, 4
    CallIf 1, _0224
    CompareVarToValue 0x404E, 5
    CallIf 1, _0235
    CompareVarToValue 0x404E, 6
    CallIf 1, _0246
    CompareVarToValue 0x404E, 7
    CallIf 1, _0248
    CompareVarToValue 0x404E, 8
    CallIf 1, _0259
    CompareVarToValue 0x404E, 9
    CallIf 1, _025B
    CompareVarToValue 0x404E, 10
    CallIf 1, _026C
    CompareVarToValue 0x404E, 11
    CallIf 1, _026E
    CompareVarToValue 0x404E, 12
    CallIf 1, _0274
    CompareVarToValue 0x404E, 13
    CallIf 1, _0276
    CompareVarToValue 0x404E, 14
    CallIf 1, _0280
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
    CheckFlag 0x9AB
    GoToIf 0, _029A
    ClearFlag 0x2A9
    Return

_021E:
    ClearFlag 0x2AB
    Return

_0224:
    CheckFlag 0x9AB
    GoToIf 0, _029A
    ClearFlag 0x2AC
    Return

_0235:
    CheckFlag 0x9AB
    GoToIf 0, _029A
    ClearFlag 0x2AE
    Return

_0246:
    Return

_0248:
    CheckFlag 0x9AB
    GoToIf 0, _029A
    ClearFlag 0x2B1
    Return

_0259:
    Return

_025B:
    CheckFlag 0x9AB
    GoToIf 0, _029A
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
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    CompareVarToValue 0x405A, 0
    CallIf 1, _02F3
    CompareVarToValue 0x405A, 1
    CallIf 1, _02F8
    CompareVarToValue 0x405A, 2
    CallIf 1, _02FD
    CompareVarToValue 0x405A, 3
    CallIf 1, _0302
    CompareVarToValue 0x405A, 4
    CallIf 1, _0307
    GoTo _0AEC
    End

_02F3:
    ScrCmd_02C 15
    Return

_02F8:
    ScrCmd_02C 16
    Return

_02FD:
    ScrCmd_02C 17
    Return

_0302:
    ScrCmd_02C 18
    Return

_0307:
    ScrCmd_02C 19
    Return

_030C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_0CD 1
    CompareVarToValue 0x405A, 0
    CallIf 1, _0360
    CompareVarToValue 0x405A, 1
    CallIf 1, _0380
    CompareVarToValue 0x405A, 2
    CallIf 1, _03A0
    CompareVarToValue 0x405A, 3
    CallIf 1, _03C0
    CompareVarToValue 0x405A, 4
    CallIf 1, _03E0
    GoTo _0AEC
    End

_0360:
    ScrCmd_14D 0x4000
    CompareVarToValue 0x4000, 0
    CallIf 1, _0400
    CompareVarToValue 0x4000, 1
    CallIf 1, _0405
    Return

_0380:
    ScrCmd_14D 0x4000
    CompareVarToValue 0x4000, 0
    CallIf 1, _040A
    CompareVarToValue 0x4000, 1
    CallIf 1, _040F
    Return

_03A0:
    ScrCmd_14D 0x4000
    CompareVarToValue 0x4000, 0
    CallIf 1, _0414
    CompareVarToValue 0x4000, 1
    CallIf 1, _0419
    Return

_03C0:
    ScrCmd_14D 0x4000
    CompareVarToValue 0x4000, 0
    CallIf 1, _041E
    CompareVarToValue 0x4000, 1
    CallIf 1, _0423
    Return

_03E0:
    ScrCmd_14D 0x4000
    CompareVarToValue 0x4000, 0
    CallIf 1, _0428
    CompareVarToValue 0x4000, 1
    CallIf 1, _042D
    Return

_0400:
    ScrCmd_02C 20
    Return

_0405:
    ScrCmd_02C 25
    Return

_040A:
    ScrCmd_02C 21
    Return

_040F:
    ScrCmd_02C 26
    Return

_0414:
    ScrCmd_02C 22
    Return

_0419:
    ScrCmd_02C 27
    Return

_041E:
    ScrCmd_02C 23
    Return

_0423:
    ScrCmd_02C 28
    Return

_0428:
    ScrCmd_02C 24
    Return

_042D:
    ScrCmd_02C 29
    Return

_0432:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CompareVarToValue 0x405A, 0
    CallIf 1, _0483
    CompareVarToValue 0x405A, 1
    CallIf 1, _0488
    CompareVarToValue 0x405A, 2
    CallIf 1, _048D
    CompareVarToValue 0x405A, 3
    CallIf 1, _0492
    CompareVarToValue 0x405A, 4
    CallIf 1, _0497
    GoTo _0AEC
    End

_0483:
    ScrCmd_02C 30
    Return

_0488:
    ScrCmd_02C 31
    Return

_048D:
    ScrCmd_02C 32
    Return

_0492:
    ScrCmd_02C 33
    Return

_0497:
    ScrCmd_02C 34
    Return

_049C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    CompareVarToValue 0x405A, 0
    CallIf 1, _04F3
    CompareVarToValue 0x405A, 1
    CallIf 1, _04F8
    CompareVarToValue 0x405A, 2
    CallIf 1, _04FD
    CompareVarToValue 0x405A, 3
    CallIf 1, _0502
    CompareVarToValue 0x405A, 4
    CallIf 1, _0507
    GoTo _0AEC
    End

_04F3:
    ScrCmd_02C 35
    Return

_04F8:
    ScrCmd_02C 36
    Return

_04FD:
    ScrCmd_02C 37
    Return

_0502:
    ScrCmd_02C 38
    Return

_0507:
    ScrCmd_02C 39
    Return

_050C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CompareVarToValue 0x405A, 0
    CallIf 1, _055D
    CompareVarToValue 0x405A, 1
    CallIf 1, _0562
    CompareVarToValue 0x405A, 2
    CallIf 1, _0567
    CompareVarToValue 0x405A, 3
    CallIf 1, _056C
    CompareVarToValue 0x405A, 4
    CallIf 1, _0571
    GoTo _0AEC
    End

_055D:
    ScrCmd_02C 40
    Return

_0562:
    ScrCmd_02C 41
    Return

_0567:
    ScrCmd_02C 42
    Return

_056C:
    ScrCmd_02C 43
    Return

_0571:
    ScrCmd_02C 44
    Return

_0576:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CompareVarToValue 0x405A, 0
    CallIf 1, _05C7
    CompareVarToValue 0x405A, 1
    CallIf 1, _05CC
    CompareVarToValue 0x405A, 2
    CallIf 1, _05D1
    CompareVarToValue 0x405A, 3
    CallIf 1, _05D6
    CompareVarToValue 0x405A, 4
    CallIf 1, _05DB
    GoTo _0AEC
    End

_05C7:
    ScrCmd_02C 45
    Return

_05CC:
    ScrCmd_02C 46
    Return

_05D1:
    ScrCmd_02C 47
    Return

_05D6:
    ScrCmd_02C 48
    Return

_05DB:
    ScrCmd_02C 49
    Return

_05E0:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CompareVarToValue 0x405A, 0
    CallIf 1, _0631
    CompareVarToValue 0x405A, 1
    CallIf 1, _0636
    CompareVarToValue 0x405A, 2
    CallIf 1, _063B
    CompareVarToValue 0x405A, 3
    CallIf 1, _0640
    CompareVarToValue 0x405A, 4
    CallIf 1, _0645
    GoTo _0AEC
    End

_0631:
    ScrCmd_02C 50
    Return

_0636:
    ScrCmd_02C 51
    Return

_063B:
    ScrCmd_02C 52
    Return

_0640:
    ScrCmd_02C 53
    Return

_0645:
    ScrCmd_02C 54
    Return

_064A:
    CompareVarToValue 0x404E, 14
    GoToIf 1, _0A50
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_0CD 1
    CompareVarToValue 0x405A, 0
    CallIf 1, _06AB
    CompareVarToValue 0x405A, 1
    CallIf 1, _06B0
    CompareVarToValue 0x405A, 2
    CallIf 1, _06B5
    CompareVarToValue 0x405A, 3
    CallIf 1, _06BA
    CompareVarToValue 0x405A, 4
    CallIf 1, _06BF
    GoTo _0AEC
    End

_06AB:
    ScrCmd_02C 55
    Return

_06B0:
    ScrCmd_02C 56
    Return

_06B5:
    ScrCmd_02C 57
    Return

_06BA:
    ScrCmd_02C 58
    Return

_06BF:
    ScrCmd_02C 59
    Return

_06C4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CompareVarToValue 0x405A, 0
    CallIf 1, _0715
    CompareVarToValue 0x405A, 1
    CallIf 1, _071D
    CompareVarToValue 0x405A, 2
    CallIf 1, _0722
    CompareVarToValue 0x405A, 3
    CallIf 1, _072A
    CompareVarToValue 0x405A, 4
    CallIf 1, _072F
    GoTo _0AEC
    End

_0715:
    ScrCmd_0CE 0
    ScrCmd_02C 60
    Return

_071D:
    ScrCmd_02C 61
    Return

_0722:
    ScrCmd_0CE 0
    ScrCmd_02C 62
    Return

_072A:
    ScrCmd_02C 63
    Return

_072F:
    ScrCmd_02C 64
    Return

_0734:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CompareVarToValue 0x405A, 0
    CallIf 1, _0785
    CompareVarToValue 0x405A, 1
    CallIf 1, _078A
    CompareVarToValue 0x405A, 2
    CallIf 1, _078F
    CompareVarToValue 0x405A, 3
    CallIf 1, _0794
    CompareVarToValue 0x405A, 4
    CallIf 1, _0799
    GoTo _0AEC
    End

_0785:
    ScrCmd_02C 65
    Return

_078A:
    ScrCmd_02C 66
    Return

_078F:
    ScrCmd_02C 67
    Return

_0794:
    ScrCmd_02C 68
    Return

_0799:
    ScrCmd_02C 69
    Return

_079E:
    CompareVarToValue 0x404E, 14
    GoToIf 1, _0A50
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CompareVarToValue 0x405A, 0
    CallIf 1, _07FC
    CompareVarToValue 0x405A, 1
    CallIf 1, _0801
    CompareVarToValue 0x405A, 2
    CallIf 1, _0806
    CompareVarToValue 0x405A, 3
    CallIf 1, _080B
    CompareVarToValue 0x405A, 4
    CallIf 1, _0810
    GoTo _0AEC
    End

_07FC:
    ScrCmd_02C 70
    Return

_0801:
    ScrCmd_02C 71
    Return

_0806:
    ScrCmd_02C 72
    Return

_080B:
    ScrCmd_02C 73
    Return

_0810:
    ScrCmd_02C 74
    Return

_0815:
    CompareVarToValue 0x404E, 13
    GoToIf 1, _088C
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CompareVarToValue 0x405A, 0
    CallIf 1, _0873
    CompareVarToValue 0x405A, 1
    CallIf 1, _0878
    CompareVarToValue 0x405A, 2
    CallIf 1, _087D
    CompareVarToValue 0x405A, 3
    CallIf 1, _0882
    CompareVarToValue 0x405A, 4
    CallIf 1, _0887
    GoTo _0AEC
    End

_0873:
    ScrCmd_02C 75
    Return

_0878:
    ScrCmd_02C 76
    Return

_087D:
    ScrCmd_02C 77
    Return

_0882:
    ScrCmd_02C 78
    Return

_0887:
    ScrCmd_02C 79
    Return

_088C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    CompareVarToValue 0x405A, 0
    CallIf 1, _08DB
    CompareVarToValue 0x405A, 1
    CallIf 1, _08E2
    CompareVarToValue 0x405A, 2
    CallIf 1, _08E9
    CompareVarToValue 0x405A, 3
    CallIf 1, _0900
    CompareVarToValue 0x405A, 4
    CallIf 1, _0917
    GoTo _0AEC
    End

_08DB:
    ScrCmd_068
    ScrCmd_02C 86
    Return

_08E2:
    ScrCmd_068
    ScrCmd_02C 88
    Return

_08E9:
    ScrCmd_05E 11, _0930
    ScrCmd_05E 13, _093C
    ScrCmd_05F
    ScrCmd_02C 89
    Return

_0900:
    ScrCmd_05E 11, _0930
    ScrCmd_05E 13, _093C
    ScrCmd_05F
    ScrCmd_02C 90
    Return

_0917:
    ScrCmd_05E 11, _0930
    ScrCmd_05E 13, _093C
    ScrCmd_05F
    ScrCmd_02C 91
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
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CompareVarToValue 0x405A, 0
    CallIf 1, _0995
    CompareVarToValue 0x405A, 1
    CallIf 1, _099A
    CompareVarToValue 0x405A, 2
    CallIf 1, _099F
    CompareVarToValue 0x405A, 3
    CallIf 1, _09A4
    CompareVarToValue 0x405A, 4
    CallIf 1, _09A9
    GoTo _0AEC
    End

_0995:
    ScrCmd_02C 80
    Return

_099A:
    ScrCmd_02C 81
    Return

_099F:
    ScrCmd_02C 82
    Return

_09A4:
    ScrCmd_02C 83
    Return

_09A9:
    ScrCmd_02C 84
    Return

_09AE:
    ScrCmd_049 0x5DC
    ScrCmd_060
    CompareVarToValue 0x405A, 0
    CallIf 1, _09FD
    CompareVarToValue 0x405A, 1
    CallIf 1, _0A04
    CompareVarToValue 0x405A, 2
    CallIf 1, _0A0B
    CompareVarToValue 0x405A, 3
    CallIf 1, _0A22
    CompareVarToValue 0x405A, 4
    CallIf 1, _0A39
    GoTo _0AEC
    End

_09FD:
    ScrCmd_068
    ScrCmd_02C 85
    Return

_0A04:
    ScrCmd_068
    ScrCmd_02C 87
    Return

_0A0B:
    ScrCmd_05E 11, _0930
    ScrCmd_05E 13, _093C
    ScrCmd_05F
    ScrCmd_02C 89
    Return

_0A22:
    ScrCmd_05E 11, _0930
    ScrCmd_05E 13, _093C
    ScrCmd_05F
    ScrCmd_02C 90
    Return

_0A39:
    ScrCmd_05E 11, _0930
    ScrCmd_05E 13, _093C
    ScrCmd_05F
    ScrCmd_02C 91
    Return

_0A50:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_0CD 1
    ScrCmd_05E 10, _0AE0
    ScrCmd_05E 7, _0AD8
    ScrCmd_05F
    CompareVarToValue 0x405A, 0
    CallIf 1, _0AB4
    CompareVarToValue 0x405A, 1
    CallIf 1, _0AB9
    CompareVarToValue 0x405A, 2
    CallIf 1, _0ABE
    CompareVarToValue 0x405A, 3
    CallIf 1, _0AC3
    CompareVarToValue 0x405A, 4
    CallIf 1, _0AC8
    GoTo _0AEC
    End

_0AB4:
    ScrCmd_02C 92
    Return

_0AB9:
    ScrCmd_02C 93
    Return

_0ABE:
    ScrCmd_02C 94
    Return

_0AC3:
    ScrCmd_02C 95
    Return

_0AC8:
    CheckFlag 0x9A9
    GoToIf 0, _0AB4
    ScrCmd_02C 96
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
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0AF4:
    ScrCmd_060
    ScrCmd_049 0x605
    ClearFlag 0x2B0
    ScrCmd_186 6, 11, 11
    ScrCmd_188 6, 14
    ScrCmd_189 6, 0
    ScrCmd_064 6
    ScrCmd_04B 0x605
    ScrCmd_05E 0xFF, _0B3C
    ScrCmd_05E 6, _0B4C
    ScrCmd_05F
    SetFlag 0x9AC
    SetVar 0x400F, 0
    ScrCmd_061
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
    ScrCmd_060
    ScrCmd_049 0x605
    ClearFlag 0x2B3
    ScrCmd_186 9, 11, 11
    ScrCmd_188 9, 14
    ScrCmd_189 9, 0
    ScrCmd_064 9
    ScrCmd_04B 0x605
    ScrCmd_05E 0xFF, _0BAC
    ScrCmd_05E 9, _0BA4
    ScrCmd_05F
    SetFlag 0x9AC
    SetVar 0x400F, 0
    ScrCmd_061
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
    ScrCmd_060
    ScrCmd_049 0x605
    ClearFlag 0x2B6
    ScrCmd_186 10, 11, 11
    ScrCmd_188 10, 14
    ScrCmd_189 10, 0
    ScrCmd_064 10
    ScrCmd_04B 0x605
    ScrCmd_05E 0xFF, _0C14
    ScrCmd_05E 10, _0C04
    ScrCmd_05F
    SetFlag 0x9AC
    SetVar 0x400F, 0
    ScrCmd_061
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
    ScrCmd_060
    ScrCmd_049 0x605
    ClearFlag 0x2B8
    ScrCmd_186 12, 11, 11
    ScrCmd_188 12, 14
    ScrCmd_189 12, 0
    ScrCmd_064 12
    ScrCmd_04B 0x605
    ScrCmd_05E 0xFF, _0C78
    ScrCmd_05E 12, _0C6C
    ScrCmd_05F
    SetFlag 0x9AC
    SetVar 0x400F, 0
    ScrCmd_061
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
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 99
    GoTo _0E5D
    End

_0C99:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 100
    GoTo _0E5D
    End

_0CAA:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 101
    GoTo _0E5D
    End

_0CBB:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 102
    GoTo _0E5D
    End

_0CCC:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 103
    GoTo _0E5D
    End

_0CDD:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 104
    GoTo _0E5D
    End

_0CEE:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_050 0x4AE
    ScrCmd_02C 105
    GoTo _0E5D
    End

_0D03:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 106
    GoTo _0E5D
    End

_0D14:
    ScrCmd_049 0x5DC
    ScrCmd_060
    CheckFlag 0x9A2
    GoToIf 1, _0D63
    ScrCmd_02C 107
    GoTo _0E5D
    End

_0D30:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 108
    GoTo _0E5D
    End

_0D41:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_0CD 0
    ScrCmd_02C 109
    GoTo _0E5D
    End

_0D55:
    ScrCmd_049 0x5DC
    ScrCmd_060
    GoTo _0D63
    End

_0D63:
    ScrCmd_02C 110
    GoTo _0D6E
    End

_0D6E:
    ScrCmd_2FA 0x8004
    ScrCmd_2F8
    SetVar 0x8007, 0
    ScrCmd_003 1, 0x800C
    GoTo _0D88
    End

_0D88:
    AddVar 0x8007, 1
    ScrCmd_003 1, 0x800C
    ScrCmd_1F9 0x8007
    ScrCmd_2FC 0x800C
    CompareVarToValue 0x800C, 1
    GoToIf 1, _0DC2
    ScrCmd_1F9 0x8007
    CompareVarToValue 0x8007, 0x258
    GoToIf 1, _0DC2
    GoTo _0D88
    End

_0DC2:
    ScrCmd_2F9 0x8004
    ScrCmd_034
    ScrCmd_061
    End

    .byte 44
    .byte 0
    .byte 118
    .byte 27
    .byte 0

_0DD1:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 111
    GoTo _0E5D
    End

_0DE2:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 112
    GoTo _0E5D
    End

_0DF3:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_050 0x4AD
    ScrCmd_02C 113
    GoTo _0E5D
    End

_0E08:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 114
    GoTo _0E5D
    End

_0E19:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 115
    GoTo _0E5D
    End

_0E2A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 116
    GoTo _0E5D
    End

_0E3B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 117
    GoTo _0E5D
    End

_0E4C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 118
    GoTo _0E5D
    End

_0E5D:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0E65:
    ScrCmd_060
    SetVar 0x40A1, 1
    ScrCmd_072 21, 1
    ScrCmd_02C 0
    ScrCmd_045 1, 1, 0, 1, 0x8002
    ScrCmd_046 189, 0xFF, 0
    ScrCmd_047
    CompareVarToValue 0x8002, 0
    GoToIf 5, _0EA7
    Call _0F7C
    ScrCmd_034
    Call _1092
    ScrCmd_061
    End

_0EA7:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_073
    ScrCmd_061
    End

_0EB4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_072 21, 1
    ScrCmd_02C 1
    ScrCmd_045 1, 1, 0, 1, 0x8002
    ScrCmd_046 189, 0xFF, 0
    ScrCmd_047
    CompareVarToValue 0x8002, 0
    GoToIf 5, _1478
    Call _0F7C
    ScrCmd_034
    Call _1092
    ScrCmd_061
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
    ScrCmd_049 0x644
    CompareVarToValue 0x8002, 0
    CallIf 1, _2079
    CompareVarToValue 0x8002, 1
    CallIf 1, _208D
    CompareVarToValue 0x8002, 2
    CallIf 1, _20A1
    CompareVarToValue 0x8002, 3
    CallIf 1, _20B5
    CompareVarToValue 0x8002, 4
    CallIf 1, _20C9
    CompareVarToValue 0x8002, 5
    CallIf 1, _20DD
    CompareVarToValue 0x8002, 6
    CallIf 1, _20F1
    CompareVarToValue 0x8002, 7
    CallIf 1, _2105
    CompareVarToValue 0x8002, 8
    CallIf 1, _2119
    CompareVarToValue 0x8002, 9
    CallIf 1, _212D
    CompareVarToValue 0x8002, 10
    CallIf 1, _2141
    CompareVarToValue 0x8002, 11
    CallIf 1, _2155
    CompareVarToValue 0x8002, 12
    CallIf 1, _2169
    CompareVarToValue 0x8002, 13
    CallIf 1, _217D
    CompareVarToValue 0x8002, 14
    CallIf 1, _2191
    CompareVarToValue 0x8002, 15
    CallIf 1, _21A5
    CompareVarToValue 0x8002, 16
    CallIf 1, _21B9
    CompareVarToValue 0x8002, 17
    CallIf 1, _21CD
    CompareVarToValue 0x8002, 18
    CallIf 1, _21E1
    CompareVarToValue 0x8002, 19
    CallIf 1, _21F5
    ScrCmd_074
    ScrCmd_04B 0x644
    ScrCmd_073
    ScrCmd_30D 0x8002
    Return

_1092:
    ClearFlag 0x2C5
    ClearFlag 0x2C7
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x1D0, 0, 10, 6, 1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    CompareVarToValue 0x8002, 0
    GoToIf 1, _1485
    CompareVarToValue 0x8002, 0
    GoToIf 5, _1514
    End

_10DA:
    Call _2209
    CompareVarToValue 0x404E, 0
    GoToIf 1, _1103
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
    CompareVarToValue 0x404E, 1
    GoToIf 1, _114A
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
    CompareVarToValue 0x404E, 2
    GoToIf 1, _1199
    GoTo _1183
    End

_1183:
    ScrCmd_186 2, 11, 11
    ScrCmd_188 2, 14
    ScrCmd_189 2, 0
    Return

_1199:
    CheckFlag 0x9AB
    GoToIf 0, _1183
    ScrCmd_186 2, 10, 8
    ScrCmd_188 2, 14
    ScrCmd_189 2, 0
    ClearFlag 0x2A9
    ScrCmd_064 2
    Return

_11C2:
    Call _2209
    CompareVarToValue 0x404E, 5
    GoToIf 1, _11F3
    GoTo _11DD
    End

_11DD:
    ScrCmd_186 5, 11, 11
    ScrCmd_188 5, 14
    ScrCmd_189 5, 0
    Return

_11F3:
    CheckFlag 0x9AB
    GoToIf 0, _11DD
    ScrCmd_186 5, 10, 8
    ScrCmd_188 5, 14
    ScrCmd_189 5, 0
    ClearFlag 0x2AE
    ScrCmd_064 5
    Return

_121C:
    Call _2209
    CompareVarToValue 0x404E, 12
    GoToIf 1, _1245
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
    CompareVarToValue 0x404E, 0
    CallIf 5, _12A3
    SetFlag 0x9AB
    SetVar 0x404E, 0xFF
    ScrCmd_05E 0xFF, _1454
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 9
    ScrCmd_034
    ScrCmd_05E 1, _1468
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_065 1
    Return

_12A3:
    ClearFlag 0x2A7
    ScrCmd_064 1
    ScrCmd_049 0x605
    ScrCmd_04B 0x605
    ScrCmd_05E 1, _145C
    ScrCmd_05F
    Return

_12BF:
    CompareVarToValue 0x404E, 1
    CallIf 5, _1316
    SetFlag 0x9AB
    SetVar 0x404E, 1
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_14D 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _12FC
    CompareVarToValue 0x800C, 1
    GoToIf 1, _1307
    End

_12FC:
    ScrCmd_02C 10
    GoTo _1312
    End

_1307:
    ScrCmd_02C 11
    GoTo _1312
    End

_1312:
    ScrCmd_034
    Return

_1316:
    ClearFlag 0x2A8
    ScrCmd_064 0
    ScrCmd_049 0x605
    ScrCmd_04B 0x605
    ScrCmd_05E 0, _145C
    ScrCmd_05F
    Return

_1332:
    CompareVarToValue 0x404E, 2
    CallIf 5, _1374
    CompareVarToValue 0x404E, 2
    CallIf 1, _1367
    SetFlag 0x9AB
    SetFlag 0x2AA
    SetVar 0x404E, 2
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 12
    ScrCmd_034
    Return

_1367:
    CheckFlag 0x9AB
    GoToIf 0, _1374
    Return

_1374:
    ClearFlag 0x2A9
    ScrCmd_064 2
    ScrCmd_049 0x605
    ScrCmd_04B 0x605
    ScrCmd_05E 2, _145C
    ScrCmd_05F
    Return

_1390:
    CompareVarToValue 0x404E, 5
    CallIf 5, _13D2
    CompareVarToValue 0x404E, 5
    CallIf 1, _13C5
    SetFlag 0x9AB
    SetFlag 0x2B2
    SetVar 0x404E, 5
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 13
    ScrCmd_034
    Return

_13C5:
    CheckFlag 0x9AB
    GoToIf 0, _13D2
    Return

_13D2:
    ClearFlag 0x2AE
    ScrCmd_064 5
    ScrCmd_049 0x605
    ScrCmd_04B 0x605
    ScrCmd_05E 5, _145C
    ScrCmd_05F
    Return

_13EE:
    CompareVarToValue 0x404E, 12
    CallIf 5, _1436
    CompareVarToValue 0x404E, 12
    CallIf 1, _1429
    SetFlag 0x9AB
    SetVar 0x404E, 12
    SetVar 0x400F, 0
    SetFlag 0x9AC
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 14
    ScrCmd_034
    Return

_1429:
    CheckFlag 0x9AC
    GoToIf 0, _1436
    Return

_1436:
    ClearFlag 0x2B8
    ScrCmd_064 12
    ScrCmd_049 0x605
    ScrCmd_04B 0x605
    ScrCmd_05E 12, _145C
    ScrCmd_05F
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
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_073
    ScrCmd_061
    End

_1485:
    ScrCmd_02C 3
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_065 15
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_05E 14, _14FC
    ScrCmd_05E 0xFF, _14F0
    ScrCmd_05F
    ScrCmd_02C 4
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_065 14
    Call _156D
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
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
    CompareVarToValue 0x800C, 1
    GoToIf 1, _155E
    ScrCmd_02C 7
    GoTo _1532
    End

_1532:
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_065 15
    Call _156D
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    Call _15B0
    Return

_155E:
    ScrCmd_30A 49
    ScrCmd_02C 8
    GoTo _1532
    End

_156D:
    CompareVarToValue 0x8002, 0
    CallIf 1, _10DA
    CompareVarToValue 0x8002, 2
    CallIf 1, _1121
    CompareVarToValue 0x8002, 7
    CallIf 1, _1168
    CompareVarToValue 0x8002, 9
    CallIf 1, _11C2
    CompareVarToValue 0x8002, 14
    CallIf 1, _121C
    Return

_15B0:
    CompareVarToValue 0x8002, 0
    CallIf 1, _1263
    CompareVarToValue 0x8002, 2
    CallIf 1, _12BF
    CompareVarToValue 0x8002, 7
    CallIf 1, _1332
    CompareVarToValue 0x8002, 9
    CallIf 1, _1390
    CompareVarToValue 0x8002, 14
    CallIf 1, _13EE
    Return

_15F3:
    ScrCmd_060
    ScrCmd_05E 14, _1614
    ScrCmd_05F
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_05E 0xFF, _161C
    ScrCmd_05F
    ScrCmd_061
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
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_072 21, 1
    ScrCmd_0CD 1
    ScrCmd_02C 119
    Call _18F8
    CompareVarToValue 0x800C, 1
    GoToIf 1, _1651
    GoTo _165C
    End

_1651:
    ScrCmd_02C 124
    GoTo _1667
    End

_165C:
    ScrCmd_02C 120
    GoTo _1667
    End

_1667:
    Call _0EF6
    SetVar 0x8003, 1
    CompareVarToValue 0x8002, 0
    CallIf 1, _1EA5
    CompareVarToValue 0x8002, 1
    CallIf 1, _1EB2
    CompareVarToValue 0x8002, 2
    CallIf 1, _1EBF
    CompareVarToValue 0x8002, 3
    CallIf 1, _1ECC
    CompareVarToValue 0x8002, 4
    CallIf 1, _1ED9
    CompareVarToValue 0x8002, 5
    CallIf 1, _1EE6
    CompareVarToValue 0x8002, 6
    CallIf 1, _1EF3
    CompareVarToValue 0x8002, 7
    CallIf 1, _1F00
    CompareVarToValue 0x8002, 8
    CallIf 1, _1F0D
    CompareVarToValue 0x8002, 9
    CallIf 1, _1F1A
    CompareVarToValue 0x8002, 10
    CallIf 1, _1F27
    CompareVarToValue 0x8002, 11
    CallIf 1, _1F34
    CompareVarToValue 0x8002, 12
    CallIf 1, _1F41
    CompareVarToValue 0x8002, 13
    CallIf 1, _1F4E
    CompareVarToValue 0x8002, 14
    CallIf 1, _1F5B
    CompareVarToValue 0x8002, 15
    CallIf 1, _1F68
    CompareVarToValue 0x8002, 16
    CallIf 1, _1F75
    CompareVarToValue 0x8002, 17
    CallIf 1, _1F82
    CompareVarToValue 0x8002, 18
    CallIf 1, _1F8F
    CompareVarToValue 0x8002, 19
    CallIf 1, _1F9C
    CompareVarToValue 0x8002, 0xFFFE
    GoToIf 1, _18DE
    CompareVarToValue 0x8003, 0
    GoToIf 1, _18C8
    ScrCmd_02C 121
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    GoToIf 1, _18DE
    CompareVarToValue 0x8002, 0
    CallIf 1, _1FB1
    CompareVarToValue 0x8002, 1
    CallIf 1, _1FBB
    CompareVarToValue 0x8002, 2
    CallIf 1, _1FC5
    CompareVarToValue 0x8002, 3
    CallIf 1, _1FCF
    CompareVarToValue 0x8002, 4
    CallIf 1, _1FD9
    CompareVarToValue 0x8002, 5
    CallIf 1, _1FE3
    CompareVarToValue 0x8002, 6
    CallIf 1, _1FED
    CompareVarToValue 0x8002, 7
    CallIf 1, _1FF7
    CompareVarToValue 0x8002, 8
    CallIf 1, _2001
    CompareVarToValue 0x8002, 9
    CallIf 1, _200B
    CompareVarToValue 0x8002, 10
    CallIf 1, _2015
    CompareVarToValue 0x8002, 11
    CallIf 1, _201F
    CompareVarToValue 0x8002, 12
    CallIf 1, _2029
    CompareVarToValue 0x8002, 13
    CallIf 1, _2033
    CompareVarToValue 0x8002, 14
    CallIf 1, _203D
    CompareVarToValue 0x8002, 15
    CallIf 1, _2047
    CompareVarToValue 0x8002, 16
    CallIf 1, _2051
    CompareVarToValue 0x8002, 17
    CallIf 1, _205B
    CompareVarToValue 0x8002, 18
    CallIf 1, _2065
    CompareVarToValue 0x8002, 19
    CallIf 1, _206F
    CompareVarToValue 0x8003, 0
    GoToIf 1, _18D3
    Call _0F7C
    ScrCmd_034
    Call _1092
    ScrCmd_061
    End

_18C8:
    ScrCmd_02C 122
    GoTo _18E6
    End

_18D3:
    ScrCmd_02C 123
    GoTo _18E6
    End

_18DE:
    GoTo _18F0
    End

_18E6:
    ScrCmd_031
    GoTo _18F0
    End

_18F0:
    ScrCmd_034
    ScrCmd_073
    ScrCmd_061
    End

_18F8:
    CheckFlag 0x997
    GoToIf 0, _19DC
    CheckFlag 0x998
    GoToIf 0, _19DC
    CheckFlag 0x999
    GoToIf 0, _19DC
    CheckFlag 0x99A
    GoToIf 0, _19DC
    CheckFlag 0x99B
    GoToIf 0, _19DC
    CheckFlag 0x99C
    GoToIf 0, _19DC
    CheckFlag 0x99D
    GoToIf 0, _19DC
    CheckFlag 0x99E
    GoToIf 0, _19DC
    CheckFlag 0x99F
    GoToIf 0, _19DC
    CheckFlag 0x9A0
    GoToIf 0, _19DC
    CheckFlag 0x9A1
    GoToIf 0, _19DC
    CheckFlag 0x9A2
    GoToIf 0, _19DC
    CheckFlag 0x9A3
    GoToIf 0, _19DC
    CheckFlag 0x9A4
    GoToIf 0, _19DC
    CheckFlag 0x9A5
    GoToIf 0, _19DC
    CheckFlag 0x9A6
    GoToIf 0, _19DC
    CheckFlag 0x9A7
    GoToIf 0, _19DC
    CheckFlag 0x9A8
    GoToIf 0, _19DC
    CheckFlag 0x9A9
    GoToIf 0, _19DC
    CheckFlag 0x9AA
    GoToIf 0, _19DC
    SetVar 0x800C, 1
    Return

_19DC:
    SetVar 0x800C, 0
    Return

_19E4:
    ScrCmd_2F5 0, 0, 1, 6
    CheckFlag 0x997
    CallIf 0, _1D15
    CheckFlag 0x997
    CallIf 1, _1D1F
    Return

_1A05:
    ScrCmd_2F5 0, 0x1D4C0, 1, 6
    CheckFlag 0x998
    CallIf 0, _1D29
    CheckFlag 0x998
    CallIf 1, _1D33
    Return

_1A26:
    ScrCmd_2F5 0, 0x15F90, 1, 6
    CheckFlag 0x999
    CallIf 0, _1D3D
    CheckFlag 0x999
    CallIf 1, _1D47
    Return

_1A47:
    ScrCmd_2F5 0, 0x2DA78, 1, 6
    CheckFlag 0x99A
    CallIf 0, _1D51
    CheckFlag 0x99A
    CallIf 1, _1D5B
    Return

_1A68:
    ScrCmd_2F5 0, 0xE290, 1, 6
    CheckFlag 0x99B
    CallIf 0, _1D65
    CheckFlag 0x99B
    CallIf 1, _1D6F
    Return

_1A89:
    ScrCmd_2F5 0, 0x35B60, 1, 6
    CheckFlag 0x99C
    CallIf 0, _1D79
    CheckFlag 0x99C
    CallIf 1, _1D83
    Return

_1AAA:
    ScrCmd_2F5 0, 0x27100, 1, 6
    CheckFlag 0x99D
    CallIf 0, _1D8D
    CheckFlag 0x99D
    CallIf 1, _1D97
    Return

_1ACB:
    ScrCmd_2F5 0, 0x249F0, 1, 6
    CheckFlag 0x99E
    CallIf 0, _1DA1
    CheckFlag 0x99E
    CallIf 1, _1DAB
    Return

_1AEC:
    ScrCmd_2F5 0, 0x1F018, 1, 6
    CheckFlag 0x99F
    CallIf 0, _1DB5
    CheckFlag 0x99F
    CallIf 1, _1DBF
    Return

_1B0D:
    ScrCmd_2F5 0, 0x1D4C0, 1, 6
    CheckFlag 0x9A0
    CallIf 0, _1DC9
    CheckFlag 0x9A0
    CallIf 1, _1DD3
    Return

_1B2E:
    ScrCmd_2F5 0, 0x29040, 1, 6
    CheckFlag 0x9A1
    CallIf 0, _1DDD
    CheckFlag 0x9A1
    CallIf 1, _1DE7
    Return

_1B4F:
    CheckFlag 0x99F
    GoToIf 0, _1D13
    ScrCmd_2F5 0, 0x62D4, 1, 6
    CheckFlag 0x9A2
    CallIf 0, _1DF1
    CheckFlag 0x9A2
    CallIf 1, _1DFB
    Return

_1B7B:
    ScrCmd_30F 13, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _1D13
    ScrCmd_2F5 0, 0x249F0, 1, 6
    CheckFlag 0x9A3
    CallIf 0, _1E05
    CheckFlag 0x9A3
    CallIf 1, _1E0F
    Return

_1BAF:
    ScrCmd_30F 14, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _1D13
    ScrCmd_2F5 0, 0x249F0, 1, 6
    CheckFlag 0x9A4
    CallIf 0, _1E19
    CheckFlag 0x9A4
    CallIf 1, _1E23
    Return

_1BE3:
    ScrCmd_30F 15, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _1D13
    ScrCmd_2F5 0, 0x23D0C, 1, 6
    CheckFlag 0x9A5
    CallIf 0, _1E2D
    CheckFlag 0x9A5
    CallIf 1, _1E37
    Return

_1C17:
    ScrCmd_30F 16, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _1D13
    ScrCmd_2F5 0, 0x32C80, 1, 6
    CheckFlag 0x9A6
    CallIf 0, _1E41
    CheckFlag 0x9A6
    CallIf 1, _1E4B
    Return

_1C4B:
    ScrCmd_30F 17, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _1D13
    ScrCmd_2F5 0, 0xCB20, 1, 6
    CheckFlag 0x9A7
    CallIf 0, _1E55
    CheckFlag 0x9A7
    CallIf 1, _1E5F
    Return

_1C7F:
    ScrCmd_30F 18, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _1D13
    ScrCmd_2F5 0, 0x222E0, 1, 6
    CheckFlag 0x9A8
    CallIf 0, _1E69
    CheckFlag 0x9A8
    CallIf 1, _1E73
    Return

_1CB3:
    CheckFlag 0x9A6
    GoToIf 0, _1D13
    ScrCmd_2F5 0, 0x1A5E0, 1, 6
    CheckFlag 0x9A9
    CallIf 0, _1E7D
    CheckFlag 0x9A9
    CallIf 1, _1E87
    Return

_1CDF:
    ScrCmd_30F 20, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _1D13
    ScrCmd_2F5 0, 0x1D4C0, 1, 6
    CheckFlag 0x9AA
    CallIf 0, _1E91
    CheckFlag 0x9AA
    CallIf 1, _1E9B
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
    CheckFlag 0x997
    GoToIf 1, _1FA9
    Return

_1EB2:
    CheckFlag 0x998
    GoToIf 1, _1FA9
    Return

_1EBF:
    CheckFlag 0x999
    GoToIf 1, _1FA9
    Return

_1ECC:
    CheckFlag 0x99A
    GoToIf 1, _1FA9
    Return

_1ED9:
    CheckFlag 0x99B
    GoToIf 1, _1FA9
    Return

_1EE6:
    CheckFlag 0x99C
    GoToIf 1, _1FA9
    Return

_1EF3:
    CheckFlag 0x99D
    GoToIf 1, _1FA9
    Return

_1F00:
    CheckFlag 0x99E
    GoToIf 1, _1FA9
    Return

_1F0D:
    CheckFlag 0x99F
    GoToIf 1, _1FA9
    Return

_1F1A:
    CheckFlag 0x9A0
    GoToIf 1, _1FA9
    Return

_1F27:
    CheckFlag 0x9A1
    GoToIf 1, _1FA9
    Return

_1F34:
    CheckFlag 0x9A2
    GoToIf 1, _1FA9
    Return

_1F41:
    CheckFlag 0x9A3
    GoToIf 1, _1FA9
    Return

_1F4E:
    CheckFlag 0x9A4
    GoToIf 1, _1FA9
    Return

_1F5B:
    CheckFlag 0x9A5
    GoToIf 1, _1FA9
    Return

_1F68:
    CheckFlag 0x9A6
    GoToIf 1, _1FA9
    Return

_1F75:
    CheckFlag 0x9A7
    GoToIf 1, _1FA9
    Return

_1F82:
    CheckFlag 0x9A8
    GoToIf 1, _1FA9
    Return

_1F8F:
    CheckFlag 0x9A9
    GoToIf 1, _1FA9
    Return

_1F9C:
    CheckFlag 0x9AA
    GoToIf 1, _1FA9
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
    CompareVarToValue 0x404E, 0
    CallIf 1, _22CE
    CompareVarToValue 0x404E, 1
    CallIf 1, _22D4
    CompareVarToValue 0x404E, 2
    CallIf 1, _22DA
    CompareVarToValue 0x404E, 3
    CallIf 1, _22EB
    CompareVarToValue 0x404E, 4
    CallIf 1, _22F1
    CompareVarToValue 0x404E, 5
    CallIf 1, _2302
    CompareVarToValue 0x404E, 6
    CallIf 1, _2313
    CompareVarToValue 0x404E, 7
    CallIf 1, _2324
    CompareVarToValue 0x404E, 8
    CallIf 1, _2335
    CompareVarToValue 0x404E, 9
    CallIf 1, _2346
    CompareVarToValue 0x404E, 10
    CallIf 1, _2357
    CompareVarToValue 0x404E, 11
    CallIf 1, _2368
    CompareVarToValue 0x404E, 12
    CallIf 1, _236E
    CompareVarToValue 0x404E, 13
    CallIf 1, _237F
    CompareVarToValue 0x404E, 14
    CallIf 1, _2389
    Return

_22CE:
    ScrCmd_065 1
    Return

_22D4:
    ScrCmd_065 0
    Return

_22DA:
    CheckFlag 0x9AB
    GoToIf 0, _2395
    ScrCmd_065 2
    Return

_22EB:
    ScrCmd_065 3
    Return

_22F1:
    CheckFlag 0x9AB
    GoToIf 0, _2395
    ScrCmd_065 4
    Return

_2302:
    CheckFlag 0x9AB
    GoToIf 0, _2395
    ScrCmd_065 5
    Return

_2313:
    CheckFlag 0x9AC
    GoToIf 0, _2393
    ScrCmd_065 6
    Return

_2324:
    CheckFlag 0x9AB
    GoToIf 0, _2395
    ScrCmd_065 7
    Return

_2335:
    CheckFlag 0x9AC
    GoToIf 0, _2393
    ScrCmd_065 9
    Return

_2346:
    CheckFlag 0x9AB
    GoToIf 0, _2395
    ScrCmd_065 8
    Return

_2357:
    CheckFlag 0x9AC
    GoToIf 0, _2393
    ScrCmd_065 10
    Return

_2368:
    ScrCmd_065 11
    Return

_236E:
    CheckFlag 0x9AC
    GoToIf 0, _2393
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
