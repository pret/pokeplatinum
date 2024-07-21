#include "macros/scrcmd.inc"

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
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00EE:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0101:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0114:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0127:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_013A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_014D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0160:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0173:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0186:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0199:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01AC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01BF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01D2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 13
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01E5:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 14
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01F8:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_020B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 16
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_021E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 17
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0231:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 18
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0244:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 19
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0257:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 20
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_026A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 21
    ScrCmd_035
    ScrCmd_2D8 1
    ReleaseAll
    End

_027E:
    PlayFanfare SEQ_SE_CONFIRM
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
    PlayFanfare SEQ_SE_CONFIRM
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
    CallCommonScript 0x7D0
    End

_02D1:
    ScrCmd_036 25, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_02E8:
    ScrCmd_036 26, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_02FF:
    ScrCmd_036 27, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_0316:
    ScrCmd_036 28, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_032D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 29
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_033E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 30
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_034F:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 31
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0360:
    LockAll
    ApplyMovement 0xFF, _0398
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_HALL, 0, 25, 9, 2
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
    PlayFanfare SEQ_SE_DP_KAIDAN2
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_CASTLE, 0, 21, 9, 2
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
    PlayFanfare SEQ_SE_DP_KAIDAN2
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_ARCADE, 0, 1, 6, 3
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
    PlayFanfare SEQ_SE_DP_KAIDAN2
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_FACTORY, 0, 1, 7, 3
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
