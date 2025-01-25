#include "macros/scrcmd.inc"
#include "res/text/gmm/message_bank_pokemon_league_champion_room.h"

    .data

    ScriptEntry _000A
    ScriptEntry _000E
    .short 0xFD13

_000A:
    ScrCmd_25B
    End

_000E:
    ApplyMovement 0xFF, _012C
    WaitMovement
    ScrCmd_0EA trainer_champion_cynthia
    CallIfUnset 0x964, _00EB
    CallIfSet 0x964, _00F0
    CloseMessage
    SetFlag 0x98B
    CallIfUnset 214, _00F5
    CallIfSet 214, _00FD
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, 0, _0121
    Message 1
    SetFlag 180
    CallIfUnset 214, _0105
    CallIfSet 214, _0113
    Message 2
    CloseMessage
    ApplyMovement 0, _0144
    WaitMovement
    ApplyMovement 0xFF, _0134
    WaitMovement
    ApplyMovement 0, _0150
    WaitMovement
    WaitTime 30, 0x800C
    ScrCmd_25C
    WaitTime 30, 0x800C
    SetFlag 0x23A
    SetFlag 0x23B
    ApplyMovement 0xFF, _013C
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_POKEMON_LEAGUE_ELEVATOR_TO_HALL_OF_FAME, 0, 5, 23, 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_00EB:
    Message 0
    Return

_00F0:
    Message 3
    Return

_00F5:
    StartTrainerBattle trainer_champion_cynthia
    Return

_00FD:
    StartTrainerBattle trainer_champion_cynthia_rematch
    Return

_0105:
    CreateJournalEvent LOCATION_EVENT_BEAT_CHAMPION, trainer_champion_cynthia, 0, 0, 0
    Return

_0113:
    CreateJournalEvent LOCATION_EVENT_BEAT_CHAMPION, trainer_champion_cynthia_rematch, 0, 0, 0
    Return

_0121:
    ClearFlag 0x98B
    ScrCmd_0EB
    ReleaseAll
    End

    .balign 4, 0
_012C:
    MoveAction_012 4
    EndMovement

    .balign 4, 0
_0134:
    MoveAction_012 6
    EndMovement

    .balign 4, 0
_013C:
    MoveAction_012 6
    EndMovement

    .balign 4, 0
_0144:
    MoveAction_014
    MoveAction_033
    EndMovement

    .balign 4, 0
_0150:
    MoveAction_032
    EndMovement
