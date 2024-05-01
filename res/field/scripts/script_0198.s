    .include "macros/scrcmd.inc"

    .data

    .long _0006-.-4
    .short 0xFD13

_0006:
    ScrCmd_060
    ScrCmd_05E 0xFF, _0124
    ScrCmd_05F
    ScrCmd_05E 1, _0134
    ScrCmd_05F
    ScrCmd_28F 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01D 1, _0111
    ScrCmd_011 0x800C, 0
    ScrCmd_01D 5, _0119
    ScrCmd_034
    ScrCmd_05E 1, _0144
    ScrCmd_05E 0, _015C
    ScrCmd_05F
    ScrCmd_003 15, 0x800C
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0074
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0080
    End

_0074:
    ScrCmd_0CD 0
    ScrCmd_02C 4
    GoTo _008C

_0080:
    ScrCmd_0CD 0
    ScrCmd_02C 5
    GoTo _008C

_008C:
    ScrCmd_034
    ScrCmd_05E 0xFF, _012C
    ScrCmd_05E 1, _014C
    ScrCmd_05E 0, _0164
    ScrCmd_05F
    ScrCmd_02C 6
    ScrCmd_034
    ScrCmd_01E 0x982
    ScrCmd_22D 2, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01D 1, _010A
    ScrCmd_011 0x40F4, 0
    ScrCmd_01D 1, _0102
    ScrCmd_177 0x800C
    ScrCmd_25A 0x800C
    ScrCmd_0BC 6, 3, 0, 0
    ScrCmd_0BD
    ScrCmd_260 24
    Call _0174
    ScrCmd_0B0
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    End

_0102:
    ScrCmd_028 0x40F4, 1
    Return

_010A:
    ScrCmd_270 2, 1
    Return

_0111:
    ScrCmd_02C 0
    ScrCmd_02C 2
    Return

_0119:
    ScrCmd_02C 1
    ScrCmd_02C 3
    Return

    .balign 4, 0
_0124:
    MoveAction_00C 8
    EndMovement

    .balign 4, 0
_012C:
    MoveAction_00C 2
    EndMovement

    .balign 4, 0
_0134:
    MoveAction_020
    MoveAction_03F 2
    MoveAction_023
    EndMovement

    .balign 4, 0
_0144:
    MoveAction_021
    EndMovement

    .balign 4, 0
_014C:
    MoveAction_03F
    MoveAction_023
    MoveAction_020
    EndMovement

    .balign 4, 0
_015C:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0164:
    MoveAction_03F
    MoveAction_022
    MoveAction_020
    EndMovement

_0174:
    ScrCmd_01F 0x1D1
    ScrCmd_01F 0x98B
    ScrCmd_020 208
    ScrCmd_01D 0, _023C
    ScrCmd_020 209
    ScrCmd_01D 0, _0244
    ScrCmd_020 0x120
    ScrCmd_01D 0, _024C
    ScrCmd_020 0x11B
    ScrCmd_01D 0, _0263
    ScrCmd_020 0x126
    ScrCmd_01D 0, _027B
    ScrCmd_020 0x127
    ScrCmd_01D 0, _0281
    ScrCmd_020 0x121
    ScrCmd_01D 0, _0287
    ScrCmd_011 0x4059, 2
    ScrCmd_01D 1, _028D
    ScrCmd_011 0x4058, 2
    ScrCmd_01D 1, _0299
    ScrCmd_011 0x405E, 2
    ScrCmd_01D 1, _02A5
    ScrCmd_011 0x405F, 2
    ScrCmd_01D 1, _02AD
    ScrCmd_011 0x4060, 2
    ScrCmd_01D 1, _02B5
    ScrCmd_011 0x410F, 0
    ScrCmd_01D 1, _0234
    ScrCmd_01F 0x177
    ScrCmd_020 185
    ScrCmd_01D 0, _02BD
    ScrCmd_01F 0x186
    ScrCmd_01F 0x124
    ScrCmd_01E 0x2A0
    Return

_0234:
    ScrCmd_028 0x410F, 1
    Return

_023C:
    ScrCmd_028 0x40C4, 0
    Return

_0244:
    ScrCmd_028 0x40C5, 0
    Return

_024C:
    ScrCmd_020 0x125
    ScrCmd_01C 0, _0261
    ScrCmd_01F 0x1DD
    ScrCmd_028 0x409E, 1
_0261:
    Return

_0263:
    ScrCmd_22D 2, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0279
    ScrCmd_01F 0x243
_0279:
    Return

_027B:
    ScrCmd_01F 0x1E0
    Return

_0281:
    ScrCmd_01F 0x1E1
    Return

_0287:
    ScrCmd_01F 0x250
    Return

_028D:
    ScrCmd_01F 0x1DF
    ScrCmd_028 0x4059, 3
    Return

_0299:
    ScrCmd_01F 0x24F
    ScrCmd_028 0x4058, 3
    Return

_02A5:
    ScrCmd_028 0x405E, 3
    Return

_02AD:
    ScrCmd_028 0x405F, 3
    Return

_02B5:
    ScrCmd_028 0x4060, 3
    Return

_02BD:
    ScrCmd_01F 0x185
    Return

    .byte 0
