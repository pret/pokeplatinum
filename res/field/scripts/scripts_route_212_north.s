#include "macros/scrcmd.inc"
#include "res/text/bank/route_212_north.h"

    .data

    ScriptEntry _00B5
    ScriptEntry _00C8
    ScriptEntry _00DF
    ScriptEntry _00F6
    ScriptEntry _010B
    ScriptEntry _011E
    ScriptEntry _0131
    ScriptEntry _0144
    ScriptEntry _0157
    ScriptEntry _002A
    ScriptEntryEnd

_002A:
    GetTimeOfDay 0x4000
    GoToIfEq VAR_0x4000, 0, _0071
    GoToIfEq VAR_0x4000, 1, _0071
    GoToIfEq VAR_0x4000, 2, _0071
    GoToIfEq VAR_0x4000, 3, _0093
    GoToIfEq VAR_0x4000, 4, _0093
    End

_0071:
    ClearFlag FLAG_UNK_0x0260
    ClearFlag FLAG_UNK_0x0262
    ClearFlag FLAG_UNK_0x0264
    ClearFlag FLAG_UNK_0x0266
    SetFlag FLAG_UNK_0x0261
    SetFlag FLAG_UNK_0x0263
    SetFlag FLAG_UNK_0x0265
    SetFlag FLAG_UNK_0x0267
    End

_0093:
    ClearFlag FLAG_UNK_0x0261
    ClearFlag FLAG_UNK_0x0263
    ClearFlag FLAG_UNK_0x0265
    ClearFlag FLAG_UNK_0x0267
    SetFlag FLAG_UNK_0x0260
    SetFlag FLAG_UNK_0x0262
    SetFlag FLAG_UNK_0x0264
    SetFlag FLAG_UNK_0x0266
    End

_00B5:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00C8:
    ShowArrowSign 6
    End

_00DF:
    ShowLandmarkSign 7
    End

_00F6:
    ShowScrollingSign 8
    End

_010B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_011E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0131:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0144:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0157:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
