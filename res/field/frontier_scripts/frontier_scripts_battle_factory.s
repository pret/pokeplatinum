# include "macros/frscrcmd.inc"
# include "res/text/bank/battle_factory_scene.h"
# include "constants/battle_frontier.h"

    .data

    .long _02D6 - 4
    .short 0xFD13

    .balign 4, 0
_0008:
    .short 0xEEEE
    .byte 0x00
    .short 0x001E
    .byte 0x01
    .short 0x8007
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0014:
    .short 0xEEEE
    .byte 0x00
    .short 0xEEEF
    .byte 0x00
    .short 0x001E
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0020:
    .short 0x800F
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0028:
    .short 0x0000
    .short 0xEEEE
    .byte 0x00
    .short 0x0078
    .short 0x0070
    .byte 0x00
    .byte 0x00
    .short 0x0003
    .short 0x001E
    .byte 0x01
    .short 0x0080
    .short 0x0050
    .byte 0x01
    .byte 0x01
    .short 0x0004
    .short 0x8007
    .byte 0x00
    .short 0x0080
    .short 0x00C0
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_004C:
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
    .short 0x0080
    .short 0x00C0
    .byte 0x01
    .byte 0x00
    .byte 0x00
    .short 0x0002
    .short 0xEEEF
    .byte 0x00
    .short 0x0090
    .short 0x00C0
    .byte 0x01
    .byte 0x00
    .byte 0x01
    .short 0x0003
    .short 0x001E
    .byte 0x01
    .short 0x0080
    .short 0x0050
    .byte 0x01
    .byte 0x01
    .short 0x0004
    .short 0x8007
    .byte 0x00
    .short 0x0080
    .short 0x00C0
    .byte 0x00
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0088:
    .short 0x0005
    .short 0x800F
    .byte 0x03
    .short 0x0060
    .short 0x00B0
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0098:
    .short 0x0000
    .short 0xEEEE
    .byte 0x00
    .short 0x0078
    .short 0x0070
    .byte 0x00
    .byte 0x00
    .short 0x0003
    .short 0x001E
    .byte 0x01
    .short 0x0080
    .short 0x0050
    .byte 0x01
    .byte 0x01
    .short 0x0004
    .short 0x8007
    .byte 0x00
    .short 0x0080
    .short 0x0060
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_00BC:
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
    .short 0x0080
    .short 0x0060
    .byte 0x01
    .byte 0x00
    .byte 0x00
    .short 0x0002
    .short 0xEEEF
    .byte 0x00
    .short 0x0090
    .short 0x0060
    .byte 0x01
    .byte 0x00
    .byte 0x01
    .short 0x0003
    .short 0x001E
    .byte 0x01
    .short 0x0080
    .short 0x0050
    .byte 0x01
    .byte 0x01
    .short 0x0004
    .short 0x8007
    .byte 0x00
    .short 0x0080
    .short 0x0060
    .byte 0x00
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_00F8:
    .short 0xEEEE
    .byte 0x00
    .short 0x8007
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0100:
    .short 0xEEEE
    .byte 0x00
    .short 0xEEEF
    .byte 0x00
    .short 0xFD13

    .balign 4, 0
_0108:
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
    .short 0x0080
    .short 0x00C0
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0120:
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
    .short 0x0080
    .short 0x00C0
    .byte 0x01
    .byte 0x00
    .byte 0x00
    .short 0x0002
    .short 0xEEEF
    .byte 0x00
    .short 0x0090
    .short 0x00C0
    .byte 0x01
    .byte 0x00
    .byte 0x01
    .short 0x0004
    .short 0x8007
    .byte 0x00
    .short 0x0080
    .short 0x00C0
    .byte 0x00
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0150:
    .short 0x800B
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0158:
    .short 0x800C
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0160:
    .short 0x0062
    .short 0x800B
    .byte 0x01
    .short 0x0080
    .short 0x0040
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0170:
    .short 0x0062
    .short 0x800B
    .byte 0x01
    .short 0x0090
    .short 0x0040
    .byte 0x01
    .byte 0x01
    .short 0x0063
    .short 0x800C
    .byte 0x01
    .short 0x0080
    .short 0x0040
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0188:
    .short 0x0004
    .short 0x0006
    .short 0xFD13

    .balign 4, 0
_0190:
    .short 0x0004
    .short 0x0006
    .short 0xFD13

    .balign 4, 0
_0198:
    .short 0x0023
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0007
    .short 0x0002
    .short 0x0005
    .short 0x0001
    .short 0x0011
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_01BC:
    .short 0x0023
    .short 0x0002
    .short 0x0004
    .short 0x0003
    .short 0x0028
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_01CC:
    .short 0x0023
    .short 0x0002
    .short 0x0006
    .short 0x0001
    .short 0x0004
    .short 0x0003
    .short 0x0028
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_01E0:
    .short 0x0006
    .short 0x0001
    .short 0x0001
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_01EC:
    .short 0x0012
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_01F4:
    .short 0x0004
    .short 0x0001
    .short 0x0006
    .short 0x0005
    .short 0x0004
    .short 0x0003
    .short 0x0007
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0208:
    .short 0x0004
    .short 0x0001
    .short 0x0006
    .short 0x0006
    .short 0x0004
    .short 0x0002
    .short 0x0007
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_021C:
    .short 0x0005
    .short 0x0001
    .short 0x0007
    .short 0x0005
    .short 0x0005
    .short 0x0003
    .short 0x0006
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0230:
    .short 0x0005
    .short 0x0001
    .short 0x0007
    .short 0x0004
    .short 0x0005
    .short 0x0004
    .short 0x0006
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0244:
    .short 0x0005
    .short 0x0001
    .short 0x0007
    .short 0x0005
    .short 0x0005
    .short 0x0003
    .short 0x0006
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0258:
    .short 0x0028
    .short 0x0001
    .short 0x0005
    .short 0x0001
    .short 0x0007
    .short 0x0005
    .short 0x0005
    .short 0x0003
    .short 0x0006
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0270:
    .short 0x0027
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0278:
    .short 0x0004
    .short 0x0003
    .short 0x0006
    .short 0x0004
    .short 0x0004
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0288:
    .short 0x0004
    .short 0x0004
    .short 0x0006
    .short 0x0003
    .short 0x0004
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0298:
    .short 0x0004
    .short 0x0003
    .short 0x0006
    .short 0x0004
    .short 0x0004
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_02A8:
    .short 0x0010
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0013
    .short 0x0001
    .short 0x0022
    .short 0x0001
    .short 0x0012
    .short 0x0001
    .short 0x0022
    .short 0x0001
    .short 0x0011
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0023
    .short 0x0001
    .short 0x0013
    .short 0x0001
    .short 0xFD13

_02D6:
    FrontierScrCmd_3E VAR_BATTLE_FACTORY_CHALLENGE_TYPE, 0x8001
    FrontierScrCmd_3E 0x40B9, 0x8002
    FrontierScrCmd_3E 0x4003, 0x8003
    GetPlayerObjEventGfx 0x8007
    GoToIfEq 0x8001, FRONTIER_CHALLENGE_MULTI, _0320
    GoToIfEq 0x8001, FRONTIER_CHALLENGE_MULTI_WFC, _0320
    SetVar 0x800F, 231
    FrontierScrCmd_22 _0008
    FrontierScrCmd_24 _0028
    GoTo _033E
    End

_0320:
    IncrementTrainerScore TRAINER_SCORE_EVENT_UNK_43
    SetVar 0x800F, 232
    FrontierScrCmd_22 _0014
    FrontierScrCmd_24 _004C
    GoTo _033E
    End

_033E:
    FrontierScrCmd_22 _0020
    FrontierScrCmd_24 _0088
    FrontierScrCmd_6C
    FrontierScrCmd_5C 0x8003, 0x8001, 0x8002
    FrontierScrCmd_67 31, 0, 0, 0x8008
    FrontierScrCmd_67 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0377
    GoTo _03B6
    End

_0377:
    Call _1630
    GoTo _0385
    End

_0385:
    SetVar 0x8002, 0
    FrontierScrCmd_69 0x8002, 0, 0x8008
    GoToIfEq 0x8008, 0, _0385
    FrontierScrCmd_6A 0x8002
    ClearReceivedTempDataAllPlayers
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 230
    ClearReceivedTempDataAllPlayers
    GoTo _03B6
    End

_03B6:
    FrontierScrCmd_5D 0x8003
    FrontierScrCmd_67 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _03D6
    GoTo _0407
    End

_03D6:
    SetVar 0x8002, 1
    FrontierScrCmd_69 0x8002, 0, 0x8008
    GoToIfEq 0x8008, 0, _03D6
    FrontierScrCmd_6A 0x8002
    ClearReceivedTempDataAllPlayers
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 231
    ClearReceivedTempDataAllPlayers
    GoTo _0407
    End

_0407:
    FadeScreenIn
    SetVar 0x8003, 0
    FrontierScrCmd_67 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0447
    FrontierScrCmd_28 4, _0188
    FrontierScrCmd_28 5, _0198
    FrontierScrCmd_29
    GoTo _0471
    End

_0447:
    FrontierScrCmd_28 4, _0188
    FrontierScrCmd_28 5, _0198
    FrontierScrCmd_28 1, _0188
    FrontierScrCmd_28 2, _0190
    FrontierScrCmd_29
    GoTo _0471
    End

_0471:
    FrontierScrCmd_25 5
    FrontierScrCmd_23 0x800F
    FrontierScrCmd_67 23, 0, 0, 0x8008
    GoToIfEq 0x8008, 0, _049B
    SetVar 0x8003, 1
    GoTo _0C29
    End

_049B:
    Call _04A9
    GoTo _0701
    End

_04A9:
    FrontierScrCmd_67 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _04C5
    GoTo _05F3
    End

_04C5:
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 238
    ClearReceivedTempDataAllPlayers
    GoTo _04D5
    End

_04D5:
    SetVar 0x8002, 3
    FrontierScrCmd_69 0x8002, 0, 0x8008
    GoToIfEq 0x8008, 0, _04D5
    FrontierScrCmd_6A 0x8002
    ClearReceivedTempDataAllPlayers
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 232
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_67 39, 0, 0, 0x8008
    FrontierScrCmd_67 19, 0, 0, 0x8008
    SetVar 0x8009, 0x8008
    CallIfEq 0x8009, 0, _0555
    CallIfEq 0x8009, 1, _0597
    CallIfEq 0x8009, 2, _05BB
    CallIfEq 0x8009, 3, _05D9
    CallIfGe 0x8009, 4, _05EB
    Return

_0555:
    FrontierScrCmd_67 15, 0, 0, 0x8008
    BufferSpeciesName 1, 0x8008
    FrontierScrCmd_67 15, 1, 0, 0x8008
    BufferSpeciesName 2, 0x8008
    FrontierScrCmd_67 15, 2, 0, 0x8008
    BufferSpeciesName 3, 0x8008
    FrontierScrCmd_67 15, 3, 0, 0x8008
    BufferSpeciesName 4, 0x8008
    Message BattleFactoryScene_Text_MultiOpponentInfo4Mon
    Return

_0597:
    FrontierScrCmd_67 15, 0, 0, 0x8008
    BufferSpeciesName 1, 0x8008
    FrontierScrCmd_67 15, 2, 0, 0x8008
    BufferSpeciesName 2, 0x8008
    Message BattleFactoryScene_Text_MultiOpponentInfo2Mon
    Return

_05BB:
    FrontierScrCmd_67 16, 0, 0, 0x8008
    BufferMoveName 0, 0x8008
    FrontierScrCmd_67 16, 2, 0, 0x8008
    BufferMoveName 1, 0x8008
    Message BattleFactoryScene_Text_MultiOpponentInfoFirstMoves
    Return

_05D9:
    FrontierScrCmd_67 16, 0, 0, 0x8008
    BufferMoveName 0, 0x8008
    Message BattleFactoryScene_Text_MultiOpponentInfoCommonType
    Return

_05EB:
    GoTo _06CD
    End

_05F3:
    FrontierScrCmd_67 19, 0, 0, 0x8008
    SetVar 0x8009, 0x8008
    CallIfEq 0x8009, 0, _0643
    CallIfEq 0x8009, 1, _0676
    CallIfEq 0x8009, 2, _069A
    CallIfEq 0x8009, 3, _06BB
    CallIfGe 0x8009, 4, _06CD
    Return

_0643:
    FrontierScrCmd_67 15, 0, 0, 0x8008
    BufferSpeciesName 1, 0x8008
    FrontierScrCmd_67 15, 1, 0, 0x8008
    BufferSpeciesName 3, 0x8008
    FrontierScrCmd_67 15, 2, 0, 0x8008
    BufferSpeciesName 5, 0x8008
    Message BattleFactoryScene_Text_OpponentInfo3Mon
    Return

_0676:
    FrontierScrCmd_67 15, 0, 0, 0x8008
    BufferSpeciesName 1, 0x8008
    FrontierScrCmd_67 15, 1, 0, 0x8008
    BufferSpeciesName 3, 0x8008
    Message BattleFactoryScene_Text_OpponentInfo2Mon
    Return

_069A:
    FrontierScrCmd_67 16, 0, 0, 0x8008
    BufferMoveName 0, 0x8008
    FrontierScrCmd_67 15, 0, 0, 0x8008
    BufferSpeciesName 1, 0x8008
    Message BattleFactoryScene_Text_OpponentInfo1Mon
    Return

_06BB:
    FrontierScrCmd_67 16, 0, 0, 0x8008
    BufferMoveName 0, 0x8008
    Message BattleFactoryScene_Text_OpponentInfoFirstMove
    Return

_06CD:
    FrontierScrCmd_67 18, 0, 0, 0x8008
    CallIfNe 0x8008, 255, _06F0
    CallIfEq 0x8008, 255, _06FB
    Return

_06F0:
    BufferTypeName 0, 0x8008
    Message BattleFactoryScene_Text_OpponentInfoCommonType
    Return

_06FB:
    Message BattleFactoryScene_Text_OpponentInfoVariedTypes
    Return

_0701:
    Message BattleFactoryScene_Text_ChoosePokemon
    FrontierScrCmd_67 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0721
    GoTo _0765
    End

_0721:
    MessageNoSkip BattleFactoryScene_Text_PleaseWait
    GoTo _072D
    End

_072D:
    SetVar 0x8002, 2
    FrontierScrCmd_69 0x8002, 0, 0x8008
    GoToIfEq 0x8008, 0, _072D
    FrontierScrCmd_6A 0x8002
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_67 40, 0, 0, 0x8008
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 160
    ClearReceivedTempDataAllPlayers
    GoTo _0765
    End

_0765:
    FadeScreenOut
    CloseMessage
    FrontierScrCmd_67 32, 0, 0, 0x8008
    FrontierScrCmd_67 28, 0, 0, 0x8008
    CallIfEq 0x8008, 1, _07D2
    FrontierScrCmd_5F
    FrontierScrCmd_67 36, 0, 0, 0x8008
    FrontierScrCmd_63
    FrontierScrCmd_67 31, 0, 0, 0x8008
    FrontierScrCmd_67 28, 0, 0, 0x8008
    CallIfEq 0x8008, 1, _07C8
    FadeScreenIn
    GoTo _07DC
    End

_07C8:
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 234
    ClearReceivedTempDataAllPlayers
    Return

_07D2:
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 235
    ClearReceivedTempDataAllPlayers
    Return

_07DC:
    FrontierScrCmd_67 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0812
    Message BattleFactoryScene_Text_GoIn
    WaitABPress
    CloseMessage
    FrontierScrCmd_28 3, _01E0
    FrontierScrCmd_28 4, _01BC
    FrontierScrCmd_29
    GoTo _084E
    End

_0812:
    MessageNoSkip BattleFactoryScene_Text_GoIn
    WaitTime 30, 0x8008
    CloseMessage
    Call _164D
    FrontierScrCmd_28 3, _01E0
    FrontierScrCmd_28 4, _01BC
    FrontierScrCmd_28 1, _01BC
    FrontierScrCmd_28 2, _01CC
    FrontierScrCmd_29
    GoTo _084E
    End

_084E:
    PlaySoundEffect SEQ_SE_DP_KAIDAN2
    WaitSoundEffect SEQ_SE_DP_KAIDAN2
    FadeScreenOut
    FrontierScrCmd_67 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0927
    FrontierScrCmd_25 0
    FrontierScrCmd_25 3
    FrontierScrCmd_25 4
    FrontierScrCmd_23 30
    FrontierScrCmd_67 32, 0, 0, 0x8008
    FrontierScrCmd_03 4
    GetPlayerObjEventGfx 0x8007
    FrontierScrCmd_22 _00F8
    FrontierScrCmd_24 _0108
    FadeScreenIn
    FrontierScrCmd_28 4, _01F4
    FrontierScrCmd_29
    Call _1471
    FrontierScrCmd_67 37, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _14E6
    GoToIfEq 0x8008, 2, _150B
    Call _1612
    BufferNumber 0, 0x8008
    Call _09E4
    FrontierScrCmd_28 98, _021C
    FrontierScrCmd_29
    WaitTime 15, 0x8008
    FrontierScrCmd_28 98, _01EC
    FrontierScrCmd_29
    FrontierScrCmd_67 33, 0, 0, 0x8008
    FrontierScrCmd_6B 0
    WaitABPress
    CloseMessage
    GoTo _091F
    End

_091F:
    GoTo _0A41
    End

_0927:
    FrontierScrCmd_25 1
    FrontierScrCmd_25 2
    FrontierScrCmd_25 3
    FrontierScrCmd_25 4
    FrontierScrCmd_23 30
    FrontierScrCmd_67 32, 0, 0, 0x8008
    FrontierScrCmd_03 4
    GetPlayerObjEventGfx 0x8007
    FrontierScrCmd_22 _0100
    FrontierScrCmd_24 _0120
    FadeScreenIn
    FrontierScrCmd_28 4, _01F4
    FrontierScrCmd_28 1, _01F4
    FrontierScrCmd_28 2, _0208
    FrontierScrCmd_29
    Call _1471
    Call _09FF
    FrontierScrCmd_28 98, _0230
    FrontierScrCmd_28 99, _0244
    FrontierScrCmd_29
    WaitTime 15, 0x8008
    FrontierScrCmd_28 98, _01EC
    FrontierScrCmd_29
    FrontierScrCmd_67 33, 0, 0, 0x8008
    FrontierScrCmd_6B 0
    WaitTime 30, 0x8008
    CloseMessage
    FrontierScrCmd_28 99, _01EC
    FrontierScrCmd_29
    FrontierScrCmd_67 33, 0, 0, 0x8008
    FrontierScrCmd_6B 1
    WaitTime 30, 0x8008
    CloseMessage
    MessageNoSkip BattleFactoryScene_Text_PleaseWait
    GoTo _0A41
    End

_09E4:
    FrontierScrCmd_67 20, 0, 0, 0x8008
    SetVar 0x800B, 0x8008
    FrontierScrCmd_22 _0150
    FrontierScrCmd_24 _0160
    Return

_09FF:
    FrontierScrCmd_67 20, 0, 0, 0x8008
    SetVar 0x800B, 0x8008
    FrontierScrCmd_22 _0150
    FrontierScrCmd_67 20, 1, 0, 0x8008
    SetVar 0x800C, 0x8008
    FrontierScrCmd_22 _0158
    FrontierScrCmd_24 _0170
    Return

_0A2D:
    SetVar 0x800B, 215
    FrontierScrCmd_22 _0150
    FrontierScrCmd_24 _0160
    Return

_0A41:
    FrontierScrCmd_67 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0A92
    FrontierScrCmd_67 37, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0A82
    GoToIfEq 0x8008, 2, _0A82
    FrontierScrCmd_3F 3
    GoTo _0AD0
    End

_0A82:
    IncrementRecordValue RECORD_UNK_059
    FrontierScrCmd_47 2
    GoTo _0AD0
    End

_0A92:
    SetVar 0x8002, 6
    FrontierScrCmd_69 0x8002, 0, 0x8008
    GoToIfEq 0x8008, 0, _0A92
    FrontierScrCmd_6A 0x8002
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_67 38, 0, 0, 0x8008
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 161
    ClearReceivedTempDataAllPlayers
    CloseMessage
    FrontierScrCmd_3F 3
    GoTo _0AD0
    End

_0AD0:
    FrontierScrCmd_61
    FrontierScrCmd_60
    FrontierScrCmd_67 30, 4, 0, 0x8008
    FadeScreenIn
    FrontierScrCmd_68 0x8008
    GoToIfEq 0x8008, 0, _1233
    IncrementRecordValue RECORD_UNK_060
    FrontierScrCmd_67 37, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _15AA
    GoToIfEq 0x8008, 2, _15DE
    Call _1612
    BufferNumber 0, 0x8008
    GoTo _0B30
    End

_0B30:
    Call _141F
    GoTo _0B3E
    End

_0B3E:
    Call _1391
    GoTo _0B4C
    End

_0B4C:
    FrontierScrCmd_67 14, 1, 0, 0x8008
    FrontierScrCmd_67 5, 0, 0, 0x8008
    FrontierScrCmd_67 23, 0, 0, 0x8008
    GoToIfNe 0x8008, 7, _0C17
    GoTo _0B76
    End

_0B76:
    FrontierScrCmd_71 0x8008
    GoToIfEq 0x8008, 0, _0BBF
    FrontierScrCmd_70 0x8008
    CallIfEq 0x8008, 0, _1132
    CallIfEq 0x8008, 1, _1138
    ShowYesNoMenu 0x8008, MENU_NO
    GoToIfEq 0x8008, 1, _0BD9
    GoTo _0BCB
    End

_0BBF:
    MessageNoSkip BattleFactoryScene_Text_PleaseWait
    GoTo _0BD9
    End

_0BCB:
    Call _1084
    GoTo _0BD9
    End

_0BD9:
    FrontierScrCmd_67 22, 0, 0, 0x8008
    FrontierScrCmd_3D 0x40B7, 1
    Message BattleFactoryScene_Text_BPEarned
    BufferPlayerName 0
    FrontierScrCmd_67 35, 0, 0, 0x8008
    BufferNumber 1, 0x8008
    GiveBattlePoints 0x8008
    Message BattleFactoryScene_Text_ReceiveBP
    PlayFanfare SEQ_PL_POINTGET3
    WaitFanfare
    GoTo _0C0F
    End

_0C0F:
    GoTo _12BF
    End

_0C17:
    Message BattleFactoryScene_Text_WellDone
    PlayFanfare SEQ_ASA
    WaitFanfare
    GoTo _0C29
    End

_0C29:
    FrontierScrCmd_67 37, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _14AE
    GoToIfEq 0x8008, 2, _14AE
    GoTo _0C52
    End

_0C52:
    Call _1612
    BufferNumber 0, 0x8008
    GoTo _0C65
    End

_0C65:
    FrontierScrCmd_67 23, 0, 0, 0x8008
    AddVar 0x8008, 1
    BufferNumber 0, 0x8008
    Message BattleFactoryScene_Text_AreYouReady
    GoTo _0C83
    End

_0C83:
    FrontierScrCmd_67 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0CAC
    GoToIfEq 0x8003, 0, _0CFC
    GoTo _0CEE
    End

_0CAC:
    FrontierScrCmd_71 0x8008
    GoToIfEq 0x8008, 0, _0CD2
    GoToIfEq 0x8003, 0, _0CE0
    GoTo _0CD2
    End

_0CD2:
    SetVar 0x8008, 1
    GoTo _0D0A
    End

_0CE0:
    SetVar 0x8008, 2
    GoTo _0D0A
    End

_0CEE:
    SetVar 0x8008, 3
    GoTo _0D0A
    End

_0CFC:
    SetVar 0x8008, 4
    GoTo _0D0A
    End

_0D0A:
    GoToIfEq 0x8008, 1, _0D40
    GoToIfEq 0x8008, 2, _0D5B
    GoToIfEq 0x8008, 3, _0D7E
    GoToIfEq 0x8008, 4, _0DA1
    End

_0D40:
    InitLocalTextListMenu 31, 13, 0, 0, 0x800A
    SetMenuXOriginSide 1
    AddListMenuEntry BattleFactoryScene_Text_ContinueOption, 255, 0
    GoTo _0DCC
    End

_0D5B:
    InitLocalTextListMenu 31, 11, 0, 0, 0x800A
    SetMenuXOriginSide 1
    AddListMenuEntry BattleFactoryScene_Text_ContinueOption, 255, 0
    AddListMenuEntry BattleFactoryScene_Text_RecordOption, 255, 1
    GoTo _0DCC
    End

_0D7E:
    InitLocalTextListMenu 31, 11, 0, 0, 0x800A
    SetMenuXOriginSide 1
    AddListMenuEntry BattleFactoryScene_Text_ContinueOption, 255, 0
    AddListMenuEntry BattleFactoryScene_Text_RestOption, 255, 2
    GoTo _0DCC
    End

_0DA1:
    InitLocalTextListMenu 31, 9, 0, 0, 0x800A
    SetMenuXOriginSide 1
    AddListMenuEntry BattleFactoryScene_Text_ContinueOption, 255, 0
    AddListMenuEntry BattleFactoryScene_Text_RecordOption, 255, 1
    AddListMenuEntry BattleFactoryScene_Text_RestOption, 255, 2
    GoTo _0DCC
    End

_0DCC:
    AddListMenuEntry BattleFactoryScene_Text_RetireOption, 255, 3
    ShowListMenu
    GoTo _0DDE
    End

_0DDE:
    GoToIfEq 0x800A, 0, _0E1A
    GoToIfEq 0x800A, 1, _1036
    GoToIfEq 0x800A, 2, _113E
    GoToIfEq 0x800A, 3, _1199
    GoTo _1199
    End

_0E1A:
    FrontierScrCmd_67 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0E36
    GoTo _0E9F
    End

_0E36:
    BufferPartnerName 0
    Message BattleFactoryScene_Text_PartnerIsChoosing
    GoTo _0E45
    End

_0E45:
    SetVar 0x8002, 4
    FrontierScrCmd_69 0x8002, 0, 0x8008
    GoToIfEq 0x8008, 0, _0E45
    FrontierScrCmd_6A 0x8002
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_67 24, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0E8A
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 162
    ClearReceivedTempDataAllPlayers
    GoTo _0E9F
    End

_0E8A:
    BufferPartnerName 0
    MessageNoSkip BattleFactoryScene_Text_PartnerRetired
    WaitTime 30, 0x8008
    GoTo _11FE
    End

_0E9F:
    SetVar 0x8003, 0
    FrontierScrCmd_64
    Call _04A9
    FrontierScrCmd_67 0, 1, 0, 0x8008
    Message BattleFactoryScene_Text_TradeQuestion
    ShowYesNoMenu 0x8008, MENU_YES
    GoToIfEq 0x8008, 1, _0FBF
    GoTo _0ED2
    End

_0ED2:
    FrontierScrCmd_67 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0EEE
    GoTo _0F23
    End

_0EEE:
    MessageNoSkip BattleFactoryScene_Text_PleaseWait
    GoTo _0EFA
    End

_0EFA:
    SetVar 0x8002, 5
    FrontierScrCmd_69 0x8002, 0, 0x8008
    GoToIfEq 0x8008, 0, _0EFA
    FrontierScrCmd_6A 0x8002
    ClearReceivedTempDataAllPlayers
    GoTo _0F23
    End

_0F23:
    FadeScreenOut
    CloseMessage
    FrontierScrCmd_67 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0F4D
    GoTo _0F5D
    End

_0F4D:
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 163
    ClearReceivedTempDataAllPlayers
    GoTo _0F5D
    End

_0F5D:
    FrontierScrCmd_67 32, 0, 0, 0x8008
    FrontierScrCmd_67 28, 0, 0, 0x8008
    CallIfEq 0x8008, 1, _0FAB
    FrontierScrCmd_62
    FrontierScrCmd_65
    FrontierScrCmd_67 31, 0, 0, 0x8008
    FrontierScrCmd_67 28, 0, 0, 0x8008
    CallIfEq 0x8008, 1, _0FB5
    FadeScreenIn
    GoTo _102C
    End

_0FAB:
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 236
    ClearReceivedTempDataAllPlayers
    Return

_0FB5:
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 233
    ClearReceivedTempDataAllPlayers
    Return

_0FBF:
    FrontierScrCmd_67 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0FDB
    GoTo _1022
    End

_0FDB:
    MessageNoSkip BattleFactoryScene_Text_PleaseWait
    GoTo _0FE5

_0FE5:
    SetVar 0x8002, 5
    FrontierScrCmd_69 0x8002, 1, 0x8008
    GoToIfEq 0x8008, 0, _0FE5
    FrontierScrCmd_6A 0x8002
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_67 26, 0, 0, 0x8008
    GoToIfEq 0x8008, 0, _0F23
    GoTo _1022
    End

_1022:
    CloseMessage
    GoTo _102C
    End

_102C:
    FrontierScrCmd_66
    GoTo _07DC
    End

_1036:
    FrontierScrCmd_70 0x8008
    CallIfEq 0x8008, 0, _1132
    CallIfEq 0x8008, 1, _1138
    ShowYesNoMenu 0x8008, MENU_NO
    GoToIfEq 0x8008, 1, _107C
    GoTo _106E
    End

_106E:
    Call _1084
    GoTo _0C29
    End

_107C:
    GoTo _0C29
    End

_1084:
    Call _10A6
    GoTo _10AF
    End

_1092:
    Call _10A6
    AddVar 0x8005, 1
    GoTo _10AF
    End

_10A6:
    FrontierScrCmd_67 4, 0, 0, 0x8005
    Return

_10AF:
    GoTo _10B7
    End

_10B7:
    SetVar 0x8003, 1
    MessageInstant BattleFactoryScene_Text_Saving
    ShowSavingIcon
    FrontierScrCmd_3E 0x40B9, 0x8008
    GoToIfEq 0x8008, 0, _10DE
    GoTo _10F7
    End

_10DE:
    FrontierScrCmd_67 29, 0, 0, 0x8008
    FrontierScrCmd_6D 2, 0x8008, 0x8005, 0x8005
    GoTo _1110
    End

_10F7:
    FrontierScrCmd_67 29, 0, 0, 0x8008
    FrontierScrCmd_6D 3, 0x8008, 0x8005, 0x8005
    GoTo _1110
    End

_1110:
    HideSavingIcon
    GoToIfEq 0x8005, 1, _1125
    Message BattleFactoryScene_Text_VideoSaveFailed
    Return

_1125:
    PlaySoundEffect SEQ_SE_DP_SAVE
    BufferPlayerName 0
    Message BattleFactoryScene_Text_BattleSaved
    Return

_1132:
    Message BattleFactoryScene_Text_SaveAsVideo
    Return

_1138:
    Message BattleFactoryScene_Text_OverwriteVideo
    Return

_113E:
    Message BattleFactoryScene_Text_BreakQuestion
    ShowYesNoMenu 0x8008, MENU_YES
    GoToIfEq 0x8008, 1, _1191
    GoTo _115C
    End

_115C:
    FrontierScrCmd_3D 0x40B7, 2
    FrontierScrCmd_67 10, 0, 0, 0x8008
    Call _137B
    CloseMessage
    FadeScreenOut
    FrontierScrCmd_67 32, 0, 0, 0x8008
    FrontierScrCmd_6F
    FrontierScrCmd_5E
    FrontierScrCmd_67 7, 0, 0, 0x8008
    End

_1191:
    GoTo _0C29
    End

_1199:
    Message BattleFactoryScene_Text_RetireQuestion
    ShowYesNoMenu 0x8008, MENU_NO
    GoToIfEq 0x8008, 1, _122B
    FrontierScrCmd_67 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _11CF
    Message BattleFactoryScene_Text_ReturnPokemon
    GoTo _1216
    End

_11CF:
    MessageNoSkip BattleFactoryScene_Text_PleaseWait
    GoTo _11DB
    End

_11DB:
    SetVar 0x8002, 4
    FrontierScrCmd_69 0x8002, 1, 0x8008
    GoToIfEq 0x8008, 0, _11DB
    GoTo _11FE
    End

_11FE:
    Message BattleFactoryScene_Text_ReturnPokemon
    MessageNoSkip BattleFactoryScene_Text_PleaseWait
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 168
    ClearReceivedTempDataAllPlayers
    GoTo _1216
    End

_1216:
    FrontierScrCmd_67 21, 0, 0, 0x8008
    FrontierScrCmd_3D 0x40B7, 3
    GoTo _12F3
    End

_122B:
    GoTo _0C29
    End

_1233:
    Call _141F
    Call _1391
    FrontierScrCmd_71 0x8008
    GoToIfEq 0x8008, 0, _1288
    FrontierScrCmd_70 0x8008
    CallIfEq 0x8008, 0, _1132
    CallIfEq 0x8008, 1, _1138
    ShowYesNoMenu 0x8008, MENU_NO
    GoToIfEq 0x8008, 1, _12A2
    GoTo _1294
    End

_1288:
    MessageNoSkip BattleFactoryScene_Text_PleaseWait
    GoTo _12AA
    End

_1294:
    Call _1092
    GoTo _12AA
    End

_12A2:
    GoTo _12AA
    End

_12AA:
    FrontierScrCmd_67 21, 0, 0, 0x8008
    FrontierScrCmd_3D 0x40B7, 3
    GoTo _12BF
    End

_12BF:
    Message BattleFactoryScene_Text_ReturnPokemon
    FrontierScrCmd_67 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _12DF
    GoTo _12F3
    End

_12DF:
    MessageNoSkip BattleFactoryScene_Text_PleaseWait
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 166
    ClearReceivedTempDataAllPlayers
    GoTo _12F3
    End

_12F3:
    Call _137B
    CloseMessage
    GoTo _1303
    End

_1303:
    FrontierScrCmd_67 28, 0, 0, 0x8008
    CallIfEq 0x8008, 1, _135E
    FadeScreenOut
    FrontierScrCmd_67 29, 0, 0, 0x8008
    CallIfEq 0x8008, 2, _1358
    FrontierScrCmd_67 29, 0, 0, 0x8008
    GoToIfEq 0x8008, 3, _1368
    FrontierScrCmd_67 32, 0, 0, 0x8008
    FrontierScrCmd_6F
    FrontierScrCmd_5E
    FrontierScrCmd_02

_1358:
    FrontierScrCmd_C8 2
    Return

_135E:
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 167
    ClearReceivedTempDataAllPlayers
    Return

_1368:
    FrontierScrCmd_67 32, 0, 0, 0x8008
    FrontierScrCmd_6F
    FrontierScrCmd_5E
    FrontierScrCmd_04 14, 1
    End

_137B:
    MessageInstant BattleFactoryScene_Text_Saving2
    ShowSavingIcon
    FrontierScrCmd_73 0x8008
    HideSavingIcon
    PlaySoundEffect SEQ_SE_DP_SAVE
    WaitSoundEffect SEQ_SE_DP_SAVE
    Return

_1391:
    PlaySoundEffect SEQ_SE_DP_KAIDAN2
    WaitSoundEffect SEQ_SE_DP_KAIDAN2
    FadeScreenOut
    FrontierScrCmd_67 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _13EA
    FrontierScrCmd_25 0
    FrontierScrCmd_25 4
    FrontierScrCmd_03 3
    FrontierScrCmd_67 31, 0, 0, 0x8008
    GetPlayerObjEventGfx 0x8007
    FrontierScrCmd_22 _0008
    FrontierScrCmd_24 _0098
    FadeScreenIn
    Return

_13EA:
    FrontierScrCmd_25 1
    FrontierScrCmd_25 2
    FrontierScrCmd_25 4
    FrontierScrCmd_03 3
    FrontierScrCmd_67 31, 0, 0, 0x8008
    GetPlayerObjEventGfx 0x8007
    FrontierScrCmd_22 _0014
    FrontierScrCmd_24 _00BC
    FadeScreenIn
    Return

_141F:
    FrontierScrCmd_67 28, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _1447
    FrontierScrCmd_28 98, _0278
    FrontierScrCmd_29
    FrontierScrCmd_25 98
    FrontierScrCmd_23 0x800B
    Return

_1447:
    Call _166A
    FrontierScrCmd_28 98, _0288
    FrontierScrCmd_28 99, _0298
    FrontierScrCmd_29
    FrontierScrCmd_25 98
    FrontierScrCmd_25 99
    FrontierScrCmd_23 0x800B
    FrontierScrCmd_23 0x800C
    Return

_1471:
    FrontierScrCmd_67 30, 0, 0, 0x8008
    WaitTime 3, 0x8008
    FrontierScrCmd_67 30, 1, 0, 0x8008
    WaitTime 3, 0x8008
    FrontierScrCmd_67 30, 2, 0, 0x8008
    WaitTime 3, 0x8008
    FrontierScrCmd_67 30, 3, 0, 0x8008
    WaitTime 3, 0x8008
    FrontierScrCmd_67 30, 4, 0, 0x8008
    Return

_14AE:
    GoToIfEq 0x8003, 1, _0C52
    FrontierScrCmd_67 41, 0, 0, 0x8008
    GoToIfEq 0x8008, 1, _0C52
    Call _1612
    BufferNumber 0, 0x8008
    Message BattleFactoryScene_Text_FactoryHeadApproaching
    GoTo _0C65
    End

_14E6:
    Call _1612
    BufferNumber 0, 0x8008
    Call _154A
    Call _1530
    Message BattleFactoryScene_Text_ThortonIntro
    CloseMessage
    GoTo _091F
    End

_150B:
    Call _1612
    BufferNumber 0, 0x8008
    Call _154A
    Call _1530
    Message BattleFactoryScene_Text_ThortonIntroGold
    CloseMessage
    GoTo _091F
    End

_1530:
    FrontierScrCmd_67 34, 0, 0, 0x8008
    GetRandom 0x8008, 90
    AddVar 0x8008, 10
    BufferNumber 3, 0x8008
    Return

_154A:
    Call _0A2D
    FrontierScrCmd_28 98, _0258
    FrontierScrCmd_29
    FrontierScrCmd_28 4, _02A8
    FrontierScrCmd_29
    FrontierScrCmd_41 0, 5, 1
    FrontierScrCmd_43 0, 0
    FrontierScrCmd_43 0, 1
    FrontierScrCmd_43 0, 2
    PlaySoundEffect SEQ_SE_PL_FAC01
    WaitTime 36, 0x8008
    FrontierScrCmd_4C 0, 3, 2, 10
    WaitTime 11, 0x8008
    FrontierScrCmd_28 98, _0270
    FrontierScrCmd_29
    FrontierScrCmd_44
    FrontierScrCmd_42 0
    Return

_15AA:
    Call _1612
    BufferNumber 0, 0x8008
    FrontierScrCmd_3E 0x4050, 0x8008
    CallIfEq 0x8008, 0, _15D6
    Message BattleFactoryScene_Text_BeatThorton
    CloseMessage
    GoTo _0B30
    End

_15D6:
    FrontierScrCmd_3D 0x4050, 1
    Return

_15DE:
    Call _1612
    BufferNumber 0, 0x8008
    FrontierScrCmd_3E 0x4050, 0x8008
    CallIfEq 0x8008, 2, _160A
    Message BattleFactoryScene_Text_BeatThortonGold
    CloseMessage
    GoTo _0B30
    End

_160A:
    FrontierScrCmd_3D 0x4050, 3
    Return

_1612:
    FrontierScrCmd_67 4, 0, 0, 0x8008
    GoToIfGe 0x8008, 9999, _162E
    AddVar 0x8008, 1
    Return

_162E:
    Return

_1630:
    WaitTime 1, 0x8008
    FrontierScrCmd_67 27, 0, 0, 0x8008
    WaitTime 1, 0x8008
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 195
    ClearReceivedTempDataAllPlayers
    Return

_164D:
    WaitTime 1, 0x8008
    FrontierScrCmd_67 27, 0, 0, 0x8008
    WaitTime 1, 0x8008
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 196
    ClearReceivedTempDataAllPlayers
    Return

_166A:
    WaitTime 1, 0x8008
    FrontierScrCmd_67 27, 0, 0, 0x8008
    WaitTime 1, 0x8008
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 197
    ClearReceivedTempDataAllPlayers
    Return

    .balign 4, 0
