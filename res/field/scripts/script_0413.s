    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _055F-.-4
    .long _0583-.-4
    .long _0598-.-4
    .short 0xFD13

_0012:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_17E 0x8000
    ScrCmd_181 0x8001
    ScrCmd_17D 0x800C
    SetVar 0x8008, 0x800C
    CompareVar 0x8008, 0
    GoToIf 1, _033E
    CompareVar 0x8008, 1
    GoToIf 1, _0082
    CompareVar 0x8008, 2
    GoToIf 1, _00B9
    CompareVar 0x8008, 3
    GoToIf 1, _00EE
    CompareVar 0x8008, 4
    GoToIf 1, _0123
    CompareVar 0x8008, 5
    GoToIf 1, _021B
    GoTo _033E
    End

_0082:
    Call _0158
    CompareVar 0x800C, 0
    GoToIf 1, _00A6
    ScrCmd_33C 0, 0x8000
    ScrCmd_346 0
    ScrCmd_02C 13
    GoTo _01F2

_00A6:
    ScrCmd_33C 0, 0x8000
    ScrCmd_346 0
    ScrCmd_02C 31
    ScrCmd_031
    GoTo _053A

_00B9:
    Call _0158
    CompareVar 0x800C, 0
    GoToIf 1, _00DC
    ScrCmd_17B 0, 0x8000, 0x8001
    ScrCmd_02C 14
    GoTo _01F2

_00DC:
    ScrCmd_17B 0, 0x8000, 0x8001
    ScrCmd_02C 32
    ScrCmd_031
    GoTo _053A

_00EE:
    Call _0158
    CompareVar 0x800C, 0
    GoToIf 1, _0111
    ScrCmd_17B 0, 0x8000, 0x8001
    ScrCmd_02C 15
    GoTo _01F2

_0111:
    ScrCmd_17B 0, 0x8000, 0x8001
    ScrCmd_02C 33
    ScrCmd_031
    GoTo _053A

_0123:
    Call _0158
    CompareVar 0x800C, 0
    GoToIf 1, _0146
    ScrCmd_17B 0, 0x8000, 0x8001
    ScrCmd_02C 16
    GoTo _01F2

_0146:
    ScrCmd_17B 0, 0x8000, 0x8001
    ScrCmd_02C 34
    ScrCmd_031
    GoTo _053A

_0158:
    ScrCmd_1BD 0x800C
    CompareVar 0x800C, 0
    GoToIf 5, _0186
    ScrCmd_07E 0x1C0, 1, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _0186
    SetVar 0x800C, 1
    Return

_0186:
    SetVar 0x800C, 0
    Return

_018E:
    ScrCmd_07E 95, 1, 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _01EA
    ScrCmd_07E 96, 1, 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _01EA
    ScrCmd_07E 97, 1, 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _01EA
    ScrCmd_07E 98, 1, 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _01EA
    SetVar 0x800C, 0
    Return

_01EA:
    SetVar 0x800C, 1
    Return

_01F2:
    ScrCmd_02C 17
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _053A
    ScrCmd_034
    ScrCmd_184 0
    ScrCmd_02C 20
    ScrCmd_031
    ScrCmd_184 1
    GoTo _053A

_021B:
    ScrCmd_0D5 1, 0x8001
    CompareVar 0x8001, 1
    GoToIf 2, _023B
    ScrCmd_33C 0, 0x8000
    ScrCmd_02C 35
    GoTo _0243

_023B:
    ScrCmd_33D 0, 0x8000
    ScrCmd_02C 21
_0243:
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _02F7
    ScrCmd_07D 0x8000, 0x8001, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _02CF
    ScrCmd_0D5 1, 0x8001
    CompareVar 0x8001, 1
    GoToIf 2, _0289
    ScrCmd_0D1 0, 0x8000
    ScrCmd_02C 37
    GoTo _0291

_0289:
    ScrCmd_33D 0, 0x8000
    ScrCmd_02C 25
_0291:
    ScrCmd_04E 0x48F
    ScrCmd_04F
    ScrCmd_185
    ScrCmd_0CD 0
    CompareVar 0x8001, 1
    GoToIf 2, _02B4
    ScrCmd_0D1 1, 0x8000
    GoTo _02B9

_02B4:
    ScrCmd_33D 1, 0x8000
_02B9:
    ScrCmd_080 0x8000, 0x800C
    ScrCmd_0D2 3, 0x800C
    ScrCmd_02C 27
    ScrCmd_031
    GoTo _053A

_02CF:
    CompareVar 0x8001, 1
    GoToIf 2, _02E7
    ScrCmd_0D1 0, 0x8000
    GoTo _02EC

_02E7:
    ScrCmd_33D 0, 0x8000
_02EC:
    ScrCmd_02C 26
    ScrCmd_031
    GoTo _053A

_02F7:
    Call _0158
    CompareVar 0x800C, 0
    GoToIf 1, _0310
    GoTo _01F2

_0310:
    ScrCmd_0CD 0
    CompareVar 0x8001, 1
    GoToIf 2, _032E
    ScrCmd_0D1 1, 0x8000
    ScrCmd_02C 36
    GoTo _0336

_032E:
    ScrCmd_33D 1, 0x8000
    ScrCmd_02C 24
_0336:
    ScrCmd_031
    GoTo _053A

_033E:
    ScrCmd_17F 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _0374
    ScrCmd_17A 4, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _054B
    ScrCmd_17F 0x800C
    ScrCmd_0D1 0, 0x800C
    ScrCmd_02C 1
    GoTo _04DA

_0374:
    ScrCmd_1BD 0x800C
    CompareVar 0x800C, 0
    GoToIf 5, _0540
    Call _018E
    CompareVar 0x800C, 1
    GoToIf 1, _03B4
    ScrCmd_17A 4, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _0540
    ScrCmd_02C 0
    GoTo _04DA

_03B4:
    ScrCmd_02C 0
    ScrCmd_17A 4, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _0413
    ScrCmd_041 1, 1, 0, 1, 0x800C
    ScrCmd_042 2, 0
    ScrCmd_042 3, 1
    ScrCmd_042 4, 2
    ScrCmd_043
    SetVar 0x8008, 0x800C
    CompareVar 0x8008, 0
    GoToIf 1, _042D
    CompareVar 0x8008, 1
    GoToIf 1, _04EE
    CompareVar 0x8008, 2
    GoToIf 1, _053A
    GoTo _053A

_0413:
    ScrCmd_02C 5
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _042D
    GoTo _053A

_042D:
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_178 0
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_179 0x8005
    SetVar 0x8008, 0x8005
    CompareVar 0x8008, 0
    GoToIf 1, _053C
    CompareVar 0x8008, 95
    GoToIf 1, _049D
    CompareVar 0x8008, 96
    GoToIf 1, _049D
    CompareVar 0x8008, 97
    GoToIf 1, _049D
    CompareVar 0x8008, 98
    GoToIf 1, _049D
    GoTo _053C

_049D:
    ScrCmd_07C 0x8005, 1, 0x8004
    ScrCmd_182 0x8005
    ScrCmd_17A 4, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _04CA
    ScrCmd_0D1 0, 0x8005
    ScrCmd_02C 11
    GoTo _04DA

_04CA:
    ScrCmd_0D1 0, 0x8005
    ScrCmd_02C 30
    ScrCmd_031
    GoTo _053A

_04DA:
    ScrCmd_02C 8
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _053A
_04EE:
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_178 1
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_179 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _053C
    ScrCmd_0D1 0, 0x800C
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_07C 0x800C, 1, 0x8004
    ScrCmd_183 0x800C
    GoTo _053A

_053A:
    ScrCmd_034
_053C:
    ScrCmd_061
    End

_0540:
    ScrCmd_02C 28
    ScrCmd_031
    GoTo _053A

_054B:
    ScrCmd_17F 0x800C
    ScrCmd_0D1 0, 0x800C
    ScrCmd_02C 29
    ScrCmd_031
    GoTo _053A

_055F:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_0D1 0, 0x8000
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_07C 0x8000, 1, 0x8004
    ScrCmd_183 0x8000
    ScrCmd_061
    End

_0583:
    ScrCmd_060
    ScrCmd_184 0
    ScrCmd_02C 20
    ScrCmd_031
    ScrCmd_184 1
    ScrCmd_034
    ScrCmd_061
    End

_0598:
    ScrCmd_060
    SetVar 0x800C, 0x8000
    SetVar 0x8005, 0x8000
    GoTo _049D
