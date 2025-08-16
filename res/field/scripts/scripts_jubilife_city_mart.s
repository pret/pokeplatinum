#include "macros/scrcmd.inc"
#include "res/text/bank/jubilife_city_mart.h"


    ScriptEntry _0016
    ScriptEntry _002C
    ScriptEntry _0042
    ScriptEntry _0055
    ScriptEntry _0068
    ScriptEntryEnd

_0016:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript CommonScript_Unk13
    CloseMessageWithoutErasing
    PokeMartCommon
    ReleaseAll
    End

_002C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript CommonScript_Unk13
    CloseMessageWithoutErasing
    PokeMartSpecialties MART_SPECIALTIES_ID_JUBILIFE
    ReleaseAll
    End

_0042:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0055:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0068:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
