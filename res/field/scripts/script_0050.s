    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _005A
    ScriptEntry _0090
    ScriptEntry _03F8
    ScriptEntry _00D7
    ScriptEntry _0350
    ScriptEntry _0363
    ScriptEntry _0376
    ScriptEntry _03D2
    ScriptEntry _03E5
    ScriptEntry _0634
    ScriptEntry _0647
    ScriptEntry _0670
    ScriptEntry _0683
    ScriptEntry _0696
    ScriptEntry _06A9
    ScriptEntry _06C0
    ScriptEntry _06D5
    ScriptEntry _06EC
    ScriptEntry _0703
    ScriptEntry _0722
    ScriptEntry _0735
    ScriptEntry _0754
    .short 0xFD13

_005A:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    GoToIfSet 138, _0082
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    Message 0
    WaitButtonPress
    SetFlag 138
    CloseMessage
    ReleaseAll
    End

_0082:
    ScrCmd_0CE 0
    Message 1
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0090:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    ScrCmd_15B 0, 0x800C
    GoToIfEq 0x800C, 1, _00C1
    GoToIfSet 122, _00CC
    Message 8
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_00C1:
    Message 10
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_00CC:
    Message 9
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_00D7:
    LockAll
    ClearFlag 0x17C
    ScrCmd_188 3, 16
    ScrCmd_189 3, 2
    ScrCmd_069 0x8004, 0x8005
    GoToIfEq 0x8005, 0x2EC, _011E
    GoToIfEq 0x8005, 0x2ED, _0144
    GoToIfEq 0x8005, 0x2EE, _016A
    GoTo _0190
    End

_011E:
    ScrCmd_186 3, 0x10F, 0x2EC
    ScrCmd_064 3
    ApplyMovement 0xFF, _02A0
    ApplyMovement 3, _02B8
    WaitMovement
    GoTo _01B6
    End

_0144:
    ScrCmd_186 3, 0x10F, 0x2ED
    ScrCmd_064 3
    ApplyMovement 0xFF, _02A0
    ApplyMovement 3, _02B8
    WaitMovement
    GoTo _01B6
    End

_016A:
    ScrCmd_186 3, 0x10F, 0x2EE
    ScrCmd_064 3
    ApplyMovement 0xFF, _02A0
    ApplyMovement 3, _02B8
    WaitMovement
    GoTo _01B6
    End

_0190:
    ScrCmd_186 3, 0x10F, 0x2EF
    ScrCmd_064 3
    ApplyMovement 0xFF, _02A0
    ApplyMovement 3, _02B8
    WaitMovement
    GoTo _01B6
    End

_01B6:
    PlayFanfare 0x602
    Message 2
    CloseMessage
    ScrCmd_014 0x7FA
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    Message 3
    CloseMessage
    ApplyMovement 3, _0340
    WaitMovement
    Message 4
    ApplyMovement 3, _0348
    WaitMovement
    Message 5
    CloseMessage
    ScrCmd_069 0x8004, 0x8005
    GoToIfEq 0x8005, 0x2EC, _021F
    GoToIfEq 0x8005, 0x2ED, _0239
    GoToIfEq 0x8005, 0x2EE, _0253
    GoTo _026D
    End

_021F:
    ApplyMovement 0xFF, _0310
    ApplyMovement 3, _02C0
    WaitMovement
    GoTo _0287
    End

_0239:
    ApplyMovement 0xFF, _031C
    ApplyMovement 3, _02D0
    WaitMovement
    GoTo _0287
    End

_0253:
    ApplyMovement 0xFF, _0328
    ApplyMovement 3, _02E8
    WaitMovement
    GoTo _0287
    End

_026D:
    ApplyMovement 0xFF, _0334
    ApplyMovement 3, _02F8
    WaitMovement
    GoTo _0287
    End

_0287:
    PlayFanfare 0x603
    ScrCmd_065 3
    ScrCmd_014 0x7FB
    SetVar 0x4079, 3
    ReleaseAll
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
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 14
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0363:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 16
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0376:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    GoToIfSet 0x109, _03BD
    Message 17
    SetVar 0x8004, 26
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _03C8
    ScrCmd_014 0x7FC
    SetFlag 0x109
    GoTo _03BD
    End

_03BD:
    Message 18
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_03C8:
    ScrCmd_014 0x7E1
    CloseMessage
    ReleaseAll
    End

_03D2:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 19
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_03E5:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 20
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_03F8:
    LockAll
    ScrCmd_069 0x8004, 0x8005
    GoToIfEq 0x8005, 0x2EC, _042F
    GoToIfEq 0x8005, 0x2ED, _0449
    GoToIfEq 0x8005, 0x2EE, _0463
    GoTo _047D
    End

_042F:
    ApplyMovement 0xFF, _055C
    ApplyMovement 4, _0604
    WaitMovement
    GoTo _0497
    End

_0449:
    ApplyMovement 0xFF, _055C
    ApplyMovement 4, _0610
    WaitMovement
    GoTo _0497
    End

_0463:
    ApplyMovement 0xFF, _055C
    ApplyMovement 4, _061C
    WaitMovement
    GoTo _0497
    End

_047D:
    ApplyMovement 0xFF, _055C
    ApplyMovement 4, _0628
    WaitMovement
    GoTo _0497
    End

_0497:
    Message 6
    CloseMessage
    ScrCmd_014 0x800
    ScrCmd_069 0x8004, 0x8005
    GoToIfEq 0x8005, 0x2EC, _04DC
    GoToIfEq 0x8005, 0x2ED, _04F6
    GoToIfEq 0x8005, 0x2EE, _0510
    GoToIfEq 0x8005, 0x2EF, _052A
    End

_04DC:
    ApplyMovement 0xFF, _0564
    ApplyMovement 4, _05B4
    WaitMovement
    GoTo _0544
    End

_04F6:
    ApplyMovement 0xFF, _0578
    ApplyMovement 4, _05C8
    WaitMovement
    GoTo _0544
    End

_0510:
    ApplyMovement 0xFF, _058C
    ApplyMovement 4, _05DC
    WaitMovement
    GoTo _0544
    End

_052A:
    ApplyMovement 0xFF, _05A0
    ApplyMovement 4, _05F0
    WaitMovement
    GoTo _0544
    End

_0544:
    Message 7
    WaitButtonPress
    CloseMessage
    ScrCmd_014 0x801
    SetVar 0x4079, 1
    ReleaseAll
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
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 21
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0647:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    GoToIfSet 122, _0665
    Message 11
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0665:
    Message 12
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0670:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 15
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0683:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 13
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0696:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 22
    WaitButtonPress
    CloseMessage
    ReleaseAll
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
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    ScrCmd_04B 0x5DC
    ScrCmd_04C 66, 0
    Message 24
    ScrCmd_04D
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0722:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 23
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0735:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    ScrCmd_04B 0x5DC
    ScrCmd_04C 66, 0
    Message 25
    ScrCmd_04D
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0754:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    ScrCmd_04B 0x5DC
    ScrCmd_04C 66, 0
    Message 26
    ScrCmd_04D
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
