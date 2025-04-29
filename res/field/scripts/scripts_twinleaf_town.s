#include "macros/scrcmd.inc"
#include "res/text/bank/twinleaf_town.h"

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
    ScriptEntryEnd

_0026:
    CallIfEq VAR_UNK_0x40F4, 1, _004F
    CallIfEq VAR_UNK_0x40A4, 4, _005F
    CallIfEq VAR_UNK_0x40A4, 6, _0057
    End

_004F:
    SetVar VAR_UNK_0x40F4, 2
    Return

_0057:
    SetVar VAR_UNK_0x40A4, 7
    Return

_005F:
    SetVar VAR_UNK_0x40A4, 5
    Return

_0067:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0090, _00A3
    GoToIfGe VAR_UNK_0x4095, 1, _00AE
    GoToIfSet FLAG_UNK_0x00EA, _00BC
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
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8004, 108, _0140
    GoToIfEq VAR_0x8004, 109, _0158
    GoToIfEq VAR_0x8004, 110, _0170
    GoToIfEq VAR_0x8004, 111, _0188
    GoToIfEq VAR_0x8004, 112, _01A0
    GoToIfEq VAR_0x8004, 113, _01B8
    GoToIfEq VAR_0x8004, 114, _01D0
    GoTo _01E8

_0140:
    ApplyMovement LOCALID_PLAYER, _02F0
    ApplyMovement 3, _03C4
    WaitMovement
    GoTo _0200

_0158:
    ApplyMovement LOCALID_PLAYER, _0308
    ApplyMovement 3, _03E0
    WaitMovement
    GoTo _0200

_0170:
    ApplyMovement LOCALID_PLAYER, _0320
    ApplyMovement 3, _03F4
    WaitMovement
    GoTo _0200

_0188:
    ApplyMovement LOCALID_PLAYER, _0338
    ApplyMovement 3, _0408
    WaitMovement
    GoTo _0200

_01A0:
    ApplyMovement LOCALID_PLAYER, _0350
    ApplyMovement 3, _041C
    WaitMovement
    GoTo _0200

_01B8:
    ApplyMovement LOCALID_PLAYER, _0368
    ApplyMovement 3, _0430
    WaitMovement
    GoTo _0200

_01D0:
    ApplyMovement LOCALID_PLAYER, _0380
    ApplyMovement 3, _0444
    WaitMovement
    GoTo _0200

_01E8:
    ApplyMovement LOCALID_PLAYER, _0398
    ApplyMovement 3, _0458
    WaitMovement
    GoTo _0200

_0200:
    BufferPlayerName 0
    BufferRivalName 1
    Message 3
    CloseMessage
    GoToIfEq VAR_0x8004, 108, _026C
    GoToIfEq VAR_0x8004, 109, _027C
    GoToIfEq VAR_0x8004, 110, _028C
    GoToIfEq VAR_0x8004, 111, _029C
    GoToIfEq VAR_0x8004, 112, _02AC
    GoToIfEq VAR_0x8004, 113, _02BC
    GoToIfEq VAR_0x8004, 114, _02CC
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
    MoveAction_062 6
    MoveAction_071
    MoveAction_013
    MoveAction_072
    MoveAction_036
    EndMovement

    .balign 4, 0
_0308:
    MoveAction_062 5
    MoveAction_071
    MoveAction_013
    MoveAction_072
    MoveAction_036
    EndMovement

    .balign 4, 0
_0320:
    MoveAction_062 6
    MoveAction_071
    MoveAction_013
    MoveAction_072
    MoveAction_036
    EndMovement

    .balign 4, 0
_0338:
    MoveAction_062 7
    MoveAction_071
    MoveAction_013
    MoveAction_072
    MoveAction_036
    EndMovement

    .balign 4, 0
_0350:
    MoveAction_062 8
    MoveAction_071
    MoveAction_013
    MoveAction_072
    MoveAction_036
    EndMovement

    .balign 4, 0
_0368:
    MoveAction_062 9
    MoveAction_071
    MoveAction_013
    MoveAction_072
    MoveAction_036
    EndMovement

    .balign 4, 0
_0380:
    MoveAction_062 10
    MoveAction_071
    MoveAction_013
    MoveAction_072
    MoveAction_036
    EndMovement

    .balign 4, 0
_0398:
    MoveAction_062 11
    MoveAction_071
    MoveAction_013
    MoveAction_072
    MoveAction_036
    EndMovement

    .balign 4, 0
_03B0:
    MoveAction_036
    MoveAction_075
    MoveAction_063
    MoveAction_062
    EndMovement

    .balign 4, 0
_03C4:
    MoveAction_016
    MoveAction_019
    MoveAction_016 2
    MoveAction_018
    MoveAction_037
    MoveAction_013
    EndMovement

    .balign 4, 0
_03E0:
    MoveAction_016 3
    MoveAction_019
    MoveAction_037
    MoveAction_013
    EndMovement

    .balign 4, 0
_03F4:
    MoveAction_016 3
    MoveAction_019 2
    MoveAction_037
    MoveAction_013
    EndMovement

    .balign 4, 0
_0408:
    MoveAction_016 3
    MoveAction_019 3
    MoveAction_037
    MoveAction_013
    EndMovement

    .balign 4, 0
_041C:
    MoveAction_016 3
    MoveAction_019 4
    MoveAction_037
    MoveAction_013
    EndMovement

    .balign 4, 0
_0430:
    MoveAction_016 3
    MoveAction_019 5
    MoveAction_037
    MoveAction_013
    EndMovement

    .balign 4, 0
_0444:
    MoveAction_016 3
    MoveAction_019 6
    MoveAction_037
    MoveAction_013
    EndMovement

    .balign 4, 0
_0458:
    MoveAction_016 3
    MoveAction_019 7
    MoveAction_037
    MoveAction_013
    EndMovement

    .balign 4, 0
_046C:
    MoveAction_015
    MoveAction_013 2
    MoveAction_014
    EndMovement

    .balign 4, 0
_047C:
    MoveAction_014
    MoveAction_013 2
    EndMovement

    .balign 4, 0
_0488:
    MoveAction_014 2
    MoveAction_013 2
    EndMovement

    .balign 4, 0
_0494:
    MoveAction_014 3
    MoveAction_013 2
    EndMovement

    .balign 4, 0
_04A0:
    MoveAction_014 4
    MoveAction_013 2
    EndMovement

    .balign 4, 0
_04AC:
    MoveAction_014 5
    MoveAction_013 2
    EndMovement

    .balign 4, 0
_04B8:
    MoveAction_014 6
    MoveAction_013 2
    EndMovement

    .balign 4, 0
_04C4:
    MoveAction_014 7
    MoveAction_013 2
    EndMovement

_04D0:
    LockAll
    ScrCmd_168 3, 27, 9, 11, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ClearFlag FLAG_UNK_0x0174
    AddObject 2
    ApplyMovement 2, _05A4
    ApplyMovement LOCALID_PLAYER, _0588
    WaitMovement
    PlayFanfare SEQ_SE_DP_WALL_HIT2
    Message 0
    WaitTime 30, VAR_RESULT
    CallCommonScript 0x7FA
    ApplyMovement 2, _059C
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message 1
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _0570
    ApplyMovement 2, _05B0
    WaitMovement
    WaitTime 15, VAR_RESULT
    BufferRivalName 0
    Message 2
    CloseMessage
    ApplyMovement 2, _05C8
    WaitMovement
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    RemoveObject 2
    CallCommonScript 0x7FB
    SetVar VAR_UNK_0x4070, 1
    SetVar VAR_UNK_0x40E6, 1
    ReleaseAll
    End

    .balign 4, 0
_0570:
    MoveAction_063
    MoveAction_062
    MoveAction_035
    MoveAction_063 5
    MoveAction_032
    EndMovement

    .balign 4, 0
_0588:
    MoveAction_000
    MoveAction_071
    MoveAction_013
    MoveAction_072
    EndMovement

    .balign 4, 0
_059C:
    MoveAction_075
    EndMovement

    .balign 4, 0
_05A4:
    MoveAction_017
    MoveAction_036
    EndMovement

    .balign 4, 0
_05B0:
    MoveAction_019 4
    MoveAction_075
    MoveAction_063
    MoveAction_018 4
    MoveAction_037
    EndMovement

    .balign 4, 0
_05C8:
    MoveAction_012
    MoveAction_069
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
    GoToIfSet FLAG_UNK_0x0090, _0612
    GoToIfGe VAR_UNK_0x4095, 1, _061D
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
    ShowMapSign 12
    End

_063F:
    BufferPlayerName 0
    ShowLandmarkSign 13
    End

_0659:
    BufferRivalName 0
    ShowLandmarkSign 14
    End

    .byte 0
