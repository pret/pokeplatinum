#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _0093
    ScriptEntry _0160
    .short 0xFD13

_000E:
    SetFlag 0x241
    GoToIfUnset 0x158, _001F
    End

_001F:
    GoToIfSet 0x964, _002C
    End

_002C:
    ScrCmd_22D 2, 0x4000
    GoToIfEq 0x4000, 1, _0040
    End

_0040:
    CheckItem ITEM_MEMBER_CARD, 1, 0x4000
    GoToIfEq 0x4000, 1, _0057
    End

_0057:
    ScrCmd_28B 0, 0x4000
    GoToIfEq 0x4000, 1, _006B
    End

_006B:
    GoToIfSet 0x12C, _0078
    End

_0078:
    GoToIfGe 0x40F8, 2, _0091
    ClearFlag 0x241
    SetVar 0x40F8, 1
    End

_0091:
    End

_0093:
    LockAll
    WaitTime 30, 0x800C
    Message 0
    CloseMessage
    ApplyMovement 0, _0148
    ApplyMovement 0xFF, _0130
    WaitMovement
    WaitTime 15, 0x800C
    BufferPlayerName 0
    Message 1
    CloseMessage
    PlayFanfare SEQ_SE_DP_MAZYO2
    SetFlag 0x13C
    SetFlag 0x241
    SetVar 0x40F8, 2
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
    WaitTime 120, 0x800C
    Warp MAP_HEADER_NEWMOON_ISLAND, 0, 152, 0x115, 1
    FadeScreen 6, 6, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

    .balign 4, 0
_0130:
    MoveAction_00C
    MoveAction_00F 3
    MoveAction_00C
    MoveAction_00F
    MoveAction_021
    EndMovement

    .balign 4, 0
_0148:
    MoveAction_00F 3
    MoveAction_00C 2
    MoveAction_021
    MoveAction_03F 2
    MoveAction_023
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
    GoToIfSet 0x158, _0197
    SetVar 0x40F8, 0
    Return

_0197:
    SetVar 0x40F8, 3
    Return

    .byte 0
