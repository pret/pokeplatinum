#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0026
    ScriptEntry _0061
    ScriptEntry _009D
    ScriptEntry _060C
    ScriptEntry _0632
    ScriptEntry _061F
    ScriptEntry _06B8
    ScriptEntry _06CF
    ScriptEntry _06E2
    .short 0xFD13

_0026:
    CallIfSet 0x106, _004B
    GoToIfUnset 0x15E, _0079
    GoToIfSet 0x15E, _008B
    End
    End

_004B:
    ScrCmd_186 5, 0x2D3, 0x301
    ScrCmd_189 5, 0
    ScrCmd_188 5, 14
    Return

_0061:
    GoToIfUnset 0x15E, _0079
    GoToIfSet 0x15E, _008B
    End

_0079:
    ScrCmd_18A 5, 0x2C9, 0x2F8
    ScrCmd_18A 6, 0x2C9, 0x2F9
    End

_008B:
    ScrCmd_18A 3, 0x2C9, 0x2F8
    ScrCmd_18A 4, 0x2C9, 0x2F9
    End

_009D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfSet 0x106, _013A
    Message 0
    FacePlayer
    ApplyMovement 5, _0214
    WaitMovement
    Message 1
    CloseMessage
    ScrCmd_1BD 0x8004
    GoToIfEq 0x8004, 1, _00E6
    GoToIfEq 0x8004, 0, _00FE
    GoTo _010E

_00E6:
    ApplyMovement 5, _021C
    ApplyMovement 0xFF, _01E0
    WaitMovement
    GoTo _0126

_00FE:
    ApplyMovement 5, _0228
    WaitMovement
    GoTo _0126

_010E:
    ApplyMovement 5, _0228
    ApplyMovement 0xFF, _01EC
    WaitMovement
    GoTo _0126

_0126:
    ScrCmd_187 5, 0x2D3, 1, 0x301, 0
    SetFlag 0x106
    ReleaseAll
    End

_013A:
    ScrCmd_1BD 0x8000
    FacePlayer
    Message 2
    CloseMessage
    ScrCmd_0E5 0x34F, 0
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _01D9
    Message 3
    CloseMessage
    ScrCmd_1BD 0x8004
    GoToIfEq 0x8004, 1, _0185
    GoToIfEq 0x8004, 0, _019D
    GoTo _01AD

_0185:
    ApplyMovement 5, _0230
    ApplyMovement 0xFF, _01F4
    WaitMovement
    GoTo _01C5

_019D:
    ApplyMovement 5, _023C
    WaitMovement
    GoTo _01C5

_01AD:
    ApplyMovement 5, _023C
    ApplyMovement 0xFF, _0208
    WaitMovement
    GoTo _01C5

_01C5:
    ScrCmd_065 5
    SetFlag 0x211
    ClearFlag 0x156
    GoTo _0248
    End

_01D9:
    ScrCmd_0EB
    ReleaseAll
    End

    .balign 4, 0
_01E0:
    MoveAction_023
    MoveAction_020
    EndMovement

    .balign 4, 0
_01EC:
    MoveAction_020
    EndMovement

    .balign 4, 0
_01F4:
    MoveAction_03F
    MoveAction_023
    MoveAction_03F
    MoveAction_020
    EndMovement

    .balign 4, 0
_0208:
    MoveAction_03F
    MoveAction_020
    EndMovement

    .balign 4, 0
_0214:
    MoveAction_04B
    EndMovement

    .balign 4, 0
_021C:
    MoveAction_013
    MoveAction_010 11
    EndMovement

    .balign 4, 0
_0228:
    MoveAction_010 10
    EndMovement

    .balign 4, 0
_0230:
    MoveAction_00F
    MoveAction_008 9
    EndMovement

    .balign 4, 0
_023C:
    MoveAction_00C
    MoveAction_008 9
    EndMovement

_0248:
    CallIfEq 0x8000, 0, _03EC
    CallIfEq 0x8000, 1, _03F6
    CallIfEq 0x8000, 2, _0400
    CallIfEq 0x8000, 3, _040A
    ClearFlag 0x1AD
    ScrCmd_189 0, 1
    ScrCmd_188 0, 15
    ScrCmd_064 0
    ApplyMovement 0, _0594
    WaitMovement
    Message 4
    CloseMessage
    CallIfEq 0x8000, 0, _0444
    CallIfEq 0x8000, 1, _044E
    CallIfEq 0x8000, 2, _0458
    CallIfEq 0x8000, 3, _0462
    ClearFlag 0x1D5
    ScrCmd_189 10, 0
    ScrCmd_188 10, 14
    ScrCmd_064 10
    CallCommonScript 0x7FA
    CallIfEq 0x8000, 0, _046C
    CallIfEq 0x8000, 1, _0480
    CallIfEq 0x8000, 2, _0494
    CallIfEq 0x8000, 3, _04A8
    BufferPlayerName 0
    BufferRivalName 1
    Message 5
    ApplyMovement 10, _0574
    WaitMovement
    Message 6
    CallIfEq 0x8000, 0, _04BC
    CallIfEq 0x8000, 1, _04C8
    CallIfEq 0x8000, 2, _04D4
    CallIfEq 0x8000, 3, _04E0
    Message 7
    CloseMessage
    ApplyMovement 0, _05A8
    ApplyMovement 0xFF, _05E8
    ApplyMovement 10, _058C
    WaitMovement
    ScrCmd_065 10
    CallCommonScript 0x7FB
    Message 8
    CloseMessage
    CallIfEq 0x8000, 0, _0414
    CallIfEq 0x8000, 1, _0420
    CallIfEq 0x8000, 2, _042C
    CallIfEq 0x8000, 3, _0438
    Message 9
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _04EC
    GoToIfEq 0x800C, 1, _04F7
    End

_03EC:
    ScrCmd_186 0, 0x2D3, 0x2F9
    Return

_03F6:
    ScrCmd_186 0, 0x2D3, 0x2F7
    Return

_0400:
    ScrCmd_186 0, 0x2D4, 0x2F8
    Return

_040A:
    ScrCmd_186 0, 0x2D2, 0x2F8
    Return

_0414:
    ApplyMovement 0, _05B4
    WaitMovement
    Return

_0420:
    ApplyMovement 0, _05B4
    WaitMovement
    Return

_042C:
    ApplyMovement 0, _05B4
    WaitMovement
    Return

_0438:
    ApplyMovement 0, _05B4
    WaitMovement
    Return

_0444:
    ScrCmd_186 10, 0x2D4, 0x30C
    Return

_044E:
    ScrCmd_186 10, 0x2D4, 0x30A
    Return

_0458:
    ScrCmd_186 10, 0x2D3, 0x30B
    Return

_0462:
    ScrCmd_186 10, 0x2D3, 0x30B
    Return

_046C:
    ApplyMovement 0xFF, _05D0
    ApplyMovement 10, _055C
    WaitMovement
    Return

_0480:
    ApplyMovement 0xFF, _05D0
    ApplyMovement 10, _055C
    WaitMovement
    Return

_0494:
    ApplyMovement 0xFF, _05DC
    ApplyMovement 10, _0568
    WaitMovement
    Return

_04A8:
    ApplyMovement 0xFF, _05D0
    ApplyMovement 10, _055C
    WaitMovement
    Return

_04BC:
    ApplyMovement 10, _057C
    WaitMovement
    Return

_04C8:
    ApplyMovement 10, _057C
    WaitMovement
    Return

_04D4:
    ApplyMovement 10, _0584
    WaitMovement
    Return

_04E0:
    ApplyMovement 10, _057C
    WaitMovement
    Return

_04EC:
    Message 10
    GoTo _0502
    End

_04F7:
    Message 11
    GoTo _0502
    End

_0502:
    Message 12
    SetVar 0x8004, 0x1D0
    SetVar 0x8005, 1
    CallCommonScript 0x7FC
    Message 13
    CloseMessage
    GoTo _0522
    End

_0522:
    ApplyMovement 0, _05BC
    ApplyMovement 0xFF, _0600
    WaitMovement
    GoTo _053A

_053A:
    ScrCmd_065 0
    SetVar 0x4083, 2
    SetFlag 183
    SetFlag 0x1A9
    ClearFlag 0x20F
    SetVar 0x407C, 6
    ReleaseAll
    End

    .balign 4, 0
_055C:
    MoveAction_010 10
    MoveAction_026
    EndMovement

    .balign 4, 0
_0568:
    MoveAction_010 10
    MoveAction_027
    EndMovement

    .balign 4, 0
_0574:
    MoveAction_024
    EndMovement

    .balign 4, 0
_057C:
    MoveAction_026
    EndMovement

    .balign 4, 0
_0584:
    MoveAction_027
    EndMovement

    .balign 4, 0
_058C:
    MoveAction_010 8
    EndMovement

    .balign 4, 0
_0594:
    MoveAction_00D 4
    MoveAction_020
    MoveAction_03F 2
    MoveAction_00D 4
    EndMovement

    .balign 4, 0
_05A8:
    MoveAction_03F
    MoveAction_020
    EndMovement

    .balign 4, 0
_05B4:
    MoveAction_021
    EndMovement

    .balign 4, 0
_05BC:
    MoveAction_00C 9
    EndMovement

    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_05D0:
    MoveAction_03F 4
    MoveAction_023
    EndMovement

    .balign 4, 0
_05DC:
    MoveAction_03F 4
    MoveAction_022
    EndMovement

    .balign 4, 0
_05E8:
    MoveAction_03F 2
    MoveAction_020
    EndMovement

    .byte 63
    .byte 0
    .byte 3
    .byte 0
    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0600:
    MoveAction_03F
    MoveAction_000
    EndMovement

_060C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 14
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_061F:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0632:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckItem ITEM_SUITE_KEY, 1, 0x800C
    GoToIfEq 0x800C, 1, _065A
    Message 18
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_065A:
    Message 19
    CloseMessage
    RemoveItem ITEM_SUITE_KEY, 1, 0x800C
    ApplyMovement 8, _06A8
    WaitMovement
    ScrCmd_168 22, 24, 11, 13, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ApplyMovement 8, _06B0
    WaitMovement
    ScrCmd_065 8
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    ClearFlag 0x25E
    SetFlag 0x25D
    ReleaseAll
    End

    .balign 4, 0
_06A8:
    MoveAction_020
    EndMovement

    .balign 4, 0
_06B0:
    MoveAction_00C
    EndMovement

_06B8:
    ScrCmd_036 20, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_06CF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 17
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_06E2:
    LockAll
    ApplyMovement 9, _07A8
    WaitMovement
    GetPlayerMapPos 0x8000, 0x8001
    CallIfEq 0x8001, 0x315, _075D
    CallIfEq 0x8001, 0x316, _0769
    CallIfEq 0x8001, 0x317, _0775
    ApplyMovement 9, _07FC
    ApplyMovement 0xFF, _0804
    WaitMovement
    Message 16
    CloseMessage
    CallIfEq 0x8001, 0x315, _0781
    CallIfEq 0x8001, 0x316, _078D
    CallIfEq 0x8001, 0x317, _0799
    ReleaseAll
    End

_075D:
    ApplyMovement 9, _07B4
    WaitMovement
    Return

_0769:
    ApplyMovement 9, _07C0
    WaitMovement
    Return

_0775:
    ApplyMovement 9, _07CC
    WaitMovement
    Return

_0781:
    ApplyMovement 9, _07D8
    WaitMovement
    Return

_078D:
    ApplyMovement 9, _07E4
    WaitMovement
    Return

_0799:
    ApplyMovement 9, _07F0
    WaitMovement
    Return

    .balign 4, 0
_07A8:
    MoveAction_04B
    MoveAction_041
    EndMovement

    .balign 4, 0
_07B4:
    MoveAction_00F
    MoveAction_00D
    EndMovement

    .balign 4, 0
_07C0:
    MoveAction_00F
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_07CC:
    MoveAction_00F
    MoveAction_00D 3
    EndMovement

    .balign 4, 0
_07D8:
    MoveAction_00C
    MoveAction_001
    EndMovement

    .balign 4, 0
_07E4:
    MoveAction_00C 2
    MoveAction_001
    EndMovement

    .balign 4, 0
_07F0:
    MoveAction_00C 3
    MoveAction_001
    EndMovement

    .balign 4, 0
_07FC:
    MoveAction_00E
    EndMovement

    .balign 4, 0
_0804:
    MoveAction_047
    MoveAction_00E
    MoveAction_048
    EndMovement
