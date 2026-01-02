# include "macros/frscrcmd.inc"

    .data

    .long _0142 - 4
    .short 0xFD13

    .balign 4, 0
_0008:
    .short 0xEEEE
    .byte 0x00
    .short 0x800F
    .byte 0x01
    .short 0x800B
    .byte 0x01
    .short 0x800C
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0018:
    .short 0xEEEE
    .byte 0x00
    .short 0xEEEF
    .byte 0x00
    .short 0x800F
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0024:
    .short 0x0000
    .short 0xEEEE
    .byte 0x01
    .short 0x0088
    .short 0x0058
    .byte 0x00
    .byte 0x00
    .short 0x0001
    .short 0x800F
    .byte 0x01
    .short 0x0038
    .short 0x0020
    .byte 0x00
    .byte 0x01
    .short 0x0002
    .short 0x800F
    .byte 0x01
    .short 0x00E8
    .short 0x0020
    .byte 0x00
    .byte 0x01
    .short 0x0003
    .short 0x800B
    .byte 0x01
    .short 0x0038
    .short 0x0020
    .byte 0x00
    .byte 0x01
    .short 0x0004
    .short 0x800C
    .byte 0x01
    .short 0x00E8
    .short 0x0020
    .byte 0x00
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0060:
    .short 0x0000
    .short 0xEEEE
    .byte 0x01
    .short 0x0088
    .short 0x0058
    .byte 0x00
    .byte 0x00
    .short 0x0001
    .short 0x800F
    .byte 0x01
    .short 0x0038
    .short 0x0020
    .byte 0x00
    .byte 0x01
    .short 0x0002
    .short 0x800F
    .byte 0x01
    .short 0x00E8
    .short 0x0020
    .byte 0x00
    .byte 0x01
    .short 0x0005
    .short 0xEEEF
    .byte 0x01
    .short 0x0038
    .short 0x0020
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .short 0x0006
    .short 0xEEEF
    .byte 0x01
    .short 0x00E8
    .short 0x0020
    .byte 0x00
    .byte 0x00
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_009C:
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_00A0:
    .short 0x0001
    .short 0x0048
    .short 0x0030
    .short 0x0001
    .byte 0x00
    .byte 0x00
    .short 0x0001
    .short 0x00D8
    .short 0x0030
    .short 0x0001
    .byte 0x00
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_00B8:
    .short 0x0027
    .short 0x0001
    .short 0x0005
    .short 0x0003
    .short 0x0000
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_00C8:
    .short 0x0027
    .short 0x0001
    .short 0x0005
    .short 0x0002
    .short 0xFD13

    .balign 4, 0
_00D4:
    .short 0x0005
    .short 0x0001
    .short 0x0007
    .short 0x0005
    .short 0xFD13

    .balign 4, 0
_00E0:
    .short 0x0005
    .short 0x0001
    .short 0x0006
    .short 0x0005
    .short 0xFD13

    .balign 4, 0
_00EC:
    .short 0x0004
    .short 0x0002
    .short 0x0028
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_00F8:
    .short 0x0007
    .short 0x0005
    .short 0x0004
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0003
    .short 0x0001
    .short 0x0022
    .short 0x0001
    .short 0x0000
    .short 0x0001
    .short 0x0022
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0118:
    .short 0x0006
    .short 0x0005
    .short 0x0004
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0002
    .short 0x0001
    .short 0x0022
    .short 0x0001
    .short 0x0000
    .short 0x0001
    .short 0x0022
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0138:
    .short 0x0004
    .short 0x0001
    .short 0x0028
    .short 0x0001
    .short 0xFD13

_0142:
    FrontierScrCmd_3E 0x40DD, 0x8001
    FrontierScrCmd_0C _0278
    FrontierScrCmd_0C _0344
    FrontierScrCmd_06 0x800F, 232
    FrontierScrCmd_55 0x608
    FrontierScrCmd_2A _009C
    FrontierScrCmd_2C _00A0
    FrontierScrCmd_2F 1
    FrontierScrCmd_84 43, 0, 0x8008
    FrontierScrCmd_20 0x8008, 3
    FrontierScrCmd_0B 1, _01B0
    FrontierScrCmd_20 0x8008, 6
    FrontierScrCmd_0B 1, _01B0
    FrontierScrCmd_06 0x8002, 3
    FrontierScrCmd_06 0x8003, 4
    FrontierScrCmd_22 _0008
    FrontierScrCmd_24 _0024
    FrontierScrCmd_0A _01D0
    FrontierScrCmd_01

_01B0:
    FrontierScrCmd_06 0x8002, 5
    FrontierScrCmd_06 0x8003, 6
    FrontierScrCmd_22 _0018
    FrontierScrCmd_24 _0060
    FrontierScrCmd_0A _01D0
    FrontierScrCmd_01

_01D0:
    FrontierScrCmd_13 6, 1, 1, 0
    FrontierScrCmd_14
    FrontierScrCmd_0C _02BE
    FrontierScrCmd_0C _02FC
    FrontierScrCmd_0C _0320
    FrontierScrCmd_13 6, 1, 0, 0
    FrontierScrCmd_14
    FrontierScrCmd_2D 0
    FrontierScrCmd_2D 1
    FrontierScrCmd_2B 1
    FrontierScrCmd_84 43, 0, 0x8008
    FrontierScrCmd_20 0x8008, 3
    FrontierScrCmd_0B 1, _0250
    FrontierScrCmd_20 0x8008, 6
    FrontierScrCmd_0B 1, _0250
    FrontierScrCmd_25 0
    FrontierScrCmd_25 1
    FrontierScrCmd_25 2
    FrontierScrCmd_25 3
    FrontierScrCmd_25 4
    FrontierScrCmd_23 0x800F
    FrontierScrCmd_23 0x800B
    FrontierScrCmd_23 0x800C
    FrontierScrCmd_0A _0270
    FrontierScrCmd_01

_0250:
    FrontierScrCmd_25 0
    FrontierScrCmd_25 1
    FrontierScrCmd_25 2
    FrontierScrCmd_25 5
    FrontierScrCmd_25 6
    FrontierScrCmd_23 0x800F
    FrontierScrCmd_0A _0270
    FrontierScrCmd_01

_0270:
    FrontierScrCmd_04 8, 0
    FrontierScrCmd_01

_0278:
    FrontierScrCmd_20 0x8001, 0
    FrontierScrCmd_0B 1, _02AA
    FrontierScrCmd_20 0x8000, 1
    FrontierScrCmd_0B 1, _02AC
    FrontierScrCmd_84 55, 0, 0x800B
    FrontierScrCmd_84 55, 1, 0x800C
    FrontierScrCmd_0A _02AA
    FrontierScrCmd_01

_02AA:
    FrontierScrCmd_0D

_02AC:
    FrontierScrCmd_84 55, 0, 0x800B
    FrontierScrCmd_84 55, 1, 0x800C
    FrontierScrCmd_0D

_02BE:
    FrontierScrCmd_31 0, 0
    FrontierScrCmd_31 1, 0
    FrontierScrCmd_33 0
    FrontierScrCmd_32 0
    FrontierScrCmd_32 1
    FrontierScrCmd_28 1, _00B8
    FrontierScrCmd_28 2, _00B8
    FrontierScrCmd_29
    FrontierScrCmd_28 0x8002, _00C8
    FrontierScrCmd_28 0x8003, _00C8
    FrontierScrCmd_29
    FrontierScrCmd_0D

_02FC:
    FrontierScrCmd_28 1, _00F8
    FrontierScrCmd_28 0x8002, _00D4
    FrontierScrCmd_28 2, _0118
    FrontierScrCmd_28 0x8003, _00E0
    FrontierScrCmd_29
    FrontierScrCmd_0D

_0320:
    FrontierScrCmd_28 1, _0138
    FrontierScrCmd_28 2, _0138
    FrontierScrCmd_28 0x8002, _00EC
    FrontierScrCmd_28 0x8003, _00EC
    FrontierScrCmd_29
    FrontierScrCmd_0D

_0344:
    FrontierScrCmd_20 0x8001, 0
    FrontierScrCmd_0E 5, _0353
    FrontierScrCmd_0D

_0353:
    FrontierScrCmd_0D

    .balign 4, 0
