    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0070
    ScriptEntry _0083
    ScriptEntry _0096
    ScriptEntry _00A9
    ScriptEntry _002F
    ScriptEntry _001A
    .short 0xFD13

_001A:
    ScrCmd_238 11, 0x4000
    CallIfEq 0x4000, 0, _004F
    End

_002F:
    ScrCmd_238 11, 0x4000
    GoToIfNe 0x4000, 0, _0055
    CallIfUnset 0x217, _004F
    End

_004F:
    SetFlag 0x217
    Return

_0055:
    GoToIfSet 0x217, _0066
    ClearFlag 0x217
    End

_0066:
    ClearFlag 0x217
    ScrCmd_064 4
    End

_0070:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0083:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0096:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00A9:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End
