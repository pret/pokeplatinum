#include "macros/scrcmd.inc"
#include "res/text/bank/sandgem_town.h"


    ScriptEntry _0032
    ScriptEntry _0085
    ScriptEntry _057C
    ScriptEntry _0840
    ScriptEntry _0853
    ScriptEntry _0866
    ScriptEntry _0879
    ScriptEntry _088C
    ScriptEntry _08A3
    ScriptEntry _08BA
    ScriptEntry _08D4
    ScriptEntry _08EB
    ScriptEntryEnd

_0032:
    CallIfEq VAR_UNK_0x4071, 1, _005F
    GetPlayerGender VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_MALE, _0075
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_FEMALE, _007D
    End

_005F:
    SetObjectEventPos 4, 168, 0x34D
    SetObjectEventDir 4, DIR_NORTH
    SetObjectEventMovementType 4, MOVEMENT_TYPE_LOOK_NORTH
    Return

_0075:
    SetVar VAR_OBJ_GFX_ID_0, 97
    End

_007D:
    SetVar VAR_OBJ_GFX_ID_0, 0
    End

_0085:
    LockAll
    ApplyMovement 4, _03AC
    WaitMovement
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 0x34B, _00E7
    GoToIfEq VAR_0x8005, 0x34C, _00FF
    GoToIfEq VAR_0x8005, 0x34D, _010F
    GoToIfEq VAR_0x8005, 0x34E, _011F
    GoToIfEq VAR_0x8005, 0x34F, _0137
    GoToIfEq VAR_0x8005, 0x350, _014F
    End

_00E7:
    ApplyMovement 4, _03B8
    ApplyMovement LOCALID_PLAYER, _047C
    WaitMovement
    GoTo _0169

_00FF:
    ApplyMovement 4, _03C4
    WaitMovement
    GoTo _0169

_010F:
    ApplyMovement 4, _03D4
    WaitMovement
    GoTo _0169

_011F:
    ApplyMovement 4, _03DC
    ApplyMovement LOCALID_PLAYER, _04A0
    WaitMovement
    GoTo _0169

_0137:
    ApplyMovement 4, _03E8
    ApplyMovement LOCALID_PLAYER, _04AC
    WaitMovement
    GoTo _0169

_014F:
    ApplyMovement 4, _03F4
    ApplyMovement LOCALID_PLAYER, _04B8
    WaitMovement
    GoTo _0169
    End

_0169:
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _0189
    GoToIfEq VAR_RESULT, GENDER_FEMALE, _0195
    End

_0189:
    BufferCounterpartName 0
    Message 0
    GoTo _01A1

_0195:
    BufferCounterpartName 0
    Message 2
    GoTo _01A1

_01A1:
    CloseMessage
    GoToIfEq VAR_0x8005, 0x34B, _01F3
    GoToIfEq VAR_0x8005, 0x34C, _020B
    GoToIfEq VAR_0x8005, 0x34D, _0223
    GoToIfEq VAR_0x8005, 0x34E, _023B
    GoToIfEq VAR_0x8005, 0x34F, _0253
    GoToIfEq VAR_0x8005, 0x350, _026B
    End

_01F3:
    ApplyMovement 4, _0400
    ApplyMovement LOCALID_PLAYER, _04C4
    WaitMovement
    GoTo _0283

_020B:
    ApplyMovement 4, _040C
    ApplyMovement LOCALID_PLAYER, _04D4
    WaitMovement
    GoTo _0283

_0223:
    ApplyMovement 4, _0418
    ApplyMovement LOCALID_PLAYER, _04E4
    WaitMovement
    GoTo _0283

_023B:
    ApplyMovement 4, _0428
    ApplyMovement LOCALID_PLAYER, _04F8
    WaitMovement
    GoTo _0283

_0253:
    ApplyMovement 4, _043C
    ApplyMovement LOCALID_PLAYER, _0510
    WaitMovement
    GoTo _0283

_026B:
    ApplyMovement 4, _044C
    ApplyMovement LOCALID_PLAYER, _0520
    WaitMovement
    GoTo _0283

_0283:
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _02A3
    GoToIfEq VAR_RESULT, GENDER_FEMALE, _02AC
    End

_02A3:
    Message 1
    GoTo _02B5

_02AC:
    Message 3
    GoTo _02B5

_02B5:
    ScrCmd_168 5, 26, 8, 10, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ClearFlag FLAG_UNK_0x0197
    AddObject 3
    ApplyMovement 3, _0554
    WaitMovement
    ApplyMovement 3, _055C
    WaitMovement
    PlayFanfare SEQ_SE_DP_WALL_HIT2
    Message 4
    ApplyMovement 3, _0564
    WaitMovement
    CallCommonScript CommonScript_Unk2A
    BufferRivalName 0
    BufferPlayerName 1
    Message 5
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _0548
    ApplyMovement 4, _0470
    ApplyMovement 3, _056C
    WaitMovement
    RemoveObject 3
    CallCommonScript CommonScript_Unk29_2
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _0344
    GoToIfEq VAR_RESULT, GENDER_FEMALE, _0352
    End

_0344:
    BufferCounterpartName 0
    Message 6
    GoTo _035E
    End

_0352:
    BufferCounterpartName 0
    Message 7
    GoTo _035E

_035E:
    CloseMessage
    ApplyMovement 4, _045C
    ApplyMovement LOCALID_PLAYER, _0530
    WaitMovement
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    RemoveObject 4
    SetVar VAR_UNK_0x4071, 1
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_SANDGEM_TOWN_POKEMON_RESEARCH_LAB, 0, 7, 15, 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

    .balign 4, 0
_03AC:
    EmoteExclamationMark
    Delay16
    EndMovement

    .balign 4, 0
_03B8:
    WalkNormalWest 4
    WalkNormalNorth
    EndMovement

    .balign 4, 0
_03C4:
    WalkNormalWest 2
    WalkNormalNorth
    WalkNormalWest
    EndMovement

    .balign 4, 0
_03D4:
    WalkNormalWest 3
    EndMovement

    .balign 4, 0
_03DC:
    WalkNormalWest 4
    FaceSouth
    EndMovement

    .balign 4, 0
_03E8:
    WalkNormalWest 4
    WalkNormalSouth
    EndMovement

    .balign 4, 0
_03F4:
    WalkNormalWest 4
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
_0400:
    WalkNormalEast 5
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_040C:
    WalkNormalEast 4
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0418:
    WalkNormalNorth
    WalkNormalEast 4
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0428:
    WalkNormalEast 2
    WalkNormalNorth
    WalkNormalEast 3
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_043C:
    WalkNormalNorth 2
    WalkNormalEast 5
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_044C:
    WalkNormalNorth 2
    WalkNormalEast 5
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_045C:
    WalkNormalNorth
    WalkNormalWest
    WalkNormalNorth
    SetInvisible
    EndMovement

    .balign 4, 0
_0470:
    Delay4
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_047C:
    Delay8 3
    FaceSouth
    EndMovement

SandgemTown_UnusedMovement:
    Delay8 3
    WalkOnSpotNormalSouth
    EndMovement

SandgemTown_UnusedMovement2:
    WalkNormalEast 4
    WalkNormalNorth 2
    EndMovement

    .balign 4, 0
_04A0:
    Delay8 3
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_04AC:
    Delay8 3
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_04B8:
    Delay8 3
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_04C4:
    WalkNormalSouth
    WalkNormalEast 4
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_04D4:
    WalkNormalEast 2
    WalkNormalEast 2
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_04E4:
    WalkNormalEast
    WalkNormalNorth
    WalkNormalEast 3
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_04F8:
    WalkNormalNorth
    WalkNormalEast 2
    WalkNormalNorth
    WalkNormalEast 2
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0510:
    WalkNormalNorth 3
    WalkNormalEast 4
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0520:
    WalkNormalNorth 4
    WalkNormalEast 4
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0530:
    Delay8
    WalkOnSpotNormalNorth
    Delay8 2
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
_0548:
    Delay8
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0554:
    WalkFastSouth
    EndMovement

    .balign 4, 0
_055C:
    WalkOnSpotFastSouth 2
    EndMovement

    .balign 4, 0
_0564:
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
_056C:
    WalkFastEast 2
    WalkFastSouth
    WalkFastEast 7
    EndMovement

_057C:
    LockAll
    ScrCmd_168 5, 26, 8, 10, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ClearFlag FLAG_UNK_0x02C4
    AddObject 14
    ApplyMovement 14, _0798
    WaitMovement
    BufferPlayerName 0
    Message 8
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _07AC
    ApplyMovement 4, _07F8
    WaitMovement
    Message 9
    SetVar VAR_0x8004, 0x162
    SetVar VAR_0x8005, 1
    CallCommonScript CommonScript_Unk2C
    Message 10
    CloseMessage
    ApplyMovement 14, _07A0
    WaitMovement
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    RemoveObject 14
    WaitTime 30, VAR_RESULT
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _0610
    GoToIfEq VAR_RESULT, GENDER_FEMALE, _061D
    End

_0610:
    Message 11
    CloseMessage
    GoTo _062A
    End

_061D:
    Message 12
    CloseMessage
    GoTo _062A
    End

_062A:
    ApplyMovement LOCALID_PLAYER, _07B8
    ApplyMovement 4, _0800
    WaitMovement
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _065C
    GoToIfEq VAR_RESULT, GENDER_FEMALE, _066B
    End

_065C:
    BufferCounterpartName 0
    BufferPlayerName 1
    Message 13
    GoTo _067A

_066B:
    BufferCounterpartName 0
    BufferPlayerName 1
    Message 17
    GoTo _067A

_067A:
    CloseMessage
    CallCommonScript CommonScript_Unk30
    ApplyMovement 4, _0808
    ApplyMovement LOCALID_PLAYER, _07C0
    WaitMovement
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _06B2
    GoToIfEq VAR_RESULT, GENDER_FEMALE, _06C1
    End

_06B2:
    BufferCounterpartName 0
    BufferPlayerName 1
    Message 14
    GoTo _06D0

_06C1:
    BufferCounterpartName 0
    BufferPlayerName 1
    Message 18
    GoTo _06D0

_06D0:
    CloseMessage
    ApplyMovement 4, _0814
    ApplyMovement LOCALID_PLAYER, _07D0
    WaitMovement
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _0704
    GoToIfEq VAR_RESULT, GENDER_FEMALE, _0710
    End

_0704:
    BufferPlayerName 0
    Message 15
    GoTo _071C

_0710:
    BufferPlayerName 0
    Message 19
    GoTo _071C

_071C:
    CloseMessage
    ApplyMovement 4, _0820
    ApplyMovement LOCALID_PLAYER, _07DC
    WaitMovement
    ApplyMovement 4, _0828
    WaitMovement
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _075A
    GoToIfEq VAR_RESULT, GENDER_FEMALE, _0766
    End

_075A:
    BufferPlayerName 1
    Message 16
    GoTo _0772

_0766:
    BufferPlayerName 1
    Message 20
    GoTo _0772

_0772:
    CloseMessage
    ApplyMovement 4, _0830
    ApplyMovement LOCALID_PLAYER, _07E4
    WaitMovement
    CallCommonScript CommonScript_Unk29_3
    RemoveObject 4
    SetVar VAR_UNK_0x4071, 2
    ReleaseAll
    End

    .balign 4, 0
_0798:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_07A0:
    WalkOnSpotNormalNorth
    SetInvisible
    EndMovement

    .balign 4, 0
_07AC:
    EmoteExclamationMark
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_07B8:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_07C0:
    WalkNormalSouth
    WalkNormalEast 9
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_07D0:
    WalkNormalEast 10
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_07DC:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_07E4:
    Delay8
    WalkOnSpotNormalSouth
    Delay4
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_07F8:
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
_0800:
    WalkNormalNorth
    EndMovement

    .balign 4, 0
_0808:
    WalkNormalEast 10
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0814:
    WalkNormalEast 10
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0820:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0828:
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
_0830:
    WalkNormalSouth
    WalkNormalWest 5
    WalkNormalNorth 10
    EndMovement

_0840:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 21
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0853:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 22
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0866:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 23
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0879:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 24
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_088C:
    ShowMapSign 25
    End

_08A3:
    ShowLandmarkSign 26
    End

_08BA:
    BufferCounterpartName 0
    ShowLandmarkSign 27
    End

_08D4:
    ShowLandmarkSign 28
    End

_08EB:
    ShowLandmarkSign 29
    End

    .balign 4, 0
