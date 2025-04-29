#include "macros/scrcmd.inc"
#include "generated/distribution_events.h"
#include "res/text/bank/canalave_city_harbor_inn.h"

    .data

    ScriptEntry _000E
    ScriptEntry _0093
    ScriptEntry _0160
    ScriptEntryEnd

_000E:
    SetFlag FLAG_UNK_0x0241
    GoToIfUnset FLAG_UNK_0x0158, _001F
    End

_001F:
    GoToIfSet FLAG_GAME_COMPLETED, _002C
    End

_002C:
    GetNationalDexEnabled VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 1, _0040
    End

_0040:
    CheckItem ITEM_MEMBER_CARD, 1, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 1, _0057
    End

_0057:
    CheckDistributionEvent DISTRIBUTION_EVENT_DARKRAI, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, TRUE, _006B
    End

_006B:
    GoToIfSet FLAG_UNK_0x012C, _0078
    End

_0078:
    GoToIfGe VAR_UNK_0x40F8, 2, _0091
    ClearFlag FLAG_UNK_0x0241
    SetVar VAR_UNK_0x40F8, 1
    End

_0091:
    End

_0093:
    LockAll
    WaitTime 30, VAR_RESULT
    Message 0
    CloseMessage
    ApplyMovement 0, _0148
    ApplyMovement LOCALID_PLAYER, _0130
    WaitMovement
    WaitTime 15, VAR_RESULT
    BufferPlayerName 0
    Message 1
    CloseMessage
    PlayFanfare SEQ_SE_DP_MAZYO2
    SetFlag FLAG_UNK_0x013C
    SetFlag FLAG_UNK_0x0241
    SetVar VAR_UNK_0x40F8, 2
    FadeScreen 6, 3, 0, 0
    WaitFadeScreen
    FadeScreen 6, 3, 1, 0
    WaitFadeScreen
    FadeScreen 6, 3, 0, 0
    WaitFadeScreen
    FadeScreen 6, 3, 1, 0
    WaitFadeScreen
    FadeScreen 6, 6, 0, 0
    WaitFadeScreen
    WaitTime 120, VAR_RESULT
    Warp MAP_HEADER_NEWMOON_ISLAND, 0, 152, 0x115, 1
    FadeScreen 6, 6, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

    .balign 4, 0
_0130:
    MoveAction_012
    MoveAction_015 3
    MoveAction_012
    MoveAction_015
    MoveAction_033
    EndMovement

    .balign 4, 0
_0148:
    MoveAction_015 3
    MoveAction_012 2
    MoveAction_033
    MoveAction_063 2
    MoveAction_035
    EndMovement

_0160:
    LockAll
    Call _0184
    ScrCmd_2B5 33, 58, 0x2CA
    PlaySound SEQ_ASA
    WaitSound
    BufferPlayerName 0
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0184:
    GoToIfSet FLAG_UNK_0x0158, _0197
    SetVar VAR_UNK_0x40F8, 0
    Return

_0197:
    SetVar VAR_UNK_0x40F8, 3
    Return

    .byte 0
