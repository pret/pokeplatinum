#include "macros/scrcmd.inc"
#include "res/text/bank/pastoria_city.h"

    .data

    ScriptEntry _005E
    ScriptEntry _00B2
    ScriptEntry _00C5
    ScriptEntry _00D8
    ScriptEntry _00EB
    ScriptEntry _00FE
    ScriptEntry _01D2
    ScriptEntry _01E5
    ScriptEntry _0204
    ScriptEntry _012F
    ScriptEntry _01AC
    ScriptEntry _01BF
    ScriptEntry _03E4
    ScriptEntry _03FB
    ScriptEntry _0410
    ScriptEntry _0427
    ScriptEntry _043E
    ScriptEntry _04C8
    ScriptEntry _05E0
    ScriptEntry _09A8
    ScriptEntry _07F8
    ScriptEntry _0B90
    ScriptEntry _0BF0
    ScriptEntryEnd

_005E:
    SetVar VAR_UNK_0x40C7, 0
    SetFlag FLAG_UNK_0x017E
    CallIfEq VAR_UNK_0x407C, 5, _074D
    CallIfEq VAR_UNK_0x407C, 4, _0721
    CallIfEq VAR_UNK_0x407C, 4, _0737
    GoToIfSet FLAG_UNK_0x0102, _009C
    End

_009C:
    SetObjectEventPos 21, 0x27D, 0x32C
    ScrCmd_189 21, 3
    ScrCmd_188 21, 17
    End

_00B2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 29
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00C5:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 30
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00D8:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 31
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00EB:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 32
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00FE:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckBadgeAcquired BADGE_ID_FEN, VAR_0x800C
    GoToIfEq VAR_0x800C, 1, _0124
    Message 33
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0124:
    Message 34
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_012F:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0128, _0189
    GetPlayerStarterSpecies VAR_0x800C
    CallIfEq VAR_0x800C, SPECIES_TURTWIG, _0194
    CallIfEq VAR_0x800C, SPECIES_CHIMCHAR, _019C
    CallIfEq VAR_0x800C, SPECIES_PIPLUP, _01A4
    ScrCmd_261 0, VAR_0x8004
    Message 37
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7DF
    SetFlag FLAG_UNK_0x0128
    CloseMessage
    ReleaseAll
    End

_0189:
    Message 38
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0194:
    SetVar VAR_0x8004, ACCESSORY_CHIMCHAR_MASK
    Return

_019C:
    SetVar VAR_0x8004, ACCESSORY_PIPLUP_MASK
    Return

_01A4:
    SetVar VAR_0x8004, ACCESSORY_TURTWIG_MASK
    Return

_01AC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 39
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01BF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 40
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01D2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 35
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01E5:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_CLEFAIRY
    Message 36
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0204:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfSet FLAG_UNK_0x0102, _0220
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0220:
    FacePlayer
    Message 28
    CloseMessage
    GetPlayerDir VAR_0x800C
    GoToIfEq VAR_0x800C, 2, _025A
    GoToIfEq VAR_0x800C, 3, _027A
    GoToIfEq VAR_0x800C, 0, _0292
    GoTo _02B2
    End

_025A:
    SetVar VAR_0x8007, 2
    ApplyMovement 21, _0388
    ApplyMovement LOCALID_PLAYER, _02EC
    WaitMovement
    GoTo _02D2
    End

_027A:
    SetVar VAR_0x8007, 3
    ApplyMovement 21, _0398
    WaitMovement
    GoTo _02D2
    End

_0292:
    SetVar VAR_0x8007, 0
    ApplyMovement 21, _0398
    ApplyMovement LOCALID_PLAYER, _030C
    WaitMovement
    GoTo _02D2
    End

_02B2:
    SetVar VAR_0x8007, 1
    ApplyMovement 21, _0398
    ApplyMovement LOCALID_PLAYER, _0304
    WaitMovement
    GoTo _02D2
    End

_02D2:
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject 21
    SetFlag FLAG_UNK_0x0103
    ReleaseAll
    End

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
_02EC:
    MoveAction_033
    MoveAction_035
    EndMovement

    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0304:
    MoveAction_035
    EndMovement

    .balign 4, 0
_030C:
    MoveAction_035
    EndMovement

    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 19
    .byte 0
    .byte 9
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 19
    .byte 0
    .byte 7
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 17
    .byte 0
    .byte 1
    .byte 0
    .byte 19
    .byte 0
    .byte 8
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 16
    .byte 0
    .byte 1
    .byte 0
    .byte 19
    .byte 0
    .byte 8
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 75
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 17
    .byte 0
    .byte 1
    .byte 0
    .byte 19
    .byte 0
    .byte 10
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 19
    .byte 0
    .byte 10
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0388:
    MoveAction_017
    MoveAction_019 2
    MoveAction_039
    EndMovement

    .balign 4, 0
_0398:
    MoveAction_019 2
    MoveAction_039
    EndMovement

    .byte 17
    .byte 0
    .byte 1
    .byte 0
    .byte 19
    .byte 0
    .byte 2
    .byte 0
    .byte 39
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 17
    .byte 0
    .byte 1
    .byte 0
    .byte 19
    .byte 0
    .byte 4
    .byte 0
    .byte 39
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 16
    .byte 0
    .byte 1
    .byte 0
    .byte 19
    .byte 0
    .byte 3
    .byte 0
    .byte 39
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 17
    .byte 0
    .byte 1
    .byte 0
    .byte 19
    .byte 0
    .byte 3
    .byte 0
    .byte 39
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_03E4:
    ShowMapSign 41
    End

_03FB:
    ShowScrollingSign 42
    End

_0410:
    ShowLandmarkSign 43
    End

_0427:
    ShowLandmarkSign 44
    End

_043E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe VAR_UNK_0x407C, 5, _04AE
    GoToIfGe VAR_UNK_0x407C, 4, _0471
    BufferRivalName 0
    BufferPlayerName 1
    Message 4
    GoTo _04A6
    End

_0471:
    GetPlayerDir VAR_0x800C
    GoToIfEq VAR_0x800C, 0, _0498
    BufferRivalName 0
    Message 16
    CloseMessage
    ApplyMovement 26, _04C0
    WaitMovement
    ReleaseAll
    End

_0498:
    BufferRivalName 0
    Message 15
    GoTo _04A6
    End

_04A6:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_04AE:
    BufferRivalName 0
    BufferPlayerName 1
    Message 27
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_04C0:
    MoveAction_033
    EndMovement

_04C8:
    LockAll
    ClearFlag FLAG_UNK_0x01A9
    SetObjectEventPos 26, 0x253, 0x333
    ScrCmd_188 26, 16
    ScrCmd_189 26, 2
    AddObject 26
    ApplyMovement 26, _05B0
    WaitMovement
    CallCommonScript 0x7FA
    ApplyMovement 26, _05C0
    ApplyMovement LOCALID_PLAYER, _05A4
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message 5
    CloseMessage
    ApplyMovement 26, _05CC
    WaitMovement
    GetPlayerStarterSpecies VAR_0x800C
    GoToIfEq VAR_0x800C, SPECIES_TURTWIG, _054B
    GoToIfEq VAR_0x800C, SPECIES_CHIMCHAR, _0557
    GoTo _053F

_053F:
    StartTrainerBattle TRAINER_RIVAL_PASTORIA_CITY_PIPLUP
    GoTo _0563

_054B:
    StartTrainerBattle TRAINER_RIVAL_PASTORIA_CITY_TURTWIG
    GoTo _0563

_0557:
    StartTrainerBattle TRAINER_RIVAL_PASTORIA_CITY_CHIMCHAR
    GoTo _0563

_0563:
    CheckWonBattle VAR_0x800C
    GoToIfEq VAR_0x800C, FALSE, _0597
    BufferRivalName 0
    BufferPlayerName 1
    Message 6
    CloseMessage
    ApplyMovement 26, _05D4
    WaitMovement
    RemoveObject 26
    SetVar VAR_UNK_0x407C, 2
    ReleaseAll
    End

_0597:
    SetFlag FLAG_UNK_0x01A9
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
_05A4:
    MoveAction_062 13
    MoveAction_035
    EndMovement

    .balign 4, 0
_05B0:
    MoveAction_017 9
    MoveAction_038
    MoveAction_075
    EndMovement

    .balign 4, 0
_05C0:
    MoveAction_018 4
    MoveAction_038
    EndMovement

    .balign 4, 0
_05CC:
    MoveAction_014
    EndMovement

    .balign 4, 0
_05D4:
    MoveAction_019 5
    MoveAction_016 9
    EndMovement

_05E0:
    LockAll
    ClearFlag FLAG_UNK_0x01A9
    SetObjectEventPos 26, 0x253, 0x333
    ScrCmd_188 26, 15
    ScrCmd_189 26, 1
    AddObject 26
    ScrCmd_062 26
    ApplyMovement 26, _0798
    ApplyMovement LOCALID_PLAYER, _07CC
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message 7
    CloseMessage
    ScrCmd_168 18, 25, 13, 27, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ApplyMovement LOCALID_PLAYER, _07D8
    WaitMovement
    ClearFlag FLAG_UNK_0x01FB
    SetObjectEventPos 27, 0x24D, 0x33B
    ScrCmd_189 27, 0
    ScrCmd_188 27, 14
    AddObject 27
    ScrCmd_062 27
    ApplyMovement 27, _0764
    WaitMovement
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    SetFlag FLAG_UNK_0x020F
    ApplyMovement 27, _076C
    WaitMovement
    Message 8
    CloseMessage
    ApplyMovement 26, _07A4
    WaitMovement
    BufferRivalName 0
    Message 9
    ApplyMovement 27, _077C
    WaitMovement
    Message 10
    ApplyMovement 27, _0784
    WaitMovement
    Message 11
    BufferRivalName 0
    Message 12
    ApplyMovement 27, _077C
    WaitMovement
    Message 13
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _07EC
    ApplyMovement 26, _07AC
    ApplyMovement 27, _078C
    WaitMovement
    BufferRivalName 0
    Message 14
    CloseMessage
    ApplyMovement 26, _07C0
    WaitMovement
    Call _0737
    ClearFlag FLAG_UNK_0x01FB
    ScrCmd_187 27, 0x263, 0, 0x32A, 0
    Call _0721
    ClearFlag FLAG_UNK_0x01A9
    ScrCmd_187 26, 0x260, 0, 0x32E, 1
    SetVar VAR_UNK_0x407C, 4
    ReleaseAll
    End

_0721:
    SetObjectEventPos 26, 0x260, 0x32E
    ScrCmd_189 26, 1
    ScrCmd_188 26, 15
    Return

_0737:
    SetObjectEventPos 27, 0x263, 0x32A
    ScrCmd_189 27, 0
    ScrCmd_188 27, 14
    Return

_074D:
    SetObjectEventPos 26, 0x263, 0x32A
    ScrCmd_189 26, 0
    ScrCmd_188 26, 14
    Return

    .balign 4, 0
_0764:
    MoveAction_013
    EndMovement

    .balign 4, 0
_076C:
    MoveAction_035
    MoveAction_063 2
    MoveAction_033
    EndMovement

    .balign 4, 0
_077C:
    MoveAction_035
    EndMovement

    .balign 4, 0
_0784:
    MoveAction_033
    EndMovement

    .balign 4, 0
_078C:
    MoveAction_019 6
    MoveAction_016 8
    EndMovement

    .balign 4, 0
_0798:
    MoveAction_017 9
    MoveAction_018 5
    EndMovement

    .balign 4, 0
_07A4:
    MoveAction_075
    EndMovement

    .balign 4, 0
_07AC:
    MoveAction_071
    MoveAction_017
    MoveAction_072
    MoveAction_039
    EndMovement

    .balign 4, 0
_07C0:
    MoveAction_019 5
    MoveAction_016 8
    EndMovement

    .balign 4, 0
_07CC:
    MoveAction_062 11
    MoveAction_035
    EndMovement

    .balign 4, 0
_07D8:
    MoveAction_032
    MoveAction_063 2
    MoveAction_013
    MoveAction_032
    EndMovement

    .balign 4, 0
_07EC:
    MoveAction_063
    MoveAction_035
    EndMovement

_07F8:
    LockAll
    Call _086F
    ApplyMovement 27, _0B6C
    ApplyMovement 26, _0B08
    ApplyMovement LOCALID_PLAYER, _0AAC
    ApplyMovement 21, _0B44
    WaitMovement
    Call _08D9
    ApplyMovement 27, _0B74
    ApplyMovement 26, _0B3C
    ApplyMovement LOCALID_PLAYER, _0AC8
    ApplyMovement 21, _0B54
    WaitMovement
    Call _08FA
    Message 23
    ApplyMovement 27, _0B80
    ApplyMovement LOCALID_PLAYER, _0AD4
    WaitMovement
    Call _091C
    ReleaseAll
    End

_086F:
    ApplyMovement 26, _0AE4
    WaitMovement
    BufferRivalName 0
    Message 17
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _0AA4
    ApplyMovement 27, _0B5C
    WaitMovement
    Message 18
    ApplyMovement 26, _0AF0
    WaitMovement
    PlayFanfare SEQ_SE_DP_FW291
    WaitTime 4, VAR_0x800C
    Message 19
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_29F 1
    CloseMessage
    ClearFlag FLAG_UNK_0x020C
    SetObjectEventPos 21, 0x262, 0x328
    ScrCmd_189 21, 3
    ScrCmd_188 21, 17
    AddObject 21
    ScrCmd_062 21
    Return

_08D9:
    Message 20
    ApplyMovement 27, _0B6C
    WaitMovement
    Message 21
    ApplyMovement 21, _0B4C
    WaitMovement
    Message 22
    CloseMessage
    Return

_08FA:
    RemoveObject 21
    ClearFlag FLAG_UNK_0x020C
    SetObjectEventPos 21, 0x27D, 0x32C
    ScrCmd_188 21, 17
    ScrCmd_189 21, 3
    AddObject 21
    Return

_091C:
    Message 24
    CloseMessage
    ApplyMovement 27, _0B88
    ApplyMovement LOCALID_PLAYER, _099C
    WaitMovement
    RemoveObject 27
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 0x261, _0981
    CallIfEq VAR_0x8004, 0x263, _098D
    CallIfEq VAR_0x8004, 0x264, _0981
    SetFlag FLAG_UNK_0x020D
    SetVar VAR_UNK_0x407C, 5
    SetFlag FLAG_UNK_0x0102
    BufferRivalName 0
    BufferPlayerName 1
    Message 25
    WaitABXPadPress
    CloseMessage
    Return

_0981:
    ApplyMovement 26, _0B1C
    WaitMovement
    Return

_098D:
    ApplyMovement 26, _0B28
    WaitMovement
    Return

    .balign 4, 0
_099C:
    MoveAction_063
    MoveAction_000
    EndMovement

_09A8:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Call _086F
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 0x263, _0A31
    CallIfEq VAR_0x8004, 0x264, _0A55
    Call _08D9
    ApplyMovement LOCALID_PLAYER, _0AC8
    ApplyMovement 27, _0B74
    ApplyMovement 26, _0B3C
    ApplyMovement 21, _0B54
    WaitMovement
    Call _08FA
    Message 23
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 0x263, _0A79
    CallIfEq VAR_0x8004, 0x264, _0A8D
    Call _091C
    ReleaseAll
    End

_0A31:
    ApplyMovement 27, _0B6C
    ApplyMovement LOCALID_PLAYER, _0ABC
    ApplyMovement 26, _0B10
    ApplyMovement 21, _0B44
    WaitMovement
    Return

_0A55:
    ApplyMovement 27, _0B6C
    ApplyMovement LOCALID_PLAYER, _0ABC
    ApplyMovement 26, _0B10
    ApplyMovement 21, _0B44
    WaitMovement
    Return

_0A79:
    ApplyMovement 27, _0B80
    ApplyMovement LOCALID_PLAYER, _0AD4
    WaitMovement
    Return

_0A8D:
    ApplyMovement 27, _0B80
    ApplyMovement LOCALID_PLAYER, _0ADC
    WaitMovement
    Return

    .balign 4, 0
_0AA4:
    MoveAction_000
    EndMovement

    .balign 4, 0
_0AAC:
    MoveAction_017
    MoveAction_019
    MoveAction_037
    EndMovement

    .balign 4, 0
_0ABC:
    MoveAction_063
    MoveAction_033
    EndMovement

    .balign 4, 0
_0AC8:
    MoveAction_063
    MoveAction_035
    EndMovement

    .balign 4, 0
_0AD4:
    MoveAction_032
    EndMovement

    .balign 4, 0
_0ADC:
    MoveAction_034
    EndMovement

    .balign 4, 0
_0AE4:
    MoveAction_016 3
    MoveAction_019
    EndMovement

    .balign 4, 0
_0AF0:
    MoveAction_036
    EndMovement

    .byte 17
    .byte 0
    .byte 3
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 36
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0B08:
    MoveAction_037
    EndMovement

    .balign 4, 0
_0B10:
    MoveAction_063
    MoveAction_037
    EndMovement

    .balign 4, 0
_0B1C:
    MoveAction_019 2
    MoveAction_016
    EndMovement

    .balign 4, 0
_0B28:
    MoveAction_019
    MoveAction_016
    MoveAction_019
    MoveAction_036
    EndMovement

    .balign 4, 0
_0B3C:
    MoveAction_039
    EndMovement

    .balign 4, 0
_0B44:
    MoveAction_017 4
    EndMovement

    .balign 4, 0
_0B4C:
    MoveAction_032
    EndMovement

    .balign 4, 0
_0B54:
    MoveAction_019 12
    EndMovement

    .balign 4, 0
_0B5C:
    MoveAction_032
    EndMovement

    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0B6C:
    MoveAction_037
    EndMovement

    .balign 4, 0
_0B74:
    MoveAction_063
    MoveAction_035
    EndMovement

    .balign 4, 0
_0B80:
    MoveAction_033
    EndMovement

    .balign 4, 0
_0B88:
    MoveAction_012 2
    EndMovement

_0B90:
    LockAll
    ApplyMovement LOCALID_PLAYER, _0BC8
    ApplyMovement 26, _0BD8
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message 26
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _0BD0
    ApplyMovement 26, _0BE0
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
_0BC8:
    MoveAction_035
    EndMovement

    .balign 4, 0
_0BD0:
    MoveAction_013
    EndMovement

    .balign 4, 0
_0BD8:
    MoveAction_034
    EndMovement

    .balign 4, 0
_0BE0:
    MoveAction_014
    MoveAction_015
    MoveAction_032
    EndMovement

_0BF0:
    LockAll
    GoToIfSet FLAG_UNK_0x0156, _0C1E
    SetVar VAR_UNK_0x40C7, 1
    GetRandom VAR_0x800C, 100
    GoToIfGe VAR_0x800C, 90, _0C22
    GoTo _0C1E
    End

_0C1E:
    ReleaseAll
    End

_0C22:
    ClearFlag FLAG_UNK_0x029D
    AddObject 28
    ApplyMovement LOCALID_PLAYER, _0C78
    ApplyMovement 28, _0C64
    WaitMovement
    PlayCry SPECIES_CROAGUNK
    WaitCry
    WaitTime 30, VAR_0x800C
    ApplyMovement 28, _0C70
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject 28
    WaitFanfare SEQ_SE_DP_KAIDAN2
    ReleaseAll
    End

    .balign 4, 0
_0C64:
    MoveAction_012 7
    MoveAction_034
    EndMovement

    .balign 4, 0
_0C70:
    MoveAction_012 5
    EndMovement

    .balign 4, 0
_0C78:
    MoveAction_033
    EndMovement
