    .include "macros/scrcmd.inc"

    .data

    .long _005A-.-4
    .long _0090-.-4
    .long _03F8-.-4
    .long _00D7-.-4
    .long _0350-.-4
    .long _0363-.-4
    .long _0376-.-4
    .long _03D2-.-4
    .long _03E5-.-4
    .long _0634-.-4
    .long _0647-.-4
    .long _0670-.-4
    .long _0683-.-4
    .long _0696-.-4
    .long _06A9-.-4
    .long _06C0-.-4
    .long _06D5-.-4
    .long _06EC-.-4
    .long _0703-.-4
    .long _0722-.-4
    .long _0735-.-4
    .long _0754-.-4
    .short 0xFD13

_005A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 138
    GoToIf 1, _0082
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 0
    ScrCmd_031
    SetFlag 138
    ScrCmd_034
    ScrCmd_061
    End

_0082:
    ScrCmd_0CE 0
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0090:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_15B 0, 0x800C
    CompareVarToValue 0x800C, 1
    GoToIf 1, _00C1
    CheckFlag 122
    GoToIf 1, _00CC
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00C1:
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00CC:
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00D7:
    ScrCmd_060
    ClearFlag 0x17C
    ScrCmd_188 3, 16
    ScrCmd_189 3, 2
    ScrCmd_069 0x8004, 0x8005
    CompareVarToValue 0x8005, 0x2EC
    GoToIf 1, _011E
    CompareVarToValue 0x8005, 0x2ED
    GoToIf 1, _0144
    CompareVarToValue 0x8005, 0x2EE
    GoToIf 1, _016A
    GoTo _0190
    End

_011E:
    ScrCmd_186 3, 0x10F, 0x2EC
    ScrCmd_064 3
    ScrCmd_05E 0xFF, _02A0
    ScrCmd_05E 3, _02B8
    ScrCmd_05F
    GoTo _01B6
    End

_0144:
    ScrCmd_186 3, 0x10F, 0x2ED
    ScrCmd_064 3
    ScrCmd_05E 0xFF, _02A0
    ScrCmd_05E 3, _02B8
    ScrCmd_05F
    GoTo _01B6
    End

_016A:
    ScrCmd_186 3, 0x10F, 0x2EE
    ScrCmd_064 3
    ScrCmd_05E 0xFF, _02A0
    ScrCmd_05E 3, _02B8
    ScrCmd_05F
    GoTo _01B6
    End

_0190:
    ScrCmd_186 3, 0x10F, 0x2EF
    ScrCmd_064 3
    ScrCmd_05E 0xFF, _02A0
    ScrCmd_05E 3, _02B8
    ScrCmd_05F
    GoTo _01B6
    End

_01B6:
    ScrCmd_049 0x602
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_014 0x7FA
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 3
    ScrCmd_034
    ScrCmd_05E 3, _0340
    ScrCmd_05F
    ScrCmd_02C 4
    ScrCmd_05E 3, _0348
    ScrCmd_05F
    ScrCmd_02C 5
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    CompareVarToValue 0x8005, 0x2EC
    GoToIf 1, _021F
    CompareVarToValue 0x8005, 0x2ED
    GoToIf 1, _0239
    CompareVarToValue 0x8005, 0x2EE
    GoToIf 1, _0253
    GoTo _026D
    End

_021F:
    ScrCmd_05E 0xFF, _0310
    ScrCmd_05E 3, _02C0
    ScrCmd_05F
    GoTo _0287
    End

_0239:
    ScrCmd_05E 0xFF, _031C
    ScrCmd_05E 3, _02D0
    ScrCmd_05F
    GoTo _0287
    End

_0253:
    ScrCmd_05E 0xFF, _0328
    ScrCmd_05E 3, _02E8
    ScrCmd_05F
    GoTo _0287
    End

_026D:
    ScrCmd_05E 0xFF, _0334
    ScrCmd_05E 3, _02F8
    ScrCmd_05F
    GoTo _0287
    End

_0287:
    ScrCmd_049 0x603
    ScrCmd_065 3
    ScrCmd_014 0x7FB
    SetVar 0x4079, 3
    ScrCmd_061
    End

    .balign 4, 0
_02A0:
    MoveAction_03E 7
    MoveAction_047
    MoveAction_012
    MoveAction_048
    MoveAction_003
    EndMovement

    .balign 4, 0
_02B8:
    MoveAction_012 9
    EndMovement

    .balign 4, 0
_02C0:
    MoveAction_011
    MoveAction_012 4
    MoveAction_026
    EndMovement

    .balign 4, 0
_02D0:
    MoveAction_011
    MoveAction_012 3
    MoveAction_010
    MoveAction_012
    MoveAction_026
    EndMovement

    .balign 4, 0
_02E8:
    MoveAction_010
    MoveAction_012 4
    MoveAction_026
    EndMovement

    .balign 4, 0
_02F8:
    MoveAction_010
    MoveAction_012 3
    MoveAction_010
    MoveAction_012
    MoveAction_026
    EndMovement

    .balign 4, 0
_0310:
    MoveAction_021
    MoveAction_022
    EndMovement

    .balign 4, 0
_031C:
    MoveAction_021
    MoveAction_022
    EndMovement

    .balign 4, 0
_0328:
    MoveAction_020
    MoveAction_022
    EndMovement

    .balign 4, 0
_0334:
    MoveAction_020
    MoveAction_022
    EndMovement

    .balign 4, 0
_0340:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0348:
    MoveAction_022
    EndMovement

_0350:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0363:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 16
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0376:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 0x109
    GoToIf 1, _03BD
    ScrCmd_02C 17
    SetVar 0x8004, 26
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _03C8
    ScrCmd_014 0x7FC
    SetFlag 0x109
    GoTo _03BD
    End

_03BD:
    ScrCmd_02C 18
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03C8:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    End

_03D2:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 19
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03E5:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 20
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03F8:
    ScrCmd_060
    ScrCmd_069 0x8004, 0x8005
    CompareVarToValue 0x8005, 0x2EC
    GoToIf 1, _042F
    CompareVarToValue 0x8005, 0x2ED
    GoToIf 1, _0449
    CompareVarToValue 0x8005, 0x2EE
    GoToIf 1, _0463
    GoTo _047D
    End

_042F:
    ScrCmd_05E 0xFF, _055C
    ScrCmd_05E 4, _0604
    ScrCmd_05F
    GoTo _0497
    End

_0449:
    ScrCmd_05E 0xFF, _055C
    ScrCmd_05E 4, _0610
    ScrCmd_05F
    GoTo _0497
    End

_0463:
    ScrCmd_05E 0xFF, _055C
    ScrCmd_05E 4, _061C
    ScrCmd_05F
    GoTo _0497
    End

_047D:
    ScrCmd_05E 0xFF, _055C
    ScrCmd_05E 4, _0628
    ScrCmd_05F
    GoTo _0497
    End

_0497:
    ScrCmd_02C 6
    ScrCmd_034
    ScrCmd_014 0x800
    ScrCmd_069 0x8004, 0x8005
    CompareVarToValue 0x8005, 0x2EC
    GoToIf 1, _04DC
    CompareVarToValue 0x8005, 0x2ED
    GoToIf 1, _04F6
    CompareVarToValue 0x8005, 0x2EE
    GoToIf 1, _0510
    CompareVarToValue 0x8005, 0x2EF
    GoToIf 1, _052A
    End

_04DC:
    ScrCmd_05E 0xFF, _0564
    ScrCmd_05E 4, _05B4
    ScrCmd_05F
    GoTo _0544
    End

_04F6:
    ScrCmd_05E 0xFF, _0578
    ScrCmd_05E 4, _05C8
    ScrCmd_05F
    GoTo _0544
    End

_0510:
    ScrCmd_05E 0xFF, _058C
    ScrCmd_05E 4, _05DC
    ScrCmd_05F
    GoTo _0544
    End

_052A:
    ScrCmd_05E 0xFF, _05A0
    ScrCmd_05E 4, _05F0
    ScrCmd_05F
    GoTo _0544
    End

_0544:
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_014 0x801
    SetVar 0x4079, 1
    ScrCmd_061
    End

    .balign 4, 0
_055C:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0564:
    MoveAction_00D
    MoveAction_00F
    MoveAction_00D 10
    MoveAction_00F 12
    EndMovement

    .balign 4, 0
_0578:
    MoveAction_00D
    MoveAction_00F
    MoveAction_00D 9
    MoveAction_00F 12
    EndMovement

    .balign 4, 0
_058C:
    MoveAction_00D
    MoveAction_00F
    MoveAction_00D 8
    MoveAction_00F 12
    EndMovement

    .balign 4, 0
_05A0:
    MoveAction_00D
    MoveAction_00F
    MoveAction_00D 7
    MoveAction_00F 12
    EndMovement

    .balign 4, 0
_05B4:
    MoveAction_00F
    MoveAction_00D 10
    MoveAction_00F 13
    MoveAction_022
    EndMovement

    .balign 4, 0
_05C8:
    MoveAction_00F
    MoveAction_00D 9
    MoveAction_00F 13
    MoveAction_022
    EndMovement

    .balign 4, 0
_05DC:
    MoveAction_00F
    MoveAction_00D 8
    MoveAction_00F 13
    MoveAction_022
    EndMovement

    .balign 4, 0
_05F0:
    MoveAction_00F
    MoveAction_00D 7
    MoveAction_00F 13
    MoveAction_022
    EndMovement

    .balign 4, 0
_0604:
    MoveAction_04B
    MoveAction_00C 3
    EndMovement

    .balign 4, 0
_0610:
    MoveAction_04B
    MoveAction_00C 2
    EndMovement

    .balign 4, 0
_061C:
    MoveAction_04B
    MoveAction_00C
    EndMovement

    .balign 4, 0
_0628:
    MoveAction_04B
    MoveAction_020
    EndMovement

_0634:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 21
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0647:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 122
    GoToIf 1, _0665
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0665:
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0670:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0683:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0696:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 22
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_06A9:
    ScrCmd_036 27, 0, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_06C0:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 28, 0x800C
    ScrCmd_014 0x7D0
    End

_06D5:
    ScrCmd_036 29, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_06EC:
    ScrCmd_036 30, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_0703:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_04B 0x5DC
    ScrCmd_04C 66, 0
    ScrCmd_02C 24
    ScrCmd_04D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0722:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 23
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0735:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_04B 0x5DC
    ScrCmd_04C 66, 0
    ScrCmd_02C 25
    ScrCmd_04D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0754:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_04B 0x5DC
    ScrCmd_04C 66, 0
    ScrCmd_02C 26
    ScrCmd_04D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
