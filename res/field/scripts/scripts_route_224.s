#include "macros/scrcmd.inc"

    .data

    ScriptEntry _001A
    ScriptEntry _0082
    ScriptEntry _00B8
    ScriptEntry _00E4
    ScriptEntry _0458
    ScriptEntry _05F4
    .short 0xFD13

_001A:
    CallIfEq 0x4057, 1, _00AA
    GoToIfSet 0x12D, _0080
    ScrCmd_166 0x4000
    GoToIfEq 0x4000, 0, _0080
    ScrCmd_22D 2, 0x4000
    GoToIfEq 0x4000, 0, _0080
    CheckItem ITEM_OAKS_LETTER, 1, 0x4000
    GoToIfEq 0x4000, 0, _0080
    ScrCmd_28B 1, 0x4000
    GoToIfEq 0x4000, 0, _0080
    ClearFlag 0x252
_0080:
    End

_0082:
    GoToIfSet 0x12D, _009A
    CallIfEq 0x408D, 1, _009C
_009A:
    End

_009C:
    ScrCmd_18C 3, 0
    Return

    .byte 30
    .byte 0
    .byte 202
    .byte 2
    .byte 27
    .byte 0

_00AA:
    SetVar 0x4057, 2
    SetVar 0x4085, 1
    Return

_00B8:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0x12D, _00D6
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00D6:
    ScrCmd_272 1
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00E4:
    GoToIfSet 0x12D, _022D
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar 0x408D, 1
    BufferPlayerName 0
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 1, _0219
    Message 0
_0114:
    CloseMessage
    Call _0240
    BufferPlayerName 0
    Message 2
    CloseMessage
_0124:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_271 0x800C
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x800C, 1, _0222
    BufferPlayerName 0
    ScrCmd_272 1
    Message 3
    ScrCmd_03E 0x800C
    CloseMessage
    GoToIfEq 0x800C, 1, _0124
    Call _029A
    WaitTime 15, 0x800C
    FadeOutMusic 0, 10
    FadeScreen 6, 6, 0, 0x7FFF
    WaitFadeScreen
    ScrCmd_270 3, 1
    ScrCmd_333 0
    Warp MAP_HEADER_ROUTE_224, 0, 0x38C, 0x1EC, 0
    WaitTime 15, 0x800C
    FadeScreen 6, 6, 1, 0x7FFF
    WaitFadeScreen
    Call _02B8
    CallIfNe 0x4057, 2, _01F0
    CallIfEq 0x4057, 2, _01F5
    WaitABXPadPress
    CloseMessage
    ScrCmd_333 127
    ScrCmd_055 10
    SetFlag 0x12D
    SetFlag 0x252
    SetFlag 0x2CA
    SetVar 0x408D, 0
    ReleaseAll
    End

_01F0:
    Message 5
    Return

_01F5:
    Message 4
    CloseMessage
    ApplyMovement 21, _05EC
    WaitMovement
    ApplyMovement 0xFF, _0438
    WaitMovement
    WaitTime 15, 0x800C
    Message 11
    Return

_0219:
    Message 1
    GoTo _0114

_0222:
    Message 6
    CloseMessage
    GoTo _0124

_022D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0240:
    GetPlayerMapPos 0x8000, 0x8001
    SetVar 0x8008, 0x8000
    GoToIfEq 0x8008, 0x38D, _0272
    GoToIfEq 0x8008, 0x38E, _0286
    ApplyMovement 0xFF, _0328
    WaitMovement
    Return

_0272:
    ApplyMovement 0xFF, _0338
    ApplyMovement 3, _0364
    WaitMovement
    Return

_0286:
    ApplyMovement 0xFF, _034C
    ApplyMovement 3, _0370
    WaitMovement
    Return

_029A:
    ApplyMovement 0xFF, _0384
    ApplyMovement 3, _0384
    WaitMovement
    Return

_02AE:
    ApplyMovement 21, _066C
    Return

_02B8:
    ApplyMovement 3, _0404
    ApplyMovement 0xFF, _03C8
    ApplyMovement 16, _0440
    WaitMovement
    ScrCmd_04C 0x1EC, 0
    ScrCmd_04D
    CallIfEq 0x4057, 2, _02AE
    ApplyMovement 3, _038C
    ApplyMovement 16, _03B0
    ApplyMovement 0xFF, _039C
    WaitMovement
    ApplyMovement 16, _0448
    WaitMovement
    SetFlag 0x25C
    ScrCmd_065 16
    ScrCmd_04C 0x1EC, 0
    ScrCmd_04D
    ApplyMovement 3, _03C0
    WaitMovement
    Return

    .balign 4, 0
_0328:
    MoveAction_000
    MoveAction_041
    MoveAction_003
    EndMovement

    .balign 4, 0
_0338:
    MoveAction_00E
    MoveAction_00C
    MoveAction_041
    MoveAction_003
    EndMovement

    .balign 4, 0
_034C:
    MoveAction_00D
    MoveAction_00E 2
    MoveAction_00C
    MoveAction_041
    MoveAction_003
    EndMovement

    .balign 4, 0
_0364:
    MoveAction_03F
    MoveAction_002
    EndMovement

    .balign 4, 0
_0370:
    MoveAction_03F
    MoveAction_001
    MoveAction_03F 2
    MoveAction_002
    EndMovement

    .balign 4, 0
_0384:
    MoveAction_000
    EndMovement

    .balign 4, 0
_038C:
    MoveAction_003
    MoveAction_04B
    MoveAction_041
    EndMovement

    .balign 4, 0
_039C:
    MoveAction_041
    MoveAction_003
    MoveAction_04B
    MoveAction_041
    EndMovement

    .balign 4, 0
_03B0:
    MoveAction_002
    MoveAction_04B
    MoveAction_041
    EndMovement

    .balign 4, 0
_03C0:
    MoveAction_002
    EndMovement

    .balign 4, 0
_03C8:
    MoveAction_002
    MoveAction_041
    MoveAction_001
    MoveAction_041
    MoveAction_003
    MoveAction_041
    MoveAction_001
    MoveAction_041
    MoveAction_002
    MoveAction_041
    MoveAction_000
    MoveAction_041
    MoveAction_001
    MoveAction_041
    EndMovement

    .balign 4, 0
_0404:
    MoveAction_001
    MoveAction_041
    MoveAction_003
    MoveAction_041
    MoveAction_001
    MoveAction_041
    MoveAction_002
    MoveAction_041
    MoveAction_000
    MoveAction_041
    EndMovement

    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0438:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0440:
    MoveAction_00D 12
    EndMovement

    .balign 4, 0
_0448:
    MoveAction_000
    MoveAction_041
    MoveAction_04C 12
    EndMovement

_0458:
    LockAll
    ClearFlag 0x2CA
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8005, 0x1F0, _048D
    GoToIfEq 0x8005, 0x1F1, _04AF
    GoToIfEq 0x8005, 0x1F2, _04D1
    End

_048D:
    ScrCmd_186 21, 0x386, 0x1F8
    ScrCmd_064 21
    ScrCmd_062 21
    ApplyMovement 21, _0598
    WaitMovement
    GoTo _04F3
    End

_04AF:
    ScrCmd_186 21, 0x386, 0x1F9
    ScrCmd_064 21
    ScrCmd_062 21
    ApplyMovement 21, _05A4
    WaitMovement
    GoTo _04F3
    End

_04D1:
    ScrCmd_186 21, 0x386, 0x1FA
    ScrCmd_064 21
    ScrCmd_062 21
    ApplyMovement 21, _05B0
    WaitMovement
    GoTo _04F3
    End

_04F3:
    ApplyMovement 0xFF, _0628
    WaitMovement
    Message 9
    CloseMessage
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8005, 0x1F0, _0531
    GoToIfEq 0x8005, 0x1F1, _054B
    GoToIfEq 0x8005, 0x1F2, _0565
    End

_0531:
    ApplyMovement 21, _05BC
    ApplyMovement 0xFF, _0630
    WaitMovement
    GoTo _057F
    End

_054B:
    ApplyMovement 21, _05CC
    ApplyMovement 0xFF, _0644
    WaitMovement
    GoTo _057F
    End

_0565:
    ApplyMovement 21, _05DC
    ApplyMovement 0xFF, _0658
    WaitMovement
    GoTo _057F
    End

_057F:
    SetVar 0x4057, 2
    SetVar 0x4085, 2
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0598:
    MoveAction_00C 8
    MoveAction_023
    EndMovement

    .balign 4, 0
_05A4:
    MoveAction_00C 8
    MoveAction_023
    EndMovement

    .balign 4, 0
_05B0:
    MoveAction_00C 8
    MoveAction_023
    EndMovement

    .balign 4, 0
_05BC:
    MoveAction_00D
    MoveAction_00F 5
    MoveAction_00C 4
    EndMovement

    .balign 4, 0
_05CC:
    MoveAction_00C
    MoveAction_00F 5
    MoveAction_00C 3
    EndMovement

    .balign 4, 0
_05DC:
    MoveAction_00C 2
    MoveAction_00F 5
    MoveAction_00C 3
    EndMovement

    .balign 4, 0
_05EC:
    MoveAction_023
    EndMovement

_05F4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0x12D, _061C
    Message 10
    WaitABXPadPress
    CloseMessage
    ApplyMovement 21, _0664
    WaitMovement
    ReleaseAll
    End

_061C:
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0628:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0630:
    MoveAction_03F 2
    MoveAction_023
    MoveAction_03F 4
    MoveAction_020
    EndMovement

    .balign 4, 0
_0644:
    MoveAction_03F 2
    MoveAction_023
    MoveAction_03F 3
    MoveAction_020
    EndMovement

    .balign 4, 0
_0658:
    MoveAction_03F 2
    MoveAction_020
    EndMovement

    .balign 4, 0
_0664:
    MoveAction_000
    EndMovement

    .balign 4, 0
_066C:
    MoveAction_003
    MoveAction_04B
    EndMovement
