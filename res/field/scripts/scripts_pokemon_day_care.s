#include "macros/scrcmd.inc"
#include "res/text/bank/pokemon_day_care.h"

    .data

    ScriptEntry _000E
    ScriptEntry _0021
    ScriptEntry _005C
    ScriptEntryEnd

_000E:
    CallIfSet FLAG_UNK_0x00FE, _001B
    End

_001B:
    ClearFlag FLAG_UNK_0x01D1
    Return

_0021:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckPoketchAppRegistered POKETCH_APPID_DAYCARECHECKER, VAR_0x800C
    GoToIfEq VAR_0x800C, 1, _0051
    Message 0
    SetVar VAR_0x8004, 8
    CallCommonScript 0x7D9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0051:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_005C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
