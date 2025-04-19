#include "macros/scrcmd.inc"
#include "res/text/bank/route_212_south.h"

    .data

    ScriptEntry _007D
    ScriptEntry _0090
    ScriptEntry _00A3
    ScriptEntry _00B6
    ScriptEntry _00CD
    ScriptEntry _00F9
    ScriptEntry _0022
    ScriptEntry _00E4
    ScriptEntryEnd

_0022:
    GetTimeOfDay VAR_0x4000
    GoToIfEq VAR_0x4000, 0, _0069
    GoToIfEq VAR_0x4000, 1, _0069
    GoToIfEq VAR_0x4000, 2, _0069
    GoToIfEq VAR_0x4000, 3, _0073
    GoToIfEq VAR_0x4000, 4, _0073
    End

_0069:
    ClearFlag FLAG_UNK_0x0268
    SetFlag FLAG_UNK_0x0269
    End

_0073:
    ClearFlag FLAG_UNK_0x0269
    SetFlag FLAG_UNK_0x0268
    End

_007D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0090:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A3:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00B6:
    ShowArrowSign 4
    End

_00CD:
    ShowLandmarkSign 5
    End

_00E4:
    ShowScrollingSign 6
    End

_00F9:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
