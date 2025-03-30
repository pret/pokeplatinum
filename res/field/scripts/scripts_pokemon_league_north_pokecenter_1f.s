#include "macros/scrcmd.inc"
#include "res/text/bank/pokemon_league_north_pokecenter_1f.h"

    .data

    ScriptEntry _006D
    ScriptEntry _0128
    ScriptEntry _013E
    ScriptEntry _0154
    ScriptEntry _0022
    ScriptEntry _0310
    ScriptEntry _0323
    ScriptEntry _0336
    ScriptEntryEnd

_0022:
    SetFlag FLAG_UNK_0x09F4
    SetFlag FLAG_UNK_0x0282
    SetFlag FLAG_UNK_0x0283
    SetFlag FLAG_UNK_0x0284
    SetFlag FLAG_UNK_0x0285
    ClearFlag FLAG_UNK_0x0286
    ClearFlag FLAG_UNK_0x0287
    ClearFlag FLAG_UNK_0x0288
    ClearFlag FLAG_UNK_0x0289
    ClearFlag FLAG_UNK_0x00B0
    ClearFlag FLAG_UNK_0x00B1
    ClearFlag FLAG_UNK_0x00B2
    ClearFlag FLAG_UNK_0x00B3
    GoToIfSet FLAG_UNK_0x00AF, _0063
    End

_0063:
    SetObjectEventPos 0, 12, 3
    End

_006D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00AF, _00F7
    Message 2
    CloseMessage
    PlaySound SEQ_BADGE
    WaitSound
    GetPlayerDir 0x800C
    GoToIfEq 0x800C, 0, _00B8
    GoToIfEq 0x800C, 2, _00C8
    GoToIfEq 0x800C, 3, _00D8
    End

_00B8:
    ApplyMovement 0, _0104
    WaitMovement
    GoTo _00E8

_00C8:
    ApplyMovement 0, _0110
    WaitMovement
    GoTo _00E8

_00D8:
    ApplyMovement 0, _011C
    WaitMovement
    GoTo _00E8

_00E8:
    SetFlag FLAG_UNK_0x00AF
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00F7:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0104:
    MoveAction_015
    MoveAction_033
    EndMovement

    .balign 4, 0
_0110:
    MoveAction_014
    MoveAction_035
    EndMovement

    .balign 4, 0
_011C:
    MoveAction_015
    MoveAction_034
    EndMovement

_0128:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript 0x7E3
    ScrCmd_035
    PokeMartCommon
    ReleaseAll
    End

_013E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript 0x7E3
    ScrCmd_035
    PokeMartSpecialties MART_SPECIALTIES_ID_POKEMON_LEAGUE
    ReleaseAll
    End

_0154:
    LockAll
    ClearFlag FLAG_UNK_0x021D
    AddObject 5
    CallCommonScript 0x7FA
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8004, 10, _0191
    GoToIfEq 0x8004, 11, _01A1
    GoToIfEq 0x8004, 12, _01B1
    End

_0191:
    ApplyMovement 5, _02C0
    WaitMovement
    GoTo _01C1

_01A1:
    ApplyMovement 5, _02D0
    WaitMovement
    GoTo _01C1

_01B1:
    ApplyMovement 5, _02D8
    WaitMovement
    GoTo _01C1

_01C1:
    ApplyMovement LOCALID_PLAYER, _02B8
    WaitMovement
    BufferRivalName 0
    Message 0
    CloseMessage
    GetPlayerStarterSpecies 0x800C
    GoToIfEq 0x800C, SPECIES_TURTWIG, _0203
    GoToIfEq 0x800C, SPECIES_CHIMCHAR, _020F
    GoTo _01F7

_01F7:
    StartTrainerBattle TRAINER_RIVAL_POKEMON_LEAGUE_PIPLUP
    GoTo _021B

_0203:
    StartTrainerBattle TRAINER_RIVAL_POKEMON_LEAGUE_TURTWIG
    GoTo _021B

_020F:
    StartTrainerBattle TRAINER_RIVAL_POKEMON_LEAGUE_CHIMCHAR
    GoTo _021B

_021B:
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _02AC
    BufferRivalName 0
    BufferPlayerName 1
    Message 1
    CloseMessage
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8004, 10, _0266
    GoToIfEq 0x8004, 11, _0276
    GoToIfEq 0x8004, 12, _0286
    End

_0266:
    ApplyMovement 5, _02E8
    WaitMovement
    GoTo _0296

_0276:
    ApplyMovement 5, _02F8
    WaitMovement
    GoTo _0296

_0286:
    ApplyMovement 5, _0300
    WaitMovement
    GoTo _0296

_0296:
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject 5
    WaitFanfare SEQ_SE_DP_KAIDAN2
    SetVar 0x40EF, 1
    ReleaseAll
    End

_02AC:
    SetFlag FLAG_UNK_0x021D
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
_02B8:
    MoveAction_037
    EndMovement

    .balign 4, 0
_02C0:
    MoveAction_016 3
    MoveAction_018
    MoveAction_016 3
    EndMovement

    .balign 4, 0
_02D0:
    MoveAction_016 6
    EndMovement

    .balign 4, 0
_02D8:
    MoveAction_016 3
    MoveAction_019
    MoveAction_016 3
    EndMovement

    .balign 4, 0
_02E8:
    MoveAction_017 3
    MoveAction_019
    MoveAction_017 3
    EndMovement

    .balign 4, 0
_02F8:
    MoveAction_017 6
    EndMovement

    .balign 4, 0
_0300:
    MoveAction_017 3
    MoveAction_018
    MoveAction_017 3
    EndMovement

_0310:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0323:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0336:
    SetVar 0x8007, 3
    CallCommonScript 0x7D2
    End

    .byte 0
    .byte 0
