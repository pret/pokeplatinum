    .include "macros/scrcmd.inc"

    .data

    .long _031E-.-4
    .long _0058-.-4
    .long _02DF-.-4
    .long _0331-.-4
    .long _04DB-.-4
    .long _0685-.-4
    .long _082F-.-4
    .long _09D9-.-4
    .long _0B83-.-4
    .long _0D2D-.-4
    .long _0ED7-.-4
    .long _1081-.-4
    .long _122B-.-4
    .long _13D5-.-4
    .long _157F-.-4
    .long _1729-.-4
    .long _18D3-.-4
    .long _1A7D-.-4
    .long _1C27-.-4
    .long _1DD1-.-4
    .long _1F7B-.-4
    .short 0xFD13
    End

_0058:
    SetFlag 0x9EE
    ScrCmd_268 0x4000
    GoToIfLt 0x4000, 9, _0087
    GoToIfGe 0x4000, 23, _0087
    GoToIfUnset 0xAAB, _00B3
    End

_0087:
    SetFlag 0x244
    SetFlag 0x245
    SetFlag 0x246
    SetFlag 0x247
    SetFlag 0x248
    SetFlag 0x249
    SetFlag 0x24A
    SetFlag 0x24B
    SetFlag 0x24C
    SetVar 0x4104, 1
    End

_00B3:
    SetFlag 0x244
    SetFlag 0x245
    SetFlag 0x246
    SetFlag 0x247
    SetFlag 0x248
    SetFlag 0x249
    SetFlag 0x24A
    SetFlag 0x24B
    SetFlag 0x24C
    ClearTrainerFlag 0x218
    ClearTrainerFlag 0x227
    ClearTrainerFlag 0x221
    ClearTrainerFlag 0x222
    ClearTrainerFlag 0x21E
    ClearTrainerFlag 0x21F
    ClearTrainerFlag 0x21B
    ClearTrainerFlag 0x217
    ClearTrainerFlag 0x224
    ClearTrainerFlag 0x21C
    ClearTrainerFlag 0x228
    ClearTrainerFlag 0x220
    ClearTrainerFlag 0x21A
    ClearTrainerFlag 0x223
    ClearTrainerFlag 0x21D
    ClearTrainerFlag 0x226
    ClearTrainerFlag 0x225
    ClearTrainerFlag 0x219
    SetVar 0x4104, 0
    ScrCmd_1B7 0x4001, 1
    SetVar 0x4000, 5
    SetVar 0x400A, 0x2710
_0137:
    ScrCmd_1B8 0x4001, 9
    CompareVar 0x4001, 0
    CallIf 1, _01D8
    CompareVar 0x4001, 1
    CallIf 1, _01F5
    CompareVar 0x4001, 2
    CallIf 1, _0212
    CompareVar 0x4001, 3
    CallIf 1, _022F
    CompareVar 0x4001, 4
    CallIf 1, _024C
    CompareVar 0x4001, 5
    CallIf 1, _0269
    CompareVar 0x4001, 6
    CallIf 1, _0286
    CompareVar 0x4001, 7
    CallIf 1, _02A3
    CompareVar 0x4001, 8
    CallIf 1, _02C0
    SubVar 0x400A, 1
    GoToIfEq 0x400A, 0, _01D2
    GoToIfNe 0x4000, 0, _0137
_01D2:
    SetFlag 0xAAB
    End

_01D8:
    GoToIfUnset 0x244, _02DD
    ClearFlag 0x244
    ScrCmd_1B8 0x40FB, 3
    SubVar 0x4000, 1
    Return

_01F5:
    GoToIfUnset 0x245, _02DD
    ClearFlag 0x245
    ScrCmd_1B8 0x40FC, 3
    SubVar 0x4000, 1
    Return

_0212:
    GoToIfUnset 0x246, _02DD
    ClearFlag 0x246
    ScrCmd_1B8 0x40FD, 3
    SubVar 0x4000, 1
    Return

_022F:
    GoToIfUnset 0x247, _02DD
    ClearFlag 0x247
    ScrCmd_1B8 0x40FE, 3
    SubVar 0x4000, 1
    Return

_024C:
    GoToIfUnset 0x248, _02DD
    ClearFlag 0x248
    ScrCmd_1B8 0x40FF, 3
    SubVar 0x4000, 1
    Return

_0269:
    GoToIfUnset 0x249, _02DD
    ClearFlag 0x249
    ScrCmd_1B8 0x4100, 3
    SubVar 0x4000, 1
    Return

_0286:
    GoToIfUnset 0x24A, _02DD
    ClearFlag 0x24A
    ScrCmd_1B8 0x4101, 3
    SubVar 0x4000, 1
    Return

_02A3:
    GoToIfUnset 0x24B, _02DD
    ClearFlag 0x24B
    ScrCmd_1B8 0x4102, 3
    SubVar 0x4000, 1
    Return

_02C0:
    GoToIfUnset 0x24C, _02DD
    ClearFlag 0x24C
    ScrCmd_1B8 0x4103, 3
    SubVar 0x4000, 1
    Return

_02DD:
    Return

_02DF:
    ScrCmd_060
    ApplyMovement 0xFF, _212C
    WaitMovement
    ScrCmd_003 20, 0x800C
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_061
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x150, 0, 0x2C2, 0x317, 1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    End

_031E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0331:
    ScrCmd_049 0x5DC
    ScrCmd_060
    CheckTrainerFlag 0x218
    GoToIfDefeated 0x218, _046C
    ScrCmd_19B 0x800C, 6
    GoToIfEq 0x800C, 1, _04BC
    SetVar 0x8008, 0x40FB
    GoToIfEq 0x8008, 0, _038A
    GoToIfEq 0x8008, 1, _03A9
    GoToIfEq 0x8008, 2, _03C8
    ScrCmd_061
    End

_038A:
    ScrCmd_02C 4
    ScrCmd_068
    ScrCmd_02C 5
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _03E7
    GoTo _0460

_03A9:
    ScrCmd_02C 12
    ScrCmd_068
    ScrCmd_02C 13
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _03E7
    GoTo _0460

_03C8:
    ScrCmd_02C 20
    ScrCmd_068
    ScrCmd_02C 21
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _03E7
    GoTo _0460

_03E7:
    ScrCmd_034
    ScrCmd_0E5 0x218, 0x227
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _2125
    SetTrainerFlag 0x218
    SetTrainerFlag 0x227
    Call _04CF
    SetVar 0x8008, 0x40FB
    GoToIfEq 0x8008, 0, _043F
    GoToIfEq 0x8008, 1, _044A
    GoToIfEq 0x8008, 2, _0455
    ScrCmd_061
    End

_043F:
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_044A:
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0455:
    ScrCmd_02C 23
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0460:
    ScrCmd_034
    Call _04CF
    ScrCmd_061
    End

_046C:
    SetVar 0x8008, 0x40FB
    GoToIfEq 0x8008, 0, _049B
    GoToIfEq 0x8008, 1, _04A6
    GoToIfEq 0x8008, 2, _04B1
    End

_049B:
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_04A6:
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_04B1:
    ScrCmd_02C 23
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_04BC:
    ScrCmd_068
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    Call _04CF
    ScrCmd_061
    End

_04CF:
    ApplyMovement 6, _212C
    WaitMovement
    Return

_04DB:
    ScrCmd_049 0x5DC
    ScrCmd_060
    CheckTrainerFlag 0x227
    GoToIfDefeated 0x227, _0616
    ScrCmd_19B 0x800C, 6
    GoToIfEq 0x800C, 1, _0666
    SetVar 0x8008, 0x40FB
    GoToIfEq 0x8008, 0, _0534
    GoToIfEq 0x8008, 1, _0553
    GoToIfEq 0x8008, 2, _0572
    ScrCmd_061
    End

_0534:
    ScrCmd_02C 8
    ScrCmd_068
    ScrCmd_02C 9
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0591
    GoTo _060A

_0553:
    ScrCmd_02C 16
    ScrCmd_068
    ScrCmd_02C 17
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0591
    GoTo _060A

_0572:
    ScrCmd_02C 24
    ScrCmd_068
    ScrCmd_02C 25
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0591
    GoTo _060A

_0591:
    ScrCmd_034
    ScrCmd_0E5 0x218, 0x227
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _2125
    SetTrainerFlag 0x218
    SetTrainerFlag 0x227
    Call _0679
    SetVar 0x8008, 0x40FB
    GoToIfEq 0x8008, 0, _05E9
    GoToIfEq 0x8008, 1, _05F4
    GoToIfEq 0x8008, 2, _05FF
    ScrCmd_061
    End

_05E9:
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_05F4:
    ScrCmd_02C 19
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_05FF:
    ScrCmd_02C 27
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_060A:
    ScrCmd_034
    Call _0679
    ScrCmd_061
    End

_0616:
    SetVar 0x8008, 0x40FB
    GoToIfEq 0x8008, 0, _0645
    GoToIfEq 0x8008, 1, _0650
    GoToIfEq 0x8008, 2, _065B
    End

_0645:
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0650:
    ScrCmd_02C 19
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_065B:
    ScrCmd_02C 27
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0666:
    ScrCmd_068
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    Call _0679
    ScrCmd_061
    End

_0679:
    ApplyMovement 9, _2134
    WaitMovement
    Return

_0685:
    ScrCmd_049 0x5DC
    ScrCmd_060
    CheckTrainerFlag 0x221
    GoToIfDefeated 0x221, _07C0
    ScrCmd_19B 0x800C, 6
    GoToIfEq 0x800C, 1, _0810
    SetVar 0x8008, 0x40FC
    GoToIfEq 0x8008, 0, _06DE
    GoToIfEq 0x8008, 1, _06FD
    GoToIfEq 0x8008, 2, _071C
    ScrCmd_061
    End

_06DE:
    ScrCmd_02C 30
    ScrCmd_068
    ScrCmd_02C 31
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _073B
    GoTo _07B4

_06FD:
    ScrCmd_02C 38
    ScrCmd_068
    ScrCmd_02C 39
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _073B
    GoTo _07B4

_071C:
    ScrCmd_02C 46
    ScrCmd_068
    ScrCmd_02C 47
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _073B
    GoTo _07B4

_073B:
    ScrCmd_034
    ScrCmd_0E5 0x221, 0x222
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _2125
    SetTrainerFlag 0x221
    SetTrainerFlag 0x222
    Call _0823
    SetVar 0x8008, 0x40FC
    GoToIfEq 0x8008, 0, _0793
    GoToIfEq 0x8008, 1, _079E
    GoToIfEq 0x8008, 2, _07A9
    ScrCmd_061
    End

_0793:
    ScrCmd_02C 33
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_079E:
    ScrCmd_02C 41
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_07A9:
    ScrCmd_02C 49
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_07B4:
    ScrCmd_034
    Call _0823
    ScrCmd_061
    End

_07C0:
    SetVar 0x8008, 0x40FC
    GoToIfEq 0x8008, 0, _07EF
    GoToIfEq 0x8008, 1, _07FA
    GoToIfEq 0x8008, 2, _0805
    End

_07EF:
    ScrCmd_02C 33
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_07FA:
    ScrCmd_02C 41
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0805:
    ScrCmd_02C 49
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0810:
    ScrCmd_068
    ScrCmd_02C 28
    ScrCmd_031
    ScrCmd_034
    Call _0823
    ScrCmd_061
    End

_0823:
    ApplyMovement 2, _212C
    WaitMovement
    Return

_082F:
    ScrCmd_049 0x5DC
    ScrCmd_060
    CheckTrainerFlag 0x222
    GoToIfDefeated 0x222, _096A
    ScrCmd_19B 0x800C, 6
    GoToIfEq 0x800C, 1, _09BA
    SetVar 0x8008, 0x40FC
    GoToIfEq 0x8008, 0, _0888
    GoToIfEq 0x8008, 1, _08A7
    GoToIfEq 0x8008, 2, _08C6
    ScrCmd_061
    End

_0888:
    ScrCmd_02C 34
    ScrCmd_068
    ScrCmd_02C 35
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _08E5
    GoTo _095E

_08A7:
    ScrCmd_02C 42
    ScrCmd_068
    ScrCmd_02C 43
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _08E5
    GoTo _095E

_08C6:
    ScrCmd_02C 50
    ScrCmd_068
    ScrCmd_02C 51
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _08E5
    GoTo _095E

_08E5:
    ScrCmd_034
    ScrCmd_0E5 0x221, 0x222
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _2125
    SetTrainerFlag 0x221
    SetTrainerFlag 0x222
    Call _09CD
    SetVar 0x8008, 0x40FC
    GoToIfEq 0x8008, 0, _093D
    GoToIfEq 0x8008, 1, _0948
    GoToIfEq 0x8008, 2, _0953
    ScrCmd_061
    End

_093D:
    ScrCmd_02C 37
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0948:
    ScrCmd_02C 45
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0953:
    ScrCmd_02C 53
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_095E:
    ScrCmd_034
    Call _09CD
    ScrCmd_061
    End

_096A:
    SetVar 0x8008, 0x40FC
    GoToIfEq 0x8008, 0, _0999
    GoToIfEq 0x8008, 1, _09A4
    GoToIfEq 0x8008, 2, _09AF
    End

_0999:
    ScrCmd_02C 37
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_09A4:
    ScrCmd_02C 45
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_09AF:
    ScrCmd_02C 53
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_09BA:
    ScrCmd_068
    ScrCmd_02C 29
    ScrCmd_031
    ScrCmd_034
    Call _09CD
    ScrCmd_061
    End

_09CD:
    ApplyMovement 3, _2134
    WaitMovement
    Return

_09D9:
    ScrCmd_049 0x5DC
    ScrCmd_060
    CheckTrainerFlag 0x21E
    GoToIfDefeated 0x21E, _0B14
    ScrCmd_19B 0x800C, 6
    GoToIfEq 0x800C, 1, _0B64
    SetVar 0x8008, 0x40FD
    GoToIfEq 0x8008, 0, _0A32
    GoToIfEq 0x8008, 1, _0A51
    GoToIfEq 0x8008, 2, _0A70
    ScrCmd_061
    End

_0A32:
    ScrCmd_02C 56
    ScrCmd_068
    ScrCmd_02C 57
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0A8F
    GoTo _0B08

_0A51:
    ScrCmd_02C 64
    ScrCmd_068
    ScrCmd_02C 65
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0A8F
    GoTo _0B08

_0A70:
    ScrCmd_02C 72
    ScrCmd_068
    ScrCmd_02C 73
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0A8F
    GoTo _0B08

_0A8F:
    ScrCmd_034
    ScrCmd_0E5 0x21E, 0x21F
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _2125
    SetTrainerFlag 0x21E
    SetTrainerFlag 0x21F
    Call _0B77
    SetVar 0x8008, 0x40FD
    GoToIfEq 0x8008, 0, _0AE7
    GoToIfEq 0x8008, 1, _0AF2
    GoToIfEq 0x8008, 2, _0AFD
    ScrCmd_061
    End

_0AE7:
    ScrCmd_02C 59
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0AF2:
    ScrCmd_02C 67
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0AFD:
    ScrCmd_02C 75
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0B08:
    ScrCmd_034
    Call _0B77
    ScrCmd_061
    End

_0B14:
    SetVar 0x8008, 0x40FD
    GoToIfEq 0x8008, 0, _0B43
    GoToIfEq 0x8008, 1, _0B4E
    GoToIfEq 0x8008, 2, _0B59
    End

_0B43:
    ScrCmd_02C 59
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0B4E:
    ScrCmd_02C 67
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0B59:
    ScrCmd_02C 75
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0B64:
    ScrCmd_068
    ScrCmd_02C 54
    ScrCmd_031
    ScrCmd_034
    Call _0B77
    ScrCmd_061
    End

_0B77:
    ApplyMovement 0, _212C
    WaitMovement
    Return

_0B83:
    ScrCmd_049 0x5DC
    ScrCmd_060
    CheckTrainerFlag 0x21F
    GoToIfDefeated 0x21F, _0CBE
    ScrCmd_19B 0x800C, 6
    GoToIfEq 0x800C, 1, _0D0E
    SetVar 0x8008, 0x40FD
    GoToIfEq 0x8008, 0, _0BDC
    GoToIfEq 0x8008, 1, _0BFB
    GoToIfEq 0x8008, 2, _0C1A
    ScrCmd_061
    End

_0BDC:
    ScrCmd_02C 60
    ScrCmd_068
    ScrCmd_02C 61
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0C39
    GoTo _0CB2

_0BFB:
    ScrCmd_02C 68
    ScrCmd_068
    ScrCmd_02C 69
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0C39
    GoTo _0CB2

_0C1A:
    ScrCmd_02C 76
    ScrCmd_068
    ScrCmd_02C 77
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0C39
    GoTo _0CB2

_0C39:
    ScrCmd_034
    ScrCmd_0E5 0x21E, 0x21F
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _2125
    SetTrainerFlag 0x21E
    SetTrainerFlag 0x21F
    Call _0D21
    SetVar 0x8008, 0x40FD
    GoToIfEq 0x8008, 0, _0C91
    GoToIfEq 0x8008, 1, _0C9C
    GoToIfEq 0x8008, 2, _0CA7
    ScrCmd_061
    End

_0C91:
    ScrCmd_02C 63
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0C9C:
    ScrCmd_02C 71
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0CA7:
    ScrCmd_02C 79
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0CB2:
    ScrCmd_034
    Call _0D21
    ScrCmd_061
    End

_0CBE:
    SetVar 0x8008, 0x40FD
    GoToIfEq 0x8008, 0, _0CED
    GoToIfEq 0x8008, 1, _0CF8
    GoToIfEq 0x8008, 2, _0D03
    End

_0CED:
    ScrCmd_02C 63
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0CF8:
    ScrCmd_02C 71
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0D03:
    ScrCmd_02C 79
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0D0E:
    ScrCmd_068
    ScrCmd_02C 55
    ScrCmd_031
    ScrCmd_034
    Call _0D21
    ScrCmd_061
    End

_0D21:
    ApplyMovement 1, _2134
    WaitMovement
    Return

_0D2D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    CheckTrainerFlag 0x21B
    GoToIfDefeated 0x21B, _0E68
    ScrCmd_19B 0x800C, 6
    GoToIfEq 0x800C, 1, _0EB8
    SetVar 0x8008, 0x40FE
    GoToIfEq 0x8008, 0, _0D86
    GoToIfEq 0x8008, 1, _0DA5
    GoToIfEq 0x8008, 2, _0DC4
    ScrCmd_061
    End

_0D86:
    ScrCmd_02C 82
    ScrCmd_068
    ScrCmd_02C 83
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0DE3
    GoTo _0E5C

_0DA5:
    ScrCmd_02C 90
    ScrCmd_068
    ScrCmd_02C 91
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0DE3
    GoTo _0E5C

_0DC4:
    ScrCmd_02C 98
    ScrCmd_068
    ScrCmd_02C 99
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0DE3
    GoTo _0E5C

_0DE3:
    ScrCmd_034
    ScrCmd_0E5 0x21B, 0x217
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _2125
    SetTrainerFlag 0x21B
    SetTrainerFlag 0x217
    Call _0ECB
    SetVar 0x8008, 0x40FE
    GoToIfEq 0x8008, 0, _0E3B
    GoToIfEq 0x8008, 1, _0E46
    GoToIfEq 0x8008, 2, _0E51
    ScrCmd_061
    End

_0E3B:
    ScrCmd_02C 85
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0E46:
    ScrCmd_02C 93
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0E51:
    ScrCmd_02C 101
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0E5C:
    ScrCmd_034
    Call _0ECB
    ScrCmd_061
    End

_0E68:
    SetVar 0x8008, 0x40FE
    GoToIfEq 0x8008, 0, _0E97
    GoToIfEq 0x8008, 1, _0EA2
    GoToIfEq 0x8008, 2, _0EAD
    End

_0E97:
    ScrCmd_02C 85
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0EA2:
    ScrCmd_02C 93
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0EAD:
    ScrCmd_02C 101
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0EB8:
    ScrCmd_068
    ScrCmd_02C 80
    ScrCmd_031
    ScrCmd_034
    Call _0ECB
    ScrCmd_061
    End

_0ECB:
    ApplyMovement 17, _212C
    WaitMovement
    Return

_0ED7:
    ScrCmd_049 0x5DC
    ScrCmd_060
    CheckTrainerFlag 0x217
    GoToIfDefeated 0x217, _1012
    ScrCmd_19B 0x800C, 6
    GoToIfEq 0x800C, 1, _1062
    SetVar 0x8008, 0x40FE
    GoToIfEq 0x8008, 0, _0F30
    GoToIfEq 0x8008, 1, _0F4F
    GoToIfEq 0x8008, 2, _0F6E
    ScrCmd_061
    End

_0F30:
    ScrCmd_02C 86
    ScrCmd_068
    ScrCmd_02C 87
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0F8D
    GoTo _1006

_0F4F:
    ScrCmd_02C 94
    ScrCmd_068
    ScrCmd_02C 95
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0F8D
    GoTo _1006

_0F6E:
    ScrCmd_02C 102
    ScrCmd_068
    ScrCmd_02C 103
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0F8D
    GoTo _1006

_0F8D:
    ScrCmd_034
    ScrCmd_0E5 0x21B, 0x217
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _2125
    SetTrainerFlag 0x21B
    SetTrainerFlag 0x217
    Call _1075
    SetVar 0x8008, 0x40FE
    GoToIfEq 0x8008, 0, _0FE5
    GoToIfEq 0x8008, 1, _0FF0
    GoToIfEq 0x8008, 2, _0FFB
    ScrCmd_061
    End

_0FE5:
    ScrCmd_02C 89
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0FF0:
    ScrCmd_02C 97
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0FFB:
    ScrCmd_02C 105
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1006:
    ScrCmd_034
    Call _1075
    ScrCmd_061
    End

_1012:
    SetVar 0x8008, 0x40FE
    GoToIfEq 0x8008, 0, _1041
    GoToIfEq 0x8008, 1, _104C
    GoToIfEq 0x8008, 2, _1057
    End

_1041:
    ScrCmd_02C 89
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_104C:
    ScrCmd_02C 97
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1057:
    ScrCmd_02C 105
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1062:
    ScrCmd_068
    ScrCmd_02C 81
    ScrCmd_031
    ScrCmd_034
    Call _1075
    ScrCmd_061
    End

_1075:
    ApplyMovement 10, _2134
    WaitMovement
    Return

_1081:
    ScrCmd_049 0x5DC
    ScrCmd_060
    CheckTrainerFlag 0x224
    GoToIfDefeated 0x224, _11BC
    ScrCmd_19B 0x800C, 6
    GoToIfEq 0x800C, 1, _120C
    SetVar 0x8008, 0x40FF
    GoToIfEq 0x8008, 0, _10DA
    GoToIfEq 0x8008, 1, _10F9
    GoToIfEq 0x8008, 2, _1118
    ScrCmd_061
    End

_10DA:
    ScrCmd_02C 108
    ScrCmd_068
    ScrCmd_02C 109
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _1137
    GoTo _11B0

_10F9:
    ScrCmd_02C 116
    ScrCmd_068
    ScrCmd_02C 117
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _1137
    GoTo _11B0

_1118:
    ScrCmd_02C 124
    ScrCmd_068
    ScrCmd_02C 125
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _1137
    GoTo _11B0

_1137:
    ScrCmd_034
    ScrCmd_0E5 0x224, 0x21C
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _2125
    SetTrainerFlag 0x224
    SetTrainerFlag 0x21C
    Call _121F
    SetVar 0x8008, 0x40FF
    GoToIfEq 0x8008, 0, _118F
    GoToIfEq 0x8008, 1, _119A
    GoToIfEq 0x8008, 2, _11A5
    ScrCmd_061
    End

_118F:
    ScrCmd_02C 111
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_119A:
    ScrCmd_02C 119
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_11A5:
    ScrCmd_02C 127
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_11B0:
    ScrCmd_034
    Call _121F
    ScrCmd_061
    End

_11BC:
    SetVar 0x8008, 0x40FF
    GoToIfEq 0x8008, 0, _11EB
    GoToIfEq 0x8008, 1, _11F6
    GoToIfEq 0x8008, 2, _1201
    End

_11EB:
    ScrCmd_02C 111
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_11F6:
    ScrCmd_02C 119
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1201:
    ScrCmd_02C 127
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_120C:
    ScrCmd_068
    ScrCmd_02C 106
    ScrCmd_031
    ScrCmd_034
    Call _121F
    ScrCmd_061
    End

_121F:
    ApplyMovement 15, _212C
    WaitMovement
    Return

_122B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    CheckTrainerFlag 0x21C
    GoToIfDefeated 0x21C, _1366
    ScrCmd_19B 0x800C, 6
    GoToIfEq 0x800C, 1, _13B6
    SetVar 0x8008, 0x40FF
    GoToIfEq 0x8008, 0, _1284
    GoToIfEq 0x8008, 1, _12A3
    GoToIfEq 0x8008, 2, _12C2
    ScrCmd_061
    End

_1284:
    ScrCmd_02C 112
    ScrCmd_068
    ScrCmd_02C 113
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _12E1
    GoTo _135A

_12A3:
    ScrCmd_02C 120
    ScrCmd_068
    ScrCmd_02C 121
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _12E1
    GoTo _135A

_12C2:
    ScrCmd_02C 128
    ScrCmd_068
    ScrCmd_02C 129
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _12E1
    GoTo _135A

_12E1:
    ScrCmd_034
    ScrCmd_0E5 0x224, 0x21C
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _2125
    SetTrainerFlag 0x224
    SetTrainerFlag 0x21C
    Call _13C9
    SetVar 0x8008, 0x40FF
    GoToIfEq 0x8008, 0, _1339
    GoToIfEq 0x8008, 1, _1344
    GoToIfEq 0x8008, 2, _134F
    ScrCmd_061
    End

_1339:
    ScrCmd_02C 115
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1344:
    ScrCmd_02C 123
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_134F:
    ScrCmd_02C 131
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_135A:
    ScrCmd_034
    Call _13C9
    ScrCmd_061
    End

_1366:
    SetVar 0x8008, 0x40FF
    GoToIfEq 0x8008, 0, _1395
    GoToIfEq 0x8008, 1, _13A0
    GoToIfEq 0x8008, 2, _13AB
    End

_1395:
    ScrCmd_02C 115
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_13A0:
    ScrCmd_02C 123
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_13AB:
    ScrCmd_02C 131
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_13B6:
    ScrCmd_068
    ScrCmd_02C 107
    ScrCmd_031
    ScrCmd_034
    Call _13C9
    ScrCmd_061
    End

_13C9:
    ApplyMovement 13, _2134
    WaitMovement
    Return

_13D5:
    ScrCmd_049 0x5DC
    ScrCmd_060
    CheckTrainerFlag 0x228
    GoToIfDefeated 0x228, _1510
    ScrCmd_19B 0x800C, 6
    GoToIfEq 0x800C, 1, _1560
    SetVar 0x8008, 0x4100
    GoToIfEq 0x8008, 0, _142E
    GoToIfEq 0x8008, 1, _144D
    GoToIfEq 0x8008, 2, _146C
    ScrCmd_061
    End

_142E:
    ScrCmd_02C 134
    ScrCmd_068
    ScrCmd_02C 135
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _148B
    GoTo _1504

_144D:
    ScrCmd_02C 142
    ScrCmd_068
    ScrCmd_02C 143
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _148B
    GoTo _1504

_146C:
    ScrCmd_02C 150
    ScrCmd_068
    ScrCmd_02C 151
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _148B
    GoTo _1504

_148B:
    ScrCmd_034
    ScrCmd_0E5 0x228, 0x220
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _2125
    SetTrainerFlag 0x228
    SetTrainerFlag 0x220
    Call _1573
    SetVar 0x8008, 0x4100
    GoToIfEq 0x8008, 0, _14E3
    GoToIfEq 0x8008, 1, _14EE
    GoToIfEq 0x8008, 2, _14F9
    ScrCmd_061
    End

_14E3:
    ScrCmd_02C 137
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_14EE:
    ScrCmd_02C 145
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_14F9:
    ScrCmd_02C 153
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1504:
    ScrCmd_034
    Call _1573
    ScrCmd_061
    End

_1510:
    SetVar 0x8008, 0x4100
    GoToIfEq 0x8008, 0, _153F
    GoToIfEq 0x8008, 1, _154A
    GoToIfEq 0x8008, 2, _1555
    End

_153F:
    ScrCmd_02C 137
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_154A:
    ScrCmd_02C 145
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1555:
    ScrCmd_02C 153
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1560:
    ScrCmd_068
    ScrCmd_02C 132
    ScrCmd_031
    ScrCmd_034
    Call _1573
    ScrCmd_061
    End

_1573:
    ApplyMovement 11, _212C
    WaitMovement
    Return

_157F:
    ScrCmd_049 0x5DC
    ScrCmd_060
    CheckTrainerFlag 0x220
    GoToIfDefeated 0x220, _16BA
    ScrCmd_19B 0x800C, 6
    GoToIfEq 0x800C, 1, _170A
    SetVar 0x8008, 0x4100
    GoToIfEq 0x8008, 0, _15D8
    GoToIfEq 0x8008, 1, _15F7
    GoToIfEq 0x8008, 2, _1616
    ScrCmd_061
    End

_15D8:
    ScrCmd_02C 138
    ScrCmd_068
    ScrCmd_02C 139
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _1635
    GoTo _16AE

_15F7:
    ScrCmd_02C 146
    ScrCmd_068
    ScrCmd_02C 147
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _1635
    GoTo _16AE

_1616:
    ScrCmd_02C 154
    ScrCmd_068
    ScrCmd_02C 155
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _1635
    GoTo _16AE

_1635:
    ScrCmd_034
    ScrCmd_0E5 0x228, 0x220
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _2125
    SetTrainerFlag 0x228
    SetTrainerFlag 0x220
    Call _171D
    SetVar 0x8008, 0x4100
    GoToIfEq 0x8008, 0, _168D
    GoToIfEq 0x8008, 1, _1698
    GoToIfEq 0x8008, 2, _16A3
    ScrCmd_061
    End

_168D:
    ScrCmd_02C 141
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1698:
    ScrCmd_02C 149
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_16A3:
    ScrCmd_02C 157
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_16AE:
    ScrCmd_034
    Call _171D
    ScrCmd_061
    End

_16BA:
    SetVar 0x8008, 0x4100
    GoToIfEq 0x8008, 0, _16E9
    GoToIfEq 0x8008, 1, _16F4
    GoToIfEq 0x8008, 2, _16FF
    End

_16E9:
    ScrCmd_02C 141
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_16F4:
    ScrCmd_02C 149
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_16FF:
    ScrCmd_02C 157
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_170A:
    ScrCmd_068
    ScrCmd_02C 133
    ScrCmd_031
    ScrCmd_034
    Call _171D
    ScrCmd_061
    End

_171D:
    ApplyMovement 12, _2134
    WaitMovement
    Return

_1729:
    ScrCmd_049 0x5DC
    ScrCmd_060
    CheckTrainerFlag 0x21A
    GoToIfDefeated 0x21A, _1864
    ScrCmd_19B 0x800C, 6
    GoToIfEq 0x800C, 1, _18B4
    SetVar 0x8008, 0x4101
    GoToIfEq 0x8008, 0, _1782
    GoToIfEq 0x8008, 1, _17A1
    GoToIfEq 0x8008, 2, _17C0
    ScrCmd_061
    End

_1782:
    ScrCmd_02C 160
    ScrCmd_068
    ScrCmd_02C 161
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _17DF
    GoTo _1858

_17A1:
    ScrCmd_02C 168
    ScrCmd_068
    ScrCmd_02C 169
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _17DF
    GoTo _1858

_17C0:
    ScrCmd_02C 176
    ScrCmd_068
    ScrCmd_02C 177
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _17DF
    GoTo _1858

_17DF:
    ScrCmd_034
    ScrCmd_0E5 0x21A, 0x223
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _2125
    SetTrainerFlag 0x21A
    SetTrainerFlag 0x223
    Call _18C7
    SetVar 0x8008, 0x4101
    GoToIfEq 0x8008, 0, _1837
    GoToIfEq 0x8008, 1, _1842
    GoToIfEq 0x8008, 2, _184D
    ScrCmd_061
    End

_1837:
    ScrCmd_02C 163
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1842:
    ScrCmd_02C 171
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_184D:
    ScrCmd_02C 179
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1858:
    ScrCmd_034
    Call _18C7
    ScrCmd_061
    End

_1864:
    SetVar 0x8008, 0x4101
    GoToIfEq 0x8008, 0, _1893
    GoToIfEq 0x8008, 1, _189E
    GoToIfEq 0x8008, 2, _18A9
    End

_1893:
    ScrCmd_02C 163
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_189E:
    ScrCmd_02C 171
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_18A9:
    ScrCmd_02C 179
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_18B4:
    ScrCmd_068
    ScrCmd_02C 158
    ScrCmd_031
    ScrCmd_034
    Call _18C7
    ScrCmd_061
    End

_18C7:
    ApplyMovement 5, _212C
    WaitMovement
    Return

_18D3:
    ScrCmd_049 0x5DC
    ScrCmd_060
    CheckTrainerFlag 0x223
    GoToIfDefeated 0x223, _1A0E
    ScrCmd_19B 0x800C, 6
    GoToIfEq 0x800C, 1, _1A5E
    SetVar 0x8008, 0x4101
    GoToIfEq 0x8008, 0, _192C
    GoToIfEq 0x8008, 1, _194B
    GoToIfEq 0x8008, 2, _196A
    ScrCmd_061
    End

_192C:
    ScrCmd_02C 164
    ScrCmd_068
    ScrCmd_02C 165
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _1989
    GoTo _1A02

_194B:
    ScrCmd_02C 172
    ScrCmd_068
    ScrCmd_02C 173
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _1989
    GoTo _1A02

_196A:
    ScrCmd_02C 180
    ScrCmd_068
    ScrCmd_02C 181
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _1989
    GoTo _1A02

_1989:
    ScrCmd_034
    ScrCmd_0E5 0x21A, 0x223
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _2125
    SetTrainerFlag 0x21A
    SetTrainerFlag 0x223
    Call _1A71
    SetVar 0x8008, 0x4101
    GoToIfEq 0x8008, 0, _19E1
    GoToIfEq 0x8008, 1, _19EC
    GoToIfEq 0x8008, 2, _19F7
    ScrCmd_061
    End

_19E1:
    ScrCmd_02C 167
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_19EC:
    ScrCmd_02C 175
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_19F7:
    ScrCmd_02C 183
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1A02:
    ScrCmd_034
    Call _1A71
    ScrCmd_061
    End

_1A0E:
    SetVar 0x8008, 0x4101
    GoToIfEq 0x8008, 0, _1A3D
    GoToIfEq 0x8008, 1, _1A48
    GoToIfEq 0x8008, 2, _1A53
    End

_1A3D:
    ScrCmd_02C 167
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1A48:
    ScrCmd_02C 175
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1A53:
    ScrCmd_02C 183
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1A5E:
    ScrCmd_068
    ScrCmd_02C 159
    ScrCmd_031
    ScrCmd_034
    Call _1A71
    ScrCmd_061
    End

_1A71:
    ApplyMovement 4, _2134
    WaitMovement
    Return

_1A7D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    CheckTrainerFlag 0x21D
    GoToIfDefeated 0x21D, _1BB8
    ScrCmd_19B 0x800C, 6
    GoToIfEq 0x800C, 1, _1C08
    SetVar 0x8008, 0x4102
    GoToIfEq 0x8008, 0, _1AD6
    GoToIfEq 0x8008, 1, _1AF5
    GoToIfEq 0x8008, 2, _1B14
    ScrCmd_061
    End

_1AD6:
    ScrCmd_02C 186
    ScrCmd_068
    ScrCmd_02C 187
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _1B33
    GoTo _1BAC

_1AF5:
    ScrCmd_02C 194
    ScrCmd_068
    ScrCmd_02C 195
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _1B33
    GoTo _1BAC

_1B14:
    ScrCmd_02C 202
    ScrCmd_068
    ScrCmd_02C 203
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _1B33
    GoTo _1BAC

_1B33:
    ScrCmd_034
    ScrCmd_0E5 0x21D, 0x226
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _2125
    SetTrainerFlag 0x21D
    SetTrainerFlag 0x226
    Call _1C1B
    SetVar 0x8008, 0x4102
    GoToIfEq 0x8008, 0, _1B8B
    GoToIfEq 0x8008, 1, _1B96
    GoToIfEq 0x8008, 2, _1BA1
    ScrCmd_061
    End

_1B8B:
    ScrCmd_02C 189
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1B96:
    ScrCmd_02C 197
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1BA1:
    ScrCmd_02C 205
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1BAC:
    ScrCmd_034
    Call _1C1B
    ScrCmd_061
    End

_1BB8:
    SetVar 0x8008, 0x4102
    GoToIfEq 0x8008, 0, _1BE7
    GoToIfEq 0x8008, 1, _1BF2
    GoToIfEq 0x8008, 2, _1BFD
    End

_1BE7:
    ScrCmd_02C 189
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1BF2:
    ScrCmd_02C 197
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1BFD:
    ScrCmd_02C 205
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1C08:
    ScrCmd_068
    ScrCmd_02C 184
    ScrCmd_031
    ScrCmd_034
    Call _1C1B
    ScrCmd_061
    End

_1C1B:
    ApplyMovement 7, _212C
    WaitMovement
    Return

_1C27:
    ScrCmd_049 0x5DC
    ScrCmd_060
    CheckTrainerFlag 0x226
    GoToIfDefeated 0x226, _1D62
    ScrCmd_19B 0x800C, 6
    GoToIfEq 0x800C, 1, _1DB2
    SetVar 0x8008, 0x4102
    GoToIfEq 0x8008, 0, _1C80
    GoToIfEq 0x8008, 1, _1C9F
    GoToIfEq 0x8008, 2, _1CBE
    ScrCmd_061
    End

_1C80:
    ScrCmd_02C 190
    ScrCmd_068
    ScrCmd_02C 191
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _1CDD
    GoTo _1D56

_1C9F:
    ScrCmd_02C 198
    ScrCmd_068
    ScrCmd_02C 199
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _1CDD
    GoTo _1D56

_1CBE:
    ScrCmd_02C 206
    ScrCmd_068
    ScrCmd_02C 207
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _1CDD
    GoTo _1D56

_1CDD:
    ScrCmd_034
    ScrCmd_0E5 0x21D, 0x226
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _2125
    SetTrainerFlag 0x21D
    SetTrainerFlag 0x226
    Call _1DC5
    SetVar 0x8008, 0x4102
    GoToIfEq 0x8008, 0, _1D35
    GoToIfEq 0x8008, 1, _1D40
    GoToIfEq 0x8008, 2, _1D4B
    ScrCmd_061
    End

_1D35:
    ScrCmd_02C 193
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1D40:
    ScrCmd_02C 201
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1D4B:
    ScrCmd_02C 209
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1D56:
    ScrCmd_034
    Call _1DC5
    ScrCmd_061
    End

_1D62:
    SetVar 0x8008, 0x4102
    GoToIfEq 0x8008, 0, _1D91
    GoToIfEq 0x8008, 1, _1D9C
    GoToIfEq 0x8008, 2, _1DA7
    End

_1D91:
    ScrCmd_02C 193
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1D9C:
    ScrCmd_02C 201
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1DA7:
    ScrCmd_02C 209
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1DB2:
    ScrCmd_068
    ScrCmd_02C 185
    ScrCmd_031
    ScrCmd_034
    Call _1DC5
    ScrCmd_061
    End

_1DC5:
    ApplyMovement 8, _2134
    WaitMovement
    Return

_1DD1:
    ScrCmd_049 0x5DC
    ScrCmd_060
    CheckTrainerFlag 0x225
    GoToIfDefeated 0x225, _1F0C
    ScrCmd_19B 0x800C, 6
    GoToIfEq 0x800C, 1, _1F5C
    SetVar 0x8008, 0x4103
    GoToIfEq 0x8008, 0, _1E2A
    GoToIfEq 0x8008, 1, _1E49
    GoToIfEq 0x8008, 2, _1E68
    ScrCmd_061
    End

_1E2A:
    ScrCmd_02C 212
    ScrCmd_068
    ScrCmd_02C 213
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _1E87
    GoTo _1F00

_1E49:
    ScrCmd_02C 220
    ScrCmd_068
    ScrCmd_02C 221
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _1E87
    GoTo _1F00

_1E68:
    ScrCmd_02C 228
    ScrCmd_068
    ScrCmd_02C 229
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _1E87
    GoTo _1F00

_1E87:
    ScrCmd_034
    ScrCmd_0E5 0x225, 0x219
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _2125
    SetTrainerFlag 0x225
    SetTrainerFlag 0x219
    Call _1F6F
    SetVar 0x8008, 0x4103
    GoToIfEq 0x8008, 0, _1EDF
    GoToIfEq 0x8008, 1, _1EEA
    GoToIfEq 0x8008, 2, _1EF5
    ScrCmd_061
    End

_1EDF:
    ScrCmd_02C 215
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1EEA:
    ScrCmd_02C 223
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1EF5:
    ScrCmd_02C 231
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1F00:
    ScrCmd_034
    Call _1F6F
    ScrCmd_061
    End

_1F0C:
    SetVar 0x8008, 0x4103
    GoToIfEq 0x8008, 0, _1F3B
    GoToIfEq 0x8008, 1, _1F46
    GoToIfEq 0x8008, 2, _1F51
    End

_1F3B:
    ScrCmd_02C 215
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1F46:
    ScrCmd_02C 223
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1F51:
    ScrCmd_02C 231
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1F5C:
    ScrCmd_068
    ScrCmd_02C 210
    ScrCmd_031
    ScrCmd_034
    Call _1F6F
    ScrCmd_061
    End

_1F6F:
    ApplyMovement 14, _212C
    WaitMovement
    Return

_1F7B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    CheckTrainerFlag 0x219
    GoToIfDefeated 0x219, _20B6
    ScrCmd_19B 0x800C, 6
    GoToIfEq 0x800C, 1, _2106
    SetVar 0x8008, 0x4103
    GoToIfEq 0x8008, 0, _1FD4
    GoToIfEq 0x8008, 1, _1FF3
    GoToIfEq 0x8008, 2, _2012
    ScrCmd_061
    End

_1FD4:
    ScrCmd_02C 216
    ScrCmd_068
    ScrCmd_02C 217
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _2031
    GoTo _20AA

_1FF3:
    ScrCmd_02C 224
    ScrCmd_068
    ScrCmd_02C 225
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _2031
    GoTo _20AA

_2012:
    ScrCmd_02C 232
    ScrCmd_068
    ScrCmd_02C 233
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _2031
    GoTo _20AA

_2031:
    ScrCmd_034
    ScrCmd_0E5 0x225, 0x219
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _2125
    SetTrainerFlag 0x225
    SetTrainerFlag 0x219
    Call _2119
    SetVar 0x8008, 0x4103
    GoToIfEq 0x8008, 0, _2089
    GoToIfEq 0x8008, 1, _2094
    GoToIfEq 0x8008, 2, _209F
    ScrCmd_061
    End

_2089:
    ScrCmd_02C 219
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_2094:
    ScrCmd_02C 227
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_209F:
    ScrCmd_02C 235
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_20AA:
    ScrCmd_034
    Call _2119
    ScrCmd_061
    End

_20B6:
    SetVar 0x8008, 0x4103
    GoToIfEq 0x8008, 0, _20E5
    GoToIfEq 0x8008, 1, _20F0
    GoToIfEq 0x8008, 2, _20FB
    End

_20E5:
    ScrCmd_02C 219
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_20F0:
    ScrCmd_02C 227
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_20FB:
    ScrCmd_02C 235
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_2106:
    ScrCmd_068
    ScrCmd_02C 211
    ScrCmd_031
    ScrCmd_034
    Call _2119
    ScrCmd_061
    End

_2119:
    ApplyMovement 16, _2134
    WaitMovement
    Return

_2125:
    ScrCmd_0EB
    ScrCmd_061
    End

    .balign 4, 0
_212C:
    MoveAction_003
    EndMovement

    .balign 4, 0
_2134:
    MoveAction_002
    EndMovement
