#include "macros/scrcmd.inc"

    .data

    ScriptEntry _028A
    ScriptEntry _0ACF
    ScriptEntry _07E5
    ScriptEntry _0EBF
    ScriptEntry _04EC
    ScriptEntry _0597
    ScriptEntry _01AC
    ScriptEntry _06F6
    ScriptEntry _13AD
    ScriptEntry _1280
    ScriptEntry _129A
    ScriptEntry _12B4
    ScriptEntry _12CE
    ScriptEntry _1328
    ScriptEntry _133B
    ScriptEntry _134E
    ScriptEntry _1361
    ScriptEntry _1374
    ScriptEntry _1387
    ScriptEntry _139A
    ScriptEntry _13AF
    ScriptEntry _0062
    ScriptEntry _00F5
    ScriptEntry _13E0
    .short 0xFD13

_0062:
    CallIfEq 0x40D8, 1, _00F1
    CallIfEq 0x40D8, 3, _00F1
    CallIfEq 0x40D8, 0xFF, _00F1
    ScrCmd_238 19, 0x4000
    CallIfEq 0x4000, 0, _0144
    CallIfNe 0x4000, 0, _014A
    ScrCmd_1E0 0x4000
    GoToIfNe 0x4000, 0, _00DF
    SetFlag 0x1E9
    GoTo _00C6
    End

_00C6:
    ScrCmd_238 2, 0x4000
    GoToIfNe 0x4000, 0, _00EB
    SetFlag 0x20E
    End

_00DF:
    ClearFlag 0x1E9
    GoTo _00C6
    End

_00EB:
    ClearFlag 0x20E
    End

_00F1:
    ScrCmd_266
    Return

_00F5:
    GoToIfNe 0x40D8, 1, _013A
    ScrCmd_1E0 0x4000
    GoToIfNe 0x4000, 0, _013C
    GoToIfEq 0x4000, 1, _013C
    GoToIfEq 0x4000, 2, _013C
    GoToIfEq 0x4000, 3, _013C
_013A:
    End

_013C:
    ScrCmd_18C 3, 2
    End

_0144:
    SetFlag 0x2C3
    Return

_014A:
    ClearFlag 0x2C3
    Return

    .byte 219
    .byte 1
    .byte 0
    .byte 0
    .byte 1
    .byte 0
    .byte 27
    .byte 0

_0158:
    SetVar 0x40D8, 0xFF
    SetVar 0x40DB, 1
    SetVar 0x40DC, 1
    SetVar 0x40D9, 1
    Return

_0172:
    SetVar 0x40D8, 0xFF
    SetVar 0x40DB, 3
    SetVar 0x40DD, 1
    SetVar 0x40DE, 1
    SetVar 0x40DF, 1
    Return

_0192:
    SetVar 0x40D8, 0xFF
    SetVar 0x40DB, 1
    SetVar 0x40DC, 1
    SetVar 0x40D9, 2
    Return

_01AC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar 0x4001, 0
    ScrCmd_1DF 0x4002
    GoTo _01C6
    End

_01C6:
    SetVar 0x8008, 0x4002
    GoToIfEq 0x8008, 1, _0239
    GoToIfEq 0x8008, 2, _024C
    GoToIfEq 0x8008, 3, _025F
    GoToIfEq 0x8008, 4, _022E
    Message 15
    GoTo _020B
    End

_020B:
    WaitABPress
    GoToIfEq 0x4001, 1, _0220
    CloseMessage
    ReleaseAll
    End

_0220:
    Call _079B
    GoTo _0789
    End

_022E:
    Message 89
    GoTo _020B
    End

_0239:
    BufferNumber 0, 20
    SetVar 0x8004, 85
    GoTo _0272
    End

_024C:
    BufferNumber 0, 50
    SetVar 0x8004, 86
    GoTo _0272
    End

_025F:
    BufferNumber 0, 100
    SetVar 0x8004, 87
    GoTo _0272
    End

_0272:
    Message 88
    SetVar 0x8005, 1
    CallCommonScript 0x7FE
    Message 15
    GoTo _020B
    End

_028A:
    LockAll
    PlayFanfare SEQ_SE_CONFIRM
    ScrCmd_1DA
    Message 0
    GoTo _029D
    End

_029D:
    Message 1
    Call _02E6
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0301
    GoToIfEq 0x8008, 1, _02DB
    GoToIfEq 0x8008, 2, _0784
    GoTo _0784
    End

_02DB:
    Message 3
    GoTo _029D
    End

_02E6:
    ScrCmd_040 31, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 141, 0
    ScrCmd_042 142, 1
    ScrCmd_042 143, 2
    ScrCmd_043
    Return

_0301:
    Message 4
    ScrCmd_040 31, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 6, 0
    ScrCmd_042 7, 1
    ScrCmd_042 94, 2
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0352
    GoToIfEq 0x8008, 1, _0385
    GoToIfEq 0x8008, 2, _0784
    GoTo _0784
    End

_0352:
    ScrCmd_1DB 0, 0
    GoTo _0360
    End

_0360:
    ScrCmd_1DD 1, 0, 0x800C
    GoToIfEq 0x800C, 1, _03B0
    ScrCmd_1FF 91, 3, 0, 0
    GoTo _0787
    End

_0385:
    ScrCmd_1DB 0, 1
    ScrCmd_1DD 1, 0, 0x800C
    GoToIfEq 0x800C, 1, _03B0
    ScrCmd_1FF 91, 4, 0, 0
    GoTo _0787
    End

_03B0:
    Message 8
    Call _04BE
    GoToIfEq 0x800C, 0, _0784
    ScrCmd_1DD 32, 0, 0x800C
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 1, _04A8
    GoToIfEq 0x8008, 2, _04B3
    ScrCmd_1DD 53, 0, 0x800C
    ScrCmd_31E 0x800C, 0x800C
    GoToIfEq 0x800C, 0xFF, _13CE
    ScrCmd_1DD 53, 1, 0x800C
    ScrCmd_31E 0x800C, 0x800C
    GoToIfEq 0x800C, 0xFF, _13CE
    ScrCmd_1DD 53, 2, 0x800C
    ScrCmd_31E 0x800C, 0x800C
    GoToIfEq 0x800C, 0xFF, _13CE
    ScrCmd_1DD 43, 0, 0x800C
    GoToIfEq 0x800C, 4, _09B3
    GoTo _045C
    End

_045C:
    Call _0158
    ScrCmd_1DD 5, 0, 0
    ScrCmd_14E
    Call _049C
    GoToIfEq 0x800C, 0, _077E
    ScrCmd_1DD 57, 0, 0x800C
    ScrCmd_1DD 52, 0, 0
    Message 11
    WaitABPress
    GoTo _05EC
    End

_049C:
    CallCommonScript 0x7D6
    SetVar 0x800C, 0x4000
    Return

_04A8:
    Message 9
    GoTo _0784
    End

_04B3:
    Message 10
    GoTo _0784
    End

_04BE:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    ScrCmd_1DD 30, 0, 0
    ScrCmd_0A1
    ScrCmd_1DD 31, 0, 0x800C
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    Return

_04EC:
    LockAll
    SetVar 0x40D8, 0
    ScrCmd_1DD 4, 0, 0x800C
    GoToIfEq 0x800C, 0, _0597
    Message 16
    ScrCmd_1DB 1, 0xFFFF
    ScrCmd_1DD 43, 0, 0x800C
    GoToIfEq 0x800C, 2, _0548
    Call _0192
    ScrCmd_1DD 5, 0, 0
    Call _0734
    Message 11
    WaitABPress
    GoTo _05EC
    End

_0548:
    Call _0577
    ScrCmd_1DD 5, 0, 0
    Call _0734
    ScrCmd_1DD 51, 0, 0x800C
    SetVar 0x4009, 0x800C
    Message 32
    WaitABPress
    GoTo _05EC
    End

_0577:
    SetVar 0x40D8, 0xFF
    SetVar 0x40DB, 2
    SetVar 0x40DD, 1
    SetVar 0x40DE, 2
    SetVar 0x40DF, 0
    Return

_0597:
    LockAll
    Message 19
    ScrCmd_1DD 14, 0, 0x800C
    GoToIfEq 0x800C, 4, _05B9
    GoTo _077E
    End

_05B9:
    ScrCmd_1DD 9, 0, 0x800C
    GoToIfEq 0x800C, 0, _077E
    ScrCmd_1DD 10, 0, 0x800C
    SetVar 0x8000, 0x800C
    BufferNumber 0, 0x8000
    Message 65
    GoTo _077E
    End

_05EC:
    CloseMessage
    ScrCmd_1DD 43, 0, 0x800C
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 4, _0652
    GoToIfEq 0x8008, 5, _0652
    GoToIfEq 0x8008, 2, _066C
    GoToIfEq 0x8008, 3, _0686
    GoTo _0638
    End

_0638:
    SetVar 0x4002, 0
    SetVar 0x4003, 15
    Call _06AE
    GoTo _0746
    End

_0652:
    SetVar 0x4002, 2
    SetVar 0x4003, 19
    Call _06AE
    GoTo _0746
    End

_066C:
    SetVar 0x4002, 1
    SetVar 0x4003, 11
    Call _06AE
    GoTo _06EE
    End

_0686:
    SetVar 0x4002, 1
    SetVar 0x4003, 11
    Call _06AE
    GoTo _06A0
    End

_06A0:
    SetVar 0x40DB, 2
    GoTo _0746
    End

_06AE:
    ApplyMovement 0x4002, _1248
    ApplyMovement 0xFF, _1260
    WaitMovement
    ScrCmd_168 0, 0, 0x4003, 2, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ApplyMovement 0x4002, _1254
    ApplyMovement 0xFF, _126C
    WaitMovement
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    Return

_06EE:
    GoTo _0746
    End

_06F6:
    LockAll
    Call _0724
    ScrCmd_1DD 100, 0, 0x800C
    GoToIfEq 0x800C, 1, _0784
    Message 56
    Call _0734
    GoTo _077E
    End

_0724:
    Call _07B9
    ScrCmd_1DD 6, 0, 0
    Return

_0734:
    ScrCmd_18D
    ScrCmd_12D 0x800C
    ScrCmd_18E
    PlayFanfare SEQ_SE_DP_SAVE
    WaitFanfare SEQ_SE_DP_SAVE
    Return

_0746:
    ScrCmd_1E5 58
    ScrCmd_1CD 36, 0, 0, 0, 0
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_TOWER_ELEVATOR, 0, 3, 6, 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_077E:
    Call _079B
_0784:
    Message 2
_0787:
    WaitABXPadPress
_0789:
    CloseMessage
    Call _07B5
    Call _07B9
    ReleaseAll
    End

_079B:
    ScrCmd_1DD 6, 0, 0
    Call _07AB
    Return

_07AB:
    ScrCmd_1DD 3, 0, 0
    Return

_07B5:
    ScrCmd_1DC
    Return

_07B9:
    SetVar 0x40D8, 0
    SetVar 0x40DB, 0
    SetVar 0x40DC, 0
    SetVar 0x40DD, 0
    SetVar 0x40D9, 0
    SetVar 0x40DE, 0
    SetVar 0x40DF, 0
    Return

_07E5:
    LockAll
    PlayFanfare SEQ_SE_CONFIRM
    ScrCmd_1DA
    ScrCmd_1DD 12, 0, 0x800C
    GoToIfEq 0x800C, 1, _0922
    Message 36
    GoTo _080D
    End

_080D:
    GoTo _0815
    End

_0815:
    ScrCmd_1DD 15, 0, 0x800C
    GoToIfEq 0x800C, 1, _08A7
    GoTo _0832
    End

_0832:
    Message 37
    Call _087D
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0AA7
    GoToIfEq 0x8008, 1, _0A5A
    GoToIfEq 0x8008, 2, _089C
    GoToIfEq 0x8008, 3, _0784
    GoTo _0784
    End

_087D:
    ScrCmd_040 31, 9, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 141, 0
    ScrCmd_042 151, 1
    ScrCmd_042 142, 2
    ScrCmd_042 143, 3
    ScrCmd_043
    Return

_089C:
    Message 38
    GoTo _0815
    End

_08A7:
    Message 37
    Call _08FF
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0AA7
    GoToIfEq 0x8008, 1, _0A5A
    GoToIfEq 0x8008, 2, _0AB5
    GoToIfEq 0x8008, 3, _089C
    GoToIfEq 0x8008, 4, _0784
    GoTo _0784
    End

_08FF:
    ScrCmd_040 31, 7, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 141, 0
    ScrCmd_042 151, 1
    ScrCmd_042 152, 2
    ScrCmd_042 142, 3
    ScrCmd_042 143, 4
    ScrCmd_043
    Return

_0922:
    Message 61
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0967
    Call _049C
    GoToIfEq 0x800C, 0, _0784
    Call _096F
    GoToIfNe 0x800C, 0, _0784
    Message 60
    GoTo _0784
    End

_0967:
    GoTo _080D
    End

_096F:
    CloseMessage
    SetVar 0x4001, 1
    Call _097F
    Return

_097F:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0B3 0x4000
    ScrCmd_1DD 16, 0x4001, 0x4000
    SetVar 0x4001, 0x4000
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    SetVar 0x800C, 0x4001
    Return

_09B3:
    ScrCmd_14E
    Call _049C
    GoToIfEq 0x800C, 0, _077E
    Call _0158
    ScrCmd_1DD 5, 0, 0
    ScrCmd_14E
    CloseMessage
    SetVar 0x4001, 0
    Call _097F
    GoToIfNe 0x800C, 0, _077E
    GoTo _09FB
    End

_09FB:
    Message 47
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _05EC
    Message 48
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _09FB
    SetVar 0x40D8, 2
    ScrCmd_1DD 39, 0, 0
    ScrCmd_1DC
    Message 56
    Call _0734
    WaitABPressTime 30
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    ScrCmd_1DD 2, 0, 0
    ReleaseAll
    End

_0A5A:
    Call _049C
    GoToIfEq 0x800C, 0, _0784
    CloseMessage
    SetVar 0x4001, 2
    Call _097F
    GoToIfNe 0x800C, 0, _0784
    ScrCmd_1E3 0x8004, 0x8005
    BufferNumber 0, 0x8004
    ScrCmd_280 1, 0x8005, 2, 3
    Message 52
    WaitABPress
    GoTo _0789
    End

_0AA7:
    ScrCmd_1DB 0, 4
    GoTo _0360
    End

_0AB5:
    ScrCmd_1DB 0, 5
    GoTo _0360
    End

_0AC3:
    ApplyMovement 0xFF, _1278
    WaitMovement
    Return

_0ACF:
    LockAll
    PlayFanfare SEQ_SE_CONFIRM
    ScrCmd_1DA
    Message 20
    GoTo _0AE2
    End

_0AE2:
    Message 21
    Call _02E6
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0B2B
    GoToIfEq 0x8008, 1, _0B20
    GoToIfEq 0x8008, 2, _0784
    GoTo _0784
    End

_0B20:
    Message 23
    GoTo _0AE2
    End

_0B2B:
    ScrCmd_1DD 1, 2, 0x800C
    GoToIfEq 0x800C, 1, _0B50
    ScrCmd_1FF 91, 2, 0, 0
    GoTo _0787
    End

_0B50:
    Message 26
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0B80
    GoTo _0B6C
    End

_0B6C:
    ScrCmd_1DB 0, 2
    SetVar 0x4001, 0
    GoTo _0B94
    End

_0B80:
    ScrCmd_1DB 0, 3
    SetVar 0x4001, 1
    GoTo _0B94
    End

_0B94:
    Message 8
    Call _04BE
    GoToIfEq 0x800C, 0, _0784
    ScrCmd_1DD 32, 0, 0x800C
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 1, _04A8
    GoToIfEq 0x8008, 2, _04B3
    ScrCmd_1DD 53, 0, 0x800C
    ScrCmd_31E 0x800C, 0x800C
    GoToIfEq 0x800C, 0xFF, _13CE
    ScrCmd_1DD 53, 1, 0x800C
    ScrCmd_31E 0x800C, 0x800C
    GoToIfEq 0x800C, 0xFF, _13CE
    GoToIfEq 0x4001, 1, _0C53
    Call _0172
    ScrCmd_1DD 5, 0, 0
    ScrCmd_14E
    Call _049C
    GoToIfEq 0x800C, 0, _077E
    ScrCmd_1DD 57, 0, 0x800C
    ScrCmd_1DD 52, 0, 0
    Message 35
    GoTo _05EC
    End

_0C53:
    ScrCmd_14E
    Call _049C
    GoToIfEq 0x800C, 0, _077E
    GoTo _0C70
    End

_0C70:
    Message 27
    ScrCmd_040 30, 1, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 13, 0
    ScrCmd_042 14, 1
    ScrCmd_042 5, 2
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0CB4
    GoToIfEq 0x8008, 1, _0D08
    GoTo _077E
    End

_0CB4:
    Message 112
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0C70
    CloseMessage
    ScrCmd_0F2 16, 0, 0, 0x800C
    GoToIfEq 0x800C, 1, _0CF6
    GoToIfEq 0x800C, 3, _0CFE
    GoTo _0D5C
    End

_0CF6:
    GoTo _0C70
    End

_0CFE:
    ScrCmd_150
    GoTo _0C70
    End

_0D08:
    Message 112
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0C70
    CloseMessage
    ScrCmd_0F3 16, 0, 0, 0x800C
    GoToIfEq 0x800C, 1, _0D4A
    GoToIfEq 0x800C, 3, _0D52
    GoTo _0D5C
    End

_0D4A:
    GoTo _0C70
    End

_0D52:
    ScrCmd_150
    GoTo _0C70
    End

_0D5C:
    ScrCmd_136
    ScrCmd_135 1
    ScrCmd_1DD 58, 0, 0
    GoTo _0D72
    End

_0D72:
    ScrCmd_1E1 0, 0, 0x800C
    GoToIfEq 0x800C, 0, _0D72
    ScrCmd_1E2 0, 0x4000
    SetVar 0x8008, 0x4000
    GoToIfEq 0x8008, 1, _0DE7
    GoToIfEq 0x8008, 2, _0E05
    GoToIfEq 0x8008, 3, _0E23
    ScrCmd_136
    ScrCmd_135 2
    ScrCmd_1DD 57, 0, 0x8004
    ScrCmd_207 0x800C
    GoToIfEq 0x800C, 0, _0E8A
    ScrCmd_1E2 1, 0x4000
    GoTo _0E58
    End

_0DE7:
    Call _0E4E
    ScrCmd_1DD 53, 0, 0x800C
    BufferPartyMonSpecies 0, 0x800C
    Message 33
    GoTo _077E
    End

_0E05:
    Call _0E4E
    ScrCmd_1DD 53, 1, 0x800C
    BufferPartyMonSpecies 0, 0x800C
    Message 33
    GoTo _077E
    End

_0E23:
    Call _0E4E
    ScrCmd_1DD 53, 0, 0x800C
    BufferPartyMonSpecies 0, 0x800C
    ScrCmd_1DD 53, 1, 0x800C
    BufferPartyMonSpecies 1, 0x800C
    Message 34
    GoTo _077E
    End

_0E4E:
    ScrCmd_136
    ScrCmd_135 8
    ScrCmd_150
    Return

_0E58:
    Call _0172
    ScrCmd_1DD 5, 0, 0
    ScrCmd_14E
    Message 69
    Call _0734
    ScrCmd_330
    Message 32
    WaitTime 30, 0x800C
    ScrCmd_136
    ScrCmd_135 3
    GoTo _05EC
    End

_0E8A:
    ScrCmd_1DD 52, 0, 0
    ScrCmd_1DD 58, 0, 0
    GoTo _0EA2
    End

_0EA2:
    ScrCmd_1E1 1, 0, 0x800C
    GoToIfEq 0x800C, 0, _0EA2
    GoTo _0E58
    End

_0EBF:
    LockAll
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    Call _0724
    ScrCmd_1DD 100, 0, 0x800C
    GoToIfEq 0x800C, 1, _0784
    ScrCmd_1DD 35, 0, 0x800C
    GoToIfEq 0x800C, 1, _0F7E
    GoTo _0F05
    End

_0F05:
    Message 53
    ScrCmd_1DD 43, 0, 0x800C
    SetVar 0x4000, 0x800C
    SetVar 0x8008, 0x4000
    GoToIfEq 0x8008, 5, _0F53
    GoToIfEq 0x8008, 4, _11BA
    ScrCmd_1DD 49, 0, 0x800C
    CallIfEq 0x800C, 1, _0F73
    GoTo _0F53
    End

_0F53:
    Message 56
    Call _0734
    CloseMessage
    GoToIfEq 0x4000, 0, _118A
    GoTo _077E
    End

_0F73:
    Message 73
    PlaySound SEQ_FANFA1
    WaitSound
    Return

_0F7E:
    ScrCmd_1DD 43, 0, 0x800C
    SetVar 0x4000, 0x800C
    GoToIfEq 0x4000, 5, _116C
    GoToIfEq 0x4000, 0, _1091
    GoToIfEq 0x4000, 4, _0FEA
    ScrCmd_1DD 49, 0, 0x800C
    GoToIfNe 0x800C, 0, _0FD6
    Call _1167
    GoTo _1177
    End

_0FD6:
    Message 12
    Message 73
    PlaySound SEQ_FANFA1
    WaitSound
    GoTo _1177
    End

_0FEA:
    Message 12
    ScrCmd_1DD 54, 0, 0x800C
    GoToIfEq 0x800C, 0, _105E
    GoTo _100A
    End

_100A:
    ScrCmd_1DD 10, 0, 0x800C
    SetVar 0x4000, 0x800C
    BufferPlayerName 0
    BufferNumber 1, 0x4000
    Message 55
    GoTo _102B
    End

_102B:
    ScrCmd_1DD 49, 0, 0x800C
    GoToIfEq 0x800C, 0, _11F5
    GoTo _1048
    End

_1048:
    BufferNumber 0, 0x4000
    Message 70
    PlaySound SEQ_FANFA1
    WaitSound
    GoTo _11F5
    End

_105E:
    ScrCmd_1DD 49, 0, 0x800C
    GoToIfEq 0x800C, 0, _11F5
    GoTo _107B
    End

_107B:
    BufferNumber 0, 0x4000
    Message 132
    PlaySound SEQ_FANFA1
    WaitSound
    GoTo _11F5
    End

_1091:
    ScrCmd_1DD 45, 0, 0x800C
    GoToIfEq 0x800C, 0, _10AE
    GoTo _10F5
    End

_10AE:
    Call _1167
    GoTo _10BC
    End

_10BC:
    Message 14
    Call _0734
    ScrCmd_1DF 0x800C
    GoToIfEq 0x800C, 0, _077E
    Message 113
    CloseMessage
    SetVar 0x4002, 0x800C
    SetVar 0x4001, 1
    Call _0AC3
    GoTo _01C6
    End

_10F5:
    CallIfEq 0x404F, 1, _1135
    CallIfEq 0x404F, 3, _114C
    ScrCmd_1DD 48, 0, 0x800C
    GoToIfEq 0x800C, 0, _10BC
    Message 84
    PlaySound SEQ_FANFA1
    WaitSound
    GoTo _10BC
    End

_1135:
    Message 85
    BufferPlayerName 0
    Message 87
    PlaySound SEQ_FANFA4
    WaitSound
    SetVar 0x404F, 2
    Return

_114C:
    Message 85
    BufferPlayerName 0
    Message 86
    PlaySound SEQ_FANFA4
    WaitSound
    SetVar 0x404F, 4
    CallCommonScript 0x806
    Return

_1167:
    Message 12
    Return

_116C:
    Message 54
    GoTo _1177
    End

_1177:
    Message 14
    Call _0734
    CloseMessage
    GoTo _077E
    End

_118A:
    ScrCmd_1DF 0x800C
    GoToIfEq 0x800C, 0, _077E
    Message 113
    CloseMessage
    SetVar 0x4002, 0x800C
    SetVar 0x4001, 1
    Call _0AC3
    GoTo _01C6
    End

_11BA:
    ScrCmd_1DD 9, 0, 0x800C
    GoToIfEq 0x800C, 1, _11D7
    GoTo _11F5
    End

_11D7:
    ScrCmd_1DD 10, 0, 0x800C
    SetVar 0x8000, 0x800C
    BufferNumber 0, 0x8000
    Message 65
    GoTo _11F5
    End

_11F5:
    ScrCmd_1DD 11, 1, 0
    GoTo _1205
    End

_1205:
    Call _079B
    Message 56
    Call _0734
    Message 57
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0784
    Call _096F
    GoToIfNe 0x800C, 0, _0784
    Message 60
    GoTo _0784

    .byte 2
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_1248:
    MoveAction_03E
    MoveAction_00C 2
    EndMovement

    .balign 4, 0
_1254:
    MoveAction_00C
    MoveAction_045
    EndMovement

    .balign 4, 0
_1260:
    MoveAction_03E
    MoveAction_00C 2
    EndMovement

    .balign 4, 0
_126C:
    MoveAction_00C 2
    MoveAction_045
    EndMovement

    .balign 4, 0
_1278:
    MoveAction_003
    EndMovement

_1280:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar 0x8000, 0
    SetVar 0x8001, 0
    Call _1304
    End

_129A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar 0x8000, 0
    SetVar 0x8001, 1
    Call _1304
    End

_12B4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar 0x8000, 0
    SetVar 0x8001, 2
    Call _1304
    End

_12CE:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_1E4 0x800C
    GoToIfEq 0x800C, 0, _12F9
    SetVar 0x8000, 1
    SetVar 0x8001, 0
    Call _1304
    End

_12F9:
    Message 111
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1304:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_1D9 0x8000, 0x8001
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    Return

_1328:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 74
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_133B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 75
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_134E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 76
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1361:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 77
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1374:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 78
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1387:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 79
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_139A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 80
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_13AD:
    End

_13AF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_04C 25, 0
    Message 81
    ScrCmd_04D
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_13CE:
    Call _07B5
    Call _07B9
    CallCommonScript 0x809
    End

_13E0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallIfUnset 0xFF, _1492
    CallIfSet 0xFF, _1497
    SetFlag 0xFF
    GoTo _140A
    End

_140A:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    ScrCmd_191
    ScrCmd_193 0x800C
    ScrCmd_0A1
    SetVar 0x8000, 0x800C
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x8000, 0xFF, _1549
    ScrCmd_198 0x8000, 0x8004
    GoToIfEq 0x8004, 0, _149C
    ScrCmd_2EE 0x8000, 0x8001, 0x8002, 0x8003
    GoToIfLe 0x8001, 90, _14E9
    GoToIfLe 0x8001, 120, _14F4
    GoToIfLe 0x8001, 150, _14FF
    GoToIfGe 0x8001, 151, _150A
    End

_1492:
    Message 114
    Return

_1497:
    Message 115
    Return

_149C:
    Message 117
    GoTo _140A
    End

_14A7:
    MessageVar 0x8002
    GoTo _14B3
    End

_14B3:
    GoToIfLe 0x8003, 15, _1515
    GoToIfLe 0x8003, 25, _1520
    GoToIfLe 0x8003, 30, _152B
    GoToIfGe 0x8003, 31, _1536
    End

_14E9:
    Message 118
    GoTo _14A7
    End

_14F4:
    Message 119
    GoTo _14A7
    End

_14FF:
    Message 120
    GoTo _14A7
    End

_150A:
    Message 121
    GoTo _14A7
    End

_1515:
    Message 128
    GoTo _1541
    End

_1520:
    Message 129
    GoTo _1541
    End

_152B:
    Message 130
    GoTo _1541
    End

_1536:
    Message 131
    GoTo _1541
    End

_1541:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1549:
    Message 116
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
