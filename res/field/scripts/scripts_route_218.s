#include "macros/scrcmd.inc"

    .data

    ScriptEntry _001E
    ScriptEntry _0035
    ScriptEntry _004C
    ScriptEntry _005D
    ScriptEntry _006E
    ScriptEntry _008B
    ScriptEntry _00A8
    .short 0xFD13

_001E:
    ScrCmd_036 5, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_0035:
    ScrCmd_036 6, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_004C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_005D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_006E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_04C 35, 0
    Message 1
    ScrCmd_04D
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_008B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_04C 35, 0
    Message 2
    ScrCmd_04D
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A8:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_04C 25, 0
    Message 3
    ScrCmd_04D
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
