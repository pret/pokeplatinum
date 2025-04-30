#include "macros/scrcmd.inc"
#include "res/text/bank/sandgem_town_pokemon_research_lab.h"

    .data

    ScriptEntry _003E
    ScriptEntry _01AE
    ScriptEntry _008C
    ScriptEntry _01AC
    ScriptEntry _04F0
    ScriptEntry _0544
    ScriptEntry _0592
    ScriptEntry _0594
    ScriptEntry _05A5
    ScriptEntry _05B6
    ScriptEntry _05C7
    ScriptEntry _05D8
    ScriptEntry _05EC
    ScriptEntry _05FD
    ScriptEntry _0114
    ScriptEntryEnd

_003E:
    CallIfEq VAR_UNK_0x40A6, 2, _005A
    CallIfEq VAR_UNK_0x40A6, 3, _005A
    End

_005A:
    ClearFlag FLAG_UNK_0x0198
    SetObjectEventPos 0, 7, 14
    ScrCmd_189 0, 1
    ScrCmd_188 0, 15
    ClearFlag FLAG_UNK_0x0199
    SetObjectEventPos 3, 6, 14
    ScrCmd_189 3, 1
    ScrCmd_188 3, 15
    Return

_008C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Call _08A0
    GoToIfEq VAR_0x8006, 1, _0106
    GoTo _00B7
    End

_00AF:
    SetVar VAR_UNK_0x40AA, 3
    Return

_00B7:
    GetNationalDexEnabled VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _07AE
    GoToIfUnset FLAG_UNK_0x09BA, _00E5
    ScrCmd_1E8 VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _060E
_00E5:
    GoToIfGe VAR_UNK_0x4071, 2, _0100
    BufferPlayerName 0
    Message 18
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0100:
    CallCommonScript 0x26DE
    End

_0106:
    BufferPlayerName 0
    Message 55
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0114:
    LockAll
    CallIfEq VAR_UNK_0x40AA, 2, _00AF
    BufferPlayerName 1
    Message 51
    CloseMessage
    ApplyMovement 3, _019C
    WaitMovement
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _014E
    GoTo _015C
    End

_014E:
    BufferPlayerName 1
    Message 52
    GoTo _016A
    End

_015C:
    BufferPlayerName 1
    Message 53
    GoTo _016A
    End

_016A:
    ScrCmd_11E VAR_RESULT
    BufferNumber 1, VAR_RESULT
    Message 54
    WaitABXPadPress
    CloseMessage
    SetFlag FLAG_UNK_0x027D
    SetVar VAR_UNK_0x4112, 1
    ClearFlag FLAG_MESPRIT_DISAPPEARED
    ClearFlag FLAG_AZELF_DISAPPEARED
    ClearFlag FLAG_UXIE_DISAPPEARED
    SetVar VAR_UNK_0x40A6, 3
    ReleaseAll
    End

    .balign 4, 0
_019C:
    MoveAction_035
    MoveAction_062
    MoveAction_033
    EndMovement

_01AC:
    End

_01AE:
    LockAll
    ApplyMovement 3, _0484
    ApplyMovement LOCALID_PLAYER, _04A8
    WaitMovement
    BufferPlayerName 0
    Message 0
    CloseMessage
    SetPlayerState 0x100
    ChangePlayerState
    ApplyMovement LOCALID_PLAYER, _04E0
    WaitMovement
    SetVar VAR_0x8004, 0
    GetPartyMonSpecies VAR_0x8004, VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0x183, _0219
    GoToIfEq VAR_0x8008, 0x186, _0219
    GoToIfEq VAR_0x8008, 0x189, _0219
    GoTo _0222

_0219:
    Message 1
    GoTo _022B

_0222:
    Message 2
    GoTo _022B

_022B:
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _04E8
    WaitMovement
    SetPlayerState 1
    ChangePlayerState
    BufferPartyMonSpecies 0, 0
    Message 3
    Message 4
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _02BC
    GoTo _0261
    End

_0261:
    SetVar VAR_RESULT, 0
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0BB 0, VAR_RESULT
    SetVar VAR_0x8002, VAR_RESULT
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    Message 5
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _0261
    CallIfNe VAR_0x8002, 1, _02B6
    GoTo _02BC
    End

_02B6:
    IncrementGameRecord RECORD_UNK_049
    Return

_02BC:
    BufferPartyMonSpecies 0, 0
    BufferRivalName 1
    Message 6
    CloseMessage
    ApplyMovement 3, _0498
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _04BC
    WaitMovement
    WaitTime 15, VAR_RESULT
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _02FC
    GoTo _0316
    End

_02FC:
    BufferCounterpartName 0
    Message 7
    CloseMessage
    ApplyMovement 3, _04D0
    WaitMovement
    GoTo _0330
    End

_0316:
    BufferCounterpartName 0
    Message 8
    CloseMessage
    ApplyMovement 3, _04D0
    WaitMovement
    GoTo _0330
    End

_0330:
    FadeOutBGM 0, 40
    ApplyMovement 0, _047C
    ApplyMovement LOCALID_PLAYER, _04B4
    WaitMovement
    WaitTime 35, VAR_RESULT
    SetFlag FLAG_ALT_MUSIC_ROWANS_LAB
    PlayMusic SEQ_OPENING2
    Message 9
    Message 10
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _0375
    GoTo _0394
    End

_0375:
    BufferPlayerName 0
    Message 11
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _0375
    GoTo _0394
    End

_0394:
    Message 12
    GivePokedex
    SetFlag FLAG_UNK_0x0090
    BufferPlayerName 0
    Message 13
    PlaySound SEQ_FANFA4
    WaitSound
    BufferPlayerName 0
    Message 14
    CloseMessage
    ApplyMovement 3, _04A0
    WaitMovement
    WaitTime 15, VAR_RESULT
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _03DA
    GoTo _03E8
    End

_03DA:
    BufferCounterpartName 0
    Message 15
    GoTo _03F6
    End

_03E8:
    BufferCounterpartName 0
    Message 16
    GoTo _03F6
    End

_03F6:
    BufferPlayerName 0
    Message 17
    CloseMessage
    ApplyMovement 3, _04A0
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _04BC
    WaitMovement
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _042B
    GoTo _043C
    End

_042B:
    BufferPlayerName 0
    BufferPlayerCounterpartStarterSpeciesNameWithArticle 1
    Message 19
    GoTo _044D
    End

_043C:
    BufferPlayerName 0
    BufferRivalStarterSpeciesName 1
    Message 20
    GoTo _044D
    End

_044D:
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _04C4
    ApplyMovement 3, _04D8
    WaitMovement
    RemoveObject 3
    ClearFlag FLAG_UNK_0x0177
    SetVar VAR_UNK_0x40A6, 1
    ReleaseAll
    End

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
_047C:
    MoveAction_033
    EndMovement

    .balign 4, 0
_0484:
    MoveAction_065
    MoveAction_012 8
    MoveAction_015
    MoveAction_034
    EndMovement

    .balign 4, 0
_0498:
    MoveAction_034
    EndMovement

    .balign 4, 0
_04A0:
    MoveAction_034
    EndMovement

    .balign 4, 0
_04A8:
    MoveAction_065
    MoveAction_012 9
    EndMovement

    .balign 4, 0
_04B4:
    MoveAction_032
    EndMovement

    .balign 4, 0
_04BC:
    MoveAction_035
    EndMovement

    .balign 4, 0
_04C4:
    MoveAction_063
    MoveAction_033
    EndMovement

    .balign 4, 0
_04D0:
    MoveAction_034
    EndMovement

    .balign 4, 0
_04D8:
    MoveAction_013 10
    EndMovement

    .balign 4, 0
_04E0:
    MoveAction_102
    EndMovement

    .balign 4, 0
_04E8:
    MoveAction_104
    EndMovement

_04F0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Call _08A0
    GoToIfEq VAR_0x8006, 1, _0539
    GetNationalDexEnabled VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _052B
    BufferCounterpartName 0
    Message 21
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_052B:
    BufferCounterpartName 0
    Message 49
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0539:
    Message 59
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0544:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Call _08A0
    GoToIfEq VAR_0x8006, 1, _0587
    GetNationalDexEnabled VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _057C
    Message 22
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_057C:
    Message 50
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0587:
    Message 60
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0592:
    End

_0594:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 23
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_05A5:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 24
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_05B6:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 25
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_05C7:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 26
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_05D8:
    BufferPlayerName 0
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 46
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_05EC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 47
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_05FD:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 48
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_060E:
    GoToIfSet FLAG_UNK_0x0110, _0621
    GoTo _0631
    End

_0621:
    BufferPlayerName 0
    Message 31
    CloseMessage
    GoTo _0677
    End

_0631:
    BufferPlayerName 0
    Message 27
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _0650
    GoTo _065B
    End

_0650:
    Message 29
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_065B:
    ScrCmd_11E VAR_RESULT
    BufferNumber 0, VAR_RESULT
    Message 28
    BufferPlayerName 0
    Message 30
    CloseMessage
    GoTo _0677
    End

_0677:
    GetPlayerDir VAR_0x8007
    CallIfEq VAR_0x8007, 0, _07B9
    CallIfEq VAR_0x8007, 1, _07BB
    CallIfEq VAR_0x8007, 2, _07CF
    CallIfEq VAR_0x8007, 3, _07E3
    ClearFlag FLAG_UNK_0x022A
    AddObject 4
    ApplyMovement LOCALID_PLAYER, _0858
    ApplyMovement 4, _0884
    ApplyMovement 0, _0804
    WaitMovement
    Message 32
    Message 33
    CloseMessage
    ApplyMovement 0, _080C
    WaitMovement
    WaitTime 15, VAR_RESULT
    Message 34
    CloseMessage
    ApplyMovement 4, _088C
    ApplyMovement LOCALID_PLAYER, _086C
    WaitMovement
    Message 35
    CallIfSet FLAG_GAME_COMPLETED, _07A2
    CallIfGe VAR_UNK_0x4081, 2, _079C
    SetNationalDexEnabled
    BufferPlayerName 0
    PlaySound SEQ_FANFA4
    Message 36
    WaitSound
    Message 37
    Message 38
    Message 39
    BufferPlayerName 0
    GetPlayerGender VAR_0x8004
    CallIfEq VAR_0x8004, GENDER_MALE, _07A4
    CallIfEq VAR_0x8004, GENDER_FEMALE, _07A9
    CloseMessage
    ApplyMovement 4, _0898
    WaitMovement
    RemoveObject 4
    Message 42
    CloseMessage
    WaitTime 15, VAR_RESULT
    ApplyMovement LOCALID_PLAYER, _0878
    WaitMovement
    BufferPlayerName 0
    Message 43
    SetVar VAR_0x8004, 0x1AF
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7FC
    Message 44
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_079C:
    SetFlag FLAG_UNK_0x0294
    Return

_07A2:
    Return

_07A4:
    Message 40
    Return

_07A9:
    Message 41
    Return

_07AE:
    Message 45
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_07B9:
    Return

_07BB:
    ApplyMovement LOCALID_PLAYER, _0824
    ApplyMovement 0, _07F8
    WaitMovement
    Return

_07CF:
    ApplyMovement LOCALID_PLAYER, _0838
    ApplyMovement 0, _07F8
    WaitMovement
    Return

_07E3:
    ApplyMovement LOCALID_PLAYER, _0848
    ApplyMovement 0, _07F8
    WaitMovement
    Return

    .balign 4, 0
_07F8:
    MoveAction_063
    MoveAction_033
    EndMovement

    .balign 4, 0
_0804:
    MoveAction_075
    EndMovement

    .balign 4, 0
_080C:
    MoveAction_034
    MoveAction_063 2
    MoveAction_033
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
_0824:
    MoveAction_014
    MoveAction_013 2
    MoveAction_015
    MoveAction_032
    EndMovement

    .balign 4, 0
_0838:
    MoveAction_013
    MoveAction_014
    MoveAction_032
    EndMovement

    .balign 4, 0
_0848:
    MoveAction_013
    MoveAction_015
    MoveAction_032
    EndMovement

    .balign 4, 0
_0858:
    MoveAction_033
    MoveAction_063 5
    MoveAction_014
    MoveAction_035
    EndMovement

    .balign 4, 0
_086C:
    MoveAction_063
    MoveAction_033
    EndMovement

    .balign 4, 0
_0878:
    MoveAction_015
    MoveAction_032
    EndMovement

    .balign 4, 0
_0884:
    MoveAction_012 7
    EndMovement

    .balign 4, 0
_088C:
    MoveAction_014
    MoveAction_032
    EndMovement

    .balign 4, 0
_0898:
    MoveAction_013 9
    EndMovement

_08A0:
    SetVar VAR_0x8006, 0
    GoToIfEq VAR_UNK_0x40A6, 3, _08B5
    Return

_08B5:
    GoToIfUnset FLAG_UNK_0x09BE, _08C2
    Return

_08C2:
    SetVar VAR_0x8006, 1
    Return

    .byte 0
    .byte 0
