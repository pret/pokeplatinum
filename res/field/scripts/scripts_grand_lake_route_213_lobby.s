#include "macros/scrcmd.inc"
#include "res/text/bank/grand_lake_route_213_lobby.h"

    .data

    ScriptEntry _0012
    ScriptEntry _0014
    ScriptEntry _004C
    ScriptEntry _005F
    ScriptEntryEnd

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
    HealParty
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
    GoToIfSet FLAG_UNK_0x00FD, _0081
    SetFlag FLAG_UNK_0x00FD
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
    FaceEast
    EndMovement
