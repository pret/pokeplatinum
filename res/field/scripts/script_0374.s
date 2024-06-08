    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0460
    ScriptEntry _00DB
    ScriptEntry _00EE
    ScriptEntry _0101
    ScriptEntry _0114
    ScriptEntry _0127
    ScriptEntry _013A
    ScriptEntry _014D
    ScriptEntry _0160
    ScriptEntry _0173
    ScriptEntry _0186
    ScriptEntry _0199
    ScriptEntry _01AC
    ScriptEntry _01BF
    ScriptEntry _01D2
    ScriptEntry _01E5
    ScriptEntry _01F8
    ScriptEntry _020B
    ScriptEntry _021E
    ScriptEntry _0231
    ScriptEntry _0244
    ScriptEntry _0257
    ScriptEntry _026A
    ScriptEntry _027E
    ScriptEntry _02A6
    ScriptEntry _02BA
    ScriptEntry _02D1
    ScriptEntry _02E8
    ScriptEntry _02FF
    ScriptEntry _0316
    ScriptEntry _032D
    ScriptEntry _033E
    ScriptEntry _034F
    ScriptEntry _0360
    ScriptEntry _03A0
    ScriptEntry _03E0
    ScriptEntry _0420
    ScriptEntry _009A
    .short 0xFD13

_009A:
    SetFlag 0x2CB
    ScrCmd_238 19, 0x4000
    GoToIfEq 0x4000, 0, _00D5
    ScrCmd_329 0x4001, 0x4002, 0x4003, 0x4004
    ScrCmd_186 29, 0x4001, 0x4002
    ScrCmd_189 29, 0x4003
    ScrCmd_188 29, 0x4004
    ClearFlag 0x2C3
    End

_00D5:
    SetFlag 0x2C3
    End

_00DB:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00EE:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0101:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0114:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0127:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_013A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_014D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0160:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0173:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0186:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0199:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01AC:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01BF:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01D2:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01E5:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01F8:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_020B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 16
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_021E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 17
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0231:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 18
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0244:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 19
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0257:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 20
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_026A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 21
    ScrCmd_035
    ScrCmd_2D8 1
    ScrCmd_061
    End

_027E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_2E2
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    End

_02A6:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 23
    ScrCmd_035
    ScrCmd_2D8 0
    ScrCmd_061
    End

_02BA:
    ScrCmd_036 24, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_02D1:
    ScrCmd_036 25, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_02E8:
    ScrCmd_036 26, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_02FF:
    ScrCmd_036 27, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_0316:
    ScrCmd_036 28, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_032D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 29
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_033E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 30
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_034F:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 31
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0360:
    ScrCmd_060
    ApplyMovement 0xFF, _0398
    WaitMovement
    ScrCmd_049 0x603
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x233, 0, 25, 9, 2
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    End

    .balign 4, 0
_0398:
    MoveAction_012 5
    EndMovement

_03A0:
    ScrCmd_060
    ApplyMovement 0xFF, _03D8
    WaitMovement
    ScrCmd_049 0x603
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x234, 0, 21, 9, 2
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    End

    .balign 4, 0
_03D8:
    MoveAction_012 6
    EndMovement

_03E0:
    ScrCmd_060
    ApplyMovement 0xFF, _0418
    WaitMovement
    ScrCmd_049 0x603
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x235, 0, 1, 6, 3
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    End

    .balign 4, 0
_0418:
    MoveAction_013 5
    EndMovement

_0420:
    ScrCmd_060
    ApplyMovement 0xFF, _0458
    WaitMovement
    ScrCmd_049 0x603
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x232, 0, 1, 7, 3
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    End

    .balign 4, 0
_0458:
    MoveAction_013 6
    EndMovement

_0460:
    End

    .byte 0
    .byte 0
