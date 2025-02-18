#include "macros/scrcmd.inc"
#include "generated/distribution_events.h"
#include "res/text/bank/flower_paradise.h"

    .data

    ScriptEntry _000E
    ScriptEntry _0062
    ScriptEntry _007D
    ScriptEntryEnd

_000E:
    SetFlag 0x9D5
    ScrCmd_22D 2, 0x4000
    GoToIfEq 0x4000, 0, _005C
    CheckItem ITEM_OAKS_LETTER, 1, 0x4000
    GoToIfEq 0x4000, FALSE, _005C
    CheckDistributionEvent DISTRIBUTION_EVENT_SHAYMIN, 0x4000
    GoToIfEq 0x4000, FALSE, _005C
    GoToIfSet 0x123, _005C
    ClearFlag 0x251
    End

_005C:
    SetFlag 0x251
    End

_0062:
    GoToIfSet 142, _006F
    End

_006F:
    SetFlag 0x251
    RemoveObject 0
    ClearFlag 142
    End

_007D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_04C 0x1EC, 0
    Message 0
    CloseMessage
    SetFlag 142
    StartFatefulEncounter SPECIES_SHAYMIN, 30
    ClearFlag 142
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _00D7
    CheckDidNotCapture 0x800C
    GoToIfEq 0x800C, TRUE, _00C8
    SetFlag 0x123
    ReleaseAll
    End

_00C8:
    Message 1
    WaitABXPadPress
    CloseMessage
    ClearFlag 0x251
    ReleaseAll
    End

_00D7:
    BlackOutFromBattle
    ClearFlag 0x251
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
