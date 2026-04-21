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
    SetFlag FLAG_HIDE_BATTLE_HALL_MAJOR_NPC
    CheckTVInterviewEligible TV_PROGRAM_SEGMENT_BATTLE_FRONTIER_FRONTLINE_NEWS_MULTI, VAR_MAP_LOCAL_0
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
    NPCMessage 0
    End

_00EE:
    NPCMessage 1
    End

_0101:
    NPCMessage 2
    End

_0114:
    NPCMessage 3
    End

_0127:
    NPCMessage 4
    End

_013A:
    NPCMessage 5
    End

_014D:
    NPCMessage 6
    End

_0160:
    NPCMessage 7
    End

_0173:
    NPCMessage 8
    End

_0186:
    NPCMessage 9
    End

_0199:
    NPCMessage 10
    End

_01AC:
    NPCMessage 11
    End

_01BF:
    NPCMessage 12
    End

_01D2:
    NPCMessage 13
    End

_01E5:
    NPCMessage 14
    End

_01F8:
    NPCMessage 15
    End

_020B:
    NPCMessage 16
    End

_021E:
    NPCMessage 17
    End

_0231:
    NPCMessage 18
    End

_0244:
    NPCMessage 19
    End

_0257:
    NPCMessage 20
    End

_026A:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 21
    CloseMessageWithoutErasing
    PokeMartFrontier MART_FRONTIER_ID_EXCHANGE_SERVICE_CORNER_DOWN
    ReleaseAll
    End

_027E:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    FadeScreenOut
    WaitFadeScreen
    ScrCmd_2E2
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

_02A6:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 23
    CloseMessageWithoutErasing
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
    EventMessage 29
    End

_033E:
    EventMessage 30
    End

_034F:
    EventMessage 31
    End

_0360:
    LockAll
    ApplyMovement LOCALID_PLAYER, _0398
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_HALL, 0, 25, 9, DIR_WEST
    FadeScreenIn
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
    PlaySE SEQ_SE_DP_KAIDAN2
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_CASTLE, 0, 21, 9, DIR_WEST
    FadeScreenIn
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
    PlaySE SEQ_SE_DP_KAIDAN2
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_ARCADE, 0, 1, 6, DIR_EAST
    FadeScreenIn
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
    PlaySE SEQ_SE_DP_KAIDAN2
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_FACTORY, 0, 1, 7, DIR_EAST
    FadeScreenIn
    WaitFadeScreen
    End

    .balign 4, 0
_0458:
    WalkFastEast 6
    EndMovement

_0460:
    End

    .balign 4, 0
