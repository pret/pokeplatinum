#include "macros/scrcmd.inc"
#include "res/text/bank/valor_lakefront.h"


    ScriptEntry _0026
    ScriptEntry _0061
    ScriptEntry _009D
    ScriptEntry _060C
    ScriptEntry _0632
    ScriptEntry _061F
    ScriptEntry _06B8
    ScriptEntry _06CF
    ScriptEntry _06E2
    ScriptEntryEnd

_0026:
    CallIfSet FLAG_UNK_0x0106, _004B
    GoToIfUnset FLAG_GALACTIC_LEFT_LAKE_VALOR, _0079
    GoToIfSet FLAG_GALACTIC_LEFT_LAKE_VALOR, _008B
    End
    End

_004B:
    SetObjectEventPos 5, 0x2D3, 0x301
    SetObjectEventDir 5, DIR_NORTH
    SetObjectEventMovementType 5, MOVEMENT_TYPE_LOOK_NORTH
    Return

_0061:
    GoToIfUnset FLAG_GALACTIC_LEFT_LAKE_VALOR, _0079
    GoToIfSet FLAG_GALACTIC_LEFT_LAKE_VALOR, _008B
    End

_0079:
    SetWarpEventPos 5, 0x2C9, 0x2F8
    SetWarpEventPos 6, 0x2C9, 0x2F9
    End

_008B:
    SetWarpEventPos 3, 0x2C9, 0x2F8
    SetWarpEventPos 4, 0x2C9, 0x2F9
    End

_009D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfSet FLAG_UNK_0x0106, _013A
    Message 0
    FacePlayer
    ApplyMovement 5, _0214
    WaitMovement
    Message 1
    CloseMessage
    GetPlayerDir VAR_0x8004
    GoToIfEq VAR_0x8004, 1, _00E6
    GoToIfEq VAR_0x8004, 0, _00FE
    GoTo _010E

_00E6:
    ApplyMovement 5, _021C
    ApplyMovement LOCALID_PLAYER, _01E0
    WaitMovement
    GoTo _0126

_00FE:
    ApplyMovement 5, _0228
    WaitMovement
    GoTo _0126

_010E:
    ApplyMovement 5, _0228
    ApplyMovement LOCALID_PLAYER, _01EC
    WaitMovement
    GoTo _0126

_0126:
    ScrCmd_187 5, 0x2D3, 1, 0x301, 0
    SetFlag FLAG_UNK_0x0106
    ReleaseAll
    End

_013A:
    GetPlayerDir VAR_0x8000
    FacePlayer
    Message 2
    CloseMessage
    StartTrainerBattle TRAINER_GALACTIC_GRUNT_VALOR_LAKEFRONT
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _01D9
    Message 3
    CloseMessage
    GetPlayerDir VAR_0x8004
    GoToIfEq VAR_0x8004, 1, _0185
    GoToIfEq VAR_0x8004, 0, _019D
    GoTo _01AD

_0185:
    ApplyMovement 5, _0230
    ApplyMovement LOCALID_PLAYER, _01F4
    WaitMovement
    GoTo _01C5

_019D:
    ApplyMovement 5, _023C
    WaitMovement
    GoTo _01C5

_01AD:
    ApplyMovement 5, _023C
    ApplyMovement LOCALID_PLAYER, _0208
    WaitMovement
    GoTo _01C5

_01C5:
    RemoveObject 5
    SetFlag FLAG_UNK_0x0211
    ClearFlag FLAG_UNK_0x0156
    GoTo _0248
    End

_01D9:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
_01E0:
    WalkOnSpotNormalEast
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_01EC:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_01F4:
    Delay8
    WalkOnSpotNormalEast
    Delay8
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0208:
    Delay8
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0214:
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
_021C:
    WalkFastEast
    WalkFastNorth 11
    EndMovement

    .balign 4, 0
_0228:
    WalkFastNorth 10
    EndMovement

    .balign 4, 0
_0230:
    WalkNormalEast
    WalkSlowNorth 9
    EndMovement

    .balign 4, 0
_023C:
    WalkNormalNorth
    WalkSlowNorth 9
    EndMovement

_0248:
    CallIfEq VAR_0x8000, 0, _03EC
    CallIfEq VAR_0x8000, 1, _03F6
    CallIfEq VAR_0x8000, 2, _0400
    CallIfEq VAR_0x8000, 3, _040A
    ClearFlag FLAG_UNK_0x01AD
    SetObjectEventDir 0, DIR_SOUTH
    SetObjectEventMovementType 0, MOVEMENT_TYPE_LOOK_SOUTH
    AddObject 0
    ApplyMovement 0, _0594
    WaitMovement
    Message 4
    CloseMessage
    CallIfEq VAR_0x8000, 0, _0444
    CallIfEq VAR_0x8000, 1, _044E
    CallIfEq VAR_0x8000, 2, _0458
    CallIfEq VAR_0x8000, 3, _0462
    ClearFlag FLAG_UNK_0x01D5
    SetObjectEventDir 10, DIR_NORTH
    SetObjectEventMovementType 10, MOVEMENT_TYPE_LOOK_NORTH
    AddObject 10
    CallCommonScript CommonScript_Unk2A
    CallIfEq VAR_0x8000, 0, _046C
    CallIfEq VAR_0x8000, 1, _0480
    CallIfEq VAR_0x8000, 2, _0494
    CallIfEq VAR_0x8000, 3, _04A8
    BufferPlayerName 0
    BufferRivalName 1
    Message 5
    ApplyMovement 10, _0574
    WaitMovement
    Message 6
    CallIfEq VAR_0x8000, 0, _04BC
    CallIfEq VAR_0x8000, 1, _04C8
    CallIfEq VAR_0x8000, 2, _04D4
    CallIfEq VAR_0x8000, 3, _04E0
    Message 7
    CloseMessage
    ApplyMovement 0, _05A8
    ApplyMovement LOCALID_PLAYER, _05E8
    ApplyMovement 10, _058C
    WaitMovement
    RemoveObject 10
    CallCommonScript CommonScript_Unk29_2
    Message 8
    CloseMessage
    CallIfEq VAR_0x8000, 0, _0414
    CallIfEq VAR_0x8000, 1, _0420
    CallIfEq VAR_0x8000, 2, _042C
    CallIfEq VAR_0x8000, 3, _0438
    Message 9
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _04EC
    GoToIfEq VAR_RESULT, MENU_NO, _04F7
    End

_03EC:
    SetObjectEventPos 0, 0x2D3, 0x2F9
    Return

_03F6:
    SetObjectEventPos 0, 0x2D3, 0x2F7
    Return

_0400:
    SetObjectEventPos 0, 0x2D4, 0x2F8
    Return

_040A:
    SetObjectEventPos 0, 0x2D2, 0x2F8
    Return

_0414:
    ApplyMovement 0, _05B4
    WaitMovement
    Return

_0420:
    ApplyMovement 0, _05B4
    WaitMovement
    Return

_042C:
    ApplyMovement 0, _05B4
    WaitMovement
    Return

_0438:
    ApplyMovement 0, _05B4
    WaitMovement
    Return

_0444:
    SetObjectEventPos 10, 0x2D4, 0x30C
    Return

_044E:
    SetObjectEventPos 10, 0x2D4, 0x30A
    Return

_0458:
    SetObjectEventPos 10, 0x2D3, 0x30B
    Return

_0462:
    SetObjectEventPos 10, 0x2D3, 0x30B
    Return

_046C:
    ApplyMovement LOCALID_PLAYER, _05D0
    ApplyMovement 10, _055C
    WaitMovement
    Return

_0480:
    ApplyMovement LOCALID_PLAYER, _05D0
    ApplyMovement 10, _055C
    WaitMovement
    Return

_0494:
    ApplyMovement LOCALID_PLAYER, _05DC
    ApplyMovement 10, _0568
    WaitMovement
    Return

_04A8:
    ApplyMovement LOCALID_PLAYER, _05D0
    ApplyMovement 10, _055C
    WaitMovement
    Return

_04BC:
    ApplyMovement 10, _057C
    WaitMovement
    Return

_04C8:
    ApplyMovement 10, _057C
    WaitMovement
    Return

_04D4:
    ApplyMovement 10, _0584
    WaitMovement
    Return

_04E0:
    ApplyMovement 10, _057C
    WaitMovement
    Return

_04EC:
    Message 10
    GoTo _0502
    End

_04F7:
    Message 11
    GoTo _0502
    End

_0502:
    Message 12
    SetVar VAR_0x8004, 0x1D0
    SetVar VAR_0x8005, 1
    CallCommonScript CommonScript_Unk2C
    Message 13
    CloseMessage
    GoTo _0522
    End

_0522:
    ApplyMovement 0, _05BC
    ApplyMovement LOCALID_PLAYER, _0600
    WaitMovement
    GoTo _053A

_053A:
    RemoveObject 0
    SetVar VAR_UNK_0x4083, 2
    SetFlag FLAG_UNK_0x00B7
    SetFlag FLAG_UNK_0x01A9
    ClearFlag FLAG_UNK_0x020F
    SetVar VAR_UNK_0x407C, 6
    ReleaseAll
    End

    .balign 4, 0
_055C:
    WalkFastNorth 10
    WalkOnSpotFastWest
    EndMovement

    .balign 4, 0
_0568:
    WalkFastNorth 10
    WalkOnSpotFastEast
    EndMovement

    .balign 4, 0
_0574:
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
_057C:
    WalkOnSpotFastWest
    EndMovement

    .balign 4, 0
_0584:
    WalkOnSpotFastEast
    EndMovement

    .balign 4, 0
_058C:
    WalkFastNorth 8
    EndMovement

    .balign 4, 0
_0594:
    WalkNormalSouth 4
    WalkOnSpotNormalNorth
    Delay8 2
    WalkNormalSouth 4
    EndMovement

    .balign 4, 0
_05A8:
    Delay8
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_05B4:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_05BC:
    WalkNormalNorth 9
    EndMovement

ValorLakefront_UnusedMovement:
    Delay8
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_05D0:
    Delay8 4
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_05DC:
    Delay8 4
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_05E8:
    Delay8 2
    WalkOnSpotNormalNorth
    EndMovement

ValorLakefront_UnusedMovement2:
    Delay8 3
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0600:
    Delay8
    FaceNorth
    EndMovement

_060C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 14
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_061F:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0632:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckItem ITEM_SUITE_KEY, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _065A
    Message 18
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_065A:
    Message 19
    CloseMessage
    RemoveItem ITEM_SUITE_KEY, 1, VAR_RESULT
    ApplyMovement 8, _06A8
    WaitMovement
    ScrCmd_168 22, 24, 11, 13, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ApplyMovement 8, _06B0
    WaitMovement
    RemoveObject 8
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    ClearFlag FLAG_UNK_0x025E
    SetFlag FLAG_UNK_0x025D
    ReleaseAll
    End

    .balign 4, 0
_06A8:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_06B0:
    WalkNormalNorth
    EndMovement

_06B8:
    ShowLandmarkSign 20
    End

_06CF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 17
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_06E2:
    LockAll
    ApplyMovement 9, _07A8
    WaitMovement
    GetPlayerMapPos VAR_0x8000, VAR_0x8001
    CallIfEq VAR_0x8001, 0x315, _075D
    CallIfEq VAR_0x8001, 0x316, _0769
    CallIfEq VAR_0x8001, 0x317, _0775
    ApplyMovement 9, _07FC
    ApplyMovement LOCALID_PLAYER, _0804
    WaitMovement
    Message 16
    CloseMessage
    CallIfEq VAR_0x8001, 0x315, _0781
    CallIfEq VAR_0x8001, 0x316, _078D
    CallIfEq VAR_0x8001, 0x317, _0799
    ReleaseAll
    End

_075D:
    ApplyMovement 9, _07B4
    WaitMovement
    Return

_0769:
    ApplyMovement 9, _07C0
    WaitMovement
    Return

_0775:
    ApplyMovement 9, _07CC
    WaitMovement
    Return

_0781:
    ApplyMovement 9, _07D8
    WaitMovement
    Return

_078D:
    ApplyMovement 9, _07E4
    WaitMovement
    Return

_0799:
    ApplyMovement 9, _07F0
    WaitMovement
    Return

    .balign 4, 0
_07A8:
    EmoteExclamationMark
    Delay16
    EndMovement

    .balign 4, 0
_07B4:
    WalkNormalEast
    WalkNormalSouth
    EndMovement

    .balign 4, 0
_07C0:
    WalkNormalEast
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
_07CC:
    WalkNormalEast
    WalkNormalSouth 3
    EndMovement

    .balign 4, 0
_07D8:
    WalkNormalNorth
    FaceSouth
    EndMovement

    .balign 4, 0
_07E4:
    WalkNormalNorth 2
    FaceSouth
    EndMovement

    .balign 4, 0
_07F0:
    WalkNormalNorth 3
    FaceSouth
    EndMovement

    .balign 4, 0
_07FC:
    WalkNormalWest
    EndMovement

    .balign 4, 0
_0804:
    LockDir
    WalkNormalWest
    UnlockDir
    EndMovement
