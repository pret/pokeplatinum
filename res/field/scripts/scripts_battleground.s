#include "macros/scrcmd.inc"
#include "res/text/bank/battleground.h"


    ScriptEntry _015A
    ScriptEntry _0183
    ScriptEntry _0278
    ScriptEntry _0022
    ScriptEntry _02B4
    ScriptEntry _03CA
    ScriptEntry _0457
    ScriptEntry _04E4
    ScriptEntryEnd

_0022:
    SetFlag FLAG_UNK_0x00C8
    GoToIfUnset FLAG_UNK_0x0AB7, _0039
    Call _0140
    End

_0039:
    SetFlag FLAG_UNK_0x0AB7
    ScrCmd_2F4 VAR_UNK_0x4065, VAR_UNK_0x4066, VAR_UNK_0x4067, VAR_UNK_0x4068
    Call _0140
    ClearFlag FLAG_UNK_0x02A2
    ClearFlag FLAG_UNK_0x02A3
    ClearFlag FLAG_UNK_0x02A4
    ClearFlag FLAG_UNK_0x02A5
    CallIfEq VAR_OBJ_GFX_ID_2, 0xFFF, _00ED
    CallIfEq VAR_OBJ_GFX_ID_3, 0xFFF, _00F3
    CallIfEq VAR_OBJ_GFX_ID_4, 0xFFF, _00F9
    CallIfEq VAR_OBJ_GFX_ID_4, 141, _00FF
    CallIfEq VAR_OBJ_GFX_ID_4, 142, _010C
    CallIfEq VAR_OBJ_GFX_ID_4, 143, _0119
    CallIfEq VAR_OBJ_GFX_ID_4, 144, _0126
    CallIfEq VAR_OBJ_GFX_ID_4, 145, _0133
    ClearFlag FLAG_UNK_0x0001
    ClearFlag FLAG_UNK_0x0002
    ClearFlag FLAG_UNK_0x0003
    ClearFlag FLAG_UNK_0x0004
    ClearFlag FLAG_UNK_0x0005
    ClearFlag FLAG_UNK_0x0006
    ClearFlag FLAG_UNK_0x0007
    ClearFlag FLAG_UNK_0x0008
    GetRandom VAR_UNK_0x4061, 2
    End

_00ED:
    SetFlag FLAG_UNK_0x02A3
    Return

_00F3:
    SetFlag FLAG_UNK_0x02A4
    Return

_00F9:
    SetFlag FLAG_UNK_0x02A5
    Return

_00FF:
    CallIfUnset FLAG_UNK_0x00E3, _00F9
    Return

_010C:
    CallIfUnset FLAG_UNK_0x00E5, _00F9
    Return

_0119:
    CallIfUnset FLAG_UNK_0x00E6, _00F9
    Return

_0126:
    CallIfUnset FLAG_UNK_0x00E7, _00F9
    Return

_0133:
    CallIfUnset FLAG_UNK_0x00E4, _00F9
    Return

_0140:
    SetVar VAR_OBJ_GFX_ID_1, VAR_UNK_0x4065
    SetVar VAR_OBJ_GFX_ID_2, VAR_UNK_0x4066
    SetVar VAR_OBJ_GFX_ID_3, VAR_UNK_0x4067
    SetVar VAR_OBJ_GFX_ID_4, VAR_UNK_0x4068
    Return

_015A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00D7, _0178
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0178:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0183:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetFlag FLAG_MESPRIT_CAUGHT
    Message 5
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8005, 7, _01D5
    CallIfEq VAR_0x8005, 8, _01E9
    CallIfEq VAR_0x8005, 9, _01FD
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject 1
    SetFlag FLAG_UNK_0x00E7
    SetFlag FLAG_UNK_0x01D6
    ReleaseAll
    End

_01D5:
    ApplyMovement LOCALID_PLAYER, _0214
    ApplyMovement 1, _0240
    WaitMovement
    Return

_01E9:
    ApplyMovement LOCALID_PLAYER, _0220
    ApplyMovement 1, _0254
    WaitMovement
    Return

_01FD:
    ApplyMovement LOCALID_PLAYER, _0234
    ApplyMovement 1, _0264
    WaitMovement
    Return

    .balign 4, 0
_0214:
    Delay8 2
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0220:
    Delay8
    WalkOnSpotNormalSouth
    Delay8
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0234:
    Delay8 2
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0240:
    WalkNormalWest
    WalkNormalSouth
    WalkNormalWest 3
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
_0254:
    WalkNormalSouth
    WalkNormalWest 4
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
_0264:
    WalkNormalWest
    WalkNormalSouth
    WalkNormalWest 3
    WalkNormalSouth 2
    EndMovement

_0278:
    LockAll
    SetVar VAR_UNK_0x40C1, 1
    ApplyMovement 0, _02A0
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _02A8
    WaitMovement
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_02A0:
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
_02A8:
    WalkNormalNorth 2
    WalkNormalEast 4
    EndMovement

_02B4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 0
    SetVar VAR_MAP_LOCAL_1, VAR_OBJ_GFX_ID_1
    GoToIfSet FLAG_UNK_0x0005, _034D
    Call _118A
    GoToIfEq VAR_RESULT, 1, _034D
    CallIfUnset FLAG_UNK_0x0001, _036E
    CallIfSet FLAG_UNK_0x0001, _0376
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _0386
    Call _032F
    GoToIfEq VAR_0x8000, 0, _0398
    SetFlag FLAG_UNK_0x0005
    Call _1091
    GoTo _034D
    End

_032F:
    Call _0811
    CloseMessage
    IncrementGameRecord RECORD_UNK_057
    Call _0605
    StartTrainerBattle VAR_MAP_LOCAL_5
    CheckWonBattle VAR_0x8000
    Return

_034D:
    Call _0571
    GoToIfEq VAR_0x8001, 2, _039E
    Call _0AFC
    GoTo _037E
    End

_036E:
    Call _0718
    Return

_0376:
    Call _0A03
    Return

_037E:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0386:
    SetFlag FLAG_UNK_0x0001
    Call _090A
    GoTo _037E
    End

_0398:
    BlackOutFromBattle
    ReleaseAll
    End

_039E:
    CallIfEq VAR_MAP_LOCAL_1, 126, _03C0
    CallIfEq VAR_MAP_LOCAL_1, 132, _03C5
    GoTo _037E
    End

_03C0:
    Message 22
    Return

_03C5:
    Message 73
    Return

_03CA:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 0
    SetVar VAR_MAP_LOCAL_1, VAR_OBJ_GFX_ID_2
    GoToIfSet FLAG_UNK_0x0006, _034D
    Call _118A
    GoToIfEq VAR_RESULT, 1, _034D
    CallIfUnset FLAG_UNK_0x0002, _036E
    CallIfSet FLAG_UNK_0x0002, _0376
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _0445
    Call _032F
    GoToIfEq VAR_0x8000, FALSE, _0398
    SetFlag FLAG_UNK_0x0006
    Call _1091
    GoTo _034D
    End

_0445:
    SetFlag FLAG_UNK_0x0002
    Call _090A
    GoTo _037E
    End

_0457:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 0
    SetVar VAR_MAP_LOCAL_1, VAR_OBJ_GFX_ID_3
    GoToIfSet FLAG_UNK_0x0007, _034D
    Call _118A
    GoToIfEq VAR_RESULT, 1, _034D
    CallIfUnset FLAG_UNK_0x0003, _036E
    CallIfSet FLAG_UNK_0x0003, _0376
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _04D2
    Call _032F
    GoToIfEq VAR_0x8000, 0, _0398
    SetFlag FLAG_UNK_0x0007
    Call _1091
    GoTo _034D
    End

_04D2:
    SetFlag FLAG_UNK_0x0003
    Call _090A
    GoTo _037E
    End

_04E4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 0
    SetVar VAR_MAP_LOCAL_1, VAR_OBJ_GFX_ID_4
    GoToIfSet FLAG_UNK_0x0008, _034D
    Call _118A
    GoToIfEq VAR_RESULT, 1, _034D
    CallIfUnset FLAG_UNK_0x0004, _036E
    CallIfSet FLAG_UNK_0x0004, _0376
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _055F
    Call _032F
    GoToIfEq VAR_0x8000, 0, _0398
    SetFlag FLAG_UNK_0x0008
    Call _1091
    GoTo _034D
    End

_055F:
    SetFlag FLAG_UNK_0x0004
    Call _090A
    GoTo _037E
    End

_0571:
    SetVar VAR_0x8001, 0
    GoToIfEq VAR_MAP_LOCAL_1, 126, _0593
    GoToIfEq VAR_MAP_LOCAL_1, 132, _0593
    Return

_0593:
    CallIfEq VAR_OBJ_GFX_ID_1, 126, _05FD
    CallIfEq VAR_OBJ_GFX_ID_2, 126, _05FD
    CallIfEq VAR_OBJ_GFX_ID_3, 126, _05FD
    CallIfEq VAR_OBJ_GFX_ID_4, 126, _05FD
    CallIfEq VAR_OBJ_GFX_ID_1, 132, _05FD
    CallIfEq VAR_OBJ_GFX_ID_2, 132, _05FD
    CallIfEq VAR_OBJ_GFX_ID_3, 132, _05FD
    CallIfEq VAR_OBJ_GFX_ID_4, 132, _05FD
    Return

_05FD:
    AddVar VAR_0x8001, 1
    Return

_0605:
    CallIfEq VAR_MAP_LOCAL_1, 126, _06B0
    CallIfEq VAR_MAP_LOCAL_1, 127, _06B8
    CallIfEq VAR_MAP_LOCAL_1, 128, _06C0
    CallIfEq VAR_MAP_LOCAL_1, 129, _06C8
    CallIfEq VAR_MAP_LOCAL_1, 130, _06D0
    CallIfEq VAR_MAP_LOCAL_1, 131, _06D8
    CallIfEq VAR_MAP_LOCAL_1, 132, _06E0
    CallIfEq VAR_MAP_LOCAL_1, 133, _06E8
    CallIfEq VAR_MAP_LOCAL_1, 141, _06F0
    CallIfEq VAR_MAP_LOCAL_1, 142, _06F8
    CallIfEq VAR_MAP_LOCAL_1, 143, _0700
    CallIfEq VAR_MAP_LOCAL_1, 144, _0708
    CallIfEq VAR_MAP_LOCAL_1, 145, _0710
    Return

_06B0:
    SetVar VAR_MAP_LOCAL_5, TRAINER_LEADER_ROARK_REMATCH 
    Return

_06B8:
    SetVar VAR_MAP_LOCAL_5, TRAINER_LEADER_GARDENIA_REMATCH
    Return

_06C0:
    SetVar VAR_MAP_LOCAL_5, TRAINER_LEADER_WAKE_REMATCH
    Return

_06C8:
    SetVar VAR_MAP_LOCAL_5, TRAINER_LEADER_MAYLENE_REMATCH
    Return

_06D0:
    SetVar VAR_MAP_LOCAL_5, TRAINER_LEADER_FANTINA_REMATCH
    Return

_06D8:
    SetVar VAR_MAP_LOCAL_5, TRAINER_LEADER_CANDICE_REMATCH
    Return

_06E0:
    SetVar VAR_MAP_LOCAL_5, TRAINER_LEADER_BYRON_REMATCH
    Return

_06E8:
    SetVar VAR_MAP_LOCAL_5, TRAINER_LEADER_VOLKNER_REMATCH
    Return

_06F0:
    SetVar VAR_MAP_LOCAL_5, TRAINER_CHERYL_BATTLEGROUND
    Return

_06F8:
    SetVar VAR_MAP_LOCAL_5, TRAINER_RILEY_BATTLEGROUND
    Return

_0700:
    SetVar VAR_MAP_LOCAL_5, TRAINER_MARLEY_BATTLEGROUND
    Return

_0708:
    SetVar VAR_MAP_LOCAL_5, TRAINER_BUCK_BATTLEGROUND
    Return

_0710:
    SetVar VAR_MAP_LOCAL_5, TRAINER_MIRA_BATTLEGROUND
    Return

_0718:
    GoToIfEq VAR_UNK_0x4061, 1, _0BF5
    CallIfEq VAR_MAP_LOCAL_1, 126, _07D0
    CallIfEq VAR_MAP_LOCAL_1, 127, _07D5
    CallIfEq VAR_MAP_LOCAL_1, 128, _07DA
    CallIfEq VAR_MAP_LOCAL_1, 129, _07DF
    CallIfEq VAR_MAP_LOCAL_1, 130, _07E4
    CallIfEq VAR_MAP_LOCAL_1, 131, _07E9
    CallIfEq VAR_MAP_LOCAL_1, 132, _07EE
    CallIfEq VAR_MAP_LOCAL_1, 133, _07F3
    CallIfEq VAR_MAP_LOCAL_1, 141, _07F8
    CallIfEq VAR_MAP_LOCAL_1, 142, _07FD
    CallIfEq VAR_MAP_LOCAL_1, 143, _0802
    CallIfEq VAR_MAP_LOCAL_1, 144, _0807
    CallIfEq VAR_MAP_LOCAL_1, 145, _080C
    Return

_07D0:
    Message 12
    Return

_07D5:
    Message 23
    Return

_07DA:
    Message 53
    Return

_07DF:
    Message 43
    Return

_07E4:
    Message 33
    Return

_07E9:
    Message 74
    Return

_07EE:
    Message 63
    Return

_07F3:
    Message 84
    Return

_07F8:
    Message 94
    Return

_07FD:
    Message 114
    Return

_0802:
    Message 124
    Return

_0807:
    Message 134
    Return

_080C:
    Message 104
    Return

_0811:
    GoToIfEq VAR_UNK_0x4061, 1, _0CE1
    CallIfEq VAR_MAP_LOCAL_1, 126, _08C9
    CallIfEq VAR_MAP_LOCAL_1, 127, _08CE
    CallIfEq VAR_MAP_LOCAL_1, 128, _08D3
    CallIfEq VAR_MAP_LOCAL_1, 129, _08D8
    CallIfEq VAR_MAP_LOCAL_1, 130, _08DD
    CallIfEq VAR_MAP_LOCAL_1, 131, _08E2
    CallIfEq VAR_MAP_LOCAL_1, 132, _08E7
    CallIfEq VAR_MAP_LOCAL_1, 133, _08EC
    CallIfEq VAR_MAP_LOCAL_1, 141, _08F1
    CallIfEq VAR_MAP_LOCAL_1, 142, _08F6
    CallIfEq VAR_MAP_LOCAL_1, 143, _08FB
    CallIfEq VAR_MAP_LOCAL_1, 144, _0900
    CallIfEq VAR_MAP_LOCAL_1, 145, _0905
    Return

_08C9:
    Message 13
    Return

_08CE:
    Message 24
    Return

_08D3:
    Message 54
    Return

_08D8:
    Message 44
    Return

_08DD:
    Message 34
    Return

_08E2:
    Message 75
    Return

_08E7:
    Message 64
    Return

_08EC:
    Message 85
    Return

_08F1:
    Message 95
    Return

_08F6:
    Message 115
    Return

_08FB:
    Message 125
    Return

_0900:
    Message 135
    Return

_0905:
    Message 105
    Return

_090A:
    GoToIfEq VAR_UNK_0x4061, 1, _0DCD
    CallIfEq VAR_MAP_LOCAL_1, 126, _09C2
    CallIfEq VAR_MAP_LOCAL_1, 127, _09C7
    CallIfEq VAR_MAP_LOCAL_1, 128, _09CC
    CallIfEq VAR_MAP_LOCAL_1, 129, _09D1
    CallIfEq VAR_MAP_LOCAL_1, 130, _09D6
    CallIfEq VAR_MAP_LOCAL_1, 131, _09DB
    CallIfEq VAR_MAP_LOCAL_1, 132, _09E0
    CallIfEq VAR_MAP_LOCAL_1, 133, _09E5
    CallIfEq VAR_MAP_LOCAL_1, 141, _09EA
    CallIfEq VAR_MAP_LOCAL_1, 142, _09EF
    CallIfEq VAR_MAP_LOCAL_1, 143, _09F4
    CallIfEq VAR_MAP_LOCAL_1, 144, _09F9
    CallIfEq VAR_MAP_LOCAL_1, 145, _09FE
    Return

_09C2:
    Message 14
    Return

_09C7:
    Message 25
    Return

_09CC:
    Message 55
    Return

_09D1:
    Message 45
    Return

_09D6:
    Message 35
    Return

_09DB:
    Message 76
    Return

_09E0:
    Message 65
    Return

_09E5:
    Message 86
    Return

_09EA:
    Message 96
    Return

_09EF:
    Message 116
    Return

_09F4:
    Message 126
    Return

_09F9:
    Message 136
    Return

_09FE:
    Message 106
    Return

_0A03:
    GoToIfEq VAR_UNK_0x4061, 1, _0EB9
    CallIfEq VAR_MAP_LOCAL_1, 126, _0ABB
    CallIfEq VAR_MAP_LOCAL_1, 127, _0AC0
    CallIfEq VAR_MAP_LOCAL_1, 128, _0AC5
    CallIfEq VAR_MAP_LOCAL_1, 129, _0ACA
    CallIfEq VAR_MAP_LOCAL_1, 130, _0ACF
    CallIfEq VAR_MAP_LOCAL_1, 131, _0AD4
    CallIfEq VAR_MAP_LOCAL_1, 132, _0AD9
    CallIfEq VAR_MAP_LOCAL_1, 133, _0ADE
    CallIfEq VAR_MAP_LOCAL_1, 141, _0AE3
    CallIfEq VAR_MAP_LOCAL_1, 142, _0AE8
    CallIfEq VAR_MAP_LOCAL_1, 143, _0AED
    CallIfEq VAR_MAP_LOCAL_1, 144, _0AF2
    CallIfEq VAR_MAP_LOCAL_1, 145, _0AF7
    Return

_0ABB:
    Message 15
    Return

_0AC0:
    Message 26
    Return

_0AC5:
    Message 56
    Return

_0ACA:
    Message 46
    Return

_0ACF:
    Message 36
    Return

_0AD4:
    Message 77
    Return

_0AD9:
    Message 66
    Return

_0ADE:
    Message 87
    Return

_0AE3:
    Message 97
    Return

_0AE8:
    Message 117
    Return

_0AED:
    Message 127
    Return

_0AF2:
    Message 137
    Return

_0AF7:
    Message 107
    Return

_0AFC:
    GoToIfEq VAR_UNK_0x4061, 1, _0FA5
    CallIfEq VAR_MAP_LOCAL_1, 126, _0BB4
    CallIfEq VAR_MAP_LOCAL_1, 127, _0BB9
    CallIfEq VAR_MAP_LOCAL_1, 128, _0BBE
    CallIfEq VAR_MAP_LOCAL_1, 129, _0BC3
    CallIfEq VAR_MAP_LOCAL_1, 130, _0BC8
    CallIfEq VAR_MAP_LOCAL_1, 131, _0BCD
    CallIfEq VAR_MAP_LOCAL_1, 132, _0BD2
    CallIfEq VAR_MAP_LOCAL_1, 133, _0BD7
    CallIfEq VAR_MAP_LOCAL_1, 141, _0BDC
    CallIfEq VAR_MAP_LOCAL_1, 142, _0BE1
    CallIfEq VAR_MAP_LOCAL_1, 143, _0BE6
    CallIfEq VAR_MAP_LOCAL_1, 144, _0BEB
    CallIfEq VAR_MAP_LOCAL_1, 145, _0BF0
    Return

_0BB4:
    Message 16
    Return

_0BB9:
    Message 27
    Return

_0BBE:
    Message 57
    Return

_0BC3:
    Message 47
    Return

_0BC8:
    Message 37
    Return

_0BCD:
    Message 78
    Return

_0BD2:
    Message 67
    Return

_0BD7:
    Message 88
    Return

_0BDC:
    Message 98
    Return

_0BE1:
    Message 118
    Return

_0BE6:
    Message 128
    Return

_0BEB:
    Message 138
    Return

_0BF0:
    Message 108
    Return

_0BF5:
    CallIfEq VAR_MAP_LOCAL_1, 126, _0CA0
    CallIfEq VAR_MAP_LOCAL_1, 127, _0CA5
    CallIfEq VAR_MAP_LOCAL_1, 128, _0CAA
    CallIfEq VAR_MAP_LOCAL_1, 129, _0CAF
    CallIfEq VAR_MAP_LOCAL_1, 130, _0CB4
    CallIfEq VAR_MAP_LOCAL_1, 131, _0CB9
    CallIfEq VAR_MAP_LOCAL_1, 132, _0CBE
    CallIfEq VAR_MAP_LOCAL_1, 133, _0CC3
    CallIfEq VAR_MAP_LOCAL_1, 141, _0CC8
    CallIfEq VAR_MAP_LOCAL_1, 142, _0CCD
    CallIfEq VAR_MAP_LOCAL_1, 143, _0CD2
    CallIfEq VAR_MAP_LOCAL_1, 144, _0CD7
    CallIfEq VAR_MAP_LOCAL_1, 145, _0CDC
    Return

_0CA0:
    Message 17
    Return

_0CA5:
    Message 28
    Return

_0CAA:
    Message 58
    Return

_0CAF:
    Message 48
    Return

_0CB4:
    Message 38
    Return

_0CB9:
    Message 79
    Return

_0CBE:
    Message 68
    Return

_0CC3:
    Message 89
    Return

_0CC8:
    Message 99
    Return

_0CCD:
    Message 119
    Return

_0CD2:
    Message 129
    Return

_0CD7:
    Message 139
    Return

_0CDC:
    Message 109
    Return

_0CE1:
    CallIfEq VAR_MAP_LOCAL_1, 126, _0D8C
    CallIfEq VAR_MAP_LOCAL_1, 127, _0D91
    CallIfEq VAR_MAP_LOCAL_1, 128, _0D96
    CallIfEq VAR_MAP_LOCAL_1, 129, _0D9B
    CallIfEq VAR_MAP_LOCAL_1, 130, _0DA0
    CallIfEq VAR_MAP_LOCAL_1, 131, _0DA5
    CallIfEq VAR_MAP_LOCAL_1, 132, _0DAA
    CallIfEq VAR_MAP_LOCAL_1, 133, _0DAF
    CallIfEq VAR_MAP_LOCAL_1, 141, _0DB4
    CallIfEq VAR_MAP_LOCAL_1, 142, _0DB9
    CallIfEq VAR_MAP_LOCAL_1, 143, _0DBE
    CallIfEq VAR_MAP_LOCAL_1, 144, _0DC3
    CallIfEq VAR_MAP_LOCAL_1, 145, _0DC8
    Return

_0D8C:
    Message 18
    Return

_0D91:
    Message 29
    Return

_0D96:
    Message 59
    Return

_0D9B:
    Message 49
    Return

_0DA0:
    Message 39
    Return

_0DA5:
    Message 80
    Return

_0DAA:
    Message 69
    Return

_0DAF:
    Message 90
    Return

_0DB4:
    Message 100
    Return

_0DB9:
    Message 120
    Return

_0DBE:
    Message 130
    Return

_0DC3:
    Message 140
    Return

_0DC8:
    Message 110
    Return

_0DCD:
    CallIfEq VAR_MAP_LOCAL_1, 126, _0E78
    CallIfEq VAR_MAP_LOCAL_1, 127, _0E7D
    CallIfEq VAR_MAP_LOCAL_1, 128, _0E82
    CallIfEq VAR_MAP_LOCAL_1, 129, _0E87
    CallIfEq VAR_MAP_LOCAL_1, 130, _0E8C
    CallIfEq VAR_MAP_LOCAL_1, 131, _0E91
    CallIfEq VAR_MAP_LOCAL_1, 132, _0E96
    CallIfEq VAR_MAP_LOCAL_1, 133, _0E9B
    CallIfEq VAR_MAP_LOCAL_1, 141, _0EA0
    CallIfEq VAR_MAP_LOCAL_1, 142, _0EA5
    CallIfEq VAR_MAP_LOCAL_1, 143, _0EAA
    CallIfEq VAR_MAP_LOCAL_1, 144, _0EAF
    CallIfEq VAR_MAP_LOCAL_1, 145, _0EB4
    Return

_0E78:
    Message 19
    Return

_0E7D:
    Message 30
    Return

_0E82:
    Message 60
    Return

_0E87:
    Message 50
    Return

_0E8C:
    Message 40
    Return

_0E91:
    Message 81
    Return

_0E96:
    Message 70
    Return

_0E9B:
    Message 91
    Return

_0EA0:
    Message 101
    Return

_0EA5:
    Message 121
    Return

_0EAA:
    Message 131
    Return

_0EAF:
    Message 141
    Return

_0EB4:
    Message 111
    Return

_0EB9:
    CallIfEq VAR_MAP_LOCAL_1, 126, _0F64
    CallIfEq VAR_MAP_LOCAL_1, 127, _0F69
    CallIfEq VAR_MAP_LOCAL_1, 128, _0F6E
    CallIfEq VAR_MAP_LOCAL_1, 129, _0F73
    CallIfEq VAR_MAP_LOCAL_1, 130, _0F78
    CallIfEq VAR_MAP_LOCAL_1, 131, _0F7D
    CallIfEq VAR_MAP_LOCAL_1, 132, _0F82
    CallIfEq VAR_MAP_LOCAL_1, 133, _0F87
    CallIfEq VAR_MAP_LOCAL_1, 141, _0F8C
    CallIfEq VAR_MAP_LOCAL_1, 142, _0F91
    CallIfEq VAR_MAP_LOCAL_1, 143, _0F96
    CallIfEq VAR_MAP_LOCAL_1, 144, _0F9B
    CallIfEq VAR_MAP_LOCAL_1, 145, _0FA0
    Return

_0F64:
    Message 20
    Return

_0F69:
    Message 31
    Return

_0F6E:
    Message 61
    Return

_0F73:
    Message 51
    Return

_0F78:
    Message 41
    Return

_0F7D:
    Message 82
    Return

_0F82:
    Message 71
    Return

_0F87:
    Message 92
    Return

_0F8C:
    Message 102
    Return

_0F91:
    Message 122
    Return

_0F96:
    Message 132
    Return

_0F9B:
    Message 142
    Return

_0FA0:
    Message 112
    Return

_0FA5:
    CallIfEq VAR_MAP_LOCAL_1, 126, _1050
    CallIfEq VAR_MAP_LOCAL_1, 127, _1055
    CallIfEq VAR_MAP_LOCAL_1, 128, _105A
    CallIfEq VAR_MAP_LOCAL_1, 129, _105F
    CallIfEq VAR_MAP_LOCAL_1, 130, _1064
    CallIfEq VAR_MAP_LOCAL_1, 131, _1069
    CallIfEq VAR_MAP_LOCAL_1, 132, _106E
    CallIfEq VAR_MAP_LOCAL_1, 133, _1073
    CallIfEq VAR_MAP_LOCAL_1, 141, _1078
    CallIfEq VAR_MAP_LOCAL_1, 142, _107D
    CallIfEq VAR_MAP_LOCAL_1, 143, _1082
    CallIfEq VAR_MAP_LOCAL_1, 144, _1087
    CallIfEq VAR_MAP_LOCAL_1, 145, _108C
    Return

_1050:
    Message 21
    Return

_1055:
    Message 32
    Return

_105A:
    Message 62
    Return

_105F:
    Message 52
    Return

_1064:
    Message 42
    Return

_1069:
    Message 83
    Return

_106E:
    Message 72
    Return

_1073:
    Message 93
    Return

_1078:
    Message 103
    Return

_107D:
    Message 123
    Return

_1082:
    Message 133
    Return

_1087:
    Message 143
    Return

_108C:
    Message 113
    Return

_1091:
    CallIfEq VAR_MAP_LOCAL_1, 126, _113C
    CallIfEq VAR_MAP_LOCAL_1, 127, _1142
    CallIfEq VAR_MAP_LOCAL_1, 128, _1148
    CallIfEq VAR_MAP_LOCAL_1, 129, _114E
    CallIfEq VAR_MAP_LOCAL_1, 130, _1154
    CallIfEq VAR_MAP_LOCAL_1, 131, _115A
    CallIfEq VAR_MAP_LOCAL_1, 132, _1160
    CallIfEq VAR_MAP_LOCAL_1, 133, _1166
    CallIfEq VAR_MAP_LOCAL_1, 141, _116C
    CallIfEq VAR_MAP_LOCAL_1, 142, _1172
    CallIfEq VAR_MAP_LOCAL_1, 143, _1178
    CallIfEq VAR_MAP_LOCAL_1, 144, _117E
    CallIfEq VAR_MAP_LOCAL_1, 145, _1184
    Return

_113C:
    SetFlag FLAG_UNK_0x0AB8
    Return

_1142:
    SetFlag FLAG_UNK_0x0AB9
    Return

_1148:
    SetFlag FLAG_UNK_0x0ABA
    Return

_114E:
    SetFlag FLAG_UNK_0x0ABB
    Return

_1154:
    SetFlag FLAG_UNK_0x0AC5
    Return

_115A:
    SetFlag FLAG_UNK_0x0AC6
    Return

_1160:
    SetFlag FLAG_UNK_0x0AC7
    Return

_1166:
    SetFlag FLAG_UNK_0x0AC8
    Return

_116C:
    SetFlag FLAG_UNK_0x0AC9
    Return

_1172:
    SetFlag FLAG_UNK_0x0ACA
    Return

_1178:
    SetFlag FLAG_UNK_0x0ACB
    Return

_117E:
    SetFlag FLAG_UNK_0x0ACC
    Return

_1184:
    SetFlag FLAG_UNK_0x0ACD
    Return

_118A:
    SetVar VAR_RESULT, 0
    GoToIfEq VAR_MAP_LOCAL_1, 126, _123B
    GoToIfEq VAR_MAP_LOCAL_1, 127, _1248
    GoToIfEq VAR_MAP_LOCAL_1, 128, _1255
    GoToIfEq VAR_MAP_LOCAL_1, 129, _1262
    GoToIfEq VAR_MAP_LOCAL_1, 130, _126F
    GoToIfEq VAR_MAP_LOCAL_1, 131, _127C
    GoToIfEq VAR_MAP_LOCAL_1, 132, _1289
    GoToIfEq VAR_MAP_LOCAL_1, 133, _1296
    GoToIfEq VAR_MAP_LOCAL_1, 141, _12A3
    GoToIfEq VAR_MAP_LOCAL_1, 142, _12B0
    GoToIfEq VAR_MAP_LOCAL_1, 143, _12BD
    GoToIfEq VAR_MAP_LOCAL_1, 144, _12CA
    GoToIfEq VAR_MAP_LOCAL_1, 145, _12D7
    Return

_123B:
    GoToIfSet FLAG_UNK_0x0AB8, _12E4
    Return

_1248:
    GoToIfSet FLAG_UNK_0x0AB9, _12E4
    Return

_1255:
    GoToIfSet FLAG_UNK_0x0ABA, _12E4
    Return

_1262:
    GoToIfSet FLAG_UNK_0x0ABB, _12E4
    Return

_126F:
    GoToIfSet FLAG_UNK_0x0AC5, _12E4
    Return

_127C:
    GoToIfSet FLAG_UNK_0x0AC6, _12E4
    Return

_1289:
    GoToIfSet FLAG_UNK_0x0AC7, _12E4
    Return

_1296:
    GoToIfSet FLAG_UNK_0x0AC8, _12E4
    Return

_12A3:
    GoToIfSet FLAG_UNK_0x0AC9, _12E4
    Return

_12B0:
    GoToIfSet FLAG_UNK_0x0ACA, _12E4
    Return

_12BD:
    GoToIfSet FLAG_UNK_0x0ACB, _12E4
    Return

_12CA:
    GoToIfSet FLAG_UNK_0x0ACC, _12E4
    Return

_12D7:
    GoToIfSet FLAG_UNK_0x0ACD, _12E4
    Return

_12E4:
    SetVar VAR_RESULT, 1
    Return
