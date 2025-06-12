#include "macros/scrcmd.inc"
#include "res/text/bank/pokemon_league_flint_room.h"

    .data

    ScriptEntry _000A
    ScriptEntry _0138
    ScriptEntryEnd

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00B2, _00D2
    PlayTrainerEncounterBGM TRAINER_ELITE_FOUR_FLINT
    CallIfUnset FLAG_GAME_COMPLETED, _00F0
    CallIfSet FLAG_GAME_COMPLETED, _0104
    CloseMessage
    CallIfUnset FLAG_ARRESTED_CHARON_STARK_MOUNTAIN, _00A0
    CallIfSet FLAG_ARRESTED_CHARON_STARK_MOUNTAIN, _00A8
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _00CC
    SetFlag FLAG_UNK_0x00B2
    PlayFanfare SEQ_SE_DP_KI_GASYAN
    RemoveObject 1
    CallIfUnset FLAG_ARRESTED_CHARON_STARK_MOUNTAIN, _00B0
    CallIfSet FLAG_ARRESTED_CHARON_STARK_MOUNTAIN, _00BE
    CallIfUnset FLAG_GAME_COMPLETED, _0109
    CallIfSet FLAG_GAME_COMPLETED, _010E
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A0:
    StartTrainerBattle TRAINER_ELITE_FOUR_FLINT
    Return

_00A8:
    StartTrainerBattle TRAINER_ELITE_FOUR_FLINT_REMATCH
    Return

_00B0:
    CreateJournalEvent LOCATION_EVENT_BEAT_ELITE_FOUR_MEMBER, TRAINER_ELITE_FOUR_FLINT, 0, 0, 0
    Return

_00BE:
    CreateJournalEvent LOCATION_EVENT_BEAT_ELITE_FOUR_MEMBER, TRAINER_ELITE_FOUR_FLINT_REMATCH, 0, 0, 0
    Return

_00CC:
    BlackOutFromBattle
    ReleaseAll
    End

_00D2:
    CallIfUnset FLAG_GAME_COMPLETED, _0113
    CallIfSet FLAG_GAME_COMPLETED, _0118
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00F0:
    Message 0
    CloseMessage
    ApplyMovement 0, _0120
    WaitMovement
    Message 1
    Return

_0104:
    Message 4
    Return

_0109:
    Message 2
    Return

_010E:
    Message 5
    Return

_0113:
    Message 3
    Return

_0118:
    Message 6
    Return

    .balign 4, 0
_0120:
    LockDir
    WalkOnSpotNormalSouth 3
    WalkOnSpotFastSouth 4
    WalkOnSpotFasterSouth 2
    UnlockDir
    EndMovement

_0138:
    LockAll
    ApplyMovement LOCALID_PLAYER, _015C
    WaitMovement
    PlayFanfare SEQ_SE_DP_KI_GASYAN
    ClearFlag FLAG_UNK_0x0284
    AddObject 2
    SetVar VAR_MAP_LOCAL_1, 1
    ReleaseAll
    End

    .balign 4, 0
_015C:
    WalkNormalNorth 2
    EndMovement
