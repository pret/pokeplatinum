# include "macros/frscrcmd.inc"
# include "res/text/bank/unk_0015.h"

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
    HealParty
    PlayBGM SEQ_BF_TOWWER
    FrontierScrCmd_AA
    WaitTime 1, 0x8008
    FrontierScrCmd_B2 0, 0, 0, 0x8008
    WaitTime 1, 0x8008
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 176
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_22 _000C
    FrontierScrCmd_24 _0014
    GoTo _0070
    End

_0070:
    FadeScreenIn
    GoTo _0084
    End

_0084:
    Message pl_msg_00000015_00000
    InitLocalTextListMenu 31, 5, 0, 1, 0x8008
    SetMenuXOriginSide 1
    AddListMenuEntry pl_msg_00000015_00026, 255, 1
    AddListMenuEntry pl_msg_00000015_00027, 255, 2
    AddListMenuEntry pl_msg_00000015_00028, 255, 4
    AddListMenuEntry pl_msg_00000015_00029, 255, 5
    AddListMenuEntry pl_msg_00000015_00030, 255, 6
    AddListMenuEntry pl_msg_00000015_00031, 255, 7
    ShowListMenu
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
    Message pl_msg_00000015_00014
    InitLocalTextMenu 31, 11, 0, TRUE, 0x8008
    SetMenuXOriginSide 1
    AddMenuEntry pl_msg_00000015_00032, 0
    AddMenuEntry pl_msg_00000015_00033, 1
    AddMenuEntry pl_msg_00000015_00031, 2
    ShowMenu
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
    MessageNoSkip pl_msg_00000015_00004
    GoTo _0260
    End

_0260:
    SetVar 0x800A, 1
    FrontierScrCmd_AC 0x800A, 0x8004, 0, 0x8008
    GoToIfEq 0x8008, 0, _0260
    FrontierScrCmd_AD 0x800A
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_B2 9, 0, 0, 0x8008
    GoToIfEq 0x8008, 7, _09C0
    FrontierScrCmd_B1 0x8008
    GoToIfEq 0x8008, 1, _02B8
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 170
    ClearReceivedTempDataAllPlayers
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
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_AE 0x8009, 0x8008
    GoToIfEq 0x8008, 1, _0302
    Message pl_msg_00000015_00003
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
    Message pl_msg_00000015_00002
    FadeScreenOut
    CloseMessage
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
    FadeScreenIn
    GoTo _03C1
    End

_03C1:
    MessageNoSkip pl_msg_00000015_00004
    GoTo _03CD
    End

_03CD:
    SetVar 0x800A, 2
    FrontierScrCmd_AC 0x800A, 0x8002, 0x8005, 0x8008
    GoToIfEq 0x8008, 0, _03CD
    FrontierScrCmd_AD 0x800A
    ClearReceivedTempDataAllPlayers
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
    BufferPartnerName 0
    Message pl_msg_00000015_00001
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
    BufferSpeciesName 0, 0x8008
    Message pl_msg_00000015_00006
    GoTo _0084
    End

_04B4:
    FrontierScrCmd_B2 5, 1, 0, 0x8008
    BufferSpeciesName 0, 0x8008
    Message pl_msg_00000015_00006
    GoTo _0084
    End

_04CF:
    FrontierScrCmd_B2 5, 0, 0, 0x8008
    BufferSpeciesName 0, 0x8008
    FrontierScrCmd_B2 5, 1, 0, 0x8008
    BufferSpeciesName 1, 0x8008
    Message pl_msg_00000015_00007
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
    BufferSpeciesName 0, 0x800B
    FrontierScrCmd_B2 5, 0, 0, 0x8008
    BufferSpeciesName 1, 0x8008
    GoToIfEq 0x8008, 0x800B, _0758
    GoTo _0567
    End

_0567:
    Message pl_msg_00000015_00015
    InitLocalTextMenu 25, 13, 1, TRUE, 0x8008
    AddMenuEntry pl_msg_00000015_00016, 0
    AddMenuEntry pl_msg_00000015_00017, 1
    ShowMenu
    MessageNoSkip pl_msg_00000015_00024
    SetVar 0x800B, 0x8008
    GoTo _0593
    End

_0593:
    SetVar 0x800A, 4
    FrontierScrCmd_AC 0x800A, 0x800B, 0, 0x8008
    GoToIfEq 0x8008, 0, _0593
    FrontierScrCmd_AD 0x800A
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_B2 8, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _05F9
    GoToIfEq 0x8008, -2, _05F9
    GoToIfEq 0x800B, 1, _05F9
    GoToIfEq 0x800B, -2, _05F9
    GoTo _0605
    End

_05F9:
    Message pl_msg_00000015_00018
    GoTo _0084
    End

_0605:
    FrontierScrCmd_B2 6, 0, 0, 0x8008
    GoTo _0758
    End

_0614:
    Message pl_msg_00000015_00011
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
    BufferSpeciesName 0, 0x8008
    Message pl_msg_00000015_00009
    GoTo _0084
    End

_0677:
    FrontierScrCmd_B2 5, 1, 0, 0x8008
    BufferSpeciesName 0, 0x8008
    Message pl_msg_00000015_00009
    GoTo _0084
    End

_0692:
    FrontierScrCmd_B2 5, 0, 0, 0x8008
    BufferSpeciesName 0, 0x8008
    FrontierScrCmd_B2 5, 1, 0, 0x8008
    BufferSpeciesName 1, 0x8008
    Message pl_msg_00000015_00010
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
    BufferSpeciesName 0, 0x8008
    Message pl_msg_00000015_00009
    GoTo _0084
    End

_0713:
    FrontierScrCmd_B2 5, 1, 0, 0x8008
    BufferSpeciesName 0, 0x8008
    Message pl_msg_00000015_00009
    GoTo _0084
    End

_072E:
    FrontierScrCmd_B2 5, 0, 0, 0x8008
    BufferSpeciesName 0, 0x8008
    FrontierScrCmd_B2 5, 1, 0, 0x8008
    BufferSpeciesName 1, 0x8008
    Message pl_msg_00000015_00010
    GoTo _0084
    End

_0758:
    Call _081C
    GoTo _0766
    End

_0766:
    FrontierScrCmd_B2 12, 0, 0, 0x8008
    FrontierScrCmd_3D 0x4064, 0x8008
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 175
    ClearReceivedTempDataAllPlayers
    MessageInstant pl_msg_00000015_00019
    ShowSavingIcon
    FrontierScrCmd_73 0x8008
    HideSavingIcon
    PlaySoundEffect SEQ_SE_DP_SAVE
    WaitSoundEffect SEQ_SE_DP_SAVE
    MessageNoSkip pl_msg_00000015_00020
    WaitTime 10, 0x8008
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 171
    ClearReceivedTempDataAllPlayers
    CloseMessage
    FadeScreenOut
    FrontierScrCmd_25 0
    FrontierScrCmd_25 2
    FrontierScrCmd_25 3
    IncrementRecordValue RECORD_UNK_058
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
    Message pl_msg_00000015_00005
    MessageNoSkip pl_msg_00000015_00004
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
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 173
    ClearReceivedTempDataAllPlayers
    Return

_08D3:
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 174

_08D9:
    ClearReceivedTempDataAllPlayers
    Return

_08DD:
    SetWiFiListHostFriendCurrentDate
    FrontierScrCmd_AA
    WaitTime 1, 0x8008
    FrontierScrCmd_B2 0, 0, 0, 0x8008
    WaitTime 1, 0x8008
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 177
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_22 _000C
    FrontierScrCmd_24 _0014
    PlayBGM SEQ_BF_TOWWER
    FadeScreenIn
    BufferPartnerName 0
    Message pl_msg_00000015_00021
    ShowYesNoMenu 0x8008, MENU_YES
    GoToIfEq 0x8008, 0, _0939
    GoTo _094B
    End

_0939:
    MessageNoSkip pl_msg_00000015_00024
    SetVar 0x800B, 0
    GoTo _095D
    End

_094B:
    MessageNoSkip pl_msg_00000015_00024
    SetVar 0x800B, 1
    GoTo _095D
    End

_095D:
    SetVar 0x800A, 5
    FrontierScrCmd_AC 0x800A, 0x800B, 0, 0x8008
    GoToIfEq 0x8008, 0, _095D
    FrontierScrCmd_AD 0x800A
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_B1 0x8008
    FrontierScrCmd_B2 10, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _09AD
    GoToIfEq 0x800B, 1, _09C0
    GoTo _0084
    End

_09AD:
    BufferPartnerName 0
    MessageNoSkip pl_msg_00000015_00025
    MessageNoSkip pl_msg_00000015_00004
    GoTo _09C0
    End

_09C0:
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 172
    ClearReceivedTempDataAllPlayers
    CloseMessage
    GoTo _09D2
    End

_09D2:
    FadeScreenOut
    FrontierScrCmd_AB
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 178
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_02

    .balign 4, 0
