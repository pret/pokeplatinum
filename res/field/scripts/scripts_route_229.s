#include "macros/scrcmd.inc"
#include "res/text/bank/route_229.h"


    ScriptEntry _000A
    ScriptEntry _008E
    ScriptEntryEnd

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00DA, _0079
    Message 0
    SetVar VAR_0x8004, ITEM_NUGGET
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _0084
    CallCommonScript CommonScript_Unk2C
    SetFlag FLAG_UNK_0x00DA
    SetVar VAR_0x8004, ITEM_NUGGET
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _0079
    Message 1
    CallCommonScript CommonScript_Unk2C
    GoTo _0079
    End

_0079:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0084:
    CallCommonScript CommonScript_Unk11
    CloseMessage
    ReleaseAll
    End

_008E:
    ShowArrowSign 3
    End

    .balign 4, 0
