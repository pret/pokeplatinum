#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0028
    ScriptEntry _002A
    ScriptEntry _003D
    ScriptEntry _003F
    ScriptEntry _027E
    ScriptEntry _0291
    ScriptEntry _02A4
    ScriptEntry _0026
    ScriptEntry _02A6
    .short 0xFD13

_0026:
    End

_0028:
    End

_002A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_003D:
    End

_003F:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfNe 0x40F2, 0, _0257
    GoToIfSet 0xAB3, _00A0
    GoToIfSet 0xAA9, _0084
    Message 1
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _00B6
    GoTo _00AB

_0084:
    Message 18
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _00B6
    GoTo _00AB
    End

_00A0:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00AB:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00B6:
    SetFlag 0xAA9
    Message 4
    ScrCmd_24E 0x8000
    ScrCmd_280 0, 0x8000, 2, 5
    Message 5
    ScrCmd_24F 0x8001, 0x8002, 0x8003, 0x8000
    GoToIfEq 0x8002, 0, _00F5
    GoToIfEq 0x8003, 0, _0100
    GoTo _010E

_00F5:
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0100:
    BufferPartyMonNickname 0, 0x8001
    Message 6
    GoTo _011C

_010E:
    ScrCmd_251 0, 0x8001
    Message 7
    GoTo _011C

_011C:
    SetVar 0x8008, 0x8002
    GoToIfEq 0x8008, 1, _0165
    GoToIfEq 0x8008, 2, _0170
    GoToIfEq 0x8008, 3, _0179
    GoToIfEq 0x8008, 4, _0182
    GoToIfEq 0x8008, 5, _018B
    End

_0165:
    Message 9
    GoTo _0194
    End

_0170:
    Message 11
    GoTo _0194

_0179:
    Message 12
    GoTo _0194

_0182:
    Message 13
    GoTo _0194

_018B:
    Message 14
    GoTo _0194

_0194:
    SetVar 0x8008, 0x8002
    GoToIfEq 0x8008, 1, _01DD
    GoToIfEq 0x8008, 2, _01EB
    GoToIfEq 0x8008, 3, _01F7
    GoToIfEq 0x8008, 4, _0203
    GoToIfEq 0x8008, 5, _020F
    End

_01DD:
    SetVar 0x8003, 2
    GoTo _021B
    End

_01EB:
    SetVar 0x8003, 51
    GoTo _021B

_01F7:
    SetVar 0x8003, 216
    GoTo _021B

_0203:
    SetVar 0x8003, 29
    GoTo _021B

_020F:
    SetVar 0x8003, 1
    GoTo _021B

_021B:
    SetVar 0x8004, 0x8003
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0246
    CallCommonScript 0x7FC
    GoTo _0269

_0246:
    SetVar 0x40F2, 0x8002
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0257:
    BufferPlayerName 0
    Message 16
    SetVar 0x8002, 0x40F2
    GoTo _0194

_0269:
    SetVar 0x40F2, 0
    SetFlag 0xAB3
    Message 17
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_027E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 19
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0291:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 20
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02A4:
    End

_02A6:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 21
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
