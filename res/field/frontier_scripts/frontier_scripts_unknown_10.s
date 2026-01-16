# include "macros/frscrcmd.inc"

    .data

    .long _0039 - 4
    .long _08D9 - 4
    .short 0xFD13

    .balign 4, 0
_000C:
    .short 0xEEEE
    .byte 0x00
    .short 0xEEEF
    .byte 0x00
    .short 0xFD13

    .balign 4, 0
_0014:
    .short 0x0000
    .short 0xEEEE
    .byte 0x01
    .short 0x0070
    .short 0x0070
    .byte 0x00
    .byte 0x00
    .short 0x0002
    .short 0xEEEF
    .byte 0x00
    .short 0x0070
    .short 0x0040
    .byte 0x01
    .byte 0x00
    .byte 0x00
    .short 0x0003
    .short 0xEEEF
    .byte 0x00
    .short 0x0080
    .short 0x0040
    .byte 0x01
    .byte 0x00
    .byte 0x01
    .short 0xFD13

_0039:
    FrontierScrCmd_39
    PlayBGM SEQ_BF_TOWWER
    FrontierScrCmd_AA
    WaitTime 1, 0x8008
    FrontierScrCmd_B2 0, 0, 0, 0x8008
    WaitTime 1, 0x8008
    FrontierScrCmd_36
    FrontierScrCmd_35 176
    FrontierScrCmd_36
    FrontierScrCmd_22 _000C
    FrontierScrCmd_24 _0014
    GoTo _0070
    End

_0070:
    FrontierScrCmd_13 6, 1, 1, 0
    FrontierScrCmd_14
    GoTo _0084
    End

_0084:
    Message 0
    FrontierScrCmd_1B 31, 5, 0, 1, 0x8008
    FrontierScrCmd_CA 1
    FrontierScrCmd_1C 26, 255, 1
    FrontierScrCmd_1C 27, 255, 2
    FrontierScrCmd_1C 28, 255, 4
    FrontierScrCmd_1C 29, 255, 5
    FrontierScrCmd_1C 30, 255, 6
    FrontierScrCmd_1C 31, 255, 7
    FrontierScrCmd_1D
    GoToIfEq 0x8008, 1, _010E
    GoToIfEq 0x8008, 2, _012F
    GoToIfEq 0x8008, 4, _01CA
    GoToIfEq 0x8008, 5, _01F1
    GoToIfEq 0x8008, 6, _0218
    GoTo _023F
    End

_010E:
    FrontierScrCmd_B2 7, 1, 0, 0x8008
    SetVar 0x8004, 0
    SetVar 0x8009, 1
    FrontierScrCmd_3D 0x4003, 0
    GoTo _0254
    End

_012F:
    FrontierScrCmd_3D 0x40B8, 3
    FrontierScrCmd_3D 0x4003, 0
    GoTo _0143
    End

_0143:
    Message 14
    FrontierScrCmd_16 31, 11, 0, 1, 0x8008
    FrontierScrCmd_CA 1
    FrontierScrCmd_17 32, 0
    FrontierScrCmd_17 33, 1
    FrontierScrCmd_17 31, 2
    FrontierScrCmd_19
    GoToIfEq 0x8008, 0, _0188
    GoToIfEq 0x8008, 1, _01A9
    GoTo _0084
    End

_0188:
    FrontierScrCmd_B2 7, 2, 0, 0x8008
    SetVar 0x8004, 0
    SetVar 0x8009, 2
    FrontierScrCmd_3D 0x40B9, 0
    GoTo _0254
    End

_01A9:
    FrontierScrCmd_B2 7, 3, 0, 0x8008
    SetVar 0x8004, 0
    SetVar 0x8009, 3
    FrontierScrCmd_3D 0x40B9, 1
    GoTo _0254
    End

_01CA:
    FrontierScrCmd_B2 7, 4, 0, 0x8008
    SetVar 0x8004, 0
    SetVar 0x8009, 4
    FrontierScrCmd_3D 0x40BD, 3
    FrontierScrCmd_3D 0x4003, 0
    GoTo _0254
    End

_01F1:
    FrontierScrCmd_B2 7, 5, 0, 0x8008
    SetVar 0x8004, 0
    SetVar 0x8009, 5
    FrontierScrCmd_3D 0x40BB, 3
    FrontierScrCmd_3D 0x4003, 0
    GoTo _0254
    End

_0218:
    FrontierScrCmd_B2 7, 6, 0, 0x8008
    SetVar 0x8004, 0
    SetVar 0x8009, 6
    FrontierScrCmd_3D 0x40BE, 3
    FrontierScrCmd_3D 0x4003, 0
    GoTo _0254
    End

_023F:
    FrontierScrCmd_B2 7, 7, 0, 0x8008
    SetVar 0x8004, 1
    GoTo _0254
    End

_0254:
    MessageNoSkip 4
    GoTo _0260
    End

_0260:
    SetVar 0x800A, 1
    FrontierScrCmd_AC 0x800A, 0x8004, 0, 0x8008
    GoToIfEq 0x8008, 0, _0260
    FrontierScrCmd_AD 0x800A
    FrontierScrCmd_36
    FrontierScrCmd_B2 9, 0, 0, 0x8008
    GoToIfEq 0x8008, 7, _09C0
    FrontierScrCmd_B1 0x8008
    GoToIfEq 0x8008, 1, _02B8
    FrontierScrCmd_36
    FrontierScrCmd_35 170
    FrontierScrCmd_36
    GoTo _02C0
    End

_02B8:
    GoTo _09AD
    End

_02C0:
    SetVar 0x800A, 0
    FrontierScrCmd_AC 0x800A, 0, 0, 0x8008
    GoToIfEq 0x8008, 0, _02C0
    FrontierScrCmd_AD 0x800A
    FrontierScrCmd_36
    FrontierScrCmd_AE 0x8009, 0x8008
    GoToIfEq 0x8008, 1, _0302
    Message 3
    GoTo _0084
    End

_0302:
    FrontierScrCmd_B2 9, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0345
    GoToIfEq 0x8008, 5, _0345
    GoToIfEq 0x8008, 4, _0345
    GoToIfEq 0x8008, 6, _0345
    GoTo _0758
    End

_0345:
    Message 2
    FrontierScrCmd_13 6, 1, 0, 0
    FrontierScrCmd_14
    FrontierScrCmd_12
    FrontierScrCmd_B2 13, 0, 0, 0x8008
    GoTo _037E
    End

_0366:
    FrontierScrCmd_AF 0x8009, 2, 0x8008
    FrontierScrCmd_AF 0x8009, 3, 0x8008
    GoTo _037E
    End

_037E:
    FrontierScrCmd_AF 0x8009, 0, 0x8008
    FrontierScrCmd_AF 0x8009, 1, 0x8008
    GoToIfEq 0x8008, 2, _0366
    FrontierScrCmd_B0 0x8002, 0x8005
    FrontierScrCmd_3D 0x4002, 0x8002
    FrontierScrCmd_3D 0x4005, 0x8005
    FrontierScrCmd_13 6, 1, 1, 0
    FrontierScrCmd_14
    GoTo _03C1
    End

_03C1:
    MessageNoSkip 4
    GoTo _03CD
    End

_03CD:
    SetVar 0x800A, 2
    FrontierScrCmd_AC 0x800A, 0x8002, 0x8005, 0x8008
    GoToIfEq 0x8008, 0, _03CD
    FrontierScrCmd_AD 0x800A
    FrontierScrCmd_36
    GoToIfEq 0x8002, 255, _0084
    FrontierScrCmd_B2 1, 0, 0, 0x8008
    GoToIfEq 0x8008, 0, _044E
    FrontierScrCmd_B2 9, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _045D
    GoToIfEq 0x8008, 5, _04F9
    GoToIfEq 0x8008, 4, _0620
    GoToIfEq 0x8008, 6, _06BC
    End

_044E:
    FrontierScrCmd_7C 0
    Message 1
    GoTo _0084
    End

_045D:
    FrontierScrCmd_B2 2, 1, 0, 0x8008
    SetVar 0x8010, 0x8008
    GoToIfEq 0x8010, 1, _0499
    GoToIfEq 0x8010, 2, _04B4
    GoToIfEq 0x8010, 3, _04CF
    GoTo _0758
    End

_0499:
    FrontierScrCmd_B2 5, 0, 0, 0x8008
    FrontierScrCmd_7E 0, 0x8008, 0, 0
    Message 6
    GoTo _0084
    End

_04B4:
    FrontierScrCmd_B2 5, 1, 0, 0x8008
    FrontierScrCmd_7E 0, 0x8008, 0, 0
    Message 6
    GoTo _0084
    End

_04CF:
    FrontierScrCmd_B2 5, 0, 0, 0x8008
    FrontierScrCmd_7E 0, 0x8008, 0, 0
    FrontierScrCmd_B2 5, 1, 0, 0x8008
    FrontierScrCmd_7E 1, 0x8008, 0, 0
    Message 7
    GoTo _0084
    End

_04F9:
    FrontierScrCmd_B2 2, 5, 0, 0x8008
    GoToIfEq 0x8008, 1, _0614
    Call _081C
    GoToIfEq 0x800F, 0, _0766
    FrontierScrCmd_B2 3, 0, 0, 0x8008
    GoToIfEq 0x8008, 0, _0758
    FrontierScrCmd_B2 4, 0, 0, 0x800B
    FrontierScrCmd_7E 0, 0x800B, 0, 0
    FrontierScrCmd_B2 5, 0, 0, 0x8008
    FrontierScrCmd_7E 1, 0x8008, 0, 0
    GoToIfEq 0x8008, 0x800B, _0758
    GoTo _0567
    End

_0567:
    Message 15
    FrontierScrCmd_16 25, 13, 1, 1, 0x8008
    FrontierScrCmd_17 16, 0
    FrontierScrCmd_17 17, 1
    FrontierScrCmd_19
    MessageNoSkip 24
    SetVar 0x800B, 0x8008
    GoTo _0593
    End

_0593:
    SetVar 0x800A, 4
    FrontierScrCmd_AC 0x800A, 0x800B, 0, 0x8008
    GoToIfEq 0x8008, 0, _0593
    FrontierScrCmd_AD 0x800A
    FrontierScrCmd_36
    FrontierScrCmd_B2 8, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _05F9
    GoToIfEq 0x8008, -2, _05F9
    GoToIfEq 0x800B, 1, _05F9
    GoToIfEq 0x800B, -2, _05F9
    GoTo _0605
    End

_05F9:
    Message 18
    GoTo _0084
    End

_0605:
    FrontierScrCmd_B2 6, 0, 0, 0x8008
    GoTo _0758
    End

_0614:
    Message 11
    GoTo _0084
    End

_0620:
    FrontierScrCmd_B2 2, 4, 0, 0x8008
    SetVar 0x8010, 0x8008
    GoToIfEq 0x8010, 1, _065C
    GoToIfEq 0x8010, 2, _0677
    GoToIfEq 0x8010, 3, _0692
    GoTo _0758
    End

_065C:
    FrontierScrCmd_B2 5, 0, 0, 0x8008
    FrontierScrCmd_7E 0, 0x8008, 0, 0
    Message 9
    GoTo _0084
    End

_0677:
    FrontierScrCmd_B2 5, 1, 0, 0x8008
    FrontierScrCmd_7E 0, 0x8008, 0, 0
    Message 9
    GoTo _0084
    End

_0692:
    FrontierScrCmd_B2 5, 0, 0, 0x8008
    FrontierScrCmd_7E 0, 0x8008, 0, 0
    FrontierScrCmd_B2 5, 1, 0, 0x8008
    FrontierScrCmd_7E 1, 0x8008, 0, 0
    Message 10
    GoTo _0084
    End

_06BC:
    FrontierScrCmd_B2 2, 6, 0, 0x8008
    SetVar 0x8010, 0x8008
    GoToIfEq 0x8010, 1, _06F8
    GoToIfEq 0x8010, 2, _0713
    GoToIfEq 0x8010, 3, _072E
    GoTo _0758
    End

_06F8:
    FrontierScrCmd_B2 5, 0, 0, 0x8008
    FrontierScrCmd_7E 0, 0x8008, 0, 0
    Message 9
    GoTo _0084
    End

_0713:
    FrontierScrCmd_B2 5, 1, 0, 0x8008
    FrontierScrCmd_7E 0, 0x8008, 0, 0
    Message 9
    GoTo _0084
    End

_072E:
    FrontierScrCmd_B2 5, 0, 0, 0x8008
    FrontierScrCmd_7E 0, 0x8008, 0, 0
    FrontierScrCmd_B2 5, 1, 0, 0x8008
    FrontierScrCmd_7E 1, 0x8008, 0, 0
    Message 10
    GoTo _0084
    End

_0758:
    Call _081C
    GoTo _0766
    End

_0766:
    FrontierScrCmd_B2 12, 0, 0, 0x8008
    FrontierScrCmd_3D 0x4064, 0x8008
    FrontierScrCmd_36
    FrontierScrCmd_35 175
    FrontierScrCmd_36
    MessageInstant 19
    ShowSavingIcon
    FrontierScrCmd_73 0x8008
    HideSavingIcon
    PlaySoundEffect SEQ_SE_DP_SAVE
    WaitSoundEffect SEQ_SE_DP_SAVE
    MessageNoSkip 20
    WaitTime 10, 0x8008
    FrontierScrCmd_36
    FrontierScrCmd_35 171
    FrontierScrCmd_36
    FrontierScrCmd_12
    FrontierScrCmd_13 6, 1, 0, 0
    FrontierScrCmd_14
    FrontierScrCmd_25 0
    FrontierScrCmd_25 2
    FrontierScrCmd_25 3
    FrontierScrCmd_48 58
    FrontierScrCmd_B2 9, 0, 0, 0x8008
    SetVar 0x8010, 0x8008
    GoToIfEq 0x8010, 1, _0842
    GoToIfEq 0x8010, 2, _0879
    GoToIfEq 0x8010, 3, _0879
    GoToIfEq 0x8010, 5, _088D
    GoToIfEq 0x8010, 4, _08A1
    GoToIfEq 0x8010, 6, _08B5
    End

_081C:
    FrontierScrCmd_B2 11, 0, 0, 0x8008
    SetVar 0x800F, 0x8008
    CallIfEq 0x8008, 0, _0838
    Return

_0838:
    Message 5
    MessageNoSkip 4
    Return

_0842:
    FrontierScrCmd_B3
    FrontierScrCmd_3D 0x40DE, 1
    Call _08D3
    GoTo _0858
    End

_0858:
    FrontierScrCmd_B4 0x8008
    GoToIfEq 0x8008, 0, _0858
    FrontierScrCmd_B5
    Call _08C9
    FrontierScrCmd_04 6, 0
    End

_0879:
    FrontierScrCmd_AB
    PlayBGM SEQ_PL_BF_FACTORY
    Call _08C9
    FrontierScrCmd_04 3, 0
    End

_088D:
    FrontierScrCmd_AB
    PlayBGM SEQ_PL_BF_STAGE
    Call _08C9
    FrontierScrCmd_04 9, 0
    End

_08A1:
    FrontierScrCmd_AB
    PlayBGM SEQ_PL_BF_CASTLE02
    Call _08C9
    FrontierScrCmd_04 11, 0
    End

_08B5:
    FrontierScrCmd_AB
    PlayBGM SEQ_PL_BF_ROULETTE
    Call _08C9
    FrontierScrCmd_04 15, 0
    End

_08C9:
    FrontierScrCmd_36
    FrontierScrCmd_35 173
    FrontierScrCmd_36
    Return

_08D3:
    FrontierScrCmd_36
    FrontierScrCmd_35 174

_08D9:
    FrontierScrCmd_36
    Return

_08DD:
    FrontierScrCmd_B7
    FrontierScrCmd_AA
    WaitTime 1, 0x8008
    FrontierScrCmd_B2 0, 0, 0, 0x8008
    WaitTime 1, 0x8008
    FrontierScrCmd_36
    FrontierScrCmd_35 177
    FrontierScrCmd_36
    FrontierScrCmd_22 _000C
    FrontierScrCmd_24 _0014
    PlayBGM SEQ_BF_TOWWER
    FrontierScrCmd_13 6, 1, 1, 0
    FrontierScrCmd_14
    FrontierScrCmd_7C 0
    Message 21
    ShowYesNoMenu 0x8008, MENU_YES
    GoToIfEq 0x8008, 0, _0939
    GoTo _094B
    End

_0939:
    MessageNoSkip 24
    SetVar 0x800B, 0
    GoTo _095D
    End

_094B:
    MessageNoSkip 24
    SetVar 0x800B, 1
    GoTo _095D
    End

_095D:
    SetVar 0x800A, 5
    FrontierScrCmd_AC 0x800A, 0x800B, 0, 0x8008
    GoToIfEq 0x8008, 0, _095D
    FrontierScrCmd_AD 0x800A
    FrontierScrCmd_36
    FrontierScrCmd_B1 0x8008
    FrontierScrCmd_B2 10, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _09AD
    GoToIfEq 0x800B, 1, _09C0
    GoTo _0084
    End

_09AD:
    FrontierScrCmd_7C 0
    MessageNoSkip 25
    MessageNoSkip 4
    GoTo _09C0
    End

_09C0:
    FrontierScrCmd_36
    FrontierScrCmd_35 172
    FrontierScrCmd_36
    FrontierScrCmd_12
    GoTo _09D2
    End

_09D2:
    FrontierScrCmd_13 6, 1, 0, 0
    FrontierScrCmd_14
    FrontierScrCmd_AB
    FrontierScrCmd_36
    FrontierScrCmd_35 178
    FrontierScrCmd_36
    FrontierScrCmd_02

    .balign 4, 0
