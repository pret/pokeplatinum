    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0460
    ScriptEntry _00DB
    ScriptEntry _00EE
    ScriptEntry _0101
    ScriptEntry _0114
    ScriptEntry _0127
    ScriptEntry _013A
    ScriptEntry _014D
    ScriptEntry _0160
    ScriptEntry _0173
    ScriptEntry _0186
    ScriptEntry _0199
    ScriptEntry _01AC
    ScriptEntry _01BF
    ScriptEntry _01D2
    ScriptEntry _01E5
    ScriptEntry _01F8
    ScriptEntry _020B
    ScriptEntry _021E
    ScriptEntry _0231
    ScriptEntry _0244
    ScriptEntry _0257
    ScriptEntry _026A
    ScriptEntry _027E
    ScriptEntry _02A6
    ScriptEntry _02BA
    ScriptEntry _02D1
    ScriptEntry _02E8
    ScriptEntry _02FF
    ScriptEntry _0316
    ScriptEntry _032D
    ScriptEntry _033E
    ScriptEntry _034F
    ScriptEntry _0360
    ScriptEntry _03A0
    ScriptEntry _03E0
    ScriptEntry _0420
    ScriptEntry _009A
    .short 0xFD13

_009A:
    SetFlag 0x2CB
    ScrCmd_238 19, 0x4000
    GoToIfEq 0x4000, 0, _00D5
    ScrCmd_329 0x4001, 0x4002, 0x4003, 0x4004
    ScrCmd_186 29, 0x4001, 0x4002
    ScrCmd_189 29, 0x4003
    ScrCmd_188 29, 0x4004
    ClearFlag 0x2C3
    End

_00D5:
    SetFlag 0x2C3
    End

_00DB:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 0
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_00EE:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 1
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0101:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 2
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0114:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 3
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0127:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 4
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_013A:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 5
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_014D:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 6
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0160:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 7
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0173:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 8
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0186:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 9
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0199:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 10
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_01AC:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 11
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_01BF:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 12
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_01D2:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 13
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_01E5:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 14
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_01F8:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 15
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_020B:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 16
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_021E:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 17
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0231:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 18
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0244:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 19
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0257:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 20
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_026A:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 21
    ScrCmd_035
    ScrCmd_2D8 1
    ReleaseAll
    End

_027E:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_2E2
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_02A6:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 23
    ScrCmd_035
    ScrCmd_2D8 0
    ReleaseAll
    End

_02BA:
    ScrCmd_036 24, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_02D1:
    ScrCmd_036 25, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_02E8:
    ScrCmd_036 26, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_02FF:
    ScrCmd_036 27, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_0316:
    ScrCmd_036 28, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_032D:
    PlayFanfare 0x5DC
    LockAll
    Message 29
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_033E:
    PlayFanfare 0x5DC
    LockAll
    Message 30
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_034F:
    PlayFanfare 0x5DC
    LockAll
    Message 31
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0360:
    LockAll
    ApplyMovement 0xFF, _0398
    WaitMovement
    PlayFanfare 0x603
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0BE 0x233, 0, 25, 9, 2
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

    .balign 4, 0
_0398:
    MoveAction_012 5
    EndMovement

_03A0:
    LockAll
    ApplyMovement 0xFF, _03D8
    WaitMovement
    PlayFanfare 0x603
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0BE 0x234, 0, 21, 9, 2
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

    .balign 4, 0
_03D8:
    MoveAction_012 6
    EndMovement

_03E0:
    LockAll
    ApplyMovement 0xFF, _0418
    WaitMovement
    PlayFanfare 0x603
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0BE 0x235, 0, 1, 6, 3
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

    .balign 4, 0
_0418:
    MoveAction_013 5
    EndMovement

_0420:
    LockAll
    ApplyMovement 0xFF, _0458
    WaitMovement
    PlayFanfare 0x603
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0BE 0x232, 0, 1, 7, 3
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

    .balign 4, 0
_0458:
    MoveAction_013 6
    EndMovement

_0460:
    End

    .byte 0
    .byte 0
