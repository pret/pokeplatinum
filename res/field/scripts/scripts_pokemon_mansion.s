#include "macros/scrcmd.inc"
#include "res/text/bank/pokemon_mansion.h"
#include "res/field/events/events_pokemon_mansion.h"


    ScriptEntry PokemonMansion_OnTransition
    ScriptEntry PokemonMansion_MaidOffice
    ScriptEntry PokemonMansion_MaidTrophyGarden
    ScriptEntry PokemonMansion_MaidWest
    ScriptEntry PokemonMansion_MaidFarEast
    ScriptEntry PokemonMansion_MaidEast
    ScriptEntryEnd

PokemonMansion_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_POKEMON_MANSION
    SetFlag FLAG_HIDE_POKEMON_MANSION_FIVE_MAID_KNOCKOUT_MAID
    SetFlag FLAG_HIDE_POKEMON_MANSION_FIVE_MAID_KNOCKOUT_BOSS
    GoToIfUnset FLAG_SET_FIVE_MAID_KNOCKOUT_TURN_TARGET, PokemonMansion_InitFiveMaidKnockoutChallenge
    End

PokemonMansion_InitFiveMaidKnockoutChallenge:
    GetRandom VAR_FIVE_MAID_KNOCKOUT_TURN_TARGET, 5
    AddVar VAR_FIVE_MAID_KNOCKOUT_TURN_TARGET, 5
    SetFlag FLAG_SET_FIVE_MAID_KNOCKOUT_TURN_TARGET
    ClearTrainerFlag TRAINER_RICH_BOY_LIAM
    ClearTrainerFlag TRAINER_LADY_CELESTE
    End

PokemonMansion_MaidOffice:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message PokemonMansion_Text_MrBacklotOffice
    WaitButton
    CloseMessage
    ApplyMovement LOCALID_MAID_OFFICE, PokemonMansion_Movement_MaidOfficeFaceSouth
    WaitMovement
    ReleaseAll
    End

PokemonMansion_MaidTrophyGarden:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message PokemonMansion_Text_ThisWayTrophyGarden
    WaitButton
    CloseMessage
    ApplyMovement LOCALID_MAID_TROPHY_GARDEN, PokemonMansion_Movement_MaidTrophyGardenFaceSouth
    WaitMovement
    ReleaseAll
    End

PokemonMansion_MaidWest:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfDefeated TRAINER_RICH_BOY_LIAM, PokemonMansion_VisitAgainTomorrow
    GoToIfDefeated TRAINER_LADY_CELESTE, PokemonMansion_VisitAgainTomorrow
    GetPlayerDir VAR_RESULT
    GoToIfEq VAR_RESULT, DIR_NORTH, PokemonMansion_GetInPositionNorth
    GoToIfEq VAR_RESULT, DIR_SOUTH, PokemonMansion_GetInPositionSouth
    GoTo PokemonMansion_FiveMaidKnockoutChallenge
    End

PokemonMansion_GetInPositionNorth:
    ApplyMovement LOCALID_MAID_FAR_WEST, PokemonMansion_Movement_MaidFarWestWalkOnSpotEast
    ApplyMovement LOCALID_PLAYER, PokemonMansion_Movement_PlayerGetInPositionNorth
    WaitMovement
    GoTo PokemonMansion_FiveMaidKnockoutChallenge
    End

PokemonMansion_GetInPositionSouth:
    ApplyMovement LOCALID_MAID_FAR_WEST, PokemonMansion_Movement_MaidFarWestWalkOnSpotEast2
    ApplyMovement LOCALID_PLAYER, PokemonMansion_Movement_PlayerGetInPositionSouth
    WaitMovement
    GoTo PokemonMansion_FiveMaidKnockoutChallenge
    End

PokemonMansion_FiveMaidKnockoutChallenge:
    CallIfUnset FLAG_STARTED_FIVE_MAID_KNOCKOUT_CHALLENGE, PokemonMansion_ExplainChallenge
    CallIfSet FLAG_STARTED_FIVE_MAID_KNOCKOUT_CHALLENGE, PokemonMansion_TargetedTurnsIsThis
    SetFlag FLAG_STARTED_FIVE_MAID_KNOCKOUT_CHALLENGE
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, PokemonMansion_DontDoChallenge
    SetTrainerFlag TRAINER_RICH_BOY_LIAM
    SetTrainerFlag TRAINER_LADY_CELESTE
    Message PokemonMansion_Text_OurFirstMaid
    CloseMessage
    ApplyMovement LOCALID_MAID_FAR_WEST, PokemonMansion_Movement_MaidFarWestMoveAside
    WaitMovement
    SetVar VAR_TOTAL_TURNS_LAST_BATTLE, 0
    SetVar VAR_0x8005, 0
    ClearFlag FLAG_HIDE_POKEMON_MANSION_FIVE_MAID_KNOCKOUT_MAID
    AddObject LOCALID_FIVE_MAID_KNOCKOUT_MAID
    ApplyMovement LOCALID_FIVE_MAID_KNOCKOUT_MAID, PokemonMansion_Movement_KnockoutTrainerEnter
    WaitMovement
    Message PokemonMansion_Text_Maid1Intro
    CloseMessage
    StartTrainerBattle TRAINER_MAID_BELINDA
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PokemonMansion_BlackOut
    AddVar VAR_0x8005, VAR_TOTAL_TURNS_LAST_BATTLE
    Message PokemonMansion_Text_Maid1Defeat
    CloseMessage
    ApplyMovement LOCALID_FIVE_MAID_KNOCKOUT_MAID, PokemonMansion_Movement_KnockoutTrainerLeave
    WaitMovement
    ApplyMovement LOCALID_FIVE_MAID_KNOCKOUT_MAID, PokemonMansion_Movement_KnockoutTrainerEnter
    WaitMovement
    Message PokemonMansion_Text_Maid2Intro
    CloseMessage
    StartTrainerBattle TRAINER_MAID_SOPHIE
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PokemonMansion_BlackOut
    AddVar VAR_0x8005, VAR_TOTAL_TURNS_LAST_BATTLE
    Message PokemonMansion_Text_Maid2Defeat
    CloseMessage
    ApplyMovement LOCALID_FIVE_MAID_KNOCKOUT_MAID, PokemonMansion_Movement_KnockoutTrainerLeave
    WaitMovement
    ApplyMovement LOCALID_FIVE_MAID_KNOCKOUT_MAID, PokemonMansion_Movement_KnockoutTrainerEnter
    WaitMovement
    Message PokemonMansion_Text_Maid3Intro
    CloseMessage
    StartTrainerBattle TRAINER_MAID_EMILY
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PokemonMansion_BlackOut
    AddVar VAR_0x8005, VAR_TOTAL_TURNS_LAST_BATTLE
    Message PokemonMansion_Text_Maid3Defeat
    CloseMessage
    ApplyMovement LOCALID_FIVE_MAID_KNOCKOUT_MAID, PokemonMansion_Movement_KnockoutTrainerLeave
    WaitMovement
    ApplyMovement LOCALID_FIVE_MAID_KNOCKOUT_MAID, PokemonMansion_Movement_KnockoutTrainerEnter
    WaitMovement
    Message PokemonMansion_Text_Maid4Intro
    CloseMessage
    StartTrainerBattle TRAINER_MAID_ELENA
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PokemonMansion_BlackOut
    AddVar VAR_0x8005, VAR_TOTAL_TURNS_LAST_BATTLE
    Message PokemonMansion_Text_Maid4Defeat
    CloseMessage
    ApplyMovement LOCALID_FIVE_MAID_KNOCKOUT_MAID, PokemonMansion_Movement_KnockoutTrainerLeave
    WaitMovement
    ApplyMovement LOCALID_MAID_FAR_WEST, PokemonMansion_Movement_MaidFarWestMoveBackInPlace
    WaitMovement
    BufferNumber 0, VAR_FIVE_MAID_KNOCKOUT_TURN_TARGET
    BufferNumber 1, VAR_0x8005
    Message PokemonMansion_Text_DefeatedFourMaids
    CloseMessage
    ApplyMovement LOCALID_MAID_FAR_WEST, PokemonMansion_Movement_MaidFarWestMoveAside
    WaitMovement
    ApplyMovement LOCALID_FIVE_MAID_KNOCKOUT_MAID, PokemonMansion_Movement_KnockoutTrainerEnter
    WaitMovement
    Message PokemonMansion_Text_Maid5Intro
    CloseMessage
    StartTrainerBattle TRAINER_MAID_CLARE
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PokemonMansion_BlackOut
    AddVar VAR_0x8005, VAR_TOTAL_TURNS_LAST_BATTLE
    Message PokemonMansion_Text_Maid5Defeat
    CloseMessage
    ApplyMovement LOCALID_FIVE_MAID_KNOCKOUT_MAID, PokemonMansion_Movement_KnockoutTrainerLeave
    WaitMovement
    RemoveObject LOCALID_FIVE_MAID_KNOCKOUT_MAID
    ApplyMovement LOCALID_MAID_FAR_WEST, PokemonMansion_Movement_MaidFarWestMoveBackInPlace
    WaitMovement
    BufferNumber 0, VAR_FIVE_MAID_KNOCKOUT_TURN_TARGET
    BufferNumber 1, VAR_0x8005
    Message PokemonMansion_Text_TargetedTurnsYourTurns
    GoToIfNe VAR_0x8005, VAR_FIVE_MAID_KNOCKOUT_TURN_TARGET, PokemonMansion_FailedChallenge
    GetRandom VAR_0x8006, 2
    CallIfEq VAR_0x8006, 0, PokemonMansion_SetOpponentLiam
    CallIfEq VAR_0x8006, 1, PokemonMansion_SetOpponentCeleste
    CloseMessage
    ApplyMovement LOCALID_MAID_FAR_WEST, PokemonMansion_Movement_MaidFarWestMoveAside
    WaitMovement
    ClearFlag FLAG_HIDE_POKEMON_MANSION_FIVE_MAID_KNOCKOUT_BOSS
    AddObject LOCALID_FIVE_MAID_KNOCKOUT_BOSS
    ApplyMovement LOCALID_FIVE_MAID_KNOCKOUT_BOSS, PokemonMansion_Movement_KnockoutTrainerEnter
    WaitMovement
    CallIfEq VAR_0x8006, 0, PokemonMansion_LiamIntro
    CallIfEq VAR_0x8006, 1, PokemonMansion_CelesteIntro
    CloseMessage
    StartTrainerBattle VAR_0x8007
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PokemonMansion_BlackOut
    SetTrainerFlag TRAINER_RICH_BOY_LIAM
    SetTrainerFlag TRAINER_LADY_CELESTE
    CallIfEq VAR_0x8006, 0, PokemonMansion_LiamDefeat
    CallIfEq VAR_0x8006, 1, PokemonMansion_CelesteDefeat
    CloseMessage
    ApplyMovement LOCALID_FIVE_MAID_KNOCKOUT_BOSS, PokemonMansion_Movement_KnockoutTrainerLeave
    WaitMovement
    RemoveObject LOCALID_FIVE_MAID_KNOCKOUT_BOSS
    ApplyMovement LOCALID_MAID_FAR_WEST, PokemonMansion_Movement_MaidFarWestMoveBackInPlace
    WaitMovement
    CallIfEq VAR_0x8006, 0, PokemonMansion_TriumphedOverLiam
    CallIfEq VAR_0x8006, 1, PokemonMansion_TriumphedOverCeleste
    GoTo PokemonMansion_VisitAgainTomorrow
    End

PokemonMansion_VisitAgainTomorrow:
    Message PokemonMansion_Text_VisitAgainTomorrow
    GoTo PokemonMansion_MaidChallengeEnd
    End

PokemonMansion_SetOpponentLiam:
    SetVar VAR_0x8007, TRAINER_RICH_BOY_LIAM
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_RICH_BOY
    BufferTrainerName 2, VAR_0x8007
    Message PokemonMansion_Text_HitTargetBattleLiam
    Return

PokemonMansion_SetOpponentCeleste:
    SetVar VAR_0x8007, TRAINER_LADY_CELESTE
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_LADY
    BufferTrainerName 2, VAR_0x8007
    Message PokemonMansion_Text_HitTargetBattleCeleste
    Return

PokemonMansion_LiamIntro:
    Message PokemonMansion_Text_LiamIntro
    Return

PokemonMansion_CelesteIntro:
    Message PokemonMansion_Text_CelesteIntro
    Return

PokemonMansion_LiamDefeat:
    Message PokemonMansion_Text_LiamDefeat
    Return

PokemonMansion_CelesteDefeat:
    Message PokemonMansion_Text_CelesteDefeat
    Return

PokemonMansion_TriumphedOverLiam:
    Message PokemonMansion_Text_TriumphedOverLiam
    Return

PokemonMansion_TriumphedOverCeleste:
    Message PokemonMansion_Text_TriumphedOverCeleste
    Return

    .balign 4, 0
PokemonMansion_Movement_MaidFarWestWalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
PokemonMansion_Movement_MaidFarWestWalkOnSpotEast2:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
PokemonMansion_Movement_MaidFarWestMoveAside:
    WalkNormalNorth
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
PokemonMansion_Movement_MaidFarWestMoveBackInPlace:
    WalkNormalSouth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
PokemonMansion_Movement_KnockoutTrainerLeave:
    WalkOnSpotNormalWest
    SetInvisible
    EndMovement

    .balign 4, 0
PokemonMansion_Movement_KnockoutTrainerEnter:
    SetVisible
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
PokemonMansion_Movement_PlayerGetInPositionNorth:
    WalkNormalEast
    WalkNormalNorth
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
PokemonMansion_Movement_PlayerGetInPositionSouth:
    WalkNormalEast
    WalkNormalSouth
    WalkOnSpotNormalWest
    EndMovement

PokemonMansion_FailedChallenge:
    Message PokemonMansion_Text_PlentyToBeProud
    Message PokemonMansion_Text_VisitAgainTomorrow
    GoTo PokemonMansion_MaidChallengeEnd
    End

PokemonMansion_ExplainChallenge:
    Message PokemonMansion_Text_ChallengeFiveMaids
    BufferNumber 0, VAR_FIVE_MAID_KNOCKOUT_TURN_TARGET
    Message PokemonMansion_Text_TargetedTurnsIsThis
    Return

PokemonMansion_TargetedTurnsIsThis:
    BufferNumber 0, VAR_FIVE_MAID_KNOCKOUT_TURN_TARGET
    Message PokemonMansion_Text_TargetedTurnsIsThis
    Return

PokemonMansion_DontDoChallenge:
    Message PokemonMansion_Text_HowDisappointing
    GoTo PokemonMansion_MaidChallengeEnd
    End

PokemonMansion_MaidChallengeEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

PokemonMansion_BlackOut:
    BlackOutFromBattle
    ReleaseAll
    End

PokemonMansion_MaidFarEast:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message PokemonMansion_Text_StrictlyOffLimits
    WaitButton
    CloseMessage
    ApplyMovement LOCALID_MAID_FAR_EAST, PokemonMansion_Movement_MaidFarEastFaceWest
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
PokemonMansion_Movement_MaidOfficeFaceSouth:
    FaceSouth
    EndMovement

    .balign 4, 0
PokemonMansion_Movement_MaidTrophyGardenFaceSouth:
    FaceSouth
    EndMovement

PokemonMansion_UnusedMovement:
    FaceEast
    EndMovement

    .balign 4, 0
PokemonMansion_Movement_MaidFarEastFaceWest:
    FaceWest
    EndMovement

PokemonMansion_MaidEast:
    NPCMessage PokemonMansion_Text_BookTugsAttention
    End

    .balign 4, 0
