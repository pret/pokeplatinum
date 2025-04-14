#include "macros/scrcmd.inc"
#include "res/text/bank/pal_park_lobby.h"

    .data

    ScriptEntry _0036
    ScriptEntry _007E
    ScriptEntry _02F8
    ScriptEntry _0400
    ScriptEntry _0413
    ScriptEntry _045F
    ScriptEntry _0475
    ScriptEntry _0488
    ScriptEntry _049B
    ScriptEntry _04B4
    ScriptEntry _057C
    ScriptEntry _02D8
    ScriptEntry _0662
    ScriptEntryEnd

_0036:
    ClearFlag FLAG_ALT_MUSIC_PAL_PARK
    SetFlag FLAG_UNK_0x09F3
    GoToIfNe VAR_UNK_0x40F3, 0, _004D
    End

_004D:
    SetObjectEventPos 7, 8, 9
    ScrCmd_189 7, 2
    End

_005D:
    GoToIfEq VAR_UNK_0x40E0, 0x7D0, _0074
    BufferPlayerName 1
    BufferNumber 2, 0x40E0
    Return

_0074:
    BufferRivalName 1
    BufferNumber 2, 0x40E0
    Return

_007E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetPlayerGender VAR_0x800C
    GoToIfEq VAR_0x800C, GENDER_MALE, _009D
    GoTo _00D2

_009D:
    GoToIfSet FLAG_UNK_0x00D3, _01D6
    SetFlag FLAG_UNK_0x00D3
    BufferPlayerName 0
    Message 21
    ShowYesNoMenu VAR_0x800C
    GoToIfEq VAR_0x800C, MENU_YES, _0107
    GoToIfEq VAR_0x800C, MENU_NO, _01CB
    End

_00D2:
    GoToIfSet FLAG_UNK_0x00D3, _01E2
    SetFlag FLAG_UNK_0x00D3
    BufferPlayerName 0
    Message 22
    ShowYesNoMenu VAR_0x800C
    GoToIfEq VAR_0x800C, MENU_YES, _0107
    GoToIfEq VAR_0x800C, MENU_NO, _01CB
    End

_0107:
    Message 23
    GoTo _012B

_0110:
    Message 24
    GoTo _012B

_0119:
    Message 25
    GoTo _012B

_0122:
    Message 26
    GoTo _012B

_012B:
    InitGlobalTextMenu 1, 1, 0, VAR_0x800C
    AddMenuEntryImm 198, 0
    AddMenuEntryImm 199, 1
    AddMenuEntryImm 200, 2
    AddMenuEntryImm 202, 4
    ShowMenu
    GoToIfEq VAR_0x800C, 0, _0110
    GoToIfEq VAR_0x800C, 1, _0119
    GoToIfEq VAR_0x800C, 2, _0122
    GoTo _0172

_0172:
    Message 28
    ShowYesNoMenu VAR_0x800C
    GoToIfEq VAR_0x800C, MENU_NO, _01CB
_0186:
    SetVar VAR_0x800C, 0
    ScrCmd_252 VAR_0x800C
    GoToIfLt VAR_0x800C, 6, _02AD
    SetVar VAR_0x800C, 0
    ScrCmd_254 VAR_0x800C
    GoToIfEq VAR_0x800C, 0, _0299
    GetPlayerGender VAR_0x800C
    GoToIfEq VAR_0x800C, GENDER_MALE, _0231
    GoTo _0245

_01CB:
    Message 29
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01D6:
    BufferPlayerName 0
    Message 30
    GoTo _01EE

_01E2:
    BufferPlayerName 0
    Message 31
    GoTo _01EE

_01EE:
    InitGlobalTextMenu 1, 1, 0, VAR_0x800C
    AddMenuEntryImm 203, 0
    AddMenuEntryImm 204, 1
    AddMenuEntryImm 205, 2
    ShowMenu
    GoToIfEq VAR_0x800C, 0, _0186
    GoToIfEq VAR_0x800C, 1, _02A4
    GoToIfEq VAR_0x800C, 2, _01CB
    GoTo _01CB

_0231:
    Call _005D
    BufferPlayerName 0
    Message 32
    CloseMessage
    GoTo _0259

_0245:
    Call _005D
    BufferPlayerName 0
    Message 33
    CloseMessage
    GoTo _0259

_0259:
    ApplyMovement 7, _02B8
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _02CC
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_PAL_PARK, 0, 24, 47, 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_0299:
    Message 34
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02A4:
    Message 35
    GoTo _012B

_02AD:
    Message 37
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_02B8:
    MoveAction_036
    MoveAction_012 2
    MoveAction_015
    MoveAction_038
    EndMovement

    .balign 4, 0
_02CC:
    MoveAction_012 5
    MoveAction_069
    EndMovement

_02D8:
    LockAll
    SetVar VAR_UNK_0x40F3, 0
    ApplyMovement LOCALID_PLAYER, _03E4
    WaitMovement
    ApplyMovement 7, _03D8
    WaitMovement
    ReleaseAll
    End

_02F8:
    LockAll
    SetVar VAR_UNK_0x40F3, 0
    ApplyMovement LOCALID_PLAYER, _03EC
    WaitMovement
    CalcCatchingShowPoints CATCHING_SHOW_CATCHING_POINTS, VAR_0x800C
    BufferNumber 0, VAR_0x800C
    CalcCatchingShowPoints CATCHING_SHOW_TIME_POINTS, VAR_0x800C
    BufferNumber 1, VAR_0x800C
    CalcCatchingShowPoints CATCHING_SHOW_TYPE_POINTS, VAR_0x800C
    BufferNumber 2, VAR_0x800C
    CalcCatchingShowPoints CATCHING_SHOW_TOTAL_POINTS, VAR_0x800C
    BufferNumber 3, VAR_0x800C
    Message 38
    CalcCatchingShowPoints CATCHING_SHOW_TOTAL_POINTS, VAR_0x800C
    GoToIfGt VAR_0x800C, 0x40E0, _035B
    Message 40
    Call _07BE
    GoTo _0370

_035B:
    Message 39
    Call _07BE
    CalcCatchingShowPoints CATCHING_SHOW_TOTAL_POINTS, 0x40E0
    GoTo _0370

_0370:
    Message 41
    ShowYesNoMenu VAR_0x800C
    GoToIfEq VAR_0x800C, MENU_YES, _03AB
    Message 46
    ShowYesNoMenu VAR_0x800C
    GoToIfEq VAR_0x800C, MENU_YES, _039E
    GoTo _0370

_039E:
    Message 43
    WaitABPress
    CloseMessage
    GoTo _03BD

_03AB:
    ScrCmd_255
    Message 42
    Message 44
    WaitABPress
    CloseMessage
    GoTo _03BD

_03BD:
    ApplyMovement LOCALID_PLAYER, _03F8
    WaitMovement
    ApplyMovement 7, _03D8
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
_03D8:
    MoveAction_014
    MoveAction_013 2
    EndMovement

    .balign 4, 0
_03E4:
    MoveAction_013 5
    EndMovement

    .balign 4, 0
_03EC:
    MoveAction_013 2
    MoveAction_039
    EndMovement

    .balign 4, 0
_03F8:
    MoveAction_013 4
    EndMovement

_0400:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 57
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0413:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 0
    GoToIfEq VAR_0x800C, 2, _0454
    GoToIfEq VAR_0x800C, 1, _0449
    GoTo _043E

_043E:
    Message 52
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0449:
    Message 53
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0454:
    Message 54
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_045F:
    BufferPlayerName 0
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 55
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0475:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 56
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0488:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 65
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_049B:
    Call _005D
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 57
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_04B4:
    LockAll
    ClearFlag FLAG_UNK_0x0242
    SetVar VAR_UNK_0x40E0, 0x7D0
    ApplyMovement 1, _0548
    WaitMovement
    GetPlayerGender VAR_0x4000
    BufferPlayerName 0
    GoToIfEq VAR_0x4000, GENDER_MALE, _04E4
    GoTo _04ED

_04E4:
    Message 0
    GoTo _04F6

_04ED:
    Message 1
    GoTo _04F6

_04F6:
    Message 2
    CloseMessage
    ApplyMovement 1, _0558
    WaitMovement
    Message 3
    SetVar VAR_0x8004, 19
    CallCommonScript 0x7D9
    Message 4
    CloseMessage
    WaitTime 15, VAR_0x800C
    ApplyMovement LOCALID_PLAYER, _0570
    WaitMovement
    ApplyMovement 1, _0564
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject 1
    WaitFanfare SEQ_SE_DP_KAIDAN2
    SetVar VAR_UNK_0x40C6, 1
    ReleaseAll
    End

    .balign 4, 0
_0548:
    MoveAction_075
    MoveAction_063
    MoveAction_013 3
    EndMovement

    .balign 4, 0
_0558:
    MoveAction_075
    MoveAction_063
    EndMovement

    .balign 4, 0
_0564:
    MoveAction_013
    MoveAction_033
    EndMovement

    .balign 4, 0
_0570:
    MoveAction_015
    MoveAction_034
    EndMovement

_057C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfEq VAR_0x400A, 1, _062C
    GoToIfEq VAR_0x400A, 2, _063C
    CheckPoketchAppRegistered POKETCH_APPID_COLORCHANGER, VAR_0x800C
    GoToIfEq VAR_0x800C, 1, _0657
    Message 5
    Message 6
    CheckPoketchAppRegistered POKETCH_APPID_KITCHENTIMER, VAR_0x800C
    GoToIfEq VAR_0x800C, 1, _05FB
    Message 10
    CheckPartyHasSpecies VAR_0x800C, SPECIES_SNORLAX
    GoToIfEq VAR_0x800C, 0, _064C
    Message 11
    SetVar VAR_0x8004, 20
    CallCommonScript 0x7D9
    WaitABXPadPress
    SetVar VAR_0x400A, 1
    CloseMessage
    ReleaseAll
    End

_05FB:
    Message 13
    CheckPartyHasSpecies VAR_0x800C, SPECIES_KECLEON
    GoToIfEq VAR_0x800C, 0, _064C
    Message 14
    SetVar VAR_0x8004, 21
    CallCommonScript 0x7D9
    WaitABXPadPress
    SetVar VAR_0x400A, 2
    CloseMessage
    ReleaseAll
    End

_062C:
    BufferPoketchAppName 0, POKETCH_APPID_KITCHENTIMER
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_063C:
    BufferPoketchAppName 0, POKETCH_APPID_COLORCHANGER
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_064C:
    Message 19
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0657:
    Message 20
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0662:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfEq VAR_0x4009, 1, _06CF
    GetGBACartridgeVersion VAR_0x800C
    GoToIfEq VAR_0x800C, 4, _06DA
    GoToIfEq VAR_0x800C, 5, _0706
    GoToIfEq VAR_0x800C, 1, _0732
    GoToIfEq VAR_0x800C, 2, _0756
    GoToIfEq VAR_0x800C, 3, _077A
    GoTo _06C4
    End

_06C4:
    Message 66
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_06CF:
    Message 72
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_06DA:
    SetVar VAR_0x8004, ACCESSORY_CROWN
    SetVar VAR_0x8005, 1
    ScrCmd_1D3 VAR_0x8004, VAR_0x8005, VAR_0x800C
    GoToIfEq VAR_0x800C, 0, _06C4
    Message 67
    GoTo _079E
    End

_0706:
    SetVar VAR_0x8004, ACCESSORY_TIARA
    SetVar VAR_0x8005, 1
    ScrCmd_1D3 VAR_0x8004, VAR_0x8005, VAR_0x800C
    GoToIfEq VAR_0x800C, 0, _06C4
    Message 68
    GoTo _079E
    End

_0732:
    SetVar VAR_0x8004, 14
    ScrCmd_1D6 VAR_0x8004, VAR_0x800C
    GoToIfEq VAR_0x800C, 1, _06C4
    Message 69
    GoTo _07AE
    End

_0756:
    SetVar VAR_0x8004, 15
    ScrCmd_1D6 VAR_0x8004, VAR_0x800C
    GoToIfEq VAR_0x800C, 1, _06C4
    Message 70
    GoTo _07AE
    End

_077A:
    SetVar VAR_0x8004, 16
    ScrCmd_1D6 VAR_0x8004, VAR_0x800C
    GoToIfEq VAR_0x800C, 1, _06C4
    Message 71
    GoTo _07AE
    End

_079E:
    CallCommonScript 0x7DF
    SetVar VAR_0x4009, 1
    CloseMessage
    ReleaseAll
    End

_07AE:
    CallCommonScript 0x7F4
    SetVar VAR_0x4009, 1
    CloseMessage
    ReleaseAll
    End

_07BE:
    CalcCatchingShowPoints CATCHING_SHOW_TOTAL_POINTS, VAR_0x800C
    CallIfLt VAR_0x800C, 0xBB8, _07FA
    CallIfLt VAR_0x800C, 0xCE4, _0870
    CallIfLt VAR_0x800C, 0xDAC, _08BF
    CallIfLt VAR_0x800C, 0x2710, _0928
    Return

_07FA:
    GetRandom VAR_0x8006, 8
    CallIfEq VAR_0x8006, 0, _09B6
    CallIfEq VAR_0x8006, 1, _09BE
    CallIfEq VAR_0x8006, 2, _09C6
    CallIfEq VAR_0x8006, 3, _09CE
    CallIfEq VAR_0x8006, 4, _09D6
    CallIfEq VAR_0x8006, 5, _09DE
    CallIfEq VAR_0x8006, 6, _09E6
    CallIfEq VAR_0x8006, 7, _09EE
    Call _0984
    Return

_0870:
    GetRandom VAR_0x8006, 5
    CallIfEq VAR_0x8006, 0, _09F6
    CallIfEq VAR_0x8006, 1, _09FE
    CallIfEq VAR_0x8006, 2, _0A06
    CallIfEq VAR_0x8006, 3, _0A0E
    CallIfEq VAR_0x8006, 4, _0A16
    Call _0984
    Return

_08BF:
    GetRandom VAR_0x8006, 7
    CallIfEq VAR_0x8006, 0, _0A1E
    CallIfEq VAR_0x8006, 1, _0A26
    CallIfEq VAR_0x8006, 2, _0A2E
    CallIfEq VAR_0x8006, 3, _0A36
    CallIfEq VAR_0x8006, 4, _0A3E
    CallIfEq VAR_0x8006, 5, _0A46
    CallIfEq VAR_0x8006, 6, _0A4E
    Call _0984
    Return

_0928:
    GetRandom VAR_0x8006, 6
    CallIfEq VAR_0x8006, 0, _0A56
    CallIfEq VAR_0x8006, 1, _0A5E
    CallIfEq VAR_0x8006, 2, _0A66
    CallIfEq VAR_0x8006, 3, _0A6E
    CallIfEq VAR_0x8006, 4, _0A76
    CallIfEq VAR_0x8006, 5, _0A7E
    Call _0984
    Return

_0984:
    CanFitItem VAR_0x8006, 1, VAR_0x8007
    CallIfNe VAR_0x8007, 0, _09A1
    SetVar VAR_0x800C, 0x2710
    Return

_09A1:
    Message 45
    SetVar VAR_0x8004, VAR_0x8006
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7FC
    Return

_09B6:
    SetVar VAR_0x8006, ITEM_CHERI_BERRY
    Return

_09BE:
    SetVar VAR_0x8006, ITEM_CHESTO_BERRY
    Return

_09C6:
    SetVar VAR_0x8006, ITEM_PECHA_BERRY
    Return

_09CE:
    SetVar VAR_0x8006, ITEM_RAWST_BERRY
    Return

_09D6:
    SetVar VAR_0x8006, ITEM_ASPEAR_BERRY
    Return

_09DE:
    SetVar VAR_0x8006, ITEM_LEPPA_BERRY
    Return

_09E6:
    SetVar VAR_0x8006, ITEM_ORAN_BERRY
    Return

_09EE:
    SetVar VAR_0x8006, ITEM_PERSIM_BERRY
    Return

_09F6:
    SetVar VAR_0x8006, ITEM_FIGY_BERRY
    Return

_09FE:
    SetVar VAR_0x8006, ITEM_WIKI_BERRY
    Return

_0A06:
    SetVar VAR_0x8006, ITEM_MAGO_BERRY
    Return

_0A0E:
    SetVar VAR_0x8006, ITEM_AGUAV_BERRY
    Return

_0A16:
    SetVar VAR_0x8006, ITEM_IAPAPA_BERRY
    Return

_0A1E:
    SetVar VAR_0x8006, ITEM_RAZZ_BERRY
    Return

_0A26:
    SetVar VAR_0x8006, ITEM_BLUK_BERRY
    Return

_0A2E:
    SetVar VAR_0x8006, ITEM_NANAB_BERRY
    Return

_0A36:
    SetVar VAR_0x8006, ITEM_WEPEAR_BERRY
    Return

_0A3E:
    SetVar VAR_0x8006, ITEM_PINAP_BERRY
    Return

_0A46:
    SetVar VAR_0x8006, ITEM_LUM_BERRY
    Return

_0A4E:
    SetVar VAR_0x8006, ITEM_SITRUS_BERRY
    Return

_0A56:
    SetVar VAR_0x8006, ITEM_POMEG_BERRY
    Return

_0A5E:
    SetVar VAR_0x8006, ITEM_KELPSY_BERRY
    Return

_0A66:
    SetVar VAR_0x8006, ITEM_QUALOT_BERRY
    Return

_0A6E:
    SetVar VAR_0x8006, ITEM_HONDEW_BERRY
    Return

_0A76:
    SetVar VAR_0x8006, ITEM_GREPA_BERRY
    Return

_0A7E:
    SetVar VAR_0x8006, ITEM_TAMATO_BERRY
    Return

    .byte 0
    .byte 0
