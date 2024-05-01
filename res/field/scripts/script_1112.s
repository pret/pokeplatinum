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
    ScrCmd_011 0x4000, 0
    ScrCmd_01D 1, _01EF
    ScrCmd_011 0x4000, 1
    ScrCmd_01D 1, _01F7
    ScrCmd_020 0x9AC
    ScrCmd_01C 1, _01ED
    ScrCmd_01E 0x2A7
    ScrCmd_01E 0x2A8
    ScrCmd_01E 0x2A9
    ScrCmd_01E 0x2AB
    ScrCmd_01E 0x2AC
    ScrCmd_01E 0x2AE
    ScrCmd_01E 0x2B0
    ScrCmd_01E 0x2B1
    ScrCmd_01E 0x2B3
    ScrCmd_01E 0x2B4
    ScrCmd_01E 0x2B6
    ScrCmd_01E 0x2B7
    ScrCmd_01E 0x2B8
    ScrCmd_01E 0x2B9
    ScrCmd_011 0x404E, 0xFF
    ScrCmd_01C 1, _01FF
    ScrCmd_029 0x400F, 0x404E
    ScrCmd_011 0x404E, 0
    ScrCmd_01D 1, _0201
    ScrCmd_011 0x404E, 1
    ScrCmd_01D 1, _0207
    ScrCmd_011 0x404E, 2
    ScrCmd_01D 1, _020D
    ScrCmd_011 0x404E, 3
    ScrCmd_01D 1, _021E
    ScrCmd_011 0x404E, 4
    ScrCmd_01D 1, _0224
    ScrCmd_011 0x404E, 5
    ScrCmd_01D 1, _0235
    ScrCmd_011 0x404E, 6
    ScrCmd_01D 1, _0246
    ScrCmd_011 0x404E, 7
    ScrCmd_01D 1, _0248
    ScrCmd_011 0x404E, 8
    ScrCmd_01D 1, _0259
    ScrCmd_011 0x404E, 9
    ScrCmd_01D 1, _025B
    ScrCmd_011 0x404E, 10
    ScrCmd_01D 1, _026C
    ScrCmd_011 0x404E, 11
    ScrCmd_01D 1, _026E
    ScrCmd_011 0x404E, 12
    ScrCmd_01D 1, _0274
    ScrCmd_011 0x404E, 13
    ScrCmd_01D 1, _0276
    ScrCmd_011 0x404E, 14
    ScrCmd_01D 1, _0280
    End

_01ED:
    End

_01EF:
    ScrCmd_028 0x4021, 97
    ScrCmd_01B

_01F7:
    ScrCmd_028 0x4021, 0
    ScrCmd_01B

_01FF:
    End

_0201:
    ScrCmd_01F 0x2A7
    ScrCmd_01B

_0207:
    ScrCmd_01F 0x2A8
    ScrCmd_01B

_020D:
    ScrCmd_020 0x9AB
    ScrCmd_01C 0, _029A
    ScrCmd_01F 0x2A9
    ScrCmd_01B

_021E:
    ScrCmd_01F 0x2AB
    ScrCmd_01B

_0224:
    ScrCmd_020 0x9AB
    ScrCmd_01C 0, _029A
    ScrCmd_01F 0x2AC
    ScrCmd_01B

_0235:
    ScrCmd_020 0x9AB
    ScrCmd_01C 0, _029A
    ScrCmd_01F 0x2AE
    ScrCmd_01B

_0246:
    ScrCmd_01B

_0248:
    ScrCmd_020 0x9AB
    ScrCmd_01C 0, _029A
    ScrCmd_01F 0x2B1
    ScrCmd_01B

_0259:
    ScrCmd_01B

_025B:
    ScrCmd_020 0x9AB
    ScrCmd_01C 0, _029A
    ScrCmd_01F 0x2B4
    ScrCmd_01B

_026C:
    ScrCmd_01B

_026E:
    ScrCmd_01F 0x2B7
    ScrCmd_01B

_0274:
    ScrCmd_01B

_0276:
    ScrCmd_01F 0x2B9
    ScrCmd_01F 0x2B7
    ScrCmd_01B

_0280:
    ScrCmd_186 7, 6, 8
    ScrCmd_186 10, 7, 8
    ScrCmd_01F 0x2B1
    ScrCmd_01F 0x2B6
    ScrCmd_01B

_029A:
    ScrCmd_01B

_029C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_011 0x405A, 0
    ScrCmd_01D 1, _02F3
    ScrCmd_011 0x405A, 1
    ScrCmd_01D 1, _02F8
    ScrCmd_011 0x405A, 2
    ScrCmd_01D 1, _02FD
    ScrCmd_011 0x405A, 3
    ScrCmd_01D 1, _0302
    ScrCmd_011 0x405A, 4
    ScrCmd_01D 1, _0307
    ScrCmd_016 _0AEC
    End

_02F3:
    ScrCmd_02C 15
    ScrCmd_01B

_02F8:
    ScrCmd_02C 16
    ScrCmd_01B

_02FD:
    ScrCmd_02C 17
    ScrCmd_01B

_0302:
    ScrCmd_02C 18
    ScrCmd_01B

_0307:
    ScrCmd_02C 19
    ScrCmd_01B

_030C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_0CD 1
    ScrCmd_011 0x405A, 0
    ScrCmd_01D 1, _0360
    ScrCmd_011 0x405A, 1
    ScrCmd_01D 1, _0380
    ScrCmd_011 0x405A, 2
    ScrCmd_01D 1, _03A0
    ScrCmd_011 0x405A, 3
    ScrCmd_01D 1, _03C0
    ScrCmd_011 0x405A, 4
    ScrCmd_01D 1, _03E0
    ScrCmd_016 _0AEC
    End

_0360:
    ScrCmd_14D 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01D 1, _0400
    ScrCmd_011 0x4000, 1
    ScrCmd_01D 1, _0405
    ScrCmd_01B

_0380:
    ScrCmd_14D 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01D 1, _040A
    ScrCmd_011 0x4000, 1
    ScrCmd_01D 1, _040F
    ScrCmd_01B

_03A0:
    ScrCmd_14D 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01D 1, _0414
    ScrCmd_011 0x4000, 1
    ScrCmd_01D 1, _0419
    ScrCmd_01B

_03C0:
    ScrCmd_14D 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01D 1, _041E
    ScrCmd_011 0x4000, 1
    ScrCmd_01D 1, _0423
    ScrCmd_01B

_03E0:
    ScrCmd_14D 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01D 1, _0428
    ScrCmd_011 0x4000, 1
    ScrCmd_01D 1, _042D
    ScrCmd_01B

_0400:
    ScrCmd_02C 20
    ScrCmd_01B

_0405:
    ScrCmd_02C 25
    ScrCmd_01B

_040A:
    ScrCmd_02C 21
    ScrCmd_01B

_040F:
    ScrCmd_02C 26
    ScrCmd_01B

_0414:
    ScrCmd_02C 22
    ScrCmd_01B

_0419:
    ScrCmd_02C 27
    ScrCmd_01B

_041E:
    ScrCmd_02C 23
    ScrCmd_01B

_0423:
    ScrCmd_02C 28
    ScrCmd_01B

_0428:
    ScrCmd_02C 24
    ScrCmd_01B

_042D:
    ScrCmd_02C 29
    ScrCmd_01B

_0432:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_011 0x405A, 0
    ScrCmd_01D 1, _0483
    ScrCmd_011 0x405A, 1
    ScrCmd_01D 1, _0488
    ScrCmd_011 0x405A, 2
    ScrCmd_01D 1, _048D
    ScrCmd_011 0x405A, 3
    ScrCmd_01D 1, _0492
    ScrCmd_011 0x405A, 4
    ScrCmd_01D 1, _0497
    ScrCmd_016 _0AEC
    End

_0483:
    ScrCmd_02C 30
    ScrCmd_01B

_0488:
    ScrCmd_02C 31
    ScrCmd_01B

_048D:
    ScrCmd_02C 32
    ScrCmd_01B

_0492:
    ScrCmd_02C 33
    ScrCmd_01B

_0497:
    ScrCmd_02C 34
    ScrCmd_01B

_049C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_011 0x405A, 0
    ScrCmd_01D 1, _04F3
    ScrCmd_011 0x405A, 1
    ScrCmd_01D 1, _04F8
    ScrCmd_011 0x405A, 2
    ScrCmd_01D 1, _04FD
    ScrCmd_011 0x405A, 3
    ScrCmd_01D 1, _0502
    ScrCmd_011 0x405A, 4
    ScrCmd_01D 1, _0507
    ScrCmd_016 _0AEC
    End

_04F3:
    ScrCmd_02C 35
    ScrCmd_01B

_04F8:
    ScrCmd_02C 36
    ScrCmd_01B

_04FD:
    ScrCmd_02C 37
    ScrCmd_01B

_0502:
    ScrCmd_02C 38
    ScrCmd_01B

_0507:
    ScrCmd_02C 39
    ScrCmd_01B

_050C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_011 0x405A, 0
    ScrCmd_01D 1, _055D
    ScrCmd_011 0x405A, 1
    ScrCmd_01D 1, _0562
    ScrCmd_011 0x405A, 2
    ScrCmd_01D 1, _0567
    ScrCmd_011 0x405A, 3
    ScrCmd_01D 1, _056C
    ScrCmd_011 0x405A, 4
    ScrCmd_01D 1, _0571
    ScrCmd_016 _0AEC
    End

_055D:
    ScrCmd_02C 40
    ScrCmd_01B

_0562:
    ScrCmd_02C 41
    ScrCmd_01B

_0567:
    ScrCmd_02C 42
    ScrCmd_01B

_056C:
    ScrCmd_02C 43
    ScrCmd_01B

_0571:
    ScrCmd_02C 44
    ScrCmd_01B

_0576:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_011 0x405A, 0
    ScrCmd_01D 1, _05C7
    ScrCmd_011 0x405A, 1
    ScrCmd_01D 1, _05CC
    ScrCmd_011 0x405A, 2
    ScrCmd_01D 1, _05D1
    ScrCmd_011 0x405A, 3
    ScrCmd_01D 1, _05D6
    ScrCmd_011 0x405A, 4
    ScrCmd_01D 1, _05DB
    ScrCmd_016 _0AEC
    End

_05C7:
    ScrCmd_02C 45
    ScrCmd_01B

_05CC:
    ScrCmd_02C 46
    ScrCmd_01B

_05D1:
    ScrCmd_02C 47
    ScrCmd_01B

_05D6:
    ScrCmd_02C 48
    ScrCmd_01B

_05DB:
    ScrCmd_02C 49
    ScrCmd_01B

_05E0:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_011 0x405A, 0
    ScrCmd_01D 1, _0631
    ScrCmd_011 0x405A, 1
    ScrCmd_01D 1, _0636
    ScrCmd_011 0x405A, 2
    ScrCmd_01D 1, _063B
    ScrCmd_011 0x405A, 3
    ScrCmd_01D 1, _0640
    ScrCmd_011 0x405A, 4
    ScrCmd_01D 1, _0645
    ScrCmd_016 _0AEC
    End

_0631:
    ScrCmd_02C 50
    ScrCmd_01B

_0636:
    ScrCmd_02C 51
    ScrCmd_01B

_063B:
    ScrCmd_02C 52
    ScrCmd_01B

_0640:
    ScrCmd_02C 53
    ScrCmd_01B

_0645:
    ScrCmd_02C 54
    ScrCmd_01B

_064A:
    ScrCmd_011 0x404E, 14
    ScrCmd_01C 1, _0A50
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_0CD 1
    ScrCmd_011 0x405A, 0
    ScrCmd_01D 1, _06AB
    ScrCmd_011 0x405A, 1
    ScrCmd_01D 1, _06B0
    ScrCmd_011 0x405A, 2
    ScrCmd_01D 1, _06B5
    ScrCmd_011 0x405A, 3
    ScrCmd_01D 1, _06BA
    ScrCmd_011 0x405A, 4
    ScrCmd_01D 1, _06BF
    ScrCmd_016 _0AEC
    End

_06AB:
    ScrCmd_02C 55
    ScrCmd_01B

_06B0:
    ScrCmd_02C 56
    ScrCmd_01B

_06B5:
    ScrCmd_02C 57
    ScrCmd_01B

_06BA:
    ScrCmd_02C 58
    ScrCmd_01B

_06BF:
    ScrCmd_02C 59
    ScrCmd_01B

_06C4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_011 0x405A, 0
    ScrCmd_01D 1, _0715
    ScrCmd_011 0x405A, 1
    ScrCmd_01D 1, _071D
    ScrCmd_011 0x405A, 2
    ScrCmd_01D 1, _0722
    ScrCmd_011 0x405A, 3
    ScrCmd_01D 1, _072A
    ScrCmd_011 0x405A, 4
    ScrCmd_01D 1, _072F
    ScrCmd_016 _0AEC
    End

_0715:
    ScrCmd_0CE 0
    ScrCmd_02C 60
    ScrCmd_01B

_071D:
    ScrCmd_02C 61
    ScrCmd_01B

_0722:
    ScrCmd_0CE 0
    ScrCmd_02C 62
    ScrCmd_01B

_072A:
    ScrCmd_02C 63
    ScrCmd_01B

_072F:
    ScrCmd_02C 64
    ScrCmd_01B

_0734:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_011 0x405A, 0
    ScrCmd_01D 1, _0785
    ScrCmd_011 0x405A, 1
    ScrCmd_01D 1, _078A
    ScrCmd_011 0x405A, 2
    ScrCmd_01D 1, _078F
    ScrCmd_011 0x405A, 3
    ScrCmd_01D 1, _0794
    ScrCmd_011 0x405A, 4
    ScrCmd_01D 1, _0799
    ScrCmd_016 _0AEC
    End

_0785:
    ScrCmd_02C 65
    ScrCmd_01B

_078A:
    ScrCmd_02C 66
    ScrCmd_01B

_078F:
    ScrCmd_02C 67
    ScrCmd_01B

_0794:
    ScrCmd_02C 68
    ScrCmd_01B

_0799:
    ScrCmd_02C 69
    ScrCmd_01B

_079E:
    ScrCmd_011 0x404E, 14
    ScrCmd_01C 1, _0A50
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_011 0x405A, 0
    ScrCmd_01D 1, _07FC
    ScrCmd_011 0x405A, 1
    ScrCmd_01D 1, _0801
    ScrCmd_011 0x405A, 2
    ScrCmd_01D 1, _0806
    ScrCmd_011 0x405A, 3
    ScrCmd_01D 1, _080B
    ScrCmd_011 0x405A, 4
    ScrCmd_01D 1, _0810
    ScrCmd_016 _0AEC
    End

_07FC:
    ScrCmd_02C 70
    ScrCmd_01B

_0801:
    ScrCmd_02C 71
    ScrCmd_01B

_0806:
    ScrCmd_02C 72
    ScrCmd_01B

_080B:
    ScrCmd_02C 73
    ScrCmd_01B

_0810:
    ScrCmd_02C 74
    ScrCmd_01B

_0815:
    ScrCmd_011 0x404E, 13
    ScrCmd_01C 1, _088C
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_011 0x405A, 0
    ScrCmd_01D 1, _0873
    ScrCmd_011 0x405A, 1
    ScrCmd_01D 1, _0878
    ScrCmd_011 0x405A, 2
    ScrCmd_01D 1, _087D
    ScrCmd_011 0x405A, 3
    ScrCmd_01D 1, _0882
    ScrCmd_011 0x405A, 4
    ScrCmd_01D 1, _0887
    ScrCmd_016 _0AEC
    End

_0873:
    ScrCmd_02C 75
    ScrCmd_01B

_0878:
    ScrCmd_02C 76
    ScrCmd_01B

_087D:
    ScrCmd_02C 77
    ScrCmd_01B

_0882:
    ScrCmd_02C 78
    ScrCmd_01B

_0887:
    ScrCmd_02C 79
    ScrCmd_01B

_088C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_011 0x405A, 0
    ScrCmd_01D 1, _08DB
    ScrCmd_011 0x405A, 1
    ScrCmd_01D 1, _08E2
    ScrCmd_011 0x405A, 2
    ScrCmd_01D 1, _08E9
    ScrCmd_011 0x405A, 3
    ScrCmd_01D 1, _0900
    ScrCmd_011 0x405A, 4
    ScrCmd_01D 1, _0917
    ScrCmd_016 _0AEC
    End

_08DB:
    ScrCmd_068
    ScrCmd_02C 86
    ScrCmd_01B

_08E2:
    ScrCmd_068
    ScrCmd_02C 88
    ScrCmd_01B

_08E9:
    ScrCmd_05E 11, _0930
    ScrCmd_05E 13, _093C
    ScrCmd_05F
    ScrCmd_02C 89
    ScrCmd_01B

_0900:
    ScrCmd_05E 11, _0930
    ScrCmd_05E 13, _093C
    ScrCmd_05F
    ScrCmd_02C 90
    ScrCmd_01B

_0917:
    ScrCmd_05E 11, _0930
    ScrCmd_05E 13, _093C
    ScrCmd_05F
    ScrCmd_02C 91
    ScrCmd_01B

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
    ScrCmd_011 0x405A, 0
    ScrCmd_01D 1, _0995
    ScrCmd_011 0x405A, 1
    ScrCmd_01D 1, _099A
    ScrCmd_011 0x405A, 2
    ScrCmd_01D 1, _099F
    ScrCmd_011 0x405A, 3
    ScrCmd_01D 1, _09A4
    ScrCmd_011 0x405A, 4
    ScrCmd_01D 1, _09A9
    ScrCmd_016 _0AEC
    End

_0995:
    ScrCmd_02C 80
    ScrCmd_01B

_099A:
    ScrCmd_02C 81
    ScrCmd_01B

_099F:
    ScrCmd_02C 82
    ScrCmd_01B

_09A4:
    ScrCmd_02C 83
    ScrCmd_01B

_09A9:
    ScrCmd_02C 84
    ScrCmd_01B

_09AE:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_011 0x405A, 0
    ScrCmd_01D 1, _09FD
    ScrCmd_011 0x405A, 1
    ScrCmd_01D 1, _0A04
    ScrCmd_011 0x405A, 2
    ScrCmd_01D 1, _0A0B
    ScrCmd_011 0x405A, 3
    ScrCmd_01D 1, _0A22
    ScrCmd_011 0x405A, 4
    ScrCmd_01D 1, _0A39
    ScrCmd_016 _0AEC
    End

_09FD:
    ScrCmd_068
    ScrCmd_02C 85
    ScrCmd_01B

_0A04:
    ScrCmd_068
    ScrCmd_02C 87
    ScrCmd_01B

_0A0B:
    ScrCmd_05E 11, _0930
    ScrCmd_05E 13, _093C
    ScrCmd_05F
    ScrCmd_02C 89
    ScrCmd_01B

_0A22:
    ScrCmd_05E 11, _0930
    ScrCmd_05E 13, _093C
    ScrCmd_05F
    ScrCmd_02C 90
    ScrCmd_01B

_0A39:
    ScrCmd_05E 11, _0930
    ScrCmd_05E 13, _093C
    ScrCmd_05F
    ScrCmd_02C 91
    ScrCmd_01B

_0A50:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_0CD 1
    ScrCmd_05E 10, _0AE0
    ScrCmd_05E 7, _0AD8
    ScrCmd_05F
    ScrCmd_011 0x405A, 0
    ScrCmd_01D 1, _0AB4
    ScrCmd_011 0x405A, 1
    ScrCmd_01D 1, _0AB9
    ScrCmd_011 0x405A, 2
    ScrCmd_01D 1, _0ABE
    ScrCmd_011 0x405A, 3
    ScrCmd_01D 1, _0AC3
    ScrCmd_011 0x405A, 4
    ScrCmd_01D 1, _0AC8
    ScrCmd_016 _0AEC
    End

_0AB4:
    ScrCmd_02C 92
    ScrCmd_01B

_0AB9:
    ScrCmd_02C 93
    ScrCmd_01B

_0ABE:
    ScrCmd_02C 94
    ScrCmd_01B

_0AC3:
    ScrCmd_02C 95
    ScrCmd_01B

_0AC8:
    ScrCmd_020 0x9A9
    ScrCmd_01C 0, _0AB4
    ScrCmd_02C 96
    ScrCmd_01B

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
    ScrCmd_01F 0x2B0
    ScrCmd_186 6, 11, 11
    ScrCmd_188 6, 14
    ScrCmd_189 6, 0
    ScrCmd_064 6
    ScrCmd_04B 0x605
    ScrCmd_05E 0xFF, _0B3C
    ScrCmd_05E 6, _0B4C
    ScrCmd_05F
    ScrCmd_01E 0x9AC
    ScrCmd_028 0x400F, 0
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
    ScrCmd_01F 0x2B3
    ScrCmd_186 9, 11, 11
    ScrCmd_188 9, 14
    ScrCmd_189 9, 0
    ScrCmd_064 9
    ScrCmd_04B 0x605
    ScrCmd_05E 0xFF, _0BAC
    ScrCmd_05E 9, _0BA4
    ScrCmd_05F
    ScrCmd_01E 0x9AC
    ScrCmd_028 0x400F, 0
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
    ScrCmd_01F 0x2B6
    ScrCmd_186 10, 11, 11
    ScrCmd_188 10, 14
    ScrCmd_189 10, 0
    ScrCmd_064 10
    ScrCmd_04B 0x605
    ScrCmd_05E 0xFF, _0C14
    ScrCmd_05E 10, _0C04
    ScrCmd_05F
    ScrCmd_01E 0x9AC
    ScrCmd_028 0x400F, 0
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
    ScrCmd_01F 0x2B8
    ScrCmd_186 12, 11, 11
    ScrCmd_188 12, 14
    ScrCmd_189 12, 0
    ScrCmd_064 12
    ScrCmd_04B 0x605
    ScrCmd_05E 0xFF, _0C78
    ScrCmd_05E 12, _0C6C
    ScrCmd_05F
    ScrCmd_01E 0x9AC
    ScrCmd_028 0x400F, 0
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
    ScrCmd_016 _0E5D
    End

_0C99:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 100
    ScrCmd_016 _0E5D
    End

_0CAA:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 101
    ScrCmd_016 _0E5D
    End

_0CBB:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 102
    ScrCmd_016 _0E5D
    End

_0CCC:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 103
    ScrCmd_016 _0E5D
    End

_0CDD:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 104
    ScrCmd_016 _0E5D
    End

_0CEE:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_050 0x4AE
    ScrCmd_02C 105
    ScrCmd_016 _0E5D
    End

_0D03:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 106
    ScrCmd_016 _0E5D
    End

_0D14:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_020 0x9A2
    ScrCmd_01C 1, _0D63
    ScrCmd_02C 107
    ScrCmd_016 _0E5D
    End

_0D30:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 108
    ScrCmd_016 _0E5D
    End

_0D41:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_0CD 0
    ScrCmd_02C 109
    ScrCmd_016 _0E5D
    End

_0D55:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_016 _0D63
    End

_0D63:
    ScrCmd_02C 110
    ScrCmd_016 _0D6E
    End

_0D6E:
    ScrCmd_2FA 0x8004
    ScrCmd_2F8
    ScrCmd_028 0x8007, 0
    ScrCmd_003 1, 0x800C
    ScrCmd_016 _0D88
    End

_0D88:
    ScrCmd_026 0x8007, 1
    ScrCmd_003 1, 0x800C
    ScrCmd_1F9 0x8007
    ScrCmd_2FC 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0DC2
    ScrCmd_1F9 0x8007
    ScrCmd_011 0x8007, 0x258
    ScrCmd_01C 1, _0DC2
    ScrCmd_016 _0D88
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
    ScrCmd_016 _0E5D
    End

_0DE2:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 112
    ScrCmd_016 _0E5D
    End

_0DF3:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_050 0x4AD
    ScrCmd_02C 113
    ScrCmd_016 _0E5D
    End

_0E08:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 114
    ScrCmd_016 _0E5D
    End

_0E19:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 115
    ScrCmd_016 _0E5D
    End

_0E2A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 116
    ScrCmd_016 _0E5D
    End

_0E3B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 117
    ScrCmd_016 _0E5D
    End

_0E4C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 118
    ScrCmd_016 _0E5D
    End

_0E5D:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0E65:
    ScrCmd_060
    ScrCmd_028 0x40A1, 1
    ScrCmd_072 21, 1
    ScrCmd_02C 0
    ScrCmd_045 1, 1, 0, 1, 0x8002
    ScrCmd_046 189, 0xFF, 0
    ScrCmd_047
    ScrCmd_011 0x8002, 0
    ScrCmd_01C 5, _0EA7
    ScrCmd_01A _0F7C
    ScrCmd_034
    ScrCmd_01A _1092
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
    ScrCmd_011 0x8002, 0
    ScrCmd_01C 5, _1478
    ScrCmd_01A _0F7C
    ScrCmd_034
    ScrCmd_01A _1092
    ScrCmd_061
    End

_0EF6:
    ScrCmd_045 1, 1, 0, 1, 0x8002
    ScrCmd_01A _19E4
    ScrCmd_01A _1A05
    ScrCmd_01A _1A26
    ScrCmd_01A _1A47
    ScrCmd_01A _1A68
    ScrCmd_01A _1A89
    ScrCmd_01A _1AAA
    ScrCmd_01A _1ACB
    ScrCmd_01A _1AEC
    ScrCmd_01A _1B0D
    ScrCmd_01A _1B2E
    ScrCmd_01A _1B4F
    ScrCmd_01A _1B7B
    ScrCmd_01A _1BAF
    ScrCmd_01A _1BE3
    ScrCmd_01A _1C17
    ScrCmd_01A _1C4B
    ScrCmd_01A _1C7F
    ScrCmd_01A _1CB3
    ScrCmd_01A _1CDF
    ScrCmd_327 18
    ScrCmd_01B

_0F7C:
    ScrCmd_049 0x644
    ScrCmd_011 0x8002, 0
    ScrCmd_01D 1, _2079
    ScrCmd_011 0x8002, 1
    ScrCmd_01D 1, _208D
    ScrCmd_011 0x8002, 2
    ScrCmd_01D 1, _20A1
    ScrCmd_011 0x8002, 3
    ScrCmd_01D 1, _20B5
    ScrCmd_011 0x8002, 4
    ScrCmd_01D 1, _20C9
    ScrCmd_011 0x8002, 5
    ScrCmd_01D 1, _20DD
    ScrCmd_011 0x8002, 6
    ScrCmd_01D 1, _20F1
    ScrCmd_011 0x8002, 7
    ScrCmd_01D 1, _2105
    ScrCmd_011 0x8002, 8
    ScrCmd_01D 1, _2119
    ScrCmd_011 0x8002, 9
    ScrCmd_01D 1, _212D
    ScrCmd_011 0x8002, 10
    ScrCmd_01D 1, _2141
    ScrCmd_011 0x8002, 11
    ScrCmd_01D 1, _2155
    ScrCmd_011 0x8002, 12
    ScrCmd_01D 1, _2169
    ScrCmd_011 0x8002, 13
    ScrCmd_01D 1, _217D
    ScrCmd_011 0x8002, 14
    ScrCmd_01D 1, _2191
    ScrCmd_011 0x8002, 15
    ScrCmd_01D 1, _21A5
    ScrCmd_011 0x8002, 16
    ScrCmd_01D 1, _21B9
    ScrCmd_011 0x8002, 17
    ScrCmd_01D 1, _21CD
    ScrCmd_011 0x8002, 18
    ScrCmd_01D 1, _21E1
    ScrCmd_011 0x8002, 19
    ScrCmd_01D 1, _21F5
    ScrCmd_074
    ScrCmd_04B 0x644
    ScrCmd_073
    ScrCmd_30D 0x8002
    ScrCmd_01B

_1092:
    ScrCmd_01F 0x2C5
    ScrCmd_01F 0x2C7
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x1D0, 0, 10, 6, 1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_011 0x8002, 0
    ScrCmd_01C 1, _1485
    ScrCmd_011 0x8002, 0
    ScrCmd_01C 5, _1514
    End

_10DA:
    ScrCmd_01A _2209
    ScrCmd_011 0x404E, 0
    ScrCmd_01C 1, _1103
    ScrCmd_186 1, 11, 11
    ScrCmd_188 1, 14
    ScrCmd_189 1, 0
    ScrCmd_01B

_1103:
    ScrCmd_186 1, 10, 8
    ScrCmd_188 1, 14
    ScrCmd_189 1, 0
    ScrCmd_01F 0x2A7
    ScrCmd_064 1
    ScrCmd_01B

_1121:
    ScrCmd_01A _2209
    ScrCmd_011 0x404E, 1
    ScrCmd_01C 1, _114A
    ScrCmd_186 0, 11, 11
    ScrCmd_188 0, 14
    ScrCmd_189 0, 0
    ScrCmd_01B

_114A:
    ScrCmd_186 0, 10, 8
    ScrCmd_188 0, 14
    ScrCmd_189 0, 0
    ScrCmd_01F 0x2A8
    ScrCmd_064 0
    ScrCmd_01B

_1168:
    ScrCmd_01A _2209
    ScrCmd_011 0x404E, 2
    ScrCmd_01C 1, _1199
    ScrCmd_016 _1183
    End

_1183:
    ScrCmd_186 2, 11, 11
    ScrCmd_188 2, 14
    ScrCmd_189 2, 0
    ScrCmd_01B

_1199:
    ScrCmd_020 0x9AB
    ScrCmd_01C 0, _1183
    ScrCmd_186 2, 10, 8
    ScrCmd_188 2, 14
    ScrCmd_189 2, 0
    ScrCmd_01F 0x2A9
    ScrCmd_064 2
    ScrCmd_01B

_11C2:
    ScrCmd_01A _2209
    ScrCmd_011 0x404E, 5
    ScrCmd_01C 1, _11F3
    ScrCmd_016 _11DD
    End

_11DD:
    ScrCmd_186 5, 11, 11
    ScrCmd_188 5, 14
    ScrCmd_189 5, 0
    ScrCmd_01B

_11F3:
    ScrCmd_020 0x9AB
    ScrCmd_01C 0, _11DD
    ScrCmd_186 5, 10, 8
    ScrCmd_188 5, 14
    ScrCmd_189 5, 0
    ScrCmd_01F 0x2AE
    ScrCmd_064 5
    ScrCmd_01B

_121C:
    ScrCmd_01A _2209
    ScrCmd_011 0x404E, 12
    ScrCmd_01C 1, _1245
    ScrCmd_186 12, 11, 11
    ScrCmd_188 12, 14
    ScrCmd_189 12, 0
    ScrCmd_01B

_1245:
    ScrCmd_186 12, 10, 8
    ScrCmd_188 12, 14
    ScrCmd_189 12, 0
    ScrCmd_01F 0x2B8
    ScrCmd_064 12
    ScrCmd_01B

_1263:
    ScrCmd_011 0x404E, 0
    ScrCmd_01D 5, _12A3
    ScrCmd_01E 0x9AB
    ScrCmd_028 0x404E, 0xFF
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
    ScrCmd_01B

_12A3:
    ScrCmd_01F 0x2A7
    ScrCmd_064 1
    ScrCmd_049 0x605
    ScrCmd_04B 0x605
    ScrCmd_05E 1, _145C
    ScrCmd_05F
    ScrCmd_01B

_12BF:
    ScrCmd_011 0x404E, 1
    ScrCmd_01D 5, _1316
    ScrCmd_01E 0x9AB
    ScrCmd_028 0x404E, 1
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _12FC
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _1307
    End

_12FC:
    ScrCmd_02C 10
    ScrCmd_016 _1312
    End

_1307:
    ScrCmd_02C 11
    ScrCmd_016 _1312
    End

_1312:
    ScrCmd_034
    ScrCmd_01B

_1316:
    ScrCmd_01F 0x2A8
    ScrCmd_064 0
    ScrCmd_049 0x605
    ScrCmd_04B 0x605
    ScrCmd_05E 0, _145C
    ScrCmd_05F
    ScrCmd_01B

_1332:
    ScrCmd_011 0x404E, 2
    ScrCmd_01D 5, _1374
    ScrCmd_011 0x404E, 2
    ScrCmd_01D 1, _1367
    ScrCmd_01E 0x9AB
    ScrCmd_01E 0x2AA
    ScrCmd_028 0x404E, 2
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 12
    ScrCmd_034
    ScrCmd_01B

_1367:
    ScrCmd_020 0x9AB
    ScrCmd_01C 0, _1374
    ScrCmd_01B

_1374:
    ScrCmd_01F 0x2A9
    ScrCmd_064 2
    ScrCmd_049 0x605
    ScrCmd_04B 0x605
    ScrCmd_05E 2, _145C
    ScrCmd_05F
    ScrCmd_01B

_1390:
    ScrCmd_011 0x404E, 5
    ScrCmd_01D 5, _13D2
    ScrCmd_011 0x404E, 5
    ScrCmd_01D 1, _13C5
    ScrCmd_01E 0x9AB
    ScrCmd_01E 0x2B2
    ScrCmd_028 0x404E, 5
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 13
    ScrCmd_034
    ScrCmd_01B

_13C5:
    ScrCmd_020 0x9AB
    ScrCmd_01C 0, _13D2
    ScrCmd_01B

_13D2:
    ScrCmd_01F 0x2AE
    ScrCmd_064 5
    ScrCmd_049 0x605
    ScrCmd_04B 0x605
    ScrCmd_05E 5, _145C
    ScrCmd_05F
    ScrCmd_01B

_13EE:
    ScrCmd_011 0x404E, 12
    ScrCmd_01D 5, _1436
    ScrCmd_011 0x404E, 12
    ScrCmd_01D 1, _1429
    ScrCmd_01E 0x9AB
    ScrCmd_028 0x404E, 12
    ScrCmd_028 0x400F, 0
    ScrCmd_01E 0x9AC
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 14
    ScrCmd_034
    ScrCmd_01B

_1429:
    ScrCmd_020 0x9AC
    ScrCmd_01C 0, _1436
    ScrCmd_01B

_1436:
    ScrCmd_01F 0x2B8
    ScrCmd_064 12
    ScrCmd_049 0x605
    ScrCmd_04B 0x605
    ScrCmd_05E 12, _145C
    ScrCmd_05F
    ScrCmd_01B

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
    ScrCmd_01A _156D
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_01A _15B0
    ScrCmd_028 0x40A1, 2
    ScrCmd_01B

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
    ScrCmd_01A _18F8
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _155E
    ScrCmd_02C 7
    ScrCmd_016 _1532
    End

_1532:
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_065 15
    ScrCmd_01A _156D
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_01A _15B0
    ScrCmd_01B

_155E:
    ScrCmd_30A 49
    ScrCmd_02C 8
    ScrCmd_016 _1532
    End

_156D:
    ScrCmd_011 0x8002, 0
    ScrCmd_01D 1, _10DA
    ScrCmd_011 0x8002, 2
    ScrCmd_01D 1, _1121
    ScrCmd_011 0x8002, 7
    ScrCmd_01D 1, _1168
    ScrCmd_011 0x8002, 9
    ScrCmd_01D 1, _11C2
    ScrCmd_011 0x8002, 14
    ScrCmd_01D 1, _121C
    ScrCmd_01B

_15B0:
    ScrCmd_011 0x8002, 0
    ScrCmd_01D 1, _1263
    ScrCmd_011 0x8002, 2
    ScrCmd_01D 1, _12BF
    ScrCmd_011 0x8002, 7
    ScrCmd_01D 1, _1332
    ScrCmd_011 0x8002, 9
    ScrCmd_01D 1, _1390
    ScrCmd_011 0x8002, 14
    ScrCmd_01D 1, _13EE
    ScrCmd_01B

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
    ScrCmd_01A _18F8
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _1651
    ScrCmd_016 _165C
    End

_1651:
    ScrCmd_02C 124
    ScrCmd_016 _1667
    End

_165C:
    ScrCmd_02C 120
    ScrCmd_016 _1667
    End

_1667:
    ScrCmd_01A _0EF6
    ScrCmd_028 0x8003, 1
    ScrCmd_011 0x8002, 0
    ScrCmd_01D 1, _1EA5
    ScrCmd_011 0x8002, 1
    ScrCmd_01D 1, _1EB2
    ScrCmd_011 0x8002, 2
    ScrCmd_01D 1, _1EBF
    ScrCmd_011 0x8002, 3
    ScrCmd_01D 1, _1ECC
    ScrCmd_011 0x8002, 4
    ScrCmd_01D 1, _1ED9
    ScrCmd_011 0x8002, 5
    ScrCmd_01D 1, _1EE6
    ScrCmd_011 0x8002, 6
    ScrCmd_01D 1, _1EF3
    ScrCmd_011 0x8002, 7
    ScrCmd_01D 1, _1F00
    ScrCmd_011 0x8002, 8
    ScrCmd_01D 1, _1F0D
    ScrCmd_011 0x8002, 9
    ScrCmd_01D 1, _1F1A
    ScrCmd_011 0x8002, 10
    ScrCmd_01D 1, _1F27
    ScrCmd_011 0x8002, 11
    ScrCmd_01D 1, _1F34
    ScrCmd_011 0x8002, 12
    ScrCmd_01D 1, _1F41
    ScrCmd_011 0x8002, 13
    ScrCmd_01D 1, _1F4E
    ScrCmd_011 0x8002, 14
    ScrCmd_01D 1, _1F5B
    ScrCmd_011 0x8002, 15
    ScrCmd_01D 1, _1F68
    ScrCmd_011 0x8002, 16
    ScrCmd_01D 1, _1F75
    ScrCmd_011 0x8002, 17
    ScrCmd_01D 1, _1F82
    ScrCmd_011 0x8002, 18
    ScrCmd_01D 1, _1F8F
    ScrCmd_011 0x8002, 19
    ScrCmd_01D 1, _1F9C
    ScrCmd_011 0x8002, 0xFFFE
    ScrCmd_01C 1, _18DE
    ScrCmd_011 0x8003, 0
    ScrCmd_01C 1, _18C8
    ScrCmd_02C 121
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _18DE
    ScrCmd_011 0x8002, 0
    ScrCmd_01D 1, _1FB1
    ScrCmd_011 0x8002, 1
    ScrCmd_01D 1, _1FBB
    ScrCmd_011 0x8002, 2
    ScrCmd_01D 1, _1FC5
    ScrCmd_011 0x8002, 3
    ScrCmd_01D 1, _1FCF
    ScrCmd_011 0x8002, 4
    ScrCmd_01D 1, _1FD9
    ScrCmd_011 0x8002, 5
    ScrCmd_01D 1, _1FE3
    ScrCmd_011 0x8002, 6
    ScrCmd_01D 1, _1FED
    ScrCmd_011 0x8002, 7
    ScrCmd_01D 1, _1FF7
    ScrCmd_011 0x8002, 8
    ScrCmd_01D 1, _2001
    ScrCmd_011 0x8002, 9
    ScrCmd_01D 1, _200B
    ScrCmd_011 0x8002, 10
    ScrCmd_01D 1, _2015
    ScrCmd_011 0x8002, 11
    ScrCmd_01D 1, _201F
    ScrCmd_011 0x8002, 12
    ScrCmd_01D 1, _2029
    ScrCmd_011 0x8002, 13
    ScrCmd_01D 1, _2033
    ScrCmd_011 0x8002, 14
    ScrCmd_01D 1, _203D
    ScrCmd_011 0x8002, 15
    ScrCmd_01D 1, _2047
    ScrCmd_011 0x8002, 16
    ScrCmd_01D 1, _2051
    ScrCmd_011 0x8002, 17
    ScrCmd_01D 1, _205B
    ScrCmd_011 0x8002, 18
    ScrCmd_01D 1, _2065
    ScrCmd_011 0x8002, 19
    ScrCmd_01D 1, _206F
    ScrCmd_011 0x8003, 0
    ScrCmd_01C 1, _18D3
    ScrCmd_01A _0F7C
    ScrCmd_034
    ScrCmd_01A _1092
    ScrCmd_061
    End

_18C8:
    ScrCmd_02C 122
    ScrCmd_016 _18E6
    End

_18D3:
    ScrCmd_02C 123
    ScrCmd_016 _18E6
    End

_18DE:
    ScrCmd_016 _18F0
    End

_18E6:
    ScrCmd_031
    ScrCmd_016 _18F0
    End

_18F0:
    ScrCmd_034
    ScrCmd_073
    ScrCmd_061
    End

_18F8:
    ScrCmd_020 0x997
    ScrCmd_01C 0, _19DC
    ScrCmd_020 0x998
    ScrCmd_01C 0, _19DC
    ScrCmd_020 0x999
    ScrCmd_01C 0, _19DC
    ScrCmd_020 0x99A
    ScrCmd_01C 0, _19DC
    ScrCmd_020 0x99B
    ScrCmd_01C 0, _19DC
    ScrCmd_020 0x99C
    ScrCmd_01C 0, _19DC
    ScrCmd_020 0x99D
    ScrCmd_01C 0, _19DC
    ScrCmd_020 0x99E
    ScrCmd_01C 0, _19DC
    ScrCmd_020 0x99F
    ScrCmd_01C 0, _19DC
    ScrCmd_020 0x9A0
    ScrCmd_01C 0, _19DC
    ScrCmd_020 0x9A1
    ScrCmd_01C 0, _19DC
    ScrCmd_020 0x9A2
    ScrCmd_01C 0, _19DC
    ScrCmd_020 0x9A3
    ScrCmd_01C 0, _19DC
    ScrCmd_020 0x9A4
    ScrCmd_01C 0, _19DC
    ScrCmd_020 0x9A5
    ScrCmd_01C 0, _19DC
    ScrCmd_020 0x9A6
    ScrCmd_01C 0, _19DC
    ScrCmd_020 0x9A7
    ScrCmd_01C 0, _19DC
    ScrCmd_020 0x9A8
    ScrCmd_01C 0, _19DC
    ScrCmd_020 0x9A9
    ScrCmd_01C 0, _19DC
    ScrCmd_020 0x9AA
    ScrCmd_01C 0, _19DC
    ScrCmd_028 0x800C, 1
    ScrCmd_01B

_19DC:
    ScrCmd_028 0x800C, 0
    ScrCmd_01B

_19E4:
    ScrCmd_2F5 0, 0, 1, 6
    ScrCmd_020 0x997
    ScrCmd_01D 0, _1D15
    ScrCmd_020 0x997
    ScrCmd_01D 1, _1D1F
    ScrCmd_01B

_1A05:
    ScrCmd_2F5 0, 0x1D4C0, 1, 6
    ScrCmd_020 0x998
    ScrCmd_01D 0, _1D29
    ScrCmd_020 0x998
    ScrCmd_01D 1, _1D33
    ScrCmd_01B

_1A26:
    ScrCmd_2F5 0, 0x15F90, 1, 6
    ScrCmd_020 0x999
    ScrCmd_01D 0, _1D3D
    ScrCmd_020 0x999
    ScrCmd_01D 1, _1D47
    ScrCmd_01B

_1A47:
    ScrCmd_2F5 0, 0x2DA78, 1, 6
    ScrCmd_020 0x99A
    ScrCmd_01D 0, _1D51
    ScrCmd_020 0x99A
    ScrCmd_01D 1, _1D5B
    ScrCmd_01B

_1A68:
    ScrCmd_2F5 0, 0xE290, 1, 6
    ScrCmd_020 0x99B
    ScrCmd_01D 0, _1D65
    ScrCmd_020 0x99B
    ScrCmd_01D 1, _1D6F
    ScrCmd_01B

_1A89:
    ScrCmd_2F5 0, 0x35B60, 1, 6
    ScrCmd_020 0x99C
    ScrCmd_01D 0, _1D79
    ScrCmd_020 0x99C
    ScrCmd_01D 1, _1D83
    ScrCmd_01B

_1AAA:
    ScrCmd_2F5 0, 0x27100, 1, 6
    ScrCmd_020 0x99D
    ScrCmd_01D 0, _1D8D
    ScrCmd_020 0x99D
    ScrCmd_01D 1, _1D97
    ScrCmd_01B

_1ACB:
    ScrCmd_2F5 0, 0x249F0, 1, 6
    ScrCmd_020 0x99E
    ScrCmd_01D 0, _1DA1
    ScrCmd_020 0x99E
    ScrCmd_01D 1, _1DAB
    ScrCmd_01B

_1AEC:
    ScrCmd_2F5 0, 0x1F018, 1, 6
    ScrCmd_020 0x99F
    ScrCmd_01D 0, _1DB5
    ScrCmd_020 0x99F
    ScrCmd_01D 1, _1DBF
    ScrCmd_01B

_1B0D:
    ScrCmd_2F5 0, 0x1D4C0, 1, 6
    ScrCmd_020 0x9A0
    ScrCmd_01D 0, _1DC9
    ScrCmd_020 0x9A0
    ScrCmd_01D 1, _1DD3
    ScrCmd_01B

_1B2E:
    ScrCmd_2F5 0, 0x29040, 1, 6
    ScrCmd_020 0x9A1
    ScrCmd_01D 0, _1DDD
    ScrCmd_020 0x9A1
    ScrCmd_01D 1, _1DE7
    ScrCmd_01B

_1B4F:
    ScrCmd_020 0x99F
    ScrCmd_01C 0, _1D13
    ScrCmd_2F5 0, 0x62D4, 1, 6
    ScrCmd_020 0x9A2
    ScrCmd_01D 0, _1DF1
    ScrCmd_020 0x9A2
    ScrCmd_01D 1, _1DFB
    ScrCmd_01B

_1B7B:
    ScrCmd_30F 13, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _1D13
    ScrCmd_2F5 0, 0x249F0, 1, 6
    ScrCmd_020 0x9A3
    ScrCmd_01D 0, _1E05
    ScrCmd_020 0x9A3
    ScrCmd_01D 1, _1E0F
    ScrCmd_01B

_1BAF:
    ScrCmd_30F 14, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _1D13
    ScrCmd_2F5 0, 0x249F0, 1, 6
    ScrCmd_020 0x9A4
    ScrCmd_01D 0, _1E19
    ScrCmd_020 0x9A4
    ScrCmd_01D 1, _1E23
    ScrCmd_01B

_1BE3:
    ScrCmd_30F 15, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _1D13
    ScrCmd_2F5 0, 0x23D0C, 1, 6
    ScrCmd_020 0x9A5
    ScrCmd_01D 0, _1E2D
    ScrCmd_020 0x9A5
    ScrCmd_01D 1, _1E37
    ScrCmd_01B

_1C17:
    ScrCmd_30F 16, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _1D13
    ScrCmd_2F5 0, 0x32C80, 1, 6
    ScrCmd_020 0x9A6
    ScrCmd_01D 0, _1E41
    ScrCmd_020 0x9A6
    ScrCmd_01D 1, _1E4B
    ScrCmd_01B

_1C4B:
    ScrCmd_30F 17, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _1D13
    ScrCmd_2F5 0, 0xCB20, 1, 6
    ScrCmd_020 0x9A7
    ScrCmd_01D 0, _1E55
    ScrCmd_020 0x9A7
    ScrCmd_01D 1, _1E5F
    ScrCmd_01B

_1C7F:
    ScrCmd_30F 18, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _1D13
    ScrCmd_2F5 0, 0x222E0, 1, 6
    ScrCmd_020 0x9A8
    ScrCmd_01D 0, _1E69
    ScrCmd_020 0x9A8
    ScrCmd_01D 1, _1E73
    ScrCmd_01B

_1CB3:
    ScrCmd_020 0x9A6
    ScrCmd_01C 0, _1D13
    ScrCmd_2F5 0, 0x1A5E0, 1, 6
    ScrCmd_020 0x9A9
    ScrCmd_01D 0, _1E7D
    ScrCmd_020 0x9A9
    ScrCmd_01D 1, _1E87
    ScrCmd_01B

_1CDF:
    ScrCmd_30F 20, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _1D13
    ScrCmd_2F5 0, 0x1D4C0, 1, 6
    ScrCmd_020 0x9AA
    ScrCmd_01D 0, _1E91
    ScrCmd_020 0x9AA
    ScrCmd_01D 1, _1E9B
    ScrCmd_01B

_1D13:
    ScrCmd_01B

_1D15:
    ScrCmd_046 149, 0xFF, 0
    ScrCmd_01B

_1D1F:
    ScrCmd_046 169, 0xFF, 0
    ScrCmd_01B

_1D29:
    ScrCmd_046 150, 0xFF, 1
    ScrCmd_01B

_1D33:
    ScrCmd_046 170, 0xFF, 1
    ScrCmd_01B

_1D3D:
    ScrCmd_046 151, 0xFF, 2
    ScrCmd_01B

_1D47:
    ScrCmd_046 171, 0xFF, 2
    ScrCmd_01B

_1D51:
    ScrCmd_046 152, 0xFF, 3
    ScrCmd_01B

_1D5B:
    ScrCmd_046 172, 0xFF, 3
    ScrCmd_01B

_1D65:
    ScrCmd_046 153, 0xFF, 4
    ScrCmd_01B

_1D6F:
    ScrCmd_046 173, 0xFF, 4
    ScrCmd_01B

_1D79:
    ScrCmd_046 154, 0xFF, 5
    ScrCmd_01B

_1D83:
    ScrCmd_046 174, 0xFF, 5
    ScrCmd_01B

_1D8D:
    ScrCmd_046 155, 0xFF, 6
    ScrCmd_01B

_1D97:
    ScrCmd_046 175, 0xFF, 6
    ScrCmd_01B

_1DA1:
    ScrCmd_046 156, 0xFF, 7
    ScrCmd_01B

_1DAB:
    ScrCmd_046 176, 0xFF, 7
    ScrCmd_01B

_1DB5:
    ScrCmd_046 157, 0xFF, 8
    ScrCmd_01B

_1DBF:
    ScrCmd_046 177, 0xFF, 8
    ScrCmd_01B

_1DC9:
    ScrCmd_046 158, 0xFF, 9
    ScrCmd_01B

_1DD3:
    ScrCmd_046 178, 0xFF, 9
    ScrCmd_01B

_1DDD:
    ScrCmd_046 159, 0xFF, 10
    ScrCmd_01B

_1DE7:
    ScrCmd_046 179, 0xFF, 10
    ScrCmd_01B

_1DF1:
    ScrCmd_046 160, 0xFF, 11
    ScrCmd_01B

_1DFB:
    ScrCmd_046 180, 0xFF, 11
    ScrCmd_01B

_1E05:
    ScrCmd_046 161, 0xFF, 12
    ScrCmd_01B

_1E0F:
    ScrCmd_046 181, 0xFF, 12
    ScrCmd_01B

_1E19:
    ScrCmd_046 162, 0xFF, 13
    ScrCmd_01B

_1E23:
    ScrCmd_046 182, 0xFF, 13
    ScrCmd_01B

_1E2D:
    ScrCmd_046 163, 0xFF, 14
    ScrCmd_01B

_1E37:
    ScrCmd_046 183, 0xFF, 14
    ScrCmd_01B

_1E41:
    ScrCmd_046 164, 0xFF, 15
    ScrCmd_01B

_1E4B:
    ScrCmd_046 184, 0xFF, 15
    ScrCmd_01B

_1E55:
    ScrCmd_046 165, 0xFF, 16
    ScrCmd_01B

_1E5F:
    ScrCmd_046 185, 0xFF, 16
    ScrCmd_01B

_1E69:
    ScrCmd_046 166, 0xFF, 17
    ScrCmd_01B

_1E73:
    ScrCmd_046 186, 0xFF, 17
    ScrCmd_01B

_1E7D:
    ScrCmd_046 167, 0xFF, 18
    ScrCmd_01B

_1E87:
    ScrCmd_046 187, 0xFF, 18
    ScrCmd_01B

_1E91:
    ScrCmd_046 168, 0xFF, 19
    ScrCmd_01B

_1E9B:
    ScrCmd_046 188, 0xFF, 19
    ScrCmd_01B

_1EA5:
    ScrCmd_020 0x997
    ScrCmd_01C 1, _1FA9
    ScrCmd_01B

_1EB2:
    ScrCmd_020 0x998
    ScrCmd_01C 1, _1FA9
    ScrCmd_01B

_1EBF:
    ScrCmd_020 0x999
    ScrCmd_01C 1, _1FA9
    ScrCmd_01B

_1ECC:
    ScrCmd_020 0x99A
    ScrCmd_01C 1, _1FA9
    ScrCmd_01B

_1ED9:
    ScrCmd_020 0x99B
    ScrCmd_01C 1, _1FA9
    ScrCmd_01B

_1EE6:
    ScrCmd_020 0x99C
    ScrCmd_01C 1, _1FA9
    ScrCmd_01B

_1EF3:
    ScrCmd_020 0x99D
    ScrCmd_01C 1, _1FA9
    ScrCmd_01B

_1F00:
    ScrCmd_020 0x99E
    ScrCmd_01C 1, _1FA9
    ScrCmd_01B

_1F0D:
    ScrCmd_020 0x99F
    ScrCmd_01C 1, _1FA9
    ScrCmd_01B

_1F1A:
    ScrCmd_020 0x9A0
    ScrCmd_01C 1, _1FA9
    ScrCmd_01B

_1F27:
    ScrCmd_020 0x9A1
    ScrCmd_01C 1, _1FA9
    ScrCmd_01B

_1F34:
    ScrCmd_020 0x9A2
    ScrCmd_01C 1, _1FA9
    ScrCmd_01B

_1F41:
    ScrCmd_020 0x9A3
    ScrCmd_01C 1, _1FA9
    ScrCmd_01B

_1F4E:
    ScrCmd_020 0x9A4
    ScrCmd_01C 1, _1FA9
    ScrCmd_01B

_1F5B:
    ScrCmd_020 0x9A5
    ScrCmd_01C 1, _1FA9
    ScrCmd_01B

_1F68:
    ScrCmd_020 0x9A6
    ScrCmd_01C 1, _1FA9
    ScrCmd_01B

_1F75:
    ScrCmd_020 0x9A7
    ScrCmd_01C 1, _1FA9
    ScrCmd_01B

_1F82:
    ScrCmd_020 0x9A8
    ScrCmd_01C 1, _1FA9
    ScrCmd_01B

_1F8F:
    ScrCmd_020 0x9A9
    ScrCmd_01C 1, _1FA9
    ScrCmd_01B

_1F9C:
    ScrCmd_020 0x9AA
    ScrCmd_01C 1, _1FA9
    ScrCmd_01B

_1FA9:
    ScrCmd_028 0x8003, 0
    ScrCmd_01B

_1FB1:
    ScrCmd_071 0x8003, 0
    ScrCmd_01B

_1FBB:
    ScrCmd_071 0x8003, 0x1D4C0
    ScrCmd_01B

_1FC5:
    ScrCmd_071 0x8003, 0x15F90
    ScrCmd_01B

_1FCF:
    ScrCmd_071 0x8003, 0x2DA78
    ScrCmd_01B

_1FD9:
    ScrCmd_071 0x8003, 0xE290
    ScrCmd_01B

_1FE3:
    ScrCmd_071 0x8003, 0x35B60
    ScrCmd_01B

_1FED:
    ScrCmd_071 0x8003, 0x27100
    ScrCmd_01B

_1FF7:
    ScrCmd_071 0x8003, 0x249F0
    ScrCmd_01B

_2001:
    ScrCmd_071 0x8003, 0x1F018
    ScrCmd_01B

_200B:
    ScrCmd_071 0x8003, 0x1D4C0
    ScrCmd_01B

_2015:
    ScrCmd_071 0x8003, 0x29040
    ScrCmd_01B

_201F:
    ScrCmd_071 0x8003, 0x62D4
    ScrCmd_01B

_2029:
    ScrCmd_071 0x8003, 0x249F0
    ScrCmd_01B

_2033:
    ScrCmd_071 0x8003, 0x249F0
    ScrCmd_01B

_203D:
    ScrCmd_071 0x8003, 0x23D0C
    ScrCmd_01B

_2047:
    ScrCmd_071 0x8003, 0x32C80
    ScrCmd_01B

_2051:
    ScrCmd_071 0x8003, 0xCB20
    ScrCmd_01B

_205B:
    ScrCmd_071 0x8003, 0x222E0
    ScrCmd_01B

_2065:
    ScrCmd_071 0x8003, 0x1A5E0
    ScrCmd_01B

_206F:
    ScrCmd_071 0x8003, 0x1D4C0
    ScrCmd_01B

_2079:
    ScrCmd_335 35, 0
    ScrCmd_070 0
    ScrCmd_01E 0x997
    ScrCmd_01B

_208D:
    ScrCmd_335 35, 0x1D4C0
    ScrCmd_070 0x1D4C0
    ScrCmd_01E 0x998
    ScrCmd_01B

_20A1:
    ScrCmd_335 35, 0x15F90
    ScrCmd_070 0x15F90
    ScrCmd_01E 0x999
    ScrCmd_01B

_20B5:
    ScrCmd_335 35, 0x2DA78
    ScrCmd_070 0x2DA78
    ScrCmd_01E 0x99A
    ScrCmd_01B

_20C9:
    ScrCmd_335 35, 0xE290
    ScrCmd_070 0xE290
    ScrCmd_01E 0x99B
    ScrCmd_01B

_20DD:
    ScrCmd_335 35, 0x35B60
    ScrCmd_070 0x35B60
    ScrCmd_01E 0x99C
    ScrCmd_01B

_20F1:
    ScrCmd_335 35, 0x27100
    ScrCmd_070 0x27100
    ScrCmd_01E 0x99D
    ScrCmd_01B

_2105:
    ScrCmd_335 35, 0x249F0
    ScrCmd_070 0x249F0
    ScrCmd_01E 0x99E
    ScrCmd_01B

_2119:
    ScrCmd_335 35, 0x1F018
    ScrCmd_070 0x1F018
    ScrCmd_01E 0x99F
    ScrCmd_01B

_212D:
    ScrCmd_335 35, 0x1D4C0
    ScrCmd_070 0x1D4C0
    ScrCmd_01E 0x9A0
    ScrCmd_01B

_2141:
    ScrCmd_335 35, 0x29040
    ScrCmd_070 0x29040
    ScrCmd_01E 0x9A1
    ScrCmd_01B

_2155:
    ScrCmd_335 35, 0x62D4
    ScrCmd_070 0x62D4
    ScrCmd_01E 0x9A2
    ScrCmd_01B

_2169:
    ScrCmd_335 35, 0x249F0
    ScrCmd_070 0x249F0
    ScrCmd_01E 0x9A3
    ScrCmd_01B

_217D:
    ScrCmd_335 35, 0x249F0
    ScrCmd_070 0x249F0
    ScrCmd_01E 0x9A4
    ScrCmd_01B

_2191:
    ScrCmd_335 35, 0x23D0C
    ScrCmd_070 0x23D0C
    ScrCmd_01E 0x9A5
    ScrCmd_01B

_21A5:
    ScrCmd_335 35, 0x32C80
    ScrCmd_070 0x32C80
    ScrCmd_01E 0x9A6
    ScrCmd_01B

_21B9:
    ScrCmd_335 35, 0xCB20
    ScrCmd_070 0xCB20
    ScrCmd_01E 0x9A7
    ScrCmd_01B

_21CD:
    ScrCmd_335 35, 0x222E0
    ScrCmd_070 0x222E0
    ScrCmd_01E 0x9A8
    ScrCmd_01B

_21E1:
    ScrCmd_335 35, 0x1A5E0
    ScrCmd_070 0x1A5E0
    ScrCmd_01E 0x9A9
    ScrCmd_01B

_21F5:
    ScrCmd_335 35, 0x1D4C0
    ScrCmd_070 0x1D4C0
    ScrCmd_01E 0x9AA
    ScrCmd_01B

_2209:
    ScrCmd_011 0x404E, 0
    ScrCmd_01D 1, _22CE
    ScrCmd_011 0x404E, 1
    ScrCmd_01D 1, _22D4
    ScrCmd_011 0x404E, 2
    ScrCmd_01D 1, _22DA
    ScrCmd_011 0x404E, 3
    ScrCmd_01D 1, _22EB
    ScrCmd_011 0x404E, 4
    ScrCmd_01D 1, _22F1
    ScrCmd_011 0x404E, 5
    ScrCmd_01D 1, _2302
    ScrCmd_011 0x404E, 6
    ScrCmd_01D 1, _2313
    ScrCmd_011 0x404E, 7
    ScrCmd_01D 1, _2324
    ScrCmd_011 0x404E, 8
    ScrCmd_01D 1, _2335
    ScrCmd_011 0x404E, 9
    ScrCmd_01D 1, _2346
    ScrCmd_011 0x404E, 10
    ScrCmd_01D 1, _2357
    ScrCmd_011 0x404E, 11
    ScrCmd_01D 1, _2368
    ScrCmd_011 0x404E, 12
    ScrCmd_01D 1, _236E
    ScrCmd_011 0x404E, 13
    ScrCmd_01D 1, _237F
    ScrCmd_011 0x404E, 14
    ScrCmd_01D 1, _2389
    ScrCmd_01B

_22CE:
    ScrCmd_065 1
    ScrCmd_01B

_22D4:
    ScrCmd_065 0
    ScrCmd_01B

_22DA:
    ScrCmd_020 0x9AB
    ScrCmd_01C 0, _2395
    ScrCmd_065 2
    ScrCmd_01B

_22EB:
    ScrCmd_065 3
    ScrCmd_01B

_22F1:
    ScrCmd_020 0x9AB
    ScrCmd_01C 0, _2395
    ScrCmd_065 4
    ScrCmd_01B

_2302:
    ScrCmd_020 0x9AB
    ScrCmd_01C 0, _2395
    ScrCmd_065 5
    ScrCmd_01B

_2313:
    ScrCmd_020 0x9AC
    ScrCmd_01C 0, _2393
    ScrCmd_065 6
    ScrCmd_01B

_2324:
    ScrCmd_020 0x9AB
    ScrCmd_01C 0, _2395
    ScrCmd_065 7
    ScrCmd_01B

_2335:
    ScrCmd_020 0x9AC
    ScrCmd_01C 0, _2393
    ScrCmd_065 9
    ScrCmd_01B

_2346:
    ScrCmd_020 0x9AB
    ScrCmd_01C 0, _2395
    ScrCmd_065 8
    ScrCmd_01B

_2357:
    ScrCmd_020 0x9AC
    ScrCmd_01C 0, _2393
    ScrCmd_065 10
    ScrCmd_01B

_2368:
    ScrCmd_065 11
    ScrCmd_01B

_236E:
    ScrCmd_020 0x9AC
    ScrCmd_01C 0, _2393
    ScrCmd_065 12
    ScrCmd_01B

_237F:
    ScrCmd_065 13
    ScrCmd_065 11
    ScrCmd_01B

_2389:
    ScrCmd_065 7
    ScrCmd_065 10
    ScrCmd_01B

_2393:
    ScrCmd_01B

_2395:
    ScrCmd_01E 0x2AA
    ScrCmd_01E 0x2AD
    ScrCmd_01E 0x2AF
    ScrCmd_01E 0x2B2
    ScrCmd_01E 0x2B5
    ScrCmd_01B

    .byte 0
