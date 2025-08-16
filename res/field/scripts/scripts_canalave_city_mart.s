#include "macros/scrcmd.inc"
#include "res/text/bank/canalave_city_mart.h"


    ScriptEntry _0012
    ScriptEntry _0028
    ScriptEntry _003E
    ScriptEntry _0056
    ScriptEntryEnd

_0012:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript CommonScript_Unk13
    CloseMessageWithoutErasing
    PokeMartCommon
    ReleaseAll
    End

_0028:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript CommonScript_Unk13
    CloseMessageWithoutErasing
    PokeMartSpecialties MART_SPECIALTIES_ID_CANALAVE
    ReleaseAll
    End

_003E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferItemName 0, 24
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0056:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferItemName 0, 57
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
