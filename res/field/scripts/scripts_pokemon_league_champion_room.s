#include "macros/scrcmd.inc"
#include "res/text/bank/pokemon_league_champion_room.h"

    .data

    ScriptEntry _000A
    ScriptEntry _000E
    ScriptEntryEnd

_000A:
    InitPersistedMapFeaturesForPlatformLift
    End

_000E:
    ApplyMovement LOCALID_PLAYER, _012C
    WaitMovement
    ScrCmd_0EA TRAINER_CHAMPION_CYNTHIA
    CallIfUnset FLAG_GAME_COMPLETED, _00EB
    CallIfSet FLAG_GAME_COMPLETED, _00F0
    CloseMessage
    SetFlag FLAG_ALT_MUSIC_CHAMPION_ROOM
    CallIfUnset FLAG_UNK_0x00D6, _00F5
    CallIfSet FLAG_UNK_0x00D6, _00FD
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _0121
    Message 1
    SetFlag FLAG_UNK_0x00B4
    CallIfUnset FLAG_UNK_0x00D6, _0105
    CallIfSet FLAG_UNK_0x00D6, _0113
    Message 2
    CloseMessage
    ApplyMovement 0, _0144
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _0134
    WaitMovement
    ApplyMovement 0, _0150
    WaitMovement
    WaitTime 30, 0x800C
    ScrCmd_25C
    WaitTime 30, 0x800C
    SetFlag FLAG_UNK_0x023A
    SetFlag FLAG_UNK_0x023B
    ApplyMovement LOCALID_PLAYER, _013C
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
    StartTrainerBattle TRAINER_CHAMPION_CYNTHIA
    Return

_00FD:
    StartTrainerBattle TRAINER_CHAMPION_CYNTHIA_REMATCH
    Return

_0105:
    CreateJournalEvent LOCATION_EVENT_BEAT_CHAMPION, TRAINER_CHAMPION_CYNTHIA, 0, 0, 0
    Return

_0113:
    CreateJournalEvent LOCATION_EVENT_BEAT_CHAMPION, TRAINER_CHAMPION_CYNTHIA_REMATCH, 0, 0, 0
    Return

_0121:
    ClearFlag FLAG_ALT_MUSIC_CHAMPION_ROOM
    BlackOutFromBattle
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
