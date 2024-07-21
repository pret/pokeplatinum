#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0059
    ScriptEntry _06A4
    ScriptEntry _06DD
    ScriptEntry _06EC
    ScriptEntry _0760
    ScriptEntry _0075
    ScriptEntry _0788
    ScriptEntry _079B
    ScriptEntry _07AE
    ScriptEntry _07C1
    ScriptEntry _07D4
    ScriptEntry _07E7
    ScriptEntry _07FA
    ScriptEntry _003A
    .short 0xFD13

_003A:
    ScrCmd_238 19, 0x4000
    GoToIfEq 0x4000, 0, _0053
    ClearFlag 0x2C3
    End

_0053:
    SetFlag 0x2C3
    End

_0059:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar 0x4003, 0
    SetVar 0x4004, 0
    GoTo _0091
    End

_0075:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar 0x4003, 0
    SetVar 0x4004, 1
    GoTo _0091
    End

_0091:
    ScrCmd_313 0
    CallIfEq 0x4004, 0, _0664
    CallIfEq 0x4004, 1, _0669
    GoTo _00B7
    End

_00B7:
    CallIfEq 0x4004, 0, _066E
    CallIfEq 0x4004, 1, _0686
    ScrCmd_042 41, 2
    ScrCmd_042 42, 3
    ScrCmd_043
    GoToIfEq 0x800C, 0, _0152
    GoToIfEq 0x800C, 1, _017F
    GoToIfEq 0x800C, 2, _0117
    GoToIfEq 0x800C, 4, _01AC
    GoTo _0139
    End

_0117:
    CallIfEq 0x4004, 0, _069A
    CallIfEq 0x4004, 1, _069F
    GoTo _00B7
    End

_0139:
    GoTo _0141
    End

_0141:
    SetVar 0x40BC, 0
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0152:
    SetVar 0x40BD, 0
    ScrCmd_2D2 0, 3, 0x800C
    BufferNumber 0, 3
    BufferNumber 1, 3
    GoToIfEq 0x800C, 0, _01D9
    GoTo _01FF
    End

_017F:
    SetVar 0x40BD, 1
    ScrCmd_2D2 0, 3, 0x800C
    BufferNumber 0, 3
    BufferNumber 1, 3
    GoToIfEq 0x800C, 0, _01D9
    GoTo _01FF
    End

_01AC:
    SetVar 0x40BD, 2
    ScrCmd_2D2 0, 2, 0x800C
    BufferNumber 0, 2
    BufferNumber 1, 2
    GoToIfEq 0x800C, 0, _01EC
    GoTo _01FF
    End

_01D9:
    Message 8
    ScrCmd_1FF 9, 3, 0, 0
    GoTo _0139
    End

_01EC:
    Message 8
    ScrCmd_1FF 9, 2, 0, 0
    GoTo _0139
    End

_01FF:
    Message 7
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_2D2 4, 0x40BD, 0x800C
    ScrCmd_2D4 0x4002, 0x4005, 0x4006
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x4002, 0xFF, _0139
    ScrCmd_31E 0x4002, 0x800C
    GoToIfEq 0x800C, 0xFF, _05D5
    ScrCmd_31E 0x4005, 0x800C
    GoToIfEq 0x800C, 0xFF, _05D5
    ScrCmd_31E 0x4006, 0x800C
    GoToIfEq 0x800C, 0xFF, _05D5
    ScrCmd_198 0x4002, 0x4001
    GoToIfEq 0x4001, 0, _0139
    GoTo _028F
    End

_028F:
    GoTo _0297
    End

_0297:
    CallIfEq 0x40BD, 0, _043C
    CallIfEq 0x40BD, 1, _043C
    SetVar 0x4000, 0
    ScrCmd_14E
    CallCommonScript 0x7D6
    SetVar 0x800C, 0x4000
    GoToIfEq 0x800C, 0, _0139
    GoToIfEq 0x40BD, 2, _02E5
    GoTo _049D
    End

_02E5:
    Message 43
    ScrCmd_040 30, 1, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 13, 0
    ScrCmd_042 14, 1
    ScrCmd_042 5, 2
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0329
    GoToIfEq 0x8008, 1, _037D
    GoTo _0139
    End

_0329:
    Message 44
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _02E5
    CloseMessage
    ScrCmd_0F2 31, 0, 0, 0x800C
    GoToIfEq 0x800C, 1, _036B
    GoToIfEq 0x800C, 3, _0373
    GoTo _03D1
    End

_036B:
    GoTo _02E5
    End

_0373:
    ScrCmd_150
    GoTo _02E5
    End

_037D:
    Message 44
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _02E5
    CloseMessage
    ScrCmd_0F3 31, 0, 0, 0x800C
    GoToIfEq 0x800C, 1, _03BF
    GoToIfEq 0x800C, 3, _03C7
    GoTo _03D1
    End

_03BF:
    GoTo _02E5
    End

_03C7:
    ScrCmd_150
    GoTo _02E5
    End

_03D1:
    ScrCmd_136
    ScrCmd_135 136
    ScrCmd_198 0x4002, 0x8000
    ScrCmd_198 0x4005, 0x8001
    ScrCmd_2D3 0x8000, 0x8001, 0x800C
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 1, _0444
    GoToIfEq 0x8008, 2, _045A
    GoToIfEq 0x8008, 3, _0470
    ScrCmd_136
    ScrCmd_135 138
    Message 45
    CallIfEq 0x40BD, 2, _043C
    Call _06CB
    GoTo _049D
    End

_043C:
    SetVar 0x40BC, 0xFF
    Return

_0444:
    Call _0493
    BufferPartyMonSpecies 0, 0x4002
    Message 29
    GoTo _048B
    End

_045A:
    Call _0493
    BufferPartyMonSpecies 0, 0x4005
    Message 29
    GoTo _048B
    End

_0470:
    Call _0493
    BufferPartyMonSpecies 0, 0x4002
    BufferPartyMonSpecies 1, 0x4005
    Message 30
    GoTo _048B
    End

_048B:
    GoTo _0139
    End

_0493:
    ScrCmd_136
    ScrCmd_135 139
    ScrCmd_150
    Return

_049D:
    CallIfEq 0x40BD, 0, _053D
    CallIfEq 0x40BD, 1, _0558
    CallIfEq 0x40BD, 2, _0573
    PlayFanfare SEQ_SE_DP_KAIDAN2
    GoTo _04D0
    End

_04D0:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CallIfEq 0x40BD, 0, _0599
    CallIfEq 0x40BD, 1, _05AD
    CallIfEq 0x40BD, 2, _05C1
    ScrCmd_1E5 58
    ScrCmd_1CD 38, 0, 0, 0, 0
    ScrCmd_1F8
    ScrCmd_2C4 11
    CallIfEq 0x40BD, 2, _0539
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ScrCmd_313 1
    End

_0539:
    ScrCmd_150
    Return

_053D:
    Message 32
    WaitABPress
    CloseMessage
    ApplyMovement 0xFF, _05E4
    ApplyMovement 0x800D, _0604
    WaitMovement
    Return

_0558:
    Message 32
    WaitABPress
    CloseMessage
    ApplyMovement 0xFF, _05E4
    ApplyMovement 0x800D, _0604
    WaitMovement
    Return

_0573:
    ScrCmd_02E 32
    WaitTime 10, 0x800C
    ScrCmd_136
    ScrCmd_135 137
    CloseMessage
    ApplyMovement 0xFF, _05F0
    ApplyMovement 0x800D, _0610
    WaitMovement
    Return

_0599:
    ApplyMovement 0xFF, _0624
    ApplyMovement 0x800D, _0648
    WaitMovement
    Return

_05AD:
    ApplyMovement 0xFF, _0624
    ApplyMovement 0x800D, _0648
    WaitMovement
    Return

_05C1:
    ApplyMovement 0xFF, _0634
    ApplyMovement 0x800D, _0654
    WaitMovement
    Return

_05D5:
    SetVar 0x40BC, 0
    CallCommonScript 0x809
    End

    .balign 4, 0
_05E4:
    MoveAction_00E 6
    MoveAction_045
    EndMovement

    .balign 4, 0
_05F0:
    MoveAction_00E 3
    MoveAction_00C
    MoveAction_00E 3
    MoveAction_045
    EndMovement

    .balign 4, 0
_0604:
    MoveAction_00E 5
    MoveAction_045
    EndMovement

    .balign 4, 0
_0610:
    MoveAction_00E 2
    MoveAction_00C
    MoveAction_00E 3
    MoveAction_045
    EndMovement

    .balign 4, 0
_0624:
    MoveAction_017 6
    MoveAction_046
    MoveAction_002
    EndMovement

    .balign 4, 0
_0634:
    MoveAction_017 6
    MoveAction_015
    MoveAction_046
    MoveAction_002
    EndMovement

    .balign 4, 0
_0648:
    MoveAction_017 5
    MoveAction_046
    EndMovement

    .balign 4, 0
_0654:
    MoveAction_015
    MoveAction_017 5
    MoveAction_046
    EndMovement

_0664:
    Message 0
    Return

_0669:
    Message 3
    Return

_066E:
    ScrCmd_041 31, 9, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 38, 0
    ScrCmd_042 39, 1
    Message 1
    Return

_0686:
    ScrCmd_041 31, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 40, 4
    Message 4
    Return

_069A:
    Message 2
    Return

_069F:
    Message 5
    Return

_06A4:
    ScrCmd_313 0
    SetVar 0x4003, 1
    SetVar 0x40BC, 0
    Message 33
    Call _043C
    Call _06CB
    GoTo _049D
    End

_06CB:
    ScrCmd_18D
    ScrCmd_12D 0x800C
    ScrCmd_18E
    PlayFanfare SEQ_SE_DP_SAVE
    WaitFanfare SEQ_SE_DP_SAVE
    Return

_06DD:
    Message 34
    ScrCmd_2D5 0x40BD
    GoTo _0139
    End

_06EC:
    CallIfEq 0x40BD, 0, _0728
    CallIfEq 0x40BD, 1, _0728
    CallIfEq 0x4052, 1, _072E
    CallIfEq 0x4052, 3, _0745
    GoTo _0139
    End

_0728:
    ScrCmd_30A 39
    Return

_072E:
    Message 35
    BufferPlayerName 0
    Message 37
    PlaySound SEQ_FANFA4
    WaitSound
    SetVar 0x4052, 2
    Return

_0745:
    Message 35
    BufferPlayerName 0
    Message 36
    PlaySound SEQ_FANFA4
    WaitSound
    SetVar 0x4052, 4
    CallCommonScript 0x806
    Return

_0760:
    GoTo _0139

    .byte 2
    .byte 0
    .byte 12
    .byte 0
    .byte 2
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 12
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 12
    .byte 0
    .byte 2
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 12
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_0788:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 46
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_079B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 47
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_07AE:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 48
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_07C1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 49
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_07D4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 50
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_07E7:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 51
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_07FA:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 52
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
