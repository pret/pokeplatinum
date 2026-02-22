# include "macros/frscrcmd.inc"
# include "res/text/bank/battle_castle_scene.h"

    .data

    .long _03C2 - 4
    .short 0xFD13

    .balign 4, 0
_0008:
    .short 0xEEEE
    .byte 0x00
    .short 0x00D9
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0010:
    .short 0xEEEE
    .byte 0x00
    .short 0xEEEF
    .byte 0x00
    .short 0x00D9
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_001C:
    .short 0x800F
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0024:
    .short 0x0000
    .short 0xEEEE
    .byte 0x02
    .short 0x0110
    .short 0x0070
    .byte 0x00
    .byte 0x00
    .short 0x0003
    .short 0x00D9
    .byte 0x03
    .short 0x00D0
    .short 0x0070
    .byte 0x01
    .byte 0x01
    .short 0x0004
    .short 0x8007
    .byte 0x02
    .short 0x0110
    .short 0x0070
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0048:
    .short 0x0000
    .short 0xEEEE
    .byte 0x00
    .short 0x0110
    .short 0x0070
    .byte 0x00
    .byte 0x00
    .short 0x0001
    .short 0xEEEF
    .byte 0x02
    .short 0x0110
    .short 0x0070
    .byte 0x01
    .byte 0x00
    .byte 0x00
    .short 0x0002
    .short 0xEEEF
    .byte 0x02
    .short 0x0110
    .short 0x0080
    .byte 0x01
    .byte 0x00
    .byte 0x01
    .short 0x0003
    .short 0x00D9
    .byte 0x03
    .short 0x00D0
    .short 0x0070
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0078:
    .short 0x0007
    .short 0x800F
    .byte 0x01
    .short 0x0110
    .short 0x0060
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0088:
    .short 0x0000
    .short 0xEEEE
    .byte 0x02
    .short 0x00E0
    .short 0x0070
    .byte 0x00
    .byte 0x00
    .short 0x0003
    .short 0x00D9
    .byte 0x03
    .short 0x00D0
    .short 0x0070
    .byte 0x01
    .byte 0x01
    .short 0x0004
    .short 0x8007
    .byte 0x02
    .short 0x00E0
    .short 0x0070
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_00AC:
    .short 0x0000
    .short 0xEEEE
    .byte 0x02
    .short 0x00E0
    .short 0x0070
    .byte 0x00
    .byte 0x00
    .short 0x0001
    .short 0xEEEF
    .byte 0x02
    .short 0x00E0
    .short 0x0070
    .byte 0x01
    .byte 0x00
    .byte 0x00
    .short 0x0002
    .short 0xEEEF
    .byte 0x02
    .short 0x00E0
    .short 0x0080
    .byte 0x01
    .byte 0x00
    .byte 0x01
    .short 0x0003
    .short 0x00D9
    .byte 0x03
    .short 0x00D0
    .short 0x0070
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_00DC:
    .short 0xEEEE
    .byte 0x00
    .short 0x8007
    .byte 0x01
    .short 0x00DB
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_00E8:
    .short 0xEEEE
    .byte 0x00
    .short 0xEEEF
    .byte 0x00
    .short 0x8007
    .byte 0x01
    .short 0x00DB
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_00F8:
    .short 0x00D9
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0100:
    .short 0x0000
    .short 0xEEEE
    .byte 0x00
    .short 0x0078
    .short 0x0090
    .byte 0x00
    .byte 0x00
    .short 0x0004
    .short 0x8007
    .byte 0x00
    .short 0x0080
    .short 0x00E0
    .byte 0x01
    .byte 0x01
    .short 0x0005
    .short 0x00DB
    .byte 0x01
    .short 0x0080
    .short 0x0020
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0124:
    .short 0x0000
    .short 0xEEEE
    .byte 0x00
    .short 0x0078
    .short 0x0090
    .byte 0x00
    .byte 0x00
    .short 0x0001
    .short 0xEEEF
    .byte 0x00
    .short 0x0080
    .short 0x00E0
    .byte 0x01
    .byte 0x00
    .byte 0x00
    .short 0x0002
    .short 0xEEEF
    .byte 0x00
    .short 0x0080
    .short 0x00E0
    .byte 0x01
    .byte 0x00
    .byte 0x01
    .short 0x0005
    .short 0x00DB
    .byte 0x01
    .short 0x0080
    .short 0x0020
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0154:
    .short 0x800B
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_015C:
    .short 0x800C
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0164:
    .short 0x0062
    .short 0x800B
    .byte 0x01
    .short 0x0080
    .short 0x0060
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0174:
    .short 0x0062
    .short 0x800B
    .byte 0x01
    .short 0x0080
    .short 0x0060
    .byte 0x01
    .byte 0x01
    .short 0x0063
    .short 0x800C
    .byte 0x01
    .short 0x0080
    .short 0x0060
    .byte 0x00
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_018C:
    .short 0x0006
    .short 0x00D9
    .byte 0x01
    .short 0x0080
    .short 0x00D0
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_019C:
    .short 0xEEEE
    .byte 0x00
    .short 0x8007
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_01A4:
    .short 0xEEEE
    .byte 0x00
    .short 0xEEEF
    .byte 0x00
    .short 0x8007
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_01B0:
    .short 0x0000
    .short 0xEEEE
    .byte 0x00
    .short 0x0078
    .short 0x0070
    .byte 0x00
    .byte 0x00
    .short 0x0004
    .short 0x8007
    .byte 0x00
    .short 0x0030
    .short 0x00C0
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_01C8:
    .short 0x0000
    .short 0xEEEE
    .byte 0x00
    .short 0x0078
    .short 0x0070
    .byte 0x00
    .byte 0x00
    .short 0x0001
    .short 0xEEEF
    .byte 0x00
    .short 0x0030
    .short 0x00C0
    .byte 0x01
    .byte 0x00
    .byte 0x00
    .short 0x0002
    .short 0xEEEF
    .byte 0x00
    .short 0x0040
    .short 0x00C0
    .byte 0x01
    .byte 0x00
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_01F0:
    .short 0x0006
    .short 0x0003
    .short 0xFD13

    .balign 4, 0
_01F8:
    .short 0x0006
    .short 0x0003
    .short 0xFD13

    .balign 4, 0
_0200:
    .short 0x0023
    .short 0x0001
    .short 0x0012
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0005
    .short 0x0001
    .short 0x0007
    .short 0x0001
    .short 0x0013
    .short 0x0001
    .short 0x0028
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0228:
    .short 0x0023
    .short 0x0002
    .short 0x0004
    .short 0x0003
    .short 0x0028
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0238:
    .short 0x0023
    .short 0x0002
    .short 0x0004
    .short 0x0004
    .short 0x0028
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0248:
    .short 0x0023
    .short 0x0002
    .short 0x0006
    .short 0x0007
    .short 0x0004
    .short 0x0003
    .short 0x0028
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_025C:
    .short 0x0023
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0006
    .short 0x0008
    .short 0x0004
    .short 0x0003
    .short 0x0028
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0274:
    .short 0x0004
    .short 0x0001
    .short 0x0011
    .short 0x0001
    .short 0x0028
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0284:
    .short 0x0012
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_028C:
    .short 0x0004
    .short 0x0002
    .short 0xFD13

    .balign 4, 0
_0294:
    .short 0x0004
    .short 0x0003
    .short 0x0006
    .short 0x0002
    .short 0x0004
    .short 0x0002
    .short 0x0013
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_02A8:
    .short 0x0004
    .short 0x0004
    .short 0x0006
    .short 0x0002
    .short 0x0004
    .short 0x0002
    .short 0x0013
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_02BC:
    .short 0x0023
    .short 0x0001
    .short 0x0027
    .short 0x0001
    .short 0x0004
    .short 0x0004
    .short 0x0006
    .short 0x0002
    .short 0x0004
    .short 0x0001
    .short 0x0013
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_02D8:
    .short 0x0004
    .short 0x0004
    .short 0x0007
    .short 0x000B
    .short 0x0004
    .short 0x0004
    .short 0x0012
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_02EC:
    .short 0x0004
    .short 0x0005
    .short 0x0007
    .short 0x000B
    .short 0x0004
    .short 0x0003
    .short 0x0012
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0300:
    .short 0x0005
    .short 0x0001
    .short 0x0007
    .short 0x0002
    .short 0x0005
    .short 0x0002
    .short 0x0012
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0314:
    .short 0x0005
    .short 0x0001
    .short 0x0007
    .short 0x0002
    .short 0x0005
    .short 0x0002
    .short 0x0012
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0328:
    .short 0x0023
    .short 0x0001
    .short 0x0027
    .short 0x0001
    .short 0x0005
    .short 0x0001
    .short 0x0007
    .short 0x0002
    .short 0x0005
    .short 0x0001
    .short 0x0012
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0344:
    .short 0x0005
    .short 0x0001
    .short 0x0007
    .short 0x0002
    .short 0x0005
    .short 0x0002
    .short 0x0012
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0358:
    .short 0x0027
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0360:
    .short 0x0004
    .short 0x0002
    .short 0x0006
    .short 0x0002
    .short 0x0004
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0370:
    .short 0x0004
    .short 0x0002
    .short 0x0006
    .short 0x0002
    .short 0x0004
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0380:
    .short 0x0004
    .short 0x0001
    .short 0x0006
    .short 0x0002
    .short 0x0004
    .short 0x0001
    .short 0x0028
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0394:
    .short 0x0005
    .short 0x0002
    .short 0x0006
    .short 0x0002
    .short 0x0005
    .short 0x0005
    .short 0xFD13

    .balign 4, 0
_03A4:
    .short 0x0004
    .short 0x0004
    .short 0x0006
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_03B0:
    .short 0x0007
    .short 0x0001
    .short 0x0005
    .short 0x0006
    .short 0xFD13

    .balign 4, 0
_03BC:
    .short 0x0011
    .short 0x0001
    .short 0xFD13

_03C2:
    FrontierScrCmd_3E 0x40BD, 0x8001
    FrontierScrCmd_3E 0x4003, 0x8003
    FrontierScrCmd_3E 0x4002, 0x8004
    FrontierScrCmd_3E 0x4005, 0x8005
    FrontierScrCmd_3E 0x4006, 0x8006
    GetPlayerObjEventGfx 0x8007
    SetVar 0x800E, 0
    GoToIfEq 0x8001, 2, _041E
    GoToIfEq 0x8001, 3, _041E
    SetVar 0x800F, 231
    FrontierScrCmd_22 _0008
    FrontierScrCmd_24 _0024
    GoTo _043C
    End

_041E:
    IncrementTrainerScore TRAINER_SCORE_EVENT_UNK_43
    SetVar 0x800F, 232
    FrontierScrCmd_22 _0010
    FrontierScrCmd_24 _0048
    GoTo _043C
    End

_043C:
    FrontierScrCmd_22 _001C
    FrontierScrCmd_24 _0078
    FadeScreenIn
    FrontierScrCmd_6C
    FrontierScrCmd_97 0x8003, 0x8001, 0x8004, 0x8005, 0x8006, 0x8008
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0480
    GoTo _04F0
    End

_0480:
    Call _09A8
    Call _04C5
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 211
    ClearReceivedTempDataAllPlayers
    GoTo _04F0
    End

_049C:
    SetVar 0x8002, 0
    FrontierScrCmd_A2 0x8002, 0, 0x8008
    GoToIfEq 0x8008, 0, _049C
    FrontierScrCmd_A3 0x8002
    ClearReceivedTempDataAllPlayers
    GoTo _04F0
    End

_04C5:
    GoTo _04CD
    End

_04CD:
    SetVar 0x8002, 0
    FrontierScrCmd_A2 0x8002, 0, 0x8008
    GoToIfEq 0x8008, 0, _04CD
    FrontierScrCmd_A3 0x8002
    ClearReceivedTempDataAllPlayers
    Return

_04F0:
    FrontierScrCmd_98 0x8003
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0510
    GoTo _058A
    End

_0510:
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 212
    ClearReceivedTempDataAllPlayers
    GoTo _0520
    End

_0520:
    SetVar 0x8002, 1
    FrontierScrCmd_A2 0x8002, 0, 0x8008
    GoToIfEq 0x8008, 0, _0520
    FrontierScrCmd_A3 0x8002
    ClearReceivedTempDataAllPlayers
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 125
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_C9 1
    GoTo _0555
    End

_0555:
    SetVar 0x8002, 6
    FrontierScrCmd_A2 0x8002, 0, 0x8008
    GoToIfEq 0x8008, 0, _0555
    FrontierScrCmd_A3 0x8002
    ClearReceivedTempDataAllPlayers
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 210
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_C9 0
    GoTo _058A
    End

_058A:
    SetVar 0x8003, 0
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _05C6
    FrontierScrCmd_28 0, _01F0
    FrontierScrCmd_28 4, _01F0
    FrontierScrCmd_28 7, _0200
    FrontierScrCmd_29
    GoTo _05F0
    End

_05C6:
    FrontierScrCmd_28 0, _01F0
    FrontierScrCmd_28 1, _01F0
    FrontierScrCmd_28 2, _01F8
    FrontierScrCmd_28 7, _0200
    FrontierScrCmd_29
    GoTo _05F0
    End

_05F0:
    FrontierScrCmd_A0 23, 0, 0, 0x8008
    GoToIfEq 0x8008, 0, _0612
    SetVar 0x8003, 1
    GoTo _1349
    End

_0612:
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    CallIfEq 0x8008, 1, _0630
    FrontierScrCmd_9E
    GoTo _0679
    End

_0630:
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 213
    ClearReceivedTempDataAllPlayers
    GoTo _0640
    End

_0640:
    SetVar 0x8002, 3
    FrontierScrCmd_A2 0x8002, 0, 0x8008
    GoToIfEq 0x8008, 0, _0640
    FrontierScrCmd_A3 0x8002
    ClearReceivedTempDataAllPlayers
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 214
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_A0 41, 0, 0, 0x8008
    FrontierScrCmd_A0 42, 0, 0, 0x8008
    Return

_0679:
    FrontierScrCmd_A0 39, 0, 0, 0x8008
    GoToIfEq 0x8008, 0, _0695
    GoTo _06A1
    End

_0695:
    Message BattleCastleScene_Text_TakingItemsFirstTime
    GoTo _06B0
    End

_06A1:
    BufferPlayerName 0
    Message BattleCastleScene_Text_TakingItems
    GoTo _06B0
    End

_06B0:
    FrontierScrCmd_A0 19, 0, 0, 0x8008
    CallIfEq 0x8008, 3, _06E4
    Message BattleCastleScene_Text_Choose
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _06EA
    GoTo _0706
    End

_06E4:
    Message BattleCastleScene_Text_PassInstruction
    Return

_06EA:
    MessageNoSkip BattleCastleScene_Text_PleaseWait
    GoTo _06F6
    End

_06F6:
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 120
    ClearReceivedTempDataAllPlayers
    GoTo _0706
    End

_0706:
    MessageInstant BattleCastleScene_Text_HealOrRentItem
    FrontierScrCmd_50
    GoTo _0714
    End

_0714:
    FrontierScrCmd_A0 19, 0, 0, 0x8006
    CallIfLt 0x8006, 3, _07A2
    CallIfGe 0x8006, 3, _07AC
    SetMenuXOriginSide 1
    AddListMenuEntry BattleCastleScene_Text_SelfOption, BattleCastleScene_Text_HealOrRentItem, 1
    AddListMenuEntry BattleCastleScene_Text_OpponentOption, BattleCastleScene_Text_CheckOpponentsMons, 2
    AddListMenuEntry BattleCastleScene_Text_BattleOption, BattleCastleScene_Text_BattleTrainer, 4
    FrontierScrCmd_A0 19, 0, 0, 0x8006
    CallIfGe 0x8006, 3, _07D7
    ShowListMenu
    GoToIfEq 0x8008, 1, _0804
    GoToIfEq 0x8008, 2, _08B6
    GoToIfEq 0x8008, 4, _0964
    GoToIfEq 0x8008, 5, _0A1C
    GoTo _1974
    End

_07A2:
    InitLocalTextListMenu 31, 11, 0, 0, 0x8008
    Return

_07AC:
    FrontierScrCmd_A0 40, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _07A2
    GoToIfEq 0x8008, 2, _07A2
    InitLocalTextListMenu 31, 9, 0, 0, 0x8008
    Return

_07D7:
    FrontierScrCmd_A0 40, 0, 0, 0x800D
    GoToIfEq 0x800D, 1, _0802
    GoToIfEq 0x800D, 2, _0802
    AddListMenuEntry BattleCastleScene_Text_PassOption, BattleCastleScene_Text_PassOnBattle, 5
    Return

_0802:
    Return

_0804:
    FrontierScrCmd_A0 32, 1, 0, 0x8008
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0827
    GoTo _0833
    End

_0827:
    MessageNoSkip BattleCastleScene_Text_PleaseWait
    GoTo _1974
    End

_0833:
    FrontierScrCmd_A0 34, 0, 0, 0x8008
    FrontierScrCmd_A0 31, 0, 0, 0x8008
    FadeScreenOut
    CloseMessage
    FrontierScrCmd_51
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    CallIfEq 0x8008, 1, _08AC
    FrontierScrCmd_9A
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    CallIfEq 0x8008, 1, _09C5
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    CallIfEq 0x8008, 1, _04C5
    FadeScreenIn
    GoTo _0706
    End

_08A3:
    BufferPartnerName 0
    Message BattleCastleScene_Text_PassInstruction
    Return

_08AC:
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 240
    ClearReceivedTempDataAllPlayers
    Return

_08B6:
    FrontierScrCmd_A0 32, 2, 0, 0x8008
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _08D9
    GoTo _08E5
    End

_08D9:
    MessageNoSkip BattleCastleScene_Text_PleaseWait
    GoTo _1974
    End

_08E5:
    FrontierScrCmd_A0 34, 0, 0, 0x8008
    FrontierScrCmd_A0 31, 0, 0, 0x8008
    FadeScreenOut
    CloseMessage
    FrontierScrCmd_51
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    CallIfEq 0x8008, 1, _095A
    FrontierScrCmd_9D
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    CallIfEq 0x8008, 1, _09E2
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    CallIfEq 0x8008, 1, _04C5
    FadeScreenIn
    GoTo _0706
    End

_0955:
    BufferPartnerName 0
    Return

_095A:
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 241
    ClearReceivedTempDataAllPlayers
    Return

_0964:
    FrontierScrCmd_A0 32, 4, 0, 0x8008
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _099C
    GoTo _0987
    End

_0987:
    SetVar 0x8005, 0
    FrontierScrCmd_A0 31, 0, 0, 0x8008
    GoTo _0C47
    End

_099C:
    MessageNoSkip BattleCastleScene_Text_PleaseWait
    GoTo _1974
    End

_09A8:
    WaitTime 1, 0x8008
    FrontierScrCmd_A0 29, 0, 0, 0x8008
    WaitTime 1, 0x8008
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 190
    ClearReceivedTempDataAllPlayers
    Return

_09C5:
    WaitTime 1, 0x8008
    FrontierScrCmd_A0 29, 0, 0, 0x8008
    WaitTime 1, 0x8008
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 191
    ClearReceivedTempDataAllPlayers
    Return

_09E2:
    WaitTime 1, 0x8008
    FrontierScrCmd_A0 29, 0, 0, 0x8008
    WaitTime 1, 0x8008
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 192
    ClearReceivedTempDataAllPlayers
    Return

_09FF:
    WaitTime 1, 0x8008
    FrontierScrCmd_A0 29, 0, 0, 0x8008
    WaitTime 1, 0x8008
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 193
    ClearReceivedTempDataAllPlayers
    Return

_0A1C:
    BufferNumber 0, 50
    Message BattleCastleScene_Text_ConfirmPurchase
    ShowYesNoMenu 0x8008, MENU_YES
    GoToIfEq 0x8008, 1, _0714
    FrontierScrCmd_A6 0x8001, 0x8008
    GoToIfLt 0x8008, 50, _0A6D
    FrontierScrCmd_A0 32, 5, 0, 0x8008
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _1974
    GoTo _0A79
    End

_0A6D:
    Message BattleCastleScene_Text_NotEnoughCP
    GoTo _0714
    End

_0A79:
    SetVar 0x8005, 1
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0A9B
    GoTo _0AB8
    End

_0A9B:
    FrontierScrCmd_A0 34, 0, 0, 0x8008
    FrontierScrCmd_A0 33, 0, 0, 0x8008
    FrontierScrCmd_A0 31, 0, 0, 0x8008
    GoTo _0C47
    End

_0AB8:
    FrontierScrCmd_A0 17, 0, 0, 0x8008
    FrontierScrCmd_A7 0x8008, 50
    GoTo _0C47
    End

_0ACD:
    CloseMessage
    FrontierScrCmd_51
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0B0C
    FrontierScrCmd_28 0, _0248
    FrontierScrCmd_28 3, _0274
    FrontierScrCmd_28 4, _0248
    FrontierScrCmd_29
    GoTo _0B36
    End

_0B07:
    BufferPartnerName 0
    Return

_0B0C:
    FrontierScrCmd_28 0, _0248
    FrontierScrCmd_28 3, _0274
    FrontierScrCmd_28 1, _0248
    FrontierScrCmd_28 2, _025C
    FrontierScrCmd_29
    GoTo _0B36
    End

_0B36:
    PlaySoundEffect SEQ_SE_DP_KAIDAN2
    WaitSoundEffect SEQ_SE_DP_KAIDAN2
    FadeScreenOut
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0BBA
    FrontierScrCmd_25 0
    FrontierScrCmd_25 3
    FrontierScrCmd_25 4
    FrontierScrCmd_23 217
    FrontierScrCmd_03 13
    GetPlayerObjEventGfx 0x8007
    FrontierScrCmd_22 _019C
    FrontierScrCmd_24 _01B0
    FadeScreenIn
    FrontierScrCmd_28 4, _02D8
    FrontierScrCmd_29
    PlaySoundEffect SEQ_SE_DP_KAIDAN2
    WaitSoundEffect SEQ_SE_DP_KAIDAN2
    FadeScreenOut
    Call _19E8
    GoTo _0C1E
    End

_0BBA:
    FrontierScrCmd_25 1
    FrontierScrCmd_25 2
    FrontierScrCmd_25 3
    FrontierScrCmd_23 217
    FrontierScrCmd_03 13
    GetPlayerObjEventGfx 0x8007
    FrontierScrCmd_22 _01A4
    FrontierScrCmd_24 _01C8
    FadeScreenIn
    FrontierScrCmd_28 1, _02D8
    FrontierScrCmd_28 2, _02EC
    FrontierScrCmd_29
    PlaySoundEffect SEQ_SE_DP_KAIDAN2
    WaitSoundEffect SEQ_SE_DP_KAIDAN2
    FadeScreenOut
    Call _19E8
    GoTo _0C1E
    End

_0C1E:
    Call _10CA
    FrontierScrCmd_A0 28, 0, 0, 0x8008
    FrontierScrCmd_A0 23, 0, 0, 0x8008
    GoToIfNe 0x8008, 7, _1349
    GoTo _12D3
    End

_0C47:
    FrontierScrCmd_51
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0C7F
    Message BattleCastleScene_Text_Proceed
    WaitABPress
    CloseMessage
    FrontierScrCmd_28 0, _0228
    FrontierScrCmd_28 4, _0228
    FrontierScrCmd_29
    GoTo _0CAD
    End

_0C7F:
    MessageNoSkip BattleCastleScene_Text_Proceed
    WaitTime 30, 0x8008
    CloseMessage
    FrontierScrCmd_28 0, _0228
    FrontierScrCmd_28 1, _0228
    FrontierScrCmd_28 2, _0238
    FrontierScrCmd_29
    GoTo _0CAD
    End

_0CAD:
    PlaySoundEffect SEQ_SE_DP_KAIDAN2
    WaitSoundEffect SEQ_SE_DP_KAIDAN2
    FadeScreenOut
    CallIfEq 0x800E, 0, _0E64
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0DA3
    FrontierScrCmd_25 0
    FrontierScrCmd_25 3
    FrontierScrCmd_25 4
    FrontierScrCmd_23 217
    FrontierScrCmd_03 12
    Call _0E74
    FrontierScrCmd_22 _00DC
    FrontierScrCmd_24 _0100
    FadeScreenIn
    FrontierScrCmd_28 0, _028C
    FrontierScrCmd_28 4, _0294
    FrontierScrCmd_29
    FrontierScrCmd_43 0, 0
    GoToIfEq 0x8005, 1, _0E89
    FrontierScrCmd_A0 40, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _1A9B
    GoToIfEq 0x8008, 2, _1ABA
    Call _1B75
    BufferNumber 0, 0x8008
    Call _0ED1
    FrontierScrCmd_28 98, _0300
    FrontierScrCmd_29
    WaitTime 15, 0x8008
    FrontierScrCmd_28 98, _0284
    FrontierScrCmd_29
    FrontierScrCmd_A0 37, 0, 0, 0x8008
    FrontierScrCmd_A9 0
    WaitABPress
    CloseMessage
    GoTo _0D9B
    End

_0D9B:
    GoTo _0F2E
    End

_0DA3:
    FrontierScrCmd_25 1
    FrontierScrCmd_25 2
    FrontierScrCmd_25 3
    FrontierScrCmd_23 217
    FrontierScrCmd_03 12
    Call _0E74
    FrontierScrCmd_22 _00E8
    FrontierScrCmd_24 _0124
    FadeScreenIn
    FrontierScrCmd_28 0, _028C
    FrontierScrCmd_28 1, _02A8
    FrontierScrCmd_28 2, _02BC
    FrontierScrCmd_29
    FrontierScrCmd_43 0, 0
    GoToIfEq 0x8005, 1, _0E89
    Call _0EEC
    FrontierScrCmd_28 98, _0314
    FrontierScrCmd_28 99, _0328
    FrontierScrCmd_29
    WaitTime 15, 0x8008
    FrontierScrCmd_28 98, _0284
    FrontierScrCmd_29
    FrontierScrCmd_A0 37, 0, 0, 0x8008
    FrontierScrCmd_A9 0
    WaitTime 30, 0x8008
    CloseMessage
    FrontierScrCmd_28 99, _0284
    FrontierScrCmd_29
    FrontierScrCmd_A0 37, 0, 0, 0x8008
    FrontierScrCmd_A9 1
    WaitTime 30, 0x8008
    CloseMessage
    MessageNoSkip BattleCastleScene_Text_PleaseWait
    GoTo _0F2E
    End

_0E64:
    FrontierScrCmd_25 7
    FrontierScrCmd_23 0x800F
    SetVar 0x800E, 1
    Return

_0E74:
    FrontierScrCmd_41 0, 6, 1
    FrontierScrCmd_A0 36, 0, 0, 0x8008
    GetPlayerObjEventGfx 0x8007
    Return

_0E89:
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0EAD
    Message BattleCastleScene_Text_UsingPass
    WaitABPress
    CloseMessage
    GoTo _1084
    End

_0EAD:
    MessageNoSkip BattleCastleScene_Text_UsingPass
    WaitTime 30, 0x8008
    MessageNoSkip BattleCastleScene_Text_PleaseWait
    Call _10CA
    Call _122A
    CloseMessage
    GoTo _1098
    End

_0ED1:
    FrontierScrCmd_A0 20, 0, 0, 0x8008
    SetVar 0x800B, 0x8008
    FrontierScrCmd_22 _0154
    FrontierScrCmd_24 _0164
    Return

_0EEC:
    FrontierScrCmd_A0 20, 0, 0, 0x8008
    SetVar 0x800B, 0x8008
    FrontierScrCmd_22 _0154
    FrontierScrCmd_A0 20, 1, 0, 0x8008
    SetVar 0x800C, 0x8008
    FrontierScrCmd_22 _015C
    FrontierScrCmd_24 _0174
    Return

_0F1A:
    SetVar 0x800B, 217
    FrontierScrCmd_22 _0154
    FrontierScrCmd_24 _0164
    Return

_0F2E:
    FrontierScrCmd_42 0
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0F83
    FrontierScrCmd_A0 40, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0F73
    GoToIfEq 0x8008, 2, _0F73
    FrontierScrCmd_3F 4
    GoTo _0F99
    End

_0F73:
    IncrementRecordValue RECORD_UNK_059
    FrontierScrCmd_47 4
    GoTo _0F99
    End

_0F83:
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 121
    ClearReceivedTempDataAllPlayers
    CloseMessage
    FrontierScrCmd_3F 4
    GoTo _0F99
    End

_0F99:
    Call _1B75
    BufferNumber 0, 0x8008
    FrontierScrCmd_9C
    FrontierScrCmd_9B
    FrontierScrCmd_41 0, 6, 1
    FrontierScrCmd_43 0, 0
    FrontierScrCmd_A0 36, 0, 0, 0x8008
    FadeScreenIn
    FrontierScrCmd_A1 0x8008
    GoToIfEq 0x8008, 0, _180E
    IncrementRecordValue RECORD_UNK_061
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _1040
    FrontierScrCmd_A0 40, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _1AF8
    GoToIfEq 0x8008, 2, _1B2F
    Call _1B75
    BufferNumber 0, 0x8008
    FrontierScrCmd_28 98, _0360
    FrontierScrCmd_29
    GoTo _1030
    End

_1030:
    FrontierScrCmd_25 98
    FrontierScrCmd_23 0x800B
    GoTo _1070
    End

_1040:
    Call _09FF
    FrontierScrCmd_28 98, _0370
    FrontierScrCmd_28 99, _0380
    FrontierScrCmd_29
    FrontierScrCmd_25 98
    FrontierScrCmd_25 99
    FrontierScrCmd_23 0x800B
    FrontierScrCmd_23 0x800C
    GoTo _1070
    End

_1070:
    Call _10CA
    Call _10DA
    GoTo _1098
    End

_1084:
    Call _10CA
    Call _122A
    GoTo _1098
    End

_1098:
    PlaySoundEffect SEQ_SE_DP_KAIDAN2
    WaitSoundEffect SEQ_SE_DP_KAIDAN2
    FadeScreenOut
    FrontierScrCmd_25 5
    FrontierScrCmd_23 219
    Call _19E8
    GoTo _10C2
    End

_10C2:
    GoTo _1247
    End

_10CA:
    FrontierScrCmd_A0 14, 1, 0, 0x8008
    FrontierScrCmd_A0 5, 0, 0, 0x8008
    Return

_10DA:
    BufferPlayerName 1
    FrontierScrCmd_A0 27, 0, 0, 0x800D
    BufferNumber 0, 0x800D
    FrontierScrCmd_28 5, _03BC
    FrontierScrCmd_29
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _1BA1
    GoTo _1B93
    End

_110F:
    CloseMessage
    FrontierScrCmd_A0 28, 0, 0, 0x8008
    FrontierScrCmd_22 _00F8
    FrontierScrCmd_24 _018C
    FrontierScrCmd_28 6, _03A4
    FrontierScrCmd_29
    BufferPlayerName 1
    GoToIfGe 0x800D, 40, _1160
    GoToIfGe 0x800D, 25, _117C
    GoToIfGe 0x800D, 15, _1198
    GoTo _11B4
    End

_1160:
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _1BBF
    GoTo _1BB3
    End

_117C:
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _1BDD
    GoTo _1BD1
    End

_1198:
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _1BFB
    GoTo _1BEF
    End

_11B4:
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _1C19
    GoTo _1C0D
    End

_11D0:
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _1C37
    GoTo _1C2B
    End

_11EC:
    PlayFanfare SEQ_PL_FRO
    WaitFanfare
    CloseMessage
    FrontierScrCmd_28 6, _03B0
    FrontierScrCmd_29
    FrontierScrCmd_25 6
    FrontierScrCmd_23 217
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _121C
    Return

_121C:
    MessageNoSkip BattleCastleScene_Text_PleaseWait
    Call _04C5
    CloseMessage
    Return

_122A:
    FrontierScrCmd_A0 28, 0, 0, 0x8008
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    CallIfEq 0x8008, 1, _04C5
    Return

_1247:
    FrontierScrCmd_A0 23, 0, 0, 0x8008
    GoToIfNe 0x8008, 7, _1314
    GoTo _1263
    End

_1263:
    GoToIfEq 0x8005, 1, _12D3
    FrontierScrCmd_71 0x8008
    GoToIfEq 0x8008, 0, _12B9
    FrontierScrCmd_70 0x8008
    CallIfEq 0x8008, 0, _1714
    CallIfEq 0x8008, 1, _171A
    ShowYesNoMenu 0x8008, MENU_NO
    GoToIfEq 0x8008, 1, _12D3
    GoTo _12C5
    End

_12B9:
    MessageNoSkip BattleCastleScene_Text_PleaseWait
    GoTo _12D3
    End

_12C5:
    Call _1694
    GoTo _12D3
    End

_12D3:
    FrontierScrCmd_A0 22, 0, 0, 0x8008
    FrontierScrCmd_3D 0x40BC, 1
    BufferPlayerName 0
    Message BattleCastleScene_Text_BPEarned
    BufferPlayerName 0
    FrontierScrCmd_A0 38, 0, 0, 0x8008
    BufferNumber 1, 0x8008
    GiveBattlePoints 0x8008
    Message BattleCastleScene_Text_ReceiveBP
    PlayFanfare SEQ_PL_POINTGET3
    WaitFanfare
    GoTo _130C
    End

_130C:
    GoTo _18B0
    End

_1314:
    GoToIfEq 0x8005, 1, _1349
    FrontierScrCmd_A0 25, 0, 0, 0x8008
    GoToIfEq 0x8008, 0, _1349
    Message BattleCastleScene_Text_RevivePokemon
    PlaySoundEffect SEQ_SE_DP_UG_020
    WaitSoundEffect SEQ_SE_DP_UG_020
    GoTo _1349
    End

_1349:
    FrontierScrCmd_A0 40, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _1A60
    GoToIfEq 0x8008, 2, _1A60
    GoTo _1372
    End

_1372:
    Call _1B75
    BufferNumber 0, 0x8008
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _13AF
    FrontierScrCmd_A0 23, 0, 0, 0x8008
    AddVar 0x8008, 1
    BufferNumber 0, 0x8008
    Message BattleCastleScene_Text_AreYouReady
    GoTo _13E4
    End

_13AF:
    MessageNoSkip BattleCastleScene_Text_PleaseWait
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 127
    ClearReceivedTempDataAllPlayers
    Call _1B75
    BufferNumber 0, 0x8008
    FrontierScrCmd_A0 23, 0, 0, 0x8008
    AddVar 0x8008, 1
    BufferNumber 0, 0x8008
    MessageInstant BattleCastleScene_Text_AreYouReady
    GoTo _13E4
    End

_13E4:
    GoTo _13EC
    End

_13EC:
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _1422
    GoToIfEq 0x8005, 1, _1471
    GoToIfEq 0x8003, 0, _147F
    GoTo _1471
    End

_1422:
    FrontierScrCmd_71 0x8008
    GoToIfEq 0x8008, 0, _1455
    GoToIfEq 0x8005, 1, _1455
    GoToIfEq 0x8003, 0, _1463
    GoTo _1455
    End

_1455:
    SetVar 0x8008, 1
    GoTo _148D
    End

_1463:
    SetVar 0x8008, 2
    GoTo _148D
    End

_1471:
    SetVar 0x8008, 3
    GoTo _148D
    End

_147F:
    SetVar 0x8008, 4
    GoTo _148D
    End

_148D:
    GoToIfEq 0x8008, 1, _14C3
    GoToIfEq 0x8008, 2, _14DE
    GoToIfEq 0x8008, 3, _1501
    GoToIfEq 0x8008, 4, _1524
    End

_14C3:
    InitLocalTextListMenu 31, 13, 0, 0, 0x800A
    SetMenuXOriginSide 1
    AddListMenuEntry BattleCastleScene_Text_ContinueOption, 255, 0
    GoTo _154F
    End

_14DE:
    InitLocalTextListMenu 31, 11, 0, 0, 0x800A
    SetMenuXOriginSide 1
    AddListMenuEntry BattleCastleScene_Text_ContinueOption, 255, 0
    AddListMenuEntry BattleCastleScene_Text_RecordOption, 255, 1
    GoTo _154F
    End

_1501:
    InitLocalTextListMenu 31, 11, 0, 0, 0x800A
    SetMenuXOriginSide 1
    AddListMenuEntry BattleCastleScene_Text_ContinueOption, 255, 0
    AddListMenuEntry BattleCastleScene_Text_RestOption, 255, 2
    GoTo _154F
    End

_1524:
    InitLocalTextListMenu 31, 9, 0, 0, 0x800A
    SetMenuXOriginSide 1
    AddListMenuEntry BattleCastleScene_Text_ContinueOption, 255, 0
    AddListMenuEntry BattleCastleScene_Text_RecordOption, 255, 1
    AddListMenuEntry BattleCastleScene_Text_RestOption, 255, 2
    GoTo _154F
    End

_154F:
    AddListMenuEntry BattleCastleScene_Text_RetireOption, 255, 3
    ShowListMenu
    GoTo _1561
    End

_1561:
    GoToIfEq 0x800A, 0, _159D
    GoToIfEq 0x800A, 1, _1646
    GoToIfEq 0x800A, 2, _1720
    GoToIfEq 0x800A, 3, _1774
    GoTo _1774
    End

_159D:
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _15B9
    GoTo _1622
    End

_15B9:
    BufferPartnerName 0
    Message BattleCastleScene_Text_PartnerIsChoosing
    GoTo _15C8
    End

_15C8:
    SetVar 0x8002, 4
    FrontierScrCmd_A2 0x8002, 0, 0x8008
    GoToIfEq 0x8008, 0, _15C8
    FrontierScrCmd_A3 0x8002
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_A0 24, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _160D
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 122
    ClearReceivedTempDataAllPlayers
    GoTo _1622
    End

_160D:
    BufferPartnerName 0
    MessageNoSkip BattleCastleScene_Text_PartnerRetired
    WaitTime 30, 0x8008
    GoTo _17D9
    End

_1622:
    SetVar 0x8003, 0
    FrontierScrCmd_9F
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    CallIfEq 0x8008, 1, _0630
    GoTo _0706
    End

_1646:
    FrontierScrCmd_70 0x8008
    CallIfEq 0x8008, 0, _1714
    CallIfEq 0x8008, 1, _171A
    ShowYesNoMenu 0x8008, MENU_NO
    GoToIfEq 0x8008, 1, _168C
    GoTo _167E
    End

_167E:
    Call _1694
    GoTo _1349
    End

_168C:
    GoTo _1349
    End

_1694:
    Call _16B6
    GoTo _16BF
    End

_16A2:
    Call _16B6
    AddVar 0x8009, 1
    GoTo _16BF
    End

_16B6:
    FrontierScrCmd_A0 4, 0, 0, 0x8009
    Return

_16BF:
    GoTo _16C7
    End

_16C7:
    SetVar 0x8003, 1
    FrontierScrCmd_A0 44, 0, 0, 0x8008
    MessageInstant BattleCastleScene_Text_Saving
    FrontierScrCmd_A0 17, 0, 0, 0x8008
    ShowSavingIcon
    FrontierScrCmd_6D 4, 0x8008, 0x8009, 0x8009
    HideSavingIcon
    FrontierScrCmd_A0 44, 1, 0, 0x8008
    GoToIfEq 0x8009, 1, _1707
    Message BattleCastleScene_Text_VideoSaveFailed
    Return

_1707:
    PlaySoundEffect SEQ_SE_DP_SAVE
    BufferPlayerName 0
    Message BattleCastleScene_Text_BattleSaved
    Return

_1714:
    Message BattleCastleScene_Text_SaveAsVideo
    Return

_171A:
    Message BattleCastleScene_Text_OverwriteVideo
    Return

_1720:
    Message BattleCastleScene_Text_BreakQuestion
    ShowYesNoMenu 0x8008, MENU_YES
    GoToIfEq 0x8008, 1, _176C
    GoTo _173E
    End

_173E:
    FrontierScrCmd_3D 0x40BC, 2
    FrontierScrCmd_A0 10, 0, 0, 0x8008
    FrontierScrCmd_6F
    FrontierScrCmd_99
    Call _195E
    FadeScreenOut
    CloseMessage
    FrontierScrCmd_A0 7, 0, 0, 0x8008
    End

_176C:
    GoTo _1349
    End

_1774:
    Message BattleCastleScene_Text_RetireQuestion
    ShowYesNoMenu 0x8008, MENU_NO
    GoToIfEq 0x8008, 1, _1806
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _17AA
    Message BattleCastleScene_Text_ReturnItems
    GoTo _17F1
    End

_17AA:
    MessageNoSkip BattleCastleScene_Text_PleaseWait
    GoTo _17B6
    End

_17B6:
    SetVar 0x8002, 4
    FrontierScrCmd_A2 0x8002, 1, 0x8008
    GoToIfEq 0x8008, 0, _17B6
    GoTo _17D9
    End

_17D9:
    Message BattleCastleScene_Text_ReturnItems
    MessageNoSkip BattleCastleScene_Text_PleaseWait
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 124
    ClearReceivedTempDataAllPlayers
    GoTo _17F1
    End

_17F1:
    FrontierScrCmd_A0 21, 0, 0, 0x8008
    FrontierScrCmd_3D 0x40BC, 3
    GoTo _18E4
    End

_1806:
    GoTo _1349
    End

_180E:
    PlaySoundEffect SEQ_SE_DP_KAIDAN2
    WaitSoundEffect SEQ_SE_DP_KAIDAN2
    FadeScreenOut
    FrontierScrCmd_25 5
    FrontierScrCmd_23 219
    Call _19E8
    FrontierScrCmd_71 0x8008
    GoToIfEq 0x8008, 0, _1879
    FrontierScrCmd_70 0x8008
    CallIfEq 0x8008, 0, _1714
    CallIfEq 0x8008, 1, _171A
    ShowYesNoMenu 0x8008, MENU_NO
    GoToIfEq 0x8008, 1, _1893
    GoTo _1885
    End

_1879:
    MessageNoSkip BattleCastleScene_Text_PleaseWait
    GoTo _189B
    End

_1885:
    Call _16A2
    GoTo _189B
    End

_1893:
    GoTo _189B
    End

_189B:
    FrontierScrCmd_A0 21, 0, 0, 0x8008
    FrontierScrCmd_3D 0x40BC, 3
    GoTo _18B0
    End

_18B0:
    Message BattleCastleScene_Text_ReturnItems
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _18D0
    GoTo _18E4
    End

_18D0:
    MessageNoSkip BattleCastleScene_Text_PleaseWait
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 128
    ClearReceivedTempDataAllPlayers
    GoTo _18E4
    End

_18E4:
    Call _195E
    CloseMessage
    GoTo _18F4
    End

_18F4:
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    CallIfEq 0x8008, 1, _1948
    FadeScreenOut
    FrontierScrCmd_A0 17, 0, 0, 0x8008
    CallIfEq 0x8008, 2, _1942
    FrontierScrCmd_A0 17, 0, 0, 0x8008
    GoToIfEq 0x8008, 3, _1952
    FrontierScrCmd_6F
    FrontierScrCmd_99
    FrontierScrCmd_02

_1942:
    FrontierScrCmd_C8 4
    Return

_1948:
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 129
    ClearReceivedTempDataAllPlayers
    Return

_1952:
    FrontierScrCmd_6F
    FrontierScrCmd_99
    FrontierScrCmd_04 14, 1
    End

_195E:
    MessageInstant BattleCastleScene_Text_Saving2
    ShowSavingIcon
    FrontierScrCmd_73 0x8008
    HideSavingIcon
    PlaySoundEffect SEQ_SE_DP_SAVE
    WaitSoundEffect SEQ_SE_DP_SAVE
    Return

_1974:
    SetVar 0x8002, 2
    FrontierScrCmd_A2 0x8002, 0, 0x8008
    GoToIfEq 0x8008, 0, _1974
    FrontierScrCmd_A3 0x8002
    ClearReceivedTempDataAllPlayers
    GoTo _199D
    End

_199D:
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 126
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_A0 30, 0, 0, 0x8008
    SetVar 0x8010, 0x8008
    GoToIfEq 0x8010, 1, _0833
    GoToIfEq 0x8010, 2, _08E5
    GoToIfEq 0x8010, 4, _0987
    GoToIfEq 0x8010, 5, _0A79
    End

_19E8:
    FrontierScrCmd_42 0
    FrontierScrCmd_A0 35, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _1A30
    FrontierScrCmd_25 0
    FrontierScrCmd_25 4
    FrontierScrCmd_03 11
    GetPlayerObjEventGfx 0x8007
    SetVar 0x800F, 231
    FrontierScrCmd_22 _0008
    FrontierScrCmd_24 _0088
    FadeScreenIn
    Return

_1A30:
    FrontierScrCmd_25 1
    FrontierScrCmd_25 2
    FrontierScrCmd_03 11
    GetPlayerObjEventGfx 0x8007
    SetVar 0x800F, 232
    FrontierScrCmd_22 _0010
    FrontierScrCmd_24 _00AC
    FadeScreenIn
    Return

_1A60:
    GoToIfEq 0x8003, 1, _1372
    FrontierScrCmd_A0 43, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _1372
    Call _1B75
    BufferNumber 0, 0x8008
    BufferPlayerName 0
    Message BattleCastleScene_Text_CastleValetApproaching
    GoTo _13E4
    End

_1A9B:
    Call _1B75
    BufferNumber 0, 0x8008
    Call _1ADC
    Message BattleCastleScene_Text_DarachIntro
    CloseMessage
    GoTo _0D9B
    End

_1ABA:
    Call _1B75
    BufferNumber 0, 0x8008
    Call _1ADC
    BufferPlayerName 0
    Message BattleCastleScene_Text_DarachIntroGold
    CloseMessage
    GoTo _0D9B
    End

_1ADC:
    Call _0F1A
    FrontierScrCmd_28 98, _0344
    FrontierScrCmd_29
    FrontierScrCmd_28 98, _0358
    FrontierScrCmd_29
    Return

_1AF8:
    Call _1B75
    BufferNumber 0, 0x8008
    FrontierScrCmd_3E 0x4052, 0x8008
    CallIfEq 0x8008, 0, _1B27
    BufferPlayerName 0
    Message BattleCastleScene_Text_BeatDarach
    CloseMessage
    GoTo _1B63
    End

_1B27:
    FrontierScrCmd_3D 0x4052, 1
    Return

_1B2F:
    Call _1B75
    BufferNumber 0, 0x8008
    FrontierScrCmd_3E 0x4052, 0x8008
    CallIfEq 0x8008, 2, _1B5B
    Message BattleCastleScene_Text_BeatDarachGold
    CloseMessage
    GoTo _1B63
    End

_1B5B:
    FrontierScrCmd_3D 0x4052, 3
    Return

_1B63:
    FrontierScrCmd_28 98, _0394
    FrontierScrCmd_29
    GoTo _1030
    End

_1B75:
    FrontierScrCmd_A0 4, 0, 0, 0x8008
    GoToIfGe 0x8008, 9999, _1B91
    AddVar 0x8008, 1
    Return

_1B91:
    Return

_1B93:
    Message BattleCastleScene_Text_GiveCP
    WaitABPress
    GoTo _110F
    End

_1BA1:
    MessageNoSkip BattleCastleScene_Text_GiveCP
    WaitTime 30, 0x8008
    GoTo _110F
    End

_1BB3:
    Message BattleCastleScene_Text_FantasticWin2
    GoTo _11D0
    End

_1BBF:
    MessageNoSkip BattleCastleScene_Text_FantasticWin
    WaitTime 30, 0x8008
    GoTo _11D0
    End

_1BD1:
    Message BattleCastleScene_Text_RemarkableWin2
    GoTo _11D0
    End

_1BDD:
    MessageNoSkip BattleCastleScene_Text_RemarkableWin
    WaitTime 30, 0x8008
    GoTo _11D0
    End

_1BEF:
    Message BattleCastleScene_Text_HardFoughtWin2
    GoTo _11D0
    End

_1BFB:
    MessageNoSkip BattleCastleScene_Text_HardFoughtWin
    WaitTime 30, 0x8008
    GoTo _11D0
    End

_1C0D:
    Message BattleCastleScene_Text_GoodEffort2
    GoTo _11D0
    End

_1C19:
    MessageNoSkip BattleCastleScene_Text_GoodEffort
    WaitTime 30, 0x8008
    GoTo _11D0
    End

_1C2B:
    Message BattleCastleScene_Text_CPEarned
    GoTo _11EC
    End

_1C37:
    MessageNoSkip BattleCastleScene_Text_CPEarned
    GoTo _11EC
    End

    .balign 4, 0
