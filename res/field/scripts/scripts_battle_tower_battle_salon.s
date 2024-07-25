#include "macros/scrcmd.inc"

    .data

    ScriptEntry _01AC
    ScriptEntry _0275
    ScriptEntry _02FE
    ScriptEntry _0365
    ScriptEntry _03C6
    ScriptEntry _0427
    ScriptEntry _002A
    ScriptEntry _015D
    ScriptEntry _018D
    ScriptEntry _0204
    .short 0xFD13

_002A:
    GoToIfUnset 227, _0121
    GoToIfNe 0x40DF, 2, _0057
    ScrCmd_1DD 55, 2, 0x4009
    GoToIfEq 0x4009, 0, _0121
_0057:
    ClearFlag 0x1EC
_005B:
    GoToIfUnset 228, _012D
    GoToIfNe 0x40DF, 2, _0088
    ScrCmd_1DD 55, 2, 0x4009
    GoToIfEq 0x4009, 1, _012D
_0088:
    ClearFlag 0x1ED
_008C:
    GoToIfUnset 229, _0139
    GoToIfNe 0x40DF, 2, _00B9
    ScrCmd_1DD 55, 2, 0x4009
    GoToIfEq 0x4009, 2, _0139
_00B9:
    ClearFlag 0x1EE
_00BD:
    GoToIfUnset 230, _0145
    GoToIfNe 0x40DF, 2, _00EA
    ScrCmd_1DD 55, 2, 0x4009
    GoToIfEq 0x4009, 3, _0145
_00EA:
    ClearFlag 0x1EF
_00EE:
    GoToIfUnset 231, _0151
    GoToIfNe 0x40DF, 2, _011B
    ScrCmd_1DD 55, 2, 0x4009
    GoToIfEq 0x4009, 4, _0151
_011B:
    ClearFlag 0x1F0
_011F:
    End

_0121:
    SetFlag 0x1EC
    GoTo _005B
    End

_012D:
    SetFlag 0x1ED
    GoTo _008C
    End

_0139:
    SetFlag 0x1EE
    GoTo _00BD
    End

_0145:
    SetFlag 0x1EF
    GoTo _00EE
    End

_0151:
    SetFlag 0x1F0
    GoTo _011F
    End

_015D:
    CallIfEq 0x40DF, 1, _0179
    GoToIfEq 0x40DF, 2, _017F
    End

_0179:
    ScrCmd_1B2 0xFF
    Return

_017F:
    ScrCmd_187 0, 8, 0, 3, 1
    End

_018D:
    LockAll
    SetVar 0x40DF, 0
    Call _04A6
    Message 0
    CloseMessage
    ScrCmd_1DD 56, 0, 0
    ReleaseAll
    End

_01AC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 0
    Message 1
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _01D4
    Message 0
    CloseMessage
    ReleaseAll
    End

_01D4:
    CloseMessage
    ReleaseAll
    SetVar 0x40D8, 3
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_TOWER, 0, 11, 6, 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

_0204:
    LockAll
    SetVar 0x40DF, 0
    Message 2
    CloseMessage
    Call _04E0
    SetVar 0x40DB, 2
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_TOWER_ELEVATOR, 0, 3, 6, 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_0245:
    ScrCmd_1DE 0x4009, 0, 0x8004, 0x8005
    ScrCmd_0DA 0, 0x8004, 0, 0
    ScrCmd_0D4 1, 0x8005
    ScrCmd_1DE 0x4009, 1, 0x8004, 0x8005
    ScrCmd_0DA 2, 0x8004, 0, 0
    ScrCmd_0D4 3, 0x8005
    Return

_0275:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfEq 0x40DF, 2, _02D2
    SetVar 0x4009, 0
    ScrCmd_1DE 0x4009, 0, 0x8004, 0x8005
    ScrCmd_341 0, 0x8004, 0, 0
    ScrCmd_0D4 1, 0x8005
    ScrCmd_1DE 0x4009, 1, 0x8004, 0x8005
    ScrCmd_341 2, 0x8004, 0, 0
    ScrCmd_0D4 3, 0x8005
    Message 6
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _02DD
_02D2:
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02DD:
    ScrCmd_1DD 50, 0x4009, 0
    SetVar 0x40DF, 2
    Message 8
    CloseMessage
    ReleaseAll
    ScrCmd_062 1
    GoTo _055C
    End

_02FE:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfEq 0x40DF, 2, _0336
    SetVar 0x4009, 1
    Call _0245
    BufferPlayerName 4
    Message 15
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0341
_0336:
    Message 16
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0341:
    ScrCmd_1DD 50, 0x4009, 0
    SetVar 0x40DF, 2
    BufferPlayerName 0
    Message 17
    CloseMessage
    ReleaseAll
    ScrCmd_062 2
    GoTo _05A1
    End

_0365:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfEq 0x40DF, 2, _039A
    SetVar 0x4009, 2
    Call _0245
    Message 3
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _03A5
_039A:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03A5:
    ScrCmd_1DD 50, 0x4009, 0
    SetVar 0x40DF, 2
    Message 5
    CloseMessage
    ReleaseAll
    ScrCmd_062 3
    GoTo _05E6
    End

_03C6:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfEq 0x40DF, 2, _03FB
    SetVar 0x4009, 3
    Call _0245
    Message 12
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0406
_03FB:
    Message 13
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0406:
    ScrCmd_1DD 50, 0x4009, 0
    SetVar 0x40DF, 2
    Message 14
    CloseMessage
    ReleaseAll
    ScrCmd_062 4
    GoTo _062B
    End

_0427:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfEq 0x40DF, 2, _045C
    SetVar 0x4009, 4
    Call _0245
    Message 9
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0467
_045C:
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0467:
    ScrCmd_1DD 50, 0x4009, 0
    SetVar 0x40DF, 2
    Message 11
    CloseMessage
    ReleaseAll
    ScrCmd_062 5
    GoTo _0670
    End

_0488:
    ScrCmd_168 0, 0, 8, 2, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    Return

_049B:
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    Return

_04A6:
    Call _0488
    ApplyMovement 0, _06C8
    WaitMovement
    ScrCmd_1B1 0xFF
    ApplyMovement 0xFF, _06B8
    WaitMovement
    Call _049B
    ApplyMovement 0, _06D8
    WaitMovement
    ApplyMovement 0xFF, _06C0
    WaitMovement
    Return

_04E0:
    Call _0488
    ApplyMovement 0, _070C
    ApplyMovement 0xFF, _0700
    WaitMovement
    Call _049B
    Return

_0500:
    ApplyMovement 0x4000, _0718
    WaitMovement
    ApplyMovement 0, _06E4
    WaitMovement
    Call _0488
    ApplyMovement 0x4000, _0720
    WaitMovement
    Call _049B
    ApplyMovement 0, _06F4
    WaitMovement
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_TOWER_BATTLE_SALON, 0, 8, 4, 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_055C:
    SetVar 0x4000, 1
    GetPlayerMapPos 0x8000, 0x8001
    GoToIfEq 0x8000, 12, _057D
    GoTo _058F
    End

_057D:
    ApplyMovement 1, _072C
    WaitMovement
    GoTo _0500
    End

_058F:
    ApplyMovement 1, _0740
    WaitMovement
    GoTo _0500
    End

_05A1:
    SetVar 0x4000, 2
    GetPlayerMapPos 0x8000, 0x8001
    GoToIfEq 0x8000, 4, _05C2
    GoTo _05D4
    End

_05C2:
    ApplyMovement 2, _0758
    WaitMovement
    GoTo _0500
    End

_05D4:
    ApplyMovement 2, _0768
    WaitMovement
    GoTo _0500
    End

_05E6:
    SetVar 0x4000, 3
    GetPlayerMapPos 0x8000, 0x8001
    GoToIfEq 0x8001, 7, _0607
    GoTo _0619
    End

_0607:
    ApplyMovement 3, _0774
    WaitMovement
    GoTo _0500
    End

_0619:
    ApplyMovement 3, _0784
    WaitMovement
    GoTo _0500
    End

_062B:
    SetVar 0x4000, 4
    GetPlayerMapPos 0x8000, 0x8001
    GoToIfEq 0x8001, 9, _064C
    GoTo _065E
    End

_064C:
    ApplyMovement 4, _0790
    WaitMovement
    GoTo _0500
    End

_065E:
    ApplyMovement 4, _07A4
    WaitMovement
    GoTo _0500
    End

_0670:
    SetVar 0x4000, 5
    GetPlayerMapPos 0x8000, 0x8001
    GoToIfEq 0x8000, 8, _0691
    GoTo _06A3
    End

_0691:
    ApplyMovement 5, _07B8
    WaitMovement
    GoTo _0500
    End

_06A3:
    ApplyMovement 5, _07C8
    WaitMovement
    GoTo _0500

    .byte 2
    .byte 0
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_06B8:
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_06C0:
    MoveAction_000
    EndMovement

    .balign 4, 0
_06C8:
    MoveAction_00D 2
    MoveAction_00E
    MoveAction_003
    EndMovement

    .balign 4, 0
_06D8:
    MoveAction_00F
    MoveAction_001
    EndMovement

    .balign 4, 0
_06E4:
    MoveAction_001
    MoveAction_012
    MoveAction_003
    EndMovement

    .balign 4, 0
_06F4:
    MoveAction_013
    MoveAction_001
    EndMovement

    .balign 4, 0
_0700:
    MoveAction_00C 2
    MoveAction_045
    EndMovement

    .balign 4, 0
_070C:
    MoveAction_00C
    MoveAction_045
    EndMovement

    .balign 4, 0
_0718:
    MoveAction_000
    EndMovement

    .balign 4, 0
_0720:
    MoveAction_010 2
    MoveAction_045
    EndMovement

    .balign 4, 0
_072C:
    MoveAction_011
    MoveAction_012 3
    MoveAction_010 7
    MoveAction_012 2
    EndMovement

    .balign 4, 0
_0740:
    MoveAction_012
    MoveAction_010
    MoveAction_012 2
    MoveAction_010 5
    MoveAction_012 2
    EndMovement

    .balign 4, 0
_0758:
    MoveAction_013
    MoveAction_010 2
    MoveAction_013 3
    EndMovement

    .balign 4, 0
_0768:
    MoveAction_010 2
    MoveAction_013 4
    EndMovement

    .balign 4, 0
_0774:
    MoveAction_012
    MoveAction_010 4
    MoveAction_012 2
    EndMovement

    .balign 4, 0
_0784:
    MoveAction_010 4
    MoveAction_012 3
    EndMovement

    .balign 4, 0
_0790:
    MoveAction_011
    MoveAction_013 4
    MoveAction_010 7
    MoveAction_013 2
    EndMovement

    .balign 4, 0
_07A4:
    MoveAction_010
    MoveAction_013 4
    MoveAction_010 5
    MoveAction_013 2
    EndMovement

    .balign 4, 0
_07B8:
    MoveAction_012
    MoveAction_010 5
    MoveAction_013 2
    EndMovement

    .balign 4, 0
_07C8:
    MoveAction_013 3
    MoveAction_010 5
    MoveAction_012 2
    EndMovement
