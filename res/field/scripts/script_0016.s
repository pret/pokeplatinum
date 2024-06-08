    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _001E
    ScriptEntry _002C
    ScriptEntry _003A
    ScriptEntry _0048
    ScriptEntry _005B
    ScriptEntry _006E
    ScriptEntry _0081
    .short 0xFD13

_001E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_1B5 0
    ScrCmd_061
    End

_002C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_1B5 1
    ScrCmd_061
    End

_003A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_1B5 2
    ScrCmd_061
    End

_0048:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_005B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_006E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0081:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End
