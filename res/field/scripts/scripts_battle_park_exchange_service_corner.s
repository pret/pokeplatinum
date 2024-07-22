#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0024
    ScriptEntry _002A
    ScriptEntry _0192
    ScriptEntry _01A5
    ScriptEntry _01B8
    ScriptEntry _01CB
    ScriptEntry _01DE
    ScriptEntry _01F1
    ScriptEntry _01F1

_0024:
    GoTo _0044

_002A:
    GoTo _0030

_0030:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 15
    ScrCmd_035
    ScrCmd_2D8 0
    ReleaseAll
    End

_0044:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 15
    ScrCmd_035
    ScrCmd_2D8 1
    ReleaseAll
    End

    .byte 73
    .byte 0
    .byte 220
    .byte 5
    .byte 96
    .byte 0
    .byte 104
    .byte 0
    .byte 148
    .byte 2
    .byte 21
    .byte 1
    .byte 44
    .byte 0
    .byte 0
    .byte 44
    .byte 0
    .byte 1
    .byte 26
    .byte 0
    .byte 209
    .byte 0
    .byte 0
    .byte 0
    .byte 17
    .byte 0
    .byte 12
    .byte 128
    .byte 254
    .byte 0xFF
    .byte 28
    .byte 0
    .byte 1
    .byte 135
    .byte 0
    .byte 0
    .byte 0
    .byte 18
    .byte 0
    .byte 12
    .byte 128
    .byte 1
    .byte 64
    .byte 28
    .byte 0
    .byte 1
    .byte 122
    .byte 0
    .byte 0
    .byte 0
    .byte 41
    .byte 0
    .byte 3
    .byte 64
    .byte 12
    .byte 128
    .byte 155
    .byte 2
    .byte 0
    .byte 64
    .byte 3
    .byte 64
    .byte 0
    .byte 128
    .byte 1
    .byte 128
    .byte 17
    .byte 0
    .byte 0
    .byte 64
    .byte 0
    .byte 0
    .byte 29
    .byte 0
    .byte 1
    .byte 106
    .byte 0
    .byte 0
    .byte 0
    .byte 17
    .byte 0
    .byte 0
    .byte 64
    .byte 1
    .byte 0
    .byte 29
    .byte 0
    .byte 1
    .byte 103
    .byte 0
    .byte 0
    .byte 0
    .byte 62
    .byte 0
    .byte 12
    .byte 128
    .byte 17
    .byte 0
    .byte 12
    .byte 128
    .byte 1
    .byte 0
    .byte 28
    .byte 0
    .byte 1
    .byte 162
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 154
    .byte 2
    .byte 1
    .byte 128
    .byte 12
    .byte 128
    .byte 17
    .byte 0
    .byte 12
    .byte 128
    .byte 0
    .byte 0
    .byte 28
    .byte 0
    .byte 1
    .byte 82
    .byte 0
    .byte 0
    .byte 0
    .byte 125
    .byte 0
    .byte 0
    .byte 128
    .byte 1
    .byte 0
    .byte 12
    .byte 128
    .byte 17
    .byte 0
    .byte 12
    .byte 128
    .byte 0
    .byte 0
    .byte 28
    .byte 0
    .byte 1
    .byte 70
    .byte 0
    .byte 0
    .byte 0
    .byte 44
    .byte 0
    .byte 3
    .byte 123
    .byte 0
    .byte 0
    .byte 128
    .byte 1
    .byte 0
    .byte 12
    .byte 128
    .byte 153
    .byte 2
    .byte 1
    .byte 128
    .byte 150
    .byte 2
    .byte 22
    .byte 0
    .byte 99
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 44
    .byte 0
    .byte 6
    .byte 49
    .byte 0
    .byte 52
    .byte 0
    .byte 149
    .byte 2
    .byte 97
    .byte 0
    .byte 2
    .byte 0
    .byte 209
    .byte 0
    .byte 0
    .byte 0
    .byte 128
    .byte 44
    .byte 0
    .byte 2
    .byte 27
    .byte 0
    .byte 209
    .byte 0
    .byte 0
    .byte 0
    .byte 128
    .byte 211
    .byte 0
    .byte 1
    .byte 0
    .byte 128
    .byte 44
    .byte 0
    .byte 7
    .byte 27
    .byte 0
    .byte 44
    .byte 0
    .byte 4
    .byte 22
    .byte 0
    .byte 52
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 209
    .byte 0
    .byte 0
    .byte 0
    .byte 128
    .byte 44
    .byte 0
    .byte 5
    .byte 22
    .byte 0
    .byte 38
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 40
    .byte 0
    .byte 8
    .byte 128
    .byte 0
    .byte 0
    .byte 40
    .byte 0
    .byte 9
    .byte 128
    .byte 0
    .byte 0
    .byte 68
    .byte 0
    .byte 1
    .byte 1
    .byte 0
    .byte 1
    .byte 12
    .byte 128
    .byte 155
    .byte 2
    .byte 0
    .byte 64
    .byte 8
    .byte 128
    .byte 0
    .byte 128
    .byte 1
    .byte 128
    .byte 209
    .byte 0
    .byte 0
    .byte 0
    .byte 128
    .byte 128
    .byte 2
    .byte 1
    .byte 1
    .byte 128
    .byte 1
    .byte 3
    .byte 70
    .byte 0
    .byte 231
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 8
    .byte 128
    .byte 38
    .byte 0
    .byte 8
    .byte 128
    .byte 1
    .byte 0
    .byte 18
    .byte 0
    .byte 8
    .byte 128
    .byte 1
    .byte 64
    .byte 28
    .byte 0
    .byte 0
    .byte 207
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 70
    .byte 0
    .byte 232
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 8
    .byte 128
    .byte 71
    .byte 0
    .byte 27
    .byte 0

_0192:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01A5:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01B8:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01CB:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 13
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01DE:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 14
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01F1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 11
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
