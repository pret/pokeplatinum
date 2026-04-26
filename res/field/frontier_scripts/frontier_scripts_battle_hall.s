# include "macros/frscrcmd.inc"
# include "res/graphics/frontier/particles/frontier_particles.naix"
# include "res/text/bank/battle_hall_scene.h"
# include "constants/battle_frontier_emitters.h"
# include "constants/battle_hall_functions.h"

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
    Delay8
    WarpIn
    WalkSouth 9
    Delay8
    Delay8
    WalkSouth
    WarpOut
    EndMovement

    .balign 4, 0
_0164:
    Delay8
    Delay8
    WarpIn
    WalkSouth 8
    Delay8
    Delay8
    WalkSouth 2
    WarpOut
    EndMovement

    .balign 4, 0
_0188:
    WarpIn
    WalkSouth 9
    WalkWest
    WalkOnSpotEast
    Delay4
    WalkOnSpotSouth
    EndMovement

    .balign 4, 0
_01A4:
    WalkOnSpotWest
    EndMovement

    .balign 4, 0
_01AC:
    WalkSouth 12
    EndMovement

    .balign 4, 0
_01B4:
    WalkSouth 4
    EndMovement

    .balign 4, 0
_01BC:
    WalkSouth 4
    EndMovement

    .balign 4, 0
_01C4:
    WalkSouth 4
    EndMovement

    .balign 4, 0
_01CC:
    WalkSouth 12
    WalkWest 3
    WalkOnSpotEast
    EndMovement

    .balign 4, 0
_01DC:
    WalkSouth 12
    WalkWest 3
    WalkOnSpotEast
    EndMovement

    .balign 4, 0
_01EC:
    WalkSouth 13
    WalkWest 2
    WalkSouth
    WalkWest
    WalkOnSpotEast
    EndMovement

    .balign 4, 0
_0204:
    WalkSouth 11
    WalkWest 5
    WalkOnSpotEast
    EndMovement

    .balign 4, 0
_0214:
    WalkEast
    EndMovement

    .balign 4, 0
_021C:
    WalkEast
    EndMovement

    .balign 4, 0
_0224:
    WalkWest
    EndMovement

    .balign 4, 0
_022C:
    WalkWest 5
    EndMovement

    .balign 4, 0
_0234:
    WalkEast 5
    WalkOnSpotWest
    EndMovement

    .balign 4, 0
_0240:
    WarpIn
    WalkSouth 6
    WalkEast 3
    WalkOnSpotWest
    EndMovement

    .balign 4, 0
_0254:
    WarpIn
    WalkSouth 6
    WalkEast 3
    WalkSouth 1
    WalkOnSpotWest
    EndMovement

    .balign 4, 0
_026C:
    WarpIn
    WalkSouth 7
    WalkEast 3
    WalkOnSpotWest
    EndMovement

    .balign 4, 0
_0280:
    WarpOut
    WalkNorth 6
    WalkOnSpotSouth
    Delay32
    Delay32
    EndMovement

    .balign 4, 0
_0298:
    WalkSouth 4
    WalkOnSpotWest
    EndMovement

    .balign 4, 0
_02A4:
    WalkSouth 4
    WalkOnSpotEast
    EndMovement

    .balign 4, 0
_02B0:
    WalkSouth 4
    WalkEast 3
    WalkOnSpotWest
    EndMovement

    .balign 4, 0
_02C0:
    WarpIn
    EndMovement

    .balign 4, 0
_02C8:
    WalkWest 2
    WalkNorth 7
    WarpOut
    EndMovement

    .balign 4, 0
_02D8:
    WalkNorth
    WalkWest 2
    WalkNorth 8
    WarpOut
    EndMovement

    .balign 4, 0
_02EC:
    WalkWest 2
    WalkNorth 8
    WarpOut
    EndMovement

    .balign 4, 0
_02FC:
    WalkEast
    EndMovement

    .balign 4, 0
_0304:
    WalkWest
    EndMovement

    .balign 4, 0
_030C:
    WalkWest
    WalkOnSpotEast
    EndMovement

    .balign 4, 0
_0318:
    WalkNorth 12
    EndMovement

    .balign 4, 0
_0320:
    WalkOnSpotEast
    EndMovement

_0326:
    FrontierScrCmd_3E VAR_BATTLE_HALL_CHALLENGE_TYPE, VAR_0x8001
    FrontierScrCmd_3E VAR_MAP_LOCAL_3, VAR_0x8003
    FrontierScrCmd_3E VAR_MAP_LOCAL_2, VAR_0x8002
    FrontierScrCmd_3E VAR_MAP_LOCAL_5, VAR_0x8000
    GetPlayerObjEventGfx VAR_0x800A
    SetVar FR_VAR_0x800E, 0
    InitNewBattleRecording
    FrontierScrCmd_8B VAR_0x8003, VAR_0x8001, VAR_0x8002, VAR_0x8000
    CallBattleHallFunction BH_FUNC_IS_MULTIPLAYER_CHALLENGE, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _0382
    SetVar FR_VAR_0x800F, 231
    FrontierScrCmd_22 _0008
    FrontierScrCmd_24 _0038
    GoTo _03A6
    End

_0382:
    Call _13E1
    IncrementTrainerScore TRAINER_SCORE_EVENT_UNK_43
    SetVar FR_VAR_0x800F, 232
    FrontierScrCmd_22 _0010
    FrontierScrCmd_24 _005C
    GoTo _03A6
    End

_03A6:
    FadeScreenIn
    CallBattleHallFunction BH_FUNC_IS_MULTIPLAYER_CHALLENGE, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _0404
    ApplyMovement 3, _0188
    ApplyMovement 10, _0144
    WaitMovement
    PlaySoundEffect SEQ_SE_DP_KAIDAN2
    WaitSoundEffect SEQ_SE_DP_KAIDAN2
    FadeScreenOut
    FrontierScrCmd_25 0
    FrontierScrCmd_25 3
    FrontierScrCmd_25 10
    FrontierScrCmd_23 FR_VAR_0x800F
    GoTo _044A
    End

_0404:
    ApplyMovement 3, _0188
    ApplyMovement 1, _0144
    ApplyMovement 2, _0164
    WaitMovement
    PlaySoundEffect SEQ_SE_DP_KAIDAN2
    WaitSoundEffect SEQ_SE_DP_KAIDAN2
    FadeScreenOut
    FrontierScrCmd_25 1
    FrontierScrCmd_25 2
    FrontierScrCmd_25 3
    FrontierScrCmd_23 FR_VAR_0x800F
    GoTo _044A
    End

_044A:
    FrontierScrCmd_03 10
    CallBattleHallFunction BH_FUNC_IS_MULTIPLAYER_CHALLENGE, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _0476
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
    FrontierScrCmd_45 VAR_0x8002, 128, 56, 0xC350, 0, 0
    InitParticleSystem 0, battle_hall_spa
    CreateParticleSystemEmitter 0, HALL_EMITTER_UNK_18
    CreateParticleSystemEmitter 0, HALL_EMITTER_UNK_19
    Call _10C8
    FadeScreenIn
    FrontierScrCmd_4E 72, 160, 230, 192, 0, 1
    GoTo _04D4
    End

_04D4:
    GoTo _04DC
    End

_04DC:
    SetVar VAR_0x8003, 0
    CallBattleHallFunction BH_FUNC_IS_MULTIPLAYER_CHALLENGE, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _0510
    ApplyMovement 0, _01AC
    ApplyMovement 10, _01CC
    WaitMovement
    GoTo _0532
    End

_0510:
    ApplyMovement 0, _01AC
    ApplyMovement 1, _01DC
    ApplyMovement 2, _01EC
    WaitMovement
    GoTo _0532
    End

_0532:
    FrontierScrCmd_4E 10, 160, 230, 192, 0, 0
    CreateParticleSystemEmitter 0, HALL_EMITTER_UNK_20
    WaitTime 30, VAR_0x8008
    FadeScreenOut COLOR_WHITE
    CallBattleHallFunction BH_FUNC_TOGGLE_ENGINE_LAYER, 0, 0, VAR_0x8008
    FreeParticleSystem 0
    FadeScreenIn COLOR_WHITE
    FrontierScrCmd_46 0xC350
    CallBattleHallFunction BH_FUNC_UNK_23, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 0, _0595
    SetVar VAR_0x8003, 1
    GoTo _0B48
    End

_0595:
    Message BattleHallScene_Text_ChooseType
    CallBattleHallFunction BH_FUNC_UNK_35, 0, 0, VAR_0x8008
    CallBattleHallFunction BH_FUNC_IS_MULTIPLAYER_CHALLENGE, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _05BC
    GoTo _0611
    End

_05BC:
    MessageNoSkip BattleHallScene_Text_PleaseWait
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 220
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_C9 1
    GoTo _05D4
    End

_05D4:
    SetVar VAR_0x8006, 7
    FrontierScrCmd_93 VAR_0x8006, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 0, _05D4
    FrontierScrCmd_94 VAR_0x8006
    ClearReceivedTempDataAllPlayers
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 221
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_C9 0
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 100
    ClearReceivedTempDataAllPlayers
    GoTo _0611
    End

_0611:
    FadeScreenOut
    CloseMessage
    CallBattleHallFunction BH_FUNC_IS_MULTIPLAYER_CHALLENGE, 0, 0, VAR_0x8008
    CallIfEq VAR_0x8008, 1, _065B
    OpenBattleHallApp
    CallBattleHallFunction BH_FUNC_TOGGLE_ENGINE_LAYER, 0, 0, VAR_0x8008
    CallBattleHallFunction BH_FUNC_SET_BASE_LEVEL, 0, 0, VAR_0x8008
    FadeScreenIn
    FrontierScrCmd_8C VAR_0x8003
    GoTo _0665
    End

_065B:
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 224
    ClearReceivedTempDataAllPlayers
    Return

_0665:
    CallBattleHallFunction BH_FUNC_IS_MULTIPLAYER_CHALLENGE, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _0708
    CallIfNe FR_VAR_0x800E, 0, _080D
    SetVar FR_VAR_0x800E, 1
    CallBattleHallFunction BH_FUNC_UNK_37, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _1199
    GoToIfEq VAR_0x8008, 2, _11BE
    Call _13C3
    BufferNumber 0, VAR_0x8008
    Call _083D
    ApplyMovement 98, _0240
    WaitMovement
    WaitTime 15, VAR_0x8008
    ApplyMovement 98, _01A4
    WaitMovement
    CallBattleHallFunction BH_FUNC_UNK_32, 0, 0, VAR_0x8008
    FrontierScrCmd_95 0
    WaitABPress
    CloseMessage
    ApplyMovement 10, _0214
    ApplyMovement 98, _0224
    WaitMovement
    GoTo _0700
    End

_0700:
    GoTo _08A0
    End

_0708:
    CallIfNe FR_VAR_0x800E, 0, _0821
    SetVar FR_VAR_0x800E, 1
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 223
    ClearReceivedTempDataAllPlayers
    Call _13FE
    GoTo _0731
    End

_0731:
    SetVar VAR_0x8006, 1
    FrontierScrCmd_93 VAR_0x8006, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 0, _0731
    FrontierScrCmd_94 VAR_0x8006
    ClearReceivedTempDataAllPlayers
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 222
    ClearReceivedTempDataAllPlayers
    GoTo _0762
    End

_0762:
    SetVar VAR_0x8006, 2
    FrontierScrCmd_93 VAR_0x8006, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 0, _0762
    FrontierScrCmd_94 VAR_0x8006
    ClearReceivedTempDataAllPlayers
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 103
    Call _0858
    ApplyMovement 98, _0254
    ApplyMovement 99, _026C
    WaitMovement
    WaitTime 15, VAR_0x8008
    ApplyMovement 98, _01A4
    WaitMovement
    CallBattleHallFunction BH_FUNC_UNK_32, 0, 0, VAR_0x8008
    FrontierScrCmd_95 0
    WaitTime 30, VAR_0x8008
    CloseMessage
    ApplyMovement 99, _01A4
    WaitMovement
    CallBattleHallFunction BH_FUNC_UNK_32, 0, 0, VAR_0x8008
    FrontierScrCmd_95 1
    WaitTime 30, VAR_0x8008
    CloseMessage
    ApplyMovement 1, _0214
    ApplyMovement 2, _021C
    ApplyMovement 98, _0224
    ApplyMovement 99, _0224
    WaitMovement
    MessageNoSkip BattleHallScene_Text_PleaseWait
    GoTo _08A0
    End

_080D:
    ApplyMovement 10, _0320
    ApplyMovement 11, _030C
    WaitMovement
    Return

_0821:
    ApplyMovement 1, _0320
    ApplyMovement 2, _0320
    ApplyMovement 11, _030C
    WaitMovement
    Return

_083D:
    CallBattleHallFunction BH_FUNC_UNK_20, 0, 0, VAR_0x8008
    SetVar VAR_0x800B, VAR_0x8008
    FrontierScrCmd_22 _0114
    FrontierScrCmd_24 _0124
    Return

_0858:
    CallBattleHallFunction BH_FUNC_UNK_20, 0, 0, VAR_0x8008
    SetVar VAR_0x800B, VAR_0x8008
    FrontierScrCmd_22 _0114
    FrontierScrCmd_24 _0124
    CallBattleHallFunction BH_FUNC_UNK_20, 1, 0, VAR_0x8008
    SetVar VAR_0x800C, VAR_0x8008
    FrontierScrCmd_22 _011C
    FrontierScrCmd_24 _0134
    Return

_088C:
    SetVar VAR_0x800B, 216
    FrontierScrCmd_22 _0114
    FrontierScrCmd_24 _0124
    Return

_08A0:
    CallBattleHallFunction BH_FUNC_IS_MULTIPLAYER_CHALLENGE, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _08F1
    CallBattleHallFunction BH_FUNC_UNK_37, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _08E1
    GoToIfEq VAR_0x8008, 2, _08E1
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
    SyncConnectedPlayers 101
    ClearReceivedTempDataAllPlayers
    CloseMessage
    FrontierScrCmd_3F 1
    GoTo _0907
    End

_0907:
    BattleHall_StartBattle
    BattleHall_CheckWonBattle
    CallBattleHallFunction BH_FUNC_UPDATE_HELD_ITEMS, 0, 0, VAR_0x8008
    CallBattleHallFunction BH_FUNC_TOGGLE_ENGINE_LAYER, 0, 0, VAR_0x8008
    FadeScreenIn
    BattleHall_GetBattleResult VAR_0x8008
    GoToIfEq VAR_0x8008, 0, _0F5D
    IncrementRecordValue RECORD_BATTLE_HALL_VICTORIES
    CallBattleHallFunction BH_FUNC_UNK_28, 0, 0, VAR_0x8008
    CallBattleHallFunction BH_FUNC_UNK_33, 0, 0, VAR_0x8008
    CallIfEq VAR_0x8008, 10, _09B1
    CallBattleHallFunction BH_FUNC_IS_MULTIPLAYER_CHALLENGE, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _09E3
    CallBattleHallFunction BH_FUNC_UNK_37, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _1333
    GoToIfEq VAR_0x8008, 2, _137B
    Call _13C3
    BufferNumber 0, VAR_0x8008
    InitParticleSystem 0, battle_hall_spa
    Call _1125
    WaitForParticleSystemEmitters
    FreeParticleSystem 0
    GoTo _09B7
    End

_09B1:
    IncrementRecordValue RECORD_UNK_066
    Return

_09B7:
    ApplyMovement 98, _02C8
    WaitMovement
    FrontierScrCmd_25 98
    FrontierScrCmd_23 VAR_0x800B
    ApplyMovement 11, _02FC
    ApplyMovement 10, _0304
    WaitMovement
    GoTo _0A41
    End

_09E3:
    InitParticleSystem 0, battle_hall_spa
    Call _1125
    WaitForParticleSystemEmitters
    FreeParticleSystem 0
    Call _141B
    ApplyMovement 98, _02D8
    ApplyMovement 99, _02EC
    WaitMovement
    FrontierScrCmd_25 98
    FrontierScrCmd_25 99
    FrontierScrCmd_23 VAR_0x800B
    FrontierScrCmd_23 VAR_0x800C
    ApplyMovement 11, _02FC
    ApplyMovement 1, _0304
    ApplyMovement 2, _0304
    WaitMovement
    GoTo _0A41
    End

_0A41:
    GoTo _0A49
    End

_0A49:
    CallBattleHallFunction BH_FUNC_UNK_14, 1, 0, VAR_0x8008
    CallBattleHallFunction BH_FUNC_INCREMENT_CURRENT_STEAK, 0, 0, VAR_0x8008
    CallBattleHallFunction BH_FUNC_UNK_23, 0, 0, VAR_0x8008
    GoToIfNe VAR_0x8008, 10, _0B25
    GoTo _0A73
    End

_0A73:
    FrontierScrCmd_71 VAR_0x8008
    GoToIfEq VAR_0x8008, 0, _0ABC
    FrontierScrCmd_70 VAR_0x8008
    CallIfEq VAR_0x8008, 0, _0E6F
    CallIfEq VAR_0x8008, 1, _0E75
    ShowYesNoMenu VAR_0x8008, MENU_NO
    GoToIfEq VAR_0x8008, 1, _0AD6
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
    CallBattleHallFunction BH_FUNC_UNK_22, 0, 0, VAR_0x8008
    FrontierScrCmd_3D VAR_BATTLE_HALL_LOBBY_LOAD_ACTION, 1
    CallBattleHallFunction BH_FUNC_UNK_15, 0, 0, VAR_0x8008
    BufferSpeciesName 0, VAR_0x8008
    Message BattleHallScene_Text_BPEarned
    BufferPlayerName 0
    CallBattleHallFunction BH_FUNC_UNK_34, 0, 0, VAR_0x8008
    BufferNumber 1, VAR_0x8008
    GiveBattlePoints VAR_0x8008
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
    CallBattleHallFunction BH_FUNC_UNK_15, 0, 0, VAR_0x8008
    BufferSpeciesName 0, VAR_0x8008
    Message BattleHallScene_Text_FullRestore
    PlayFanfare SEQ_ASA
    WaitFanfare
    HealParty
    GoTo _0B48
    End

_0B48:
    Call _13C3
    BufferNumber 0, VAR_0x8008
    GoTo _0B5B
    End

_0B5B:
    CallBattleHallFunction BH_FUNC_UNK_23, 0, 0, VAR_0x8008
    AddVar VAR_0x8008, 1
    BufferNumber 0, VAR_0x8008
    Message BattleHallScene_Text_AreYouReady
    GoTo _0B79
    End

_0B79:
    CallBattleHallFunction BH_FUNC_IS_MULTIPLAYER_CHALLENGE, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _0BA2
    GoToIfEq VAR_0x8003, 0, _0BF2
    GoTo _0BE4
    End

_0BA2:
    FrontierScrCmd_71 VAR_0x8008
    GoToIfEq VAR_0x8008, 0, _0BC8
    GoToIfEq VAR_0x8003, 0, _0BD6
    GoTo _0BC8
    End

_0BC8:
    SetVar VAR_0x8008, 1
    GoTo _0C00
    End

_0BD6:
    SetVar VAR_0x8008, 2
    GoTo _0C00
    End

_0BE4:
    SetVar VAR_0x8008, 3
    GoTo _0C00
    End

_0BF2:
    SetVar VAR_0x8008, 4
    GoTo _0C00
    End

_0C00:
    GoToIfEq VAR_0x8008, 1, _0C36
    GoToIfEq VAR_0x8008, 2, _0C51
    GoToIfEq VAR_0x8008, 3, _0C74
    GoToIfEq VAR_0x8008, 4, _0C97
    End

_0C36:
    InitLocalTextListMenu 31, 13, 0, 0, VAR_0x8009
    SetMenuXOriginSide 1
    AddListMenuEntry BattleHallScene_Text_ContinueOption, 255, 0
    GoTo _0CC2
    End

_0C51:
    InitLocalTextListMenu 31, 11, 0, 0, VAR_0x8009
    SetMenuXOriginSide 1
    AddListMenuEntry BattleHallScene_Text_ContinueOption, 255, 0
    AddListMenuEntry BattleHallScene_Text_RecordOption, 255, 1
    GoTo _0CC2
    End

_0C74:
    InitLocalTextListMenu 31, 11, 0, 0, VAR_0x8009
    SetMenuXOriginSide 1
    AddListMenuEntry BattleHallScene_Text_ContinueOption, 255, 0
    AddListMenuEntry BattleHallScene_Text_RestOption, 255, 2
    GoTo _0CC2
    End

_0C97:
    InitLocalTextListMenu 31, 9, 0, 0, VAR_0x8009
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
    GoToIfEq VAR_0x8009, 0, _0D10
    GoToIfEq VAR_0x8009, 1, _0DAF
    GoToIfEq VAR_0x8009, 2, _0E7B
    GoToIfEq VAR_0x8009, 3, _0ECF
    GoTo _0ECF
    End

_0D10:
    CallBattleHallFunction BH_FUNC_IS_MULTIPLAYER_CHALLENGE, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _0D2C
    GoTo _0D99
    End

_0D2C:
    BufferPartnerName 0
    Message BattleHallScene_Text_PartnerIsChoosing
    GoTo _0D3B
    End

_0D3B:
    SetVar VAR_0x8006, 3
    FrontierScrCmd_93 VAR_0x8006, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 0, _0D3B
    FrontierScrCmd_94 VAR_0x8006
    ClearReceivedTempDataAllPlayers
    CallBattleHallFunction BH_FUNC_UNK_24, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _0D80
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 102
    ClearReceivedTempDataAllPlayers
    GoTo _0D99
    End

_0D80:
    BufferPartnerName 0
    MessageNoSkip BattleHallScene_Text_PartnerRetired
    WaitTime 30, VAR_0x8008
    MessageNoSkip BattleHallScene_Text_PleaseWait
    GoTo _0F30
    End

_0D99:
    SetVar VAR_0x8003, 0
    GoTo _0DA7
    End

_0DA7:
    GoTo _0595
    End

_0DAF:
    FrontierScrCmd_70 VAR_0x8008
    CallIfEq VAR_0x8008, 0, _0E6F
    CallIfEq VAR_0x8008, 1, _0E75
    ShowYesNoMenu VAR_0x8008, MENU_NO
    GoToIfEq VAR_0x8008, 1, _0DF5
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
    AddVar VAR_0x8005, 1
    GoTo _0E28
    End

_0E1F:
    CallBattleHallFunction BH_FUNC_GET_CURRENT_STREAK, 0, 0, VAR_0x8005
    Return

_0E28:
    GoTo _0E30
    End

_0E30:
    SetVar VAR_0x8003, 1
    MessageInstant BattleHallScene_Text_Saving
    CallBattleHallFunction BH_FUNC_GET_CHALLENGE_TYPE, 0, 0, VAR_0x8008
    ShowSavingIcon
    FrontierScrCmd_6D 5, VAR_0x8008, VAR_0x8005, VAR_0x8005
    HideSavingIcon
    GoToIfEq VAR_0x8005, 1, _0E62
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
    ShowYesNoMenu VAR_0x8008, MENU_YES
    GoToIfEq VAR_0x8008, 1, _0EC7
    GoTo _0E99
    End

_0E99:
    FrontierScrCmd_3D VAR_BATTLE_HALL_LOBBY_LOAD_ACTION, 2
    CallBattleHallFunction BH_FUNC_UNK_10, 0, 0, VAR_0x8008
    Call _1087
    FreeBattleRecording
    FrontierScrCmd_8D
    FadeScreenOut
    CloseMessage
    CallBattleHallFunction BH_FUNC_RESET_SYSTEM, 0, 0, VAR_0x8008
    End

_0EC7:
    GoTo _0B48
    End

_0ECF:
    Message BattleHallScene_Text_RetireQuestion
    ShowYesNoMenu VAR_0x8008, MENU_NO
    GoToIfEq VAR_0x8008, 1, _0F55
    CallBattleHallFunction BH_FUNC_IS_MULTIPLAYER_CHALLENGE, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _0F01
    GoTo _0F40
    End

_0F01:
    MessageNoSkip BattleHallScene_Text_PleaseWait
    GoTo _0F0D
    End

_0F0D:
    SetVar VAR_0x8006, 3
    FrontierScrCmd_93 VAR_0x8006, 1, VAR_0x8008
    GoToIfEq VAR_0x8008, 0, _0F0D
    GoTo _0F30
    End

_0F30:
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 107
    ClearReceivedTempDataAllPlayers
    GoTo _0F40
    End

_0F40:
    CallBattleHallFunction BH_FUNC_UNK_21, 0, 0, VAR_0x8008
    FrontierScrCmd_3D VAR_BATTLE_HALL_LOBBY_LOAD_ACTION, 3
    GoTo _100D
    End

_0F55:
    GoTo _0B48
    End

_0F5D:
    FrontierScrCmd_71 VAR_0x8008
    GoToIfEq VAR_0x8008, 0, _0FA6
    FrontierScrCmd_70 VAR_0x8008
    CallIfEq VAR_0x8008, 0, _0E6F
    CallIfEq VAR_0x8008, 1, _0E75
    ShowYesNoMenu VAR_0x8008, MENU_NO
    GoToIfEq VAR_0x8008, 1, _0FC0
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
    CallBattleHallFunction BH_FUNC_UNK_21, 0, 0, VAR_0x8008
    FrontierScrCmd_3D VAR_BATTLE_HALL_LOBBY_LOAD_ACTION, 3
    GoTo _0FDD
    End

_0FDD:
    CallBattleHallFunction BH_FUNC_IS_MULTIPLAYER_CHALLENGE, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _0FF9
    GoTo _100D
    End

_0FF9:
    MessageNoSkip BattleHallScene_Text_PleaseWait
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 105
    ClearReceivedTempDataAllPlayers
    GoTo _100D
    End

_100D:
    Call _109F
    CloseMessage
    GoTo _101D
    End

_101D:
    CallBattleHallFunction BH_FUNC_IS_MULTIPLAYER_CHALLENGE, 0, 0, VAR_0x8008
    CallIfEq VAR_0x8008, 1, _1071
    FadeScreenOut
    CallBattleHallFunction BH_FUNC_GET_CHALLENGE_TYPE, 0, 0, VAR_0x8008
    CallIfEq VAR_0x8008, 2, _106B
    CallBattleHallFunction BH_FUNC_GET_CHALLENGE_TYPE, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 3, _107B
    FreeBattleRecording
    FrontierScrCmd_8D
    FrontierScrCmd_02

_106B:
    FrontierScrCmd_C8 5
    Return

_1071:
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 106
    ClearReceivedTempDataAllPlayers
    Return

_107B:
    FreeBattleRecording
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
    BattleHall_UpdateWinRecord VAR_0x8008
    CallIfEq VAR_0x8008, 0, _10C2
    HideSavingIcon
    PlaySoundEffect SEQ_SE_DP_SAVE
    WaitSoundEffect SEQ_SE_DP_SAVE
    Return

_10C2:
    FrontierScrCmd_73 VAR_0x8008
    Return

_10C8:
    PlaySoundEffect SEQ_SE_DP_DENDOU
    CallBattleHallFunction BH_FUNC_UNK_19, 0, 0, VAR_0x8008
    GoToIfLt VAR_0x8008, 2, _10F5
    GoToIfLt VAR_0x8008, 5, _1109
    GoTo _1117
    End

_10F5:
    CreateParticleSystemEmitter 0, HALL_EMITTER_UNK_13
    CreateParticleSystemEmitter 0, HALL_EMITTER_UNK_14
    CreateParticleSystemEmitter 0, HALL_EMITTER_UNK_8
    Return

_1109:
    CreateParticleSystemEmitter 0, HALL_EMITTER_UNK_9
    CreateParticleSystemEmitter 0, HALL_EMITTER_UNK_10
    Return

_1117:
    CreateParticleSystemEmitter 0, HALL_EMITTER_UNK_11
    CreateParticleSystemEmitter 0, HALL_EMITTER_UNK_12
    Return

_1125:
    CallBattleHallFunction BH_FUNC_UNK_23, 0, 0, VAR_0x8008
    AddVar VAR_0x8008, 1
    GoToIfEq VAR_0x8008, 10, _1159
    PlaySoundEffect SEQ_SE_DP_UG_022
    CreateParticleSystemEmitter 0, HALL_EMITTER_UNK_2
    CreateParticleSystemEmitter 0, HALL_EMITTER_UNK_3
    WaitSoundEffect SEQ_SE_DP_UG_022
    PlaySoundEffect SEQ_SE_DP_DENDOU
    Return

_1159:
    PlaySoundEffect SEQ_SE_DP_UG_022
    CreateParticleSystemEmitter 0, HALL_EMITTER_UNK_4
    CreateParticleSystemEmitter 0, HALL_EMITTER_UNK_6
    WaitSoundEffect SEQ_SE_DP_UG_022
    PlaySoundEffect SEQ_SE_DP_DENDOU
    Return

_1173:
    PlaySoundEffect SEQ_SE_DP_UG_022
    CreateParticleSystemEmitter 0, HALL_EMITTER_UNK_4
    CreateParticleSystemEmitter 0, HALL_EMITTER_UNK_6
    CreateParticleSystemEmitter 0, HALL_EMITTER_UNK_0
    CreateParticleSystemEmitter 0, HALL_EMITTER_UNK_1
    WaitSoundEffect SEQ_SE_DP_UG_022
    PlaySoundEffect SEQ_SE_DP_DENDOU
    Return

_1199:
    Call _13C3
    BufferNumber 0, VAR_0x8008
    Call _1207
    Message BattleHallScene_Text_ArgentaIntro
    CloseMessage
    Call _11E3
    GoTo _0700
    End

_11BE:
    Call _13C3
    BufferNumber 0, VAR_0x8008
    Call _1207
    Message BattleHallScene_Text_ArgentaIntroGold
    CloseMessage
    Call _11E3
    GoTo _0700
    End

_11E3:
    ApplyMovement 98, _0234
    WaitMovement
    WaitTime 30, VAR_0x8008
    ApplyMovement 10, _0214
    ApplyMovement 98, _0224
    WaitMovement
    Return

_1207:
    Call _088C
    CallBattleHallFunction BH_FUNC_TOGGLE_ENGINE_LAYER, 1, 0, VAR_0x8008
    FrontierScrCmd_45 VAR_0x8002, 128, 56, 0xC350, 0, 0
    FrontierScrCmd_4E 10, 160, 230, 192, 0, 0
    WaitTime 10, VAR_0x8008
    FrontierScrCmd_4E 10, 160, 230, 192, 54, 1
    ApplyMovement 98, _0280
    ApplyMovement 0, _0318
    WaitMovement
    InitParticleSystem 0, battle_hall_spa
    CreateParticleSystemEmitter 0, HALL_EMITTER_UNK_16
    CreateParticleSystemEmitter 0, HALL_EMITTER_UNK_17
    WaitTime 90, VAR_0x8008
    CreateParticleSystemEmitter 0, HALL_EMITTER_UNK_18
    ApplyMovement 98, _02C0
    WaitMovement
    PlaySoundEffect SEQ_SE_DP_DENDOU
    WaitSoundEffect SEQ_SE_DP_DENDOU
    ApplyMovement 0, _01B4
    ApplyMovement 98, _0298
    WaitMovement
    PlaySoundEffect SEQ_SE_DP_DENDOU
    CreateParticleSystemEmitter 0, HALL_EMITTER_UNK_11
    CreateParticleSystemEmitter 0, HALL_EMITTER_UNK_12
    WaitSoundEffect SEQ_SE_DP_DENDOU
    FrontierScrCmd_4E 10, 160, 230, 192, 10, 0
    ApplyMovement 0, _01BC
    ApplyMovement 98, _02A4
    WaitMovement
    PlaySoundEffect SEQ_SE_DP_DENDOU
    CreateParticleSystemEmitter 0, HALL_EMITTER_UNK_11
    CreateParticleSystemEmitter 0, HALL_EMITTER_UNK_12
    WaitSoundEffect SEQ_SE_DP_DENDOU
    ApplyMovement 0, _01C4
    ApplyMovement 98, _02B0
    WaitMovement
    FrontierScrCmd_46 0xC350
    CreateParticleSystemEmitter 0, HALL_EMITTER_UNK_20
    WaitTime 30, VAR_0x8008
    FadeScreenOut COLOR_WHITE
    CallBattleHallFunction BH_FUNC_TOGGLE_ENGINE_LAYER, 0, 0, VAR_0x8008
    FreeParticleSystem 0
    FadeScreenIn COLOR_WHITE
    ApplyMovement 98, _022C
    WaitMovement
    Return

_1333:
    Call _13C3
    BufferNumber 0, VAR_0x8008
    InitParticleSystem 0, battle_hall_spa
    Call _1173
    WaitForParticleSystemEmitters
    FreeParticleSystem 0
    FrontierScrCmd_3E VAR_BATTLE_HALL_PRINT_STATE, VAR_0x8008
    CallIfEq VAR_0x8008, 0, _1373
    Message BattleHallScene_Text_BeatArgenta
    CloseMessage
    GoTo _09B7
    End

_1373:
    FrontierScrCmd_3D VAR_BATTLE_HALL_PRINT_STATE, 1
    Return

_137B:
    Call _13C3
    BufferNumber 0, VAR_0x8008
    InitParticleSystem 0, battle_hall_spa
    Call _1173
    WaitForParticleSystemEmitters
    FreeParticleSystem 0
    FrontierScrCmd_3E VAR_BATTLE_HALL_PRINT_STATE, VAR_0x8008
    CallIfEq VAR_0x8008, 2, _13BB
    Message BattleHallScene_Text_BeatArgentaGold
    CloseMessage
    GoTo _09B7
    End

_13BB:
    FrontierScrCmd_3D VAR_BATTLE_HALL_PRINT_STATE, 3
    Return

_13C3:
    CallBattleHallFunction BH_FUNC_GET_CURRENT_STREAK, 0, 0, VAR_0x8008
    GoToIfGe VAR_0x8008, 9999, _13DF
    AddVar VAR_0x8008, 1
    Return

_13DF:
    Return

_13E1:
    WaitTime 1, VAR_0x8008
    CallBattleHallFunction BH_FUNC_UNK_29, 0, 0, VAR_0x8008
    WaitTime 1, VAR_0x8008
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 185
    ClearReceivedTempDataAllPlayers
    Return

_13FE:
    WaitTime 1, VAR_0x8008
    CallBattleHallFunction BH_FUNC_UNK_29, 0, 0, VAR_0x8008
    WaitTime 1, VAR_0x8008
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 186
    ClearReceivedTempDataAllPlayers
    Return

_141B:
    WaitTime 1, VAR_0x8008
    CallBattleHallFunction BH_FUNC_UNK_29, 0, 0, VAR_0x8008
    WaitTime 1, VAR_0x8008
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 187
    ClearReceivedTempDataAllPlayers
    Return

    .balign 4, 0
