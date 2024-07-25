#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0026
    ScriptEntry _04D0
    ScriptEntry _0067
    ScriptEntry _00CD
    ScriptEntry _05D4
    ScriptEntry _05E7
    ScriptEntry _0628
    ScriptEntry _063F
    ScriptEntry _0659
    .short 0xFD13

_0026:
    CallIfEq 0x40F4, 1, _004F
    CallIfEq 0x40A4, 4, _005F
    CallIfEq 0x40A4, 6, _0057
    End

_004F:
    SetVar 0x40F4, 2
    Return

_0057:
    SetVar 0x40A4, 7
    Return

_005F:
    SetVar 0x40A4, 5
    Return

_0067:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 144, _00A3
    GoToIfGe 0x4095, 1, _00AE
    GoToIfSet 234, _00BC
    BufferPlayerName 0
    BufferRivalName 1
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A3:
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00AE:
    BufferRivalName 0
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00BC:
    BufferPlayerName 0
    BufferRivalName 1
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00CD:
    LockAll
    ApplyMovement 3, _03B0
    WaitMovement
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8004, 108, _0140
    GoToIfEq 0x8004, 109, _0158
    GoToIfEq 0x8004, 110, _0170
    GoToIfEq 0x8004, 111, _0188
    GoToIfEq 0x8004, 112, _01A0
    GoToIfEq 0x8004, 113, _01B8
    GoToIfEq 0x8004, 114, _01D0
    GoTo _01E8

_0140:
    ApplyMovement 0xFF, _02F0
    ApplyMovement 3, _03C4
    WaitMovement
    GoTo _0200

_0158:
    ApplyMovement 0xFF, _0308
    ApplyMovement 3, _03E0
    WaitMovement
    GoTo _0200

_0170:
    ApplyMovement 0xFF, _0320
    ApplyMovement 3, _03F4
    WaitMovement
    GoTo _0200

_0188:
    ApplyMovement 0xFF, _0338
    ApplyMovement 3, _0408
    WaitMovement
    GoTo _0200

_01A0:
    ApplyMovement 0xFF, _0350
    ApplyMovement 3, _041C
    WaitMovement
    GoTo _0200

_01B8:
    ApplyMovement 0xFF, _0368
    ApplyMovement 3, _0430
    WaitMovement
    GoTo _0200

_01D0:
    ApplyMovement 0xFF, _0380
    ApplyMovement 3, _0444
    WaitMovement
    GoTo _0200

_01E8:
    ApplyMovement 0xFF, _0398
    ApplyMovement 3, _0458
    WaitMovement
    GoTo _0200

_0200:
    BufferPlayerName 0
    BufferRivalName 1
    Message 3
    CloseMessage
    GoToIfEq 0x8004, 108, _026C
    GoToIfEq 0x8004, 109, _027C
    GoToIfEq 0x8004, 110, _028C
    GoToIfEq 0x8004, 111, _029C
    GoToIfEq 0x8004, 112, _02AC
    GoToIfEq 0x8004, 113, _02BC
    GoToIfEq 0x8004, 114, _02CC
    GoTo _02DC

_026C:
    ApplyMovement 3, _046C
    WaitMovement
    GoTo _02EC

_027C:
    ApplyMovement 3, _047C
    WaitMovement
    GoTo _02EC

_028C:
    ApplyMovement 3, _0488
    WaitMovement
    GoTo _02EC

_029C:
    ApplyMovement 3, _0494
    WaitMovement
    GoTo _02EC

_02AC:
    ApplyMovement 3, _04A0
    WaitMovement
    GoTo _02EC

_02BC:
    ApplyMovement 3, _04AC
    WaitMovement
    GoTo _02EC

_02CC:
    ApplyMovement 3, _04B8
    WaitMovement
    GoTo _02EC

_02DC:
    ApplyMovement 3, _04C4
    WaitMovement
    GoTo _02EC

_02EC:
    ReleaseAll
    End

    .balign 4, 0
_02F0:
    MoveAction_03E 6
    MoveAction_047
    MoveAction_00D
    MoveAction_048
    MoveAction_024
    EndMovement

    .balign 4, 0
_0308:
    MoveAction_03E 5
    MoveAction_047
    MoveAction_00D
    MoveAction_048
    MoveAction_024
    EndMovement

    .balign 4, 0
_0320:
    MoveAction_03E 6
    MoveAction_047
    MoveAction_00D
    MoveAction_048
    MoveAction_024
    EndMovement

    .balign 4, 0
_0338:
    MoveAction_03E 7
    MoveAction_047
    MoveAction_00D
    MoveAction_048
    MoveAction_024
    EndMovement

    .balign 4, 0
_0350:
    MoveAction_03E 8
    MoveAction_047
    MoveAction_00D
    MoveAction_048
    MoveAction_024
    EndMovement

    .balign 4, 0
_0368:
    MoveAction_03E 9
    MoveAction_047
    MoveAction_00D
    MoveAction_048
    MoveAction_024
    EndMovement

    .balign 4, 0
_0380:
    MoveAction_03E 10
    MoveAction_047
    MoveAction_00D
    MoveAction_048
    MoveAction_024
    EndMovement

    .balign 4, 0
_0398:
    MoveAction_03E 11
    MoveAction_047
    MoveAction_00D
    MoveAction_048
    MoveAction_024
    EndMovement

    .balign 4, 0
_03B0:
    MoveAction_024
    MoveAction_04B
    MoveAction_03F
    MoveAction_03E
    EndMovement

    .balign 4, 0
_03C4:
    MoveAction_010
    MoveAction_013
    MoveAction_010 2
    MoveAction_012
    MoveAction_025
    MoveAction_00D
    EndMovement

    .balign 4, 0
_03E0:
    MoveAction_010 3
    MoveAction_013
    MoveAction_025
    MoveAction_00D
    EndMovement

    .balign 4, 0
_03F4:
    MoveAction_010 3
    MoveAction_013 2
    MoveAction_025
    MoveAction_00D
    EndMovement

    .balign 4, 0
_0408:
    MoveAction_010 3
    MoveAction_013 3
    MoveAction_025
    MoveAction_00D
    EndMovement

    .balign 4, 0
_041C:
    MoveAction_010 3
    MoveAction_013 4
    MoveAction_025
    MoveAction_00D
    EndMovement

    .balign 4, 0
_0430:
    MoveAction_010 3
    MoveAction_013 5
    MoveAction_025
    MoveAction_00D
    EndMovement

    .balign 4, 0
_0444:
    MoveAction_010 3
    MoveAction_013 6
    MoveAction_025
    MoveAction_00D
    EndMovement

    .balign 4, 0
_0458:
    MoveAction_010 3
    MoveAction_013 7
    MoveAction_025
    MoveAction_00D
    EndMovement

    .balign 4, 0
_046C:
    MoveAction_00F
    MoveAction_00D 2
    MoveAction_00E
    EndMovement

    .balign 4, 0
_047C:
    MoveAction_00E
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_0488:
    MoveAction_00E 2
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_0494:
    MoveAction_00E 3
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_04A0:
    MoveAction_00E 4
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_04AC:
    MoveAction_00E 5
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_04B8:
    MoveAction_00E 6
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_04C4:
    MoveAction_00E 7
    MoveAction_00D 2
    EndMovement

_04D0:
    LockAll
    ScrCmd_168 3, 27, 9, 11, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ClearFlag 0x174
    ScrCmd_064 2
    ApplyMovement 2, _05A4
    ApplyMovement 0xFF, _0588
    WaitMovement
    PlayFanfare SEQ_SE_DP_WALL_HIT2
    Message 0
    WaitTime 30, 0x800C
    CallCommonScript 0x7FA
    ApplyMovement 2, _059C
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message 1
    CloseMessage
    ApplyMovement 0xFF, _0570
    ApplyMovement 2, _05B0
    WaitMovement
    WaitTime 15, 0x800C
    BufferRivalName 0
    Message 2
    CloseMessage
    ApplyMovement 2, _05C8
    WaitMovement
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    ScrCmd_065 2
    CallCommonScript 0x7FB
    SetVar 0x4070, 1
    SetVar 0x40E6, 1
    ReleaseAll
    End

    .balign 4, 0
_0570:
    MoveAction_03F
    MoveAction_03E
    MoveAction_023
    MoveAction_03F 5
    MoveAction_020
    EndMovement

    .balign 4, 0
_0588:
    MoveAction_000
    MoveAction_047
    MoveAction_00D
    MoveAction_048
    EndMovement

    .balign 4, 0
_059C:
    MoveAction_04B
    EndMovement

    .balign 4, 0
_05A4:
    MoveAction_011
    MoveAction_024
    EndMovement

    .balign 4, 0
_05B0:
    MoveAction_013 4
    MoveAction_04B
    MoveAction_03F
    MoveAction_012 4
    MoveAction_025
    EndMovement

    .balign 4, 0
_05C8:
    MoveAction_00C
    MoveAction_045
    EndMovement

_05D4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_05E7:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 144, _0612
    GoToIfGe 0x4095, 1, _061D
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0612:
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_061D:
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0628:
    ScrCmd_036 12, 0, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_063F:
    BufferPlayerName 0
    ScrCmd_036 13, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_0659:
    BufferRivalName 0
    ScrCmd_036 14, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

    .byte 0
