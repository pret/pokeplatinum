#include "macros/scrcmd.inc"

    .data

    ScriptEntry _00B6
    ScriptEntry _0126
    ScriptEntry _0365
    ScriptEntry _0140
    ScriptEntry _0365
    ScriptEntry _1084
    ScriptEntry _07F2
    ScriptEntry _0800
    ScriptEntry _08D8
    ScriptEntry _08EB
    ScriptEntry _090A
    ScriptEntry _091D
    ScriptEntry _0930
    ScriptEntry _0943
    ScriptEntry _0962
    ScriptEntry _0975
    ScriptEntry _10AA
    ScriptEntry _118B
    ScriptEntry _1199
    ScriptEntry _11A7
    ScriptEntry _11B5
    ScriptEntry _11C3
    ScriptEntry _11D1
    ScriptEntry _11DF
    ScriptEntry _11ED
    ScriptEntry _11FB
    ScriptEntry _1209
    ScriptEntry _1217
    ScriptEntry _1225
    ScriptEntry _1233
    ScriptEntry _1241
    ScriptEntry _124F
    ScriptEntry _125D
    ScriptEntry _126B
    ScriptEntry _1279
    ScriptEntry _1287
    ScriptEntry _1295
    ScriptEntry _12A3
    ScriptEntry _12B1
    ScriptEntry _12BF
    ScriptEntry _12CD
    ScriptEntry _12DB
    ScriptEntry _12E9
    ScriptEntry _12F7
    ScriptEntry _174A
    .short 0xFD13

_00B6:
    SetFlag 0x9CC
    SetFlag 0x2A1
    ScrCmd_2DF 0x40AB
    ScrCmd_1B7 0x4002, 5
    GoToIfEq 0x4002, 0, _00FE
    GoToIfEq 0x4002, 1, _0108
    GoToIfEq 0x4002, 2, _0112
    GoToIfEq 0x4002, 3, _011C
    End

_00FE:
    ScrCmd_186 15, 28, 14
    End

_0108:
    ScrCmd_186 15, 38, 8
    End

_0112:
    ScrCmd_186 15, 40, 21
    End

_011C:
    ScrCmd_186 15, 48, 41
    End

_0126:
    LockAll
    SetVar 0x8001, 1
    ApplyMovement 0xFF, _03B0
    WaitMovement
    GoTo _015A
    End

_0140:
    LockAll
    SetVar 0x8001, 2
    ApplyMovement 0xFF, _03B8
    WaitMovement
    GoTo _015A
    End

_015A:
    ScrCmd_22D 2, 0x800C
    GoToIfEq 0x800C, 1, _0195
    GoTo _0174
    End

_0174:
    SetVar 0x4000, 0
    GoTo _0994
    End

_0182:
    Message 0
    CloseMessage
    ApplyMovement 0xFF, _03C0
    WaitMovement
    ReleaseAll
    End

_0195:
    SetVar 0x4000, 1
    GoTo _0ACC
    End

_01A3:
    Message 1
    CloseMessage
    ApplyMovement 0xFF, _03C0
    WaitMovement
    ReleaseAll
    End

_01B6:
    SetVar 0x400A, 0
    ScrCmd_177 0x400B
    SetVar 0x400C, 0
    GoTo _01CE
    End

_01CE:
    ScrCmd_198 0x400A, 0x800C
    GoToIfEq 0x800C, 0, _026D
    CallIfEq 0x4000, 0, _0C50
    CallIfEq 0x4000, 1, _0D36
    GoToIfEq 0x800C, 0, _026D
    BufferPartyMonNickname 0, 0x400A
    GoToIfEq 0x400C, 0, _0229
    GoToIfNe 0x400C, 0, _024B
    End

_0229:
    AddVar 0x400C, 1
    Message 2
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0299
    GoTo _026D
    End

_024B:
    AddVar 0x400C, 1
    Message 4
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0299
    GoTo _026D
    End

_026D:
    AddVar 0x400A, 1
    SubVar 0x400B, 1
    GoToIfNe 0x400B, 0, _01CE
    Message 5
    CloseMessage
    ApplyMovement 0xFF, _03C0
    WaitMovement
    ReleaseAll
    End

_0299:
    ScrCmd_14E
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    SetVar 0x409D, 0x400A
    ScrCmd_198 0x400A, 0x409A
    GoTo _0E48
    End

_02BB:
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

_02C9:
    ScrCmd_064 0x8002
    CallIfEq 0x8001, 1, _032A
    CallIfEq 0x8001, 2, _0338
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    SetVar 0x4099, 1
    ScrCmd_215
    Call _03DC
    ScrCmd_27C 0, 0x409D
    Message 3
    CloseMessage
    ApplyMovement 0xFF, _03C8
    ApplyMovement 0x8002, _03C8
    WaitMovement
    ScrCmd_161
    ScrCmd_06D 0x8002, 48
    ReleaseAll
    End

_032A:
    ScrCmd_187 0x8002, 12, 2, 47, 2
    Return

_0338:
    ScrCmd_187 0x8002, 51, 2, 47, 3
    Return

    .byte 188
    .byte 0
    .byte 6
    .byte 0
    .byte 1
    .byte 0
    .byte 1
    .byte 0
    .byte 0
    .byte 0
    .byte 189
    .byte 0
    .byte 44
    .byte 0
    .byte 5
    .byte 52
    .byte 0
    .byte 94
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 97
    .byte 0
    .byte 0
    .byte 0
    .byte 95
    .byte 0
    .byte 97
    .byte 0
    .byte 2
    .byte 0

_0365:
    LockAll
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_162
    GoTo _037D
    End

_037D:
    ScrCmd_065 5
    GoTo _0389
    End

_0389:
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    SetVar 0x4099, 0
    Message 6
    CloseMessage
    ApplyMovement 0xFF, _03C0
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
_03B0:
    MoveAction_022
    EndMovement

    .balign 4, 0
_03B8:
    MoveAction_023
    EndMovement

    .balign 4, 0
_03C0:
    MoveAction_00D
    EndMovement

    .balign 4, 0
_03C8:
    MoveAction_00C
    EndMovement

    .byte 85
    .byte 0
    .byte 2
    .byte 0
    .byte 2
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_03DC:
    ScrCmd_1B7 0x800C, 5
    CallIfEq 0x800C, 0, _040A
    CallIfNe 0x800C, 0, _0412
    ScrCmd_217 0x409C, 0x409A
    GoTo _041A
    End

_040A:
    SetVar 0x409B, 0
    Return

_0412:
    SetVar 0x409B, 1
    Return

_041A:
    ScrCmd_1B7 0x800C, 100
    GoToIfLt 0x800C, 20, _0490
    GoToIfLt 0x800C, 35, _0498
    GoToIfLt 0x800C, 50, _04A0
    GoToIfLt 0x800C, 65, _04A8
    GoToIfLt 0x800C, 72, _04B0
    GoToIfLt 0x800C, 79, _04B8
    GoToIfLt 0x800C, 86, _04C0
    GoToIfLt 0x800C, 93, _04C8
    GoTo _04D0
    End

_0490:
    SetVar 0x409F, 176
    Return

_0498:
    SetVar 0x409F, 175
    Return

_04A0:
    SetVar 0x409F, 177
    Return

_04A8:
    SetVar 0x409F, 178
    Return

_04B0:
    SetVar 0x409F, 179
    Return

_04B8:
    SetVar 0x409F, 180
    Return

_04C0:
    SetVar 0x409F, 181
    Return

_04C8:
    SetVar 0x409F, 182
    Return

_04D0:
    SetVar 0x409F, 183
    Return

_04D8:
    SetVar 0x8000, 0x409B
    ScrCmd_215
    Call _03DC
    GoToIfEq 0x8000, 0, _04FB
    GoTo _056C
    End

_04FB:
    SetVar 0x8004, 0x409F
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0595
    GoTo _054D
    End

_0524:
    SetVar 0x8004, 0x409F
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _05DD
    GoTo _054D
    End

_054D:
    ScrCmd_04C 0x409A, 0
    Message 22
    ScrCmd_04D
    ScrCmd_27C 1, 0x8004
    ScrCmd_1E5 51
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_056C:
    SetVar 0x8004, 0x409C
    SetVar 0x8005, 1
    ScrCmd_1D3 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0524
    GoTo _05BE
    End

_0595:
    SetVar 0x8004, 0x409C
    SetVar 0x8005, 1
    ScrCmd_1D3 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _05DD
    GoTo _05BE
    End

_05BE:
    ScrCmd_04C 0x409A, 0
    Message 22
    ScrCmd_04D
    ScrCmd_27C 2, 0x8004
    ScrCmd_1E5 51
    CallCommonScript 0x7DF
    CloseMessage
    ReleaseAll
    End

_05DD:
    BufferPartyMonNickname 0, 0x409D
    ScrCmd_04C 0x409A, 0
    GoToIfEq 0x409A, 0x184, _0719
    GoToIfEq 0x409A, 0x185, _0719
    GoToIfEq 0x409A, 0x187, _0719
    GoToIfEq 0x409A, 0x188, _0719
    GoToIfEq 0x409A, 0x18A, _0719
    GoToIfEq 0x409A, 0x18B, _0719
    ScrCmd_1B7 0x800C, 9
    GoToIfEq 0x800C, 0, _06AC
    GoToIfEq 0x800C, 1, _06B7
    GoToIfEq 0x800C, 2, _06C2
    GoToIfEq 0x800C, 3, _06CD
    GoToIfEq 0x800C, 4, _06D8
    GoToIfEq 0x800C, 5, _06E3
    GoToIfEq 0x800C, 6, _06EE
    GoToIfEq 0x800C, 7, _06F9
    GoTo _0704
    End

_06AC:
    Message 13
    GoTo _070F
    End

_06B7:
    Message 14
    GoTo _070F
    End

_06C2:
    Message 15
    GoTo _070F
    End

_06CD:
    Message 16
    GoTo _070F
    End

_06D8:
    Message 17
    GoTo _070F
    End

_06E3:
    Message 18
    GoTo _070F
    End

_06EE:
    Message 19
    GoTo _070F
    End

_06F9:
    Message 20
    GoTo _070F
    End

_0704:
    Message 21
    GoTo _070F
    End

_070F:
    ScrCmd_04D
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0719:
    ScrCmd_1B7 0x800C, 9
    GoToIfEq 0x800C, 0, _078F
    GoToIfEq 0x800C, 1, _079A
    GoToIfEq 0x800C, 2, _07A5
    GoToIfEq 0x800C, 3, _07B0
    GoToIfEq 0x800C, 4, _07BB
    GoToIfEq 0x800C, 5, _07C6
    GoToIfEq 0x800C, 6, _07D1
    GoToIfEq 0x800C, 7, _07DC
    GoTo _07E7
    End

_078F:
    Message 23
    GoTo _070F
    End

_079A:
    Message 14
    GoTo _070F
    End

_07A5:
    Message 15
    GoTo _070F
    End

_07B0:
    Message 24
    GoTo _070F
    End

_07BB:
    Message 17
    GoTo _070F
    End

_07C6:
    Message 25
    GoTo _070F
    End

_07D1:
    Message 26
    GoTo _070F
    End

_07DC:
    Message 27
    GoTo _070F
    End

_07E7:
    Message 21
    GoTo _070F
    End

_07F2:
    SetVar 0x400A, 0
    GoTo _080E
    End

_0800:
    SetVar 0x400A, 1
    GoTo _080E
    End

_080E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPartyMonNickname 0, 0x409D
    ScrCmd_1B7 0x800C, 6
    CallIfEq 0x800C, 0, _0884
    CallIfEq 0x800C, 1, _0889
    CallIfEq 0x800C, 2, _088E
    CallIfEq 0x800C, 3, _0893
    CallIfEq 0x800C, 4, _0898
    CallIfEq 0x800C, 5, _089D
    GoToIfEq 0x400A, 0, _08A2
    GoTo _08B4
    End

_0884:
    Message 7
    Return

_0889:
    Message 8
    Return

_088E:
    Message 9
    Return

_0893:
    Message 10
    Return

_0898:
    Message 11
    Return

_089D:
    Message 12
    Return

_08A2:
    WaitABXPadPress
    CloseMessage
    ApplyMovement 0, _08C8
    WaitMovement
    ReleaseAll
    End

_08B4:
    WaitABXPadPress
    CloseMessage
    ApplyMovement 1, _08D0
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
_08C8:
    MoveAction_003
    EndMovement

    .balign 4, 0
_08D0:
    MoveAction_002
    EndMovement

_08D8:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 28
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_08EB:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_04C 0x1A9, 0
    Message 29
    ScrCmd_04D
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_090A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 30
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_091D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 31
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0930:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 32
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0943:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_04C 25, 0
    Message 33
    ScrCmd_04D
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0962:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 34
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0975:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_04C 35, 0
    Message 35
    ScrCmd_04D
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0994:
    ScrCmd_1C0 0x800C, 25
    GoToIfEq 0x800C, 1, _01B6
    ScrCmd_1C0 0x800C, 35
    GoToIfEq 0x800C, 1, _01B6
    ScrCmd_1C0 0x800C, 54
    GoToIfEq 0x800C, 1, _01B6
    ScrCmd_1C0 0x800C, 0x1A1
    GoToIfEq 0x800C, 1, _01B6
    ScrCmd_1C0 0x800C, 0x1A9
    GoToIfEq 0x800C, 1, _01B6
    ScrCmd_1C0 0x800C, 0x1AB
    GoToIfEq 0x800C, 1, _01B6
    ScrCmd_1C0 0x800C, 0x1B8
    GoToIfEq 0x800C, 1, _01B6
    ScrCmd_1C0 0x800C, 0x183
    GoToIfEq 0x800C, 1, _01B6
    ScrCmd_1C0 0x800C, 0x184
    GoToIfEq 0x800C, 1, _01B6
    ScrCmd_1C0 0x800C, 0x185
    GoToIfEq 0x800C, 1, _01B6
    ScrCmd_1C0 0x800C, 0x186
    GoToIfEq 0x800C, 1, _01B6
    ScrCmd_1C0 0x800C, 0x187
    GoToIfEq 0x800C, 1, _01B6
    ScrCmd_1C0 0x800C, 0x188
    GoToIfEq 0x800C, 1, _01B6
    ScrCmd_1C0 0x800C, 0x189
    GoToIfEq 0x800C, 1, _01B6
    ScrCmd_1C0 0x800C, 0x18A
    GoToIfEq 0x800C, 1, _01B6
    ScrCmd_1C0 0x800C, 0x18B
    GoToIfEq 0x800C, 1, _01B6
    GoTo _0182
    End

_0ACC:
    ScrCmd_1C0 0x800C, 25
    GoToIfEq 0x800C, 1, _01B6
    ScrCmd_1C0 0x800C, 35
    GoToIfEq 0x800C, 1, _01B6
    ScrCmd_1C0 0x800C, 54
    GoToIfEq 0x800C, 1, _01B6
    ScrCmd_1C0 0x800C, 0x1A1
    GoToIfEq 0x800C, 1, _01B6
    ScrCmd_1C0 0x800C, 0x1A9
    GoToIfEq 0x800C, 1, _01B6
    ScrCmd_1C0 0x800C, 0x1AB
    GoToIfEq 0x800C, 1, _01B6
    ScrCmd_1C0 0x800C, 0x1B8
    GoToIfEq 0x800C, 1, _01B6
    ScrCmd_1C0 0x800C, 39
    GoToIfEq 0x800C, 1, _01B6
    ScrCmd_1C0 0x800C, 0xFF
    GoToIfEq 0x800C, 1, _01B6
    ScrCmd_1C0 0x800C, 0x12C
    GoToIfEq 0x800C, 1, _01B6
    ScrCmd_1C0 0x800C, 0x11D
    GoToIfEq 0x800C, 1, _01B6
    ScrCmd_1C0 0x800C, 0x183
    GoToIfEq 0x800C, 1, _01B6
    ScrCmd_1C0 0x800C, 0x184
    GoToIfEq 0x800C, 1, _01B6
    ScrCmd_1C0 0x800C, 0x185
    GoToIfEq 0x800C, 1, _01B6
    ScrCmd_1C0 0x800C, 0x186
    GoToIfEq 0x800C, 1, _01B6
    ScrCmd_1C0 0x800C, 0x187
    GoToIfEq 0x800C, 1, _01B6
    ScrCmd_1C0 0x800C, 0x188
    GoToIfEq 0x800C, 1, _01B6
    ScrCmd_1C0 0x800C, 0x189
    GoToIfEq 0x800C, 1, _01B6
    ScrCmd_1C0 0x800C, 0x18A
    GoToIfEq 0x800C, 1, _01B6
    ScrCmd_1C0 0x800C, 0x18B
    GoToIfEq 0x800C, 1, _01B6
    GoTo _01A3
    End

_0C50:
    ScrCmd_198 0x400A, 0x800C
    GoToIfEq 0x800C, 25, _0D2E
    GoToIfEq 0x800C, 35, _0D2E
    GoToIfEq 0x800C, 54, _0D2E
    GoToIfEq 0x800C, 0x1A1, _0D2E
    GoToIfEq 0x800C, 0x1A9, _0D2E
    GoToIfEq 0x800C, 0x1AB, _0D2E
    GoToIfEq 0x800C, 0x1B8, _0D2E
    GoToIfEq 0x800C, 0x183, _0D2E
    GoToIfEq 0x800C, 0x184, _0D2E
    GoToIfEq 0x800C, 0x185, _0D2E
    GoToIfEq 0x800C, 0x186, _0D2E
    GoToIfEq 0x800C, 0x187, _0D2E
    GoToIfEq 0x800C, 0x188, _0D2E
    GoToIfEq 0x800C, 0x189, _0D2E
    GoToIfEq 0x800C, 0x18A, _0D2E
    GoToIfEq 0x800C, 0x18B, _0D2E
    SetVar 0x800C, 0
    Return

_0D2E:
    SetVar 0x800C, 1
    Return

_0D36:
    ScrCmd_198 0x400A, 0x800C
    GoToIfEq 0x800C, 25, _0D2E
    GoToIfEq 0x800C, 35, _0D2E
    GoToIfEq 0x800C, 54, _0D2E
    GoToIfEq 0x800C, 0x1A1, _0D2E
    GoToIfEq 0x800C, 0x1A9, _0D2E
    GoToIfEq 0x800C, 0x1AB, _0D2E
    GoToIfEq 0x800C, 0x1B8, _0D2E
    GoToIfEq 0x800C, 39, _0D2E
    GoToIfEq 0x800C, 0xFF, _0D2E
    GoToIfEq 0x800C, 0x12C, _0D2E
    GoToIfEq 0x800C, 0x11D, _0D2E
    GoToIfEq 0x800C, 0x183, _0D2E
    GoToIfEq 0x800C, 0x184, _0D2E
    GoToIfEq 0x800C, 0x185, _0D2E
    GoToIfEq 0x800C, 0x186, _0D2E
    GoToIfEq 0x800C, 0x187, _0D2E
    GoToIfEq 0x800C, 0x188, _0D2E
    GoToIfEq 0x800C, 0x189, _0D2E
    GoToIfEq 0x800C, 0x18A, _0D2E
    GoToIfEq 0x800C, 0x18B, _0D2E
    SetVar 0x800C, 0
    Return

_0E48:
    SetVar 0x8008, 0x409A
    GoToIfEq 0x8008, 25, _0F5A
    GoToIfEq 0x8008, 0xFF, _0F68
    GoToIfEq 0x8008, 35, _0F76
    GoToIfEq 0x8008, 54, _0F84
    GoToIfEq 0x8008, 0x1A1, _0F92
    GoToIfEq 0x8008, 0x1A9, _0FA0
    GoToIfEq 0x8008, 0x1AB, _0FAE
    GoToIfEq 0x8008, 0x1B8, _0FBC
    GoToIfEq 0x8008, 39, _0FCA
    GoToIfEq 0x8008, 0x12C, _0FD8
    GoToIfEq 0x8008, 0x11D, _0FE6
    GoToIfEq 0x8008, 0x183, _0FF4
    GoToIfEq 0x8008, 0x184, _1002
    GoToIfEq 0x8008, 0x185, _1010
    GoToIfEq 0x8008, 0x186, _101E
    GoToIfEq 0x8008, 0x187, _102C
    GoToIfEq 0x8008, 0x188, _103A
    GoToIfEq 0x8008, 0x189, _1048
    GoToIfEq 0x8008, 0x18A, _1056
    GoToIfEq 0x8008, 0x18B, _1064
    GoTo _02BB
    End

_0F5A:
    SetVar 0x4020, 71
    GoTo _1072
    End

_0F68:
    SetVar 0x4020, 78
    GoTo _1072
    End

_0F76:
    SetVar 0x4020, 72
    GoTo _1072
    End

_0F84:
    SetVar 0x4020, 74
    GoTo _1072
    End

_0F92:
    SetVar 0x4020, 204
    GoTo _1072
    End

_0FA0:
    SetVar 0x4020, 185
    GoTo _1072
    End

_0FAE:
    SetVar 0x4020, 206
    GoTo _1072
    End

_0FBC:
    SetVar 0x4020, 207
    GoTo _1072
    End

_0FCA:
    SetVar 0x4020, 73
    GoTo _1072
    End

_0FD8:
    SetVar 0x4020, 79
    GoTo _1072
    End

_0FE6:
    SetVar 0x4020, 205
    GoTo _1072
    End

_0FF4:
    SetVar 0x4020, 220
    GoTo _1072
    End

_1002:
    SetVar 0x4020, 221
    GoTo _1072
    End

_1010:
    SetVar 0x4020, 222
    GoTo _1072
    End

_101E:
    SetVar 0x4020, 223
    GoTo _1072
    End

_102C:
    SetVar 0x4020, 224
    GoTo _1072
    End

_103A:
    SetVar 0x4020, 225
    GoTo _1072
    End

_1048:
    SetVar 0x4020, 226
    GoTo _1072
    End

_1056:
    SetVar 0x4020, 227
    GoTo _1072
    End

_1064:
    SetVar 0x4020, 228
    GoTo _1072
    End

_1072:
    SetVar 0x8002, 5
    ClearFlag 0x2A1
    GoTo _02C9
    End

_1084:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPartyMonNickname 0, 0x409D
    ScrCmd_216 0x800C
    GoToIfGe 0x800C, 200, _04D8
    GoTo _05DD
    End

_10AA:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0xAB5, _117C
    Message 36
    ScrCmd_2E1 0x40AB, 0x8004
    ScrCmd_2E0 0x40AB, 0x800C
    GoToIfEq 0x800C, 0, _10E1
    GoTo _1136
    End

_10E1:
    BufferItemName 0, 0x8004
    Message 37
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _1161
    SetVar 0x8005, 5
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _1172
    BufferPlayerName 0
    ScrCmd_33D 1, 0x8004
    PlaySound SEQ_FANFA4
    Message 40
    WaitSound
    AddItem 0x8004, 0x8005, 0x800C
    GoTo _117C
    End

_1136:
    ScrCmd_261 0, 0x8004
    Message 37
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _1161
    SetVar 0x8005, 1
    CallCommonScript 0x7DF
    GoTo _117C
    End

_1161:
    Message 38
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 52
    .byte 0
    .byte 97
    .byte 0
    .byte 2
    .byte 0

_1172:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_117C:
    SetFlag 0xAB5
    Message 39
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_118B:
    SetVar 0x8003, 1
    GoTo _1305
    End

_1199:
    SetVar 0x8003, 2
    GoTo _1305
    End

_11A7:
    SetVar 0x8003, 3
    GoTo _1305
    End

_11B5:
    SetVar 0x8003, 4
    GoTo _1305
    End

_11C3:
    SetVar 0x8003, 5
    GoTo _1305
    End

_11D1:
    SetVar 0x8003, 6
    GoTo _1305
    End

_11DF:
    SetVar 0x8003, 7
    GoTo _1305
    End

_11ED:
    SetVar 0x8003, 8
    GoTo _1305
    End

_11FB:
    SetVar 0x8003, 9
    GoTo _1305
    End

_1209:
    SetVar 0x8003, 10
    GoTo _1305
    End

_1217:
    SetVar 0x8003, 11
    GoTo _1305
    End

_1225:
    SetVar 0x8003, 12
    GoTo _1305
    End

_1233:
    SetVar 0x8003, 13
    GoTo _1305
    End

_1241:
    SetVar 0x8003, 14
    GoTo _1305
    End

_124F:
    SetVar 0x8003, 15
    GoTo _1305
    End

_125D:
    SetVar 0x8003, 16
    GoTo _1305
    End

_126B:
    SetVar 0x8003, 17
    GoTo _1305
    End

_1279:
    SetVar 0x8003, 18
    GoTo _1305
    End

_1287:
    SetVar 0x8003, 19
    GoTo _1305
    End

_1295:
    SetVar 0x8003, 20
    GoTo _1305
    End

_12A3:
    SetVar 0x8003, 21
    GoTo _1305
    End

_12B1:
    SetVar 0x8003, 22
    GoTo _1305
    End

_12BF:
    SetVar 0x8003, 23
    GoTo _1305
    End

_12CD:
    SetVar 0x8003, 24
    GoTo _1305
    End

_12DB:
    SetVar 0x8003, 25
    GoTo _1305
    End

_12E9:
    SetVar 0x8003, 26
    GoTo _1305
    End

_12F7:
    SetVar 0x8003, 27
    GoTo _1305
    End

_1305:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    LockAll
    WaitTime 1, 0x800C
    ScrCmd_32D
    ScrCmd_338
    ApplyMovement 5, _1758
    WaitMovement
    PlayFanfare SEQ_SE_DP_GYURU
    CallIfEq 0x8003, 1, _14C2
    CallIfEq 0x8003, 2, _14DA
    CallIfEq 0x8003, 3, _14F2
    CallIfEq 0x8003, 4, _150A
    CallIfEq 0x8003, 5, _1522
    CallIfEq 0x8003, 6, _153A
    CallIfEq 0x8003, 7, _1552
    CallIfEq 0x8003, 8, _156A
    CallIfEq 0x8003, 9, _1582
    CallIfEq 0x8003, 10, _159A
    CallIfEq 0x8003, 11, _15B2
    CallIfEq 0x8003, 12, _15CA
    CallIfEq 0x8003, 13, _15E2
    CallIfEq 0x8003, 14, _15FA
    CallIfEq 0x8003, 15, _1612
    CallIfEq 0x8003, 16, _162A
    CallIfEq 0x8003, 17, _1642
    CallIfEq 0x8003, 18, _165A
    CallIfEq 0x8003, 19, _1672
    CallIfEq 0x8003, 20, _168A
    CallIfEq 0x8003, 21, _16A2
    CallIfEq 0x8003, 22, _16BA
    CallIfEq 0x8003, 23, _16D2
    CallIfEq 0x8003, 24, _16EA
    CallIfEq 0x8003, 25, _1702
    CallIfEq 0x8003, 26, _171A
    CallIfEq 0x8003, 27, _1732
    ApplyMovement 0xFF, _1764
    WaitMovement
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ApplyMovement 5, _1764
    WaitMovement
    ReleaseAll
    ApplyMovement 0xFF, _1770
    WaitMovement
    ScrCmd_32E
    ScrCmd_339
    WaitTime 2, 0x800C
    End

_14C2:
    ApplyMovement 0xFF, _1778
    WaitMovement
    ScrCmd_187 5, 35, 2, 15, 1
    Return

_14DA:
    ApplyMovement 0xFF, _1780
    WaitMovement
    ScrCmd_187 5, 35, 2, 15, 1
    Return

_14F2:
    ApplyMovement 0xFF, _178C
    WaitMovement
    ScrCmd_187 5, 35, 2, 15, 1
    Return

_150A:
    ApplyMovement 0xFF, _1798
    WaitMovement
    ScrCmd_187 5, 17, 2, 16, 1
    Return

_1522:
    ApplyMovement 0xFF, _17A4
    WaitMovement
    ScrCmd_187 5, 17, 2, 16, 1
    Return

_153A:
    ApplyMovement 0xFF, _17B0
    WaitMovement
    ScrCmd_187 5, 17, 2, 16, 1
    Return

_1552:
    ApplyMovement 0xFF, _17BC
    WaitMovement
    ScrCmd_187 5, 47, 4, 8, 1
    Return

_156A:
    ApplyMovement 0xFF, _17C8
    WaitMovement
    ScrCmd_187 5, 33, 5, 7, 1
    Return

_1582:
    ApplyMovement 0xFF, _17D4
    WaitMovement
    ScrCmd_187 5, 15, 4, 10, 1
    Return

_159A:
    ApplyMovement 0xFF, _17E0
    WaitMovement
    ScrCmd_187 5, 52, 4, 25, 1
    Return

_15B2:
    ApplyMovement 0xFF, _17EC
    WaitMovement
    ScrCmd_187 5, 15, 4, 10, 1
    Return

_15CA:
    ApplyMovement 0xFF, _17F8
    WaitMovement
    ScrCmd_187 5, 33, 5, 7, 1
    Return

_15E2:
    ApplyMovement 0xFF, _1804
    WaitMovement
    ScrCmd_187 5, 52, 4, 25, 1
    Return

_15FA:
    ApplyMovement 0xFF, _1810
    WaitMovement
    ScrCmd_187 5, 26, 6, 9, 1
    Return

_1612:
    ApplyMovement 0xFF, _181C
    WaitMovement
    ScrCmd_187 5, 41, 3, 16, 1
    Return

_162A:
    ApplyMovement 0xFF, _1828
    WaitMovement
    ScrCmd_187 5, 52, 4, 25, 1
    Return

_1642:
    ApplyMovement 0xFF, _1834
    WaitMovement
    ScrCmd_187 5, 41, 3, 16, 1
    Return

_165A:
    ApplyMovement 0xFF, _1840
    WaitMovement
    ScrCmd_187 5, 26, 6, 9, 1
    Return

_1672:
    ApplyMovement 0xFF, _184C
    WaitMovement
    ScrCmd_187 5, 47, 4, 8, 1
    Return

_168A:
    ApplyMovement 0xFF, _1854
    WaitMovement
    ScrCmd_187 5, 47, 2, 34, 1
    Return

_16A2:
    ApplyMovement 0xFF, _1860
    WaitMovement
    ScrCmd_187 5, 15, 4, 10, 1
    Return

_16BA:
    ApplyMovement 0xFF, _186C
    WaitMovement
    ScrCmd_187 5, 47, 4, 8, 1
    Return

_16D2:
    ApplyMovement 0xFF, _1878
    WaitMovement
    ScrCmd_187 5, 33, 5, 7, 1
    Return

_16EA:
    ApplyMovement 0xFF, _1884
    WaitMovement
    ScrCmd_187 5, 47, 2, 34, 1
    Return

_1702:
    ApplyMovement 0xFF, _1890
    WaitMovement
    ScrCmd_187 5, 52, 4, 25, 1
    Return

_171A:
    ApplyMovement 0xFF, _189C
    WaitMovement
    ScrCmd_187 5, 15, 4, 10, 1
    Return

_1732:
    ApplyMovement 0xFF, _18A8
    WaitMovement
    ScrCmd_187 5, 33, 5, 7, 1
    Return

_174A:
    LockAll
    SetVar 0x40AC, 0
    ReleaseAll
    End

    .balign 4, 0
_1758:
    MoveAction_001
    MoveAction_045
    EndMovement

    .balign 4, 0
_1764:
    MoveAction_001
    MoveAction_046
    EndMovement

    .balign 4, 0
_1770:
    MoveAction_00D
    EndMovement

    .balign 4, 0
_1778:
    MoveAction_017 18
    EndMovement

    .balign 4, 0
_1780:
    MoveAction_017 19
    MoveAction_014
    EndMovement

    .balign 4, 0
_178C:
    MoveAction_017 17
    MoveAction_014
    EndMovement

    .balign 4, 0
_1798:
    MoveAction_016 18
    MoveAction_015 2
    EndMovement

    .balign 4, 0
_17A4:
    MoveAction_016 17
    MoveAction_015
    EndMovement

    .balign 4, 0
_17B0:
    MoveAction_016 19
    MoveAction_015
    EndMovement

    .balign 4, 0
_17BC:
    MoveAction_016 5
    MoveAction_014 16
    EndMovement

    .balign 4, 0
_17C8:
    MoveAction_016 18
    MoveAction_014 18
    EndMovement

    .balign 4, 0
_17D4:
    MoveAction_016 38
    MoveAction_014 15
    EndMovement

    .balign 4, 0
_17E0:
    MoveAction_017 5
    MoveAction_015 18
    EndMovement

    .balign 4, 0
_17EC:
    MoveAction_016 31
    MoveAction_015 2
    EndMovement

    .balign 4, 0
_17F8:
    MoveAction_016 15
    MoveAction_014
    EndMovement

    .balign 4, 0
_1804:
    MoveAction_017 37
    MoveAction_015 16
    EndMovement

    .balign 4, 0
_1810:
    MoveAction_017 12
    MoveAction_014
    EndMovement

    .balign 4, 0
_181C:
    MoveAction_017 25
    MoveAction_015 6
    EndMovement

    .balign 4, 0
_1828:
    MoveAction_017 19
    MoveAction_015 19
    EndMovement

    .balign 4, 0
_1834:
    MoveAction_017 9
    MoveAction_015 9
    EndMovement

    .balign 4, 0
_1840:
    MoveAction_016 8
    MoveAction_015 2
    EndMovement

    .balign 4, 0
_184C:
    MoveAction_017 21
    EndMovement

    .balign 4, 0
_1854:
    MoveAction_017 22
    MoveAction_015 25
    EndMovement

    .balign 4, 0
_1860:
    MoveAction_016 12
    MoveAction_015
    EndMovement

    .balign 4, 0
_186C:
    MoveAction_017 6
    MoveAction_014 7
    EndMovement

    .balign 4, 0
_1878:
    MoveAction_016 7
    MoveAction_014 9
    EndMovement

    .balign 4, 0
_1884:
    MoveAction_017 5
    MoveAction_015 18
    EndMovement

    .balign 4, 0
_1890:
    MoveAction_017 5
    MoveAction_014 8
    EndMovement

    .balign 4, 0
_189C:
    MoveAction_016 31
    MoveAction_014 24
    EndMovement

    .balign 4, 0
_18A8:
    MoveAction_016 15
    MoveAction_014 27
    EndMovement
