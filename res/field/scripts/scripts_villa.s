#include "macros/scrcmd.inc"
#include "res/text/bank/villa.h"
#include "generated/string_padding_mode.h"


    ScriptEntry _00B2
    ScriptEntry _029C
    ScriptEntry _030C
    ScriptEntry _0432
    ScriptEntry _049C
    ScriptEntry _050C
    ScriptEntry _0576
    ScriptEntry _05E0
    ScriptEntry _064A
    ScriptEntry _06C4
    ScriptEntry _0734
    ScriptEntry _079E
    ScriptEntry _0815
    ScriptEntry _0944
    ScriptEntry _09AE
    ScriptEntry _0A50
    ScriptEntry _0AF4
    ScriptEntry _0B5C
    ScriptEntry _0BBC
    ScriptEntry _0C24
    ScriptEntry _0C88
    ScriptEntry _0C99
    ScriptEntry _0CAA
    ScriptEntry _0CBB
    ScriptEntry _0CCC
    ScriptEntry _0CDD
    ScriptEntry _0CEE
    ScriptEntry _0D03
    ScriptEntry _0D14
    ScriptEntry _0D30
    ScriptEntry _0D41
    ScriptEntry _0D55
    ScriptEntry _0DD1
    ScriptEntry _0DE2
    ScriptEntry _0DF3
    ScriptEntry _0E08
    ScriptEntry _0E19
    ScriptEntry _0E2A
    ScriptEntry _0E3B
    ScriptEntry _0E4C
    ScriptEntry _0E65
    ScriptEntry _0EB4
    ScriptEntry _15F3
    ScriptEntry _1624
    ScriptEntryEnd

_00B2:
    InitPersistedMapFeaturesForVilla
    GetPlayerGender VAR_MAP_LOCAL_0
    CallIfEq VAR_MAP_LOCAL_0, GENDER_MALE, _01EF
    CallIfEq VAR_MAP_LOCAL_0, GENDER_FEMALE, _01F7
    GoToIfSet FLAG_VILLA_VISITOR_OUTSIDE, _01ED
    SetFlag FLAG_UNK_0x02A7
    SetFlag FLAG_UNK_0x02A8
    SetFlag FLAG_UNK_0x02A9
    SetFlag FLAG_UNK_0x02AB
    SetFlag FLAG_UNK_0x02AC
    SetFlag FLAG_UNK_0x02AE
    SetFlag FLAG_UNK_0x02B0
    SetFlag FLAG_UNK_0x02B1
    SetFlag FLAG_UNK_0x02B3
    SetFlag FLAG_UNK_0x02B4
    SetFlag FLAG_UNK_0x02B6
    SetFlag FLAG_UNK_0x02B7
    SetFlag FLAG_UNK_0x02B8
    SetFlag FLAG_UNK_0x02B9
    GoToIfEq VAR_RESORT_VILLA_VISITOR, 0xFF, _01FF
    SetVar VAR_MAP_LOCAL_F, 0x404E
    CallIfEq VAR_RESORT_VILLA_VISITOR, 0, _0201
    CallIfEq VAR_RESORT_VILLA_VISITOR, 1, _0207
    CallIfEq VAR_RESORT_VILLA_VISITOR, 2, _020D
    CallIfEq VAR_RESORT_VILLA_VISITOR, 3, _021E
    CallIfEq VAR_RESORT_VILLA_VISITOR, 4, _0224
    CallIfEq VAR_RESORT_VILLA_VISITOR, 5, _0235
    CallIfEq VAR_RESORT_VILLA_VISITOR, 6, _0246
    CallIfEq VAR_RESORT_VILLA_VISITOR, 7, _0248
    CallIfEq VAR_RESORT_VILLA_VISITOR, 8, _0259
    CallIfEq VAR_RESORT_VILLA_VISITOR, 9, _025B
    CallIfEq VAR_RESORT_VILLA_VISITOR, 10, _026C
    CallIfEq VAR_RESORT_VILLA_VISITOR, 11, _026E
    CallIfEq VAR_RESORT_VILLA_VISITOR, 12, _0274
    CallIfEq VAR_RESORT_VILLA_VISITOR, 13, _0276
    CallIfEq VAR_RESORT_VILLA_VISITOR, 14, _0280
    End

_01ED:
    End

_01EF:
    SetVar VAR_OBJ_GFX_ID_1, 97
    Return

_01F7:
    SetVar VAR_OBJ_GFX_ID_1, 0
    Return

_01FF:
    End

_0201:
    ClearFlag FLAG_UNK_0x02A7
    Return

_0207:
    ClearFlag FLAG_UNK_0x02A8
    Return

_020D:
    GoToIfUnset FLAG_VILLA_VISITOR_INSIDE, _029A
    ClearFlag FLAG_UNK_0x02A9
    Return

_021E:
    ClearFlag FLAG_UNK_0x02AB
    Return

_0224:
    GoToIfUnset FLAG_VILLA_VISITOR_INSIDE, _029A
    ClearFlag FLAG_UNK_0x02AC
    Return

_0235:
    GoToIfUnset FLAG_VILLA_VISITOR_INSIDE, _029A
    ClearFlag FLAG_UNK_0x02AE
    Return

_0246:
    Return

_0248:
    GoToIfUnset FLAG_VILLA_VISITOR_INSIDE, _029A
    ClearFlag FLAG_UNK_0x02B1
    Return

_0259:
    Return

_025B:
    GoToIfUnset FLAG_VILLA_VISITOR_INSIDE, _029A
    ClearFlag FLAG_UNK_0x02B4
    Return

_026C:
    Return

_026E:
    ClearFlag FLAG_UNK_0x02B7
    Return

_0274:
    Return

_0276:
    ClearFlag FLAG_UNK_0x02B9
    ClearFlag FLAG_UNK_0x02B7
    Return

_0280:
    SetObjectEventPos 7, 6, 8
    SetObjectEventPos 10, 7, 8
    ClearFlag FLAG_UNK_0x02B1
    ClearFlag FLAG_UNK_0x02B6
    Return

_029A:
    Return

_029C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferRivalName 0
    BufferPlayerName 1
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 0, _02F3
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 1, _02F8
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 2, _02FD
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 3, _0302
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 4, _0307
    GoTo _0AEC
    End

_02F3:
    Message 15
    Return

_02F8:
    Message 16
    Return

_02FD:
    Message 17
    Return

_0302:
    Message 18
    Return

_0307:
    Message 19
    Return

_030C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 1
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 0, _0360
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 1, _0380
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 2, _03A0
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 3, _03C0
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 4, _03E0
    GoTo _0AEC
    End

_0360:
    GetPlayerGender VAR_MAP_LOCAL_0
    CallIfEq VAR_MAP_LOCAL_0, GENDER_MALE, _0400
    CallIfEq VAR_MAP_LOCAL_0, GENDER_FEMALE, _0405
    Return

_0380:
    GetPlayerGender VAR_MAP_LOCAL_0
    CallIfEq VAR_MAP_LOCAL_0, GENDER_MALE, _040A
    CallIfEq VAR_MAP_LOCAL_0, GENDER_FEMALE, _040F
    Return

_03A0:
    GetPlayerGender VAR_MAP_LOCAL_0
    CallIfEq VAR_MAP_LOCAL_0, GENDER_MALE, _0414
    CallIfEq VAR_MAP_LOCAL_0, GENDER_FEMALE, _0419
    Return

_03C0:
    GetPlayerGender VAR_MAP_LOCAL_0
    CallIfEq VAR_MAP_LOCAL_0, GENDER_MALE, _041E
    CallIfEq VAR_MAP_LOCAL_0, GENDER_FEMALE, _0423
    Return

_03E0:
    GetPlayerGender VAR_MAP_LOCAL_0
    CallIfEq VAR_MAP_LOCAL_0, GENDER_MALE, _0428
    CallIfEq VAR_MAP_LOCAL_0, GENDER_FEMALE, _042D
    Return

_0400:
    Message 20
    Return

_0405:
    Message 25
    Return

_040A:
    Message 21
    Return

_040F:
    Message 26
    Return

_0414:
    Message 22
    Return

_0419:
    Message 27
    Return

_041E:
    Message 23
    Return

_0423:
    Message 28
    Return

_0428:
    Message 24
    Return

_042D:
    Message 29
    Return

_0432:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 0, _0483
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 1, _0488
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 2, _048D
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 3, _0492
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 4, _0497
    GoTo _0AEC
    End

_0483:
    Message 30
    Return

_0488:
    Message 31
    Return

_048D:
    Message 32
    Return

_0492:
    Message 33
    Return

_0497:
    Message 34
    Return

_049C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferRivalName 0
    BufferPlayerName 1
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 0, _04F3
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 1, _04F8
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 2, _04FD
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 3, _0502
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 4, _0507
    GoTo _0AEC
    End

_04F3:
    Message 35
    Return

_04F8:
    Message 36
    Return

_04FD:
    Message 37
    Return

_0502:
    Message 38
    Return

_0507:
    Message 39
    Return

_050C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 0, _055D
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 1, _0562
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 2, _0567
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 3, _056C
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 4, _0571
    GoTo _0AEC
    End

_055D:
    Message 40
    Return

_0562:
    Message 41
    Return

_0567:
    Message 42
    Return

_056C:
    Message 43
    Return

_0571:
    Message 44
    Return

_0576:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 0, _05C7
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 1, _05CC
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 2, _05D1
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 3, _05D6
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 4, _05DB
    GoTo _0AEC
    End

_05C7:
    Message 45
    Return

_05CC:
    Message 46
    Return

_05D1:
    Message 47
    Return

_05D6:
    Message 48
    Return

_05DB:
    Message 49
    Return

_05E0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 0, _0631
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 1, _0636
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 2, _063B
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 3, _0640
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 4, _0645
    GoTo _0AEC
    End

_0631:
    Message 50
    Return

_0636:
    Message 51
    Return

_063B:
    Message 52
    Return

_0640:
    Message 53
    Return

_0645:
    Message 54
    Return

_064A:
    GoToIfEq VAR_RESORT_VILLA_VISITOR, 14, _0A50
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 1
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 0, _06AB
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 1, _06B0
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 2, _06B5
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 3, _06BA
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 4, _06BF
    GoTo _0AEC
    End

_06AB:
    Message 55
    Return

_06B0:
    Message 56
    Return

_06B5:
    Message 57
    Return

_06BA:
    Message 58
    Return

_06BF:
    Message 59
    Return

_06C4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 0, _0715
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 1, _071D
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 2, _0722
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 3, _072A
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 4, _072F
    GoTo _0AEC
    End

_0715:
    BufferRivalName 0
    Message 60
    Return

_071D:
    Message 61
    Return

_0722:
    BufferRivalName 0
    Message 62
    Return

_072A:
    Message 63
    Return

_072F:
    Message 64
    Return

_0734:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 0, _0785
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 1, _078A
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 2, _078F
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 3, _0794
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 4, _0799
    GoTo _0AEC
    End

_0785:
    Message 65
    Return

_078A:
    Message 66
    Return

_078F:
    Message 67
    Return

_0794:
    Message 68
    Return

_0799:
    Message 69
    Return

_079E:
    GoToIfEq VAR_RESORT_VILLA_VISITOR, 14, _0A50
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 0, _07FC
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 1, _0801
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 2, _0806
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 3, _080B
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 4, _0810
    GoTo _0AEC
    End

_07FC:
    Message 70
    Return

_0801:
    Message 71
    Return

_0806:
    Message 72
    Return

_080B:
    Message 73
    Return

_0810:
    Message 74
    Return

_0815:
    GoToIfEq VAR_RESORT_VILLA_VISITOR, 13, _088C
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 0, _0873
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 1, _0878
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 2, _087D
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 3, _0882
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 4, _0887
    GoTo _0AEC
    End

_0873:
    Message 75
    Return

_0878:
    Message 76
    Return

_087D:
    Message 77
    Return

_0882:
    Message 78
    Return

_0887:
    Message 79
    Return

_088C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 0, _08DB
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 1, _08E2
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 2, _08E9
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 3, _0900
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 4, _0917
    GoTo _0AEC
    End

_08DB:
    FacePlayer
    Message 86
    Return

_08E2:
    FacePlayer
    Message 88
    Return

_08E9:
    ApplyMovement 11, _0930
    ApplyMovement 13, _093C
    WaitMovement
    Message 89
    Return

_0900:
    ApplyMovement 11, _0930
    ApplyMovement 13, _093C
    WaitMovement
    Message 90
    Return

_0917:
    ApplyMovement 11, _0930
    ApplyMovement 13, _093C
    WaitMovement
    Message 91
    Return

    .balign 4, 0
_0930:
    Delay8
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_093C:
    WalkOnSpotNormalWest
    EndMovement

_0944:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 0, _0995
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 1, _099A
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 2, _099F
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 3, _09A4
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 4, _09A9
    GoTo _0AEC
    End

_0995:
    Message 80
    Return

_099A:
    Message 81
    Return

_099F:
    Message 82
    Return

_09A4:
    Message 83
    Return

_09A9:
    Message 84
    Return

_09AE:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 0, _09FD
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 1, _0A04
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 2, _0A0B
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 3, _0A22
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 4, _0A39
    GoTo _0AEC
    End

_09FD:
    FacePlayer
    Message 85
    Return

_0A04:
    FacePlayer
    Message 87
    Return

_0A0B:
    ApplyMovement 11, _0930
    ApplyMovement 13, _093C
    WaitMovement
    Message 89
    Return

_0A22:
    ApplyMovement 11, _0930
    ApplyMovement 13, _093C
    WaitMovement
    Message 90
    Return

_0A39:
    ApplyMovement 11, _0930
    ApplyMovement 13, _093C
    WaitMovement
    Message 91
    Return

_0A50:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    BufferPlayerName 1
    ApplyMovement 10, _0AE0
    ApplyMovement 7, _0AD8
    WaitMovement
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 0, _0AB4
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 1, _0AB9
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 2, _0ABE
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 3, _0AC3
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 4, _0AC8
    GoTo _0AEC
    End

_0AB4:
    Message 92
    Return

_0AB9:
    Message 93
    Return

_0ABE:
    Message 94
    Return

_0AC3:
    Message 95
    Return

_0AC8:
    GoToIfUnset FLAG_VILLA_FURNITURE_TEA_SET, _0AB4
    Message 96
    Return

    .balign 4, 0
_0AD8:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0AE0:
    Delay8
    WalkOnSpotNormalWest
    EndMovement

_0AEC:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0AF4:
    LockAll
    PlayFanfare SEQ_SE_DP_DOOR_OPEN
    ClearFlag FLAG_UNK_0x02B0
    SetObjectEventPos 6, 11, 11
    SetObjectEventMovementType 6, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir 6, DIR_NORTH
    AddObject 6
    WaitFanfare SEQ_SE_DP_DOOR_OPEN
    ApplyMovement LOCALID_PLAYER, _0B3C
    ApplyMovement 6, _0B4C
    WaitMovement
    SetFlag FLAG_VILLA_VISITOR_OUTSIDE
    SetVar VAR_MAP_LOCAL_F, 0
    ReleaseAll
    End

    .balign 4, 0
_0B3C:
    WalkOnSpotNormalSouth
    Delay8 5
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0B4C:
    WalkNormalWest 2
    WalkNormalNorth 5
    WalkNormalWest 3
    EndMovement

_0B5C:
    LockAll
    PlayFanfare SEQ_SE_DP_DOOR_OPEN
    ClearFlag FLAG_UNK_0x02B3
    SetObjectEventPos 9, 11, 11
    SetObjectEventMovementType 9, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir 9, DIR_NORTH
    AddObject 9
    WaitFanfare SEQ_SE_DP_DOOR_OPEN
    ApplyMovement LOCALID_PLAYER, _0BAC
    ApplyMovement 9, _0BA4
    WaitMovement
    SetFlag FLAG_VILLA_VISITOR_OUTSIDE
    SetVar VAR_MAP_LOCAL_F, 0
    ReleaseAll
    End

    .balign 4, 0
_0BA4:
    WalkNormalEast 8
    EndMovement

    .balign 4, 0
_0BAC:
    WalkOnSpotNormalSouth
    Delay8 3
    WalkOnSpotNormalEast
    EndMovement

_0BBC:
    LockAll
    PlayFanfare SEQ_SE_DP_DOOR_OPEN
    ClearFlag FLAG_UNK_0x02B6
    SetObjectEventPos 10, 11, 11
    SetObjectEventMovementType 10, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir 10, DIR_NORTH
    AddObject 10
    WaitFanfare SEQ_SE_DP_DOOR_OPEN
    ApplyMovement LOCALID_PLAYER, _0C14
    ApplyMovement 10, _0C04
    WaitMovement
    SetFlag FLAG_VILLA_VISITOR_OUTSIDE
    SetVar VAR_MAP_LOCAL_F, 0
    ReleaseAll
    End

    .balign 4, 0
_0C04:
    WalkNormalWest 2
    WalkNormalNorth 3
    WalkNormalWest 2
    EndMovement

    .balign 4, 0
_0C14:
    WalkOnSpotNormalSouth
    Delay8 4
    WalkOnSpotNormalWest
    EndMovement

_0C24:
    LockAll
    PlayFanfare SEQ_SE_DP_DOOR_OPEN
    ClearFlag FLAG_UNK_0x02B8
    SetObjectEventPos 12, 11, 11
    SetObjectEventMovementType 12, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir 12, DIR_NORTH
    AddObject 12
    WaitFanfare SEQ_SE_DP_DOOR_OPEN
    ApplyMovement LOCALID_PLAYER, _0C78
    ApplyMovement 12, _0C6C
    WaitMovement
    SetFlag FLAG_VILLA_VISITOR_OUTSIDE
    SetVar VAR_MAP_LOCAL_F, 0
    ReleaseAll
    End

    .balign 4, 0
_0C6C:
    WalkNormalWest 8
    WalkNormalNorth 6
    EndMovement

    .balign 4, 0
_0C78:
    WalkOnSpotNormalSouth
    Delay8 5
    WalkOnSpotNormalWest
    EndMovement

_0C88:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 99
    GoTo _0E5D
    End

_0C99:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 100
    GoTo _0E5D
    End

_0CAA:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 101
    GoTo _0E5D
    End

_0CBB:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 102
    GoTo _0E5D
    End

_0CCC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 103
    GoTo _0E5D
    End

_0CDD:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 104
    GoTo _0E5D
    End

_0CEE:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    PlayMusic SEQ_PL_AUDIO
    Message 105
    GoTo _0E5D
    End

_0D03:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 106
    GoTo _0E5D
    End

_0D14:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfSet FLAG_VILLA_FURNITURE_MUSIC_BOX, _0D63
    Message 107
    GoTo _0E5D
    End

_0D30:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 108
    GoTo _0E5D
    End

_0D41:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    BufferPlayerName 0
    Message 109
    GoTo _0E5D
    End

_0D55:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoTo _0D63
    End

_0D63:
    Message 110
    GoTo _0D6E
    End

_0D6E:
    GetCurrentBGM VAR_0x8004
    SetScene22
    SetVar VAR_0x8007, 0
    WaitTime 1, VAR_RESULT
    GoTo _0D88
    End

_0D88:
    AddVar VAR_0x8007, 1
    WaitTime 1, VAR_RESULT
    Dummy1F9 VAR_0x8007
    ScrCmd_2FC VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0DC2
    Dummy1F9 VAR_0x8007
    GoToIfEq VAR_0x8007, 0x258, _0DC2
    GoTo _0D88
    End

_0DC2:
    SetFieldScene VAR_0x8004
    CloseMessage
    ReleaseAll
    End

    .byte 44
    .byte 0
    .byte 118
    .byte 27
    .byte 0

_0DD1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 111
    GoTo _0E5D
    End

_0DE2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 112
    GoTo _0E5D
    End

_0DF3:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    PlayMusic SEQ_PL_PIANO
    Message 113
    GoTo _0E5D
    End

_0E08:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 114
    GoTo _0E5D
    End

_0E19:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 115
    GoTo _0E5D
    End

_0E2A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 116
    GoTo _0E5D
    End

_0E3B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 117
    GoTo _0E5D
    End

_0E4C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 118
    GoTo _0E5D
    End

_0E5D:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0E65:
    LockAll
    SetVar VAR_UNK_0x40A1, 1
    ShowMoney 21, 1
    Message Villa_Text_TheOriginalOwnersFurnitureIsGone
    InitLocalTextListMenu 1, 1, 0, VAR_0x8002
    AddListMenuEntry 189, 0
    ShowListMenu
    GoToIfNe VAR_0x8002, 0, _0EA7
    Call Villa_BuyFurniture
    CloseMessage
    Call _1092
    ReleaseAll
    End

_0EA7:
    Message Villa_Text_GoAheadOrderATableFromThisOrderForm
    WaitABXPadPress
    CloseMessage
    HideMoney
    ReleaseAll
    End

_0EB4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ShowMoney 21, 1
    Message Villa_Text_GoAheadOrderATableFromThisOrderForm
    InitLocalTextListMenu 1, 1, 0, VAR_0x8002
    AddListMenuEntry 189, 0
    ShowListMenu
    GoToIfNe VAR_0x8002, 0, _1478
    Call Villa_BuyFurniture
    CloseMessage
    Call _1092
    ReleaseAll
    End

_0EF6:
    InitLocalTextListMenu 1, 1, 0, VAR_0x8002
    Call _19E4
    Call _1A05
    Call _1A26
    Call _1A47
    Call _1A68
    Call _1A89
    Call _1AAA
    Call _1ACB
    Call _1AEC
    Call _1B0D
    Call _1B2E
    Call _1B4F
    Call _1B7B
    Call _1BAF
    Call _1BE3
    Call _1C17
    Call _1C4B
    Call _1C7F
    Call _1CB3
    Call _1CDF
    ShowListMenuSetWidth 18
    Return

Villa_BuyFurniture:
    PlayFanfare SEQ_SE_DP_REGI
    CallIfEq VAR_0x8002, 0, Villa_BuyFurniture_Table
    CallIfEq VAR_0x8002, 1, Villa_BuyFurniture_BigSofa
    CallIfEq VAR_0x8002, 2, Villa_BuyFurniture_SmallSofa
    CallIfEq VAR_0x8002, 3, Villa_BuyFurniture_Bed
    CallIfEq VAR_0x8002, 4, Villa_BuyFurniture_NightTable
    CallIfEq VAR_0x8002, 5, Villa_BuyFurniture_TV
    CallIfEq VAR_0x8002, 6, Villa_BuyFurniture_AudioSystem
    CallIfEq VAR_0x8002, 7, Villa_BuyFurniture_Bookshelf
    CallIfEq VAR_0x8002, 8, Villa_BuyFurniture_Rack
    CallIfEq VAR_0x8002, 9, Villa_BuyFurniture_Houseplant
    CallIfEq VAR_0x8002, 10, Villa_BuyFurniture_PCDesk
    CallIfEq VAR_0x8002, 11, Villa_BuyFurniture_MusicBox
    CallIfEq VAR_0x8002, 12, Villa_BuyFurniture_PokemonBust
    CallIfEq VAR_0x8002, 13, Villa_BuyFurniture_PokemonBustSilver
    CallIfEq VAR_0x8002, 14, Villa_BuyFurniture_Piano
    CallIfEq VAR_0x8002, 15, Villa_BuyFurniture_GuestSet
    CallIfEq VAR_0x8002, 16, Villa_BuyFurniture_WallClock
    CallIfEq VAR_0x8002, 17, Villa_BuyFurniture_Masterpiece
    CallIfEq VAR_0x8002, 18, Villa_BuyFurniture_TeaSet
    CallIfEq VAR_0x8002, 19, Villa_BuyFurniture_Chandelier
    UpdateMoneyDisplay
    WaitFanfare SEQ_SE_DP_REGI
    HideMoney
    ScrCmd_30D VAR_0x8002
    Return

_1092:
    ClearFlag FLAG_UNK_0x02C5
    ClearFlag FLAG_UNK_0x02C7
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_VILLA, 0, 10, 6, 1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq VAR_0x8002, 0, _1485
    GoToIfNe VAR_0x8002, 0, _1514
    End

_10DA:
    Call _2209
    GoToIfEq VAR_RESORT_VILLA_VISITOR, 0, _1103
    SetObjectEventPos 1, 11, 11
    SetObjectEventMovementType 1, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir 1, DIR_NORTH
    Return

_1103:
    SetObjectEventPos 1, 10, 8
    SetObjectEventMovementType 1, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir 1, DIR_NORTH
    ClearFlag FLAG_UNK_0x02A7
    AddObject 1
    Return

_1121:
    Call _2209
    GoToIfEq VAR_RESORT_VILLA_VISITOR, 1, _114A
    SetObjectEventPos 0, 11, 11
    SetObjectEventMovementType 0, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir 0, DIR_NORTH
    Return

_114A:
    SetObjectEventPos 0, 10, 8
    SetObjectEventMovementType 0, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir 0, DIR_NORTH
    ClearFlag FLAG_UNK_0x02A8
    AddObject 0
    Return

_1168:
    Call _2209
    GoToIfEq VAR_RESORT_VILLA_VISITOR, 2, _1199
    GoTo _1183
    End

_1183:
    SetObjectEventPos 2, 11, 11
    SetObjectEventMovementType 2, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir 2, DIR_NORTH
    Return

_1199:
    GoToIfUnset FLAG_VILLA_VISITOR_INSIDE, _1183
    SetObjectEventPos 2, 10, 8
    SetObjectEventMovementType 2, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir 2, DIR_NORTH
    ClearFlag FLAG_UNK_0x02A9
    AddObject 2
    Return

_11C2:
    Call _2209
    GoToIfEq VAR_RESORT_VILLA_VISITOR, 5, _11F3
    GoTo _11DD
    End

_11DD:
    SetObjectEventPos 5, 11, 11
    SetObjectEventMovementType 5, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir 5, DIR_NORTH
    Return

_11F3:
    GoToIfUnset FLAG_VILLA_VISITOR_INSIDE, _11DD
    SetObjectEventPos 5, 10, 8
    SetObjectEventMovementType 5, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir 5, DIR_NORTH
    ClearFlag FLAG_UNK_0x02AE
    AddObject 5
    Return

_121C:
    Call _2209
    GoToIfEq VAR_RESORT_VILLA_VISITOR, 12, _1245
    SetObjectEventPos 12, 11, 11
    SetObjectEventMovementType 12, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir 12, DIR_NORTH
    Return

_1245:
    SetObjectEventPos 12, 10, 8
    SetObjectEventMovementType 12, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir 12, DIR_NORTH
    ClearFlag FLAG_UNK_0x02B8
    AddObject 12
    Return

_1263:
    CallIfNe VAR_RESORT_VILLA_VISITOR, 0, _12A3
    SetFlag FLAG_VILLA_VISITOR_INSIDE
    SetVar VAR_RESORT_VILLA_VISITOR, 0xFF
    ApplyMovement LOCALID_PLAYER, _1454
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message 9
    CloseMessage
    ApplyMovement 1, _1468
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject 1
    Return

_12A3:
    ClearFlag FLAG_UNK_0x02A7
    AddObject 1
    PlayFanfare SEQ_SE_DP_DOOR_OPEN
    WaitFanfare SEQ_SE_DP_DOOR_OPEN
    ApplyMovement 1, _145C
    WaitMovement
    Return

_12BF:
    CallIfNe VAR_RESORT_VILLA_VISITOR, 1, _1316
    SetFlag FLAG_VILLA_VISITOR_INSIDE
    SetVar VAR_RESORT_VILLA_VISITOR, 1
    BufferRivalName 0
    BufferPlayerName 1
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _12FC
    GoToIfEq VAR_RESULT, GENDER_FEMALE, _1307
    End

_12FC:
    Message 10
    GoTo _1312
    End

_1307:
    Message 11
    GoTo _1312
    End

_1312:
    CloseMessage
    Return

_1316:
    ClearFlag FLAG_UNK_0x02A8
    AddObject 0
    PlayFanfare SEQ_SE_DP_DOOR_OPEN
    WaitFanfare SEQ_SE_DP_DOOR_OPEN
    ApplyMovement 0, _145C
    WaitMovement
    Return

_1332:
    CallIfNe VAR_RESORT_VILLA_VISITOR, 2, _1374
    CallIfEq VAR_RESORT_VILLA_VISITOR, 2, _1367
    SetFlag FLAG_VILLA_VISITOR_INSIDE
    SetFlag FLAG_UNK_0x02AA
    SetVar VAR_RESORT_VILLA_VISITOR, 2
    BufferRivalName 0
    BufferPlayerName 1
    Message 12
    CloseMessage
    Return

_1367:
    GoToIfUnset FLAG_VILLA_VISITOR_INSIDE, _1374
    Return

_1374:
    ClearFlag FLAG_UNK_0x02A9
    AddObject 2
    PlayFanfare SEQ_SE_DP_DOOR_OPEN
    WaitFanfare SEQ_SE_DP_DOOR_OPEN
    ApplyMovement 2, _145C
    WaitMovement
    Return

_1390:
    CallIfNe VAR_RESORT_VILLA_VISITOR, 5, _13D2
    CallIfEq VAR_RESORT_VILLA_VISITOR, 5, _13C5
    SetFlag FLAG_VILLA_VISITOR_INSIDE
    SetFlag FLAG_UNK_0x02B2
    SetVar VAR_RESORT_VILLA_VISITOR, 5
    BufferRivalName 0
    BufferPlayerName 1
    Message 13
    CloseMessage
    Return

_13C5:
    GoToIfUnset FLAG_VILLA_VISITOR_INSIDE, _13D2
    Return

_13D2:
    ClearFlag FLAG_UNK_0x02AE
    AddObject 5
    PlayFanfare SEQ_SE_DP_DOOR_OPEN
    WaitFanfare SEQ_SE_DP_DOOR_OPEN
    ApplyMovement 5, _145C
    WaitMovement
    Return

_13EE:
    CallIfNe VAR_RESORT_VILLA_VISITOR, 12, _1436
    CallIfEq VAR_RESORT_VILLA_VISITOR, 12, _1429
    SetFlag FLAG_VILLA_VISITOR_INSIDE
    SetVar VAR_RESORT_VILLA_VISITOR, 12
    SetVar VAR_MAP_LOCAL_F, 0
    SetFlag FLAG_VILLA_VISITOR_OUTSIDE
    BufferRivalName 0
    BufferPlayerName 1
    Message 14
    CloseMessage
    Return

_1429:
    GoToIfUnset FLAG_VILLA_VISITOR_OUTSIDE, _1436
    Return

_1436:
    ClearFlag FLAG_UNK_0x02B8
    AddObject 12
    PlayFanfare SEQ_SE_DP_DOOR_OPEN
    WaitFanfare SEQ_SE_DP_DOOR_OPEN
    ApplyMovement 12, _145C
    WaitMovement
    Return

    .balign 4, 0
_1454:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_145C:
    WalkNormalWest
    WalkNormalNorth 3
    EndMovement

    .balign 4, 0
_1468:
    WalkNormalSouth 3
    WalkNormalEast
    WalkOnSpotNormalSouth
    EndMovement

_1478:
    Message Villa_Text_GoAheadOrderATableFromThisOrderForm
    WaitABXPadPress
    CloseMessage
    HideMoney
    ReleaseAll
    End

_1485:
    Message Villa_Text_ThankYouForWaitingImDeliveringYourOrder_WeHopeYoullKeepOrdering
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    RemoveObject 15
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ApplyMovement 14, _14FC
    ApplyMovement LOCALID_PLAYER, _14F0
    WaitMovement
    Message 4
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    RemoveObject 14
    Call _156D
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    Call _15B0
    SetVar VAR_UNK_0x40A1, 2
    Return

    .balign 4, 0
_14F0:
    Delay8
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_14FC:
    WalkOnSpotNormalEast
    EndMovement

    .byte 13
    .byte 0
    .byte 3
    .byte 0
    .byte 15
    .byte 0
    .byte 1
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_1514:
    Call Villa_CheckIfHasAllFurniture
    GoToIfEq VAR_RESULT, TRUE, Villa_DeliveryGuy_HasAllFurniture
    Message Villa_Text_ThankYouForWaitingImDeliveringYourOrder
    GoTo _1532
    End

_1532:
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    RemoveObject 15
    Call _156D
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    Call _15B0
    Return

Villa_DeliveryGuy_HasAllFurniture:
    IncrementTrainerScore TRAINER_SCORE_EVENT_UNK_49
    Message Villa_Text_ThankYouForWaitingImDeliveringYourOrder_AlsoAndIHateToSayThisBut
    GoTo _1532
    End

_156D:
    CallIfEq VAR_0x8002, 0, _10DA
    CallIfEq VAR_0x8002, 2, _1121
    CallIfEq VAR_0x8002, 7, _1168
    CallIfEq VAR_0x8002, 9, _11C2
    CallIfEq VAR_0x8002, 14, _121C
    Return

_15B0:
    CallIfEq VAR_0x8002, 0, _1263
    CallIfEq VAR_0x8002, 2, _12BF
    CallIfEq VAR_0x8002, 7, _1332
    CallIfEq VAR_0x8002, 9, _1390
    CallIfEq VAR_0x8002, 14, _13EE
    Return

_15F3:
    LockAll
    ApplyMovement 14, _1614
    WaitMovement
    Message Villa_Text_WhoaWhoaDontGoYet
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _161C
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
_1614:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_161C:
    WalkNormalNorth
    EndMovement

_1624:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ShowMoney 21, 1
    BufferPlayerName 1
    Message 119
    Call Villa_CheckIfHasAllFurniture
    GoToIfEq VAR_RESULT, TRUE, _1651
    GoTo _165C
    End

_1651:
    Message Villa_Text_ThisIsTheListOfPurchasedFurniture
    GoTo _1667
    End

_165C:
    Message 120
    GoTo _1667
    End

_1667:
    Call _0EF6
    SetVar VAR_0x8003, 1
    CallIfEq VAR_0x8002, 0, _1EA5
    CallIfEq VAR_0x8002, 1, _1EB2
    CallIfEq VAR_0x8002, 2, _1EBF
    CallIfEq VAR_0x8002, 3, _1ECC
    CallIfEq VAR_0x8002, 4, _1ED9
    CallIfEq VAR_0x8002, 5, _1EE6
    CallIfEq VAR_0x8002, 6, _1EF3
    CallIfEq VAR_0x8002, 7, _1F00
    CallIfEq VAR_0x8002, 8, _1F0D
    CallIfEq VAR_0x8002, 9, _1F1A
    CallIfEq VAR_0x8002, 10, _1F27
    CallIfEq VAR_0x8002, 11, _1F34
    CallIfEq VAR_0x8002, 12, _1F41
    CallIfEq VAR_0x8002, 13, _1F4E
    CallIfEq VAR_0x8002, 14, _1F5B
    CallIfEq VAR_0x8002, 15, _1F68
    CallIfEq VAR_0x8002, 16, _1F75
    CallIfEq VAR_0x8002, 17, _1F82
    CallIfEq VAR_0x8002, 18, _1F8F
    CallIfEq VAR_0x8002, 19, _1F9C
    GoToIfEq VAR_0x8002, -2, _18DE
    GoToIfEq VAR_0x8003, FALSE, _18C8
    Message 121
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _18DE
    CallIfEq VAR_0x8002, 0, Villa_CheckMoney_Table
    CallIfEq VAR_0x8002, 1, Villa_CheckMoney_BigSofa
    CallIfEq VAR_0x8002, 2, Villa_CheckMoney_SmallSofa
    CallIfEq VAR_0x8002, 3, Villa_CheckMoney_Bed
    CallIfEq VAR_0x8002, 4, Villa_CheckMoney_NightTable
    CallIfEq VAR_0x8002, 5, Villa_CheckMoney_TV
    CallIfEq VAR_0x8002, 6, Villa_CheckMoney_AudioSystem
    CallIfEq VAR_0x8002, 7, Villa_CheckMoney_Bookshelf
    CallIfEq VAR_0x8002, 8, Villa_CheckMoney_Rack
    CallIfEq VAR_0x8002, 9, Villa_CheckMoney_Houseplant
    CallIfEq VAR_0x8002, 10, Villa_CheckMoney_PCDesk
    CallIfEq VAR_0x8002, 11, Villa_CheckMoney_MusicBox
    CallIfEq VAR_0x8002, 12, Villa_CheckMoney_PokemonBust
    CallIfEq VAR_0x8002, 13, Villa_CheckMoney_PokemonBustSilver
    CallIfEq VAR_0x8002, 14, Villa_CheckMoney_Piano
    CallIfEq VAR_0x8002, 15, Villa_CheckMoney_GuestSet
    CallIfEq VAR_0x8002, 16, Villa_CheckMoney_WallClock
    CallIfEq VAR_0x8002, 17, Villa_CheckMoney_Masterpiece
    CallIfEq VAR_0x8002, 18, Villa_CheckMoney_TeaSet
    CallIfEq VAR_0x8002, 19, Villa_CheckMoney_Chandelier
    GoToIfEq VAR_0x8003, FALSE, _18D3
    Call Villa_BuyFurniture
    CloseMessage
    Call _1092
    ReleaseAll
    End

_18C8:
    Message 122
    GoTo _18E6
    End

_18D3:
    Message 123
    GoTo _18E6
    End

_18DE:
    GoTo _18F0
    End

_18E6:
    WaitABXPadPress
    GoTo _18F0
    End

_18F0:
    CloseMessage
    HideMoney
    ReleaseAll
    End

Villa_CheckIfHasAllFurniture:
    GoToIfUnset FLAG_VILLA_FURNITURE_TABLE, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_BIG_SOFA, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_SMALL_SOFA, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_BED, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_NIGHT_TABLE, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_TV, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_AUDIO_SYSTEM, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_BOOKSHELF, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_RACK, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_HOUSEPLANT, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_PC_DESK, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_MUSIC_BOX, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_POKEMON_BUST, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_POKEMON_BUST_SILVER, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_PIANO, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_GUEST_SET, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_WALL_CLOCK, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_MASTERPIECE, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_TEA_SET, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_CHANDELIER, Villa_DoesntHaveAllFurniture
    SetVar VAR_RESULT, TRUE
    Return

Villa_DoesntHaveAllFurniture:
    SetVar VAR_RESULT, FALSE
    Return

_19E4:
    BufferNumberPaddingDigits 0, 0, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_TABLE, _1D15
    CallIfSet FLAG_VILLA_FURNITURE_TABLE, _1D1F
    Return

_1A05:
    BufferNumberPaddingDigits 0, 120000, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_BIG_SOFA, _1D29
    CallIfSet FLAG_VILLA_FURNITURE_BIG_SOFA, _1D33
    Return

_1A26:
    BufferNumberPaddingDigits 0, 90000, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_SMALL_SOFA, _1D3D
    CallIfSet FLAG_VILLA_FURNITURE_SMALL_SOFA, _1D47
    Return

_1A47:
    BufferNumberPaddingDigits 0, 187000, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_BED, _1D51
    CallIfSet FLAG_VILLA_FURNITURE_BED, _1D5B
    Return

_1A68:
    BufferNumberPaddingDigits 0, 58000, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_NIGHT_TABLE, _1D65
    CallIfSet FLAG_VILLA_FURNITURE_NIGHT_TABLE, _1D6F
    Return

_1A89:
    BufferNumberPaddingDigits 0, 220000, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_TV, _1D79
    CallIfSet FLAG_VILLA_FURNITURE_TV, _1D83
    Return

_1AAA:
    BufferNumberPaddingDigits 0, 160000, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_AUDIO_SYSTEM, _1D8D
    CallIfSet FLAG_VILLA_FURNITURE_AUDIO_SYSTEM, _1D97
    Return

_1ACB:
    BufferNumberPaddingDigits 0, 150000, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_BOOKSHELF, _1DA1
    CallIfSet FLAG_VILLA_FURNITURE_BOOKSHELF, _1DAB
    Return

_1AEC:
    BufferNumberPaddingDigits 0, 127000, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_RACK, _1DB5
    CallIfSet FLAG_VILLA_FURNITURE_RACK, _1DBF
    Return

_1B0D:
    BufferNumberPaddingDigits 0, 120000, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_HOUSEPLANT, _1DC9
    CallIfSet FLAG_VILLA_FURNITURE_HOUSEPLANT, _1DD3
    Return

_1B2E:
    BufferNumberPaddingDigits 0, 168000, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_PC_DESK, _1DDD
    CallIfSet FLAG_VILLA_FURNITURE_PC_DESK, _1DE7
    Return

_1B4F:
    GoToIfUnset FLAG_VILLA_FURNITURE_RACK, _1D13
    BufferNumberPaddingDigits 0, 25300, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_MUSIC_BOX, _1DF1
    CallIfSet FLAG_VILLA_FURNITURE_MUSIC_BOX, _1DFB
    Return

_1B7B:
    ScrCmd_30F 13, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _1D13
    BufferNumberPaddingDigits 0, 150000, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_POKEMON_BUST, _1E05
    CallIfSet FLAG_VILLA_FURNITURE_POKEMON_BUST, _1E0F
    Return

_1BAF:
    ScrCmd_30F 14, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _1D13
    BufferNumberPaddingDigits 0, 150000, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_POKEMON_BUST_SILVER, _1E19
    CallIfSet FLAG_VILLA_FURNITURE_POKEMON_BUST_SILVER, _1E23
    Return

_1BE3:
    ScrCmd_30F 15, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _1D13
    BufferNumberPaddingDigits 0, 146700, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_PIANO, _1E2D
    CallIfSet FLAG_VILLA_FURNITURE_PIANO, _1E37
    Return

_1C17:
    ScrCmd_30F 16, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _1D13
    BufferNumberPaddingDigits 0, 208000, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_GUEST_SET, _1E41
    CallIfSet FLAG_VILLA_FURNITURE_GUEST_SET, _1E4B
    Return

_1C4B:
    ScrCmd_30F 17, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _1D13
    BufferNumberPaddingDigits 0, 52000, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_WALL_CLOCK, _1E55
    CallIfSet FLAG_VILLA_FURNITURE_WALL_CLOCK, _1E5F
    Return

_1C7F:
    ScrCmd_30F 18, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _1D13
    BufferNumberPaddingDigits 0, 140000, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_MASTERPIECE, _1E69
    CallIfSet FLAG_VILLA_FURNITURE_MASTERPIECE, _1E73
    Return

_1CB3:
    GoToIfUnset FLAG_VILLA_FURNITURE_GUEST_SET, _1D13
    BufferNumberPaddingDigits 0, 108000, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_TEA_SET, _1E7D
    CallIfSet FLAG_VILLA_FURNITURE_TEA_SET, _1E87
    Return

_1CDF:
    ScrCmd_30F 20, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _1D13
    BufferNumberPaddingDigits 0, 120000, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_CHANDELIER, _1E91
    CallIfSet FLAG_VILLA_FURNITURE_CHANDELIER, _1E9B
    Return

_1D13:
    Return

_1D15:
    AddListMenuEntry 149, 0
    Return

_1D1F:
    AddListMenuEntry 169, 0
    Return

_1D29:
    AddListMenuEntry 150, 1
    Return

_1D33:
    AddListMenuEntry 170, 1
    Return

_1D3D:
    AddListMenuEntry 151, 2
    Return

_1D47:
    AddListMenuEntry 171, 2
    Return

_1D51:
    AddListMenuEntry 152, 3
    Return

_1D5B:
    AddListMenuEntry 172, 3
    Return

_1D65:
    AddListMenuEntry 153, 4
    Return

_1D6F:
    AddListMenuEntry 173, 4
    Return

_1D79:
    AddListMenuEntry 154, 5
    Return

_1D83:
    AddListMenuEntry 174, 5
    Return

_1D8D:
    AddListMenuEntry 155, 6
    Return

_1D97:
    AddListMenuEntry 175, 6
    Return

_1DA1:
    AddListMenuEntry 156, 7
    Return

_1DAB:
    AddListMenuEntry 176, 7
    Return

_1DB5:
    AddListMenuEntry 157, 8
    Return

_1DBF:
    AddListMenuEntry 177, 8
    Return

_1DC9:
    AddListMenuEntry 158, 9
    Return

_1DD3:
    AddListMenuEntry 178, 9
    Return

_1DDD:
    AddListMenuEntry 159, 10
    Return

_1DE7:
    AddListMenuEntry 179, 10
    Return

_1DF1:
    AddListMenuEntry 160, 11
    Return

_1DFB:
    AddListMenuEntry 180, 11
    Return

_1E05:
    AddListMenuEntry 161, 12
    Return

_1E0F:
    AddListMenuEntry 181, 12
    Return

_1E19:
    AddListMenuEntry 162, 13
    Return

_1E23:
    AddListMenuEntry 182, 13
    Return

_1E2D:
    AddListMenuEntry 163, 14
    Return

_1E37:
    AddListMenuEntry 183, 14
    Return

_1E41:
    AddListMenuEntry 164, 15
    Return

_1E4B:
    AddListMenuEntry 184, 15
    Return

_1E55:
    AddListMenuEntry 165, 16
    Return

_1E5F:
    AddListMenuEntry 185, 16
    Return

_1E69:
    AddListMenuEntry 166, 17
    Return

_1E73:
    AddListMenuEntry 186, 17
    Return

_1E7D:
    AddListMenuEntry 167, 18
    Return

_1E87:
    AddListMenuEntry 187, 18
    Return

_1E91:
    AddListMenuEntry 168, 19
    Return

_1E9B:
    AddListMenuEntry 188, 19
    Return

_1EA5:
    GoToIfSet FLAG_VILLA_FURNITURE_TABLE, _1FA9
    Return

_1EB2:
    GoToIfSet FLAG_VILLA_FURNITURE_BIG_SOFA, _1FA9
    Return

_1EBF:
    GoToIfSet FLAG_VILLA_FURNITURE_SMALL_SOFA, _1FA9
    Return

_1ECC:
    GoToIfSet FLAG_VILLA_FURNITURE_BED, _1FA9
    Return

_1ED9:
    GoToIfSet FLAG_VILLA_FURNITURE_NIGHT_TABLE, _1FA9
    Return

_1EE6:
    GoToIfSet FLAG_VILLA_FURNITURE_TV, _1FA9
    Return

_1EF3:
    GoToIfSet FLAG_VILLA_FURNITURE_AUDIO_SYSTEM, _1FA9
    Return

_1F00:
    GoToIfSet FLAG_VILLA_FURNITURE_BOOKSHELF, _1FA9
    Return

_1F0D:
    GoToIfSet FLAG_VILLA_FURNITURE_RACK, _1FA9
    Return

_1F1A:
    GoToIfSet FLAG_VILLA_FURNITURE_HOUSEPLANT, _1FA9
    Return

_1F27:
    GoToIfSet FLAG_VILLA_FURNITURE_PC_DESK, _1FA9
    Return

_1F34:
    GoToIfSet FLAG_VILLA_FURNITURE_MUSIC_BOX, _1FA9
    Return

_1F41:
    GoToIfSet FLAG_VILLA_FURNITURE_POKEMON_BUST, _1FA9
    Return

_1F4E:
    GoToIfSet FLAG_VILLA_FURNITURE_POKEMON_BUST_SILVER, _1FA9
    Return

_1F5B:
    GoToIfSet FLAG_VILLA_FURNITURE_PIANO, _1FA9
    Return

_1F68:
    GoToIfSet FLAG_VILLA_FURNITURE_GUEST_SET, _1FA9
    Return

_1F75:
    GoToIfSet FLAG_VILLA_FURNITURE_WALL_CLOCK, _1FA9
    Return

_1F82:
    GoToIfSet FLAG_VILLA_FURNITURE_MASTERPIECE, _1FA9
    Return

_1F8F:
    GoToIfSet FLAG_VILLA_FURNITURE_TEA_SET, _1FA9
    Return

_1F9C:
    GoToIfSet FLAG_VILLA_FURNITURE_CHANDELIER, _1FA9
    Return

_1FA9:
    SetVar VAR_0x8003, 0
    Return

Villa_CheckMoney_Table:
    CheckMoney VAR_0x8003, 0
    Return

Villa_CheckMoney_BigSofa:
    CheckMoney VAR_0x8003, 120000
    Return

Villa_CheckMoney_SmallSofa:
    CheckMoney VAR_0x8003, 90000
    Return

Villa_CheckMoney_Bed:
    CheckMoney VAR_0x8003, 187000
    Return

Villa_CheckMoney_NightTable:
    CheckMoney VAR_0x8003, 58000
    Return

Villa_CheckMoney_TV:
    CheckMoney VAR_0x8003, 220000
    Return

Villa_CheckMoney_AudioSystem:
    CheckMoney VAR_0x8003, 160000
    Return

Villa_CheckMoney_Bookshelf:
    CheckMoney VAR_0x8003, 150000
    Return

Villa_CheckMoney_Rack:
    CheckMoney VAR_0x8003, 127000
    Return

Villa_CheckMoney_Houseplant:
    CheckMoney VAR_0x8003, 120000
    Return

Villa_CheckMoney_PCDesk:
    CheckMoney VAR_0x8003, 168000
    Return

Villa_CheckMoney_MusicBox:
    CheckMoney VAR_0x8003, 25300
    Return

Villa_CheckMoney_PokemonBust:
    CheckMoney VAR_0x8003, 150000
    Return

Villa_CheckMoney_PokemonBustSilver:
    CheckMoney VAR_0x8003, 150000
    Return

Villa_CheckMoney_Piano:
    CheckMoney VAR_0x8003, 146700
    Return

Villa_CheckMoney_GuestSet:
    CheckMoney VAR_0x8003, 208000
    Return

Villa_CheckMoney_WallClock:
    CheckMoney VAR_0x8003, 52000
    Return

Villa_CheckMoney_Masterpiece:
    CheckMoney VAR_0x8003, 140000
    Return

Villa_CheckMoney_TeaSet:
    CheckMoney VAR_0x8003, 108000
    Return

Villa_CheckMoney_Chandelier:
    CheckMoney VAR_0x8003, 120000
    Return

Villa_BuyFurniture_Table:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 0
    RemoveMoney 0
    SetFlag FLAG_VILLA_FURNITURE_TABLE
    Return

Villa_BuyFurniture_BigSofa:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 120000
    RemoveMoney 120000
    SetFlag FLAG_VILLA_FURNITURE_BIG_SOFA
    Return

Villa_BuyFurniture_SmallSofa:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 90000
    RemoveMoney 90000
    SetFlag FLAG_VILLA_FURNITURE_SMALL_SOFA
    Return

Villa_BuyFurniture_Bed:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 187000
    RemoveMoney 187000
    SetFlag FLAG_VILLA_FURNITURE_BED
    Return

Villa_BuyFurniture_NightTable:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 58000
    RemoveMoney 58000
    SetFlag FLAG_VILLA_FURNITURE_NIGHT_TABLE
    Return

Villa_BuyFurniture_TV:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 220000
    RemoveMoney 220000
    SetFlag FLAG_VILLA_FURNITURE_TV
    Return

Villa_BuyFurniture_AudioSystem:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 160000
    RemoveMoney 160000
    SetFlag FLAG_VILLA_FURNITURE_AUDIO_SYSTEM
    Return

Villa_BuyFurniture_Bookshelf:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 150000
    RemoveMoney 150000
    SetFlag FLAG_VILLA_FURNITURE_BOOKSHELF
    Return

Villa_BuyFurniture_Rack:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 127000
    RemoveMoney 127000
    SetFlag FLAG_VILLA_FURNITURE_RACK
    Return

Villa_BuyFurniture_Houseplant:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 120000
    RemoveMoney 120000
    SetFlag FLAG_VILLA_FURNITURE_HOUSEPLANT
    Return

Villa_BuyFurniture_PCDesk:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 168000
    RemoveMoney 168000
    SetFlag FLAG_VILLA_FURNITURE_PC_DESK
    Return

Villa_BuyFurniture_MusicBox:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 25300
    RemoveMoney 25300
    SetFlag FLAG_VILLA_FURNITURE_MUSIC_BOX
    Return

Villa_BuyFurniture_PokemonBust:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 150000
    RemoveMoney 150000
    SetFlag FLAG_VILLA_FURNITURE_POKEMON_BUST
    Return

Villa_BuyFurniture_PokemonBustSilver:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 150000
    RemoveMoney 150000
    SetFlag FLAG_VILLA_FURNITURE_POKEMON_BUST_SILVER
    Return

Villa_BuyFurniture_Piano:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 146700
    RemoveMoney 146700
    SetFlag FLAG_VILLA_FURNITURE_PIANO
    Return

Villa_BuyFurniture_GuestSet:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 208000
    RemoveMoney 208000
    SetFlag FLAG_VILLA_FURNITURE_GUEST_SET
    Return

Villa_BuyFurniture_WallClock:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 52000
    RemoveMoney 52000
    SetFlag FLAG_VILLA_FURNITURE_WALL_CLOCK
    Return

Villa_BuyFurniture_Masterpiece:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 140000
    RemoveMoney 140000
    SetFlag FLAG_VILLA_FURNITURE_MASTERPIECE
    Return

Villa_BuyFurniture_TeaSet:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 108000
    RemoveMoney 108000
    SetFlag FLAG_VILLA_FURNITURE_TEA_SET
    Return

Villa_BuyFurniture_Chandelier:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 120000
    RemoveMoney 120000
    SetFlag FLAG_VILLA_FURNITURE_CHANDELIER
    Return

_2209:
    CallIfEq VAR_RESORT_VILLA_VISITOR, 0, _22CE
    CallIfEq VAR_RESORT_VILLA_VISITOR, 1, _22D4
    CallIfEq VAR_RESORT_VILLA_VISITOR, 2, _22DA
    CallIfEq VAR_RESORT_VILLA_VISITOR, 3, _22EB
    CallIfEq VAR_RESORT_VILLA_VISITOR, 4, _22F1
    CallIfEq VAR_RESORT_VILLA_VISITOR, 5, _2302
    CallIfEq VAR_RESORT_VILLA_VISITOR, 6, _2313
    CallIfEq VAR_RESORT_VILLA_VISITOR, 7, _2324
    CallIfEq VAR_RESORT_VILLA_VISITOR, 8, _2335
    CallIfEq VAR_RESORT_VILLA_VISITOR, 9, _2346
    CallIfEq VAR_RESORT_VILLA_VISITOR, 10, _2357
    CallIfEq VAR_RESORT_VILLA_VISITOR, 11, _2368
    CallIfEq VAR_RESORT_VILLA_VISITOR, 12, _236E
    CallIfEq VAR_RESORT_VILLA_VISITOR, 13, _237F
    CallIfEq VAR_RESORT_VILLA_VISITOR, 14, _2389
    Return

_22CE:
    RemoveObject 1
    Return

_22D4:
    RemoveObject 0
    Return

_22DA:
    GoToIfUnset FLAG_VILLA_VISITOR_INSIDE, _2395
    RemoveObject 2
    Return

_22EB:
    RemoveObject 3
    Return

_22F1:
    GoToIfUnset FLAG_VILLA_VISITOR_INSIDE, _2395
    RemoveObject 4
    Return

_2302:
    GoToIfUnset FLAG_VILLA_VISITOR_INSIDE, _2395
    RemoveObject 5
    Return

_2313:
    GoToIfUnset FLAG_VILLA_VISITOR_OUTSIDE, _2393
    RemoveObject 6
    Return

_2324:
    GoToIfUnset FLAG_VILLA_VISITOR_INSIDE, _2395
    RemoveObject 7
    Return

_2335:
    GoToIfUnset FLAG_VILLA_VISITOR_OUTSIDE, _2393
    RemoveObject 9
    Return

_2346:
    GoToIfUnset FLAG_VILLA_VISITOR_INSIDE, _2395
    RemoveObject 8
    Return

_2357:
    GoToIfUnset FLAG_VILLA_VISITOR_OUTSIDE, _2393
    RemoveObject 10
    Return

_2368:
    RemoveObject 11
    Return

_236E:
    GoToIfUnset FLAG_VILLA_VISITOR_OUTSIDE, _2393
    RemoveObject 12
    Return

_237F:
    RemoveObject 13
    RemoveObject 11
    Return

_2389:
    RemoveObject 7
    RemoveObject 10
    Return

_2393:
    Return

_2395:
    SetFlag FLAG_UNK_0x02AA
    SetFlag FLAG_UNK_0x02AD
    SetFlag FLAG_UNK_0x02AF
    SetFlag FLAG_UNK_0x02B2
    SetFlag FLAG_UNK_0x02B5
    Return

    .byte 0
