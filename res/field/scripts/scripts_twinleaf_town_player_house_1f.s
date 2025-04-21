#include "macros/scrcmd.inc"
#include "res/text/bank/twinleaf_town_player_house_1f.h"

    .data

    ScriptEntry _002E
    ScriptEntry _0064
    ScriptEntry _017C
    ScriptEntry _0214
    ScriptEntry _08E0
    ScriptEntry _0948
    ScriptEntry _095E
    ScriptEntry _09D8
    ScriptEntry _09E9
    ScriptEntry _09FA
    ScriptEntry _00E0
    ScriptEntryEnd

_002E:
    CallIfEq VAR_UNK_0x40A4, 3, _0048
    CallIfSet FLAG_UNK_0x008F, _005E
    End

_0048:
    SetObjectEventPos 0, 2, 4
    ScrCmd_189 0, 0
    ScrCmd_188 0, 14
    Return

_005E:
    SetFlag FLAG_UNK_0x01F1
    Return

_0064:
    LockAll
    ApplyMovement LOCALID_PLAYER, _00A4
    ApplyMovement 0, _00B0
    WaitMovement
    SetFlag FLAG_UNK_0x0087
    BufferPlayerName 0
    BufferRivalName 1
    Message 0
    CloseMessage
    WaitTime 15, VAR_RESULT
    ApplyMovement 0, _00CC
    WaitMovement
    SetVar VAR_UNK_0x40A4, 1
    ReleaseAll
    End

    .balign 4, 0
_00A4:
    MoveAction_062
    MoveAction_033
    EndMovement

    .balign 4, 0
_00B0:
    MoveAction_032
    MoveAction_075
    MoveAction_063
    MoveAction_012
    MoveAction_015 3
    MoveAction_012 3
    EndMovement

    .balign 4, 0
_00CC:
    MoveAction_013 2
    MoveAction_014 3
    MoveAction_013 2
    MoveAction_032
    EndMovement

_00E0:
    LockAll
    SetVar VAR_UNK_0x410F, 2
    GoToIfSet FLAG_UNK_0x015C, _014B
    GoToIfUnset FLAG_UNK_0x015D, _0110
    GetSetNationalDexEnabled 2, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _014B
_0110:
    ApplyMovement LOCALID_PLAYER, _0164
    ApplyMovement 0, _0170
    WaitMovement
    BufferPlayerName 0
    BufferRivalName 1
    GetSetNationalDexEnabled 2, VAR_RESULT
    CallIfEq VAR_RESULT, 1, _014F
    CallIfEq VAR_RESULT, 0, _0158
    WaitABXPadPress
    CloseMessage
_014B:
    ReleaseAll
    End

_014F:
    SetFlag FLAG_UNK_0x015C
    Message 35
    Return

_0158:
    SetFlag FLAG_UNK_0x015D
    Message 36
    Return

    .balign 4, 0
_0164:
    MoveAction_062
    MoveAction_033
    EndMovement

    .balign 4, 0
_0170:
    MoveAction_032
    MoveAction_075
    EndMovement

_017C:
    LockAll
    WaitTime 30, VAR_RESULT
    ApplyMovement 0, _01D4
    ApplyMovement LOCALID_PLAYER, _01F8
    WaitMovement
    WaitTime 30, VAR_RESULT
    BufferRivalName 0
    BufferPlayerName 1
    Message 6
    CloseMessage
    WaitTime 30, VAR_RESULT
    BufferPlayerName 0
    Message 7
    GiveRunningShoes
    BufferPlayerName 0
    Message 8
    PlaySound SEQ_FANFA4
    WaitSound
    Message 9
    WaitABXPadPress
    CloseMessage
    SetVar VAR_UNK_0x40A4, 4
    ReleaseAll
    End

    .balign 4, 0
_01D4:
    MoveAction_014
    MoveAction_000
    MoveAction_063 2
    MoveAction_015 3
    MoveAction_013 2
    MoveAction_015 3
    MoveAction_013 2
    MoveAction_034
    EndMovement

    .balign 4, 0
_01F8:
    MoveAction_063 4
    MoveAction_035
    MoveAction_063 4
    MoveAction_015 3
    MoveAction_013 2
    MoveAction_015
    EndMovement

_0214:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0002, _02AF
    GoToIfGe VAR_UNK_0x40A4, 7, _0792
    GoToIfEq VAR_UNK_0x40A4, 6, _035E
    GoToIfSet FLAG_UNK_0x0090, _036C
    GoToIfGe VAR_UNK_0x40A4, 5, _0788
    GoToIfGe VAR_UNK_0x40A4, 4, _0711
    GoToIfSet FLAG_UNK_0x00F8, _075A
    GoToIfGe VAR_UNK_0x40A4, 2, _0768
    GoToIfSet FLAG_UNK_0x0087, _077A
    SetFlag FLAG_UNK_0x0087
    BufferPlayerName 0
    BufferRivalName 1
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 205
    .byte 0
    .byte 0
    .byte 206
    .byte 0
    .byte 1
    .byte 44
    .byte 0
    .byte 35
    .byte 49
    .byte 0
    .byte 52
    .byte 0
    .byte 97
    .byte 0
    .byte 2
    .byte 0

_02AF:
    GoToIfGe VAR_UNK_0x40B2, 2, _0300
    GoTo _02C4
    End

_02C4:
    GetRandom VAR_RESULT, 4
    GoToIfEq VAR_RESULT, 0, _031B
    GoToIfEq VAR_RESULT, 1, _0329
    GoToIfEq VAR_RESULT, 2, _0337
    GoToIfEq VAR_RESULT, 3, _0345
    End

_0300:
    GoToIfGe VAR_UNK_0x40AA, 2, _02C4
    BufferPlayerName 0
    Message 41
    GoTo _0356
    End

_031B:
    BufferPlayerName 0
    Message 37
    GoTo _0356
    End

_0329:
    BufferPlayerName 0
    Message 38
    GoTo _0356
    End

_0337:
    BufferPlayerName 0
    Message 39
    GoTo _0356
    End

_0345:
    BufferPlayerName 0
    BufferRivalName 1
    Message 40
    GoTo _0356
    End

_0356:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_035E:
    BufferPlayerName 0
    Message 28
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_036C:
    Call _0688
    BufferPlayerName 0
    Message 15
    SetVar VAR_0x8004, 0x1B1
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7FC
    GiveJournal
    Message 16
    GetPlayerDir VAR_0x8007
    GoToIfEq VAR_0x8007, 1, _03A6
    GoTo _03B8
    End

_03A6:
    ApplyMovement 0, _079C
    WaitMovement
    GoTo _03CA
    End

_03B8:
    ApplyMovement 0, _07A4
    WaitMovement
    GoTo _03CA
    End

_03CA:
    Message 17
    FacePlayer
    BufferPlayerName 0
    Message 18
    CloseMessage
    PlayFanfare SEQ_SE_DP_DOOR_OPEN
    ClearFlag FLAG_UNK_0x01F1
    AddObject 1
    WaitFanfare SEQ_SE_DP_DOOR_OPEN
    ApplyMovement 0, _07B4
    ApplyMovement LOCALID_PLAYER, _0864
    WaitMovement
    ApplyMovement 1, _07FC
    WaitMovement
    CallIfEq VAR_0x8007, 0, _0465
    BufferRivalName 1
    Message 19
    ApplyMovement 0, _07C0
    WaitMovement
    Message 20
    BufferRivalName 1
    Message 21
    BufferPlayerName 0
    Message 22
    GoToIfEq VAR_0x8007, 0, _0471
    GoToIfEq VAR_0x8007, 1, _048B
    GoToIfEq VAR_0x8007, 2, _04A5
    GoToIfEq VAR_0x8007, 3, _04BF
    End

_0465:
    ApplyMovement LOCALID_PLAYER, _086C
    WaitMovement
    Return

_0471:
    ApplyMovement 0, _07C8
    ApplyMovement LOCALID_PLAYER, _0874
    WaitMovement
    GoTo _04D9
    End

_048B:
    ApplyMovement 0, _07D0
    ApplyMovement LOCALID_PLAYER, _087C
    WaitMovement
    GoTo _04D9
    End

_04A5:
    ApplyMovement 0, _07D8
    ApplyMovement LOCALID_PLAYER, _0884
    WaitMovement
    GoTo _04D9
    End

_04BF:
    ApplyMovement 0, _07E0
    ApplyMovement LOCALID_PLAYER, _088C
    WaitMovement
    GoTo _04D9
    End

_04D9:
    Message 23
    CloseMessage
    GoToIfEq VAR_0x8007, 0, _0514
    GoToIfEq VAR_0x8007, 1, _052E
    GoToIfEq VAR_0x8007, 2, _0548
    GoToIfEq VAR_0x8007, 3, _0562
    End

_0514:
    ApplyMovement 1, _0808
    ApplyMovement LOCALID_PLAYER, _0894
    WaitMovement
    GoTo _057C
    End

_052E:
    ApplyMovement 1, _0810
    ApplyMovement LOCALID_PLAYER, _089C
    WaitMovement
    GoTo _057C
    End

_0548:
    ApplyMovement 1, _081C
    ApplyMovement LOCALID_PLAYER, _08A8
    WaitMovement
    GoTo _057C
    End

_0562:
    ApplyMovement 1, _0828
    ApplyMovement LOCALID_PLAYER, _08B4
    WaitMovement
    GoTo _057C
    End

_057C:
    BufferPlayerName 0
    BufferRivalName 1
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _059B
    GoTo _05A6
    End

_059B:
    Message 24
    GoTo _05B1
    End

_05A6:
    Message 25
    GoTo _05B1
    End

_05B1:
    SetVar VAR_0x8004, 0x1CB
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x008F
    Message 27
    BufferRivalName 1
    Message 26
    CloseMessage
    GoToIfEq VAR_0x8007, 0, _0606
    GoToIfEq VAR_0x8007, 1, _0620
    GoToIfEq VAR_0x8007, 2, _0642
    GoToIfEq VAR_0x8007, 3, _065C
    End

_0606:
    ApplyMovement 1, _0830
    ApplyMovement LOCALID_PLAYER, _08BC
    WaitMovement
    GoTo _0676
    End

_0620:
    ApplyMovement 1, _083C
    ApplyMovement LOCALID_PLAYER, _08C4
    ApplyMovement 0, _07E8
    WaitMovement
    GoTo _0676
    End

_0642:
    ApplyMovement 1, _0848
    ApplyMovement 0, _07F4
    WaitMovement
    GoTo _0676
    End

_065C:
    ApplyMovement 1, _0858
    ApplyMovement LOCALID_PLAYER, _08D8
    WaitMovement
    GoTo _0676
    End

_0676:
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject 1
    SetVar VAR_UNK_0x40A4, 6
    ReleaseAll
    End

_0688:
    BufferPlayerName 0
    GetTimeOfDay VAR_RESULT
    CallIfEq VAR_RESULT, 0, _06F8
    CallIfEq VAR_RESULT, 1, _06FD
    CallIfEq VAR_RESULT, 2, _0702
    CallIfEq VAR_RESULT, 3, _0707
    CallIfEq VAR_RESULT, 4, _070C
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    PlaySound SEQ_ASA
    WaitSound
    HealParty
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    SetFlag FLAG_UNK_0x0002
    Return

_06F8:
    Message 11
    Return

_06FD:
    Message 12
    Return

_0702:
    Message 12
    Return

_0707:
    Message 13
    Return

_070C:
    Message 14
    Return

_0711:
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 206
    .byte 0
    .byte 0
    .byte 205
    .byte 0
    .byte 1
    .byte 44
    .byte 0
    .byte 6
    .byte 52
    .byte 0
    .byte 3
    .byte 0
    .byte 30
    .byte 0
    .byte 12
    .byte 128
    .byte 205
    .byte 0
    .byte 0
    .byte 44
    .byte 0
    .byte 7
    .byte 95
    .byte 1
    .byte 123
    .byte 0
    .byte 17
    .byte 0
    .byte 1
    .byte 0
    .byte 12
    .byte 128
    .byte 205
    .byte 0
    .byte 0
    .byte 44
    .byte 0
    .byte 8
    .byte 78
    .byte 0
    .byte 134
    .byte 4
    .byte 79
    .byte 0
    .byte 44
    .byte 0
    .byte 9
    .byte 49
    .byte 0
    .byte 52
    .byte 0
    .byte 40
    .byte 0
    .byte 164
    .byte 64
    .byte 4
    .byte 0
    .byte 97
    .byte 0
    .byte 2
    .byte 0

_075A:
    BufferRivalName 0
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0768:
    SetFlag FLAG_UNK_0x00F8
    BufferPlayerName 0
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_077A:
    BufferRivalName 0
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0788:
    Call _0688
    ReleaseAll
    End

_0792:
    Call _0688
    ReleaseAll
    End

    .balign 4, 0
_079C:
    MoveAction_033
    EndMovement

    .balign 4, 0
_07A4:
    MoveAction_032
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
_07B4:
    MoveAction_033
    MoveAction_075
    EndMovement

    .balign 4, 0
_07C0:
    MoveAction_033
    EndMovement

    .balign 4, 0
_07C8:
    MoveAction_033
    EndMovement

    .balign 4, 0
_07D0:
    MoveAction_032
    EndMovement

    .balign 4, 0
_07D8:
    MoveAction_035
    EndMovement

    .balign 4, 0
_07E0:
    MoveAction_034
    EndMovement

    .balign 4, 0
_07E8:
    MoveAction_063
    MoveAction_033
    EndMovement

    .balign 4, 0
_07F4:
    MoveAction_033
    EndMovement

    .balign 4, 0
_07FC:
    MoveAction_012
    MoveAction_035
    EndMovement

    .balign 4, 0
_0808:
    MoveAction_035
    EndMovement

    .balign 4, 0
_0810:
    MoveAction_012 2
    MoveAction_035
    EndMovement

    .balign 4, 0
_081C:
    MoveAction_015 2
    MoveAction_032
    EndMovement

    .balign 4, 0
_0828:
    MoveAction_032
    EndMovement

    .balign 4, 0
_0830:
    MoveAction_013
    MoveAction_033
    EndMovement

    .balign 4, 0
_083C:
    MoveAction_013 3
    MoveAction_033
    EndMovement

    .balign 4, 0
_0848:
    MoveAction_014 2
    MoveAction_013
    MoveAction_033
    EndMovement

    .balign 4, 0
_0858:
    MoveAction_013
    MoveAction_033
    EndMovement

    .balign 4, 0
_0864:
    MoveAction_033
    EndMovement

    .balign 4, 0
_086C:
    MoveAction_034
    EndMovement

    .balign 4, 0
_0874:
    MoveAction_032
    EndMovement

    .balign 4, 0
_087C:
    MoveAction_033
    EndMovement

    .balign 4, 0
_0884:
    MoveAction_034
    EndMovement

    .balign 4, 0
_088C:
    MoveAction_035
    EndMovement

    .balign 4, 0
_0894:
    MoveAction_034
    EndMovement

    .balign 4, 0
_089C:
    MoveAction_063 2
    MoveAction_034
    EndMovement

    .balign 4, 0
_08A8:
    MoveAction_063 2
    MoveAction_033
    EndMovement

    .balign 4, 0
_08B4:
    MoveAction_033
    EndMovement

    .balign 4, 0
_08BC:
    MoveAction_033
    EndMovement

    .balign 4, 0
_08C4:
    MoveAction_033
    EndMovement

    .byte 63
    .byte 0
    .byte 2
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
_08D8:
    MoveAction_033
    EndMovement

_08E0:
    LockAll
    GoTo _08EA
    End

_08EA:
    ApplyMovement LOCALID_PLAYER, _0918
    ApplyMovement 0, _0930
    WaitMovement
    GoTo _0904
    End

_0904:
    SetVar VAR_UNK_0x40A4, 2
    BufferPlayerName 0
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0918:
    MoveAction_063 2
    MoveAction_032
    EndMovement

    .byte 62
    .byte 0
    .byte 2
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
_0930:
    MoveAction_033
    EndMovement

    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 14
    .byte 0
    .byte 2
    .byte 0
    .byte 13
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_0948:
    BufferRivalName 1
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 26
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_095E:
    GetTimeOfDay VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _09A5
    GoToIfEq VAR_RESULT, 1, _09B6
    GoToIfEq VAR_RESULT, 2, _09B6
    GoToIfEq VAR_RESULT, 3, _09C7
    GoToIfEq VAR_RESULT, 4, _09C7
    End

_09A5:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 29
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_09B6:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 30
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_09C7:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 31
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_09D8:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 32
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_09E9:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 33
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_09FA:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 34
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
