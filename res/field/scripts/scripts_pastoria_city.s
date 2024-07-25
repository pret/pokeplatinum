#include "macros/scrcmd.inc"

    .data

    ScriptEntry _005E
    ScriptEntry _00B2
    ScriptEntry _00C5
    ScriptEntry _00D8
    ScriptEntry _00EB
    ScriptEntry _00FE
    ScriptEntry _01D2
    ScriptEntry _01E5
    ScriptEntry _0204
    ScriptEntry _012F
    ScriptEntry _01AC
    ScriptEntry _01BF
    ScriptEntry _03E4
    ScriptEntry _03FB
    ScriptEntry _0410
    ScriptEntry _0427
    ScriptEntry _043E
    ScriptEntry _04C8
    ScriptEntry _05E0
    ScriptEntry _09A8
    ScriptEntry _07F8
    ScriptEntry _0B90
    ScriptEntry _0BF0
    .short 0xFD13

_005E:
    SetVar 0x40C7, 0
    SetFlag 0x17E
    CallIfEq 0x407C, 5, _074D
    CallIfEq 0x407C, 4, _0721
    CallIfEq 0x407C, 4, _0737
    GoToIfSet 0x102, _009C
    End

_009C:
    ScrCmd_186 21, 0x27D, 0x32C
    ScrCmd_189 21, 3
    ScrCmd_188 21, 17
    End

_00B2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 29
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00C5:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 30
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00D8:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 31
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00EB:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 32
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00FE:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_15B 3, 0x800C
    GoToIfEq 0x800C, 1, _0124
    Message 33
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0124:
    Message 34
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_012F:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0x128, _0189
    ScrCmd_0DE 0x800C
    CallIfEq 0x800C, 0x183, _0194
    CallIfEq 0x800C, 0x186, _019C
    CallIfEq 0x800C, 0x189, _01A4
    ScrCmd_261 0, 0x8004
    Message 37
    SetVar 0x8005, 1
    CallCommonScript 0x7DF
    SetFlag 0x128
    CloseMessage
    ReleaseAll
    End

_0189:
    Message 38
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0194:
    SetVar 0x8004, 93
    Return

_019C:
    SetVar 0x8004, 94
    Return

_01A4:
    SetVar 0x8004, 92
    Return

_01AC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 39
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01BF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 40
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01D2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 35
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01E5:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_04C 35, 0
    Message 36
    ScrCmd_04D
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0204:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfSet 0x102, _0220
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0220:
    FacePlayer
    Message 28
    CloseMessage
    ScrCmd_1BD 0x800C
    GoToIfEq 0x800C, 2, _025A
    GoToIfEq 0x800C, 3, _027A
    GoToIfEq 0x800C, 0, _0292
    GoTo _02B2
    End

_025A:
    SetVar 0x8007, 2
    ApplyMovement 21, _0388
    ApplyMovement 0xFF, _02EC
    WaitMovement
    GoTo _02D2
    End

_027A:
    SetVar 0x8007, 3
    ApplyMovement 21, _0398
    WaitMovement
    GoTo _02D2
    End

_0292:
    SetVar 0x8007, 0
    ApplyMovement 21, _0398
    ApplyMovement 0xFF, _030C
    WaitMovement
    GoTo _02D2
    End

_02B2:
    SetVar 0x8007, 1
    ApplyMovement 21, _0398
    ApplyMovement 0xFF, _0304
    WaitMovement
    GoTo _02D2
    End

_02D2:
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ScrCmd_065 21
    SetFlag 0x103
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_02EC:
    MoveAction_021
    MoveAction_023
    EndMovement

    .byte 32
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
_0304:
    MoveAction_023
    EndMovement

    .balign 4, 0
_030C:
    MoveAction_023
    EndMovement

    .byte 33
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
    .byte 33
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
    .byte 32
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
    .byte 33
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
    .byte 19
    .byte 0
    .byte 9
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 19
    .byte 0
    .byte 7
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 17
    .byte 0
    .byte 1
    .byte 0
    .byte 19
    .byte 0
    .byte 8
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 16
    .byte 0
    .byte 1
    .byte 0
    .byte 19
    .byte 0
    .byte 8
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 75
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 17
    .byte 0
    .byte 1
    .byte 0
    .byte 19
    .byte 0
    .byte 10
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 19
    .byte 0
    .byte 10
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0388:
    MoveAction_011
    MoveAction_013 2
    MoveAction_027
    EndMovement

    .balign 4, 0
_0398:
    MoveAction_013 2
    MoveAction_027
    EndMovement

    .byte 17
    .byte 0
    .byte 1
    .byte 0
    .byte 19
    .byte 0
    .byte 2
    .byte 0
    .byte 39
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 17
    .byte 0
    .byte 1
    .byte 0
    .byte 19
    .byte 0
    .byte 4
    .byte 0
    .byte 39
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 16
    .byte 0
    .byte 1
    .byte 0
    .byte 19
    .byte 0
    .byte 3
    .byte 0
    .byte 39
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 17
    .byte 0
    .byte 1
    .byte 0
    .byte 19
    .byte 0
    .byte 3
    .byte 0
    .byte 39
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_03E4:
    ScrCmd_036 41, 0, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_03FB:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 42, 0x800C
    CallCommonScript 0x7D0
    End

_0410:
    ScrCmd_036 43, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_0427:
    ScrCmd_036 44, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_043E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe 0x407C, 5, _04AE
    GoToIfGe 0x407C, 4, _0471
    BufferRivalName 0
    BufferPlayerName 1
    Message 4
    GoTo _04A6
    End

_0471:
    ScrCmd_1BD 0x800C
    GoToIfEq 0x800C, 0, _0498
    BufferRivalName 0
    Message 16
    CloseMessage
    ApplyMovement 26, _04C0
    WaitMovement
    ReleaseAll
    End

_0498:
    BufferRivalName 0
    Message 15
    GoTo _04A6
    End

_04A6:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_04AE:
    BufferRivalName 0
    BufferPlayerName 1
    Message 27
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_04C0:
    MoveAction_021
    EndMovement

_04C8:
    LockAll
    ClearFlag 0x1A9
    ScrCmd_186 26, 0x253, 0x333
    ScrCmd_188 26, 16
    ScrCmd_189 26, 2
    ScrCmd_064 26
    ApplyMovement 26, _05B0
    WaitMovement
    CallCommonScript 0x7FA
    ApplyMovement 26, _05C0
    ApplyMovement 0xFF, _05A4
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message 5
    CloseMessage
    ApplyMovement 26, _05CC
    WaitMovement
    ScrCmd_0DE 0x800C
    GoToIfEq 0x800C, 0x183, _054B
    GoToIfEq 0x800C, 0x186, _0557
    GoTo _053F

_053F:
    ScrCmd_0E5 0x1D9, 0
    GoTo _0563

_054B:
    ScrCmd_0E5 0x1DA, 0
    GoTo _0563

_0557:
    ScrCmd_0E5 0x1DB, 0
    GoTo _0563

_0563:
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _0597
    BufferRivalName 0
    BufferPlayerName 1
    Message 6
    CloseMessage
    ApplyMovement 26, _05D4
    WaitMovement
    ScrCmd_065 26
    SetVar 0x407C, 2
    ReleaseAll
    End

_0597:
    SetFlag 0x1A9
    ScrCmd_0EB
    ReleaseAll
    End

    .balign 4, 0
_05A4:
    MoveAction_03E 13
    MoveAction_023
    EndMovement

    .balign 4, 0
_05B0:
    MoveAction_011 9
    MoveAction_026
    MoveAction_04B
    EndMovement

    .balign 4, 0
_05C0:
    MoveAction_012 4
    MoveAction_026
    EndMovement

    .balign 4, 0
_05CC:
    MoveAction_00E
    EndMovement

    .balign 4, 0
_05D4:
    MoveAction_013 5
    MoveAction_010 9
    EndMovement

_05E0:
    LockAll
    ClearFlag 0x1A9
    ScrCmd_186 26, 0x253, 0x333
    ScrCmd_188 26, 15
    ScrCmd_189 26, 1
    ScrCmd_064 26
    ScrCmd_062 26
    ApplyMovement 26, _0798
    ApplyMovement 0xFF, _07CC
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message 7
    CloseMessage
    ScrCmd_168 18, 25, 13, 27, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ApplyMovement 0xFF, _07D8
    WaitMovement
    ClearFlag 0x1FB
    ScrCmd_186 27, 0x24D, 0x33B
    ScrCmd_189 27, 0
    ScrCmd_188 27, 14
    ScrCmd_064 27
    ScrCmd_062 27
    ApplyMovement 27, _0764
    WaitMovement
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    SetFlag 0x20F
    ApplyMovement 27, _076C
    WaitMovement
    Message 8
    CloseMessage
    ApplyMovement 26, _07A4
    WaitMovement
    BufferRivalName 0
    Message 9
    ApplyMovement 27, _077C
    WaitMovement
    Message 10
    ApplyMovement 27, _0784
    WaitMovement
    Message 11
    BufferRivalName 0
    Message 12
    ApplyMovement 27, _077C
    WaitMovement
    Message 13
    CloseMessage
    ApplyMovement 0xFF, _07EC
    ApplyMovement 26, _07AC
    ApplyMovement 27, _078C
    WaitMovement
    BufferRivalName 0
    Message 14
    CloseMessage
    ApplyMovement 26, _07C0
    WaitMovement
    Call _0737
    ClearFlag 0x1FB
    ScrCmd_187 27, 0x263, 0, 0x32A, 0
    Call _0721
    ClearFlag 0x1A9
    ScrCmd_187 26, 0x260, 0, 0x32E, 1
    SetVar 0x407C, 4
    ReleaseAll
    End

_0721:
    ScrCmd_186 26, 0x260, 0x32E
    ScrCmd_189 26, 1
    ScrCmd_188 26, 15
    Return

_0737:
    ScrCmd_186 27, 0x263, 0x32A
    ScrCmd_189 27, 0
    ScrCmd_188 27, 14
    Return

_074D:
    ScrCmd_186 26, 0x263, 0x32A
    ScrCmd_189 26, 0
    ScrCmd_188 26, 14
    Return

    .balign 4, 0
_0764:
    MoveAction_00D
    EndMovement

    .balign 4, 0
_076C:
    MoveAction_023
    MoveAction_03F 2
    MoveAction_021
    EndMovement

    .balign 4, 0
_077C:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0784:
    MoveAction_021
    EndMovement

    .balign 4, 0
_078C:
    MoveAction_013 6
    MoveAction_010 8
    EndMovement

    .balign 4, 0
_0798:
    MoveAction_011 9
    MoveAction_012 5
    EndMovement

    .balign 4, 0
_07A4:
    MoveAction_04B
    EndMovement

    .balign 4, 0
_07AC:
    MoveAction_047
    MoveAction_011
    MoveAction_048
    MoveAction_027
    EndMovement

    .balign 4, 0
_07C0:
    MoveAction_013 5
    MoveAction_010 8
    EndMovement

    .balign 4, 0
_07CC:
    MoveAction_03E 11
    MoveAction_023
    EndMovement

    .balign 4, 0
_07D8:
    MoveAction_020
    MoveAction_03F 2
    MoveAction_00D
    MoveAction_020
    EndMovement

    .balign 4, 0
_07EC:
    MoveAction_03F
    MoveAction_023
    EndMovement

_07F8:
    LockAll
    Call _086F
    ApplyMovement 27, _0B6C
    ApplyMovement 26, _0B08
    ApplyMovement 0xFF, _0AAC
    ApplyMovement 21, _0B44
    WaitMovement
    Call _08D9
    ApplyMovement 27, _0B74
    ApplyMovement 26, _0B3C
    ApplyMovement 0xFF, _0AC8
    ApplyMovement 21, _0B54
    WaitMovement
    Call _08FA
    Message 23
    ApplyMovement 27, _0B80
    ApplyMovement 0xFF, _0AD4
    WaitMovement
    Call _091C
    ReleaseAll
    End

_086F:
    ApplyMovement 26, _0AE4
    WaitMovement
    BufferRivalName 0
    Message 17
    CloseMessage
    ApplyMovement 0xFF, _0AA4
    ApplyMovement 27, _0B5C
    WaitMovement
    Message 18
    ApplyMovement 26, _0AF0
    WaitMovement
    PlayFanfare SEQ_SE_DP_FW291
    WaitTime 4, 0x800C
    Message 19
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_29F 1
    CloseMessage
    ClearFlag 0x20C
    ScrCmd_186 21, 0x262, 0x328
    ScrCmd_189 21, 3
    ScrCmd_188 21, 17
    ScrCmd_064 21
    ScrCmd_062 21
    Return

_08D9:
    Message 20
    ApplyMovement 27, _0B6C
    WaitMovement
    Message 21
    ApplyMovement 21, _0B4C
    WaitMovement
    Message 22
    CloseMessage
    Return

_08FA:
    ScrCmd_065 21
    ClearFlag 0x20C
    ScrCmd_186 21, 0x27D, 0x32C
    ScrCmd_188 21, 17
    ScrCmd_189 21, 3
    ScrCmd_064 21
    Return

_091C:
    Message 24
    CloseMessage
    ApplyMovement 27, _0B88
    ApplyMovement 0xFF, _099C
    WaitMovement
    ScrCmd_065 27
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8004, 0x261, _0981
    CallIfEq 0x8004, 0x263, _098D
    CallIfEq 0x8004, 0x264, _0981
    SetFlag 0x20D
    SetVar 0x407C, 5
    SetFlag 0x102
    BufferRivalName 0
    BufferPlayerName 1
    Message 25
    WaitABXPadPress
    CloseMessage
    Return

_0981:
    ApplyMovement 26, _0B1C
    WaitMovement
    Return

_098D:
    ApplyMovement 26, _0B28
    WaitMovement
    Return

    .balign 4, 0
_099C:
    MoveAction_03F
    MoveAction_000
    EndMovement

_09A8:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Call _086F
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8004, 0x263, _0A31
    CallIfEq 0x8004, 0x264, _0A55
    Call _08D9
    ApplyMovement 0xFF, _0AC8
    ApplyMovement 27, _0B74
    ApplyMovement 26, _0B3C
    ApplyMovement 21, _0B54
    WaitMovement
    Call _08FA
    Message 23
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8004, 0x263, _0A79
    CallIfEq 0x8004, 0x264, _0A8D
    Call _091C
    ReleaseAll
    End

_0A31:
    ApplyMovement 27, _0B6C
    ApplyMovement 0xFF, _0ABC
    ApplyMovement 26, _0B10
    ApplyMovement 21, _0B44
    WaitMovement
    Return

_0A55:
    ApplyMovement 27, _0B6C
    ApplyMovement 0xFF, _0ABC
    ApplyMovement 26, _0B10
    ApplyMovement 21, _0B44
    WaitMovement
    Return

_0A79:
    ApplyMovement 27, _0B80
    ApplyMovement 0xFF, _0AD4
    WaitMovement
    Return

_0A8D:
    ApplyMovement 27, _0B80
    ApplyMovement 0xFF, _0ADC
    WaitMovement
    Return

    .balign 4, 0
_0AA4:
    MoveAction_000
    EndMovement

    .balign 4, 0
_0AAC:
    MoveAction_011
    MoveAction_013
    MoveAction_025
    EndMovement

    .balign 4, 0
_0ABC:
    MoveAction_03F
    MoveAction_021
    EndMovement

    .balign 4, 0
_0AC8:
    MoveAction_03F
    MoveAction_023
    EndMovement

    .balign 4, 0
_0AD4:
    MoveAction_020
    EndMovement

    .balign 4, 0
_0ADC:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0AE4:
    MoveAction_010 3
    MoveAction_013
    EndMovement

    .balign 4, 0
_0AF0:
    MoveAction_024
    EndMovement

    .byte 17
    .byte 0
    .byte 3
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 36
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0B08:
    MoveAction_025
    EndMovement

    .balign 4, 0
_0B10:
    MoveAction_03F
    MoveAction_025
    EndMovement

    .balign 4, 0
_0B1C:
    MoveAction_013 2
    MoveAction_010
    EndMovement

    .balign 4, 0
_0B28:
    MoveAction_013
    MoveAction_010
    MoveAction_013
    MoveAction_024
    EndMovement

    .balign 4, 0
_0B3C:
    MoveAction_027
    EndMovement

    .balign 4, 0
_0B44:
    MoveAction_011 4
    EndMovement

    .balign 4, 0
_0B4C:
    MoveAction_020
    EndMovement

    .balign 4, 0
_0B54:
    MoveAction_013 12
    EndMovement

    .balign 4, 0
_0B5C:
    MoveAction_020
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
_0B6C:
    MoveAction_025
    EndMovement

    .balign 4, 0
_0B74:
    MoveAction_03F
    MoveAction_023
    EndMovement

    .balign 4, 0
_0B80:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0B88:
    MoveAction_00C 2
    EndMovement

_0B90:
    LockAll
    ApplyMovement 0xFF, _0BC8
    ApplyMovement 26, _0BD8
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message 26
    CloseMessage
    ApplyMovement 0xFF, _0BD0
    ApplyMovement 26, _0BE0
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
_0BC8:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0BD0:
    MoveAction_00D
    EndMovement

    .balign 4, 0
_0BD8:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0BE0:
    MoveAction_00E
    MoveAction_00F
    MoveAction_020
    EndMovement

_0BF0:
    LockAll
    GoToIfSet 0x156, _0C1E
    SetVar 0x40C7, 1
    ScrCmd_1B7 0x800C, 100
    GoToIfGe 0x800C, 90, _0C22
    GoTo _0C1E
    End

_0C1E:
    ReleaseAll
    End

_0C22:
    ClearFlag 0x29D
    ScrCmd_064 28
    ApplyMovement 0xFF, _0C78
    ApplyMovement 28, _0C64
    WaitMovement
    ScrCmd_04C 0x1C5, 0
    ScrCmd_04D
    WaitTime 30, 0x800C
    ApplyMovement 28, _0C70
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ScrCmd_065 28
    WaitFanfare SEQ_SE_DP_KAIDAN2
    ReleaseAll
    End

    .balign 4, 0
_0C64:
    MoveAction_00C 7
    MoveAction_022
    EndMovement

    .balign 4, 0
_0C70:
    MoveAction_00C 5
    EndMovement

    .balign 4, 0
_0C78:
    MoveAction_021
    EndMovement
