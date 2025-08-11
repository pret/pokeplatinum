#include "macros/scrcmd.inc"
#include "res/text/bank/celestic_town_pokecenter_1f.h"


    ScriptEntry _0012
    ScriptEntry _001E
    ScriptEntry _0031
    ScriptEntry _0044
    ScriptEntryEnd

_0012:
    SetVar VAR_0x8007, 0
    CallCommonScript 0x7D2
    End

_001E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0031:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0044:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0AA1, _00C0
    Message 2
    GetFirstNonEggInParty VAR_0x8000
    GetPartyMonFriendship VAR_RESULT, VAR_0x8000
    GoToIfGe VAR_RESULT, 150, _0084
    GoToIfGe VAR_RESULT, 50, _00CB
    GoTo _00D6

_0084:
    Message 3
    SetVar VAR_0x8004, ITEM_GREAT_BALL
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _00B6
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x0AA1
    GoTo _00C0

_00B6:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_00C0:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00CB:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00D6:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
