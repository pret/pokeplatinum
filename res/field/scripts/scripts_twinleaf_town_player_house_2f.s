#include "macros/scrcmd.inc"

    .data

    ScriptEntry _005D
    ScriptEntry _006E
    ScriptEntry _0041
    ScriptEntry _0082
    ScriptEntry _002A
    ScriptEntry _0097
    ScriptEntry _00A8
    ScriptEntry _00B6
    ScriptEntry _00C4
    ScriptEntry _00D2
    .short 0xFD13

_002A:
    GoToIfEq 0x40F9, 0, _0039
    End

_0039:
    ScrCmd_283 0x406, 50
    End

_0041:
    LockAll
    SetVar 0x40F9, 1
    Message 0
    PlaySound SEQ_TV_END
    Message 1
    WaitSound
    CloseMessage
    PlayDefaultMusic
    ReleaseAll
    End

_005D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_006E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    BufferPlayerName 0
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0082:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 3, 0x800C
    CallCommonScript 0x7D0
    End

_0097:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A8:
    SetVar 0x4000, 0
    GoTo _00E0
    End

_00B6:
    SetVar 0x4000, 1
    GoTo _00E0
    End

_00C4:
    SetVar 0x4000, 2
    GoTo _00E0
    End

_00D2:
    SetVar 0x4000, 3
    GoTo _00E0
    End

_00E0:
    LockAll
    ClearFlag 0x173
    ScrCmd_064 0
    ApplyMovement 0, _0394
    WaitMovement
    CallCommonScript 0x7FA
    BufferRivalName 0
    Message 6
    CloseMessage
    CallIfEq 0x4000, 0, _0249
    CallIfEq 0x4000, 1, _025D
    CallIfEq 0x4000, 2, _0271
    CallIfEq 0x4000, 3, _027D
    BufferPlayerName 1
    Message 7
    CloseMessage
    ApplyMovement 0, _03E0
    WaitMovement
    CallIfEq 0x4000, 0, _0291
    CallIfEq 0x4000, 1, _02A5
    CallIfEq 0x4000, 2, _02B9
    CallIfEq 0x4000, 3, _02CD
    Message 8
    CloseMessage
    CallIfEq 0x4000, 0, _02E1
    CallIfEq 0x4000, 1, _02ED
    CallIfEq 0x4000, 2, _02F9
    CallIfEq 0x4000, 3, _0305
    BufferRivalName 0
    Message 9
    CloseMessage
    CallIfEq 0x4000, 0, _0311
    CallIfEq 0x4000, 1, _031D
    CallIfEq 0x4000, 2, _0329
    CallIfEq 0x4000, 3, _0335
    BufferPlayerName 1
    Message 10
    CloseMessage
    CallIfEq 0x4000, 0, _0341
    CallIfEq 0x4000, 1, _0355
    CallIfEq 0x4000, 2, _0369
    CallIfEq 0x4000, 3, _037D
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ScrCmd_065 0
    CallCommonScript 0x7FB
    WaitFanfare SEQ_SE_DP_KAIDAN2
    SetFlag 0x173
    SetVar 0x40A5, 1
    ReleaseAll
    End

_0249:
    ApplyMovement 0xFF, _04D4
    ApplyMovement 0, _03A4
    WaitMovement
    Return

_025D:
    ApplyMovement 0xFF, _04E4
    ApplyMovement 0, _03B4
    WaitMovement
    Return

_0271:
    ApplyMovement 0, _03C4
    WaitMovement
    Return

_027D:
    ApplyMovement 0xFF, _04E4
    ApplyMovement 0, _03D0
    WaitMovement
    Return

_0291:
    ApplyMovement 0xFF, _04F0
    ApplyMovement 0, _03EC
    WaitMovement
    Return

_02A5:
    ApplyMovement 0xFF, _04FC
    ApplyMovement 0, _03FC
    WaitMovement
    Return

_02B9:
    ApplyMovement 0xFF, _0508
    ApplyMovement 0, _040C
    WaitMovement
    Return

_02CD:
    ApplyMovement 0xFF, _0514
    ApplyMovement 0, _041C
    WaitMovement
    Return

_02E1:
    ApplyMovement 0, _042C
    WaitMovement
    Return

_02ED:
    ApplyMovement 0, _0434
    WaitMovement
    Return

_02F9:
    ApplyMovement 0, _043C
    WaitMovement
    Return

_0305:
    ApplyMovement 0, _0444
    WaitMovement
    Return

_0311:
    ApplyMovement 0, _044C
    WaitMovement
    Return

_031D:
    ApplyMovement 0, _0454
    WaitMovement
    Return

_0329:
    ApplyMovement 0, _0464
    WaitMovement
    Return

_0335:
    ApplyMovement 0, _0474
    WaitMovement
    Return

_0341:
    ApplyMovement 0xFF, _0520
    ApplyMovement 0, _0484
    WaitMovement
    Return

_0355:
    ApplyMovement 0xFF, _0520
    ApplyMovement 0, _0498
    WaitMovement
    Return

_0369:
    ApplyMovement 0xFF, _0520
    ApplyMovement 0, _04AC
    WaitMovement
    Return

_037D:
    ApplyMovement 0xFF, _0520
    ApplyMovement 0, _04C0
    WaitMovement
    Return

    .balign 4, 0
_0394:
    MoveAction_012 2
    MoveAction_04B
    MoveAction_03F
    EndMovement

    .balign 4, 0
_03A4:
    MoveAction_012
    MoveAction_011
    MoveAction_012 2
    EndMovement

    .balign 4, 0
_03B4:
    MoveAction_012
    MoveAction_011 2
    MoveAction_012 3
    EndMovement

    .balign 4, 0
_03C4:
    MoveAction_011 2
    MoveAction_012 2
    EndMovement

    .balign 4, 0
_03D0:
    MoveAction_012
    MoveAction_011 3
    MoveAction_012 2
    EndMovement

    .balign 4, 0
_03E0:
    MoveAction_04B
    MoveAction_03F
    EndMovement

    .balign 4, 0
_03EC:
    MoveAction_011
    MoveAction_012 4
    MoveAction_010
    EndMovement

    .balign 4, 0
_03FC:
    MoveAction_010
    MoveAction_012 3
    MoveAction_024
    EndMovement

    .balign 4, 0
_040C:
    MoveAction_010
    MoveAction_012 5
    MoveAction_024
    EndMovement

    .balign 4, 0
_041C:
    MoveAction_010
    MoveAction_012 4
    MoveAction_010
    EndMovement

    .balign 4, 0
_042C:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0434:
    MoveAction_023
    EndMovement

    .balign 4, 0
_043C:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0444:
    MoveAction_023
    EndMovement

    .balign 4, 0
_044C:
    MoveAction_013 2
    EndMovement

    .balign 4, 0
_0454:
    MoveAction_013
    MoveAction_011
    MoveAction_027
    EndMovement

    .balign 4, 0
_0464:
    MoveAction_013
    MoveAction_011
    MoveAction_013 2
    EndMovement

    .balign 4, 0
_0474:
    MoveAction_013
    MoveAction_011 2
    MoveAction_013
    EndMovement

    .balign 4, 0
_0484:
    MoveAction_011
    MoveAction_013 3
    MoveAction_010 2
    MoveAction_013 4
    EndMovement

    .balign 4, 0
_0498:
    MoveAction_010
    MoveAction_013 4
    MoveAction_010
    MoveAction_013 3
    EndMovement

    .balign 4, 0
_04AC:
    MoveAction_010
    MoveAction_013 2
    MoveAction_010
    MoveAction_013 3
    EndMovement

    .balign 4, 0
_04C0:
    MoveAction_010
    MoveAction_013 3
    MoveAction_010 2
    MoveAction_013 3
    EndMovement

    .balign 4, 0
_04D4:
    MoveAction_03F
    MoveAction_03E
    MoveAction_023
    EndMovement

    .balign 4, 0
_04E4:
    MoveAction_03F 2
    MoveAction_023
    EndMovement

    .balign 4, 0
_04F0:
    MoveAction_03F 2
    MoveAction_026
    EndMovement

    .balign 4, 0
_04FC:
    MoveAction_03F
    MoveAction_022
    EndMovement

    .balign 4, 0
_0508:
    MoveAction_03F
    MoveAction_022
    EndMovement

    .balign 4, 0
_0514:
    MoveAction_03F
    MoveAction_022
    EndMovement

    .balign 4, 0
_0520:
    MoveAction_03F 2
    MoveAction_023
    EndMovement
