#include "macros/scrcmd.inc"
#include "res/text/bank/footstep_house.h"
#include "constants/footstep_house.h"
#include "generated/ribbons.h"

#define VAR_HAS_PRINT 0x8000
#define VAR_FOOTPRINT_TYPE 0x8001
#define VAR_PARTY_SLOT 0x8002

    .data

    ScriptEntry _000A
    ScriptEntry FootstepHouse_DrFootstep
    ScriptEntryEnd

_000A:
    SetFlag 0x9ED
    End

FootstepHouse_DrFootstep:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetFirstNonEggInParty VAR_PARTY_SLOT
    BufferPartyMonSpecies 0, VAR_PARTY_SLOT
    BufferPlayerName 1
    BufferPartyMonNickname 2, VAR_PARTY_SLOT
    GetPartyMonFootprintType VAR_HAS_PRINT, VAR_FOOTPRINT_TYPE, VAR_PARTY_SLOT
    GoToIfSet FLAG_TALKED_TO_DR_FOOTSTEP, FootstepHouse_CheckFeelingsAgain
    SetFlag FLAG_TALKED_TO_DR_FOOTSTEP
    Message footstep_house_pokemon_are_quite_easy_for_me_to_read
    CloseMessage
    GoTo FootstepHouse_FadeScreen

FootstepHouse_CheckFeelingsAgain:
    Message footstep_house_do_you_want_to_check_the_feelings_of_your_pokemon_again
    CloseMessage
    GoTo FootstepHouse_FadeScreen

FootstepHouse_FadeScreen:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    WaitTime 40, 0x800C
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    Call _008A
    WaitTime 20, 0x800C
    IncrementGameRecord RECORD_CHECKED_FOOTPRINTS
    GoTo FootstepHouse_CheckType

_008A:
    GetPlayerMapPos 0x8005, 0x8006
    GoToIfEq 0x8005, 4, _00BD
    GoToIfEq 0x8005, 6, _00C9
    GoToIfEq 0x8006, 5, _00D5
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
    GetPlayerMapPos 0x8005, 0x8006
    GoToIfEq 0x8005, 4, _0120
    GoToIfEq 0x8005, 6, _012C
    GoToIfEq 0x8006, 5, _0138
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
    GoToIfEq VAR_FOOTPRINT_TYPE, FOOTPRINT_TYPE_CUTE, FootstepHouse_CuteType
    GoToIfEq VAR_FOOTPRINT_TYPE, FOOTPRINT_TYPE_TOUGH, FootstepHouse_ToughType
    GoToIfEq VAR_FOOTPRINT_TYPE, FOOTPRINT_TYPE_SCARY, FootstepHouse_ScaryType
    GoToIfEq VAR_FOOTPRINT_TYPE, FOOTPRINT_TYPE_SLOW, FootstepHouse_SlowType
    GoTo FootstepHouse_VoicelessType

FootstepHouse_CuteType:
    GoToIfEq VAR_HAS_PRINT, TRUE, FootstepHouse_CuteType_WithPrint
    GoTo FootstepHouse_CuteType_WithoutPrint

FootstepHouse_ToughType:
    GoToIfEq VAR_HAS_PRINT, TRUE, FootstepHouse_ToughType_WithPrint
    GoTo FootstepHouse_ToughType_WithoutPrint

FootstepHouse_ScaryType:
    GoToIfEq VAR_HAS_PRINT, TRUE, FootstepHouse_ScaryType_WithPrint
    GoTo FootstepHouse_ScaryType_WithoutPrint

FootstepHouse_SlowType:
    GoToIfEq VAR_HAS_PRINT, TRUE, FootstepHouse_SlowType_WithPrint
    GoTo FootstepHouse_SlowType_WithoutPrint

FootstepHouse_CuteType_WithPrint:
    GetFriendshipByPartySlot 0x800C, VAR_PARTY_SLOT
    GoToIfGe 0x800C, 0xFF, FootstepHouse_CuteType_WithPrint_Level5
    GoToIfGe 0x800C, 200, FootstepHouse_CuteType_WithPrint_Level4
    GoToIfGe 0x800C, 150, FootstepHouse_CuteType_WithPrint_Level3
    GoToIfGe 0x800C, 70, FootstepHouse_CuteType_WithPrint_Level2
    GoTo FootstepHouse_CuteType_WithPrint_Level1

FootstepHouse_CuteType_WithoutPrint:
    GetFriendshipByPartySlot 0x800C, VAR_PARTY_SLOT
    GoToIfGe 0x800C, 0xFF, FootstepHouse_CuteType_WithoutPrint_Level5
    GoToIfGe 0x800C, 200, FootstepHouse_CuteType_WithoutPrint_Level4
    GoToIfGe 0x800C, 150, FootstepHouse_CuteType_WithoutPrint_Level3
    GoToIfGe 0x800C, 70, FootstepHouse_CuteType_WithoutPrint_Level2
    GoTo FootstepHouse_CuteType_WithoutPrint_Level1

FootstepHouse_ToughType_WithPrint:
    GetFriendshipByPartySlot 0x800C, VAR_PARTY_SLOT
    GoToIfGe 0x800C, 0xFF, FootstepHouse_ToughType_WithPrint_Level5
    GoToIfGe 0x800C, 200, FootstepHouse_ToughType_WithPrint_Level4
    GoToIfGe 0x800C, 150, FootstepHouse_ToughType_WithPrint_Level3
    GoToIfGe 0x800C, 70, FootstepHouse_ToughType_WithPrint_Level2
    GoTo FootstepHouse_ToughType_WithPrint_Level1

FootstepHouse_ToughType_WithoutPrint:
    GetFriendshipByPartySlot 0x800C, VAR_PARTY_SLOT
    GoToIfGe 0x800C, 0xFF, FootstepHouse_ToughType_WithoutPrint_Level5
    GoToIfGe 0x800C, 200, FootstepHouse_ToughType_WithoutPrint_Level4
    GoToIfGe 0x800C, 150, FootstepHouse_ToughType_WithoutPrint_Level3
    GoToIfGe 0x800C, 70, FootstepHouse_ToughType_WithoutPrint_Level2
    GoTo FootstepHouse_ToughType_WithoutPrint_Level1

FootstepHouse_ScaryType_WithPrint:
    GetFriendshipByPartySlot 0x800C, VAR_PARTY_SLOT
    GoToIfGe 0x800C, 0xFF, FootstepHouse_ScaryType_WithPrint_Level5
    GoToIfGe 0x800C, 200, FootstepHouse_ScaryType_WithPrint_Level4
    GoToIfGe 0x800C, 150, FootstepHouse_ScaryType_WithPrint_Level3
    GoToIfGe 0x800C, 70, FootstepHouse_ScaryType_WithPrint_Level2
    GoTo FootstepHouse_ScaryType_WithPrint_Level1

FootstepHouse_ScaryType_WithoutPrint:
    GetFriendshipByPartySlot 0x800C, VAR_PARTY_SLOT
    GoToIfGe 0x800C, 0xFF, FootstepHouse_ScaryType_WithoutPrint_Level5
    GoToIfGe 0x800C, 200, FootstepHouse_ScaryType_WithoutPrint_Level4
    GoToIfGe 0x800C, 150, FootstepHouse_ScaryType_WithoutPrint_Level3
    GoToIfGe 0x800C, 70, FootstepHouse_ScaryType_WithoutPrint_Level2
    GoTo FootstepHouse_ScaryType_WithoutPrint_Level1

FootstepHouse_SlowType_WithPrint:
    GetFriendshipByPartySlot 0x800C, VAR_PARTY_SLOT
    GoToIfGe 0x800C, 0xFF, FootstepHouse_SlowType_WithPrint_Level5
    GoToIfGe 0x800C, 200, FootstepHouse_SlowType_WithPrint_Level4
    GoToIfGe 0x800C, 150, FootstepHouse_SlowType_WithPrint_Level3
    GoToIfGe 0x800C, 70, FootstepHouse_SlowType_WithPrint_Level2
    GoTo FootstepHouse_SlowType_WithPrint_Level1

FootstepHouse_SlowType_WithoutPrint:
    GetFriendshipByPartySlot 0x800C, VAR_PARTY_SLOT
    GoToIfGe 0x800C, 0xFF, FootstepHouse_SlowType_WithoutPrint_Level5
    GoToIfGe 0x800C, 200, FootstepHouse_SlowType_WithoutPrint_Level4
    GoToIfGe 0x800C, 150, FootstepHouse_SlowType_WithoutPrint_Level3
    GoToIfGe 0x800C, 70, FootstepHouse_SlowType_WithoutPrint_Level2
    GoTo FootstepHouse_SlowType_WithoutPrint_Level1

FootstepHouse_CuteType_WithPrint_Level1:
    Message footstep_house_cute_type_with_print_level_1
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_NoRibbon

FootstepHouse_CuteType_WithPrint_Level2:
    Message footstep_house_cute_type_with_print_level_2
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_NoRibbon

FootstepHouse_CuteType_WithPrint_Level3:
    Message footstep_house_cute_type_with_print_level_3
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_NoRibbon

FootstepHouse_CuteType_WithPrint_Level4:
    Message footstep_house_cute_type_with_print_level_4
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_NoRibbon

FootstepHouse_CuteType_WithPrint_Level5:
    Message footstep_house_cute_type_with_print_level_5
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_TryGiveRibbon

FootstepHouse_CuteType_WithoutPrint_Level1:
    Message footstep_house_cute_type_without_print_level_1
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints

FootstepHouse_CuteType_WithoutPrint_Level2:
    Message footstep_house_cute_type_without_print_level_2
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints

FootstepHouse_CuteType_WithoutPrint_Level3:
    Message footstep_house_cute_type_without_print_level_3
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints

FootstepHouse_CuteType_WithoutPrint_Level4:
    Message footstep_house_cute_type_without_print_level_4
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints

FootstepHouse_CuteType_WithoutPrint_Level5:
    Message footstep_house_cute_type_without_print_level_5
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints_TryGiveRibbon

FootstepHouse_ToughType_WithPrint_Level1:
    Message footstep_house_tough_type_with_print_level_1
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_NoRibbon

FootstepHouse_ToughType_WithPrint_Level2:
    Message footstep_house_tough_type_with_print_level_2
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_NoRibbon

FootstepHouse_ToughType_WithPrint_Level3:
    Message footstep_house_tough_type_with_print_level_3
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_NoRibbon

FootstepHouse_ToughType_WithPrint_Level4:
    Message footstep_house_tough_type_with_print_level_4
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_NoRibbon

FootstepHouse_ToughType_WithPrint_Level5:
    Message footstep_house_tough_type_with_print_level_5
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_TryGiveRibbon

FootstepHouse_ToughType_WithoutPrint_Level1:
    Message footstep_house_tough_type_without_print_level_1
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints

FootstepHouse_ToughType_WithoutPrint_Level2:
    Message footstep_house_tough_type_without_print_level_2
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints

FootstepHouse_ToughType_WithoutPrint_Level3:
    Message footstep_house_tough_type_without_print_level_3
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints

FootstepHouse_ToughType_WithoutPrint_Level4:
    Message footstep_house_tough_type_without_print_level_4
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints

FootstepHouse_ToughType_WithoutPrint_Level5:
    Message footstep_house_tough_type_without_print_level_5
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints_TryGiveRibbon

FootstepHouse_ScaryType_WithPrint_Level1:
    Message footstep_house_scary_type_with_print_level_1
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_NoRibbon

FootstepHouse_ScaryType_WithPrint_Level2:
    Message footstep_house_scary_type_with_print_level_2
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_NoRibbon

FootstepHouse_ScaryType_WithPrint_Level3:
    Message footstep_house_scary_type_with_print_level_3
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_NoRibbon

FootstepHouse_ScaryType_WithPrint_Level4:
    Message footstep_house_scary_type_with_print_level_4
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_NoRibbon

FootstepHouse_ScaryType_WithPrint_Level5:
    Message footstep_house_scary_type_with_print_level_5
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_TryGiveRibbon

FootstepHouse_ScaryType_WithoutPrint_Level1:
    Message footstep_house_scary_type_without_print_level_1
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints

FootstepHouse_ScaryType_WithoutPrint_Level2:
    Message footstep_house_scary_type_without_print_level_2
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints

FootstepHouse_ScaryType_WithoutPrint_Level3:
    Message footstep_house_scary_type_without_print_level_3
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints

FootstepHouse_ScaryType_WithoutPrint_Level4:
    Message footstep_house_scary_type_without_print_level_4
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints

FootstepHouse_ScaryType_WithoutPrint_Level5:
    Message footstep_house_scary_type_without_print_level_5
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints_TryGiveRibbon

FootstepHouse_SlowType_WithPrint_Level1:
    Message footstep_house_slow_type_without_print_level_1
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_NoRibbon

FootstepHouse_SlowType_WithPrint_Level2:
    Message footstep_house_slow_type_without_print_level_2
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_NoRibbon

FootstepHouse_SlowType_WithPrint_Level3:
    Message footstep_house_slow_type_without_print_level_3
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_NoRibbon

FootstepHouse_SlowType_WithPrint_Level4:
    Message footstep_house_slow_type_without_print_level_4
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_NoRibbon

FootstepHouse_SlowType_WithPrint_Level5:
    Message footstep_house_slow_type_without_print_level_5
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_TryGiveRibbon

FootstepHouse_SlowType_WithoutPrint_Level1:
    Message footstep_house_slow_type_with_print_level_1
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints

FootstepHouse_SlowType_WithoutPrint_Level2:
    Message footstep_house_slow_type_with_print_level_2
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints

FootstepHouse_SlowType_WithoutPrint_Level3:
    Message footstep_house_slow_type_with_print_level_3
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints

FootstepHouse_SlowType_WithoutPrint_Level4:
    Message footstep_house_slow_type_with_print_level_4
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints

FootstepHouse_SlowType_WithoutPrint_Level5:
    Message footstep_house_slow_type_with_print_level_5
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints_TryGiveRibbon

FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_TryGiveRibbon:
    GetPartyMonRibbon 0x800C, VAR_PARTY_SLOT, RIBBON_FOOTPRINT
    GoToIfEq 0x800C, FALSE, FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_GiveRibbon
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_NoRibbon

FootstepHouse_PokemonDoesntLeaveAnyFootprints_TryGiveRibbon:
    GetPartyMonRibbon 0x800C, VAR_PARTY_SLOT, RIBBON_FOOTPRINT
    GoToIfEq 0x800C, FALSE, FootstepHouse_PokemonDoesntLeaveAnyFootprints_GiveRibbon
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints

FootstepHouse_VoicelessType:
    Message footstep_house_voiceless_type
    GetFriendshipByPartySlot 0x800C, VAR_PARTY_SLOT
    GoToIfLt 0x800C, 0xFF, FootstepHouse_PokemonSilentType_NoRibbon
    GetPartyMonRibbon 0x800C, VAR_PARTY_SLOT, RIBBON_FOOTPRINT
    GoToIfEq 0x800C, FALSE, FootstepHouse_PokemonSilentType_GiveRibbon
    GoTo FootstepHouse_PokemonSilentType_NoRibbon

FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_NoRibbon:
    CloseMessage
    WaitTime 20, 0x800C
    Call _00ED
    WaitTime 10, 0x800C
    Message footstep_house_and_thats_what_you_pokemon_thinks_of_you
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

FootstepHouse_PokemonDoesntLeaveAnyFootprints:
    CloseMessage
    WaitTime 20, 0x800C
    Call _00ED
    WaitTime 10, 0x800C
    Message footstep_house_pokemon_doesnt_leave_any_footprints
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

FootstepHouse_PokemonSilentType_NoRibbon:
    CloseMessage
    WaitTime 20, 0x800C
    Call _00ED
    WaitTime 10, 0x800C
    Message footstep_house_pokemon_silent_type
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

FootstepHouse_AndThatsWhatYourPokemonThinksOfYou_GiveRibbon:
    CloseMessage
    WaitTime 20, 0x800C
    Call _00ED
    WaitTime 10, 0x800C
    Message footstep_house_and_thats_what_you_pokemon_thinks_of_you_close_bond
    PlaySound SEQ_FANFA1
    Message footstep_house_received_footprint_ribbon
    WaitSound
    SetPartyMonRibbon VAR_PARTY_SLOT, RIBBON_FOOTPRINT
    Message footstep_house_put_the_footprint_ribbon_on_pokemon
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

FootstepHouse_PokemonDoesntLeaveAnyFootprints_GiveRibbon:
    CloseMessage
    WaitTime 20, 0x800C
    Call _00ED
    WaitTime 10, 0x800C
    Message footstep_house_pokemon_doesnt_leave_any_footprints_close_bond
    PlaySound SEQ_FANFA1
    Message footstep_house_received_footprint_ribbon
    WaitSound
    SetPartyMonRibbon VAR_PARTY_SLOT, RIBBON_FOOTPRINT
    Message footstep_house_put_the_footprint_ribbon_on_pokemon
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

FootstepHouse_PokemonSilentType_GiveRibbon:
    CloseMessage
    WaitTime 20, 0x800C
    Call _00ED
    WaitTime 10, 0x800C
    Message footstep_house_pokemon_silent_type_close_bond
    PlaySound SEQ_FANFA1
    Message footstep_house_received_footprint_ribbon
    WaitSound
    SetPartyMonRibbon VAR_PARTY_SLOT, RIBBON_FOOTPRINT
    Message footstep_house_put_the_footprint_ribbon_on_pokemon
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0698:
    MoveAction_071
    MoveAction_015
    MoveAction_072
    EndMovement

    .balign 4, 0
_06A8:
    MoveAction_071
    MoveAction_014
    MoveAction_072
    EndMovement

    .balign 4, 0
_06B8:
    MoveAction_071
    MoveAction_013
    MoveAction_072
    EndMovement

    .balign 4, 0
_06C8:
    MoveAction_071
    MoveAction_012
    MoveAction_072
    EndMovement

    .balign 4, 0
_06D8:
    MoveAction_014
    EndMovement

    .balign 4, 0
_06E0:
    MoveAction_015
    EndMovement

    .balign 4, 0
_06E8:
    MoveAction_012
    EndMovement

    .balign 4, 0
_06F0:
    MoveAction_013
    EndMovement
