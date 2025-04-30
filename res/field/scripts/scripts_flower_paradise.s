#include "macros/scrcmd.inc"
#include "generated/distribution_events.h"
#include "res/text/bank/flower_paradise.h"

    .data

    ScriptEntry _000E
    ScriptEntry _0062
    ScriptEntry _007D
    ScriptEntryEnd

_000E:
    SetFlag FLAG_UNK_0x09D5
    GetNationalDexEnabled VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, _005C
    CheckItem ITEM_OAKS_LETTER, 1, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, _005C
    CheckDistributionEvent DISTRIBUTION_EVENT_SHAYMIN, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, _005C
    GoToIfSet FLAG_UNK_0x0123, _005C
    ClearFlag FLAG_UNK_0x0251
    End

_005C:
    SetFlag FLAG_UNK_0x0251
    End

_0062:
    GoToIfSet FLAG_UNK_0x008E, _006F
    End

_006F:
    SetFlag FLAG_UNK_0x0251
    RemoveObject 0
    ClearFlag FLAG_UNK_0x008E
    End

_007D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    PlayCry SPECIES_SHAYMIN
    Message 0
    CloseMessage
    SetFlag FLAG_UNK_0x008E
    StartFatefulEncounter SPECIES_SHAYMIN, 30
    ClearFlag FLAG_UNK_0x008E
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _00D7
    CheckDidNotCapture VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, _00C8
    SetFlag FLAG_UNK_0x0123
    ReleaseAll
    End

_00C8:
    Message 1
    WaitABXPadPress
    CloseMessage
    ClearFlag FLAG_UNK_0x0251
    ReleaseAll
    End

_00D7:
    BlackOutFromBattle
    ClearFlag FLAG_UNK_0x0251
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
