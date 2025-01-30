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
    .short 0xFD13

_0022:
    SetFlag 0x9F4
    SetFlag 0x282
    SetFlag 0x283
    SetFlag 0x284
    SetFlag 0x285
    ClearFlag 0x286
    ClearFlag 0x287
    ClearFlag 0x288
    ClearFlag 0x289
    ClearFlag 176
    ClearFlag 177
    ClearFlag 178
    ClearFlag 179
    GoToIfSet 175, _0063
    End

_0063:
    ScrCmd_186 0, 12, 3
    End

_006D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 175, _00F7
    Message 2
    CloseMessage
    PlaySound SEQ_BADGE
    WaitSound
    ScrCmd_1BD 0x800C
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
    SetFlag 175
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
    ScrCmd_147 1
    ReleaseAll
    End

_013E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript 0x7E3
    ScrCmd_035
    ScrCmd_148 18
    ReleaseAll
    End

_0154:
    LockAll
    ClearFlag 0x21D
    ScrCmd_064 5
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
    ApplyMovement 0xFF, _02B8
    WaitMovement
    BufferRivalName 0
    Message 0
    CloseMessage
    ScrCmd_0DE 0x800C
    GoToIfEq 0x800C, 0x183, _0203
    GoToIfEq 0x800C, 0x186, _020F
    GoTo _01F7

_01F7:
    StartTrainerBattle trainer_rival_pokemon_league_piplup
    GoTo _021B

_0203:
    StartTrainerBattle trainer_rival_pokemon_league_turtwig
    GoTo _021B

_020F:
    StartTrainerBattle trainer_rival_pokemon_league_chimchar
    GoTo _021B

_021B:
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, 0, _02AC
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
    ScrCmd_065 5
    WaitFanfare SEQ_SE_DP_KAIDAN2
    SetVar 0x40EF, 1
    ReleaseAll
    End

_02AC:
    SetFlag 0x21D
    ScrCmd_0EB
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
