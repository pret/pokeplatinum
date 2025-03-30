#include "macros/scrcmd.inc"
#include "res/text/bank/route_209_lost_tower_5f.h"

    .data

    ScriptEntry _000A
    ScriptEntry _0072
    ScriptEntryEnd

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfUnset FLAG_UNK_0x007B, _0067
    GoToIfSet FLAG_UNK_0x00A1, _005C
    Message 0
    SetVar 0x8004, 247
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _00CF
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x00A1
    GoTo _005C
    End

_005C:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0067:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0072:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfUnset FLAG_UNK_0x007B, _00D9
    GoToIfSet FLAG_UNK_0x0116, _00C4
    Message 3
    SetVar 0x8004, 224
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _00CF
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x0116
    GoTo _00C4
    End

_00C4:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00CF:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_00D9:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
