# include "macros/frscrcmd.inc"

    .data

    .long _0662 - 4
    .short 0xFD13

    .balign 4, 0
_0008:
    .short 0xEEEE
    .byte 0x00
    .short 0x800F
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0010:
    .short 0xEEEE
    .byte 0x00
    .short 0xEEEF
    .byte 0x00
    .short 0x800F
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_001C:
    .short 0x0000
    .short 0xEEEE
    .byte 0x00
    .short 0x0078
    .short 0x0080
    .byte 0x00
    .byte 0x00
    .short 0x0014
    .short 0x800F
    .byte 0x00
    .short 0x00B8
    .short 0x00C0
    .byte 0x01
    .byte 0x01
    .short 0x0004
    .short 0x8007
    .byte 0x00
    .short 0x00B8
    .short 0x00C0
    .byte 0x00
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0040:
    .short 0x0000
    .short 0xEEEE
    .byte 0x00
    .short 0x0078
    .short 0x0080
    .byte 0x00
    .byte 0x00
    .short 0x0001
    .short 0xEEEF
    .byte 0x00
    .short 0x00B8
    .short 0x00C0
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .short 0x0002
    .short 0xEEEF
    .byte 0x00
    .short 0x00B8
    .short 0x00C0
    .byte 0x00
    .byte 0x00
    .byte 0x01
    .short 0x0014
    .short 0x800F
    .byte 0x00
    .short 0x00B8
    .short 0x00C0
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0070:
    .short 0x00A8
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0078:
    .short 0xEEEE
    .byte 0x00
    .short 0xEEEF
    .byte 0x00
    .short 0x8007
    .byte 0x01
    .short 0x00A8
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0088:
    .short 0x0009
    .byte 0x01
    .short 0x0013
    .byte 0x01
    .short 0x0014
    .byte 0x01
    .short 0x0023
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0098:
    .short 0x800F
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_00A0:
    .short 0x0000
    .short 0xEEEE
    .byte 0x00
    .short 0x0078
    .short 0x012C
    .byte 0x00
    .byte 0x00
    .short 0x0004
    .short 0x8007
    .byte 0x00
    .short 0x0080
    .short 0x0130
    .byte 0x01
    .byte 0x01
    .short 0x0003
    .short 0x00A8
    .byte 0x00
    .short 0x0080
    .short 0x0070
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_00C4:
    .short 0x0000
    .short 0xEEEE
    .byte 0x00
    .short 0x0078
    .short 0x012C
    .byte 0x00
    .byte 0x00
    .short 0x0001
    .short 0xEEEF
    .byte 0x00
    .short 0x0080
    .short 0x0130
    .byte 0x01
    .byte 0x00
    .byte 0x00
    .short 0x0002
    .short 0xEEEF
    .byte 0x00
    .short 0x0090
    .short 0x0130
    .byte 0x01
    .byte 0x00
    .byte 0x01
    .short 0x0003
    .short 0x00A8
    .byte 0x00
    .short 0x0080
    .short 0x0070
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_00F4:
    .short 0x0014
    .short 0x800F
    .byte 0x03
    .short 0x0070
    .short 0x0130
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0104:
    .short 0x0005
    .short 0x0009
    .byte 0x03
    .short 0x0040
    .short 0x00F0
    .byte 0x01
    .byte 0x01
    .short 0x0006
    .short 0x0013
    .byte 0x02
    .short 0x0050
    .short 0x00F0
    .byte 0x01
    .byte 0x01
    .short 0x0007
    .short 0x0023
    .byte 0x01
    .short 0x00B0
    .short 0x0100
    .byte 0x01
    .byte 0x01
    .short 0x0008
    .short 0x0014
    .byte 0x00
    .short 0x00C0
    .short 0x0120
    .byte 0x01
    .byte 0x01
    .short 0x0009
    .short 0x0014
    .byte 0x01
    .short 0x0020
    .short 0x0110
    .byte 0x01
    .byte 0x01
    .short 0x000B
    .short 0x0023
    .byte 0x01
    .short 0x00C0
    .short 0x00F0
    .byte 0x01
    .byte 0x01
    .short 0x000C
    .short 0x0009
    .byte 0x01
    .short 0x00D0
    .short 0x00F0
    .byte 0x01
    .byte 0x01
    .short 0x000D
    .short 0x0009
    .byte 0x03
    .short 0x0040
    .short 0x0100
    .byte 0x01
    .byte 0x01
    .short 0x000E
    .short 0x0023
    .byte 0x02
    .short 0x0050
    .short 0x0120
    .byte 0x01
    .byte 0x01
    .short 0x000F
    .short 0x0014
    .byte 0x01
    .short 0x00B0
    .short 0x00F0
    .byte 0x01
    .byte 0x01
    .short 0x0010
    .short 0x0013
    .byte 0x03
    .short 0x00E0
    .short 0x0120
    .byte 0x01
    .byte 0x01
    .short 0x0011
    .short 0x0009
    .byte 0x03
    .short 0x0090
    .short 0x0110
    .byte 0x01
    .byte 0x01
    .short 0x0012
    .short 0x0009
    .byte 0x00
    .short 0x0060
    .short 0x00F0
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0198:
    .short 0x800B
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_01A0:
    .short 0x800B
    .byte 0x01
    .short 0x800C
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_01A8:
    .short 0x0062
    .short 0x800B
    .byte 0x01
    .short 0x0080
    .short 0x00D0
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_01B8:
    .short 0x0062
    .short 0x800B
    .byte 0x01
    .short 0x0080
    .short 0x00D0
    .byte 0x01
    .byte 0x01
    .short 0x0063
    .short 0x800C
    .byte 0x01
    .short 0x0090
    .short 0x00D0
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_01D0:
    .short 0x800F
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_01D8:
    .short 0x0061
    .short 0x800F
    .byte 0x00
    .short 0x0030
    .short 0x00E0
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_01E8:
    .short 0x0002
    .short 0xFD13

    .balign 4, 0
_01EC:
    .short 0x0002
    .short 0x0018
    .short 0x0038
    .short 0x0001
    .byte 0x00
    .byte 0x00
    .short 0xFD13

    .balign 4, 0
_01F8:
    .short 0x0002
    .short 0x0101
    .short 0x0038
    .short 0x0001
    .byte 0x00
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0204:
    .short 0x0003
    .short 0xFD13

    .balign 4, 0
_0208:
    .short 0x0003
    .short 0x002C
    .short 0x002A
    .short 0x0001
    .byte 0x00
    .byte 0x04
    .short 0x0003
    .short 0x002C
    .short 0x0052
    .short 0x0001
    .byte 0x00
    .byte 0x05
    .short 0xFD13

    .balign 4, 0
_0220:
    .short 0x0003
    .short 0x00D4
    .short 0x002A
    .short 0x0001
    .byte 0x00
    .byte 0x06
    .short 0x0003
    .short 0x00D4
    .short 0x0052
    .short 0x0001
    .byte 0x00
    .byte 0x07
    .short 0xFD13

    .balign 4, 0
_0238:
    .short 0x0023
    .short 0x0001
    .short 0x0027
    .short 0x0001
    .short 0x0004
    .short 0x0004
    .short 0x0006
    .short 0x0007
    .short 0x0004
    .short 0x0004
    .short 0x0028
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0254:
    .short 0x0023
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0027
    .short 0x0001
    .short 0x0004
    .short 0x0004
    .short 0x0006
    .short 0x0007
    .short 0x0004
    .short 0x0004
    .short 0x0028
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0274:
    .short 0x0004
    .short 0x0004
    .short 0x0006
    .short 0x0007
    .short 0x0004
    .short 0x0004
    .short 0x0028
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0288:
    .short 0x0012
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0290:
    .short 0x0004
    .short 0x000B
    .short 0xFD13

    .balign 4, 0
_0298:
    .short 0x0004
    .short 0x0006
    .short 0x0006
    .short 0x0004
    .short 0x0004
    .short 0x0004
    .short 0x0013
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_02AC:
    .short 0x0006
    .short 0x0001
    .short 0x0004
    .short 0x0006
    .short 0x0006
    .short 0x0004
    .short 0x0004
    .short 0x0003
    .short 0x0013
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_02C4:
    .short 0x0023
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0010
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_02D4:
    .short 0x0004
    .short 0x0001
    .short 0x0007
    .short 0x0004
    .short 0x0004
    .short 0x0003
    .short 0x0012
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_02E8:
    .short 0x0004
    .short 0x0001
    .short 0x0007
    .short 0x0004
    .short 0x0004
    .short 0x0002
    .short 0x0012
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_02FC:
    .short 0x0004
    .short 0x0001
    .short 0x0007
    .short 0x0003
    .short 0x0004
    .short 0x0003
    .short 0x0012
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0310:
    .short 0x0007
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0318:
    .short 0x0006
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0320:
    .short 0x0028
    .short 0x0001
    .short 0x0005
    .short 0x0003
    .short 0x0027
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0330:
    .short 0x001F
    .short 0x0001
    .short 0x0018
    .short 0x0001
    .short 0x001A
    .short 0x0001
    .short 0x0019
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0344:
    .short 0x001F
    .short 0x0001
    .short 0x0018
    .short 0x0001
    .short 0x001A
    .short 0x0001
    .short 0x0019
    .short 0x0001
    .short 0x001B
    .short 0x0001
    .short 0x0004
    .short 0x0003
    .short 0x001E
    .short 0x0001
    .short 0x0019
    .short 0x0001
    .short 0x001B
    .short 0x0001
    .short 0x0018
    .short 0x0001
    .short 0x001A
    .short 0x0001
    .short 0x0019
    .short 0x0001
    .short 0x001B
    .short 0x0001
    .short 0x0018
    .short 0x0001
    .short 0x001A
    .short 0x0001
    .short 0x0019
    .short 0x0001
    .short 0x0007
    .short 0x0004
    .short 0x001C
    .short 0x0001
    .short 0x001A
    .short 0x0001
    .short 0x0019
    .short 0x0001
    .short 0x001B
    .short 0x0001
    .short 0x0004
    .short 0x0004
    .short 0x001E
    .short 0x0001
    .short 0x0019
    .short 0x0001
    .short 0x001B
    .short 0x0001
    .short 0x0018
    .short 0x0001
    .short 0x001A
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_03B4:
    .short 0x0005
    .short 0x0007
    .short 0xFD13

    .balign 4, 0
_03BC:
    .short 0x0023
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0004
    .short 0x0007
    .short 0xFD13

    .balign 4, 0
_03D0:
    .short 0x0011
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_03D8:
    .short 0x0026
    .short 0x0001
    .short 0x0026
    .short 0x0001
    .short 0x0026
    .short 0x0001
    .short 0x0025
    .short 0x0001
    .short 0x0013
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_03F0:
    .short 0x0007
    .short 0x0002
    .short 0x0005
    .short 0x0008
    .short 0xFD13

    .balign 4, 0
_03FC:
    .short 0x0007
    .short 0x0002
    .short 0x0005
    .short 0x0008
    .short 0xFD13

    .balign 4, 0
_0408:
    .short 0x0007
    .short 0x0001
    .short 0x0005
    .short 0x0008
    .short 0xFD13

    .balign 4, 0
_0414:
    .short 0x0006
    .short 0x0001
    .short 0x0013
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0420:
    .short 0x0010
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0428:
    .short 0x0013
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0430:
    .short 0x0012
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0438:
    .short 0x0003
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0440:
    .short 0x0003
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0448:
    .short 0x0002
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0450:
    .short 0x0002
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0458:
    .short 0x0003
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0460:
    .short 0x0003
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0468:
    .short 0x0002
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0470:
    .short 0x0002
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0478:
    .short 0x0000
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0480:
    .short 0x0007
    .short 0x0002
    .short 0xFD13

    .balign 4, 0
_0488:
    .short 0x0007
    .short 0x0002
    .short 0x0011
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0494:
    .short 0x0006
    .short 0x0002
    .short 0xFD13

    .balign 4, 0
_049C:
    .short 0x0004
    .short 0x0001
    .short 0x0006
    .short 0x0002
    .short 0xFD13

    .balign 4, 0
_04A8:
    .short 0x0007
    .short 0x0004
    .short 0xFD13

    .balign 4, 0
_04B0:
    .short 0x0007
    .short 0x0001
    .short 0x0004
    .short 0x0001
    .short 0x0007
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_04C0:
    .short 0x0006
    .short 0x0002
    .short 0xFD13

    .balign 4, 0
_04C8:
    .short 0x0006
    .short 0x0002
    .short 0xFD13

    .balign 4, 0
_04D0:
    .short 0x0007
    .short 0x0002
    .short 0x0010
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_04DC:
    .short 0x0006
    .short 0x0001
    .short 0x0010
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_04E8:
    .short 0x0007
    .short 0x0001
    .short 0x0005
    .short 0x0001
    .short 0x0013
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_04F8:
    .short 0x0023
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0010
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0508:
    .short 0x0023
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0022
    .short 0x0001
    .short 0x0010
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_051C:
    .short 0x0023
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0010
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0530:
    .short 0x0005
    .short 0x0001
    .short 0x0012
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0004
    .short 0x0001
    .short 0x0012
    .short 0x0001
    .short 0x0005
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0004
    .short 0x0001
    .short 0x0012
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0560:
    .short 0x0015
    .short 0x0001
    .short 0x0015
    .short 0x0001
    .short 0x0014
    .short 0x0001
    .short 0x0014
    .short 0x0001
    .short 0x0015
    .short 0x0001
    .short 0x0015
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_057C:
    .short 0x0012
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0013
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0012
    .short 0x0001
    .short 0x0013
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0011
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_05AC:
    .short 0x0005
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_05B4:
    .short 0x0004
    .short 0x0001
    .short 0x0011
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_05C0:
    .short 0x0019
    .short 0x0001
    .short 0x001D
    .short 0x0001
    .short 0x0011
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_05D0:
    .short 0x0013
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_05D8:
    .short 0x0012
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_05E0:
    .short 0x0011
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_05E8:
    .short 0x0023
    .short 0x0001
    .short 0x0002
    .short 0x0001
    .short 0x0001
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_05F8:
    .short 0x0005
    .short 0x0001
    .short 0x0006
    .short 0x0003
    .short 0xFD13

    .balign 4, 0
_0604:
    .short 0x0005
    .short 0x0001
    .short 0x0007
    .short 0x0003
    .short 0xFD13

    .balign 4, 0
_0610:
    .short 0x0007
    .short 0x0003
    .short 0x0004
    .short 0x0001
    .short 0x0011
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0620:
    .short 0x0007
    .short 0x0003
    .short 0x0004
    .short 0x0001
    .short 0x0011
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0630:
    .short 0x0006
    .short 0x0003
    .short 0x0004
    .short 0x0001
    .short 0x0011
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0640:
    .short 0x000C
    .short 0x0005
    .short 0x0013
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_064C:
    .short 0x000D
    .short 0x0006
    .short 0xFD13

    .balign 4, 0
_0654:
    .short 0x0012
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_065C:
    .short 0x0013
    .short 0x0001
    .short 0xFD13

_0662:
    FrontierScrCmd_3E 0x40BE, 0x8001
    FrontierScrCmd_3E 0x4003, 0x8003
    FrontierScrCmd_3E 0x4002, 0x8004
    FrontierScrCmd_3E 0x4005, 0x8005
    FrontierScrCmd_3E 0x4006, 0x8006
    FrontierScrCmd_6C
    FrontierScrCmd_B8 0x8003, 0x8001, 0x8004, 0x8005, 0x8006, 0x8008
    FrontierScrCmd_40 0x8007
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _06BE
    FrontierScrCmd_06 0x800F, 231
    FrontierScrCmd_0C _333A
    FrontierScrCmd_0A _06DC
    FrontierScrCmd_01

_06BE:
    FrontierScrCmd_0C _225F
    FrontierScrCmd_4A 43
    FrontierScrCmd_06 0x800F, 232
    FrontierScrCmd_0C _335A
    FrontierScrCmd_0A _06DC
    FrontierScrCmd_01

_06DC:
    FrontierScrCmd_0C _32C0
    FrontierScrCmd_13 6, 1, 1, 0
    FrontierScrCmd_14
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _0742
    FrontierScrCmd_28 20, _0274
    FrontierScrCmd_28 4, _0238
    FrontierScrCmd_29
    FrontierScrCmd_55 0x603
    FrontierScrCmd_57 0x603
    FrontierScrCmd_13 6, 1, 0, 0
    FrontierScrCmd_14
    FrontierScrCmd_25 0
    FrontierScrCmd_25 20
    FrontierScrCmd_25 4
    FrontierScrCmd_23 0x800F
    FrontierScrCmd_0A _0788
    FrontierScrCmd_01

_0742:
    FrontierScrCmd_28 20, _0274
    FrontierScrCmd_28 1, _0238
    FrontierScrCmd_28 2, _0254
    FrontierScrCmd_29
    FrontierScrCmd_55 0x603
    FrontierScrCmd_57 0x603
    FrontierScrCmd_13 6, 1, 0, 0
    FrontierScrCmd_14
    FrontierScrCmd_25 1
    FrontierScrCmd_25 2
    FrontierScrCmd_25 20
    FrontierScrCmd_23 0x800F
    FrontierScrCmd_0A _0788
    FrontierScrCmd_01

_0788:
    FrontierScrCmd_03 16
    FrontierScrCmd_06 0x800D, 0
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _07BC
    FrontierScrCmd_06 0x800F, 231
    FrontierScrCmd_0C _3383
    FrontierScrCmd_0A _07D9
    FrontierScrCmd_01

_07BC:
    FrontierScrCmd_BF 37, 0, 0, 0x8008
    FrontierScrCmd_06 0x800F, 232
    FrontierScrCmd_0C _33A3
    FrontierScrCmd_0A _07D9
    FrontierScrCmd_01

_07D9:
    FrontierScrCmd_05 1, 0x8008
    FrontierScrCmd_0C _33CC
    FrontierScrCmd_0C _33E3
    FrontierScrCmd_0C _3246
    FrontierScrCmd_0C _32CB
    FrontierScrCmd_13 6, 1, 1, 0
    FrontierScrCmd_14
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _0821
    FrontierScrCmd_0A _0883
    FrontierScrCmd_01

_0821:
    FrontierScrCmd_36
    FrontierScrCmd_35 203
    FrontierScrCmd_36
    FrontierScrCmd_0C _0860
    FrontierScrCmd_0A _0883
    FrontierScrCmd_01

_0837:
    FrontierScrCmd_06 0x8002, 0
    FrontierScrCmd_C1 0x8002, 0, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _0837
    FrontierScrCmd_C2 0x8002
    FrontierScrCmd_36
    FrontierScrCmd_0A _0883
    FrontierScrCmd_01

_0860:
    FrontierScrCmd_06 0x8002, 0
    FrontierScrCmd_C1 0x8002, 0, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _0860
    FrontierScrCmd_C2 0x8002
    FrontierScrCmd_36
    FrontierScrCmd_0D

_0883:
    FrontierScrCmd_B9 0x8003
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _08A5
    FrontierScrCmd_0A _091F
    FrontierScrCmd_01

_08A5:
    FrontierScrCmd_36
    FrontierScrCmd_35 204
    FrontierScrCmd_36
    FrontierScrCmd_0A _08B5
    FrontierScrCmd_01

_08B5:
    FrontierScrCmd_06 0x8002, 1
    FrontierScrCmd_C1 0x8002, 0, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _08B5
    FrontierScrCmd_C2 0x8002
    FrontierScrCmd_36
    FrontierScrCmd_36
    FrontierScrCmd_35 158
    FrontierScrCmd_36
    FrontierScrCmd_C9 1
    FrontierScrCmd_0A _08EA
    FrontierScrCmd_01

_08EA:
    FrontierScrCmd_06 0x8002, 5
    FrontierScrCmd_C1 0x8002, 0, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _08EA
    FrontierScrCmd_C2 0x8002
    FrontierScrCmd_36
    FrontierScrCmd_36
    FrontierScrCmd_35 202
    FrontierScrCmd_36
    FrontierScrCmd_C9 0
    FrontierScrCmd_0A _091F
    FrontierScrCmd_01

_091F:
    FrontierScrCmd_06 0x8003, 0
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _0975
    FrontierScrCmd_28 0, _0290
    FrontierScrCmd_28 4, _0298
    FrontierScrCmd_28 20, _02C4
    FrontierScrCmd_28 6, _0530
    FrontierScrCmd_28 9, _0560
    FrontierScrCmd_28 11, _057C
    FrontierScrCmd_29
    FrontierScrCmd_0A _09B7
    FrontierScrCmd_01

_0975:
    FrontierScrCmd_28 0, _0290
    FrontierScrCmd_28 1, _0298
    FrontierScrCmd_28 2, _02AC
    FrontierScrCmd_28 20, _02C4
    FrontierScrCmd_28 6, _0530
    FrontierScrCmd_28 9, _0560
    FrontierScrCmd_28 11, _057C
    FrontierScrCmd_29
    FrontierScrCmd_0A _09B7
    FrontierScrCmd_01

_09B7:
    FrontierScrCmd_25 20
    FrontierScrCmd_23 0x800F
    FrontierScrCmd_0C _3198
    FrontierScrCmd_BF 23, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _09F9
    FrontierScrCmd_0C _0A07
    FrontierScrCmd_28 3, _05E8
    FrontierScrCmd_29
    FrontierScrCmd_06 0x8003, 1
    FrontierScrCmd_0A _28B3
    FrontierScrCmd_01

_09F9:
    FrontierScrCmd_0C _0A07
    FrontierScrCmd_0A _0A8F
    FrontierScrCmd_01

_0A07:
    FrontierScrCmd_05 1, 0x8008
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0E 1, _0A2D
    FrontierScrCmd_BD
    FrontierScrCmd_0C _2EB2
    FrontierScrCmd_0D

_0A2D:
    FrontierScrCmd_BF 52, 0, 0, 0x8008
    FrontierScrCmd_36
    FrontierScrCmd_35 205
    FrontierScrCmd_36
    FrontierScrCmd_0A _0A46
    FrontierScrCmd_01

_0A46:
    FrontierScrCmd_06 0x8002, 2
    FrontierScrCmd_C1 0x8002, 0, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _0A46
    FrontierScrCmd_C2 0x8002
    FrontierScrCmd_36
    FrontierScrCmd_36
    FrontierScrCmd_35 206
    FrontierScrCmd_36
    FrontierScrCmd_BF 49, 0, 0, 0x8008
    FrontierScrCmd_05 1, 0x8008
    FrontierScrCmd_BF 50, 0, 0, 0x8008
    FrontierScrCmd_05 1, 0x8008
    FrontierScrCmd_0D

_0A8F:
    FrontierScrCmd_28 3, _05E8
    FrontierScrCmd_29
    FrontierScrCmd_11 19
    FrontierScrCmd_55 0x60F
    FrontierScrCmd_BF 23, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0E 1, _0B1A
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _0AD5
    FrontierScrCmd_0A _0B20
    FrontierScrCmd_01

_0AD5:
    FrontierScrCmd_10 1
    FrontierScrCmd_0A _0AE1
    FrontierScrCmd_01

_0AE1:
    FrontierScrCmd_36
    FrontierScrCmd_35 140
    FrontierScrCmd_36
    FrontierScrCmd_0A _0B20
    FrontierScrCmd_01
    FrontierScrCmd_41 0, 3, 1
    FrontierScrCmd_BF 39, 0x8005, 0x8006, 0x8008
    FrontierScrCmd_05 120, 0x8008
    FrontierScrCmd_42 0
    FrontierScrCmd_05 60, 0x8008
    FrontierScrCmd_08 0x8005, 1
    FrontierScrCmd_0D

_0B1A:
    FrontierScrCmd_11 0
    FrontierScrCmd_0D

_0B20:
    FrontierScrCmd_0C _32A0
    FrontierScrCmd_7A 0, 0x8008
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _0B50
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _0B8A
    FrontierScrCmd_01

_0B50:
    FrontierScrCmd_BF 23, 0, 0, 0x8008
    FrontierScrCmd_08 0x8008, 1
    FrontierScrCmd_7A 0, 0x8008
    FrontierScrCmd_11 20
    FrontierScrCmd_3A
    FrontierScrCmd_12
    FrontierScrCmd_0C _2229
    FrontierScrCmd_28 3, _05AC
    FrontierScrCmd_29
    FrontierScrCmd_11 21
    FrontierScrCmd_3A
    FrontierScrCmd_0A _0BD4
    FrontierScrCmd_01

_0B8A:
    FrontierScrCmd_BF 23, 0, 0, 0x8008
    FrontierScrCmd_08 0x8008, 1
    FrontierScrCmd_7A 0, 0x8008
    FrontierScrCmd_10 20
    FrontierScrCmd_05 30, 0x8008
    FrontierScrCmd_12
    FrontierScrCmd_0C _2229
    FrontierScrCmd_28 3, _05AC
    FrontierScrCmd_29
    FrontierScrCmd_10 21
    FrontierScrCmd_05 30, 0x8008
    FrontierScrCmd_36
    FrontierScrCmd_35 143
    FrontierScrCmd_36
    FrontierScrCmd_0A _0BD4
    FrontierScrCmd_01

_0BD4:
    FrontierScrCmd_13 6, 1, 0, 0
    FrontierScrCmd_14
    FrontierScrCmd_12
    FrontierScrCmd_BF 48, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0E 1, _0C9E
    FrontierScrCmd_20 0x8008, 2
    FrontierScrCmd_0E 1, _0C9E
    FrontierScrCmd_0C _32A0
    FrontierScrCmd_0C _2F24
    FrontierScrCmd_0C _2F4A
    FrontierScrCmd_0C _3272
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0E 1, _0CA4
    FrontierScrCmd_C3
    FrontierScrCmd_2A _01E8
    FrontierScrCmd_0C _3246
    FrontierScrCmd_0C _2EEC
    FrontierScrCmd_BF 11, 0, 0, 0x8008
    FrontierScrCmd_C5
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0E 1, _227E
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0E 1, _0860
    FrontierScrCmd_0C _32CB
    FrontierScrCmd_0C _32EA
    FrontierScrCmd_13 6, 1, 1, 0
    FrontierScrCmd_14
    FrontierScrCmd_0A _0CD6
    FrontierScrCmd_01

_0C9E:
    FrontierScrCmd_42 3
    FrontierScrCmd_0D

_0CA4:
    FrontierScrCmd_36
    FrontierScrCmd_35 200
    FrontierScrCmd_36
    FrontierScrCmd_0D

_0CAE:
    FrontierScrCmd_2C _01EC
    FrontierScrCmd_31 0, 0
    FrontierScrCmd_0D

_0CBC:
    FrontierScrCmd_2C _01F8
    FrontierScrCmd_31 1, 1
    FrontierScrCmd_0D

_0CCA:
    FrontierScrCmd_2D 0
    FrontierScrCmd_0D

_0CD0:
    FrontierScrCmd_2D 1
    FrontierScrCmd_0D

_0CD6:
    FrontierScrCmd_41 0, 3, 1
    FrontierScrCmd_BF 16, 0, 0, 0x8008
    FrontierScrCmd_55 0x60F
    FrontierScrCmd_07 0x8010, 0x8008
    FrontierScrCmd_20 0x8010, 0
    FrontierScrCmd_0B 1, _0E93
    FrontierScrCmd_20 0x8010, 1
    FrontierScrCmd_0B 1, _0F5F
    FrontierScrCmd_20 0x8010, 2
    FrontierScrCmd_0B 1, _100C
    FrontierScrCmd_20 0x8010, 3
    FrontierScrCmd_0B 1, _10C3
    FrontierScrCmd_20 0x8010, 4
    FrontierScrCmd_0B 1, _1170
    FrontierScrCmd_20 0x8010, 5
    FrontierScrCmd_0B 1, _1227
    FrontierScrCmd_20 0x8010, 6
    FrontierScrCmd_0B 1, _12D4
    FrontierScrCmd_20 0x8010, 7
    FrontierScrCmd_0B 1, _136D
    FrontierScrCmd_20 0x8010, 8
    FrontierScrCmd_0B 1, _1406
    FrontierScrCmd_20 0x8010, 9
    FrontierScrCmd_0B 1, _14C8
    FrontierScrCmd_20 0x8010, 10
    FrontierScrCmd_0B 1, _158A
    FrontierScrCmd_20 0x8010, 11
    FrontierScrCmd_0B 1, _1641
    FrontierScrCmd_20 0x8010, 12
    FrontierScrCmd_0B 1, _16EE
    FrontierScrCmd_20 0x8010, 13
    FrontierScrCmd_0B 1, _17A5
    FrontierScrCmd_20 0x8010, 14
    FrontierScrCmd_0B 1, _1852
    FrontierScrCmd_20 0x8010, 15
    FrontierScrCmd_0B 1, _1909
    FrontierScrCmd_20 0x8010, 16
    FrontierScrCmd_0B 1, _19A2
    FrontierScrCmd_20 0x8010, 17
    FrontierScrCmd_0B 1, _1A3B
    FrontierScrCmd_20 0x8010, 18
    FrontierScrCmd_0B 1, _1B07
    FrontierScrCmd_20 0x8010, 19
    FrontierScrCmd_0B 1, _1B37
    FrontierScrCmd_20 0x8010, 20
    FrontierScrCmd_0B 1, _1B67
    FrontierScrCmd_20 0x8010, 21
    FrontierScrCmd_0B 1, _1B91
    FrontierScrCmd_20 0x8010, 22
    FrontierScrCmd_0B 1, _1BC1
    FrontierScrCmd_20 0x8010, 23
    FrontierScrCmd_0B 1, _1BEB
    FrontierScrCmd_20 0x8010, 24
    FrontierScrCmd_0B 1, _1E5C
    FrontierScrCmd_20 0x8010, 25
    FrontierScrCmd_0B 1, _1E86
    FrontierScrCmd_20 0x8010, 26
    FrontierScrCmd_0B 1, _1EB0
    FrontierScrCmd_20 0x8010, 27
    FrontierScrCmd_0B 1, _1C15
    FrontierScrCmd_20 0x8010, 28
    FrontierScrCmd_0B 1, _1EDA
    FrontierScrCmd_20 0x8010, 29
    FrontierScrCmd_0B 1, _1FFC
    FrontierScrCmd_20 0x8010, 30
    FrontierScrCmd_0B 1, _2086
    FrontierScrCmd_20 0x8010, 31
    FrontierScrCmd_0B 1, _1F71
    FrontierScrCmd_01

_0E93:
    FrontierScrCmd_11 22
    FrontierScrCmd_0C _3288
    FrontierScrCmd_0C _20AA
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    FrontierScrCmd_20 0x8006, 0
    FrontierScrCmd_0B 1, _0F1F
    FrontierScrCmd_20 0x8006, 1
    FrontierScrCmd_0B 1, _0F39
    FrontierScrCmd_01

_0EC8:
    FrontierScrCmd_0C _32D6
    FrontierScrCmd_0C _21C5
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    FrontierScrCmd_20 0x8006, 0
    FrontierScrCmd_0E 1, _0F53
    FrontierScrCmd_20 0x8006, 1
    FrontierScrCmd_0E 1, _0F59
    FrontierScrCmd_55 0x60F
    FrontierScrCmd_0A _2357
    FrontierScrCmd_01

_0F1F:
    FrontierScrCmd_06 0x8005, 24
    FrontierScrCmd_06 0x8006, 26
    FrontierScrCmd_06 0x800E, 25
    FrontierScrCmd_0A _0EC8
    FrontierScrCmd_01

_0F39:
    FrontierScrCmd_06 0x8005, 24
    FrontierScrCmd_06 0x8006, 26
    FrontierScrCmd_06 0x800E, 27
    FrontierScrCmd_0A _0EC8
    FrontierScrCmd_01

_0F53:
    FrontierScrCmd_11 23
    FrontierScrCmd_0D

_0F59:
    FrontierScrCmd_11 24
    FrontierScrCmd_0D

_0F5F:
    FrontierScrCmd_11 22
    FrontierScrCmd_0C _3288
    FrontierScrCmd_0C _20AA
    FrontierScrCmd_0C _32D6
    FrontierScrCmd_06 0x8005, 34
    FrontierScrCmd_06 0x8006, 35
    FrontierScrCmd_0C _21A9
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    FrontierScrCmd_20 0x8006, 0
    FrontierScrCmd_0E 1, _0FC8
    FrontierScrCmd_20 0x8006, 1
    FrontierScrCmd_0E 1, _0FE4
    FrontierScrCmd_55 0x60F
    FrontierScrCmd_0A _2357
    FrontierScrCmd_01

_0FC8:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _1000
    FrontierScrCmd_11 27
    FrontierScrCmd_0D

_0FE4:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _1006
    FrontierScrCmd_11 28
    FrontierScrCmd_0D

_1000:
    FrontierScrCmd_11 56
    FrontierScrCmd_0D

_1006:
    FrontierScrCmd_11 57
    FrontierScrCmd_0D

_100C:
    FrontierScrCmd_11 22
    FrontierScrCmd_0C _3288
    FrontierScrCmd_0C _20AA
    FrontierScrCmd_0C _32D6
    FrontierScrCmd_06 0x8005, 46
    FrontierScrCmd_06 0x8006, 47
    FrontierScrCmd_0C _21A9
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    FrontierScrCmd_20 0x8006, 0
    FrontierScrCmd_0E 1, _107F
    FrontierScrCmd_20 0x8006, 1
    FrontierScrCmd_0E 1, _109B
    FrontierScrCmd_55 0x60F
    FrontierScrCmd_0A _2357
    FrontierScrCmd_01

_107F:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _10B7
    FrontierScrCmd_11 29
    FrontierScrCmd_0D

_109B:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _10BD
    FrontierScrCmd_11 30
    FrontierScrCmd_0D

_10B7:
    FrontierScrCmd_11 58
    FrontierScrCmd_0D

_10BD:
    FrontierScrCmd_11 59
    FrontierScrCmd_0D

_10C3:
    FrontierScrCmd_11 22
    FrontierScrCmd_0C _3288
    FrontierScrCmd_0C _20AA
    FrontierScrCmd_0C _32D6
    FrontierScrCmd_06 0x8005, 38
    FrontierScrCmd_06 0x8006, 39
    FrontierScrCmd_0C _21A9
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    FrontierScrCmd_20 0x8006, 0
    FrontierScrCmd_0E 1, _112C
    FrontierScrCmd_20 0x8006, 1
    FrontierScrCmd_0E 1, _1148
    FrontierScrCmd_55 0x60F
    FrontierScrCmd_0A _2357
    FrontierScrCmd_01

_112C:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _1164
    FrontierScrCmd_11 31
    FrontierScrCmd_0D

_1148:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _116A
    FrontierScrCmd_11 32
    FrontierScrCmd_0D

_1164:
    FrontierScrCmd_11 60
    FrontierScrCmd_0D

_116A:
    FrontierScrCmd_11 61
    FrontierScrCmd_0D

_1170:
    FrontierScrCmd_11 22
    FrontierScrCmd_0C _3288
    FrontierScrCmd_0C _20AA
    FrontierScrCmd_0C _32D6
    FrontierScrCmd_06 0x8005, 42
    FrontierScrCmd_06 0x8006, 43
    FrontierScrCmd_0C _21A9
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    FrontierScrCmd_20 0x8006, 0
    FrontierScrCmd_0E 1, _11E3
    FrontierScrCmd_20 0x8006, 1
    FrontierScrCmd_0E 1, _11FF
    FrontierScrCmd_55 0x60F
    FrontierScrCmd_0A _2357
    FrontierScrCmd_01

_11E3:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _121B
    FrontierScrCmd_11 33
    FrontierScrCmd_0D

_11FF:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _1221
    FrontierScrCmd_11 34
    FrontierScrCmd_0D

_121B:
    FrontierScrCmd_11 62
    FrontierScrCmd_0D

_1221:
    FrontierScrCmd_11 63
    FrontierScrCmd_0D

_1227:
    FrontierScrCmd_11 22
    FrontierScrCmd_0C _3288
    FrontierScrCmd_0C _20AA
    FrontierScrCmd_0C _32D6
    FrontierScrCmd_06 0x8005, 30
    FrontierScrCmd_06 0x8006, 31
    FrontierScrCmd_0C _21A9
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    FrontierScrCmd_20 0x8006, 0
    FrontierScrCmd_0E 1, _1290
    FrontierScrCmd_20 0x8006, 1
    FrontierScrCmd_0E 1, _12AC
    FrontierScrCmd_55 0x60F
    FrontierScrCmd_0A _2357
    FrontierScrCmd_01

_1290:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _12C8
    FrontierScrCmd_11 35
    FrontierScrCmd_0D

_12AC:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _12CE
    FrontierScrCmd_11 36
    FrontierScrCmd_0D

_12C8:
    FrontierScrCmd_11 64
    FrontierScrCmd_0D

_12CE:
    FrontierScrCmd_11 65
    FrontierScrCmd_0D

_12D4:
    FrontierScrCmd_11 22
    FrontierScrCmd_0C _20AA
    FrontierScrCmd_12
    FrontierScrCmd_0C _2211
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 15, 1, 0, 0x8008
    FrontierScrCmd_79 2, 0x8008
    FrontierScrCmd_C6 1, 0, 1
    FrontierScrCmd_C6 1, 1, 1
    FrontierScrCmd_C6 1, 2, 1
    FrontierScrCmd_C6 1, 3, 1
    FrontierScrCmd_11 39
    FrontierScrCmd_12
    FrontierScrCmd_0C _221D
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    FrontierScrCmd_20 0x8006, 0
    FrontierScrCmd_0E 1, _1358
    FrontierScrCmd_20 0x8006, 1
    FrontierScrCmd_0E 1, _135E
    FrontierScrCmd_55 0x60F
    FrontierScrCmd_0A _2357
    FrontierScrCmd_01

_1358:
    FrontierScrCmd_11 37
    FrontierScrCmd_0D

_135E:
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    FrontierScrCmd_11 38
    FrontierScrCmd_0D

_136D:
    FrontierScrCmd_11 22
    FrontierScrCmd_0C _20AA
    FrontierScrCmd_12
    FrontierScrCmd_0C _2211
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 15, 1, 0, 0x8008
    FrontierScrCmd_79 2, 0x8008
    FrontierScrCmd_C6 1, 0, 1
    FrontierScrCmd_C6 1, 1, 1
    FrontierScrCmd_C6 1, 2, 1
    FrontierScrCmd_C6 1, 3, 1
    FrontierScrCmd_11 39
    FrontierScrCmd_12
    FrontierScrCmd_0C _221D
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    FrontierScrCmd_20 0x8006, 0
    FrontierScrCmd_0E 1, _13F1
    FrontierScrCmd_20 0x8006, 1
    FrontierScrCmd_0E 1, _13F7
    FrontierScrCmd_55 0x60F
    FrontierScrCmd_0A _2357
    FrontierScrCmd_01

_13F1:
    FrontierScrCmd_11 37
    FrontierScrCmd_0D

_13F7:
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    FrontierScrCmd_11 38
    FrontierScrCmd_0D

_1406:
    FrontierScrCmd_11 22
    FrontierScrCmd_0C _3288
    FrontierScrCmd_0C _20AA
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    FrontierScrCmd_20 0x8006, 0
    FrontierScrCmd_0B 1, _1488
    FrontierScrCmd_20 0x8006, 1
    FrontierScrCmd_0B 1, _14A2
    FrontierScrCmd_01

_143B:
    FrontierScrCmd_0C _32D6
    FrontierScrCmd_0C _21C5
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    FrontierScrCmd_20 0x8006, 0
    FrontierScrCmd_0E 1, _14BC
    FrontierScrCmd_20 0x8006, 1
    FrontierScrCmd_0E 1, _14C2
    FrontierScrCmd_55 0x60F
    FrontierScrCmd_0A _2357
    FrontierScrCmd_01

_1488:
    FrontierScrCmd_06 0x8005, 16
    FrontierScrCmd_06 0x8006, 18
    FrontierScrCmd_06 0x800E, 17
    FrontierScrCmd_0A _143B
    FrontierScrCmd_01

_14A2:
    FrontierScrCmd_06 0x8005, 16
    FrontierScrCmd_06 0x8006, 18
    FrontierScrCmd_06 0x800E, 19
    FrontierScrCmd_0A _143B
    FrontierScrCmd_01

_14BC:
    FrontierScrCmd_11 25
    FrontierScrCmd_0D

_14C2:
    FrontierScrCmd_11 26
    FrontierScrCmd_0D

_14C8:
    FrontierScrCmd_11 22
    FrontierScrCmd_0C _3294
    FrontierScrCmd_0C _2092
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    FrontierScrCmd_20 0x8006, 0
    FrontierScrCmd_0B 1, _154A
    FrontierScrCmd_20 0x8006, 1
    FrontierScrCmd_0B 1, _1564
    FrontierScrCmd_01

_14FD:
    FrontierScrCmd_0C _32D6
    FrontierScrCmd_0C _21C5
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    FrontierScrCmd_20 0x8006, 0
    FrontierScrCmd_0E 1, _157E
    FrontierScrCmd_20 0x8006, 1
    FrontierScrCmd_0E 1, _1584
    FrontierScrCmd_55 0x60F
    FrontierScrCmd_0A _2357
    FrontierScrCmd_01

_154A:
    FrontierScrCmd_06 0x8005, 20
    FrontierScrCmd_06 0x8006, 22
    FrontierScrCmd_06 0x800E, 21
    FrontierScrCmd_0A _14FD
    FrontierScrCmd_01

_1564:
    FrontierScrCmd_06 0x8005, 20
    FrontierScrCmd_06 0x8006, 22
    FrontierScrCmd_06 0x800E, 23
    FrontierScrCmd_0A _14FD
    FrontierScrCmd_01

_157E:
    FrontierScrCmd_11 23
    FrontierScrCmd_0D

_1584:
    FrontierScrCmd_11 24
    FrontierScrCmd_0D

_158A:
    FrontierScrCmd_11 22
    FrontierScrCmd_0C _3294
    FrontierScrCmd_0C _2092
    FrontierScrCmd_0C _32D6
    FrontierScrCmd_06 0x8005, 32
    FrontierScrCmd_06 0x8006, 33
    FrontierScrCmd_0C _21A9
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    FrontierScrCmd_20 0x8006, 0
    FrontierScrCmd_0E 1, _15FD
    FrontierScrCmd_20 0x8006, 1
    FrontierScrCmd_0E 1, _1619
    FrontierScrCmd_55 0x60F
    FrontierScrCmd_0A _2357
    FrontierScrCmd_01

_15FD:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _1635
    FrontierScrCmd_11 27
    FrontierScrCmd_0D

_1619:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _163B
    FrontierScrCmd_11 28
    FrontierScrCmd_0D

_1635:
    FrontierScrCmd_11 56
    FrontierScrCmd_0D

_163B:
    FrontierScrCmd_11 57
    FrontierScrCmd_0D

_1641:
    FrontierScrCmd_11 22
    FrontierScrCmd_0C _3294
    FrontierScrCmd_0C _2092
    FrontierScrCmd_0C _32D6
    FrontierScrCmd_06 0x8005, 44
    FrontierScrCmd_06 0x8006, 45
    FrontierScrCmd_0C _21A9
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    FrontierScrCmd_20 0x8006, 0
    FrontierScrCmd_0E 1, _16AA
    FrontierScrCmd_20 0x8006, 1
    FrontierScrCmd_0E 1, _16C6
    FrontierScrCmd_55 0x60F
    FrontierScrCmd_0A _2357
    FrontierScrCmd_01

_16AA:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _16E2
    FrontierScrCmd_11 29
    FrontierScrCmd_0D

_16C6:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _16E8
    FrontierScrCmd_11 30
    FrontierScrCmd_0D

_16E2:
    FrontierScrCmd_11 58
    FrontierScrCmd_0D

_16E8:
    FrontierScrCmd_11 59
    FrontierScrCmd_0D

_16EE:
    FrontierScrCmd_11 22
    FrontierScrCmd_0C _3294
    FrontierScrCmd_0C _2092
    FrontierScrCmd_0C _32D6
    FrontierScrCmd_06 0x8005, 36
    FrontierScrCmd_06 0x8006, 37
    FrontierScrCmd_0C _21A9
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    FrontierScrCmd_20 0x8006, 0
    FrontierScrCmd_0E 1, _1761
    FrontierScrCmd_20 0x8006, 1
    FrontierScrCmd_0E 1, _177D
    FrontierScrCmd_55 0x60F
    FrontierScrCmd_0A _2357
    FrontierScrCmd_01

_1761:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _1799
    FrontierScrCmd_11 31
    FrontierScrCmd_0D

_177D:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _179F
    FrontierScrCmd_11 32
    FrontierScrCmd_0D

_1799:
    FrontierScrCmd_11 60
    FrontierScrCmd_0D

_179F:
    FrontierScrCmd_11 61
    FrontierScrCmd_0D

_17A5:
    FrontierScrCmd_11 22
    FrontierScrCmd_0C _3294
    FrontierScrCmd_0C _2092
    FrontierScrCmd_0C _32D6
    FrontierScrCmd_06 0x8005, 40
    FrontierScrCmd_06 0x8006, 41
    FrontierScrCmd_0C _21A9
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    FrontierScrCmd_20 0x8006, 0
    FrontierScrCmd_0E 1, _180E
    FrontierScrCmd_20 0x8006, 1
    FrontierScrCmd_0E 1, _182A
    FrontierScrCmd_55 0x60F
    FrontierScrCmd_0A _2357
    FrontierScrCmd_01

_180E:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _1846
    FrontierScrCmd_11 33
    FrontierScrCmd_0D

_182A:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _184C
    FrontierScrCmd_11 34
    FrontierScrCmd_0D

_1846:
    FrontierScrCmd_11 62
    FrontierScrCmd_0D

_184C:
    FrontierScrCmd_11 63
    FrontierScrCmd_0D

_1852:
    FrontierScrCmd_11 22
    FrontierScrCmd_0C _3294
    FrontierScrCmd_0C _2092
    FrontierScrCmd_0C _32D6
    FrontierScrCmd_06 0x8005, 28
    FrontierScrCmd_06 0x8006, 29
    FrontierScrCmd_0C _21A9
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    FrontierScrCmd_20 0x8006, 0
    FrontierScrCmd_0E 1, _18C5
    FrontierScrCmd_20 0x8006, 1
    FrontierScrCmd_0E 1, _18E1
    FrontierScrCmd_55 0x60F
    FrontierScrCmd_0A _2357
    FrontierScrCmd_01

_18C5:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _18FD
    FrontierScrCmd_11 35
    FrontierScrCmd_0D

_18E1:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _1903
    FrontierScrCmd_11 36
    FrontierScrCmd_0D

_18FD:
    FrontierScrCmd_11 64
    FrontierScrCmd_0D

_1903:
    FrontierScrCmd_11 65
    FrontierScrCmd_0D

_1909:
    FrontierScrCmd_11 22
    FrontierScrCmd_0C _2092
    FrontierScrCmd_12
    FrontierScrCmd_0C _21ED
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 15, 0, 0, 0x8008
    FrontierScrCmd_79 2, 0x8008
    FrontierScrCmd_C6 0, 0, 1
    FrontierScrCmd_C6 0, 1, 1
    FrontierScrCmd_C6 0, 2, 1
    FrontierScrCmd_C6 0, 3, 1
    FrontierScrCmd_11 39
    FrontierScrCmd_12
    FrontierScrCmd_0C _21F9
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    FrontierScrCmd_20 0x8006, 0
    FrontierScrCmd_0E 1, _198D
    FrontierScrCmd_20 0x8006, 1
    FrontierScrCmd_0E 1, _1993
    FrontierScrCmd_55 0x60F
    FrontierScrCmd_0A _2357
    FrontierScrCmd_01

_198D:
    FrontierScrCmd_11 37
    FrontierScrCmd_0D

_1993:
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    FrontierScrCmd_11 38
    FrontierScrCmd_0D

_19A2:
    FrontierScrCmd_11 22
    FrontierScrCmd_0C _2092
    FrontierScrCmd_12
    FrontierScrCmd_0C _21ED
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 15, 0, 0, 0x8008
    FrontierScrCmd_79 2, 0x8008
    FrontierScrCmd_C6 0, 0, 1
    FrontierScrCmd_C6 0, 1, 1
    FrontierScrCmd_C6 0, 2, 1
    FrontierScrCmd_C6 0, 3, 1
    FrontierScrCmd_11 39
    FrontierScrCmd_12
    FrontierScrCmd_0C _21F9
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    FrontierScrCmd_20 0x8006, 0
    FrontierScrCmd_0E 1, _1A26
    FrontierScrCmd_20 0x8006, 1
    FrontierScrCmd_0E 1, _1A2C
    FrontierScrCmd_55 0x60F
    FrontierScrCmd_0A _2357
    FrontierScrCmd_01

_1A26:
    FrontierScrCmd_11 37
    FrontierScrCmd_0D

_1A2C:
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    FrontierScrCmd_11 38
    FrontierScrCmd_0D

_1A3B:
    FrontierScrCmd_11 22
    FrontierScrCmd_0C _3294
    FrontierScrCmd_0C _2092
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    FrontierScrCmd_20 0x8006, 0
    FrontierScrCmd_0B 1, _1AC7
    FrontierScrCmd_20 0x8006, 1
    FrontierScrCmd_0B 1, _1AE1
    FrontierScrCmd_01

_1A70:
    FrontierScrCmd_0C _32D6
    FrontierScrCmd_0C _21C5
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    FrontierScrCmd_20 0x8006, 0
    FrontierScrCmd_0E 1, _1AFB
    FrontierScrCmd_20 0x8006, 1
    FrontierScrCmd_0E 1, _1B01
    FrontierScrCmd_55 0x60F
    FrontierScrCmd_0A _2357
    FrontierScrCmd_01

_1AC7:
    FrontierScrCmd_06 0x8005, 12
    FrontierScrCmd_06 0x8006, 14
    FrontierScrCmd_06 0x800E, 13
    FrontierScrCmd_0A _1A70
    FrontierScrCmd_01

_1AE1:
    FrontierScrCmd_06 0x8005, 12
    FrontierScrCmd_06 0x8006, 14
    FrontierScrCmd_06 0x800E, 15
    FrontierScrCmd_0A _1A70
    FrontierScrCmd_01

_1AFB:
    FrontierScrCmd_11 25
    FrontierScrCmd_0D

_1B01:
    FrontierScrCmd_11 26
    FrontierScrCmd_0D

_1B07:
    FrontierScrCmd_11 22
    FrontierScrCmd_0C _20D4
    FrontierScrCmd_0C _32D6
    FrontierScrCmd_0C _211D
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    FrontierScrCmd_11 40
    FrontierScrCmd_55 0x60F
    FrontierScrCmd_0A _2357
    FrontierScrCmd_01

_1B37:
    FrontierScrCmd_11 22
    FrontierScrCmd_0C _20D4
    FrontierScrCmd_0C _32D6
    FrontierScrCmd_0C _2101
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    FrontierScrCmd_11 41
    FrontierScrCmd_55 0x60F
    FrontierScrCmd_0A _2357
    FrontierScrCmd_01

_1B67:
    FrontierScrCmd_11 22
    FrontierScrCmd_0C _20D4
    FrontierScrCmd_0C _2155
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    FrontierScrCmd_11 42
    FrontierScrCmd_55 0x60F
    FrontierScrCmd_0A _2357
    FrontierScrCmd_01

_1B91:
    FrontierScrCmd_11 22
    FrontierScrCmd_0C _20D4
    FrontierScrCmd_0C _32D6
    FrontierScrCmd_0C _2139
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    FrontierScrCmd_11 43
    FrontierScrCmd_55 0x60F
    FrontierScrCmd_0A _2357
    FrontierScrCmd_01

_1BC1:
    FrontierScrCmd_11 22
    FrontierScrCmd_0C _20D4
    FrontierScrCmd_0C _2171
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    FrontierScrCmd_11 44
    FrontierScrCmd_55 0x60F
    FrontierScrCmd_0A _2357
    FrontierScrCmd_01

_1BEB:
    FrontierScrCmd_11 22
    FrontierScrCmd_0C _20D4
    FrontierScrCmd_0C _218D
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    FrontierScrCmd_11 45
    FrontierScrCmd_55 0x60F
    FrontierScrCmd_0A _2357
    FrontierScrCmd_01

_1C15:
    FrontierScrCmd_11 22
    FrontierScrCmd_0C _20D4
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    FrontierScrCmd_20 0x8006, 0
    FrontierScrCmd_0E 1, _1DEC
    FrontierScrCmd_20 0x8006, 1
    FrontierScrCmd_0E 1, _1E00
    FrontierScrCmd_31 4, 2
    FrontierScrCmd_31 5, 6
    FrontierScrCmd_31 6, 3
    FrontierScrCmd_31 7, 7
    FrontierScrCmd_55 0x5FF
    FrontierScrCmd_BF 41, 0, 3, 0x8008
    FrontierScrCmd_BF 42, 0, 3, 0x8008
    FrontierScrCmd_C6 0, 3, 0
    FrontierScrCmd_C6 1, 3, 0
    FrontierScrCmd_05 14, 0x8008
    FrontierScrCmd_BF 41, 0, 2, 0x8008
    FrontierScrCmd_BF 42, 0, 2, 0x8008
    FrontierScrCmd_C6 0, 2, 0
    FrontierScrCmd_C6 1, 2, 0
    FrontierScrCmd_05 14, 0x8008
    FrontierScrCmd_BF 41, 0, 1, 0x8008
    FrontierScrCmd_BF 42, 0, 1, 0x8008
    FrontierScrCmd_C6 0, 1, 0
    FrontierScrCmd_C6 1, 1, 0
    FrontierScrCmd_05 14, 0x8008
    FrontierScrCmd_BF 41, 0, 0, 0x8008
    FrontierScrCmd_BF 42, 0, 0, 0x8008
    FrontierScrCmd_C6 0, 0, 0
    FrontierScrCmd_C6 1, 0, 0
    FrontierScrCmd_05 14, 0x8008
    FrontierScrCmd_BF 25, 0, 0, 0x8008
    FrontierScrCmd_55 0x5FF
    FrontierScrCmd_BF 41, 1, 0, 0x8008
    FrontierScrCmd_BF 42, 1, 0, 0x8008
    FrontierScrCmd_C6 0, 0, 1
    FrontierScrCmd_C6 1, 0, 1
    FrontierScrCmd_05 14, 0x8008
    FrontierScrCmd_BF 41, 1, 1, 0x8008
    FrontierScrCmd_BF 42, 1, 1, 0x8008
    FrontierScrCmd_C6 0, 1, 1
    FrontierScrCmd_C6 1, 1, 1
    FrontierScrCmd_05 14, 0x8008
    FrontierScrCmd_BF 41, 1, 2, 0x8008
    FrontierScrCmd_BF 42, 1, 2, 0x8008
    FrontierScrCmd_C6 0, 2, 1
    FrontierScrCmd_C6 1, 2, 1
    FrontierScrCmd_05 14, 0x8008
    FrontierScrCmd_BF 41, 1, 3, 0x8008
    FrontierScrCmd_BF 42, 1, 3, 0x8008
    FrontierScrCmd_C6 0, 3, 1
    FrontierScrCmd_C6 1, 3, 1
    FrontierScrCmd_05 14, 0x8008
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    FrontierScrCmd_11 46
    FrontierScrCmd_56 0x5FF
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    FrontierScrCmd_20 0x8006, 0
    FrontierScrCmd_0E 1, _1E24
    FrontierScrCmd_20 0x8006, 1
    FrontierScrCmd_0E 1, _1E38
    FrontierScrCmd_55 0x60F
    FrontierScrCmd_0A _2357
    FrontierScrCmd_01

_1DEC:
    FrontierScrCmd_28 4, _0420
    FrontierScrCmd_28 98, _0420
    FrontierScrCmd_29
    FrontierScrCmd_0D

_1E00:
    FrontierScrCmd_28 1, _0420
    FrontierScrCmd_28 2, _0420
    FrontierScrCmd_28 98, _0420
    FrontierScrCmd_28 99, _0420
    FrontierScrCmd_29
    FrontierScrCmd_0D

_1E24:
    FrontierScrCmd_28 4, _0428
    FrontierScrCmd_28 98, _0430
    FrontierScrCmd_29
    FrontierScrCmd_0D

_1E38:
    FrontierScrCmd_28 1, _0428
    FrontierScrCmd_28 2, _0428
    FrontierScrCmd_28 98, _0430
    FrontierScrCmd_28 99, _0430
    FrontierScrCmd_29
    FrontierScrCmd_0D

_1E5C:
    FrontierScrCmd_11 22
    FrontierScrCmd_0C _2092
    FrontierScrCmd_0C _21E7
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    FrontierScrCmd_11 47
    FrontierScrCmd_55 0x60F
    FrontierScrCmd_0A _2357
    FrontierScrCmd_01

_1E86:
    FrontierScrCmd_11 22
    FrontierScrCmd_0C _2092
    FrontierScrCmd_0C _21E7
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    FrontierScrCmd_11 48
    FrontierScrCmd_55 0x60F
    FrontierScrCmd_0A _2357
    FrontierScrCmd_01

_1EB0:
    FrontierScrCmd_11 22
    FrontierScrCmd_0C _2092
    FrontierScrCmd_0C _21E7
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    FrontierScrCmd_11 49
    FrontierScrCmd_55 0x60F
    FrontierScrCmd_0A _2357
    FrontierScrCmd_01

_1EDA:
    FrontierScrCmd_11 22
    FrontierScrCmd_0C _2092
    FrontierScrCmd_12
    FrontierScrCmd_0C _21ED
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    FrontierScrCmd_BF 12, 0, 0, 0x8008
    FrontierScrCmd_49 67, 0x8008
    FrontierScrCmd_82 0x8008
    FrontierScrCmd_7A 2, 0x8008
    FrontierScrCmd_56 0x60F
    FrontierScrCmd_58 0x4C3
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    FrontierScrCmd_20 0x8006, 0
    FrontierScrCmd_0E 1, _1F65
    FrontierScrCmd_20 0x8006, 1
    FrontierScrCmd_0E 1, _1F6B
    FrontierScrCmd_59
    FrontierScrCmd_12
    FrontierScrCmd_0C _2205
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    FrontierScrCmd_11 52
    FrontierScrCmd_55 0x60F
    FrontierScrCmd_0A _2357
    FrontierScrCmd_01

_1F65:
    FrontierScrCmd_11 50
    FrontierScrCmd_0D

_1F6B:
    FrontierScrCmd_11 51
    FrontierScrCmd_0D

_1F71:
    FrontierScrCmd_11 22
    FrontierScrCmd_0C _2092
    FrontierScrCmd_12
    FrontierScrCmd_0C _21ED
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    FrontierScrCmd_BF 12, 0, 0, 0x8008
    FrontierScrCmd_49 67, 0x8008
    FrontierScrCmd_82 0x8008
    FrontierScrCmd_7A 2, 0x8008
    FrontierScrCmd_56 0x60F
    FrontierScrCmd_58 0x4C3
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    FrontierScrCmd_20 0x8006, 0
    FrontierScrCmd_0E 1, _1F65
    FrontierScrCmd_20 0x8006, 1
    FrontierScrCmd_0E 1, _1F6B
    FrontierScrCmd_59
    FrontierScrCmd_12
    FrontierScrCmd_0C _2205
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    FrontierScrCmd_11 52
    FrontierScrCmd_55 0x60F
    FrontierScrCmd_0A _2357
    FrontierScrCmd_01

_1FFC:
    FrontierScrCmd_06 0x800D, 1
    FrontierScrCmd_11 22
    FrontierScrCmd_0C _20AA
    FrontierScrCmd_12
    FrontierScrCmd_0C _2F72
    FrontierScrCmd_0C _2668
    FrontierScrCmd_0C _3288
    FrontierScrCmd_11 53
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _2049
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _2053
    FrontierScrCmd_01

_2049:
    FrontierScrCmd_3A
    FrontierScrCmd_0A _2069
    FrontierScrCmd_01

_2053:
    FrontierScrCmd_05 30, 0x8008
    FrontierScrCmd_36
    FrontierScrCmd_35 147
    FrontierScrCmd_36
    FrontierScrCmd_0A _2069
    FrontierScrCmd_01

_2069:
    FrontierScrCmd_12
    FrontierScrCmd_28 3, _05B4
    FrontierScrCmd_29
    FrontierScrCmd_BF 46, 0, 0, 0x8008
    FrontierScrCmd_0A _26BC
    FrontierScrCmd_01

_2086:
    FrontierScrCmd_11 54
    FrontierScrCmd_0A _2357
    FrontierScrCmd_01

_2092:
    FrontierScrCmd_0C _0CAE
    FrontierScrCmd_55 0x583
    FrontierScrCmd_05 45, 0x8008
    FrontierScrCmd_0C _0CCA
    FrontierScrCmd_0D

_20AA:
    FrontierScrCmd_BF 28, 0, 0, 0x8005
    FrontierScrCmd_0C _0CBC
    FrontierScrCmd_55 0x583
    FrontierScrCmd_05 45, 0x8008
    FrontierScrCmd_BF 28, 0, 0, 0x8005
    FrontierScrCmd_0C _0CD0
    FrontierScrCmd_0D

_20D4:
    FrontierScrCmd_BF 28, 0, 0, 0x8005
    FrontierScrCmd_0C _0CAE
    FrontierScrCmd_0C _0CBC
    FrontierScrCmd_55 0x583
    FrontierScrCmd_05 45, 0x8008
    FrontierScrCmd_0C _0CCA
    FrontierScrCmd_0C _0CD0
    FrontierScrCmd_0D

_2101:
    FrontierScrCmd_55 0x582
    FrontierScrCmd_43 0, 6
    FrontierScrCmd_43 0, 7
    FrontierScrCmd_05 60, 0x8008
    FrontierScrCmd_57 0x582
    FrontierScrCmd_0D

_211D:
    FrontierScrCmd_55 0x582
    FrontierScrCmd_43 0, 8
    FrontierScrCmd_43 0, 9
    FrontierScrCmd_05 60, 0x8008
    FrontierScrCmd_57 0x582
    FrontierScrCmd_0D

_2139:
    FrontierScrCmd_55 0x582
    FrontierScrCmd_43 0, 10
    FrontierScrCmd_43 0, 11
    FrontierScrCmd_05 60, 0x8008
    FrontierScrCmd_57 0x582
    FrontierScrCmd_0D

_2155:
    FrontierScrCmd_55 0x581
    FrontierScrCmd_43 0, 0
    FrontierScrCmd_43 0, 1
    FrontierScrCmd_05 60, 0x8008
    FrontierScrCmd_57 0x581
    FrontierScrCmd_0D

_2171:
    FrontierScrCmd_55 0x581
    FrontierScrCmd_43 0, 2
    FrontierScrCmd_43 0, 3
    FrontierScrCmd_05 60, 0x8008
    FrontierScrCmd_57 0x581
    FrontierScrCmd_0D

_218D:
    FrontierScrCmd_55 0x581
    FrontierScrCmd_43 0, 4
    FrontierScrCmd_43 0, 5
    FrontierScrCmd_05 60, 0x8008
    FrontierScrCmd_57 0x581
    FrontierScrCmd_0D

_21A9:
    FrontierScrCmd_55 0x582
    FrontierScrCmd_43 0, 0x8005
    FrontierScrCmd_43 0, 0x8006
    FrontierScrCmd_05 60, 0x8008
    FrontierScrCmd_57 0x582
    FrontierScrCmd_0D

_21C5:
    FrontierScrCmd_55 0x582
    FrontierScrCmd_43 0, 0x8005
    FrontierScrCmd_43 0, 0x8006
    FrontierScrCmd_43 0, 0x800E
    FrontierScrCmd_05 60, 0x8008
    FrontierScrCmd_57 0x582
    FrontierScrCmd_0D

_21E7:
    FrontierScrCmd_55 0x583
    FrontierScrCmd_0D

_21ED:
    FrontierScrCmd_28 3, _05F8
    FrontierScrCmd_29
    FrontierScrCmd_0D

_21F9:
    FrontierScrCmd_28 3, _0620
    FrontierScrCmd_29
    FrontierScrCmd_0D

_2205:
    FrontierScrCmd_28 3, _0610
    FrontierScrCmd_29
    FrontierScrCmd_0D

_2211:
    FrontierScrCmd_28 3, _0604
    FrontierScrCmd_29
    FrontierScrCmd_0D

_221D:
    FrontierScrCmd_28 3, _0630
    FrontierScrCmd_29
    FrontierScrCmd_0D

_2229:
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _224F
    FrontierScrCmd_0A _2247
    FrontierScrCmd_01

_2247:
    FrontierScrCmd_0A _22DB
    FrontierScrCmd_01

_224F:
    FrontierScrCmd_36
    FrontierScrCmd_35 146
    FrontierScrCmd_36
    FrontierScrCmd_0A _22DB
    FrontierScrCmd_01

_225F:
    FrontierScrCmd_05 1, 0x8008
    FrontierScrCmd_BF 6, 0, 0, 0x8008
    FrontierScrCmd_05 1, 0x8008
    FrontierScrCmd_36
    FrontierScrCmd_35 180
    FrontierScrCmd_36
    FrontierScrCmd_0D

_227E:
    FrontierScrCmd_05 1, 0x8008
    FrontierScrCmd_BF 6, 0, 0, 0x8008
    FrontierScrCmd_05 1, 0x8008
    FrontierScrCmd_36
    FrontierScrCmd_35 181
    FrontierScrCmd_36
    FrontierScrCmd_0D

_229D:
    FrontierScrCmd_05 1, 0x8008
    FrontierScrCmd_BF 6, 0, 0, 0x8008
    FrontierScrCmd_05 1, 0x8008
    FrontierScrCmd_36
    FrontierScrCmd_35 182
    FrontierScrCmd_36
    FrontierScrCmd_0D

_22BC:
    FrontierScrCmd_05 1, 0x8008
    FrontierScrCmd_BF 6, 0, 0, 0x8008
    FrontierScrCmd_05 1, 0x8008
    FrontierScrCmd_36
    FrontierScrCmd_35 183
    FrontierScrCmd_36
    FrontierScrCmd_0D

_22DB:
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _2337
    FrontierScrCmd_BF 48, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _2FC0
    FrontierScrCmd_20 0x8008, 2
    FrontierScrCmd_0B 1, _2FD9
    FrontierScrCmd_0C _32A0
    FrontierScrCmd_7A 0, 0x8008
    FrontierScrCmd_0C _2462
    FrontierScrCmd_28 98, _02D4
    FrontierScrCmd_29
    FrontierScrCmd_0C _2ED8
    FrontierScrCmd_0D

_2337:
    FrontierScrCmd_0C _2479
    FrontierScrCmd_28 98, _02E8
    FrontierScrCmd_28 99, _02FC
    FrontierScrCmd_29
    FrontierScrCmd_0C _2ED8
    FrontierScrCmd_0D

_2357:
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _237C
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _23CC
    FrontierScrCmd_01

_237C:
    FrontierScrCmd_3A
    FrontierScrCmd_12
    FrontierScrCmd_28 3, _05B4
    FrontierScrCmd_29
    FrontierScrCmd_11 55
    FrontierScrCmd_3A
    FrontierScrCmd_12
    FrontierScrCmd_05 15, 0x8008
    FrontierScrCmd_28 98, _0288
    FrontierScrCmd_29
    FrontierScrCmd_BF 40, 0, 0, 0x8008
    FrontierScrCmd_C4 0
    FrontierScrCmd_3A
    FrontierScrCmd_12
    FrontierScrCmd_28 4, _0310
    FrontierScrCmd_28 98, _0318
    FrontierScrCmd_29
    FrontierScrCmd_0A _24AD
    FrontierScrCmd_01

_23CC:
    FrontierScrCmd_3A
    FrontierScrCmd_10 1
    FrontierScrCmd_36
    FrontierScrCmd_35 149
    FrontierScrCmd_36
    FrontierScrCmd_12
    FrontierScrCmd_28 3, _05B4
    FrontierScrCmd_29
    FrontierScrCmd_10 55
    FrontierScrCmd_05 30, 0x8008
    FrontierScrCmd_12
    FrontierScrCmd_05 15, 0x8008
    FrontierScrCmd_28 98, _0288
    FrontierScrCmd_29
    FrontierScrCmd_BF 40, 0, 0, 0x8008
    FrontierScrCmd_C4 0
    FrontierScrCmd_05 30, 0x8008
    FrontierScrCmd_12
    FrontierScrCmd_28 99, _0288
    FrontierScrCmd_29
    FrontierScrCmd_BF 40, 0, 0, 0x8008
    FrontierScrCmd_C4 1
    FrontierScrCmd_05 30, 0x8008
    FrontierScrCmd_12
    FrontierScrCmd_28 1, _0310
    FrontierScrCmd_28 2, _0310
    FrontierScrCmd_28 98, _0318
    FrontierScrCmd_28 99, _0318
    FrontierScrCmd_29
    FrontierScrCmd_10 1
    FrontierScrCmd_0A _24AD
    FrontierScrCmd_01

_2462:
    FrontierScrCmd_BF 20, 0, 0, 0x8008
    FrontierScrCmd_07 0x800B, 0x8008
    FrontierScrCmd_0C _3466
    FrontierScrCmd_0D

_2479:
    FrontierScrCmd_BF 20, 0, 0, 0x8008
    FrontierScrCmd_07 0x800B, 0x8008
    FrontierScrCmd_BF 20, 1, 0, 0x8008
    FrontierScrCmd_07 0x800C, 0x8008
    FrontierScrCmd_0C _347D
    FrontierScrCmd_0D

_249F:
    FrontierScrCmd_06 0x800B, 218
    FrontierScrCmd_0C _3466
    FrontierScrCmd_0D

_24AD:
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _2506
    FrontierScrCmd_BF 48, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _24F2
    FrontierScrCmd_20 0x8008, 2
    FrontierScrCmd_0B 1, _24F2
    FrontierScrCmd_3F 2
    FrontierScrCmd_0A _251C
    FrontierScrCmd_01

_24F2:
    FrontierScrCmd_42 0
    FrontierScrCmd_48 59
    FrontierScrCmd_47 6
    FrontierScrCmd_0A _251C
    FrontierScrCmd_01

_2506:
    FrontierScrCmd_36
    FrontierScrCmd_35 141
    FrontierScrCmd_36
    FrontierScrCmd_12
    FrontierScrCmd_3F 2
    FrontierScrCmd_0A _251C
    FrontierScrCmd_01

_251C:
    FrontierScrCmd_0C _32A0
    FrontierScrCmd_7A 0, 0x8008
    FrontierScrCmd_0C _2F24
    FrontierScrCmd_0C _2F4A
    FrontierScrCmd_BF 48, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _2562
    FrontierScrCmd_20 0x8008, 2
    FrontierScrCmd_0B 1, _2562
    FrontierScrCmd_42 0
    FrontierScrCmd_0A _2562
    FrontierScrCmd_01

_2562:
    FrontierScrCmd_0C _32A0
    FrontierScrCmd_2B 2
    FrontierScrCmd_0C _3272
    FrontierScrCmd_BC
    FrontierScrCmd_BB
    FrontierScrCmd_0C _2EB2
    FrontierScrCmd_BF 37, 0, 0, 0x8008
    FrontierScrCmd_0C _3246
    FrontierScrCmd_0C _32CB
    FrontierScrCmd_0C _32EA
    FrontierScrCmd_13 6, 1, 1, 0
    FrontierScrCmd_14
    FrontierScrCmd_C0 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _2D52
    FrontierScrCmd_48 63
    FrontierScrCmd_BF 48, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _31DE
    FrontierScrCmd_20 0x8008, 2
    FrontierScrCmd_0B 1, _3212
    FrontierScrCmd_0C _32A0
    FrontierScrCmd_7A 0, 0x8008
    FrontierScrCmd_0A _25EE
    FrontierScrCmd_01

_25EE:
    FrontierScrCmd_0C _25FC
    FrontierScrCmd_0A _26BC
    FrontierScrCmd_01

_25FC:
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _262E
    FrontierScrCmd_28 98, _03F0
    FrontierScrCmd_28 4, _0414
    FrontierScrCmd_29
    FrontierScrCmd_25 98
    FrontierScrCmd_23 0x800B
    FrontierScrCmd_0D

_262E:
    FrontierScrCmd_0C _229D
    FrontierScrCmd_28 98, _03F0
    FrontierScrCmd_28 99, _03FC
    FrontierScrCmd_28 1, _0414
    FrontierScrCmd_28 2, _0414
    FrontierScrCmd_29
    FrontierScrCmd_25 98
    FrontierScrCmd_25 99
    FrontierScrCmd_23 0x800B
    FrontierScrCmd_23 0x800C
    FrontierScrCmd_0D

_2668:
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _2692
    FrontierScrCmd_28 98, _0408
    FrontierScrCmd_29
    FrontierScrCmd_25 98
    FrontierScrCmd_23 0x800B
    FrontierScrCmd_0D

_2692:
    FrontierScrCmd_0C _22BC
    FrontierScrCmd_28 98, _0408
    FrontierScrCmd_28 99, _0408
    FrontierScrCmd_29
    FrontierScrCmd_25 98
    FrontierScrCmd_25 99
    FrontierScrCmd_23 0x800B
    FrontierScrCmd_23 0x800C
    FrontierScrCmd_0D

_26BC:
    FrontierScrCmd_0A _26CC
    FrontierScrCmd_01
    FrontierScrCmd_0A _26CC
    FrontierScrCmd_01

_26CC:
    FrontierScrCmd_0C _26E0
    FrontierScrCmd_0C _26F4
    FrontierScrCmd_0A _270C
    FrontierScrCmd_01

_26E0:
    FrontierScrCmd_BF 14, 1, 0, 0x8008
    FrontierScrCmd_BF 5, 0, 0, 0x8008
    FrontierScrCmd_0D

_26F4:
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0E 1, _0860
    FrontierScrCmd_0D

_270C:
    FrontierScrCmd_BF 23, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 7
    FrontierScrCmd_0B 5, _27DC
    FrontierScrCmd_0A _272A
    FrontierScrCmd_01

_272A:
    FrontierScrCmd_20 0x800D, 1
    FrontierScrCmd_0B 4, _279A
    FrontierScrCmd_71 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _2780
    FrontierScrCmd_70 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0E 1, _2C4E
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0E 1, _2C54
    FrontierScrCmd_1F 0x8008, 1
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _279A
    FrontierScrCmd_0A _278C
    FrontierScrCmd_01

_2780:
    FrontierScrCmd_10 1
    FrontierScrCmd_0A _279A
    FrontierScrCmd_01

_278C:
    FrontierScrCmd_0C _2BD8
    FrontierScrCmd_0A _279A
    FrontierScrCmd_01

_279A:
    FrontierScrCmd_BF 22, 0, 0, 0x8008
    FrontierScrCmd_3D 0x40BF, 1
    FrontierScrCmd_11 66
    FrontierScrCmd_7B 0
    FrontierScrCmd_BF 45, 0, 0, 0x8008
    FrontierScrCmd_7A 1, 0x8008
    FrontierScrCmd_82 0x8008
    FrontierScrCmd_11 67
    FrontierScrCmd_58 0x4C5
    FrontierScrCmd_59
    FrontierScrCmd_0A _27D4
    FrontierScrCmd_01

_27D4:
    FrontierScrCmd_0A _2DD4
    FrontierScrCmd_01

_27DC:
    FrontierScrCmd_20 0x800D, 1
    FrontierScrCmd_0B 4, _28AB
    FrontierScrCmd_0C _349D
    FrontierScrCmd_28 97, _0640
    FrontierScrCmd_29
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _2821
    FrontierScrCmd_28 4, _0654
    FrontierScrCmd_29
    FrontierScrCmd_0A _283B
    FrontierScrCmd_01

_2821:
    FrontierScrCmd_28 1, _0654
    FrontierScrCmd_28 2, _0654
    FrontierScrCmd_29
    FrontierScrCmd_0A _283B
    FrontierScrCmd_01

_283B:
    FrontierScrCmd_11 3
    FrontierScrCmd_58 0x48E
    FrontierScrCmd_59
    FrontierScrCmd_12
    FrontierScrCmd_39
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _2879
    FrontierScrCmd_28 97, _064C
    FrontierScrCmd_28 4, _065C
    FrontierScrCmd_29
    FrontierScrCmd_0A _289B
    FrontierScrCmd_01

_2879:
    FrontierScrCmd_28 97, _064C
    FrontierScrCmd_28 1, _065C
    FrontierScrCmd_28 2, _065C
    FrontierScrCmd_29
    FrontierScrCmd_0A _289B
    FrontierScrCmd_01

_289B:
    FrontierScrCmd_25 97
    FrontierScrCmd_23 0x800F
    FrontierScrCmd_0A _28B3
    FrontierScrCmd_01

_28AB:
    FrontierScrCmd_0A _28B3
    FrontierScrCmd_01

_28B3:
    FrontierScrCmd_BF 48, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _2F86
    FrontierScrCmd_20 0x8008, 2
    FrontierScrCmd_0B 1, _2F86
    FrontierScrCmd_0A _28DE
    FrontierScrCmd_01

_28DE:
    FrontierScrCmd_0C _32A0
    FrontierScrCmd_7A 0, 0x8008
    FrontierScrCmd_0A _28F1
    FrontierScrCmd_01

_28F1:
    FrontierScrCmd_0C _32A0
    FrontierScrCmd_7A 0, 0x8008
    FrontierScrCmd_BF 23, 0, 0, 0x8008
    FrontierScrCmd_08 0x8008, 1
    FrontierScrCmd_7A 0, 0x8008
    FrontierScrCmd_11 4
    FrontierScrCmd_0A _291C
    FrontierScrCmd_01

_291C:
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _2954
    FrontierScrCmd_20 0x800D, 1
    FrontierScrCmd_0B 1, _29A3
    FrontierScrCmd_20 0x8003, 0
    FrontierScrCmd_0B 1, _29B1
    FrontierScrCmd_0A _29A3
    FrontierScrCmd_01

_2954:
    FrontierScrCmd_71 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _2987
    FrontierScrCmd_20 0x800D, 1
    FrontierScrCmd_0B 1, _2987
    FrontierScrCmd_20 0x8003, 0
    FrontierScrCmd_0B 1, _2995
    FrontierScrCmd_0A _2987
    FrontierScrCmd_01

_2987:
    FrontierScrCmd_06 0x8008, 1
    FrontierScrCmd_0A _29BF
    FrontierScrCmd_01

_2995:
    FrontierScrCmd_06 0x8008, 2
    FrontierScrCmd_0A _29BF
    FrontierScrCmd_01

_29A3:
    FrontierScrCmd_06 0x8008, 3
    FrontierScrCmd_0A _29BF
    FrontierScrCmd_01

_29B1:
    FrontierScrCmd_06 0x8008, 4
    FrontierScrCmd_0A _29BF
    FrontierScrCmd_01

_29BF:
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _29F5
    FrontierScrCmd_20 0x8008, 2
    FrontierScrCmd_0B 1, _2A10
    FrontierScrCmd_20 0x8008, 3
    FrontierScrCmd_0B 1, _2A33
    FrontierScrCmd_20 0x8008, 4
    FrontierScrCmd_0B 1, _2A56
    FrontierScrCmd_01

_29F5:
    FrontierScrCmd_1B 31, 13, 0, 0, 0x800A
    FrontierScrCmd_CA 1
    FrontierScrCmd_1C 72, 255, 0
    FrontierScrCmd_0A _2A81
    FrontierScrCmd_01

_2A10:
    FrontierScrCmd_1B 31, 11, 0, 0, 0x800A
    FrontierScrCmd_CA 1
    FrontierScrCmd_1C 72, 255, 0
    FrontierScrCmd_1C 73, 255, 1
    FrontierScrCmd_0A _2A81
    FrontierScrCmd_01

_2A33:
    FrontierScrCmd_1B 31, 11, 0, 0, 0x800A
    FrontierScrCmd_CA 1
    FrontierScrCmd_1C 72, 255, 0
    FrontierScrCmd_1C 74, 255, 2
    FrontierScrCmd_0A _2A81
    FrontierScrCmd_01

_2A56:
    FrontierScrCmd_1B 31, 9, 0, 0, 0x800A
    FrontierScrCmd_CA 1
    FrontierScrCmd_1C 72, 255, 0
    FrontierScrCmd_1C 73, 255, 1
    FrontierScrCmd_1C 74, 255, 2
    FrontierScrCmd_0A _2A81
    FrontierScrCmd_01

_2A81:
    FrontierScrCmd_1C 75, 255, 3
    FrontierScrCmd_1D
    FrontierScrCmd_0A _2A93
    FrontierScrCmd_01

_2A93:
    FrontierScrCmd_20 0x800A, 0
    FrontierScrCmd_0B 1, _2ACF
    FrontierScrCmd_20 0x800A, 1
    FrontierScrCmd_0B 1, _2B8A
    FrontierScrCmd_20 0x800A, 2
    FrontierScrCmd_0B 1, _2C5A
    FrontierScrCmd_20 0x800A, 3
    FrontierScrCmd_0B 1, _2CB2
    FrontierScrCmd_0A _2CB2
    FrontierScrCmd_01

_2ACF:
    FrontierScrCmd_06 0x800D, 0
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _2AF3
    FrontierScrCmd_0A _2B5E
    FrontierScrCmd_01

_2AF3:
    FrontierScrCmd_7C 0
    FrontierScrCmd_11 16
    FrontierScrCmd_0A _2B02
    FrontierScrCmd_01

_2B02:
    FrontierScrCmd_06 0x8002, 3
    FrontierScrCmd_C1 0x8002, 0, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _2B02
    FrontierScrCmd_C2 0x8002
    FrontierScrCmd_36
    FrontierScrCmd_BF 24, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _2B49
    FrontierScrCmd_36
    FrontierScrCmd_35 142
    FrontierScrCmd_36
    FrontierScrCmd_0A _2B5E
    FrontierScrCmd_01

_2B49:
    FrontierScrCmd_7C 0
    FrontierScrCmd_10 18
    FrontierScrCmd_05 30, 0x8008
    FrontierScrCmd_0A _2D19
    FrontierScrCmd_01

_2B5E:
    FrontierScrCmd_06 0x8003, 0
    FrontierScrCmd_BE
    FrontierScrCmd_05 1, 0x8008
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0E 1, _0A2D
    FrontierScrCmd_0A _0B20
    FrontierScrCmd_01

_2B8A:
    FrontierScrCmd_70 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0E 1, _2C4E
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0E 1, _2C54
    FrontierScrCmd_1F 0x8008, 1
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _2BD0
    FrontierScrCmd_0A _2BC2
    FrontierScrCmd_01

_2BC2:
    FrontierScrCmd_0C _2BD8
    FrontierScrCmd_0A _28B3
    FrontierScrCmd_01

_2BD0:
    FrontierScrCmd_0A _28B3
    FrontierScrCmd_01

_2BD8:
    FrontierScrCmd_0C _2BFA
    FrontierScrCmd_0A _2C05
    FrontierScrCmd_01

_2BE6:
    FrontierScrCmd_0C _2BFA
    FrontierScrCmd_08 0x8009, 1
    FrontierScrCmd_0A _2C05
    FrontierScrCmd_01

_2BFA:
    FrontierScrCmd_BF 4, 0, 0, 0x8009
    FrontierScrCmd_0D

_2C05:
    FrontierScrCmd_0A _2C0D
    FrontierScrCmd_01

_2C0D:
    FrontierScrCmd_06 0x8003, 1
    FrontierScrCmd_0F 9
    FrontierScrCmd_BF 17, 0, 0, 0x8008
    FrontierScrCmd_77
    FrontierScrCmd_6D 6, 0x8008, 0x8009, 0x8009
    FrontierScrCmd_78
    FrontierScrCmd_20 0x8009, 1
    FrontierScrCmd_0B 1, _2C41
    FrontierScrCmd_11 7
    FrontierScrCmd_0D

_2C41:
    FrontierScrCmd_55 0x61B
    FrontierScrCmd_7B 0
    FrontierScrCmd_11 6
    FrontierScrCmd_0D

_2C4E:
    FrontierScrCmd_11 5
    FrontierScrCmd_0D

_2C54:
    FrontierScrCmd_11 8
    FrontierScrCmd_0D

_2C5A:
    FrontierScrCmd_11 10
    FrontierScrCmd_1F 0x8008, 0
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _2CAA
    FrontierScrCmd_0A _2C78
    FrontierScrCmd_01

_2C78:
    FrontierScrCmd_3D 0x40BF, 2
    FrontierScrCmd_BF 10, 0, 0, 0x8008
    FrontierScrCmd_6F
    FrontierScrCmd_BA
    FrontierScrCmd_0C _2E9C
    FrontierScrCmd_13 6, 1, 0, 0
    FrontierScrCmd_14
    FrontierScrCmd_12
    FrontierScrCmd_BF 7, 0, 0, 0x8008
    FrontierScrCmd_01

_2CAA:
    FrontierScrCmd_0A _28B3
    FrontierScrCmd_01

_2CB2:
    FrontierScrCmd_11 13
    FrontierScrCmd_1F 0x8008, 1
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _2D4A
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _2CEA
    FrontierScrCmd_11 69
    FrontierScrCmd_0A _2D31
    FrontierScrCmd_01

_2CEA:
    FrontierScrCmd_10 1
    FrontierScrCmd_0A _2CF6
    FrontierScrCmd_01

_2CF6:
    FrontierScrCmd_06 0x8002, 3
    FrontierScrCmd_C1 0x8002, 1, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _2CF6
    FrontierScrCmd_0A _2D19
    FrontierScrCmd_01

_2D19:
    FrontierScrCmd_11 69
    FrontierScrCmd_10 1
    FrontierScrCmd_36
    FrontierScrCmd_35 144
    FrontierScrCmd_36
    FrontierScrCmd_0A _2D31
    FrontierScrCmd_01

_2D31:
    FrontierScrCmd_BF 21, 0, 0, 0x8008
    FrontierScrCmd_3D 0x40BF, 3
    FrontierScrCmd_0A _2E0A
    FrontierScrCmd_01
    FrontierScrCmd_01

_2D4A:
    FrontierScrCmd_0A _28B3
    FrontierScrCmd_01

_2D52:
    FrontierScrCmd_71 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _2D9B
    FrontierScrCmd_70 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0E 1, _2C4E
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0E 1, _2C54
    FrontierScrCmd_1F 0x8008, 1
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _2DB5
    FrontierScrCmd_0A _2DA7
    FrontierScrCmd_01

_2D9B:
    FrontierScrCmd_10 1
    FrontierScrCmd_0A _2DBD
    FrontierScrCmd_01

_2DA7:
    FrontierScrCmd_0C _2BE6
    FrontierScrCmd_0A _2DBD
    FrontierScrCmd_01

_2DB5:
    FrontierScrCmd_0A _2DBD
    FrontierScrCmd_01

_2DBD:
    FrontierScrCmd_BF 21, 0, 0, 0x8008
    FrontierScrCmd_3D 0x40BF, 3
    FrontierScrCmd_0A _2DD4
    FrontierScrCmd_01

_2DD4:
    FrontierScrCmd_11 69
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _2DF6
    FrontierScrCmd_0A _2E0A
    FrontierScrCmd_01

_2DF6:
    FrontierScrCmd_10 1
    FrontierScrCmd_36
    FrontierScrCmd_35 148
    FrontierScrCmd_36
    FrontierScrCmd_0A _2E0A
    FrontierScrCmd_01

_2E0A:
    FrontierScrCmd_0C _2E9C
    FrontierScrCmd_12
    FrontierScrCmd_0A _2E1A
    FrontierScrCmd_01

_2E1A:
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0E 1, _2E86
    FrontierScrCmd_13 6, 1, 0, 0
    FrontierScrCmd_14
    FrontierScrCmd_0C _2F5E
    FrontierScrCmd_0C _2F4A
    FrontierScrCmd_0C _3272
    FrontierScrCmd_BF 17, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 2
    FrontierScrCmd_0E 1, _2E80
    FrontierScrCmd_BF 17, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 3
    FrontierScrCmd_0B 1, _2E90
    FrontierScrCmd_6F
    FrontierScrCmd_BA
    FrontierScrCmd_02

_2E80:
    FrontierScrCmd_C8 6
    FrontierScrCmd_0D

_2E86:
    FrontierScrCmd_36
    FrontierScrCmd_35 150
    FrontierScrCmd_36
    FrontierScrCmd_0D

_2E90:
    FrontierScrCmd_6F
    FrontierScrCmd_BA
    FrontierScrCmd_04 14, 1
    FrontierScrCmd_01

_2E9C:
    FrontierScrCmd_0F 70
    FrontierScrCmd_77
    FrontierScrCmd_73 0x8008
    FrontierScrCmd_78
    FrontierScrCmd_55 0x61B
    FrontierScrCmd_57 0x61B
    FrontierScrCmd_0D

_2EB2:
    FrontierScrCmd_BF 29, 0, 0, 0x8008
    FrontierScrCmd_BF 33, 0, 0, 0x8008
    FrontierScrCmd_BF 35, 0, 0, 0x8008
    FrontierScrCmd_BF 31, 0, 0, 0x8008
    FrontierScrCmd_0D

_2ED8:
    FrontierScrCmd_BF 35, 1, 0, 0x8008
    FrontierScrCmd_BF 31, 1, 0, 0x8008
    FrontierScrCmd_0D

_2EEC:
    FrontierScrCmd_BF 29, 0, 0, 0x8008
    FrontierScrCmd_BF 33, 0, 0, 0x8008
    FrontierScrCmd_BF 35, 0, 0, 0x8008
    FrontierScrCmd_BF 35, 1, 0, 0x8008
    FrontierScrCmd_BF 31, 0, 0, 0x8008
    FrontierScrCmd_BF 31, 1, 0, 0x8008
    FrontierScrCmd_0D

_2F24:
    FrontierScrCmd_BF 36, 0, 0, 0x8008
    FrontierScrCmd_BF 36, 1, 0, 0x8008
    FrontierScrCmd_BF 32, 0, 0, 0x8008
    FrontierScrCmd_BF 32, 1, 0, 0x8008
    FrontierScrCmd_0D

_2F4A:
    FrontierScrCmd_BF 30, 0, 0, 0x8008
    FrontierScrCmd_BF 34, 0, 0, 0x8008
    FrontierScrCmd_0D

_2F5E:
    FrontierScrCmd_BF 36, 0, 0, 0x8008
    FrontierScrCmd_BF 32, 0, 0, 0x8008
    FrontierScrCmd_0D

_2F72:
    FrontierScrCmd_BF 36, 1, 0, 0x8008
    FrontierScrCmd_BF 32, 1, 0, 0x8008
    FrontierScrCmd_0D

_2F86:
    FrontierScrCmd_20 0x8003, 1
    FrontierScrCmd_0B 1, _28DE
    FrontierScrCmd_BF 51, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _28DE
    FrontierScrCmd_0C _32A0
    FrontierScrCmd_7A 0, 0x8008
    FrontierScrCmd_11 76
    FrontierScrCmd_0A _28F1
    FrontierScrCmd_01

_2FC0:
    FrontierScrCmd_0C _32A0
    FrontierScrCmd_7A 0, 0x8008
    FrontierScrCmd_0C _2FF2
    FrontierScrCmd_11 77
    FrontierScrCmd_12
    FrontierScrCmd_0D

_2FD9:
    FrontierScrCmd_0C _32A0
    FrontierScrCmd_7A 0, 0x8008
    FrontierScrCmd_0C _2FF2
    FrontierScrCmd_11 78
    FrontierScrCmd_12
    FrontierScrCmd_0D

_2FF2:
    FrontierScrCmd_0C _33E3
    FrontierScrCmd_28 5, _0438
    FrontierScrCmd_28 6, _0440
    FrontierScrCmd_28 7, _0448
    FrontierScrCmd_28 8, _0450
    FrontierScrCmd_28 9, _0458
    FrontierScrCmd_28 11, _0468
    FrontierScrCmd_28 12, _0470
    FrontierScrCmd_28 13, _0438
    FrontierScrCmd_28 14, _0440
    FrontierScrCmd_28 15, _0448
    FrontierScrCmd_28 16, _0448
    FrontierScrCmd_28 17, _0478
    FrontierScrCmd_28 18, _0438
    FrontierScrCmd_29
    FrontierScrCmd_0C _249F
    FrontierScrCmd_28 98, _0320
    FrontierScrCmd_29
    FrontierScrCmd_55 0x582
    FrontierScrCmd_41 3, 4, 1
    FrontierScrCmd_43 3, 0
    FrontierScrCmd_43 3, 1
    FrontierScrCmd_28 4, _03D0
    FrontierScrCmd_28 0, _03B4
    FrontierScrCmd_29
    FrontierScrCmd_28 5, _0480
    FrontierScrCmd_28 6, _0488
    FrontierScrCmd_28 7, _0494
    FrontierScrCmd_28 8, _049C
    FrontierScrCmd_28 9, _04A8
    FrontierScrCmd_28 11, _04C0
    FrontierScrCmd_28 12, _04C8
    FrontierScrCmd_28 13, _0480
    FrontierScrCmd_28 14, _04D0
    FrontierScrCmd_28 15, _0494
    FrontierScrCmd_28 17, _04DC
    FrontierScrCmd_28 18, _04E8
    FrontierScrCmd_29
    FrontierScrCmd_55 0x60F
    FrontierScrCmd_28 98, _0330
    FrontierScrCmd_29
    FrontierScrCmd_57 0x60F
    FrontierScrCmd_28 98, _0344
    FrontierScrCmd_28 4, _03D8
    FrontierScrCmd_28 0, _03BC
    FrontierScrCmd_28 5, _04F8
    FrontierScrCmd_28 6, _04F8
    FrontierScrCmd_28 7, _0508
    FrontierScrCmd_28 8, _051C
    FrontierScrCmd_28 9, _0508
    FrontierScrCmd_28 11, _0508
    FrontierScrCmd_28 12, _04F8
    FrontierScrCmd_28 13, _051C
    FrontierScrCmd_28 14, _04F8
    FrontierScrCmd_28 15, _04F8
    FrontierScrCmd_28 17, _051C
    FrontierScrCmd_28 18, _04F8
    FrontierScrCmd_29
    FrontierScrCmd_0C _3198
    FrontierScrCmd_0C _2ED8
    FrontierScrCmd_0D

_3198:
    FrontierScrCmd_25 5
    FrontierScrCmd_25 6
    FrontierScrCmd_25 7
    FrontierScrCmd_25 8
    FrontierScrCmd_25 9
    FrontierScrCmd_25 11
    FrontierScrCmd_25 12
    FrontierScrCmd_25 13
    FrontierScrCmd_25 14
    FrontierScrCmd_25 15
    FrontierScrCmd_25 16
    FrontierScrCmd_25 17
    FrontierScrCmd_25 18
    FrontierScrCmd_23 9
    FrontierScrCmd_23 19
    FrontierScrCmd_23 20
    FrontierScrCmd_23 35
    FrontierScrCmd_0D

_31DE:
    FrontierScrCmd_0C _32A0
    FrontierScrCmd_7A 0, 0x8008
    FrontierScrCmd_3E 0x4053, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0E 1, _320A
    FrontierScrCmd_11 79
    FrontierScrCmd_12
    FrontierScrCmd_0A _25EE
    FrontierScrCmd_01

_320A:
    FrontierScrCmd_3D 0x4053, 1
    FrontierScrCmd_0D

_3212:
    FrontierScrCmd_0C _32A0
    FrontierScrCmd_7A 0, 0x8008
    FrontierScrCmd_3E 0x4053, 0x8008
    FrontierScrCmd_20 0x8008, 2
    FrontierScrCmd_0E 1, _323E
    FrontierScrCmd_11 80
    FrontierScrCmd_12
    FrontierScrCmd_0A _25EE
    FrontierScrCmd_01

_323E:
    FrontierScrCmd_3D 0x4053, 3
    FrontierScrCmd_0D

_3246:
    FrontierScrCmd_2A _0204
    FrontierScrCmd_2C _0208
    FrontierScrCmd_31 4, 0
    FrontierScrCmd_31 5, 4
    FrontierScrCmd_2C _0220
    FrontierScrCmd_31 6, 1
    FrontierScrCmd_31 7, 5
    FrontierScrCmd_0D

_3272:
    FrontierScrCmd_2D 4
    FrontierScrCmd_2D 5
    FrontierScrCmd_2D 6
    FrontierScrCmd_2D 7
    FrontierScrCmd_2B 3
    FrontierScrCmd_0D

_3288:
    FrontierScrCmd_28 3, _05D0
    FrontierScrCmd_29
    FrontierScrCmd_0D

_3294:
    FrontierScrCmd_28 3, _05D8
    FrontierScrCmd_29
    FrontierScrCmd_0D

_32A0:
    FrontierScrCmd_BF 4, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 0x270F
    FrontierScrCmd_0B 4, _32BE
    FrontierScrCmd_08 0x8008, 1
    FrontierScrCmd_0D

_32BE:
    FrontierScrCmd_0D

_32C0:
    FrontierScrCmd_BF 43, 8, 0, 0x8008
    FrontierScrCmd_0D

_32CB:
    FrontierScrCmd_BF 43, 8, 1, 0x8008
    FrontierScrCmd_0D

_32D6:
    FrontierScrCmd_BF 43, 0, 1, 0x8008
    FrontierScrCmd_BF 44, 0, 0, 0x8008
    FrontierScrCmd_0D

_32EA:
    FrontierScrCmd_BF 44, 8, 3, 0x8008
    FrontierScrCmd_BF 44, 8, 98, 0x8008
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _331D
    FrontierScrCmd_BF 44, 8, 4, 0x8008
    FrontierScrCmd_0D

_331D:
    FrontierScrCmd_BF 44, 8, 1, 0x8008
    FrontierScrCmd_BF 44, 8, 2, 0x8008
    FrontierScrCmd_BF 44, 8, 99, 0x8008
    FrontierScrCmd_0D

_333A:
    FrontierScrCmd_22 _0008
    FrontierScrCmd_24 _001C
    FrontierScrCmd_BF 44, 8, 20, 0x8008
    FrontierScrCmd_BF 44, 8, 4, 0x8008
    FrontierScrCmd_0D

_335A:
    FrontierScrCmd_22 _0010
    FrontierScrCmd_24 _0040
    FrontierScrCmd_BF 44, 8, 20, 0x8008
    FrontierScrCmd_BF 44, 8, 1, 0x8008
    FrontierScrCmd_BF 44, 8, 2, 0x8008
    FrontierScrCmd_0D

_3383:
    FrontierScrCmd_22 _0070
    FrontierScrCmd_24 _00A0
    FrontierScrCmd_BF 44, 8, 4, 0x8008
    FrontierScrCmd_BF 44, 8, 3, 0x8008
    FrontierScrCmd_0D

_33A3:
    FrontierScrCmd_22 _0078
    FrontierScrCmd_24 _00C4
    FrontierScrCmd_BF 44, 8, 3, 0x8008
    FrontierScrCmd_BF 44, 8, 1, 0x8008
    FrontierScrCmd_BF 44, 8, 2, 0x8008
    FrontierScrCmd_0D

_33CC:
    FrontierScrCmd_22 _0098
    FrontierScrCmd_24 _00F4
    FrontierScrCmd_BF 44, 8, 20, 0x8008
    FrontierScrCmd_0D

_33E3:
    FrontierScrCmd_22 _0088
    FrontierScrCmd_24 _0104
    FrontierScrCmd_BF 44, 8, 5, 0x8008
    FrontierScrCmd_BF 44, 8, 6, 0x8008
    FrontierScrCmd_BF 44, 8, 7, 0x8008
    FrontierScrCmd_BF 44, 8, 8, 0x8008
    FrontierScrCmd_BF 44, 8, 9, 0x8008
    FrontierScrCmd_BF 44, 8, 11, 0x8008
    FrontierScrCmd_BF 44, 8, 12, 0x8008
    FrontierScrCmd_BF 44, 8, 13, 0x8008
    FrontierScrCmd_BF 44, 8, 14, 0x8008
    FrontierScrCmd_BF 44, 8, 15, 0x8008
    FrontierScrCmd_BF 44, 8, 16, 0x8008
    FrontierScrCmd_BF 44, 8, 17, 0x8008
    FrontierScrCmd_BF 44, 8, 18, 0x8008
    FrontierScrCmd_0D

_3466:
    FrontierScrCmd_22 _0198
    FrontierScrCmd_24 _01A8
    FrontierScrCmd_BF 44, 8, 98, 0x8008
    FrontierScrCmd_0D

_347D:
    FrontierScrCmd_22 _01A0
    FrontierScrCmd_24 _01B8
    FrontierScrCmd_BF 44, 8, 98, 0x8008
    FrontierScrCmd_BF 44, 8, 99, 0x8008
    FrontierScrCmd_0D

_349D:
    FrontierScrCmd_22 _01D0
    FrontierScrCmd_24 _01D8
    FrontierScrCmd_BF 44, 8, 97, 0x8008
    FrontierScrCmd_0D

    .balign 4, 0
