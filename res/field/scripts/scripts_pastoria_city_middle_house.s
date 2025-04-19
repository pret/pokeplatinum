#include "macros/scrcmd.inc"
#include "res/text/bank/pastoria_city_middle_house.h"

    .data

    ScriptEntry _000A
    ScriptEntry _001D
    ScriptEntryEnd

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_001D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x011C, _00BD
    GoToIfSet FLAG_UNK_0x0078, _004A
    Message 1
    SetFlag FLAG_UNK_0x0078
    GoTo _00C8
    End

_004A:
    CheckPartyCombeeGenderCount VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _009C
    GoToIfEq VAR_RESULT, 1, _00A7
    Message 4
    SetVar VAR_0x8004, ITEM_MACHO_BRACE
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _00B2
    SetFlag FLAG_UNK_0x011C
    CallCommonScript 0x7FC
    GoTo _00BD
    End

_009C:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A7:
    Message 3
    GoTo _00C8
    End

_00B2:
    Message 5
    GoTo _00C8
    End

_00BD:
    Message 6
    GoTo _00C8
    End

_00C8:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
