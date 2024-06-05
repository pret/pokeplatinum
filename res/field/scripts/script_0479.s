    .include "macros/scrcmd.inc"

    .data

    .long _0036-.-4
    .long _007E-.-4
    .long _02F8-.-4
    .long _0400-.-4
    .long _0413-.-4
    .long _045F-.-4
    .long _0475-.-4
    .long _0488-.-4
    .long _049B-.-4
    .long _04B4-.-4
    .long _057C-.-4
    .long _02D8-.-4
    .long _0662-.-4
    .short 0xFD13

_0036:
    ClearFlag 0x995
    SetFlag 0x9F3
    CompareVar 0x40F3, 0
    GoToIf 5, _004D
    End

_004D:
    ScrCmd_186 7, 8, 9
    ScrCmd_189 7, 2
    End

_005D:
    CompareVar 0x40E0, 0x7D0
    GoToIf 1, _0074
    ScrCmd_0CD 1
    ScrCmd_0D5 2, 0x40E0
    Return

_0074:
    ScrCmd_0CE 1
    ScrCmd_0D5 2, 0x40E0
    Return

_007E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_14D 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _009D
    GoTo _00D2

_009D:
    CheckFlag 211
    GoToIf 1, _01D6
    SetFlag 211
    ScrCmd_0CD 0
    ScrCmd_02C 21
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _0107
    CompareVar 0x800C, 1
    GoToIf 1, _01CB
    End

_00D2:
    CheckFlag 211
    GoToIf 1, _01E2
    SetFlag 211
    ScrCmd_0CD 0
    ScrCmd_02C 22
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _0107
    CompareVar 0x800C, 1
    GoToIf 1, _01CB
    End

_0107:
    ScrCmd_02C 23
    GoTo _012B

_0110:
    ScrCmd_02C 24
    GoTo _012B

_0119:
    ScrCmd_02C 25
    GoTo _012B

_0122:
    ScrCmd_02C 26
    GoTo _012B

_012B:
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 198, 0
    ScrCmd_042 199, 1
    ScrCmd_042 200, 2
    ScrCmd_042 202, 4
    ScrCmd_043
    CompareVar 0x800C, 0
    GoToIf 1, _0110
    CompareVar 0x800C, 1
    GoToIf 1, _0119
    CompareVar 0x800C, 2
    GoToIf 1, _0122
    GoTo _0172

_0172:
    ScrCmd_02C 28
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _01CB
_0186:
    SetVar 0x800C, 0
    ScrCmd_252 0x800C
    CompareVar 0x800C, 6
    GoToIf 0, _02AD
    SetVar 0x800C, 0
    ScrCmd_254 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _0299
    ScrCmd_14D 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _0231
    GoTo _0245

_01CB:
    ScrCmd_02C 29
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01D6:
    ScrCmd_0CD 0
    ScrCmd_02C 30
    GoTo _01EE

_01E2:
    ScrCmd_0CD 0
    ScrCmd_02C 31
    GoTo _01EE

_01EE:
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 203, 0
    ScrCmd_042 204, 1
    ScrCmd_042 205, 2
    ScrCmd_043
    CompareVar 0x800C, 0
    GoToIf 1, _0186
    CompareVar 0x800C, 1
    GoToIf 1, _02A4
    CompareVar 0x800C, 2
    GoToIf 1, _01CB
    GoTo _01CB

_0231:
    Call _005D
    ScrCmd_0CD 0
    ScrCmd_02C 32
    ScrCmd_034
    GoTo _0259

_0245:
    Call _005D
    ScrCmd_0CD 0
    ScrCmd_02C 33
    ScrCmd_034
    GoTo _0259

_0259:
    ApplyMovement 7, _02B8
    WaitMovement
    ApplyMovement 0xFF, _02CC
    WaitMovement
    ScrCmd_049 0x603
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 251, 0, 24, 47, 0
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    End

_0299:
    ScrCmd_02C 34
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_02A4:
    ScrCmd_02C 35
    GoTo _012B

_02AD:
    ScrCmd_02C 37
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_02B8:
    MoveAction_024
    MoveAction_00C 2
    MoveAction_00F
    MoveAction_026
    EndMovement

    .balign 4, 0
_02CC:
    MoveAction_00C 5
    MoveAction_045
    EndMovement

_02D8:
    ScrCmd_060
    SetVar 0x40F3, 0
    ApplyMovement 0xFF, _03E4
    WaitMovement
    ApplyMovement 7, _03D8
    WaitMovement
    ScrCmd_061
    End

_02F8:
    ScrCmd_060
    SetVar 0x40F3, 0
    ApplyMovement 0xFF, _03EC
    WaitMovement
    ScrCmd_256 0, 0x800C
    ScrCmd_0D5 0, 0x800C
    ScrCmd_256 1, 0x800C
    ScrCmd_0D5 1, 0x800C
    ScrCmd_256 2, 0x800C
    ScrCmd_0D5 2, 0x800C
    ScrCmd_256 3, 0x800C
    ScrCmd_0D5 3, 0x800C
    ScrCmd_02C 38
    ScrCmd_256 3, 0x800C
    CompareVar 0x800C, 0x40E0
    GoToIf 2, _035B
    ScrCmd_02C 40
    Call _07BE
    GoTo _0370

_035B:
    ScrCmd_02C 39
    Call _07BE
    ScrCmd_256 3, 0x40E0
    GoTo _0370

_0370:
    ScrCmd_02C 41
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _03AB
    ScrCmd_02C 46
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _039E
    GoTo _0370

_039E:
    ScrCmd_02C 43
    ScrCmd_030
    ScrCmd_034
    GoTo _03BD

_03AB:
    ScrCmd_255
    ScrCmd_02C 42
    ScrCmd_02C 44
    ScrCmd_030
    ScrCmd_034
    GoTo _03BD

_03BD:
    ApplyMovement 0xFF, _03F8
    WaitMovement
    ApplyMovement 7, _03D8
    WaitMovement
    ScrCmd_061
    End

    .balign 4, 0
_03D8:
    MoveAction_00E
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_03E4:
    MoveAction_00D 5
    EndMovement

    .balign 4, 0
_03EC:
    MoveAction_00D 2
    MoveAction_027
    EndMovement

    .balign 4, 0
_03F8:
    MoveAction_00D 4
    EndMovement

_0400:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 57
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0413:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_0CD 0
    CompareVar 0x800C, 2
    GoToIf 1, _0454
    CompareVar 0x800C, 1
    GoToIf 1, _0449
    GoTo _043E

_043E:
    ScrCmd_02C 52
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0449:
    ScrCmd_02C 53
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0454:
    ScrCmd_02C 54
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_045F:
    ScrCmd_0CD 0
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 55
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0475:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 56
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0488:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 65
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_049B:
    Call _005D
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 57
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_04B4:
    ScrCmd_060
    ClearFlag 0x242
    SetVar 0x40E0, 0x7D0
    ApplyMovement 1, _0548
    WaitMovement
    ScrCmd_14D 0x4000
    ScrCmd_0CD 0
    CompareVar 0x4000, 0
    GoToIf 1, _04E4
    GoTo _04ED

_04E4:
    ScrCmd_02C 0
    GoTo _04F6

_04ED:
    ScrCmd_02C 1
    GoTo _04F6

_04F6:
    ScrCmd_02C 2
    ScrCmd_034
    ApplyMovement 1, _0558
    WaitMovement
    ScrCmd_02C 3
    SetVar 0x8004, 19
    ScrCmd_014 0x7D9
    ScrCmd_02C 4
    ScrCmd_034
    ScrCmd_003 15, 0x800C
    ApplyMovement 0xFF, _0570
    WaitMovement
    ApplyMovement 1, _0564
    WaitMovement
    ScrCmd_049 0x603
    ScrCmd_065 1
    ScrCmd_04B 0x603
    SetVar 0x40C6, 1
    ScrCmd_061
    End

    .balign 4, 0
_0548:
    MoveAction_04B
    MoveAction_03F
    MoveAction_00D 3
    EndMovement

    .balign 4, 0
_0558:
    MoveAction_04B
    MoveAction_03F
    EndMovement

    .balign 4, 0
_0564:
    MoveAction_00D
    MoveAction_021
    EndMovement

    .balign 4, 0
_0570:
    MoveAction_00F
    MoveAction_022
    EndMovement

_057C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CompareVar 0x400A, 1
    GoToIf 1, _062C
    CompareVar 0x400A, 2
    GoToIf 1, _063C
    ScrCmd_134 21, 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _0657
    ScrCmd_02C 5
    ScrCmd_02C 6
    ScrCmd_134 20, 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _05FB
    ScrCmd_02C 10
    ScrCmd_1C0 0x800C, 143
    CompareVar 0x800C, 0
    GoToIf 1, _064C
    ScrCmd_02C 11
    SetVar 0x8004, 20
    ScrCmd_014 0x7D9
    ScrCmd_031
    SetVar 0x400A, 1
    ScrCmd_034
    ScrCmd_061
    End

_05FB:
    ScrCmd_02C 13
    ScrCmd_1C0 0x800C, 0x160
    CompareVar 0x800C, 0
    GoToIf 1, _064C
    ScrCmd_02C 14
    SetVar 0x8004, 21
    ScrCmd_014 0x7D9
    ScrCmd_031
    SetVar 0x400A, 2
    ScrCmd_034
    ScrCmd_061
    End

_062C:
    ScrCmd_0D7 0, 20
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_063C:
    ScrCmd_0D7 0, 21
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_064C:
    ScrCmd_02C 19
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0657:
    ScrCmd_02C 20
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0662:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CompareVar 0x4009, 1
    GoToIf 1, _06CF
    ScrCmd_26E 0x800C
    CompareVar 0x800C, 4
    GoToIf 1, _06DA
    CompareVar 0x800C, 5
    GoToIf 1, _0706
    CompareVar 0x800C, 1
    GoToIf 1, _0732
    CompareVar 0x800C, 2
    GoToIf 1, _0756
    CompareVar 0x800C, 3
    GoToIf 1, _077A
    GoTo _06C4
    End

_06C4:
    ScrCmd_02C 66
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_06CF:
    ScrCmd_02C 72
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_06DA:
    SetVar 0x8004, 97
    SetVar 0x8005, 1
    ScrCmd_1D3 0x8004, 0x8005, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _06C4
    ScrCmd_02C 67
    GoTo _079E
    End

_0706:
    SetVar 0x8004, 98
    SetVar 0x8005, 1
    ScrCmd_1D3 0x8004, 0x8005, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _06C4
    ScrCmd_02C 68
    GoTo _079E
    End

_0732:
    SetVar 0x8004, 14
    ScrCmd_1D6 0x8004, 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _06C4
    ScrCmd_02C 69
    GoTo _07AE
    End

_0756:
    SetVar 0x8004, 15
    ScrCmd_1D6 0x8004, 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _06C4
    ScrCmd_02C 70
    GoTo _07AE
    End

_077A:
    SetVar 0x8004, 16
    ScrCmd_1D6 0x8004, 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _06C4
    ScrCmd_02C 71
    GoTo _07AE
    End

_079E:
    ScrCmd_014 0x7DF
    SetVar 0x4009, 1
    ScrCmd_034
    ScrCmd_061
    End

_07AE:
    ScrCmd_014 0x7F4
    SetVar 0x4009, 1
    ScrCmd_034
    ScrCmd_061
    End

_07BE:
    ScrCmd_256 3, 0x800C
    CompareVar 0x800C, 0xBB8
    CallIf 0, _07FA
    CompareVar 0x800C, 0xCE4
    CallIf 0, _0870
    CompareVar 0x800C, 0xDAC
    CallIf 0, _08BF
    CompareVar 0x800C, 0x2710
    CallIf 0, _0928
    Return

_07FA:
    ScrCmd_1B7 0x8006, 8
    CompareVar 0x8006, 0
    CallIf 1, _09B6
    CompareVar 0x8006, 1
    CallIf 1, _09BE
    CompareVar 0x8006, 2
    CallIf 1, _09C6
    CompareVar 0x8006, 3
    CallIf 1, _09CE
    CompareVar 0x8006, 4
    CallIf 1, _09D6
    CompareVar 0x8006, 5
    CallIf 1, _09DE
    CompareVar 0x8006, 6
    CallIf 1, _09E6
    CompareVar 0x8006, 7
    CallIf 1, _09EE
    Call _0984
    Return

_0870:
    ScrCmd_1B7 0x8006, 5
    CompareVar 0x8006, 0
    CallIf 1, _09F6
    CompareVar 0x8006, 1
    CallIf 1, _09FE
    CompareVar 0x8006, 2
    CallIf 1, _0A06
    CompareVar 0x8006, 3
    CallIf 1, _0A0E
    CompareVar 0x8006, 4
    CallIf 1, _0A16
    Call _0984
    Return

_08BF:
    ScrCmd_1B7 0x8006, 7
    CompareVar 0x8006, 0
    CallIf 1, _0A1E
    CompareVar 0x8006, 1
    CallIf 1, _0A26
    CompareVar 0x8006, 2
    CallIf 1, _0A2E
    CompareVar 0x8006, 3
    CallIf 1, _0A36
    CompareVar 0x8006, 4
    CallIf 1, _0A3E
    CompareVar 0x8006, 5
    CallIf 1, _0A46
    CompareVar 0x8006, 6
    CallIf 1, _0A4E
    Call _0984
    Return

_0928:
    ScrCmd_1B7 0x8006, 6
    CompareVar 0x8006, 0
    CallIf 1, _0A56
    CompareVar 0x8006, 1
    CallIf 1, _0A5E
    CompareVar 0x8006, 2
    CallIf 1, _0A66
    CompareVar 0x8006, 3
    CallIf 1, _0A6E
    CompareVar 0x8006, 4
    CallIf 1, _0A76
    CompareVar 0x8006, 5
    CallIf 1, _0A7E
    Call _0984
    Return

_0984:
    ScrCmd_07D 0x8006, 1, 0x8007
    CompareVar 0x8007, 0
    CallIf 5, _09A1
    SetVar 0x800C, 0x2710
    Return

_09A1:
    ScrCmd_02C 45
    SetVar 0x8004, 0x8006
    SetVar 0x8005, 1
    ScrCmd_014 0x7FC
    Return

_09B6:
    SetVar 0x8006, 149
    Return

_09BE:
    SetVar 0x8006, 150
    Return

_09C6:
    SetVar 0x8006, 151
    Return

_09CE:
    SetVar 0x8006, 152
    Return

_09D6:
    SetVar 0x8006, 153
    Return

_09DE:
    SetVar 0x8006, 154
    Return

_09E6:
    SetVar 0x8006, 155
    Return

_09EE:
    SetVar 0x8006, 156
    Return

_09F6:
    SetVar 0x8006, 159
    Return

_09FE:
    SetVar 0x8006, 160
    Return

_0A06:
    SetVar 0x8006, 161
    Return

_0A0E:
    SetVar 0x8006, 162
    Return

_0A16:
    SetVar 0x8006, 163
    Return

_0A1E:
    SetVar 0x8006, 164
    Return

_0A26:
    SetVar 0x8006, 165
    Return

_0A2E:
    SetVar 0x8006, 166
    Return

_0A36:
    SetVar 0x8006, 167
    Return

_0A3E:
    SetVar 0x8006, 168
    Return

_0A46:
    SetVar 0x8006, 157
    Return

_0A4E:
    SetVar 0x8006, 158
    Return

_0A56:
    SetVar 0x8006, 169
    Return

_0A5E:
    SetVar 0x8006, 170
    Return

_0A66:
    SetVar 0x8006, 171
    Return

_0A6E:
    SetVar 0x8006, 172
    Return

_0A76:
    SetVar 0x8006, 173
    Return

_0A7E:
    SetVar 0x8006, 174
    Return

    .byte 0
    .byte 0
