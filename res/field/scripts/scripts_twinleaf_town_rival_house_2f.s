#include "macros/scrcmd.inc"
#include "res/text/bank/twinleaf_town_rival_house_2f.h"

    .data

    ScriptEntry _000E
    ScriptEntry _0090
    ScriptEntry _00A1
    ScriptEntryEnd

_000E:
    LockAll
    BufferRivalName 0
    Message 0
    CloseMessage
    ApplyMovement 0, _0060
    WaitMovement
    CallCommonScript 0x7FA
    BufferPlayerName 0
    Message 1
    CloseMessage
    ApplyMovement 0, _006C
    ApplyMovement LOCALID_PLAYER, _0080
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject 0
    CallCommonScript 0x7FB
    SetFlag FLAG_UNK_0x00EA
    SetVar VAR_UNK_0x40A3, 1
    SetVar VAR_UNK_0x4070, 2
    ReleaseAll
    End

    .balign 4, 0
_0060:
    WalkOnSpotNormalWest
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
_006C:
    WalkFastWest 4
    WalkFastNorth
    WalkFastWest 3
    SetInvisible
    EndMovement

    .balign 4, 0
_0080:
    Delay8 2
    WalkNormalSouth
    WalkOnSpotNormalNorth
    EndMovement

_0090:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    BufferPlayerName 0
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
