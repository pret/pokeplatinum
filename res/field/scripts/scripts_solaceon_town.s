#include "macros/scrcmd.inc"
#include "res/text/bank/solaceon_town.h"

    .data

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
    CheckDaycareHasEgg 0x4000
    GoToIfNe VAR_0x4000, FALSE, _0047
    End

_0047:
    ScrCmd_189 3, 3
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
    CheckBadgeAcquired BADGE_ID_RELIC, 0x800C
    GoToIfEq 0x800C, 1, _0088
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
    CheckPoketchAppRegistered POKETCH_APPID_POKEMONHISTORY, 0x800C
    GoToIfEq 0x800C, 1, _0118
    ScrCmd_11E 0x800C
    GoToIfLt 0x800C, 50, _010D
    Message 10
    SetVar 0x8004, 9
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
    GetPlayerMapPos 0x8004, 0x8005
    SetObjectEventPos 18, 0x8004, 0x295
    ClearFlag FLAG_UNK_0x021E
    AddObject 18
    ScrCmd_062 18
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
    SetVar 0x4073, 1
    ReleaseAll
    End

    .balign 4, 0
_01E8:
    MoveAction_017 7
    EndMovement

    .balign 4, 0
_01F0:
    MoveAction_038
    MoveAction_063
    MoveAction_039
    MoveAction_063
    MoveAction_037
    EndMovement

    .balign 4, 0
_0208:
    MoveAction_075
    EndMovement

    .balign 4, 0
_0210:
    MoveAction_016 7
    EndMovement

    .balign 4, 0
_0218:
    MoveAction_063
    MoveAction_075
    MoveAction_063 3
    EndMovement

    .balign 4, 0
_0228:
    MoveAction_000
    EndMovement
