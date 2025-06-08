#include "macros/scrcmd.inc"
#include "res/text/bank/resort_area_house.h"

    .data

    ScriptEntry _000E
    ScriptEntry _0034
    ScriptEntry _0047
    ScriptEntryEnd

_000E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ApplyMovement 0, _002C
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
_002C:
    WalkOnSpotNormalNorth
    EndMovement

_0034:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0047:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _006F
    GoToIfEq VAR_RESULT, GENDER_FEMALE, _007A
    End

_006F:
    Message 3
    GoTo _0085
    End

_007A:
    Message 4
    GoTo _0085
    End

_0085:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
