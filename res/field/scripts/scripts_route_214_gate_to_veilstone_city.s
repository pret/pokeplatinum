#include "macros/scrcmd.inc"
#include "res/text/bank/route_214_gate_to_veilstone_city.h"


    ScriptEntry _0068
    ScriptEntry _000A
    ScriptEntryEnd

_000A:
    GetRandom VAR_UNK_0x4032, 4
    ScrCmd_238 15, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, _0062
    ScrCmd_238 16, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, _0062
    ScrCmd_238 17, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, _0062
    ScrCmd_238 18, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, _0062
    ClearFlag FLAG_UNK_0x02C2
    End

_0062:
    SetFlag FLAG_UNK_0x02C2
    End

_0068:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetUnownFormsSeenCount VAR_MAP_LOCAL_0
    GoToIfGe VAR_MAP_LOCAL_0, 26, _008C
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

    .balign 4, 0
