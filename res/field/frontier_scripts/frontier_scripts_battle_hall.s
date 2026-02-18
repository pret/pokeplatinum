# include "macros/frscrcmd.inc"
# include "res/text/bank/battle_hall_scene.h"

    .data

    .long _0326 - 4
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
    .short 0x0018
    .byte 0x01
    .short 0x0019
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0024:
    .short 0xEEEE
    .byte 0x00
    .short 0x00AF
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_002C:
    .short 0xEEEE
    .byte 0x00
    .short 0xEEEF
    .byte 0x00
    .short 0x00AF
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0038:
    .short 0x0000
    .short 0xEEEE
    .byte 0x01
    .short 0x0078
    .short 0x0070
    .byte 0x00
    .byte 0x00
    .short 0x0003
    .short 0x800F
    .byte 0x01
    .short 0x0080
    .short 0x0020
    .byte 0x00
    .byte 0x01
    .short 0x000A
    .short 0x800A
    .byte 0x01
    .short 0x0080
    .short 0x0020
    .byte 0x00
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_005C:
    .short 0x0000
    .short 0xEEEE
    .byte 0x01
    .short 0x0078
    .short 0x0070
    .byte 0x00
    .byte 0x00
    .short 0x0001
    .short 0xEEEF
    .byte 0x01
    .short 0x0080
    .short 0x0020
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .short 0x0002
    .short 0xEEEF
    .byte 0x01
    .short 0x0080
    .short 0x0020
    .byte 0x00
    .byte 0x00
    .byte 0x01
    .short 0x0003
    .short 0x800F
    .byte 0x01
    .short 0x0080
    .short 0x0020
    .byte 0x00
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_008C:
    .short 0x0000
    .short 0xEEEE
    .byte 0x01
    .short 0x0078
    .short 0x0080
    .byte 0x00
    .byte 0x00
    .short 0x000B
    .short 0x00AF
    .byte 0x03
    .short 0x0030
    .short 0x0140
    .byte 0x01
    .byte 0x01
    .short 0x000A
    .short 0x800A
    .byte 0x01
    .short 0x0080
    .short 0x0080
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_00B0:
    .short 0x0000
    .short 0xEEEE
    .byte 0x01
    .short 0x0078
    .short 0x0080
    .byte 0x00
    .byte 0x00
    .short 0x0001
    .short 0xEEEF
    .byte 0x01
    .short 0x0080
    .short 0x0080
    .byte 0x01
    .byte 0x00
    .byte 0x00
    .short 0x0002
    .short 0xEEEF
    .byte 0x01
    .short 0x0080
    .short 0x0070
    .byte 0x01
    .byte 0x00
    .byte 0x01
    .short 0x000B
    .short 0x00AF
    .byte 0x03
    .short 0x0030
    .short 0x0140
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_00E0:
    .short 0xEEEE
    .byte 0x00
    .short 0x0034
    .byte 0x01
    .short 0x003B
    .byte 0x01
    .short 0x003C
    .byte 0x01
    .short 0x0016
    .byte 0x01
    .short 0x00A9
    .byte 0x01
    .short 0x0091
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_00F8:
    .short 0xEEEE
    .byte 0x00
    .short 0xEEEF
    .byte 0x00
    .short 0x0034
    .byte 0x01
    .short 0x003B
    .byte 0x01
    .short 0x003C
    .byte 0x01
    .short 0x0016
    .byte 0x01
    .short 0x00A9
    .byte 0x01
    .short 0x0091
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0114:
    .short 0x800B
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_011C:
    .short 0x800C
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0124:
    .short 0x0062
    .short 0x800B
    .byte 0x01
    .short 0x0080
    .short 0x00E0
    .byte 0x00
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0134:
    .short 0x0063
    .short 0x800C
    .byte 0x01
    .short 0x0080
    .short 0x00D0
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0144:
    .short 0x0023
    .short 0x0001
    .short 0x0027
    .short 0x0001
    .short 0x0005
    .short 0x0009
    .short 0x0023
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0005
    .short 0x0001
    .short 0x0028
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0164:
    .short 0x0023
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0027
    .short 0x0001
    .short 0x0005
    .short 0x0008
    .short 0x0023
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0005
    .short 0x0002
    .short 0x0028
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0188:
    .short 0x0027
    .short 0x0001
    .short 0x0005
    .short 0x0009
    .short 0x0006
    .short 0x0001
    .short 0x0013
    .short 0x0001
    .short 0x0022
    .short 0x0001
    .short 0x0011
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_01A4:
    .short 0x0012
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_01AC:
    .short 0x0005
    .short 0x000C
    .short 0xFD13

    .balign 4, 0
_01B4:
    .short 0x0005
    .short 0x0004
    .short 0xFD13

    .balign 4, 0
_01BC:
    .short 0x0005
    .short 0x0004
    .short 0xFD13

    .balign 4, 0
_01C4:
    .short 0x0005
    .short 0x0004
    .short 0xFD13

    .balign 4, 0
_01CC:
    .short 0x0005
    .short 0x000C
    .short 0x0006
    .short 0x0003
    .short 0x0013
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_01DC:
    .short 0x0005
    .short 0x000C
    .short 0x0006
    .short 0x0003
    .short 0x0013
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_01EC:
    .short 0x0005
    .short 0x000D
    .short 0x0006
    .short 0x0002
    .short 0x0005
    .short 0x0001
    .short 0x0006
    .short 0x0001
    .short 0x0013
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0204:
    .short 0x0005
    .short 0x000B
    .short 0x0006
    .short 0x0005
    .short 0x0013
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0214:
    .short 0x0007
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_021C:
    .short 0x0007
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0224:
    .short 0x0006
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_022C:
    .short 0x0006
    .short 0x0005
    .short 0xFD13

    .balign 4, 0
_0234:
    .short 0x0007
    .short 0x0005
    .short 0x0012
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0240:
    .short 0x0027
    .short 0x0001
    .short 0x0005
    .short 0x0006
    .short 0x0007
    .short 0x0003
    .short 0x0012
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0254:
    .short 0x0027
    .short 0x0001
    .short 0x0005
    .short 0x0006
    .short 0x0007
    .short 0x0003
    .short 0x0005
    .short 0x0001
    .short 0x0012
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_026C:
    .short 0x0027
    .short 0x0001
    .short 0x0005
    .short 0x0007
    .short 0x0007
    .short 0x0003
    .short 0x0012
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0280:
    .short 0x0028
    .short 0x0001
    .short 0x0004
    .short 0x0006
    .short 0x0011
    .short 0x0001
    .short 0x0026
    .short 0x0001
    .short 0x0026
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0298:
    .short 0x0005
    .short 0x0004
    .short 0x0012
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_02A4:
    .short 0x0005
    .short 0x0004
    .short 0x0013
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_02B0:
    .short 0x0005
    .short 0x0004
    .short 0x0007
    .short 0x0003
    .short 0x0012
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_02C0:
    .short 0x0027
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_02C8:
    .short 0x0006
    .short 0x0002
    .short 0x0004
    .short 0x0007
    .short 0x0028
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_02D8:
    .short 0x0004
    .short 0x0001
    .short 0x0006
    .short 0x0002
    .short 0x0004
    .short 0x0008
    .short 0x0028
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_02EC:
    .short 0x0006
    .short 0x0002
    .short 0x0004
    .short 0x0008
    .short 0x0028
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_02FC:
    .short 0x0007
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0304:
    .short 0x0006
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_030C:
    .short 0x0006
    .short 0x0001
    .short 0x0013
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0318:
    .short 0x0004
    .short 0x000C
    .short 0xFD13

    .balign 4, 0
_0320:
    .short 0x0013
    .short 0x0001
    .short 0xFD13

_0326:
    FrontierScrCmd_3E VAR_BATTLE_HALL_CHALLENGE_TYPE, 0x8001
    FrontierScrCmd_3E 0x4003, 0x8003
    FrontierScrCmd_3E 0x4002, 0x8002
    FrontierScrCmd_3E 0x4005, 0x8000
    GetPlayerObjEventGfx 0x800A
    SetVar 0x800E, 0
    FrontierScrCmd_6C
    FrontierScrCmd_8B 0x8003, 0x8001, 0x8002, 0x8000
    FrontierScrCmd_91 30, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0382
    SetVar 0x800F, 231
    FrontierScrCmd_22 _0008
    FrontierScrCmd_24 _0038
    GoTo _03A6
    End

_0382:
    Call _13E1
    IncrementTrainerScore TRAINER_SCORE_EVENT_UNK_43
    SetVar 0x800F, 232
    FrontierScrCmd_22 _0010
    FrontierScrCmd_24 _005C
    GoTo _03A6
    End

_03A6:
    FadeScreenIn
    FrontierScrCmd_91 30, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0404
    FrontierScrCmd_28 3, _0188
    FrontierScrCmd_28 10, _0144
    FrontierScrCmd_29
    PlaySoundEffect SEQ_SE_DP_KAIDAN2
    WaitSoundEffect SEQ_SE_DP_KAIDAN2
    FadeScreenOut
    FrontierScrCmd_25 0
    FrontierScrCmd_25 3
    FrontierScrCmd_25 10
    FrontierScrCmd_23 0x800F
    GoTo _044A
    End

_0404:
    FrontierScrCmd_28 3, _0188
    FrontierScrCmd_28 1, _0144
    FrontierScrCmd_28 2, _0164
    FrontierScrCmd_29
    PlaySoundEffect SEQ_SE_DP_KAIDAN2
    WaitSoundEffect SEQ_SE_DP_KAIDAN2
    FadeScreenOut
    FrontierScrCmd_25 1
    FrontierScrCmd_25 2
    FrontierScrCmd_25 3
    FrontierScrCmd_23 0x800F
    GoTo _044A
    End

_044A:
    FrontierScrCmd_03 10
    FrontierScrCmd_91 30, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0476
    FrontierScrCmd_22 _0024
    FrontierScrCmd_24 _008C
    GoTo _048A
    End

_0476:
    FrontierScrCmd_22 _002C
    FrontierScrCmd_24 _00B0
    GoTo _048A
    End

_048A:
    FrontierScrCmd_45 0x8002, 128, 56, 0xC350, 0, 0
    FrontierScrCmd_41 0, 2, 1
    FrontierScrCmd_43 0, 18
    FrontierScrCmd_43 0, 19
    Call _10C8
    FadeScreenIn
    FrontierScrCmd_4E 72, 160, 230, 192, 0, 1
    GoTo _04D4
    End

_04D4:
    GoTo _04DC
    End

_04DC:
    SetVar 0x8003, 0
    FrontierScrCmd_91 30, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0510
    FrontierScrCmd_28 0, _01AC
    FrontierScrCmd_28 10, _01CC
    FrontierScrCmd_29
    GoTo _0532
    End

_0510:
    FrontierScrCmd_28 0, _01AC
    FrontierScrCmd_28 1, _01DC
    FrontierScrCmd_28 2, _01EC
    FrontierScrCmd_29
    GoTo _0532
    End

_0532:
    FrontierScrCmd_4E 10, 160, 230, 192, 0, 0
    FrontierScrCmd_43 0, 20
    WaitTime 30, 0x8008
    FadeScreenOut COLOR_WHITE
    FrontierScrCmd_91 31, 0, 0, 0x8008
    FrontierScrCmd_42 0
    FadeScreenIn COLOR_WHITE
    FrontierScrCmd_46 0xC350
    FrontierScrCmd_91 23, 0, 0, 0x8008
    GoToIfEq 0x8008, 0, _0595
    SetVar 0x8003, 1
    GoTo _0B48
    End

_0595:
    Message BattleHallScene_Text_ChooseType
    FrontierScrCmd_91 35, 0, 0, 0x8008
    FrontierScrCmd_91 30, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _05BC
    GoTo _0611
    End

_05BC:
    MessageNoSkip BattleHallScene_Text_PleaseWait
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 220
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_C9 1
    GoTo _05D4
    End

_05D4:
    SetVar 0x8006, 7
    FrontierScrCmd_93 0x8006, 0, 0x8008
    GoToIfEq 0x8008, 0, _05D4
    FrontierScrCmd_94 0x8006
    ClearReceivedTempDataAllPlayers
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 221
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_C9 0
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 100
    ClearReceivedTempDataAllPlayers
    GoTo _0611
    End

_0611:
    FadeScreenOut
    CloseMessage
    FrontierScrCmd_91 30, 0, 0, 0x8008
    CallIfEq 0x8008, 1, _065B
    OpenBattleHallApp
    FrontierScrCmd_91 31, 0, 0, 0x8008
    FrontierScrCmd_91 36, 0, 0, 0x8008
    FadeScreenIn
    FrontierScrCmd_8C 0x8003
    GoTo _0665
    End

_065B:
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 224
    ClearReceivedTempDataAllPlayers
    Return

_0665:
    FrontierScrCmd_91 30, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0708
    CallIfNe 0x800E, 0, _080D
    SetVar 0x800E, 1
    FrontierScrCmd_91 37, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _1199
    GoToIfEq 0x8008, 2, _11BE
    Call _13C3
    BufferNumber 0, 0x8008
    Call _083D
    FrontierScrCmd_28 98, _0240
    FrontierScrCmd_29
    WaitTime 15, 0x8008
    FrontierScrCmd_28 98, _01A4
    FrontierScrCmd_29
    FrontierScrCmd_91 32, 0, 0, 0x8008
    FrontierScrCmd_95 0
    WaitABPress
    CloseMessage
    FrontierScrCmd_28 10, _0214
    FrontierScrCmd_28 98, _0224
    FrontierScrCmd_29
    GoTo _0700
    End

_0700:
    GoTo _08A0
    End

_0708:
    CallIfNe 0x800E, 0, _0821
    SetVar 0x800E, 1
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 223
    ClearReceivedTempDataAllPlayers
    Call _13FE
    GoTo _0731
    End

_0731:
    SetVar 0x8006, 1
    FrontierScrCmd_93 0x8006, 0, 0x8008
    GoToIfEq 0x8008, 0, _0731
    FrontierScrCmd_94 0x8006
    ClearReceivedTempDataAllPlayers
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 222
    ClearReceivedTempDataAllPlayers
    GoTo _0762
    End

_0762:
    SetVar 0x8006, 2
    FrontierScrCmd_93 0x8006, 0, 0x8008
    GoToIfEq 0x8008, 0, _0762
    FrontierScrCmd_94 0x8006
    ClearReceivedTempDataAllPlayers
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 103
    Call _0858
    FrontierScrCmd_28 98, _0254
    FrontierScrCmd_28 99, _026C
    FrontierScrCmd_29
    WaitTime 15, 0x8008
    FrontierScrCmd_28 98, _01A4
    FrontierScrCmd_29
    FrontierScrCmd_91 32, 0, 0, 0x8008
    FrontierScrCmd_95 0
    WaitTime 30, 0x8008
    CloseMessage
    FrontierScrCmd_28 99, _01A4
    FrontierScrCmd_29
    FrontierScrCmd_91 32, 0, 0, 0x8008
    FrontierScrCmd_95 1
    WaitTime 30, 0x8008
    CloseMessage
    FrontierScrCmd_28 1, _0214
    FrontierScrCmd_28 2, _021C
    FrontierScrCmd_28 98, _0224
    FrontierScrCmd_28 99, _0224
    FrontierScrCmd_29
    MessageNoSkip BattleHallScene_Text_PleaseWait
    GoTo _08A0
    End

_080D:
    FrontierScrCmd_28 10, _0320
    FrontierScrCmd_28 11, _030C
    FrontierScrCmd_29
    Return

_0821:
    FrontierScrCmd_28 1, _0320
    FrontierScrCmd_28 2, _0320
    FrontierScrCmd_28 11, _030C
    FrontierScrCmd_29
    Return

_083D:
    FrontierScrCmd_91 20, 0, 0, 0x8008
    SetVar 0x800B, 0x8008
    FrontierScrCmd_22 _0114
    FrontierScrCmd_24 _0124
    Return

_0858:
    FrontierScrCmd_91 20, 0, 0, 0x8008
    SetVar 0x800B, 0x8008
    FrontierScrCmd_22 _0114
    FrontierScrCmd_24 _0124
    FrontierScrCmd_91 20, 1, 0, 0x8008
    SetVar 0x800C, 0x8008
    FrontierScrCmd_22 _011C
    FrontierScrCmd_24 _0134
    Return

_088C:
    SetVar 0x800B, 216
    FrontierScrCmd_22 _0114
    FrontierScrCmd_24 _0124
    Return

_08A0:
    FrontierScrCmd_91 30, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _08F1
    FrontierScrCmd_91 37, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _08E1
    GoToIfEq 0x8008, 2, _08E1
    FrontierScrCmd_3F 1
    GoTo _0907
    End

_08E1:
    IncrementRecordValue RECORD_UNK_059
    FrontierScrCmd_47 5
    GoTo _0907
    End

_08F1:
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 101
    ClearReceivedTempDataAllPlayers
    CloseMessage
    FrontierScrCmd_3F 1
    GoTo _0907
    End

_0907:
    FrontierScrCmd_90
    FrontierScrCmd_8F
    FrontierScrCmd_91 27, 0, 0, 0x8008
    FrontierScrCmd_91 31, 0, 0, 0x8008
    FadeScreenIn
    FrontierScrCmd_92 0x8008
    GoToIfEq 0x8008, 0, _0F5D
    IncrementRecordValue RECORD_UNK_062
    FrontierScrCmd_91 28, 0, 0, 0x8008
    FrontierScrCmd_91 33, 0, 0, 0x8008
    CallIfEq 0x8008, 10, _09B1
    FrontierScrCmd_91 30, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _09E3
    FrontierScrCmd_91 37, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _1333
    GoToIfEq 0x8008, 2, _137B
    Call _13C3
    BufferNumber 0, 0x8008
    FrontierScrCmd_41 0, 2, 1
    Call _1125
    FrontierScrCmd_44
    FrontierScrCmd_42 0
    GoTo _09B7
    End

_09B1:
    IncrementRecordValue RECORD_UNK_066
    Return

_09B7:
    FrontierScrCmd_28 98, _02C8
    FrontierScrCmd_29
    FrontierScrCmd_25 98
    FrontierScrCmd_23 0x800B
    FrontierScrCmd_28 11, _02FC
    FrontierScrCmd_28 10, _0304
    FrontierScrCmd_29
    GoTo _0A41
    End

_09E3:
    FrontierScrCmd_41 0, 2, 1
    Call _1125
    FrontierScrCmd_44
    FrontierScrCmd_42 0
    Call _141B
    FrontierScrCmd_28 98, _02D8
    FrontierScrCmd_28 99, _02EC
    FrontierScrCmd_29
    FrontierScrCmd_25 98
    FrontierScrCmd_25 99
    FrontierScrCmd_23 0x800B
    FrontierScrCmd_23 0x800C
    FrontierScrCmd_28 11, _02FC
    FrontierScrCmd_28 1, _0304
    FrontierScrCmd_28 2, _0304
    FrontierScrCmd_29
    GoTo _0A41
    End

_0A41:
    GoTo _0A49
    End

_0A49:
    FrontierScrCmd_91 14, 1, 0, 0x8008
    FrontierScrCmd_91 5, 0, 0, 0x8008
    FrontierScrCmd_91 23, 0, 0, 0x8008
    GoToIfNe 0x8008, 10, _0B25
    GoTo _0A73
    End

_0A73:
    FrontierScrCmd_71 0x8008
    GoToIfEq 0x8008, 0, _0ABC
    FrontierScrCmd_70 0x8008
    CallIfEq 0x8008, 0, _0E6F
    CallIfEq 0x8008, 1, _0E75
    ShowYesNoMenu 0x8008, MENU_NO
    GoToIfEq 0x8008, 1, _0AD6
    GoTo _0AC8
    End

_0ABC:
    MessageNoSkip BattleHallScene_Text_PleaseWait
    GoTo _0AD6
    End

_0AC8:
    Call _0DFD
    GoTo _0AD6
    End

_0AD6:
    FrontierScrCmd_91 22, 0, 0, 0x8008
    FrontierScrCmd_3D 0x40BA, 1
    FrontierScrCmd_91 15, 0, 0, 0x8008
    BufferSpeciesName 0, 0x8008
    Message BattleHallScene_Text_BPEarned
    BufferPlayerName 0
    FrontierScrCmd_91 34, 0, 0, 0x8008
    BufferNumber 1, 0x8008
    GiveBattlePoints 0x8008
    Message BattleHallScene_Text_ReceiveBP
    PlayFanfare SEQ_PL_POINTGET3
    WaitFanfare
    FrontierScrCmd_C7
    GoTo _0B1D
    End

_0B1D:
    GoTo _0FDD
    End

_0B25:
    FrontierScrCmd_91 15, 0, 0, 0x8008
    BufferSpeciesName 0, 0x8008
    Message BattleHallScene_Text_FullRestore
    PlayFanfare SEQ_ASA
    WaitFanfare
    HealParty
    GoTo _0B48
    End

_0B48:
    Call _13C3
    BufferNumber 0, 0x8008
    GoTo _0B5B
    End

_0B5B:
    FrontierScrCmd_91 23, 0, 0, 0x8008
    AddVar 0x8008, 1
    BufferNumber 0, 0x8008
    Message BattleHallScene_Text_AreYouReady
    GoTo _0B79
    End

_0B79:
    FrontierScrCmd_91 30, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0BA2
    GoToIfEq 0x8003, 0, _0BF2
    GoTo _0BE4
    End

_0BA2:
    FrontierScrCmd_71 0x8008
    GoToIfEq 0x8008, 0, _0BC8
    GoToIfEq 0x8003, 0, _0BD6
    GoTo _0BC8
    End

_0BC8:
    SetVar 0x8008, 1
    GoTo _0C00
    End

_0BD6:
    SetVar 0x8008, 2
    GoTo _0C00
    End

_0BE4:
    SetVar 0x8008, 3
    GoTo _0C00
    End

_0BF2:
    SetVar 0x8008, 4
    GoTo _0C00
    End

_0C00:
    GoToIfEq 0x8008, 1, _0C36
    GoToIfEq 0x8008, 2, _0C51
    GoToIfEq 0x8008, 3, _0C74
    GoToIfEq 0x8008, 4, _0C97
    End

_0C36:
    InitLocalTextListMenu 31, 13, 0, 0, 0x8009
    SetMenuXOriginSide 1
    AddListMenuEntry BattleHallScene_Text_ContinueOption, 255, 0
    GoTo _0CC2
    End

_0C51:
    InitLocalTextListMenu 31, 11, 0, 0, 0x8009
    SetMenuXOriginSide 1
    AddListMenuEntry BattleHallScene_Text_ContinueOption, 255, 0
    AddListMenuEntry BattleHallScene_Text_RecordOption, 255, 1
    GoTo _0CC2
    End

_0C74:
    InitLocalTextListMenu 31, 11, 0, 0, 0x8009
    SetMenuXOriginSide 1
    AddListMenuEntry BattleHallScene_Text_ContinueOption, 255, 0
    AddListMenuEntry BattleHallScene_Text_RestOption, 255, 2
    GoTo _0CC2
    End

_0C97:
    InitLocalTextListMenu 31, 9, 0, 0, 0x8009
    SetMenuXOriginSide 1
    AddListMenuEntry BattleHallScene_Text_ContinueOption, 255, 0
    AddListMenuEntry BattleHallScene_Text_RecordOption, 255, 1
    AddListMenuEntry BattleHallScene_Text_RestOption, 255, 2
    GoTo _0CC2
    End

_0CC2:
    AddListMenuEntry BattleHallScene_Text_RetireOption, 255, 3
    ShowListMenu
    GoTo _0CD4
    End

_0CD4:
    GoToIfEq 0x8009, 0, _0D10
    GoToIfEq 0x8009, 1, _0DAF
    GoToIfEq 0x8009, 2, _0E7B
    GoToIfEq 0x8009, 3, _0ECF
    GoTo _0ECF
    End

_0D10:
    FrontierScrCmd_91 30, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0D2C
    GoTo _0D99
    End

_0D2C:
    BufferPartnerName 0
    Message BattleHallScene_Text_PartnerIsChoosing
    GoTo _0D3B
    End

_0D3B:
    SetVar 0x8006, 3
    FrontierScrCmd_93 0x8006, 0, 0x8008
    GoToIfEq 0x8008, 0, _0D3B
    FrontierScrCmd_94 0x8006
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_91 24, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0D80
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 102
    ClearReceivedTempDataAllPlayers
    GoTo _0D99
    End

_0D80:
    BufferPartnerName 0
    MessageNoSkip BattleHallScene_Text_PartnerRetired
    WaitTime 30, 0x8008
    MessageNoSkip BattleHallScene_Text_PleaseWait
    GoTo _0F30
    End

_0D99:
    SetVar 0x8003, 0
    GoTo _0DA7
    End

_0DA7:
    GoTo _0595
    End

_0DAF:
    FrontierScrCmd_70 0x8008
    CallIfEq 0x8008, 0, _0E6F
    CallIfEq 0x8008, 1, _0E75
    ShowYesNoMenu 0x8008, MENU_NO
    GoToIfEq 0x8008, 1, _0DF5
    GoTo _0DE7
    End

_0DE7:
    Call _0DFD
    GoTo _0B48
    End

_0DF5:
    GoTo _0B48
    End

_0DFD:
    Call _0E1F
    GoTo _0E28
    End

_0E0B:
    Call _0E1F
    AddVar 0x8005, 1
    GoTo _0E28
    End

_0E1F:
    FrontierScrCmd_91 4, 0, 0, 0x8005
    Return

_0E28:
    GoTo _0E30
    End

_0E30:
    SetVar 0x8003, 1
    MessageInstant BattleHallScene_Text_Saving
    FrontierScrCmd_91 17, 0, 0, 0x8008
    ShowSavingIcon
    FrontierScrCmd_6D 5, 0x8008, 0x8005, 0x8005
    HideSavingIcon
    GoToIfEq 0x8005, 1, _0E62
    Message BattleHallScene_Text_VideoSaveFailed
    Return

_0E62:
    PlaySoundEffect SEQ_SE_DP_SAVE
    BufferPlayerName 0
    Message BattleHallScene_Text_BattleSaved
    Return

_0E6F:
    Message BattleHallScene_Text_SaveAsVideo
    Return

_0E75:
    Message BattleHallScene_Text_OverwriteVideo
    Return

_0E7B:
    Message BattleHallScene_Text_BreakQuestion
    ShowYesNoMenu 0x8008, MENU_YES
    GoToIfEq 0x8008, 1, _0EC7
    GoTo _0E99
    End

_0E99:
    FrontierScrCmd_3D 0x40BA, 2
    FrontierScrCmd_91 10, 0, 0, 0x8008
    Call _1087
    FrontierScrCmd_6F
    FrontierScrCmd_8D
    FadeScreenOut
    CloseMessage
    FrontierScrCmd_91 7, 0, 0, 0x8008
    End

_0EC7:
    GoTo _0B48
    End

_0ECF:
    Message BattleHallScene_Text_RetireQuestion
    ShowYesNoMenu 0x8008, MENU_NO
    GoToIfEq 0x8008, 1, _0F55
    FrontierScrCmd_91 30, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0F01
    GoTo _0F40
    End

_0F01:
    MessageNoSkip BattleHallScene_Text_PleaseWait
    GoTo _0F0D
    End

_0F0D:
    SetVar 0x8006, 3
    FrontierScrCmd_93 0x8006, 1, 0x8008
    GoToIfEq 0x8008, 0, _0F0D
    GoTo _0F30
    End

_0F30:
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 107
    ClearReceivedTempDataAllPlayers
    GoTo _0F40
    End

_0F40:
    FrontierScrCmd_91 21, 0, 0, 0x8008
    FrontierScrCmd_3D 0x40BA, 3
    GoTo _100D
    End

_0F55:
    GoTo _0B48
    End

_0F5D:
    FrontierScrCmd_71 0x8008
    GoToIfEq 0x8008, 0, _0FA6
    FrontierScrCmd_70 0x8008
    CallIfEq 0x8008, 0, _0E6F
    CallIfEq 0x8008, 1, _0E75
    ShowYesNoMenu 0x8008, MENU_NO
    GoToIfEq 0x8008, 1, _0FC0
    GoTo _0FB2
    End

_0FA6:
    MessageNoSkip BattleHallScene_Text_PleaseWait
    GoTo _0FC8
    End

_0FB2:
    Call _0E0B
    GoTo _0FC8
    End

_0FC0:
    GoTo _0FC8
    End

_0FC8:
    FrontierScrCmd_91 21, 0, 0, 0x8008
    FrontierScrCmd_3D 0x40BA, 3
    GoTo _0FDD
    End

_0FDD:
    FrontierScrCmd_91 30, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0FF9
    GoTo _100D
    End

_0FF9:
    MessageNoSkip BattleHallScene_Text_PleaseWait
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 105
    ClearReceivedTempDataAllPlayers
    GoTo _100D
    End

_100D:
    Call _109F
    CloseMessage
    GoTo _101D
    End

_101D:
    FrontierScrCmd_91 30, 0, 0, 0x8008
    CallIfEq 0x8008, 1, _1071
    FadeScreenOut
    FrontierScrCmd_91 17, 0, 0, 0x8008
    CallIfEq 0x8008, 2, _106B
    FrontierScrCmd_91 17, 0, 0, 0x8008
    GoToIfEq 0x8008, 3, _107B
    FrontierScrCmd_6F
    FrontierScrCmd_8D
    FrontierScrCmd_02

_106B:
    FrontierScrCmd_C8 5
    Return

_1071:
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 106
    ClearReceivedTempDataAllPlayers
    Return

_107B:
    FrontierScrCmd_6F
    FrontierScrCmd_8D
    FrontierScrCmd_04 14, 1
    End

_1087:
    MessageInstant BattleHallScene_Text_Saving2
    ShowSavingIcon
    Call _10C2
    HideSavingIcon
    PlaySoundEffect SEQ_SE_DP_SAVE
    WaitSoundEffect SEQ_SE_DP_SAVE
    Return

_109F:
    MessageInstant BattleHallScene_Text_Saving2
    ShowSavingIcon
    FrontierScrCmd_76 0x8008
    CallIfEq 0x8008, 0, _10C2
    HideSavingIcon
    PlaySoundEffect SEQ_SE_DP_SAVE
    WaitSoundEffect SEQ_SE_DP_SAVE
    Return

_10C2:
    FrontierScrCmd_73 0x8008
    Return

_10C8:
    PlaySoundEffect SEQ_SE_DP_DENDOU
    FrontierScrCmd_91 19, 0, 0, 0x8008
    GoToIfLt 0x8008, 2, _10F5
    GoToIfLt 0x8008, 5, _1109
    GoTo _1117
    End

_10F5:
    FrontierScrCmd_43 0, 13
    FrontierScrCmd_43 0, 14
    FrontierScrCmd_43 0, 8
    Return

_1109:
    FrontierScrCmd_43 0, 9
    FrontierScrCmd_43 0, 10
    Return

_1117:
    FrontierScrCmd_43 0, 11
    FrontierScrCmd_43 0, 12
    Return

_1125:
    FrontierScrCmd_91 23, 0, 0, 0x8008
    AddVar 0x8008, 1
    GoToIfEq 0x8008, 10, _1159
    PlaySoundEffect SEQ_SE_DP_UG_022
    FrontierScrCmd_43 0, 2
    FrontierScrCmd_43 0, 3
    WaitSoundEffect SEQ_SE_DP_UG_022
    PlaySoundEffect SEQ_SE_DP_DENDOU
    Return

_1159:
    PlaySoundEffect SEQ_SE_DP_UG_022
    FrontierScrCmd_43 0, 4
    FrontierScrCmd_43 0, 6
    WaitSoundEffect SEQ_SE_DP_UG_022
    PlaySoundEffect SEQ_SE_DP_DENDOU
    Return

_1173:
    PlaySoundEffect SEQ_SE_DP_UG_022
    FrontierScrCmd_43 0, 4
    FrontierScrCmd_43 0, 6
    FrontierScrCmd_43 0, 0
    FrontierScrCmd_43 0, 1
    WaitSoundEffect SEQ_SE_DP_UG_022
    PlaySoundEffect SEQ_SE_DP_DENDOU
    Return

_1199:
    Call _13C3
    BufferNumber 0, 0x8008
    Call _1207
    Message BattleHallScene_Text_ArgentaIntro
    CloseMessage
    Call _11E3
    GoTo _0700
    End

_11BE:
    Call _13C3
    BufferNumber 0, 0x8008
    Call _1207
    Message BattleHallScene_Text_ArgentaIntroGold
    CloseMessage
    Call _11E3
    GoTo _0700
    End

_11E3:
    FrontierScrCmd_28 98, _0234
    FrontierScrCmd_29
    WaitTime 30, 0x8008
    FrontierScrCmd_28 10, _0214
    FrontierScrCmd_28 98, _0224
    FrontierScrCmd_29
    Return

_1207:
    Call _088C
    FrontierScrCmd_91 31, 1, 0, 0x8008
    FrontierScrCmd_45 0x8002, 128, 56, 0xC350, 0, 0
    FrontierScrCmd_4E 10, 160, 230, 192, 0, 0
    WaitTime 10, 0x8008
    FrontierScrCmd_4E 10, 160, 230, 192, 54, 1
    FrontierScrCmd_28 98, _0280
    FrontierScrCmd_28 0, _0318
    FrontierScrCmd_29
    FrontierScrCmd_41 0, 2, 1
    FrontierScrCmd_43 0, 16
    FrontierScrCmd_43 0, 17
    WaitTime 90, 0x8008
    FrontierScrCmd_43 0, 18
    FrontierScrCmd_28 98, _02C0
    FrontierScrCmd_29
    PlaySoundEffect SEQ_SE_DP_DENDOU
    WaitSoundEffect SEQ_SE_DP_DENDOU
    FrontierScrCmd_28 0, _01B4
    FrontierScrCmd_28 98, _0298
    FrontierScrCmd_29
    PlaySoundEffect SEQ_SE_DP_DENDOU
    FrontierScrCmd_43 0, 11
    FrontierScrCmd_43 0, 12
    WaitSoundEffect SEQ_SE_DP_DENDOU
    FrontierScrCmd_4E 10, 160, 230, 192, 10, 0
    FrontierScrCmd_28 0, _01BC
    FrontierScrCmd_28 98, _02A4
    FrontierScrCmd_29
    PlaySoundEffect SEQ_SE_DP_DENDOU
    FrontierScrCmd_43 0, 11
    FrontierScrCmd_43 0, 12
    WaitSoundEffect SEQ_SE_DP_DENDOU
    FrontierScrCmd_28 0, _01C4
    FrontierScrCmd_28 98, _02B0
    FrontierScrCmd_29
    FrontierScrCmd_46 0xC350
    FrontierScrCmd_43 0, 20
    WaitTime 30, 0x8008
    FadeScreenOut COLOR_WHITE
    FrontierScrCmd_91 31, 0, 0, 0x8008
    FrontierScrCmd_42 0
    FadeScreenIn COLOR_WHITE
    FrontierScrCmd_28 98, _022C
    FrontierScrCmd_29
    Return

_1333:
    Call _13C3
    BufferNumber 0, 0x8008
    FrontierScrCmd_41 0, 2, 1
    Call _1173
    FrontierScrCmd_44
    FrontierScrCmd_42 0
    FrontierScrCmd_3E 0x4051, 0x8008
    CallIfEq 0x8008, 0, _1373
    Message BattleHallScene_Text_BeatArgenta
    CloseMessage
    GoTo _09B7
    End

_1373:
    FrontierScrCmd_3D 0x4051, 1
    Return

_137B:
    Call _13C3
    BufferNumber 0, 0x8008
    FrontierScrCmd_41 0, 2, 1
    Call _1173
    FrontierScrCmd_44
    FrontierScrCmd_42 0
    FrontierScrCmd_3E 0x4051, 0x8008
    CallIfEq 0x8008, 2, _13BB
    Message BattleHallScene_Text_BeatArgentaGold
    CloseMessage
    GoTo _09B7
    End

_13BB:
    FrontierScrCmd_3D 0x4051, 3
    Return

_13C3:
    FrontierScrCmd_91 4, 0, 0, 0x8008
    GoToIfGe 0x8008, 9999, _13DF
    AddVar 0x8008, 1
    Return

_13DF:
    Return

_13E1:
    WaitTime 1, 0x8008
    FrontierScrCmd_91 29, 0, 0, 0x8008
    WaitTime 1, 0x8008
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 185
    ClearReceivedTempDataAllPlayers
    Return

_13FE:
    WaitTime 1, 0x8008
    FrontierScrCmd_91 29, 0, 0, 0x8008
    WaitTime 1, 0x8008
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 186
    ClearReceivedTempDataAllPlayers
    Return

_141B:
    WaitTime 1, 0x8008
    FrontierScrCmd_91 29, 0, 0, 0x8008
    WaitTime 1, 0x8008
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 187
    ClearReceivedTempDataAllPlayers
    Return

    .balign 4, 0
