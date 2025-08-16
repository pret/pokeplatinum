#include "macros/scrcmd.inc"
#include "res/text/bank/route_222.h"


    ScriptEntry _00D7
    ScriptEntry _007D
    ScriptEntry _00EA
    ScriptEntry _0101
    ScriptEntry _0118
    ScriptEntry _012F
    ScriptEntry _0146
    ScriptEntry _0022
    ScriptEntryEnd

_0022:
    GetTimeOfDay VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, _0069
    GoToIfEq VAR_MAP_LOCAL_0, 1, _0069
    GoToIfEq VAR_MAP_LOCAL_0, 2, _0069
    GoToIfEq VAR_MAP_LOCAL_0, 3, _0073
    GoToIfEq VAR_MAP_LOCAL_0, 4, _0073
    End

_0069:
    ClearFlag FLAG_UNK_0x026A
    SetFlag FLAG_UNK_0x026B
    End

_0073:
    ClearFlag FLAG_UNK_0x026B
    SetFlag FLAG_UNK_0x026A
    End

_007D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00CE, _00C2
    Message 0
    SetVar VAR_0x8004, ITEM_TM56
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _00CD
    CallCommonScript CommonScript_Unk2C
    SetFlag FLAG_UNK_0x00CE
    GoTo _00C2

_00C2:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00CD:
    CallCommonScript CommonScript_Unk11
    CloseMessage
    ReleaseAll
    End

_00D7:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00EA:
    ShowArrowSign 4
    End

_0101:
    ShowArrowSign 5
    End

_0118:
    ShowLandmarkSign 6
    End

_012F:
    ShowLandmarkSign 7
    End

_0146:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
