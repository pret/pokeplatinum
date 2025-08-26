#include "macros/scrcmd.inc"
#include "res/text/bank/snowpoint_city_pokecenter_1f.h"


    ScriptEntry _0016
    ScriptEntry _0022
    ScriptEntry _0035
    ScriptEntry _0048
    ScriptEntry _0067
    ScriptEntryEnd

_0016:
    SetVar VAR_0x8007, 0
    CallCommonScript 0x7D2
    End

_0022:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0035:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0048:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_PSYDUCK
    Message 4
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0067:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckBadgeAcquired BADGE_ID_ICICLE, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _00EC
    GetPlayerDir VAR_0x8000
    CallIfEq VAR_0x8000, 0, _00C8
    CallIfEq VAR_0x8000, 1, _00C8
    CallIfEq VAR_0x8000, 2, _00D4
    CallIfEq VAR_0x8000, 3, _00E0
    BufferPlayerName 0
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00C8:
    ApplyMovement 4, _00FC
    WaitMovement
    Return

_00D4:
    ApplyMovement 4, _0104
    WaitMovement
    Return

_00E0:
    ApplyMovement 4, _010C
    WaitMovement
    Return

_00EC:
    BufferPlayerName 0
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_00FC:
    WalkOnSpotFasterSouth 2
    EndMovement

    .balign 4, 0
_0104:
    WalkOnSpotFasterEast 2
    EndMovement

    .balign 4, 0
_010C:
    WalkOnSpotFasterWest 2
    EndMovement
