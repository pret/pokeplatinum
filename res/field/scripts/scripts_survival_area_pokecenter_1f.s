#include "macros/scrcmd.inc"
#include "res/text/bank/survival_area_pokecenter_1f.h"

    .data

    ScriptEntry _0012
    ScriptEntry _001E
    ScriptEntry _0047
    ScriptEntry _005A
    ScriptEntryEnd

_0012:
    SetVar 0x8007, 0
    CallCommonScript 0x7D2
    End

_001E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00C8, _003C
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_003C:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0047:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_005A:
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
    .byte 0
