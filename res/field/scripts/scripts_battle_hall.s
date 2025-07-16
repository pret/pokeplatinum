#include "macros/scrcmd.inc"
#include "res/text/bank/battle_hall.h"


    ScriptEntry _026D
    ScriptEntry _08B4
    ScriptEntry _08ED
    ScriptEntry _08FC
    ScriptEntry _0970
    ScriptEntry _0289
    ScriptEntry _0998
    ScriptEntry _09AB
    ScriptEntry _09BE
    ScriptEntry _09D1
    ScriptEntry _09F0
    ScriptEntry _0A03
    ScriptEntry _0A16
    ScriptEntry _0A29
    ScriptEntry _0A3C
    ScriptEntry _01A6
    ScriptEntry _0A4F
    ScriptEntry _0AEE
    ScriptEntry _0C01
    ScriptEntry _0D14
    ScriptEntry _00A6
    ScriptEntry _005A
    ScriptEntryEnd

_005A:
    ScrCmd_325 VAR_MAP_LOCAL_0
    CallIfGe VAR_MAP_LOCAL_0, 11, _0090
    CallIfGe VAR_MAP_LOCAL_0, 101, _007A
    End

_007A:
    SetObjectEventPos 12, 8, 11
    ScrCmd_187 12, 8, 0, 11, 2
    Return

_0090:
    SetObjectEventPos 12, 13, 11
    ScrCmd_187 12, 13, 0, 11, 2
    Return

_00A6:
    GoToIfEq VAR_UNK_0x40BA, 1, _00B5
    End

_00B5:
    Call _015D
    GetRandom VAR_MAP_LOCAL_7, 100
    CallIfUnset FLAG_UNK_0x02CB, _00DB
    GoToIfLt VAR_MAP_LOCAL_7, 30, _00E5
    End

_00DB:
    RemoveObject 13
    SetFlag FLAG_UNK_0x02CB
    Return

_00E5:
    GoToIfUnset FLAG_UNK_0x0AC4, _00F2
    End

_00F2:
    SetFlag FLAG_UNK_0x0AC4
    ScrCmd_326 VAR_MAP_LOCAL_8
    GoToIfGe VAR_MAP_LOCAL_8, 0x2710, _0123
    GoToIfGe VAR_MAP_LOCAL_8, 0x3E8, _0131
    GoToIfGe VAR_MAP_LOCAL_8, 0x1F4, _013F
    End

_0123:
    GetRandom VAR_UNK_0x4063, 4
    GoTo _014D
    End

_0131:
    GetRandom VAR_UNK_0x4063, 2
    GoTo _014D
    End

_013F:
    SetVar VAR_UNK_0x4063, 0
    GoTo _014D
    End

_014D:
    ClearFlag FLAG_UNK_0x02CB
    Call _01DF
    AddObject 13
    End

_015D:
    CallIfUnset FLAG_UNK_0x02C1, _019C
    ScrCmd_238 14, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, _0196
    ScrCmd_32A VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, _0196
    ClearFlag FLAG_UNK_0x02C1
    AddObject 10
    Return

_0196:
    SetFlag FLAG_UNK_0x02C1
    Return

_019C:
    RemoveObject 10
    SetFlag FLAG_UNK_0x02C1
    Return

_01A6:
    GetPlayerGender VAR_MAP_LOCAL_0
    CallIfEq VAR_MAP_LOCAL_0, GENDER_MALE, _025D
    CallIfEq VAR_MAP_LOCAL_0, GENDER_FEMALE, _0265
    Call _01DF
    ScrCmd_238 14, VAR_MAP_LOCAL_0
    CallIfEq VAR_MAP_LOCAL_0, 0, _0196
    End

_01DF:
    CallIfEq VAR_UNK_0x4063, 0, _0215
    CallIfEq VAR_UNK_0x4063, 1, _0245
    CallIfEq VAR_UNK_0x4063, 2, _024D
    CallIfEq VAR_UNK_0x4063, 3, _0255
    Return

_0215:
    GetPlayerGender VAR_MAP_LOCAL_9
    GoToIfEq VAR_MAP_LOCAL_9, GENDER_MALE, _0235
    GoToIfEq VAR_MAP_LOCAL_9, GENDER_FEMALE, _023D
    Return

_0235:
    SetVar VAR_OBJ_GFX_ID_1, 97
    Return

_023D:
    SetVar VAR_OBJ_GFX_ID_1, 0
    Return

_0245:
    SetVar VAR_OBJ_GFX_ID_1, 140
    Return

_024D:
    SetVar VAR_OBJ_GFX_ID_1, 166
    Return

_0255:
    SetVar VAR_OBJ_GFX_ID_1, 167
    Return

_025D:
    SetVar VAR_OBJ_GFX_ID_3, 7
    Return

_0265:
    SetVar VAR_OBJ_GFX_ID_3, 4
    Return

_026D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_MAP_LOCAL_3, 0
    SetVar VAR_MAP_LOCAL_4, 0
    GoTo _02A5
    End

_0289:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_MAP_LOCAL_3, 0
    SetVar VAR_MAP_LOCAL_4, 1
    GoTo _02A5
    End

_02A5:
    ScrCmd_313 0
    CallIfEq VAR_MAP_LOCAL_4, 0, _0874
    CallIfEq VAR_MAP_LOCAL_4, 1, _0879
    GoTo _02CB
    End

_02CB:
    CallIfEq VAR_MAP_LOCAL_4, 0, _087E
    CallIfEq VAR_MAP_LOCAL_4, 1, _0896
    AddMenuEntryImm 19, 2
    AddMenuEntryImm 20, 3
    ShowMenu
    GoToIfEq VAR_RESULT, 0, _0366
    GoToIfEq VAR_RESULT, 1, _0389
    GoToIfEq VAR_RESULT, 2, _032B
    GoToIfEq VAR_RESULT, 4, _03AC
    GoTo _034D
    End

_032B:
    CallIfEq VAR_MAP_LOCAL_4, 0, _08AA
    CallIfEq VAR_MAP_LOCAL_4, 1, _08AF
    GoTo _02CB
    End

_034D:
    GoTo _0355
    End

_0355:
    SetVar VAR_UNK_0x40BA, 0
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0366:
    SetVar VAR_UNK_0x40BB, 0
    ScrCmd_2CC 0, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _03CF
    GoTo _03F5
    End

_0389:
    SetVar VAR_UNK_0x40BB, 1
    ScrCmd_2CC 0, 2, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _03E2
    GoTo _03F5
    End

_03AC:
    SetVar VAR_UNK_0x40BB, 2
    ScrCmd_2CC 0, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _03CF
    GoTo _03F5
    End

_03CF:
    Message 35
    ScrCmd_1FF 37, 1, 0, 0
    GoTo _034D
    End

_03E2:
    Message 36
    ScrCmd_1FF 37, 2, 0, 0
    GoTo _034D
    End

_03F5:
    Message 33
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_2CC 4, VAR_UNK_0x40BB, VAR_RESULT
    ScrCmd_2D0 VAR_MAP_LOCAL_2, VAR_MAP_LOCAL_5
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq VAR_MAP_LOCAL_2, 0xFF, _034D
    ScrCmd_31E VAR_MAP_LOCAL_2, VAR_RESULT
    GoToIfEq VAR_RESULT, 0xFF, _07C8
    ScrCmd_31E VAR_MAP_LOCAL_5, VAR_RESULT
    GoToIfEq VAR_RESULT, 0xFF, _07C8
    GetPartyMonSpecies VAR_MAP_LOCAL_2, VAR_MAP_LOCAL_1
    GoToIfEq VAR_MAP_LOCAL_1, 0, _034D
    ScrCmd_2CC 1, VAR_UNK_0x40BB, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _04F4
    ScrCmd_2CC 2, VAR_UNK_0x40BB, VAR_RESULT
    BufferSpeciesNameFromVar 0, VAR_RESULT, 0, 0
    GoToIfEq VAR_RESULT, VAR_MAP_LOCAL_1, _04F4
    GoTo _04A2
    End

_04A2:
    BufferSpeciesNameFromVar 1, VAR_MAP_LOCAL_1, 0, 0
    Message 34
    InitGlobalTextListMenu 25, 13, 1, VAR_RESULT
    AddListMenuEntry 41, 0
    AddListMenuEntry 42, 1
    ShowListMenuSetWidth 6
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _04E4
    GoTo _034D
    End

_04E4:
    ScrCmd_2CC 3, VAR_UNK_0x40BB, VAR_RESULT
    GoTo _04F4
    End

_04F4:
    GoTo _04FC
    End

_04FC:
    CallIfEq VAR_UNK_0x40BB, 0, _0673
    CallIfEq VAR_UNK_0x40BB, 1, _0673
    SetVar VAR_MAP_LOCAL_0, 0
    HealParty
    CallCommonScript 0x7D6
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0
    GoToIfEq VAR_RESULT, 0, _034D
    GoToIfEq VAR_UNK_0x40BB, 2, _054A
    GoTo _0690
    End

_054A:
    Message 30
    InitGlobalTextMenu 30, 1, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 13, 0
    AddMenuEntryImm 14, 1
    AddMenuEntryImm 5, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _058E
    GoToIfEq VAR_0x8008, 1, _05E2
    GoTo _034D
    End

_058E:
    Message 31
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _054A
    CloseMessage
    ScrCmd_0F2 30, 0, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _05D0
    GoToIfEq VAR_RESULT, 3, _05D8
    GoTo _0636
    End

_05D0:
    GoTo _054A
    End

_05D8:
    ScrCmd_150
    GoTo _054A
    End

_05E2:
    Message 31
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _054A
    CloseMessage
    ScrCmd_0F3 30, 0, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0624
    GoToIfEq VAR_RESULT, 3, _062C
    GoTo _0636
    End

_0624:
    GoTo _054A
    End

_062C:
    ScrCmd_150
    GoTo _054A
    End

_0636:
    ScrCmd_136
    ScrCmd_135 108
    ScrCmd_2CF VAR_MAP_LOCAL_1, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _067B
    ScrCmd_136
    ScrCmd_135 110
    Message 32
    CallIfEq VAR_UNK_0x40BB, 2, _0673
    Call _08DB
    GoTo _0690
    End

_0673:
    SetVar VAR_UNK_0x40BA, 0xFF
    Return

_067B:
    Call _068C
    Message 57
    GoTo _034D
    End

_068C:
    ScrCmd_150
    Return

_0690:
    CallIfEq VAR_UNK_0x40BB, 0, _0730
    CallIfEq VAR_UNK_0x40BB, 1, _074B
    CallIfEq VAR_UNK_0x40BB, 2, _0766
    PlayFanfare SEQ_SE_DP_KAIDAN2
    GoTo _06C3
    End

_06C3:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CallIfEq VAR_UNK_0x40BB, 0, _078C
    CallIfEq VAR_UNK_0x40BB, 1, _07A0
    CallIfEq VAR_UNK_0x40BB, 2, _07B4
    IncrementGameRecord RECORD_UNK_058
    CreateJournalEvent LOCATION_EVENT_BATTLE_HALL, 0, 0, 0, 0
    ScrCmd_1F8
    ScrCmd_2C4 9
    CallIfEq VAR_UNK_0x40BB, 2, _072C
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ScrCmd_313 1
    End

_072C:
    ScrCmd_150
    Return

_0730:
    Message 9
    WaitABPress
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _07D4
    ApplyMovement VAR_LAST_TALKED, _07FC
    WaitMovement
    Return

_074B:
    Message 9
    WaitABPress
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _07D4
    ApplyMovement VAR_LAST_TALKED, _07FC
    WaitMovement
    Return

_0766:
    ScrCmd_02E 9
    WaitTime 10, VAR_RESULT
    ScrCmd_136
    ScrCmd_135 109
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _07E4
    ApplyMovement VAR_LAST_TALKED, _080C
    WaitMovement
    Return

_078C:
    ApplyMovement LOCALID_PLAYER, _0824
    ApplyMovement VAR_LAST_TALKED, _0854
    WaitMovement
    Return

_07A0:
    ApplyMovement LOCALID_PLAYER, _0824
    ApplyMovement VAR_LAST_TALKED, _0854
    WaitMovement
    Return

_07B4:
    ApplyMovement LOCALID_PLAYER, _0838
    ApplyMovement VAR_LAST_TALKED, _0864
    WaitMovement
    Return

_07C8:
    SetVar VAR_UNK_0x40BA, 0
    CallCommonScript 0x809
    End

    .balign 4, 0
_07D4:
    WalkNormalWest 4
    WalkNormalSouth 3
    SetInvisible
    EndMovement

    .balign 4, 0
_07E4:
    WalkNormalWest 2
    WalkNormalNorth
    WalkNormalWest 2
    WalkNormalSouth 3
    SetInvisible
    EndMovement

    .balign 4, 0
_07FC:
    WalkNormalWest 3
    WalkNormalSouth 3
    SetInvisible
    EndMovement

    .balign 4, 0
_080C:
    WalkNormalWest
    WalkNormalNorth
    WalkNormalWest 2
    WalkNormalSouth 3
    SetInvisible
    EndMovement

    .balign 4, 0
_0824:
    WalkFasterEast 4
    WalkFasterNorth 3
    FaceWest
    SetVisible
    EndMovement

    .balign 4, 0
_0838:
    WalkFasterEast 2
    WalkFasterSouth
    WalkFasterEast 2
    WalkFasterNorth 3
    FaceWest
    SetVisible
    EndMovement

    .balign 4, 0
_0854:
    WalkFasterNorth 3
    WalkFasterEast 3
    SetVisible
    EndMovement

    .balign 4, 0
_0864:
    WalkFasterNorth 2
    WalkFasterEast 3
    SetVisible
    EndMovement

_0874:
    Message 0
    Return

_0879:
    Message 3
    Return

_087E:
    InitLocalTextMenu 31, 9, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 16, 0
    AddMenuEntryImm 17, 1
    Message 1
    Return

_0896:
    InitLocalTextMenu 31, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 18, 4
    Message 4
    Return

_08AA:
    Message 2
    Return

_08AF:
    Message 5
    Return

_08B4:
    ScrCmd_313 0
    SetVar VAR_MAP_LOCAL_3, 1
    SetVar VAR_UNK_0x40BA, 0
    Message 11
    Call _0673
    Call _08DB
    GoTo _0690
    End

_08DB:
    ScrCmd_18D
    ScrCmd_12D VAR_RESULT
    ScrCmd_18E
    PlayFanfare SEQ_SE_DP_SAVE
    WaitFanfare SEQ_SE_DP_SAVE
    Return

_08ED:
    Message 12
    ScrCmd_2D1 VAR_UNK_0x40BB
    GoTo _034D
    End

_08FC:
    CallIfEq VAR_UNK_0x40BB, 0, _0938
    CallIfEq VAR_UNK_0x40BB, 1, _0938
    CallIfEq VAR_BATTLE_HALL_PRINT_STATE, 1, _093E
    CallIfEq VAR_BATTLE_HALL_PRINT_STATE, 3, _0955
    GoTo _034D
    End

_0938:
    IncrementTrainerScore TRAINER_SCORE_EVENT_UNK_40
    Return

_093E:
    Message 13
    BufferPlayerName 0
    Message 15
    PlaySound SEQ_FANFA4
    WaitSound
    SetVar VAR_BATTLE_HALL_PRINT_STATE, 2
    Return

_0955:
    Message 13
    BufferPlayerName 0
    Message 14
    PlaySound SEQ_FANFA4
    WaitSound
    SetVar VAR_BATTLE_HALL_PRINT_STATE, 4
    CallCommonScript 0x806
    Return

_0970:
    GoTo _034D

    .byte 2
    .byte 0
    .byte 12
    .byte 0
    .byte 2
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
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
    .byte 2
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 12
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_0998:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 59
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_09AB:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 60
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_09BE:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 61
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_09D1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_PACHIRISU
    Message 62
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_09F0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 63
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0A03:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 64
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0A16:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 65
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0A29:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 66
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0A3C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 67
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0A4F:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfUnset FLAG_UNK_0x00BE, _0AD7
    ScrCmd_324 1, 2, 3, 4, VAR_UNK_0x4062, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0AAD
    GoToIfEq VAR_RESULT, 2, _0AB8
    GoToIfEq VAR_RESULT, 3, _0AC9
    BufferPlayerName 0
    Message 69
    Message 70
    PlaySound SEQ_PL_POINTGET3
    Message 72
    WaitSound
    GoTo _0AE6
    End

_0AAD:
    Message 68
    GoTo _0AE6
    End

_0AB8:
    BufferPlayerName 0
    Message 73
    Message 71
    GoTo _0AE6
    End

_0AC9:
    BufferPlayerName 0
    Message 74
    GoTo _0AE6
    End

_0AD7:
    SetFlag FLAG_UNK_0x00BE
    Message 68
    GoTo _0AE6
    End

_0AE6:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0AEE:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _0C22
    GoTo _0B0F
    End

_0B0F:
    BufferPlayerName 0
    ScrCmd_325 VAR_0x8005
    GoToIfGe VAR_0x8005, 0x1DB, _0B96
    GoToIfGe VAR_0x8005, 0x15F, _0BA1
    GoToIfGe VAR_0x8005, 251, _0BAC
    GoToIfGe VAR_0x8005, 151, _0BB7
    GoToIfGe VAR_0x8005, 101, _0BC2
    GoToIfGe VAR_0x8005, 51, _0BCD
    GoToIfGe VAR_0x8005, 31, _0BD8
    GoToIfGe VAR_0x8005, 11, _0BE3
    GoToIfGe VAR_0x8005, 1, _0BEE
    Message 75
    GoTo _0BF9
    End

_0B96:
    Message 84
    GoTo _0BF9
    End

_0BA1:
    Message 83
    GoTo _0BF9
    End

_0BAC:
    Message 82
    GoTo _0BF9
    End

_0BB7:
    Message 81
    GoTo _0BF9
    End

_0BC2:
    Message 80
    GoTo _0BF9
    End

_0BCD:
    Message 79
    GoTo _0BF9
    End

_0BD8:
    Message 78
    GoTo _0BF9
    End

_0BE3:
    Message 77
    GoTo _0BF9
    End

_0BEE:
    Message 76
    GoTo _0BF9
    End

_0BF9:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0C01:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_FEMALE, _0B0F
    GoTo _0C22
    End

_0C22:
    BufferPlayerName 0
    ScrCmd_325 VAR_0x8005
    GoToIfGe VAR_0x8005, 0x1DB, _0CA9
    GoToIfGe VAR_0x8005, 0x15F, _0CB4
    GoToIfGe VAR_0x8005, 251, _0CBF
    GoToIfGe VAR_0x8005, 151, _0CCA
    GoToIfGe VAR_0x8005, 101, _0CD5
    GoToIfGe VAR_0x8005, 51, _0CE0
    GoToIfGe VAR_0x8005, 31, _0CEB
    GoToIfGe VAR_0x8005, 11, _0CF6
    GoToIfGe VAR_0x8005, 1, _0D01
    Message 85
    GoTo _0D0C
    End

_0CA9:
    Message 94
    GoTo _0D0C
    End

_0CB4:
    Message 93
    GoTo _0D0C
    End

_0CBF:
    Message 92
    GoTo _0D0C
    End

_0CCA:
    Message 91
    GoTo _0D0C
    End

_0CD5:
    Message 90
    GoTo _0D0C
    End

_0CE0:
    Message 89
    GoTo _0D0C
    End

_0CEB:
    Message 88
    GoTo _0D0C
    End

_0CF6:
    Message 87
    GoTo _0D0C
    End

_0D01:
    Message 86
    GoTo _0D0C
    End

_0D0C:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0D14:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 0
    SetVar VAR_MAP_LOCAL_1, VAR_OBJ_GFX_ID_1
    GoToIfEq VAR_MAP_LOCAL_1, 0, _0D68
    GoToIfEq VAR_MAP_LOCAL_1, 97, _0D73
    GoToIfEq VAR_MAP_LOCAL_1, 140, _0D7E
    GoToIfEq VAR_MAP_LOCAL_1, 166, _0D89
    GoToIfEq VAR_MAP_LOCAL_1, 167, _0D94
    End

_0D68:
    Message 96
    GoTo _0D9F
    End

_0D73:
    Message 95
    GoTo _0D9F
    End

_0D7E:
    Message 97
    GoTo _0D9F
    End

_0D89:
    Message 98
    GoTo _0D9F
    End

_0D94:
    Message 99
    GoTo _0D9F
    End

_0D9F:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
