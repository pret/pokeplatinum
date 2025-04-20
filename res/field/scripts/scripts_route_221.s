#include "macros/scrcmd.inc"
#include "res/text/bank/route_221.h"

    .data

    ScriptEntry _002E
    ScriptEntry _0041
    ScriptEntry _0054
    ScriptEntry _0012
    ScriptEntryEnd

_0012:
    ScrCmd_22D 2, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, _002C
    SetFlag FLAG_UNK_0x027F
    SetFlag FLAG_UNK_0x0280
_002C:
    End

_002E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0041:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0054:
    ShowLandmarkSign 2
    End

    .byte 0
