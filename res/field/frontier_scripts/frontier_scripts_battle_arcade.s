# include "macros/frscrcmd.inc"
# include "res/text/bank/battle_arcade_scene.h"

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
    GetPlayerObjEventGfx 0x8007
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _06BE
    SetVar 0x800F, 231
    Call _333A
    GoTo _06DC
    End

_06BE:
    Call _225F
    IncrementTrainerScore TRAINER_SCORE_EVENT_UNK_43
    SetVar 0x800F, 232
    Call _335A
    GoTo _06DC
    End

_06DC:
    Call _32C0
    FadeScreenIn
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0742
    FrontierScrCmd_28 20, _0274
    FrontierScrCmd_28 4, _0238
    FrontierScrCmd_29
    PlaySoundEffect SEQ_SE_DP_KAIDAN2
    WaitSoundEffect SEQ_SE_DP_KAIDAN2
    FadeScreenOut
    FrontierScrCmd_25 0
    FrontierScrCmd_25 20
    FrontierScrCmd_25 4
    FrontierScrCmd_23 0x800F
    GoTo _0788
    End

_0742:
    FrontierScrCmd_28 20, _0274
    FrontierScrCmd_28 1, _0238
    FrontierScrCmd_28 2, _0254
    FrontierScrCmd_29
    PlaySoundEffect SEQ_SE_DP_KAIDAN2
    WaitSoundEffect SEQ_SE_DP_KAIDAN2
    FadeScreenOut
    FrontierScrCmd_25 1
    FrontierScrCmd_25 2
    FrontierScrCmd_25 20
    FrontierScrCmd_23 0x800F
    GoTo _0788
    End

_0788:
    FrontierScrCmd_03 16
    SetVar 0x800D, 0
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _07BC
    SetVar 0x800F, 231
    Call _3383
    GoTo _07D9
    End

_07BC:
    FrontierScrCmd_BF 37, 0, 0, 0x8008
    SetVar 0x800F, 232
    Call _33A3
    GoTo _07D9
    End

_07D9:
    WaitTime 1, 0x8008
    Call _33CC
    Call _33E3
    Call _3246
    Call _32CB
    FadeScreenIn
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0821
    GoTo _0883
    End

_0821:
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 203
    ClearReceivedTempDataAllPlayers
    Call _0860
    GoTo _0883
    End

_0837:
    SetVar 0x8002, 0
    FrontierScrCmd_C1 0x8002, 0, 0x8008
    GoToIfEq 0x8008, 0, _0837
    FrontierScrCmd_C2 0x8002
    ClearReceivedTempDataAllPlayers
    GoTo _0883
    End

_0860:
    SetVar 0x8002, 0
    FrontierScrCmd_C1 0x8002, 0, 0x8008
    GoToIfEq 0x8008, 0, _0860
    FrontierScrCmd_C2 0x8002
    ClearReceivedTempDataAllPlayers
    Return

_0883:
    FrontierScrCmd_B9 0x8003
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _08A5
    GoTo _091F
    End

_08A5:
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 204
    ClearReceivedTempDataAllPlayers
    GoTo _08B5
    End

_08B5:
    SetVar 0x8002, 1
    FrontierScrCmd_C1 0x8002, 0, 0x8008
    GoToIfEq 0x8008, 0, _08B5
    FrontierScrCmd_C2 0x8002
    ClearReceivedTempDataAllPlayers
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 158
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_C9 1
    GoTo _08EA
    End

_08EA:
    SetVar 0x8002, 5
    FrontierScrCmd_C1 0x8002, 0, 0x8008
    GoToIfEq 0x8008, 0, _08EA
    FrontierScrCmd_C2 0x8002
    ClearReceivedTempDataAllPlayers
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 202
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_C9 0
    GoTo _091F
    End

_091F:
    SetVar 0x8003, 0
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0975
    FrontierScrCmd_28 0, _0290
    FrontierScrCmd_28 4, _0298
    FrontierScrCmd_28 20, _02C4
    FrontierScrCmd_28 6, _0530
    FrontierScrCmd_28 9, _0560
    FrontierScrCmd_28 11, _057C
    FrontierScrCmd_29
    GoTo _09B7
    End

_0975:
    FrontierScrCmd_28 0, _0290
    FrontierScrCmd_28 1, _0298
    FrontierScrCmd_28 2, _02AC
    FrontierScrCmd_28 20, _02C4
    FrontierScrCmd_28 6, _0530
    FrontierScrCmd_28 9, _0560
    FrontierScrCmd_28 11, _057C
    FrontierScrCmd_29
    GoTo _09B7
    End

_09B7:
    FrontierScrCmd_25 20
    FrontierScrCmd_23 0x800F
    Call _3198
    FrontierScrCmd_BF 23, 0, 0, 0x8008
    GoToIfEq 0x8008, 0, _09F9
    Call _0A07
    FrontierScrCmd_28 3, _05E8
    FrontierScrCmd_29
    SetVar 0x8003, 1
    GoTo _28B3
    End

_09F9:
    Call _0A07
    GoTo _0A8F
    End

_0A07:
    WaitTime 1, 0x8008
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    CallIfEq 0x8008, 1, _0A2D
    FrontierScrCmd_BD
    Call _2EB2
    Return

_0A2D:
    FrontierScrCmd_BF 52, 0, 0, 0x8008
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 205
    ClearReceivedTempDataAllPlayers
    GoTo _0A46
    End

_0A46:
    SetVar 0x8002, 2
    FrontierScrCmd_C1 0x8002, 0, 0x8008
    GoToIfEq 0x8008, 0, _0A46
    FrontierScrCmd_C2 0x8002
    ClearReceivedTempDataAllPlayers
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 206
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_BF 49, 0, 0, 0x8008
    WaitTime 1, 0x8008
    FrontierScrCmd_BF 50, 0, 0, 0x8008
    WaitTime 1, 0x8008
    Return

_0A8F:
    FrontierScrCmd_28 3, _05E8
    FrontierScrCmd_29
    Message BattleArcadeScene_Text_Welcome
    PlaySoundEffect SEQ_SE_DP_DENDOU
    FrontierScrCmd_BF 23, 0, 0, 0x8008
    CallIfEq 0x8008, 0, _0B1A
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0AD5
    GoTo _0B20
    End

_0AD5:
    MessageNoSkip BattleArcadeScene_Text_PleaseWait
    GoTo _0AE1
    End

_0AE1:
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 140
    ClearReceivedTempDataAllPlayers
    GoTo _0B20
    End

_0AF1:
    FrontierScrCmd_41 0, 3, 1
    FrontierScrCmd_BF 39, 0x8005, 0x8006, 0x8008
    WaitTime 120, 0x8008
    FrontierScrCmd_42 0
    WaitTime 60, 0x8008
    AddVar 0x8005, 1
    Return

_0B1A:
    Message BattleArcadeScene_Text_TakingItems
    Return

_0B20:
    Call _32A0
    BufferNumber 0, 0x8008
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 0, _0B50
    GoToIfEq 0x8008, 1, _0B8A
    End

_0B50:
    FrontierScrCmd_BF 23, 0, 0, 0x8008
    AddVar 0x8008, 1
    BufferNumber 0, 0x8008
    Message BattleArcadeScene_Text_GameStart
    WaitABPress
    CloseMessage
    Call _2229
    FrontierScrCmd_28 3, _05AC
    FrontierScrCmd_29
    Message BattleArcadeScene_Text_ActivateBoard
    WaitABPress
    GoTo _0BD4
    End

_0B8A:
    FrontierScrCmd_BF 23, 0, 0, 0x8008
    AddVar 0x8008, 1
    BufferNumber 0, 0x8008
    MessageNoSkip BattleArcadeScene_Text_GameStart
    WaitTime 30, 0x8008
    CloseMessage
    Call _2229
    FrontierScrCmd_28 3, _05AC
    FrontierScrCmd_29
    MessageNoSkip BattleArcadeScene_Text_ActivateBoard
    WaitTime 30, 0x8008
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 143
    ClearReceivedTempDataAllPlayers
    GoTo _0BD4
    End

_0BD4:
    FadeScreenOut
    CloseMessage
    FrontierScrCmd_BF 48, 0, 0, 0x8008
    CallIfEq 0x8008, 1, _0C9E
    CallIfEq 0x8008, 2, _0C9E
    Call _32A0
    Call _2F24
    Call _2F4A
    Call _3272
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    CallIfEq 0x8008, 1, _0CA4
    FrontierScrCmd_C3
    FrontierScrCmd_2A _01E8
    Call _3246
    Call _2EEC
    FrontierScrCmd_BF 11, 0, 0, 0x8008
    FrontierScrCmd_C5
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    CallIfEq 0x8008, 1, _227E
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    CallIfEq 0x8008, 1, _0860
    Call _32CB
    Call _32EA
    FadeScreenIn
    GoTo _0CD6
    End

_0C9E:
    FrontierScrCmd_42 3
    Return

_0CA4:
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 200
    ClearReceivedTempDataAllPlayers
    Return

_0CAE:
    FrontierScrCmd_2C _01EC
    FrontierScrCmd_31 0, 0
    Return

_0CBC:
    FrontierScrCmd_2C _01F8
    FrontierScrCmd_31 1, 1
    Return

_0CCA:
    FrontierScrCmd_2D 0
    Return

_0CD0:
    FrontierScrCmd_2D 1
    Return

_0CD6:
    FrontierScrCmd_41 0, 3, 1
    FrontierScrCmd_BF 16, 0, 0, 0x8008
    PlaySoundEffect SEQ_SE_DP_DENDOU
    SetVar 0x8010, 0x8008
    GoToIfEq 0x8010, 0, _0E93
    GoToIfEq 0x8010, 1, _0F5F
    GoToIfEq 0x8010, 2, _100C
    GoToIfEq 0x8010, 3, _10C3
    GoToIfEq 0x8010, 4, _1170
    GoToIfEq 0x8010, 5, _1227
    GoToIfEq 0x8010, 6, _12D4
    GoToIfEq 0x8010, 7, _136D
    GoToIfEq 0x8010, 8, _1406
    GoToIfEq 0x8010, 9, _14C8
    GoToIfEq 0x8010, 10, _158A
    GoToIfEq 0x8010, 11, _1641
    GoToIfEq 0x8010, 12, _16EE
    GoToIfEq 0x8010, 13, _17A5
    GoToIfEq 0x8010, 14, _1852
    GoToIfEq 0x8010, 15, _1909
    GoToIfEq 0x8010, 16, _19A2
    GoToIfEq 0x8010, 17, _1A3B
    GoToIfEq 0x8010, 18, _1B07
    GoToIfEq 0x8010, 19, _1B37
    GoToIfEq 0x8010, 20, _1B67
    GoToIfEq 0x8010, 21, _1B91
    GoToIfEq 0x8010, 22, _1BC1
    GoToIfEq 0x8010, 23, _1BEB
    GoToIfEq 0x8010, 24, _1E5C
    GoToIfEq 0x8010, 25, _1E86
    GoToIfEq 0x8010, 26, _1EB0
    GoToIfEq 0x8010, 27, _1C15
    GoToIfEq 0x8010, 28, _1EDA
    GoToIfEq 0x8010, 29, _1FFC
    GoToIfEq 0x8010, 30, _2086
    GoToIfEq 0x8010, 31, _1F71
    End

_0E93:
    Message BattleArcadeScene_Text_CurrentEvent
    Call _3288
    Call _20AA
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    GoToIfEq 0x8006, 0, _0F1F
    GoToIfEq 0x8006, 1, _0F39
    End

_0EC8:
    Call _32D6
    Call _21C5
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    CallIfEq 0x8006, 0, _0F53
    CallIfEq 0x8006, 1, _0F59
    PlaySoundEffect SEQ_SE_DP_DENDOU
    GoTo _2357
    End

_0F1F:
    SetVar 0x8005, 24
    SetVar 0x8006, 26
    SetVar 0x800E, 25
    GoTo _0EC8
    End

_0F39:
    SetVar 0x8005, 24
    SetVar 0x8006, 26
    SetVar 0x800E, 27
    GoTo _0EC8
    End

_0F53:
    Message BattleArcadeScene_Text_SoloNonFullHP
    Return

_0F59:
    Message BattleArcadeScene_Text_MultiNonFullHP
    Return

_0F5F:
    Message BattleArcadeScene_Text_CurrentEvent
    Call _3288
    Call _20AA
    Call _32D6
    SetVar 0x8005, 34
    SetVar 0x8006, 35
    Call _21A9
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    CallIfEq 0x8006, 0, _0FC8
    CallIfEq 0x8006, 1, _0FE4
    PlaySoundEffect SEQ_SE_DP_DENDOU
    GoTo _2357
    End

_0FC8:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _1000
    Message BattleArcadeScene_Text_SoloPoisoned
    Return

_0FE4:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _1006
    Message BattleArcadeScene_Text_MultiPoisoned
    Return

_1000:
    Message BattleArcadeScene_Text_SoloImmuneToPoison
    Return

_1006:
    Message BattleArcadeScene_Text_MultiImmuneToPoison
    Return

_100C:
    Message BattleArcadeScene_Text_CurrentEvent
    Call _3288
    Call _20AA
    Call _32D6
    SetVar 0x8005, 46
    SetVar 0x8006, 47
    Call _21A9
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    CallIfEq 0x8006, 0, _107F
    CallIfEq 0x8006, 1, _109B
    PlaySoundEffect SEQ_SE_DP_DENDOU
    GoTo _2357
    End

_107F:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _10B7
    Message BattleArcadeScene_Text_SoloParalyzed
    Return

_109B:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _10BD
    Message BattleArcadeScene_Text_MultiParalyzed
    Return

_10B7:
    Message BattleArcadeScene_Text_SoloImmuneToParalysis
    Return

_10BD:
    Message BattleArcadeScene_Text_MultiImmuneToParalysis
    Return

_10C3:
    Message BattleArcadeScene_Text_CurrentEvent
    Call _3288
    Call _20AA
    Call _32D6
    SetVar 0x8005, 38
    SetVar 0x8006, 39
    Call _21A9
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    CallIfEq 0x8006, 0, _112C
    CallIfEq 0x8006, 1, _1148
    PlaySoundEffect SEQ_SE_DP_DENDOU
    GoTo _2357
    End

_112C:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _1164
    Message BattleArcadeScene_Text_SoloBurned
    Return

_1148:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _116A
    Message BattleArcadeScene_Text_MultiBurned
    Return

_1164:
    Message BattleArcadeScene_Text_SoloImmuneToBurn
    Return

_116A:
    Message BattleArcadeScene_Text_MultiImmuneToBurn
    Return

_1170:
    Message BattleArcadeScene_Text_CurrentEvent
    Call _3288
    Call _20AA
    Call _32D6
    SetVar 0x8005, 42
    SetVar 0x8006, 43
    Call _21A9
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    CallIfEq 0x8006, 0, _11E3
    CallIfEq 0x8006, 1, _11FF
    PlaySoundEffect SEQ_SE_DP_DENDOU
    GoTo _2357
    End

_11E3:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _121B
    Message BattleArcadeScene_Text_SoloAsleep
    Return

_11FF:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _1221
    Message BattleArcadeScene_Text_MultiAsleep
    Return

_121B:
    Message BattleArcadeScene_Text_SoloImmuneToSleep
    Return

_1221:
    Message BattleArcadeScene_Text_MultiImmuneToSleep
    Return

_1227:
    Message BattleArcadeScene_Text_CurrentEvent
    Call _3288
    Call _20AA
    Call _32D6
    SetVar 0x8005, 30
    SetVar 0x8006, 31
    Call _21A9
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    CallIfEq 0x8006, 0, _1290
    CallIfEq 0x8006, 1, _12AC
    PlaySoundEffect SEQ_SE_DP_DENDOU
    GoTo _2357
    End

_1290:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _12C8
    Message BattleArcadeScene_Text_SoloFrozen
    Return

_12AC:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _12CE
    Message BattleArcadeScene_Text_MultiFrozen
    Return

_12C8:
    Message BattleArcadeScene_Text_SoloImmuneToFreeze
    Return

_12CE:
    Message BattleArcadeScene_Text_MultiImmuneToFreeze
    Return

_12D4:
    Message BattleArcadeScene_Text_CurrentEvent
    Call _20AA
    CloseMessage
    Call _2211
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 15, 1, 0, 0x8008
    BufferItemName 2, 0x8008
    FrontierScrCmd_C6 1, 0, 1
    FrontierScrCmd_C6 1, 1, 1
    FrontierScrCmd_C6 1, 2, 1
    FrontierScrCmd_C6 1, 3, 1
    Message BattleArcadeScene_Text_HereYouGo
    CloseMessage
    Call _221D
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    CallIfEq 0x8006, 0, _1358
    CallIfEq 0x8006, 1, _135E
    PlaySoundEffect SEQ_SE_DP_DENDOU
    GoTo _2357
    End

_1358:
    Message BattleArcadeScene_Text_SoloLoanItem
    Return

_135E:
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    Message BattleArcadeScene_Text_MultiLoanItem
    Return

_136D:
    Message BattleArcadeScene_Text_CurrentEvent
    Call _20AA
    CloseMessage
    Call _2211
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 15, 1, 0, 0x8008
    BufferItemName 2, 0x8008
    FrontierScrCmd_C6 1, 0, 1
    FrontierScrCmd_C6 1, 1, 1
    FrontierScrCmd_C6 1, 2, 1
    FrontierScrCmd_C6 1, 3, 1
    Message BattleArcadeScene_Text_HereYouGo
    CloseMessage
    Call _221D
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    CallIfEq 0x8006, 0, _13F1
    CallIfEq 0x8006, 1, _13F7
    PlaySoundEffect SEQ_SE_DP_DENDOU
    GoTo _2357
    End

_13F1:
    Message BattleArcadeScene_Text_SoloLoanItem
    Return

_13F7:
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    Message BattleArcadeScene_Text_MultiLoanItem
    Return

_1406:
    Message BattleArcadeScene_Text_CurrentEvent
    Call _3288
    Call _20AA
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    GoToIfEq 0x8006, 0, _1488
    GoToIfEq 0x8006, 1, _14A2
    End

_143B:
    Call _32D6
    Call _21C5
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    CallIfEq 0x8006, 0, _14BC
    CallIfEq 0x8006, 1, _14C2
    PlaySoundEffect SEQ_SE_DP_DENDOU
    GoTo _2357
    End

_1488:
    SetVar 0x8005, 16
    SetVar 0x8006, 18
    SetVar 0x800E, 17
    GoTo _143B
    End

_14A2:
    SetVar 0x8005, 16
    SetVar 0x8006, 18
    SetVar 0x800E, 19
    GoTo _143B
    End

_14BC:
    Message BattleArcadeScene_Text_SoloLeveledUp
    Return

_14C2:
    Message BattleArcadeScene_Text_MultiLeveledUp
    Return

_14C8:
    Message BattleArcadeScene_Text_CurrentEvent
    Call _3294
    Call _2092
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    GoToIfEq 0x8006, 0, _154A
    GoToIfEq 0x8006, 1, _1564
    End

_14FD:
    Call _32D6
    Call _21C5
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    CallIfEq 0x8006, 0, _157E
    CallIfEq 0x8006, 1, _1584
    PlaySoundEffect SEQ_SE_DP_DENDOU
    GoTo _2357
    End

_154A:
    SetVar 0x8005, 20
    SetVar 0x8006, 22
    SetVar 0x800E, 21
    GoTo _14FD
    End

_1564:
    SetVar 0x8005, 20
    SetVar 0x8006, 22
    SetVar 0x800E, 23
    GoTo _14FD
    End

_157E:
    Message BattleArcadeScene_Text_SoloNonFullHP
    Return

_1584:
    Message BattleArcadeScene_Text_MultiNonFullHP
    Return

_158A:
    Message BattleArcadeScene_Text_CurrentEvent
    Call _3294
    Call _2092
    Call _32D6
    SetVar 0x8005, 32
    SetVar 0x8006, 33
    Call _21A9
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    CallIfEq 0x8006, 0, _15FD
    CallIfEq 0x8006, 1, _1619
    PlaySoundEffect SEQ_SE_DP_DENDOU
    GoTo _2357
    End

_15FD:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _1635
    Message BattleArcadeScene_Text_SoloPoisoned
    Return

_1619:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _163B
    Message BattleArcadeScene_Text_MultiPoisoned
    Return

_1635:
    Message BattleArcadeScene_Text_SoloImmuneToPoison
    Return

_163B:
    Message BattleArcadeScene_Text_MultiImmuneToPoison
    Return

_1641:
    Message BattleArcadeScene_Text_CurrentEvent
    Call _3294
    Call _2092
    Call _32D6
    SetVar 0x8005, 44
    SetVar 0x8006, 45
    Call _21A9
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    CallIfEq 0x8006, 0, _16AA
    CallIfEq 0x8006, 1, _16C6
    PlaySoundEffect SEQ_SE_DP_DENDOU
    GoTo _2357
    End

_16AA:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _16E2
    Message BattleArcadeScene_Text_SoloParalyzed
    Return

_16C6:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _16E8
    Message BattleArcadeScene_Text_MultiParalyzed
    Return

_16E2:
    Message BattleArcadeScene_Text_SoloImmuneToParalysis
    Return

_16E8:
    Message BattleArcadeScene_Text_MultiImmuneToParalysis
    Return

_16EE:
    Message BattleArcadeScene_Text_CurrentEvent
    Call _3294
    Call _2092
    Call _32D6
    SetVar 0x8005, 36
    SetVar 0x8006, 37
    Call _21A9
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    CallIfEq 0x8006, 0, _1761
    CallIfEq 0x8006, 1, _177D
    PlaySoundEffect SEQ_SE_DP_DENDOU
    GoTo _2357
    End

_1761:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _1799
    Message BattleArcadeScene_Text_SoloBurned
    Return

_177D:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _179F
    Message BattleArcadeScene_Text_MultiBurned
    Return

_1799:
    Message BattleArcadeScene_Text_SoloImmuneToBurn
    Return

_179F:
    Message BattleArcadeScene_Text_MultiImmuneToBurn
    Return

_17A5:
    Message BattleArcadeScene_Text_CurrentEvent
    Call _3294
    Call _2092
    Call _32D6
    SetVar 0x8005, 40
    SetVar 0x8006, 41
    Call _21A9
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    CallIfEq 0x8006, 0, _180E
    CallIfEq 0x8006, 1, _182A
    PlaySoundEffect SEQ_SE_DP_DENDOU
    GoTo _2357
    End

_180E:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _1846
    Message BattleArcadeScene_Text_SoloAsleep
    Return

_182A:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _184C
    Message BattleArcadeScene_Text_MultiAsleep
    Return

_1846:
    Message BattleArcadeScene_Text_SoloImmuneToSleep
    Return

_184C:
    Message BattleArcadeScene_Text_MultiImmuneToSleep
    Return

_1852:
    Message BattleArcadeScene_Text_CurrentEvent
    Call _3294
    Call _2092
    Call _32D6
    SetVar 0x8005, 28
    SetVar 0x8006, 29
    Call _21A9
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    CallIfEq 0x8006, 0, _18C5
    CallIfEq 0x8006, 1, _18E1
    PlaySoundEffect SEQ_SE_DP_DENDOU
    GoTo _2357
    End

_18C5:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _18FD
    Message BattleArcadeScene_Text_SoloFrozen
    Return

_18E1:
    FrontierScrCmd_BF 47, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _1903
    Message BattleArcadeScene_Text_MultiFrozen
    Return

_18FD:
    Message BattleArcadeScene_Text_SoloImmuneToFreeze
    Return

_1903:
    Message BattleArcadeScene_Text_MultiImmuneToFreeze
    Return

_1909:
    Message BattleArcadeScene_Text_CurrentEvent
    Call _2092
    CloseMessage
    Call _21ED
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 15, 0, 0, 0x8008
    BufferItemName 2, 0x8008
    FrontierScrCmd_C6 0, 0, 1
    FrontierScrCmd_C6 0, 1, 1
    FrontierScrCmd_C6 0, 2, 1
    FrontierScrCmd_C6 0, 3, 1
    Message BattleArcadeScene_Text_HereYouGo
    CloseMessage
    Call _21F9
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    CallIfEq 0x8006, 0, _198D
    CallIfEq 0x8006, 1, _1993
    PlaySoundEffect SEQ_SE_DP_DENDOU
    GoTo _2357
    End

_198D:
    Message BattleArcadeScene_Text_SoloLoanItem
    Return

_1993:
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    Message BattleArcadeScene_Text_MultiLoanItem
    Return

_19A2:
    Message BattleArcadeScene_Text_CurrentEvent
    Call _2092
    CloseMessage
    Call _21ED
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 15, 0, 0, 0x8008
    BufferItemName 2, 0x8008
    FrontierScrCmd_C6 0, 0, 1
    FrontierScrCmd_C6 0, 1, 1
    FrontierScrCmd_C6 0, 2, 1
    FrontierScrCmd_C6 0, 3, 1
    Message BattleArcadeScene_Text_HereYouGo
    CloseMessage
    Call _21F9
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    CallIfEq 0x8006, 0, _1A26
    CallIfEq 0x8006, 1, _1A2C
    PlaySoundEffect SEQ_SE_DP_DENDOU
    GoTo _2357
    End

_1A26:
    Message BattleArcadeScene_Text_SoloLoanItem
    Return

_1A2C:
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    Message BattleArcadeScene_Text_MultiLoanItem
    Return

_1A3B:
    Message BattleArcadeScene_Text_CurrentEvent
    Call _3294
    Call _2092
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    GoToIfEq 0x8006, 0, _1AC7
    GoToIfEq 0x8006, 1, _1AE1
    End

_1A70:
    Call _32D6
    Call _21C5
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    CallIfEq 0x8006, 0, _1AFB
    CallIfEq 0x8006, 1, _1B01
    PlaySoundEffect SEQ_SE_DP_DENDOU
    GoTo _2357
    End

_1AC7:
    SetVar 0x8005, 12
    SetVar 0x8006, 14
    SetVar 0x800E, 13
    GoTo _1A70
    End

_1AE1:
    SetVar 0x8005, 12
    SetVar 0x8006, 14
    SetVar 0x800E, 15
    GoTo _1A70
    End

_1AFB:
    Message BattleArcadeScene_Text_SoloLeveledUp
    Return

_1B01:
    Message BattleArcadeScene_Text_MultiLeveledUp
    Return

_1B07:
    Message BattleArcadeScene_Text_CurrentEvent
    Call _20D4
    Call _32D6
    Call _211D
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    Message BattleArcadeScene_Text_SunnyCondition
    PlaySoundEffect SEQ_SE_DP_DENDOU
    GoTo _2357
    End

_1B37:
    Message BattleArcadeScene_Text_CurrentEvent
    Call _20D4
    Call _32D6
    Call _2101
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    Message BattleArcadeScene_Text_RainCondition
    PlaySoundEffect SEQ_SE_DP_DENDOU
    GoTo _2357
    End

_1B67:
    Message BattleArcadeScene_Text_CurrentEvent
    Call _20D4
    Call _2155
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    Message BattleArcadeScene_Text_SandyCondition
    PlaySoundEffect SEQ_SE_DP_DENDOU
    GoTo _2357
    End

_1B91:
    Message BattleArcadeScene_Text_CurrentEvent
    Call _20D4
    Call _32D6
    Call _2139
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    Message BattleArcadeScene_Text_HailCondition
    PlaySoundEffect SEQ_SE_DP_DENDOU
    GoTo _2357
    End

_1BC1:
    Message BattleArcadeScene_Text_CurrentEvent
    Call _20D4
    Call _2171
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    Message BattleArcadeScene_Text_FoggyCondition
    PlaySoundEffect SEQ_SE_DP_DENDOU
    GoTo _2357
    End

_1BEB:
    Message BattleArcadeScene_Text_CurrentEvent
    Call _20D4
    Call _218D
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    Message BattleArcadeScene_Text_TrickRoomCondition
    PlaySoundEffect SEQ_SE_DP_DENDOU
    GoTo _2357
    End

_1C15:
    Message BattleArcadeScene_Text_CurrentEvent
    Call _20D4
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    CallIfEq 0x8006, 0, _1DEC
    CallIfEq 0x8006, 1, _1E00
    FrontierScrCmd_31 4, 2
    FrontierScrCmd_31 5, 6
    FrontierScrCmd_31 6, 3
    FrontierScrCmd_31 7, 7
    PlaySoundEffect SEQ_SE_DP_Z_SEARCH
    FrontierScrCmd_BF 41, 0, 3, 0x8008
    FrontierScrCmd_BF 42, 0, 3, 0x8008
    FrontierScrCmd_C6 0, 3, 0
    FrontierScrCmd_C6 1, 3, 0
    WaitTime 14, 0x8008
    FrontierScrCmd_BF 41, 0, 2, 0x8008
    FrontierScrCmd_BF 42, 0, 2, 0x8008
    FrontierScrCmd_C6 0, 2, 0
    FrontierScrCmd_C6 1, 2, 0
    WaitTime 14, 0x8008
    FrontierScrCmd_BF 41, 0, 1, 0x8008
    FrontierScrCmd_BF 42, 0, 1, 0x8008
    FrontierScrCmd_C6 0, 1, 0
    FrontierScrCmd_C6 1, 1, 0
    WaitTime 14, 0x8008
    FrontierScrCmd_BF 41, 0, 0, 0x8008
    FrontierScrCmd_BF 42, 0, 0, 0x8008
    FrontierScrCmd_C6 0, 0, 0
    FrontierScrCmd_C6 1, 0, 0
    WaitTime 14, 0x8008
    FrontierScrCmd_BF 25, 0, 0, 0x8008
    PlaySoundEffect SEQ_SE_DP_Z_SEARCH
    FrontierScrCmd_BF 41, 1, 0, 0x8008
    FrontierScrCmd_BF 42, 1, 0, 0x8008
    FrontierScrCmd_C6 0, 0, 1
    FrontierScrCmd_C6 1, 0, 1
    WaitTime 14, 0x8008
    FrontierScrCmd_BF 41, 1, 1, 0x8008
    FrontierScrCmd_BF 42, 1, 1, 0x8008
    FrontierScrCmd_C6 0, 1, 1
    FrontierScrCmd_C6 1, 1, 1
    WaitTime 14, 0x8008
    FrontierScrCmd_BF 41, 1, 2, 0x8008
    FrontierScrCmd_BF 42, 1, 2, 0x8008
    FrontierScrCmd_C6 0, 2, 1
    FrontierScrCmd_C6 1, 2, 1
    WaitTime 14, 0x8008
    FrontierScrCmd_BF 41, 1, 3, 0x8008
    FrontierScrCmd_BF 42, 1, 3, 0x8008
    FrontierScrCmd_C6 0, 3, 1
    FrontierScrCmd_C6 1, 3, 1
    WaitTime 14, 0x8008
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    Message BattleArcadeScene_Text_PokemonSwap
    StopSoundEffect SEQ_SE_DP_Z_SEARCH
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    CallIfEq 0x8006, 0, _1E24
    CallIfEq 0x8006, 1, _1E38
    PlaySoundEffect SEQ_SE_DP_DENDOU
    GoTo _2357
    End

_1DEC:
    FrontierScrCmd_28 4, _0420
    FrontierScrCmd_28 98, _0420
    FrontierScrCmd_29
    Return

_1E00:
    FrontierScrCmd_28 1, _0420
    FrontierScrCmd_28 2, _0420
    FrontierScrCmd_28 98, _0420
    FrontierScrCmd_28 99, _0420
    FrontierScrCmd_29
    Return

_1E24:
    FrontierScrCmd_28 4, _0428
    FrontierScrCmd_28 98, _0430
    FrontierScrCmd_29
    Return

_1E38:
    FrontierScrCmd_28 1, _0428
    FrontierScrCmd_28 2, _0428
    FrontierScrCmd_28 98, _0430
    FrontierScrCmd_28 99, _0430
    FrontierScrCmd_29
    Return

_1E5C:
    Message BattleArcadeScene_Text_CurrentEvent
    Call _2092
    Call _21E7
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    Message BattleArcadeScene_Text_SpeedUpBoard
    PlaySoundEffect SEQ_SE_DP_DENDOU
    GoTo _2357
    End

_1E86:
    Message BattleArcadeScene_Text_CurrentEvent
    Call _2092
    Call _21E7
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    Message BattleArcadeScene_Text_SlowDownBoard
    PlaySoundEffect SEQ_SE_DP_DENDOU
    GoTo _2357
    End

_1EB0:
    Message BattleArcadeScene_Text_CurrentEvent
    Call _2092
    Call _21E7
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    Message BattleArcadeScene_Text_RandomizeBoard
    PlaySoundEffect SEQ_SE_DP_DENDOU
    GoTo _2357
    End

_1EDA:
    Message BattleArcadeScene_Text_CurrentEvent
    Call _2092
    CloseMessage
    Call _21ED
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    FrontierScrCmd_BF 12, 0, 0, 0x8008
    AddToRecordValue RECORD_UNK_067, 0x8008
    GiveBattlePoints 0x8008
    BufferNumber 2, 0x8008
    StopSoundEffect SEQ_SE_DP_DENDOU
    PlayFanfare SEQ_PL_DON2
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    CallIfEq 0x8006, 0, _1F65
    CallIfEq 0x8006, 1, _1F6B
    WaitFanfare
    CloseMessage
    Call _2205
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    Message BattleArcadeScene_Text_AreYouReady2
    PlaySoundEffect SEQ_SE_DP_DENDOU
    GoTo _2357
    End

_1F65:
    Message BattleArcadeScene_Text_SoloFreeBP
    Return

_1F6B:
    Message BattleArcadeScene_Text_MultiFreeBP
    Return

_1F71:
    Message BattleArcadeScene_Text_CurrentEvent
    Call _2092
    CloseMessage
    Call _21ED
    FrontierScrCmd_BF 38, 0, 0, 0x8008
    FrontierScrCmd_BF 38, 1, 1, 0x8008
    FrontierScrCmd_BF 12, 0, 0, 0x8008
    AddToRecordValue RECORD_UNK_067, 0x8008
    GiveBattlePoints 0x8008
    BufferNumber 2, 0x8008
    StopSoundEffect SEQ_SE_DP_DENDOU
    PlayFanfare SEQ_PL_DON2
    FrontierScrCmd_BF 28, 0, 0, 0x8006
    CallIfEq 0x8006, 0, _1F65
    CallIfEq 0x8006, 1, _1F6B
    WaitFanfare
    CloseMessage
    Call _2205
    FrontierScrCmd_28 3, _05E0
    FrontierScrCmd_29
    Message BattleArcadeScene_Text_AreYouReady2
    PlaySoundEffect SEQ_SE_DP_DENDOU
    GoTo _2357
    End

_1FFC:
    SetVar 0x800D, 1
    Message BattleArcadeScene_Text_CurrentEvent
    Call _20AA
    CloseMessage
    Call _2F72
    Call _2668
    Call _3288
    Message BattleArcadeScene_Text_SkipBattle
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 0, _2049
    GoToIfEq 0x8008, 1, _2053
    End

_2049:
    WaitABPress
    GoTo _2069
    End

_2053:
    WaitTime 30, 0x8008
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 147
    ClearReceivedTempDataAllPlayers
    GoTo _2069
    End

_2069:
    CloseMessage
    FrontierScrCmd_28 3, _05B4
    FrontierScrCmd_29
    FrontierScrCmd_BF 46, 0, 0, 0x8008
    GoTo _26BC
    End

_2086:
    Message BattleArcadeScene_Text_NoEvent
    GoTo _2357
    End

_2092:
    Call _0CAE
    PlaySoundEffect SEQ_SE_PL_FR05
    WaitTime 45, 0x8008
    Call _0CCA
    Return

_20AA:
    FrontierScrCmd_BF 28, 0, 0, 0x8005
    Call _0CBC
    PlaySoundEffect SEQ_SE_PL_FR05
    WaitTime 45, 0x8008
    FrontierScrCmd_BF 28, 0, 0, 0x8005
    Call _0CD0
    Return

_20D4:
    FrontierScrCmd_BF 28, 0, 0, 0x8005
    Call _0CAE
    Call _0CBC
    PlaySoundEffect SEQ_SE_PL_FR05
    WaitTime 45, 0x8008
    Call _0CCA
    Call _0CD0
    Return

_2101:
    PlaySoundEffect SEQ_SE_PL_FR04
    FrontierScrCmd_43 0, 6
    FrontierScrCmd_43 0, 7
    WaitTime 60, 0x8008
    WaitSoundEffect SEQ_SE_PL_FR04
    Return

_211D:
    PlaySoundEffect SEQ_SE_PL_FR04
    FrontierScrCmd_43 0, 8
    FrontierScrCmd_43 0, 9
    WaitTime 60, 0x8008
    WaitSoundEffect SEQ_SE_PL_FR04
    Return

_2139:
    PlaySoundEffect SEQ_SE_PL_FR04
    FrontierScrCmd_43 0, 10
    FrontierScrCmd_43 0, 11
    WaitTime 60, 0x8008
    WaitSoundEffect SEQ_SE_PL_FR04
    Return

_2155:
    PlaySoundEffect SEQ_SE_PL_FR03
    FrontierScrCmd_43 0, 0
    FrontierScrCmd_43 0, 1
    WaitTime 60, 0x8008
    WaitSoundEffect SEQ_SE_PL_FR03
    Return

_2171:
    PlaySoundEffect SEQ_SE_PL_FR03
    FrontierScrCmd_43 0, 2
    FrontierScrCmd_43 0, 3
    WaitTime 60, 0x8008
    WaitSoundEffect SEQ_SE_PL_FR03
    Return

_218D:
    PlaySoundEffect SEQ_SE_PL_FR03
    FrontierScrCmd_43 0, 4
    FrontierScrCmd_43 0, 5
    WaitTime 60, 0x8008
    WaitSoundEffect SEQ_SE_PL_FR03
    Return

_21A9:
    PlaySoundEffect SEQ_SE_PL_FR04
    FrontierScrCmd_43 0, 0x8005
    FrontierScrCmd_43 0, 0x8006
    WaitTime 60, 0x8008
    WaitSoundEffect SEQ_SE_PL_FR04
    Return

_21C5:
    PlaySoundEffect SEQ_SE_PL_FR04
    FrontierScrCmd_43 0, 0x8005
    FrontierScrCmd_43 0, 0x8006
    FrontierScrCmd_43 0, 0x800E
    WaitTime 60, 0x8008
    WaitSoundEffect SEQ_SE_PL_FR04
    Return

_21E7:
    PlaySoundEffect SEQ_SE_PL_FR05
    Return

_21ED:
    FrontierScrCmd_28 3, _05F8
    FrontierScrCmd_29
    Return

_21F9:
    FrontierScrCmd_28 3, _0620
    FrontierScrCmd_29
    Return

_2205:
    FrontierScrCmd_28 3, _0610
    FrontierScrCmd_29
    Return

_2211:
    FrontierScrCmd_28 3, _0604
    FrontierScrCmd_29
    Return

_221D:
    FrontierScrCmd_28 3, _0630
    FrontierScrCmd_29
    Return

_2229:
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _224F
    GoTo _2247
    End

_2247:
    GoTo _22DB
    End

_224F:
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 146
    ClearReceivedTempDataAllPlayers
    GoTo _22DB
    End

_225F:
    WaitTime 1, 0x8008
    FrontierScrCmd_BF 6, 0, 0, 0x8008
    WaitTime 1, 0x8008
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 180
    ClearReceivedTempDataAllPlayers
    Return

_227E:
    WaitTime 1, 0x8008
    FrontierScrCmd_BF 6, 0, 0, 0x8008
    WaitTime 1, 0x8008
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 181
    ClearReceivedTempDataAllPlayers
    Return

_229D:
    WaitTime 1, 0x8008
    FrontierScrCmd_BF 6, 0, 0, 0x8008
    WaitTime 1, 0x8008
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 182
    ClearReceivedTempDataAllPlayers
    Return

_22BC:
    WaitTime 1, 0x8008
    FrontierScrCmd_BF 6, 0, 0, 0x8008
    WaitTime 1, 0x8008
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 183
    ClearReceivedTempDataAllPlayers
    Return

_22DB:
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _2337
    FrontierScrCmd_BF 48, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _2FC0
    GoToIfEq 0x8008, 2, _2FD9
    Call _32A0
    BufferNumber 0, 0x8008
    Call _2462
    FrontierScrCmd_28 98, _02D4
    FrontierScrCmd_29
    Call _2ED8
    Return

_2337:
    Call _2479
    FrontierScrCmd_28 98, _02E8
    FrontierScrCmd_28 99, _02FC
    FrontierScrCmd_29
    Call _2ED8
    Return

_2357:
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 0, _237C
    GoToIfEq 0x8008, 1, _23CC
    End

_237C:
    WaitABPress
    CloseMessage
    FrontierScrCmd_28 3, _05B4
    FrontierScrCmd_29
    Message BattleArcadeScene_Text_BattleStart
    WaitABPress
    CloseMessage
    WaitTime 15, 0x8008
    FrontierScrCmd_28 98, _0288
    FrontierScrCmd_29
    FrontierScrCmd_BF 40, 0, 0, 0x8008
    FrontierScrCmd_C4 0
    WaitABPress
    CloseMessage
    FrontierScrCmd_28 4, _0310
    FrontierScrCmd_28 98, _0318
    FrontierScrCmd_29
    GoTo _24AD
    End

_23CC:
    WaitABPress
    MessageNoSkip BattleArcadeScene_Text_PleaseWait
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 149
    ClearReceivedTempDataAllPlayers
    CloseMessage
    FrontierScrCmd_28 3, _05B4
    FrontierScrCmd_29
    MessageNoSkip BattleArcadeScene_Text_BattleStart
    WaitTime 30, 0x8008
    CloseMessage
    WaitTime 15, 0x8008
    FrontierScrCmd_28 98, _0288
    FrontierScrCmd_29
    FrontierScrCmd_BF 40, 0, 0, 0x8008
    FrontierScrCmd_C4 0
    WaitTime 30, 0x8008
    CloseMessage
    FrontierScrCmd_28 99, _0288
    FrontierScrCmd_29
    FrontierScrCmd_BF 40, 0, 0, 0x8008
    FrontierScrCmd_C4 1
    WaitTime 30, 0x8008
    CloseMessage
    FrontierScrCmd_28 1, _0310
    FrontierScrCmd_28 2, _0310
    FrontierScrCmd_28 98, _0318
    FrontierScrCmd_28 99, _0318
    FrontierScrCmd_29
    MessageNoSkip BattleArcadeScene_Text_PleaseWait
    GoTo _24AD
    End

_2462:
    FrontierScrCmd_BF 20, 0, 0, 0x8008
    SetVar 0x800B, 0x8008
    Call _3466
    Return

_2479:
    FrontierScrCmd_BF 20, 0, 0, 0x8008
    SetVar 0x800B, 0x8008
    FrontierScrCmd_BF 20, 1, 0, 0x8008
    SetVar 0x800C, 0x8008
    Call _347D
    Return

_249F:
    SetVar 0x800B, 218
    Call _3466
    Return

_24AD:
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _2506
    FrontierScrCmd_BF 48, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _24F2
    GoToIfEq 0x8008, 2, _24F2
    FrontierScrCmd_3F 2
    GoTo _251C
    End

_24F2:
    FrontierScrCmd_42 0
    IncrementRecordValue RECORD_UNK_059
    FrontierScrCmd_47 6
    GoTo _251C
    End

_2506:
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 141
    ClearReceivedTempDataAllPlayers
    CloseMessage
    FrontierScrCmd_3F 2
    GoTo _251C
    End

_251C:
    Call _32A0
    BufferNumber 0, 0x8008
    Call _2F24
    Call _2F4A
    FrontierScrCmd_BF 48, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _2562
    GoToIfEq 0x8008, 2, _2562
    FrontierScrCmd_42 0
    GoTo _2562
    End

_2562:
    Call _32A0
    FrontierScrCmd_2B 2
    Call _3272
    FrontierScrCmd_BC
    FrontierScrCmd_BB
    Call _2EB2
    FrontierScrCmd_BF 37, 0, 0, 0x8008
    Call _3246
    Call _32CB
    Call _32EA
    FadeScreenIn
    FrontierScrCmd_C0 0x8008
    GoToIfEq 0x8008, 0, _2D52
    IncrementRecordValue RECORD_UNK_063
    FrontierScrCmd_BF 48, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _31DE
    GoToIfEq 0x8008, 2, _3212
    Call _32A0
    BufferNumber 0, 0x8008
    GoTo _25EE
    End

_25EE:
    Call _25FC
    GoTo _26BC
    End

_25FC:
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _262E
    FrontierScrCmd_28 98, _03F0
    FrontierScrCmd_28 4, _0414
    FrontierScrCmd_29
    FrontierScrCmd_25 98
    FrontierScrCmd_23 0x800B
    Return

_262E:
    Call _229D
    FrontierScrCmd_28 98, _03F0
    FrontierScrCmd_28 99, _03FC
    FrontierScrCmd_28 1, _0414
    FrontierScrCmd_28 2, _0414
    FrontierScrCmd_29
    FrontierScrCmd_25 98
    FrontierScrCmd_25 99
    FrontierScrCmd_23 0x800B
    FrontierScrCmd_23 0x800C
    Return

_2668:
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _2692
    FrontierScrCmd_28 98, _0408
    FrontierScrCmd_29
    FrontierScrCmd_25 98
    FrontierScrCmd_23 0x800B
    Return

_2692:
    Call _22BC
    FrontierScrCmd_28 98, _0408
    FrontierScrCmd_28 99, _0408
    FrontierScrCmd_29
    FrontierScrCmd_25 98
    FrontierScrCmd_25 99
    FrontierScrCmd_23 0x800B
    FrontierScrCmd_23 0x800C
    Return

_26BC:
    GoTo _26CC
    End

_26C4:
    GoTo _26CC
    End

_26CC:
    Call _26E0
    Call _26F4
    GoTo _270C
    End

_26E0:
    FrontierScrCmd_BF 14, 1, 0, 0x8008
    FrontierScrCmd_BF 5, 0, 0, 0x8008
    Return

_26F4:
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    CallIfEq 0x8008, 1, _0860
    Return

_270C:
    FrontierScrCmd_BF 23, 0, 0, 0x8008
    GoToIfNe 0x8008, 7, _27DC
    GoTo _272A
    End

_272A:
    GoToIfGe 0x800D, 1, _279A
    FrontierScrCmd_71 0x8008
    GoToIfEq 0x8008, 0, _2780
    FrontierScrCmd_70 0x8008
    CallIfEq 0x8008, 0, _2C4E
    CallIfEq 0x8008, 1, _2C54
    ShowYesNoMenu 0x8008, MENU_NO
    GoToIfEq 0x8008, 1, _279A
    GoTo _278C
    End

_2780:
    MessageNoSkip BattleArcadeScene_Text_PleaseWait
    GoTo _279A
    End

_278C:
    Call _2BD8
    GoTo _279A
    End

_279A:
    FrontierScrCmd_BF 22, 0, 0, 0x8008
    FrontierScrCmd_3D 0x40BF, 1
    Message BattleArcadeScene_Text_BPEarned
    BufferPlayerName 0
    FrontierScrCmd_BF 45, 0, 0, 0x8008
    BufferNumber 1, 0x8008
    GiveBattlePoints 0x8008
    Message BattleArcadeScene_Text_ReceiveBP
    PlayFanfare SEQ_PL_POINTGET3
    WaitFanfare
    GoTo _27D4
    End

_27D4:
    GoTo _2DD4
    End

_27DC:
    GoToIfGe 0x800D, 1, _28AB
    Call _349D
    FrontierScrCmd_28 97, _0640
    FrontierScrCmd_29
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _2821
    FrontierScrCmd_28 4, _0654
    FrontierScrCmd_29
    GoTo _283B
    End

_2821:
    FrontierScrCmd_28 1, _0654
    FrontierScrCmd_28 2, _0654
    FrontierScrCmd_29
    GoTo _283B
    End

_283B:
    Message BattleArcadeScene_Text_HealingMons
    PlayFanfare SEQ_ASA
    WaitFanfare
    CloseMessage
    HealParty
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _2879
    FrontierScrCmd_28 97, _064C
    FrontierScrCmd_28 4, _065C
    FrontierScrCmd_29
    GoTo _289B
    End

_2879:
    FrontierScrCmd_28 97, _064C
    FrontierScrCmd_28 1, _065C
    FrontierScrCmd_28 2, _065C
    FrontierScrCmd_29
    GoTo _289B
    End

_289B:
    FrontierScrCmd_25 97
    FrontierScrCmd_23 0x800F
    GoTo _28B3
    End

_28AB:
    GoTo _28B3
    End

_28B3:
    FrontierScrCmd_BF 48, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _2F86
    GoToIfEq 0x8008, 2, _2F86
    GoTo _28DE
    End

_28DE:
    Call _32A0
    BufferNumber 0, 0x8008
    GoTo _28F1
    End

_28F1:
    Call _32A0
    BufferNumber 0, 0x8008
    FrontierScrCmd_BF 23, 0, 0, 0x8008
    AddVar 0x8008, 1
    BufferNumber 0, 0x8008
    Message BattleArcadeScene_Text_AreYouReady
    GoTo _291C
    End

_291C:
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _2954
    GoToIfEq 0x800D, 1, _29A3
    GoToIfEq 0x8003, 0, _29B1
    GoTo _29A3
    End

_2954:
    FrontierScrCmd_71 0x8008
    GoToIfEq 0x8008, 0, _2987
    GoToIfEq 0x800D, 1, _2987
    GoToIfEq 0x8003, 0, _2995
    GoTo _2987
    End

_2987:
    SetVar 0x8008, 1
    GoTo _29BF
    End

_2995:
    SetVar 0x8008, 2
    GoTo _29BF
    End

_29A3:
    SetVar 0x8008, 3
    GoTo _29BF
    End

_29B1:
    SetVar 0x8008, 4
    GoTo _29BF
    End

_29BF:
    GoToIfEq 0x8008, 1, _29F5
    GoToIfEq 0x8008, 2, _2A10
    GoToIfEq 0x8008, 3, _2A33
    GoToIfEq 0x8008, 4, _2A56
    End

_29F5:
    InitLocalTextListMenu 31, 13, 0, 0, 0x800A
    SetMenuXOriginSide 1
    AddListMenuEntry BattleArcadeScene_Text_ContinueOption, 255, 0
    GoTo _2A81
    End

_2A10:
    InitLocalTextListMenu 31, 11, 0, 0, 0x800A
    SetMenuXOriginSide 1
    AddListMenuEntry BattleArcadeScene_Text_ContinueOption, 255, 0
    AddListMenuEntry BattleArcadeScene_Text_RecordOption, 255, 1
    GoTo _2A81
    End

_2A33:
    InitLocalTextListMenu 31, 11, 0, 0, 0x800A
    SetMenuXOriginSide 1
    AddListMenuEntry BattleArcadeScene_Text_ContinueOption, 255, 0
    AddListMenuEntry BattleArcadeScene_Text_RestOption, 255, 2
    GoTo _2A81
    End

_2A56:
    InitLocalTextListMenu 31, 9, 0, 0, 0x800A
    SetMenuXOriginSide 1
    AddListMenuEntry BattleArcadeScene_Text_ContinueOption, 255, 0
    AddListMenuEntry BattleArcadeScene_Text_RecordOption, 255, 1
    AddListMenuEntry BattleArcadeScene_Text_RestOption, 255, 2
    GoTo _2A81
    End

_2A81:
    AddListMenuEntry BattleArcadeScene_Text_RetireOption, 255, 3
    ShowListMenu
    GoTo _2A93
    End

_2A93:
    GoToIfEq 0x800A, 0, _2ACF
    GoToIfEq 0x800A, 1, _2B8A
    GoToIfEq 0x800A, 2, _2C5A
    GoToIfEq 0x800A, 3, _2CB2
    GoTo _2CB2
    End

_2ACF:
    SetVar 0x800D, 0
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _2AF3
    GoTo _2B5E
    End

_2AF3:
    BufferPartnerName 0
    Message BattleArcadeScene_Text_PartnerIsChoosing
    GoTo _2B02
    End

_2B02:
    SetVar 0x8002, 3
    FrontierScrCmd_C1 0x8002, 0, 0x8008
    GoToIfEq 0x8008, 0, _2B02
    FrontierScrCmd_C2 0x8002
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_BF 24, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _2B49
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 142
    ClearReceivedTempDataAllPlayers
    GoTo _2B5E
    End

_2B49:
    BufferPartnerName 0
    MessageNoSkip BattleArcadeScene_Text_PartnerRetired
    WaitTime 30, 0x8008
    GoTo _2D19
    End

_2B5E:
    SetVar 0x8003, 0
    FrontierScrCmd_BE
    WaitTime 1, 0x8008
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    CallIfEq 0x8008, 1, _0A2D
    GoTo _0B20
    End

_2B8A:
    FrontierScrCmd_70 0x8008
    CallIfEq 0x8008, 0, _2C4E
    CallIfEq 0x8008, 1, _2C54
    ShowYesNoMenu 0x8008, MENU_NO
    GoToIfEq 0x8008, 1, _2BD0
    GoTo _2BC2
    End

_2BC2:
    Call _2BD8
    GoTo _28B3
    End

_2BD0:
    GoTo _28B3
    End

_2BD8:
    Call _2BFA
    GoTo _2C05
    End

_2BE6:
    Call _2BFA
    AddVar 0x8009, 1
    GoTo _2C05
    End

_2BFA:
    FrontierScrCmd_BF 4, 0, 0, 0x8009
    Return

_2C05:
    GoTo _2C0D
    End

_2C0D:
    SetVar 0x8003, 1
    MessageInstant BattleArcadeScene_Text_Saving
    FrontierScrCmd_BF 17, 0, 0, 0x8008
    ShowSavingIcon
    FrontierScrCmd_6D 6, 0x8008, 0x8009, 0x8009
    HideSavingIcon
    GoToIfEq 0x8009, 1, _2C41
    Message BattleArcadeScene_Text_VideoSaveFailed
    Return

_2C41:
    PlaySoundEffect SEQ_SE_DP_SAVE
    BufferPlayerName 0
    Message BattleArcadeScene_Text_BattleSaved
    Return

_2C4E:
    Message BattleArcadeScene_Text_SaveAsVideo
    Return

_2C54:
    Message BattleArcadeScene_Text_OverwriteVideo
    Return

_2C5A:
    Message BattleArcadeScene_Text_BreakQuestion
    ShowYesNoMenu 0x8008, MENU_YES
    GoToIfEq 0x8008, 1, _2CAA
    GoTo _2C78
    End

_2C78:
    FrontierScrCmd_3D 0x40BF, 2
    FrontierScrCmd_BF 10, 0, 0, 0x8008
    FrontierScrCmd_6F
    FrontierScrCmd_BA
    Call _2E9C
    FadeScreenOut
    CloseMessage
    FrontierScrCmd_BF 7, 0, 0, 0x8008
    End

_2CAA:
    GoTo _28B3
    End

_2CB2:
    Message BattleArcadeScene_Text_RetireQuestion
    ShowYesNoMenu 0x8008, MENU_NO
    GoToIfEq 0x8008, 1, _2D4A
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _2CEA
    Message BattleArcadeScene_Text_ReturnItems
    GoTo _2D31
    End

_2CEA:
    MessageNoSkip BattleArcadeScene_Text_PleaseWait
    GoTo _2CF6
    End

_2CF6:
    SetVar 0x8002, 3
    FrontierScrCmd_C1 0x8002, 1, 0x8008
    GoToIfEq 0x8008, 0, _2CF6
    GoTo _2D19
    End

_2D19:
    Message BattleArcadeScene_Text_ReturnItems
    MessageNoSkip BattleArcadeScene_Text_PleaseWait
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 144
    ClearReceivedTempDataAllPlayers
    GoTo _2D31
    End

_2D31:
    FrontierScrCmd_BF 21, 0, 0, 0x8008
    FrontierScrCmd_3D 0x40BF, 3
    GoTo _2E0A
    End

_2D48:
    End

_2D4A:
    GoTo _28B3
    End

_2D52:
    FrontierScrCmd_71 0x8008
    GoToIfEq 0x8008, 0, _2D9B
    FrontierScrCmd_70 0x8008
    CallIfEq 0x8008, 0, _2C4E
    CallIfEq 0x8008, 1, _2C54
    ShowYesNoMenu 0x8008, MENU_NO
    GoToIfEq 0x8008, 1, _2DB5
    GoTo _2DA7
    End

_2D9B:
    MessageNoSkip BattleArcadeScene_Text_PleaseWait
    GoTo _2DBD
    End

_2DA7:
    Call _2BE6
    GoTo _2DBD
    End

_2DB5:
    GoTo _2DBD
    End

_2DBD:
    FrontierScrCmd_BF 21, 0, 0, 0x8008
    FrontierScrCmd_3D 0x40BF, 3
    GoTo _2DD4
    End

_2DD4:
    Message BattleArcadeScene_Text_ReturnItems
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _2DF6
    GoTo _2E0A
    End

_2DF6:
    MessageNoSkip BattleArcadeScene_Text_PleaseWait
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 148
    ClearReceivedTempDataAllPlayers
    GoTo _2E0A
    End

_2E0A:
    Call _2E9C
    CloseMessage
    GoTo _2E1A
    End

_2E1A:
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    CallIfEq 0x8008, 1, _2E86
    FadeScreenOut
    Call _2F5E
    Call _2F4A
    Call _3272
    FrontierScrCmd_BF 17, 0, 0, 0x8008
    CallIfEq 0x8008, 2, _2E80
    FrontierScrCmd_BF 17, 0, 0, 0x8008
    GoToIfEq 0x8008, 3, _2E90
    FrontierScrCmd_6F
    FrontierScrCmd_BA
    FrontierScrCmd_02

_2E80:
    FrontierScrCmd_C8 6
    Return

_2E86:
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 150
    ClearReceivedTempDataAllPlayers
    Return

_2E90:
    FrontierScrCmd_6F
    FrontierScrCmd_BA
    FrontierScrCmd_04 14, 1
    End

_2E9C:
    MessageInstant BattleArcadeScene_Text_Saving2
    ShowSavingIcon
    FrontierScrCmd_73 0x8008
    HideSavingIcon
    PlaySoundEffect SEQ_SE_DP_SAVE
    WaitSoundEffect SEQ_SE_DP_SAVE
    Return

_2EB2:
    FrontierScrCmd_BF 29, 0, 0, 0x8008
    FrontierScrCmd_BF 33, 0, 0, 0x8008
    FrontierScrCmd_BF 35, 0, 0, 0x8008
    FrontierScrCmd_BF 31, 0, 0, 0x8008
    Return

_2ED8:
    FrontierScrCmd_BF 35, 1, 0, 0x8008
    FrontierScrCmd_BF 31, 1, 0, 0x8008
    Return

_2EEC:
    FrontierScrCmd_BF 29, 0, 0, 0x8008
    FrontierScrCmd_BF 33, 0, 0, 0x8008
    FrontierScrCmd_BF 35, 0, 0, 0x8008
    FrontierScrCmd_BF 35, 1, 0, 0x8008
    FrontierScrCmd_BF 31, 0, 0, 0x8008
    FrontierScrCmd_BF 31, 1, 0, 0x8008
    Return

_2F24:
    FrontierScrCmd_BF 36, 0, 0, 0x8008
    FrontierScrCmd_BF 36, 1, 0, 0x8008
    FrontierScrCmd_BF 32, 0, 0, 0x8008
    FrontierScrCmd_BF 32, 1, 0, 0x8008
    Return

_2F4A:
    FrontierScrCmd_BF 30, 0, 0, 0x8008
    FrontierScrCmd_BF 34, 0, 0, 0x8008
    Return

_2F5E:
    FrontierScrCmd_BF 36, 0, 0, 0x8008
    FrontierScrCmd_BF 32, 0, 0, 0x8008
    Return

_2F72:
    FrontierScrCmd_BF 36, 1, 0, 0x8008
    FrontierScrCmd_BF 32, 1, 0, 0x8008
    Return

_2F86:
    GoToIfEq 0x8003, 1, _28DE
    FrontierScrCmd_BF 51, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _28DE
    Call _32A0
    BufferNumber 0, 0x8008
    Message BattleArcadeScene_Text_ArcadeStarApproaching
    GoTo _28F1
    End

_2FC0:
    Call _32A0
    BufferNumber 0, 0x8008
    Call _2FF2
    Message BattleArcadeScene_Text_DahliaIntro
    CloseMessage
    Return

_2FD9:
    Call _32A0
    BufferNumber 0, 0x8008
    Call _2FF2
    Message BattleArcadeScene_Text_DahliaIntroGold
    CloseMessage
    Return

_2FF2:
    Call _33E3
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
    Call _249F
    FrontierScrCmd_28 98, _0320
    FrontierScrCmd_29
    PlaySoundEffect SEQ_SE_PL_FR04
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
    PlaySoundEffect SEQ_SE_DP_DENDOU
    FrontierScrCmd_28 98, _0330
    FrontierScrCmd_29
    WaitSoundEffect SEQ_SE_DP_DENDOU
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
    Call _3198
    Call _2ED8
    Return

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
    Return

_31DE:
    Call _32A0
    BufferNumber 0, 0x8008
    FrontierScrCmd_3E 0x4053, 0x8008
    CallIfEq 0x8008, 0, _320A
    Message BattleArcadeScene_Text_BeatDahlia
    CloseMessage
    GoTo _25EE
    End

_320A:
    FrontierScrCmd_3D 0x4053, 1
    Return

_3212:
    Call _32A0
    BufferNumber 0, 0x8008
    FrontierScrCmd_3E 0x4053, 0x8008
    CallIfEq 0x8008, 2, _323E
    Message BattleArcadeScene_Text_BeatDahliaGold
    CloseMessage
    GoTo _25EE
    End

_323E:
    FrontierScrCmd_3D 0x4053, 3
    Return

_3246:
    FrontierScrCmd_2A _0204
    FrontierScrCmd_2C _0208
    FrontierScrCmd_31 4, 0
    FrontierScrCmd_31 5, 4
    FrontierScrCmd_2C _0220
    FrontierScrCmd_31 6, 1
    FrontierScrCmd_31 7, 5
    Return

_3272:
    FrontierScrCmd_2D 4
    FrontierScrCmd_2D 5
    FrontierScrCmd_2D 6
    FrontierScrCmd_2D 7
    FrontierScrCmd_2B 3
    Return

_3288:
    FrontierScrCmd_28 3, _05D0
    FrontierScrCmd_29
    Return

_3294:
    FrontierScrCmd_28 3, _05D8
    FrontierScrCmd_29
    Return

_32A0:
    FrontierScrCmd_BF 4, 0, 0, 0x8008
    GoToIfGe 0x8008, 9999, _32BE
    AddVar 0x8008, 1
    Return

_32BE:
    Return

_32C0:
    FrontierScrCmd_BF 43, 8, 0, 0x8008
    Return

_32CB:
    FrontierScrCmd_BF 43, 8, 1, 0x8008
    Return

_32D6:
    FrontierScrCmd_BF 43, 0, 1, 0x8008
    FrontierScrCmd_BF 44, 0, 0, 0x8008
    Return

_32EA:
    FrontierScrCmd_BF 44, 8, 3, 0x8008
    FrontierScrCmd_BF 44, 8, 98, 0x8008
    FrontierScrCmd_BF 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _331D
    FrontierScrCmd_BF 44, 8, 4, 0x8008
    Return

_331D:
    FrontierScrCmd_BF 44, 8, 1, 0x8008
    FrontierScrCmd_BF 44, 8, 2, 0x8008
    FrontierScrCmd_BF 44, 8, 99, 0x8008
    Return

_333A:
    FrontierScrCmd_22 _0008
    FrontierScrCmd_24 _001C
    FrontierScrCmd_BF 44, 8, 20, 0x8008
    FrontierScrCmd_BF 44, 8, 4, 0x8008
    Return

_335A:
    FrontierScrCmd_22 _0010
    FrontierScrCmd_24 _0040
    FrontierScrCmd_BF 44, 8, 20, 0x8008
    FrontierScrCmd_BF 44, 8, 1, 0x8008
    FrontierScrCmd_BF 44, 8, 2, 0x8008
    Return

_3383:
    FrontierScrCmd_22 _0070
    FrontierScrCmd_24 _00A0
    FrontierScrCmd_BF 44, 8, 4, 0x8008
    FrontierScrCmd_BF 44, 8, 3, 0x8008
    Return

_33A3:
    FrontierScrCmd_22 _0078
    FrontierScrCmd_24 _00C4
    FrontierScrCmd_BF 44, 8, 3, 0x8008
    FrontierScrCmd_BF 44, 8, 1, 0x8008
    FrontierScrCmd_BF 44, 8, 2, 0x8008
    Return

_33CC:
    FrontierScrCmd_22 _0098
    FrontierScrCmd_24 _00F4
    FrontierScrCmd_BF 44, 8, 20, 0x8008
    Return

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
    Return

_3466:
    FrontierScrCmd_22 _0198
    FrontierScrCmd_24 _01A8
    FrontierScrCmd_BF 44, 8, 98, 0x8008
    Return

_347D:
    FrontierScrCmd_22 _01A0
    FrontierScrCmd_24 _01B8
    FrontierScrCmd_BF 44, 8, 98, 0x8008
    FrontierScrCmd_BF 44, 8, 99, 0x8008
    Return

_349D:
    FrontierScrCmd_22 _01D0
    FrontierScrCmd_24 _01D8
    FrontierScrCmd_BF 44, 8, 97, 0x8008
    Return

    .balign 4, 0
