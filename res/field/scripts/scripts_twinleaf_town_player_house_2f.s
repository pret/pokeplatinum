#include "macros/scrcmd.inc"
#include "res/text/bank/twinleaf_town_player_house_2f.h"

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
    ScriptEntryEnd

_002A:
    GoToIfEq VAR_UNK_0x40F9, 0, _0039
    End

_0039:
    ScrCmd_283 0x406, 50
    End

_0041:
    LockAll
    SetVar VAR_UNK_0x40F9, 1
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
    ShowScrollingSign 3
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
    SetVar VAR_MAP_LOCAL_0, 0
    GoTo _00E0
    End

_00B6:
    SetVar VAR_MAP_LOCAL_0, 1
    GoTo _00E0
    End

_00C4:
    SetVar VAR_MAP_LOCAL_0, 2
    GoTo _00E0
    End

_00D2:
    SetVar VAR_MAP_LOCAL_0, 3
    GoTo _00E0
    End

_00E0:
    LockAll
    ClearFlag FLAG_UNK_0x0173
    AddObject 0
    ApplyMovement 0, _0394
    WaitMovement
    CallCommonScript 0x7FA
    BufferRivalName 0
    Message 6
    CloseMessage
    CallIfEq VAR_MAP_LOCAL_0, 0, _0249
    CallIfEq VAR_MAP_LOCAL_0, 1, _025D
    CallIfEq VAR_MAP_LOCAL_0, 2, _0271
    CallIfEq VAR_MAP_LOCAL_0, 3, _027D
    BufferPlayerName 1
    Message 7
    CloseMessage
    ApplyMovement 0, _03E0
    WaitMovement
    CallIfEq VAR_MAP_LOCAL_0, 0, _0291
    CallIfEq VAR_MAP_LOCAL_0, 1, _02A5
    CallIfEq VAR_MAP_LOCAL_0, 2, _02B9
    CallIfEq VAR_MAP_LOCAL_0, 3, _02CD
    Message 8
    CloseMessage
    CallIfEq VAR_MAP_LOCAL_0, 0, _02E1
    CallIfEq VAR_MAP_LOCAL_0, 1, _02ED
    CallIfEq VAR_MAP_LOCAL_0, 2, _02F9
    CallIfEq VAR_MAP_LOCAL_0, 3, _0305
    BufferRivalName 0
    Message 9
    CloseMessage
    CallIfEq VAR_MAP_LOCAL_0, 0, _0311
    CallIfEq VAR_MAP_LOCAL_0, 1, _031D
    CallIfEq VAR_MAP_LOCAL_0, 2, _0329
    CallIfEq VAR_MAP_LOCAL_0, 3, _0335
    BufferPlayerName 1
    Message 10
    CloseMessage
    CallIfEq VAR_MAP_LOCAL_0, 0, _0341
    CallIfEq VAR_MAP_LOCAL_0, 1, _0355
    CallIfEq VAR_MAP_LOCAL_0, 2, _0369
    CallIfEq VAR_MAP_LOCAL_0, 3, _037D
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject 0
    CallCommonScript 0x7FB
    WaitFanfare SEQ_SE_DP_KAIDAN2
    SetFlag FLAG_UNK_0x0173
    SetVar VAR_UNK_0x40A5, 1
    ReleaseAll
    End

_0249:
    ApplyMovement LOCALID_PLAYER, _04D4
    ApplyMovement 0, _03A4
    WaitMovement
    Return

_025D:
    ApplyMovement LOCALID_PLAYER, _04E4
    ApplyMovement 0, _03B4
    WaitMovement
    Return

_0271:
    ApplyMovement 0, _03C4
    WaitMovement
    Return

_027D:
    ApplyMovement LOCALID_PLAYER, _04E4
    ApplyMovement 0, _03D0
    WaitMovement
    Return

_0291:
    ApplyMovement LOCALID_PLAYER, _04F0
    ApplyMovement 0, _03EC
    WaitMovement
    Return

_02A5:
    ApplyMovement LOCALID_PLAYER, _04FC
    ApplyMovement 0, _03FC
    WaitMovement
    Return

_02B9:
    ApplyMovement LOCALID_PLAYER, _0508
    ApplyMovement 0, _040C
    WaitMovement
    Return

_02CD:
    ApplyMovement LOCALID_PLAYER, _0514
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
    ApplyMovement LOCALID_PLAYER, _0520
    ApplyMovement 0, _0484
    WaitMovement
    Return

_0355:
    ApplyMovement LOCALID_PLAYER, _0520
    ApplyMovement 0, _0498
    WaitMovement
    Return

_0369:
    ApplyMovement LOCALID_PLAYER, _0520
    ApplyMovement 0, _04AC
    WaitMovement
    Return

_037D:
    ApplyMovement LOCALID_PLAYER, _0520
    ApplyMovement 0, _04C0
    WaitMovement
    Return

    .balign 4, 0
_0394:
    MoveAction_018 2
    MoveAction_075
    MoveAction_063
    EndMovement

    .balign 4, 0
_03A4:
    MoveAction_018
    MoveAction_017
    MoveAction_018 2
    EndMovement

    .balign 4, 0
_03B4:
    MoveAction_018
    MoveAction_017 2
    MoveAction_018 3
    EndMovement

    .balign 4, 0
_03C4:
    MoveAction_017 2
    MoveAction_018 2
    EndMovement

    .balign 4, 0
_03D0:
    MoveAction_018
    MoveAction_017 3
    MoveAction_018 2
    EndMovement

    .balign 4, 0
_03E0:
    MoveAction_075
    MoveAction_063
    EndMovement

    .balign 4, 0
_03EC:
    MoveAction_017
    MoveAction_018 4
    MoveAction_016
    EndMovement

    .balign 4, 0
_03FC:
    MoveAction_016
    MoveAction_018 3
    MoveAction_036
    EndMovement

    .balign 4, 0
_040C:
    MoveAction_016
    MoveAction_018 5
    MoveAction_036
    EndMovement

    .balign 4, 0
_041C:
    MoveAction_016
    MoveAction_018 4
    MoveAction_016
    EndMovement

    .balign 4, 0
_042C:
    MoveAction_035
    EndMovement

    .balign 4, 0
_0434:
    MoveAction_035
    EndMovement

    .balign 4, 0
_043C:
    MoveAction_035
    EndMovement

    .balign 4, 0
_0444:
    MoveAction_035
    EndMovement

    .balign 4, 0
_044C:
    MoveAction_019 2
    EndMovement

    .balign 4, 0
_0454:
    MoveAction_019
    MoveAction_017
    MoveAction_039
    EndMovement

    .balign 4, 0
_0464:
    MoveAction_019
    MoveAction_017
    MoveAction_019 2
    EndMovement

    .balign 4, 0
_0474:
    MoveAction_019
    MoveAction_017 2
    MoveAction_019
    EndMovement

    .balign 4, 0
_0484:
    MoveAction_017
    MoveAction_019 3
    MoveAction_016 2
    MoveAction_019 4
    EndMovement

    .balign 4, 0
_0498:
    MoveAction_016
    MoveAction_019 4
    MoveAction_016
    MoveAction_019 3
    EndMovement

    .balign 4, 0
_04AC:
    MoveAction_016
    MoveAction_019 2
    MoveAction_016
    MoveAction_019 3
    EndMovement

    .balign 4, 0
_04C0:
    MoveAction_016
    MoveAction_019 3
    MoveAction_016 2
    MoveAction_019 3
    EndMovement

    .balign 4, 0
_04D4:
    MoveAction_063
    MoveAction_062
    MoveAction_035
    EndMovement

    .balign 4, 0
_04E4:
    MoveAction_063 2
    MoveAction_035
    EndMovement

    .balign 4, 0
_04F0:
    MoveAction_063 2
    MoveAction_038
    EndMovement

    .balign 4, 0
_04FC:
    MoveAction_063
    MoveAction_034
    EndMovement

    .balign 4, 0
_0508:
    MoveAction_063
    MoveAction_034
    EndMovement

    .balign 4, 0
_0514:
    MoveAction_063
    MoveAction_034
    EndMovement

    .balign 4, 0
_0520:
    MoveAction_063 2
    MoveAction_035
    EndMovement
