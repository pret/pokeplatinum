    .include "macros/scrcmd.inc"

    .data

    .long _000E-.-4
    .long _0139-.-4
    .long _01EF-.-4
    .short 0xFD13

_000E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _0032
    GoTo _00B3
    End

_0032:
    ScrCmd_02C 1
    ScrCmd_030
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_191
    ScrCmd_193 0x800C
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    CompareVar 0x800C, 0xFF
    GoToIf 1, _00B3
    SetVar 0x8005, 0x800C
    ScrCmd_198 0x8005, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _00BE
    ScrCmd_199 0x8005, 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _00C9
    ScrCmd_0D6 0, 0x8005
    ScrCmd_02C 2
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _00D9
    GoTo _00B3
    End

_00B3:
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00BE:
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00C9:
    ScrCmd_0D6 0, 0x8005
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00D9:
    ScrCmd_02C 3
    ScrCmd_030
    ScrCmd_034
    SetVar 0x800C, 0
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BB 0x8005, 0x800C
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    CompareVar 0x800C, 1
    GoToIf 1, _0129
    ScrCmd_2B8 0x8005
    ScrCmd_1E5 49
    ScrCmd_0D6 0, 0x8005
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0129:
    ScrCmd_0D6 0, 0x8005
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0139:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 134
    GoToIf 1, _01E4
    ScrCmd_02C 9
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _0168
    GoTo _01D9
    End

_0168:
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_2A5
    ScrCmd_193 0x800C
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    CompareVar 0x800C, 0xFF
    GoToIf 1, _01D9
    ScrCmd_226 1
    SetVar 0x8004, 0x800C
    ScrCmd_198 0x8004, 0x8005
    ScrCmd_228 0x800C
    CompareVar 0x8005, 0x800C
    GoToIf 5, _01CC
    ScrCmd_229 0x8004
    ScrCmd_22A
    SetFlag 134
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01CC:
    ScrCmd_22A
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01D9:
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01E4:
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01EF:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_1B6 0x800C
    CompareVar 0x800C, 4
    GoToIf 1, _021B
    GoTo _0210
    End

_0210:
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_021B:
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
