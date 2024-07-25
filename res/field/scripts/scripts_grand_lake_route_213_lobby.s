#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0012
    ScriptEntry _0014
    ScriptEntry _004C
    ScriptEntry _005F
    .short 0xFD13

_0012:
    End

_0014:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    PlaySound SEQ_ASA
    WaitSound
    ScrCmd_14E
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_004C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_005F:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfSet 253, _0081
    SetFlag 253
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0081:
    ApplyMovement 2, _009C
    WaitMovement
    Message 4
    FacePlayer
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_009C:
    MoveAction_003
    EndMovement
