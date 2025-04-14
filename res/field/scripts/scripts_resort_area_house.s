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
    MoveAction_032
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
    GetPlayerGender VAR_0x800C
    GoToIfEq VAR_0x800C, GENDER_MALE, _006F
    GoToIfEq VAR_0x800C, GENDER_FEMALE, _007A
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
