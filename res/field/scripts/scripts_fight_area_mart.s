#include "macros/scrcmd.inc"
#include "res/text/bank/fight_area_mart.h"


    ScriptEntry _0012
    ScriptEntry _0028
    ScriptEntry _002A
    ScriptEntry _0086
    ScriptEntryEnd

_0012:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript 0x7E3
    ScrCmd_035
    PokeMartCommon
    ReleaseAll
    End

_0028:
    End

_002A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00D5, _0071
    Message 0
    SetVar VAR_0x8004, ITEM_SCOPE_LENS
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _007C
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x00D5
    GoTo _0071
    End

_0071:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_007C:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_0086:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
