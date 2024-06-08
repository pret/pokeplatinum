    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0012
    ScriptEntry _0014
    ScriptEntry _004C
    ScriptEntry _005F
    .short 0xFD13

_0012:
    End

_0014:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_04E 0x48E
    ScrCmd_04F
    ScrCmd_14E
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_004C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_005F:
    ScrCmd_049 0x5DC
    ScrCmd_060
    GoToIfSet 253, _0081
    SetFlag 253
    ScrCmd_068
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0081:
    ApplyMovement 2, _009C
    WaitMovement
    ScrCmd_02C 4
    ScrCmd_068
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_009C:
    MoveAction_003
    EndMovement
