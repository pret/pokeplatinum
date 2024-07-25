#include "macros/scrcmd.inc"

    .data

    ScriptEntry _003E
    ScriptEntry _01AE
    ScriptEntry _008C
    ScriptEntry _01AC
    ScriptEntry _04F0
    ScriptEntry _0544
    ScriptEntry _0592
    ScriptEntry _0594
    ScriptEntry _05A5
    ScriptEntry _05B6
    ScriptEntry _05C7
    ScriptEntry _05D8
    ScriptEntry _05EC
    ScriptEntry _05FD
    ScriptEntry _0114
    .short 0xFD13

_003E:
    CallIfEq 0x40A6, 2, _005A
    CallIfEq 0x40A6, 3, _005A
    End

_005A:
    ClearFlag 0x198
    ScrCmd_186 0, 7, 14
    ScrCmd_189 0, 1
    ScrCmd_188 0, 15
    ClearFlag 0x199
    ScrCmd_186 3, 6, 14
    ScrCmd_189 3, 1
    ScrCmd_188 3, 15
    Return

_008C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Call _08A0
    GoToIfEq 0x8006, 1, _0106
    GoTo _00B7
    End

_00AF:
    SetVar 0x40AA, 3
    Return

_00B7:
    ScrCmd_22D 2, 0x800C
    GoToIfEq 0x800C, 1, _07AE
    GoToIfUnset 0x9BA, _00E5
    ScrCmd_1E8 0x800C
    GoToIfEq 0x800C, 1, _060E
_00E5:
    GoToIfGe 0x4071, 2, _0100
    BufferPlayerName 0
    Message 18
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0100:
    CallCommonScript 0x26DE
    End

_0106:
    BufferPlayerName 0
    Message 55
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0114:
    LockAll
    CallIfEq 0x40AA, 2, _00AF
    BufferPlayerName 1
    Message 51
    CloseMessage
    ApplyMovement 3, _019C
    WaitMovement
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _014E
    GoTo _015C
    End

_014E:
    BufferPlayerName 1
    Message 52
    GoTo _016A
    End

_015C:
    BufferPlayerName 1
    Message 53
    GoTo _016A
    End

_016A:
    ScrCmd_11E 0x800C
    BufferNumber 1, 0x800C
    Message 54
    WaitABXPadPress
    CloseMessage
    SetFlag 0x27D
    SetVar 0x4112, 1
    ClearFlag 0x1DF
    ClearFlag 0x1E0
    ClearFlag 0x1E1
    SetVar 0x40A6, 3
    ReleaseAll
    End

    .balign 4, 0
_019C:
    MoveAction_023
    MoveAction_03E
    MoveAction_021
    EndMovement

_01AC:
    End

_01AE:
    LockAll
    ApplyMovement 3, _0484
    ApplyMovement 0xFF, _04A8
    WaitMovement
    BufferPlayerName 0
    Message 0
    CloseMessage
    SetPlayerState 0x100
    ChangePlayerState
    ApplyMovement 0xFF, _04E0
    WaitMovement
    SetVar 0x8004, 0
    ScrCmd_198 0x8004, 0x800C
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0x183, _0219
    GoToIfEq 0x8008, 0x186, _0219
    GoToIfEq 0x8008, 0x189, _0219
    GoTo _0222

_0219:
    Message 1
    GoTo _022B

_0222:
    Message 2
    GoTo _022B

_022B:
    CloseMessage
    ApplyMovement 0xFF, _04E8
    WaitMovement
    SetPlayerState 1
    ChangePlayerState
    BufferPartyMonSpecies 0, 0
    Message 3
    Message 4
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _02BC
    GoTo _0261
    End

_0261:
    SetVar 0x800C, 0
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0BB 0, 0x800C
    SetVar 0x8002, 0x800C
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    Message 5
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0261
    CallIfNe 0x8002, 1, _02B6
    GoTo _02BC
    End

_02B6:
    ScrCmd_1E5 49
    Return

_02BC:
    BufferPartyMonSpecies 0, 0
    BufferRivalName 1
    Message 6
    CloseMessage
    ApplyMovement 3, _0498
    WaitMovement
    ApplyMovement 0xFF, _04BC
    WaitMovement
    WaitTime 15, 0x800C
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _02FC
    GoTo _0316
    End

_02FC:
    BufferCounterpartName 0
    Message 7
    CloseMessage
    ApplyMovement 3, _04D0
    WaitMovement
    GoTo _0330
    End

_0316:
    BufferCounterpartName 0
    Message 8
    CloseMessage
    ApplyMovement 3, _04D0
    WaitMovement
    GoTo _0330
    End

_0330:
    FadeOutMusic 0, 40
    ApplyMovement 0, _047C
    ApplyMovement 0xFF, _04B4
    WaitMovement
    WaitTime 35, 0x800C
    SetFlag 0x993
    PlayMusic SEQ_OPENING2
    Message 9
    Message 10
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0375
    GoTo _0394
    End

_0375:
    BufferPlayerName 0
    Message 11
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0375
    GoTo _0394
    End

_0394:
    Message 12
    ScrCmd_158
    SetFlag 144
    BufferPlayerName 0
    Message 13
    PlaySound SEQ_FANFA4
    WaitSound
    BufferPlayerName 0
    Message 14
    CloseMessage
    ApplyMovement 3, _04A0
    WaitMovement
    WaitTime 15, 0x800C
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _03DA
    GoTo _03E8
    End

_03DA:
    BufferCounterpartName 0
    Message 15
    GoTo _03F6
    End

_03E8:
    BufferCounterpartName 0
    Message 16
    GoTo _03F6
    End

_03F6:
    BufferPlayerName 0
    Message 17
    CloseMessage
    ApplyMovement 3, _04A0
    WaitMovement
    ApplyMovement 0xFF, _04BC
    WaitMovement
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _042B
    GoTo _043C
    End

_042B:
    BufferPlayerName 0
    ScrCmd_342 1
    Message 19
    GoTo _044D
    End

_043C:
    BufferPlayerName 0
    ScrCmd_0DC 1
    Message 20
    GoTo _044D
    End

_044D:
    CloseMessage
    ApplyMovement 0xFF, _04C4
    ApplyMovement 3, _04D8
    WaitMovement
    ScrCmd_065 3
    ClearFlag 0x177
    SetVar 0x40A6, 1
    ReleaseAll
    End

    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_047C:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0484:
    MoveAction_041
    MoveAction_00C 8
    MoveAction_00F
    MoveAction_022
    EndMovement

    .balign 4, 0
_0498:
    MoveAction_022
    EndMovement

    .balign 4, 0
_04A0:
    MoveAction_022
    EndMovement

    .balign 4, 0
_04A8:
    MoveAction_041
    MoveAction_00C 9
    EndMovement

    .balign 4, 0
_04B4:
    MoveAction_020
    EndMovement

    .balign 4, 0
_04BC:
    MoveAction_023
    EndMovement

    .balign 4, 0
_04C4:
    MoveAction_03F
    MoveAction_021
    EndMovement

    .balign 4, 0
_04D0:
    MoveAction_022
    EndMovement

    .balign 4, 0
_04D8:
    MoveAction_00D 10
    EndMovement

    .balign 4, 0
_04E0:
    MoveAction_066
    EndMovement

    .balign 4, 0
_04E8:
    MoveAction_068
    EndMovement

_04F0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Call _08A0
    GoToIfEq 0x8006, 1, _0539
    ScrCmd_22D 2, 0x800C
    GoToIfEq 0x800C, 1, _052B
    BufferCounterpartName 0
    Message 21
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_052B:
    BufferCounterpartName 0
    Message 49
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0539:
    Message 59
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0544:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Call _08A0
    GoToIfEq 0x8006, 1, _0587
    ScrCmd_22D 2, 0x800C
    GoToIfEq 0x800C, 1, _057C
    Message 22
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_057C:
    Message 50
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0587:
    Message 60
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0592:
    End

_0594:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 23
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_05A5:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 24
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_05B6:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 25
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_05C7:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 26
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_05D8:
    BufferPlayerName 0
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 46
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_05EC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 47
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_05FD:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 48
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_060E:
    GoToIfSet 0x110, _0621
    GoTo _0631
    End

_0621:
    BufferPlayerName 0
    Message 31
    CloseMessage
    GoTo _0677
    End

_0631:
    BufferPlayerName 0
    Message 27
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0650
    GoTo _065B
    End

_0650:
    Message 29
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_065B:
    ScrCmd_11E 0x800C
    BufferNumber 0, 0x800C
    Message 28
    BufferPlayerName 0
    Message 30
    CloseMessage
    GoTo _0677
    End

_0677:
    ScrCmd_1BD 0x8007
    CallIfEq 0x8007, 0, _07B9
    CallIfEq 0x8007, 1, _07BB
    CallIfEq 0x8007, 2, _07CF
    CallIfEq 0x8007, 3, _07E3
    ClearFlag 0x22A
    ScrCmd_064 4
    ApplyMovement 0xFF, _0858
    ApplyMovement 4, _0884
    ApplyMovement 0, _0804
    WaitMovement
    Message 32
    Message 33
    CloseMessage
    ApplyMovement 0, _080C
    WaitMovement
    WaitTime 15, 0x800C
    Message 34
    CloseMessage
    ApplyMovement 4, _088C
    ApplyMovement 0xFF, _086C
    WaitMovement
    Message 35
    CallIfSet 0x964, _07A2
    CallIfGe 0x4081, 2, _079C
    ScrCmd_22D 1, 0x800C
    BufferPlayerName 0
    PlaySound SEQ_FANFA4
    Message 36
    WaitSound
    Message 37
    Message 38
    Message 39
    BufferPlayerName 0
    ScrCmd_14D 0x8004
    CallIfEq 0x8004, 0, _07A4
    CallIfEq 0x8004, 1, _07A9
    CloseMessage
    ApplyMovement 4, _0898
    WaitMovement
    ScrCmd_065 4
    Message 42
    CloseMessage
    WaitTime 15, 0x800C
    ApplyMovement 0xFF, _0878
    WaitMovement
    BufferPlayerName 0
    Message 43
    SetVar 0x8004, 0x1AF
    SetVar 0x8005, 1
    CallCommonScript 0x7FC
    Message 44
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_079C:
    SetFlag 0x294
    Return

_07A2:
    Return

_07A4:
    Message 40
    Return

_07A9:
    Message 41
    Return

_07AE:
    Message 45
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_07B9:
    Return

_07BB:
    ApplyMovement 0xFF, _0824
    ApplyMovement 0, _07F8
    WaitMovement
    Return

_07CF:
    ApplyMovement 0xFF, _0838
    ApplyMovement 0, _07F8
    WaitMovement
    Return

_07E3:
    ApplyMovement 0xFF, _0848
    ApplyMovement 0, _07F8
    WaitMovement
    Return

    .balign 4, 0
_07F8:
    MoveAction_03F
    MoveAction_021
    EndMovement

    .balign 4, 0
_0804:
    MoveAction_04B
    EndMovement

    .balign 4, 0
_080C:
    MoveAction_022
    MoveAction_03F 2
    MoveAction_021
    EndMovement

    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0824:
    MoveAction_00E
    MoveAction_00D 2
    MoveAction_00F
    MoveAction_020
    EndMovement

    .balign 4, 0
_0838:
    MoveAction_00D
    MoveAction_00E
    MoveAction_020
    EndMovement

    .balign 4, 0
_0848:
    MoveAction_00D
    MoveAction_00F
    MoveAction_020
    EndMovement

    .balign 4, 0
_0858:
    MoveAction_021
    MoveAction_03F 5
    MoveAction_00E
    MoveAction_023
    EndMovement

    .balign 4, 0
_086C:
    MoveAction_03F
    MoveAction_021
    EndMovement

    .balign 4, 0
_0878:
    MoveAction_00F
    MoveAction_020
    EndMovement

    .balign 4, 0
_0884:
    MoveAction_00C 7
    EndMovement

    .balign 4, 0
_088C:
    MoveAction_00E
    MoveAction_020
    EndMovement

    .balign 4, 0
_0898:
    MoveAction_00D 9
    EndMovement

_08A0:
    SetVar 0x8006, 0
    GoToIfEq 0x40A6, 3, _08B5
    Return

_08B5:
    GoToIfUnset 0x9BE, _08C2
    Return

_08C2:
    SetVar 0x8006, 1
    Return

    .byte 0
    .byte 0
