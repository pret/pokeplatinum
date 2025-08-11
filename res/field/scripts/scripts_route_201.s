#include "macros/scrcmd.inc"
#include "res/text/bank/route_201.h"


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
    GetPlayerGender VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_MALE, _0062
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_FEMALE, _006A
    End

_0062:
    SetVar VAR_OBJ_GFX_ID_0, 97
    End

_006A:
    SetVar VAR_OBJ_GFX_ID_0, 0
    End

_0072:
    LockAll
    ApplyMovement 2, _0664
    WaitMovement
    Message 0
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8004, 110, _00BF
    GoToIfEq VAR_0x8004, 111, _00EB
    GoToIfEq VAR_0x8004, 112, _0117
    GoToIfEq VAR_0x8004, 113, _0143
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
    WaitTime 15, VAR_RESULT
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
    LockObject 5
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
    WaitTime 20, VAR_RESULT
    ApplyMovement 5, _07D0
    WaitMovement
    Message 11
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0298
    GoToIfEq VAR_RESULT, MENU_NO, _0259
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
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0298
    GoToIfEq VAR_RESULT, MENU_NO, _0259
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
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _030B
    GoToIfEq VAR_RESULT, MENU_NO, _02FD
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
    WaitTime 25, VAR_RESULT
    ClearFlag FLAG_UNK_0x0179
    AddObject 6
    LockObject 6
    CallCommonScript 0x7F8
    ApplyMovement 6, _08C8
    WaitMovement
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _036E
    GoTo _03A6
    End

_036E:
    Message 22
    CloseMessage
    ApplyMovement 5, _07E8
    WaitMovement
    ClearFlag FLAG_UNK_0x017D
    AddObject 12
    WaitTime 15, VAR_RESULT
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
    WaitTime 15, VAR_RESULT
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
    WaitTime 15, VAR_RESULT
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
    SetObjectEventMovementType 2, MOVEMENT_TYPE_LOOK_LEFT
    SetVar VAR_FOLLOWER_RIVAL_STATE, 1
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
    GetPlayerStarterSpecies VAR_0x8000
    GivePokemon VAR_0x8000, 5, ITEM_NONE, VAR_RESULT
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
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _04CA
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
    WaitTime 40, VAR_RESULT
    ApplyMovement 2, _07A8
    ApplyMovement LOCALID_PLAYER, _08BC
    WaitMovement
    GoTo _0554
    End

_0554:
    BufferPlayerName 1
    Message 44
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _057A
    GoToIfEq VAR_RESULT, MENU_NO, _0656
    End

_057A:
    BufferRivalName 0
    BufferPlayerName 1
    Message 47
    CloseMessage
    ScrCmd_06D 2, 15
    GetPlayerStarterSpecies VAR_RESULT
    GoToIfEq VAR_RESULT, SPECIES_TURTWIG, Route201_StartFirstBattleTurtwig
    GoToIfEq VAR_RESULT, SPECIES_CHIMCHAR, Route201_StartFirstBattleChimchar
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
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _05F5
    LockObject 2
    BufferRivalName 0
    BufferPlayerName 1
    Message 48
    GoTo _0618
    End

_05F5:
    ReturnToField
    LockObject 2
    FadeScreen 6, 3, 1, 0
    WaitFadeScreen
    BufferRivalName 0
    BufferPlayerName 1
    Message 49
    GoTo _0618
    End

_0618:
    CloseMessage
    SetVar VAR_FOLLOWER_RIVAL_STATE, 2
    SetVar VAR_UNK_0x40A4, 3
    WaitTime 30, VAR_RESULT
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
    WalkOnSpotFastSouth
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
_0670:
    WalkFastSouth
    WalkFastWest 2
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0680:
    WalkFastSouth
    WalkFastWest
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0690:
    WalkFastSouth
    EndMovement

    .balign 4, 0
_0698:
    WalkFastSouth
    WalkFastEast
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_06A8:
    WalkNormalNorth
    WalkNormalEast 4
    WalkNormalNorth 2
    WalkNormalEast
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_06C0:
    WalkNormalNorth
    WalkNormalEast 3
    WalkNormalNorth 2
    WalkNormalEast
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_06D8:
    WalkNormalNorth
    WalkNormalEast 2
    WalkNormalNorth 2
    WalkNormalEast
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_06F0:
    WalkNormalNorth
    WalkNormalEast
    WalkNormalNorth 2
    WalkNormalEast
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0708:
    WalkNormalWest
    WalkOnSpotNormalSouth
    EndMovement

Route201_UnusedMovement:
    WalkNormalEast
    EndMovement

    .balign 4, 0
_071C:
    WalkNormalWest 3
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0728:
    WalkFastEast 3
    EndMovement

    .balign 4, 0
_0730:
    EmoteExclamationMark
    Delay16
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0740:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0748:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0750:
    WalkOnSpotFastSouth
    EndMovement

    .balign 4, 0
_0758:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0760:
    FaceWest
    EndMovement

    .balign 4, 0
_0768:
    WalkOnSpotFastWest
    EndMovement

    .balign 4, 0
_0770:
    WalkOnSpotFastSouth
    EndMovement

    .balign 4, 0
_0778:
    WalkOnSpotFastWest
    EndMovement

    .balign 4, 0
_0780:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0788:
    WalkNormalNorth
    WalkOnSpotNormalSouth
    Delay8 2
    WalkOnSpotNormalEast
    EndMovement

Route201_UnusedMovement2:
    Delay8
    WalkOnSpotFastEast
    EndMovement

    .balign 4, 0
_07A8:
    WalkOnSpotNormalSouth
    Delay8 3
    WalkOnSpotFastSouth 8
    WalkFastWest
    WalkFastSouth
    EndMovement

    .balign 4, 0
_07C0:
    WalkNormalEast 8
    EndMovement

    .balign 4, 0
_07C8:
    WalkNormalWest 3
    EndMovement

    .balign 4, 0
_07D0:
    WalkNormalEast 3
    EndMovement

    .balign 4, 0
_07D8:
    WalkOnSpotNormalWest
    Delay8 2
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_07E8:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_07F0:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_07F8:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0800:
    Delay8 2
    Delay4
    WalkNormalEast 9
    EndMovement

    .balign 4, 0
_0810:
    WalkNormalNorth 2
    WalkNormalEast 4
    WalkNormalNorth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0824:
    WalkNormalNorth 2
    WalkNormalEast 3
    WalkNormalNorth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0838:
    WalkNormalNorth 2
    WalkNormalEast 2
    WalkNormalNorth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_084C:
    WalkNormalNorth 2
    WalkNormalEast
    WalkNormalNorth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0860:
    Delay4
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_086C:
    Delay8
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0878:
    Delay8
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
_0884:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_088C:
    FaceNorth
    EndMovement

    .balign 4, 0
_0894:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_089C:
    Delay8
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_08A8:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_08B0:
    Delay8
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_08BC:
    Delay8
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_08C8:
    WalkNormalEast 7
    EndMovement

    .balign 4, 0
_08D0:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_08D8:
    WalkNormalEast
    EndMovement

    .balign 4, 0
_08E0:
    WalkNormalEast 9
    EndMovement

_08E8:
    LockAll
    GetPlayerDir VAR_RESULT
    GoToIfEq VAR_RESULT, 3, _0903
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
    WalkNormalWest
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_09A4:
    WalkNormalNorth
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_09B0:
    FaceEast
    EndMovement

    .balign 4, 0
_09B8:
    FaceNorth
    EndMovement

    .balign 4, 0
_09C0:
    WalkNormalWest
    EndMovement

    .balign 4, 0
_09C8:
    WalkNormalSouth
    EndMovement

    .balign 4, 0
_09D0:
    WalkOnSpotFastWest
    EndMovement

    .balign 4, 0
_09D8:
    WalkOnSpotFastSouth
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
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8004, 110, _0A3B
    GoToIfEq VAR_0x8004, 111, _0A3B
    GoToIfEq VAR_0x8004, 112, _0A3B
    GoToIfEq VAR_0x8004, 113, _0A3B
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
    WalkNormalNorth
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0A74:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0A7C:
    WalkNormalNorth
    EndMovement

    .balign 4, 0
_0A84:
    WalkOnSpotFastNorth
    EndMovement

_0A8C:
    LockAll
    ApplyMovement 2, _0AE4
    WaitMovement
    BufferRivalName 0
    Message 35
    CloseMessage
    GetPlayerDir VAR_RESULT
    GoToIfEq VAR_RESULT, 3, _0AB9
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
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0AEC:
    WalkNormalWest
    EndMovement

    .balign 4, 0
_0AF4:
    WalkNormalNorth
    EndMovement

Route201_UnusedMovement3:
    WalkNormalNorth
    EndMovement

Route201_UnusedMovement4:
    WalkNormalNorth
    EndMovement

Route201_UnusedMovement5:
    WalkNormalWest
    EndMovement

Route201_UnusedMovement6:
    WalkNormalWest
    EndMovement

Route201_UnusedMovement7:
    WalkNormalWest
    EndMovement

_0B24:
    LockAll
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 0x355, _0B55
    GoToIfEq VAR_0x8005, 0x356, _0B89
    GoToIfEq VAR_0x8005, 0x357, _0BBB
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
    GoToIfEq VAR_0x8005, 0x355, _0C3E
    GoToIfEq VAR_0x8005, 0x356, _0C56
    GoToIfEq VAR_0x8005, 0x357, _0C6E
    GoToIfEq VAR_0x8005, 0x358, _0C6E
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
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _0C9D
    GoTo _0CA3

_0C9D:
    GoTo _0CA9

_0CA3:
    GoTo _0CA9

_0CA9:
    CloseMessage
    GoToIfEq VAR_0x8005, 0x355, _0CE1
    GoToIfEq VAR_0x8005, 0x356, _0CE1
    GoToIfEq VAR_0x8005, 0x357, _0CE1
    GoToIfEq VAR_0x8005, 0x358, _0CE1
    End

_0CE1:
    ApplyMovement 6, _0DB4
    WaitMovement
    GoTo _0CF1

_0CF1:
    RemoveObject 6
    RemoveObject 5
    SetVar VAR_FOLLOWER_RIVAL_STATE, 3
    ScrCmd_06C 254, 0
    ClearHasPartner
    SetFlag FLAG_UNK_0x0172
    SetFlag FLAG_UNK_0x0195
    SetVar VAR_UNK_0x4082, 4
    SetFlag FLAG_UNK_0x0196
    WaitTime 30, VAR_RESULT
    FadeScreen 6, 3, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_TWINLEAF_TOWN_PLAYER_HOUSE_1F, 0, 2, 6, 0
    FadeScreen 6, 3, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

    .balign 4, 0
_0D48:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0D50:
    Delay8 4
    WalkNormalWest 2
    EndMovement

    .balign 4, 0
_0D5C:
    Delay8 4
    WalkNormalWest
    WalkNormalSouth
    WalkNormalWest
    EndMovement

    .balign 4, 0
_0D70:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0D78:
    WalkNormalEast 8
    EndMovement

    .balign 4, 0
_0D80:
    Delay8
    WalkOnSpotNormalWest
    EndMovement

Route201_UnusedMovement8:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0D94:
    Delay8 3
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0DA0:
    Delay4
    WalkNormalNorth
    WalkOnSpotNormalSouth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0DB4:
    WalkFastEast 8
    EndMovement

    .balign 4, 0
_0DBC:
    WalkOnSpotNormalEast
    EmoteExclamationMark
    Delay16
    EndMovement

    .balign 4, 0
_0DCC:
    WalkNormalNorth
    WalkOnSpotNormalEast
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
_0DDC:
    Delay8
    WalkOnSpotNormalWest
    Delay8
    WalkNormalNorth
    WalkOnSpotNormalEast
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
    SetVar VAR_0x8004, ITEM_POTION
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _0E97
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
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8004, 110, _0F07
    GoToIfEq VAR_0x8004, 111, _0F19
    GoToIfEq VAR_0x8004, 112, _0F2B
    GoToIfEq VAR_0x8004, 113, _0F3D
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
    SetVar VAR_FOLLOWER_RIVAL_STATE, 3
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

    .balign 4, 0
