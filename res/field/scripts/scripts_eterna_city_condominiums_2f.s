#include "macros/scrcmd.inc"
#include "res/text/bank/eterna_city_condominiums_2f.h"

    .data

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
    SetVar 0x8004, 0x18A
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0053
    SetFlag FLAG_UNK_0x00C2,
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
