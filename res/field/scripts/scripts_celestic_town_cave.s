#include "macros/scrcmd.inc"
#include "res/text/bank/celestic_town_cave.h"


    ScriptEntry _000E
    ScriptEntry _0538
    ScriptEntry _0585
    ScriptEntryEnd

_000E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfSet FLAG_ARRESTED_CHARON_STARK_MOUNTAIN, _0596
    GoTo _0027
    End

_0027:
    GoToIfUnset FLAG_UNK_0x00A7, _0040
    BufferPlayerName 0
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0040:
    BufferPlayerName 0
    Message 0
    CloseMessage
    SetFlag FLAG_UNK_0x00A7
    ClearFlag FLAG_UNK_0x0229
    SetObjectEventPos 0, 4, 11
    SetObjectEventDir 0, DIR_NORTH
    SetObjectEventMovementType 0, MOVEMENT_TYPE_LOOK_NORTH
    AddObject 0
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 9, _0110
    CallIfEq VAR_0x8004, 10, _0126
    Message 1
    Message 2
    CloseMessage
    ApplyMovement 0, _04B8
    ApplyMovement LOCALID_PLAYER, _0424
    WaitMovement
    Message 3
    CloseMessage
    SetFlag FLAG_UNK_0x01AC
    ClearFlag FLAG_UNK_0x029B
    SetObjectEventPos 1, 4, 11
    SetObjectEventDir 1, DIR_NORTH
    SetObjectEventMovementType 1, MOVEMENT_TYPE_LOOK_NORTH
    AddObject 1
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 9, _0285
    CallIfEq VAR_0x8004, 10, _0291
    Message 4
    Message 5
    Message 6
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _019D
    GoToIfEq VAR_RESULT, MENU_NO, _013C
    End

_0110:
    ApplyMovement 0, _0488
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _03E4
    WaitMovement
    Return

_0126:
    ApplyMovement 0, _04A0
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _03EC
    WaitMovement
    Return

_013C:
    Message 10
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 9, _0165
    CallIfEq VAR_0x8004, 10, _0181
    ReleaseAll
    End

_0165:
    ApplyMovement 0, _04C0
    ApplyMovement LOCALID_PLAYER, _03F4
    ApplyMovement 1, _03CC
    WaitMovement
    Return

_0181:
    ApplyMovement 0, _04CC
    ApplyMovement LOCALID_PLAYER, _040C
    ApplyMovement 1, _03D8
    WaitMovement
    Return

_019D:
    Message 8
    CloseMessage
    StartTrainerBattle TRAINER_GALACTIC_BOSS_CYRUS_CELESTIC_TOWN_RUINS
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _0393
    Call _01C3
    ReleaseAll
    End

_01C3:
    ClearFlag FLAG_UNK_0x01BD
    SetVar VAR_UNK_0x4074, 1
    Message 11
    CloseMessage
    WaitTime 15, VAR_RESULT
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    RemoveObject 1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 8, _029D
    CallIfEq VAR_0x8004, 9, _02B1
    CallIfEq VAR_0x8004, 10, _02FA
    CallIfEq VAR_0x8004, 11, _0343
    Message 13
    SetVar VAR_0x8004, 0x1A6
    SetVar VAR_0x8005, 1
    CallCommonScript CommonScript_Unk2C
    SetFlag FLAG_UNK_0x01AC
    ClearFlag FLAG_UNK_0x01C3
    SetFlag FLAG_DUMMY_2445
    Message 14
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 9, _0357
    CallIfEq VAR_0x8004, 10, _036B
    CallIfEq VAR_0x8004, 11, _037F
    RemoveObject 0
    Return

_0285:
    ApplyMovement 1, _039C
    WaitMovement
    Return

_0291:
    ApplyMovement 1, _03B4
    WaitMovement
    Return

_029D:
    ApplyMovement LOCALID_PLAYER, _042C
    ApplyMovement 0, _04D8
    WaitMovement
    Return

_02B1:
    GoToIfEq VAR_0x8005, 4, _02D2
    ApplyMovement LOCALID_PLAYER, _0434
    ApplyMovement 0, _04D8
    WaitMovement
    Return

_02D2:
    ApplyMovement LOCALID_PLAYER, _043C
    ApplyMovement 0, _04D8
    WaitMovement
    Return

CelesticTownCave_Unused:
    ApplyMovement LOCALID_PLAYER, CelesticTownCave_UnusedMovement
    ApplyMovement 0, _04D8
    WaitMovement
    Return

_02FA:
    GoToIfEq VAR_0x8005, 4, _031B
    ApplyMovement LOCALID_PLAYER, _0454
    ApplyMovement 0, _04E0
    WaitMovement
    Return

_031B:
    ApplyMovement LOCALID_PLAYER, _045C
    ApplyMovement 0, _04E0
    WaitMovement
    Return

CelesticTownCave_Unused2:
    ApplyMovement LOCALID_PLAYER, CelesticTownCave_UnusedMovement2
    ApplyMovement 0, _04D8
    WaitMovement
    Return

_0343:
    ApplyMovement LOCALID_PLAYER, _0474
    ApplyMovement 0, _04E8
    WaitMovement
    Return

_0357:
    ApplyMovement LOCALID_PLAYER, _047C
    ApplyMovement 0, _04F0
    WaitMovement
    Return

_036B:
    ApplyMovement LOCALID_PLAYER, _047C
    ApplyMovement 0, _0508
    WaitMovement
    Return

_037F:
    ApplyMovement LOCALID_PLAYER, _047C
    ApplyMovement 0, _0520
    WaitMovement
    Return

_0393:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
_039C:
    WalkNormalNorth 6
    WalkNormalEast
    WalkNormalNorth
    WalkNormalEast 5
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_03B4:
    WalkNormalNorth 6
    WalkNormalEast
    WalkNormalNorth
    WalkNormalEast 4
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_03CC:
    WalkNormalWest
    WalkNormalNorth
    EndMovement

    .balign 4, 0
_03D8:
    WalkNormalEast
    WalkNormalNorth
    EndMovement

    .balign 4, 0
_03E4:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_03EC:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_03F4:
    Delay8
    FaceEast
    LockDir
    WalkFastWest
    UnlockDir
    EndMovement

    .balign 4, 0
_040C:
    Delay8
    FaceWest
    LockDir
    WalkFastEast
    UnlockDir
    EndMovement

    .balign 4, 0
_0424:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_042C:
    WalkNormalEast
    EndMovement

    .balign 4, 0
_0434:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_043C:
    WalkNormalNorth
    WalkOnSpotNormalEast
    EndMovement

CelesticTownCave_UnusedMovement:
    WalkNormalNorth 2
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0454:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_045C:
    WalkNormalNorth
    WalkOnSpotNormalWest
    EndMovement

CelesticTownCave_UnusedMovement2:
    WalkNormalNorth 2
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0474:
    WalkNormalWest
    EndMovement

    .balign 4, 0
_047C:
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0488:
    WalkNormalNorth 6
    WalkNormalEast
    WalkNormalNorth
    WalkNormalEast 5
    WalkNormalNorth
    EndMovement

    .balign 4, 0
_04A0:
    WalkNormalNorth 6
    WalkNormalEast
    WalkNormalNorth
    WalkNormalEast 4
    WalkNormalNorth
    EndMovement

    .balign 4, 0
_04B8:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_04C0:
    Delay8
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_04CC:
    Delay8
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_04D8:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_04E0:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_04E8:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_04F0:
    WalkNormalSouth
    WalkNormalWest 5
    WalkNormalSouth
    WalkNormalWest
    WalkNormalSouth 6
    EndMovement

    .balign 4, 0
_0508:
    WalkNormalSouth
    WalkNormalWest 4
    WalkNormalSouth
    WalkNormalWest
    WalkNormalSouth 6
    EndMovement

    .balign 4, 0
_0520:
    WalkNormalSouth
    WalkNormalWest 5
    WalkNormalSouth
    WalkNormalWest
    WalkNormalSouth 6
    EndMovement

_0538:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 7
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _057A
    Message 8
    CloseMessage
    StartTrainerBattle TRAINER_GALACTIC_BOSS_CYRUS_CELESTIC_TOWN_RUINS
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _0393
    Call _01C3
    ReleaseAll
    End

_057A:
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0585:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0596:
    GoToIfSet FLAG_UNK_0x0124, _0027
    SetFlag FLAG_UNK_0x0124
    ClearFlag FLAG_UNK_0x01A6
    SetObjectEventPos 2, 4, 11
    AddObject 2
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 9, _06CF
    CallIfEq VAR_0x8004, 10, _06E5
    Message 16
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 9, _0713
    CallIfEq VAR_0x8004, 10, _071F
    Message 17
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _0753
    CloseMessage
    ApplyMovement 2, _07F0
    ApplyMovement LOCALID_PLAYER, _0858
    WaitMovement
    WaitTime 15, VAR_RESULT
    Message 18
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 9, _0713
    CallIfEq VAR_0x8004, 10, _071F
    CallIfEq VAR_0x8004, 9, _06FB
    CallIfEq VAR_0x8004, 10, _0707
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _0753
    Message 19
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _0864
    ApplyMovement 2, _07F8
    WaitMovement
    Message 20
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 9, _072B
    CallIfEq VAR_0x8004, 10, _073F
    Message 21
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _0753
    Message 22
    GoTo _075E
    End

_06CF:
    ApplyMovement 2, _07B0
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _0848
    WaitMovement
    Return

_06E5:
    ApplyMovement 2, _07C8
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _0850
    WaitMovement
    Return

_06FB:
    ApplyMovement LOCALID_PLAYER, _0848
    WaitMovement
    Return

_0707:
    ApplyMovement LOCALID_PLAYER, _0850
    WaitMovement
    Return

_0713:
    ApplyMovement 2, _07E0
    WaitMovement
    Return

_071F:
    ApplyMovement 2, _07E8
    WaitMovement
    Return

_072B:
    ApplyMovement 2, _0800
    ApplyMovement LOCALID_PLAYER, _0870
    WaitMovement
    Return

_073F:
    ApplyMovement 2, _080C
    ApplyMovement LOCALID_PLAYER, _087C
    WaitMovement
    Return

_0753:
    Message 23
    GoTo _075E
    End

_075E:
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 9, _0788
    CallIfEq VAR_0x8004, 10, _079C
    RemoveObject 2
    ReleaseAll
    End

_0788:
    ApplyMovement 2, _0818
    ApplyMovement LOCALID_PLAYER, _0888
    WaitMovement
    Return

_079C:
    ApplyMovement 2, _0830
    ApplyMovement LOCALID_PLAYER, _0888
    WaitMovement
    Return

    .balign 4, 0
_07B0:
    WalkNormalNorth 6
    WalkNormalEast
    WalkNormalNorth
    WalkNormalEast 5
    WalkNormalNorth
    EndMovement

    .balign 4, 0
_07C8:
    WalkNormalNorth 6
    WalkNormalEast
    WalkNormalNorth
    WalkNormalEast 4
    WalkNormalNorth
    EndMovement

    .balign 4, 0
_07E0:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_07E8:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_07F0:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_07F8:
    WalkNormalSouth
    EndMovement

    .balign 4, 0
_0800:
    WalkNormalNorth
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_080C:
    WalkNormalNorth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0818:
    WalkNormalSouth
    WalkNormalWest 5
    WalkNormalSouth
    WalkNormalWest
    WalkNormalSouth 6
    EndMovement

    .balign 4, 0
_0830:
    WalkNormalSouth
    WalkNormalWest 4
    WalkNormalSouth
    WalkNormalWest
    WalkNormalSouth 6
    EndMovement

    .balign 4, 0
_0848:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0850:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0858:
    Delay8
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0864:
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0870:
    Delay8
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_087C:
    Delay8
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0888:
    Delay8 2
    FaceWest
    EndMovement
