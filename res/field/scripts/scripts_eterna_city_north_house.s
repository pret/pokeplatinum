#include "macros/scrcmd.inc"
#include "res/text/bank/eterna_city_north_house.h"

    .data

    ScriptEntry _000E
    ScriptEntry _0023
    ScriptEntry _0036
    ScriptEntryEnd

_000E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    ScrCmd_035
    PokeMartSpecialties MART_SPECIALTIES_ID_ETERNA_HOUSE
    ReleaseAll
    End

_0023:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0036:
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
