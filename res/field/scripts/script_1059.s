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
    End

_005F:
    ScrCmd_186 4, 168, 0x34D
    ScrCmd_189 4, 0
    ScrCmd_188 4, 14
    Return

_0075:
    ScrCmd_028 0x4020, 97
    End

_007D:
    ScrCmd_028 0x4020, 0
    End

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
    End

_00E7:
    ScrCmd_05E 4, _03B8
    ScrCmd_05E 0xFF, _047C
    ScrCmd_05F
    GoTo _0169

_00FF:
    ScrCmd_05E 4, _03C4
    ScrCmd_05F
    GoTo _0169

_010F:
    ScrCmd_05E 4, _03D4
    ScrCmd_05F
    GoTo _0169

_011F:
    ScrCmd_05E 4, _03DC
    ScrCmd_05E 0xFF, _04A0
    ScrCmd_05F
    GoTo _0169

_0137:
    ScrCmd_05E 4, _03E8
    ScrCmd_05E 0xFF, _04AC
    ScrCmd_05F
    GoTo _0169

_014F:
    ScrCmd_05E 4, _03F4
    ScrCmd_05E 0xFF, _04B8
    ScrCmd_05F
    GoTo _0169
    End

_0169:
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0189
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0195
    End

_0189:
    ScrCmd_0CF 0
    ScrCmd_02C 0
    GoTo _01A1

_0195:
    ScrCmd_0CF 0
    ScrCmd_02C 2
    GoTo _01A1

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
    End

_01F3:
    ScrCmd_05E 4, _0400
    ScrCmd_05E 0xFF, _04C4
    ScrCmd_05F
    GoTo _0283

_020B:
    ScrCmd_05E 4, _040C
    ScrCmd_05E 0xFF, _04D4
    ScrCmd_05F
    GoTo _0283

_0223:
    ScrCmd_05E 4, _0418
    ScrCmd_05E 0xFF, _04E4
    ScrCmd_05F
    GoTo _0283

_023B:
    ScrCmd_05E 4, _0428
    ScrCmd_05E 0xFF, _04F8
    ScrCmd_05F
    GoTo _0283

_0253:
    ScrCmd_05E 4, _043C
    ScrCmd_05E 0xFF, _0510
    ScrCmd_05F
    GoTo _0283

_026B:
    ScrCmd_05E 4, _044C
    ScrCmd_05E 0xFF, _0520
    ScrCmd_05F
    GoTo _0283

_0283:
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _02A3
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _02AC
    End

_02A3:
    ScrCmd_02C 1
    GoTo _02B5

_02AC:
    ScrCmd_02C 3
    GoTo _02B5

_02B5:
    ScrCmd_168 5, 26, 8, 10, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ClearFlag 0x197
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
    End

_0344:
    ScrCmd_0CF 0
    ScrCmd_02C 6
    GoTo _035E
    End

_0352:
    ScrCmd_0CF 0
    ScrCmd_02C 7
    GoTo _035E

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
    End

    .balign 4, 0
_03AC:
    MoveAction_04B
    MoveAction_041
    EndMovement

    .balign 4, 0
_03B8:
    MoveAction_00E 4
    MoveAction_00C
    EndMovement

    .balign 4, 0
_03C4:
    MoveAction_00E 2
    MoveAction_00C
    MoveAction_00E
    EndMovement

    .balign 4, 0
_03D4:
    MoveAction_00E 3
    EndMovement

    .balign 4, 0
_03DC:
    MoveAction_00E 4
    MoveAction_001
    EndMovement

    .balign 4, 0
_03E8:
    MoveAction_00E 4
    MoveAction_00D
    EndMovement

    .balign 4, 0
_03F4:
    MoveAction_00E 4
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_0400:
    MoveAction_00F 5
    MoveAction_020
    EndMovement

    .balign 4, 0
_040C:
    MoveAction_00F 4
    MoveAction_020
    EndMovement

    .balign 4, 0
_0418:
    MoveAction_00C
    MoveAction_00F 4
    MoveAction_020
    EndMovement

    .balign 4, 0
_0428:
    MoveAction_00F 2
    MoveAction_00C
    MoveAction_00F 3
    MoveAction_020
    EndMovement

    .balign 4, 0
_043C:
    MoveAction_00C 2
    MoveAction_00F 5
    MoveAction_020
    EndMovement

    .balign 4, 0
_044C:
    MoveAction_00C 2
    MoveAction_00F 5
    MoveAction_020
    EndMovement

    .balign 4, 0
_045C:
    MoveAction_00C
    MoveAction_00E
    MoveAction_00C
    MoveAction_045
    EndMovement

    .balign 4, 0
_0470:
    MoveAction_03E
    MoveAction_023
    EndMovement

    .balign 4, 0
_047C:
    MoveAction_03F 3
    MoveAction_001
    EndMovement

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
    MoveAction_03F 3
    MoveAction_020
    EndMovement

    .balign 4, 0
_04AC:
    MoveAction_03F 3
    MoveAction_020
    EndMovement

    .balign 4, 0
_04B8:
    MoveAction_03F 3
    MoveAction_020
    EndMovement

    .balign 4, 0
_04C4:
    MoveAction_00D
    MoveAction_00F 4
    MoveAction_020
    EndMovement

    .balign 4, 0
_04D4:
    MoveAction_00F 2
    MoveAction_00F 2
    MoveAction_020
    EndMovement

    .balign 4, 0
_04E4:
    MoveAction_00F
    MoveAction_00C
    MoveAction_00F 3
    MoveAction_020
    EndMovement

    .balign 4, 0
_04F8:
    MoveAction_00C
    MoveAction_00F 2
    MoveAction_00C
    MoveAction_00F 2
    MoveAction_020
    EndMovement

    .balign 4, 0
_0510:
    MoveAction_00C 3
    MoveAction_00F 4
    MoveAction_020
    EndMovement

    .balign 4, 0
_0520:
    MoveAction_00C 4
    MoveAction_00F 4
    MoveAction_020
    EndMovement

    .balign 4, 0
_0530:
    MoveAction_03F
    MoveAction_020
    MoveAction_03F 2
    MoveAction_00C 2
    MoveAction_045
    EndMovement

    .balign 4, 0
_0548:
    MoveAction_03F
    MoveAction_023
    EndMovement

    .balign 4, 0
_0554:
    MoveAction_011
    EndMovement

    .balign 4, 0
_055C:
    MoveAction_025 2
    EndMovement

    .balign 4, 0
_0564:
    MoveAction_04B
    EndMovement

    .balign 4, 0
_056C:
    MoveAction_013 2
    MoveAction_011
    MoveAction_013 7
    EndMovement

_057C:
    ScrCmd_060
    ScrCmd_168 5, 26, 8, 10, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ClearFlag 0x2C4
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
    End

_0610:
    ScrCmd_02C 11
    ScrCmd_034
    GoTo _062A
    End

_061D:
    ScrCmd_02C 12
    ScrCmd_034
    GoTo _062A
    End

_062A:
    ScrCmd_05E 0xFF, _07B8
    ScrCmd_05E 4, _0800
    ScrCmd_05F
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _065C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _066B
    End

_065C:
    ScrCmd_0CF 0
    ScrCmd_0CD 1
    ScrCmd_02C 13
    GoTo _067A

_066B:
    ScrCmd_0CF 0
    ScrCmd_0CD 1
    ScrCmd_02C 17
    GoTo _067A

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
    End

_06B2:
    ScrCmd_0CF 0
    ScrCmd_0CD 1
    ScrCmd_02C 14
    GoTo _06D0

_06C1:
    ScrCmd_0CF 0
    ScrCmd_0CD 1
    ScrCmd_02C 18
    GoTo _06D0

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
    End

_0704:
    ScrCmd_0CD 0
    ScrCmd_02C 15
    GoTo _071C

_0710:
    ScrCmd_0CD 0
    ScrCmd_02C 19
    GoTo _071C

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
    End

_075A:
    ScrCmd_0CD 1
    ScrCmd_02C 16
    GoTo _0772

_0766:
    ScrCmd_0CD 1
    ScrCmd_02C 20
    GoTo _0772

_0772:
    ScrCmd_034
    ScrCmd_05E 4, _0830
    ScrCmd_05E 0xFF, _07E4
    ScrCmd_05F
    ScrCmd_014 0x801
    ScrCmd_065 4
    ScrCmd_028 0x4071, 2
    ScrCmd_061
    End

    .balign 4, 0
_0798:
    MoveAction_021
    EndMovement

    .balign 4, 0
_07A0:
    MoveAction_020
    MoveAction_045
    EndMovement

    .balign 4, 0
_07AC:
    MoveAction_04B
    MoveAction_020
    EndMovement

    .balign 4, 0
_07B8:
    MoveAction_021
    EndMovement

    .balign 4, 0
_07C0:
    MoveAction_00D
    MoveAction_00F 9
    MoveAction_020
    EndMovement

    .balign 4, 0
_07D0:
    MoveAction_00F 10
    MoveAction_020
    EndMovement

    .balign 4, 0
_07DC:
    MoveAction_023
    EndMovement

    .balign 4, 0
_07E4:
    MoveAction_03F
    MoveAction_021
    MoveAction_03E
    MoveAction_022
    EndMovement

    .balign 4, 0
_07F8:
    MoveAction_04B
    EndMovement

    .balign 4, 0
_0800:
    MoveAction_00C
    EndMovement

    .balign 4, 0
_0808:
    MoveAction_00F 10
    MoveAction_020
    EndMovement

    .balign 4, 0
_0814:
    MoveAction_00F 10
    MoveAction_020
    EndMovement

    .balign 4, 0
_0820:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0828:
    MoveAction_04B
    EndMovement

    .balign 4, 0
_0830:
    MoveAction_00D
    MoveAction_00E 5
    MoveAction_00C 10
    EndMovement

_0840:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 21
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0853:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 22
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0866:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 23
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0879:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 24
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_088C:
    ScrCmd_036 25, 0, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_08A3:
    ScrCmd_036 26, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_08BA:
    ScrCmd_0CF 0
    ScrCmd_036 27, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_08D4:
    ScrCmd_036 28, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_08EB:
    ScrCmd_036 29, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

    .byte 0
    .byte 0
