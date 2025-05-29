#include "macros/scrcmd.inc"
#include "res/text/bank/eterna_city.h"
#include "res/text/bank/special_met_location_names.h"

    .data

    ScriptEntry _01BF
    ScriptEntry _04FC
    ScriptEntry _050F
    ScriptEntry _0522
    ScriptEntry _00BF
    ScriptEntry _00E5
    ScriptEntry _00D2
    ScriptEntry _010E
    ScriptEntry _0535
    ScriptEntry _0548
    ScriptEntry _055B
    ScriptEntry _0137
    ScriptEntry _014E
    ScriptEntry _0163
    ScriptEntry _017A
    ScriptEntry _0191
    ScriptEntry _01A8
    ScriptEntry _056E
    ScriptEntry _057F
    ScriptEntry _05B0
    ScriptEntry _0072
    ScriptEntry _0770
    ScriptEntry _07BA
    ScriptEntry _08FC
    ScriptEntry _0954
    ScriptEntry _0D00
    ScriptEntry _0FDC
    ScriptEntry _0EB4
    ScriptEntryEnd

_0072:
    CallIfEq VAR_UNK_0x407A, 4, _00B5
    CheckItem ITEM_BICYCLE, 1, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 1, _0096
    End

_0096:
    CheckItem ITEM_EXPLORER_KIT, 1, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 1, _00AD
    End

_00AD:
    SetVar VAR_UNK_0x4114, 0
    End

_00B5:
    SetObjectEventPos 12, 0x133, 0x21D
    Return

_00BF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 25
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00D2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 26
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00E5:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0081, _0103
    Message 21
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0103:
    Message 22
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_010E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0081, _012C
    Message 23
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_012C:
    Message 24
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0137:
    ShowMapSign 36
    End

_014E:
    ShowScrollingSign 37
    End

_0163:
    ShowLandmarkSign 38
    End

_017A:
    ShowLandmarkSign 39
    End

_0191:
    ShowLandmarkSign 40
    End

_01A8:
    ShowLandmarkSign 41
    End

_01BF:
    LockAll
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 0x20A, _01FD
    GoToIfEq VAR_0x8005, 0x20B, _0256
    GoToIfEq VAR_0x8005, 0x20C, _0266
    GoToIfEq VAR_0x8005, 0x20D, _0276
    End

_01FD:
    GoToIfEq VAR_0x8004, 0x130, _0226
    GoToIfEq VAR_0x8004, 0x131, _0236
    GoToIfEq VAR_0x8004, 0x132, _0246
    End

_0226:
    SetObjectEventPos 12, 0x139, 0x20C
    GoTo _0286
    End

_0236:
    SetObjectEventPos 12, 0x13A, 0x20C
    GoTo _0286
    End

_0246:
    SetObjectEventPos 12, 0x13B, 0x20C
    GoTo _0286
    End

_0256:
    SetObjectEventPos 12, 0x139, 0x20B
    GoTo _0286
    End

_0266:
    SetObjectEventPos 12, 0x139, 0x20C
    GoTo _0286
    End

_0276:
    SetObjectEventPos 12, 0x139, 0x20D
    GoTo _0286
    End

_0286:
    ClearFlag FLAG_UNK_0x0180
    AddObject 12
    ScrCmd_062 12
    CallIfEq VAR_0x8005, 0x20A, _034B
    CallIfNe VAR_0x8005, 0x20A, _0361
    BufferPlayerName 0
    Message 6
    CloseMessage
    CallIfEq VAR_0x8005, 0x20A, _0377
    CallIfNe VAR_0x8005, 0x20A, _0383
    Message 7
    SetVar VAR_0x8004, 0x1A4
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7FC
    Message 8
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 0x20A, _0322
    GoToIfEq VAR_0x8005, 0x20B, _03DD
    GoToIfEq VAR_0x8005, 0x20C, _03F7
    GoToIfEq VAR_0x8005, 0x20D, _0411
    End

_0322:
    GoToIfEq VAR_0x8004, 0x130, _038F
    GoToIfEq VAR_0x8004, 0x131, _03A9
    GoToIfEq VAR_0x8004, 0x132, _03C3
    End

_034B:
    ApplyMovement 12, _043C
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _04D4
    WaitMovement
    Return

_0361:
    ApplyMovement 12, _0450
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _04DC
    WaitMovement
    Return

_0377:
    ApplyMovement 12, _0460
    WaitMovement
    Return

_0383:
    ApplyMovement 12, _0470
    WaitMovement
    Return

_038F:
    ApplyMovement 12, _0480
    ApplyMovement LOCALID_PLAYER, _04E4
    WaitMovement
    GoTo _042B
    End

_03A9:
    ApplyMovement 12, _048C
    ApplyMovement LOCALID_PLAYER, _04E4
    WaitMovement
    GoTo _042B
    End

_03C3:
    ApplyMovement 12, _0498
    ApplyMovement LOCALID_PLAYER, _04E4
    WaitMovement
    GoTo _042B
    End

_03DD:
    ApplyMovement 12, _04A4
    ApplyMovement LOCALID_PLAYER, _04F0
    WaitMovement
    GoTo _042B
    End

_03F7:
    ApplyMovement 12, _04B4
    ApplyMovement LOCALID_PLAYER, _04F0
    WaitMovement
    GoTo _042B
    End

_0411:
    ApplyMovement 12, _04C4
    ApplyMovement LOCALID_PLAYER, _04F0
    WaitMovement
    GoTo _042B
    End

_042B:
    RemoveObject 12
    SetVar VAR_UNK_0x407A, 2
    ReleaseAll
    End

    .balign 4, 0
_043C:
    MoveAction_WalkNormalWest 4
    MoveAction_ExclamationPoint
    MoveAction_WalkNormalWest 5
    MoveAction_WalkNormalNorth
    EndMovement

    .balign 4, 0
_0450:
    MoveAction_WalkNormalWest 4
    MoveAction_ExclamationPoint
    MoveAction_WalkNormalWest 4
    EndMovement

    .balign 4, 0
_0460:
    MoveAction_WalkOnSpotNormalEast
    MoveAction_Delay8 2
    MoveAction_WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0470:
    MoveAction_WalkOnSpotNormalEast
    MoveAction_Delay8 2
    MoveAction_WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0480:
    MoveAction_WalkNormalWest 5
    MoveAction_WalkNormalSouth 10
    EndMovement

    .balign 4, 0
_048C:
    MoveAction_WalkNormalWest 6
    MoveAction_WalkNormalSouth 10
    EndMovement

    .balign 4, 0
_0498:
    MoveAction_WalkNormalWest 7
    MoveAction_WalkNormalSouth 10
    EndMovement

    .balign 4, 0
_04A4:
    MoveAction_WalkNormalSouth
    MoveAction_WalkNormalWest 6
    MoveAction_WalkNormalSouth 10
    EndMovement

    .balign 4, 0
_04B4:
    MoveAction_WalkNormalSouth
    MoveAction_WalkNormalWest 6
    MoveAction_WalkNormalSouth 10
    EndMovement

    .balign 4, 0
_04C4:
    MoveAction_WalkNormalNorth
    MoveAction_WalkNormalWest 6
    MoveAction_WalkNormalSouth 11
    EndMovement

    .balign 4, 0
_04D4:
    MoveAction_WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_04DC:
    MoveAction_WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_04E4:
    MoveAction_Delay8
    MoveAction_WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_04F0:
    MoveAction_Delay8 2
    MoveAction_WalkOnSpotNormalWest
    EndMovement

_04FC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 18
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_050F:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 19
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0522:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 20
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0535:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 27
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0548:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 28
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_055B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 29
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_056E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 42
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_057F:
    GoToIfSet FLAG_UNK_0x0079, _059D
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 31
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_059D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 32
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_05B0:
    LockAll
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 0x12F, _0657
    CallIfEq VAR_0x8004, 0x130, _0663
    CallIfEq VAR_0x8004, 0x131, _066F
    CallIfEq VAR_0x8004, 0x132, _067B
    CallIfEq VAR_0x8004, 0x133, _0687
    ApplyMovement LOCALID_PLAYER, _0760
    WaitMovement
    Message 30
    CloseMessage
    CallIfEq VAR_0x8004, 0x12F, _0693
    CallIfEq VAR_0x8004, 0x130, _0695
    CallIfEq VAR_0x8004, 0x131, _06A1
    CallIfEq VAR_0x8004, 0x132, _06AD
    CallIfEq VAR_0x8004, 0x133, _06B9
    ApplyMovement LOCALID_PLAYER, _0768
    WaitMovement
    ReleaseAll
    End

_0657:
    ApplyMovement 28, _06C8
    WaitMovement
    Return

_0663:
    ApplyMovement 28, _06D8
    WaitMovement
    Return

_066F:
    ApplyMovement 28, _06EC
    WaitMovement
    Return

_067B:
    ApplyMovement 28, _0700
    WaitMovement
    Return

_0687:
    ApplyMovement 28, _0714
    WaitMovement
    Return

_0693:
    Return

_0695:
    ApplyMovement 28, _0730
    WaitMovement
    Return

_06A1:
    ApplyMovement 28, _073C
    WaitMovement
    Return

_06AD:
    ApplyMovement 28, _0748
    WaitMovement
    Return

_06B9:
    ApplyMovement 28, _0754
    WaitMovement
    Return

    .balign 4, 0
_06C8:
    MoveAction_WalkOnSpotFastEast
    MoveAction_ExclamationPoint
    MoveAction_Delay4
    EndMovement

    .balign 4, 0
_06D8:
    MoveAction_WalkOnSpotFastEast
    MoveAction_ExclamationPoint
    MoveAction_Delay4
    MoveAction_WalkNormalEast
    EndMovement

    .balign 4, 0
_06EC:
    MoveAction_WalkOnSpotFastEast
    MoveAction_ExclamationPoint
    MoveAction_Delay4
    MoveAction_WalkNormalEast 2
    EndMovement

    .balign 4, 0
_0700:
    MoveAction_WalkOnSpotFastEast
    MoveAction_ExclamationPoint
    MoveAction_Delay4
    MoveAction_WalkNormalEast 3
    EndMovement

    .balign 4, 0
_0714:
    MoveAction_WalkOnSpotFastEast
    MoveAction_ExclamationPoint
    MoveAction_Delay4
    MoveAction_WalkNormalEast 4
    EndMovement

    .byte 39
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0730:
    MoveAction_WalkNormalWest
    MoveAction_WalkOnSpotFastEast
    EndMovement

    .balign 4, 0
_073C:
    MoveAction_WalkNormalWest 2
    MoveAction_WalkOnSpotFastEast
    EndMovement

    .balign 4, 0
_0748:
    MoveAction_WalkNormalWest 3
    MoveAction_WalkOnSpotFastEast
    EndMovement

    .balign 4, 0
_0754:
    MoveAction_WalkNormalWest 4
    MoveAction_WalkOnSpotFastEast
    EndMovement

    .balign 4, 0
_0760:
    MoveAction_WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0768:
    MoveAction_WalkNormalNorth
    EndMovement

_0770:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfUnset FLAG_UNK_0x0082, _07A5
    GoToIfGe VAR_UNK_0x408C, 1, _07A5
    Message 34
    WaitABXPadPress
    CloseMessage
    ApplyMovement 30, _0898
    WaitMovement
    ReleaseAll
    End

_07A5:
    Message 35
    WaitABXPadPress
    CloseMessage
    ApplyMovement 30, _0898
    WaitMovement
    ReleaseAll
    End

_07BA:
    LockAll
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8005, 0x214, _0823
    CallIfEq VAR_0x8005, 0x215, _082F
    CallIfEq VAR_0x8005, 0x216, _083B
    ApplyMovement LOCALID_PLAYER, _0890
    WaitMovement
    Message 33
    CloseMessage
    CallIfEq VAR_0x8005, 0x214, _0847
    CallIfEq VAR_0x8005, 0x215, _085B
    CallIfEq VAR_0x8005, 0x216, _086F
    ReleaseAll
    End

_0823:
    ApplyMovement 30, _08A0
    WaitMovement
    Return

_082F:
    ApplyMovement 30, _08AC
    WaitMovement
    Return

_083B:
    ApplyMovement 30, _08BC
    WaitMovement
    Return

_0847:
    ApplyMovement 30, _08CC
    ApplyMovement LOCALID_PLAYER, _0884
    WaitMovement
    Return

_085B:
    ApplyMovement 30, _08DC
    ApplyMovement LOCALID_PLAYER, _0884
    WaitMovement
    Return

_086F:
    ApplyMovement 30, _08EC
    ApplyMovement LOCALID_PLAYER, _0884
    WaitMovement
    Return

    .balign 4, 0
_0884:
    MoveAction_WalkNormalEast
    MoveAction_WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0890:
    MoveAction_FaceNorth
    EndMovement

    .balign 4, 0
_0898:
    MoveAction_FaceSouth
    EndMovement

    .balign 4, 0
_08A0:
    MoveAction_FaceSouth
    MoveAction_ExclamationPoint
    EndMovement

    .balign 4, 0
_08AC:
    MoveAction_FaceSouth
    MoveAction_ExclamationPoint
    MoveAction_WalkNormalSouth
    EndMovement

    .balign 4, 0
_08BC:
    MoveAction_FaceSouth
    MoveAction_ExclamationPoint
    MoveAction_WalkNormalSouth 2
    EndMovement

    .balign 4, 0
_08CC:
    MoveAction_WalkNormalSouth
    MoveAction_WalkNormalNorth
    MoveAction_WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_08DC:
    MoveAction_WalkNormalSouth
    MoveAction_WalkNormalNorth 2
    MoveAction_WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_08EC:
    MoveAction_WalkNormalSouth
    MoveAction_WalkNormalNorth 3
    MoveAction_WalkOnSpotNormalSouth
    EndMovement

_08FC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferRivalName 0
    Message 17
    CloseMessage
    ApplyMovement 31, _0944
    WaitMovement
    ScrCmd_168 9, 17, 24, 18, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ApplyMovement 31, _094C
    WaitMovement
    RemoveObject 31
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    ReleaseAll
    End

    .balign 4, 0
_0944:
    MoveAction_WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_094C:
    MoveAction_WalkNormalNorth
    EndMovement

_0954:
    LockAll
    ScrCmd_32D
    ScrCmd_331
    SetObjectEventPos 33, 0x12B, 0x215
    ClearFlag FLAG_UNK_0x018C
    AddObject 33
    ScrCmd_062 33
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 0x20B, _099D
    GoToIfEq VAR_0x8005, 0x20C, _09B7
    GoToIfEq VAR_0x8005, 0x20D, _09D1
    End

_099D:
    ApplyMovement 33, _0B58
    ApplyMovement LOCALID_PLAYER, _0BDC
    WaitMovement
    GoTo _09EB
    End

_09B7:
    ApplyMovement 33, _0B64
    ApplyMovement LOCALID_PLAYER, _0BFC
    WaitMovement
    GoTo _09EB
    End

_09D1:
    ApplyMovement 33, _0B70
    ApplyMovement LOCALID_PLAYER, _0C1C
    WaitMovement
    GoTo _09EB
    End

_09EB:
    PlayFanfare SEQ_SE_DP_WALL_HIT2
    Message 0
    CloseMessage
    CallCommonScript 0x7FA
    BufferRivalName 0
    BufferPlayerName 1
    Message 1
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 0x20B, _0A32
    GoToIfEq VAR_0x8005, 0x20C, _0A5E
    GoToIfEq VAR_0x8005, 0x20D, _0A8A
    End

_0A32:
    ApplyMovement 33, _0B7C
    ApplyMovement LOCALID_PLAYER, _0C3C
    WaitMovement
    ApplyMovement 33, _0BB0
    ApplyMovement LOCALID_PLAYER, _0C74
    WaitMovement
    GoTo _0AB6
    End

_0A5E:
    ApplyMovement 33, _0B8C
    ApplyMovement LOCALID_PLAYER, _0C4C
    WaitMovement
    ApplyMovement 33, _0BB8
    ApplyMovement LOCALID_PLAYER, _0C88
    WaitMovement
    GoTo _0AB6
    End

_0A8A:
    ApplyMovement 33, _0BA0
    ApplyMovement LOCALID_PLAYER, _0C64
    WaitMovement
    ApplyMovement 33, _0BB0
    ApplyMovement LOCALID_PLAYER, _0C98
    WaitMovement
    GoTo _0AB6
    End

_0AB6:
    BufferRivalName 0
    Message 2
    CloseMessage
    CallCommonScript 0x7FB
    ScrCmd_32E
    ScrCmd_332
    ScrCmd_066 0x143, 0x20C
    ApplyMovement 241, _0CD4
    WaitMovement
    Message 3
    CloseMessage
    WaitTime 15, VAR_RESULT
    ApplyMovement 32, _0CE4
    ApplyMovement 241, _0CDC
    WaitMovement
    ScrCmd_067
    Message 4
    CloseMessage
    ApplyMovement 32, _0CF4
    ApplyMovement 33, _0BC0
    ApplyMovement LOCALID_PLAYER, _0CAC
    WaitMovement
    RemoveObject 32
    WaitTime 35, VAR_RESULT
    ApplyMovement 33, _0BD4
    ApplyMovement LOCALID_PLAYER, _0CC0
    WaitMovement
    BufferRivalName 0
    Message 5
    CloseMessage
    ApplyMovement 33, _0BCC
    ApplyMovement LOCALID_PLAYER, _0CC8
    WaitMovement
    RemoveObject 33
    SetVar VAR_UNK_0x407A, 1
    ReleaseAll
    End

    .balign 4, 0
_0B58:
    MoveAction_WalkFastNorth 10
    MoveAction_WalkFastEast 4
    EndMovement

    .balign 4, 0
_0B64:
    MoveAction_WalkFastNorth 9
    MoveAction_WalkFastEast 4
    EndMovement

    .balign 4, 0
_0B70:
    MoveAction_WalkFastNorth 8
    MoveAction_WalkFastEast 4
    EndMovement

    .balign 4, 0
_0B7C:
    MoveAction_WalkNormalSouth
    MoveAction_WalkNormalEast
    MoveAction_WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0B8C:
    MoveAction_WalkNormalSouth
    MoveAction_WalkNormalEast 2
    MoveAction_WalkNormalNorth
    MoveAction_WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0BA0:
    MoveAction_WalkNormalNorth
    MoveAction_WalkNormalEast
    MoveAction_WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0BB0:
    MoveAction_WalkNormalEast 19
    EndMovement

    .balign 4, 0
_0BB8:
    MoveAction_WalkNormalEast 18
    EndMovement

    .balign 4, 0
_0BC0:
    MoveAction_Delay8 3
    MoveAction_WalkOnSpotFastWest
    EndMovement

    .balign 4, 0
_0BCC:
    MoveAction_WalkFastWest 12
    EndMovement

    .balign 4, 0
_0BD4:
    MoveAction_WalkFastSouth
    EndMovement

    .balign 4, 0
_0BDC:
    MoveAction_Delay4 10
    MoveAction_Delay2
    MoveAction_Delay1
    MoveAction_LockDir
    MoveAction_WalkFastEast
    MoveAction_UnlockDir
    MoveAction_FaceWest
    EndMovement

    .balign 4, 0
_0BFC:
    MoveAction_Delay4 9
    MoveAction_Delay2
    MoveAction_Delay1
    MoveAction_LockDir
    MoveAction_WalkFastEast
    MoveAction_UnlockDir
    MoveAction_FaceWest
    EndMovement

    .balign 4, 0
_0C1C:
    MoveAction_Delay4 8
    MoveAction_Delay2
    MoveAction_Delay1
    MoveAction_LockDir
    MoveAction_WalkFastEast
    MoveAction_UnlockDir
    MoveAction_FaceWest
    EndMovement

    .balign 4, 0
_0C3C:
    MoveAction_Delay8
    MoveAction_Delay4
    MoveAction_WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0C4C:
    MoveAction_Delay8
    MoveAction_Delay4
    MoveAction_WalkOnSpotNormalSouth
    MoveAction_Delay4
    MoveAction_WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0C64:
    MoveAction_Delay8
    MoveAction_Delay4
    MoveAction_WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0C74:
    MoveAction_WalkNormalSouth
    MoveAction_WalkNormalEast 18
    MoveAction_WalkNormalSouth
    MoveAction_WalkNormalEast
    EndMovement

    .balign 4, 0
_0C88:
    MoveAction_WalkNormalEast 18
    MoveAction_WalkNormalSouth
    MoveAction_WalkNormalEast
    EndMovement

    .balign 4, 0
_0C98:
    MoveAction_WalkNormalNorth
    MoveAction_WalkNormalEast 18
    MoveAction_WalkNormalSouth
    MoveAction_WalkNormalEast
    EndMovement

    .balign 4, 0
_0CAC:
    MoveAction_WalkNormalSouth
    MoveAction_WalkOnSpotNormalEast
    MoveAction_Delay8 2
    MoveAction_WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0CC0:
    MoveAction_WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0CC8:
    MoveAction_Delay8
    MoveAction_WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0CD4:
    MoveAction_WalkNormalEast 4
    EndMovement

    .balign 4, 0
_0CDC:
    MoveAction_WalkNormalWest 4
    EndMovement

    .balign 4, 0
_0CE4:
    MoveAction_WalkNormalWest 3
    MoveAction_WalkNormalNorth
    MoveAction_WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0CF4:
    MoveAction_Delay8 2
    MoveAction_WalkNormalWest 14
    EndMovement

_0D00:
    LockAll
    ScrCmd_189 12, 3
    ScrCmd_188 12, 17
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 0x21C, _0D64
    GoToIfEq VAR_0x8005, 0x21D, _0D7A
    GoToIfEq VAR_0x8005, 0x21E, _0D90
    GoToIfEq VAR_0x8005, 0x21F, _0DA6
    GoToIfEq VAR_0x8005, 0x220, _0DBC
    GoToIfEq VAR_0x8005, 0x221, _0DD2
    End

_0D64:
    SetObjectEventPos 12, 0x130, 0x224
    Call _0DE8
    GoTo _0DF6
    End

_0D7A:
    SetObjectEventPos 12, 0x130, 0x225
    Call _0DE8
    GoTo _0DF6
    End

_0D90:
    SetObjectEventPos 12, 0x130, 0x226
    Call _0DE8
    GoTo _0DF6
    End

_0DA6:
    SetObjectEventPos 12, 0x130, 0x227
    Call _0DE8
    GoTo _0DF6
    End

_0DBC:
    SetObjectEventPos 12, 0x130, 0x228
    Call _0DE8
    GoTo _0DF6
    End

_0DD2:
    SetObjectEventPos 12, 0x130, 0x229
    Call _0DE8
    GoTo _0DF6
    End

_0DE8:
    ClearFlag FLAG_UNK_0x0180
    AddObject 12
    ScrCmd_062 12
    Return

_0DF6:
    ApplyMovement 12, _0E88
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _0EAC
    WaitMovement
    Message 9
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _0E75
    GetPartyCount VAR_RESULT
    GoToIfGe VAR_RESULT, 6, _0E67
    Call _0E4B
    ApplyMovement 12, _0EA0
    WaitMovement
    RemoveObject 12
    GoTo _0E83
    End

_0E4B:
    PlaySound SEQ_FANFA4
    WaitSound
    Message 10
    Message 16
    CloseMessage
    GiveEgg SPECIES_TOGEPI, SPECIAL_METLOC_NAME_CYNTHIA
    SetVar VAR_UNK_0x407A, 5
    Return

_0E67:
    Call _0FBE
    GoTo _0E83
    End

_0E75:
    Call _0FCD
    GoTo _0E83
    End

_0E83:
    ReleaseAll
    End

    .balign 4, 0
_0E88:
    MoveAction_WalkNormalNorth 3
    MoveAction_ExclamationPoint
    MoveAction_WalkNormalNorth 5
    MoveAction_WalkNormalEast 2
    MoveAction_WalkNormalEast
    EndMovement

    .balign 4, 0
_0EA0:
    MoveAction_WalkNormalWest 3
    MoveAction_WalkNormalSouth 9
    EndMovement

    .balign 4, 0
_0EAC:
    MoveAction_WalkOnSpotNormalWest
    EndMovement

_0EB4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfEq VAR_UNK_0x407A, 4, _0ECD
    ReleaseAll
    End

_0ECD:
    Message 14
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _0FAC
    GetPartyCount VAR_RESULT
    GoToIfGe VAR_RESULT, 6, _0F9E
    Call _0E4B
    GetPlayerDir VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0F32
    GoToIfEq VAR_RESULT, 1, _0F4C
    GoToIfEq VAR_RESULT, 2, _0F66
    GoToIfEq VAR_RESULT, 3, _0F78
    End

_0F32:
    ApplyMovement 12, _10BC
    ApplyMovement LOCALID_PLAYER, _10E0
    WaitMovement
    GoTo _0F92
    End

_0F4C:
    ApplyMovement 12, _10BC
    ApplyMovement LOCALID_PLAYER, _10E0
    WaitMovement
    GoTo _0F92
    End

_0F66:
    ApplyMovement 12, _10BC
    WaitMovement
    GoTo _0F92
    End

_0F78:
    ApplyMovement 12, _10C8
    ApplyMovement LOCALID_PLAYER, _10EC
    WaitMovement
    GoTo _0F92
    End

_0F92:
    RemoveObject 12
    GoTo _0FBA
    End

_0F9E:
    Call _0FBE
    GoTo _0FBA
    End

_0FAC:
    Call _0FCD
    GoTo _0FBA
    End

_0FBA:
    ReleaseAll
    End

_0FBE:
    SetVar VAR_UNK_0x407A, 4
    Message 11
    WaitABXPadPress
    CloseMessage
    Return

_0FCD:
    Message 12
    WaitABXPadPress
    CloseMessage
    SetVar VAR_UNK_0x407A, 4
    Return

_0FDC:
    LockAll
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 0x21C, _1034
    GoToIfEq VAR_0x8005, 0x21D, _1046
    GoToIfEq VAR_0x8005, 0x21E, _1058
    GoToIfEq VAR_0x8005, 0x21F, _106A
    GoToIfEq VAR_0x8005, 0x220, _107C
    GoToIfEq VAR_0x8005, 0x221, _108E
    End

_1034:
    ApplyMovement 12, _10B4
    WaitMovement
    GoTo _10A0
    End

_1046:
    ApplyMovement 12, _10B4
    WaitMovement
    GoTo _10A0
    End

_1058:
    ApplyMovement 12, _10B4
    WaitMovement
    GoTo _10A0
    End

_106A:
    ApplyMovement 12, _10B4
    WaitMovement
    GoTo _10A0
    End

_107C:
    ApplyMovement 12, _10B4
    WaitMovement
    GoTo _10A0
    End

_108E:
    ApplyMovement 12, _10B4
    WaitMovement
    GoTo _10A0
    End

_10A0:
    Message 13
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _10D8
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
_10B4:
    MoveAction_WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_10BC:
    MoveAction_WalkNormalWest 3
    MoveAction_WalkNormalSouth 9
    EndMovement

    .balign 4, 0
_10C8:
    MoveAction_WalkNormalSouth
    MoveAction_WalkNormalWest 3
    MoveAction_WalkNormalSouth 8
    EndMovement

    .balign 4, 0
_10D8:
    MoveAction_WalkNormalWest
    EndMovement

    .balign 4, 0
_10E0:
    MoveAction_Delay8
    MoveAction_WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_10EC:
    MoveAction_Delay8 2
    MoveAction_Delay4
    MoveAction_WalkOnSpotNormalWest
    EndMovement
