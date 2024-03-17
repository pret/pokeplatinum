    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _0014-.-4
    .long _004C-.-4
    .long _005F-.-4
    .short 0xFD13

_0012:
    ScrCmd_002

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
    ScrCmd_002

_004C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_005F:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_020 253
    ScrCmd_01C 1, _0081
    ScrCmd_01E 253
    ScrCmd_068
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0081:
    ScrCmd_05E 2, _009C
    ScrCmd_05F
    ScrCmd_02C 4
    ScrCmd_068
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_009C:
    MoveAction_003
    EndMovement
