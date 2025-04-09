#include "macros/scrcmd.inc"
#include "res/text/bank/jubilife_city.h"

    .data

    ScriptEntry _0072
    ScriptEntry _00E8
    ScriptEntry _0700
    ScriptEntry _09DC
    ScriptEntry _0954
    ScriptEntry _0F3C
    ScriptEntry _0FAD
    ScriptEntry _0FD3
    ScriptEntry _1027
    ScriptEntry _0FC0
    ScriptEntry _0FE6
    ScriptEntry _058C
    ScriptEntry _05BD
    ScriptEntry _1320
    ScriptEntry _1397
    ScriptEntry _140E
    ScriptEntry _10C4
    ScriptEntry _11CC
    ScriptEntry _05D0
    ScriptEntry _14A9
    ScriptEntry _14BC
    ScriptEntry _103A
    ScriptEntry _1051
    ScriptEntry _1068
    ScriptEntry _107F
    ScriptEntry _1096
    ScriptEntry _10AD
    ScriptEntry _14CF
    ScriptEntryEnd

_0072:
    CallIfEq 0x4077, 0, _00AC
    CallIfGe 0x4077, 3, _00C2
    GetPlayerGender 0x4000
    GoToIfEq 0x4000, GENDER_MALE, _00D8
    GoToIfEq 0x4000, GENDER_FEMALE, _00E0
    End

_00AC:
    SetObjectEventPos 31, 177, 0x306
    ScrCmd_189 31, 1
    ScrCmd_188 31, 15
    Return

_00C2:
    SetObjectEventPos 7, 176, 0x2E3
    ScrCmd_189 7, 2
    ScrCmd_188 7, 16
    Return

_00D8:
    SetVar 0x4020, 97
    End

_00E0:
    SetVar 0x4020, 0
    End

_00E8:
    LockAll
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8004, 173, _0119
    GoToIfEq 0x8004, 174, _0129
    GoToIfEq 0x8004, 175, _0139
    End

_0119:
    SetObjectEventPos 7, 173, 0x314
    GoTo _0149
    End

_0129:
    SetObjectEventPos 7, 174, 0x314
    GoTo _0149
    End

_0139:
    SetObjectEventPos 7, 175, 0x314
    GoTo _0149
    End

_0149:
    ClearFlag FLAG_UNK_0x017A
    AddObject 7
    ScrCmd_062 7
    ApplyMovement 7, _043C
    WaitMovement
    ApplyMovement 7, _044C
    WaitMovement
    CallCommonScript 0x7F8
    GetPlayerGender 0x800C
    GoToIfEq 0x800C, GENDER_MALE, _018D
    GoToIfEq 0x800C, GENDER_FEMALE, _0224
    End

_018D:
    BufferCounterpartName 0
    BufferPlayerName 1
    Message 0
    GetPartyCount 0x800C
    BufferNumber 0, 0x800C
    CallIfGe 0x800C, 4, _021A
    CallIfLe 0x800C, 3, _021F
    BufferPlayerName 0
    BufferRivalName 1
    Message 3
    Call _02DB
    Message 8
    CloseMessage
    Call _0348
    Message 9
    Call _036E
    Message 14
    Call _0390
    Call _03C0
    Message 23
    CloseMessage
    WaitTime 30, 0x800C
    BufferPlayerName 0
    Call _041B
    Message 24
    CloseMessage
    BufferRivalName 1
    Call _042F
    Message 25
    CloseMessage
    GoTo _02BB
    End

_021A:
    Message 1
    Return

_021F:
    Message 2
    Return

_0224:
    BufferCounterpartName 0
    BufferPlayerName 1
    Message 4
    GetPartyCount 0x800C
    BufferNumber 0, 0x800C
    CallIfGe 0x800C, 4, _02B1
    CallIfLe 0x800C, 3, _02B6
    BufferPlayerName 0
    BufferRivalName 1
    Message 7
    Call _02DB
    Message 10
    CloseMessage
    Call _0348
    Message 11
    Call _036E
    Message 15
    Call _0390
    Call _03C0
    Message 26
    CloseMessage
    WaitTime 15, 0x800C
    BufferPlayerName 0
    Call _041B
    Message 27
    CloseMessage
    BufferRivalName 1
    Call _042F
    Message 28
    CloseMessage
    GoTo _02BB
    End

_02B1:
    Message 5
    Return

_02B6:
    Message 6
    Return

_02BB:
    ApplyMovement 7, _0474
    ApplyMovement LOCALID_PLAYER, _04F8
    WaitMovement
    RemoveObject 7
    SetVar 0x4077, 1
    ReleaseAll
    End

_02DB:
    CloseMessage
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8004, 173, _030C
    GoToIfEq 0x8004, 174, _0320
    GoToIfEq 0x8004, 175, _0334
    End

_030C:
    ApplyMovement 7, _0454
    ApplyMovement LOCALID_PLAYER, _04B4
    WaitMovement
    Return

_0320:
    ApplyMovement 7, _046C
    ApplyMovement LOCALID_PLAYER, _04D4
    WaitMovement
    Return

_0334:
    ApplyMovement 7, _0460
    ApplyMovement LOCALID_PLAYER, _04C4
    WaitMovement
    Return

_0348:
    ApplyMovement 31, _0518
    WaitMovement
    ApplyMovement 31, _0544
    ApplyMovement 7, _047C
    ApplyMovement LOCALID_PLAYER, _04DC
    WaitMovement
    Return

_036E:
    ApplyMovement 31, _0550
    WaitMovement
    CallCommonScript 0x807
    Message 12
    Message 13
    CloseMessage
    ApplyMovement 7, _0484
    WaitMovement
    Return

_0390:
    Message 16
    Message 17
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _03B6
    GoToIfEq 0x800C, MENU_NO, _03BB
    End

_03B6:
    Message 18
    Return

_03BB:
    Message 19
    Return

_03C0:
    Message 20
    SetVar 0x8004, 0x1D1
    SetVar 0x8005, 1
    CallCommonScript 0x7FC
    Message 21
    CloseMessage
    ApplyMovement 31, _055C
    WaitMovement
    Message 22
    CloseMessage
    ApplyMovement 7, _04A4
    ApplyMovement LOCALID_PLAYER, _0504
    ApplyMovement 31, _0574
    WaitMovement
    ScrCmd_187 31, 186, 0, 0x2F4, 1
    SetObjectEventPos 31, 186, 0x2F4
    CallCommonScript 0x808
    Return

_041B:
    ApplyMovement 7, _048C
    ApplyMovement LOCALID_PLAYER, _04EC
    WaitMovement
    Return

_042F:
    ApplyMovement 7, _0498
    WaitMovement
    Return

    .balign 4, 0
_043C:
    MoveAction_013 4
    MoveAction_075
    MoveAction_065
    EndMovement

    .balign 4, 0
_044C:
    MoveAction_013 3
    EndMovement

    .balign 4, 0
_0454:
    MoveAction_015
    MoveAction_012 18
    EndMovement

    .balign 4, 0
_0460:
    MoveAction_014
    MoveAction_012 18
    EndMovement

    .balign 4, 0
_046C:
    MoveAction_012 18
    EndMovement

    .balign 4, 0
_0474:
    MoveAction_013 9
    EndMovement

    .balign 4, 0
_047C:
    MoveAction_012 2
    EndMovement

    .balign 4, 0
_0484:
    MoveAction_032
    EndMovement

    .balign 4, 0
_048C:
    MoveAction_013
    MoveAction_014 2
    EndMovement

    .balign 4, 0
_0498:
    MoveAction_012
    MoveAction_015 2
    EndMovement

    .balign 4, 0
_04A4:
    MoveAction_035
    MoveAction_063 4
    MoveAction_032
    EndMovement

    .balign 4, 0
_04B4:
    MoveAction_012
    MoveAction_015
    MoveAction_012 17
    EndMovement

    .balign 4, 0
_04C4:
    MoveAction_012
    MoveAction_014
    MoveAction_012 17
    EndMovement

    .balign 4, 0
_04D4:
    MoveAction_012 18
    EndMovement

    .balign 4, 0
_04DC:
    MoveAction_012 2
    MoveAction_015
    MoveAction_012
    EndMovement

    .balign 4, 0
_04EC:
    MoveAction_062
    MoveAction_034
    EndMovement

    .balign 4, 0
_04F8:
    MoveAction_063
    MoveAction_033
    EndMovement

    .balign 4, 0
_0504:
    MoveAction_063
    MoveAction_035
    MoveAction_063 3
    MoveAction_032
    EndMovement

    .balign 4, 0
_0518:
    MoveAction_038
    MoveAction_063 2
    MoveAction_037
    MoveAction_063
    MoveAction_010
    MoveAction_018 5
    MoveAction_039
    MoveAction_063
    MoveAction_036
    MoveAction_063
    EndMovement

    .balign 4, 0
_0544:
    MoveAction_011
    MoveAction_019 2
    EndMovement

    .balign 4, 0
_0550:
    MoveAction_037
    MoveAction_075
    EndMovement

    .balign 4, 0
_055C:
    MoveAction_038
    MoveAction_063
    MoveAction_039
    MoveAction_063 2
    MoveAction_037
    EndMovement

    .balign 4, 0
_0574:
    MoveAction_019 3
    MoveAction_038
    MoveAction_063
    MoveAction_008
    MoveAction_016 7
    EndMovement

_058C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckBadgeAcquired BADGE_ID_COAL, 0x800C
    GoToIfEq 0x800C, 1, _05B2
    Message 29
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_05B2:
    Message 30
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_05BD:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 92
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_05D0:
    LockAll
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8005, 0x30B, _0601
    GoToIfEq 0x8005, 0x30C, _062A
    GoToIfEq 0x8005, 0x30D, _0653
    End

_0601:
    ApplyMovement 26, _0680
    WaitMovement
    Message 91
    CloseMessage
    ApplyMovement 26, _06B0
    ApplyMovement LOCALID_PLAYER, _06F8
    WaitMovement
    GoTo _067C
    End

_062A:
    ApplyMovement 26, _0690
    WaitMovement
    Message 91
    CloseMessage
    ApplyMovement 26, _06C8
    ApplyMovement LOCALID_PLAYER, _06F8
    WaitMovement
    GoTo _067C
    End

_0653:
    ApplyMovement 26, _06A0
    WaitMovement
    Message 91
    CloseMessage
    ApplyMovement 26, _06E0
    ApplyMovement LOCALID_PLAYER, _06F8
    WaitMovement
    GoTo _067C
    End

_067C:
    ReleaseAll
    End

    .balign 4, 0
_0680:
    MoveAction_075
    MoveAction_013
    MoveAction_035
    EndMovement

    .balign 4, 0
_0690:
    MoveAction_075
    MoveAction_013 2
    MoveAction_035
    EndMovement

    .balign 4, 0
_06A0:
    MoveAction_075
    MoveAction_013 3
    MoveAction_035
    EndMovement

    .balign 4, 0
_06B0:
    MoveAction_015
    MoveAction_063 2
    MoveAction_014
    MoveAction_012
    MoveAction_033
    EndMovement

    .balign 4, 0
_06C8:
    MoveAction_015
    MoveAction_063 2
    MoveAction_014
    MoveAction_012 2
    MoveAction_033
    EndMovement

    .balign 4, 0
_06E0:
    MoveAction_015
    MoveAction_063 2
    MoveAction_014
    MoveAction_012 3
    MoveAction_033
    EndMovement

    .balign 4, 0
_06F8:
    MoveAction_015
    EndMovement

_0700:
    LockAll
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8005, 0x2F5, _073E
    GoToIfEq 0x8005, 0x2F6, _0758
    GoToIfEq 0x8005, 0x2F7, _0772
    GoToIfEq 0x8005, 0x2F8, _078C
    End

_073E:
    ApplyMovement LOCALID_PLAYER, _0894
    ApplyMovement 31, _08B4
    WaitMovement
    GoTo _07A6
    End

_0758:
    ApplyMovement LOCALID_PLAYER, _0894
    ApplyMovement 31, _08CC
    WaitMovement
    GoTo _07A6
    End

_0772:
    ApplyMovement LOCALID_PLAYER, _0894
    ApplyMovement 31, _08E4
    WaitMovement
    GoTo _07A6
    End

_078C:
    ApplyMovement LOCALID_PLAYER, _0894
    ApplyMovement 31, _08FC
    WaitMovement
    GoTo _07A6
    End

_07A6:
    Call _07FC
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _08AC
    ApplyMovement 31, _0914
    WaitMovement
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8005, 0x2F5, _0846
    GoToIfEq 0x8005, 0x2F6, _0858
    GoToIfEq 0x8005, 0x2F7, _086A
    GoToIfEq 0x8005, 0x2F8, _087C
    End

_07FC:
    GoToIfUnset FLAG_UNK_0x00F1, _0817
    GoToIfUnset FLAG_UNK_0x00F3, _081C
    Message 35
    Return

_0817:
    Message 32
    Return

_081C:
    Message 34
    Return

_0821:
    GoToIfUnset FLAG_UNK_0x00F1, _083C
    GoToIfUnset FLAG_UNK_0x00F3, _0841
    Message 35
    Return

_083C:
    Message 31
    Return

_0841:
    Message 33
    Return

_0846:
    ApplyMovement 31, _0924
    WaitMovement
    GoTo _088E
    End

_0858:
    ApplyMovement 31, _0930
    WaitMovement
    GoTo _088E
    End

_086A:
    ApplyMovement 31, _093C
    WaitMovement
    GoTo _088E
    End

_087C:
    ApplyMovement 31, _0948
    WaitMovement
    GoTo _088E
    End

_088E:
    ReleaseAll
    End

    .balign 4, 0
_0894:
    MoveAction_063 5
    MoveAction_034
    EndMovement

    .balign 4, 0
_08A0:
    MoveAction_063 5
    MoveAction_002
    EndMovement

    .balign 4, 0
_08AC:
    MoveAction_014
    EndMovement

    .balign 4, 0
_08B4:
    MoveAction_001
    MoveAction_075
    MoveAction_065
    MoveAction_013
    MoveAction_015
    EndMovement

    .balign 4, 0
_08CC:
    MoveAction_001
    MoveAction_075
    MoveAction_065
    MoveAction_013 2
    MoveAction_015
    EndMovement

    .balign 4, 0
_08E4:
    MoveAction_001
    MoveAction_075
    MoveAction_065
    MoveAction_013 3
    MoveAction_015
    EndMovement

    .balign 4, 0
_08FC:
    MoveAction_001
    MoveAction_075
    MoveAction_065
    MoveAction_013 4
    MoveAction_015
    EndMovement

    .balign 4, 0
_0914:
    MoveAction_071
    MoveAction_014
    MoveAction_072
    EndMovement

    .balign 4, 0
_0924:
    MoveAction_012
    MoveAction_033
    EndMovement

    .balign 4, 0
_0930:
    MoveAction_012 2
    MoveAction_033
    EndMovement

    .balign 4, 0
_093C:
    MoveAction_012 3
    MoveAction_033
    EndMovement

    .balign 4, 0
_0948:
    MoveAction_012 4
    MoveAction_033
    EndMovement

_0954:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00F3, _097F
    Call _0821
    WaitABPress
    CloseMessage
    ApplyMovement 31, _09D4
    WaitMovement
    ReleaseAll
    End

_097F:
    Message 35
    WaitABPress
    CloseMessage
    ApplyMovement 31, _09D4
    WaitMovement
    ReleaseAll
    End

_0994:
    CheckItem ITEM_PAL_PAD, 1, 0x800C
    GoToIfEq 0x800C, 1, _09BD
    Message 36
    CloseMessage
    ApplyMovement 31, _1558
    WaitMovement
    Message 38
    Return

_09BD:
    Message 37
    CloseMessage
    ApplyMovement 31, _1558
    WaitMovement
    Message 38
    Return

    .balign 4, 0
_09D4:
    MoveAction_001
    EndMovement

_09DC:
    LockAll
    ApplyMovement 18, _0E94
    WaitMovement
    Message 64
    CloseMessage
    GetPlayerMapPos 0x8000, 0x8001
    GoToIfEq 0x8000, 173, _0A1C
    GoToIfEq 0x8000, 174, _0A36
    GoToIfEq 0x8000, 175, _0A50
    End

_0A1C:
    ApplyMovement 16, _0EBC
    ApplyMovement LOCALID_PLAYER, _0DD0
    WaitMovement
    GoTo _0A6A
    End

_0A36:
    ApplyMovement 16, _0EBC
    ApplyMovement LOCALID_PLAYER, _0DE4
    WaitMovement
    GoTo _0A6A
    End

_0A50:
    ApplyMovement 16, _0EBC
    ApplyMovement LOCALID_PLAYER, _0DF8
    WaitMovement
    GoTo _0A6A
    End

_0A6A:
    BufferPlayerName 0
    BufferCounterpartName 1
    Message 65
    ApplyMovement 18, _0E94
    WaitMovement
    Message 66
    ApplyMovement 16, _0EC8
    WaitMovement
    Message 67
    ApplyMovement 16, _0ED0
    WaitMovement
    Message 68
    ApplyMovement 17, _0E9C
    ApplyMovement 18, _0E9C
    WaitMovement
    Message 69
    Message 70
    ApplyMovement 7, _0E44
    WaitMovement
    GetPlayerGender 0x800C
    GoToIfEq 0x800C, GENDER_MALE, _0ADC
    GoToIfEq 0x800C, GENDER_FEMALE, _0AED
    End

_0ADC:
    BufferCounterpartName 0
    BufferPlayerName 1
    Message 71
    GoTo _0AFE
    End

_0AED:
    BufferCounterpartName 0
    BufferPlayerName 1
    Message 72
    GoTo _0AFE
    End

_0AFE:
    CloseMessage
    ApplyMovement 16, _0F00
    WaitMovement
    ApplyMovement 7, _0E4C
    ApplyMovement LOCALID_PLAYER, _0F30
    WaitMovement
    Call JubilifeCity_SetPlayerCounterpartPartnerTeam
    StartTagBattle 0x8004, TRAINER_GALACTIC_GRUNT_JUBILIFE_CITY_1, TRAINER_GALACTIC_GRUNT_JUBILIFE_CITY_2
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _0DB7
    ApplyMovement 18, _0EB4
    WaitMovement
    Message 73
    CloseMessage
    ApplyMovement 17, _0EA4
    ApplyMovement 18, _0EAC
    WaitMovement
    RemoveObject 17
    RemoveObject 18
    SetFlag FLAG_UNK_0x019C
    ApplyMovement 16, _0EF8
    ApplyMovement 7, _0E54
    WaitMovement
    BufferPlayerName 0
    Message 74
    ApplyMovement 7, _0E60
    WaitMovement
    GetPlayerGender 0x800C
    GoToIfEq 0x800C, GENDER_MALE, _0C30
    GoToIfEq 0x800C, GENDER_FEMALE, _0C41
    End

JubilifeCity_SetPlayerCounterpartPartnerTeam:
    GetPlayerGender 0x800C
    GoToIfEq 0x800C, GENDER_MALE, JubilifeCity_SetDawnPartnerTeam
    GoToIfEq 0x800C, GENDER_FEMALE, JubilifeCity_SetLucasPartnerTeam
    End

JubilifeCity_SetDawnPartnerTeam:
    GetPlayerStarterSpecies 0x800C
    SetVar 0x8004, TRAINER_DAWN_JUBILIFE_CITY_CHIMCHAR
    GoToIfEq 0x800C, SPECIES_CHIMCHAR, JubilifeCity_Return
    SetVar 0x8004, TRAINER_DAWN_JUBILIFE_CITY_PIPLUP
    GoToIfEq 0x800C, SPECIES_PIPLUP, JubilifeCity_Return
    SetVar 0x8004, TRAINER_DAWN_JUBILIFE_CITY_TURTWIG
    Return

JubilifeCity_SetLucasPartnerTeam:
    GetPlayerStarterSpecies 0x800C
    SetVar 0x8004, TRAINER_LUCAS_JUBILIFE_CITY_CHIMCHAR
    GoToIfEq 0x800C, SPECIES_CHIMCHAR, JubilifeCity_Return
    SetVar 0x8004, TRAINER_LUCAS_JUBILIFE_CITY_PIPLUP
    GoToIfEq 0x800C, SPECIES_PIPLUP, JubilifeCity_Return
    SetVar 0x8004, TRAINER_LUCAS_JUBILIFE_CITY_TURTWIG
    Return

JubilifeCity_Return:
    Return

_0C30:
    BufferCounterpartName 0
    BufferPlayerName 1
    Message 75
    GoTo _0C52
    End

_0C41:
    BufferCounterpartName 0
    BufferPlayerName 1
    Message 76
    GoTo _0C52
    End

_0C52:
    BufferPlayerName 0
    Message 77
    CloseMessage
    ApplyMovement 7, _0E68
    ApplyMovement 16, _0ED8
    ApplyMovement LOCALID_PLAYER, _0E08
    WaitMovement
    GoTo _0C7C
    End

_0C7C:
    RemoveObject 7
    RemoveObject 16
    ClearFlag FLAG_UNK_0x0198
    SetVar 0x4077, 4
    SetVar 0x4076, 2
    SetVar 0x4079, 3
    RemoveObject 24
    RemoveObject 25
    RemoveObject 27
    SetObjectEventPos 30, 174, 0x2EE
    ScrCmd_188 30, 14
    ClearFlag FLAG_UNK_0x018B
    AddObject 30
    ScrCmd_062 30
    ApplyMovement 30, _0DC0
    WaitMovement
    Message 78
    Call _0CF0
    Message 79
    CloseMessage
    WaitTime 15, 0x800C
    ApplyMovement 30, _0DC8
    WaitMovement
    RemoveObject 30
    ReleaseAll
    End

_0CF0:
    SetVar 0x8004, 0x1B3
    SetVar 0x8005, 1
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x00F2
    Call _0D58
    Call _0D58
    Call _0D58
    Call _0D58
    Call _0D58
    Call _0D72
    Call _0D72
    Call _0D72
    Call _0D72
    Call _0D72
    ScrCmd_1D5 0
    SetVar 0x4001, 0x270F
    Call _0D8C
    Call _0D8C
    Return

_0D58:
    GetRandom 0x800C, 6
    SetVar 0x8004, 0
    AddVar 0x8004, 0x800C
    ScrCmd_1D2 0x8004, 1
    Return

_0D72:
    GetRandom 0x800C, 6
    SetVar 0x8004, 18
    AddVar 0x8004, 0x800C
    ScrCmd_1D2 0x8004, 1
    Return

_0D8C:
    GetRandom 0x800C, 8
    GoToIfEq 0x4001, 0x800C, _0D8C
    SetVar 0x4001, 0x800C
    SetVar 0x8004, 1
    AddVar 0x8004, 0x800C
    ScrCmd_1D5 0x8004
    Return

_0DB7:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
_0DC0:
    MoveAction_012 8
    EndMovement

    .balign 4, 0
_0DC8:
    MoveAction_013 8
    EndMovement

    .balign 4, 0
_0DD0:
    MoveAction_063 2
    MoveAction_012
    MoveAction_015 2
    MoveAction_012
    EndMovement

    .balign 4, 0
_0DE4:
    MoveAction_063 2
    MoveAction_012
    MoveAction_015
    MoveAction_012
    EndMovement

    .balign 4, 0
_0DF8:
    MoveAction_063 2
    MoveAction_012 2
    MoveAction_032
    EndMovement

    .balign 4, 0
_0E08:
    MoveAction_063
    MoveAction_035
    MoveAction_063
    MoveAction_033
    EndMovement

    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 63
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
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 63
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

    .balign 4, 0
_0E44:
    MoveAction_033
    EndMovement

    .balign 4, 0
_0E4C:
    MoveAction_014
    EndMovement

    .balign 4, 0
_0E54:
    MoveAction_014
    MoveAction_013
    EndMovement

    .balign 4, 0
_0E60:
    MoveAction_033
    EndMovement

    .balign 4, 0
_0E68:
    MoveAction_015
    MoveAction_013 9
    EndMovement

    .byte 15
    .byte 0
    .byte 1
    .byte 0
    .byte 13
    .byte 0
    .byte 9
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 15
    .byte 0
    .byte 1
    .byte 0
    .byte 13
    .byte 0
    .byte 9
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0E94:
    MoveAction_035
    EndMovement

    .balign 4, 0
_0E9C:
    MoveAction_039 2
    EndMovement

    .balign 4, 0
_0EA4:
    MoveAction_016 9
    EndMovement

    .balign 4, 0
_0EAC:
    MoveAction_016 10
    EndMovement

    .balign 4, 0
_0EB4:
    MoveAction_035
    EndMovement

    .balign 4, 0
_0EBC:
    MoveAction_033
    MoveAction_075
    EndMovement

    .balign 4, 0
_0EC8:
    MoveAction_038
    EndMovement

    .balign 4, 0
_0ED0:
    MoveAction_033
    EndMovement

    .balign 4, 0
_0ED8:
    MoveAction_013 9
    EndMovement

    .byte 13
    .byte 0
    .byte 9
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 13
    .byte 0
    .byte 9
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0EF8:
    MoveAction_033
    EndMovement

    .balign 4, 0
_0F00:
    MoveAction_034
    EndMovement

    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
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
_0F30:
    MoveAction_014
    MoveAction_032
    EndMovement

_0F3C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 80
    InitGlobalTextListMenu 29, 11, 0, 0x800C, NO_EXIT_ON_B
    SetMenuXOriginToRight
    AddListMenuEntry 45, 0
    AddListMenuEntry 46, 1
    AddListMenuEntry 47, 2
    ShowListMenu
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0F97
    GoToIfEq 0x8008, 1, _0FA2
    Message 83
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0F97:
    Message 81
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0FA2:
    Message 82
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0FAD:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 84
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0FC0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 87
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0FD3:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 85
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0FE6:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 88
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _1011
    GoToIfEq 0x800C, MENU_NO, _101C
    End

_1011:
    Message 89
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_101C:
    Message 90
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1027:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 86
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_103A:
    ShowMapSign 95
    End

_1051:
    ShowLandmarkSign 96
    End

_1068:
    ShowLandmarkSign 97
    End

_107F:
    ShowLandmarkSign 98
    End

_1096:
    ShowLandmarkSign 99
    End

_10AD:
    ShowLandmarkSign 100
    End

_10C4:
    LockAll
    ApplyMovement 23, _1178
    ApplyMovement LOCALID_PLAYER, _1170
    WaitMovement
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8004, 172, _1133
    CallIfEq 0x8004, 173, _113F
    CallIfEq 0x8004, 174, _114B
    CallIfEq 0x8004, 175, _1157
    CallIfEq 0x8004, 176, _1163
    Message 39
    SetVar 0x40E7, 2
    Message 40
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1133:
    ApplyMovement 23, _1184
    WaitMovement
    Return

_113F:
    ApplyMovement 23, _1194
    WaitMovement
    Return

_114B:
    ApplyMovement 23, _11A4
    WaitMovement
    Return

_1157:
    ApplyMovement 23, _11AC
    WaitMovement
    Return

_1163:
    ApplyMovement 23, _11BC
    WaitMovement
    Return

    .balign 4, 0
_1170:
    MoveAction_000
    EndMovement

    .balign 4, 0
_1178:
    MoveAction_033
    MoveAction_075
    EndMovement

    .balign 4, 0
_1184:
    MoveAction_013 2
    MoveAction_014 2
    MoveAction_013 2
    EndMovement

    .balign 4, 0
_1194:
    MoveAction_013 2
    MoveAction_014
    MoveAction_013 2
    EndMovement

    .balign 4, 0
_11A4:
    MoveAction_013 4
    EndMovement

    .balign 4, 0
_11AC:
    MoveAction_013 2
    MoveAction_015
    MoveAction_013 2
    EndMovement

    .balign 4, 0
_11BC:
    MoveAction_013 2
    MoveAction_015 2
    MoveAction_013 2
    EndMovement

_11CC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar 0x8004, 0
    Call _11F8
    GoToIfEq 0x8004, 3, _1223
    Message 41
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_11F8:
    CallIfSet FLAG_UNK_0x00ED, _121B
    CallIfSet FLAG_UNK_0x00EE, _121B
    CallIfSet FLAG_UNK_0x00EF, _121B
    Return

_121B:
    AddVar 0x8004, 1
    Return

_1223:
    Message 42
    RemoveItem ITEM_COUPON_1, 1, 0x800C
    RemoveItem ITEM_COUPON_2, 1, 0x800C
    RemoveItem ITEM_COUPON_3, 1, 0x800C
    ScrCmd_131
    SetVar 0x4077, 2
    RegisterPoketchApp POKETCH_APPID_DIGITALWATCH
    RegisterPoketchApp POKETCH_APPID_CALCULATOR
    RegisterPoketchApp POKETCH_APPID_PEDOMETER
    RegisterPoketchApp POKETCH_APPID_PARTYSTATUS
    BufferPlayerName 0
    Message 43
    PlaySound SEQ_FANFA4
    WaitSound
    Message 44
    CloseMessage
    GetPlayerDir 0x800C
    GoToIfEq 0x800C, 0, _12A1
    GoToIfEq 0x800C, 1, _12BB
    GoToIfEq 0x800C, 2, _12A1
    GoToIfEq 0x800C, 3, _12A1
    End

_12A1:
    ApplyMovement 23, _12FC
    ApplyMovement LOCALID_PLAYER, _1314
    WaitMovement
    GoTo _12D5
    End

_12BB:
    ApplyMovement 23, _12F0
    ApplyMovement LOCALID_PLAYER, _1304
    WaitMovement
    GoTo _12D5
    End

_12D5:
    RemoveObject 23
    SetFlag FLAG_UNK_0x00F3
    ClearFlag FLAG_UNK_0x01F7
    RemoveObject 31
    SetFlag FLAG_UNK_0x0181
    ReleaseAll
    End

    .balign 4, 0
_12F0:
    MoveAction_014
    MoveAction_012 9
    EndMovement

    .balign 4, 0
_12FC:
    MoveAction_012 9
    EndMovement

    .balign 4, 0
_1304:
    MoveAction_063
    MoveAction_034
    MoveAction_032
    EndMovement

    .balign 4, 0
_1314:
    MoveAction_063
    MoveAction_032
    EndMovement

_1320:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00ED, _138C
    Message 45
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _1356
    GoToIfEq 0x800C, MENU_NO, _137D
    End

_1356:
    PlayFanfare SEQ_SE_DP_PINPON
    Message 46
    Message 48
    Message 49
    SetVar 0x8004, 0x1CC
    SetVar 0x8005, 1
    SetFlag FLAG_UNK_0x00ED
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_137D:
    PlayFanfare SEQ_SE_DP_BOX03
    Message 47
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_138C:
    Message 50
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1397:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00EE, _1403
    Message 51
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _13CD
    GoToIfEq 0x800C, MENU_NO, _13F4
    End

_13CD:
    PlayFanfare SEQ_SE_DP_PINPON
    Message 52
    Message 54
    Message 55
    SetVar 0x8004, 0x1CD
    SetVar 0x8005, 1
    SetFlag FLAG_UNK_0x00EE
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_13F4:
    PlayFanfare SEQ_SE_DP_BOX03
    Message 53
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1403:
    Message 56
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_140E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfLt 0x40E7, 2, _149E
    GoToIfSet FLAG_UNK_0x00EF, _1493
    Message 57
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _1451
    GoToIfEq 0x800C, MENU_NO, _1484
    End

_1451:
    PlayFanfare SEQ_SE_DP_PINPON
    Message 58
    Message 60
    Message 61
    ScrCmd_187 23, 174, 1, 0x303, 1
    SetVar 0x8004, 0x1CE
    SetVar 0x8005, 1
    SetFlag FLAG_UNK_0x00EF
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_1484:
    PlayFanfare SEQ_SE_DP_BOX03
    Message 59
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1493:
    Message 63
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_149E:
    Message 62
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_14A9:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 93
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_14BC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 94
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_14CF:
    LockAll
    GetPlayerMapPos 0x8004, 0x8005
    SetObjectEventPos 31, 179, 0x8005
    ScrCmd_189 31, 3
    ScrCmd_188 31, 17
    ClearFlag FLAG_UNK_0x0181
    AddObject 31
    ApplyMovement 31, _1538
    WaitMovement
    CallCommonScript 0x807
    ApplyMovement 31, _1544
    ApplyMovement LOCALID_PLAYER, _08A0
    WaitMovement
    Call _0994
    CloseMessage
    ApplyMovement 31, _154C
    WaitMovement
    RemoveObject 31
    CallCommonScript 0x808
    SetVar 0x4076, 2
    ReleaseAll
    End

    .balign 4, 0
_1538:
    MoveAction_011 2
    MoveAction_075
    EndMovement

    .balign 4, 0
_1544:
    MoveAction_019 6
    EndMovement

    .balign 4, 0
_154C:
    MoveAction_010
    MoveAction_018 8
    EndMovement

    .balign 4, 0
_1558:
    MoveAction_034
    MoveAction_063 2
    MoveAction_035
    EndMovement
