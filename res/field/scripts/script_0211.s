    .include "macros/scrcmd.inc"

    .data

    .long _02FC-.-4
    .long _034C-.-4
    .long _00EE-.-4
    .long _03E8-.-4
    .long _043B-.-4
    .long _0479-.-4
    .long _0494-.-4
    .long _00EC-.-4
    .long _05EA-.-4
    .long _0719-.-4
    .long _00EA-.-4
    .long _08FF-.-4
    .long _0901-.-4
    .long _093A-.-4
    .long _095C-.-4
    .long _0983-.-4
    .long _09F5-.-4
    .long _0BDD-.-4
    .long _0BEE-.-4
    .long _0FC3-.-4
    .long _0FCA-.-4
    .long _103A-.-4
    .long _0FA5-.-4
    .long _0FA7-.-4
    .long _1280-.-4
    .long _1282-.-4
    .long _12A8-.-4
    .long _12BA-.-4
    .long _12CD-.-4
    .long _12E0-.-4
    .long _12F3-.-4
    .long _1361-.-4
    .long _138C-.-4
    .long _139D-.-4
    .long _048B-.-4
    .long _13AB-.-4
    .long _09BD-.-4
    .long _1475-.-4
    .long _13BE-.-4
    .long _1477-.-4
    .long _1581-.-4
    .long _15D7-.-4
    .long _15B3-.-4
    .long _15D7-.-4
    .long _0A34-.-4
    .long _09CC-.-4
    .long _0910-.-4
    .long _0992-.-4
    .long _15BF-.-4
    .long _15D7-.-4
    .long _15E7-.-4
    .long _1636-.-4
    .long _164A-.-4
    .long _165E-.-4
    .long _16AA-.-4
    .long _15CB-.-4
    .long _15D7-.-4
    .long _170A-.-4
    .short 0xFD13

_00EA:
    End

_00EC:
    End

_00EE:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_2BE 0x800C
    CompareVar 0x800C, 4
    GoToIf 4, _027A
    SetVar 0x8004, 0
    ScrCmd_1B6 0x800C
    ScrCmd_1F9 0x800C
    SetVar 0x8004, 120
    CompareVar 0x800C, 0
    GoToIf 1, _0141
    SetVar 0x8004, 121
    CompareVar 0x800C, 1
    GoToIf 1, _0141
    SetVar 0x8004, 0
_0141:
    ScrCmd_02D 0x8004
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _0172
    CompareVar 0x800C, 1
    GoToIf 1, _0165
    End

_0165:
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_015
    End

_0172:
    ScrCmd_0CB 0x100
    ScrCmd_0CC
    ApplyMovement 0xFF, _02EC
    WaitMovement
    ScrCmd_2BE 0x800C
    CompareVar 0x800C, 4
    CallIf 4, _01BC
    CompareVar 0x800C, 4
    CallIf 0, _01B7
    Call _01C1
    CheckFlag 106
    GoToIf 0, _0242
    GoTo _01E1

_01B7:
    ScrCmd_02C 1
    Return

_01BC:
    ScrCmd_02C 7
    Return

_01C1:
    ApplyMovement 0x8007, _1260
    WaitMovement
    ScrCmd_19A 0x8006
    ScrCmd_23B 0x8006
    ApplyMovement 0x8007, _1278
    WaitMovement
    ScrCmd_14E
    Return

_01E1:
    CompareVar 0x8004, 1
    GoToIf 1, _0218
    ScrCmd_02C 2
    ApplyMovement 0xFF, _02F4
    WaitMovement
    ScrCmd_0CB 1
    ScrCmd_0CC
    ApplyMovement 0x8007, _02E0
    WaitMovement
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_015
    End

_0218:
    ScrCmd_02C 8
    ApplyMovement 0xFF, _02F4
    WaitMovement
    ScrCmd_0CB 1
    ScrCmd_0CC
    ApplyMovement 0x8007, _02E0
    WaitMovement
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_015
    End

_0242:
    ScrCmd_119 0x8006
    CompareVar 0x8006, 1
    GoToIf 1, _0259
    GoTo _01E1

_0259:
    SetFlag 106
    ApplyMovement 0xFF, _02F4
    WaitMovement
    ScrCmd_0CB 1
    ScrCmd_0CC
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_015
    End

_027A:
    CheckFlag 105
    GoToIf 1, _02B0
    SetFlag 105
    ScrCmd_02C 4
    ScrCmd_0CD 0
    ScrCmd_02C 5
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _02D4
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_015
    End

_02B0:
    ScrCmd_0CD 0
    ScrCmd_02C 6
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _02D4
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_015
    End

_02D4:
    SetVar 0x8004, 1
    GoTo _0172

    .balign 4, 0
_02E0:
    MoveAction_064
    MoveAction_03E
    EndMovement

    .balign 4, 0
_02EC:
    MoveAction_066
    EndMovement

    .balign 4, 0
_02F4:
    MoveAction_068
    EndMovement

_02FC:
    SetVar 0x8008, 0x800C
    CompareVar 0x8008, 0
    GoToIf 1, _033A
    CompareVar 0x8008, 1
    GoToIf 1, _0341
    ScrCmd_03B 0x800C
    SetVar 0x8008, 0x800C
    CompareVar 0x8008, 1
    GoToIf 1, _0341
    ScrCmd_038 2
    ScrCmd_015
    End

_033A:
    ScrCmd_038 2
    ScrCmd_015
    End

_0341:
    ScrCmd_038 4
    ScrCmd_039
    ScrCmd_03C
    ScrCmd_015
    End

_034C:
    Call _0356
    ScrCmd_015
    End

_0356:
    ScrCmd_080 0x8004, 0x800C
    SetVar 0x8008, 0x800C
    CompareVar 0x8008, 7
    GoToIf 1, _03D8
    CompareVar 0x8008, 0
    GoToIf 1, _03CC
    CompareVar 0x8008, 4
    GoToIf 1, _03CC
    CompareVar 0x8008, 1
    GoToIf 1, _03CC
    CompareVar 0x8008, 2
    GoToIf 1, _03CC
    CompareVar 0x8008, 6
    GoToIf 1, _03CC
    CompareVar 0x8008, 5
    GoToIf 1, _03DE
    CompareVar 0x8008, 3
    GoToIf 1, _03D2
    End

_03CC:
    ScrCmd_04E 0x486
    Return

_03D2:
    ScrCmd_04E 0x48B
    Return

_03D8:
    ScrCmd_04E 0x485
    Return

_03DE:
    ScrCmd_04E 0x488
    Return

    .byte 21
    .byte 0
    .byte 2
    .byte 0

_03E8:
    ScrCmd_060
    ScrCmd_177 0x8004
    SetVar 0x8005, 0
_03F4:
    ScrCmd_1F7 0x800C, 0x8005
    CompareVar 0x800C, 0
    GoToIf 1, _040F
    ScrCmd_0D6 0, 0x8005
    ScrCmd_02C 66
_040F:
    AddVar 0x8005, 1
    CompareVar 0x8004, 0x8005
    GoToIf 5, _03F4
    ScrCmd_19B 0x800C, 6
    CompareVar 0x800C, 0
    GoToIf 1, _0457
    ScrCmd_034
    ScrCmd_061
    End

_043B:
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_030
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    End

_0457:
    ScrCmd_0CD 0
    ScrCmd_02C 11
    ScrCmd_030
    ScrCmd_034
    ScrCmd_054 0, 10
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_1F8
    ScrCmd_14B
    End

_0479:
    ClearFlag 31
    Call _04A8
    ScrCmd_18F 0x800C
    ScrCmd_034
    End

_048B:
    ScrCmd_02C 20
    ScrCmd_030
    ScrCmd_034
    End

_0494:
    SetFlag 31
    Call _04A8
    SetVar 0x4000, 0x800C
    ScrCmd_015
    End

_04A8:
    ScrCmd_12C 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _04FC
    ScrCmd_2C1
    ScrCmd_02C 13
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _05A0
    ScrCmd_12C 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _051D
    CompareVar 0x800C, 2
    GoToIf 1, _0509
    CompareVar 0x800C, 3
    GoToIf 1, _0526
    End

_04FC:
    ScrCmd_02C 20
    ScrCmd_030
    SetVar 0x800C, 0
    Return

_0509:
    ScrCmd_02C 14
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _05A0
_051D:
    ScrCmd_02C 21
    GoTo _0552

_0526:
    ScrCmd_02C 14
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _05A0
    CheckFlag 31
    GoToIf 0, _05C6
    CheckFlag 31
    GoToIf 1, _05D1
    End

_0552:
    ScrCmd_258
    ScrCmd_003 2, 0x800C
    Call _0568
    ScrCmd_259
    GoTo _057D

_0568:
    ScrCmd_18D
    CheckFlag 31
    CallIf 1, _05BE
    ScrCmd_12D 0x800C
    ScrCmd_18E
    Return

_057D:
    CompareVar 0x800C, 0
    GoToIf 1, _05AA
    ScrCmd_0CD 0
    ScrCmd_02C 16
    ScrCmd_049 0x61B
    ScrCmd_04B 0x61B
    ScrCmd_190 30
    ScrCmd_2C2
    Return

_05A0:
    ScrCmd_2C2
    SetVar 0x800C, 0
    Return

_05AA:
    ScrCmd_02C 18
    ScrCmd_030
    ScrCmd_2C2
    Return

_05B3:
    ScrCmd_02C 21
    GoTo _0552
    End

_05BE:
    ScrCmd_2D6
    ClearFlag 31
    Return

_05C6:
    ScrCmd_02C 15
    GoTo _0552
    End

_05D1:
    ScrCmd_2D7 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _05B3
    GoTo _05C6
    End

_05EA:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_07E 94, 1, 0x800C
    CompareVar 0x800C, 0
    GoToIf 5, _0632
    ScrCmd_128 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _065F
    CompareVar 0x800C, 2
    GoToIf 1, _066A
    CompareVar 0x800C, 3
    GoToIf 1, _06F4
    End

_0632:
    ScrCmd_128 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _0675
    CompareVar 0x800C, 2
    GoToIf 1, _067E
    CompareVar 0x800C, 3
    GoToIf 1, _06F4
    End

_065F:
    ScrCmd_02C 46
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_066A:
    ScrCmd_02C 48
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0675:
    ScrCmd_02C 47
    GoTo _06BB

_067E:
    ScrCmd_02C 49
    GoTo _06BB

    .byte 126
    .byte 0
    .byte 94
    .byte 0
    .byte 1
    .byte 0
    .byte 12
    .byte 128
    .byte 17
    .byte 0
    .byte 12
    .byte 128
    .byte 0
    .byte 0
    .byte 28
    .byte 0
    .byte 5
    .byte 31
    .byte 0
    .byte 0
    .byte 0
    .byte 52
    .byte 0
    .byte 97
    .byte 0
    .byte 2
    .byte 0

_06A2:
    ScrCmd_07E 94, 1, 0x800C
    CompareVar 0x800C, 0
    GoToIf 5, _06BB
    ScrCmd_061
    End

_06BB:
    ScrCmd_02C 50
    ScrCmd_03E 0x800C
    ScrCmd_034
    CompareVar 0x800C, 0
    GoToIf 1, _06D5
    ScrCmd_061
    End

_06D5:
    ScrCmd_07C 94, 1, 0x800C
    ScrCmd_260 1
    ScrCmd_127
    ScrCmd_003 10, 0x800C
    ScrCmd_02C 51
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_06F4:
    ScrCmd_1E5 117
    ScrCmd_129
    ScrCmd_0EC 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _0713
    ScrCmd_12A
    GoTo _06A2

_0713:
    ScrCmd_0EB
    ScrCmd_061
    End

_0719:
    Call _0723
    ScrCmd_015
    End

_0723:
    ScrCmd_0CD 0
    ScrCmd_0D7 1, 0x8004
    ScrCmd_04E 0x48A
    ScrCmd_02C 24
    ScrCmd_04F
    ScrCmd_02C 26
    ScrCmd_133 0x8004
    CompareVar 0x8004, 0
    CallIf 1, _0882
    CompareVar 0x8004, 1
    CallIf 1, _0887
    CompareVar 0x8004, 2
    CallIf 1, _088C
    CompareVar 0x8004, 3
    CallIf 1, _0891
    CompareVar 0x8004, 4
    CallIf 1, _0896
    CompareVar 0x8004, 5
    CallIf 1, _089B
    CompareVar 0x8004, 6
    CallIf 1, _08A0
    CompareVar 0x8004, 7
    CallIf 1, _08A5
    CompareVar 0x8004, 8
    CallIf 1, _08AA
    CompareVar 0x8004, 9
    CallIf 1, _08AF
    CompareVar 0x8004, 10
    CallIf 1, _08B4
    CompareVar 0x8004, 11
    CallIf 1, _08B9
    CompareVar 0x8004, 12
    CallIf 1, _08BE
    CompareVar 0x8004, 13
    CallIf 1, _08C3
    CompareVar 0x8004, 14
    CallIf 1, _08C8
    CompareVar 0x8004, 15
    CallIf 1, _08CD
    CompareVar 0x8004, 16
    CallIf 1, _08D2
    CompareVar 0x8004, 17
    CallIf 1, _08D7
    CompareVar 0x8004, 18
    CallIf 1, _08DC
    CompareVar 0x8004, 19
    CallIf 1, _08E1
    CompareVar 0x8004, 20
    CallIf 1, _08E6
    CompareVar 0x8004, 21
    CallIf 1, _08EB
    CompareVar 0x8004, 22
    CallIf 1, _08F0
    CompareVar 0x8004, 23
    CallIf 1, _08F5
    CompareVar 0x8004, 24
    CallIf 1, _08FA
    Return

_0882:
    ScrCmd_02C 83
    Return

_0887:
    ScrCmd_02C 84
    Return

_088C:
    ScrCmd_02C 85
    Return

_0891:
    ScrCmd_02C 86
    Return

_0896:
    ScrCmd_02C 87
    Return

_089B:
    ScrCmd_02C 88
    Return

_08A0:
    ScrCmd_02C 89
    Return

_08A5:
    ScrCmd_02C 90
    Return

_08AA:
    ScrCmd_02C 91
    Return

_08AF:
    ScrCmd_02C 92
    Return

_08B4:
    ScrCmd_02C 93
    Return

_08B9:
    ScrCmd_02C 94
    Return

_08BE:
    ScrCmd_02C 95
    Return

_08C3:
    ScrCmd_02C 96
    Return

_08C8:
    ScrCmd_02C 97
    Return

_08CD:
    ScrCmd_02C 98
    Return

_08D2:
    ScrCmd_02C 99
    Return

_08D7:
    ScrCmd_02C 100
    Return

_08DC:
    ScrCmd_02C 101
    Return

_08E1:
    ScrCmd_02C 102
    Return

_08E6:
    ScrCmd_02C 103
    Return

_08EB:
    ScrCmd_02C 104
    Return

_08F0:
    ScrCmd_02C 105
    Return

_08F5:
    ScrCmd_02C 106
    Return

_08FA:
    ScrCmd_02C 107
    Return

_08FF:
    End

_0901:
    Call _091D
    ScrCmd_02C 109
    ScrCmd_031
    ScrCmd_015
    End

_0910:
    Call _091D
    ScrCmd_02C 128
    ScrCmd_015
    End

_091D:
    ScrCmd_04E 0x486
    ScrCmd_083 0x8004, 0x8005, 0x800C
    ScrCmd_33E 0, 0x8004
    ScrCmd_02C 108
    ScrCmd_0DF 0, 0x8004
    ScrCmd_04F
    Return

_093A:
    Call _0944
    ScrCmd_015
    End

_0944:
    ScrCmd_04E 0x486
    ScrCmd_087 0x8004, 0x8005, 0x800C
    ScrCmd_0E0 0, 0x8004
    ScrCmd_02C 80
    ScrCmd_04F
    Return

_095C:
    Call _0966
    ScrCmd_015
    End

_0966:
    ScrCmd_04E 0x486
    ScrCmd_08F 0x8004, 0x8005, 0x800C
    ScrCmd_0E1 0, 0x8004
    ScrCmd_0D5 1, 0x8005
    ScrCmd_02C 81
    ScrCmd_04F
    Return

_0983:
    Call _099F
    ScrCmd_02C 31
    ScrCmd_031
    ScrCmd_015
    End

_0992:
    Call _099F
    ScrCmd_02C 127
    ScrCmd_015
    End

_099F:
    ScrCmd_04E 0x48C
    ScrCmd_1D2 0x8004, 0x8005
    ScrCmd_261 0, 0x8004
    ScrCmd_02C 25
    ScrCmd_04F
    ScrCmd_0CD 0
    ScrCmd_261 1, 0x8004
    Return

_09BD:
    Call _09D9
    ScrCmd_02C 31
    ScrCmd_031
    ScrCmd_015
    End

_09CC:
    Call _09D9
    ScrCmd_02C 127
    ScrCmd_015
    End

_09D9:
    ScrCmd_04E 0x486
    ScrCmd_1D5 0x8004
    ScrCmd_273 0, 0x8004
    ScrCmd_02C 25
    ScrCmd_04F
    ScrCmd_0CD 0
    ScrCmd_273 1, 0x8004
    Return

_09F5:
    Call _09FF
    ScrCmd_015
    End

_09FF:
    Call _0356
    ScrCmd_07B 0x8004, 0x8005, 0x800C
    ScrCmd_080 0x8004, 0x800C
    CompareVar 0x800C, 7
    CallIf 1, _0A71
    CompareVar 0x800C, 7
    CallIf 5, _0A82
    ScrCmd_02C 30
    ScrCmd_031
    Return

_0A34:
    Call _0A3E
    ScrCmd_015
    End

_0A3E:
    Call _0356
    ScrCmd_07B 0x8004, 0x8005, 0x800C
    ScrCmd_080 0x8004, 0x800C
    CompareVar 0x800C, 7
    CallIf 1, _0A71
    CompareVar 0x800C, 7
    CallIf 5, _0A82
    ScrCmd_02C 126
    Return

_0A71:
    ScrCmd_0CD 0
    ScrCmd_0D1 1, 0x8004
    ScrCmd_02C 28
    GoTo _0AA8

_0A82:
    CompareVar 0x8005, 1
    GoToIf 2, _0A9A
    ScrCmd_0D1 0, 0x8004
    GoTo _0A9F

_0A9A:
    ScrCmd_33D 0, 0x8004
_0A9F:
    ScrCmd_02C 25
    GoTo _0AA8

_0AA8:
    ScrCmd_04F
    ScrCmd_2A7 0x8004, 0x800C
    CompareVar 0x800C, 1
    CallIf 1, _13C8
    ScrCmd_0CD 0
    CompareVar 0x8005, 1
    GoToIf 2, _0AD8
    ScrCmd_0D1 1, 0x8004
    GoTo _0ADD

_0AD8:
    ScrCmd_33D 1, 0x8004
_0ADD:
    ScrCmd_080 0x8004, 0x800C
    SetVar 0x8008, 0x800C
    CompareVar 0x8008, 7
    GoToIf 1, _0B64
    CompareVar 0x8008, 0
    GoToIf 1, _0B53
    CompareVar 0x8008, 4
    GoToIf 1, _0BA8
    CompareVar 0x8008, 1
    GoToIf 1, _0B97
    CompareVar 0x8008, 2
    GoToIf 1, _0BB9
    CompareVar 0x8008, 6
    GoToIf 1, _0B75
    CompareVar 0x8008, 5
    GoToIf 1, _0B86
    CompareVar 0x8008, 3
    GoToIf 1, _0BCA
    End

_0B53:
    ScrCmd_080 0x8004, 0x800C
    ScrCmd_0D2 2, 0x800C
    GoTo _0BDB

_0B64:
    ScrCmd_080 0x8004, 0x800C
    ScrCmd_0D2 2, 0x800C
    GoTo _0BDB

_0B75:
    ScrCmd_080 0x8004, 0x800C
    ScrCmd_0D2 2, 0x800C
    GoTo _0BDB

_0B86:
    ScrCmd_080 0x8004, 0x800C
    ScrCmd_0D2 2, 0x800C
    GoTo _0BDB

_0B97:
    ScrCmd_080 0x8004, 0x800C
    ScrCmd_0D2 2, 0x800C
    GoTo _0BDB

_0BA8:
    ScrCmd_080 0x8004, 0x800C
    ScrCmd_0D2 2, 0x800C
    GoTo _0BDB

_0BB9:
    ScrCmd_080 0x8004, 0x800C
    ScrCmd_0D2 2, 0x800C
    GoTo _0BDB

_0BCA:
    ScrCmd_080 0x8004, 0x800C
    ScrCmd_0D2 2, 0x800C
    GoTo _0BDB

_0BDB:
    Return

_0BDD:
    Call _0BE7
    ScrCmd_015
    End

_0BE7:
    ScrCmd_02C 27
    ScrCmd_031
    Return

_0BEE:
    ScrCmd_060
    ScrCmd_049 0x60C
    Call _0C06
    ScrCmd_0CD 0
    ScrCmd_02C 32
    GoTo _0C1C

_0C06:
    ScrCmd_24B 90
    ScrCmd_24C 90
    ScrCmd_169 90
    Return

_0C11:
    ScrCmd_24D 90
    ScrCmd_169 90
    ScrCmd_16A 90
    Return

_0C1C:
    ScrCmd_0CD 0
    ScrCmd_02C 33
    ScrCmd_040 1, 1, 0, 1, 0x8006
    CheckFlag 0x97E
    CallIf 0, _0C7B
    CheckFlag 0x97E
    CallIf 1, _0C81
    ScrCmd_042 60, 1
    ScrCmd_22D 2, 0x800C
    CompareVar 0x800C, 0
    CallIf 1, _0C87
    CompareVar 0x800C, 1
    CallIf 1, _0C8D
    CheckFlag 0x964
    GoToIf 1, _0C93
    CheckFlag 0x964
    GoToIf 0, _0CDD
    End

_0C7B:
    ScrCmd_042 58, 0
    Return

_0C81:
    ScrCmd_042 59, 0
    Return

_0C87:
    ScrCmd_042 63, 2
    Return

_0C8D:
    ScrCmd_042 62, 2
    Return

_0C93:
    ScrCmd_042 61, 3
    ScrCmd_042 64, 4
    ScrCmd_043
    SetVar 0x8008, 0x8006
    CompareVar 0x8008, 0
    GoToIf 1, _0D16
    CompareVar 0x8008, 1
    GoToIf 1, _0E45
    CompareVar 0x8008, 2
    GoToIf 1, _0F62
    CompareVar 0x8008, 3
    GoToIf 1, _0F2C
    GoTo _0F70

_0CDD:
    ScrCmd_042 64, 3
    ScrCmd_043
    SetVar 0x8008, 0x8006
    CompareVar 0x8008, 0
    GoToIf 1, _0D16
    CompareVar 0x8008, 1
    GoToIf 1, _0E45
    CompareVar 0x8008, 2
    GoToIf 1, _0F62
    GoTo _0F70

_0D16:
    ScrCmd_049 0x60D
    ScrCmd_0CD 0
    ScrCmd_02C 34
    Call _0D2C
    GoTo _0D73

_0D2C:
    ScrCmd_044 1, 1, 0, 1, 0x800C
    ScrCmd_046 65, 74, 0
    ScrCmd_046 66, 75, 1
    ScrCmd_046 67, 76, 2
    ScrCmd_046 68, 77, 3
    CheckFlag 0x978
    CallIf 1, _0D69
    ScrCmd_046 70, 79, 5
    Return

_0D69:
    ScrCmd_046 69, 78, 4
    Return

_0D73:
    ScrCmd_047
    SetVar 0x8008, 0x800C
    CompareVar 0x8008, 0
    GoToIf 1, _0DC2
    CompareVar 0x8008, 1
    GoToIf 1, _0DD5
    CompareVar 0x8008, 2
    GoToIf 1, _0DE8
    CompareVar 0x8008, 3
    GoToIf 1, _0DFB
    CompareVar 0x8008, 4
    GoToIf 1, _0E0E
    GoTo _0C1C

_0DC2:
    ScrCmd_034
    Call _0F94
    ScrCmd_0AB 0
    ScrCmd_0A1
    GoTo _0E21

_0DD5:
    ScrCmd_034
    Call _0F94
    ScrCmd_0AB 1
    ScrCmd_0A1
    GoTo _0E21

_0DE8:
    ScrCmd_034
    Call _0F94
    ScrCmd_0AB 2
    ScrCmd_0A1
    GoTo _0E21

_0DFB:
    ScrCmd_034
    Call _0F94
    ScrCmd_0AB 3
    ScrCmd_0A1
    GoTo _0E21

_0E0E:
    ScrCmd_034
    Call _0F94
    ScrCmd_0AB 4
    ScrCmd_0A1
    GoTo _0E21

_0E21:
    ScrCmd_30B
    ScrCmd_0CD 0
    ScrCmd_02B 33
    Call _0D2C
    Call _0C06
    ScrCmd_0BC 6, 1, 1, 0
    GoTo _0D73

_0E45:
    ScrCmd_049 0x60D
    ScrCmd_0CD 0
    ScrCmd_02C 35
    GoTo _0E55

_0E55:
    Call _0E61
    GoTo _0E83

_0E61:
    ScrCmd_044 1, 1, 0, 1, 0x800C
    ScrCmd_046 71, 80, 0
    ScrCmd_046 72, 81, 1
    ScrCmd_046 73, 82, 3
    Return

_0E83:
    ScrCmd_047
    SetVar 0x8008, 0x800C
    CompareVar 0x8008, 0
    GoToIf 1, _0EAB
    CompareVar 0x8008, 1
    GoToIf 1, _0EE0
    GoTo _0C1C

_0EAB:
    ScrCmd_034
    ScrCmd_1B4 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _0EC6
    ScrCmd_1B3
    GoTo _0ECF

_0EC6:
    ScrCmd_02C 52
    GoTo _0E55

_0ECF:
    ScrCmd_0CD 0
    ScrCmd_033
    Call _0E61
    GoTo _0E83

_0EE0:
    ScrCmd_2AB 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _0F01
    ScrCmd_034
    Call _0F94
    ScrCmd_0A9
    GoTo _0F0A

_0F01:
    ScrCmd_02C 118
    GoTo _0E55

_0F0A:
    ScrCmd_0CD 0
    ScrCmd_02B 33
    Call _0E61
    Call _0C06
    ScrCmd_0BC 6, 1, 1, 0
    GoTo _0E83

_0F2C:
    ScrCmd_049 0x60D
    ScrCmd_034
    ScrCmd_336 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _0F59
    Call _0F94
    ScrCmd_0B1
    ScrCmd_0A1
    Call _0F80
    GoTo _0C1C

_0F59:
    ScrCmd_02C 131
    GoTo _0C1C

_0F62:
    ScrCmd_049 0x60D
    ScrCmd_014 0x26DF
    GoTo _0C1C

_0F70:
    ScrCmd_034
    ScrCmd_049 0x60E
    Call _0C11
    ScrCmd_061
    End

_0F80:
    Call _0C06
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    Return

_0F94:
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_16A 90
    Return

_0FA5:
    End

_0FA7:
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0A9
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    End

_0FC3:
    ScrCmd_02C 37
    ScrCmd_015
    End

_0FCA:
    ScrCmd_060
    ApplyMovement 0xFF, _1250
    ApplyMovement 0, _1258
    WaitMovement
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_0CD 0
    ScrCmd_02C 40
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_034
    ScrCmd_04E 0x48E
    ScrCmd_04F
    ScrCmd_14E
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    CheckFlag 144
    CallIf 1, _1030
    CheckFlag 144
    CallIf 0, _1035
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1030:
    ScrCmd_02C 41
    Return

_1035:
    ScrCmd_02C 42
    Return

_103A:
    ScrCmd_060
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_0CB 0x100
    ScrCmd_0CC
    ApplyMovement 0xFF, _02EC
    WaitMovement
    ScrCmd_02C 43
    Call _10C7
    Call _01C1
    ScrCmd_15B 0, 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _10A2
    ScrCmd_02C 44
    ApplyMovement 0xFF, _02F4
    WaitMovement
    ScrCmd_0CB 1
    ScrCmd_0CC
    ApplyMovement 0x8007, _02E0
    WaitMovement
    ScrCmd_02C 45
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_10A2:
    ApplyMovement 0xFF, _02F4
    WaitMovement
    ScrCmd_0CB 1
    ScrCmd_0CC
    ApplyMovement 0x8007, _02E0
    WaitMovement
    ScrCmd_02C 39
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_10C7:
    ScrCmd_201 0x8004
    CompareVar 0x8004, 6
    GoToIf 1, _11BD
    CompareVar 0x8004, 36
    GoToIf 1, _11C5
    CompareVar 0x8004, 48
    GoToIf 1, _11CD
    CompareVar 0x8004, 69
    GoToIf 1, _11D5
    CompareVar 0x8004, 101
    GoToIf 1, _11DD
    CompareVar 0x8004, 123
    GoToIf 1, _11E5
    CompareVar 0x8004, 134
    GoToIf 1, _11ED
    CompareVar 0x8004, 151
    GoToIf 1, _11F5
    CompareVar 0x8004, 168
    GoToIf 1, _11FD
    CompareVar 0x8004, 173
    GoToIf 1, _1205
    CompareVar 0x8004, 189
    GoToIf 1, _120D
    CompareVar 0x8004, 0x1A4
    GoToIf 1, _1215
    CompareVar 0x8004, 0x1AC
    GoToIf 1, _121D
    CompareVar 0x8004, 0x1B3
    GoToIf 1, _1225
    CompareVar 0x8004, 0x1BB
    GoToIf 1, _122D
    CompareVar 0x8004, 0x1C4
    GoToIf 1, _1235
    CompareVar 0x8004, 0x1CB
    GoToIf 1, _123D
    CompareVar 0x8004, 175
    GoToIf 1, _1245
    SetVar 0x8007, 0
    Return

_11BD:
    SetVar 0x8007, 3
    Return

_11C5:
    SetVar 0x8007, 1
    Return

_11CD:
    SetVar 0x8007, 3
    Return

_11D5:
    SetVar 0x8007, 3
    Return

_11DD:
    SetVar 0x8007, 0
    Return

_11E5:
    SetVar 0x8007, 0
    Return

_11ED:
    SetVar 0x8007, 0
    Return

_11F5:
    SetVar 0x8007, 0
    Return

_11FD:
    SetVar 0x8007, 0
    Return

_1205:
    SetVar 0x8007, 0
    Return

_120D:
    SetVar 0x8007, 0
    Return

_1215:
    SetVar 0x8007, 3
    Return

_121D:
    SetVar 0x8007, 2
    Return

_1225:
    SetVar 0x8007, 0
    Return

_122D:
    SetVar 0x8007, 0
    Return

_1235:
    SetVar 0x8007, 0
    Return

_123D:
    SetVar 0x8007, 0
    Return

_1245:
    SetVar 0x8007, 3
    Return

    .balign 4, 0
_1250:
    MoveAction_002
    EndMovement

    .balign 4, 0
_1258:
    MoveAction_003
    EndMovement

    .balign 4, 0
_1260:
    MoveAction_002
    EndMovement

    .byte 0
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 3
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_1278:
    MoveAction_001
    EndMovement

_1280:
    End

_1282:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_205
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    End

_12A8:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_20C
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_12BA:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 67
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_12CD:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 70
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_12E0:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 71
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_12F3:
    ScrCmd_07E 0x1C2, 1, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _135F
    ScrCmd_060
    ScrCmd_049 0x5DC
    ScrCmd_0C7 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _133C
    ScrCmd_02C 73
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _1359
    ScrCmd_0C8 1
    ScrCmd_034
    ScrCmd_061
    End

_133C:
    ScrCmd_02C 74
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _1359
    ScrCmd_0C8 0
    ScrCmd_034
    ScrCmd_061
    End

_1359:
    ScrCmd_034
    ScrCmd_061
    End

_135F:
    End

_1361:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 76
    ScrCmd_030
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_034
    ScrCmd_1AC
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    End

_138C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 79
    ScrCmd_030
    ScrCmd_034
    ScrCmd_061
    End

_139D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_0A5
    ScrCmd_061
    End

_13AB:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 82
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_13BE:
    Call _13C8
    ScrCmd_015
    End

_13C8:
    AddVar 0x4115, 1
    CompareVar 0x4115, 9
    CallIf 4, _1445
    CompareVar 0x4115, 1
    CallIf 1, _144D
    CompareVar 0x4115, 2
    CallIf 1, _1452
    CompareVar 0x4115, 3
    CallIf 1, _1457
    CompareVar 0x4115, 4
    CallIf 1, _145C
    CompareVar 0x4115, 5
    CallIf 1, _1461
    CompareVar 0x4115, 6
    CallIf 1, _1466
    CompareVar 0x4115, 7
    CallIf 1, _146B
    CompareVar 0x4115, 8
    CallIf 1, _1470
    Return

_1445:
    SetVar 0x4115, 1
    Return

_144D:
    ScrCmd_02C 110
    Return

_1452:
    ScrCmd_02C 111
    Return

_1457:
    ScrCmd_02C 112
    Return

_145C:
    ScrCmd_02C 113
    Return

_1461:
    ScrCmd_02C 114
    Return

_1466:
    ScrCmd_02C 115
    Return

_146B:
    ScrCmd_02C 116
    Return

_1470:
    ScrCmd_02C 117
    Return

_1475:
    End

_1477:
    ScrCmd_060
    ScrCmd_201 0x8004
    CompareVar 0x8004, 220
    GoToIf 1, _14AC
    CompareVar 0x8004, 0x248
    GoToIf 1, _14AC
    CompareVar 0x8004, 0x249
    GoToIf 1, _14AC
    GoTo _1570
    End

_14AC:
    ScrCmd_069 0x8004, 0x8005
    CompareVar 0x8004, 31
    GoToIf 5, _1570
    CompareVar 0x8005, 52
    GoToIf 5, _1570
    ScrCmd_166 0x4000
    CompareVar 0x4000, 0
    GoToIf 1, _1570
    ScrCmd_22D 2, 0x4000
    CompareVar 0x4000, 0
    GoToIf 1, _1570
    ScrCmd_28B 2, 0x4000
    CompareVar 0x4000, 0
    GoToIf 1, _1570
    CheckFlag 0x11E
    GoToIf 1, _1570
    ScrCmd_0CD 0
    ScrCmd_02C 122
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _157B
    ScrCmd_0CD 0
    ScrCmd_02C 123
    ScrCmd_034
    ScrCmd_003 30, 0x800C
    ScrCmd_050 0x447
    ScrCmd_003 0x21C, 0x800C
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_0BC 6, 6, 0, 0x7FFF
    ScrCmd_0BD
    ScrCmd_0BE 0x1FE, 0, 0x8004, 0x8005, 0
    ScrCmd_0BC 6, 6, 1, 0x7FFF
    ScrCmd_0BD
    ScrCmd_02C 124
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1570:
    ScrCmd_02C 125
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_157B:
    ScrCmd_034
    ScrCmd_061
    End

_1581:
    ScrCmd_051 0
    ScrCmd_14D 0x800C
    CompareVar 0x800C, 0
    CallIf 1, _15A7
    CompareVar 0x800C, 1
    CallIf 1, _15AD
    ScrCmd_015
    End

_15A7:
    ScrCmd_057 0x477
    Return

_15AD:
    ScrCmd_057 0x476
    Return

_15B3:
    ScrCmd_051 0
    ScrCmd_057 0x473
    ScrCmd_015
    End

_15BF:
    ScrCmd_051 0
    ScrCmd_057 0x472
    ScrCmd_015
    End

_15CB:
    ScrCmd_051 0
    ScrCmd_057 0x4B0
    ScrCmd_015
    End

_15D7:
    ScrCmd_054 0, 30
    ScrCmd_051 0
    ScrCmd_052
    ScrCmd_015
    End

_15E7:
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0B3 0x800C
    SetVar 0x8004, 0x800C
    ScrCmd_2F6 0x8005, 0x8004, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _1624
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_015
    End

_1624:
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_015
    End

_1636:
    ScrCmd_049 0x5DC
    ScrCmd_060
    SetVar 0x8004, 0
    GoTo _1672
    End

_164A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    SetVar 0x8004, 1
    GoTo _1672
    End

_165E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    SetVar 0x8004, 2
    GoTo _1672
    End

_1672:
    ScrCmd_02C 129
    ScrCmd_2E6 0xFF, 0x8004, 0x800C
    SetVar 0x8003, 0x800C
    CompareVar 0x8003, -2
    GoToIf 1, _16A4
    ScrCmd_2EC 21, 1, 0x8003, 0x800C
    ScrCmd_030
    ScrCmd_2ED
    GoTo _16A4
    End

_16A4:
    ScrCmd_034
    ScrCmd_061
    End

_16AA:
    CheckFlag 137
    GoToIf 1, _1706
    CompareVar 0x4050, 4
    GoToIf 5, _1706
    CompareVar 0x4051, 4
    GoToIf 5, _1706
    CompareVar 0x4052, 4
    GoToIf 5, _1706
    CompareVar 0x4053, 4
    GoToIf 5, _1706
    CompareVar 0x404F, 4
    GoToIf 5, _1706
    SetFlag 137
    ScrCmd_30A 42
    GoTo _1706
    End

_1706:
    ScrCmd_015
    End

_170A:
    ScrCmd_02C 130
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_015
    End

    .byte 0
