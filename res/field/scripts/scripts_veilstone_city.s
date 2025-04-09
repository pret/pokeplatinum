#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_city.h"

    .data

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
    CallIfGe 0x411A, 2, _00BA
    GetPlayerGender 0x4000
    GoToIfEq 0x4000, GENDER_MALE, _00D0
    GoToIfEq 0x4000, GENDER_FEMALE, _00D8
    End

_00BA:
    SetObjectEventPos 6, 0x2B8, 0x254
    ScrCmd_188 6, 17
    ScrCmd_189 6, 3
    Return

_00D0:
    SetVar 0x4020, 97
    End

_00D8:
    SetVar 0x4020, 0
    End

_00E0:
    SetObjectEventPos 26, 0x2CD, 0x251
    ScrCmd_188 26, 14
    ScrCmd_189 26, 0
    Return

_00F6:
    LockAll
    ApplyMovement 6, _0444
    WaitMovement
    CallCommonScript 0x7F8
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8004, 0x2A9, _02E1
    CallIfEq 0x8004, 0x2AA, _02ED
    CallIfEq 0x8004, 0x2AB, _02F9
    CallIfEq 0x8004, 0x2AC, _0305
    GetPlayerGender 0x8004
    CallIfEq 0x8004, GENDER_MALE, _0297
    CallIfEq 0x8004, GENDER_FEMALE, _029F
    CloseMessage
    CallCommonScript 0x7F9
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
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8004, 0x2A9, _0311
    CallIfEq 0x8004, 0x2AA, _032D
    CallIfEq 0x8004, 0x2AB, _0349
    CallIfEq 0x8004, 0x2AC, _0365
    Message 5
    Message 6
    CloseMessage
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8004, 0x2A9, _0381
    CallIfEq 0x8004, 0x2AA, _039D
    CallIfEq 0x8004, 0x2AB, _03B9
    CallIfEq 0x8004, 0x2AC, _03D5
    RemoveObject 25
    WaitTime 20, 0x800C
    GetPlayerGender 0x8004
    CallIfEq 0x8004, GENDER_MALE, _02A7
    CallIfEq 0x8004, GENDER_FEMALE, _02C4
    CloseMessage
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8004, 0x2A9, _03F1
    CallIfEq 0x8004, 0x2AA, _0405
    CallIfEq 0x8004, 0x2AB, _0419
    CallIfEq 0x8004, 0x2AC, _042D
    RemoveObject 6
    SetVar 0x40F5, 1
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
    WaitTime 15, 0x800C
    ApplyMovement LOCALID_PLAYER, _052C
    WaitMovement
    Message 8
    Return

_02C4:
    BufferPlayerName 0
    Message 9
    CloseMessage
    WaitTime 15, 0x800C
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
    MoveAction_063
    MoveAction_033
    MoveAction_075
    MoveAction_063
    EndMovement

    .balign 4, 0
_0458:
    MoveAction_014
    MoveAction_013
    EndMovement

    .balign 4, 0
_0464:
    MoveAction_013
    EndMovement

    .balign 4, 0
_046C:
    MoveAction_015
    MoveAction_013
    EndMovement

    .balign 4, 0
_0478:
    MoveAction_015 2
    MoveAction_013
    EndMovement

    .balign 4, 0
_0484:
    MoveAction_036
    EndMovement

    .balign 4, 0
_048C:
    MoveAction_063 4
    MoveAction_035
    EndMovement

    .balign 4, 0
_0498:
    MoveAction_063 3
    MoveAction_035
    EndMovement

    .balign 4, 0
_04A4:
    MoveAction_063 2
    MoveAction_035
    EndMovement

    .balign 4, 0
_04B0:
    MoveAction_063 4
    MoveAction_034
    EndMovement

    .balign 4, 0
_04BC:
    MoveAction_015
    MoveAction_013 9
    EndMovement

    .balign 4, 0
_04C8:
    MoveAction_014
    MoveAction_013 9
    EndMovement

    .balign 4, 0
_04D4:
    MoveAction_063
    MoveAction_033
    EndMovement

    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_04EC:
    MoveAction_063 4
    MoveAction_062
    MoveAction_035
    EndMovement

    .balign 4, 0
_04FC:
    MoveAction_063 3
    MoveAction_062
    MoveAction_035
    EndMovement

    .balign 4, 0
_050C:
    MoveAction_063 2
    MoveAction_062
    MoveAction_035
    EndMovement

    .balign 4, 0
_051C:
    MoveAction_063 4
    MoveAction_062
    MoveAction_034
    EndMovement

    .balign 4, 0
_052C:
    MoveAction_032
    EndMovement

    .balign 4, 0
_0534:
    MoveAction_063 2
    MoveAction_035
    MoveAction_033
    EndMovement

    .balign 4, 0
_0544:
    MoveAction_063 2
    MoveAction_034
    MoveAction_033
    EndMovement

    .balign 4, 0
_0554:
    MoveAction_063
    MoveAction_062
    MoveAction_033
    EndMovement

    .balign 4, 0
_0564:
    MoveAction_013
    EndMovement

    .balign 4, 0
_056C:
    MoveAction_075
    EndMovement

    .balign 4, 0
_0574:
    MoveAction_013 4
    MoveAction_014 2
    EndMovement

    .balign 4, 0
_0580:
    MoveAction_013 4
    MoveAction_014
    EndMovement

    .balign 4, 0
_058C:
    MoveAction_013 4
    MoveAction_034
    EndMovement

    .balign 4, 0
_0598:
    MoveAction_013
    MoveAction_014
    MoveAction_013 3
    MoveAction_035
    EndMovement

    .balign 4, 0
_05AC:
    MoveAction_013 8
    EndMovement

    .balign 4, 0
_05B4:
    MoveAction_013 8
    EndMovement

    .balign 4, 0
_05BC:
    MoveAction_013 8
    EndMovement

    .balign 4, 0
_05C4:
    MoveAction_013 8
    EndMovement

_05CC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetPlayerGender 0x8004
    GoToIfEq 0x8004, 0, _05F4
    GoToIfEq 0x8004, 1, _0625
    End

_05F4:
    BufferPlayerName 0
    Message 19
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _0611
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
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _0642
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
    GetPlayerDir 0x800C
    CallIfEq 0x800C, 3, _099F
    CallIfEq 0x800C, 1, _09B3
    CallIfEq 0x800C, 0, _09C7
    Call VeilstoneCity_SetPlayerCounterpartPartnerTeam
    StartTagBattle 0x8004, TRAINER_GALACTIC_GRUNT_VEILSTONE_CITY_1, TRAINER_GALACTIC_GRUNT_VEILSTONE_CITY_2
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _0A73
    Message 16
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8005, 0x253, _09DB
    CallIfEq 0x8005, 0x255, _09E7
    Message 17
    CloseMessage
    WaitTime 15, 0x800C
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8005, 0x253, _09F3
    CallIfEq 0x8005, 0x255, _09FF
    RemoveObject 7
    Message 18
    CloseMessage
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8005, 0x253, _0A0B
    CallIfEq 0x8005, 0x255, _0A17
    RemoveObject 20
    GetPlayerGender 0x8004
    CallIfEq 0x8004, GENDER_MALE, _0A23
    CallIfEq 0x8004, GENDER_FEMALE, _0A28
    CloseMessage
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8005, 0x253, _0A4B
    CallIfEq 0x8005, 0x255, _0A5F
    WaitTime 10, 0x800C
    BufferPlayerName 0
    GetPlayerGender 0x8004
    CallIfEq 0x8004, GENDER_MALE, _0A2D
    CallIfEq 0x8004, GENDER_FEMALE, _0A32
    CloseMessage
    WaitTime 15, 0x800C
    ClearFlag FLAG_UNK_0x028A
    SetObjectEventPos 26, 0x2B4, 0x25E
    AddObject 26
    CallCommonScript 0x807
    ApplyMovement 26, _0A7C
    WaitMovement
    Message 29
    CloseMessage
    ApplyMovement 6, _0B3C
    ApplyMovement LOCALID_PLAYER, _0B9C
    WaitMovement
    GetPlayerGender 0x8004
    CallIfEq 0x8004, GENDER_MALE, _0A37
    CallIfEq 0x8004, GENDER_FEMALE, _0A3C
    Message 32
    GetPlayerGender 0x8004
    CallIfEq 0x8004, GENDER_MALE, _0A41
    CallIfEq 0x8004, GENDER_FEMALE, _0A46
    CloseMessage
    ApplyMovement 6, _0B44
    ApplyMovement 26, _0A88
    WaitMovement
    RemoveObject 6
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8005, 0x253, _083A
    GoToIfEq 0x8005, 0x255, _0854
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
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8005, 0x253, _08A9
    GoToIfEq 0x8005, 0x255, _08C3
    End

    .byte 134
    .byte 1
    .byte 26
    .byte 0
    .byte 180
    .byte 2
    .byte 91
    .byte 2
    .byte 27
    .byte 0
    .byte 134
    .byte 1
    .byte 26
    .byte 0
    .byte 180
    .byte 2
    .byte 93
    .byte 2
    .byte 27
    .byte 0

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
    SetVar 0x411F, 1
    PlayFanfare SEQ_SE_DP_KAIDAN2
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_VEILSTONE_CITY_GALACTIC_WAREHOUSE, 0, 8, 11, 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

VeilstoneCity_SetPlayerCounterpartPartnerTeam:
    GetPlayerGender 0x800C
    GoToIfEq 0x800C, GENDER_MALE, VeilstoneCity_SetDawnPartnerTeam
    GoToIfEq 0x800C, GENDER_FEMALE, VeilstoneCity_SetLucasPartnerTeam
    End

VeilstoneCity_SetDawnPartnerTeam:
    GetPlayerStarterSpecies 0x800C
    SetVar 0x8004, TRAINER_DAWN_VEILSTONE_CITY_PIPLUP
    GoToIfEq 0x800C, SPECIES_CHIMCHAR, _099D
    SetVar 0x8004, TRAINER_DAWN_VEILSTONE_CITY_TURTWIG
    GoToIfEq 0x800C, SPECIES_PIPLUP, _099D
    SetVar 0x8004, TRAINER_DAWN_VEILSTONE_CITY_CHIMCHAR
    Return

VeilstoneCity_SetLucasPartnerTeam:
    GetPlayerStarterSpecies 0x800C
    SetVar 0x8004, TRAINER_LUCAS_VEILSTONE_CITY_PIPLUP
    GoToIfEq 0x800C, SPECIES_CHIMCHAR, _099D
    SetVar 0x8004, TRAINER_LUCAS_VEILSTONE_CITY_TURTWIG
    GoToIfEq 0x800C, SPECIES_PIPLUP, _099D
    SetVar 0x8004, TRAINER_LUCAS_VEILSTONE_CITY_CHIMCHAR
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
    MoveAction_016 10
    MoveAction_019 3
    EndMovement

    .balign 4, 0
_0A88:
    MoveAction_063 2
    MoveAction_034
    EndMovement

    .balign 4, 0
_0A94:
    MoveAction_015
    MoveAction_032
    EndMovement

    .balign 4, 0
_0AA0:
    MoveAction_015
    MoveAction_033
    EndMovement

    .balign 4, 0
_0AAC:
    MoveAction_015 5
    MoveAction_012 4
    MoveAction_069
    EndMovement

    .balign 4, 0
_0ABC:
    MoveAction_013
    MoveAction_035
    EndMovement

    .balign 4, 0
_0AC8:
    MoveAction_013
    MoveAction_035
    EndMovement

    .balign 4, 0
_0AD4:
    MoveAction_012
    MoveAction_035
    EndMovement

    .byte 62
    .byte 0
    .byte 1
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 75
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 14
    .byte 0
    .byte 4
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 13
    .byte 0
    .byte 2
    .byte 0
    .byte 14
    .byte 0
    .byte 2
    .byte 0
    .byte 13
    .byte 0
    .byte 6
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0B2C:
    MoveAction_032
    EndMovement

    .balign 4, 0
_0B34:
    MoveAction_033
    EndMovement

    .balign 4, 0
_0B3C:
    MoveAction_038
    EndMovement

    .balign 4, 0
_0B44:
    MoveAction_014 3
    MoveAction_013 10
    EndMovement

    .balign 4, 0
_0B50:
    MoveAction_012
    MoveAction_015
    EndMovement

    .balign 4, 0
_0B5C:
    MoveAction_035
    EndMovement

    .balign 4, 0
_0B64:
    MoveAction_035
    EndMovement

    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0B8C:
    MoveAction_033
    EndMovement

    .balign 4, 0
_0B94:
    MoveAction_032
    EndMovement

    .balign 4, 0
_0B9C:
    MoveAction_034
    EndMovement

    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0BB0:
    MoveAction_063
    MoveAction_001
    EndMovement

    .balign 4, 0
_0BBC:
    MoveAction_063
    MoveAction_000
    EndMovement

    .balign 4, 0
_0BC8:
    MoveAction_013
    MoveAction_015 5
    MoveAction_012 5
    MoveAction_069
    EndMovement

    .balign 4, 0
_0BDC:
    MoveAction_012
    MoveAction_015 5
    MoveAction_012 5
    MoveAction_069
    EndMovement

    .balign 4, 0
_0BF0:
    MoveAction_034
    EndMovement

    .balign 4, 0
_0BF8:
    MoveAction_019 4
    MoveAction_016 4
    MoveAction_036
    EndMovement

    .balign 4, 0
_0C08:
    MoveAction_019 4
    MoveAction_016 6
    MoveAction_036
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
    SetVar 0x8004, ITEM_TM63
    SetVar 0x8005, 1
    GoToIfCannotFitItem 0x8004, 0x8005, 0x800C, _0CC7
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x00CC
    GoTo _0CBC

_0CBC:
    Message 51
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0CC7:
    CallCommonScript 0x7E1
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
    MoveAction_032
    EndMovement

    .balign 4, 0
_0D30:
    MoveAction_033
    MoveAction_075
    EndMovement

    .balign 4, 0
_0D3C:
    MoveAction_017
    MoveAction_034
    MoveAction_063 2
    MoveAction_012
    MoveAction_034
    EndMovement

    .balign 4, 0
_0D54:
    MoveAction_014
    EndMovement

_0D5C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckBadgeAcquired BADGE_ID_COBBLE, 0x800C
    GoToIfEq 0x800C, 1, _0D82
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
    CheckBadgeAcquired BADGE_ID_COBBLE, 0x800C
    GoToIfEq 0x800C, 1, _0DB3
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
    ScrCmd_188 26, 14
    ScrCmd_189 26, 0
    ClearFlag FLAG_UNK_0x028A
    AddObject 26
    GetPlayerDir 0x800C
    GoToIfEq 0x800C, 0, _0E34
    GoToIfEq 0x800C, 1, _0E5C
    GoToIfEq 0x800C, 2, _0EA4
    GoToIfEq 0x800C, 3, _0E7C
    End

_0E34:
    ApplyMovement LOCALID_PLAYER, _0F48
    ApplyMovement 23, _0F24
    WaitMovement
    CallCommonScript 0x807
    ApplyMovement 26, _0F80
    WaitMovement
    GoTo _0ECC
    End

_0E5C:
    ApplyMovement 23, _0F24
    WaitMovement
    CallCommonScript 0x807
    ApplyMovement 26, _0F70
    WaitMovement
    GoTo _0ECC
    End

_0E7C:
    ApplyMovement LOCALID_PLAYER, _0F58
    ApplyMovement 23, _0F24
    WaitMovement
    CallCommonScript 0x807
    ApplyMovement 26, _0F90
    WaitMovement
    GoTo _0ECC
    End

_0EA4:
    ApplyMovement LOCALID_PLAYER, _0F64
    ApplyMovement 23, _0F38
    WaitMovement
    CallCommonScript 0x807
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
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _0EF4
    GoTo _0F0B
    End

_0EF4:
    SetVar 0x411F, 3
    SetFlag FLAG_UNK_0x009B
    Message 39
    CloseMessage
    CallCommonScript 0x808
    ReleaseAll
    End

_0F0B:
    Message 40
    WaitABXPadPress
    CloseMessage
    CallCommonScript 0x808
    ReleaseAll
    End

    .balign 4, 0
_0F1C:
    MoveAction_075
    EndMovement

    .balign 4, 0
_0F24:
    MoveAction_019
    MoveAction_017 2
    MoveAction_019
    MoveAction_017 9
    EndMovement

    .balign 4, 0
_0F38:
    MoveAction_017 2
    MoveAction_019 2
    MoveAction_017 9
    EndMovement

    .balign 4, 0
_0F48:
    MoveAction_063
    MoveAction_035
    MoveAction_033
    EndMovement

    .balign 4, 0
_0F58:
    MoveAction_063 2
    MoveAction_033
    EndMovement

    .balign 4, 0
_0F64:
    MoveAction_063
    MoveAction_033
    EndMovement

    .balign 4, 0
_0F70:
    MoveAction_012 6
    MoveAction_014 2
    MoveAction_012 2
    EndMovement

    .balign 4, 0
_0F80:
    MoveAction_012 6
    MoveAction_014 2
    MoveAction_032
    EndMovement

    .balign 4, 0
_0F90:
    MoveAction_012 6
    MoveAction_014 3
    MoveAction_012
    EndMovement

    .balign 4, 0
_0FA0:
    MoveAction_012 6
    MoveAction_014
    MoveAction_012
    EndMovement

_0FB0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ApplyMovement 26, _0FE0
    WaitMovement
    BufferPlayerName 0
    Message 41
    CallCommonScript 0x807
    GoToIfSet FLAG_UNK_0x009B, _0EF4
    GoTo _0ED8

    .byte 2
    .byte 0
    .byte 0

    .balign 4, 0
_0FE0:
    MoveAction_063
    MoveAction_075
    MoveAction_063
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
    CheckPartyHasSpecies2 SPECIES_DEOXYS, 0x800C
    GoToIfEq 0x800C, FALSE, VeilstoneCity_MeteoriteFromTheStars
    ChangeDeoxysForm DEOXYS_FORM_SPEED
    PlayCry SPECIES_DEOXYS
    Message veilstone_city_meteorite_speed
    WaitABXPadPress
    ScrCmd_04D
    CloseMessage
    ReleaseAll
    End

VeilstoneCity_DeoxysMeteoriteDefense:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckPartyHasSpecies2 SPECIES_DEOXYS, 0x800C
    GoToIfEq 0x800C, FALSE, VeilstoneCity_MeteoriteFromTheStars
    ChangeDeoxysForm DEOXYS_FORM_DEFENSE
    PlayCry SPECIES_DEOXYS
    Message veilstone_city_meteorite_defense
    WaitABXPadPress
    ScrCmd_04D
    CloseMessage
    ReleaseAll
    End

VeilstoneCity_DeoxysMeteoriteAttack:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckPartyHasSpecies2 SPECIES_DEOXYS, 0x800C
    GoToIfEq 0x800C, FALSE, VeilstoneCity_MeteoriteFromTheStars
    ChangeDeoxysForm DEOXYS_FORM_ATTACK
    PlayCry SPECIES_DEOXYS
    Message veilstone_city_meteorite_attack
    WaitABXPadPress
    ScrCmd_04D
    CloseMessage
    ReleaseAll
    End

VeilstoneCity_DeoxysMeteoriteNormal:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckPartyHasSpecies2 SPECIES_DEOXYS, 0x800C
    GoToIfEq 0x800C, FALSE, VeilstoneCity_MeteoriteFromTheStars
    ChangeDeoxysForm DEOXYS_FORM_NORMAL
    PlayCry SPECIES_DEOXYS
    Message veilstone_city_meteorite_normal
    WaitABXPadPress
    ScrCmd_04D
    CloseMessage
    ReleaseAll
    End

VeilstoneCity_MeteoriteFromTheStars:
    Message veilstone_city_meteorite_from_the_stars
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1184:
    LockAll
    ApplyMovement 6, _11E8
    WaitMovement
    GetPlayerGender 0x8004
    CallIfEq 0x8004, GENDER_MALE, _11D6
    CallIfEq 0x8004, GENDER_FEMALE, _11DE
    CloseMessage
    ApplyMovement 6, _11FC
    WaitMovement
    RemoveObject 6
    Call _00BA
    ClearFlag FLAG_UNK_0x01A8
    AddObject 6
    SetVar 0x411A, 2
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
    MoveAction_032
    MoveAction_075
    MoveAction_015 2
    MoveAction_012
    EndMovement

    .balign 4, 0
_11FC:
    MoveAction_013 9
    EndMovement

_1204:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 52
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _122B
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

    .byte 0
    .byte 0
    .byte 0
