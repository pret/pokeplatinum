# include "macros/frscrcmd.inc"

    .data

    .long _03C2 - 4
    .short 0xFD13

    .balign 4, 0
_0008:
    .short 0xEEEE
    .byte 0x00
    .short 0x00D9
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0010:
    .short 0xEEEE
    .byte 0x00
    .short 0xEEEF
    .byte 0x00
    .short 0x00D9
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_001C:
    .short 0x800F
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0024:
    .short 0x0000
    .short 0xEEEE
    .byte 0x02
    .short 0x0110
    .short 0x0070
    .byte 0x00
    .byte 0x00
    .short 0x0003
    .short 0x00D9
    .byte 0x03
    .short 0x00D0
    .short 0x0070
    .byte 0x01
    .byte 0x01
    .short 0x0004
    .short 0x8007
    .byte 0x02
    .short 0x0110
    .short 0x0070
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0048:
    .short 0x0000
    .short 0xEEEE
    .byte 0x00
    .short 0x0110
    .short 0x0070
    .byte 0x00
    .byte 0x00
    .short 0x0001
    .short 0xEEEF
    .byte 0x02
    .short 0x0110
    .short 0x0070
    .byte 0x01
    .byte 0x00
    .byte 0x00
    .short 0x0002
    .short 0xEEEF
    .byte 0x02
    .short 0x0110
    .short 0x0080
    .byte 0x01
    .byte 0x00
    .byte 0x01
    .short 0x0003
    .short 0x00D9
    .byte 0x03
    .short 0x00D0
    .short 0x0070
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0078:
    .short 0x0007
    .short 0x800F
    .byte 0x01
    .short 0x0110
    .short 0x0060
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0088:
    .short 0x0000
    .short 0xEEEE
    .byte 0x02
    .short 0x00E0
    .short 0x0070
    .byte 0x00
    .byte 0x00
    .short 0x0003
    .short 0x00D9
    .byte 0x03
    .short 0x00D0
    .short 0x0070
    .byte 0x01
    .byte 0x01
    .short 0x0004
    .short 0x8007
    .byte 0x02
    .short 0x00E0
    .short 0x0070
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_00AC:
    .short 0x0000
    .short 0xEEEE
    .byte 0x02
    .short 0x00E0
    .short 0x0070
    .byte 0x00
    .byte 0x00
    .short 0x0001
    .short 0xEEEF
    .byte 0x02
    .short 0x00E0
    .short 0x0070
    .byte 0x01
    .byte 0x00
    .byte 0x00
    .short 0x0002
    .short 0xEEEF
    .byte 0x02
    .short 0x00E0
    .short 0x0080
    .byte 0x01
    .byte 0x00
    .byte 0x01
    .short 0x0003
    .short 0x00D9
    .byte 0x03
    .short 0x00D0
    .short 0x0070
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_00DC:
    .short 0xEEEE
    .byte 0x00
    .short 0x8007
    .byte 0x01
    .short 0x00DB
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_00E8:
    .short 0xEEEE
    .byte 0x00
    .short 0xEEEF
    .byte 0x00
    .short 0x8007
    .byte 0x01
    .short 0x00DB
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_00F8:
    .short 0x00D9
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0100:
    .short 0x0000
    .short 0xEEEE
    .byte 0x00
    .short 0x0078
    .short 0x0090
    .byte 0x00
    .byte 0x00
    .short 0x0004
    .short 0x8007
    .byte 0x00
    .short 0x0080
    .short 0x00E0
    .byte 0x01
    .byte 0x01
    .short 0x0005
    .short 0x00DB
    .byte 0x01
    .short 0x0080
    .short 0x0020
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0124:
    .short 0x0000
    .short 0xEEEE
    .byte 0x00
    .short 0x0078
    .short 0x0090
    .byte 0x00
    .byte 0x00
    .short 0x0001
    .short 0xEEEF
    .byte 0x00
    .short 0x0080
    .short 0x00E0
    .byte 0x01
    .byte 0x00
    .byte 0x00
    .short 0x0002
    .short 0xEEEF
    .byte 0x00
    .short 0x0080
    .short 0x00E0
    .byte 0x01
    .byte 0x00
    .byte 0x01
    .short 0x0005
    .short 0x00DB
    .byte 0x01
    .short 0x0080
    .short 0x0020
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0154:
    .short 0x800B
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_015C:
    .short 0x800C
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0164:
    .short 0x0062
    .short 0x800B
    .byte 0x01
    .short 0x0080
    .short 0x0060
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0174:
    .short 0x0062
    .short 0x800B
    .byte 0x01
    .short 0x0080
    .short 0x0060
    .byte 0x01
    .byte 0x01
    .short 0x0063
    .short 0x800C
    .byte 0x01
    .short 0x0080
    .short 0x0060
    .byte 0x00
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_018C:
    .short 0x0006
    .short 0x00D9
    .byte 0x01
    .short 0x0080
    .short 0x00D0
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_019C:
    .short 0xEEEE
    .byte 0x00
    .short 0x8007
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_01A4:
    .short 0xEEEE
    .byte 0x00
    .short 0xEEEF
    .byte 0x00
    .short 0x8007
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_01B0:
    .short 0x0000
    .short 0xEEEE
    .byte 0x00
    .short 0x0078
    .short 0x0070
    .byte 0x00
    .byte 0x00
    .short 0x0004
    .short 0x8007
    .byte 0x00
    .short 0x0030
    .short 0x00C0
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_01C8:
    .short 0x0000
    .short 0xEEEE
    .byte 0x00
    .short 0x0078
    .short 0x0070
    .byte 0x00
    .byte 0x00
    .short 0x0001
    .short 0xEEEF
    .byte 0x00
    .short 0x0030
    .short 0x00C0
    .byte 0x01
    .byte 0x00
    .byte 0x00
    .short 0x0002
    .short 0xEEEF
    .byte 0x00
    .short 0x0040
    .short 0x00C0
    .byte 0x01
    .byte 0x00
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_01F0:
    .short 0x0006
    .short 0x0003
    .short 0xFD13

    .balign 4, 0
_01F8:
    .short 0x0006
    .short 0x0003
    .short 0xFD13

    .balign 4, 0
_0200:
    .short 0x0023
    .short 0x0001
    .short 0x0012
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0005
    .short 0x0001
    .short 0x0007
    .short 0x0001
    .short 0x0013
    .short 0x0001
    .short 0x0028
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0228:
    .short 0x0023
    .short 0x0002
    .short 0x0004
    .short 0x0003
    .short 0x0028
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0238:
    .short 0x0023
    .short 0x0002
    .short 0x0004
    .short 0x0004
    .short 0x0028
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0248:
    .short 0x0023
    .short 0x0002
    .short 0x0006
    .short 0x0007
    .short 0x0004
    .short 0x0003
    .short 0x0028
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_025C:
    .short 0x0023
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0006
    .short 0x0008
    .short 0x0004
    .short 0x0003
    .short 0x0028
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0274:
    .short 0x0004
    .short 0x0001
    .short 0x0011
    .short 0x0001
    .short 0x0028
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0284:
    .short 0x0012
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_028C:
    .short 0x0004
    .short 0x0002
    .short 0xFD13

    .balign 4, 0
_0294:
    .short 0x0004
    .short 0x0003
    .short 0x0006
    .short 0x0002
    .short 0x0004
    .short 0x0002
    .short 0x0013
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_02A8:
    .short 0x0004
    .short 0x0004
    .short 0x0006
    .short 0x0002
    .short 0x0004
    .short 0x0002
    .short 0x0013
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_02BC:
    .short 0x0023
    .short 0x0001
    .short 0x0027
    .short 0x0001
    .short 0x0004
    .short 0x0004
    .short 0x0006
    .short 0x0002
    .short 0x0004
    .short 0x0001
    .short 0x0013
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_02D8:
    .short 0x0004
    .short 0x0004
    .short 0x0007
    .short 0x000B
    .short 0x0004
    .short 0x0004
    .short 0x0012
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_02EC:
    .short 0x0004
    .short 0x0005
    .short 0x0007
    .short 0x000B
    .short 0x0004
    .short 0x0003
    .short 0x0012
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0300:
    .short 0x0005
    .short 0x0001
    .short 0x0007
    .short 0x0002
    .short 0x0005
    .short 0x0002
    .short 0x0012
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0314:
    .short 0x0005
    .short 0x0001
    .short 0x0007
    .short 0x0002
    .short 0x0005
    .short 0x0002
    .short 0x0012
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0328:
    .short 0x0023
    .short 0x0001
    .short 0x0027
    .short 0x0001
    .short 0x0005
    .short 0x0001
    .short 0x0007
    .short 0x0002
    .short 0x0005
    .short 0x0001
    .short 0x0012
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0344:
    .short 0x0005
    .short 0x0001
    .short 0x0007
    .short 0x0002
    .short 0x0005
    .short 0x0002
    .short 0x0012
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0358:
    .short 0x0027
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0360:
    .short 0x0004
    .short 0x0002
    .short 0x0006
    .short 0x0002
    .short 0x0004
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0370:
    .short 0x0004
    .short 0x0002
    .short 0x0006
    .short 0x0002
    .short 0x0004
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0380:
    .short 0x0004
    .short 0x0001
    .short 0x0006
    .short 0x0002
    .short 0x0004
    .short 0x0001
    .short 0x0028
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0394:
    .short 0x0005
    .short 0x0002
    .short 0x0006
    .short 0x0002
    .short 0x0005
    .short 0x0005
    .short 0xFD13

    .balign 4, 0
_03A4:
    .short 0x0004
    .short 0x0004
    .short 0x0006
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_03B0:
    .short 0x0007
    .short 0x0001
    .short 0x0005
    .short 0x0006
    .short 0xFD13

    .balign 4, 0
_03BC:
    .short 0x0011
    .short 0x0001
    .short 0xFD13

_03C2:
    FrontierScrCmd_3E 0x40BD, 0x8001
    FrontierScrCmd_3E 0x4003, 0x8003
    FrontierScrCmd_3E 0x4002, 0x8004
    FrontierScrCmd_3E 0x4005, 0x8005
    FrontierScrCmd_3E 0x4006, 0x8006
    FrontierScrCmd_40 0x8007
    FrontierScrCmd_06 0x800E, 0
    FrontierScrCmd_20 0x8001, 2
    FrontierScrCmd_0B 1, _041E
    FrontierScrCmd_20 0x8001, 3
    FrontierScrCmd_0B 1, _041E
    FrontierScrCmd_06 0x800F, 231
    FrontierScrCmd_22 _0008
    FrontierScrCmd_24 _0024
    FrontierScrCmd_0A _043C
    FrontierScrCmd_01

_041E:
    FrontierScrCmd_4A 43
    FrontierScrCmd_06 0x800F, 232
    FrontierScrCmd_22 _0010
    FrontierScrCmd_24 _0048
    FrontierScrCmd_0A _043C
    FrontierScrCmd_01

_043C:
    FrontierScrCmd_22 _001C
    FrontierScrCmd_24 _0078
    FrontierScrCmd_13 6, 1, 1, 0
    FrontierScrCmd_14
    FrontierScrCmd_6C
    FrontierScrCmd_97 0x8003, 0x8001, 0x8004, 0x8005, 0x8006, 0x8008
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _0480
    FrontierScrCmd_0A _04F0
    FrontierScrCmd_01

_0480:
    FrontierScrCmd_0C _09A8
    FrontierScrCmd_0C _04C5
    FrontierScrCmd_36
    FrontierScrCmd_35 211
    FrontierScrCmd_36
    FrontierScrCmd_0A _04F0
    FrontierScrCmd_01

_049C:
    FrontierScrCmd_06 0x8002, 0
    FrontierScrCmd_A2 0x8002, 0, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _049C
    FrontierScrCmd_A3 0x8002
    FrontierScrCmd_36
    FrontierScrCmd_0A _04F0
    FrontierScrCmd_01

_04C5:
    FrontierScrCmd_0A _04CD
    FrontierScrCmd_01

_04CD:
    FrontierScrCmd_06 0x8002, 0
    FrontierScrCmd_A2 0x8002, 0, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _04CD
    FrontierScrCmd_A3 0x8002
    FrontierScrCmd_36
    FrontierScrCmd_0D

_04F0:
    FrontierScrCmd_98 0x8003
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _0510
    FrontierScrCmd_0A _058A
    FrontierScrCmd_01

_0510:
    FrontierScrCmd_36
    FrontierScrCmd_35 212
    FrontierScrCmd_36
    FrontierScrCmd_0A _0520
    FrontierScrCmd_01

_0520:
    FrontierScrCmd_06 0x8002, 1
    FrontierScrCmd_A2 0x8002, 0, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _0520
    FrontierScrCmd_A3 0x8002
    FrontierScrCmd_36
    FrontierScrCmd_36
    FrontierScrCmd_35 125
    FrontierScrCmd_36
    FrontierScrCmd_C9 1
    FrontierScrCmd_0A _0555
    FrontierScrCmd_01

_0555:
    FrontierScrCmd_06 0x8002, 6
    FrontierScrCmd_A2 0x8002, 0, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _0555
    FrontierScrCmd_A3 0x8002
    FrontierScrCmd_36
    FrontierScrCmd_36
    FrontierScrCmd_35 210
    FrontierScrCmd_36
    FrontierScrCmd_C9 0
    FrontierScrCmd_0A _058A
    FrontierScrCmd_01

_058A:
    FrontierScrCmd_06 0x8003, 0
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _05C6
    FrontierScrCmd_28 0, _01F0
    FrontierScrCmd_28 4, _01F0
    FrontierScrCmd_28 7, _0200
    FrontierScrCmd_29
    FrontierScrCmd_0A _05F0
    FrontierScrCmd_01

_05C6:
    FrontierScrCmd_28 0, _01F0
    FrontierScrCmd_28 1, _01F0
    FrontierScrCmd_28 2, _01F8
    FrontierScrCmd_28 7, _0200
    FrontierScrCmd_29
    FrontierScrCmd_0A _05F0
    FrontierScrCmd_01

_05F0:
    FrontierScrCmd_A0 23, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _0612
    FrontierScrCmd_06 0x8003, 1
    FrontierScrCmd_0A _1349
    FrontierScrCmd_01

_0612:
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0E 1, _0630
    FrontierScrCmd_9E
    FrontierScrCmd_0A _0679
    FrontierScrCmd_01

_0630:
    FrontierScrCmd_36
    FrontierScrCmd_35 213
    FrontierScrCmd_36
    FrontierScrCmd_0A _0640
    FrontierScrCmd_01

_0640:
    FrontierScrCmd_06 0x8002, 3
    FrontierScrCmd_A2 0x8002, 0, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _0640
    FrontierScrCmd_A3 0x8002
    FrontierScrCmd_36
    FrontierScrCmd_36
    FrontierScrCmd_35 214
    FrontierScrCmd_36
    FrontierScrCmd_A0 41, 0, 0, 0x8008
    FrontierScrCmd_A0 42, 0, 0, 0x8008
    FrontierScrCmd_0D

_0679:
    FrontierScrCmd_A0 39, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _0695
    FrontierScrCmd_0A _06A1
    FrontierScrCmd_01

_0695:
    FrontierScrCmd_11 0
    FrontierScrCmd_0A _06B0
    FrontierScrCmd_01

_06A1:
    FrontierScrCmd_7B 0
    FrontierScrCmd_11 1
    FrontierScrCmd_0A _06B0
    FrontierScrCmd_01

_06B0:
    FrontierScrCmd_A0 19, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 3
    FrontierScrCmd_0E 1, _06E4
    FrontierScrCmd_11 20
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _06EA
    FrontierScrCmd_0A _0706
    FrontierScrCmd_01

_06E4:
    FrontierScrCmd_11 29
    FrontierScrCmd_0D

_06EA:
    FrontierScrCmd_10 2
    FrontierScrCmd_0A _06F6
    FrontierScrCmd_01

_06F6:
    FrontierScrCmd_36
    FrontierScrCmd_35 120
    FrontierScrCmd_36
    FrontierScrCmd_0A _0706
    FrontierScrCmd_01

_0706:
    FrontierScrCmd_0F 21
    FrontierScrCmd_50
    FrontierScrCmd_0A _0714
    FrontierScrCmd_01

_0714:
    FrontierScrCmd_A0 19, 0, 0, 0x8006
    FrontierScrCmd_20 0x8006, 3
    FrontierScrCmd_0E 0, _07A2
    FrontierScrCmd_20 0x8006, 3
    FrontierScrCmd_0E 4, _07AC
    FrontierScrCmd_CA 1
    FrontierScrCmd_1C 49, 21, 1
    FrontierScrCmd_1C 50, 22, 2
    FrontierScrCmd_1C 51, 23, 4
    FrontierScrCmd_A0 19, 0, 0, 0x8006
    FrontierScrCmd_20 0x8006, 3
    FrontierScrCmd_0E 4, _07D7
    FrontierScrCmd_1D
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _0804
    FrontierScrCmd_20 0x8008, 2
    FrontierScrCmd_0B 1, _08B6
    FrontierScrCmd_20 0x8008, 4
    FrontierScrCmd_0B 1, _0964
    FrontierScrCmd_20 0x8008, 5
    FrontierScrCmd_0B 1, _0A1C
    FrontierScrCmd_0A _1974
    FrontierScrCmd_01

_07A2:
    FrontierScrCmd_1B 31, 11, 0, 0, 0x8008
    FrontierScrCmd_0D

_07AC:
    FrontierScrCmd_A0 40, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _07A2
    FrontierScrCmd_20 0x8008, 2
    FrontierScrCmd_0B 1, _07A2
    FrontierScrCmd_1B 31, 9, 0, 0, 0x8008
    FrontierScrCmd_0D

_07D7:
    FrontierScrCmd_A0 40, 0, 0, 0x800D
    FrontierScrCmd_20 0x800D, 1
    FrontierScrCmd_0B 1, _0802
    FrontierScrCmd_20 0x800D, 2
    FrontierScrCmd_0B 1, _0802
    FrontierScrCmd_1C 52, 24, 5
    FrontierScrCmd_0D

_0802:
    FrontierScrCmd_0D

_0804:
    FrontierScrCmd_A0 32, 1, 0, 0x8008
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _0827
    FrontierScrCmd_0A _0833
    FrontierScrCmd_01

_0827:
    FrontierScrCmd_10 2
    FrontierScrCmd_0A _1974
    FrontierScrCmd_01

_0833:
    FrontierScrCmd_A0 34, 0, 0, 0x8008
    FrontierScrCmd_A0 31, 0, 0, 0x8008
    FrontierScrCmd_13 6, 1, 0, 0
    FrontierScrCmd_14
    FrontierScrCmd_12
    FrontierScrCmd_51
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0E 1, _08AC
    FrontierScrCmd_9A
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0E 1, _09C5
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0E 1, _04C5
    FrontierScrCmd_13 6, 1, 1, 0
    FrontierScrCmd_14
    FrontierScrCmd_0A _0706
    FrontierScrCmd_01
    FrontierScrCmd_7C 0
    FrontierScrCmd_11 29
    FrontierScrCmd_0D

_08AC:
    FrontierScrCmd_36
    FrontierScrCmd_35 240
    FrontierScrCmd_36
    FrontierScrCmd_0D

_08B6:
    FrontierScrCmd_A0 32, 2, 0, 0x8008
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _08D9
    FrontierScrCmd_0A _08E5
    FrontierScrCmd_01

_08D9:
    FrontierScrCmd_10 2
    FrontierScrCmd_0A _1974
    FrontierScrCmd_01

_08E5:
    FrontierScrCmd_A0 34, 0, 0, 0x8008
    FrontierScrCmd_A0 31, 0, 0, 0x8008
    FrontierScrCmd_13 6, 1, 0, 0
    FrontierScrCmd_14
    FrontierScrCmd_12
    FrontierScrCmd_51
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0E 1, _095A
    FrontierScrCmd_9D
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0E 1, _09E2
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0E 1, _04C5
    FrontierScrCmd_13 6, 1, 1, 0
    FrontierScrCmd_14
    FrontierScrCmd_0A _0706
    FrontierScrCmd_01
    FrontierScrCmd_7C 0
    FrontierScrCmd_0D

_095A:
    FrontierScrCmd_36
    FrontierScrCmd_35 241
    FrontierScrCmd_36
    FrontierScrCmd_0D

_0964:
    FrontierScrCmd_A0 32, 4, 0, 0x8008
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _099C
    FrontierScrCmd_0A _0987
    FrontierScrCmd_01

_0987:
    FrontierScrCmd_06 0x8005, 0
    FrontierScrCmd_A0 31, 0, 0, 0x8008
    FrontierScrCmd_0A _0C47
    FrontierScrCmd_01

_099C:
    FrontierScrCmd_10 2
    FrontierScrCmd_0A _1974
    FrontierScrCmd_01

_09A8:
    FrontierScrCmd_05 1, 0x8008
    FrontierScrCmd_A0 29, 0, 0, 0x8008
    FrontierScrCmd_05 1, 0x8008
    FrontierScrCmd_36
    FrontierScrCmd_35 190
    FrontierScrCmd_36
    FrontierScrCmd_0D

_09C5:
    FrontierScrCmd_05 1, 0x8008
    FrontierScrCmd_A0 29, 0, 0, 0x8008
    FrontierScrCmd_05 1, 0x8008
    FrontierScrCmd_36
    FrontierScrCmd_35 191
    FrontierScrCmd_36
    FrontierScrCmd_0D

_09E2:
    FrontierScrCmd_05 1, 0x8008
    FrontierScrCmd_A0 29, 0, 0, 0x8008
    FrontierScrCmd_05 1, 0x8008
    FrontierScrCmd_36
    FrontierScrCmd_35 192
    FrontierScrCmd_36
    FrontierScrCmd_0D

_09FF:
    FrontierScrCmd_05 1, 0x8008
    FrontierScrCmd_A0 29, 0, 0, 0x8008
    FrontierScrCmd_05 1, 0x8008
    FrontierScrCmd_36
    FrontierScrCmd_35 193
    FrontierScrCmd_36
    FrontierScrCmd_0D

_0A1C:
    FrontierScrCmd_7A 0, 50
    FrontierScrCmd_11 25
    FrontierScrCmd_1F 0x8008, 0
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _0714
    FrontierScrCmd_A6 0x8001, 0x8008
    FrontierScrCmd_20 0x8008, 50
    FrontierScrCmd_0B 0, _0A6D
    FrontierScrCmd_A0 32, 5, 0, 0x8008
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _1974
    FrontierScrCmd_0A _0A79
    FrontierScrCmd_01

_0A6D:
    FrontierScrCmd_11 28
    FrontierScrCmd_0A _0714
    FrontierScrCmd_01

_0A79:
    FrontierScrCmd_06 0x8005, 1
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _0A9B
    FrontierScrCmd_0A _0AB8
    FrontierScrCmd_01

_0A9B:
    FrontierScrCmd_A0 34, 0, 0, 0x8008
    FrontierScrCmd_A0 33, 0, 0, 0x8008
    FrontierScrCmd_A0 31, 0, 0, 0x8008
    FrontierScrCmd_0A _0C47
    FrontierScrCmd_01

_0AB8:
    FrontierScrCmd_A0 17, 0, 0, 0x8008
    FrontierScrCmd_A7 0x8008, 50
    FrontierScrCmd_0A _0C47
    FrontierScrCmd_01
    FrontierScrCmd_12
    FrontierScrCmd_51
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _0B0C
    FrontierScrCmd_28 0, _0248
    FrontierScrCmd_28 3, _0274
    FrontierScrCmd_28 4, _0248
    FrontierScrCmd_29
    FrontierScrCmd_0A _0B36
    FrontierScrCmd_01
    FrontierScrCmd_7C 0
    FrontierScrCmd_0D

_0B0C:
    FrontierScrCmd_28 0, _0248
    FrontierScrCmd_28 3, _0274
    FrontierScrCmd_28 1, _0248
    FrontierScrCmd_28 2, _025C
    FrontierScrCmd_29
    FrontierScrCmd_0A _0B36
    FrontierScrCmd_01

_0B36:
    FrontierScrCmd_55 0x603
    FrontierScrCmd_57 0x603
    FrontierScrCmd_13 6, 1, 0, 0
    FrontierScrCmd_14
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _0BBA
    FrontierScrCmd_25 0
    FrontierScrCmd_25 3
    FrontierScrCmd_25 4
    FrontierScrCmd_23 217
    FrontierScrCmd_03 13
    FrontierScrCmd_40 0x8007
    FrontierScrCmd_22 _019C
    FrontierScrCmd_24 _01B0
    FrontierScrCmd_13 6, 1, 1, 0
    FrontierScrCmd_14
    FrontierScrCmd_28 4, _02D8
    FrontierScrCmd_29
    FrontierScrCmd_55 0x603
    FrontierScrCmd_57 0x603
    FrontierScrCmd_13 6, 1, 0, 0
    FrontierScrCmd_14
    FrontierScrCmd_0C _19E8
    FrontierScrCmd_0A _0C1E
    FrontierScrCmd_01

_0BBA:
    FrontierScrCmd_25 1
    FrontierScrCmd_25 2
    FrontierScrCmd_25 3
    FrontierScrCmd_23 217
    FrontierScrCmd_03 13
    FrontierScrCmd_40 0x8007
    FrontierScrCmd_22 _01A4
    FrontierScrCmd_24 _01C8
    FrontierScrCmd_13 6, 1, 1, 0
    FrontierScrCmd_14
    FrontierScrCmd_28 1, _02D8
    FrontierScrCmd_28 2, _02EC
    FrontierScrCmd_29
    FrontierScrCmd_55 0x603
    FrontierScrCmd_57 0x603
    FrontierScrCmd_13 6, 1, 0, 0
    FrontierScrCmd_14
    FrontierScrCmd_0C _19E8
    FrontierScrCmd_0A _0C1E
    FrontierScrCmd_01

_0C1E:
    FrontierScrCmd_0C _10CA
    FrontierScrCmd_A0 28, 0, 0, 0x8008
    FrontierScrCmd_A0 23, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 7
    FrontierScrCmd_0B 5, _1349
    FrontierScrCmd_0A _12D3
    FrontierScrCmd_01

_0C47:
    FrontierScrCmd_51
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _0C7F
    FrontierScrCmd_11 3
    FrontierScrCmd_3A
    FrontierScrCmd_12
    FrontierScrCmd_28 0, _0228
    FrontierScrCmd_28 4, _0228
    FrontierScrCmd_29
    FrontierScrCmd_0A _0CAD
    FrontierScrCmd_01

_0C7F:
    FrontierScrCmd_10 3
    FrontierScrCmd_05 30, 0x8008
    FrontierScrCmd_12
    FrontierScrCmd_28 0, _0228
    FrontierScrCmd_28 1, _0228
    FrontierScrCmd_28 2, _0238
    FrontierScrCmd_29
    FrontierScrCmd_0A _0CAD
    FrontierScrCmd_01

_0CAD:
    FrontierScrCmd_55 0x603
    FrontierScrCmd_57 0x603
    FrontierScrCmd_13 6, 1, 0, 0
    FrontierScrCmd_14
    FrontierScrCmd_20 0x800E, 0
    FrontierScrCmd_0E 1, _0E64
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _0DA3
    FrontierScrCmd_25 0
    FrontierScrCmd_25 3
    FrontierScrCmd_25 4
    FrontierScrCmd_23 217
    FrontierScrCmd_03 12
    FrontierScrCmd_0C _0E74
    FrontierScrCmd_22 _00DC
    FrontierScrCmd_24 _0100
    FrontierScrCmd_13 6, 1, 1, 0
    FrontierScrCmd_14
    FrontierScrCmd_28 0, _028C
    FrontierScrCmd_28 4, _0294
    FrontierScrCmd_29
    FrontierScrCmd_43 0, 0
    FrontierScrCmd_20 0x8005, 1
    FrontierScrCmd_0B 1, _0E89
    FrontierScrCmd_A0 40, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _1A9B
    FrontierScrCmd_20 0x8008, 2
    FrontierScrCmd_0B 1, _1ABA
    FrontierScrCmd_0C _1B75
    FrontierScrCmd_7A 0, 0x8008
    FrontierScrCmd_0C _0ED1
    FrontierScrCmd_28 98, _0300
    FrontierScrCmd_29
    FrontierScrCmd_05 15, 0x8008
    FrontierScrCmd_28 98, _0284
    FrontierScrCmd_29
    FrontierScrCmd_A0 37, 0, 0, 0x8008
    FrontierScrCmd_A9 0
    FrontierScrCmd_3A
    FrontierScrCmd_12
    FrontierScrCmd_0A _0D9B
    FrontierScrCmd_01

_0D9B:
    FrontierScrCmd_0A _0F2E
    FrontierScrCmd_01

_0DA3:
    FrontierScrCmd_25 1
    FrontierScrCmd_25 2
    FrontierScrCmd_25 3
    FrontierScrCmd_23 217
    FrontierScrCmd_03 12
    FrontierScrCmd_0C _0E74
    FrontierScrCmd_22 _00E8
    FrontierScrCmd_24 _0124
    FrontierScrCmd_13 6, 1, 1, 0
    FrontierScrCmd_14
    FrontierScrCmd_28 0, _028C
    FrontierScrCmd_28 1, _02A8
    FrontierScrCmd_28 2, _02BC
    FrontierScrCmd_29
    FrontierScrCmd_43 0, 0
    FrontierScrCmd_20 0x8005, 1
    FrontierScrCmd_0B 1, _0E89
    FrontierScrCmd_0C _0EEC
    FrontierScrCmd_28 98, _0314
    FrontierScrCmd_28 99, _0328
    FrontierScrCmd_29
    FrontierScrCmd_05 15, 0x8008
    FrontierScrCmd_28 98, _0284
    FrontierScrCmd_29
    FrontierScrCmd_A0 37, 0, 0, 0x8008
    FrontierScrCmd_A9 0
    FrontierScrCmd_05 30, 0x8008
    FrontierScrCmd_12
    FrontierScrCmd_28 99, _0284
    FrontierScrCmd_29
    FrontierScrCmd_A0 37, 0, 0, 0x8008
    FrontierScrCmd_A9 1
    FrontierScrCmd_05 30, 0x8008
    FrontierScrCmd_12
    FrontierScrCmd_10 2
    FrontierScrCmd_0A _0F2E
    FrontierScrCmd_01

_0E64:
    FrontierScrCmd_25 7
    FrontierScrCmd_23 0x800F
    FrontierScrCmd_06 0x800E, 1
    FrontierScrCmd_0D

_0E74:
    FrontierScrCmd_41 0, 6, 1
    FrontierScrCmd_A0 36, 0, 0, 0x8008
    FrontierScrCmd_40 0x8007
    FrontierScrCmd_0D

_0E89:
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _0EAD
    FrontierScrCmd_11 44
    FrontierScrCmd_3A
    FrontierScrCmd_12
    FrontierScrCmd_0A _1084
    FrontierScrCmd_01

_0EAD:
    FrontierScrCmd_10 44
    FrontierScrCmd_05 30, 0x8008
    FrontierScrCmd_10 2
    FrontierScrCmd_0C _10CA
    FrontierScrCmd_0C _122A
    FrontierScrCmd_12
    FrontierScrCmd_0A _1098
    FrontierScrCmd_01

_0ED1:
    FrontierScrCmd_A0 20, 0, 0, 0x8008
    FrontierScrCmd_07 0x800B, 0x8008
    FrontierScrCmd_22 _0154
    FrontierScrCmd_24 _0164
    FrontierScrCmd_0D

_0EEC:
    FrontierScrCmd_A0 20, 0, 0, 0x8008
    FrontierScrCmd_07 0x800B, 0x8008
    FrontierScrCmd_22 _0154
    FrontierScrCmd_A0 20, 1, 0, 0x8008
    FrontierScrCmd_07 0x800C, 0x8008
    FrontierScrCmd_22 _015C
    FrontierScrCmd_24 _0174
    FrontierScrCmd_0D

_0F1A:
    FrontierScrCmd_06 0x800B, 217
    FrontierScrCmd_22 _0154
    FrontierScrCmd_24 _0164
    FrontierScrCmd_0D

_0F2E:
    FrontierScrCmd_42 0
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _0F83
    FrontierScrCmd_A0 40, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _0F73
    FrontierScrCmd_20 0x8008, 2
    FrontierScrCmd_0B 1, _0F73
    FrontierScrCmd_3F 4
    FrontierScrCmd_0A _0F99
    FrontierScrCmd_01

_0F73:
    FrontierScrCmd_48 59
    FrontierScrCmd_47 4
    FrontierScrCmd_0A _0F99
    FrontierScrCmd_01

_0F83:
    FrontierScrCmd_36
    FrontierScrCmd_35 121
    FrontierScrCmd_36
    FrontierScrCmd_12
    FrontierScrCmd_3F 4
    FrontierScrCmd_0A _0F99
    FrontierScrCmd_01

_0F99:
    FrontierScrCmd_0C _1B75
    FrontierScrCmd_7A 0, 0x8008
    FrontierScrCmd_9C
    FrontierScrCmd_9B
    FrontierScrCmd_41 0, 6, 1
    FrontierScrCmd_43 0, 0
    FrontierScrCmd_A0 36, 0, 0, 0x8008
    FrontierScrCmd_13 6, 1, 1, 0
    FrontierScrCmd_14
    FrontierScrCmd_A1 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _180E
    FrontierScrCmd_48 61
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _1040
    FrontierScrCmd_A0 40, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _1AF8
    FrontierScrCmd_20 0x8008, 2
    FrontierScrCmd_0B 1, _1B2F
    FrontierScrCmd_0C _1B75
    FrontierScrCmd_7A 0, 0x8008
    FrontierScrCmd_28 98, _0360
    FrontierScrCmd_29
    FrontierScrCmd_0A _1030
    FrontierScrCmd_01

_1030:
    FrontierScrCmd_25 98
    FrontierScrCmd_23 0x800B
    FrontierScrCmd_0A _1070
    FrontierScrCmd_01

_1040:
    FrontierScrCmd_0C _09FF
    FrontierScrCmd_28 98, _0370
    FrontierScrCmd_28 99, _0380
    FrontierScrCmd_29
    FrontierScrCmd_25 98
    FrontierScrCmd_25 99
    FrontierScrCmd_23 0x800B
    FrontierScrCmd_23 0x800C
    FrontierScrCmd_0A _1070
    FrontierScrCmd_01

_1070:
    FrontierScrCmd_0C _10CA
    FrontierScrCmd_0C _10DA
    FrontierScrCmd_0A _1098
    FrontierScrCmd_01

_1084:
    FrontierScrCmd_0C _10CA
    FrontierScrCmd_0C _122A
    FrontierScrCmd_0A _1098
    FrontierScrCmd_01

_1098:
    FrontierScrCmd_55 0x603
    FrontierScrCmd_57 0x603
    FrontierScrCmd_13 6, 1, 0, 0
    FrontierScrCmd_14
    FrontierScrCmd_25 5
    FrontierScrCmd_23 219
    FrontierScrCmd_0C _19E8
    FrontierScrCmd_0A _10C2
    FrontierScrCmd_01

_10C2:
    FrontierScrCmd_0A _1247
    FrontierScrCmd_01

_10CA:
    FrontierScrCmd_A0 14, 1, 0, 0x8008
    FrontierScrCmd_A0 5, 0, 0, 0x8008
    FrontierScrCmd_0D

_10DA:
    FrontierScrCmd_7B 1
    FrontierScrCmd_A0 27, 0, 0, 0x800D
    FrontierScrCmd_7A 0, 0x800D
    FrontierScrCmd_28 5, _03BC
    FrontierScrCmd_29
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _1BA1
    FrontierScrCmd_0A _1B93
    FrontierScrCmd_01

_110F:
    FrontierScrCmd_12
    FrontierScrCmd_A0 28, 0, 0, 0x8008
    FrontierScrCmd_22 _00F8
    FrontierScrCmd_24 _018C
    FrontierScrCmd_28 6, _03A4
    FrontierScrCmd_29
    FrontierScrCmd_7B 1
    FrontierScrCmd_20 0x800D, 40
    FrontierScrCmd_0B 4, _1160
    FrontierScrCmd_20 0x800D, 25
    FrontierScrCmd_0B 4, _117C
    FrontierScrCmd_20 0x800D, 15
    FrontierScrCmd_0B 4, _1198
    FrontierScrCmd_0A _11B4
    FrontierScrCmd_01

_1160:
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _1BBF
    FrontierScrCmd_0A _1BB3
    FrontierScrCmd_01

_117C:
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _1BDD
    FrontierScrCmd_0A _1BD1
    FrontierScrCmd_01

_1198:
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _1BFB
    FrontierScrCmd_0A _1BEF
    FrontierScrCmd_01

_11B4:
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _1C19
    FrontierScrCmd_0A _1C0D
    FrontierScrCmd_01

_11D0:
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _1C37
    FrontierScrCmd_0A _1C2B
    FrontierScrCmd_01

_11EC:
    FrontierScrCmd_58 0x4C4
    FrontierScrCmd_59
    FrontierScrCmd_12
    FrontierScrCmd_28 6, _03B0
    FrontierScrCmd_29
    FrontierScrCmd_25 6
    FrontierScrCmd_23 217
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _121C
    FrontierScrCmd_0D

_121C:
    FrontierScrCmd_10 2
    FrontierScrCmd_0C _04C5
    FrontierScrCmd_12
    FrontierScrCmd_0D

_122A:
    FrontierScrCmd_A0 28, 0, 0, 0x8008
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0E 1, _04C5
    FrontierScrCmd_0D

_1247:
    FrontierScrCmd_A0 23, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 7
    FrontierScrCmd_0B 5, _1314
    FrontierScrCmd_0A _1263
    FrontierScrCmd_01

_1263:
    FrontierScrCmd_20 0x8005, 1
    FrontierScrCmd_0B 1, _12D3
    FrontierScrCmd_71 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _12B9
    FrontierScrCmd_70 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0E 1, _1714
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0E 1, _171A
    FrontierScrCmd_1F 0x8008, 1
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _12D3
    FrontierScrCmd_0A _12C5
    FrontierScrCmd_01

_12B9:
    FrontierScrCmd_10 2
    FrontierScrCmd_0A _12D3
    FrontierScrCmd_01

_12C5:
    FrontierScrCmd_0C _1694
    FrontierScrCmd_0A _12D3
    FrontierScrCmd_01

_12D3:
    FrontierScrCmd_A0 22, 0, 0, 0x8008
    FrontierScrCmd_3D 0x40BC, 1
    FrontierScrCmd_7B 0
    FrontierScrCmd_11 40
    FrontierScrCmd_7B 0
    FrontierScrCmd_A0 38, 0, 0, 0x8008
    FrontierScrCmd_7A 1, 0x8008
    FrontierScrCmd_82 0x8008
    FrontierScrCmd_11 41
    FrontierScrCmd_58 0x4C5
    FrontierScrCmd_59
    FrontierScrCmd_0A _130C
    FrontierScrCmd_01

_130C:
    FrontierScrCmd_0A _18B0
    FrontierScrCmd_01

_1314:
    FrontierScrCmd_20 0x8005, 1
    FrontierScrCmd_0B 1, _1349
    FrontierScrCmd_A0 25, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _1349
    FrontierScrCmd_11 4
    FrontierScrCmd_55 0x624
    FrontierScrCmd_57 0x624
    FrontierScrCmd_0A _1349
    FrontierScrCmd_01

_1349:
    FrontierScrCmd_A0 40, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _1A60
    FrontierScrCmd_20 0x8008, 2
    FrontierScrCmd_0B 1, _1A60
    FrontierScrCmd_0A _1372
    FrontierScrCmd_01

_1372:
    FrontierScrCmd_0C _1B75
    FrontierScrCmd_7A 0, 0x8008
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _13AF
    FrontierScrCmd_A0 23, 0, 0, 0x8008
    FrontierScrCmd_08 0x8008, 1
    FrontierScrCmd_7A 0, 0x8008
    FrontierScrCmd_11 5
    FrontierScrCmd_0A _13E4
    FrontierScrCmd_01

_13AF:
    FrontierScrCmd_10 2
    FrontierScrCmd_36
    FrontierScrCmd_35 127
    FrontierScrCmd_36
    FrontierScrCmd_0C _1B75
    FrontierScrCmd_7A 0, 0x8008
    FrontierScrCmd_A0 23, 0, 0, 0x8008
    FrontierScrCmd_08 0x8008, 1
    FrontierScrCmd_7A 0, 0x8008
    FrontierScrCmd_0F 5
    FrontierScrCmd_0A _13E4
    FrontierScrCmd_01

_13E4:
    FrontierScrCmd_0A _13EC
    FrontierScrCmd_01

_13EC:
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _1422
    FrontierScrCmd_20 0x8005, 1
    FrontierScrCmd_0B 1, _1471
    FrontierScrCmd_20 0x8003, 0
    FrontierScrCmd_0B 1, _147F
    FrontierScrCmd_0A _1471
    FrontierScrCmd_01

_1422:
    FrontierScrCmd_71 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _1455
    FrontierScrCmd_20 0x8005, 1
    FrontierScrCmd_0B 1, _1455
    FrontierScrCmd_20 0x8003, 0
    FrontierScrCmd_0B 1, _1463
    FrontierScrCmd_0A _1455
    FrontierScrCmd_01

_1455:
    FrontierScrCmd_06 0x8008, 1
    FrontierScrCmd_0A _148D
    FrontierScrCmd_01

_1463:
    FrontierScrCmd_06 0x8008, 2
    FrontierScrCmd_0A _148D
    FrontierScrCmd_01

_1471:
    FrontierScrCmd_06 0x8008, 3
    FrontierScrCmd_0A _148D
    FrontierScrCmd_01

_147F:
    FrontierScrCmd_06 0x8008, 4
    FrontierScrCmd_0A _148D
    FrontierScrCmd_01

_148D:
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _14C3
    FrontierScrCmd_20 0x8008, 2
    FrontierScrCmd_0B 1, _14DE
    FrontierScrCmd_20 0x8008, 3
    FrontierScrCmd_0B 1, _1501
    FrontierScrCmd_20 0x8008, 4
    FrontierScrCmd_0B 1, _1524
    FrontierScrCmd_01

_14C3:
    FrontierScrCmd_1B 31, 13, 0, 0, 0x800A
    FrontierScrCmd_CA 1
    FrontierScrCmd_1C 45, 255, 0
    FrontierScrCmd_0A _154F
    FrontierScrCmd_01

_14DE:
    FrontierScrCmd_1B 31, 11, 0, 0, 0x800A
    FrontierScrCmd_CA 1
    FrontierScrCmd_1C 45, 255, 0
    FrontierScrCmd_1C 46, 255, 1
    FrontierScrCmd_0A _154F
    FrontierScrCmd_01

_1501:
    FrontierScrCmd_1B 31, 11, 0, 0, 0x800A
    FrontierScrCmd_CA 1
    FrontierScrCmd_1C 45, 255, 0
    FrontierScrCmd_1C 47, 255, 2
    FrontierScrCmd_0A _154F
    FrontierScrCmd_01

_1524:
    FrontierScrCmd_1B 31, 9, 0, 0, 0x800A
    FrontierScrCmd_CA 1
    FrontierScrCmd_1C 45, 255, 0
    FrontierScrCmd_1C 46, 255, 1
    FrontierScrCmd_1C 47, 255, 2
    FrontierScrCmd_0A _154F
    FrontierScrCmd_01

_154F:
    FrontierScrCmd_1C 48, 255, 3
    FrontierScrCmd_1D
    FrontierScrCmd_0A _1561
    FrontierScrCmd_01

_1561:
    FrontierScrCmd_20 0x800A, 0
    FrontierScrCmd_0B 1, _159D
    FrontierScrCmd_20 0x800A, 1
    FrontierScrCmd_0B 1, _1646
    FrontierScrCmd_20 0x800A, 2
    FrontierScrCmd_0B 1, _1720
    FrontierScrCmd_20 0x800A, 3
    FrontierScrCmd_0B 1, _1774
    FrontierScrCmd_0A _1774
    FrontierScrCmd_01

_159D:
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _15B9
    FrontierScrCmd_0A _1622
    FrontierScrCmd_01

_15B9:
    FrontierScrCmd_7C 0
    FrontierScrCmd_11 17
    FrontierScrCmd_0A _15C8
    FrontierScrCmd_01

_15C8:
    FrontierScrCmd_06 0x8002, 4
    FrontierScrCmd_A2 0x8002, 0, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _15C8
    FrontierScrCmd_A3 0x8002
    FrontierScrCmd_36
    FrontierScrCmd_A0 24, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _160D
    FrontierScrCmd_36
    FrontierScrCmd_35 122
    FrontierScrCmd_36
    FrontierScrCmd_0A _1622
    FrontierScrCmd_01

_160D:
    FrontierScrCmd_7C 0
    FrontierScrCmd_10 19
    FrontierScrCmd_05 30, 0x8008
    FrontierScrCmd_0A _17D9
    FrontierScrCmd_01

_1622:
    FrontierScrCmd_06 0x8003, 0
    FrontierScrCmd_9F
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0E 1, _0630
    FrontierScrCmd_0A _0706
    FrontierScrCmd_01

_1646:
    FrontierScrCmd_70 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0E 1, _1714
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0E 1, _171A
    FrontierScrCmd_1F 0x8008, 1
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _168C
    FrontierScrCmd_0A _167E
    FrontierScrCmd_01

_167E:
    FrontierScrCmd_0C _1694
    FrontierScrCmd_0A _1349
    FrontierScrCmd_01

_168C:
    FrontierScrCmd_0A _1349
    FrontierScrCmd_01

_1694:
    FrontierScrCmd_0C _16B6
    FrontierScrCmd_0A _16BF
    FrontierScrCmd_01

_16A2:
    FrontierScrCmd_0C _16B6
    FrontierScrCmd_08 0x8009, 1
    FrontierScrCmd_0A _16BF
    FrontierScrCmd_01

_16B6:
    FrontierScrCmd_A0 4, 0, 0, 0x8009
    FrontierScrCmd_0D

_16BF:
    FrontierScrCmd_0A _16C7
    FrontierScrCmd_01

_16C7:
    FrontierScrCmd_06 0x8003, 1
    FrontierScrCmd_A0 44, 0, 0, 0x8008
    FrontierScrCmd_0F 10
    FrontierScrCmd_A0 17, 0, 0, 0x8008
    FrontierScrCmd_77
    FrontierScrCmd_6D 4, 0x8008, 0x8009, 0x8009
    FrontierScrCmd_78
    FrontierScrCmd_A0 44, 1, 0, 0x8008
    FrontierScrCmd_20 0x8009, 1
    FrontierScrCmd_0B 1, _1707
    FrontierScrCmd_11 8
    FrontierScrCmd_0D

_1707:
    FrontierScrCmd_55 0x61B
    FrontierScrCmd_7B 0
    FrontierScrCmd_11 7
    FrontierScrCmd_0D

_1714:
    FrontierScrCmd_11 6
    FrontierScrCmd_0D

_171A:
    FrontierScrCmd_11 9
    FrontierScrCmd_0D

_1720:
    FrontierScrCmd_11 11
    FrontierScrCmd_1F 0x8008, 0
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _176C
    FrontierScrCmd_0A _173E
    FrontierScrCmd_01

_173E:
    FrontierScrCmd_3D 0x40BC, 2
    FrontierScrCmd_A0 10, 0, 0, 0x8008
    FrontierScrCmd_6F
    FrontierScrCmd_99
    FrontierScrCmd_0C _195E
    FrontierScrCmd_13 6, 1, 0, 0
    FrontierScrCmd_14
    FrontierScrCmd_12
    FrontierScrCmd_A0 7, 0, 0, 0x8008
    FrontierScrCmd_01

_176C:
    FrontierScrCmd_0A _1349
    FrontierScrCmd_01

_1774:
    FrontierScrCmd_11 14
    FrontierScrCmd_1F 0x8008, 1
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _1806
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _17AA
    FrontierScrCmd_11 42
    FrontierScrCmd_0A _17F1
    FrontierScrCmd_01

_17AA:
    FrontierScrCmd_10 2
    FrontierScrCmd_0A _17B6
    FrontierScrCmd_01

_17B6:
    FrontierScrCmd_06 0x8002, 4
    FrontierScrCmd_A2 0x8002, 1, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _17B6
    FrontierScrCmd_0A _17D9
    FrontierScrCmd_01

_17D9:
    FrontierScrCmd_11 42
    FrontierScrCmd_10 2
    FrontierScrCmd_36
    FrontierScrCmd_35 124
    FrontierScrCmd_36
    FrontierScrCmd_0A _17F1
    FrontierScrCmd_01

_17F1:
    FrontierScrCmd_A0 21, 0, 0, 0x8008
    FrontierScrCmd_3D 0x40BC, 3
    FrontierScrCmd_0A _18E4
    FrontierScrCmd_01

_1806:
    FrontierScrCmd_0A _1349
    FrontierScrCmd_01

_180E:
    FrontierScrCmd_55 0x603
    FrontierScrCmd_57 0x603
    FrontierScrCmd_13 6, 1, 0, 0
    FrontierScrCmd_14
    FrontierScrCmd_25 5
    FrontierScrCmd_23 219
    FrontierScrCmd_0C _19E8
    FrontierScrCmd_71 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _1879
    FrontierScrCmd_70 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0E 1, _1714
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0E 1, _171A
    FrontierScrCmd_1F 0x8008, 1
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _1893
    FrontierScrCmd_0A _1885
    FrontierScrCmd_01

_1879:
    FrontierScrCmd_10 2
    FrontierScrCmd_0A _189B
    FrontierScrCmd_01

_1885:
    FrontierScrCmd_0C _16A2
    FrontierScrCmd_0A _189B
    FrontierScrCmd_01

_1893:
    FrontierScrCmd_0A _189B
    FrontierScrCmd_01

_189B:
    FrontierScrCmd_A0 21, 0, 0, 0x8008
    FrontierScrCmd_3D 0x40BC, 3
    FrontierScrCmd_0A _18B0
    FrontierScrCmd_01

_18B0:
    FrontierScrCmd_11 42
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _18D0
    FrontierScrCmd_0A _18E4
    FrontierScrCmd_01

_18D0:
    FrontierScrCmd_10 2
    FrontierScrCmd_36
    FrontierScrCmd_35 128
    FrontierScrCmd_36
    FrontierScrCmd_0A _18E4
    FrontierScrCmd_01

_18E4:
    FrontierScrCmd_0C _195E
    FrontierScrCmd_12
    FrontierScrCmd_0A _18F4
    FrontierScrCmd_01

_18F4:
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0E 1, _1948
    FrontierScrCmd_13 6, 1, 0, 0
    FrontierScrCmd_14
    FrontierScrCmd_A0 17, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 2
    FrontierScrCmd_0E 1, _1942
    FrontierScrCmd_A0 17, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 3
    FrontierScrCmd_0B 1, _1952
    FrontierScrCmd_6F
    FrontierScrCmd_99
    FrontierScrCmd_02

_1942:
    FrontierScrCmd_C8 4
    FrontierScrCmd_0D

_1948:
    FrontierScrCmd_36
    FrontierScrCmd_35 129
    FrontierScrCmd_36
    FrontierScrCmd_0D

_1952:
    FrontierScrCmd_6F
    FrontierScrCmd_99
    FrontierScrCmd_04 14, 1
    FrontierScrCmd_01

_195E:
    FrontierScrCmd_0F 43
    FrontierScrCmd_77
    FrontierScrCmd_73 0x8008
    FrontierScrCmd_78
    FrontierScrCmd_55 0x61B
    FrontierScrCmd_57 0x61B
    FrontierScrCmd_0D

_1974:
    FrontierScrCmd_06 0x8002, 2
    FrontierScrCmd_A2 0x8002, 0, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _1974
    FrontierScrCmd_A3 0x8002
    FrontierScrCmd_36
    FrontierScrCmd_0A _199D
    FrontierScrCmd_01

_199D:
    FrontierScrCmd_36
    FrontierScrCmd_35 126
    FrontierScrCmd_36
    FrontierScrCmd_A0 30, 0, 0, 0x8008
    FrontierScrCmd_07 0x8010, 0x8008
    FrontierScrCmd_20 0x8010, 1
    FrontierScrCmd_0B 1, _0833
    FrontierScrCmd_20 0x8010, 2
    FrontierScrCmd_0B 1, _08E5
    FrontierScrCmd_20 0x8010, 4
    FrontierScrCmd_0B 1, _0987
    FrontierScrCmd_20 0x8010, 5
    FrontierScrCmd_0B 1, _0A79
    FrontierScrCmd_01

_19E8:
    FrontierScrCmd_42 0
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _1A30
    FrontierScrCmd_25 0
    FrontierScrCmd_25 4
    FrontierScrCmd_03 11
    FrontierScrCmd_40 0x8007
    FrontierScrCmd_06 0x800F, 231
    FrontierScrCmd_22 _0008
    FrontierScrCmd_24 _0088
    FrontierScrCmd_13 6, 1, 1, 0
    FrontierScrCmd_14
    FrontierScrCmd_0D

_1A30:
    FrontierScrCmd_25 1
    FrontierScrCmd_25 2
    FrontierScrCmd_03 11
    FrontierScrCmd_40 0x8007
    FrontierScrCmd_06 0x800F, 232
    FrontierScrCmd_22 _0010
    FrontierScrCmd_24 _00AC
    FrontierScrCmd_13 6, 1, 1, 0
    FrontierScrCmd_14
    FrontierScrCmd_0D

_1A60:
    FrontierScrCmd_20 0x8003, 1
    FrontierScrCmd_0B 1, _1372
    FrontierScrCmd_A0 43, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _1372
    FrontierScrCmd_0C _1B75
    FrontierScrCmd_7A 0, 0x8008
    FrontierScrCmd_7B 0
    FrontierScrCmd_11 53
    FrontierScrCmd_0A _13E4
    FrontierScrCmd_01

_1A9B:
    FrontierScrCmd_0C _1B75
    FrontierScrCmd_7A 0, 0x8008
    FrontierScrCmd_0C _1ADC
    FrontierScrCmd_11 54
    FrontierScrCmd_12
    FrontierScrCmd_0A _0D9B
    FrontierScrCmd_01

_1ABA:
    FrontierScrCmd_0C _1B75
    FrontierScrCmd_7A 0, 0x8008
    FrontierScrCmd_0C _1ADC
    FrontierScrCmd_7B 0
    FrontierScrCmd_11 55
    FrontierScrCmd_12
    FrontierScrCmd_0A _0D9B
    FrontierScrCmd_01

_1ADC:
    FrontierScrCmd_0C _0F1A
    FrontierScrCmd_28 98, _0344
    FrontierScrCmd_29
    FrontierScrCmd_28 98, _0358
    FrontierScrCmd_29
    FrontierScrCmd_0D

_1AF8:
    FrontierScrCmd_0C _1B75
    FrontierScrCmd_7A 0, 0x8008
    FrontierScrCmd_3E 0x4052, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0E 1, _1B27
    FrontierScrCmd_7B 0
    FrontierScrCmd_11 56
    FrontierScrCmd_12
    FrontierScrCmd_0A _1B63
    FrontierScrCmd_01

_1B27:
    FrontierScrCmd_3D 0x4052, 1
    FrontierScrCmd_0D

_1B2F:
    FrontierScrCmd_0C _1B75
    FrontierScrCmd_7A 0, 0x8008
    FrontierScrCmd_3E 0x4052, 0x8008
    FrontierScrCmd_20 0x8008, 2
    FrontierScrCmd_0E 1, _1B5B
    FrontierScrCmd_11 57
    FrontierScrCmd_12
    FrontierScrCmd_0A _1B63
    FrontierScrCmd_01

_1B5B:
    FrontierScrCmd_3D 0x4052, 3
    FrontierScrCmd_0D

_1B63:
    FrontierScrCmd_28 98, _0394
    FrontierScrCmd_29
    FrontierScrCmd_0A _1030
    FrontierScrCmd_01

_1B75:
    FrontierScrCmd_A0 4, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 0x270F
    FrontierScrCmd_0B 4, _1B91
    FrontierScrCmd_08 0x8008, 1
    FrontierScrCmd_0D

_1B91:
    FrontierScrCmd_0D

_1B93:
    FrontierScrCmd_11 30
    FrontierScrCmd_3A
    FrontierScrCmd_0A _110F
    FrontierScrCmd_01

_1BA1:
    FrontierScrCmd_10 30
    FrontierScrCmd_05 30, 0x8008
    FrontierScrCmd_0A _110F
    FrontierScrCmd_01

_1BB3:
    FrontierScrCmd_11 35
    FrontierScrCmd_0A _11D0
    FrontierScrCmd_01

_1BBF:
    FrontierScrCmd_10 31
    FrontierScrCmd_05 30, 0x8008
    FrontierScrCmd_0A _11D0
    FrontierScrCmd_01

_1BD1:
    FrontierScrCmd_11 36
    FrontierScrCmd_0A _11D0
    FrontierScrCmd_01

_1BDD:
    FrontierScrCmd_10 32
    FrontierScrCmd_05 30, 0x8008
    FrontierScrCmd_0A _11D0
    FrontierScrCmd_01

_1BEF:
    FrontierScrCmd_11 37
    FrontierScrCmd_0A _11D0
    FrontierScrCmd_01

_1BFB:
    FrontierScrCmd_10 33
    FrontierScrCmd_05 30, 0x8008
    FrontierScrCmd_0A _11D0
    FrontierScrCmd_01

_1C0D:
    FrontierScrCmd_11 38
    FrontierScrCmd_0A _11D0
    FrontierScrCmd_01

_1C19:
    FrontierScrCmd_10 34
    FrontierScrCmd_05 30, 0x8008
    FrontierScrCmd_0A _11D0
    FrontierScrCmd_01

_1C2B:
    FrontierScrCmd_11 39
    FrontierScrCmd_0A _11EC
    FrontierScrCmd_01

_1C37:
    FrontierScrCmd_10 39
    FrontierScrCmd_0A _11EC
    FrontierScrCmd_01

    .balign 4, 0
