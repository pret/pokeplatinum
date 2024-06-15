    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0091
    ScriptEntry _00A4
    ScriptEntry _0270
    ScriptEntry _0287
    ScriptEntry _01C7
    ScriptEntry _02B3
    ScriptEntry _02C6
    ScriptEntry _0026
    ScriptEntry _029E
    .short 0xFD13

_0026:
    GetTimePeriod 0x4000
    GoToIfEq 0x4000, 0, _006D
    GoToIfEq 0x4000, 1, _007F
    GoToIfEq 0x4000, 2, _007F
    GoToIfEq 0x4000, 3, _007F
    GoToIfEq 0x4000, 4, _007F
    End

_006D:
    ClearFlag 0x26D
    ClearFlag 0x26F
    SetFlag 0x26C
    SetFlag 0x26E
    End

_007F:
    ClearFlag 0x26C
    ClearFlag 0x26E
    SetFlag 0x26D
    SetFlag 0x26F
    End

_0091:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 0
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_00A4:
    PlayFanfare 0x5DC
    LockAll
    GoToIfEq 0x408A, 1, _0102
    ScrCmd_07E 111, 1, 0x800C
    GoToIfEq 0x800C, 0, _01BC
    Message 2
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _00E6
    CloseMessage
    ReleaseAll
    End

_00E6:
    ScrCmd_0CD 0
    Message 3
    WaitButtonPress
    ScrCmd_07C 111, 1, 0x800C
    SetVar 0x408A, 1
    CloseMessage
    ReleaseAll
    End

_0102:
    ScrCmd_214 0x800C
    GoToIfGe 0x800C, 32, _014D
    GoToIfGe 0x800C, 29, _01B1
    GoToIfGe 0x800C, 22, _01A6
    GoToIfGe 0x800C, 15, _019B
    GoToIfGe 0x800C, 8, _0190
    GoTo _0185

_014D:
    ScrCmd_04B 0x5DC
    ScrCmd_04C 0x1BA, 0
    Message 9
    ScrCmd_04D
    CloseMessage
    ScrCmd_124 0x1BA, 25
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _017F
    SetVar 0x408A, 0
    ScrCmd_26F
    End

_017F:
    ScrCmd_0EB
    ReleaseAll
    End

_0185:
    Message 4
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0190:
    Message 5
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_019B:
    Message 6
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_01A6:
    Message 7
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_01B1:
    Message 8
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_01BC:
    Message 1
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_01C7:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    SetVar 0x8004, 0x1BE
    ScrCmd_33C 0, 0x8004
    ScrCmd_346 0
    GoToIfSet 162, _020B
    Message 10
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0254
    GoToIfEq 0x800C, 1, _0249
    End

_020B:
    ScrCmd_0D1 0, 0x8004
    Message 12
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0233
    GoToIfEq 0x800C, 1, _023E
    End

_0233:
    Message 14
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_023E:
    Message 15
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0249:
    Message 13
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0254:
    ScrCmd_0D1 0, 0x8004
    Message 11
    SetVar 0x8005, 1
    ScrCmd_014 0x7FC
    SetFlag 162
    GoTo _020B

_0270:
    ScrCmd_036 18, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_0287:
    ScrCmd_036 19, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_029E:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 20, 0x800C
    ScrCmd_014 0x7D0
    End

_02B3:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 16
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_02C6:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 17
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
