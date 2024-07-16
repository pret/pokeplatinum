#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0022
    ScriptEntry _0024
    ScriptEntry _0026
    ScriptEntry _002A
    ScriptEntry _07BA
    ScriptEntry _0BC0
    ScriptEntry _0BD3
    ScriptEntry _0BE3
    .short 0xFD13

_0022:
    End

_0024:
    End

_0026:
    ScrCmd_142
    End

_002A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_140 0x800C
    SetVar 0x8004, 0x800C
    GoToIfEq 0x800C, 5, _0497
    ScrCmd_13C 0
    GoToIfEq 0x800C, 2, _04AD
    GoToIfEq 0x800C, 3, _053A
    GoToIfEq 0x800C, 4, _05AF
    ScrCmd_146 0x8004, 0x800C
    ScrCmd_140 0x800C
    GoToIfEq 0x800C, 5, _0497
    Message 199
    ScrCmd_141 0x800C
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 3, _07BA
    GoToIfEq 0x8008, 2, _0486
    GoTo _00BA
    End

_00BA:
    ScrCmd_135 100
    ScrCmd_13F 2, 0x800C
    ScrCmd_2C0 0x800C
    GoTo _00EA
    End

_00D0:
    ScrCmd_135 100
    ScrCmd_139 11
    ScrCmd_13F 22, 0x800C
    MessageVar 0x800C
    GoTo _00EA
    End

_00EA:
    ScrCmd_040 31, 3, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 165, 0
    ScrCmd_042 56, 1
    ScrCmd_042 49, 2
    ScrCmd_042 22, 3
    ScrCmd_042 140, 4
    ScrCmd_042 139, 5
    ScrCmd_042 23, 99
    ScrCmd_2B9
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0182
    GoToIfEq 0x8008, 1, _0334
    GoToIfEq 0x8008, 2, _0274
    GoToIfEq 0x8008, 3, _01EB
    GoToIfEq 0x8008, 4, _0394
    GoToIfEq 0x8008, 5, _03F4
    GoToIfEq 0x8008, 7, _0792
    ScrCmd_143 0, 7
    GoTo _0776
    End

_0182:
    ScrCmd_143 0, 1
    ScrCmd_13F 9, 0x800C
    GoToIfEq 0x800C, 0, _019F
    MessageVar 0x800C
_019F:
    ScrCmd_144 0x800C
    GoToIfEq 0x800C, 7, _06A0
    ScrCmd_139 5
    ScrCmd_13F 1, 0x800C
    MessageVar 0x800C
    WaitTime 30, 0x800C
    ScrCmd_135 1
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0AD
    ScrCmd_0A1
    Call _0BB2
    MessageInstant 16
    GoTo _00D0
    End

_01EB:
    ScrCmd_19A 0x800C
    GoToIfLt 0x800C, 2, _0262
    ScrCmd_143 0, 3
    ScrCmd_13F 9, 0x800C
    GoToIfEq 0x800C, 0, _0219
    MessageVar 0x800C
_0219:
    ScrCmd_144 0x800C
    GoToIfEq 0x800C, 7, _06E8
    ScrCmd_139 7
    ScrCmd_13F 1, 0x800C
    MessageVar 0x800C
    WaitTime 30, 0x800C
    ScrCmd_135 3
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0AE
    ScrCmd_0A1
    Call _0BB2
    GoTo _00D0
    End

_0262:
    ScrCmd_13F 20, 0x800C
    MessageVar 0x800C
    GoTo _00D0
    End

_0274:
    ScrCmd_1F6 0x800C, 30
    GoToIfLt 0x800C, 2, _0322
    ScrCmd_143 0, 2
    ScrCmd_13F 9, 0x800C
    GoToIfEq 0x800C, 0, _02A4
    MessageVar 0x800C
_02A4:
    ScrCmd_144 0x800C
    GoToIfEq 0x800C, 7, _06D0
    ScrCmd_139 6
    ScrCmd_13F 1, 0x800C
    MessageVar 0x800C
    WaitTime 30, 0x800C
    ScrCmd_135 2
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_192
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    Message 202
    ScrCmd_135 102
    CloseMessage
    ScrCmd_2BA 0x800C
    GoToIfEq 0x800C, 1, _0B63
    GoToIfEq 0x800C, 2, _0B63
    ScrCmd_0F6
    Call _0BB2
    GoTo _00D0
    End

_0322:
    ScrCmd_13F 19, 0x800C
    MessageVar 0x800C
    GoTo _00D0
    End

_0334:
    ScrCmd_143 0, 4
    ScrCmd_13F 9, 0x800C
    GoToIfEq 0x800C, 0, _0351
    MessageVar 0x800C
_0351:
    ScrCmd_144 0x800C
    GoToIfEq 0x800C, 7, _06B8
    ScrCmd_13F 1, 0x800C
    MessageVar 0x800C
    WaitABPressTime 30
    ScrCmd_135 4
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0AC
    ScrCmd_0A1
    Call _0BB2
    GoTo _0476
    End

_0394:
    ScrCmd_143 0, 5
    ScrCmd_13F 9, 0x800C
    GoToIfEq 0x800C, 0, _03B1
    MessageVar 0x800C
_03B1:
    ScrCmd_144 0x800C
    GoToIfEq 0x800C, 7, _0718
    ScrCmd_13F 1, 0x800C
    MessageVar 0x800C
    WaitABPressTime 30
    ScrCmd_135 5
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0AF
    ScrCmd_0A1
    Call _0BB2
    GoTo _0476
    End

_03F4:
    ScrCmd_19D 0x800C
    GoToIfEq 0x800C, 0, _0741
    ScrCmd_2C7 0x800C
    GoToIfEq 0x800C, 0, _0753
    ScrCmd_143 0, 6
    ScrCmd_13F 9, 0x800C
    GoToIfEq 0x800C, 0, _0433
    MessageVar 0x800C
_0433:
    ScrCmd_144 0x800C
    GoToIfEq 0x800C, 7, _075E
    ScrCmd_13F 1, 0x800C
    MessageVar 0x800C
    WaitABPressTime 30
    ScrCmd_135 6
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_2C6
    ScrCmd_0A1
    Call _0BB2
    GoTo _0476
    End

_0476:
    ReleaseAll
    End

    .byte 67
    .byte 1
    .byte 0
    .byte 0
    .byte 1
    .byte 0
    .byte 52
    .byte 0
    .byte 97
    .byte 0
    .byte 2
    .byte 0

_0486:
    Message 38
    WaitTime 30, 0x800C
    CloseMessage
    ScrCmd_13B
    ReleaseAll
    End

_0497:
    ScrCmd_13A
    ScrCmd_13F 0, 0x800C
    MessageVar 0x800C
    WaitABPress
    CloseMessage
    ScrCmd_13B
    ReleaseAll
    End

_04AD:
    ScrCmd_13A
    ScrCmd_13F 10, 0x800C
    MessageVar 0x800C
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0522
    ScrCmd_146 0x8004, 0x800C
    GoToIfEq 0x800C, 5, _0486
    ScrCmd_141 0x800C
    GoToIfEq 0x800C, 2, _0486
    ScrCmd_13F 13, 0x800C
    MessageVar 0x800C
    WaitTime 30, 0x800C
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0AC
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    GoTo _0476
    End

_0522:
    ScrCmd_13F 16, 0x800C
    MessageVar 0x800C
    WaitTime 30, 0x800C
    ScrCmd_13B
    CloseMessage
    ReleaseAll
    End

_053A:
    ScrCmd_13A
    ScrCmd_13F 11, 0x800C
    MessageVar 0x800C
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0646
    ScrCmd_146 0x8004, 0x800C
    GoToIfEq 0x800C, 5, _0486
    ScrCmd_141 0x800C
    GoToIfEq 0x800C, 2, _0486
    ScrCmd_13F 14, 0x800C
    MessageVar 0x800C
    WaitTime 30, 0x800C
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0AF
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    GoTo _0476
    End

_05AF:
    ScrCmd_13A
    ScrCmd_13F 12, 0x800C
    MessageVar 0x800C
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _065E
    ScrCmd_19D 0x800C
    GoToIfEq 0x800C, 0, _068A
    ScrCmd_2B7 0x800C
    GoToIfEq 0x800C, 1, _0674
    ScrCmd_146 0x8004, 0x800C
    GoToIfEq 0x800C, 5, _0486
    ScrCmd_141 0x800C
    GoToIfEq 0x800C, 2, _0486
    ScrCmd_13F 15, 0x800C
    MessageVar 0x800C
    WaitTime 30, 0x800C
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_2C6
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    GoTo _0476
    End

_0646:
    ScrCmd_13F 17, 0x800C
    MessageVar 0x800C
    WaitTime 30, 0x800C
    CloseMessage
    ScrCmd_13B
    ReleaseAll
    End

_065E:
    ScrCmd_13F 18, 0x800C
    MessageVar 0x800C
    WaitTime 30, 0x800C
    CloseMessage
    ReleaseAll
    End

_0674:
    ScrCmd_13F 26, 0x800C
    MessageVar 0x800C
    WaitTime 30, 0x800C
    CloseMessage
    ReleaseAll
    End

_068A:
    ScrCmd_13F 21, 0x800C
    MessageVar 0x800C
    WaitTime 30, 0x800C
    CloseMessage
    ReleaseAll
    End

_06A0:
    ScrCmd_13F 3, 0x800C
    MessageVar 0x800C
    WaitTime 30, 0x800C
    GoTo _07AE
    End

_06B8:
    ScrCmd_13F 4, 0x800C
    MessageVar 0x800C
    WaitTime 30, 0x800C
    GoTo _07AE
    End

_06D0:
    ScrCmd_13F 5, 0x800C
    MessageVar 0x800C
    WaitTime 30, 0x800C
    GoTo _07AE
    End

_06E8:
    ScrCmd_13F 6, 0x800C
    MessageVar 0x800C
    WaitTime 30, 0x800C
    GoTo _07AE

    .byte 2
    .byte 0
    .byte 63
    .byte 1
    .byte 7
    .byte 0
    .byte 12
    .byte 128
    .byte 45
    .byte 0
    .byte 12
    .byte 128
    .byte 3
    .byte 0
    .byte 30
    .byte 0
    .byte 12
    .byte 128
    .byte 22
    .byte 0
    .byte 152
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0

_0718:
    ScrCmd_13F 8, 0x800C
    MessageVar 0x800C
    WaitTime 30, 0x800C
    GoTo _07AE
    End

_0730:
    ScrCmd_143 1, 1
    Message 36
    GoTo _0B9A
    End

_0741:
    ScrCmd_13F 21, 0x800C
    MessageVar 0x800C
    GoTo _00D0
    End

_0753:
    Message 218
    GoTo _00D0
    End

_075E:
    ScrCmd_13F 8, 0x800C
    MessageVar 0x800C
    WaitTime 30, 0x800C
    GoTo _07AE
    End

_0776:
    ScrCmd_13F 23, 0x800C
    MessageVar 0x800C
    WaitTime 30, 0x800C
    ScrCmd_135 101
    CloseMessage
    ScrCmd_13E
    ReleaseAll
    End

_0792:
    ScrCmd_13F 24, 0x800C
    MessageVar 0x800C
    WaitTime 30, 0x800C
    ScrCmd_135 101
    CloseMessage
    ScrCmd_13E
    ReleaseAll
    End

_07AE:
    ScrCmd_135 101
    CloseMessage
    ScrCmd_13E
    ReleaseAll
    End

_07BA:
    LockAll
    PlayFanfare SEQ_SE_DP_BUTTON9
    ScrCmd_13C 1
    ScrCmd_2C0 7
    WaitABPressTime 30
    GoTo _07D4
    End

_07D4:
    Message 9
    ScrCmd_135 100
    ScrCmd_139 11
    ScrCmd_145 0x800C
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 1, _0853
    GoToIfEq 0x8008, 4, _0AED
    GoToIfEq 0x8008, 2, _095C
    GoToIfEq 0x8008, 3, _08C7
    GoToIfEq 0x8008, 5, _0A28
    GoToIfEq 0x8008, 6, _0A82
    GoToIfEq 0x8008, 7, _0B78
    GoToIfEq 0x8008, 8, _0B89
    End

_0853:
    Message 11
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _08B6
    ScrCmd_143 1, 0
    CloseMessage
    ScrCmd_144 0x800C
    GoToIfEq 0x800C, 7, _0B58
    ScrCmd_2AF 0x800C
    MessageVar 0x800C
    WaitTime 30, 0x800C
    ScrCmd_135 1
    CloseMessage
    ScrCmd_139 5
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0AD
    ScrCmd_0A1
    Call _0BB2
    GoTo _07D4
    End

_08B6:
    ScrCmd_143 1, 1
    Message 17
    GoTo _0B9A
    End

_08C7:
    Message 26
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _093A
    ScrCmd_19A 0x800C
    GoToIfLt 0x800C, 2, _094B
    ScrCmd_143 1, 0
    CloseMessage
    ScrCmd_144 0x800C
    GoToIfEq 0x800C, 7, _0B78
    Message 27
    WaitTime 30, 0x800C
    ScrCmd_135 3
    CloseMessage
    ScrCmd_139 7
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0AE
    ScrCmd_0A1
    ScrCmd_139 11
    Call _0BB2
    GoTo _07D4
    End

_093A:
    ScrCmd_143 1, 1
    Message 20
    GoTo _0B9A
    End

_094B:
    ScrCmd_143 1, 1
    Message 29
    GoTo _0B9A
    End

_095C:
    Message 21
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0A06
    ScrCmd_1F6 0x800C, 30
    GoToIfLt 0x800C, 2, _0A17
    ScrCmd_143 1, 0
    CloseMessage
    ScrCmd_144 0x800C
    GoToIfEq 0x800C, 7, _0B78
    Message 22
    WaitTime 30, 0x800C
    ScrCmd_135 2
    CloseMessage
    ScrCmd_139 6
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_192
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    Message 202
    ScrCmd_135 102
    CloseMessage
    ScrCmd_2BA 0x800C
    GoToIfEq 0x800C, 1, _0B63
    GoToIfEq 0x800C, 2, _0B63
    ScrCmd_0F6
    ScrCmd_139 11
    Call _0BB2
    GoTo _07D4
    End

_0A06:
    ScrCmd_143 1, 1
    Message 23
    GoTo _0B9A
    End

_0A17:
    ScrCmd_143 1, 1
    Message 24
    GoTo _0B9A
    End

_0A28:
    Message 30
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0A06
    ScrCmd_143 1, 0
    CloseMessage
    ScrCmd_144 0x800C
    GoToIfEq 0x800C, 7, _0B78
    Message 31
    WaitTime 30, 0x800C
    ScrCmd_135 5
    CloseMessage
    ScrCmd_139 2
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0AF
    ScrCmd_0A1
    Call _0BB2
    ReleaseAll
    End

_0A82:
    Message 33
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0A06
    ScrCmd_143 1, 0
    CloseMessage
    ScrCmd_19D 0x800C
    GoToIfEq 0x800C, 0, _0730
    ScrCmd_144 0x800C
    GoToIfEq 0x800C, 7, _0B78
    Message 34
    WaitTime 30, 0x800C
    ScrCmd_135 6
    CloseMessage
    ScrCmd_139 13
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_2C6
    ScrCmd_0A1
    Call _0BB2
    ReleaseAll
    End

_0AED:
    Message 18
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0B47
    ScrCmd_143 1, 0
    CloseMessage
    ScrCmd_144 0x800C
    GoToIfEq 0x800C, 7, _0B78
    Message 19
    WaitTime 30, 0x800C
    ScrCmd_135 4
    CloseMessage
    ScrCmd_139 1
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0AC
    ScrCmd_0A1
    Call _0BB2
    ReleaseAll
    End

_0B47:
    ScrCmd_143 1, 1
    Message 28
    GoTo _0B9A
    End

_0B58:
    Message 35
    GoTo _0B9A
    End

_0B63:
    ScrCmd_139 11
    Message 25
    WaitTime 30, 0x800C
    GoTo _0B9A
    End

_0B78:
    Message 8
    WaitTime 30, 0x800C
    GoTo _0B9A
    End

_0B89:
    Message 10
    WaitTime 30, 0x800C
    GoTo _0B9A
    End

_0B9A:
    ScrCmd_135 101
    CloseMessage
    ScrCmd_13E
    ReleaseAll
    End

    .byte 67
    .byte 1
    .byte 1
    .byte 0
    .byte 1
    .byte 0
    .byte 52
    .byte 0
    .byte 97
    .byte 0
    .byte 2
    .byte 0

_0BB2:
    ScrCmd_13D
    FadeScreen 6, 1, 1, 0
    Return

_0BC0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 207
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0BD3:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoTo _0497
    End

_0BE3:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoTo _0BF3
    End

_0BF3:
    ScrCmd_13A
    CallIfSet 187, _0C50
    CallIfUnset 187, _0C55
    SetFlag 187
    ScrCmd_040 31, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 10, 0
    ScrCmd_042 166, 1
    ScrCmd_042 23, 2
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0C72
    GoToIfEq 0x8008, 1, _0C5A
    GoTo _0C6A
    End

_0C50:
    Message 158
    Return

_0C55:
    Message 157
    Return

_0C5A:
    ScrCmd_138 0x800C
    MessageVar 0x800C
    GoTo _0BF3
    End

_0C6A:
    ScrCmd_13B
    CloseMessage
    ReleaseAll
    End

_0C72:
    Message 159
    ScrCmd_040 31, 3, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 49, 0
    ScrCmd_042 22, 1
    ScrCmd_042 140, 2
    ScrCmd_042 56, 3
    ScrCmd_042 167, 4
    ScrCmd_042 139, 5
    ScrCmd_042 12, 6
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0CFA
    GoToIfEq 0x8008, 1, _0D05
    GoToIfEq 0x8008, 2, _0D10
    GoToIfEq 0x8008, 3, _0D1B
    GoToIfEq 0x8008, 4, _0D26
    GoToIfEq 0x8008, 5, _0D31
    GoTo _0BF3
    End

_0CFA:
    Message 160
    GoTo _0C72
    End

_0D05:
    Message 161
    GoTo _0C72
    End

_0D10:
    Message 162
    GoTo _0C72
    End

_0D1B:
    Message 164
    GoTo _0C72
    End

_0D26:
    Message 165
    GoTo _0C72
    End

_0D31:
    Message 163
    GoTo _0C72

    .byte 2
    .byte 0
    .byte 22
    .byte 0
    .byte 177
    .byte 254
    .byte 0xFF
    .byte 0xFF
    .byte 2
    .byte 0
