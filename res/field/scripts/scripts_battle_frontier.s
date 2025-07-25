#include "macros/scrcmd.inc"
#include "res/text/bank/battle_frontier.h"


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
    ScriptEntryEnd

_009A:
    SetFlag FLAG_UNK_0x02CB
    ScrCmd_238 19, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, _00D5
    ScrCmd_329 VAR_MAP_LOCAL_1, VAR_MAP_LOCAL_2, VAR_MAP_LOCAL_3, VAR_MAP_LOCAL_4
    SetObjectEventPos 29, VAR_MAP_LOCAL_1, VAR_MAP_LOCAL_2
    SetObjectEventDir 29, VAR_MAP_LOCAL_3
    SetObjectEventMovementType 29, VAR_MAP_LOCAL_4
    ClearFlag FLAG_UNK_0x02C3
    End

_00D5:
    SetFlag FLAG_UNK_0x02C3
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
    PokeMartFrontier MART_FRONTIER_ID_EXCHANGE_SERVICE_CORNER_DOWN
    ReleaseAll
    End

_027E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_2E2
    ReturnToField
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
    PokeMartFrontier MART_FRONTIER_ID_EXCHANGE_SERVICE_CORNER_UP
    ReleaseAll
    End

_02BA:
    ShowLandmarkSign 24
    End

_02D1:
    ShowLandmarkSign 25
    End

_02E8:
    ShowLandmarkSign 26
    End

_02FF:
    ShowLandmarkSign 27
    End

_0316:
    ShowLandmarkSign 28
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
    ApplyMovement LOCALID_PLAYER, _0398
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
    WalkFastWest 5
    EndMovement

_03A0:
    LockAll
    ApplyMovement LOCALID_PLAYER, _03D8
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
    WalkFastWest 6
    EndMovement

_03E0:
    LockAll
    ApplyMovement LOCALID_PLAYER, _0418
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
    WalkFastEast 5
    EndMovement

_0420:
    LockAll
    ApplyMovement LOCALID_PLAYER, _0458
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
    WalkFastEast 6
    EndMovement

_0460:
    End

    .byte 0
    .byte 0
