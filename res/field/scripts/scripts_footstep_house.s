#include "macros/scrcmd.inc"
#include "res/text/bank/footstep_house.h"
#include "constants/footstep_house.h"
#include "generated/ribbons.h"

    .data

    ScriptEntry _000A
    ScriptEntry _0010
    ScriptEntryEnd

_000A:
    SetFlag 0x9ED
    End

_0010:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_247 0x8002
    BufferPartyMonSpecies 0, 0x8002
    BufferPlayerName 1
    BufferPartyMonNickname 2, 0x8002
    GetSpeciesFootprintType 0x8000, 0x8001, 0x8002
    GoToIfSet 249, _004B
    SetFlag 249
    Message 0
    CloseMessage
    GoTo _0056

_004B:
    Message 1
    CloseMessage
    GoTo _0056

_0056:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    WaitTime 40, 0x800C
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    Call _008A
    WaitTime 20, 0x800C
    IncrementGameRecord RECORD_UNK_116
    GoTo _0150

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

_0150:
    GoToIfEq 0x8001, FOOTPRINT_TYPE_CUTE, FootstepHouse_CuteType
    GoToIfEq 0x8001, FOOTPRINT_TYPE_TOUGH, FootstepHouse_ToughType
    GoToIfEq 0x8001, FOOTPRINT_TYPE_SCARY, FootstepHouse_ScaryType
    GoToIfEq 0x8001, FOOTPRINT_TYPE_SLOW, FootstepHouse_SlowType
    GoTo FootstepHouse_VoicelessType

FootstepHouse_CuteType:
    GoToIfEq 0x8000, TRUE, FootstepHouse_CuteType_WithPrint
    GoTo FootstepHouse_CuteType_WithoutPrint

FootstepHouse_ToughType:
    GoToIfEq 0x8000, TRUE, FootstepHouse_ToughType_WithPrint
    GoTo FootstepHouse_ToughType_WithoutPrint

FootstepHouse_ScaryType:
    GoToIfEq 0x8000, TRUE, FootstepHouse_ScaryType_WithPrint
    GoTo FootstepHouse_ScaryType_WithoutPrint

FootstepHouse_SlowType:
    GoToIfEq 0x8000, TRUE, FootstepHouse_SlowType_WithPrint
    GoTo FootstepHouse_SlowType_WithoutPrint

FootstepHouse_CuteType_WithPrint:
    ScrCmd_1B9 0x800C, 0x8002
    GoToIfGe 0x800C, 0xFF, FootstepHouse_CuteType_WithPrint_Level5
    GoToIfGe 0x800C, 200, FootstepHouse_CuteType_WithPrint_Level4
    GoToIfGe 0x800C, 150, FootstepHouse_CuteType_WithPrint_Level3
    GoToIfGe 0x800C, 70, FootstepHouse_CuteType_WithPrint_Level2
    GoTo FootstepHouse_CuteType_WithPrint_Level1

FootstepHouse_CuteType_WithoutPrint:
    ScrCmd_1B9 0x800C, 0x8002
    GoToIfGe 0x800C, 0xFF, FootstepHouse_CuteType_WithoutPrint_Level5
    GoToIfGe 0x800C, 200, FootstepHouse_CuteType_WithoutPrint_Level4
    GoToIfGe 0x800C, 150, FootstepHouse_CuteType_WithoutPrint_Level3
    GoToIfGe 0x800C, 70, FootstepHouse_CuteType_WithoutPrint_Level2
    GoTo FootstepHouse_CuteType_WithoutPrint_Level1

FootstepHouse_ToughType_WithPrint:
    ScrCmd_1B9 0x800C, 0x8002
    GoToIfGe 0x800C, 0xFF, FootstepHouse_ToughType_WithPrint_Level5
    GoToIfGe 0x800C, 200, FootstepHouse_ToughType_WithPrint_Level4
    GoToIfGe 0x800C, 150, FootstepHouse_ToughType_WithPrint_Level3
    GoToIfGe 0x800C, 70, FootstepHouse_ToughType_WithPrint_Level2
    GoTo FootstepHouse_ToughType_WithPrint_Level1

FootstepHouse_ToughType_WithoutPrint:
    ScrCmd_1B9 0x800C, 0x8002
    GoToIfGe 0x800C, 0xFF, FootstepHouse_ToughType_WithoutPrint_Level5
    GoToIfGe 0x800C, 200, FootstepHouse_ToughType_WithoutPrint_Level4
    GoToIfGe 0x800C, 150, FootstepHouse_ToughType_WithoutPrint_Level3
    GoToIfGe 0x800C, 70, FootstepHouse_ToughType_WithoutPrint_Level2
    GoTo FootstepHouse_ToughType_WithoutPrint_Level1

FootstepHouse_ScaryType_WithPrint:
    ScrCmd_1B9 0x800C, 0x8002
    GoToIfGe 0x800C, 0xFF, FootstepHouse_ScaryType_WithPrint_Level5
    GoToIfGe 0x800C, 200, FootstepHouse_ScaryType_WithPrint_Level4
    GoToIfGe 0x800C, 150, FootstepHouse_ScaryType_WithPrint_Level3
    GoToIfGe 0x800C, 70, FootstepHouse_ScaryType_WithPrint_Level2
    GoTo FootstepHouse_ScaryType_WithPrint_Level1

FootstepHouse_ScaryType_WithoutPrint:
    ScrCmd_1B9 0x800C, 0x8002
    GoToIfGe 0x800C, 0xFF, FootstepHouse_ScaryType_WithoutPrint_Level5
    GoToIfGe 0x800C, 200, FootstepHouse_ScaryType_WithoutPrint_Level4
    GoToIfGe 0x800C, 150, FootstepHouse_ScaryType_WithoutPrint_Level3
    GoToIfGe 0x800C, 70, FootstepHouse_ScaryType_WithoutPrint_Level2
    GoTo FootstepHouse_ScaryType_WithoutPrint_Level1

FootstepHouse_SlowType_WithPrint:
    ScrCmd_1B9 0x800C, 0x8002
    GoToIfGe 0x800C, 0xFF, FootstepHouse_SlowType_WithPrint_Level5
    GoToIfGe 0x800C, 200, FootstepHouse_SlowType_WithPrint_Level4
    GoToIfGe 0x800C, 150, FootstepHouse_SlowType_WithPrint_Level3
    GoToIfGe 0x800C, 70, FootstepHouse_SlowType_WithPrint_Level2
    GoTo FootstepHouse_SlowType_WithPrint_Level1

FootstepHouse_SlowType_WithoutPrint:
    ScrCmd_1B9 0x800C, 0x8002
    GoToIfGe 0x800C, 0xFF, FootstepHouse_SlowType_WithoutPrint_Level5
    GoToIfGe 0x800C, 200, FootstepHouse_SlowType_WithoutPrint_Level4
    GoToIfGe 0x800C, 150, FootstepHouse_SlowType_WithoutPrint_Level3
    GoToIfGe 0x800C, 70, FootstepHouse_SlowType_WithoutPrint_Level2
    GoTo FootstepHouse_SlowType_WithoutPrint_Level1

FootstepHouse_CuteType_WithPrint_Level1:
    Message footstep_house_cute_type_with_print_level_1
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou

FootstepHouse_CuteType_WithPrint_Level2:
    Message footstep_house_cute_type_with_print_level_2
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou

FootstepHouse_CuteType_WithPrint_Level3:
    Message footstep_house_cute_type_with_print_level_3
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou

FootstepHouse_CuteType_WithPrint_Level4:
    Message footstep_house_cute_type_with_print_level_4
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou

FootstepHouse_CuteType_WithPrint_Level5:
    Message footstep_house_cute_type_with_print_level_5
    GoTo _053E

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
    GoTo _0559

FootstepHouse_ToughType_WithPrint_Level1:
    Message footstep_house_tough_type_with_print_level_1
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou

FootstepHouse_ToughType_WithPrint_Level2:
    Message footstep_house_tough_type_with_print_level_2
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou

FootstepHouse_ToughType_WithPrint_Level3:
    Message footstep_house_tough_type_with_print_level_3
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou

FootstepHouse_ToughType_WithPrint_Level4:
    Message footstep_house_tough_type_with_print_level_4
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou

FootstepHouse_ToughType_WithPrint_Level5:
    Message footstep_house_tough_type_with_print_level_5
    GoTo _053E

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
    GoTo _0559

FootstepHouse_ScaryType_WithPrint_Level1:
    Message footstep_house_scary_type_with_print_level_1
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou

FootstepHouse_ScaryType_WithPrint_Level2:
    Message footstep_house_scary_type_with_print_level_2
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou

FootstepHouse_ScaryType_WithPrint_Level3:
    Message footstep_house_scary_type_with_print_level_3
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou

FootstepHouse_ScaryType_WithPrint_Level4:
    Message footstep_house_scary_type_with_print_level_4
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou

FootstepHouse_ScaryType_WithPrint_Level5:
    Message footstep_house_scary_type_with_print_level_5
    GoTo _053E

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
    GoTo _0559

FootstepHouse_SlowType_WithPrint_Level1:
    Message footstep_house_slow_type_without_print_level_1
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou

FootstepHouse_SlowType_WithPrint_Level2:
    Message footstep_house_slow_type_without_print_level_2
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou

FootstepHouse_SlowType_WithPrint_Level3:
    Message footstep_house_slow_type_without_print_level_3
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou

FootstepHouse_SlowType_WithPrint_Level4:
    Message footstep_house_slow_type_without_print_level_4
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou

FootstepHouse_SlowType_WithPrint_Level5:
    Message footstep_house_slow_type_without_print_level_5
    GoTo _053E

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
    GoTo _0559

_053E:
    PartyMonHasRibbon 0x800C, 0x8002, RIBBON_FOOTPRINT
    GoToIfEq 0x800C, 0, _0602
    GoTo FootstepHouse_AndThatsWhatYourPokemonThinksOfYou

_0559:
    PartyMonHasRibbon 0x800C, 0x8002, RIBBON_FOOTPRINT
    GoToIfEq 0x800C, 0, _0633
    GoTo FootstepHouse_PokemonDoesntLeaveAnyFootprints

FootstepHouse_VoicelessType:
    Message footstep_house_voicless_type
    ScrCmd_1B9 0x800C, 0x8002
    GoToIfLt 0x800C, 0xFF, _05E3
    PartyMonHasRibbon 0x800C, 0x8002, RIBBON_FOOTPRINT
    GoToIfEq 0x800C, 0, _0664
    GoTo _05E3

FootstepHouse_AndThatsWhatYourPokemonThinksOfYou:
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

_05E3:
    CloseMessage
    WaitTime 20, 0x800C
    Call _00ED
    WaitTime 10, 0x800C
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0602:
    CloseMessage
    WaitTime 20, 0x800C
    Call _00ED
    WaitTime 10, 0x800C
    Message 5
    PlaySound SEQ_FANFA1
    Message 8
    WaitSound
    ScrCmd_231 0x8002, 69
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0633:
    CloseMessage
    WaitTime 20, 0x800C
    Call _00ED
    WaitTime 10, 0x800C
    Message 6
    PlaySound SEQ_FANFA1
    Message 8
    WaitSound
    ScrCmd_231 0x8002, 69
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0664:
    CloseMessage
    WaitTime 20, 0x800C
    Call _00ED
    WaitTime 10, 0x800C
    Message 7
    PlaySound SEQ_FANFA1
    Message 8
    WaitSound
    ScrCmd_231 0x8002, 69
    Message 9
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
