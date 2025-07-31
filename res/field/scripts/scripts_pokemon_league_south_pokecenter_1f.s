#include "macros/scrcmd.inc"
#include "res/text/bank/pokemon_league_south_pokecenter_1f.h"


    ScriptEntry _0020
    ScriptEntry _002C
    ScriptEntry _0042
    ScriptEntry _001A
    ScriptEntry _0058
    ScriptEntry _006B
    ScriptEntryEnd

_001A:
    SetFlag FLAG_UNK_0x09C0
    End

_0020:
    SetVar VAR_0x8007, 0
    CallCommonScript 0x7D2
    End

_002C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript 0x7E3
    CloseMessageWithoutErasing
    PokeMartCommon
    ReleaseAll
    End

_0042:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript 0x7E3
    CloseMessageWithoutErasing
    PokeMartSpecialties MART_SPECIALTIES_ID_POKEMON_LEAGUE
    ReleaseAll
    End

_0058:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_006B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
