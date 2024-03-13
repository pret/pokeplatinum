    .include "macros/scrcmd.inc"

    .data

    .long _000E-.-4
    .long _0010-.-4
    .long _0025-.-4
    .short 0xFD13

_000E:
    ScrCmd_002

_0010:
    ScrCmd_011 0x40DC, 0
    ScrCmd_01D 5, _001F
    ScrCmd_002

_001F:
    ScrCmd_1B2 0xFF
    ScrCmd_01B

_0025:
    ScrCmd_060
    ScrCmd_01A _008E
    ScrCmd_1B7 0x800C, 4
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _00F0
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _010A
    ScrCmd_011 0x8008, 3
    ScrCmd_01C 1, _0124
    ScrCmd_016 _00D6

_0066:
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x14A, 0, 7, 6, 0
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    ScrCmd_002

_008E:
    ScrCmd_168 0, 0, 2, 2, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ScrCmd_05E 0, _0140
    ScrCmd_05F
    ScrCmd_1B1 0xFF
    ScrCmd_05E 0xFF, _014C
    ScrCmd_05F
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    ScrCmd_01B

    .byte 94
    .byte 0
    .byte 0
    .byte 0
    .byte 138
    .byte 0
    .byte 0
    .byte 0
    .byte 94
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 146
    .byte 0
    .byte 0
    .byte 0
    .byte 95
    .byte 0
    .byte 27
    .byte 0

_00D6:
    ScrCmd_05E 0, _0178
    ScrCmd_05E 0xFF, _0188
    ScrCmd_05F
    ScrCmd_016 _0066
    ScrCmd_002

_00F0:
    ScrCmd_05E 0, _019C
    ScrCmd_05E 0xFF, _01AC
    ScrCmd_05F
    ScrCmd_016 _0066
    ScrCmd_002

_010A:
    ScrCmd_05E 0, _01C0
    ScrCmd_05E 0xFF, _01D0
    ScrCmd_05F
    ScrCmd_016 _0066
    ScrCmd_002

_0124:
    ScrCmd_05E 0, _01E4
    ScrCmd_05E 0xFF, _01F4
    ScrCmd_05F
    ScrCmd_016 _0066

    .byte 2
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0140:
    .short 13, 3
    .short 0, 1
    .short 0xFE, 0x00

    .balign 4, 0
_014C:
    .short 13, 2
    .short 0xFE, 0x00

    .byte 0
    .byte 0
    .byte 1
    .byte 0
    .byte 12
    .byte 0
    .byte 2
    .byte 0
    .byte 69
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 15
    .byte 0
    .byte 1
    .byte 0
    .byte 0
    .byte 0
    .byte 1
    .byte 0
    .byte 20
    .byte 0
    .byte 1
    .byte 0
    .byte 69
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0178:
    .short 15, 4
    .short 12, 2
    .short 69, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0188:
    .short 13, 1
    .short 15, 4
    .short 12, 2
    .short 69, 1
    .short 0xFE, 0x00

    .balign 4, 0
_019C:
    .short 15, 8
    .short 12, 2
    .short 69, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01AC:
    .short 13, 1
    .short 15, 8
    .short 12, 2
    .short 69, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01C0:
    .short 15, 12
    .short 12, 2
    .short 69, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01D0:
    .short 13, 1
    .short 15, 12
    .short 12, 2
    .short 69, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01E4:
    .short 15, 16
    .short 12, 2
    .short 69, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01F4:
    .short 13, 1
    .short 15, 16
    .short 12, 2
    .short 69, 1
    .short 0xFE, 0x00
