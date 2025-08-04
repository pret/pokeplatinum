#include "macros/scrcmd.inc"
#include "res/text/bank/solaceon_town.h"


    ScriptEntry _004F
    ScriptEntry _0062
    ScriptEntry _0093
    ScriptEntry _00A6
    ScriptEntry _00B9
    ScriptEntry _00CC
    ScriptEntry _0123
    ScriptEntry _013A
    ScriptEntry _0151
    ScriptEntry _0034
    ScriptEntry _0032
    ScriptEntry _0168
    ScriptEntryEnd

_0032:
    End

_0034:
    CheckDaycareHasEgg VAR_MAP_LOCAL_0
    GoToIfNe VAR_MAP_LOCAL_0, FALSE, _0047
    End

_0047:
    SetObjectEventDir 3, DIR_EAST
    End

_004F:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0062:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckBadgeAcquired BADGE_ID_RELIC, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0088
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0088:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0093:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A6:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00B9:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00CC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckPoketchAppRegistered POKETCH_APPID_POKEMONHISTORY, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0118
    ScrCmd_11E VAR_RESULT
    GoToIfLt VAR_RESULT, 50, _010D
    Message 10
    SetVar VAR_0x8004, 9
    CallCommonScript 0x7D9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_010D:
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0118:
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0123:
    ShowMapSign 12
    End

_013A:
    ShowLandmarkSign 13
    End

_0151:
    ShowLandmarkSign 14
    End

_0168:
    LockAll
    ApplyMovement LOCALID_PLAYER, _0218
    WaitMovement
    CallCommonScript 0x7FA
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    SetObjectEventPos 18, VAR_0x8004, 0x295
    ClearFlag FLAG_UNK_0x021E
    AddObject 18
    LockObject 18
    ApplyMovement LOCALID_PLAYER, _0228
    ApplyMovement 18, _01E8
    WaitMovement
    Message 0
    CloseMessage
    ApplyMovement 18, _01F0
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message 1
    ApplyMovement 18, _0208
    WaitMovement
    Message 2
    CloseMessage
    ApplyMovement 18, _0210
    WaitMovement
    RemoveObject 18
    CallCommonScript 0x7FB
    SetVar VAR_UNK_0x4073, 1
    ReleaseAll
    End

    .balign 4, 0
_01E8:
    WalkFastSouth 7
    EndMovement

    .balign 4, 0
_01F0:
    WalkOnSpotFastWest
    Delay8
    WalkOnSpotFastEast
    Delay8
    WalkOnSpotFastSouth
    EndMovement

    .balign 4, 0
_0208:
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
_0210:
    WalkFastNorth 7
    EndMovement

    .balign 4, 0
_0218:
    Delay8
    EmoteExclamationMark
    Delay8 3
    EndMovement

    .balign 4, 0
_0228:
    FaceNorth
    EndMovement
