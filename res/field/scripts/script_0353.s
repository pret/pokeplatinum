    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _0010-.-4
    .short 0xFD13

_000A:
    ScrCmd_01E 0x9DF
    End

_0010:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_208 0x1E1, 0
    ScrCmd_030
    ScrCmd_209
    ScrCmd_04C 0x1E1, 0
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_01E 0x1DF
    ScrCmd_065 0
    ScrCmd_003 8, 0x800C
    ScrCmd_01F 0x1DF
    ScrCmd_064 0
    ScrCmd_003 8, 0x800C
    ScrCmd_01E 0x1DF
    ScrCmd_065 0
    ScrCmd_003 8, 0x800C
    ScrCmd_01F 0x1DF
    ScrCmd_064 0
    ScrCmd_003 8, 0x800C
    ScrCmd_01E 0x1DF
    ScrCmd_065 0
    ScrCmd_003 8, 0x800C
    ScrCmd_01F 0x1DF
    ScrCmd_064 0
    ScrCmd_003 8, 0x800C
    ScrCmd_01E 0x1DF
    ScrCmd_065 0
    ScrCmd_21C 0
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_011 0x4059, 3
    ScrCmd_01C 1, _0184
    ScrCmd_003 30, 0x800C
    ScrCmd_1BD 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00DE
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _00EE
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 1, _00FE
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _010E
    End

_00DE:
    ScrCmd_186 1, 12, 22
    GoTo _011E
    End

_00EE:
    ScrCmd_186 1, 12, 20
    GoTo _011E
    End

_00FE:
    ScrCmd_186 1, 13, 21
    GoTo _011E
    End

_010E:
    ScrCmd_186 1, 11, 21
    GoTo _011E
    End

_011E:
    ScrCmd_01F 0x296
    ScrCmd_064 1
    ScrCmd_05E 1, _0190
    ScrCmd_05F
    ScrCmd_05E 0xFF, _01B0
    ScrCmd_05F
    ScrCmd_0CD 0
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_05E 1, _0198
    ScrCmd_05F
    ScrCmd_0CD 0
    ScrCmd_02C 3
    ScrCmd_134 12, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01D 1, _017F
    ScrCmd_0CD 0
    ScrCmd_02C 5
    ScrCmd_034
    ScrCmd_05E 1, _01A8
    ScrCmd_05F
    ScrCmd_065 1
    ScrCmd_061
    End

_017F:
    ScrCmd_02C 4
    Return

_0184:
    ScrCmd_028 0x4059, 0
    ScrCmd_061
    End

    .balign 4, 0
_0190:
    MoveAction_00C 7
    EndMovement

    .balign 4, 0
_0198:
    MoveAction_021
    MoveAction_03F 2
    MoveAction_020
    EndMovement

    .balign 4, 0
_01A8:
    MoveAction_00D 9
    EndMovement

    .balign 4, 0
_01B0:
    MoveAction_001
    EndMovement
