#include "macros/scrcmd.inc"
#include "res/text/bank/eterna_city_condominiums_2f.h"


    ScriptEntry _000E
    ScriptEntry _0068
    ScriptEntry _007B
    ScriptEntryEnd

_000E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00C2, _005D
    Message 0
    SetVar VAR_0x8004, ITEM_TM67
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _0053
    SetFlag FLAG_UNK_0x00C2
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_0053:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_005D:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0068:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_007B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
