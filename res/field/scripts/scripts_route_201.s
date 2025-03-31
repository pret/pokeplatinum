#include "macros/scrcmd.inc"
#include "res/text/bank/route_201.h"

    .data

    ScriptEntry _0042
    ScriptEntry _0072
    ScriptEntry _09E0
    ScriptEntry _0A8C
    ScriptEntry _0B24
    ScriptEntry _0F76
    ScriptEntry _0F8D
    ScriptEntry _0FA4
    ScriptEntry _0DF4
    ScriptEntry _0E47
    ScriptEntry _0E07
    ScriptEntry _0E1A
    ScriptEntry _042E
    ScriptEntry _08E8
    ScriptEntry _0EA1
    ScriptEntry _0EB4
    ScriptEntryEnd

_0042:
    GetPlayerGender 0x4000
    GoToIfEq 0x4000, GENDER_MALE, _0062
    GoToIfEq 0x4000, GENDER_FEMALE, _006A
    End

_0062:
    SetVar 0x4020, 97
    End

_006A:
    SetVar 0x4020, 0
    End

_0072:
    LockAll
    ApplyMovement 2, _0664
    WaitMovement
    Message 0
    CloseMessage
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8004, 110, _00BF
    GoToIfEq 0x8004, 111, _00EB
    GoToIfEq 0x8004, 112, _0117
    GoToIfEq 0x8004, 113, _0143
    End

_00BF:
    ApplyMovement 2, _0670
    WaitMovement
    BufferRivalName 0
    Message 1
    CloseMessage
    ApplyMovement 2, _06A8
    ApplyMovement LOCALID_PLAYER, _0810
    WaitMovement
    GoTo _016F
    End

_00EB:
    ApplyMovement 2, _0680
    WaitMovement
    BufferRivalName 0
    Message 1
    CloseMessage
    ApplyMovement 2, _06C0
    ApplyMovement LOCALID_PLAYER, _0824
    WaitMovement
    GoTo _016F
    End

_0117:
    ApplyMovement 2, _0690
    WaitMovement
    BufferRivalName 0
    Message 1
    CloseMessage
    ApplyMovement 2, _06D8
    ApplyMovement LOCALID_PLAYER, _0838
    WaitMovement
    GoTo _016F
    End

_0143:
    ApplyMovement 2, _0698
    WaitMovement
    BufferRivalName 0
    Message 1
    CloseMessage
    ApplyMovement 2, _06F0
    ApplyMovement LOCALID_PLAYER, _084C
    WaitMovement
    GoTo _016F
    End

_016F:
    BufferRivalName 0
    Message 2
    CloseMessage
    ApplyMovement 2, _0708
    ApplyMovement LOCALID_PLAYER, _0860
    WaitMovement
    Message 3
    CloseMessage
    ApplyMovement 2, _071C
    ApplyMovement LOCALID_PLAYER, _086C
    WaitMovement
    Message 4
    CloseMessage
    WaitTime 15, 0x800C
    ApplyMovement 2, _0728
    ApplyMovement LOCALID_PLAYER, _0878
    WaitMovement
    Message 5
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _0730
    ApplyMovement 2, _0730
    WaitMovement
    PlayMusic SEQ_OPENING2
    ClearFlag FLAG_UNK_0x0178
    AddObject 5
    ScrCmd_062 5
    ApplyMovement 5, _07C0
    WaitMovement
    Message 6
    BufferRivalName 0
    Message 7
    Message 8
    ApplyMovement 2, _0740
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message 9
    CloseMessage
    ApplyMovement 2, _0748
    ApplyMovement 5, _07C8
    WaitMovement
    Message 10
    CloseMessage
    WaitTime 20, 0x800C
    ApplyMovement 5, _07D0
    WaitMovement
    Message 11
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _0298
    GoToIfEq 0x800C, MENU_NO, _0259
    End

_0259:
    ApplyMovement 2, _0750
    WaitMovement
    BufferRivalName 0
    Message 12
    CloseMessage
    ApplyMovement 2, _0758
    WaitMovement
    Message 13
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _0298
    GoToIfEq 0x800C, MENU_NO, _0259
    End

_0298:
    ApplyMovement 2, _0758
    WaitMovement
    BufferRivalName 0
    Message 14
    Message 15
    GoTo _02B3
    End

_02B3:
    ApplyMovement 2, _0768
    WaitMovement
    BufferRivalName 0
    Message 16
    ApplyMovement 2, _0770
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _088C
    WaitMovement
    BufferPlayerName 1
    Message 17
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _030B
    GoToIfEq 0x800C, MENU_NO, _02FD
    End

_02FD:
    BufferRivalName 0
    Message 18
    GoTo _02B3
    End

_030B:
    Message 19
    ApplyMovement 2, _0768
    ApplyMovement LOCALID_PLAYER, _0894
    WaitMovement
    BufferRivalName 0
    Message 20
    Message 21
    CloseMessage
    ApplyMovement 5, _07D8
    WaitMovement
    WaitTime 25, 0x800C
    ClearFlag FLAG_UNK_0x0179
    AddObject 6
    ScrCmd_062 6
    CallCommonScript 0x7F8
    ApplyMovement 6, _08C8
    WaitMovement
    GetPlayerGender 0x800C
    GoToIfEq 0x800C, GENDER_MALE, _036E
    GoTo _03A6
    End

_036E:
    Message 22
    CloseMessage
    ApplyMovement 5, _07E8
    WaitMovement
    ClearFlag FLAG_UNK_0x017D
    AddObject 12
    WaitTime 15, 0x800C
    Message 23
    Message 26
    ApplyMovement 6, _08D0
    WaitMovement
    Message 28
    GoTo _03DE
    End

_03A6:
    Message 24
    CloseMessage
    ApplyMovement 5, _07E8
    WaitMovement
    ClearFlag FLAG_UNK_0x017D
    AddObject 12
    WaitTime 15, 0x800C
    Message 25
    Message 27
    ApplyMovement 6, _08D0
    WaitMovement
    Message 29
    GoTo _03DE
    End

_03DE:
    Message 30
    CloseMessage
    ApplyMovement 5, _07F0
    WaitMovement
    WaitTime 15, 0x800C
    Message 31
    ApplyMovement 2, _0778
    WaitMovement
    BufferRivalName 0
    Message 33
    ApplyMovement 2, _0780
    WaitMovement
    BufferPlayerName 1
    Message 34
    WaitABXPadPress
    CloseMessage
    CallCommonScript 0x7F9
    ScrCmd_188 2, 16
    SetVar 0x4086, 1
    ReleaseAll
    End

_042E:
    LockAll
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    SetFlag FLAG_UNK_0x017D
    RemoveObject 12
    StartChooseStarterScene
    SaveChosenStarter
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GetPlayerStarterSpecies 0x8000
    GivePokemon 0x8000, 5, ITEM_NONE, 0x800C
    ApplyMovement 5, _07F8
    ApplyMovement 2, _0760
    ApplyMovement LOCALID_PLAYER, _0884
    WaitMovement
    BufferRivalName 0
    BufferRivalStarterSpeciesName 2
    Message 36
    Message 37
    Message 38
    CloseMessage
    ApplyMovement 5, _0800
    ApplyMovement 2, _0788
    ApplyMovement LOCALID_PLAYER, _089C
    WaitMovement
    SetFlag FLAG_UNK_0x0178
    RemoveObject 5
    GetPlayerGender 0x800C
    GoToIfEq 0x800C, GENDER_MALE, _04CA
    GoTo _04EE
    End

_04CA:
    Message 39
    CloseMessage
    ApplyMovement 6, _08D8
    ApplyMovement LOCALID_PLAYER, _08A8
    WaitMovement
    Message 40
    CloseMessage
    GoTo _0512
    End

_04EE:
    Message 41
    CloseMessage
    ApplyMovement 6, _08D8
    ApplyMovement LOCALID_PLAYER, _08A8
    WaitMovement
    Message 42
    CloseMessage
    GoTo _0512
    End

_0512:
    ApplyMovement LOCALID_PLAYER, _08B0
    ApplyMovement 6, _08E0
    WaitMovement
    SetFlag FLAG_UNK_0x0179
    RemoveObject 6
    BufferRivalName 0
    Message 43
    CloseMessage
    WaitTime 40, 0x800C
    ApplyMovement 2, _07A8
    ApplyMovement LOCALID_PLAYER, _08BC
    WaitMovement
    GoTo _0554
    End

_0554:
    BufferPlayerName 1
    Message 44
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _057A
    GoToIfEq 0x800C, MENU_NO, _0656
    End

_057A:
    BufferRivalName 0
    BufferPlayerName 1
    Message 47
    CloseMessage
    ScrCmd_06D 2, 15
    GetPlayerStarterSpecies 0x800C
    GoToIfEq 0x800C, SPECIES_TURTWIG, Route201_StartFirstBattleTurtwig
    GoToIfEq 0x800C, SPECIES_CHIMCHAR, Route201_StartFirstBattleChimchar
    GoTo Route201_StartFirstBattlePiplup
    End

Route201_StartFirstBattlePiplup:
    StartFirstBattle TRAINER_RIVAL_ROUTE_201_PIPLUP
    GoTo _05CF

Route201_StartFirstBattleTurtwig:
    StartFirstBattle TRAINER_RIVAL_ROUTE_201_TURTWIG
    GoTo _05CF

Route201_StartFirstBattleChimchar:
    StartFirstBattle TRAINER_RIVAL_ROUTE_201_CHIMCHAR
    GoTo _05CF

_05CF:
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _05F5
    ScrCmd_062 2
    BufferRivalName 0
    BufferPlayerName 1
    Message 48
    GoTo _0618
    End

_05F5:
    ReturnToField
    ScrCmd_062 2
    FadeScreen 6, 3, 1, 0
    WaitFadeScreen
    BufferRivalName 0
    BufferPlayerName 1
    Message 49
    GoTo _0618
    End

_0618:
    CloseMessage
    SetVar 0x4086, 2
    SetVar 0x40A4, 3
    WaitTime 30, 0x800C
    FadeScreen 6, 3, 0, 0
    WaitFadeScreen
    HealParty
    Warp MAP_HEADER_TWINLEAF_TOWN_PLAYER_HOUSE_1F, 0, 2, 6, 0
    FadeScreen 6, 3, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_0656:
    BufferRivalName 0
    Message 45
    GoTo _0554
    End

    .balign 4, 0
_0664:
    MoveAction_037
    MoveAction_075
    EndMovement

    .balign 4, 0
_0670:
    MoveAction_017
    MoveAction_018 2
    MoveAction_033
    EndMovement

    .balign 4, 0
_0680:
    MoveAction_017
    MoveAction_018
    MoveAction_033
    EndMovement

    .balign 4, 0
_0690:
    MoveAction_017
    EndMovement

    .balign 4, 0
_0698:
    MoveAction_017
    MoveAction_019
    MoveAction_033
    EndMovement

    .balign 4, 0
_06A8:
    MoveAction_012
    MoveAction_015 4
    MoveAction_012 2
    MoveAction_015
    MoveAction_034
    EndMovement

    .balign 4, 0
_06C0:
    MoveAction_012
    MoveAction_015 3
    MoveAction_012 2
    MoveAction_015
    MoveAction_034
    EndMovement

    .balign 4, 0
_06D8:
    MoveAction_012
    MoveAction_015 2
    MoveAction_012 2
    MoveAction_015
    MoveAction_034
    EndMovement

    .balign 4, 0
_06F0:
    MoveAction_012
    MoveAction_015
    MoveAction_012 2
    MoveAction_015
    MoveAction_034
    EndMovement

    .balign 4, 0
_0708:
    MoveAction_014
    MoveAction_033
    EndMovement

    .byte 15
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_071C:
    MoveAction_014 3
    MoveAction_035
    EndMovement

    .balign 4, 0
_0728:
    MoveAction_019 3
    EndMovement

    .balign 4, 0
_0730:
    MoveAction_075
    MoveAction_065
    MoveAction_034
    EndMovement

    .balign 4, 0
_0740:
    MoveAction_033
    EndMovement

    .balign 4, 0
_0748:
    MoveAction_034
    EndMovement

    .balign 4, 0
_0750:
    MoveAction_037
    EndMovement

    .balign 4, 0
_0758:
    MoveAction_034
    EndMovement

    .balign 4, 0
_0760:
    MoveAction_002
    EndMovement

    .balign 4, 0
_0768:
    MoveAction_038
    EndMovement

    .balign 4, 0
_0770:
    MoveAction_037
    EndMovement

    .balign 4, 0
_0778:
    MoveAction_038
    EndMovement

    .balign 4, 0
_0780:
    MoveAction_033
    EndMovement

    .balign 4, 0
_0788:
    MoveAction_012
    MoveAction_033
    MoveAction_063 2
    MoveAction_035
    EndMovement

    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 39
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_07A8:
    MoveAction_033
    MoveAction_063 3
    MoveAction_037 8
    MoveAction_018
    MoveAction_017
    EndMovement

    .balign 4, 0
_07C0:
    MoveAction_015 8
    EndMovement

    .balign 4, 0
_07C8:
    MoveAction_014 3
    EndMovement

    .balign 4, 0
_07D0:
    MoveAction_015 3
    EndMovement

    .balign 4, 0
_07D8:
    MoveAction_034
    MoveAction_063 2
    MoveAction_035
    EndMovement

    .balign 4, 0
_07E8:
    MoveAction_034
    EndMovement

    .balign 4, 0
_07F0:
    MoveAction_035
    EndMovement

    .balign 4, 0
_07F8:
    MoveAction_033
    EndMovement

    .balign 4, 0
_0800:
    MoveAction_063 2
    MoveAction_062
    MoveAction_015 9
    EndMovement

    .balign 4, 0
_0810:
    MoveAction_012 2
    MoveAction_015 4
    MoveAction_012
    MoveAction_035
    EndMovement

    .balign 4, 0
_0824:
    MoveAction_012 2
    MoveAction_015 3
    MoveAction_012
    MoveAction_035
    EndMovement

    .balign 4, 0
_0838:
    MoveAction_012 2
    MoveAction_015 2
    MoveAction_012
    MoveAction_035
    EndMovement

    .balign 4, 0
_084C:
    MoveAction_012 2
    MoveAction_015
    MoveAction_012
    MoveAction_035
    EndMovement

    .balign 4, 0
_0860:
    MoveAction_062
    MoveAction_032
    EndMovement

    .balign 4, 0
_086C:
    MoveAction_063
    MoveAction_034
    EndMovement

    .balign 4, 0
_0878:
    MoveAction_063
    MoveAction_036
    EndMovement

    .balign 4, 0
_0884:
    MoveAction_032
    EndMovement

    .balign 4, 0
_088C:
    MoveAction_000
    EndMovement

    .balign 4, 0
_0894:
    MoveAction_034
    EndMovement

    .balign 4, 0
_089C:
    MoveAction_063
    MoveAction_035
    EndMovement

    .balign 4, 0
_08A8:
    MoveAction_032
    EndMovement

    .balign 4, 0
_08B0:
    MoveAction_063
    MoveAction_035
    EndMovement

    .balign 4, 0
_08BC:
    MoveAction_063
    MoveAction_032
    EndMovement

    .balign 4, 0
_08C8:
    MoveAction_015 7
    EndMovement

    .balign 4, 0
_08D0:
    MoveAction_035
    EndMovement

    .balign 4, 0
_08D8:
    MoveAction_015
    EndMovement

    .balign 4, 0
_08E0:
    MoveAction_015 9
    EndMovement

_08E8:
    LockAll
    GetPlayerDir 0x800C
    GoToIfEq 0x800C, 3, _0903
    GoTo _0935
    End

_0903:
    ApplyMovement LOCALID_PLAYER, _09D0
    ApplyMovement 2, _09B0
    WaitMovement
    Call _0967
    ApplyMovement LOCALID_PLAYER, _09C0
    ApplyMovement 2, _0998
    WaitMovement
    GoTo _097C
    End

_0935:
    ApplyMovement LOCALID_PLAYER, _09D8
    ApplyMovement 2, _09B8
    WaitMovement
    Call _0967
    ApplyMovement LOCALID_PLAYER, _09C8
    ApplyMovement 2, _09A4
    WaitMovement
    GoTo _097C
    End

_0967:
    BufferRivalName 0
    BufferPlayerName 1
    Message 53
    CloseMessage
    ClearHasPartner
    ScrCmd_06D 2, 15
    Return

_097C:
    Call _0986
    ReleaseAll
    End

_0986:
    SetHasPartner
    ScrCmd_06D 2, 48
    ScrCmd_06C 2, 1
    Return

    .balign 4, 0
_0998:
    MoveAction_014
    MoveAction_035
    EndMovement

    .balign 4, 0
_09A4:
    MoveAction_012
    MoveAction_033
    EndMovement

    .balign 4, 0
_09B0:
    MoveAction_003
    EndMovement

    .balign 4, 0
_09B8:
    MoveAction_000
    EndMovement

    .balign 4, 0
_09C0:
    MoveAction_014
    EndMovement

    .balign 4, 0
_09C8:
    MoveAction_013
    EndMovement

    .balign 4, 0
_09D0:
    MoveAction_038
    EndMovement

    .balign 4, 0
_09D8:
    MoveAction_037
    EndMovement

_09E0:
    LockAll
    ApplyMovement LOCALID_PLAYER, _0A84
    ApplyMovement 2, _0A74
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message 52
    CloseMessage
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8004, 110, _0A3B
    GoToIfEq 0x8004, 111, _0A3B
    GoToIfEq 0x8004, 112, _0A3B
    GoToIfEq 0x8004, 113, _0A3B
    End

_0A3B:
    ClearHasPartner
    ScrCmd_06D 2, 15
    ApplyMovement LOCALID_PLAYER, _0A7C
    ApplyMovement 2, _0A68
    WaitMovement
    GoTo _0A5B

_0A5B:
    Call _0986
    ReleaseAll
    End

    .balign 4, 0
_0A68:
    MoveAction_012
    MoveAction_033
    EndMovement

    .balign 4, 0
_0A74:
    MoveAction_033
    EndMovement

    .balign 4, 0
_0A7C:
    MoveAction_012
    EndMovement

    .balign 4, 0
_0A84:
    MoveAction_036
    EndMovement

_0A8C:
    LockAll
    ApplyMovement 2, _0AE4
    WaitMovement
    BufferRivalName 0
    Message 35
    CloseMessage
    GetPlayerDir 0x800C
    GoToIfEq 0x800C, 3, _0AB9
    GoTo _0ACB
    End

_0AB9:
    ApplyMovement LOCALID_PLAYER, _0AEC
    WaitMovement
    GoTo _0ADD
    End

_0ACB:
    ApplyMovement LOCALID_PLAYER, _0AF4
    WaitMovement
    GoTo _0ADD
    End

_0ADD:
    ReleaseAll
    End

    .balign 4, 0
_0AE4:
    MoveAction_033
    EndMovement

    .balign 4, 0
_0AEC:
    MoveAction_014
    EndMovement

    .balign 4, 0
_0AF4:
    MoveAction_012
    EndMovement

    .byte 12
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 12
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_0B24:
    LockAll
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8005, 0x355, _0B55
    GoToIfEq 0x8005, 0x356, _0B89
    GoToIfEq 0x8005, 0x357, _0BBB
    End

_0B55:
    ApplyMovement 254, _0DBC
    ApplyMovement 5, _0D48
    WaitMovement
    BufferRivalName 0
    Message 53
    CloseMessage
    ApplyMovement 5, _0D50
    ApplyMovement 6, _0D80
    WaitMovement
    GoTo _0BF5
    End

_0B89:
    ApplyMovement 254, _0DBC
    ApplyMovement 5, _0D48
    WaitMovement
    BufferRivalName 0
    Message 53
    CloseMessage
    ApplyMovement 5, _0D5C
    ApplyMovement 6, _0D80
    WaitMovement
    GoTo _0BF5

_0BBB:
    ApplyMovement LOCALID_PLAYER, _0DDC
    ApplyMovement 254, _0DCC
    ApplyMovement 5, _0D48
    WaitMovement
    BufferRivalName 0
    Message 53
    CloseMessage
    ApplyMovement 5, _0D5C
    ApplyMovement 6, _0D80
    WaitMovement
    GoTo _0BF5

_0BF5:
    BufferCounterpartName 0
    BufferPlayerStarterSpeciesName 1
    BufferRivalStarterSpeciesName 2
    ApplyMovement 5, _0D70
    WaitMovement
    GoToIfEq 0x8005, 0x355, _0C3E
    GoToIfEq 0x8005, 0x356, _0C56
    GoToIfEq 0x8005, 0x357, _0C6E
    GoToIfEq 0x8005, 0x358, _0C6E
    End

_0C3E:
    ApplyMovement 5, _0D78
    ApplyMovement 6, _0D94
    WaitMovement
    GoTo _0C86

_0C56:
    ApplyMovement 5, _0D78
    ApplyMovement 6, _0DA0
    WaitMovement
    GoTo _0C86

_0C6E:
    ApplyMovement 5, _0D78
    ApplyMovement 6, _0DA0
    WaitMovement
    GoTo _0C86

_0C86:
    GetPlayerGender 0x800C
    GoToIfEq 0x800C, GENDER_MALE, _0C9D
    GoTo _0CA3

_0C9D:
    GoTo _0CA9

_0CA3:
    GoTo _0CA9

_0CA9:
    CloseMessage
    GoToIfEq 0x8005, 0x355, _0CE1
    GoToIfEq 0x8005, 0x356, _0CE1
    GoToIfEq 0x8005, 0x357, _0CE1
    GoToIfEq 0x8005, 0x358, _0CE1
    End

_0CE1:
    ApplyMovement 6, _0DB4
    WaitMovement
    GoTo _0CF1

_0CF1:
    RemoveObject 6
    RemoveObject 5
    SetVar 0x4086, 3
    ScrCmd_06C 254, 0
    ClearHasPartner
    SetFlag FLAG_UNK_0x0172
    SetFlag FLAG_UNK_0x0195
    SetVar 0x4082, 4
    SetFlag FLAG_UNK_0x0196
    WaitTime 30, 0x800C
    FadeScreen 6, 3, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_TWINLEAF_TOWN_PLAYER_HOUSE_1F, 0, 2, 6, 0
    FadeScreen 6, 3, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

    .balign 4, 0
_0D48:
    MoveAction_034
    EndMovement

    .balign 4, 0
_0D50:
    MoveAction_063 4
    MoveAction_014 2
    EndMovement

    .balign 4, 0
_0D5C:
    MoveAction_063 4
    MoveAction_014
    MoveAction_013
    MoveAction_014
    EndMovement

    .balign 4, 0
_0D70:
    MoveAction_035
    EndMovement

    .balign 4, 0
_0D78:
    MoveAction_015 8
    EndMovement

    .balign 4, 0
_0D80:
    MoveAction_063
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

    .balign 4, 0
_0D94:
    MoveAction_063 3
    MoveAction_035
    EndMovement

    .balign 4, 0
_0DA0:
    MoveAction_062
    MoveAction_012
    MoveAction_033
    MoveAction_035
    EndMovement

    .balign 4, 0
_0DB4:
    MoveAction_019 8
    EndMovement

    .balign 4, 0
_0DBC:
    MoveAction_035
    MoveAction_075
    MoveAction_065
    EndMovement

    .balign 4, 0
_0DCC:
    MoveAction_012
    MoveAction_035
    MoveAction_075
    EndMovement

    .balign 4, 0
_0DDC:
    MoveAction_063
    MoveAction_034
    MoveAction_063
    MoveAction_012
    MoveAction_035
    EndMovement

_0DF4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 54
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0E07:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 57
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0E1A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0090, _0E3E
    Message 58
    GoTo _0E36

_0E36:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0E3E:
    Message 59
    GoTo _0E36

_0E47:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x006C, _0E8C
    Message 55
    SetVar 0x8004, ITEM_POTION
    SetVar 0x8005, 1
    CanFitItem 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0E97
    SetFlag FLAG_UNK_0x006C
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_0E8C:
    Message 56
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0E97:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_0EA1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 32
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0EB4:
    LockAll
    ApplyMovement 2, _0664
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message 50
    CloseMessage
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8004, 110, _0F07
    GoToIfEq 0x8004, 111, _0F19
    GoToIfEq 0x8004, 112, _0F2B
    GoToIfEq 0x8004, 113, _0F3D
    End

_0F07:
    ApplyMovement 2, _0670
    WaitMovement
    GoTo _0F4F
    End

_0F19:
    ApplyMovement 2, _0680
    WaitMovement
    GoTo _0F4F
    End

_0F2B:
    ApplyMovement 2, _0690
    WaitMovement
    GoTo _0F4F
    End

_0F3D:
    ApplyMovement 2, _0698
    WaitMovement
    GoTo _0F4F
    End

_0F4F:
    BufferRivalName 0
    Message 51
    WaitABXPadPress
    CloseMessage
    SetVar 0x4086, 3
    SetStepFlag
    SetHasPartner
    ScrCmd_06D 2, 48
    ScrCmd_06C 2, 1
    SetFlag FLAG_UNK_0x0172
    ReleaseAll
    End

_0F76:
    ShowArrowSign 60
    End

_0F8D:
    ShowArrowSign 61
    End

_0FA4:
    ShowScrollingSign 62
    End

    .byte 0
    .byte 0
    .byte 0
