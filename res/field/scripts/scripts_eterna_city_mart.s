#include "macros/scrcmd.inc"
#include "res/text/bank/eterna_city_mart.h"


    ScriptEntry _0012
    ScriptEntry _0028
    ScriptEntry _003E
    ScriptEntry _005B
    ScriptEntryEnd

_0012:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript 0x7E3
    CloseMessageWithoutErasing
    PokeMartCommon
    ReleaseAll
    End

_0028:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript 0x7E3
    CloseMessageWithoutErasing
    PokeMartSpecialties MART_SPECIALTIES_ID_ETERNA_MART
    ReleaseAll
    End

_003E:
    BufferItemName 0, 26
    BufferItemName 1, 0x14A
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_005B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
