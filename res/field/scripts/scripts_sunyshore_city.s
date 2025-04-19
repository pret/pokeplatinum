#include "macros/scrcmd.inc"
#include "res/text/bank/sunyshore_city.h"

    .data

    ScriptEntry _0593
    ScriptEntry _0680
    ScriptEntry _0693
    ScriptEntry _06A6
    ScriptEntry _06B9
    ScriptEntry _06CC
    ScriptEntry _06DF
    ScriptEntry _0099
    ScriptEntry _0530
    ScriptEntry _06F2
    ScriptEntry _0709
    ScriptEntry _071E
    ScriptEntry _0735
    ScriptEntry _074C
    ScriptEntry _0763
    ScriptEntry _077A
    ScriptEntry _0791
    ScriptEntry _0850
    ScriptEntry _004E
    ScriptEntryEnd

_004E:
    CallIfEq VAR_UNK_0x40A6, 2, _0077
    CallIfEq VAR_UNK_0x40A6, 3, _0077
    GoToIfEq VAR_UNK_0x407E, 0, _0083
    End

_0077:
    SetFlag FLAG_UNK_0x0199
    SetVar VAR_UNK_0x40A6, 4
    Return

_0083:
    SetObjectEventPos 18, 0x349, 0x316
    ScrCmd_188 18, 16
    ScrCmd_189 18, 2
    End

_0099:
    LockAll
    ApplyMovement 9, _04E8
    WaitMovement
    ClearFlag FLAG_UNK_0x0255
    AddObject 20
    ScrCmd_062 20
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8004, 0x355, _00FA
    GoToIfEq VAR_0x8004, 0x356, _0114
    GoToIfEq VAR_0x8004, 0x357, _012E
    GoToIfEq VAR_0x8004, 0x358, _0148
    GoToIfEq VAR_0x8004, 0x359, _0162
    End

_00FA:
    ApplyMovement 20, _0454
    ApplyMovement LOCALID_PLAYER, _04F4
    WaitMovement
    GoTo _017C
    End

_0114:
    ApplyMovement 20, _0464
    ApplyMovement LOCALID_PLAYER, _04F4
    WaitMovement
    GoTo _017C
    End

_012E:
    ApplyMovement 20, _0474
    ApplyMovement LOCALID_PLAYER, _0504
    WaitMovement
    GoTo _017C
    End

_0148:
    ApplyMovement 20, _0480
    ApplyMovement LOCALID_PLAYER, _050C
    WaitMovement
    GoTo _017C
    End

_0162:
    ApplyMovement 20, _0490
    ApplyMovement LOCALID_PLAYER, _050C
    WaitMovement
    GoTo _017C
    End

_017C:
    BufferRivalName 0
    BufferPlayerName 1
    Message 10
    ApplyMovement 20, _04A0
    WaitMovement
    Message 11
    CallIfEq VAR_0x8004, 0x355, _02BE
    CallIfEq VAR_0x8004, 0x356, _02CA
    CallIfEq VAR_0x8004, 0x357, _02D6
    CallIfEq VAR_0x8004, 0x358, _02E2
    CallIfEq VAR_0x8004, 0x359, _02EE
    Message 12
    CloseMessage
    CallIfEq VAR_0x8004, 0x355, _02FA
    CallIfEq VAR_0x8004, 0x356, _030E
    CallIfEq VAR_0x8004, 0x357, _0322
    CallIfEq VAR_0x8004, 0x358, _032E
    CallIfEq VAR_0x8004, 0x359, _0342
    RemoveObject 20
    CallIfEq VAR_0x8004, 0x355, _0356
    CallIfEq VAR_0x8004, 0x356, _0362
    CallIfEq VAR_0x8004, 0x357, _036E
    CallIfEq VAR_0x8004, 0x358, _037A
    CallIfEq VAR_0x8004, 0x359, _0386
    ApplyMovement LOCALID_PLAYER, _0528
    WaitMovement
    Message 13
    Call _0577
    CloseMessage
    CallIfEq VAR_0x8004, 0x355, _0392
    CallIfEq VAR_0x8004, 0x356, _039E
    CallIfEq VAR_0x8004, 0x357, _03AA
    CallIfEq VAR_0x8004, 0x358, _03B6
    CallIfEq VAR_0x8004, 0x359, _03C2
    SetVar VAR_UNK_0x407E, 3
    ReleaseAll
    End

_02BE:
    ApplyMovement 20, _04A8
    WaitMovement
    Return

_02CA:
    ApplyMovement 20, _04A8
    WaitMovement
    Return

_02D6:
    ApplyMovement 20, _04B0
    WaitMovement
    Return

_02E2:
    ApplyMovement 20, _04B8
    WaitMovement
    Return

_02EE:
    ApplyMovement 20, _04B8
    WaitMovement
    Return

_02FA:
    ApplyMovement 20, _04C0
    ApplyMovement LOCALID_PLAYER, _051C
    WaitMovement
    Return

_030E:
    ApplyMovement 20, _04C8
    ApplyMovement LOCALID_PLAYER, _051C
    WaitMovement
    Return

_0322:
    ApplyMovement 20, _04D0
    WaitMovement
    Return

_032E:
    ApplyMovement 20, _04D8
    ApplyMovement LOCALID_PLAYER, _051C
    WaitMovement
    Return

_0342:
    ApplyMovement 20, _04E0
    ApplyMovement LOCALID_PLAYER, _051C
    WaitMovement
    Return

_0356:
    ApplyMovement 9, _03D0
    WaitMovement
    Return

_0362:
    ApplyMovement 9, _03DC
    WaitMovement
    Return

_036E:
    ApplyMovement 9, _03E8
    WaitMovement
    Return

_037A:
    ApplyMovement 9, _03F4
    WaitMovement
    Return

_0386:
    ApplyMovement 9, _0400
    WaitMovement
    Return

_0392:
    ApplyMovement 9, _0408
    WaitMovement
    Return

_039E:
    ApplyMovement 9, _0418
    WaitMovement
    Return

_03AA:
    ApplyMovement 9, _0428
    WaitMovement
    Return

_03B6:
    ApplyMovement 9, _0438
    WaitMovement
    Return

_03C2:
    ApplyMovement 9, _0448
    WaitMovement
    Return

    .balign 4, 0
_03D0:
    MoveAction_014 4
    MoveAction_013
    EndMovement

    .balign 4, 0
_03DC:
    MoveAction_014 3
    MoveAction_013
    EndMovement

    .balign 4, 0
_03E8:
    MoveAction_014 2
    MoveAction_013
    EndMovement

    .balign 4, 0
_03F4:
    MoveAction_014
    MoveAction_013
    EndMovement

    .balign 4, 0
_0400:
    MoveAction_013
    EndMovement

    .balign 4, 0
_0408:
    MoveAction_012
    MoveAction_015 4
    MoveAction_033
    EndMovement

    .balign 4, 0
_0418:
    MoveAction_012
    MoveAction_015 3
    MoveAction_033
    EndMovement

    .balign 4, 0
_0428:
    MoveAction_012
    MoveAction_015 2
    MoveAction_033
    EndMovement

    .balign 4, 0
_0438:
    MoveAction_012
    MoveAction_015
    MoveAction_033
    EndMovement

    .balign 4, 0
_0448:
    MoveAction_012
    MoveAction_033
    EndMovement

    .balign 4, 0
_0454:
    MoveAction_063
    MoveAction_016 4
    MoveAction_018
    EndMovement

    .balign 4, 0
_0464:
    MoveAction_063
    MoveAction_016 4
    MoveAction_038
    EndMovement

    .balign 4, 0
_0474:
    MoveAction_063
    MoveAction_016 3
    EndMovement

    .balign 4, 0
_0480:
    MoveAction_063
    MoveAction_016 4
    MoveAction_039
    EndMovement

    .balign 4, 0
_0490:
    MoveAction_063
    MoveAction_016 4
    MoveAction_019
    EndMovement

    .balign 4, 0
_04A0:
    MoveAction_037
    EndMovement

    .balign 4, 0
_04A8:
    MoveAction_038
    EndMovement

    .balign 4, 0
_04B0:
    MoveAction_036
    EndMovement

    .balign 4, 0
_04B8:
    MoveAction_039
    EndMovement

    .balign 4, 0
_04C0:
    MoveAction_017 8
    EndMovement

    .balign 4, 0
_04C8:
    MoveAction_017 8
    EndMovement

    .balign 4, 0
_04D0:
    MoveAction_017 8
    EndMovement

    .balign 4, 0
_04D8:
    MoveAction_017 8
    EndMovement

    .balign 4, 0
_04E0:
    MoveAction_017 8
    EndMovement

    .balign 4, 0
_04E8:
    MoveAction_033
    MoveAction_075
    EndMovement

    .balign 4, 0
_04F4:
    MoveAction_033
    MoveAction_063
    MoveAction_035
    EndMovement

    .balign 4, 0
_0504:
    MoveAction_033
    EndMovement

    .balign 4, 0
_050C:
    MoveAction_033
    MoveAction_063 2
    MoveAction_034
    EndMovement

    .balign 4, 0
_051C:
    MoveAction_063
    MoveAction_033
    EndMovement

    .balign 4, 0
_0528:
    MoveAction_032
    EndMovement

_0530:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x009A, _056C
    Message 8
    CheckBadgeAcquired BADGE_ID_BEACON, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0561
    GoTo _056C
    End

_0561:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_056C:
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0577:
    Message 6
    SetVar VAR_0x8004, 0x1AA
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x009A
    Message 7
    Return

_0593:
    LockAll
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 0x316, _05B7
    GoToIfEq VAR_0x8005, 0x317, _05C7
    End

_05B7:
    ApplyMovement 18, _063C
    WaitMovement
    GoTo _05D7

_05C7:
    ApplyMovement 18, _0650
    WaitMovement
    GoTo _05D7

_05D7:
    Message 0
    CloseMessage
    ApplyMovement 18, _0668
    WaitMovement
    WaitTime 15, VAR_RESULT
    ApplyMovement 18, _0670
    WaitMovement
    Message 1
    CloseMessage
    WaitTime 15, VAR_RESULT
    ApplyMovement 18, _0678
    WaitMovement
    RemoveObject 18
    WaitTime 1, VAR_RESULT
    SetObjectEventPos 18, 0x34D, 0x2EC
    ScrCmd_188 18, 15
    ScrCmd_189 18, 1
    ClearFlag FLAG_UNK_0x0239
    AddObject 18
    SetVar VAR_UNK_0x407E, 1
    ReleaseAll
    End

    .balign 4, 0
_063C:
    MoveAction_014 3
    MoveAction_034
    MoveAction_075
    MoveAction_014 5
    EndMovement

    .balign 4, 0
_0650:
    MoveAction_013
    MoveAction_014 3
    MoveAction_034
    MoveAction_075
    MoveAction_014 5
    EndMovement

    .balign 4, 0
_0668:
    MoveAction_033
    EndMovement

    .balign 4, 0
_0670:
    MoveAction_034
    EndMovement

    .balign 4, 0
_0678:
    MoveAction_015 9
    EndMovement

_0680:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 14
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0693:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 20
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_06A6:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_06B9:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 17
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_06CC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 18
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_06DF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 19
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_06F2:
    ShowMapSign 21
    End

_0709:
    ShowScrollingSign 22
    End

_071E:
    ShowLandmarkSign 23
    End

_0735:
    ShowLandmarkSign 24
    End

_074C:
    ShowLandmarkSign 25
    End

_0763:
    ShowLandmarkSign 26
    End

_077A:
    ShowLandmarkSign 27
    End

_0791:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript 0x7E3
    ScrCmd_035
    GetDayOfWeek VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, DAY_OF_WEEK_SUNDAY, _0806
    GoToIfEq VAR_0x8008, DAY_OF_WEEK_MONDAY, _0810
    GoToIfEq VAR_0x8008, DAY_OF_WEEK_TUESDAY, _081A
    GoToIfEq VAR_0x8008, DAY_OF_WEEK_WEDNESDAY, _0824
    GoToIfEq VAR_0x8008, DAY_OF_WEEK_THURSDAY, _082E
    GoToIfEq VAR_0x8008, DAY_OF_WEEK_FRIDAY, _0838
    GoToIfEq VAR_0x8008, DAY_OF_WEEK_SATURDAY, _0842
    End

_0806:
    PokeMartSeal MART_SEAL_ID_SUNYSHORE_MONDAY
    GoTo _084C

_0810:
    PokeMartSeal MART_SEAL_ID_SUNYSHORE_TUESDAY
    GoTo _084C

_081A:
    PokeMartSeal MART_SEAL_ID_SUNYSHORE_WEDNESDAY
    GoTo _084C

_0824:
    PokeMartSeal MART_SEAL_ID_SUNYSHORE_THURSDAY
    GoTo _084C

_082E:
    PokeMartSeal MART_SEAL_ID_SUNYSHORE_FRIDAY
    GoTo _084C

_0838:
    PokeMartSeal MART_SEAL_ID_SUNYSHORE_SATURDAY
    GoTo _084C

_0842:
    PokeMartSeal MART_SEAL_ID_SUNYSHORE_SUNDAY
    GoTo _084C

_084C:
    ReleaseAll
    End

_0850:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0162, _086E
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_086E:
    Message 3
    CloseMessage
    WaitTime 15, VAR_RESULT
    GetPlayerDir VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _08A6
    GoToIfEq VAR_RESULT, 2, _08BE
    GoToIfEq VAR_RESULT, 3, _08D6
    End

_08A6:
    ApplyMovement 18, _08F8
    ApplyMovement LOCALID_PLAYER, _0914
    WaitMovement
    GoTo _08EE

_08BE:
    ApplyMovement 18, _0908
    ApplyMovement LOCALID_PLAYER, _0920
    WaitMovement
    GoTo _08EE

_08D6:
    ApplyMovement 18, _0908
    ApplyMovement LOCALID_PLAYER, _0914
    WaitMovement
    GoTo _08EE

_08EE:
    RemoveObject 18
    ReleaseAll
    End

    .balign 4, 0
_08F8:
    MoveAction_015
    MoveAction_013 2
    MoveAction_015 8
    EndMovement

    .balign 4, 0
_0908:
    MoveAction_013 2
    MoveAction_015 9
    EndMovement

    .balign 4, 0
_0914:
    MoveAction_063
    MoveAction_003
    EndMovement

    .balign 4, 0
_0920:
    MoveAction_063
    MoveAction_033
    MoveAction_035
    EndMovement
