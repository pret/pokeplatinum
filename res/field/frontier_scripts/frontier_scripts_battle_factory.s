# include "macros/frscrcmd.inc"
# include "res/graphics/frontier/particles/frontier_particles.naix"
# include "res/text/bank/battle_factory_scene.h"
# include "constants/battle_frontier.h"
# include "constants/battle_frontier_emitters.h"

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
    WalkNorth 6
    EndMovement

    .balign 4, 0
_0190:
    WalkNorth 6
    EndMovement

    .balign 4, 0
_0198:
    Delay8
    Delay8
    Delay8
    Delay8
    Delay8
    WalkEast 2
    WalkSouth
    WalkOnSpotSouth
    EndMovement

    .balign 4, 0
_01BC:
    Delay8 2
    WalkNorth 3
    WarpOut
    EndMovement

    .balign 4, 0
_01CC:
    Delay8 2
    WalkWest
    WalkNorth 3
    WarpOut
    EndMovement

    .balign 4, 0
_01E0:
    WalkWest
    FaceSouth
    EndMovement

    .balign 4, 0
_01EC:
    WalkOnSpotWest
    EndMovement

    .balign 4, 0
_01F4:
    WalkNorth
    WalkWest 5
    WalkNorth 3
    WalkEast
    EndMovement

    .balign 4, 0
_0208:
    WalkNorth
    WalkWest 6
    WalkNorth 2
    WalkEast
    EndMovement

    .balign 4, 0
_021C:
    WalkSouth
    WalkEast 5
    WalkSouth 3
    WalkWest
    EndMovement

    .balign 4, 0
_0230:
    WalkSouth
    WalkEast 4
    WalkSouth 4
    WalkWest
    EndMovement

    .balign 4, 0
_0244:
    WalkSouth
    WalkEast 5
    WalkSouth 3
    WalkWest
    EndMovement

    .balign 4, 0
_0258:
    WarpOut
    WalkSouth
    WalkEast 5
    WalkSouth 3
    WalkWest
    EndMovement

    .balign 4, 0
_0270:
    WarpIn
    EndMovement

    .balign 4, 0
_0278:
    WalkNorth 3
    WalkWest 4
    WalkNorth
    EndMovement

    .balign 4, 0
_0288:
    WalkNorth 4
    WalkWest 3
    WalkNorth
    EndMovement

    .balign 4, 0
_0298:
    WalkNorth 3
    WalkWest 4
    WalkNorth
    EndMovement

    .balign 4, 0
_02A8:
    WalkOnSpotNorth
    Delay8
    Delay8
    WalkOnSpotEast
    Delay4
    WalkOnSpotWest
    Delay4
    WalkOnSpotSouth
    Delay8
    Delay8
    WalkOnSpotEast
    EndMovement

_02D6:
    FrontierScrCmd_3E VAR_BATTLE_FACTORY_CHALLENGE_TYPE, VAR_0x8001
    FrontierScrCmd_3E VAR_UNK_0x40B9, VAR_0x8002
    FrontierScrCmd_3E VAR_MAP_LOCAL_3, VAR_0x8003
    GetPlayerObjEventGfx VAR_0x8007
    GoToIfEq VAR_0x8001, FRONTIER_CHALLENGE_MULTI, _0320
    GoToIfEq VAR_0x8001, FRONTIER_CHALLENGE_MULTI_WFC, _0320
    SetVar FR_VAR_0x800F, 231
    FrontierScrCmd_22 _0008
    FrontierScrCmd_24 _0028
    GoTo _033E
    End

_0320:
    IncrementTrainerScore TRAINER_SCORE_EVENT_UNK_43
    SetVar FR_VAR_0x800F, 232
    FrontierScrCmd_22 _0014
    FrontierScrCmd_24 _004C
    GoTo _033E
    End

_033E:
    FrontierScrCmd_22 _0020
    FrontierScrCmd_24 _0088
    InitNewBattleRecording
    FrontierScrCmd_5C VAR_0x8003, VAR_0x8001, VAR_0x8002
    FrontierScrCmd_67 31, 0, 0, VAR_0x8008
    FrontierScrCmd_67 28, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _0377
    GoTo _03B6
    End

_0377:
    Call _1630
    GoTo _0385
    End

_0385:
    SetVar VAR_0x8002, 0
    FrontierScrCmd_69 VAR_0x8002, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 0, _0385
    FrontierScrCmd_6A VAR_0x8002
    ClearReceivedTempDataAllPlayers
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 230
    ClearReceivedTempDataAllPlayers
    GoTo _03B6
    End

_03B6:
    FrontierScrCmd_5D VAR_0x8003
    FrontierScrCmd_67 28, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _03D6
    GoTo _0407
    End

_03D6:
    SetVar VAR_0x8002, 1
    FrontierScrCmd_69 VAR_0x8002, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 0, _03D6
    FrontierScrCmd_6A VAR_0x8002
    ClearReceivedTempDataAllPlayers
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 231
    ClearReceivedTempDataAllPlayers
    GoTo _0407
    End

_0407:
    FadeScreenIn
    SetVar VAR_0x8003, 0
    FrontierScrCmd_67 28, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _0447
    ApplyMovement 4, _0188
    ApplyMovement 5, _0198
    WaitMovement
    GoTo _0471
    End

_0447:
    ApplyMovement 4, _0188
    ApplyMovement 5, _0198
    ApplyMovement 1, _0188
    ApplyMovement 2, _0190
    WaitMovement
    GoTo _0471
    End

_0471:
    FrontierScrCmd_25 5
    FrontierScrCmd_23 FR_VAR_0x800F
    FrontierScrCmd_67 23, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 0, _049B
    SetVar VAR_0x8003, 1
    GoTo _0C29
    End

_049B:
    Call _04A9
    GoTo _0701
    End

_04A9:
    FrontierScrCmd_67 28, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _04C5
    GoTo _05F3
    End

_04C5:
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 238
    ClearReceivedTempDataAllPlayers
    GoTo _04D5
    End

_04D5:
    SetVar VAR_0x8002, 3
    FrontierScrCmd_69 VAR_0x8002, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 0, _04D5
    FrontierScrCmd_6A VAR_0x8002
    ClearReceivedTempDataAllPlayers
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 232
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_67 39, 0, 0, VAR_0x8008
    FrontierScrCmd_67 19, 0, 0, VAR_0x8008
    SetVar VAR_0x8009, VAR_0x8008
    CallIfEq VAR_0x8009, 0, _0555
    CallIfEq VAR_0x8009, 1, _0597
    CallIfEq VAR_0x8009, 2, _05BB
    CallIfEq VAR_0x8009, 3, _05D9
    CallIfGe VAR_0x8009, 4, _05EB
    Return

_0555:
    FrontierScrCmd_67 15, 0, 0, VAR_0x8008
    BufferSpeciesName 1, VAR_0x8008
    FrontierScrCmd_67 15, 1, 0, VAR_0x8008
    BufferSpeciesName 2, VAR_0x8008
    FrontierScrCmd_67 15, 2, 0, VAR_0x8008
    BufferSpeciesName 3, VAR_0x8008
    FrontierScrCmd_67 15, 3, 0, VAR_0x8008
    BufferSpeciesName 4, VAR_0x8008
    Message BattleFactoryScene_Text_MultiOpponentInfo4Mon
    Return

_0597:
    FrontierScrCmd_67 15, 0, 0, VAR_0x8008
    BufferSpeciesName 1, VAR_0x8008
    FrontierScrCmd_67 15, 2, 0, VAR_0x8008
    BufferSpeciesName 2, VAR_0x8008
    Message BattleFactoryScene_Text_MultiOpponentInfo2Mon
    Return

_05BB:
    FrontierScrCmd_67 16, 0, 0, VAR_0x8008
    BufferMoveName 0, VAR_0x8008
    FrontierScrCmd_67 16, 2, 0, VAR_0x8008
    BufferMoveName 1, VAR_0x8008
    Message BattleFactoryScene_Text_MultiOpponentInfoFirstMoves
    Return

_05D9:
    FrontierScrCmd_67 16, 0, 0, VAR_0x8008
    BufferMoveName 0, VAR_0x8008
    Message BattleFactoryScene_Text_MultiOpponentInfoCommonType
    Return

_05EB:
    GoTo _06CD
    End

_05F3:
    FrontierScrCmd_67 19, 0, 0, VAR_0x8008
    SetVar VAR_0x8009, VAR_0x8008
    CallIfEq VAR_0x8009, 0, _0643
    CallIfEq VAR_0x8009, 1, _0676
    CallIfEq VAR_0x8009, 2, _069A
    CallIfEq VAR_0x8009, 3, _06BB
    CallIfGe VAR_0x8009, 4, _06CD
    Return

_0643:
    FrontierScrCmd_67 15, 0, 0, VAR_0x8008
    BufferSpeciesName 1, VAR_0x8008
    FrontierScrCmd_67 15, 1, 0, VAR_0x8008
    BufferSpeciesName 3, VAR_0x8008
    FrontierScrCmd_67 15, 2, 0, VAR_0x8008
    BufferSpeciesName 5, VAR_0x8008
    Message BattleFactoryScene_Text_OpponentInfo3Mon
    Return

_0676:
    FrontierScrCmd_67 15, 0, 0, VAR_0x8008
    BufferSpeciesName 1, VAR_0x8008
    FrontierScrCmd_67 15, 1, 0, VAR_0x8008
    BufferSpeciesName 3, VAR_0x8008
    Message BattleFactoryScene_Text_OpponentInfo2Mon
    Return

_069A:
    FrontierScrCmd_67 16, 0, 0, VAR_0x8008
    BufferMoveName 0, VAR_0x8008
    FrontierScrCmd_67 15, 0, 0, VAR_0x8008
    BufferSpeciesName 1, VAR_0x8008
    Message BattleFactoryScene_Text_OpponentInfo1Mon
    Return

_06BB:
    FrontierScrCmd_67 16, 0, 0, VAR_0x8008
    BufferMoveName 0, VAR_0x8008
    Message BattleFactoryScene_Text_OpponentInfoFirstMove
    Return

_06CD:
    FrontierScrCmd_67 18, 0, 0, VAR_0x8008
    CallIfNe VAR_0x8008, 255, _06F0
    CallIfEq VAR_0x8008, 255, _06FB
    Return

_06F0:
    BufferTypeName 0, VAR_0x8008
    Message BattleFactoryScene_Text_OpponentInfoCommonType
    Return

_06FB:
    Message BattleFactoryScene_Text_OpponentInfoVariedTypes
    Return

_0701:
    Message BattleFactoryScene_Text_ChoosePokemon
    FrontierScrCmd_67 28, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _0721
    GoTo _0765
    End

_0721:
    MessageNoSkip BattleFactoryScene_Text_PleaseWait
    GoTo _072D
    End

_072D:
    SetVar VAR_0x8002, 2
    FrontierScrCmd_69 VAR_0x8002, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 0, _072D
    FrontierScrCmd_6A VAR_0x8002
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_67 40, 0, 0, VAR_0x8008
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 160
    ClearReceivedTempDataAllPlayers
    GoTo _0765
    End

_0765:
    FadeScreenOut
    CloseMessage
    FrontierScrCmd_67 32, 0, 0, VAR_0x8008
    FrontierScrCmd_67 28, 0, 0, VAR_0x8008
    CallIfEq VAR_0x8008, 1, _07D2
    FrontierScrCmd_5F
    FrontierScrCmd_67 36, 0, 0, VAR_0x8008
    FrontierScrCmd_63
    FrontierScrCmd_67 31, 0, 0, VAR_0x8008
    FrontierScrCmd_67 28, 0, 0, VAR_0x8008
    CallIfEq VAR_0x8008, 1, _07C8
    FadeScreenIn
    GoTo _07DC
    End

_07C8:
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 234
    ClearReceivedTempDataAllPlayers
    Return

_07D2:
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 235
    ClearReceivedTempDataAllPlayers
    Return

_07DC:
    FrontierScrCmd_67 28, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _0812
    Message BattleFactoryScene_Text_GoIn
    WaitABPress
    CloseMessage
    ApplyMovement 3, _01E0
    ApplyMovement 4, _01BC
    WaitMovement
    GoTo _084E
    End

_0812:
    MessageNoSkip BattleFactoryScene_Text_GoIn
    WaitTime 30, VAR_0x8008
    CloseMessage
    Call _164D
    ApplyMovement 3, _01E0
    ApplyMovement 4, _01BC
    ApplyMovement 1, _01BC
    ApplyMovement 2, _01CC
    WaitMovement
    GoTo _084E
    End

_084E:
    PlaySoundEffect SEQ_SE_DP_KAIDAN2
    WaitSoundEffect SEQ_SE_DP_KAIDAN2
    FadeScreenOut
    FrontierScrCmd_67 28, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _0927
    FrontierScrCmd_25 0
    FrontierScrCmd_25 3
    FrontierScrCmd_25 4
    FrontierScrCmd_23 30
    FrontierScrCmd_67 32, 0, 0, VAR_0x8008
    FrontierScrCmd_03 4
    GetPlayerObjEventGfx VAR_0x8007
    FrontierScrCmd_22 _00F8
    FrontierScrCmd_24 _0108
    FadeScreenIn
    ApplyMovement 4, _01F4
    WaitMovement
    Call _1471
    FrontierScrCmd_67 37, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _14E6
    GoToIfEq VAR_0x8008, 2, _150B
    Call _1612
    BufferNumber 0, VAR_0x8008
    Call _09E4
    ApplyMovement 98, _021C
    WaitMovement
    WaitTime 15, VAR_0x8008
    ApplyMovement 98, _01EC
    WaitMovement
    FrontierScrCmd_67 33, 0, 0, VAR_0x8008
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
    FrontierScrCmd_67 32, 0, 0, VAR_0x8008
    FrontierScrCmd_03 4
    GetPlayerObjEventGfx VAR_0x8007
    FrontierScrCmd_22 _0100
    FrontierScrCmd_24 _0120
    FadeScreenIn
    ApplyMovement 4, _01F4
    ApplyMovement 1, _01F4
    ApplyMovement 2, _0208
    WaitMovement
    Call _1471
    Call _09FF
    ApplyMovement 98, _0230
    ApplyMovement 99, _0244
    WaitMovement
    WaitTime 15, VAR_0x8008
    ApplyMovement 98, _01EC
    WaitMovement
    FrontierScrCmd_67 33, 0, 0, VAR_0x8008
    FrontierScrCmd_6B 0
    WaitTime 30, VAR_0x8008
    CloseMessage
    ApplyMovement 99, _01EC
    WaitMovement
    FrontierScrCmd_67 33, 0, 0, VAR_0x8008
    FrontierScrCmd_6B 1
    WaitTime 30, VAR_0x8008
    CloseMessage
    MessageNoSkip BattleFactoryScene_Text_PleaseWait
    GoTo _0A41
    End

_09E4:
    FrontierScrCmd_67 20, 0, 0, VAR_0x8008
    SetVar VAR_0x800B, VAR_0x8008
    FrontierScrCmd_22 _0150
    FrontierScrCmd_24 _0160
    Return

_09FF:
    FrontierScrCmd_67 20, 0, 0, VAR_0x8008
    SetVar VAR_0x800B, VAR_0x8008
    FrontierScrCmd_22 _0150
    FrontierScrCmd_67 20, 1, 0, VAR_0x8008
    SetVar VAR_0x800C, VAR_0x8008
    FrontierScrCmd_22 _0158
    FrontierScrCmd_24 _0170
    Return

_0A2D:
    SetVar VAR_0x800B, 215
    FrontierScrCmd_22 _0150
    FrontierScrCmd_24 _0160
    Return

_0A41:
    FrontierScrCmd_67 28, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _0A92
    FrontierScrCmd_67 37, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _0A82
    GoToIfEq VAR_0x8008, 2, _0A82
    FrontierScrCmd_3F 3
    GoTo _0AD0
    End

_0A82:
    IncrementRecordValue RECORD_UNK_059
    FrontierScrCmd_47 2
    GoTo _0AD0
    End

_0A92:
    SetVar VAR_0x8002, 6
    FrontierScrCmd_69 VAR_0x8002, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 0, _0A92
    FrontierScrCmd_6A VAR_0x8002
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_67 38, 0, 0, VAR_0x8008
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 161
    ClearReceivedTempDataAllPlayers
    CloseMessage
    FrontierScrCmd_3F 3
    GoTo _0AD0
    End

_0AD0:
    FrontierScrCmd_61
    FrontierScrCmd_60
    FrontierScrCmd_67 30, 4, 0, VAR_0x8008
    FadeScreenIn
    FrontierScrCmd_68 VAR_0x8008
    GoToIfEq VAR_0x8008, 0, _1233
    IncrementRecordValue RECORD_BATTLE_FACTORY_VICTORIES
    FrontierScrCmd_67 37, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _15AA
    GoToIfEq VAR_0x8008, 2, _15DE
    Call _1612
    BufferNumber 0, VAR_0x8008
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
    FrontierScrCmd_67 14, 1, 0, VAR_0x8008
    FrontierScrCmd_67 5, 0, 0, VAR_0x8008
    FrontierScrCmd_67 23, 0, 0, VAR_0x8008
    GoToIfNe VAR_0x8008, 7, _0C17
    GoTo _0B76
    End

_0B76:
    FrontierScrCmd_71 VAR_0x8008
    GoToIfEq VAR_0x8008, 0, _0BBF
    FrontierScrCmd_70 VAR_0x8008
    CallIfEq VAR_0x8008, 0, _1132
    CallIfEq VAR_0x8008, 1, _1138
    ShowYesNoMenu VAR_0x8008, MENU_NO
    GoToIfEq VAR_0x8008, 1, _0BD9
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
    FrontierScrCmd_67 22, 0, 0, VAR_0x8008
    FrontierScrCmd_3D VAR_UNK_0x40B7, 1
    Message BattleFactoryScene_Text_BPEarned
    BufferPlayerName 0
    FrontierScrCmd_67 35, 0, 0, VAR_0x8008
    BufferNumber 1, VAR_0x8008
    GiveBattlePoints VAR_0x8008
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
    FrontierScrCmd_67 37, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _14AE
    GoToIfEq VAR_0x8008, 2, _14AE
    GoTo _0C52
    End

_0C52:
    Call _1612
    BufferNumber 0, VAR_0x8008
    GoTo _0C65
    End

_0C65:
    FrontierScrCmd_67 23, 0, 0, VAR_0x8008
    AddVar VAR_0x8008, 1
    BufferNumber 0, VAR_0x8008
    Message BattleFactoryScene_Text_AreYouReady
    GoTo _0C83
    End

_0C83:
    FrontierScrCmd_67 28, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _0CAC
    GoToIfEq VAR_0x8003, 0, _0CFC
    GoTo _0CEE
    End

_0CAC:
    FrontierScrCmd_71 VAR_0x8008
    GoToIfEq VAR_0x8008, 0, _0CD2
    GoToIfEq VAR_0x8003, 0, _0CE0
    GoTo _0CD2
    End

_0CD2:
    SetVar VAR_0x8008, 1
    GoTo _0D0A
    End

_0CE0:
    SetVar VAR_0x8008, 2
    GoTo _0D0A
    End

_0CEE:
    SetVar VAR_0x8008, 3
    GoTo _0D0A
    End

_0CFC:
    SetVar VAR_0x8008, 4
    GoTo _0D0A
    End

_0D0A:
    GoToIfEq VAR_0x8008, 1, _0D40
    GoToIfEq VAR_0x8008, 2, _0D5B
    GoToIfEq VAR_0x8008, 3, _0D7E
    GoToIfEq VAR_0x8008, 4, _0DA1
    End

_0D40:
    InitLocalTextListMenu 31, 13, 0, 0, VAR_0x800A
    SetMenuXOriginSide 1
    AddListMenuEntry BattleFactoryScene_Text_ContinueOption, 255, 0
    GoTo _0DCC
    End

_0D5B:
    InitLocalTextListMenu 31, 11, 0, 0, VAR_0x800A
    SetMenuXOriginSide 1
    AddListMenuEntry BattleFactoryScene_Text_ContinueOption, 255, 0
    AddListMenuEntry BattleFactoryScene_Text_RecordOption, 255, 1
    GoTo _0DCC
    End

_0D7E:
    InitLocalTextListMenu 31, 11, 0, 0, VAR_0x800A
    SetMenuXOriginSide 1
    AddListMenuEntry BattleFactoryScene_Text_ContinueOption, 255, 0
    AddListMenuEntry BattleFactoryScene_Text_RestOption, 255, 2
    GoTo _0DCC
    End

_0DA1:
    InitLocalTextListMenu 31, 9, 0, 0, VAR_0x800A
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
    GoToIfEq VAR_0x800A, 0, _0E1A
    GoToIfEq VAR_0x800A, 1, _1036
    GoToIfEq VAR_0x800A, 2, _113E
    GoToIfEq VAR_0x800A, 3, _1199
    GoTo _1199
    End

_0E1A:
    FrontierScrCmd_67 28, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _0E36
    GoTo _0E9F
    End

_0E36:
    BufferPartnerName 0
    Message BattleFactoryScene_Text_PartnerIsChoosing
    GoTo _0E45
    End

_0E45:
    SetVar VAR_0x8002, 4
    FrontierScrCmd_69 VAR_0x8002, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 0, _0E45
    FrontierScrCmd_6A VAR_0x8002
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_67 24, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _0E8A
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 162
    ClearReceivedTempDataAllPlayers
    GoTo _0E9F
    End

_0E8A:
    BufferPartnerName 0
    MessageNoSkip BattleFactoryScene_Text_PartnerRetired
    WaitTime 30, VAR_0x8008
    GoTo _11FE
    End

_0E9F:
    SetVar VAR_0x8003, 0
    FrontierScrCmd_64
    Call _04A9
    FrontierScrCmd_67 0, 1, 0, VAR_0x8008
    Message BattleFactoryScene_Text_TradeQuestion
    ShowYesNoMenu VAR_0x8008, MENU_YES
    GoToIfEq VAR_0x8008, 1, _0FBF
    GoTo _0ED2
    End

_0ED2:
    FrontierScrCmd_67 28, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _0EEE
    GoTo _0F23
    End

_0EEE:
    MessageNoSkip BattleFactoryScene_Text_PleaseWait
    GoTo _0EFA
    End

_0EFA:
    SetVar VAR_0x8002, 5
    FrontierScrCmd_69 VAR_0x8002, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 0, _0EFA
    FrontierScrCmd_6A VAR_0x8002
    ClearReceivedTempDataAllPlayers
    GoTo _0F23
    End

_0F23:
    FadeScreenOut
    CloseMessage
    FrontierScrCmd_67 28, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _0F4D
    GoTo _0F5D
    End

_0F4D:
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 163
    ClearReceivedTempDataAllPlayers
    GoTo _0F5D
    End

_0F5D:
    FrontierScrCmd_67 32, 0, 0, VAR_0x8008
    FrontierScrCmd_67 28, 0, 0, VAR_0x8008
    CallIfEq VAR_0x8008, 1, _0FAB
    FrontierScrCmd_62
    FrontierScrCmd_65
    FrontierScrCmd_67 31, 0, 0, VAR_0x8008
    FrontierScrCmd_67 28, 0, 0, VAR_0x8008
    CallIfEq VAR_0x8008, 1, _0FB5
    FadeScreenIn
    GoTo _102C
    End

_0FAB:
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 236
    ClearReceivedTempDataAllPlayers
    Return

_0FB5:
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 233
    ClearReceivedTempDataAllPlayers
    Return

_0FBF:
    FrontierScrCmd_67 28, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _0FDB
    GoTo _1022
    End

_0FDB:
    MessageNoSkip BattleFactoryScene_Text_PleaseWait
    GoTo _0FE5

_0FE5:
    SetVar VAR_0x8002, 5
    FrontierScrCmd_69 VAR_0x8002, 1, VAR_0x8008
    GoToIfEq VAR_0x8008, 0, _0FE5
    FrontierScrCmd_6A VAR_0x8002
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_67 26, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 0, _0F23
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
    FrontierScrCmd_70 VAR_0x8008
    CallIfEq VAR_0x8008, 0, _1132
    CallIfEq VAR_0x8008, 1, _1138
    ShowYesNoMenu VAR_0x8008, MENU_NO
    GoToIfEq VAR_0x8008, 1, _107C
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
    AddVar VAR_0x8005, 1
    GoTo _10AF
    End

_10A6:
    FrontierScrCmd_67 4, 0, 0, VAR_0x8005
    Return

_10AF:
    GoTo _10B7
    End

_10B7:
    SetVar VAR_0x8003, 1
    MessageInstant BattleFactoryScene_Text_Saving
    ShowSavingIcon
    FrontierScrCmd_3E VAR_UNK_0x40B9, VAR_0x8008
    GoToIfEq VAR_0x8008, 0, _10DE
    GoTo _10F7
    End

_10DE:
    FrontierScrCmd_67 29, 0, 0, VAR_0x8008
    FrontierScrCmd_6D 2, VAR_0x8008, VAR_0x8005, VAR_0x8005
    GoTo _1110
    End

_10F7:
    FrontierScrCmd_67 29, 0, 0, VAR_0x8008
    FrontierScrCmd_6D 3, VAR_0x8008, VAR_0x8005, VAR_0x8005
    GoTo _1110
    End

_1110:
    HideSavingIcon
    GoToIfEq VAR_0x8005, 1, _1125
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
    ShowYesNoMenu VAR_0x8008, MENU_YES
    GoToIfEq VAR_0x8008, 1, _1191
    GoTo _115C
    End

_115C:
    FrontierScrCmd_3D VAR_UNK_0x40B7, 2
    FrontierScrCmd_67 10, 0, 0, VAR_0x8008
    Call _137B
    CloseMessage
    FadeScreenOut
    FrontierScrCmd_67 32, 0, 0, VAR_0x8008
    FreeBattleRecording
    FrontierScrCmd_5E
    FrontierScrCmd_67 7, 0, 0, VAR_0x8008
    End

_1191:
    GoTo _0C29
    End

_1199:
    Message BattleFactoryScene_Text_RetireQuestion
    ShowYesNoMenu VAR_0x8008, MENU_NO
    GoToIfEq VAR_0x8008, 1, _122B
    FrontierScrCmd_67 28, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _11CF
    Message BattleFactoryScene_Text_ReturnPokemon
    GoTo _1216
    End

_11CF:
    MessageNoSkip BattleFactoryScene_Text_PleaseWait
    GoTo _11DB
    End

_11DB:
    SetVar VAR_0x8002, 4
    FrontierScrCmd_69 VAR_0x8002, 1, VAR_0x8008
    GoToIfEq VAR_0x8008, 0, _11DB
    GoTo _11FE
    End

_11FE:
    Message BattleFactoryScene_Text_ReturnPokemon
    MessageNoSkip BattleFactoryScene_Text_PleaseWait
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 168
    ClearReceivedTempDataAllPlayers
    GoTo _1216
    End

_1216:
    FrontierScrCmd_67 21, 0, 0, VAR_0x8008
    FrontierScrCmd_3D VAR_UNK_0x40B7, 3
    GoTo _12F3
    End

_122B:
    GoTo _0C29
    End

_1233:
    Call _141F
    Call _1391
    FrontierScrCmd_71 VAR_0x8008
    GoToIfEq VAR_0x8008, 0, _1288
    FrontierScrCmd_70 VAR_0x8008
    CallIfEq VAR_0x8008, 0, _1132
    CallIfEq VAR_0x8008, 1, _1138
    ShowYesNoMenu VAR_0x8008, MENU_NO
    GoToIfEq VAR_0x8008, 1, _12A2
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
    FrontierScrCmd_67 21, 0, 0, VAR_0x8008
    FrontierScrCmd_3D VAR_UNK_0x40B7, 3
    GoTo _12BF
    End

_12BF:
    Message BattleFactoryScene_Text_ReturnPokemon
    FrontierScrCmd_67 28, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _12DF
    GoTo _12F3
    End

_12DF:
    MessageNoSkip BattleFactoryScene_Text_PleaseWait
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 166
    ClearReceivedTempDataAllPlayers
    GoTo _12F3
    End

_12F3:
    Call _137B
    CloseMessage
    GoTo _1303
    End

_1303:
    FrontierScrCmd_67 28, 0, 0, VAR_0x8008
    CallIfEq VAR_0x8008, 1, _135E
    FadeScreenOut
    FrontierScrCmd_67 29, 0, 0, VAR_0x8008
    CallIfEq VAR_0x8008, 2, _1358
    FrontierScrCmd_67 29, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 3, _1368
    FrontierScrCmd_67 32, 0, 0, VAR_0x8008
    FreeBattleRecording
    FrontierScrCmd_5E
    FrontierScrCmd_02

_1358:
    FrontierScrCmd_C8 2
    Return

_135E:
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 167
    ClearReceivedTempDataAllPlayers
    Return

_1368:
    FrontierScrCmd_67 32, 0, 0, VAR_0x8008
    FreeBattleRecording
    FrontierScrCmd_5E
    FrontierScrCmd_04 14, 1
    End

_137B:
    MessageInstant BattleFactoryScene_Text_Saving2
    ShowSavingIcon
    FrontierScrCmd_73 VAR_0x8008
    HideSavingIcon
    PlaySoundEffect SEQ_SE_DP_SAVE
    WaitSoundEffect SEQ_SE_DP_SAVE
    Return

_1391:
    PlaySoundEffect SEQ_SE_DP_KAIDAN2
    WaitSoundEffect SEQ_SE_DP_KAIDAN2
    FadeScreenOut
    FrontierScrCmd_67 28, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _13EA
    FrontierScrCmd_25 0
    FrontierScrCmd_25 4
    FrontierScrCmd_03 3
    FrontierScrCmd_67 31, 0, 0, VAR_0x8008
    GetPlayerObjEventGfx VAR_0x8007
    FrontierScrCmd_22 _0008
    FrontierScrCmd_24 _0098
    FadeScreenIn
    Return

_13EA:
    FrontierScrCmd_25 1
    FrontierScrCmd_25 2
    FrontierScrCmd_25 4
    FrontierScrCmd_03 3
    FrontierScrCmd_67 31, 0, 0, VAR_0x8008
    GetPlayerObjEventGfx VAR_0x8007
    FrontierScrCmd_22 _0014
    FrontierScrCmd_24 _00BC
    FadeScreenIn
    Return

_141F:
    FrontierScrCmd_67 28, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _1447
    ApplyMovement 98, _0278
    WaitMovement
    FrontierScrCmd_25 98
    FrontierScrCmd_23 VAR_0x800B
    Return

_1447:
    Call _166A
    ApplyMovement 98, _0288
    ApplyMovement 99, _0298
    WaitMovement
    FrontierScrCmd_25 98
    FrontierScrCmd_25 99
    FrontierScrCmd_23 VAR_0x800B
    FrontierScrCmd_23 VAR_0x800C
    Return

_1471:
    FrontierScrCmd_67 30, 0, 0, VAR_0x8008
    WaitTime 3, VAR_0x8008
    FrontierScrCmd_67 30, 1, 0, VAR_0x8008
    WaitTime 3, VAR_0x8008
    FrontierScrCmd_67 30, 2, 0, VAR_0x8008
    WaitTime 3, VAR_0x8008
    FrontierScrCmd_67 30, 3, 0, VAR_0x8008
    WaitTime 3, VAR_0x8008
    FrontierScrCmd_67 30, 4, 0, VAR_0x8008
    Return

_14AE:
    GoToIfEq VAR_0x8003, 1, _0C52
    FrontierScrCmd_67 41, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _0C52
    Call _1612
    BufferNumber 0, VAR_0x8008
    Message BattleFactoryScene_Text_FactoryHeadApproaching
    GoTo _0C65
    End

_14E6:
    Call _1612
    BufferNumber 0, VAR_0x8008
    Call _154A
    Call _1530
    Message BattleFactoryScene_Text_ThortonIntro
    CloseMessage
    GoTo _091F
    End

_150B:
    Call _1612
    BufferNumber 0, VAR_0x8008
    Call _154A
    Call _1530
    Message BattleFactoryScene_Text_ThortonIntroGold
    CloseMessage
    GoTo _091F
    End

_1530:
    FrontierScrCmd_67 34, 0, 0, VAR_0x8008
    GetRandom VAR_0x8008, 90
    AddVar VAR_0x8008, 10
    BufferNumber 3, VAR_0x8008
    Return

_154A:
    Call _0A2D
    ApplyMovement 98, _0258
    WaitMovement
    ApplyMovement 4, _02A8
    WaitMovement
    InitParticleSystem 0, battle_factory_spa
    CreateParticleSystemEmitter 0, FACTORY_EMITTER_GREEN_SMOKE
    CreateParticleSystemEmitter 0, FACTORY_EMITTER_SMOKE_CLOUDS
    CreateParticleSystemEmitter 0, FACTORY_EMITTER_RISING_BLOCKS
    PlaySoundEffect SEQ_SE_PL_FAC01
    WaitTime 36, VAR_0x8008
    FrontierScrCmd_4C 0, 3, 2, 10
    WaitTime 11, VAR_0x8008
    ApplyMovement 98, _0270
    WaitMovement
    WaitForParticleSystemEmitters
    FreeParticleSystem 0
    Return

_15AA:
    Call _1612
    BufferNumber 0, VAR_0x8008
    FrontierScrCmd_3E VAR_BATTLE_FACTORY_PRINT_STATE, VAR_0x8008
    CallIfEq VAR_0x8008, 0, _15D6
    Message BattleFactoryScene_Text_BeatThorton
    CloseMessage
    GoTo _0B30
    End

_15D6:
    FrontierScrCmd_3D VAR_BATTLE_FACTORY_PRINT_STATE, 1
    Return

_15DE:
    Call _1612
    BufferNumber 0, VAR_0x8008
    FrontierScrCmd_3E VAR_BATTLE_FACTORY_PRINT_STATE, VAR_0x8008
    CallIfEq VAR_0x8008, 2, _160A
    Message BattleFactoryScene_Text_BeatThortonGold
    CloseMessage
    GoTo _0B30
    End

_160A:
    FrontierScrCmd_3D VAR_BATTLE_FACTORY_PRINT_STATE, 3
    Return

_1612:
    FrontierScrCmd_67 4, 0, 0, VAR_0x8008
    GoToIfGe VAR_0x8008, 9999, _162E
    AddVar VAR_0x8008, 1
    Return

_162E:
    Return

_1630:
    WaitTime 1, VAR_0x8008
    FrontierScrCmd_67 27, 0, 0, VAR_0x8008
    WaitTime 1, VAR_0x8008
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 195
    ClearReceivedTempDataAllPlayers
    Return

_164D:
    WaitTime 1, VAR_0x8008
    FrontierScrCmd_67 27, 0, 0, VAR_0x8008
    WaitTime 1, VAR_0x8008
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 196
    ClearReceivedTempDataAllPlayers
    Return

_166A:
    WaitTime 1, VAR_0x8008
    FrontierScrCmd_67 27, 0, 0, VAR_0x8008
    WaitTime 1, VAR_0x8008
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 197
    ClearReceivedTempDataAllPlayers
    Return

    .balign 4, 0
