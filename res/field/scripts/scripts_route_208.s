#include "macros/scrcmd.inc"
#include "res/text/bank/route_208.h"


    ScriptEntry _0016
    ScriptEntry _002D
    ScriptEntry _0044
    ScriptEntry _0070
    ScriptEntry _005B
    ScriptEntryEnd

_0016:
    ShowArrowSign 2
    End

_002D:
    ShowArrowSign 3
    End

_0044:
    ShowLandmarkSign 4
    End

_005B:
    ShowScrollingSign 5
    End

_0070:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x013F, _00B5
    Message 0
    SetVar VAR_0x8004, ITEM_ODD_KEYSTONE
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _00C0
    SetFlag FLAG_UNK_0x013F
    CallCommonScript CommonScript_Unk10
    CloseMessage
    ReleaseAll
    End

_00B5:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00C0:
    CallCommonScript CommonScript_Unk11
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
