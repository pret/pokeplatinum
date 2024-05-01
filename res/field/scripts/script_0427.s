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
    CompareVarToValue 0x4000, 0
    GoToIf 1, _0062
    CompareVarToValue 0x4000, 1
    GoToIf 1, _006A
    End

_0062:
    ScrCmd_028 0x4020, 97
    End

_006A:
    ScrCmd_028 0x4020, 0
    End

_0072:
    ScrCmd_060
    ScrCmd_05E 2, _0664
    ScrCmd_05F
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    CompareVarToValue 0x8004, 110
    GoToIf 1, _00BF
    CompareVarToValue 0x8004, 111
    GoToIf 1, _00EB
    CompareVarToValue 0x8004, 112
    GoToIf 1, _0117
    CompareVarToValue 0x8004, 113
    GoToIf 1, _0143
    End

_00BF:
    ScrCmd_05E 2, _0670
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_05E 2, _06A8
    ScrCmd_05E 0xFF, _0810
    ScrCmd_05F
    GoTo _016F
    End

_00EB:
    ScrCmd_05E 2, _0680
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_05E 2, _06C0
    ScrCmd_05E 0xFF, _0824
    ScrCmd_05F
    GoTo _016F
    End

_0117:
    ScrCmd_05E 2, _0690
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_05E 2, _06D8
    ScrCmd_05E 0xFF, _0838
    ScrCmd_05F
    GoTo _016F
    End

_0143:
    ScrCmd_05E 2, _0698
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_05E 2, _06F0
    ScrCmd_05E 0xFF, _084C
    ScrCmd_05F
    GoTo _016F
    End

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
    ClearFlag 0x178
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
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0298
    CompareVarToValue 0x800C, 1
    GoToIf 1, _0259
    End

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
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0298
    CompareVarToValue 0x800C, 1
    GoToIf 1, _0259
    End

_0298:
    ScrCmd_05E 2, _0758
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 14
    ScrCmd_02C 15
    GoTo _02B3
    End

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
    CompareVarToValue 0x800C, 0
    GoToIf 1, _030B
    CompareVarToValue 0x800C, 1
    GoToIf 1, _02FD
    End

_02FD:
    ScrCmd_0CE 0
    ScrCmd_02C 18
    GoTo _02B3
    End

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
    ClearFlag 0x179
    ScrCmd_064 6
    ScrCmd_062 6
    ScrCmd_014 0x7F8
    ScrCmd_05E 6, _08C8
    ScrCmd_05F
    ScrCmd_14D 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _036E
    GoTo _03A6
    End

_036E:
    ScrCmd_02C 22
    ScrCmd_034
    ScrCmd_05E 5, _07E8
    ScrCmd_05F
    ClearFlag 0x17D
    ScrCmd_064 12
    ScrCmd_003 15, 0x800C
    ScrCmd_02C 23
    ScrCmd_02C 26
    ScrCmd_05E 6, _08D0
    ScrCmd_05F
    ScrCmd_02C 28
    GoTo _03DE
    End

_03A6:
    ScrCmd_02C 24
    ScrCmd_034
    ScrCmd_05E 5, _07E8
    ScrCmd_05F
    ClearFlag 0x17D
    ScrCmd_064 12
    ScrCmd_003 15, 0x800C
    ScrCmd_02C 25
    ScrCmd_02C 27
    ScrCmd_05E 6, _08D0
    ScrCmd_05F
    ScrCmd_02C 29
    GoTo _03DE
    End

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
    End

_042E:
    ScrCmd_060
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    SetFlag 0x17D
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
    SetFlag 0x178
    ScrCmd_065 5
    ScrCmd_14D 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _04CA
    GoTo _04EE
    End

_04CA:
    ScrCmd_02C 39
    ScrCmd_034
    ScrCmd_05E 6, _08D8
    ScrCmd_05E 0xFF, _08A8
    ScrCmd_05F
    ScrCmd_02C 40
    ScrCmd_034
    GoTo _0512
    End

_04EE:
    ScrCmd_02C 41
    ScrCmd_034
    ScrCmd_05E 6, _08D8
    ScrCmd_05E 0xFF, _08A8
    ScrCmd_05F
    ScrCmd_02C 42
    ScrCmd_034
    GoTo _0512
    End

_0512:
    ScrCmd_05E 0xFF, _08B0
    ScrCmd_05E 6, _08E0
    ScrCmd_05F
    SetFlag 0x179
    ScrCmd_065 6
    ScrCmd_0CE 0
    ScrCmd_02C 43
    ScrCmd_034
    ScrCmd_003 40, 0x800C
    ScrCmd_05E 2, _07A8
    ScrCmd_05E 0xFF, _08BC
    ScrCmd_05F
    GoTo _0554
    End

_0554:
    ScrCmd_0CD 1
    ScrCmd_02C 44
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _057A
    CompareVarToValue 0x800C, 1
    GoToIf 1, _0656
    End

_057A:
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 47
    ScrCmd_034
    ScrCmd_06D 2, 15
    ScrCmd_0DE 0x800C
    CompareVarToValue 0x800C, 0x183
    GoToIf 1, _05BB
    CompareVarToValue 0x800C, 0x186
    GoToIf 1, _05C5
    GoTo _05B1
    End

_05B1:
    ScrCmd_125 0x352
    GoTo _05CF

_05BB:
    ScrCmd_125 0x353
    GoTo _05CF

_05C5:
    ScrCmd_125 0x354
    GoTo _05CF

_05CF:
    ScrCmd_0EC 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _05F5
    ScrCmd_062 2
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 48
    GoTo _0618
    End

_05F5:
    ScrCmd_0A1
    ScrCmd_062 2
    ScrCmd_0BC 6, 3, 1, 0
    ScrCmd_0BD
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 49
    GoTo _0618
    End

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
    End

_0656:
    ScrCmd_0CE 0
    ScrCmd_02C 45
    GoTo _0554
    End

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
    CompareVarToValue 0x800C, 3
    GoToIf 1, _0903
    GoTo _0935
    End

_0903:
    ScrCmd_05E 0xFF, _09D0
    ScrCmd_05E 2, _09B0
    ScrCmd_05F
    Call _0967
    ScrCmd_05E 0xFF, _09C0
    ScrCmd_05E 2, _0998
    ScrCmd_05F
    GoTo _097C
    End

_0935:
    ScrCmd_05E 0xFF, _09D8
    ScrCmd_05E 2, _09B8
    ScrCmd_05F
    Call _0967
    ScrCmd_05E 0xFF, _09C8
    ScrCmd_05E 2, _09A4
    ScrCmd_05F
    GoTo _097C
    End

_0967:
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 53
    ScrCmd_034
    ScrCmd_162
    ScrCmd_06D 2, 15
    Return

_097C:
    Call _0986
    ScrCmd_061
    End

_0986:
    ScrCmd_161
    ScrCmd_06D 2, 48
    ScrCmd_06C 2, 1
    Return

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
    CompareVarToValue 0x8004, 110
    GoToIf 1, _0A3B
    CompareVarToValue 0x8004, 111
    GoToIf 1, _0A3B
    CompareVarToValue 0x8004, 112
    GoToIf 1, _0A3B
    CompareVarToValue 0x8004, 113
    GoToIf 1, _0A3B
    End

_0A3B:
    ScrCmd_162
    ScrCmd_06D 2, 15
    ScrCmd_05E 0xFF, _0A7C
    ScrCmd_05E 2, _0A68
    ScrCmd_05F
    GoTo _0A5B

_0A5B:
    Call _0986
    ScrCmd_061
    End

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
    CompareVarToValue 0x800C, 3
    GoToIf 1, _0AB9
    GoTo _0ACB
    End

_0AB9:
    ScrCmd_05E 0xFF, _0AEC
    ScrCmd_05F
    GoTo _0ADD
    End

_0ACB:
    ScrCmd_05E 0xFF, _0AF4
    ScrCmd_05F
    GoTo _0ADD
    End

_0ADD:
    ScrCmd_061
    End

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
    CompareVarToValue 0x8005, 0x355
    GoToIf 1, _0B55
    CompareVarToValue 0x8005, 0x356
    GoToIf 1, _0B89
    CompareVarToValue 0x8005, 0x357
    GoToIf 1, _0BBB
    End

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
    GoTo _0BF5
    End

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
    GoTo _0BF5

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
    GoTo _0BF5

_0BF5:
    ScrCmd_0CF 0
    ScrCmd_0DB 1
    ScrCmd_0DC 2
    ScrCmd_05E 5, _0D70
    ScrCmd_05F
    CompareVarToValue 0x8005, 0x355
    GoToIf 1, _0C3E
    CompareVarToValue 0x8005, 0x356
    GoToIf 1, _0C56
    CompareVarToValue 0x8005, 0x357
    GoToIf 1, _0C6E
    CompareVarToValue 0x8005, 0x358
    GoToIf 1, _0C6E
    End

_0C3E:
    ScrCmd_05E 5, _0D78
    ScrCmd_05E 6, _0D94
    ScrCmd_05F
    GoTo _0C86

_0C56:
    ScrCmd_05E 5, _0D78
    ScrCmd_05E 6, _0DA0
    ScrCmd_05F
    GoTo _0C86

_0C6E:
    ScrCmd_05E 5, _0D78
    ScrCmd_05E 6, _0DA0
    ScrCmd_05F
    GoTo _0C86

_0C86:
    ScrCmd_14D 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0C9D
    GoTo _0CA3

_0C9D:
    GoTo _0CA9

_0CA3:
    GoTo _0CA9

_0CA9:
    ScrCmd_034
    CompareVarToValue 0x8005, 0x355
    GoToIf 1, _0CE1
    CompareVarToValue 0x8005, 0x356
    GoToIf 1, _0CE1
    CompareVarToValue 0x8005, 0x357
    GoToIf 1, _0CE1
    CompareVarToValue 0x8005, 0x358
    GoToIf 1, _0CE1
    End

_0CE1:
    ScrCmd_05E 6, _0DB4
    ScrCmd_05F
    GoTo _0CF1

_0CF1:
    ScrCmd_065 6
    ScrCmd_065 5
    ScrCmd_028 0x4086, 3
    ScrCmd_06C 254, 0
    ScrCmd_162
    SetFlag 0x172
    SetFlag 0x195
    ScrCmd_028 0x4082, 4
    SetFlag 0x196
    ScrCmd_003 30, 0x800C
    ScrCmd_0BC 6, 3, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x19E, 0, 2, 6, 0
    ScrCmd_0BC 6, 3, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    End

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
    End

_0E07:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 57
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0E1A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 144
    GoToIf 1, _0E3E
    ScrCmd_02C 58
    GoTo _0E36

_0E36:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0E3E:
    ScrCmd_02C 59
    GoTo _0E36

_0E47:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 108
    GoToIf 1, _0E8C
    ScrCmd_02C 55
    ScrCmd_028 0x8004, 17
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0E97
    SetFlag 108
    ScrCmd_014 0x7E0
    ScrCmd_034
    ScrCmd_061
    End

_0E8C:
    ScrCmd_02C 56
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0E97:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    End

_0EA1:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 32
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0EB4:
    ScrCmd_060
    ScrCmd_05E 2, _0664
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 50
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    CompareVarToValue 0x8004, 110
    GoToIf 1, _0F07
    CompareVarToValue 0x8004, 111
    GoToIf 1, _0F19
    CompareVarToValue 0x8004, 112
    GoToIf 1, _0F2B
    CompareVarToValue 0x8004, 113
    GoToIf 1, _0F3D
    End

_0F07:
    ScrCmd_05E 2, _0670
    ScrCmd_05F
    GoTo _0F4F
    End

_0F19:
    ScrCmd_05E 2, _0680
    ScrCmd_05F
    GoTo _0F4F
    End

_0F2B:
    ScrCmd_05E 2, _0690
    ScrCmd_05F
    GoTo _0F4F
    End

_0F3D:
    ScrCmd_05E 2, _0698
    ScrCmd_05F
    GoTo _0F4F
    End

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
    SetFlag 0x172
    ScrCmd_061
    End

_0F76:
    ScrCmd_036 60, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_0F8D:
    ScrCmd_036 61, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_0FA4:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 62, 0x800C
    ScrCmd_014 0x7D0
    End

    .byte 0
    .byte 0
    .byte 0
