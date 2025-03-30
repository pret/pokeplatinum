#include "macros/scrcmd.inc"
#include "res/text/bank/sandgem_town_counterpart_house_1f.h"

    .data

    ScriptEntry _000A
    ScriptEntry _003A
    ScriptEntryEnd

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_22D 2, 0x800C
    GoToIfEq 0x800C, 1, _002F
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_002F:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_003A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_22D 2, 0x800C
    GoToIfEq 0x800C, 1, _009A
    GoTo _005A

_005A:
    GetPlayerGender 0x800C
    GoToIfEq 0x800C, GENDER_MALE, _007A
    GoToIfEq 0x800C, GENDER_FEMALE, _0086
    End

_007A:
    BufferPlayerName 0
    Message 2
    GoTo _0092

_0086:
    BufferPlayerName 0
    Message 3
    GoTo _0092

_0092:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_009A:
    GoToIfUnset FLAG_GAME_COMPLETED, _005A
    GoToIfSet FLAG_UNK_0x00F0, _00C4
    SetFlag FLAG_UNK_0x00F0
    EnableSwarms
    BufferPlayerName 0
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00C4:
    BufferPlayerName 0
    GetSwarmMapAndSpecies 0x4001, 0x4000
    ScrCmd_0E2 1, 0x4001
    BufferSpeciesNameFromVar 2, 0x4000, 0, 1
    GetPlayerGender 0x800C
    GoToIfEq 0x800C, GENDER_MALE, _00FA
    GoToIfEq 0x800C, GENDER_FEMALE, _0103
    End

_00FA:
    Message 5
    GoTo _010F

_0103:
    BufferPlayerName 0
    Message 6
    GoTo _010F

_010F:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
