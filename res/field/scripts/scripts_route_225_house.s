#include "macros/scrcmd.inc"
#include "res/text/bank/route_225_house.h"


    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00D9, _004B
    Message 0
    SetVar VAR_0x8004, ITEM_FRESH_WATER
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _0056
    CallCommonScript CommonScript_Unk2C
    SetFlag FLAG_UNK_0x00D9
    GoTo _004B

_004B:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0056:
    CallCommonScript CommonScript_Unk11
    CloseMessage
    ReleaseAll
    End
