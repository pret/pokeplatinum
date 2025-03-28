#include "macros/scrcmd.inc"
#include "res/text/bank/stark_mountain_outside.h"

    .data

    ScriptEntry _0012
    ScriptEntry _0018
    ScriptEntry _002F
    ScriptEntry _0118
    ScriptEntryEnd

_0012:
    SetFlag FLAG_UNK_0x09D1
    End

_0018:
    ShowLandmarkSign 9
    End

_002F:
    LockAll
    ApplyMovement 6, _00A4
    ApplyMovement 7, _00E0
    WaitMovement
    Message 0
    CloseMessage
    ApplyMovement 6, _00AC
    ApplyMovement 7, _00EC
    WaitMovement
    ApplyMovement 7, _0100
    WaitMovement
    Message 1
    CloseMessage
    ApplyMovement 6, _00C4
    WaitMovement
    Message 2
    CloseMessage
    ApplyMovement 6, _00D4
    ApplyMovement 7, _0108
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject 6
    RemoveObject 7
    WaitFanfare SEQ_SE_DP_KAIDAN2
    SetVar 0x40A0, 1
    ReleaseAll
    End

    .balign 4, 0
_00A4:
    MoveAction_015 4
    EndMovement

    .balign 4, 0
_00AC:
    MoveAction_013 2
    MoveAction_015 4
    MoveAction_012
    EndMovement

    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_00C4:
    MoveAction_034
    MoveAction_063 2
    MoveAction_032
    EndMovement

    .balign 4, 0
_00D4:
    MoveAction_012 2
    MoveAction_069
    EndMovement

    .balign 4, 0
_00E0:
    MoveAction_012
    MoveAction_015 3
    EndMovement

    .balign 4, 0
_00EC:
    MoveAction_015
    MoveAction_013 2
    MoveAction_015 3
    MoveAction_012
    EndMovement

    .balign 4, 0
_0100:
    MoveAction_035
    EndMovement

    .balign 4, 0
_0108:
    MoveAction_015
    MoveAction_012 2
    MoveAction_069
    EndMovement

_0118:
    LockAll
    Message 3
    CloseMessage
    WaitTime 15, 0x800C
    Message 4
    ApplyMovement 5, _01F0
    WaitMovement
    Message 5
    CloseMessage
    ApplyMovement 5, _01F8
    WaitMovement
    ApplyMovement 4, _01CC
    WaitMovement
    BufferPlayerName 0
    Message 6
    CloseMessage
    WaitTime 15, 0x800C
    ApplyMovement 5, _0204
    ApplyMovement 4, _01DC
    WaitMovement
    BufferPlayerName 0
    Message 7
    CloseMessage
    ApplyMovement 5, _0214
    ApplyMovement LOCALID_PLAYER, _0238
    WaitMovement
    RemoveObject 5
    ApplyMovement 4, _01E8
    ApplyMovement LOCALID_PLAYER, _0240
    WaitMovement
    BufferPlayerName 0
    Message 8
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    RemoveObject 4
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    SetVar 0x40A0, 3
    ReleaseAll
    End

    .balign 4, 0
_01CC:
    MoveAction_034
    MoveAction_063 2
    MoveAction_033
    EndMovement

    .balign 4, 0
_01DC:
    MoveAction_063
    MoveAction_034
    EndMovement

    .balign 4, 0
_01E8:
    MoveAction_033
    EndMovement

    .balign 4, 0
_01F0:
    MoveAction_035
    EndMovement

    .balign 4, 0
_01F8:
    MoveAction_012 2
    MoveAction_069
    EndMovement

    .balign 4, 0
_0204:
    MoveAction_070
    MoveAction_013
    MoveAction_035
    EndMovement

    .balign 4, 0
_0214:
    MoveAction_013 2
    MoveAction_014 5
    MoveAction_012 2
    MoveAction_014 3
    MoveAction_021 9
    MoveAction_023 10
    MoveAction_012 6
    MoveAction_015 8
    EndMovement

    .balign 4, 0
_0238:
    MoveAction_034
    EndMovement

    .balign 4, 0
_0240:
    MoveAction_032
    EndMovement
