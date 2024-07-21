#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0036
    ScriptEntry _007E
    ScriptEntry _02F8
    ScriptEntry _0400
    ScriptEntry _0413
    ScriptEntry _045F
    ScriptEntry _0475
    ScriptEntry _0488
    ScriptEntry _049B
    ScriptEntry _04B4
    ScriptEntry _057C
    ScriptEntry _02D8
    ScriptEntry _0662
    .short 0xFD13

_0036:
    ClearFlag 0x995
    SetFlag 0x9F3
    GoToIfNe 0x40F3, 0, _004D
    End

_004D:
    ScrCmd_186 7, 8, 9
    ScrCmd_189 7, 2
    End

_005D:
    GoToIfEq 0x40E0, 0x7D0, _0074
    BufferPlayerName 1
    BufferNumber 2, 0x40E0
    Return

_0074:
    BufferRivalName 1
    BufferNumber 2, 0x40E0
    Return

_007E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _009D
    GoTo _00D2

_009D:
    GoToIfSet 211, _01D6
    SetFlag 211
    BufferPlayerName 0
    Message 21
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0107
    GoToIfEq 0x800C, 1, _01CB
    End

_00D2:
    GoToIfSet 211, _01E2
    SetFlag 211
    BufferPlayerName 0
    Message 22
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0107
    GoToIfEq 0x800C, 1, _01CB
    End

_0107:
    Message 23
    GoTo _012B

_0110:
    Message 24
    GoTo _012B

_0119:
    Message 25
    GoTo _012B

_0122:
    Message 26
    GoTo _012B

_012B:
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 198, 0
    ScrCmd_042 199, 1
    ScrCmd_042 200, 2
    ScrCmd_042 202, 4
    ScrCmd_043
    GoToIfEq 0x800C, 0, _0110
    GoToIfEq 0x800C, 1, _0119
    GoToIfEq 0x800C, 2, _0122
    GoTo _0172

_0172:
    Message 28
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _01CB
_0186:
    SetVar 0x800C, 0
    ScrCmd_252 0x800C
    GoToIfLt 0x800C, 6, _02AD
    SetVar 0x800C, 0
    ScrCmd_254 0x800C
    GoToIfEq 0x800C, 0, _0299
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _0231
    GoTo _0245

_01CB:
    Message 29
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01D6:
    BufferPlayerName 0
    Message 30
    GoTo _01EE

_01E2:
    BufferPlayerName 0
    Message 31
    GoTo _01EE

_01EE:
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 203, 0
    ScrCmd_042 204, 1
    ScrCmd_042 205, 2
    ScrCmd_043
    GoToIfEq 0x800C, 0, _0186
    GoToIfEq 0x800C, 1, _02A4
    GoToIfEq 0x800C, 2, _01CB
    GoTo _01CB

_0231:
    Call _005D
    BufferPlayerName 0
    Message 32
    CloseMessage
    GoTo _0259

_0245:
    Call _005D
    BufferPlayerName 0
    Message 33
    CloseMessage
    GoTo _0259

_0259:
    ApplyMovement 7, _02B8
    WaitMovement
    ApplyMovement 0xFF, _02CC
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_PAL_PARK, 0, 24, 47, 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_0299:
    Message 34
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02A4:
    Message 35
    GoTo _012B

_02AD:
    Message 37
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_02B8:
    MoveAction_024
    MoveAction_00C 2
    MoveAction_00F
    MoveAction_026
    EndMovement

    .balign 4, 0
_02CC:
    MoveAction_00C 5
    MoveAction_045
    EndMovement

_02D8:
    LockAll
    SetVar 0x40F3, 0
    ApplyMovement 0xFF, _03E4
    WaitMovement
    ApplyMovement 7, _03D8
    WaitMovement
    ReleaseAll
    End

_02F8:
    LockAll
    SetVar 0x40F3, 0
    ApplyMovement 0xFF, _03EC
    WaitMovement
    ScrCmd_256 0, 0x800C
    BufferNumber 0, 0x800C
    ScrCmd_256 1, 0x800C
    BufferNumber 1, 0x800C
    ScrCmd_256 2, 0x800C
    BufferNumber 2, 0x800C
    ScrCmd_256 3, 0x800C
    BufferNumber 3, 0x800C
    Message 38
    ScrCmd_256 3, 0x800C
    GoToIfGt 0x800C, 0x40E0, _035B
    Message 40
    Call _07BE
    GoTo _0370

_035B:
    Message 39
    Call _07BE
    ScrCmd_256 3, 0x40E0
    GoTo _0370

_0370:
    Message 41
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _03AB
    Message 46
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _039E
    GoTo _0370

_039E:
    Message 43
    WaitABPress
    CloseMessage
    GoTo _03BD

_03AB:
    ScrCmd_255
    Message 42
    Message 44
    WaitABPress
    CloseMessage
    GoTo _03BD

_03BD:
    ApplyMovement 0xFF, _03F8
    WaitMovement
    ApplyMovement 7, _03D8
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
_03D8:
    MoveAction_00E
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_03E4:
    MoveAction_00D 5
    EndMovement

    .balign 4, 0
_03EC:
    MoveAction_00D 2
    MoveAction_027
    EndMovement

    .balign 4, 0
_03F8:
    MoveAction_00D 4
    EndMovement

_0400:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 57
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0413:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 0
    GoToIfEq 0x800C, 2, _0454
    GoToIfEq 0x800C, 1, _0449
    GoTo _043E

_043E:
    Message 52
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0449:
    Message 53
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0454:
    Message 54
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_045F:
    BufferPlayerName 0
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 55
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0475:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 56
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0488:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 65
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_049B:
    Call _005D
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 57
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_04B4:
    LockAll
    ClearFlag 0x242
    SetVar 0x40E0, 0x7D0
    ApplyMovement 1, _0548
    WaitMovement
    ScrCmd_14D 0x4000
    BufferPlayerName 0
    GoToIfEq 0x4000, 0, _04E4
    GoTo _04ED

_04E4:
    Message 0
    GoTo _04F6

_04ED:
    Message 1
    GoTo _04F6

_04F6:
    Message 2
    CloseMessage
    ApplyMovement 1, _0558
    WaitMovement
    Message 3
    SetVar 0x8004, 19
    CallCommonScript 0x7D9
    Message 4
    CloseMessage
    WaitTime 15, 0x800C
    ApplyMovement 0xFF, _0570
    WaitMovement
    ApplyMovement 1, _0564
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ScrCmd_065 1
    WaitFanfare SEQ_SE_DP_KAIDAN2
    SetVar 0x40C6, 1
    ReleaseAll
    End

    .balign 4, 0
_0548:
    MoveAction_04B
    MoveAction_03F
    MoveAction_00D 3
    EndMovement

    .balign 4, 0
_0558:
    MoveAction_04B
    MoveAction_03F
    EndMovement

    .balign 4, 0
_0564:
    MoveAction_00D
    MoveAction_021
    EndMovement

    .balign 4, 0
_0570:
    MoveAction_00F
    MoveAction_022
    EndMovement

_057C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfEq 0x400A, 1, _062C
    GoToIfEq 0x400A, 2, _063C
    ScrCmd_134 21, 0x800C
    GoToIfEq 0x800C, 1, _0657
    Message 5
    Message 6
    ScrCmd_134 20, 0x800C
    GoToIfEq 0x800C, 1, _05FB
    Message 10
    ScrCmd_1C0 0x800C, 143
    GoToIfEq 0x800C, 0, _064C
    Message 11
    SetVar 0x8004, 20
    CallCommonScript 0x7D9
    WaitABXPadPress
    SetVar 0x400A, 1
    CloseMessage
    ReleaseAll
    End

_05FB:
    Message 13
    ScrCmd_1C0 0x800C, 0x160
    GoToIfEq 0x800C, 0, _064C
    Message 14
    SetVar 0x8004, 21
    CallCommonScript 0x7D9
    WaitABXPadPress
    SetVar 0x400A, 2
    CloseMessage
    ReleaseAll
    End

_062C:
    BufferPoketchAppName 0, POKETCH_APPID_KITCHENTIMER
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_063C:
    BufferPoketchAppName 0, POKETCH_APPID_COLORCHANGER
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_064C:
    Message 19
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0657:
    Message 20
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0662:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfEq 0x4009, 1, _06CF
    ScrCmd_26E 0x800C
    GoToIfEq 0x800C, 4, _06DA
    GoToIfEq 0x800C, 5, _0706
    GoToIfEq 0x800C, 1, _0732
    GoToIfEq 0x800C, 2, _0756
    GoToIfEq 0x800C, 3, _077A
    GoTo _06C4
    End

_06C4:
    Message 66
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_06CF:
    Message 72
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_06DA:
    SetVar 0x8004, 97
    SetVar 0x8005, 1
    ScrCmd_1D3 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _06C4
    Message 67
    GoTo _079E
    End

_0706:
    SetVar 0x8004, 98
    SetVar 0x8005, 1
    ScrCmd_1D3 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _06C4
    Message 68
    GoTo _079E
    End

_0732:
    SetVar 0x8004, 14
    ScrCmd_1D6 0x8004, 0x800C
    GoToIfEq 0x800C, 1, _06C4
    Message 69
    GoTo _07AE
    End

_0756:
    SetVar 0x8004, 15
    ScrCmd_1D6 0x8004, 0x800C
    GoToIfEq 0x800C, 1, _06C4
    Message 70
    GoTo _07AE
    End

_077A:
    SetVar 0x8004, 16
    ScrCmd_1D6 0x8004, 0x800C
    GoToIfEq 0x800C, 1, _06C4
    Message 71
    GoTo _07AE
    End

_079E:
    CallCommonScript 0x7DF
    SetVar 0x4009, 1
    CloseMessage
    ReleaseAll
    End

_07AE:
    CallCommonScript 0x7F4
    SetVar 0x4009, 1
    CloseMessage
    ReleaseAll
    End

_07BE:
    ScrCmd_256 3, 0x800C
    CallIfLt 0x800C, 0xBB8, _07FA
    CallIfLt 0x800C, 0xCE4, _0870
    CallIfLt 0x800C, 0xDAC, _08BF
    CallIfLt 0x800C, 0x2710, _0928
    Return

_07FA:
    ScrCmd_1B7 0x8006, 8
    CallIfEq 0x8006, 0, _09B6
    CallIfEq 0x8006, 1, _09BE
    CallIfEq 0x8006, 2, _09C6
    CallIfEq 0x8006, 3, _09CE
    CallIfEq 0x8006, 4, _09D6
    CallIfEq 0x8006, 5, _09DE
    CallIfEq 0x8006, 6, _09E6
    CallIfEq 0x8006, 7, _09EE
    Call _0984
    Return

_0870:
    ScrCmd_1B7 0x8006, 5
    CallIfEq 0x8006, 0, _09F6
    CallIfEq 0x8006, 1, _09FE
    CallIfEq 0x8006, 2, _0A06
    CallIfEq 0x8006, 3, _0A0E
    CallIfEq 0x8006, 4, _0A16
    Call _0984
    Return

_08BF:
    ScrCmd_1B7 0x8006, 7
    CallIfEq 0x8006, 0, _0A1E
    CallIfEq 0x8006, 1, _0A26
    CallIfEq 0x8006, 2, _0A2E
    CallIfEq 0x8006, 3, _0A36
    CallIfEq 0x8006, 4, _0A3E
    CallIfEq 0x8006, 5, _0A46
    CallIfEq 0x8006, 6, _0A4E
    Call _0984
    Return

_0928:
    ScrCmd_1B7 0x8006, 6
    CallIfEq 0x8006, 0, _0A56
    CallIfEq 0x8006, 1, _0A5E
    CallIfEq 0x8006, 2, _0A66
    CallIfEq 0x8006, 3, _0A6E
    CallIfEq 0x8006, 4, _0A76
    CallIfEq 0x8006, 5, _0A7E
    Call _0984
    Return

_0984:
    ScrCmd_07D 0x8006, 1, 0x8007
    CallIfNe 0x8007, 0, _09A1
    SetVar 0x800C, 0x2710
    Return

_09A1:
    Message 45
    SetVar 0x8004, 0x8006
    SetVar 0x8005, 1
    CallCommonScript 0x7FC
    Return

_09B6:
    SetVar 0x8006, 149
    Return

_09BE:
    SetVar 0x8006, 150
    Return

_09C6:
    SetVar 0x8006, 151
    Return

_09CE:
    SetVar 0x8006, 152
    Return

_09D6:
    SetVar 0x8006, 153
    Return

_09DE:
    SetVar 0x8006, 154
    Return

_09E6:
    SetVar 0x8006, 155
    Return

_09EE:
    SetVar 0x8006, 156
    Return

_09F6:
    SetVar 0x8006, 159
    Return

_09FE:
    SetVar 0x8006, 160
    Return

_0A06:
    SetVar 0x8006, 161
    Return

_0A0E:
    SetVar 0x8006, 162
    Return

_0A16:
    SetVar 0x8006, 163
    Return

_0A1E:
    SetVar 0x8006, 164
    Return

_0A26:
    SetVar 0x8006, 165
    Return

_0A2E:
    SetVar 0x8006, 166
    Return

_0A36:
    SetVar 0x8006, 167
    Return

_0A3E:
    SetVar 0x8006, 168
    Return

_0A46:
    SetVar 0x8006, 157
    Return

_0A4E:
    SetVar 0x8006, 158
    Return

_0A56:
    SetVar 0x8006, 169
    Return

_0A5E:
    SetVar 0x8006, 170
    Return

_0A66:
    SetVar 0x8006, 171
    Return

_0A6E:
    SetVar 0x8006, 172
    Return

_0A76:
    SetVar 0x8006, 173
    Return

_0A7E:
    SetVar 0x8006, 174
    Return

    .byte 0
    .byte 0
