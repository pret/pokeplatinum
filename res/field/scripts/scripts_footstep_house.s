#include "macros/scrcmd.inc"
#include "res/text/bank/footstep_house.h"
#include "constants/footstep_house.h"
#include "generated/ribbons.h"

#define LOCALID_HAS_PRINT VAR_0x8000
#define LOCALID_FOOTPRINT_TYPE VAR_0x8001
#define LOCALID_PARTY_SLOT VAR_0x8002


    ScriptEntry _000A
    ScriptEntry FootstepHouse_DrFootstep
    ScriptEntryEnd

_000A:
    SetFlag FLAG_UNK_0x09ED
    End

FootstepHouse_DrFootstep:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetFirstNonEggInParty LOCALID_PARTY_SLOT
    BufferPartyMonSpecies 0, LOCALID_PARTY_SLOT
    BufferPlayerName 1
    BufferPartyMonNickname 2, LOCALID_PARTY_SLOT
    GetPartyMonFootprintType LOCALID_HAS_PRINT, LOCALID_FOOTPRINT_TYPE, LOCALID_PARTY_SLOT
    GoToIfSet FLAG_TALKED_TO_DR_FOOTSTEP, FootstepHouse_CheckFeelingsAgain
    SetFlag FLAG_TALKED_TO_DR_FOOTSTEP
    Message FootstepHouse_Text_PokemonAreQuiteEasyForMeToRead
    CloseMessage
    GoTo FootstepHouse_FadeScreen

FootstepHouse_CheckFeelingsAgain:
    Message FootstepHouse_Text_DoYouWantToCheckTheFeelingsOfYourPokemonAgain
    CloseMessage
    GoTo FootstepHouse_FadeScreen

FootstepHouse_FadeScreen:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    WaitTime 40, VAR_RESULT
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    Call _008A
    WaitTime 20, VAR_RESULT
    IncrementGameRecord RECORD_CHECKED_FOOTPRINTS
    GoTo FootstepHouse_CheckType

_008A:
    GetPlayerMapPos VAR_0x8005, VAR_0x8006
    GoToIfEq VAR_0x8005, 4, _00BD
    GoToIfEq VAR_0x8005, 6, _00C9
    GoToIfEq VAR_0x8006, 5, _00D5
    GoTo _00E1

_00BD:
    ApplyMovement 0, _0698
    WaitMovement
    Return

_00C9:
    ApplyMovement 0, _06A8
    WaitMovement
    Return

_00D5:
    ApplyMovement 0, _06B8
    WaitMovement
    Return

_00E1:
    ApplyMovement 0, _06C8
    WaitMovement
    Return

_00ED:
    GetPlayerMapPos VAR_0x8005, VAR_0x8006
    GoToIfEq VAR_0x8005, 4, _0120
    GoToIfEq VAR_0x8005, 6, _012C
    GoToIfEq VAR_0x8006, 5, _0138
    GoTo _0144

_0120:
    ApplyMovement 0, _06D8
    WaitMovement
    Return

_012C:
    ApplyMovement 0, _06E0
    WaitMovement
    Return

_0138:
    ApplyMovement 0, _06E8
    WaitMovement
    Return

_0144:
    ApplyMovement 0, _06F0
    WaitMovement
    Return

FootstepHouse_CheckType:
    GoToIfEq LOCALID_FOOTPRINT_TYPE, FOOTPRINT_TYPE_CUTE, FootstepHouse_CuteType
    GoToIfEq LOCALID_FOOTPRINT_TYPE, FOOTPRINT_TYPE_TOUGH, FootstepHouse_ToughType
    GoToIfEq LOCALID_FOOTPRINT_TYPE, FOOTPRINT_TYPE_SCARY, FootstepHouse_ScaryType
    GoToIfEq LOCALID_FOOTPRINT_TYPE, FOOTPRINT_TYPE_SLOW, FootstepHouse_SlowType
    GoTo FootstepHouse_VoicelessType

FootstepHouse_CuteType:
    GoToIfEq LOCALID_HAS_PRINT, TRUE, FootstepHouse_CuteType_WithPrint
    GoTo FootstepHouse_CuteType_WithoutPrint

FootstepHouse_ToughType:
    GoToIfEq LOCALID_HAS_PRINT, TRUE, FootstepHouse_ToughType_WithPrint
    GoTo FootstepHouse_ToughType_WithoutPrint

FootstepHouse_ScaryType:
    GoToIfEq LOCALID_HAS_PRINT, TRUE, FootstepHouse_ScaryType_WithPrint
    GoTo FootstepHouse_ScaryType_WithoutPrint

FootstepHouse_SlowType:
    GoToIfEq LOCALID_HAS_PRINT, TRUE, FootstepHouse_SlowType_WithPrint
    GoTo FootstepHouse_SlowType_WithoutPrint

FootstepHouse_CuteType_WithPrint:
    GetPartyMonFriendship VAR_RESULT, LOCALID_PARTY_SLOT
    GoToIfGe VAR_RESULT, 0xFF, FootstepHouse_CuteType_WithPrint_Level5
    GoToIfGe VAR_RESULT, 200, FootstepHouse_CuteType_WithPrint_Level4
    GoToIfGe VAR_RESULT, 150, FootstepHouse_CuteType_WithPrint_Level3
    GoToIfGe VAR_RESULT, 70, FootstepHouse_CuteType_WithPrint_Level2
    GoTo FootstepHouse_CuteType_WithPrint_Level1

FootstepHouse_CuteType_WithoutPrint:
    GetPartyMonFriendship VAR_RESULT, LOCALID_PARTY_SLOT
    GoToIfGe VAR_RESULT, 0xFF, FootstepHouse_CuteType_WithoutPrint_Level5
    GoToIfGe VAR_RESULT, 200, FootstepHouse_CuteType_WithoutPrint_Level4
    GoToIfGe VAR_RESULT, 150, FootstepHouse_CuteType_WithoutPrint_Level3
    GoToIfGe VAR_RESULT, 70, FootstepHouse_CuteType_WithoutPrint_Level2
    GoTo FootstepHouse_CuteType_WithoutPrint_Level1

FootstepHouse_ToughType_WithPrint:
    GetPartyMonFriendship VAR_RESULT, LOCALID_PARTY_SLOT
    GoToIfGe VAR_RESULT, 0xFF, FootstepHouse_ToughType_WithPrint_Level5
    GoToIfGe VAR_RESULT, 200, FootstepHouse_ToughType_WithPrint_Level4
    GoToIfGe VAR_RESULT, 150, FootstepHouse_ToughType_WithPrint_Level3
    GoToIfGe VAR_RESULT, 70, FootstepHouse_ToughType_WithPrint_Level2
    GoTo FootstepHouse_ToughType_WithPrint_Level1

FootstepHouse_ToughType_WithoutPrint:
    GetPartyMonFriendship VAR_RESULT, LOCALID_PARTY_SLOT
    GoToIfGe VAR_RESULT, 0xFF, FootstepHouse_ToughType_WithoutPrint_Level5
    GoToIfGe VAR_RESULT, 200, FootstepHouse_ToughType_WithoutPrint_Level4
    GoToIfGe VAR_RESULT, 150, FootstepHouse_ToughType_WithoutPrint_Level3
    GoToIfGe VAR_RESULT, 70, FootstepHouse_ToughType_WithoutPrint_Level2
    GoTo FootstepHouse_ToughType_WithoutPrint_Level1

FootstepHouse_ScaryType_WithPrint:
    GetPartyMonFriendship VAR_RESULT, LOCALID_PARTY_SLOT
    GoToIfGe VAR_RESULT, 0xFF, FootstepHouse_ScaryType_WithPrint_Level5
    GoToIfGe VAR_RESULT, 200, FootstepHouse_ScaryType_WithPrint_Level4
    GoToIfGe VAR_RESULT, 150, FootstepHouse_ScaryType_WithPrint_Level3
    GoToIfGe VAR_RESULT, 70, FootstepHouse_ScaryType_WithPrint_Level2
    GoTo FootstepHouse_ScaryType_WithPrint_Level1

FootstepHouse_ScaryType_WithoutPrint:
    GetPartyMonFriendship VAR_RESULT, LOCALID_PARTY_SLOT
    GoToIfGe VAR_RESULT, 0xFF, FootstepHouse_ScaryType_WithoutPrint_Level5
    GoToIfGe VAR_RESULT, 200, FootstepHouse_ScaryType_WithoutPrint_Level4
    GoToIfGe VAR_RESULT, 150, FootstepHouse_ScaryType_WithoutPrint_Level3
    GoToIfGe VAR_RESULT, 70, FootstepHouse_ScaryType_WithoutPrint_Level2
    GoTo FootstepHouse_ScaryType_WithoutPrint_Level1

FootstepHouse_SlowType_WithPrint:
    GetPartyMonFriendship VAR_RESULT, LOCALID_PARTY_SLOT
    GoToIfGe VAR_RESULT, 0xFF, FootstepHouse_SlowType_WithPrint_Level5
    GoToIfGe VAR_RESULT, 200, FootstepHouse_SlowType_WithPrint_Level4
    GoToIfGe VAR_RESULT, 150, FootstepHouse_SlowType_WithPrint_Level3
    GoToIfGe VAR_RESULT, 70, FootstepHouse_SlowType_WithPrint_Level2
    GoTo FootstepHouse_SlowType_WithPrint_Level1

FootstepHouse_SlowType_WithoutPrint:
    GetPartyMonFriendship VAR_RESULT, LOCALID_PARTY_SLOT
    GoToIfGe VAR_RESULT, 0xFF, FootstepHouse_SlowType_WithoutPrint_Level5
    GoToIfGe VAR_RESULT, 200, FootstepHouse_SlowType_WithoutPrint_Level4
    GoToIfGe VAR_RESULT, 150, FootstepHouse_SlowType_WithoutPrint_Level3
    GoToIfGe VAR_RESULT, 70, FootstepHouse_SlowType_WithoutPrint_Level2
    GoTo FootstepHouse_SlowType_WithoutPrint_Level1

FootstepHouse_CuteType_WithPrint_Level1:
    Message FootstepHouse_Text_CuteType_WithPrint_Level1
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_NoRibbon

FootstepHouse_CuteType_WithPrint_Level2:
    Message FootstepHouse_Text_CuteType_WithPrint_Level2
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_NoRibbon

FootstepHouse_CuteType_WithPrint_Level3:
    Message FootstepHouse_Text_CuteType_WithPrint_Level3
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_NoRibbon

FootstepHouse_CuteType_WithPrint_Level4:
    Message FootstepHouse_Text_CuteType_WithPrint_Level4
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_NoRibbon

FootstepHouse_CuteType_WithPrint_Level5:
    Message FootstepHouse_Text_CuteType_WithPrint_Level5
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_TryGiveRibbon

FootstepHouse_CuteType_WithoutPrint_Level1:
    Message FootstepHouse_Text_CuteType_WithoutPrint_Level1
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints

FootstepHouse_CuteType_WithoutPrint_Level2:
    Message FootstepHouse_Text_CuteType_WithoutPrint_Level2
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints

FootstepHouse_CuteType_WithoutPrint_Level3:
    Message FootstepHouse_Text_CuteType_WithoutPrint_Level3
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints

FootstepHouse_CuteType_WithoutPrint_Level4:
    Message FootstepHouse_Text_CuteType_WithoutPrint_Level4
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints

FootstepHouse_CuteType_WithoutPrint_Level5:
    Message FootstepHouse_Text_CuteType_WithoutPrint_Level5
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints_TryGiveRibbon

FootstepHouse_ToughType_WithPrint_Level1:
    Message FootstepHouse_Text_ToughType_WithPrint_Level1
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_NoRibbon

FootstepHouse_ToughType_WithPrint_Level2:
    Message FootstepHouse_Text_ToughType_WithPrint_Level2
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_NoRibbon

FootstepHouse_ToughType_WithPrint_Level3:
    Message FootstepHouse_Text_ToughType_WithPrint_Level3
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_NoRibbon

FootstepHouse_ToughType_WithPrint_Level4:
    Message FootstepHouse_Text_ToughType_WithPrint_Level4
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_NoRibbon

FootstepHouse_ToughType_WithPrint_Level5:
    Message FootstepHouse_Text_ToughType_WithPrint_Level5
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_TryGiveRibbon

FootstepHouse_ToughType_WithoutPrint_Level1:
    Message FootstepHouse_Text_ToughType_WithoutPrint_Level1
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints

FootstepHouse_ToughType_WithoutPrint_Level2:
    Message FootstepHouse_Text_ToughType_WithoutPrint_Level2
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints

FootstepHouse_ToughType_WithoutPrint_Level3:
    Message FootstepHouse_Text_ToughType_WithoutPrint_Level3
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints

FootstepHouse_ToughType_WithoutPrint_Level4:
    Message FootstepHouse_Text_ToughType_WithoutPrint_Level4
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints

FootstepHouse_ToughType_WithoutPrint_Level5:
    Message FootstepHouse_Text_ToughType_WithoutPrint_Level5
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints_TryGiveRibbon

FootstepHouse_ScaryType_WithPrint_Level1:
    Message FootstepHouse_Text_ScaryType_WithPrint_Level1
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_NoRibbon

FootstepHouse_ScaryType_WithPrint_Level2:
    Message FootstepHouse_Text_ScaryType_WithPrint_Level2
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_NoRibbon

FootstepHouse_ScaryType_WithPrint_Level3:
    Message FootstepHouse_Text_ScaryType_WithPrint_Level3
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_NoRibbon

FootstepHouse_ScaryType_WithPrint_Level4:
    Message FootstepHouse_Text_ScaryType_WithPrint_Level4
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_NoRibbon

FootstepHouse_ScaryType_WithPrint_Level5:
    Message FootstepHouse_Text_ScaryType_WithPrint_Level5
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_TryGiveRibbon

FootstepHouse_ScaryType_WithoutPrint_Level1:
    Message FootstepHouse_Text_ScaryType_WithoutPrint_Level1
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints

FootstepHouse_ScaryType_WithoutPrint_Level2:
    Message FootstepHouse_Text_ScaryType_WithoutPrint_Level2
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints

FootstepHouse_ScaryType_WithoutPrint_Level3:
    Message FootstepHouse_Text_ScaryType_WithoutPrint_Level3
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints

FootstepHouse_ScaryType_WithoutPrint_Level4:
    Message FootstepHouse_Text_ScaryType_WithoutPrint_Level4
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints

FootstepHouse_ScaryType_WithoutPrint_Level5:
    Message FootstepHouse_Text_ScaryType_WithoutPrint_Level5
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints_TryGiveRibbon

FootstepHouse_SlowType_WithPrint_Level1:
    Message FootstepHouse_Text_SlowType_WithoutPrint_Level1
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_NoRibbon

FootstepHouse_SlowType_WithPrint_Level2:
    Message FootstepHouse_Text_SlowType_WithoutPrint_Level2
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_NoRibbon

FootstepHouse_SlowType_WithPrint_Level3:
    Message FootstepHouse_Text_SlowType_WithoutPrint_Level3
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_NoRibbon

FootstepHouse_SlowType_WithPrint_Level4:
    Message FootstepHouse_Text_SlowType_WithoutPrint_Level4
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_NoRibbon

FootstepHouse_SlowType_WithPrint_Level5:
    Message FootstepHouse_Text_SlowType_WithoutPrint_Level5
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_TryGiveRibbon

FootstepHouse_SlowType_WithoutPrint_Level1:
    Message FootstepHouse_Text_SlowType_WithPrint_Level1
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints

FootstepHouse_SlowType_WithoutPrint_Level2:
    Message FootstepHouse_Text_SlowType_WithPrint_Level2
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints

FootstepHouse_SlowType_WithoutPrint_Level3:
    Message FootstepHouse_Text_SlowType_WithPrint_Level3
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints

FootstepHouse_SlowType_WithoutPrint_Level4:
    Message FootstepHouse_Text_SlowType_WithPrint_Level4
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints

FootstepHouse_SlowType_WithoutPrint_Level5:
    Message FootstepHouse_Text_SlowType_WithPrint_Level5
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints_TryGiveRibbon

FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_TryGiveRibbon:
    GetPartyMonRibbon VAR_RESULT, LOCALID_PARTY_SLOT, RIBBON_FOOTPRINT
    GoToIfEq VAR_RESULT, FALSE, FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_GiveRibbon
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_NoRibbon

FootstepHouse_PokemonDoesntLeaveAnyFootprints_TryGiveRibbon:
    GetPartyMonRibbon VAR_RESULT, LOCALID_PARTY_SLOT, RIBBON_FOOTPRINT
    GoToIfEq VAR_RESULT, FALSE, FootstepHouse_PokemonDoesntLeaveAnyFootprints_GiveRibbon
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints

FootstepHouse_VoicelessType:
    Message FootstepHouse_Text_SilentType
    GetPartyMonFriendship VAR_RESULT, LOCALID_PARTY_SLOT
    GoToIfLt VAR_RESULT, 0xFF, FootstepHouse_PokemonSilentType_NoRibbon
    GetPartyMonRibbon VAR_RESULT, LOCALID_PARTY_SLOT, RIBBON_FOOTPRINT
    GoToIfEq VAR_RESULT, FALSE, FootstepHouse_PokemonSilentType_GiveRibbon
    GoTo FootstepHouse_PokemonSilentType_NoRibbon

FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_NoRibbon:
    CloseMessage
    WaitTime 20, VAR_RESULT
    Call _00ED
    WaitTime 10, VAR_RESULT
    Message FootstepHouse_Text_AndThatsWhatYourPokemonThinksOfYou
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

FootstepHouse_PokemonDoesntLeaveAnyFootprints:
    CloseMessage
    WaitTime 20, VAR_RESULT
    Call _00ED
    WaitTime 10, VAR_RESULT
    Message FootstepHouse_Text_PokemonDoesntLeaveAnyFootprints
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

FootstepHouse_PokemonSilentType_NoRibbon:
    CloseMessage
    WaitTime 20, VAR_RESULT
    Call _00ED
    WaitTime 10, VAR_RESULT
    Message FootstepHouse_Text_PokemonSilentType
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_GiveRibbon:
    CloseMessage
    WaitTime 20, VAR_RESULT
    Call _00ED
    WaitTime 10, VAR_RESULT
    Message FootstepHouse_Text_AndThatsWhatYourPokemonThinksOfYou_CloseBond
    PlaySound SEQ_FANFA1
    Message FootstepHouse_Text_PlayerReceivedFootprintRibbon
    WaitSound
    SetPartyMonRibbon LOCALID_PARTY_SLOT, RIBBON_FOOTPRINT
    Message FootstepHouse_Text_PlayerPutTheFootprintRibbonOnPokemon
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

FootstepHouse_PokemonDoesntLeaveAnyFootprints_GiveRibbon:
    CloseMessage
    WaitTime 20, VAR_RESULT
    Call _00ED
    WaitTime 10, VAR_RESULT
    Message FootstepHouse_Text_PokemonDoesntLeaveAnyFootprints_CloseBond
    PlaySound SEQ_FANFA1
    Message FootstepHouse_Text_PlayerReceivedFootprintRibbon
    WaitSound
    SetPartyMonRibbon LOCALID_PARTY_SLOT, RIBBON_FOOTPRINT
    Message FootstepHouse_Text_PlayerPutTheFootprintRibbonOnPokemon
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

FootstepHouse_PokemonSilentType_GiveRibbon:
    CloseMessage
    WaitTime 20, VAR_RESULT
    Call _00ED
    WaitTime 10, VAR_RESULT
    Message FootstepHouse_Text_SilentType_CloseBond
    PlaySound SEQ_FANFA1
    Message FootstepHouse_Text_PlayerReceivedFootprintRibbon
    WaitSound
    SetPartyMonRibbon LOCALID_PARTY_SLOT, RIBBON_FOOTPRINT
    Message FootstepHouse_Text_PlayerPutTheFootprintRibbonOnPokemon
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0698:
    LockDir
    WalkNormalEast
    UnlockDir
    EndMovement

    .balign 4, 0
_06A8:
    LockDir
    WalkNormalWest
    UnlockDir
    EndMovement

    .balign 4, 0
_06B8:
    LockDir
    WalkNormalSouth
    UnlockDir
    EndMovement

    .balign 4, 0
_06C8:
    LockDir
    WalkNormalNorth
    UnlockDir
    EndMovement

    .balign 4, 0
_06D8:
    WalkNormalWest
    EndMovement

    .balign 4, 0
_06E0:
    WalkNormalEast
    EndMovement

    .balign 4, 0
_06E8:
    WalkNormalNorth
    EndMovement

    .balign 4, 0
_06F0:
    WalkNormalSouth
    EndMovement
