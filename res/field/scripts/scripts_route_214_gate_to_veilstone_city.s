#include "macros/scrcmd.inc"
#include "res/text/bank/route_214_gate_to_veilstone_city.h"

    .data

    ScriptEntry _0068
    ScriptEntry _000A
    ScriptEntryEnd

_000A:
    GetRandom 0x4032, 4
    ScrCmd_238 15, 0x4000
    GoToIfEq VAR_0x4000, 0, _0062
    ScrCmd_238 16, 0x4000
    GoToIfEq VAR_0x4000, 0, _0062
    ScrCmd_238 17, 0x4000
    GoToIfEq VAR_0x4000, 0, _0062
    ScrCmd_238 18, 0x4000
    GoToIfEq VAR_0x4000, 0, _0062
    ClearFlag FLAG_UNK_0x02C2
    End

_0062:
    SetFlag FLAG_UNK_0x02C2
    End

_0068:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetUnownFormsSeenCount 0x4000
    GoToIfGe VAR_0x4000, 26, _008C
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_008C:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
