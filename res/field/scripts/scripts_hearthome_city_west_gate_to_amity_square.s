#include "macros/scrcmd.inc"
#include "res/text/bank/hearthome_city_west_gate_to_amity_square.h"

    .data

    ScriptEntry _0031
    ScriptEntry _0044
    ScriptEntry _0057
    ScriptEntry _0012
    ScriptEntryEnd

_0012:
    ScrCmd_238 13, VAR_0x4000
    GoToIfEq VAR_0x4000, 0, _002B
    ClearFlag FLAG_UNK_0x0219
    End

_002B:
    SetFlag FLAG_UNK_0x0219
    End

_0031:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0044:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0057:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_PIKACHU
    Message 2
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
