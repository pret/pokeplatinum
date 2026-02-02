# include "macros/frscrcmd.inc"

    .data

    .long _00E2 - 4
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
    .short 0x0000
    .short 0xEEEE
    .byte 0x01
    .short 0x0038
    .short 0x0020
    .byte 0x01
    .byte 0x00
    .short 0x0001
    .short 0x800F
    .byte 0x01
    .short 0x0038
    .short 0x0020
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0028:
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_002C:
    .short 0x0001
    .short 0x0048
    .short 0x0030
    .short 0x0001
    .byte 0x00
    .byte 0x00
    .short 0xFD13

    .balign 4, 0
_0038:
    .short 0x0027
    .short 0x0001
    .short 0x0005
    .short 0x0003
    .short 0x0000
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0048:
    .short 0x0027
    .short 0x0001
    .short 0x0005
    .short 0x0002
    .short 0xFD13

    .balign 4, 0
_0054:
    .short 0x0007
    .short 0x0004
    .short 0x0004
    .short 0x0002
    .short 0x0028
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0064:
    .short 0x0005
    .short 0x0001
    .short 0x0007
    .short 0x0004
    .short 0x0004
    .short 0x0002
    .short 0x0028
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0078:
    .short 0x0007
    .short 0x0008
    .short 0x0004
    .short 0x0002
    .short 0x0028
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0088:
    .short 0x0005
    .short 0x0001
    .short 0x0007
    .short 0x0008
    .short 0x0004
    .short 0x0002
    .short 0x0028
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_009C:
    .short 0x0007
    .short 0x000C
    .short 0x0004
    .short 0x0002
    .short 0x0028
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_00AC:
    .short 0x0005
    .short 0x0001
    .short 0x0007
    .short 0x000C
    .short 0x0004
    .short 0x0002
    .short 0x0028
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_00C0:
    .short 0x0007
    .short 0x0010
    .short 0x0004
    .short 0x0002
    .short 0x0028
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_00D0:
    .short 0x0005
    .short 0x0001
    .short 0x0007
    .short 0x0010
    .short 0x0004
    .short 0x0002
    .short 0x0028
    .short 0x0001
    .short 0xFD13

_00E2:
    FrontierScrCmd_84 43, 0, 0x8008
    GoToIfEq 0x8008, 4, _0145
    GoToIfEq 0x8008, 5, _0145
    GoTo _0153
    End

_010C:
    FrontierScrCmd_22 _0008
    FrontierScrCmd_24 _0010
    FrontierScrCmd_2A _0028
    FrontierScrCmd_2C _002C
    FadeScreenIn
    FrontierScrCmd_3E 0x40DC, 0x8001
    GoToIfEq 0x8001, 1, _0161
    End

_0145:
    SetVar 0x800F, 235
    GoTo _010C
    End

_0153:
    SetVar 0x800F, 231
    GoTo _010C
    End

_0161:
    Call _01A2
    GetRandom 0x8008, 4
    SetVar 0x8010, 0x8008
    GoToIfEq 0x8010, 1, _01E4
    GoToIfEq 0x8010, 2, _01FE
    GoToIfEq 0x8010, 3, _0218
    GoTo _01CA
    End

_01A2:
    PlaySoundEffect SEQ_SE_DP_DOOR10
    FrontierScrCmd_31 0, 0
    FrontierScrCmd_33 0
    FrontierScrCmd_32 0
    FrontierScrCmd_28 1, _0038
    FrontierScrCmd_29
    FrontierScrCmd_28 0, _0048
    FrontierScrCmd_29
    Return

_01CA:
    FrontierScrCmd_28 1, _0054
    FrontierScrCmd_28 0, _0064
    FrontierScrCmd_29
    GoTo _0232
    End

_01E4:
    FrontierScrCmd_28 1, _0078
    FrontierScrCmd_28 0, _0088
    FrontierScrCmd_29
    GoTo _0232
    End

_01FE:
    FrontierScrCmd_28 1, _009C
    FrontierScrCmd_28 0, _00AC
    FrontierScrCmd_29
    GoTo _0232
    End

_0218:
    FrontierScrCmd_28 1, _00C0
    FrontierScrCmd_28 0, _00D0
    FrontierScrCmd_29
    GoTo _0232
    End

_0232:
    FadeScreenOut
    FrontierScrCmd_2D 0
    FrontierScrCmd_2B 1
    FrontierScrCmd_25 0
    FrontierScrCmd_25 1
    FrontierScrCmd_23 0x800F
    FrontierScrCmd_04 7, 0
    End

    .balign 4, 0
