    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _0010-.-4
    .short 0xFD13

_000A:
    ScrCmd_01E 0x9ED
    ScrCmd_002

_0010:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_247 0x8002
    ScrCmd_0D0 0, 0x8002
    ScrCmd_0CD 1
    ScrCmd_0D6 2, 0x8002
    ScrCmd_23A 0x8000, 0x8001, 0x8002
    ScrCmd_020 249
    ScrCmd_01C 1, _004B
    ScrCmd_01E 249
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_016 _0056

_004B:
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_016 _0056

_0056:
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_003 40, 0x800C
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_01A _008A
    ScrCmd_003 20, 0x800C
    ScrCmd_1E5 116
    ScrCmd_016 _0150

_008A:
    ScrCmd_069 0x8005, 0x8006
    ScrCmd_011 0x8005, 4
    ScrCmd_01C 1, _00BD
    ScrCmd_011 0x8005, 6
    ScrCmd_01C 1, _00C9
    ScrCmd_011 0x8006, 5
    ScrCmd_01C 1, _00D5
    ScrCmd_016 _00E1

_00BD:
    ScrCmd_05E 0, _0698
    ScrCmd_05F
    ScrCmd_01B

_00C9:
    ScrCmd_05E 0, _06A8
    ScrCmd_05F
    ScrCmd_01B

_00D5:
    ScrCmd_05E 0, _06B8
    ScrCmd_05F
    ScrCmd_01B

_00E1:
    ScrCmd_05E 0, _06C8
    ScrCmd_05F
    ScrCmd_01B

_00ED:
    ScrCmd_069 0x8005, 0x8006
    ScrCmd_011 0x8005, 4
    ScrCmd_01C 1, _0120
    ScrCmd_011 0x8005, 6
    ScrCmd_01C 1, _012C
    ScrCmd_011 0x8006, 5
    ScrCmd_01C 1, _0138
    ScrCmd_016 _0144

_0120:
    ScrCmd_05E 0, _06D8
    ScrCmd_05F
    ScrCmd_01B

_012C:
    ScrCmd_05E 0, _06E0
    ScrCmd_05F
    ScrCmd_01B

_0138:
    ScrCmd_05E 0, _06E8
    ScrCmd_05F
    ScrCmd_01B

_0144:
    ScrCmd_05E 0, _06F0
    ScrCmd_05F
    ScrCmd_01B

_0150:
    ScrCmd_011 0x8001, 1
    ScrCmd_01C 1, _018A
    ScrCmd_011 0x8001, 2
    ScrCmd_01C 1, _019D
    ScrCmd_011 0x8001, 3
    ScrCmd_01C 1, _01B0
    ScrCmd_011 0x8001, 4
    ScrCmd_01C 1, _01C3
    ScrCmd_016 _0574

_018A:
    ScrCmd_011 0x8000, 1
    ScrCmd_01C 1, _01D6
    ScrCmd_016 _0216

_019D:
    ScrCmd_011 0x8000, 1
    ScrCmd_01C 1, _0256
    ScrCmd_016 _0296

_01B0:
    ScrCmd_011 0x8000, 1
    ScrCmd_01C 1, _02D6
    ScrCmd_016 _0316

_01C3:
    ScrCmd_011 0x8000, 1
    ScrCmd_01C 1, _0356
    ScrCmd_016 _0396

_01D6:
    ScrCmd_1B9 0x800C, 0x8002
    ScrCmd_011 0x800C, 0xFF
    ScrCmd_01C 4, _03FA
    ScrCmd_011 0x800C, 200
    ScrCmd_01C 4, _03F1
    ScrCmd_011 0x800C, 150
    ScrCmd_01C 4, _03E8
    ScrCmd_011 0x800C, 70
    ScrCmd_01C 4, _03DF
    ScrCmd_016 _03D6

_0216:
    ScrCmd_1B9 0x800C, 0x8002
    ScrCmd_011 0x800C, 0xFF
    ScrCmd_01C 4, _0427
    ScrCmd_011 0x800C, 200
    ScrCmd_01C 4, _041E
    ScrCmd_011 0x800C, 150
    ScrCmd_01C 4, _0415
    ScrCmd_011 0x800C, 70
    ScrCmd_01C 4, _040C
    ScrCmd_016 _0403

_0256:
    ScrCmd_1B9 0x800C, 0x8002
    ScrCmd_011 0x800C, 0xFF
    ScrCmd_01C 4, _0454
    ScrCmd_011 0x800C, 200
    ScrCmd_01C 4, _044B
    ScrCmd_011 0x800C, 150
    ScrCmd_01C 4, _0442
    ScrCmd_011 0x800C, 70
    ScrCmd_01C 4, _0439
    ScrCmd_016 _0430

_0296:
    ScrCmd_1B9 0x800C, 0x8002
    ScrCmd_011 0x800C, 0xFF
    ScrCmd_01C 4, _0481
    ScrCmd_011 0x800C, 200
    ScrCmd_01C 4, _0478
    ScrCmd_011 0x800C, 150
    ScrCmd_01C 4, _046F
    ScrCmd_011 0x800C, 70
    ScrCmd_01C 4, _0466
    ScrCmd_016 _045D

_02D6:
    ScrCmd_1B9 0x800C, 0x8002
    ScrCmd_011 0x800C, 0xFF
    ScrCmd_01C 4, _04AE
    ScrCmd_011 0x800C, 200
    ScrCmd_01C 4, _04A5
    ScrCmd_011 0x800C, 150
    ScrCmd_01C 4, _049C
    ScrCmd_011 0x800C, 70
    ScrCmd_01C 4, _0493
    ScrCmd_016 _048A

_0316:
    ScrCmd_1B9 0x800C, 0x8002
    ScrCmd_011 0x800C, 0xFF
    ScrCmd_01C 4, _04DB
    ScrCmd_011 0x800C, 200
    ScrCmd_01C 4, _04D2
    ScrCmd_011 0x800C, 150
    ScrCmd_01C 4, _04C9
    ScrCmd_011 0x800C, 70
    ScrCmd_01C 4, _04C0
    ScrCmd_016 _04B7

_0356:
    ScrCmd_1B9 0x800C, 0x8002
    ScrCmd_011 0x800C, 0xFF
    ScrCmd_01C 4, _0508
    ScrCmd_011 0x800C, 200
    ScrCmd_01C 4, _04FF
    ScrCmd_011 0x800C, 150
    ScrCmd_01C 4, _04F6
    ScrCmd_011 0x800C, 70
    ScrCmd_01C 4, _04ED
    ScrCmd_016 _04E4

_0396:
    ScrCmd_1B9 0x800C, 0x8002
    ScrCmd_011 0x800C, 0xFF
    ScrCmd_01C 4, _0535
    ScrCmd_011 0x800C, 200
    ScrCmd_01C 4, _052C
    ScrCmd_011 0x800C, 150
    ScrCmd_01C 4, _0523
    ScrCmd_011 0x800C, 70
    ScrCmd_01C 4, _051A
    ScrCmd_016 _0511

_03D6:
    ScrCmd_02C 10
    ScrCmd_016 _05A5

_03DF:
    ScrCmd_02C 11
    ScrCmd_016 _05A5

_03E8:
    ScrCmd_02C 12
    ScrCmd_016 _05A5

_03F1:
    ScrCmd_02C 13
    ScrCmd_016 _05A5

_03FA:
    ScrCmd_02C 14
    ScrCmd_016 _053E

_0403:
    ScrCmd_02C 15
    ScrCmd_016 _05C4

_040C:
    ScrCmd_02C 16
    ScrCmd_016 _05C4

_0415:
    ScrCmd_02C 17
    ScrCmd_016 _05C4

_041E:
    ScrCmd_02C 18
    ScrCmd_016 _05C4

_0427:
    ScrCmd_02C 19
    ScrCmd_016 _0559

_0430:
    ScrCmd_02C 20
    ScrCmd_016 _05A5

_0439:
    ScrCmd_02C 21
    ScrCmd_016 _05A5

_0442:
    ScrCmd_02C 22
    ScrCmd_016 _05A5

_044B:
    ScrCmd_02C 23
    ScrCmd_016 _05A5

_0454:
    ScrCmd_02C 24
    ScrCmd_016 _053E

_045D:
    ScrCmd_02C 25
    ScrCmd_016 _05C4

_0466:
    ScrCmd_02C 26
    ScrCmd_016 _05C4

_046F:
    ScrCmd_02C 27
    ScrCmd_016 _05C4

_0478:
    ScrCmd_02C 28
    ScrCmd_016 _05C4

_0481:
    ScrCmd_02C 29
    ScrCmd_016 _0559

_048A:
    ScrCmd_02C 30
    ScrCmd_016 _05A5

_0493:
    ScrCmd_02C 31
    ScrCmd_016 _05A5

_049C:
    ScrCmd_02C 32
    ScrCmd_016 _05A5

_04A5:
    ScrCmd_02C 33
    ScrCmd_016 _05A5

_04AE:
    ScrCmd_02C 34
    ScrCmd_016 _053E

_04B7:
    ScrCmd_02C 35
    ScrCmd_016 _05C4

_04C0:
    ScrCmd_02C 36
    ScrCmd_016 _05C4

_04C9:
    ScrCmd_02C 37
    ScrCmd_016 _05C4

_04D2:
    ScrCmd_02C 38
    ScrCmd_016 _05C4

_04DB:
    ScrCmd_02C 39
    ScrCmd_016 _0559

_04E4:
    ScrCmd_02C 40
    ScrCmd_016 _05A5

_04ED:
    ScrCmd_02C 41
    ScrCmd_016 _05A5

_04F6:
    ScrCmd_02C 42
    ScrCmd_016 _05A5

_04FF:
    ScrCmd_02C 43
    ScrCmd_016 _05A5

_0508:
    ScrCmd_02C 44
    ScrCmd_016 _053E

_0511:
    ScrCmd_02C 45
    ScrCmd_016 _05C4

_051A:
    ScrCmd_02C 46
    ScrCmd_016 _05C4

_0523:
    ScrCmd_02C 47
    ScrCmd_016 _05C4

_052C:
    ScrCmd_02C 48
    ScrCmd_016 _05C4

_0535:
    ScrCmd_02C 49
    ScrCmd_016 _0559

_053E:
    ScrCmd_230 0x800C, 0x8002, 69
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0602
    ScrCmd_016 _05A5

_0559:
    ScrCmd_230 0x800C, 0x8002, 69
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0633
    ScrCmd_016 _05C4

_0574:
    ScrCmd_02C 50
    ScrCmd_1B9 0x800C, 0x8002
    ScrCmd_011 0x800C, 0xFF
    ScrCmd_01C 0, _05E3
    ScrCmd_230 0x800C, 0x8002, 69
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0664
    ScrCmd_016 _05E3

_05A5:
    ScrCmd_034
    ScrCmd_003 20, 0x800C
    ScrCmd_01A _00ED
    ScrCmd_003 10, 0x800C
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_05C4:
    ScrCmd_034
    ScrCmd_003 20, 0x800C
    ScrCmd_01A _00ED
    ScrCmd_003 10, 0x800C
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_05E3:
    ScrCmd_034
    ScrCmd_003 20, 0x800C
    ScrCmd_01A _00ED
    ScrCmd_003 10, 0x800C
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0602:
    ScrCmd_034
    ScrCmd_003 20, 0x800C
    ScrCmd_01A _00ED
    ScrCmd_003 10, 0x800C
    ScrCmd_02C 5
    ScrCmd_04E 0x483
    ScrCmd_02C 8
    ScrCmd_04F
    ScrCmd_231 0x8002, 69
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0633:
    ScrCmd_034
    ScrCmd_003 20, 0x800C
    ScrCmd_01A _00ED
    ScrCmd_003 10, 0x800C
    ScrCmd_02C 6
    ScrCmd_04E 0x483
    ScrCmd_02C 8
    ScrCmd_04F
    ScrCmd_231 0x8002, 69
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0664:
    ScrCmd_034
    ScrCmd_003 20, 0x800C
    ScrCmd_01A _00ED
    ScrCmd_003 10, 0x800C
    ScrCmd_02C 7
    ScrCmd_04E 0x483
    ScrCmd_02C 8
    ScrCmd_04F
    ScrCmd_231 0x8002, 69
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

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
