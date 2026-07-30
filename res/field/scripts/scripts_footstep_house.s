#include "macros/scrcmd.inc"
#include "res/text/bank/footstep_house.h"
#include "res/field/events/events_footstep_house.h"
#include "constants/footstep_house.h"
#include "generated/ribbons.h"

#define LOCAL_VAR_HAS_PRINT      VAR_0x8000
#define LOCAL_VAR_FOOTPRINT_TYPE VAR_0x8001
#define LOCAL_VAR_PARTY_SLOT     VAR_0x8002


    ScriptEntry FootstepHouse_OnTransition
    ScriptEntry FootstepHouse_DrFootstep
    ScriptEntryEnd

FootstepHouse_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_DOCTOR_FOOTSTEPS_HOUSE
    End

FootstepHouse_DrFootstep:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetFirstNonEggInParty LOCAL_VAR_PARTY_SLOT
    BufferPartyMonSpecies 0, LOCAL_VAR_PARTY_SLOT
    BufferPlayerName 1
    BufferPartyMonNickname 2, LOCAL_VAR_PARTY_SLOT
    GetPartyMonFootprintType LOCAL_VAR_HAS_PRINT, LOCAL_VAR_FOOTPRINT_TYPE, LOCAL_VAR_PARTY_SLOT
    GoToIfSet FLAG_TALKED_TO_DR_FOOTSTEP, FootstepHouse_CheckFeelingsAgain
    SetFlag FLAG_TALKED_TO_DR_FOOTSTEP
    Message FootstepHouse_Text_PokemonEasyToRead
    CloseMessage
    GoTo FootstepHouse_FadeScreen

FootstepHouse_CheckFeelingsAgain:
    Message FootstepHouse_Text_CheckFeelingsAgain
    CloseMessage
    GoTo FootstepHouse_FadeScreen

FootstepHouse_FadeScreen:
    FadeScreenOut
    WaitFadeScreen
    WaitTime 40, VAR_RESULT
    FadeScreenIn
    WaitFadeScreen
    Call FootstepHouse_DrFootstepStepBack
    WaitTime 20, VAR_RESULT
    IncrementGameRecord RECORD_CHECKED_FOOTPRINTS
    GoTo FootstepHouse_CheckType

FootstepHouse_DrFootstepStepBack:
    GetPlayerMapPos VAR_0x8005, VAR_0x8006
    GoToIfEq VAR_0x8005, 4, FootstepHouse_DrFootstepStepBackX4
    GoToIfEq VAR_0x8005, 6, FootstepHouse_DrFootstepStepBackX6
    GoToIfEq VAR_0x8006, 5, FootstepHouse_DrFootstepStepBackZ5
    GoTo FootstepHouse_DrFootstepStepBackZ7

FootstepHouse_DrFootstepStepBackX4:
    ApplyMovement LOCALID_DR_FOOTSTEP, FootstepHouse_Movement_DrFootstepStepBackEast
    WaitMovement
    Return

FootstepHouse_DrFootstepStepBackX6:
    ApplyMovement LOCALID_DR_FOOTSTEP, FootstepHouse_Movement_DrFootstepStepBackWest
    WaitMovement
    Return

FootstepHouse_DrFootstepStepBackZ5:
    ApplyMovement LOCALID_DR_FOOTSTEP, FootstepHouse_Movement_DrFootstepStepBackSouth
    WaitMovement
    Return

FootstepHouse_DrFootstepStepBackZ7:
    ApplyMovement LOCALID_DR_FOOTSTEP, FootstepHouse_Movement_DrFootstepStepBackNorth
    WaitMovement
    Return

FootstepHouse_DrFootstepWalkToPlayer:
    GetPlayerMapPos VAR_0x8005, VAR_0x8006
    GoToIfEq VAR_0x8005, 4, FootstepHouse_DrFootstepWalkToPlayerX4
    GoToIfEq VAR_0x8005, 6, FootstepHouse_DrFootstepWalkToPlayerX6
    GoToIfEq VAR_0x8006, 5, FootstepHouse_DrFootstepWalkToPlayerZ5
    GoTo FootstepHouse_DrFootstepWalkToPlayerZ7

FootstepHouse_DrFootstepWalkToPlayerX4:
    ApplyMovement LOCALID_DR_FOOTSTEP, FootstepHouse_Movement_DrFootstepWalkToPlayerX4
    WaitMovement
    Return

FootstepHouse_DrFootstepWalkToPlayerX6:
    ApplyMovement LOCALID_DR_FOOTSTEP, FootstepHouse_Movement_DrFootstepWalkToPlayerX6
    WaitMovement
    Return

FootstepHouse_DrFootstepWalkToPlayerZ5:
    ApplyMovement LOCALID_DR_FOOTSTEP, FootstepHouse_Movement_DrFootstepWalkToPlayerZ5
    WaitMovement
    Return

FootstepHouse_DrFootstepWalkToPlayerZ7:
    ApplyMovement LOCALID_DR_FOOTSTEP, FootstepHouse_Movement_DrFootstepWalkToPlayerZ7
    WaitMovement
    Return

FootstepHouse_CheckType:
    GoToIfEq LOCAL_VAR_FOOTPRINT_TYPE, FOOTPRINT_TYPE_CUTE, FootstepHouse_CuteType
    GoToIfEq LOCAL_VAR_FOOTPRINT_TYPE, FOOTPRINT_TYPE_TOUGH, FootstepHouse_ToughType
    GoToIfEq LOCAL_VAR_FOOTPRINT_TYPE, FOOTPRINT_TYPE_SCARY, FootstepHouse_ScaryType
    GoToIfEq LOCAL_VAR_FOOTPRINT_TYPE, FOOTPRINT_TYPE_SLOW, FootstepHouse_SlowType
    GoTo FootstepHouse_VoicelessType

FootstepHouse_CuteType:
    GoToIfEq LOCAL_VAR_HAS_PRINT, TRUE, FootstepHouse_Cute_WithPrint
    GoTo FootstepHouse_Cute_NoPrint

FootstepHouse_ToughType:
    GoToIfEq LOCAL_VAR_HAS_PRINT, TRUE, FootstepHouse_Tough_WithPrint
    GoTo FootstepHouse_Tough_NoPrint

FootstepHouse_ScaryType:
    GoToIfEq LOCAL_VAR_HAS_PRINT, TRUE, FootstepHouse_Scary_WithPrint
    GoTo FootstepHouse_Scary_NoPrint

FootstepHouse_SlowType:
    GoToIfEq LOCAL_VAR_HAS_PRINT, TRUE, FootstepHouse_Slow_WithPrint
    GoTo FootstepHouse_Slow_NoPrint

FootstepHouse_Cute_WithPrint:
    GetPartyMonFriendship VAR_RESULT, LOCAL_VAR_PARTY_SLOT
    GoToIfGe VAR_RESULT, 255, FootstepHouse_Cute_WithPrint_Level5
    GoToIfGe VAR_RESULT, 200, FootstepHouse_Cute_WithPrint_Level4
    GoToIfGe VAR_RESULT, 150, FootstepHouse_Cute_WithPrint_Level3
    GoToIfGe VAR_RESULT, 70, FootstepHouse_Cute_WithPrint_Level2
    GoTo FootstepHouse_Cute_WithPrint_Level1

FootstepHouse_Cute_NoPrint:
    GetPartyMonFriendship VAR_RESULT, LOCAL_VAR_PARTY_SLOT
    GoToIfGe VAR_RESULT, 255, FootstepHouse_Cute_NoPrint_Level5
    GoToIfGe VAR_RESULT, 200, FootstepHouse_Cute_NoPrint_Level4
    GoToIfGe VAR_RESULT, 150, FootstepHouse_Cute_NoPrint_Level3
    GoToIfGe VAR_RESULT, 70, FootstepHouse_Cute_NoPrint_Level2
    GoTo FootstepHouse_Cute_NoPrint_Level1

FootstepHouse_Tough_WithPrint:
    GetPartyMonFriendship VAR_RESULT, LOCAL_VAR_PARTY_SLOT
    GoToIfGe VAR_RESULT, 255, FootstepHouse_Tough_WithPrint_Level5
    GoToIfGe VAR_RESULT, 200, FootstepHouse_Tough_WithPrint_Level4
    GoToIfGe VAR_RESULT, 150, FootstepHouse_Tough_WithPrint_Level3
    GoToIfGe VAR_RESULT, 70, FootstepHouse_Tough_WithPrint_Level2
    GoTo FootstepHouse_Tough_WithPrint_Level1

FootstepHouse_Tough_NoPrint:
    GetPartyMonFriendship VAR_RESULT, LOCAL_VAR_PARTY_SLOT
    GoToIfGe VAR_RESULT, 255, FootstepHouse_Tough_NoPrint_Level5
    GoToIfGe VAR_RESULT, 200, FootstepHouse_Tough_NoPrint_Level4
    GoToIfGe VAR_RESULT, 150, FootstepHouse_Tough_NoPrint_Level3
    GoToIfGe VAR_RESULT, 70, FootstepHouse_Tough_NoPrint_Level2
    GoTo FootstepHouse_Tough_NoPrint_Level1

FootstepHouse_Scary_WithPrint:
    GetPartyMonFriendship VAR_RESULT, LOCAL_VAR_PARTY_SLOT
    GoToIfGe VAR_RESULT, 255, FootstepHouse_Scary_WithPrint_Level5
    GoToIfGe VAR_RESULT, 200, FootstepHouse_Scary_WithPrint_Level4
    GoToIfGe VAR_RESULT, 150, FootstepHouse_Scary_WithPrint_Level3
    GoToIfGe VAR_RESULT, 70, FootstepHouse_Scary_WithPrint_Level2
    GoTo FootstepHouse_Scary_WithPrint_Level1

FootstepHouse_Scary_NoPrint:
    GetPartyMonFriendship VAR_RESULT, LOCAL_VAR_PARTY_SLOT
    GoToIfGe VAR_RESULT, 255, FootstepHouse_Scary_NoPrint_Level5
    GoToIfGe VAR_RESULT, 200, FootstepHouse_Scary_NoPrint_Level4
    GoToIfGe VAR_RESULT, 150, FootstepHouse_Scary_NoPrint_Level3
    GoToIfGe VAR_RESULT, 70, FootstepHouse_Scary_NoPrint_Level2
    GoTo FootstepHouse_Scary_NoPrint_Level1

FootstepHouse_Slow_WithPrint:
    GetPartyMonFriendship VAR_RESULT, LOCAL_VAR_PARTY_SLOT
    GoToIfGe VAR_RESULT, 255, FootstepHouse_Slow_WithPrint_Level5
    GoToIfGe VAR_RESULT, 200, FootstepHouse_Slow_WithPrint_Level4
    GoToIfGe VAR_RESULT, 150, FootstepHouse_Slow_WithPrint_Level3
    GoToIfGe VAR_RESULT, 70, FootstepHouse_Slow_WithPrint_Level2
    GoTo FootstepHouse_Slow_WithPrint_Level1

FootstepHouse_Slow_NoPrint:
    GetPartyMonFriendship VAR_RESULT, LOCAL_VAR_PARTY_SLOT
    GoToIfGe VAR_RESULT, 255, FootstepHouse_Slow_NoPrint_Level5
    GoToIfGe VAR_RESULT, 200, FootstepHouse_Slow_NoPrint_Level4
    GoToIfGe VAR_RESULT, 150, FootstepHouse_Slow_NoPrint_Level3
    GoToIfGe VAR_RESULT, 70, FootstepHouse_Slow_NoPrint_Level2
    GoTo FootstepHouse_Slow_NoPrint_Level1

FootstepHouse_Cute_WithPrint_Level1:
    Message FootstepHouse_Text_Cute_WithPrint_Level1
    GoTo FootstepHouse_ThatsWhatPokemonThinks

FootstepHouse_Cute_WithPrint_Level2:
    Message FootstepHouse_Text_Cute_WithPrint_Level2
    GoTo FootstepHouse_ThatsWhatPokemonThinks

FootstepHouse_Cute_WithPrint_Level3:
    Message FootstepHouse_Text_Cute_WithPrint_Level3
    GoTo FootstepHouse_ThatsWhatPokemonThinks

FootstepHouse_Cute_WithPrint_Level4:
    Message FootstepHouse_Text_Cute_WithPrint_Level4
    GoTo FootstepHouse_ThatsWhatPokemonThinks

FootstepHouse_Cute_WithPrint_Level5:
    Message FootstepHouse_Text_Cute_WithPrint_Level5
    GoTo FootstepHouse_ThatsWhatPokemonThinks_TryGiveRibbon

FootstepHouse_Cute_NoPrint_Level1:
    Message FootstepHouse_Text_Cute_NoPrint_Level1
    GoTo FootstepHouse_NoFootprints

FootstepHouse_Cute_NoPrint_Level2:
    Message FootstepHouse_Text_Cute_NoPrint_Level2
    GoTo FootstepHouse_NoFootprints

FootstepHouse_Cute_NoPrint_Level3:
    Message FootstepHouse_Text_Cute_NoPrint_Level3
    GoTo FootstepHouse_NoFootprints

FootstepHouse_Cute_NoPrint_Level4:
    Message FootstepHouse_Text_Cute_NoPrint_Level4
    GoTo FootstepHouse_NoFootprints

FootstepHouse_Cute_NoPrint_Level5:
    Message FootstepHouse_Text_Cute_NoPrint_Level5
    GoTo FootstepHouse_NoFootprints_TryGiveRibbon

FootstepHouse_Tough_WithPrint_Level1:
    Message FootstepHouse_Text_Tough_WithPrint_Level1
    GoTo FootstepHouse_ThatsWhatPokemonThinks

FootstepHouse_Tough_WithPrint_Level2:
    Message FootstepHouse_Text_Tough_WithPrint_Level2
    GoTo FootstepHouse_ThatsWhatPokemonThinks

FootstepHouse_Tough_WithPrint_Level3:
    Message FootstepHouse_Text_Tough_WithPrint_Level3
    GoTo FootstepHouse_ThatsWhatPokemonThinks

FootstepHouse_Tough_WithPrint_Level4:
    Message FootstepHouse_Text_Tough_WithPrint_Level4
    GoTo FootstepHouse_ThatsWhatPokemonThinks

FootstepHouse_Tough_WithPrint_Level5:
    Message FootstepHouse_Text_Tough_WithPrint_Level5
    GoTo FootstepHouse_ThatsWhatPokemonThinks_TryGiveRibbon

FootstepHouse_Tough_NoPrint_Level1:
    Message FootstepHouse_Text_Tough_NoPrint_Level1
    GoTo FootstepHouse_NoFootprints

FootstepHouse_Tough_NoPrint_Level2:
    Message FootstepHouse_Text_Tough_NoPrint_Level2
    GoTo FootstepHouse_NoFootprints

FootstepHouse_Tough_NoPrint_Level3:
    Message FootstepHouse_Text_Tough_NoPrint_Level3
    GoTo FootstepHouse_NoFootprints

FootstepHouse_Tough_NoPrint_Level4:
    Message FootstepHouse_Text_Tough_NoPrint_Level4
    GoTo FootstepHouse_NoFootprints

FootstepHouse_Tough_NoPrint_Level5:
    Message FootstepHouse_Text_Tough_NoPrint_Level5
    GoTo FootstepHouse_NoFootprints_TryGiveRibbon

FootstepHouse_Scary_WithPrint_Level1:
    Message FootstepHouse_Text_Scary_WithPrint_Level1
    GoTo FootstepHouse_ThatsWhatPokemonThinks

FootstepHouse_Scary_WithPrint_Level2:
    Message FootstepHouse_Text_Scary_WithPrint_Level2
    GoTo FootstepHouse_ThatsWhatPokemonThinks

FootstepHouse_Scary_WithPrint_Level3:
    Message FootstepHouse_Text_Scary_WithPrint_Level3
    GoTo FootstepHouse_ThatsWhatPokemonThinks

FootstepHouse_Scary_WithPrint_Level4:
    Message FootstepHouse_Text_Scary_WithPrint_Level4
    GoTo FootstepHouse_ThatsWhatPokemonThinks

FootstepHouse_Scary_WithPrint_Level5:
    Message FootstepHouse_Text_Scary_WithPrint_Level5
    GoTo FootstepHouse_ThatsWhatPokemonThinks_TryGiveRibbon

FootstepHouse_Scary_NoPrint_Level1:
    Message FootstepHouse_Text_Scary_NoPrint_Level1
    GoTo FootstepHouse_NoFootprints

FootstepHouse_Scary_NoPrint_Level2:
    Message FootstepHouse_Text_Scary_NoPrint_Level2
    GoTo FootstepHouse_NoFootprints

FootstepHouse_Scary_NoPrint_Level3:
    Message FootstepHouse_Text_Scary_NoPrint_Level3
    GoTo FootstepHouse_NoFootprints

FootstepHouse_Scary_NoPrint_Level4:
    Message FootstepHouse_Text_Scary_NoPrint_Level4
    GoTo FootstepHouse_NoFootprints

FootstepHouse_Scary_NoPrint_Level5:
    Message FootstepHouse_Text_Scary_NoPrint_Level5
    GoTo FootstepHouse_NoFootprints_TryGiveRibbon

FootstepHouse_Slow_WithPrint_Level1:
    Message FootstepHouse_Text_Slow_NoPrint_Level1
    GoTo FootstepHouse_ThatsWhatPokemonThinks

FootstepHouse_Slow_WithPrint_Level2:
    Message FootstepHouse_Text_Slow_NoPrint_Level2
    GoTo FootstepHouse_ThatsWhatPokemonThinks

FootstepHouse_Slow_WithPrint_Level3:
    Message FootstepHouse_Text_Slow_NoPrint_Level3
    GoTo FootstepHouse_ThatsWhatPokemonThinks

FootstepHouse_Slow_WithPrint_Level4:
    Message FootstepHouse_Text_Slow_NoPrint_Level4
    GoTo FootstepHouse_ThatsWhatPokemonThinks

FootstepHouse_Slow_WithPrint_Level5:
    Message FootstepHouse_Text_Slow_NoPrint_Level5
    GoTo FootstepHouse_ThatsWhatPokemonThinks_TryGiveRibbon

FootstepHouse_Slow_NoPrint_Level1:
    Message FootstepHouse_Text_Slow_WithPrint_Level1
    GoTo FootstepHouse_NoFootprints

FootstepHouse_Slow_NoPrint_Level2:
    Message FootstepHouse_Text_Slow_WithPrint_Level2
    GoTo FootstepHouse_NoFootprints

FootstepHouse_Slow_NoPrint_Level3:
    Message FootstepHouse_Text_Slow_WithPrint_Level3
    GoTo FootstepHouse_NoFootprints

FootstepHouse_Slow_NoPrint_Level4:
    Message FootstepHouse_Text_Slow_WithPrint_Level4
    GoTo FootstepHouse_NoFootprints

FootstepHouse_Slow_NoPrint_Level5:
    Message FootstepHouse_Text_Slow_WithPrint_Level5
    GoTo FootstepHouse_NoFootprints_TryGiveRibbon

FootstepHouse_ThatsWhatPokemonThinks_TryGiveRibbon:
    GetPartyMonRibbon VAR_RESULT, LOCAL_VAR_PARTY_SLOT, RIBBON_FOOTPRINT
    GoToIfEq VAR_RESULT, FALSE, FootstepHouse_ThatsWhatPokemonThinks_GiveRibbon
    GoTo FootstepHouse_ThatsWhatPokemonThinks

FootstepHouse_NoFootprints_TryGiveRibbon:
    GetPartyMonRibbon VAR_RESULT, LOCAL_VAR_PARTY_SLOT, RIBBON_FOOTPRINT
    GoToIfEq VAR_RESULT, FALSE, FootstepHouse_NoFootprints_GiveRibbon
    GoTo FootstepHouse_NoFootprints

FootstepHouse_VoicelessType:
    Message FootstepHouse_Text_SilentType
    GetPartyMonFriendship VAR_RESULT, LOCAL_VAR_PARTY_SLOT
    GoToIfLt VAR_RESULT, 255, FootstepHouse_PokemonSilentType
    GetPartyMonRibbon VAR_RESULT, LOCAL_VAR_PARTY_SLOT, RIBBON_FOOTPRINT
    GoToIfEq VAR_RESULT, FALSE, FootstepHouse_PokemonSilentType_GiveRibbon
    GoTo FootstepHouse_PokemonSilentType

FootstepHouse_ThatsWhatPokemonThinks:
    CloseMessage
    WaitTime 20, VAR_RESULT
    Call FootstepHouse_DrFootstepWalkToPlayer
    WaitTime 10, VAR_RESULT
    Message FootstepHouse_Text_ThatsWhatPokemonThinks
    WaitButton
    CloseMessage
    ReleaseAll
    End

FootstepHouse_NoFootprints:
    CloseMessage
    WaitTime 20, VAR_RESULT
    Call FootstepHouse_DrFootstepWalkToPlayer
    WaitTime 10, VAR_RESULT
    Message FootstepHouse_Text_NoFootprints
    WaitButton
    CloseMessage
    ReleaseAll
    End

FootstepHouse_PokemonSilentType:
    CloseMessage
    WaitTime 20, VAR_RESULT
    Call FootstepHouse_DrFootstepWalkToPlayer
    WaitTime 10, VAR_RESULT
    Message FootstepHouse_Text_PokemonSilentType
    WaitButton
    CloseMessage
    ReleaseAll
    End

FootstepHouse_ThatsWhatPokemonThinks_GiveRibbon:
    CloseMessage
    WaitTime 20, VAR_RESULT
    Call FootstepHouse_DrFootstepWalkToPlayer
    WaitTime 10, VAR_RESULT
    Message FootstepHouse_Text_ThatsWhatPokemonThinks_CloseBond
    PlayFanfare SEQ_FANFA1
    Message FootstepHouse_Text_PlayerReceivedFootprintRibbon
    WaitFanfare
    SetPartyMonRibbon LOCAL_VAR_PARTY_SLOT, RIBBON_FOOTPRINT
    Message FootstepHouse_Text_PutRibbonOnPokemon
    WaitButton
    CloseMessage
    ReleaseAll
    End

FootstepHouse_NoFootprints_GiveRibbon:
    CloseMessage
    WaitTime 20, VAR_RESULT
    Call FootstepHouse_DrFootstepWalkToPlayer
    WaitTime 10, VAR_RESULT
    Message FootstepHouse_Text_NoFootprints_CloseBond
    PlayFanfare SEQ_FANFA1
    Message FootstepHouse_Text_PlayerReceivedFootprintRibbon
    WaitFanfare
    SetPartyMonRibbon LOCAL_VAR_PARTY_SLOT, RIBBON_FOOTPRINT
    Message FootstepHouse_Text_PutRibbonOnPokemon
    WaitButton
    CloseMessage
    ReleaseAll
    End

FootstepHouse_PokemonSilentType_GiveRibbon:
    CloseMessage
    WaitTime 20, VAR_RESULT
    Call FootstepHouse_DrFootstepWalkToPlayer
    WaitTime 10, VAR_RESULT
    Message FootstepHouse_Text_SilentType_CloseBond
    PlayFanfare SEQ_FANFA1
    Message FootstepHouse_Text_PlayerReceivedFootprintRibbon
    WaitFanfare
    SetPartyMonRibbon LOCAL_VAR_PARTY_SLOT, RIBBON_FOOTPRINT
    Message FootstepHouse_Text_PutRibbonOnPokemon
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
FootstepHouse_Movement_DrFootstepStepBackEast:
    LockDir
    WalkNormalEast
    UnlockDir
    EndMovement

    .balign 4, 0
FootstepHouse_Movement_DrFootstepStepBackWest:
    LockDir
    WalkNormalWest
    UnlockDir
    EndMovement

    .balign 4, 0
FootstepHouse_Movement_DrFootstepStepBackSouth:
    LockDir
    WalkNormalSouth
    UnlockDir
    EndMovement

    .balign 4, 0
FootstepHouse_Movement_DrFootstepStepBackNorth:
    LockDir
    WalkNormalNorth
    UnlockDir
    EndMovement

    .balign 4, 0
FootstepHouse_Movement_DrFootstepWalkToPlayerX4:
    WalkNormalWest
    EndMovement

    .balign 4, 0
FootstepHouse_Movement_DrFootstepWalkToPlayerX6:
    WalkNormalEast
    EndMovement

    .balign 4, 0
FootstepHouse_Movement_DrFootstepWalkToPlayerZ5:
    WalkNormalNorth
    EndMovement

    .balign 4, 0
FootstepHouse_Movement_DrFootstepWalkToPlayerZ7:
    WalkNormalSouth
    EndMovement
