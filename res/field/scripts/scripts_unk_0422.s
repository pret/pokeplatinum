#include "macros/scrcmd.inc"

    .data

    ScriptEntry _001A
    ScriptEntry _00F9
    ScriptEntry _014A
    ScriptEntry _01A1
    ScriptEntry _020D
    ScriptEntry _0266
    .short 0xFD13

_001A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe 0x4086, 3, _003D
    BufferPlayerName 1
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_003D:
    GoToIfGe 0x40CA, 5, _009C
    GoToIfEq 0x40CA, 4, _00AA
    GoToIfEq 0x40CA, 3, _00BA
    GoToIfEq 0x40CA, 2, _00CA
    GoToIfEq 0x40CA, 1, _00DD
    BufferRivalName 0
    Message 2
    WaitABXPadPress
    GoTo _00ED

    .byte 2
    .byte 0
    .byte 206
    .byte 0
    .byte 0
    .byte 44
    .byte 0
    .byte 8
    .byte 49
    .byte 0
    .byte 52
    .byte 0
    .byte 97
    .byte 0
    .byte 2
    .byte 0

_009C:
    BufferRivalName 0
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00AA:
    BufferRivalName 0
    Message 6
    WaitABXPadPress
    GoTo _00ED
    End

_00BA:
    BufferRivalName 0
    Message 5
    WaitABXPadPress
    GoTo _00ED
    End

_00CA:
    BufferRivalName 0
    ScrCmd_0DC 1
    Message 4
    WaitABXPadPress
    GoTo _00ED
    End

_00DD:
    BufferRivalName 0
    Message 3
    WaitABXPadPress
    GoTo _00ED
    End

_00ED:
    AddVar 0x40CA, 1
    CloseMessage
    ReleaseAll
    End

_00F9:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe 0x40CB, 2, _0126
    GoToIfEq 0x40CB, 1, _0131
    BufferRivalName 0
    GoTo _013C
    End

_0126:
    BufferRivalName 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0131:
    BufferRivalName 0
    GoTo _013C
    End

_013C:
    WaitABXPadPress
    CloseMessage
    AddVar 0x40CB, 1
    ReleaseAll
    End

_014A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe 0x40E8, 2, _0185
    GoToIfEq 0x40E8, 1, _017A
    BufferPlayerName 0
    Message 12
    GoTo _0193
    End

_017A:
    Message 13
    GoTo _0193
    End

_0185:
    BufferPlayerName 0
    Message 14
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0193:
    AddVar 0x40E8, 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01A1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe 0x40E1, 3, _01F4
    GoToIfEq 0x40E1, 2, _01E9
    GoToIfEq 0x40E1, 1, _01DE
    BufferPlayerName 0
    Message 42
    GoTo _01FF
    End

_01DE:
    Message 43
    GoTo _01FF
    End

_01E9:
    Message 44
    GoTo _01FF
    End

_01F4:
    Message 45
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01FF:
    AddVar 0x40E1, 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_020D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe 0x40E2, 2, _0248
    GoToIfEq 0x40E2, 1, _023D
    BufferPlayerName 0
    Message 19
    GoTo _0256
    End

_023D:
    Message 20
    GoTo _0256
    End

_0248:
    BufferPlayerName 0
    Message 21
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0256:
    AddVar 0x40E2, 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
    End

_0266:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe 0x40E4, 1, _0289
    BufferPlayerName 0
    Message 38
    GoTo _0294
    End

_0289:
    Message 39
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0294:
    AddVar 0x40E4, 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
