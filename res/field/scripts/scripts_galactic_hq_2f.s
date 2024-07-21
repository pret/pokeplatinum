#include "macros/scrcmd.inc"

    .data

    ScriptEntry _001E
    ScriptEntry _007A
    ScriptEntry _008B
    ScriptEntry _009C
    ScriptEntry _00AD
    ScriptEntry _00CF
    ScriptEntry _00BE
    .short 0xFD13

_001E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 0
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _003E
    GoTo _0074

_003E:
    BufferPlayerName 0
    Message 1
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    PlaySound SEQ_ASA
    WaitSound
    ScrCmd_14E
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    BufferPlayerName 0
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0074:
    CloseMessage
    ReleaseAll
    End

_007A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_008B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_009C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00AD:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00BE:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00CF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _010A
    Message 5
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _010A
    Message 6
    GoTo _010A
    End

_010A:
    BufferPlayerName 0
    Message 4
    GoTo _0118
    End

_0118:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
