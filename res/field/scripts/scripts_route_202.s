#include "macros/scrcmd.inc"
#include "res/text/bank/route_202.h"


    ScriptEntry _001E
    ScriptEntry _0071
    ScriptEntry _0084
    ScriptEntry _009B
    ScriptEntry _00B2
    ScriptEntry _00C7
    ScriptEntry _04C4
    ScriptEntryEnd

_001E:
    CallIfGe VAR_UNK_0x4087, 2, _005B
    GetPlayerGender VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_MALE, _004B
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_FEMALE, _0053
    End

_004B:
    SetVar VAR_OBJ_GFX_ID_0, 97
    End

_0053:
    SetVar VAR_OBJ_GFX_ID_0, 0
    End

_005B:
    SetObjectEventPos 3, 186, 0x331
    SetObjectEventDir 3, DIR_SOUTH
    SetObjectEventMovementType 3, MOVEMENT_TYPE_LOOK_SOUTH
    Return

_0071:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0084:
    ShowArrowSign 11
    End

_009B:
    ShowArrowSign 12
    End

_00B2:
    ShowScrollingSign 13
    End

_00C7:
    LockAll
    ApplyMovement 3, _03C4
    ApplyMovement LOCALID_PLAYER, _04A0
    WaitMovement
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 0x339, _0124
    GoToIfEq VAR_0x8005, 0x33A, _0134
    GoToIfEq VAR_0x8005, 0x33B, _0144
    GoToIfEq VAR_0x8005, 0x33C, _0154
    GoToIfEq VAR_0x8005, 0x33D, _0164
    End

_0124:
    ApplyMovement 3, _03D4
    WaitMovement
    GoTo _0174

_0134:
    ApplyMovement 3, _03E4
    WaitMovement
    GoTo _0174

_0144:
    ApplyMovement 3, _03F4
    WaitMovement
    GoTo _0174

_0154:
    ApplyMovement 3, _0400
    WaitMovement
    GoTo _0174

_0164:
    ApplyMovement 3, _0410
    WaitMovement
    GoTo _0174

_0174:
    GoToIfUnset FLAG_UNK_0x008F, _027C
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _019F
    GoToIfEq VAR_RESULT, GENDER_FEMALE, _01B2
    End

_019F:
    CallCommonScript CommonScript_Unk28
    BufferCounterpartName 0
    BufferPlayerName 1
    Message 2
    GoTo _01C5

_01B2:
    CallCommonScript CommonScript_Unk28
    BufferCounterpartName 0
    BufferPlayerName 1
    Message 7
    GoTo _01C5

_01C5:
    CloseMessage
    ApplyMovement 3, _0488
    ApplyMovement LOCALID_PLAYER, _04BC
    WaitMovement
    StartCatchingTutorial
    ApplyMovement 3, _0490
    WaitMovement
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _0205
    GoToIfEq VAR_RESULT, GENDER_FEMALE, _0211
    End

_0205:
    BufferPlayerName 0
    Message 3
    GoTo _021D

_0211:
    BufferPlayerName 0
    Message 8
    GoTo _021D

_021D:
    SetVar VAR_0x8004, 4
    SetVar VAR_0x8005, 5
    CallCommonScript CommonScript_Unk2C
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _024D
    GoToIfEq VAR_RESULT, GENDER_FEMALE, _0259
    End

_024D:
    BufferPlayerName 0
    Message 4
    GoTo _0262

_0259:
    Message 9
    GoTo _0262

_0262:
    CloseMessage
    ApplyMovement 3, _0498
    WaitMovement
    RemoveObject 3
    SetVar VAR_UNK_0x4087, 1
    ReleaseAll
    End

_027C:
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _029C
    GoToIfEq VAR_RESULT, GENDER_FEMALE, _02C8
    End

_029C:
    BufferCounterpartName 0
    BufferPlayerName 1
    CallIfUnset FLAG_UNK_0x0115, _02BE
    CallIfSet FLAG_UNK_0x0115, _02C3
    GoTo _02F4

_02BE:
    Message 0
    Return

_02C3:
    Message 1
    Return

_02C8:
    BufferCounterpartName 0
    BufferPlayerName 1
    CallIfUnset FLAG_UNK_0x0115, _02EA
    CallIfSet FLAG_UNK_0x0115, _02EF
    GoTo _02F4

_02EA:
    Message 5
    Return

_02EF:
    Message 6
    Return

_02F4:
    CloseMessage
    GoToIfEq VAR_0x8005, 0x339, _0339
    GoToIfEq VAR_0x8005, 0x33A, _0351
    GoToIfEq VAR_0x8005, 0x33B, _0369
    GoToIfEq VAR_0x8005, 0x33C, _0381
    GoToIfEq VAR_0x8005, 0x33D, _0399
    End

_0339:
    ApplyMovement 3, _0420
    ApplyMovement LOCALID_PLAYER, _04AC
    WaitMovement
    GoTo _03B1

_0351:
    ApplyMovement 3, _0434
    ApplyMovement LOCALID_PLAYER, _04AC
    WaitMovement
    GoTo _03B1

_0369:
    ApplyMovement 3, _0448
    ApplyMovement LOCALID_PLAYER, _04AC
    WaitMovement
    GoTo _03B1

_0381:
    ApplyMovement 3, _0458
    ApplyMovement LOCALID_PLAYER, _04AC
    WaitMovement
    GoTo _03B1

_0399:
    ApplyMovement 3, _046C
    ApplyMovement LOCALID_PLAYER, _04AC
    WaitMovement
    GoTo _03B1

_03B1:
    ApplyMovement 3, _0480
    WaitMovement
    SetFlag FLAG_UNK_0x0115
    ReleaseAll
    End

    .balign 4, 0
_03C4:
    WalkOnSpotNormalEast
    EmoteExclamationMark
    Delay16
    EndMovement

    .balign 4, 0
_03D4:
    WalkNormalEast 4
    WalkNormalNorth 2
    WalkNormalEast
    EndMovement

    .balign 4, 0
_03E4:
    WalkNormalEast 4
    WalkNormalNorth
    WalkNormalEast
    EndMovement

    .balign 4, 0
_03F4:
    WalkNormalEast 4
    WalkNormalEast
    EndMovement

    .balign 4, 0
_0400:
    WalkNormalEast 4
    WalkNormalSouth
    WalkNormalEast
    EndMovement

    .balign 4, 0
_0410:
    WalkNormalEast 4
    WalkNormalSouth 2
    WalkNormalEast
    EndMovement

    .balign 4, 0
_0420:
    WalkNormalEast
    WalkNormalWest 4
    WalkNormalWest 2
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
_0434:
    WalkNormalEast
    WalkNormalWest 4
    WalkNormalWest 2
    WalkNormalSouth
    EndMovement

    .balign 4, 0
_0448:
    WalkNormalEast
    WalkNormalWest 4
    WalkNormalWest 2
    EndMovement

    .balign 4, 0
_0458:
    WalkNormalEast
    WalkNormalWest 4
    WalkNormalWest 2
    WalkNormalNorth
    EndMovement

    .balign 4, 0
_046C:
    WalkNormalEast
    WalkNormalWest 4
    WalkNormalWest 2
    WalkNormalNorth 2
    EndMovement

    .balign 4, 0
_0480:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0488:
    WalkNormalWest 2
    EndMovement

    .balign 4, 0
_0490:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0498:
    WalkNormalWest 12
    EndMovement

    .balign 4, 0
_04A0:
    Delay8
    FaceWest
    EndMovement

    .balign 4, 0
_04AC:
    LockDir
    WalkNormalEast
    UnlockDir
    EndMovement

    .balign 4, 0
_04BC:
    WalkNormalWest 2
    EndMovement

_04C4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 0
    GetPlayerDir VAR_0x8002
    GetPlayerGender VAR_0x8000
    CallIfEq VAR_0x8000, GENDER_MALE, _0653
    CallIfEq VAR_0x8000, GENDER_FEMALE, _0658
    CloseMessage
    PlayMusic SEQ_POKERADAR
    AddCameraOverrideObject 189, 0x332
    ApplyFreeCameraMovement _06F8
    WaitMovement
    RemoveCameraOverrideObject
    ApplyMovement 3, _0690
    ApplyMovement LOCALID_PLAYER, _06D0
    WaitMovement
    WaitTime 15, VAR_RESULT
    CallIfEq VAR_0x8000, 0, _065D
    CallIfEq VAR_0x8000, 1, _0662
    CloseMessage
    WaitTime 15, VAR_RESULT
    PlayDefaultMusic
    CallIfEq VAR_0x8002, 0, _05D1
    CallIfEq VAR_0x8002, 1, _05E5
    CallIfEq VAR_0x8002, 2, _05F9
    CallIfEq VAR_0x8002, 3, _0605
    CallIfEq VAR_0x8000, 0, _0667
    CallIfEq VAR_0x8000, 1, _066C
    CloseMessage
    CallIfEq VAR_0x8002, 0, _0611
    CallIfEq VAR_0x8002, 1, _061D
    CallIfEq VAR_0x8002, 2, _0629
    CallIfEq VAR_0x8002, 3, _0635
    GoTo _0641
    End

_05D1:
    ApplyMovement 3, _0698
    ApplyMovement LOCALID_PLAYER, _06D8
    WaitMovement
    Return

_05E5:
    ApplyMovement 3, _06A0
    ApplyMovement LOCALID_PLAYER, _06E0
    WaitMovement
    Return

_05F9:
    ApplyMovement LOCALID_PLAYER, _06E8
    WaitMovement
    Return

_0605:
    ApplyMovement 3, _06B0
    WaitMovement
    Return

_0611:
    ApplyMovement 3, _0674
    WaitMovement
    Return

_061D:
    ApplyMovement 3, _0684
    WaitMovement
    Return

_0629:
    ApplyMovement 3, _0684
    WaitMovement
    Return

_0635:
    ApplyMovement 3, _0684
    WaitMovement
    Return

_0641:
    RemoveObject 3
    ClearFlag FLAG_UNK_0x0177
    SetVar VAR_UNK_0x4087, 3
    ReleaseAll
    End

_0653:
    Message 14
    Return

_0658:
    Message 17
    Return

_065D:
    Message 15
    Return

_0662:
    Message 18
    Return

_0667:
    Message 16
    Return

_066C:
    Message 19
    Return

    .balign 4, 0
_0674:
    WalkNormalWest
    WalkNormalSouth 3
    WalkNormalWest 10
    EndMovement

    .balign 4, 0
_0684:
    WalkNormalSouth 3
    WalkNormalWest 10
    EndMovement

    .balign 4, 0
_0690:
    FaceEast
    EndMovement

    .balign 4, 0
_0698:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_06A0:
    WalkOnSpotNormalNorth
    EndMovement

Route202_UnusedMovement:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_06B0:
    WalkOnSpotNormalWest
    EndMovement

Route202_UnusedMovement2:
    Delay8
    WalkOnSpotNormalWest
    EndMovement

Route202_UnusedMovement3:
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_06D0:
    FaceEast
    EndMovement

    .balign 4, 0
_06D8:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_06E0:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_06E8:
    WalkOnSpotNormalWest
    EndMovement

Route202_UnusedMovement4:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_06F8:
    WalkNormalEast
    EndMovement
