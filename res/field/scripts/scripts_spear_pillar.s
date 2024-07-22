#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0022
    ScriptEntry _0107
    ScriptEntry _0154
    ScriptEntry _0508
    ScriptEntry _0249
    ScriptEntry _0210
    ScriptEntry _0223
    ScriptEntry _0236
    .short 0xFD13

_0022:
    SetFlag 0x9C7
    Call _00C7
    Call _0062
    ScrCmd_14D 0x4000
    GoToIfEq 0x4000, 0, _0052
    GoToIfEq 0x4000, 1, _005A
    End

_0052:
    SetVar 0x4020, 97
    End

_005A:
    SetVar 0x4020, 0
    End

_0062:
    ScrCmd_166 0x4000
    GoToIfEq 0x4000, 0, _00C5
    ScrCmd_22D 2, 0x4000
    GoToIfEq 0x4000, 0, _00C5
    CheckItem ITEM_AZURE_FLUTE, 1, 0x4000
    GoToIfEq 0x4000, 0, _00C5
    ScrCmd_28B 2, 0x4000
    GoToIfEq 0x4000, 0, _00C5
    GoToIfSet 0x11E, _00C5
    SetVar 0x4118, 1
    GoTo _00C5
    End

_00C5:
    Return

_00C7:
    Dummy1 0x4098
    GoToIfEq 0x4098, 0, _0101
    GoToIfEq 0x4098, 1, _0101
    GoToIfEq 0x4098, 2, _0101
    GoToIfEq 0x4098, 3, _0101
    Return

_0101:
    SetFlag 0x1C5
    Return

_0107:
    End

_0109:
    ScrCmd_246 0x800C
    SetVar 0x8004, 0x8005
    GoToIfEq 0x800C, 10, _0133
    GoToIfEq 0x800C, 12, _0133
    SetVar 0x8004, 0x8006
_0133:
    Return

    .byte 77
    .byte 1
    .byte 12
    .byte 128
    .byte 41
    .byte 0
    .byte 4
    .byte 128
    .byte 5
    .byte 128
    .byte 17
    .byte 0
    .byte 12
    .byte 128
    .byte 1
    .byte 0
    .byte 28
    .byte 0
    .byte 1
    .byte 6
    .byte 0
    .byte 0
    .byte 0
    .byte 41
    .byte 0
    .byte 4
    .byte 128
    .byte 6
    .byte 128
    .byte 27
    .byte 0

_0154:
    LockAll
    ApplyMovement 0, _01E4
    ApplyMovement 3, _01F4
    WaitMovement
    ScrCmd_0EE 0x800C
    GoToIfNe 0x800C, 0, _01A6
    GoTo _0181
    End

_0181:
    Message 1
    CloseMessage
    ApplyMovement 0xFF, _0204
    WaitMovement
    ApplyMovement 0, _01EC
    ApplyMovement 3, _01FC
    WaitMovement
    ReleaseAll
    End

_01A6:
    Call _01CA
    GoToIfEq 0x800C, 0, _01DB
    SetVar 0x4098, 1
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01CA:
    Message 0
    CloseMessage
    ScrCmd_0E5 0x209, 0x20F
    ScrCmd_0EC 0x800C
    Return

_01DB:
    ScrCmd_0EB
    ReleaseAll
    End

    .balign 4, 0
_01E4:
    MoveAction_023
    EndMovement

    .balign 4, 0
_01EC:
    MoveAction_021
    EndMovement

    .balign 4, 0
_01F4:
    MoveAction_022
    EndMovement

    .balign 4, 0
_01FC:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0204:
    MoveAction_03E 5
    MoveAction_00D
    EndMovement

_0210:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0223:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 44
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0236:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 43
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0249:
    LockAll
    Call _036F
    Message 3
    Message 4
    CloseMessage
    Call _02DC
    BufferRivalName 0
    Message 5
    Message 7
    Message 8
    Message 9
    CloseMessage
    Call _0424
    ScrCmd_2A0 0x8004, 0x210, 0x197
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _02D0
    Call _0456
    BufferRivalName 0
    BufferPlayerName 1
    Message 10
    PlaySound SEQ_ASA
    WaitSound
    ScrCmd_14E
    Message 11
    Message 12
    CloseMessage
    ScrCmd_18C 0xFF, 1
    ApplyMovement 5, _0500
    WaitMovement
    ScrCmd_065 5
    SetVar 0x4098, 2
    GoTo _0508
    End

_02D0:
    SetVar 0x4098, 1
    ScrCmd_0EB
    ReleaseAll
    End

_02DC:
    ClearFlag 0x1C5
    GetPlayerMapPos 0x8004, 0x8005
    SetVar 0x8008, 0x8004
    GoToIfEq 0x8008, 30, _0315
    GoToIfEq 0x8008, 31, _0333
    GoToIfEq 0x8008, 32, _0351
    Return

_0315:
    ScrCmd_186 5, 31, 40
    ScrCmd_064 5
    ApplyMovement 5, _04F4
    WaitMovement
    ScrCmd_18C 5, 3
    Return

_0333:
    ScrCmd_186 5, 30, 40
    ScrCmd_064 5
    ApplyMovement 5, _04F4
    WaitMovement
    ScrCmd_18C 5, 2
    Return

_0351:
    ScrCmd_186 5, 31, 40
    ScrCmd_064 5
    ApplyMovement 5, _04F4
    WaitMovement
    ScrCmd_18C 5, 2
    Return

_036F:
    GetPlayerMapPos 0x8004, 0x8005
    SetVar 0x8008, 0x8004
    GoToIfEq 0x8008, 30, _03A4
    GoToIfEq 0x8008, 31, _03BE
    GoToIfEq 0x8008, 32, _03D8
    Return

_03A4:
    ScrCmd_18C 0xFF, 2
    ApplyMovement 4, _03F4
    ApplyMovement 2, _03FC
    WaitMovement
    Return

_03BE:
    ScrCmd_18C 0xFF, 3
    ApplyMovement 4, _0404
    ApplyMovement 2, _040C
    WaitMovement
    Return

_03D8:
    ScrCmd_18C 0xFF, 3
    ApplyMovement 4, _0414
    ApplyMovement 2, _041C
    WaitMovement
    Return

    .balign 4, 0
_03F4:
    MoveAction_023
    EndMovement

    .balign 4, 0
_03FC:
    MoveAction_00E
    EndMovement

    .balign 4, 0
_0404:
    MoveAction_023
    EndMovement

    .balign 4, 0
_040C:
    MoveAction_00E
    EndMovement

    .balign 4, 0
_0414:
    MoveAction_00F
    EndMovement

    .balign 4, 0
_041C:
    MoveAction_022
    EndMovement

_0424:
    ScrCmd_0DE 0x800C
    SetVar 0x8004, 0x26C
    GoToIfEq 0x800C, 0x186, _0454
    SetVar 0x8004, 0x26B
    GoToIfEq 0x800C, 0x183, _0454
    SetVar 0x8004, 0x25F
_0454:
    Return

_0456:
    GetPlayerMapPos 0x8004, 0x8005
    SetVar 0x8008, 0x8004
    GoToIfEq 0x8008, 30, _048B
    GoToIfEq 0x8008, 31, _0499
    GoToIfEq 0x8008, 32, _04A7
    Return

_048B:
    ScrCmd_18C 0xFF, 3
    ScrCmd_18C 5, 2
    Return

_0499:
    ScrCmd_18C 0xFF, 2
    ScrCmd_18C 5, 3
    Return

_04A7:
    ScrCmd_18C 0xFF, 2
    ScrCmd_18C 5, 3
    Return

    .byte 94
    .byte 0
    .byte 4
    .byte 0
    .byte 15
    .byte 0
    .byte 0
    .byte 0
    .byte 94
    .byte 0
    .byte 2
    .byte 0
    .byte 27
    .byte 0
    .byte 0
    .byte 0
    .byte 95
    .byte 0
    .byte 27
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 3
    .byte 0
    .byte 1
    .byte 0
    .byte 71
    .byte 0
    .byte 1
    .byte 0
    .byte 10
    .byte 0
    .byte 1
    .byte 0
    .byte 72
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0
    .byte 1
    .byte 0
    .byte 71
    .byte 0
    .byte 1
    .byte 0
    .byte 11
    .byte 0
    .byte 1
    .byte 0
    .byte 72
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_04F4:
    MoveAction_03E 2
    MoveAction_010 8
    EndMovement

    .balign 4, 0
_0500:
    MoveAction_011 8
    EndMovement

_0508:
    ApplyMovement 0xFF, _05B8
    WaitMovement
    GetPlayerMapPos 0x8000, 0x8001
    ScrCmd_066 0x8000, 0x8001
    Call _05C0
    WaitMovement
    SetVar 0x8005, 13
    SetVar 0x8006, 68
    Call _0109
    MessageVar 0x8004
    CloseMessage
    FadeOutMusic 0, 30
    ScrCmd_20D 0, 0x800C
    WaitTime 10, 0x800C
    PlayFanfare SEQ_SE_PL_KUSARI
    WaitTime 20, 0x800C
    PlayMusic SEQ_THE_EVENT02
    ScrCmd_05D
    GoTo _0567
    End

_0567:
    ScrCmd_20D 1, 0x800C
    GoToIfEq 0x800C, 0, _0567
    ScrCmd_2FB
    SetFlag 0x1C8
    SetFlag 0x1C9
    SetFlag 0x1CA
    SetVar 0x4098, 3
    SetFlag 0x981
    ClearFlag 0x1C7
    SetFlag 0x132
    SetVar 0x40C3, 1
    ScrCmd_31A 0x1E3
    ScrCmd_31A 0x1E4
    ScrCmd_067
    Warp MAP_HEADER_SPEAR_PILLAR_DISTORTED, 0, 30, 30, 0
    End

    .balign 4, 0
_05B8:
    MoveAction_020
    EndMovement

_05C0:
    GetPlayerMapPos 0x8004, 0x8005
    SetVar 0x8008, 0x8004
    GoToIfEq 0x8008, 29, _060F
    GoToIfEq 0x8008, 30, _0619
    GoToIfEq 0x8008, 31, _0623
    GoToIfEq 0x8008, 32, _062D
    GoToIfEq 0x8008, 33, _0637
    Return

_060F:
    ApplyMovement 241, _0644
    Return

_0619:
    ApplyMovement 241, _0654
    Return

_0623:
    ApplyMovement 241, _0664
    Return

_062D:
    ApplyMovement 241, _0670
    Return

_0637:
    ApplyMovement 241, _0680
    Return

    .balign 4, 0
_0644:
    MoveAction_03F
    MoveAction_00C 6
    MoveAction_00F 2
    EndMovement

    .balign 4, 0
_0654:
    MoveAction_03F
    MoveAction_00C 6
    MoveAction_00F
    EndMovement

    .balign 4, 0
_0664:
    MoveAction_03F
    MoveAction_00C 6
    EndMovement

    .balign 4, 0
_0670:
    MoveAction_03F
    MoveAction_00C 6
    MoveAction_00E
    EndMovement

    .balign 4, 0
_0680:
    MoveAction_03F
    MoveAction_00C 6
    MoveAction_00E 2
    EndMovement
