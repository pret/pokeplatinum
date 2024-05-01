    .include "macros/scrcmd.inc"

    .data

    .long _001A-.-4
    .long _00BE-.-4
    .long _00E7-.-4
    .long _018F-.-4
    .long _0225-.-4
    .long _0289-.-4
    .short 0xFD13

_001A:
    ScrCmd_14F
    ScrCmd_186 1, 72, 104
    ScrCmd_186 2, 0x1A8, 87
    ScrCmd_186 3, 200, 185
    ScrCmd_186 4, 0x14F, 0x108
    ScrCmd_186 8, 175, 0x117
    ScrCmd_186 9, 0x1A8, 0x1B7
    ScrCmd_186 10, 87, 0x1C8
    ScrCmd_186 11, 0x137, 0x166
    ScrCmd_186 0, 232, 87
    ScrCmd_186 5, 0x148, 151
    ScrCmd_186 6, 232, 215
    ScrCmd_186 7, 232, 0x12A
    ScrCmd_186 12, 0x117, 0x148
    ScrCmd_186 13, 0x117, 0x1C8
    ScrCmd_186 14, 183, 0x188
    ScrCmd_186 15, 0x117, 245
    ScrCmd_186 17, 40, 0x1D7
    ScrCmd_186 18, 0x1D7, 72
    ScrCmd_186 19, 0x1D7, 0x1D7
    ScrCmd_186 20, 40, 72
    End

_00BE:
    ScrCmd_011 0x40D0, 0
    ScrCmd_01C 1, _00CD
    End

_00CD:
    ScrCmd_069 0x4000, 0x4001
    ScrCmd_026 0x4000, 1
    ScrCmd_187 16, 0x4000, 1, 0x4001, 1
    End

_00E7:
    ScrCmd_19F 0
    GoTo _00F3
    End

_00F3:
    ScrCmd_19E 1, 0x800C
    ScrCmd_029 0x8004, 0x800C
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0xFFFB
    ScrCmd_01C 1, _0141
    ScrCmd_011 0x8008, 0xFFFC
    ScrCmd_01C 1, _014D
    ScrCmd_011 0x8008, 0xFFFD
    ScrCmd_01C 1, _0159
    ScrCmd_011 0x8008, 0xFFFF
    ScrCmd_01C 1, _0165
    GoTo _017F
    End

_0141:
    ScrCmd_19F 5
    GoTo _0171
    End

_014D:
    ScrCmd_19F 3
    GoTo _0171
    End

_0159:
    ScrCmd_19F 4
    GoTo _0171
    End

_0165:
    ScrCmd_19F 9
    GoTo _0189
    End

_0171:
    ScrCmd_030
    ScrCmd_19F 8
    GoTo _00F3
    End

_017F:
    ScrCmd_030
    GoTo _0171
    End

_0189:
    ScrCmd_030
    ScrCmd_1A0
    End

_018F:
    ScrCmd_19F 0
    GoTo _019B
    End

_019B:
    ScrCmd_19E 0, 0x800C
    ScrCmd_029 0x8004, 0x800C
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0xFFFB
    ScrCmd_01C 1, _0201
    ScrCmd_011 0x8008, 0xFFFC
    ScrCmd_01C 1, _01E9
    ScrCmd_011 0x8008, 0xFFFD
    ScrCmd_01C 1, _01F5
    ScrCmd_011 0x8008, 0xFFFF
    ScrCmd_01C 1, _0165
    GoTo _020D
    End

_01E9:
    ScrCmd_19F 3
    GoTo _0217
    End

_01F5:
    ScrCmd_19F 4
    GoTo _0217
    End

_0201:
    ScrCmd_19F 5
    GoTo _0217
    End

_020D:
    ScrCmd_030
    GoTo _0217
    End

_0217:
    ScrCmd_030
    ScrCmd_19F 8
    GoTo _019B
    End

_0225:
    ScrCmd_19F 27
    GoTo _0231
    End

_0231:
    ScrCmd_19E 2, 0x800C
    ScrCmd_029 0x8004, 0x800C
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0xFFFC
    ScrCmd_01C 1, _0265
    ScrCmd_011 0x8008, 0xFFFF
    ScrCmd_01C 1, _0165
    GoTo _0271
    End

_0265:
    ScrCmd_19F 3
    GoTo _027B
    End

_0271:
    ScrCmd_030
    GoTo _027B
    End

_027B:
    ScrCmd_030
    ScrCmd_19F 8
    GoTo _0231
    End

_0289:
    ScrCmd_05E 16, _02D4
    ScrCmd_05F
    ScrCmd_152 3
    ScrCmd_19F 91
    ScrCmd_030
    ScrCmd_1A0
    ScrCmd_05E 16, _02E4
    ScrCmd_05F
    ScrCmd_049 0x630
    ScrCmd_05E 16, _02F0
    ScrCmd_05F
    ScrCmd_065 16
    ScrCmd_028 0x40D0, 1
    SetFlag 0x992
    End

    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_02D4:
    MoveAction_022
    MoveAction_04B
    MoveAction_03F
    EndMovement

    .balign 4, 0
_02E4:
    MoveAction_021
    MoveAction_03F 2
    EndMovement

    .balign 4, 0
_02F0:
    MoveAction_003
    MoveAction_03D
    MoveAction_000
    MoveAction_03D
    MoveAction_002
    MoveAction_03D
    MoveAction_001
    MoveAction_03D
    MoveAction_003
    MoveAction_03C
    MoveAction_000
    MoveAction_03C
    MoveAction_002
    MoveAction_03C
    MoveAction_001
    MoveAction_043
    MoveAction_03F 2
    EndMovement
