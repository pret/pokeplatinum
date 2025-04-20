#include "macros/scrcmd.inc"
#include "res/text/bank/solaceon_town_northeast_house.h"

    .data

    ScriptEntry _000A
    ScriptEntry _002C
    ScriptEntryEnd

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetFirstNonEggInParty VAR_RESULT
    ScrCmd_212 VAR_0x8004, VAR_RESULT
    ScrCmd_17C 0, VAR_0x8004
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_002C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
