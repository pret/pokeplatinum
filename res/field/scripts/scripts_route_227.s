#include "macros/scrcmd.inc"
#include "res/text/gmm/message_bank_route_227.h"

    .data

    ScriptEntry _0012
    ScriptEntry _01CC
    ScriptEntry _01F6
    ScriptEntry _01E3
    .short 0xFD13

_0012:
    LockAll
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8004, 0x2E3, _00E7
    ApplyMovement 4, _0188
    ApplyMovement 3, _0154
    ApplyMovement 0xFF, _0100
    WaitMovement
    BufferPlayerName 0
    Message 5
    CloseMessage
    ApplyMovement 3, _0160
    WaitMovement
    WaitTime 15, 0x800C
    BufferRivalName 1
    Message 6
    CloseMessage
    ApplyMovement 4, _0194
    WaitMovement
    Message 7
    BufferRivalName 1
    Message 8
    ApplyMovement 4, _019C
    WaitMovement
    BufferPlayerName 0
    Message 9
    CloseMessage
    ApplyMovement 4, _01B8
    ApplyMovement 0xFF, _012C
    ApplyMovement 3, _0168
    WaitMovement
    ScrCmd_065 4
    ApplyMovement 3, _0170
    ApplyMovement 0xFF, _0108
    WaitMovement
    WaitTime 5, 0x800C
    BufferRivalName 1
    Message 10
    Message 11
    CloseMessage
    ApplyMovement 3, _0178
    ApplyMovement 0xFF, _0118
    WaitMovement
    ScrCmd_065 3
    SetVar 0x408B, 1
    ReleaseAll
    End

_00E7:
    ApplyMovement 0xFF, _00F4
    WaitMovement
    Return

    .balign 4, 0
_00F4:
    MoveAction_014
    MoveAction_032
    EndMovement

    .balign 4, 0
_0100:
    MoveAction_000
    EndMovement

    .balign 4, 0
_0108:
    MoveAction_015
    MoveAction_012
    MoveAction_035
    EndMovement

    .balign 4, 0
_0118:
    MoveAction_063
    MoveAction_033
    EndMovement

    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_012C:
    MoveAction_014
    MoveAction_035
    MoveAction_062
    MoveAction_033
    EndMovement

    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 62
    .byte 0
    .byte 1
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0154:
    MoveAction_033
    MoveAction_075
    EndMovement

    .balign 4, 0
_0160:
    MoveAction_034
    EndMovement

    .balign 4, 0
_0168:
    MoveAction_033
    EndMovement

    .balign 4, 0
_0170:
    MoveAction_033
    EndMovement

    .balign 4, 0
_0178:
    MoveAction_017 9
    EndMovement

    .byte 17
    .byte 0
    .byte 9
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0188:
    MoveAction_033
    MoveAction_075
    EndMovement

    .balign 4, 0
_0194:
    MoveAction_035
    EndMovement

    .balign 4, 0
_019C:
    MoveAction_033
    EndMovement

    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_01B8:
    MoveAction_063 2
    MoveAction_013 9
    EndMovement

    .byte 13
    .byte 0
    .byte 9
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_01CC:
    ScrCmd_036 12, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_01E3:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01F6:
    LockAll
    ApplyMovement 11, _0280
    ApplyMovement 0xFF, _026C
    WaitMovement
    GoTo _0212
    End

_0212:
    BufferPlayerName 0
    Message 0
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0243
    GoToIfEq 0x800C, 1, _0238
    End

_0238:
    Message 3
    GoTo _0212
    End

_0243:
    ApplyMovement 11, _0290
    WaitMovement
    Message 1
    ApplyMovement 11, _0298
    WaitMovement
    Message 2
    CloseMessage
    SetVar 0x4119, 1
    ReleaseAll
    End

    .balign 4, 0
_026C:
    MoveAction_000
    EndMovement

    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0280:
    MoveAction_033
    MoveAction_075
    MoveAction_013
    EndMovement

    .balign 4, 0
_0290:
    MoveAction_032
    EndMovement

    .balign 4, 0
_0298:
    MoveAction_033
    EndMovement
