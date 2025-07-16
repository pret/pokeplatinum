#include "macros/scrcmd.inc"
#include "res/text/bank/hearthome_city_east_gate_to_amity_square.h"


    ScriptEntry _002D
    ScriptEntry _0040
    ScriptEntry _000E
    ScriptEntryEnd

_000E:
    ScrCmd_238 13, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, _0027
    ClearFlag FLAG_UNK_0x0219
    End

_0027:
    SetFlag FLAG_UNK_0x0219
    End

_002D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0040:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
