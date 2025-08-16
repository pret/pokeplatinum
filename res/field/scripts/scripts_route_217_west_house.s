#include "macros/scrcmd.inc"
#include "res/text/bank/route_217_west_house.h"


    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00DE, _0039
    CheckItem ITEM_HM08, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0044
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0039:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0044:
    Message 1
    SetVar VAR_0x8004, ITEM_ICICLE_PLATE
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _0076
    CallCommonScript CommonScript_Unk2C
    SetFlag FLAG_UNK_0x00DE
    GoTo _0039

_0076:
    CallCommonScript CommonScript_Unk11
    CloseMessage
    ReleaseAll
    End
