    .include "macros/scrcmd.inc"

    .data

    .long _002E-.-4
    .long _01EC-.-4
    .long _0229-.-4
    .long _0266-.-4
    .long _02A3-.-4
    .long _02E0-.-4
    .long _0328-.-4
    .long _033B-.-4
    .long _034E-.-4
    .long _0361-.-4
    .long _04A4-.-4
    .short 0xFD13

_002E:
    ScrCmd_060
    ScrCmd_05E 6, _0140
    ScrCmd_05F
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_05E 5, _0174
    ScrCmd_05F
    ScrCmd_0CD 0
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_05E 0xFF, _0138
    ScrCmd_05F
    ScrCmd_05E 6, _014C
    ScrCmd_05F
    ScrCmd_02C 2
    ScrCmd_0CD 0
    ScrCmd_02C 3
    ScrCmd_02C 4
    ScrCmd_028 0x8004, 49
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FF
    ScrCmd_02C 5
    ScrCmd_05E 6, _0158
    ScrCmd_05E 5, _017C
    ScrCmd_05F
    ScrCmd_02C 6
    ScrCmd_034
    ScrCmd_05E 6, _0160
    ScrCmd_05E 0xFF, _01DC
    ScrCmd_05F
    ScrCmd_065 6
    ScrCmd_028 0x40F7, 1
    ScrCmd_05E 5, _0190
    ScrCmd_05E 0xFF, _01E4
    ScrCmd_05F
    ScrCmd_0CD 0
    ScrCmd_02C 7
    ScrCmd_034
    ScrCmd_04E 0x486
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00EE
    GoTo _00F9
    End

_00EE:
    ScrCmd_02C 8
    GoTo _0104
    End

_00F9:
    ScrCmd_02C 9
    GoTo _0104
    End

_0104:
    ScrCmd_04F
    ScrCmd_02C 10
    ScrCmd_034
    ScrCmd_003 15, 0x800C
    ScrCmd_05E 0xFF, _01C8
    ScrCmd_05E 5, _01B0
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_065 5
    ScrCmd_04B 0x603
    SetFlag 0x978
    ScrCmd_061
    End

    .balign 4, 0
_0138:
    MoveAction_00C 2
    EndMovement

    .balign 4, 0
_0140:
    MoveAction_021
    MoveAction_04B
    EndMovement

    .balign 4, 0
_014C:
    MoveAction_026
    MoveAction_021
    EndMovement

    .balign 4, 0
_0158:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0160:
    MoveAction_00F 3
    MoveAction_00C 3
    MoveAction_00F 3
    MoveAction_00C 6
    EndMovement

    .balign 4, 0
_0174:
    MoveAction_021
    EndMovement

    .balign 4, 0
_017C:
    MoveAction_03E
    MoveAction_023
    EndMovement

    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0190:
    MoveAction_021
    EndMovement

    .byte 14
    .byte 0
    .byte 8
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 12
    .byte 0
    .byte 6
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 15
    .byte 0
    .byte 8
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_01B0:
    MoveAction_00E
    MoveAction_00D 2
    MoveAction_00F
    MoveAction_00D
    MoveAction_021
    EndMovement

    .balign 4, 0
_01C8:
    MoveAction_03E
    MoveAction_022
    MoveAction_03F
    MoveAction_021
    EndMovement

    .balign 4, 0
_01DC:
    MoveAction_023
    EndMovement

    .balign 4, 0
_01E4:
    MoveAction_020
    EndMovement

_01EC:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_12F 0, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _031D
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0A8 0, 0x800C
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    End

_0229:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_12F 1, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _031D
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0A8 1, 0x800C
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    End

_0266:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_12F 2, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _031D
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0A8 2, 0x800C
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    End

_02A3:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_12F 3, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _031D
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0A8 3, 0x800C
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    End

_02E0:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_12F 4, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _031D
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0A8 4, 0x800C
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    End

_031D:
    ScrCmd_02C 24
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0328:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 21
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_033B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 22
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_034E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 23
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0361:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 0x159
    ScrCmd_01C 0, _03D3
    CheckFlag 0x15A
    ScrCmd_01C 0, _038A
_037F:
    ScrCmd_02C 18
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_038A:
    ScrCmd_07E 0x1C1, 1, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _037F
    ScrCmd_02C 13
    ScrCmd_28A 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _03C8
    Call _0437
    SetFlag 0x15A
    ScrCmd_02C 17
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03C8:
    ScrCmd_02C 19
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03D3:
    SetFlag 0x159
    ScrCmd_07E 0x1C1, 1, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0428
    ScrCmd_02C 13
    ScrCmd_28A 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0419
    Call _0437
    SetFlag 0x15A
    ScrCmd_02C 16
    ScrCmd_034
    Call _0458
    ScrCmd_061
    End

_0419:
    ScrCmd_02C 20
    ScrCmd_034
    Call _0458
    ScrCmd_061
    End

_0428:
    ScrCmd_02C 12
    ScrCmd_034
    Call _0458
    ScrCmd_061
    End

_0437:
    ScrCmd_289 0x800C, 60, 30, 30, 30, 30
    ScrCmd_028 78, 0x486
    ScrCmd_0CD 0
    ScrCmd_02C 14
    ScrCmd_04F
    ScrCmd_02C 15
    Return

_0458:
    ScrCmd_1BD 0x800C
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 1, _0475
    ScrCmd_05E 9, _0484
    ScrCmd_05F
    Return

_0475:
    ScrCmd_05E 9, _0490
    ScrCmd_05F
    Return

    .balign 4, 0
_0484:
    MoveAction_00F 8
    MoveAction_025
    EndMovement

    .balign 4, 0
_0490:
    MoveAction_00D
    MoveAction_00F 8
    MoveAction_00C
    MoveAction_025
    EndMovement

_04A4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_003 30, 0x800C
    ScrCmd_1BD 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _052B
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _053D
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 1, _054F
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _0561
    End

_04EC:
    ScrCmd_02C 11
    ScrCmd_034
    ScrCmd_1BD 0x8004
    ScrCmd_011 0x8004, 1
    ScrCmd_01C 1, _0573
    ScrCmd_011 0x8004, 0
    ScrCmd_01C 1, _058D
    ScrCmd_011 0x8004, 2
    ScrCmd_01C 1, _05A7
    ScrCmd_011 0x8004, 3
    ScrCmd_01C 1, _05B9
    End

_052B:
    ScrCmd_05E 10, _0624
    ScrCmd_05F
    GoTo _04EC
    End

_053D:
    ScrCmd_05E 10, _0638
    ScrCmd_05F
    GoTo _04EC
    End

_054F:
    ScrCmd_05E 10, _064C
    ScrCmd_05F
    GoTo _04EC
    End

_0561:
    ScrCmd_05E 10, _0660
    ScrCmd_05F
    GoTo _04EC
    End

_0573:
    ScrCmd_05E 10, _05E8
    ScrCmd_05E 0xFF, _0604
    ScrCmd_05F
    GoTo _05D3
    End

_058D:
    ScrCmd_05E 10, _05E8
    ScrCmd_05E 0xFF, _0604
    ScrCmd_05F
    GoTo _05D3
    End

_05A7:
    ScrCmd_05E 10, _05E8
    ScrCmd_05F
    GoTo _05D3
    End

_05B9:
    ScrCmd_05E 10, _05F4
    ScrCmd_05E 0xFF, _0610
    ScrCmd_05F
    GoTo _05D3
    End

_05D3:
    ScrCmd_049 0x603
    ScrCmd_065 10
    ScrCmd_04B 0x603
    SetFlag 0x18D
    ScrCmd_061
    End

    .balign 4, 0
_05E8:
    MoveAction_00E 6
    MoveAction_00D 4
    EndMovement

    .balign 4, 0
_05F4:
    MoveAction_00C
    MoveAction_00E 6
    MoveAction_00D 5
    EndMovement

    .balign 4, 0
_0604:
    MoveAction_03F
    MoveAction_022
    EndMovement

    .balign 4, 0
_0610:
    MoveAction_03F 2
    MoveAction_020
    MoveAction_03E
    MoveAction_022
    EndMovement

    .balign 4, 0
_0624:
    MoveAction_002 4
    MoveAction_000 4
    MoveAction_003 4
    MoveAction_001 4
    EndMovement

    .balign 4, 0
_0638:
    MoveAction_003 4
    MoveAction_001 4
    MoveAction_002 4
    MoveAction_000 4
    EndMovement

    .balign 4, 0
_064C:
    MoveAction_001 4
    MoveAction_002 4
    MoveAction_000 4
    MoveAction_003 4
    EndMovement

    .balign 4, 0
_0660:
    MoveAction_000 4
    MoveAction_003 4
    MoveAction_001 4
    MoveAction_002 4
    EndMovement
