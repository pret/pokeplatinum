    .include "macros/scrcmd.inc"

    .data

    .long _0042-.-4
    .long _0072-.-4
    .long _09E0-.-4
    .long _0A8C-.-4
    .long _0B24-.-4
    .long _0F76-.-4
    .long _0F8D-.-4
    .long _0FA4-.-4
    .long _0DF4-.-4
    .long _0E47-.-4
    .long _0E07-.-4
    .long _0E1A-.-4
    .long _042E-.-4
    .long _08E8-.-4
    .long _0EA1-.-4
    .long _0EB4-.-4
    .short 0xFD13

_0042:
    ScrCmd_14D 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _0062
    ScrCmd_011 0x4000, 1
    ScrCmd_01C 1, _006A
    ScrCmd_002

_0062:
    ScrCmd_028 0x4020, 97
    ScrCmd_002

_006A:
    ScrCmd_028 0x4020, 0
    ScrCmd_002

_0072:
    ScrCmd_060
    ScrCmd_05E 2, _0664
    ScrCmd_05F
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 110
    ScrCmd_01C 1, _00BF
    ScrCmd_011 0x8004, 111
    ScrCmd_01C 1, _00EB
    ScrCmd_011 0x8004, 112
    ScrCmd_01C 1, _0117
    ScrCmd_011 0x8004, 113
    ScrCmd_01C 1, _0143
    ScrCmd_002

_00BF:
    ScrCmd_05E 2, _0670
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_05E 2, _06A8
    ScrCmd_05E 0xFF, _0810
    ScrCmd_05F
    ScrCmd_016 _016F
    ScrCmd_002

_00EB:
    ScrCmd_05E 2, _0680
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_05E 2, _06C0
    ScrCmd_05E 0xFF, _0824
    ScrCmd_05F
    ScrCmd_016 _016F
    ScrCmd_002

_0117:
    ScrCmd_05E 2, _0690
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_05E 2, _06D8
    ScrCmd_05E 0xFF, _0838
    ScrCmd_05F
    ScrCmd_016 _016F
    ScrCmd_002

_0143:
    ScrCmd_05E 2, _0698
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_05E 2, _06F0
    ScrCmd_05E 0xFF, _084C
    ScrCmd_05F
    ScrCmd_016 _016F
    ScrCmd_002

_016F:
    ScrCmd_0CE 0
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_05E 2, _0708
    ScrCmd_05E 0xFF, _0860
    ScrCmd_05F
    ScrCmd_02C 3
    ScrCmd_034
    ScrCmd_05E 2, _071C
    ScrCmd_05E 0xFF, _086C
    ScrCmd_05F
    ScrCmd_02C 4
    ScrCmd_034
    ScrCmd_003 15, 0x800C
    ScrCmd_05E 2, _0728
    ScrCmd_05E 0xFF, _0878
    ScrCmd_05F
    ScrCmd_02C 5
    ScrCmd_034
    ScrCmd_05E 0xFF, _0730
    ScrCmd_05E 2, _0730
    ScrCmd_05F
    ScrCmd_050 0x44A
    ScrCmd_01F 0x178
    ScrCmd_064 5
    ScrCmd_062 5
    ScrCmd_05E 5, _07C0
    ScrCmd_05F
    ScrCmd_02C 6
    ScrCmd_0CE 0
    ScrCmd_02C 7
    ScrCmd_02C 8
    ScrCmd_05E 2, _0740
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 9
    ScrCmd_034
    ScrCmd_05E 2, _0748
    ScrCmd_05E 5, _07C8
    ScrCmd_05F
    ScrCmd_02C 10
    ScrCmd_034
    ScrCmd_003 20, 0x800C
    ScrCmd_05E 5, _07D0
    ScrCmd_05F
    ScrCmd_02C 11
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0298
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0259
    ScrCmd_002

_0259:
    ScrCmd_05E 2, _0750
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 12
    ScrCmd_034
    ScrCmd_05E 2, _0758
    ScrCmd_05F
    ScrCmd_02C 13
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0298
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0259
    ScrCmd_002

_0298:
    ScrCmd_05E 2, _0758
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 14
    ScrCmd_02C 15
    ScrCmd_016 _02B3
    ScrCmd_002

_02B3:
    ScrCmd_05E 2, _0768
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 16
    ScrCmd_05E 2, _0770
    ScrCmd_05F
    ScrCmd_05E 0xFF, _088C
    ScrCmd_05F
    ScrCmd_0CD 1
    ScrCmd_02C 17
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _030B
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _02FD
    ScrCmd_002

_02FD:
    ScrCmd_0CE 0
    ScrCmd_02C 18
    ScrCmd_016 _02B3
    ScrCmd_002

_030B:
    ScrCmd_02C 19
    ScrCmd_05E 2, _0768
    ScrCmd_05E 0xFF, _0894
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 20
    ScrCmd_02C 21
    ScrCmd_034
    ScrCmd_05E 5, _07D8
    ScrCmd_05F
    ScrCmd_003 25, 0x800C
    ScrCmd_01F 0x179
    ScrCmd_064 6
    ScrCmd_062 6
    ScrCmd_014 0x7F8
    ScrCmd_05E 6, _08C8
    ScrCmd_05F
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _036E
    ScrCmd_016 _03A6
    ScrCmd_002

_036E:
    ScrCmd_02C 22
    ScrCmd_034
    ScrCmd_05E 5, _07E8
    ScrCmd_05F
    ScrCmd_01F 0x17D
    ScrCmd_064 12
    ScrCmd_003 15, 0x800C
    ScrCmd_02C 23
    ScrCmd_02C 26
    ScrCmd_05E 6, _08D0
    ScrCmd_05F
    ScrCmd_02C 28
    ScrCmd_016 _03DE
    ScrCmd_002

_03A6:
    ScrCmd_02C 24
    ScrCmd_034
    ScrCmd_05E 5, _07E8
    ScrCmd_05F
    ScrCmd_01F 0x17D
    ScrCmd_064 12
    ScrCmd_003 15, 0x800C
    ScrCmd_02C 25
    ScrCmd_02C 27
    ScrCmd_05E 6, _08D0
    ScrCmd_05F
    ScrCmd_02C 29
    ScrCmd_016 _03DE
    ScrCmd_002

_03DE:
    ScrCmd_02C 30
    ScrCmd_034
    ScrCmd_05E 5, _07F0
    ScrCmd_05F
    ScrCmd_003 15, 0x800C
    ScrCmd_02C 31
    ScrCmd_05E 2, _0778
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 33
    ScrCmd_05E 2, _0780
    ScrCmd_05F
    ScrCmd_0CD 1
    ScrCmd_02C 34
    ScrCmd_031
    ScrCmd_034
    ScrCmd_014 0x7F9
    ScrCmd_188 2, 16
    ScrCmd_028 0x4086, 1
    ScrCmd_061
    ScrCmd_002

_042E:
    ScrCmd_060
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_01E 0x17D
    ScrCmd_065 12
    ScrCmd_0B4
    ScrCmd_0B5
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_0DE 0x8000
    ScrCmd_096 0x8000, 5, 0, 0x800C
    ScrCmd_05E 5, _07F8
    ScrCmd_05E 2, _0760
    ScrCmd_05E 0xFF, _0884
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_0DC 2
    ScrCmd_02C 36
    ScrCmd_02C 37
    ScrCmd_02C 38
    ScrCmd_034
    ScrCmd_05E 5, _0800
    ScrCmd_05E 2, _0788
    ScrCmd_05E 0xFF, _089C
    ScrCmd_05F
    ScrCmd_01E 0x178
    ScrCmd_065 5
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _04CA
    ScrCmd_016 _04EE
    ScrCmd_002

_04CA:
    ScrCmd_02C 39
    ScrCmd_034
    ScrCmd_05E 6, _08D8
    ScrCmd_05E 0xFF, _08A8
    ScrCmd_05F
    ScrCmd_02C 40
    ScrCmd_034
    ScrCmd_016 _0512
    ScrCmd_002

_04EE:
    ScrCmd_02C 41
    ScrCmd_034
    ScrCmd_05E 6, _08D8
    ScrCmd_05E 0xFF, _08A8
    ScrCmd_05F
    ScrCmd_02C 42
    ScrCmd_034
    ScrCmd_016 _0512
    ScrCmd_002

_0512:
    ScrCmd_05E 0xFF, _08B0
    ScrCmd_05E 6, _08E0
    ScrCmd_05F
    ScrCmd_01E 0x179
    ScrCmd_065 6
    ScrCmd_0CE 0
    ScrCmd_02C 43
    ScrCmd_034
    ScrCmd_003 40, 0x800C
    ScrCmd_05E 2, _07A8
    ScrCmd_05E 0xFF, _08BC
    ScrCmd_05F
    ScrCmd_016 _0554
    ScrCmd_002

_0554:
    ScrCmd_0CD 1
    ScrCmd_02C 44
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _057A
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0656
    ScrCmd_002

_057A:
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 47
    ScrCmd_034
    ScrCmd_06D 2, 15
    ScrCmd_0DE 0x800C
    ScrCmd_011 0x800C, 0x183
    ScrCmd_01C 1, _05BB
    ScrCmd_011 0x800C, 0x186
    ScrCmd_01C 1, _05C5
    ScrCmd_016 _05B1
    ScrCmd_002

_05B1:
    ScrCmd_125 0x352
    ScrCmd_016 _05CF

_05BB:
    ScrCmd_125 0x353
    ScrCmd_016 _05CF

_05C5:
    ScrCmd_125 0x354
    ScrCmd_016 _05CF

_05CF:
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _05F5
    ScrCmd_062 2
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 48
    ScrCmd_016 _0618
    ScrCmd_002

_05F5:
    ScrCmd_0A1
    ScrCmd_062 2
    ScrCmd_0BC 6, 3, 1, 0
    ScrCmd_0BD
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 49
    ScrCmd_016 _0618
    ScrCmd_002

_0618:
    ScrCmd_034
    ScrCmd_028 0x4086, 2
    ScrCmd_028 0x40A4, 3
    ScrCmd_003 30, 0x800C
    ScrCmd_0BC 6, 3, 0, 0
    ScrCmd_0BD
    ScrCmd_14E
    ScrCmd_0BE 0x19E, 0, 2, 6, 0
    ScrCmd_0BC 6, 3, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    ScrCmd_002

_0656:
    ScrCmd_0CE 0
    ScrCmd_02C 45
    ScrCmd_016 _0554
    ScrCmd_002

    .balign 4, 0
_0664:
    MoveAction_025
    MoveAction_04B
    EndMovement

    .balign 4, 0
_0670:
    MoveAction_011
    MoveAction_012 2
    MoveAction_021
    EndMovement

    .balign 4, 0
_0680:
    MoveAction_011
    MoveAction_012
    MoveAction_021
    EndMovement

    .balign 4, 0
_0690:
    MoveAction_011
    EndMovement

    .balign 4, 0
_0698:
    MoveAction_011
    MoveAction_013
    MoveAction_021
    EndMovement

    .balign 4, 0
_06A8:
    MoveAction_00C
    MoveAction_00F 4
    MoveAction_00C 2
    MoveAction_00F
    MoveAction_022
    EndMovement

    .balign 4, 0
_06C0:
    MoveAction_00C
    MoveAction_00F 3
    MoveAction_00C 2
    MoveAction_00F
    MoveAction_022
    EndMovement

    .balign 4, 0
_06D8:
    MoveAction_00C
    MoveAction_00F 2
    MoveAction_00C 2
    MoveAction_00F
    MoveAction_022
    EndMovement

    .balign 4, 0
_06F0:
    MoveAction_00C
    MoveAction_00F
    MoveAction_00C 2
    MoveAction_00F
    MoveAction_022
    EndMovement

    .balign 4, 0
_0708:
    MoveAction_00E
    MoveAction_021
    EndMovement

    .byte 15
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_071C:
    MoveAction_00E 3
    MoveAction_023
    EndMovement

    .balign 4, 0
_0728:
    MoveAction_013 3
    EndMovement

    .balign 4, 0
_0730:
    MoveAction_04B
    MoveAction_041
    MoveAction_022
    EndMovement

    .balign 4, 0
_0740:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0748:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0750:
    MoveAction_025
    EndMovement

    .balign 4, 0
_0758:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0760:
    MoveAction_002
    EndMovement

    .balign 4, 0
_0768:
    MoveAction_026
    EndMovement

    .balign 4, 0
_0770:
    MoveAction_025
    EndMovement

    .balign 4, 0
_0778:
    MoveAction_026
    EndMovement

    .balign 4, 0
_0780:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0788:
    MoveAction_00C
    MoveAction_021
    MoveAction_03F 2
    MoveAction_023
    EndMovement

    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 39
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_07A8:
    MoveAction_021
    MoveAction_03F 3
    MoveAction_025 8
    MoveAction_012
    MoveAction_011
    EndMovement

    .balign 4, 0
_07C0:
    MoveAction_00F 8
    EndMovement

    .balign 4, 0
_07C8:
    MoveAction_00E 3
    EndMovement

    .balign 4, 0
_07D0:
    MoveAction_00F 3
    EndMovement

    .balign 4, 0
_07D8:
    MoveAction_022
    MoveAction_03F 2
    MoveAction_023
    EndMovement

    .balign 4, 0
_07E8:
    MoveAction_022
    EndMovement

    .balign 4, 0
_07F0:
    MoveAction_023
    EndMovement

    .balign 4, 0
_07F8:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0800:
    MoveAction_03F 2
    MoveAction_03E
    MoveAction_00F 9
    EndMovement

    .balign 4, 0
_0810:
    MoveAction_00C 2
    MoveAction_00F 4
    MoveAction_00C
    MoveAction_023
    EndMovement

    .balign 4, 0
_0824:
    MoveAction_00C 2
    MoveAction_00F 3
    MoveAction_00C
    MoveAction_023
    EndMovement

    .balign 4, 0
_0838:
    MoveAction_00C 2
    MoveAction_00F 2
    MoveAction_00C
    MoveAction_023
    EndMovement

    .balign 4, 0
_084C:
    MoveAction_00C 2
    MoveAction_00F
    MoveAction_00C
    MoveAction_023
    EndMovement

    .balign 4, 0
_0860:
    MoveAction_03E
    MoveAction_020
    EndMovement

    .balign 4, 0
_086C:
    MoveAction_03F
    MoveAction_022
    EndMovement

    .balign 4, 0
_0878:
    MoveAction_03F
    MoveAction_024
    EndMovement

    .balign 4, 0
_0884:
    MoveAction_020
    EndMovement

    .balign 4, 0
_088C:
    MoveAction_000
    EndMovement

    .balign 4, 0
_0894:
    MoveAction_022
    EndMovement

    .balign 4, 0
_089C:
    MoveAction_03F
    MoveAction_023
    EndMovement

    .balign 4, 0
_08A8:
    MoveAction_020
    EndMovement

    .balign 4, 0
_08B0:
    MoveAction_03F
    MoveAction_023
    EndMovement

    .balign 4, 0
_08BC:
    MoveAction_03F
    MoveAction_020
    EndMovement

    .balign 4, 0
_08C8:
    MoveAction_00F 7
    EndMovement

    .balign 4, 0
_08D0:
    MoveAction_023
    EndMovement

    .balign 4, 0
_08D8:
    MoveAction_00F
    EndMovement

    .balign 4, 0
_08E0:
    MoveAction_00F 9
    EndMovement

_08E8:
    ScrCmd_060
    ScrCmd_1BD 0x800C
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _0903
    ScrCmd_016 _0935
    ScrCmd_002

_0903:
    ScrCmd_05E 0xFF, _09D0
    ScrCmd_05E 2, _09B0
    ScrCmd_05F
    ScrCmd_01A _0967
    ScrCmd_05E 0xFF, _09C0
    ScrCmd_05E 2, _0998
    ScrCmd_05F
    ScrCmd_016 _097C
    ScrCmd_002

_0935:
    ScrCmd_05E 0xFF, _09D8
    ScrCmd_05E 2, _09B8
    ScrCmd_05F
    ScrCmd_01A _0967
    ScrCmd_05E 0xFF, _09C8
    ScrCmd_05E 2, _09A4
    ScrCmd_05F
    ScrCmd_016 _097C
    ScrCmd_002

_0967:
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 53
    ScrCmd_034
    ScrCmd_162
    ScrCmd_06D 2, 15
    ScrCmd_01B

_097C:
    ScrCmd_01A _0986
    ScrCmd_061
    ScrCmd_002

_0986:
    ScrCmd_161
    ScrCmd_06D 2, 48
    ScrCmd_06C 2, 1
    ScrCmd_01B

    .balign 4, 0
_0998:
    MoveAction_00E
    MoveAction_023
    EndMovement

    .balign 4, 0
_09A4:
    MoveAction_00C
    MoveAction_021
    EndMovement

    .balign 4, 0
_09B0:
    MoveAction_003
    EndMovement

    .balign 4, 0
_09B8:
    MoveAction_000
    EndMovement

    .balign 4, 0
_09C0:
    MoveAction_00E
    EndMovement

    .balign 4, 0
_09C8:
    MoveAction_00D
    EndMovement

    .balign 4, 0
_09D0:
    MoveAction_026
    EndMovement

    .balign 4, 0
_09D8:
    MoveAction_025
    EndMovement

_09E0:
    ScrCmd_060
    ScrCmd_05E 0xFF, _0A84
    ScrCmd_05E 2, _0A74
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 52
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 110
    ScrCmd_01C 1, _0A3B
    ScrCmd_011 0x8004, 111
    ScrCmd_01C 1, _0A3B
    ScrCmd_011 0x8004, 112
    ScrCmd_01C 1, _0A3B
    ScrCmd_011 0x8004, 113
    ScrCmd_01C 1, _0A3B
    ScrCmd_002

_0A3B:
    ScrCmd_162
    ScrCmd_06D 2, 15
    ScrCmd_05E 0xFF, _0A7C
    ScrCmd_05E 2, _0A68
    ScrCmd_05F
    ScrCmd_016 _0A5B

_0A5B:
    ScrCmd_01A _0986
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0A68:
    MoveAction_00C
    MoveAction_021
    EndMovement

    .balign 4, 0
_0A74:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0A7C:
    MoveAction_00C
    EndMovement

    .balign 4, 0
_0A84:
    MoveAction_024
    EndMovement

_0A8C:
    ScrCmd_060
    ScrCmd_05E 2, _0AE4
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 35
    ScrCmd_034
    ScrCmd_1BD 0x800C
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _0AB9
    ScrCmd_016 _0ACB
    ScrCmd_002

_0AB9:
    ScrCmd_05E 0xFF, _0AEC
    ScrCmd_05F
    ScrCmd_016 _0ADD
    ScrCmd_002

_0ACB:
    ScrCmd_05E 0xFF, _0AF4
    ScrCmd_05F
    ScrCmd_016 _0ADD
    ScrCmd_002

_0ADD:
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0AE4:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0AEC:
    MoveAction_00E
    EndMovement

    .balign 4, 0
_0AF4:
    MoveAction_00C
    EndMovement

    .byte 12
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 12
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_0B24:
    ScrCmd_060
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8005, 0x355
    ScrCmd_01C 1, _0B55
    ScrCmd_011 0x8005, 0x356
    ScrCmd_01C 1, _0B89
    ScrCmd_011 0x8005, 0x357
    ScrCmd_01C 1, _0BBB
    ScrCmd_002

_0B55:
    ScrCmd_05E 254, _0DBC
    ScrCmd_05E 5, _0D48
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 53
    ScrCmd_034
    ScrCmd_05E 5, _0D50
    ScrCmd_05E 6, _0D80
    ScrCmd_05F
    ScrCmd_016 _0BF5
    ScrCmd_002

_0B89:
    ScrCmd_05E 254, _0DBC
    ScrCmd_05E 5, _0D48
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 53
    ScrCmd_034
    ScrCmd_05E 5, _0D5C
    ScrCmd_05E 6, _0D80
    ScrCmd_05F
    ScrCmd_016 _0BF5

_0BBB:
    ScrCmd_05E 0xFF, _0DDC
    ScrCmd_05E 254, _0DCC
    ScrCmd_05E 5, _0D48
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 53
    ScrCmd_034
    ScrCmd_05E 5, _0D5C
    ScrCmd_05E 6, _0D80
    ScrCmd_05F
    ScrCmd_016 _0BF5

_0BF5:
    ScrCmd_0CF 0
    ScrCmd_0DB 1
    ScrCmd_0DC 2
    ScrCmd_05E 5, _0D70
    ScrCmd_05F
    ScrCmd_011 0x8005, 0x355
    ScrCmd_01C 1, _0C3E
    ScrCmd_011 0x8005, 0x356
    ScrCmd_01C 1, _0C56
    ScrCmd_011 0x8005, 0x357
    ScrCmd_01C 1, _0C6E
    ScrCmd_011 0x8005, 0x358
    ScrCmd_01C 1, _0C6E
    ScrCmd_002

_0C3E:
    ScrCmd_05E 5, _0D78
    ScrCmd_05E 6, _0D94
    ScrCmd_05F
    ScrCmd_016 _0C86

_0C56:
    ScrCmd_05E 5, _0D78
    ScrCmd_05E 6, _0DA0
    ScrCmd_05F
    ScrCmd_016 _0C86

_0C6E:
    ScrCmd_05E 5, _0D78
    ScrCmd_05E 6, _0DA0
    ScrCmd_05F
    ScrCmd_016 _0C86

_0C86:
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0C9D
    ScrCmd_016 _0CA3

_0C9D:
    ScrCmd_016 _0CA9

_0CA3:
    ScrCmd_016 _0CA9

_0CA9:
    ScrCmd_034
    ScrCmd_011 0x8005, 0x355
    ScrCmd_01C 1, _0CE1
    ScrCmd_011 0x8005, 0x356
    ScrCmd_01C 1, _0CE1
    ScrCmd_011 0x8005, 0x357
    ScrCmd_01C 1, _0CE1
    ScrCmd_011 0x8005, 0x358
    ScrCmd_01C 1, _0CE1
    ScrCmd_002

_0CE1:
    ScrCmd_05E 6, _0DB4
    ScrCmd_05F
    ScrCmd_016 _0CF1

_0CF1:
    ScrCmd_065 6
    ScrCmd_065 5
    ScrCmd_028 0x4086, 3
    ScrCmd_06C 254, 0
    ScrCmd_162
    ScrCmd_01E 0x172
    ScrCmd_01E 0x195
    ScrCmd_028 0x4082, 4
    ScrCmd_01E 0x196
    ScrCmd_003 30, 0x800C
    ScrCmd_0BC 6, 3, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x19E, 0, 2, 6, 0
    ScrCmd_0BC 6, 3, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0D48:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0D50:
    MoveAction_03F 4
    MoveAction_00E 2
    EndMovement

    .balign 4, 0
_0D5C:
    MoveAction_03F 4
    MoveAction_00E
    MoveAction_00D
    MoveAction_00E
    EndMovement

    .balign 4, 0
_0D70:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0D78:
    MoveAction_00F 8
    EndMovement

    .balign 4, 0
_0D80:
    MoveAction_03F
    MoveAction_022
    EndMovement

    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0D94:
    MoveAction_03F 3
    MoveAction_023
    EndMovement

    .balign 4, 0
_0DA0:
    MoveAction_03E
    MoveAction_00C
    MoveAction_021
    MoveAction_023
    EndMovement

    .balign 4, 0
_0DB4:
    MoveAction_013 8
    EndMovement

    .balign 4, 0
_0DBC:
    MoveAction_023
    MoveAction_04B
    MoveAction_041
    EndMovement

    .balign 4, 0
_0DCC:
    MoveAction_00C
    MoveAction_023
    MoveAction_04B
    EndMovement

    .balign 4, 0
_0DDC:
    MoveAction_03F
    MoveAction_022
    MoveAction_03F
    MoveAction_00C
    MoveAction_023
    EndMovement

_0DF4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 54
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0E07:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 57
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0E1A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 144
    ScrCmd_01C 1, _0E3E
    ScrCmd_02C 58
    ScrCmd_016 _0E36

_0E36:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0E3E:
    ScrCmd_02C 59
    ScrCmd_016 _0E36

_0E47:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 108
    ScrCmd_01C 1, _0E8C
    ScrCmd_02C 55
    ScrCmd_028 0x8004, 17
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0E97
    ScrCmd_01E 108
    ScrCmd_014 0x7E0
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0E8C:
    ScrCmd_02C 56
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0E97:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0EA1:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 32
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0EB4:
    ScrCmd_060
    ScrCmd_05E 2, _0664
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 50
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 110
    ScrCmd_01C 1, _0F07
    ScrCmd_011 0x8004, 111
    ScrCmd_01C 1, _0F19
    ScrCmd_011 0x8004, 112
    ScrCmd_01C 1, _0F2B
    ScrCmd_011 0x8004, 113
    ScrCmd_01C 1, _0F3D
    ScrCmd_002

_0F07:
    ScrCmd_05E 2, _0670
    ScrCmd_05F
    ScrCmd_016 _0F4F
    ScrCmd_002

_0F19:
    ScrCmd_05E 2, _0680
    ScrCmd_05F
    ScrCmd_016 _0F4F
    ScrCmd_002

_0F2B:
    ScrCmd_05E 2, _0690
    ScrCmd_05F
    ScrCmd_016 _0F4F
    ScrCmd_002

_0F3D:
    ScrCmd_05E 2, _0698
    ScrCmd_05F
    ScrCmd_016 _0F4F
    ScrCmd_002

_0F4F:
    ScrCmd_0CE 0
    ScrCmd_02C 51
    ScrCmd_031
    ScrCmd_034
    ScrCmd_028 0x4086, 3
    ScrCmd_164
    ScrCmd_161
    ScrCmd_06D 2, 48
    ScrCmd_06C 2, 1
    ScrCmd_01E 0x172
    ScrCmd_061
    ScrCmd_002

_0F76:
    ScrCmd_036 60, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_0F8D:
    ScrCmd_036 61, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_0FA4:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 62, 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

    .byte 0
    .byte 0
    .byte 0
