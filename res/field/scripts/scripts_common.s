#include "macros/scrcmd.inc"
#include "generated/distribution_events.h"
#include "generated/tutor_locations.h"
#include "res/text/bank/common_strings.h"
#include "res/text/bank/menu_entries.h"

    ScriptEntry Common_HandleSignpostInput
    ScriptEntry _034C
    ScriptEntry _00EE
    ScriptEntry _03E8
    ScriptEntry _043B
    ScriptEntry _0479
    ScriptEntry _0494
    ScriptEntry _00EC
    ScriptEntry _05EA
    ScriptEntry _0719
    ScriptEntry _00EA
    ScriptEntry _08FF
    ScriptEntry _0901
    ScriptEntry _093A
    ScriptEntry _095C
    ScriptEntry _0983
    ScriptEntry _09F5
    ScriptEntry _0BDD
    ScriptEntry _0BEE
    ScriptEntry _0FC3
    ScriptEntry _0FCA
    ScriptEntry _103A
    ScriptEntry _0FA5
    ScriptEntry _0FA7
    ScriptEntry _1280
    ScriptEntry _1282
    ScriptEntry _12A8
    ScriptEntry _12BA
    ScriptEntry _12CD
    ScriptEntry _12E0
    ScriptEntry _12F3
    ScriptEntry _1361
    ScriptEntry _138C
    ScriptEntry _139D
    ScriptEntry _048B
    ScriptEntry _13AB
    ScriptEntry _09BD
    ScriptEntry _1475
    ScriptEntry _13BE
    ScriptEntry _1477
    ScriptEntry _1581
    ScriptEntry _15D7
    ScriptEntry _15B3
    ScriptEntry _15D7
    ScriptEntry _0A34
    ScriptEntry _09CC
    ScriptEntry _0910
    ScriptEntry _0992
    ScriptEntry _15BF
    ScriptEntry _15D7
    ScriptEntry _15E7
    ScriptEntry _1636
    ScriptEntry _164A
    ScriptEntry _165E
    ScriptEntry _16AA
    ScriptEntry _15CB
    ScriptEntry _15D7
    ScriptEntry _170A
    ScriptEntryEnd

_00EA:
    End

_00EC:
    End

_00EE:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_2BE VAR_RESULT
    GoToIfGe VAR_RESULT, 4, _027A
    SetVar VAR_0x8004, 0
    GetTimeOfDay VAR_RESULT
    Dummy1F9 VAR_RESULT
    SetVar VAR_0x8004, 120
    GoToIfEq VAR_RESULT, 0, _0141
    SetVar VAR_0x8004, 121
    GoToIfEq VAR_RESULT, 1, _0141
    SetVar VAR_0x8004, 0
_0141:
    MessageVar VAR_0x8004
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0172
    GoToIfEq VAR_RESULT, MENU_NO, _0165
    End

_0165:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

_0172:
    SetPlayerState 0x100
    ChangePlayerState
    ApplyMovement LOCALID_PLAYER, _02EC
    WaitMovement
    ScrCmd_2BE VAR_RESULT
    CallIfGe VAR_RESULT, 4, _01BC
    CallIfLt VAR_RESULT, 4, _01B7
    Call _01C1
    GoToIfUnset FLAG_UNK_0x006A, _0242
    GoTo _01E1

_01B7:
    Message 1
    Return

_01BC:
    Message 7
    Return

_01C1:
    ApplyMovement VAR_0x8007, _1260
    WaitMovement
    GetPartyCountHatched VAR_0x8006
    ScrCmd_23B VAR_0x8006
    ApplyMovement VAR_0x8007, _1278
    WaitMovement
    HealParty
    Return

_01E1:
    GoToIfEq VAR_0x8004, 1, _0218
    Message 2
    ApplyMovement LOCALID_PLAYER, _02F4
    WaitMovement
    SetPlayerState 1
    ChangePlayerState
    ApplyMovement VAR_0x8007, _02E0
    WaitMovement
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

_0218:
    Message 8
    ApplyMovement LOCALID_PLAYER, _02F4
    WaitMovement
    SetPlayerState 1
    ChangePlayerState
    ApplyMovement VAR_0x8007, _02E0
    WaitMovement
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

_0242:
    CheckPartyPokerus VAR_0x8006
    GoToIfEq VAR_0x8006, 1, _0259
    GoTo _01E1

_0259:
    SetFlag FLAG_UNK_0x006A
    ApplyMovement LOCALID_PLAYER, _02F4
    WaitMovement
    SetPlayerState 1
    ChangePlayerState
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

_027A:
    GoToIfSet FLAG_UNK_0x0069, _02B0
    SetFlag FLAG_UNK_0x0069
    Message 4
    BufferPlayerName 0
    Message 5
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _02D4
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

_02B0:
    BufferPlayerName 0
    Message 6
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _02D4
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

_02D4:
    SetVar VAR_0x8004, 1
    GoTo _0172

    .balign 4, 0
_02E0:
    NurseJoyBow
    Delay4
    EndMovement

    .balign 4, 0
_02EC:
    PlayerGive
    EndMovement

    .balign 4, 0
_02F4:
    PlayerReceive
    EndMovement

Common_HandleSignpostInput:
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, Common_ScrollOutSignpost
    GoToIfEq VAR_0x8008, 1, Common_RemoveSignpostOpenStartMenu
    GetSignpostInput
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 1, Common_RemoveSignpostOpenStartMenu
    SetSignpostCommand SIGNPOST_CMD_SCROLL_OUT
    ReturnCommonScript
    End

Common_ScrollOutSignpost:
    SetSignpostCommand SIGNPOST_CMD_SCROLL_OUT
    ReturnCommonScript
    End

Common_RemoveSignpostOpenStartMenu:
    SetSignpostCommand SIGNPOST_CMD_REMOVE
    WaitForSignpostDone
    ShowStartMenu
    ReturnCommonScript
    End

_034C:
    Call _0356
    ReturnCommonScript
    End

_0356:
    GetItemPocket VAR_0x8004, VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, POCKET_KEY_ITEMS, _03D8
    GoToIfEq VAR_0x8008, POCKET_ITEMS, _03CC
    GoToIfEq VAR_0x8008, POCKET_BERRIES, _03CC
    GoToIfEq VAR_0x8008, POCKET_MEDICINE, _03CC
    GoToIfEq VAR_0x8008, POCKET_BALLS, _03CC
    GoToIfEq VAR_0x8008, POCKET_BATTLE_ITEMS, _03CC
    GoToIfEq VAR_0x8008, POCKET_MAIL, _03DE
    GoToIfEq VAR_0x8008, POCKET_TMHMS, _03D2
    End

_03CC:
    PlaySound SEQ_FANFA4
    Return

_03D2:
    PlaySound SEQ_WAZA
    Return

_03D8:
    PlaySound SEQ_FANFA3
    Return

_03DE:
    PlaySound SEQ_FANFA2
    Return

Common_Unused:
    ReturnCommonScript
    End

_03E8:
    LockAll
    GetPartyCount VAR_0x8004
    SetVar VAR_0x8005, 0
_03F4:
    SurvivePoison VAR_RESULT, VAR_0x8005
    GoToIfEq VAR_RESULT, 0, _040F
    BufferPartyMonNickname 0, VAR_0x8005
    Message 66
_040F:
    AddVar VAR_0x8005, 1
    GoToIfNe VAR_0x8004, VAR_0x8005, _03F4
    CountAliveMonsExcept VAR_RESULT, 6
    GoToIfEq VAR_RESULT, 0, _0457
    CloseMessage
    ReleaseAll
    End

_043B:
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    WaitABPress
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    End

_0457:
    BufferPlayerName 0
    Message 11
    WaitABPress
    CloseMessage
    FadeOutBGM 0, 10
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_1F8
    ScrCmd_14B
    End

_0479:
    ClearFlag FLAG_UNK_0x001F
    Call _04A8
    ScrCmd_18F VAR_RESULT
    CloseMessage
    End

_048B:
    Message 20
    WaitABPress
    CloseMessage
    End

_0494:
    SetFlag FLAG_UNK_0x001F
    Call _04A8
    SetVar VAR_MAP_LOCAL_0, VAR_RESULT
    ReturnCommonScript
    End

_04A8:
    CheckSaveType VAR_RESULT
    GoToIfEq VAR_RESULT, SAVE_TYPE_OVERWRITE, _04FC
    ScrCmd_2C1
    Message 13
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _05A0
    CheckSaveType VAR_RESULT
    GoToIfEq VAR_RESULT, SAVE_TYPE_NO_DATA_EXISTS, _051D
    GoToIfEq VAR_RESULT, SAVE_TYPE_FULL_SAVE, _0509
    GoToIfEq VAR_RESULT, SAVE_TYPE_QUICK_SAVE, _0526
    End

_04FC:
    Message 20
    WaitABPress
    SetVar VAR_RESULT, 0
    Return

_0509:
    Message 14
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _05A0
_051D:
    Message 21
    GoTo _0552

_0526:
    Message 14
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _05A0
    GoToIfUnset FLAG_UNK_0x001F, _05C6
    GoToIfSet FLAG_UNK_0x001F, _05D1
    End

_0552:
    ScrCmd_258
    WaitTime 2, VAR_RESULT
    Call _0568
    ScrCmd_259
    GoTo _057D

_0568:
    ScrCmd_18D
    CallIfSet FLAG_UNK_0x001F, _05BE
    ScrCmd_12D VAR_RESULT
    ScrCmd_18E
    Return

_057D:
    GoToIfEq VAR_RESULT, 0, _05AA
    BufferPlayerName 0
    Message 16
    PlayFanfare SEQ_SE_DP_SAVE
    WaitFanfare SEQ_SE_DP_SAVE
    WaitABPressTime 30
    ScrCmd_2C2
    Return

_05A0:
    ScrCmd_2C2
    SetVar VAR_RESULT, 0
    Return

_05AA:
    Message 18
    WaitABPress
    ScrCmd_2C2
    Return

_05B3:
    Message 21
    GoTo _0552
    End

_05BE:
    ScrCmd_2D6
    ClearFlag FLAG_UNK_0x001F
    Return

_05C6:
    Message 15
    GoTo _0552
    End

_05D1:
    ScrCmd_2D7 VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _05B3
    GoTo _05C6
    End

_05EA:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckItem ITEM_HONEY, 1, VAR_RESULT
    GoToIfNe VAR_RESULT, 0, _0632
    GetHoneyTreeStatus VAR_RESULT
    GoToIfEq VAR_RESULT, TREE_STATUS_BARE, _065F
    GoToIfEq VAR_RESULT, TREE_STATUS_SLATHERED, _066A
    GoToIfEq VAR_RESULT, TREE_STATUS_ENCOUNTER, _06F4
    End

_0632:
    GetHoneyTreeStatus VAR_RESULT
    GoToIfEq VAR_RESULT, TREE_STATUS_BARE, _0675
    GoToIfEq VAR_RESULT, TREE_STATUS_SLATHERED, _067E
    GoToIfEq VAR_RESULT, TREE_STATUS_ENCOUNTER, _06F4
    End

_065F:
    Message 46
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_066A:
    Message 48
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0675:
    Message 47
    GoTo _06BB

_067E:
    Message 49
    GoTo _06BB

Common_Unused2:
    CheckItem ITEM_HONEY, 1, VAR_RESULT
    GoToIfNe VAR_RESULT, 0, _06BB
    CloseMessage
    ReleaseAll
    End

_06A2:
    CheckItem ITEM_HONEY, 1, VAR_RESULT
    GoToIfNe VAR_RESULT, 0, _06BB
    ReleaseAll
    End

_06BB:
    Message 50
    ShowYesNoMenu VAR_RESULT
    CloseMessage
    GoToIfEq VAR_RESULT, MENU_YES, _06D5
    ReleaseAll
    End

_06D5:
    RemoveItem ITEM_HONEY, 1, VAR_RESULT
    ScrCmd_260 1
    SlatherHoneyTree
    WaitTime 10, VAR_RESULT
    Message 51
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_06F4:
    IncrementGameRecord RECORD_UNK_117
    StartHoneyTreeBattle
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _0713
    ScrCmd_12A
    GoTo _06A2

_0713:
    BlackOutFromBattle
    ReleaseAll
    End

_0719:
    Call _0723
    ReturnCommonScript
    End

_0723:
    BufferPlayerName 0
    BufferPoketchAppName 1, VAR_0x8004
    PlaySound SEQ_POCKETCH
    Message 24
    WaitSound
    Message 26
    RegisterPoketchApp VAR_0x8004
    CallIfEq VAR_0x8004, 0, _0882
    CallIfEq VAR_0x8004, 1, _0887
    CallIfEq VAR_0x8004, 2, _088C
    CallIfEq VAR_0x8004, 3, _0891
    CallIfEq VAR_0x8004, 4, _0896
    CallIfEq VAR_0x8004, 5, _089B
    CallIfEq VAR_0x8004, 6, _08A0
    CallIfEq VAR_0x8004, 7, _08A5
    CallIfEq VAR_0x8004, 8, _08AA
    CallIfEq VAR_0x8004, 9, _08AF
    CallIfEq VAR_0x8004, 10, _08B4
    CallIfEq VAR_0x8004, 11, _08B9
    CallIfEq VAR_0x8004, 12, _08BE
    CallIfEq VAR_0x8004, 13, _08C3
    CallIfEq VAR_0x8004, 14, _08C8
    CallIfEq VAR_0x8004, 15, _08CD
    CallIfEq VAR_0x8004, 16, _08D2
    CallIfEq VAR_0x8004, 17, _08D7
    CallIfEq VAR_0x8004, 18, _08DC
    CallIfEq VAR_0x8004, 19, _08E1
    CallIfEq VAR_0x8004, 20, _08E6
    CallIfEq VAR_0x8004, 21, _08EB
    CallIfEq VAR_0x8004, 22, _08F0
    CallIfEq VAR_0x8004, 23, _08F5
    CallIfEq VAR_0x8004, 24, _08FA
    Return

_0882:
    Message 83
    Return

_0887:
    Message 84
    Return

_088C:
    Message 85
    Return

_0891:
    Message 86
    Return

_0896:
    Message 87
    Return

_089B:
    Message 88
    Return

_08A0:
    Message 89
    Return

_08A5:
    Message 90
    Return

_08AA:
    Message 91
    Return

_08AF:
    Message 92
    Return

_08B4:
    Message 93
    Return

_08B9:
    Message 94
    Return

_08BE:
    Message 95
    Return

_08C3:
    Message 96
    Return

_08C8:
    Message 97
    Return

_08CD:
    Message 98
    Return

_08D2:
    Message 99
    Return

_08D7:
    Message 100
    Return

_08DC:
    Message 101
    Return

_08E1:
    Message 102
    Return

_08E6:
    Message 103
    Return

_08EB:
    Message 104
    Return

_08F0:
    Message 105
    Return

_08F5:
    Message 106
    Return

_08FA:
    Message 107
    Return

_08FF:
    End

_0901:
    Call _091D
    Message 109
    WaitABXPadPress
    ReturnCommonScript
    End

_0910:
    Call _091D
    Message 128
    ReturnCommonScript
    End

_091D:
    PlaySound SEQ_FANFA4
    SendGoodToPC VAR_0x8004, VAR_0x8005, VAR_RESULT
    ScrCmd_33E 0, VAR_0x8004
    Message 108
    BufferUndergroundGoodsName 0, VAR_0x8004
    WaitSound
    Return

_093A:
    Call _0944
    ReturnCommonScript
    End

_0944:
    PlaySound SEQ_FANFA4
    GiveTrap VAR_0x8004, VAR_0x8005, VAR_RESULT
    BufferUndergroundTrapName 0, VAR_0x8004
    Message 80
    WaitSound
    Return

_095C:
    Call _0966
    ReturnCommonScript
    End

_0966:
    PlaySound SEQ_FANFA4
    GiveSphere VAR_0x8004, VAR_0x8005, VAR_RESULT
    BufferUndergroundItemName 0, VAR_0x8004
    BufferNumber 1, VAR_0x8005
    Message 81
    WaitSound
    Return

_0983:
    Call _099F
    Message 31
    WaitABXPadPress
    ReturnCommonScript
    End

_0992:
    Call _099F
    Message 127
    ReturnCommonScript
    End

_099F:
    PlaySound SEQ_ACCE
    ScrCmd_1D2 VAR_0x8004, VAR_0x8005
    BufferAccessoryName 0, VAR_0x8004
    Message 25
    WaitSound
    BufferPlayerName 0
    BufferAccessoryName 1, VAR_0x8004
    Return

_09BD:
    Call _09D9
    Message 31
    WaitABXPadPress
    ReturnCommonScript
    End

_09CC:
    Call _09D9
    Message 127
    ReturnCommonScript
    End

_09D9:
    PlaySound SEQ_FANFA4
    ScrCmd_1D5 VAR_0x8004
    ScrCmd_273 0, VAR_0x8004
    Message 25
    WaitSound
    BufferPlayerName 0
    ScrCmd_273 1, VAR_0x8004
    Return

_09F5:
    Call _09FF
    ReturnCommonScript
    End

_09FF:
    Call _0356
    AddItem VAR_0x8004, VAR_0x8005, VAR_RESULT
    GetItemPocket VAR_0x8004, VAR_RESULT
    CallIfEq VAR_RESULT, POCKET_KEY_ITEMS, _0A71
    CallIfNe VAR_RESULT, POCKET_KEY_ITEMS, _0A82
    Message 30
    WaitABXPadPress
    Return

_0A34:
    Call _0A3E
    ReturnCommonScript
    End

_0A3E:
    Call _0356
    AddItem VAR_0x8004, VAR_0x8005, VAR_RESULT
    GetItemPocket VAR_0x8004, VAR_RESULT
    CallIfEq VAR_RESULT, POCKET_KEY_ITEMS, _0A71
    CallIfNe VAR_RESULT, POCKET_KEY_ITEMS, _0A82
    Message 126
    Return

_0A71:
    BufferPlayerName 0
    BufferItemName 1, VAR_0x8004
    Message 28
    GoTo _0AA8

_0A82:
    GoToIfGt VAR_0x8005, 1, _0A9A
    BufferItemName 0, VAR_0x8004
    GoTo _0A9F

_0A9A:
    BufferItemNamePlural 0, VAR_0x8004
_0A9F:
    Message 25
    GoTo _0AA8

_0AA8:
    WaitSound
    ScrCmd_2A7 VAR_0x8004, VAR_RESULT
    CallIfEq VAR_RESULT, 1, _13C8
    BufferPlayerName 0
    GoToIfGt VAR_0x8005, 1, _0AD8
    BufferItemName 1, VAR_0x8004
    GoTo _0ADD

_0AD8:
    BufferItemNamePlural 1, VAR_0x8004
_0ADD:
    GetItemPocket VAR_0x8004, VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, POCKET_KEY_ITEMS, _0B64
    GoToIfEq VAR_0x8008, POCKET_ITEMS, _0B53
    GoToIfEq VAR_0x8008, POCKET_BERRIES, _0BA8
    GoToIfEq VAR_0x8008, POCKET_MEDICINE, _0B97
    GoToIfEq VAR_0x8008, POCKET_BALLS, _0BB9
    GoToIfEq VAR_0x8008, POCKET_BATTLE_ITEMS, _0B75
    GoToIfEq VAR_0x8008, POCKET_MAIL, _0B86
    GoToIfEq VAR_0x8008, POCKET_TMHMS, _0BCA
    End

_0B53:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo _0BDB

_0B64:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo _0BDB

_0B75:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo _0BDB

_0B86:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo _0BDB

_0B97:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo _0BDB

_0BA8:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo _0BDB

_0BB9:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo _0BDB

_0BCA:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo _0BDB

_0BDB:
    Return

_0BDD:
    Call _0BE7
    ReturnCommonScript
    End

_0BE7:
    Message 27
    WaitABXPadPress
    Return

_0BEE:
    LockAll
    PlayFanfare SEQ_SE_DP_PC_ON
    Call _0C06
    BufferPlayerName 0
    Message 32
    GoTo _0C1C

_0C06:
    ScrCmd_24B 90
    ScrCmd_24C 90
    ScrCmd_169 90
    Return

_0C11:
    ScrCmd_24D 90
    ScrCmd_169 90
    ScrCmd_16A 90
    Return

_0C1C:
    BufferPlayerName 0
    Message 33
    InitGlobalTextMenu 1, 1, 0, VAR_0x8006
    CallIfUnset FLAG_MET_BEBE, _0C7B
    CallIfSet FLAG_MET_BEBE, _0C81
    AddMenuEntryImm 60, 1
    GetNationalDexEnabled VAR_RESULT
    CallIfEq VAR_RESULT, 0, _0C87
    CallIfEq VAR_RESULT, 1, _0C8D
    GoToIfSet FLAG_GAME_COMPLETED, _0C93
    GoToIfUnset FLAG_GAME_COMPLETED, _0CDD
    End

_0C7B:
    AddMenuEntryImm 58, 0
    Return

_0C81:
    AddMenuEntryImm 59, 0
    Return

_0C87:
    AddMenuEntryImm 63, 2
    Return

_0C8D:
    AddMenuEntryImm 62, 2
    Return

_0C93:
    AddMenuEntryImm 61, 3
    AddMenuEntryImm 64, 4
    ShowMenu
    SetVar VAR_0x8008, VAR_0x8006
    GoToIfEq VAR_0x8008, 0, _0D16
    GoToIfEq VAR_0x8008, 1, _0E45
    GoToIfEq VAR_0x8008, 2, _0F62
    GoToIfEq VAR_0x8008, 3, _0F2C
    GoTo _0F70

_0CDD:
    AddMenuEntryImm 64, 3
    ShowMenu
    SetVar VAR_0x8008, VAR_0x8006
    GoToIfEq VAR_0x8008, 0, _0D16
    GoToIfEq VAR_0x8008, 1, _0E45
    GoToIfEq VAR_0x8008, 2, _0F62
    GoTo _0F70

_0D16:
    PlayFanfare SEQ_SE_DP_PC_LOGIN
    BufferPlayerName 0
    Message 34
    Call _0D2C
    GoTo _0D73

_0D2C:
    InitGlobalTextListMenu 1, 1, 0, VAR_RESULT
    AddListMenuEntry MenuEntries_Text_PokemonStorageDepositPokemon, 0, MenuEntries_Text_PokemonStorageDepositPokemonDescription
    AddListMenuEntry MenuEntries_Text_PokemonStorageWithdrawPokemon, 1, MenuEntries_Text_PokemonStorageWithdrawPokemonDescription
    AddListMenuEntry MenuEntries_Text_PokemonStorageMovePokemon, 2, MenuEntries_Text_PokemonStorageMovePokemonDescription
    AddListMenuEntry MenuEntries_Text_PokemonStorageMoveItems, 3, MenuEntries_Text_PokemonStorageMoveItemsDescription
    CallIfSet FLAG_CONTEST_HALL_VISITED, _0D69
    AddListMenuEntry MenuEntries_Text_PokemonStorageSeeYa, 5, MenuEntries_Text_PokemonStorageSeeYaDescription
    Return

_0D69:
    AddListMenuEntry MenuEntries_Text_PokemonStorageComparePokemon, 4, MenuEntries_Text_PokemonStorageComparePokemonDescription
    Return

_0D73:
    ShowListMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0DC2
    GoToIfEq VAR_0x8008, 1, _0DD5
    GoToIfEq VAR_0x8008, 2, _0DE8
    GoToIfEq VAR_0x8008, 3, _0DFB
    GoToIfEq VAR_0x8008, 4, _0E0E
    GoTo _0C1C

_0DC2:
    CloseMessage
    Call _0F94
    OpenPokemonStorage 0
    ReturnToField
    GoTo _0E21

_0DD5:
    CloseMessage
    Call _0F94
    OpenPokemonStorage 1
    ReturnToField
    GoTo _0E21

_0DE8:
    CloseMessage
    Call _0F94
    OpenPokemonStorage 2
    ReturnToField
    GoTo _0E21

_0DFB:
    CloseMessage
    Call _0F94
    OpenPokemonStorage 3
    ReturnToField
    GoTo _0E21

_0E0E:
    CloseMessage
    Call _0F94
    OpenPokemonStorage 4
    ReturnToField
    GoTo _0E21

_0E21:
    ScrCmd_30B
    BufferPlayerName 0
    MessageInstant 33
    Call _0D2C
    Call _0C06
    FadeScreen 6, 1, 1, 0
    GoTo _0D73

_0E45:
    PlayFanfare SEQ_SE_DP_PC_LOGIN
    BufferPlayerName 0
    Message 35
    GoTo _0E55

_0E55:
    Call _0E61
    GoTo _0E83

_0E61:
    InitGlobalTextListMenu 1, 1, 0, VAR_RESULT
    AddListMenuEntry 71, 0, 80
    AddListMenuEntry 72, 1, 81
    AddListMenuEntry 73, 3, 82
    Return

_0E83:
    ShowListMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0EAB
    GoToIfEq VAR_0x8008, 1, _0EE0
    GoTo _0C1C

_0EAB:
    CloseMessage
    ScrCmd_1B4 VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0EC6
    ScrCmd_1B3
    GoTo _0ECF

_0EC6:
    Message 52
    GoTo _0E55

_0ECF:
    BufferPlayerName 0
    OpenMessage
    Call _0E61
    GoTo _0E83

_0EE0:
    ScrCmd_2AB VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0F01
    CloseMessage
    Call _0F94
    OpenSealCapsuleEditor
    GoTo _0F0A

_0F01:
    Message 118
    GoTo _0E55

_0F0A:
    BufferPlayerName 0
    MessageInstant 33
    Call _0E61
    Call _0C06
    FadeScreen 6, 1, 1, 0
    GoTo _0E83

_0F2C:
    PlayFanfare SEQ_SE_DP_PC_LOGIN
    CloseMessage
    ScrCmd_336 VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0F59
    Call _0F94
    ScrCmd_0B1
    ReturnToField
    Call _0F80
    GoTo _0C1C

_0F59:
    Message 131
    GoTo _0C1C

_0F62:
    PlayFanfare SEQ_SE_DP_PC_LOGIN
    CallCommonScript 0x26DF
    GoTo _0C1C

_0F70:
    CloseMessage
    PlayFanfare SEQ_SE_DP_PC_LOGOFF
    Call _0C11
    ReleaseAll
    End

_0F80:
    Call _0C06
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    Return

_0F94:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_16A 90
    Return

_0FA5:
    End

_0FA7:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    OpenSealCapsuleEditor
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

_0FC3:
    Message 37
    ReturnCommonScript
    End

_0FCA:
    LockAll
    ApplyMovement LOCALID_PLAYER, _1250
    ApplyMovement 0, _1258
    WaitMovement
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    BufferPlayerName 0
    Message 40
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    PlaySound SEQ_ASA
    WaitSound
    HealParty
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    CallIfSet FLAG_UNK_0x0090, _1030
    CallIfUnset FLAG_UNK_0x0090, _1035
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1030:
    Message 41
    Return

_1035:
    Message 42
    Return

_103A:
    LockAll
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    SetPlayerState 0x100
    ChangePlayerState
    ApplyMovement LOCALID_PLAYER, _02EC
    WaitMovement
    Message 43
    Call _10C7
    Call _01C1
    CheckBadgeAcquired BADGE_ID_COAL, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _10A2
    Message 44
    ApplyMovement LOCALID_PLAYER, _02F4
    WaitMovement
    SetPlayerState 1
    ChangePlayerState
    ApplyMovement VAR_0x8007, _02E0
    WaitMovement
    Message 45
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_10A2:
    ApplyMovement LOCALID_PLAYER, _02F4
    WaitMovement
    SetPlayerState 1
    ChangePlayerState
    ApplyMovement VAR_0x8007, _02E0
    WaitMovement
    Message 39
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_10C7:
    GetCurrentMapID VAR_0x8004
    GoToIfEq VAR_0x8004, 6, _11BD
    GoToIfEq VAR_0x8004, 36, _11C5
    GoToIfEq VAR_0x8004, 48, _11CD
    GoToIfEq VAR_0x8004, 69, _11D5
    GoToIfEq VAR_0x8004, 101, _11DD
    GoToIfEq VAR_0x8004, 123, _11E5
    GoToIfEq VAR_0x8004, 134, _11ED
    GoToIfEq VAR_0x8004, 151, _11F5
    GoToIfEq VAR_0x8004, 168, _11FD
    GoToIfEq VAR_0x8004, 173, _1205
    GoToIfEq VAR_0x8004, 189, _120D
    GoToIfEq VAR_0x8004, 0x1A4, _1215
    GoToIfEq VAR_0x8004, 0x1AC, _121D
    GoToIfEq VAR_0x8004, 0x1B3, _1225
    GoToIfEq VAR_0x8004, 0x1BB, _122D
    GoToIfEq VAR_0x8004, 0x1C4, _1235
    GoToIfEq VAR_0x8004, 0x1CB, _123D
    GoToIfEq VAR_0x8004, 175, _1245
    SetVar VAR_0x8007, 0
    Return

_11BD:
    SetVar VAR_0x8007, 3
    Return

_11C5:
    SetVar VAR_0x8007, 1
    Return

_11CD:
    SetVar VAR_0x8007, 3
    Return

_11D5:
    SetVar VAR_0x8007, 3
    Return

_11DD:
    SetVar VAR_0x8007, 0
    Return

_11E5:
    SetVar VAR_0x8007, 0
    Return

_11ED:
    SetVar VAR_0x8007, 0
    Return

_11F5:
    SetVar VAR_0x8007, 0
    Return

_11FD:
    SetVar VAR_0x8007, 0
    Return

_1205:
    SetVar VAR_0x8007, 0
    Return

_120D:
    SetVar VAR_0x8007, 0
    Return

_1215:
    SetVar VAR_0x8007, 3
    Return

_121D:
    SetVar VAR_0x8007, 2
    Return

_1225:
    SetVar VAR_0x8007, 0
    Return

_122D:
    SetVar VAR_0x8007, 0
    Return

_1235:
    SetVar VAR_0x8007, 0
    Return

_123D:
    SetVar VAR_0x8007, 0
    Return

_1245:
    SetVar VAR_0x8007, 3
    Return

    .balign 4, 0
_1250:
    FaceWest
    EndMovement

    .balign 4, 0
_1258:
    FaceEast
    EndMovement

    .balign 4, 0
_1260:
    FaceWest
    EndMovement

Common_UnusedMovement:
    FaceNorth
    EndMovement

Common_UnusedMovement2:
    FaceEast
    EndMovement

    .balign 4, 0
_1278:
    FaceSouth
    EndMovement

_1280:
    End

_1282:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_205
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_12A8:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_20C
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_12BA:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 67
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_12CD:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 70
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_12E0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 71
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_12F3:
    CheckItem ITEM_BICYCLE, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _135F
    LockAll
    PlayFanfare SEQ_SE_CONFIRM
    CheckPlayerOnBike VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, _133C
    Message 73
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _1359
    SetPlayerBike TRUE
    CloseMessage
    ReleaseAll
    End

_133C:
    Message 74
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _1359
    SetPlayerBike FALSE
    CloseMessage
    ReleaseAll
    End

_1359:
    CloseMessage
    ReleaseAll
    End

_135F:
    End

_1361:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 76
    WaitABPress
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    ScrCmd_1AC
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_138C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 79
    WaitABPress
    CloseMessage
    ReleaseAll
    End

_139D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_0A5
    ReleaseAll
    End

_13AB:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 82
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_13BE:
    Call _13C8
    ReturnCommonScript
    End

_13C8:
    AddVar VAR_UNK_0x4115, 1
    CallIfGe VAR_UNK_0x4115, 9, _1445
    CallIfEq VAR_UNK_0x4115, 1, _144D
    CallIfEq VAR_UNK_0x4115, 2, _1452
    CallIfEq VAR_UNK_0x4115, 3, _1457
    CallIfEq VAR_UNK_0x4115, 4, _145C
    CallIfEq VAR_UNK_0x4115, 5, _1461
    CallIfEq VAR_UNK_0x4115, 6, _1466
    CallIfEq VAR_UNK_0x4115, 7, _146B
    CallIfEq VAR_UNK_0x4115, 8, _1470
    Return

_1445:
    SetVar VAR_UNK_0x4115, 1
    Return

_144D:
    Message 110
    Return

_1452:
    Message 111
    Return

_1457:
    Message 112
    Return

_145C:
    Message 113
    Return

_1461:
    Message 114
    Return

_1466:
    Message 115
    Return

_146B:
    Message 116
    Return

_1470:
    Message 117
    Return

_1475:
    End

_1477:
    LockAll
    GetCurrentMapID VAR_0x8004
    GoToIfEq VAR_0x8004, 220, _14AC
    GoToIfEq VAR_0x8004, 0x248, _14AC
    GoToIfEq VAR_0x8004, 0x249, _14AC
    GoTo _1570
    End

_14AC:
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfNe VAR_0x8004, 31, _1570
    GoToIfNe VAR_0x8005, 52, _1570
    CheckGameCompleted VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, _1570
    GetNationalDexEnabled VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, _1570
    CheckDistributionEvent DISTRIBUTION_EVENT_ARCEUS, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, _1570
    GoToIfSet FLAG_UNK_0x011E, _1570
    BufferPlayerName 0
    Message 122
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _157B
    BufferPlayerName 0
    Message 123
    CloseMessage
    WaitTime 30, VAR_RESULT
    PlayMusic SEQ_FUE
    WaitTime 0x21C, VAR_RESULT
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    FadeScreen 6, 6, 0, 0x7FFF
    WaitFadeScreen
    Warp MAP_HEADER_HALL_OF_ORIGIN, 0, VAR_0x8004, VAR_0x8005, 0
    FadeScreen 6, 6, 1, 0x7FFF
    WaitFadeScreen
    Message 124
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1570:
    Message 125
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_157B:
    CloseMessage
    ReleaseAll
    End

_1581:
    StopMusic 0
    GetPlayerGender VAR_RESULT
    CallIfEq VAR_RESULT, GENDER_MALE, _15A7
    CallIfEq VAR_RESULT, GENDER_FEMALE, _15AD
    ReturnCommonScript
    End

_15A7:
    ScrCmd_057 SEQ_THE_GIRL
    Return

_15AD:
    ScrCmd_057 SEQ_THE_BOY
    Return

_15B3:
    StopMusic 0
    ScrCmd_057 SEQ_THE_RIV
    ReturnCommonScript
    End

_15BF:
    StopMusic 0
    ScrCmd_057 SEQ_TSURETEKE
    ReturnCommonScript
    End

_15CB:
    StopMusic 0
    ScrCmd_057 SEQ_PL_HANDSOME
    ReturnCommonScript
    End

_15D7:
    FadeOutBGM 0, 30
    StopMusic 0
    PlayDefaultMusic
    ReturnCommonScript
    End

_15E7:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0B3 VAR_RESULT
    SetVar VAR_0x8004, VAR_RESULT
    ScrCmd_2F6 VAR_0x8005, VAR_0x8004, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _1624
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReturnCommonScript
    End

_1624:
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReturnCommonScript
    End

_1636:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8004, TUTOR_LOCATION_ROUTE_212
    GoTo _1672
    End

_164A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8004, TUTOR_LOCATION_SURVIVAL_AREA
    GoTo _1672
    End

_165E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8004, TUTOR_LOCATION_SNOWPOINT_CITY
    GoTo _1672
    End

_1672:
    Message 129
    ShowMoveTutorMoveSelectionMenu 0xFF, VAR_0x8004, VAR_RESULT
    SetVar VAR_0x8003, VAR_RESULT
    GoToIfEq VAR_0x8003, -2, _16A4
    ShowShardsCost 21, 1, VAR_0x8003, VAR_RESULT
    WaitABPress
    CloseShardsCostWindow
    GoTo _16A4
    End

_16A4:
    CloseMessage
    ReleaseAll
    End

_16AA:
    GoToIfSet FLAG_UNK_0x0089, _1706
    GoToIfNe VAR_BATTLE_FACTORY_PRINT_STATE, 4, _1706
    GoToIfNe VAR_BATTLE_HALL_PRINT_STATE, 4, _1706
    GoToIfNe VAR_BATTLE_CASTLE_PRINT_STATE, 4, _1706
    GoToIfNe VAR_BATTLE_ARCADE_PRINT_STATE, 4, _1706
    GoToIfNe VAR_BATTLE_TOWER_PRINT_STATE, 4, _1706
    SetFlag FLAG_UNK_0x0089
    IncrementTrainerScore TRAINER_SCORE_EVENT_UNK_42
    GoTo _1706
    End

_1706:
    ReturnCommonScript
    End

_170A:
    Message 130
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

    .balign 4, 0
