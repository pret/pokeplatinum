    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _0042-.-4
    .long _0077-.-4
    .long _00D3-.-4
    .short 0xFD13

_0012:
    SetFlag 0x9E1
    CheckFlag 0x15E
    ScrCmd_01C 0, _002E
    CheckFlag 0x15E
    ScrCmd_01C 1, _0038
    End

_002E:
    ScrCmd_18A 1, 10, 29
    End

_0038:
    ScrCmd_18A 0, 10, 29
    End

_0042:
    SetFlag 0x9E1
    CheckFlag 142
    ScrCmd_01D 1, _0069
    CheckFlag 0x15E
    ScrCmd_01C 0, _002E
    CheckFlag 0x15E
    ScrCmd_01C 1, _0038
    End

_0069:
    SetFlag 0x1E0
    ScrCmd_065 0
    ClearFlag 142
    Return

_0077:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_04C 0x1E2, 0
    ScrCmd_02C 3
    ScrCmd_034
    SetFlag 142
    ScrCmd_2BD 0x1E2, 50
    ClearFlag 142
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00CD
    ScrCmd_2BC 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _00C2
    SetFlag 0x126
    ScrCmd_061
    End

_00C2:
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00CD:
    ScrCmd_0EB
    ScrCmd_061
    End

_00D3:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_068
    ScrCmd_05E 1, _013C
    ScrCmd_05F
    ScrCmd_003 30, 0x800C
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_0E5 0x198, 0
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0144
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_065 1
    SetFlag 0x13E
    SetFlag 0x984
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    End

    .balign 4, 0
_013C:
    MoveAction_04B
    EndMovement

_0144:
    ScrCmd_0EB
    ScrCmd_061
    End

    .byte 0
    .byte 0
