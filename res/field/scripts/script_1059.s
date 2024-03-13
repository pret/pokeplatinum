    .include "macros/scrcmd.inc"

    .data

    .long _0032-.-4
    .long _0085-.-4
    .long _057C-.-4
    .long _0840-.-4
    .long _0853-.-4
    .long _0866-.-4
    .long _0879-.-4
    .long _088C-.-4
    .long _08A3-.-4
    .long _08BA-.-4
    .long _08D4-.-4
    .long _08EB-.-4
    .short 0xFD13

_0032:
    ScrCmd_011 0x4071, 1
    ScrCmd_01D 1, _005F
    ScrCmd_14D 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _0075
    ScrCmd_011 0x4000, 1
    ScrCmd_01C 1, _007D
    ScrCmd_002

_005F:
    ScrCmd_186 4, 168, 0x34D
    ScrCmd_189 4, 0
    ScrCmd_188 4, 14
    ScrCmd_01B

_0075:
    ScrCmd_028 0x4020, 97
    ScrCmd_002

_007D:
    ScrCmd_028 0x4020, 0
    ScrCmd_002

_0085:
    ScrCmd_060
    ScrCmd_05E 4, _03AC
    ScrCmd_05F
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8005, 0x34B
    ScrCmd_01C 1, _00E7
    ScrCmd_011 0x8005, 0x34C
    ScrCmd_01C 1, _00FF
    ScrCmd_011 0x8005, 0x34D
    ScrCmd_01C 1, _010F
    ScrCmd_011 0x8005, 0x34E
    ScrCmd_01C 1, _011F
    ScrCmd_011 0x8005, 0x34F
    ScrCmd_01C 1, _0137
    ScrCmd_011 0x8005, 0x350
    ScrCmd_01C 1, _014F
    ScrCmd_002

_00E7:
    ScrCmd_05E 4, _03B8
    ScrCmd_05E 0xFF, _047C
    ScrCmd_05F
    ScrCmd_016 _0169

_00FF:
    ScrCmd_05E 4, _03C4
    ScrCmd_05F
    ScrCmd_016 _0169

_010F:
    ScrCmd_05E 4, _03D4
    ScrCmd_05F
    ScrCmd_016 _0169

_011F:
    ScrCmd_05E 4, _03DC
    ScrCmd_05E 0xFF, _04A0
    ScrCmd_05F
    ScrCmd_016 _0169

_0137:
    ScrCmd_05E 4, _03E8
    ScrCmd_05E 0xFF, _04AC
    ScrCmd_05F
    ScrCmd_016 _0169

_014F:
    ScrCmd_05E 4, _03F4
    ScrCmd_05E 0xFF, _04B8
    ScrCmd_05F
    ScrCmd_016 _0169
    ScrCmd_002

_0169:
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0189
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0195
    ScrCmd_002

_0189:
    ScrCmd_0CF 0
    ScrCmd_02C 0
    ScrCmd_016 _01A1

_0195:
    ScrCmd_0CF 0
    ScrCmd_02C 2
    ScrCmd_016 _01A1

_01A1:
    ScrCmd_034
    ScrCmd_011 0x8005, 0x34B
    ScrCmd_01C 1, _01F3
    ScrCmd_011 0x8005, 0x34C
    ScrCmd_01C 1, _020B
    ScrCmd_011 0x8005, 0x34D
    ScrCmd_01C 1, _0223
    ScrCmd_011 0x8005, 0x34E
    ScrCmd_01C 1, _023B
    ScrCmd_011 0x8005, 0x34F
    ScrCmd_01C 1, _0253
    ScrCmd_011 0x8005, 0x350
    ScrCmd_01C 1, _026B
    ScrCmd_002

_01F3:
    ScrCmd_05E 4, _0400
    ScrCmd_05E 0xFF, _04C4
    ScrCmd_05F
    ScrCmd_016 _0283

_020B:
    ScrCmd_05E 4, _040C
    ScrCmd_05E 0xFF, _04D4
    ScrCmd_05F
    ScrCmd_016 _0283

_0223:
    ScrCmd_05E 4, _0418
    ScrCmd_05E 0xFF, _04E4
    ScrCmd_05F
    ScrCmd_016 _0283

_023B:
    ScrCmd_05E 4, _0428
    ScrCmd_05E 0xFF, _04F8
    ScrCmd_05F
    ScrCmd_016 _0283

_0253:
    ScrCmd_05E 4, _043C
    ScrCmd_05E 0xFF, _0510
    ScrCmd_05F
    ScrCmd_016 _0283

_026B:
    ScrCmd_05E 4, _044C
    ScrCmd_05E 0xFF, _0520
    ScrCmd_05F
    ScrCmd_016 _0283

_0283:
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _02A3
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _02AC
    ScrCmd_002

_02A3:
    ScrCmd_02C 1
    ScrCmd_016 _02B5

_02AC:
    ScrCmd_02C 3
    ScrCmd_016 _02B5

_02B5:
    ScrCmd_168 5, 26, 8, 10, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ScrCmd_01F 0x197
    ScrCmd_064 3
    ScrCmd_05E 3, _0554
    ScrCmd_05F
    ScrCmd_05E 3, _055C
    ScrCmd_05F
    ScrCmd_049 0x602
    ScrCmd_02C 4
    ScrCmd_05E 3, _0564
    ScrCmd_05F
    ScrCmd_014 0x7FA
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 5
    ScrCmd_034
    ScrCmd_05E 0xFF, _0548
    ScrCmd_05E 4, _0470
    ScrCmd_05E 3, _056C
    ScrCmd_05F
    ScrCmd_065 3
    ScrCmd_014 0x7FB
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0344
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0352
    ScrCmd_002

_0344:
    ScrCmd_0CF 0
    ScrCmd_02C 6
    ScrCmd_016 _035E
    ScrCmd_002

_0352:
    ScrCmd_0CF 0
    ScrCmd_02C 7
    ScrCmd_016 _035E

_035E:
    ScrCmd_034
    ScrCmd_05E 4, _045C
    ScrCmd_05E 0xFF, _0530
    ScrCmd_05F
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    ScrCmd_065 4
    ScrCmd_028 0x4071, 1
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x1A6, 0, 7, 15, 0
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_002

    .balign 4, 0
_03AC:
    .short 75, 1
    .short 65, 1
    .short 0xFE, 0x00

    .balign 4, 0
_03B8:
    .short 14, 4
    .short 12, 1
    .short 0xFE, 0x00

    .balign 4, 0
_03C4:
    .short 14, 2
    .short 12, 1
    .short 14, 1
    .short 0xFE, 0x00

    .balign 4, 0
_03D4:
    .short 14, 3
    .short 0xFE, 0x00

    .balign 4, 0
_03DC:
    .short 14, 4
    .short 1, 1
    .short 0xFE, 0x00

    .balign 4, 0
_03E8:
    .short 14, 4
    .short 13, 1
    .short 0xFE, 0x00

    .balign 4, 0
_03F4:
    .short 14, 4
    .short 13, 2
    .short 0xFE, 0x00

    .balign 4, 0
_0400:
    .short 15, 5
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_040C:
    .short 15, 4
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0418:
    .short 12, 1
    .short 15, 4
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0428:
    .short 15, 2
    .short 12, 1
    .short 15, 3
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_043C:
    .short 12, 2
    .short 15, 5
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_044C:
    .short 12, 2
    .short 15, 5
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_045C:
    .short 12, 1
    .short 14, 1
    .short 12, 1
    .short 69, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0470:
    .short 62, 1
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_047C:
    .short 63, 3
    .short 1, 1
    .short 0xFE, 0x00

    .byte 63
    .byte 0
    .byte 3
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 15
    .byte 0
    .byte 4
    .byte 0
    .byte 12
    .byte 0
    .byte 2
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_04A0:
    .short 63, 3
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_04AC:
    .short 63, 3
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_04B8:
    .short 63, 3
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_04C4:
    .short 13, 1
    .short 15, 4
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_04D4:
    .short 15, 2
    .short 15, 2
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_04E4:
    .short 15, 1
    .short 12, 1
    .short 15, 3
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_04F8:
    .short 12, 1
    .short 15, 2
    .short 12, 1
    .short 15, 2
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0510:
    .short 12, 3
    .short 15, 4
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0520:
    .short 12, 4
    .short 15, 4
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0530:
    .short 63, 1
    .short 32, 1
    .short 63, 2
    .short 12, 2
    .short 69, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0548:
    .short 63, 1
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0554:
    .short 17, 1
    .short 0xFE, 0x00

    .balign 4, 0
_055C:
    .short 37, 2
    .short 0xFE, 0x00

    .balign 4, 0
_0564:
    .short 75, 1
    .short 0xFE, 0x00

    .balign 4, 0
_056C:
    .short 19, 2
    .short 17, 1
    .short 19, 7
    .short 0xFE, 0x00

_057C:
    ScrCmd_060
    ScrCmd_168 5, 26, 8, 10, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ScrCmd_01F 0x2C4
    ScrCmd_064 14
    ScrCmd_05E 14, _0798
    ScrCmd_05F
    ScrCmd_0CD 0
    ScrCmd_02C 8
    ScrCmd_034
    ScrCmd_05E 0xFF, _07AC
    ScrCmd_05E 4, _07F8
    ScrCmd_05F
    ScrCmd_02C 9
    ScrCmd_028 0x8004, 0x162
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FC
    ScrCmd_02C 10
    ScrCmd_034
    ScrCmd_05E 14, _07A0
    ScrCmd_05F
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    ScrCmd_065 14
    ScrCmd_003 30, 0x800C
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0610
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _061D
    ScrCmd_002

_0610:
    ScrCmd_02C 11
    ScrCmd_034
    ScrCmd_016 _062A
    ScrCmd_002

_061D:
    ScrCmd_02C 12
    ScrCmd_034
    ScrCmd_016 _062A
    ScrCmd_002

_062A:
    ScrCmd_05E 0xFF, _07B8
    ScrCmd_05E 4, _0800
    ScrCmd_05F
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _065C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _066B
    ScrCmd_002

_065C:
    ScrCmd_0CF 0
    ScrCmd_0CD 1
    ScrCmd_02C 13
    ScrCmd_016 _067A

_066B:
    ScrCmd_0CF 0
    ScrCmd_0CD 1
    ScrCmd_02C 17
    ScrCmd_016 _067A

_067A:
    ScrCmd_034
    ScrCmd_014 0x800
    ScrCmd_05E 4, _0808
    ScrCmd_05E 0xFF, _07C0
    ScrCmd_05F
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _06B2
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _06C1
    ScrCmd_002

_06B2:
    ScrCmd_0CF 0
    ScrCmd_0CD 1
    ScrCmd_02C 14
    ScrCmd_016 _06D0

_06C1:
    ScrCmd_0CF 0
    ScrCmd_0CD 1
    ScrCmd_02C 18
    ScrCmd_016 _06D0

_06D0:
    ScrCmd_034
    ScrCmd_05E 4, _0814
    ScrCmd_05E 0xFF, _07D0
    ScrCmd_05F
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0704
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0710
    ScrCmd_002

_0704:
    ScrCmd_0CD 0
    ScrCmd_02C 15
    ScrCmd_016 _071C

_0710:
    ScrCmd_0CD 0
    ScrCmd_02C 19
    ScrCmd_016 _071C

_071C:
    ScrCmd_034
    ScrCmd_05E 4, _0820
    ScrCmd_05E 0xFF, _07DC
    ScrCmd_05F
    ScrCmd_05E 4, _0828
    ScrCmd_05F
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _075A
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0766
    ScrCmd_002

_075A:
    ScrCmd_0CD 1
    ScrCmd_02C 16
    ScrCmd_016 _0772

_0766:
    ScrCmd_0CD 1
    ScrCmd_02C 20
    ScrCmd_016 _0772

_0772:
    ScrCmd_034
    ScrCmd_05E 4, _0830
    ScrCmd_05E 0xFF, _07E4
    ScrCmd_05F
    ScrCmd_014 0x801
    ScrCmd_065 4
    ScrCmd_028 0x4071, 2
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0798:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_07A0:
    .short 32, 1
    .short 69, 1
    .short 0xFE, 0x00

    .balign 4, 0
_07AC:
    .short 75, 1
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_07B8:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_07C0:
    .short 13, 1
    .short 15, 9
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_07D0:
    .short 15, 10
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_07DC:
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_07E4:
    .short 63, 1
    .short 33, 1
    .short 62, 1
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_07F8:
    .short 75, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0800:
    .short 12, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0808:
    .short 15, 10
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0814:
    .short 15, 10
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0820:
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0828:
    .short 75, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0830:
    .short 13, 1
    .short 14, 5
    .short 12, 10
    .short 0xFE, 0x00

_0840:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 21
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0853:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 22
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0866:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 23
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0879:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 24
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_088C:
    ScrCmd_036 25, 0, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_08A3:
    ScrCmd_036 26, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_08BA:
    ScrCmd_0CF 0
    ScrCmd_036 27, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_08D4:
    ScrCmd_036 28, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_08EB:
    ScrCmd_036 29, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

    .byte 0
    .byte 0
