#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_city.h"


    ScriptEntry _0082
    ScriptEntry _0C18
    ScriptEntry _0C2B
    ScriptEntry _0C3E
    ScriptEntry _0C51
    ScriptEntry _0C64
    ScriptEntry _0C77
    ScriptEntry _0CD1
    ScriptEntry _0CE4
    ScriptEntry _0CF7
    ScriptEntry _0D5C
    ScriptEntry _0D8D
    ScriptEntry _0DBE
    ScriptEntry _0FF0
    ScriptEntry _00F6
    ScriptEntry _05CC
    ScriptEntry _1003
    ScriptEntry _101A
    ScriptEntry _102F
    ScriptEntry _1046
    ScriptEntry _105D
    ScriptEntry _1074
    ScriptEntry _108B
    ScriptEntry _10A2
    ScriptEntry VeilstoneCity_DeoxysMeteoriteSpeed
    ScriptEntry VeilstoneCity_DeoxysMeteoriteDefense
    ScriptEntry VeilstoneCity_DeoxysMeteoriteAttack
    ScriptEntry VeilstoneCity_DeoxysMeteoriteNormal
    ScriptEntry _1184
    ScriptEntry _0FB0
    ScriptEntry _1204
    ScriptEntry _123E
    ScriptEntryEnd

_0082:
    CallIfSet FLAG_UNK_0x0155, _00E0
    CallIfGe VAR_UNK_0x411A, 2, _00BA
    GetPlayerGender VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_MALE, _00D0
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_FEMALE, _00D8
    End

_00BA:
    SetObjectEventPos 6, 0x2B8, 0x254
    SetObjectEventMovementType 6, MOVEMENT_TYPE_LOOK_RIGHT
    SetObjectEventDir 6, DIR_EAST
    Return

_00D0:
    SetVar VAR_OBJ_GFX_ID_0, 97
    End

_00D8:
    SetVar VAR_OBJ_GFX_ID_0, 0
    End

_00E0:
    SetObjectEventPos 26, 0x2CD, 0x251
    SetObjectEventMovementType 26, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir 26, DIR_NORTH
    Return

_00F6:
    LockAll
    ApplyMovement 6, _0444
    WaitMovement
    CallCommonScript CommonScript_Unk28
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 0x2A9, _02E1
    CallIfEq VAR_0x8004, 0x2AA, _02ED
    CallIfEq VAR_0x8004, 0x2AB, _02F9
    CallIfEq VAR_0x8004, 0x2AC, _0305
    GetPlayerGender VAR_0x8004
    CallIfEq VAR_0x8004, GENDER_MALE, _0297
    CallIfEq VAR_0x8004, GENDER_FEMALE, _029F
    CloseMessage
    CallCommonScript CommonScript_Unk29
    ScrCmd_168 21, 19, 12, 3, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ClearFlag FLAG_UNK_0x0191
    AddObject 25
    ApplyMovement 25, _0564
    WaitMovement
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    ApplyMovement 6, _0484
    WaitMovement
    Message 4
    CloseMessage
    ApplyMovement 25, _056C
    WaitMovement
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 0x2A9, _0311
    CallIfEq VAR_0x8004, 0x2AA, _032D
    CallIfEq VAR_0x8004, 0x2AB, _0349
    CallIfEq VAR_0x8004, 0x2AC, _0365
    Message 5
    Message 6
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 0x2A9, _0381
    CallIfEq VAR_0x8004, 0x2AA, _039D
    CallIfEq VAR_0x8004, 0x2AB, _03B9
    CallIfEq VAR_0x8004, 0x2AC, _03D5
    RemoveObject 25
    WaitTime 20, VAR_RESULT
    GetPlayerGender VAR_0x8004
    CallIfEq VAR_0x8004, GENDER_MALE, _02A7
    CallIfEq VAR_0x8004, GENDER_FEMALE, _02C4
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 0x2A9, _03F1
    CallIfEq VAR_0x8004, 0x2AA, _0405
    CallIfEq VAR_0x8004, 0x2AB, _0419
    CallIfEq VAR_0x8004, 0x2AC, _042D
    RemoveObject 6
    SetVar VAR_UNK_0x40F5, 1
    ReleaseAll
    End

_0297:
    BufferPlayerName 0
    Message 2
    Return

_029F:
    BufferPlayerName 0
    Message 3
    Return

_02A7:
    BufferPlayerName 0
    Message 7
    CloseMessage
    WaitTime 15, VAR_RESULT
    ApplyMovement LOCALID_PLAYER, _052C
    WaitMovement
    Message 8
    Return

_02C4:
    BufferPlayerName 0
    Message 9
    CloseMessage
    WaitTime 15, VAR_RESULT
    ApplyMovement LOCALID_PLAYER, _052C
    WaitMovement
    Message 10
    Return

_02E1:
    ApplyMovement 6, _0458
    WaitMovement
    Return

_02ED:
    ApplyMovement 6, _0464
    WaitMovement
    Return

_02F9:
    ApplyMovement 6, _046C
    WaitMovement
    Return

_0305:
    ApplyMovement 6, _0478
    WaitMovement
    Return

_0311:
    ApplyMovement 25, _0574
    ApplyMovement 6, _048C
    ApplyMovement LOCALID_PLAYER, _04EC
    WaitMovement
    Return

_032D:
    ApplyMovement 25, _0580
    ApplyMovement 6, _0498
    ApplyMovement LOCALID_PLAYER, _04FC
    WaitMovement
    Return

_0349:
    ApplyMovement 25, _058C
    ApplyMovement 6, _04A4
    ApplyMovement LOCALID_PLAYER, _050C
    WaitMovement
    Return

_0365:
    ApplyMovement 25, _0598
    ApplyMovement 6, _04B0
    ApplyMovement LOCALID_PLAYER, _051C
    WaitMovement
    Return

_0381:
    ApplyMovement 25, _05AC
    ApplyMovement 6, _04D4
    ApplyMovement LOCALID_PLAYER, _0554
    WaitMovement
    Return

_039D:
    ApplyMovement 25, _05B4
    ApplyMovement 6, _04D4
    ApplyMovement LOCALID_PLAYER, _0554
    WaitMovement
    Return

_03B9:
    ApplyMovement 25, _05BC
    ApplyMovement 6, _04D4
    ApplyMovement LOCALID_PLAYER, _0554
    WaitMovement
    Return

_03D5:
    ApplyMovement 25, _05C4
    ApplyMovement 6, _04D4
    ApplyMovement LOCALID_PLAYER, _0554
    WaitMovement
    Return

_03F1:
    ApplyMovement 6, _04BC
    ApplyMovement LOCALID_PLAYER, _0534
    WaitMovement
    Return

_0405:
    ApplyMovement 6, _04BC
    ApplyMovement LOCALID_PLAYER, _0534
    WaitMovement
    Return

_0419:
    ApplyMovement 6, _04C8
    ApplyMovement LOCALID_PLAYER, _0544
    WaitMovement
    Return

_042D:
    ApplyMovement 6, _04C8
    ApplyMovement LOCALID_PLAYER, _0544
    WaitMovement
    Return

    .balign 4, 0
_0444:
    Delay8
    WalkOnSpotNormalSouth
    EmoteExclamationMark
    Delay8
    EndMovement

    .balign 4, 0
_0458:
    WalkNormalWest
    WalkNormalSouth
    EndMovement

    .balign 4, 0
_0464:
    WalkNormalSouth
    EndMovement

    .balign 4, 0
_046C:
    WalkNormalEast
    WalkNormalSouth
    EndMovement

    .balign 4, 0
_0478:
    WalkNormalEast 2
    WalkNormalSouth
    EndMovement

    .balign 4, 0
_0484:
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
_048C:
    Delay8 4
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0498:
    Delay8 3
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_04A4:
    Delay8 2
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_04B0:
    Delay8 4
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_04BC:
    WalkNormalEast
    WalkNormalSouth 9
    EndMovement

    .balign 4, 0
_04C8:
    WalkNormalWest
    WalkNormalSouth 9
    EndMovement

    .balign 4, 0
_04D4:
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

VeilstoneCity_UnusedMovement:
    Delay8
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_04EC:
    Delay8 4
    Delay4
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_04FC:
    Delay8 3
    Delay4
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_050C:
    Delay8 2
    Delay4
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_051C:
    Delay8 4
    Delay4
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_052C:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0534:
    Delay8 2
    WalkOnSpotNormalEast
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0544:
    Delay8 2
    WalkOnSpotNormalWest
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0554:
    Delay8
    Delay4
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0564:
    WalkNormalSouth
    EndMovement

    .balign 4, 0
_056C:
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
_0574:
    WalkNormalSouth 4
    WalkNormalWest 2
    EndMovement

    .balign 4, 0
_0580:
    WalkNormalSouth 4
    WalkNormalWest
    EndMovement

    .balign 4, 0
_058C:
    WalkNormalSouth 4
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0598:
    WalkNormalSouth
    WalkNormalWest
    WalkNormalSouth 3
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_05AC:
    WalkNormalSouth 8
    EndMovement

    .balign 4, 0
_05B4:
    WalkNormalSouth 8
    EndMovement

    .balign 4, 0
_05BC:
    WalkNormalSouth 8
    EndMovement

    .balign 4, 0
_05C4:
    WalkNormalSouth 8
    EndMovement

_05CC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetPlayerGender VAR_0x8004
    GoToIfEq VAR_0x8004, 0, _05F4
    GoToIfEq VAR_0x8004, 1, _0625
    End

_05F4:
    BufferPlayerName 0
    Message 19
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0611
    GoTo _061A

_0611:
    Message 20
    GoTo _0656

_061A:
    Message 21
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0625:
    BufferPlayerName 0
    Message 24
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0642
    GoTo _064B

_0642:
    Message 25
    GoTo _0656

_064B:
    Message 26
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0656:
    CloseMessage
    GetPlayerDir VAR_RESULT
    CallIfEq VAR_RESULT, 3, _099F
    CallIfEq VAR_RESULT, 1, _09B3
    CallIfEq VAR_RESULT, 0, _09C7
    Call VeilstoneCity_SetPlayerCounterpartPartnerTeam
    StartTagBattle VAR_0x8004, TRAINER_GALACTIC_GRUNT_VEILSTONE_CITY_1, TRAINER_GALACTIC_GRUNT_VEILSTONE_CITY_2
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _0A73
    Message 16
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8005, 0x253, _09DB
    CallIfEq VAR_0x8005, 0x255, _09E7
    Message 17
    CloseMessage
    WaitTime 15, VAR_RESULT
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8005, 0x253, _09F3
    CallIfEq VAR_0x8005, 0x255, _09FF
    RemoveObject 7
    Message 18
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8005, 0x253, _0A0B
    CallIfEq VAR_0x8005, 0x255, _0A17
    RemoveObject 20
    GetPlayerGender VAR_0x8004
    CallIfEq VAR_0x8004, GENDER_MALE, _0A23
    CallIfEq VAR_0x8004, GENDER_FEMALE, _0A28
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8005, 0x253, _0A4B
    CallIfEq VAR_0x8005, 0x255, _0A5F
    WaitTime 10, VAR_RESULT
    BufferPlayerName 0
    GetPlayerGender VAR_0x8004
    CallIfEq VAR_0x8004, GENDER_MALE, _0A2D
    CallIfEq VAR_0x8004, GENDER_FEMALE, _0A32
    CloseMessage
    WaitTime 15, VAR_RESULT
    ClearFlag FLAG_UNK_0x028A
    SetObjectEventPos 26, 0x2B4, 0x25E
    AddObject 26
    CallCommonScript CommonScript_Unk37
    ApplyMovement 26, _0A7C
    WaitMovement
    Message 29
    CloseMessage
    ApplyMovement 6, _0B3C
    ApplyMovement LOCALID_PLAYER, _0B9C
    WaitMovement
    GetPlayerGender VAR_0x8004
    CallIfEq VAR_0x8004, GENDER_MALE, _0A37
    CallIfEq VAR_0x8004, GENDER_FEMALE, _0A3C
    Message 32
    GetPlayerGender VAR_0x8004
    CallIfEq VAR_0x8004, GENDER_MALE, _0A41
    CallIfEq VAR_0x8004, GENDER_FEMALE, _0A46
    CloseMessage
    ApplyMovement 6, _0B44
    ApplyMovement 26, _0A88
    WaitMovement
    RemoveObject 6
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 0x253, _083A
    GoToIfEq VAR_0x8005, 0x255, _0854
    End

_083A:
    ApplyMovement LOCALID_PLAYER, _0BB0
    ApplyMovement 26, _0A94
    WaitMovement
    GoTo _086E
    End

_0854:
    ApplyMovement LOCALID_PLAYER, _0BBC
    ApplyMovement 26, _0AA0
    WaitMovement
    GoTo _086E
    End

_086E:
    Message 35
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 0x253, _08A9
    GoToIfEq VAR_0x8005, 0x255, _08C3
    End

VeilstoneCity_Unused:
    SetObjectEventPos 26, 692, 603
    Return

VeilstoneCity_Unused2:
    SetObjectEventPos 26, 692, 605
    Return

_08A9:
    ApplyMovement 26, _0AAC
    ApplyMovement LOCALID_PLAYER, _0BC8
    WaitMovement
    GoTo _08DD
    End

_08C3:
    ApplyMovement 26, _0AAC
    ApplyMovement LOCALID_PLAYER, _0BDC
    WaitMovement
    GoTo _08DD
    End

_08DD:
    SetFlag FLAG_UNK_0x01A9
    SetFlag FLAG_UNK_0x028A
    ClearFlag FLAG_UNK_0x020D
    SetVar VAR_UNK_0x411F, 1
    PlayFanfare SEQ_SE_DP_KAIDAN2
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_VEILSTONE_CITY_GALACTIC_WAREHOUSE, 0, 8, 11, 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

VeilstoneCity_SetPlayerCounterpartPartnerTeam:
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, VeilstoneCity_SetDawnPartnerTeam
    GoToIfEq VAR_RESULT, GENDER_FEMALE, VeilstoneCity_SetLucasPartnerTeam
    End

VeilstoneCity_SetDawnPartnerTeam:
    GetPlayerStarterSpecies VAR_RESULT
    SetVar VAR_0x8004, TRAINER_DAWN_VEILSTONE_CITY_PIPLUP
    GoToIfEq VAR_RESULT, SPECIES_CHIMCHAR, _099D
    SetVar VAR_0x8004, TRAINER_DAWN_VEILSTONE_CITY_TURTWIG
    GoToIfEq VAR_RESULT, SPECIES_PIPLUP, _099D
    SetVar VAR_0x8004, TRAINER_DAWN_VEILSTONE_CITY_CHIMCHAR
    Return

VeilstoneCity_SetLucasPartnerTeam:
    GetPlayerStarterSpecies VAR_RESULT
    SetVar VAR_0x8004, TRAINER_LUCAS_VEILSTONE_CITY_PIPLUP
    GoToIfEq VAR_RESULT, SPECIES_CHIMCHAR, _099D
    SetVar VAR_0x8004, TRAINER_LUCAS_VEILSTONE_CITY_TURTWIG
    GoToIfEq VAR_RESULT, SPECIES_PIPLUP, _099D
    SetVar VAR_0x8004, TRAINER_LUCAS_VEILSTONE_CITY_CHIMCHAR
    Return

_099D:
    Return

_099F:
    ApplyMovement 6, _0ABC
    ApplyMovement LOCALID_PLAYER, _0B50
    WaitMovement
    Return

_09B3:
    ApplyMovement 6, _0AC8
    ApplyMovement LOCALID_PLAYER, _0B5C
    WaitMovement
    Return

_09C7:
    ApplyMovement 6, _0AD4
    ApplyMovement LOCALID_PLAYER, _0B64
    WaitMovement
    Return

_09DB:
    ApplyMovement 20, _0BF0
    WaitMovement
    Return

_09E7:
    ApplyMovement 7, _0BF0
    WaitMovement
    Return

_09F3:
    ApplyMovement 7, _0BF8
    WaitMovement
    Return

_09FF:
    ApplyMovement 7, _0BF8
    WaitMovement
    Return

_0A0B:
    ApplyMovement 20, _0C08
    WaitMovement
    Return

_0A17:
    ApplyMovement 20, _0C08
    WaitMovement
    Return

_0A23:
    Message 22
    Return

_0A28:
    Message 27
    Return

_0A2D:
    Message 23
    Return

_0A32:
    Message 28
    Return

_0A37:
    Message 30
    Return

_0A3C:
    Message 31
    Return

_0A41:
    Message 33
    Return

_0A46:
    Message 34
    Return

_0A4B:
    ApplyMovement 6, _0B2C
    ApplyMovement LOCALID_PLAYER, _0B8C
    WaitMovement
    Return

_0A5F:
    ApplyMovement 6, _0B34
    ApplyMovement LOCALID_PLAYER, _0B94
    WaitMovement
    Return

_0A73:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
_0A7C:
    WalkFastNorth 10
    WalkFastEast 3
    EndMovement

    .balign 4, 0
_0A88:
    Delay8 2
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0A94:
    WalkNormalEast
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0AA0:
    WalkNormalEast
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0AAC:
    WalkNormalEast 5
    WalkNormalNorth 4
    SetInvisible
    EndMovement

    .balign 4, 0
_0ABC:
    WalkNormalSouth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0AC8:
    WalkNormalSouth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0AD4:
    WalkNormalNorth
    WalkOnSpotNormalEast
    EndMovement

VeilstoneCity_UnusedMovement2:
    Delay4
    WalkOnSpotNormalWest
    EmoteExclamationMark
    Delay8
    EndMovement

VeilstoneCity_UnusedMovement3:
    WalkNormalWest 4
    EndMovement

VeilstoneCity_UnusedMovement4:
    WalkNormalSouth 2
    WalkNormalWest 2
    WalkNormalSouth 6
    EndMovement

VeilstoneCity_UnusedMovement5:
    Delay8
    WalkOnSpotNormalNorth
    WalkOnSpotNormalWest
    EndMovement

VeilstoneCity_UnusedMovement6:
    Delay8
    WalkOnSpotNormalSouth
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0B2C:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0B34:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0B3C:
    WalkOnSpotFastWest
    EndMovement

    .balign 4, 0
_0B44:
    WalkNormalWest 3
    WalkNormalSouth 10
    EndMovement

    .balign 4, 0
_0B50:
    WalkNormalNorth
    WalkNormalEast
    EndMovement

    .balign 4, 0
_0B5C:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0B64:
    WalkOnSpotNormalEast
    EndMovement

VeilstoneCity_UnusedMovement7:
    Delay8
    WalkOnSpotNormalSouth
    WalkOnSpotNormalWest
    EndMovement

VeilstoneCity_UnusedMovement8:
    Delay8
    WalkOnSpotNormalNorth
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0B8C:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0B94:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0B9C:
    WalkOnSpotNormalWest
    EndMovement

VeilstoneCity_UnusedMovement9:
    Delay8
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0BB0:
    Delay8
    FaceSouth
    EndMovement

    .balign 4, 0
_0BBC:
    Delay8
    FaceNorth
    EndMovement

    .balign 4, 0
_0BC8:
    WalkNormalSouth
    WalkNormalEast 5
    WalkNormalNorth 5
    SetInvisible
    EndMovement

    .balign 4, 0
_0BDC:
    WalkNormalNorth
    WalkNormalEast 5
    WalkNormalNorth 5
    SetInvisible
    EndMovement

    .balign 4, 0
_0BF0:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0BF8:
    WalkFastEast 4
    WalkFastNorth 4
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
_0C08:
    WalkFastEast 4
    WalkFastNorth 6
    WalkOnSpotFastNorth
    EndMovement

_0C18:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 43
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0C2B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 49
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0C3E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 44
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0C51:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 45
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0C64:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 46
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0C77:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00CC, _0CBC
    Message 50
    SetVar VAR_0x8004, ITEM_TM63
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _0CC7
    CallCommonScript CommonScript_Unk2C
    SetFlag FLAG_UNK_0x00CC
    GoTo _0CBC

_0CBC:
    Message 51
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0CC7:
    CallCommonScript CommonScript_Unk11
    CloseMessage
    ReleaseAll
    End

_0CD1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 47
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0CE4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 48
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0CF7:
    LockAll
    ApplyMovement 7, _0D30
    ApplyMovement LOCALID_PLAYER, _0D28
    WaitMovement
    Message 11
    CloseMessage
    ApplyMovement 7, _0D3C
    ApplyMovement LOCALID_PLAYER, _0D54
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
_0D28:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0D30:
    WalkOnSpotNormalSouth
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
_0D3C:
    WalkFastSouth
    WalkOnSpotNormalWest
    Delay8 2
    WalkNormalNorth
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0D54:
    WalkNormalWest
    EndMovement

_0D5C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckBadgeAcquired BADGE_ID_COBBLE, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0D82
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0D82:
    Message 14
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0D8D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckBadgeAcquired BADGE_ID_COBBLE, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0DB3
    Message 13
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0DB3:
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0DBE:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 36
    CloseMessage
    FacePlayer
    ApplyMovement 23, _0F1C
    WaitMovement
    Message 37
    CloseMessage
    SetFlag FLAG_UNK_0x0155
    SetObjectEventPos 26, 0x2D3, 0x259
    SetObjectEventMovementType 26, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir 26, DIR_NORTH
    ClearFlag FLAG_UNK_0x028A
    AddObject 26
    GetPlayerDir VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0E34
    GoToIfEq VAR_RESULT, 1, _0E5C
    GoToIfEq VAR_RESULT, 2, _0EA4
    GoToIfEq VAR_RESULT, 3, _0E7C
    End

_0E34:
    ApplyMovement LOCALID_PLAYER, _0F48
    ApplyMovement 23, _0F24
    WaitMovement
    CallCommonScript CommonScript_Unk37
    ApplyMovement 26, _0F80
    WaitMovement
    GoTo _0ECC
    End

_0E5C:
    ApplyMovement 23, _0F24
    WaitMovement
    CallCommonScript CommonScript_Unk37
    ApplyMovement 26, _0F70
    WaitMovement
    GoTo _0ECC
    End

_0E7C:
    ApplyMovement LOCALID_PLAYER, _0F58
    ApplyMovement 23, _0F24
    WaitMovement
    CallCommonScript CommonScript_Unk37
    ApplyMovement 26, _0F90
    WaitMovement
    GoTo _0ECC
    End

_0EA4:
    ApplyMovement LOCALID_PLAYER, _0F64
    ApplyMovement 23, _0F38
    WaitMovement
    CallCommonScript CommonScript_Unk37
    ApplyMovement 26, _0FA0
    WaitMovement
    GoTo _0ECC
    End

_0ECC:
    RemoveObject 23
    GoTo _0ED8
    End

_0ED8:
    Message 38
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0EF4
    GoTo _0F0B
    End

_0EF4:
    SetVar VAR_UNK_0x411F, 3
    SetFlag FLAG_UNK_0x009B
    Message 39
    CloseMessage
    CallCommonScript CommonScript_Unk29_4
    ReleaseAll
    End

_0F0B:
    Message 40
    WaitABXPadPress
    CloseMessage
    CallCommonScript CommonScript_Unk29_4
    ReleaseAll
    End

    .balign 4, 0
_0F1C:
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
_0F24:
    WalkFastEast
    WalkFastSouth 2
    WalkFastEast
    WalkFastSouth 9
    EndMovement

    .balign 4, 0
_0F38:
    WalkFastSouth 2
    WalkFastEast 2
    WalkFastSouth 9
    EndMovement

    .balign 4, 0
_0F48:
    Delay8
    WalkOnSpotNormalEast
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0F58:
    Delay8 2
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0F64:
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0F70:
    WalkNormalNorth 6
    WalkNormalWest 2
    WalkNormalNorth 2
    EndMovement

    .balign 4, 0
_0F80:
    WalkNormalNorth 6
    WalkNormalWest 2
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0F90:
    WalkNormalNorth 6
    WalkNormalWest 3
    WalkNormalNorth
    EndMovement

    .balign 4, 0
_0FA0:
    WalkNormalNorth 6
    WalkNormalWest
    WalkNormalNorth
    EndMovement

_0FB0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ApplyMovement 26, _0FE0
    WaitMovement
    BufferPlayerName 0
    Message 41
    CallCommonScript CommonScript_Unk37
    GoToIfSet FLAG_UNK_0x009B, _0EF4
    GoTo _0ED8
    End

    .balign 4, 0
_0FE0:
    Delay8
    EmoteExclamationMark
    Delay8
    EndMovement

_0FF0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 42
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1003:
    ShowMapSign 61
    End

_101A:
    ShowScrollingSign 62
    End

_102F:
    ShowLandmarkSign 63
    End

_1046:
    ShowLandmarkSign 64
    End

_105D:
    ShowLandmarkSign 65
    End

_1074:
    ShowLandmarkSign 66
    End

_108B:
    ShowLandmarkSign 67
    End

_10A2:
    ShowLandmarkSign 68
    End

VeilstoneCity_DeoxysMeteoriteSpeed:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckPartyHasSpecies2 SPECIES_DEOXYS, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, VeilstoneCity_MeteoriteFromTheStars
    ChangeDeoxysForm DEOXYS_FORM_SPEED
    PlayCry SPECIES_DEOXYS
    Message VeilstoneCity_Text_MeteoriteSpeed
    WaitABXPadPress
    WaitCry
    CloseMessage
    ReleaseAll
    End

VeilstoneCity_DeoxysMeteoriteDefense:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckPartyHasSpecies2 SPECIES_DEOXYS, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, VeilstoneCity_MeteoriteFromTheStars
    ChangeDeoxysForm DEOXYS_FORM_DEFENSE
    PlayCry SPECIES_DEOXYS
    Message VeilstoneCity_Text_MeteoriteDefense
    WaitABXPadPress
    WaitCry
    CloseMessage
    ReleaseAll
    End

VeilstoneCity_DeoxysMeteoriteAttack:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckPartyHasSpecies2 SPECIES_DEOXYS, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, VeilstoneCity_MeteoriteFromTheStars
    ChangeDeoxysForm DEOXYS_FORM_ATTACK
    PlayCry SPECIES_DEOXYS
    Message VeilstoneCity_Text_MeteoriteAttack
    WaitABXPadPress
    WaitCry
    CloseMessage
    ReleaseAll
    End

VeilstoneCity_DeoxysMeteoriteNormal:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckPartyHasSpecies2 SPECIES_DEOXYS, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, VeilstoneCity_MeteoriteFromTheStars
    ChangeDeoxysForm DEOXYS_FORM_NORMAL
    PlayCry SPECIES_DEOXYS
    Message VeilstoneCity_Text_MeteoriteNormal
    WaitABXPadPress
    WaitCry
    CloseMessage
    ReleaseAll
    End

VeilstoneCity_MeteoriteFromTheStars:
    Message VeilstoneCity_Text_MeteoriteFromTheStars
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1184:
    LockAll
    ApplyMovement 6, _11E8
    WaitMovement
    GetPlayerGender VAR_0x8004
    CallIfEq VAR_0x8004, GENDER_MALE, _11D6
    CallIfEq VAR_0x8004, GENDER_FEMALE, _11DE
    CloseMessage
    ApplyMovement 6, _11FC
    WaitMovement
    RemoveObject 6
    Call _00BA
    ClearFlag FLAG_UNK_0x01A8
    AddObject 6
    SetVar VAR_UNK_0x411A, 2
    ReleaseAll
    End

_11D6:
    BufferPlayerName 0
    Message 0
    Return

_11DE:
    BufferPlayerName 0
    Message 1
    Return

    .balign 4, 0
_11E8:
    WalkOnSpotNormalNorth
    EmoteExclamationMark
    WalkNormalEast 2
    WalkNormalNorth
    EndMovement

    .balign 4, 0
_11FC:
    WalkNormalSouth 9
    EndMovement

_1204:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 52
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _122B
    Message 53
    GoTo _1236
    End

_122B:
    Message 54
    GoTo _1236
    End

_1236:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_123E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 55
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
