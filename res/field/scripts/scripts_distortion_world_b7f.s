#include "macros/scrcmd.inc"

    .data

    ScriptEntry _001A
    ScriptEntry _001E
    ScriptEntry _0044
    ScriptEntry _006F
    ScriptEntry _0096
    ScriptEntry _01DA
    .short 0xFD13

_001A:
    ScrCmd_2F2
    End

_001E:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_DISTORTION_WORLD_GIRATINA_ROOM, 0, 15, 25, 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

_0044:
    LockAll
    ApplyMovement 128, _028C
    ApplyMovement 0xFF, _0204
    WaitMovement
    Message 0
    CloseMessage
    ApplyMovement 128, _029C
    WaitMovement
    SetVar 0x4055, 8
    End

_006F:
    LockAll
    Message 1
    CloseMessage
    ApplyMovement 129, _0308
    ApplyMovement 128, _02AC
    WaitMovement
    Message 2
    Message 4
    WaitABPadPress
    CloseMessage
    ReleaseAll
    End

_0096:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 5
    CloseMessage
    ScrCmd_0E5 0x194, 0
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _01CE
    SetVar 0x4055, 10
    Message 6
    CloseMessage
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8004, 86, _00E6
    ApplyMovement 0xFF, _0210
    GoTo _00EE

_00E6:
    ApplyMovement 0xFF, _0248
_00EE:
    ApplyMovement 129, _0314
    ApplyMovement 128, _02DC
    WaitMovement
    ScrCmd_312 129
    ApplyMovement 128, _02BC
    WaitMovement
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8005, 74, _012F
    ApplyMovement 0xFF, _0254
    GoTo _013F

_012F:
    ApplyMovement 128, _02E8
    ApplyMovement 0xFF, _0264
_013F:
    Message 7
    WaitMovement
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8005, 74, _016D
    ApplyMovement 128, _02F8
    ApplyMovement 0xFF, _0274
    GoTo _017D

_016D:
    ApplyMovement 128, _0300
    ApplyMovement 0xFF, _0280
_017D:
    BufferPlayerName 0
    Message 8
    PlaySound SEQ_ASA
    WaitSound
    ScrCmd_14E
    WaitMovement
    Message 9
    CloseMessage
    ApplyMovement 128, _02C8
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8005, 74, _01BB
    ApplyMovement 0xFF, _0220
    GoTo _01C3

_01BB:
    ApplyMovement 0xFF, _0234
_01C3:
    WaitMovement
    Message 10
    WaitABXPadPress
    CloseMessage
    End

_01CE:
    SetVar 0x4055, 9
    ScrCmd_0EB
    ReleaseAll
    End

_01DA:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfGe 0x4055, 10, _01F8
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01F8:
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0204:
    MoveAction_041 2
    MoveAction_020
    EndMovement

    .balign 4, 0
_0210:
    MoveAction_00F
    MoveAction_022
    MoveAction_021
    EndMovement

    .balign 4, 0
_0220:
    MoveAction_00E
    MoveAction_00C 7
    MoveAction_00F 4
    MoveAction_021
    EndMovement

    .balign 4, 0
_0234:
    MoveAction_00E
    MoveAction_00C 6
    MoveAction_00F 4
    MoveAction_021
    EndMovement

    .balign 4, 0
_0248:
    MoveAction_03F
    MoveAction_021
    EndMovement

    .balign 4, 0
_0254:
    MoveAction_042 2
    MoveAction_041
    MoveAction_020
    EndMovement

    .balign 4, 0
_0264:
    MoveAction_042 2
    MoveAction_041
    MoveAction_022
    EndMovement

    .balign 4, 0
_0274:
    MoveAction_03E
    MoveAction_020
    EndMovement

    .balign 4, 0
_0280:
    MoveAction_03E
    MoveAction_022
    EndMovement

    .balign 4, 0
_028C:
    MoveAction_041 2
    MoveAction_020
    MoveAction_041 2
    EndMovement

    .balign 4, 0
_029C:
    MoveAction_00F
    MoveAction_075
    MoveAction_00C 7
    EndMovement

    .balign 4, 0
_02AC:
    MoveAction_03F 3
    MoveAction_00E
    MoveAction_023
    EndMovement

    .balign 4, 0
_02BC:
    MoveAction_00F
    MoveAction_021
    EndMovement

    .balign 4, 0
_02C8:
    MoveAction_00C 6
    MoveAction_00F 4
    MoveAction_00D
    MoveAction_020
    EndMovement

    .balign 4, 0
_02DC:
    MoveAction_041
    MoveAction_021
    EndMovement

    .balign 4, 0
_02E8:
    MoveAction_042 2
    MoveAction_03F
    MoveAction_023
    EndMovement

    .balign 4, 0
_02F8:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0300:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0308:
    MoveAction_00D 4
    MoveAction_022
    EndMovement

    .balign 4, 0
_0314:
    MoveAction_00D 7
    MoveAction_076
    MoveAction_041
    EndMovement
