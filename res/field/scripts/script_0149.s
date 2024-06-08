    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _003B
    ScriptEntry _00D8
    ScriptEntry _0184
    ScriptEntry _0016
    ScriptEntry _0197
    .short 0xFD13

_0016:
    CallIfLt 0x411F, 2, _0025
    End

_0025:
    ScrCmd_186 4, 8, 10
    ScrCmd_188 4, 14
    ScrCmd_189 4, 0
    Return

_003B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_07E 0x1CF, 1, 0x800C
    GoToIfEq 0x800C, 1, _0063
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0063:
    ScrCmd_02C 8
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0086
    GoToIfEq 0x800C, 1, _00C2
    End

_0086:
    SetFlag 0x10E
    ScrCmd_07C 0x1CF, 1, 0x800C
    ScrCmd_0CD 0
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_04B 0x5DC
    ScrCmd_049 0x608
    ApplyMovement 2, _00C8
    ApplyMovement 3, _00D0
    WaitMovement
    ScrCmd_065 2
    ScrCmd_065 3
    ScrCmd_034
    ScrCmd_061
    End

_00C2:
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_00C8:
    MoveAction_012
    EndMovement

    .balign 4, 0
_00D0:
    MoveAction_013
    EndMovement

_00D8:
    ScrCmd_060
    ApplyMovement 4, _012C
    WaitMovement
    ScrCmd_02C 0
    ScrCmd_034
    ApplyMovement 0xFF, _0168
    ApplyMovement 4, _0134
    WaitMovement
    ScrCmd_0CD 0
    ScrCmd_02C 1
    ScrCmd_034
    ApplyMovement 0xFF, _0174
    ApplyMovement 4, _015C
    WaitMovement
    SetVar 0x407C, 1
    SetVar 0x411F, 2
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_012C:
    MoveAction_00C 2
    EndMovement

    .balign 4, 0
_0134:
    MoveAction_00D 2
    MoveAction_022
    MoveAction_03F 2
    MoveAction_023
    MoveAction_03F 2
    MoveAction_00F 5
    MoveAction_020
    MoveAction_04B
    MoveAction_022
    EndMovement

    .balign 4, 0
_015C:
    MoveAction_00E 5
    MoveAction_021
    EndMovement

    .balign 4, 0
_0168:
    MoveAction_03F 9
    MoveAction_023
    EndMovement

    .balign 4, 0
_0174:
    MoveAction_03F 4
    MoveAction_03D
    MoveAction_020
    EndMovement

_0184:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0197:
    ScrCmd_060
    ScrCmd_186 4, 8, 11
    ScrCmd_188 4, 14
    ScrCmd_189 4, 0
    ClearFlag 0x20D
    ScrCmd_064 4
    ScrCmd_069 0x8004, 0x8005
    CallIfEq 0x8004, 8, _025A
    CallIfEq 0x8004, 9, _026E
    ScrCmd_02C 4
    ScrCmd_034
    ApplyMovement 4, _0308
    WaitMovement
    ScrCmd_02C 5
    ScrCmd_034
    SetFlag 0x10E
    ScrCmd_04B 0x5DC
    ScrCmd_049 0x608
    ApplyMovement 2, _00C8
    ApplyMovement 3, _00D0
    WaitMovement
    ScrCmd_065 2
    ScrCmd_065 3
    CallIfEq 0x8004, 8, _0282
    CallIfEq 0x8004, 9, _028E
    ScrCmd_02C 6
    ScrCmd_034
    CallIfEq 0x8004, 8, _029A
    CallIfEq 0x8004, 9, _02AE
    ScrCmd_065 4
    SetFlag 0x28A
    SetVar 0x411F, 4
    ScrCmd_061
    End

_025A:
    ApplyMovement 4, _02E8
    ApplyMovement 0xFF, _02C4
    WaitMovement
    Return

_026E:
    ApplyMovement 4, _02FC
    ApplyMovement 0xFF, _02D0
    WaitMovement
    Return

_0282:
    ApplyMovement 4, _0318
    WaitMovement
    Return

_028E:
    ApplyMovement 4, _0310
    WaitMovement
    Return

_029A:
    ApplyMovement 4, _0320
    ApplyMovement 0xFF, _02DC
    WaitMovement
    Return

_02AE:
    ApplyMovement 4, _0338
    ApplyMovement 0xFF, _02DC
    WaitMovement
    Return

    .balign 4, 0
_02C4:
    MoveAction_03F 4
    MoveAction_023
    EndMovement

    .balign 4, 0
_02D0:
    MoveAction_03F 3
    MoveAction_022
    EndMovement

    .balign 4, 0
_02DC:
    MoveAction_03F
    MoveAction_020
    EndMovement

    .balign 4, 0
_02E8:
    MoveAction_00C 2
    MoveAction_00F
    MoveAction_00C
    MoveAction_022
    EndMovement

    .balign 4, 0
_02FC:
    MoveAction_00C 3
    MoveAction_023
    EndMovement

    .balign 4, 0
_0308:
    MoveAction_020
    EndMovement

    .balign 4, 0
_0310:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0318:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0320:
    MoveAction_00C 5
    MoveAction_026
    MoveAction_027
    MoveAction_03F 2
    MoveAction_013 6
    EndMovement

    .balign 4, 0
_0338:
    MoveAction_00C 5
    MoveAction_026
    MoveAction_027
    MoveAction_03F 2
    MoveAction_013 7
    EndMovement
