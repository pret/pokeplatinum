#include "macros/scrcmd.inc"
#include "res/text/bank/resort_area_ribbon_syndicate_1f.h"
#include "generated/ribbons.h"


    ScriptEntry _00C0
    ScriptEntry _00D6
    ScriptEntry _0269
    ScriptEntry _027C
    ScriptEntry _02BA
    ScriptEntry _02D9
    ScriptEntry _003F
    ScriptEntry _0022
    ScriptEntryEnd

_0022:
    GoToIfSet FLAG_UNK_0x00FA, _002F
    End

_002F:
    SetObjectEventPos 0, 16, 14
    SetObjectEventDir 0, DIR_SOUTH
    End

_003F:
    LockAll
    WaitTime 20, VAR_RESULT
    CountPartyRibbons VAR_0x8004
    GoToIfLt VAR_0x8004, 10, _0078
    SetVar VAR_UNK_0x40A7, 1
    SetFlag FLAG_UNK_0x00FA
    BufferPlayerName 0
    Message 1
    CloseMessage
    ApplyMovement 0, _00AC
    WaitMovement
    ReleaseAll
    End

_0078:
    Message 0
    CloseMessage
    WaitTime 20, VAR_RESULT
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_RESORT_AREA, 0, 0x338, 0x1C6, DIR_SOUTH
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

    .balign 4, 0
_00AC:
    FaceWest
    LockDir
    WalkNormalEast
    UnlockDir
    EndMovement

_00C0:
    BufferPlayerName 0
    NPCMessage 2
    End

_00D6:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetFirstNonEggInParty VAR_0x8000
    BufferPlayerName 0
    BufferPartyMonSpecies 2, VAR_0x8000
    GetPartyMonRibbon VAR_RESULT, VAR_0x8000, RIBBON_GORGEOUS_ROYAL
    GoToIfEq VAR_RESULT, 1, _0244
    GetPartyMonRibbon VAR_RESULT, VAR_0x8000, RIBBON_ROYAL
    GoToIfEq VAR_RESULT, 1, _01E7
    GetPartyMonRibbon VAR_RESULT, VAR_0x8000, RIBBON_GORGEOUS
    GoToIfEq VAR_RESULT, 1, _018A
    GoTo _012F

_012F:
    ShowMoney 20, 2
    Message 3
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _025C
    GoToIfNotEnoughMoney 10000, _024F
    AddToGameRecord RECORD_MONEY_SPENT, 10000
    RemoveMoney 10000
    UpdateMoneyDisplay
    PlaySE SEQ_SE_DP_REGI
    WaitSE SEQ_SE_DP_REGI
    Message 7
    Message 8
    WaitButton
    SetPartyMonRibbon VAR_0x8000, RIBBON_GORGEOUS
    CloseMessage
    HideMoney
    ReleaseAll
    End

_018A:
    ShowMoney 20, 2
    Message 4
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _025C
    GoToIfNotEnoughMoney 100000, _024F
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 100000
    RemoveMoney 100000
    UpdateMoneyDisplay
    PlaySE SEQ_SE_DP_REGI
    WaitSE SEQ_SE_DP_REGI
    Message 9
    Message 10
    WaitButton
    SetPartyMonRibbon VAR_0x8000, RIBBON_ROYAL
    CloseMessage
    HideMoney
    ReleaseAll
    End

_01E7:
    ShowMoney 20, 2
    Message 5
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _025C
    GoToIfNotEnoughMoney 999999, _024F
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 999999
    RemoveMoney 999999
    UpdateMoneyDisplay
    PlaySE SEQ_SE_DP_REGI
    WaitSE SEQ_SE_DP_REGI
    Message 11
    Message 12
    WaitButton
    SetPartyMonRibbon VAR_0x8000, RIBBON_GORGEOUS_ROYAL
    CloseMessage
    HideMoney
    ReleaseAll
    End

_0244:
    Message 6
    WaitButton
    CloseMessage
    ReleaseAll
    End

_024F:
    Message 13
    WaitButton
    CloseMessage
    HideMoney
    ReleaseAll
    End

_025C:
    Message 14
    WaitButton
    CloseMessage
    HideMoney
    ReleaseAll
    End

_0269:
    NPCMessage 15
    End

_027C:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _02A4
    GoToIfEq VAR_RESULT, GENDER_FEMALE, _02AF
    End

_02A4:
    Message 16
    WaitButton
    CloseMessage
    ReleaseAll
    End

_02AF:
    Message 17
    WaitButton
    CloseMessage
    ReleaseAll
    End

_02BA:
    PokemonCryAndMessage SPECIES_SKITTY, 18
    End

_02D9:
    PokemonCryAndMessage SPECIES_PSYDUCK, 19
    End
