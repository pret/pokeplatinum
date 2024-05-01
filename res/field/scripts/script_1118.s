    .include "macros/scrcmd.inc"

    .data

    .long _0022-.-4
    .long _0024-.-4
    .long _0026-.-4
    .long _002A-.-4
    .long _07BA-.-4
    .long _0BC0-.-4
    .long _0BD3-.-4
    .long _0BE3-.-4
    .short 0xFD13

_0022:
    End

_0024:
    End

_0026:
    ScrCmd_142
    End

_002A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_140 0x800C
    ScrCmd_029 0x8004, 0x800C
    CompareVarToValue 0x800C, 5
    ScrCmd_01C 1, _0497
    ScrCmd_13C 0
    CompareVarToValue 0x800C, 2
    ScrCmd_01C 1, _04AD
    CompareVarToValue 0x800C, 3
    ScrCmd_01C 1, _053A
    CompareVarToValue 0x800C, 4
    ScrCmd_01C 1, _05AF
    ScrCmd_146 0x8004, 0x800C
    ScrCmd_140 0x800C
    CompareVarToValue 0x800C, 5
    ScrCmd_01C 1, _0497
    ScrCmd_02C 199
    ScrCmd_141 0x800C
    ScrCmd_029 0x8008, 0x800C
    CompareVarToValue 0x8008, 3
    ScrCmd_01C 1, _07BA
    CompareVarToValue 0x8008, 2
    ScrCmd_01C 1, _0486
    GoTo _00BA
    End

_00BA:
    ScrCmd_135 100
    ScrCmd_13F 2, 0x800C
    ScrCmd_2C0 0x800C
    GoTo _00EA
    End

_00D0:
    ScrCmd_135 100
    ScrCmd_139 11
    ScrCmd_13F 22, 0x800C
    ScrCmd_02D 0x800C
    GoTo _00EA
    End

_00EA:
    ScrCmd_040 31, 3, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 165, 0
    ScrCmd_042 56, 1
    ScrCmd_042 49, 2
    ScrCmd_042 22, 3
    ScrCmd_042 140, 4
    ScrCmd_042 139, 5
    ScrCmd_042 23, 99
    ScrCmd_2B9
    ScrCmd_029 0x8008, 0x800C
    CompareVarToValue 0x8008, 0
    ScrCmd_01C 1, _0182
    CompareVarToValue 0x8008, 1
    ScrCmd_01C 1, _0334
    CompareVarToValue 0x8008, 2
    ScrCmd_01C 1, _0274
    CompareVarToValue 0x8008, 3
    ScrCmd_01C 1, _01EB
    CompareVarToValue 0x8008, 4
    ScrCmd_01C 1, _0394
    CompareVarToValue 0x8008, 5
    ScrCmd_01C 1, _03F4
    CompareVarToValue 0x8008, 7
    ScrCmd_01C 1, _0792
    ScrCmd_143 0, 7
    GoTo _0776
    End

_0182:
    ScrCmd_143 0, 1
    ScrCmd_13F 9, 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _019F
    ScrCmd_02D 0x800C
_019F:
    ScrCmd_144 0x800C
    CompareVarToValue 0x800C, 7
    ScrCmd_01C 1, _06A0
    ScrCmd_139 5
    ScrCmd_13F 1, 0x800C
    ScrCmd_02D 0x800C
    ScrCmd_003 30, 0x800C
    ScrCmd_135 1
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0AD
    ScrCmd_0A1
    Call _0BB2
    ScrCmd_02B 16
    GoTo _00D0
    End

_01EB:
    ScrCmd_19A 0x800C
    CompareVarToValue 0x800C, 2
    ScrCmd_01C 0, _0262
    ScrCmd_143 0, 3
    ScrCmd_13F 9, 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _0219
    ScrCmd_02D 0x800C
_0219:
    ScrCmd_144 0x800C
    CompareVarToValue 0x800C, 7
    ScrCmd_01C 1, _06E8
    ScrCmd_139 7
    ScrCmd_13F 1, 0x800C
    ScrCmd_02D 0x800C
    ScrCmd_003 30, 0x800C
    ScrCmd_135 3
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0AE
    ScrCmd_0A1
    Call _0BB2
    GoTo _00D0
    End

_0262:
    ScrCmd_13F 20, 0x800C
    ScrCmd_02D 0x800C
    GoTo _00D0
    End

_0274:
    ScrCmd_1F6 0x800C, 30
    CompareVarToValue 0x800C, 2
    ScrCmd_01C 0, _0322
    ScrCmd_143 0, 2
    ScrCmd_13F 9, 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _02A4
    ScrCmd_02D 0x800C
_02A4:
    ScrCmd_144 0x800C
    CompareVarToValue 0x800C, 7
    ScrCmd_01C 1, _06D0
    ScrCmd_139 6
    ScrCmd_13F 1, 0x800C
    ScrCmd_02D 0x800C
    ScrCmd_003 30, 0x800C
    ScrCmd_135 2
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_192
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_02C 202
    ScrCmd_135 102
    ScrCmd_034
    ScrCmd_2BA 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _0B63
    CompareVarToValue 0x800C, 2
    ScrCmd_01C 1, _0B63
    ScrCmd_0F6
    Call _0BB2
    GoTo _00D0
    End

_0322:
    ScrCmd_13F 19, 0x800C
    ScrCmd_02D 0x800C
    GoTo _00D0
    End

_0334:
    ScrCmd_143 0, 4
    ScrCmd_13F 9, 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _0351
    ScrCmd_02D 0x800C
_0351:
    ScrCmd_144 0x800C
    CompareVarToValue 0x800C, 7
    ScrCmd_01C 1, _06B8
    ScrCmd_13F 1, 0x800C
    ScrCmd_02D 0x800C
    ScrCmd_190 30
    ScrCmd_135 4
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0AC
    ScrCmd_0A1
    Call _0BB2
    GoTo _0476
    End

_0394:
    ScrCmd_143 0, 5
    ScrCmd_13F 9, 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _03B1
    ScrCmd_02D 0x800C
_03B1:
    ScrCmd_144 0x800C
    CompareVarToValue 0x800C, 7
    ScrCmd_01C 1, _0718
    ScrCmd_13F 1, 0x800C
    ScrCmd_02D 0x800C
    ScrCmd_190 30
    ScrCmd_135 5
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0AF
    ScrCmd_0A1
    Call _0BB2
    GoTo _0476
    End

_03F4:
    ScrCmd_19D 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _0741
    ScrCmd_2C7 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _0753
    ScrCmd_143 0, 6
    ScrCmd_13F 9, 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _0433
    ScrCmd_02D 0x800C
_0433:
    ScrCmd_144 0x800C
    CompareVarToValue 0x800C, 7
    ScrCmd_01C 1, _075E
    ScrCmd_13F 1, 0x800C
    ScrCmd_02D 0x800C
    ScrCmd_190 30
    ScrCmd_135 6
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_2C6
    ScrCmd_0A1
    Call _0BB2
    GoTo _0476
    End

_0476:
    ScrCmd_061
    End

    .byte 67
    .byte 1
    .byte 0
    .byte 0
    .byte 1
    .byte 0
    .byte 52
    .byte 0
    .byte 97
    .byte 0
    .byte 2
    .byte 0

_0486:
    ScrCmd_02C 38
    ScrCmd_003 30, 0x800C
    ScrCmd_034
    ScrCmd_13B
    ScrCmd_061
    End

_0497:
    ScrCmd_13A
    ScrCmd_13F 0, 0x800C
    ScrCmd_02D 0x800C
    ScrCmd_030
    ScrCmd_034
    ScrCmd_13B
    ScrCmd_061
    End

_04AD:
    ScrCmd_13A
    ScrCmd_13F 10, 0x800C
    ScrCmd_02D 0x800C
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _0522
    ScrCmd_146 0x8004, 0x800C
    CompareVarToValue 0x800C, 5
    ScrCmd_01C 1, _0486
    ScrCmd_141 0x800C
    CompareVarToValue 0x800C, 2
    ScrCmd_01C 1, _0486
    ScrCmd_13F 13, 0x800C
    ScrCmd_02D 0x800C
    ScrCmd_003 30, 0x800C
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0AC
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    GoTo _0476
    End

_0522:
    ScrCmd_13F 16, 0x800C
    ScrCmd_02D 0x800C
    ScrCmd_003 30, 0x800C
    ScrCmd_13B
    ScrCmd_034
    ScrCmd_061
    End

_053A:
    ScrCmd_13A
    ScrCmd_13F 11, 0x800C
    ScrCmd_02D 0x800C
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _0646
    ScrCmd_146 0x8004, 0x800C
    CompareVarToValue 0x800C, 5
    ScrCmd_01C 1, _0486
    ScrCmd_141 0x800C
    CompareVarToValue 0x800C, 2
    ScrCmd_01C 1, _0486
    ScrCmd_13F 14, 0x800C
    ScrCmd_02D 0x800C
    ScrCmd_003 30, 0x800C
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0AF
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    GoTo _0476
    End

_05AF:
    ScrCmd_13A
    ScrCmd_13F 12, 0x800C
    ScrCmd_02D 0x800C
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _065E
    ScrCmd_19D 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _068A
    ScrCmd_2B7 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _0674
    ScrCmd_146 0x8004, 0x800C
    CompareVarToValue 0x800C, 5
    ScrCmd_01C 1, _0486
    ScrCmd_141 0x800C
    CompareVarToValue 0x800C, 2
    ScrCmd_01C 1, _0486
    ScrCmd_13F 15, 0x800C
    ScrCmd_02D 0x800C
    ScrCmd_003 30, 0x800C
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_2C6
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    GoTo _0476
    End

_0646:
    ScrCmd_13F 17, 0x800C
    ScrCmd_02D 0x800C
    ScrCmd_003 30, 0x800C
    ScrCmd_034
    ScrCmd_13B
    ScrCmd_061
    End

_065E:
    ScrCmd_13F 18, 0x800C
    ScrCmd_02D 0x800C
    ScrCmd_003 30, 0x800C
    ScrCmd_034
    ScrCmd_061
    End

_0674:
    ScrCmd_13F 26, 0x800C
    ScrCmd_02D 0x800C
    ScrCmd_003 30, 0x800C
    ScrCmd_034
    ScrCmd_061
    End

_068A:
    ScrCmd_13F 21, 0x800C
    ScrCmd_02D 0x800C
    ScrCmd_003 30, 0x800C
    ScrCmd_034
    ScrCmd_061
    End

_06A0:
    ScrCmd_13F 3, 0x800C
    ScrCmd_02D 0x800C
    ScrCmd_003 30, 0x800C
    GoTo _07AE
    End

_06B8:
    ScrCmd_13F 4, 0x800C
    ScrCmd_02D 0x800C
    ScrCmd_003 30, 0x800C
    GoTo _07AE
    End

_06D0:
    ScrCmd_13F 5, 0x800C
    ScrCmd_02D 0x800C
    ScrCmd_003 30, 0x800C
    GoTo _07AE
    End

_06E8:
    ScrCmd_13F 6, 0x800C
    ScrCmd_02D 0x800C
    ScrCmd_003 30, 0x800C
    GoTo _07AE

    .byte 2
    .byte 0
    .byte 63
    .byte 1
    .byte 7
    .byte 0
    .byte 12
    .byte 128
    .byte 45
    .byte 0
    .byte 12
    .byte 128
    .byte 3
    .byte 0
    .byte 30
    .byte 0
    .byte 12
    .byte 128
    .byte 22
    .byte 0
    .byte 152
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0

_0718:
    ScrCmd_13F 8, 0x800C
    ScrCmd_02D 0x800C
    ScrCmd_003 30, 0x800C
    GoTo _07AE
    End

_0730:
    ScrCmd_143 1, 1
    ScrCmd_02C 36
    GoTo _0B9A
    End

_0741:
    ScrCmd_13F 21, 0x800C
    ScrCmd_02D 0x800C
    GoTo _00D0
    End

_0753:
    ScrCmd_02C 218
    GoTo _00D0
    End

_075E:
    ScrCmd_13F 8, 0x800C
    ScrCmd_02D 0x800C
    ScrCmd_003 30, 0x800C
    GoTo _07AE
    End

_0776:
    ScrCmd_13F 23, 0x800C
    ScrCmd_02D 0x800C
    ScrCmd_003 30, 0x800C
    ScrCmd_135 101
    ScrCmd_034
    ScrCmd_13E
    ScrCmd_061
    End

_0792:
    ScrCmd_13F 24, 0x800C
    ScrCmd_02D 0x800C
    ScrCmd_003 30, 0x800C
    ScrCmd_135 101
    ScrCmd_034
    ScrCmd_13E
    ScrCmd_061
    End

_07AE:
    ScrCmd_135 101
    ScrCmd_034
    ScrCmd_13E
    ScrCmd_061
    End

_07BA:
    ScrCmd_060
    ScrCmd_049 0x5E4
    ScrCmd_13C 1
    ScrCmd_2C0 7
    ScrCmd_190 30
    GoTo _07D4
    End

_07D4:
    ScrCmd_02C 9
    ScrCmd_135 100
    ScrCmd_139 11
    ScrCmd_145 0x800C
    ScrCmd_029 0x8008, 0x800C
    CompareVarToValue 0x8008, 1
    ScrCmd_01C 1, _0853
    CompareVarToValue 0x8008, 4
    ScrCmd_01C 1, _0AED
    CompareVarToValue 0x8008, 2
    ScrCmd_01C 1, _095C
    CompareVarToValue 0x8008, 3
    ScrCmd_01C 1, _08C7
    CompareVarToValue 0x8008, 5
    ScrCmd_01C 1, _0A28
    CompareVarToValue 0x8008, 6
    ScrCmd_01C 1, _0A82
    CompareVarToValue 0x8008, 7
    ScrCmd_01C 1, _0B78
    CompareVarToValue 0x8008, 8
    ScrCmd_01C 1, _0B89
    End

_0853:
    ScrCmd_02C 11
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _08B6
    ScrCmd_143 1, 0
    ScrCmd_034
    ScrCmd_144 0x800C
    CompareVarToValue 0x800C, 7
    ScrCmd_01C 1, _0B58
    ScrCmd_2AF 0x800C
    ScrCmd_02D 0x800C
    ScrCmd_003 30, 0x800C
    ScrCmd_135 1
    ScrCmd_034
    ScrCmd_139 5
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0AD
    ScrCmd_0A1
    Call _0BB2
    GoTo _07D4
    End

_08B6:
    ScrCmd_143 1, 1
    ScrCmd_02C 17
    GoTo _0B9A
    End

_08C7:
    ScrCmd_02C 26
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _093A
    ScrCmd_19A 0x800C
    CompareVarToValue 0x800C, 2
    ScrCmd_01C 0, _094B
    ScrCmd_143 1, 0
    ScrCmd_034
    ScrCmd_144 0x800C
    CompareVarToValue 0x800C, 7
    ScrCmd_01C 1, _0B78
    ScrCmd_02C 27
    ScrCmd_003 30, 0x800C
    ScrCmd_135 3
    ScrCmd_034
    ScrCmd_139 7
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0AE
    ScrCmd_0A1
    ScrCmd_139 11
    Call _0BB2
    GoTo _07D4
    End

_093A:
    ScrCmd_143 1, 1
    ScrCmd_02C 20
    GoTo _0B9A
    End

_094B:
    ScrCmd_143 1, 1
    ScrCmd_02C 29
    GoTo _0B9A
    End

_095C:
    ScrCmd_02C 21
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _0A06
    ScrCmd_1F6 0x800C, 30
    CompareVarToValue 0x800C, 2
    ScrCmd_01C 0, _0A17
    ScrCmd_143 1, 0
    ScrCmd_034
    ScrCmd_144 0x800C
    CompareVarToValue 0x800C, 7
    ScrCmd_01C 1, _0B78
    ScrCmd_02C 22
    ScrCmd_003 30, 0x800C
    ScrCmd_135 2
    ScrCmd_034
    ScrCmd_139 6
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_192
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_02C 202
    ScrCmd_135 102
    ScrCmd_034
    ScrCmd_2BA 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _0B63
    CompareVarToValue 0x800C, 2
    ScrCmd_01C 1, _0B63
    ScrCmd_0F6
    ScrCmd_139 11
    Call _0BB2
    GoTo _07D4
    End

_0A06:
    ScrCmd_143 1, 1
    ScrCmd_02C 23
    GoTo _0B9A
    End

_0A17:
    ScrCmd_143 1, 1
    ScrCmd_02C 24
    GoTo _0B9A
    End

_0A28:
    ScrCmd_02C 30
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _0A06
    ScrCmd_143 1, 0
    ScrCmd_034
    ScrCmd_144 0x800C
    CompareVarToValue 0x800C, 7
    ScrCmd_01C 1, _0B78
    ScrCmd_02C 31
    ScrCmd_003 30, 0x800C
    ScrCmd_135 5
    ScrCmd_034
    ScrCmd_139 2
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0AF
    ScrCmd_0A1
    Call _0BB2
    ScrCmd_061
    End

_0A82:
    ScrCmd_02C 33
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _0A06
    ScrCmd_143 1, 0
    ScrCmd_034
    ScrCmd_19D 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _0730
    ScrCmd_144 0x800C
    CompareVarToValue 0x800C, 7
    ScrCmd_01C 1, _0B78
    ScrCmd_02C 34
    ScrCmd_003 30, 0x800C
    ScrCmd_135 6
    ScrCmd_034
    ScrCmd_139 13
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_2C6
    ScrCmd_0A1
    Call _0BB2
    ScrCmd_061
    End

_0AED:
    ScrCmd_02C 18
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _0B47
    ScrCmd_143 1, 0
    ScrCmd_034
    ScrCmd_144 0x800C
    CompareVarToValue 0x800C, 7
    ScrCmd_01C 1, _0B78
    ScrCmd_02C 19
    ScrCmd_003 30, 0x800C
    ScrCmd_135 4
    ScrCmd_034
    ScrCmd_139 1
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0AC
    ScrCmd_0A1
    Call _0BB2
    ScrCmd_061
    End

_0B47:
    ScrCmd_143 1, 1
    ScrCmd_02C 28
    GoTo _0B9A
    End

_0B58:
    ScrCmd_02C 35
    GoTo _0B9A
    End

_0B63:
    ScrCmd_139 11
    ScrCmd_02C 25
    ScrCmd_003 30, 0x800C
    GoTo _0B9A
    End

_0B78:
    ScrCmd_02C 8
    ScrCmd_003 30, 0x800C
    GoTo _0B9A
    End

_0B89:
    ScrCmd_02C 10
    ScrCmd_003 30, 0x800C
    GoTo _0B9A
    End

_0B9A:
    ScrCmd_135 101
    ScrCmd_034
    ScrCmd_13E
    ScrCmd_061
    End

    .byte 67
    .byte 1
    .byte 1
    .byte 0
    .byte 1
    .byte 0
    .byte 52
    .byte 0
    .byte 97
    .byte 0
    .byte 2
    .byte 0

_0BB2:
    ScrCmd_13D
    ScrCmd_0BC 6, 1, 1, 0
    Return

_0BC0:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 207
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0BD3:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    GoTo _0497
    End

_0BE3:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    GoTo _0BF3
    End

_0BF3:
    ScrCmd_13A
    CheckFlag 187
    ScrCmd_01D 1, _0C50
    CheckFlag 187
    ScrCmd_01D 0, _0C55
    SetFlag 187
    ScrCmd_040 31, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 10, 0
    ScrCmd_042 166, 1
    ScrCmd_042 23, 2
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    CompareVarToValue 0x8008, 0
    ScrCmd_01C 1, _0C72
    CompareVarToValue 0x8008, 1
    ScrCmd_01C 1, _0C5A
    GoTo _0C6A
    End

_0C50:
    ScrCmd_02C 158
    Return

_0C55:
    ScrCmd_02C 157
    Return

_0C5A:
    ScrCmd_138 0x800C
    ScrCmd_02D 0x800C
    GoTo _0BF3
    End

_0C6A:
    ScrCmd_13B
    ScrCmd_034
    ScrCmd_061
    End

_0C72:
    ScrCmd_02C 159
    ScrCmd_040 31, 3, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 49, 0
    ScrCmd_042 22, 1
    ScrCmd_042 140, 2
    ScrCmd_042 56, 3
    ScrCmd_042 167, 4
    ScrCmd_042 139, 5
    ScrCmd_042 12, 6
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    CompareVarToValue 0x8008, 0
    ScrCmd_01C 1, _0CFA
    CompareVarToValue 0x8008, 1
    ScrCmd_01C 1, _0D05
    CompareVarToValue 0x8008, 2
    ScrCmd_01C 1, _0D10
    CompareVarToValue 0x8008, 3
    ScrCmd_01C 1, _0D1B
    CompareVarToValue 0x8008, 4
    ScrCmd_01C 1, _0D26
    CompareVarToValue 0x8008, 5
    ScrCmd_01C 1, _0D31
    GoTo _0BF3
    End

_0CFA:
    ScrCmd_02C 160
    GoTo _0C72
    End

_0D05:
    ScrCmd_02C 161
    GoTo _0C72
    End

_0D10:
    ScrCmd_02C 162
    GoTo _0C72
    End

_0D1B:
    ScrCmd_02C 164
    GoTo _0C72
    End

_0D26:
    ScrCmd_02C 165
    GoTo _0C72
    End

_0D31:
    ScrCmd_02C 163
    GoTo _0C72

    .byte 2
    .byte 0
    .byte 22
    .byte 0
    .byte 177
    .byte 254
    .byte 0xFF
    .byte 0xFF
    .byte 2
    .byte 0
