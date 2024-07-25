#include "macros/scrcmd.inc"

    .data

    ScriptEntry _00ED
    ScriptEntry _0101
    ScriptEntry _0115
    ScriptEntry _0129
    ScriptEntry _013D
    ScriptEntry _07AA
    ScriptEntry _0030
    ScriptEntry _002E
    ScriptEntry _07BB
    ScriptEntry _0908
    ScriptEntry _081E
    .short 0xFD13

_002E:
    End

_0030:
    SetFlag 0x2BB
    SetFlag 0x2BC
    SetFlag 0x2BD
    SetFlag 0x2BE
    SetFlag 0x2BF
    ScrCmd_28B 3, 0x4000
    GoToIfEq 0x4000, 0, _00A5
    ScrCmd_302 0x4000, 0x4001, 0x4002, 0x4003, 0x4004
    CallIfEq 0x4000, 0, _00CF
    CallIfEq 0x4001, 0, _00D5
    CallIfEq 0x4002, 0, _00DB
    CallIfEq 0x4003, 0, _00E1
    CallIfEq 0x4004, 0, _00E7
    End

_00A5:
    ScrCmd_18B 0, 4, 1
    ScrCmd_18B 1, 4, 1
    ScrCmd_18B 2, 4, 1
    ScrCmd_18B 3, 4, 1
    ScrCmd_18B 4, 4, 1
    End

_00CF:
    ClearFlag 0x2BB
    Return

_00D5:
    ClearFlag 0x2BC
    Return

_00DB:
    ClearFlag 0x2BD
    Return

_00E1:
    ClearFlag 0x2BE
    Return

_00E7:
    ClearFlag 0x2BF
    Return

_00ED:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar 0x8004, 1
    GoTo _0151
    End

_0101:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar 0x8004, 3
    GoTo _0151
    End

_0115:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar 0x8004, 2
    GoTo _0151
    End

_0129:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar 0x8004, 4
    GoTo _0151
    End

_013D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar 0x8004, 5
    GoTo _0151
    End

_0151:
    ScrCmd_1C0 0x800C, 0x1DF
    GoToIfEq 0x800C, 0, _06DE
    CheckItem ITEM_SECRET_KEY, 1, 0x800C
    GoToIfEq 0x800C, 0, _06DE
    ScrCmd_28B 3, 0x800C
    GoToIfEq 0x800C, 0, _06DE
    CallIfEq 0x8004, 1, _06C5
    CallIfEq 0x8004, 3, _06CA
    CallIfEq 0x8004, 2, _06CF
    CallIfEq 0x8004, 4, _06D4
    CallIfEq 0x8004, 5, _06D9
    ScrCmd_303 0x8003, 0x800C
    GoToIfGe 0x8003, 1, _0254
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0740
    GoTo _01F8
    End

_01F8:
    CallIfEq 0x8004, 1, _069D
    CallIfEq 0x8004, 3, _06A5
    CallIfEq 0x8004, 2, _06AD
    CallIfEq 0x8004, 4, _06B5
    CallIfEq 0x8004, 5, _06BD
    ScrCmd_2CB 0x800C, 0x1DF
    GoToIfEq 0x800C, 1, _03F5
    GoTo _0403
    End

_0254:
    ScrCmd_041 31, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 15, 0
    ScrCmd_042 16, 1
    ScrCmd_042 14, 2
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _01F8
    GoToIfEq 0x8008, 2, _0295
    GoTo _0740
    End

_0295:
    ScrCmd_303 0x8003, 0x800C
    SetVar 0x8000, 0x800C
    GoToIfGe 0x8003, 2, _037B
    GoTo _02B6
    End

_02B6:
    BufferPartyMonNickname 0, 0x8000
    Message 11
    ScrCmd_304 0x8000, 0, 0, 0
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    ScrCmd_305 0x8000, 0x8004
    CallIfEq 0x8004, 1, _0349
    CallIfEq 0x8004, 4, _0367
    CallIfEq 0x8004, 3, _0353
    CallIfEq 0x8004, 2, _035D
    CallIfEq 0x8004, 5, _0371
    GoTo _0325
    End

_0325:
    GetPlayerMapPos 0x8006, 0x8007
    ScrCmd_1BD 0x800C
    Warp MAP_HEADER_ROTOMS_ROOM, 0, 0x8006, 0x8007, 0x800C
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

_0349:
    ClearFlag 0x2BB
    ScrCmd_064 0
    Return

_0353:
    ClearFlag 0x2BD
    ScrCmd_064 2
    Return

_035D:
    ClearFlag 0x2BC
    ScrCmd_064 3
    Return

_0367:
    ClearFlag 0x2BE
    ScrCmd_064 1
    Return

_0371:
    ClearFlag 0x2BF
    ScrCmd_064 4
    Return

_037B:
    Message 7
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    ScrCmd_191
    ScrCmd_193 0x8000
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x8000, 0xFF, _03F3
    ScrCmd_198 0x8000, 0x800C
    GoToIfEq 0x800C, 0, _045D
    GoToIfNe 0x800C, 0x1DF, _0468
    ScrCmd_305 0x8000, 0x800C
    GoToIfEq 0x800C, 0, _03E8
    GoTo _02B6
    End

_03E8:
    Message 17
    GoTo _07A2
    End

_03F3:
    End

_03F5:
    ScrCmd_2DD 0x8000, 0x1DF
    GoTo _0473
    End

_0403:
    Message 7
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    ScrCmd_191
    ScrCmd_193 0x8000
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x8000, 0xFF, _0740
    ScrCmd_198 0x8000, 0x800C
    GoToIfEq 0x800C, 0, _045D
    GoToIfNe 0x800C, 0x1DF, _0468
    GoTo _0473
    End

_045D:
    Message 8
    GoTo _07A2
    End

_0468:
    Message 9
    GoTo _07A2
    End

_0473:
    ScrCmd_099 0x800C, 0x13B, 0x8000
    GoToIfEq 0x800C, 1, _04FD
    ScrCmd_099 0x800C, 59, 0x8000
    GoToIfEq 0x800C, 1, _04FD
    ScrCmd_099 0x800C, 56, 0x8000
    GoToIfEq 0x800C, 1, _04FD
    ScrCmd_099 0x800C, 0x193, 0x8000
    GoToIfEq 0x800C, 1, _04FD
    ScrCmd_099 0x800C, 0x1B5, 0x8000
    GoToIfEq 0x800C, 1, _04FD
    ScrCmd_1C8 0x800C, 0x8000
    SetVar 0x8002, 0x800C
    GoToIfEq 0x800C, 4, _051B
    GoTo _050B
    End

_04FD:
    SetVar 0x8002, 0
    GoTo _050B
    End

_050B:
    BufferPartyMonNickname 0, 0x8000
    Message 10
    GoTo _0613
    End

_051B:
    BufferPartyMonNickname 0, 0x8000
    ScrCmd_0D4 1, 0x8001
    Message 0
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _05FE
    GoTo _0541
    End

_0541:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    ScrCmd_2E7 0x8000, 0x8001
    ScrCmd_2E8 0x8002
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x8002, 4, _05DD
    ScrCmd_1CA 0x800C, 0x8000, 0x8002
    ScrCmd_0D4 1, 0x800C
    Message 3
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _05FE
    BufferPartyMonNickname 0, 0x8000
    ScrCmd_1CA 0x800C, 0x8000, 0x8002
    ScrCmd_0D4 1, 0x800C
    Message 4
    PlayFanfare SEQ_SE_DP_KON
    WaitFanfare SEQ_SE_DP_KON
    WaitTime 30, 0x800C
    Message 5
    WaitTime 32, 0x800C
    PlaySound SEQ_FANFA1
    ScrCmd_0D4 1, 0x8001
    Message 6
    WaitSound
    WaitTime 16, 0x800C
    GoTo _0613
    End

_05DD:
    ScrCmd_0D4 1, 0x8001
    Message 1
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0541
    GoTo _05FE
    End

_05FE:
    BufferPartyMonNickname 0, 0x8000
    ScrCmd_0D4 1, 0x8001
    Message 2
    GoTo _07A2
    End

_0613:
    ScrCmd_304 0x8000, 0x8002, 0x8001, 0x8004
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    CallIfEq 0x8004, 1, _067F
    CallIfEq 0x8004, 4, _0691
    CallIfEq 0x8004, 3, _0685
    CallIfEq 0x8004, 2, _068B
    CallIfEq 0x8004, 5, _0697
    GoToIfUnset 119, _080C
    GoTo _0325
    End

_067F:
    ScrCmd_065 0
    Return

_0685:
    ScrCmd_065 2
    Return

_068B:
    ScrCmd_065 3
    Return

_0691:
    ScrCmd_065 1
    Return

_0697:
    ScrCmd_065 4
    Return

_069D:
    SetVar 0x8001, 0x13B
    Return

_06A5:
    SetVar 0x8001, 59
    Return

_06AD:
    SetVar 0x8001, 56
    Return

_06B5:
    SetVar 0x8001, 0x193
    Return

_06BD:
    SetVar 0x8001, 0x1B5
    Return

_06C5:
    Message 20
    Return

_06CA:
    Message 23
    Return

_06CF:
    Message 26
    Return

_06D4:
    Message 29
    Return

_06D9:
    Message 32
    Return

_06DE:
    CallIfEq 0x8004, 1, _0727
    CallIfEq 0x8004, 3, _072C
    CallIfEq 0x8004, 2, _0731
    CallIfEq 0x8004, 4, _0736
    CallIfEq 0x8004, 5, _073B
    GoTo _07A2
    End

_0727:
    Message 19
    Return

_072C:
    Message 22
    Return

_0731:
    Message 25
    Return

_0736:
    Message 28
    Return

_073B:
    Message 31
    Return

_0740:
    CallIfEq 0x8004, 1, _0789
    CallIfEq 0x8004, 3, _078E
    CallIfEq 0x8004, 2, _0793
    CallIfEq 0x8004, 4, _0798
    CallIfEq 0x8004, 5, _079D
    GoTo _07A2
    End

_0789:
    Message 21
    Return

_078E:
    Message 24
    Return

_0793:
    Message 27
    Return

_0798:
    Message 30
    Return

_079D:
    Message 33
    Return

_07A2:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_07AA:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 34
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_07BB:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_303 0x8003, 0x800C
    GoToIfEq 0x8003, 0, _0801
    Message 13
    ScrCmd_041 31, 15, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 14, 0
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0295
    CloseMessage
    ReleaseAll
    End

_0801:
    Message 18
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_080C:
    SetFlag 119
    SetVar 0x411B, 1
    GoTo _0325
    End

_081E:
    LockAll
    ClearFlag 0x2C0
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ScrCmd_064 6
    WaitFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement 0xFF, _08AC
    ApplyMovement 6, _08D4
    WaitMovement
    BufferPlayerName 0
    Message 35
    CloseMessage
    GetPlayerMapPos 0x8006, 0x8007
    CallIfGe 0x8006, 10, _08A8
    CallIfLe 0x8006, 4, _08AA
    ApplyMovement 6, _08DC
    WaitMovement
    Message 36
    CloseMessage
    ApplyMovement 6, _08F4
    WaitMovement
    Message 37
    CloseMessage
    ApplyMovement 6, _0900
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ScrCmd_065 6
    WaitFanfare SEQ_SE_DP_KAIDAN2
    SetVar 0x411B, 2
    ReleaseAll
    End

_08A8:
    Return

_08AA:
    Return

    .balign 4, 0
_08AC:
    MoveAction_021
    MoveAction_04B
    EndMovement

    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 63
    .byte 0
    .byte 1
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
_08D4:
    MoveAction_00C 2
    EndMovement

    .balign 4, 0
_08DC:
    MoveAction_00E 2
    MoveAction_020
    MoveAction_03F 2
    MoveAction_00F 4
    MoveAction_020
    EndMovement

    .balign 4, 0
_08F4:
    MoveAction_00E 2
    MoveAction_020
    EndMovement

    .balign 4, 0
_0900:
    MoveAction_00D 2
    EndMovement

_0908:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 38
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _09CF
    Message 39
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _09CF
    Message 40
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _09CF
    Message 41
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _09CF
    Message 42
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _09CF
    Message 43
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _09CF
    Message 44
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _09CF
    Message 45
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _09CF
    Message 46
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _09CF
    Message 47
    GoTo _09D5
    End

_09CF:
    CloseMessage
    ReleaseAll
    End

_09D5:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
