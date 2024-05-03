    .include "macros/scrcmd.inc"

    .data

    .long _001A-.-4
    .long _002D-.-4
    .long _0044-.-4
    .long _005B-.-4
    .long _0070-.-4
    .long _0085-.-4
    .short 0xFD13

_001A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_002D:
    ScrCmd_036 3, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_0044:
    ScrCmd_036 4, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_005B:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 5, 0x800C
    ScrCmd_014 0x7D0
    End

_0070:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 6, 0x800C
    ScrCmd_014 0x7D0
    End

_0085:
    ScrCmd_060
    ScrCmd_05E 5, _0268
    ScrCmd_05F
    ScrCmd_014 0x7FA
    ScrCmd_069 0x8004, 0x8005
    CompareVarToValue 0x8005, 0x2F5
    GoToIf 1, _00D1
    CompareVarToValue 0x8005, 0x2F6
    GoToIf 1, _00E1
    CompareVarToValue 0x8005, 0x2F7
    GoToIf 1, _00F1
    CompareVarToValue 0x8005, 0x2F8
    GoToIf 1, _0101
    End

_00D1:
    ScrCmd_05E 5, _0230
    ScrCmd_05F
    GoTo _0111

_00E1:
    ScrCmd_05E 5, _0238
    ScrCmd_05F
    GoTo _0111

_00F1:
    ScrCmd_05E 5, _0248
    ScrCmd_05F
    GoTo _0111

_0101:
    ScrCmd_05E 5, _0258
    ScrCmd_05F
    GoTo _0111

_0111:
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_0DE 0x800C
    CompareVarToValue 0x800C, 0x183
    GoToIf 1, _014C
    CompareVarToValue 0x800C, 0x186
    GoToIf 1, _0158
    GoTo _0140

_0140:
    ScrCmd_0E5 247, 0
    GoTo _0164

_014C:
    ScrCmd_0E5 248, 0
    GoTo _0164

_0158:
    ScrCmd_0E5 249, 0
    GoTo _0164

_0164:
    ScrCmd_0EC 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0207
    ScrCmd_0CE 0
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    CompareVarToValue 0x8005, 0x2F5
    GoToIf 1, _01B9
    CompareVarToValue 0x8005, 0x2F6
    GoToIf 1, _01C9
    CompareVarToValue 0x8005, 0x2F7
    GoToIf 1, _01D9
    CompareVarToValue 0x8005, 0x2F8
    GoToIf 1, _01E9
    End

_01B9:
    ScrCmd_05E 5, _0210
    ScrCmd_05F
    GoTo _01F9

_01C9:
    ScrCmd_05E 5, _0218
    ScrCmd_05F
    GoTo _01F9

_01D9:
    ScrCmd_05E 5, _0220
    ScrCmd_05F
    GoTo _01F9

_01E9:
    ScrCmd_05E 5, _0228
    ScrCmd_05F
    GoTo _01F9

_01F9:
    ScrCmd_065 5
    SetVar 0x4088, 1
    ScrCmd_061
    End

_0207:
    ScrCmd_0EB
    ScrCmd_061
    End

    .balign 4, 0
_0210:
    MoveAction_013 10
    EndMovement

    .balign 4, 0
_0218:
    MoveAction_013 10
    EndMovement

    .balign 4, 0
_0220:
    MoveAction_013 10
    EndMovement

    .balign 4, 0
_0228:
    MoveAction_013 10
    EndMovement

    .balign 4, 0
_0230:
    MoveAction_012 4
    EndMovement

    .balign 4, 0
_0238:
    MoveAction_012 2
    MoveAction_011
    MoveAction_012 2
    EndMovement

    .balign 4, 0
_0248:
    MoveAction_012 2
    MoveAction_011 2
    MoveAction_012 2
    EndMovement

    .balign 4, 0
_0258:
    MoveAction_012 2
    MoveAction_011 3
    MoveAction_012 2
    EndMovement

    .balign 4, 0
_0268:
    MoveAction_03F
    MoveAction_04B
    MoveAction_03F
    EndMovement
