#include "macros/scrcmd.inc"
#include "res/text/bank/sandgem_town.h"

    .data

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
    GetPlayerGender VAR_0x4000
    GoToIfEq VAR_0x4000, GENDER_MALE, _0075
    GoToIfEq VAR_0x4000, GENDER_FEMALE, _007D
    End

_005F:
    SetObjectEventPos 4, 168, 0x34D
    ScrCmd_189 4, 0
    ScrCmd_188 4, 14
    Return

_0075:
    SetVar VAR_0x4020, 97
    End

_007D:
    SetVar VAR_0x4020, 0
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
    GetPlayerGender VAR_0x800C
    GoToIfEq VAR_0x800C, GENDER_MALE, _0189
    GoToIfEq VAR_0x800C, GENDER_FEMALE, _0195
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
    GetPlayerGender VAR_0x800C
    GoToIfEq VAR_0x800C, GENDER_MALE, _02A3
    GoToIfEq VAR_0x800C, GENDER_FEMALE, _02AC
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
    CallCommonScript 0x7FA
    BufferRivalName 0
    BufferPlayerName 1
    Message 5
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _0548
    ApplyMovement 4, _0470
    ApplyMovement 3, _056C
    WaitMovement
    RemoveObject 3
    CallCommonScript 0x7FB
    GetPlayerGender VAR_0x800C
    GoToIfEq VAR_0x800C, GENDER_MALE, _0344
    GoToIfEq VAR_0x800C, GENDER_FEMALE, _0352
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
    MoveAction_075
    MoveAction_065
    EndMovement

    .balign 4, 0
_03B8:
    MoveAction_014 4
    MoveAction_012
    EndMovement

    .balign 4, 0
_03C4:
    MoveAction_014 2
    MoveAction_012
    MoveAction_014
    EndMovement

    .balign 4, 0
_03D4:
    MoveAction_014 3
    EndMovement

    .balign 4, 0
_03DC:
    MoveAction_014 4
    MoveAction_001
    EndMovement

    .balign 4, 0
_03E8:
    MoveAction_014 4
    MoveAction_013
    EndMovement

    .balign 4, 0
_03F4:
    MoveAction_014 4
    MoveAction_013 2
    EndMovement

    .balign 4, 0
_0400:
    MoveAction_015 5
    MoveAction_032
    EndMovement

    .balign 4, 0
_040C:
    MoveAction_015 4
    MoveAction_032
    EndMovement

    .balign 4, 0
_0418:
    MoveAction_012
    MoveAction_015 4
    MoveAction_032
    EndMovement

    .balign 4, 0
_0428:
    MoveAction_015 2
    MoveAction_012
    MoveAction_015 3
    MoveAction_032
    EndMovement

    .balign 4, 0
_043C:
    MoveAction_012 2
    MoveAction_015 5
    MoveAction_032
    EndMovement

    .balign 4, 0
_044C:
    MoveAction_012 2
    MoveAction_015 5
    MoveAction_032
    EndMovement

    .balign 4, 0
_045C:
    MoveAction_012
    MoveAction_014
    MoveAction_012
    MoveAction_069
    EndMovement

    .balign 4, 0
_0470:
    MoveAction_062
    MoveAction_035
    EndMovement

    .balign 4, 0
_047C:
    MoveAction_063 3
    MoveAction_001
    EndMovement

    .byte 63
    .byte 0
    .byte 3
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 15
    .byte 0
    .byte 4
    .byte 0
    .byte 12
    .byte 0
    .byte 2
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_04A0:
    MoveAction_063 3
    MoveAction_032
    EndMovement

    .balign 4, 0
_04AC:
    MoveAction_063 3
    MoveAction_032
    EndMovement

    .balign 4, 0
_04B8:
    MoveAction_063 3
    MoveAction_032
    EndMovement

    .balign 4, 0
_04C4:
    MoveAction_013
    MoveAction_015 4
    MoveAction_032
    EndMovement

    .balign 4, 0
_04D4:
    MoveAction_015 2
    MoveAction_015 2
    MoveAction_032
    EndMovement

    .balign 4, 0
_04E4:
    MoveAction_015
    MoveAction_012
    MoveAction_015 3
    MoveAction_032
    EndMovement

    .balign 4, 0
_04F8:
    MoveAction_012
    MoveAction_015 2
    MoveAction_012
    MoveAction_015 2
    MoveAction_032
    EndMovement

    .balign 4, 0
_0510:
    MoveAction_012 3
    MoveAction_015 4
    MoveAction_032
    EndMovement

    .balign 4, 0
_0520:
    MoveAction_012 4
    MoveAction_015 4
    MoveAction_032
    EndMovement

    .balign 4, 0
_0530:
    MoveAction_063
    MoveAction_032
    MoveAction_063 2
    MoveAction_012 2
    MoveAction_069
    EndMovement

    .balign 4, 0
_0548:
    MoveAction_063
    MoveAction_035
    EndMovement

    .balign 4, 0
_0554:
    MoveAction_017
    EndMovement

    .balign 4, 0
_055C:
    MoveAction_037 2
    EndMovement

    .balign 4, 0
_0564:
    MoveAction_075
    EndMovement

    .balign 4, 0
_056C:
    MoveAction_019 2
    MoveAction_017
    MoveAction_019 7
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
    CallCommonScript 0x7FC
    Message 10
    CloseMessage
    ApplyMovement 14, _07A0
    WaitMovement
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    RemoveObject 14
    WaitTime 30, VAR_0x800C
    GetPlayerGender VAR_0x800C
    GoToIfEq VAR_0x800C, GENDER_MALE, _0610
    GoToIfEq VAR_0x800C, GENDER_FEMALE, _061D
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
    GetPlayerGender VAR_0x800C
    GoToIfEq VAR_0x800C, GENDER_MALE, _065C
    GoToIfEq VAR_0x800C, GENDER_FEMALE, _066B
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
    CallCommonScript 0x800
    ApplyMovement 4, _0808
    ApplyMovement LOCALID_PLAYER, _07C0
    WaitMovement
    GetPlayerGender VAR_0x800C
    GoToIfEq VAR_0x800C, GENDER_MALE, _06B2
    GoToIfEq VAR_0x800C, GENDER_FEMALE, _06C1
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
    GetPlayerGender VAR_0x800C
    GoToIfEq VAR_0x800C, GENDER_MALE, _0704
    GoToIfEq VAR_0x800C, GENDER_FEMALE, _0710
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
    GetPlayerGender VAR_0x800C
    GoToIfEq VAR_0x800C, GENDER_MALE, _075A
    GoToIfEq VAR_0x800C, GENDER_FEMALE, _0766
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
    CallCommonScript 0x801
    RemoveObject 4
    SetVar VAR_UNK_0x4071, 2
    ReleaseAll
    End

    .balign 4, 0
_0798:
    MoveAction_033
    EndMovement

    .balign 4, 0
_07A0:
    MoveAction_032
    MoveAction_069
    EndMovement

    .balign 4, 0
_07AC:
    MoveAction_075
    MoveAction_032
    EndMovement

    .balign 4, 0
_07B8:
    MoveAction_033
    EndMovement

    .balign 4, 0
_07C0:
    MoveAction_013
    MoveAction_015 9
    MoveAction_032
    EndMovement

    .balign 4, 0
_07D0:
    MoveAction_015 10
    MoveAction_032
    EndMovement

    .balign 4, 0
_07DC:
    MoveAction_035
    EndMovement

    .balign 4, 0
_07E4:
    MoveAction_063
    MoveAction_033
    MoveAction_062
    MoveAction_034
    EndMovement

    .balign 4, 0
_07F8:
    MoveAction_075
    EndMovement

    .balign 4, 0
_0800:
    MoveAction_012
    EndMovement

    .balign 4, 0
_0808:
    MoveAction_015 10
    MoveAction_032
    EndMovement

    .balign 4, 0
_0814:
    MoveAction_015 10
    MoveAction_032
    EndMovement

    .balign 4, 0
_0820:
    MoveAction_034
    EndMovement

    .balign 4, 0
_0828:
    MoveAction_075
    EndMovement

    .balign 4, 0
_0830:
    MoveAction_013
    MoveAction_014 5
    MoveAction_012 10
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

    .byte 0
    .byte 0
