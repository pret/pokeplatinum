#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0042
    ScriptEntry _0072
    ScriptEntry _09E0
    ScriptEntry _0A8C
    ScriptEntry _0B24
    ScriptEntry _0F76
    ScriptEntry _0F8D
    ScriptEntry _0FA4
    ScriptEntry _0DF4
    ScriptEntry _0E47
    ScriptEntry _0E07
    ScriptEntry _0E1A
    ScriptEntry _042E
    ScriptEntry _08E8
    ScriptEntry _0EA1
    ScriptEntry _0EB4
    .short 0xFD13

_0042:
    ScrCmd_14D 0x4000
    GoToIfEq 0x4000, 0, _0062
    GoToIfEq 0x4000, 1, _006A
    End

_0062:
    SetVar 0x4020, 97
    End

_006A:
    SetVar 0x4020, 0
    End

_0072:
    LockAll
    ApplyMovement 2, _0664
    WaitMovement
    Message 0
    CloseMessage
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8004, 110, _00BF
    GoToIfEq 0x8004, 111, _00EB
    GoToIfEq 0x8004, 112, _0117
    GoToIfEq 0x8004, 113, _0143
    End

_00BF:
    ApplyMovement 2, _0670
    WaitMovement
    BufferRivalName 0
    Message 1
    CloseMessage
    ApplyMovement 2, _06A8
    ApplyMovement 0xFF, _0810
    WaitMovement
    GoTo _016F
    End

_00EB:
    ApplyMovement 2, _0680
    WaitMovement
    BufferRivalName 0
    Message 1
    CloseMessage
    ApplyMovement 2, _06C0
    ApplyMovement 0xFF, _0824
    WaitMovement
    GoTo _016F
    End

_0117:
    ApplyMovement 2, _0690
    WaitMovement
    BufferRivalName 0
    Message 1
    CloseMessage
    ApplyMovement 2, _06D8
    ApplyMovement 0xFF, _0838
    WaitMovement
    GoTo _016F
    End

_0143:
    ApplyMovement 2, _0698
    WaitMovement
    BufferRivalName 0
    Message 1
    CloseMessage
    ApplyMovement 2, _06F0
    ApplyMovement 0xFF, _084C
    WaitMovement
    GoTo _016F
    End

_016F:
    BufferRivalName 0
    Message 2
    CloseMessage
    ApplyMovement 2, _0708
    ApplyMovement 0xFF, _0860
    WaitMovement
    Message 3
    CloseMessage
    ApplyMovement 2, _071C
    ApplyMovement 0xFF, _086C
    WaitMovement
    Message 4
    CloseMessage
    WaitTime 15, 0x800C
    ApplyMovement 2, _0728
    ApplyMovement 0xFF, _0878
    WaitMovement
    Message 5
    CloseMessage
    ApplyMovement 0xFF, _0730
    ApplyMovement 2, _0730
    WaitMovement
    PlayMusic SEQ_OPENING2
    ClearFlag 0x178
    ScrCmd_064 5
    ScrCmd_062 5
    ApplyMovement 5, _07C0
    WaitMovement
    Message 6
    BufferRivalName 0
    Message 7
    Message 8
    ApplyMovement 2, _0740
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message 9
    CloseMessage
    ApplyMovement 2, _0748
    ApplyMovement 5, _07C8
    WaitMovement
    Message 10
    CloseMessage
    WaitTime 20, 0x800C
    ApplyMovement 5, _07D0
    WaitMovement
    Message 11
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0298
    GoToIfEq 0x800C, 1, _0259
    End

_0259:
    ApplyMovement 2, _0750
    WaitMovement
    BufferRivalName 0
    Message 12
    CloseMessage
    ApplyMovement 2, _0758
    WaitMovement
    Message 13
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0298
    GoToIfEq 0x800C, 1, _0259
    End

_0298:
    ApplyMovement 2, _0758
    WaitMovement
    BufferRivalName 0
    Message 14
    Message 15
    GoTo _02B3
    End

_02B3:
    ApplyMovement 2, _0768
    WaitMovement
    BufferRivalName 0
    Message 16
    ApplyMovement 2, _0770
    WaitMovement
    ApplyMovement 0xFF, _088C
    WaitMovement
    BufferPlayerName 1
    Message 17
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _030B
    GoToIfEq 0x800C, 1, _02FD
    End

_02FD:
    BufferRivalName 0
    Message 18
    GoTo _02B3
    End

_030B:
    Message 19
    ApplyMovement 2, _0768
    ApplyMovement 0xFF, _0894
    WaitMovement
    BufferRivalName 0
    Message 20
    Message 21
    CloseMessage
    ApplyMovement 5, _07D8
    WaitMovement
    WaitTime 25, 0x800C
    ClearFlag 0x179
    ScrCmd_064 6
    ScrCmd_062 6
    CallCommonScript 0x7F8
    ApplyMovement 6, _08C8
    WaitMovement
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _036E
    GoTo _03A6
    End

_036E:
    Message 22
    CloseMessage
    ApplyMovement 5, _07E8
    WaitMovement
    ClearFlag 0x17D
    ScrCmd_064 12
    WaitTime 15, 0x800C
    Message 23
    Message 26
    ApplyMovement 6, _08D0
    WaitMovement
    Message 28
    GoTo _03DE
    End

_03A6:
    Message 24
    CloseMessage
    ApplyMovement 5, _07E8
    WaitMovement
    ClearFlag 0x17D
    ScrCmd_064 12
    WaitTime 15, 0x800C
    Message 25
    Message 27
    ApplyMovement 6, _08D0
    WaitMovement
    Message 29
    GoTo _03DE
    End

_03DE:
    Message 30
    CloseMessage
    ApplyMovement 5, _07F0
    WaitMovement
    WaitTime 15, 0x800C
    Message 31
    ApplyMovement 2, _0778
    WaitMovement
    BufferRivalName 0
    Message 33
    ApplyMovement 2, _0780
    WaitMovement
    BufferPlayerName 1
    Message 34
    WaitABXPadPress
    CloseMessage
    CallCommonScript 0x7F9
    ScrCmd_188 2, 16
    SetVar 0x4086, 1
    ReleaseAll
    End

_042E:
    LockAll
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    SetFlag 0x17D
    ScrCmd_065 12
    ScrCmd_0B4
    ScrCmd_0B5
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ScrCmd_0DE 0x8000
    ScrCmd_096 0x8000, 5, 0, 0x800C
    ApplyMovement 5, _07F8
    ApplyMovement 2, _0760
    ApplyMovement 0xFF, _0884
    WaitMovement
    BufferRivalName 0
    ScrCmd_0DC 2
    Message 36
    Message 37
    Message 38
    CloseMessage
    ApplyMovement 5, _0800
    ApplyMovement 2, _0788
    ApplyMovement 0xFF, _089C
    WaitMovement
    SetFlag 0x178
    ScrCmd_065 5
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _04CA
    GoTo _04EE
    End

_04CA:
    Message 39
    CloseMessage
    ApplyMovement 6, _08D8
    ApplyMovement 0xFF, _08A8
    WaitMovement
    Message 40
    CloseMessage
    GoTo _0512
    End

_04EE:
    Message 41
    CloseMessage
    ApplyMovement 6, _08D8
    ApplyMovement 0xFF, _08A8
    WaitMovement
    Message 42
    CloseMessage
    GoTo _0512
    End

_0512:
    ApplyMovement 0xFF, _08B0
    ApplyMovement 6, _08E0
    WaitMovement
    SetFlag 0x179
    ScrCmd_065 6
    BufferRivalName 0
    Message 43
    CloseMessage
    WaitTime 40, 0x800C
    ApplyMovement 2, _07A8
    ApplyMovement 0xFF, _08BC
    WaitMovement
    GoTo _0554
    End

_0554:
    BufferPlayerName 1
    Message 44
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _057A
    GoToIfEq 0x800C, 1, _0656
    End

_057A:
    BufferRivalName 0
    BufferPlayerName 1
    Message 47
    CloseMessage
    ScrCmd_06D 2, 15
    ScrCmd_0DE 0x800C
    GoToIfEq 0x800C, 0x183, _05BB
    GoToIfEq 0x800C, 0x186, _05C5
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
    GoToIfEq 0x800C, 0, _05F5
    ScrCmd_062 2
    BufferRivalName 0
    BufferPlayerName 1
    Message 48
    GoTo _0618
    End

_05F5:
    ScrCmd_0A1
    ScrCmd_062 2
    FadeScreen 6, 3, 1, 0
    WaitFadeScreen
    BufferRivalName 0
    BufferPlayerName 1
    Message 49
    GoTo _0618
    End

_0618:
    CloseMessage
    SetVar 0x4086, 2
    SetVar 0x40A4, 3
    WaitTime 30, 0x800C
    FadeScreen 6, 3, 0, 0
    WaitFadeScreen
    ScrCmd_14E
    Warp MAP_HEADER_TWINLEAF_TOWN_PLAYER_HOUSE_1F, 0, 2, 6, 0
    FadeScreen 6, 3, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_0656:
    BufferRivalName 0
    Message 45
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
    LockAll
    ScrCmd_1BD 0x800C
    GoToIfEq 0x800C, 3, _0903
    GoTo _0935
    End

_0903:
    ApplyMovement 0xFF, _09D0
    ApplyMovement 2, _09B0
    WaitMovement
    Call _0967
    ApplyMovement 0xFF, _09C0
    ApplyMovement 2, _0998
    WaitMovement
    GoTo _097C
    End

_0935:
    ApplyMovement 0xFF, _09D8
    ApplyMovement 2, _09B8
    WaitMovement
    Call _0967
    ApplyMovement 0xFF, _09C8
    ApplyMovement 2, _09A4
    WaitMovement
    GoTo _097C
    End

_0967:
    BufferRivalName 0
    BufferPlayerName 1
    Message 53
    CloseMessage
    ScrCmd_162
    ScrCmd_06D 2, 15
    Return

_097C:
    Call _0986
    ReleaseAll
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
    LockAll
    ApplyMovement 0xFF, _0A84
    ApplyMovement 2, _0A74
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message 52
    CloseMessage
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8004, 110, _0A3B
    GoToIfEq 0x8004, 111, _0A3B
    GoToIfEq 0x8004, 112, _0A3B
    GoToIfEq 0x8004, 113, _0A3B
    End

_0A3B:
    ScrCmd_162
    ScrCmd_06D 2, 15
    ApplyMovement 0xFF, _0A7C
    ApplyMovement 2, _0A68
    WaitMovement
    GoTo _0A5B

_0A5B:
    Call _0986
    ReleaseAll
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
    LockAll
    ApplyMovement 2, _0AE4
    WaitMovement
    BufferRivalName 0
    Message 35
    CloseMessage
    ScrCmd_1BD 0x800C
    GoToIfEq 0x800C, 3, _0AB9
    GoTo _0ACB
    End

_0AB9:
    ApplyMovement 0xFF, _0AEC
    WaitMovement
    GoTo _0ADD
    End

_0ACB:
    ApplyMovement 0xFF, _0AF4
    WaitMovement
    GoTo _0ADD
    End

_0ADD:
    ReleaseAll
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
    LockAll
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8005, 0x355, _0B55
    GoToIfEq 0x8005, 0x356, _0B89
    GoToIfEq 0x8005, 0x357, _0BBB
    End

_0B55:
    ApplyMovement 254, _0DBC
    ApplyMovement 5, _0D48
    WaitMovement
    BufferRivalName 0
    Message 53
    CloseMessage
    ApplyMovement 5, _0D50
    ApplyMovement 6, _0D80
    WaitMovement
    GoTo _0BF5
    End

_0B89:
    ApplyMovement 254, _0DBC
    ApplyMovement 5, _0D48
    WaitMovement
    BufferRivalName 0
    Message 53
    CloseMessage
    ApplyMovement 5, _0D5C
    ApplyMovement 6, _0D80
    WaitMovement
    GoTo _0BF5

_0BBB:
    ApplyMovement 0xFF, _0DDC
    ApplyMovement 254, _0DCC
    ApplyMovement 5, _0D48
    WaitMovement
    BufferRivalName 0
    Message 53
    CloseMessage
    ApplyMovement 5, _0D5C
    ApplyMovement 6, _0D80
    WaitMovement
    GoTo _0BF5

_0BF5:
    BufferCounterpartName 0
    ScrCmd_0DB 1
    ScrCmd_0DC 2
    ApplyMovement 5, _0D70
    WaitMovement
    GoToIfEq 0x8005, 0x355, _0C3E
    GoToIfEq 0x8005, 0x356, _0C56
    GoToIfEq 0x8005, 0x357, _0C6E
    GoToIfEq 0x8005, 0x358, _0C6E
    End

_0C3E:
    ApplyMovement 5, _0D78
    ApplyMovement 6, _0D94
    WaitMovement
    GoTo _0C86

_0C56:
    ApplyMovement 5, _0D78
    ApplyMovement 6, _0DA0
    WaitMovement
    GoTo _0C86

_0C6E:
    ApplyMovement 5, _0D78
    ApplyMovement 6, _0DA0
    WaitMovement
    GoTo _0C86

_0C86:
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _0C9D
    GoTo _0CA3

_0C9D:
    GoTo _0CA9

_0CA3:
    GoTo _0CA9

_0CA9:
    CloseMessage
    GoToIfEq 0x8005, 0x355, _0CE1
    GoToIfEq 0x8005, 0x356, _0CE1
    GoToIfEq 0x8005, 0x357, _0CE1
    GoToIfEq 0x8005, 0x358, _0CE1
    End

_0CE1:
    ApplyMovement 6, _0DB4
    WaitMovement
    GoTo _0CF1

_0CF1:
    ScrCmd_065 6
    ScrCmd_065 5
    SetVar 0x4086, 3
    ScrCmd_06C 254, 0
    ScrCmd_162
    SetFlag 0x172
    SetFlag 0x195
    SetVar 0x4082, 4
    SetFlag 0x196
    WaitTime 30, 0x800C
    FadeScreen 6, 3, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_TWINLEAF_TOWN_PLAYER_HOUSE_1F, 0, 2, 6, 0
    FadeScreen 6, 3, 1, 0
    WaitFadeScreen
    ReleaseAll
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
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 54
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0E07:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 57
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0E1A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 144, _0E3E
    Message 58
    GoTo _0E36

_0E36:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0E3E:
    Message 59
    GoTo _0E36

_0E47:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 108, _0E8C
    Message 55
    SetVar 0x8004, 17
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0E97
    SetFlag 108
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_0E8C:
    Message 56
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0E97:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_0EA1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 32
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0EB4:
    LockAll
    ApplyMovement 2, _0664
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message 50
    CloseMessage
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8004, 110, _0F07
    GoToIfEq 0x8004, 111, _0F19
    GoToIfEq 0x8004, 112, _0F2B
    GoToIfEq 0x8004, 113, _0F3D
    End

_0F07:
    ApplyMovement 2, _0670
    WaitMovement
    GoTo _0F4F
    End

_0F19:
    ApplyMovement 2, _0680
    WaitMovement
    GoTo _0F4F
    End

_0F2B:
    ApplyMovement 2, _0690
    WaitMovement
    GoTo _0F4F
    End

_0F3D:
    ApplyMovement 2, _0698
    WaitMovement
    GoTo _0F4F
    End

_0F4F:
    BufferRivalName 0
    Message 51
    WaitABXPadPress
    CloseMessage
    SetVar 0x4086, 3
    ScrCmd_164
    ScrCmd_161
    ScrCmd_06D 2, 48
    ScrCmd_06C 2, 1
    SetFlag 0x172
    ReleaseAll
    End

_0F76:
    ScrCmd_036 60, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_0F8D:
    ScrCmd_036 61, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_0FA4:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 62, 0x800C
    CallCommonScript 0x7D0
    End

    .byte 0
    .byte 0
    .byte 0
