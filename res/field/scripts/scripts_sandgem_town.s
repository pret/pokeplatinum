#include "macros/scrcmd.inc"
#include "res/text/bank/sandgem_town.h"
#include "res/field/events/events_sandgem_town.h"


    ScriptEntry SandgemTown_OnTransition
    ScriptEntry SandgemTown_TriggerCounterpartLeadToLab
    ScriptEntry SandgemTown_OnFrameExitLab
    ScriptEntry SandgemTown_Youngster
    ScriptEntry SandgemTown_PokemonBreederM
    ScriptEntry SandgemTown_PokemonBreederF
    ScriptEntry SandgemTown_Unused
    ScriptEntry SandgemTown_MapSign
    ScriptEntry SandgemTown_LandmarkSignPokemonResearchLab
    ScriptEntry SandgemTown_LandmarkSignCounterpartMailbox
    ScriptEntry SandgemTown_LandmarkSignPokeMart
    ScriptEntry SandgemTown_LandmarkSignPokemonCenter
    ScriptEntryEnd

SandgemTown_OnTransition:
    CallIfEq VAR_SANDGEM_TOWN_STATE, 1, SandgemTown_SetCounterpartPositionExitLab
    GetPlayerGender VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_MALE, SandgemTown_SetCounterpartGraphicsDawn
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_FEMALE, SandgemTown_SetCounterpartGraphicsLucas
    End

SandgemTown_SetCounterpartPositionExitLab:
    SetObjectEventPos LOCALID_COUNTERPART, 168, 845
    SetObjectEventDir LOCALID_COUNTERPART, DIR_NORTH
    SetObjectEventMovementType LOCALID_COUNTERPART, MOVEMENT_TYPE_LOOK_NORTH
    Return

SandgemTown_SetCounterpartGraphicsDawn:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_PLAYER_F
    End

SandgemTown_SetCounterpartGraphicsLucas:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_PLAYER_M
    End

SandgemTown_TriggerCounterpartLeadToLab:
    LockAll
    ApplyMovement LOCALID_COUNTERPART, SandgemTown_Movement_CounterpartNoticePlayer
    WaitMovement
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 843, SandgemTown_CounterpartWalkToPlayerZ843
    GoToIfEq VAR_0x8005, 844, SandgemTown_CounterpartWalkToPlayerZ844
    GoToIfEq VAR_0x8005, 845, SandgemTown_CounterpartWalkToPlayerZ845
    GoToIfEq VAR_0x8005, 846, SandgemTown_CounterpartWalkToPlayerZ846
    GoToIfEq VAR_0x8005, 847, SandgemTown_CounterpartWalkToPlayerZ847
    GoToIfEq VAR_0x8005, 848, SandgemTown_CounterpartWalkToPlayerZ848
    End

SandgemTown_CounterpartWalkToPlayerZ843:
    ApplyMovement LOCALID_COUNTERPART, SandgemTown_Movement_CounterpartWalkToPlayerZ843
    ApplyMovement LOCALID_PLAYER, SandgemTown_Movement_PlayerFaceCounterpartZ843
    WaitMovement
    GoTo SandgemTown_TheProfessorIsWaiting

SandgemTown_CounterpartWalkToPlayerZ844:
    ApplyMovement LOCALID_COUNTERPART, SandgemTown_Movement_CounterpartWalkToPlayerZ844
    WaitMovement
    GoTo SandgemTown_TheProfessorIsWaiting

SandgemTown_CounterpartWalkToPlayerZ845:
    ApplyMovement LOCALID_COUNTERPART, SandgemTown_Movement_CounterpartWalkToPlayerZ845
    WaitMovement
    GoTo SandgemTown_TheProfessorIsWaiting

SandgemTown_CounterpartWalkToPlayerZ846:
    ApplyMovement LOCALID_COUNTERPART, SandgemTown_Movement_CounterpartWalkToPlayerZ846
    ApplyMovement LOCALID_PLAYER, SandgemTown_Movement_PlayerFaceCounterpartZ846
    WaitMovement
    GoTo SandgemTown_TheProfessorIsWaiting

SandgemTown_CounterpartWalkToPlayerZ847:
    ApplyMovement LOCALID_COUNTERPART, SandgemTown_Movement_CounterpartWalkToPlayerZ847
    ApplyMovement LOCALID_PLAYER, SandgemTown_Movement_PlayerFaceCounterpartZ847
    WaitMovement
    GoTo SandgemTown_TheProfessorIsWaiting

SandgemTown_CounterpartWalkToPlayerZ848:
    ApplyMovement LOCALID_COUNTERPART, SandgemTown_Movement_CounterpartWalkToPlayerZ848
    ApplyMovement LOCALID_PLAYER, SandgemTown_Movement_PlayerFaceCounterpartZ848
    WaitMovement
    GoTo SandgemTown_TheProfessorIsWaiting
    End

SandgemTown_TheProfessorIsWaiting:
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, SandgemTown_DawnTheProfessorIsWaiting
    GoToIfEq VAR_RESULT, GENDER_FEMALE, SandgemTown_LucasTheProfsWaitingToSeeYou
    End

SandgemTown_DawnTheProfessorIsWaiting:
    BufferCounterpartName 0
    Message SandgemTown_Text_DawnTheProfessorIsWaiting
    GoTo SandgemTown_WalkToPokemonResearchLab

SandgemTown_LucasTheProfsWaitingToSeeYou:
    BufferCounterpartName 0
    Message SandgemTown_Text_LucasTheProfsWaitingToSeeYou
    GoTo SandgemTown_WalkToPokemonResearchLab

SandgemTown_WalkToPokemonResearchLab:
    CloseMessage
    GoToIfEq VAR_0x8005, 843, SandgemTown_WalkToPokemonResearchLabZ843
    GoToIfEq VAR_0x8005, 844, SandgemTown_WalkToPokemonResearchLabZ844
    GoToIfEq VAR_0x8005, 845, SandgemTown_WalkToPokemonResearchLabZ845
    GoToIfEq VAR_0x8005, 846, SandgemTown_WalkToPokemonResearchLabZ846
    GoToIfEq VAR_0x8005, 847, SandgemTown_WalkToPokemonResearchLabZ847
    GoToIfEq VAR_0x8005, 848, SandgemTown_WalkToPokemonResearchLabZ848
    End

SandgemTown_WalkToPokemonResearchLabZ843:
    ApplyMovement LOCALID_COUNTERPART, SandgemTown_Movement_CounterpartWalkToPokemonResearchLabZ843
    ApplyMovement LOCALID_PLAYER, SandgemTown_Movement_PlayerWalkToPokemonResearchLabZ843
    WaitMovement
    GoTo SandgemTown_ThisIsOurPokemonResearchLab

SandgemTown_WalkToPokemonResearchLabZ844:
    ApplyMovement LOCALID_COUNTERPART, SandgemTown_Movement_CounterpartWalkToPokemonResearchLabZ844
    ApplyMovement LOCALID_PLAYER, SandgemTown_Movement_PlayerWalkToPokemonResearchLabZ844
    WaitMovement
    GoTo SandgemTown_ThisIsOurPokemonResearchLab

SandgemTown_WalkToPokemonResearchLabZ845:
    ApplyMovement LOCALID_COUNTERPART, SandgemTown_Movement_CounterpartWalkToPokemonResearchLabZ845
    ApplyMovement LOCALID_PLAYER, SandgemTown_Movement_PlayerWalkToPokemonResearchLabZ845
    WaitMovement
    GoTo SandgemTown_ThisIsOurPokemonResearchLab

SandgemTown_WalkToPokemonResearchLabZ846:
    ApplyMovement LOCALID_COUNTERPART, SandgemTown_Movement_CounterpartWalkToPokemonResearchLabZ846
    ApplyMovement LOCALID_PLAYER, SandgemTown_Movement_PlayerWalkToPokemonResearchLabZ846
    WaitMovement
    GoTo SandgemTown_ThisIsOurPokemonResearchLab

SandgemTown_WalkToPokemonResearchLabZ847:
    ApplyMovement LOCALID_COUNTERPART, SandgemTown_Movement_CounterpartWalkToPokemonResearchLabZ847
    ApplyMovement LOCALID_PLAYER, SandgemTown_Movement_PlayerWalkToPokemonResearchLabZ847
    WaitMovement
    GoTo SandgemTown_ThisIsOurPokemonResearchLab

SandgemTown_WalkToPokemonResearchLabZ848:
    ApplyMovement LOCALID_COUNTERPART, SandgemTown_Movement_CounterpartWalkToPokemonResearchLabZ848
    ApplyMovement LOCALID_PLAYER, SandgemTown_Movement_PlayerWalkToPokemonResearchLabZ848
    WaitMovement
    GoTo SandgemTown_ThisIsOurPokemonResearchLab

SandgemTown_ThisIsOurPokemonResearchLab:
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, SandgemTown_DawnThisIsItOurPokemonResearchLab
    GoToIfEq VAR_RESULT, GENDER_FEMALE, SandgemTown_LucasSeeThisIsIsOurPokemonResearchLab
    End

SandgemTown_DawnThisIsItOurPokemonResearchLab:
    Message SandgemTown_Text_DawnThisIsItOurPokemonResearchLab
    GoTo SandgemTown_RivalExitLab

SandgemTown_LucasSeeThisIsIsOurPokemonResearchLab:
    Message SandgemTown_Text_LucasSeeThisIsIsOurPokemonResearchLab
    GoTo SandgemTown_RivalExitLab

SandgemTown_RivalExitLab:
    LoadDoorAnimation 5, 26, 8, 10, ANIMATION_TAG_DOOR_1
    PlayDoorOpenAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    ClearFlag FLAG_HIDE_SANDGEM_TOWN_RIVAL
    AddObject LOCALID_RIVAL
    ApplyMovement LOCALID_RIVAL, SandgemTown_Movement_RivalExitLab
    WaitMovement
    ApplyMovement LOCALID_RIVAL, SandgemTown_Movement_RivalWalkOnSpotFastSouth
    WaitMovement
    PlayFanfare SEQ_SE_DP_WALL_HIT2
    Message SandgemTown_Text_BigThud
    ApplyMovement LOCALID_RIVAL, SandgemTown_Movement_RivalNoticePlayer
    WaitMovement
    SetRivalBGM
    BufferRivalName 0
    BufferPlayerName 1
    Message SandgemTown_Text_OhItsYouPlayer
    CloseMessage
    ApplyMovement LOCALID_PLAYER, SandgemTown_Movement_PlayerWatchRivalLeave
    ApplyMovement LOCALID_COUNTERPART, SandgemTown_Movement_CounterpartWatchRivalLeave
    ApplyMovement LOCALID_RIVAL, SandgemTown_Movement_RivalLeave
    WaitMovement
    RemoveObject LOCALID_RIVAL
    FadeToDefaultMusic2
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, SandgemTown_DawnLetsGoInside
    GoToIfEq VAR_RESULT, GENDER_FEMALE, SandgemTown_LucasLetsGoIn
    End

SandgemTown_DawnLetsGoInside:
    BufferCounterpartName 0
    Message SandgemTown_Text_DawnLetsGoInside
    GoTo SandgemTown_EnterPokemonResearchLab
    End

SandgemTown_LucasLetsGoIn:
    BufferCounterpartName 0
    Message SandgemTown_Text_LucasLetsGoIn
    GoTo SandgemTown_EnterPokemonResearchLab

SandgemTown_EnterPokemonResearchLab:
    CloseMessage
    ApplyMovement LOCALID_COUNTERPART, SandgemTown_Movement_CounterpartEnterLab
    ApplyMovement LOCALID_PLAYER, SandgemTown_Movement_PlayerEnterLab
    WaitMovement
    PlayDoorCloseAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    UnloadAnimation ANIMATION_TAG_DOOR_1
    RemoveObject LOCALID_COUNTERPART
    SetVar VAR_SANDGEM_TOWN_STATE, 1
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_SANDGEM_TOWN_POKEMON_RESEARCH_LAB, 0, 7, 15, 0
    FadeScreenIn
    WaitFadeScreen
    End

    .balign 4, 0
SandgemTown_Movement_CounterpartNoticePlayer:
    EmoteExclamationMark
    Delay16
    EndMovement

    .balign 4, 0
SandgemTown_Movement_CounterpartWalkToPlayerZ843:
    WalkNormalWest 4
    WalkNormalNorth
    EndMovement

    .balign 4, 0
SandgemTown_Movement_CounterpartWalkToPlayerZ844:
    WalkNormalWest 2
    WalkNormalNorth
    WalkNormalWest
    EndMovement

    .balign 4, 0
SandgemTown_Movement_CounterpartWalkToPlayerZ845:
    WalkNormalWest 3
    EndMovement

    .balign 4, 0
SandgemTown_Movement_CounterpartWalkToPlayerZ846:
    WalkNormalWest 4
    FaceSouth
    EndMovement

    .balign 4, 0
SandgemTown_Movement_CounterpartWalkToPlayerZ847:
    WalkNormalWest 4
    WalkNormalSouth
    EndMovement

    .balign 4, 0
SandgemTown_Movement_CounterpartWalkToPlayerZ848:
    WalkNormalWest 4
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
SandgemTown_Movement_CounterpartWalkToPokemonResearchLabZ843:
    WalkNormalEast 5
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SandgemTown_Movement_CounterpartWalkToPokemonResearchLabZ844:
    WalkNormalEast 4
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SandgemTown_Movement_CounterpartWalkToPokemonResearchLabZ845:
    WalkNormalNorth
    WalkNormalEast 4
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SandgemTown_Movement_CounterpartWalkToPokemonResearchLabZ846:
    WalkNormalEast 2
    WalkNormalNorth
    WalkNormalEast 3
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SandgemTown_Movement_CounterpartWalkToPokemonResearchLabZ847:
    WalkNormalNorth 2
    WalkNormalEast 5
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SandgemTown_Movement_CounterpartWalkToPokemonResearchLabZ848:
    WalkNormalNorth 2
    WalkNormalEast 5
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SandgemTown_Movement_CounterpartEnterLab:
    WalkNormalNorth
    WalkNormalWest
    WalkNormalNorth
    SetInvisible
    EndMovement

    .balign 4, 0
SandgemTown_Movement_CounterpartWatchRivalLeave:
    Delay4
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
SandgemTown_Movement_PlayerFaceCounterpartZ843:
    Delay8 3
    FaceSouth
    EndMovement

SandgemTown_UnusedMovement:
    Delay8 3
    WalkOnSpotNormalSouth
    EndMovement

SandgemTown_UnusedMovement2:
    WalkNormalEast 4
    WalkNormalNorth 2
    EndMovement

    .balign 4, 0
SandgemTown_Movement_PlayerFaceCounterpartZ846:
    Delay8 3
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SandgemTown_Movement_PlayerFaceCounterpartZ847:
    Delay8 3
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SandgemTown_Movement_PlayerFaceCounterpartZ848:
    Delay8 3
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SandgemTown_Movement_PlayerWalkToPokemonResearchLabZ843:
    WalkNormalSouth
    WalkNormalEast 4
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SandgemTown_Movement_PlayerWalkToPokemonResearchLabZ844:
    WalkNormalEast 2
    WalkNormalEast 2
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SandgemTown_Movement_PlayerWalkToPokemonResearchLabZ845:
    WalkNormalEast
    WalkNormalNorth
    WalkNormalEast 3
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SandgemTown_Movement_PlayerWalkToPokemonResearchLabZ846:
    WalkNormalNorth
    WalkNormalEast 2
    WalkNormalNorth
    WalkNormalEast 2
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SandgemTown_Movement_PlayerWalkToPokemonResearchLabZ847:
    WalkNormalNorth 3
    WalkNormalEast 4
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SandgemTown_Movement_PlayerWalkToPokemonResearchLabZ848:
    WalkNormalNorth 4
    WalkNormalEast 4
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SandgemTown_Movement_PlayerEnterLab:
    Delay8
    WalkOnSpotNormalNorth
    Delay8 2
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
SandgemTown_Movement_PlayerWatchRivalLeave:
    Delay8
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
SandgemTown_Movement_RivalExitLab:
    WalkFastSouth
    EndMovement

    .balign 4, 0
SandgemTown_Movement_RivalWalkOnSpotFastSouth:
    WalkOnSpotFastSouth 2
    EndMovement

    .balign 4, 0
SandgemTown_Movement_RivalNoticePlayer:
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
SandgemTown_Movement_RivalLeave:
    WalkFastEast 2
    WalkFastSouth
    WalkFastEast 7
    EndMovement

SandgemTown_OnFrameExitLab:
    LockAll
    LoadDoorAnimation 5, 26, 8, 10, ANIMATION_TAG_DOOR_1
    PlayDoorOpenAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    ClearFlag FLAG_HIDE_SANDGEM_TOWN_PROF_ROWAN
    AddObject LOCALID_PROF_ROWAN
    ApplyMovement LOCALID_PROF_ROWAN, SandgemTown_Movement_ProfRowanExitLab
    WaitMovement
    BufferPlayerName 0
    Message SandgemTown_Text_BigPlayer
    CloseMessage
    ApplyMovement LOCALID_PLAYER, SandgemTown_Movement_PlayerNoticeProfRowan
    ApplyMovement LOCALID_COUNTERPART, SandgemTown_Movement_CounterpartNoticeProfRowan
    WaitMovement
    Message SandgemTown_Text_YouShouldTakeThisAsWell
    SetVar VAR_0x8004, ITEM_TM27
    SetVar VAR_0x8005, 1
    GiveItemQuantity
    Message SandgemTown_Text_ThatContainsTheMoveReturn
    CloseMessage
    ApplyMovement LOCALID_PROF_ROWAN, SandgemTown_Movement_ProfRowanEnterLab
    WaitMovement
    PlayDoorCloseAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    UnloadAnimation ANIMATION_TAG_DOOR_1
    RemoveObject LOCALID_PROF_ROWAN
    WaitTime 30, VAR_RESULT
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, SandgemTown_DawnIDidntKnowTheProfessorHadTMs
    GoToIfEq VAR_RESULT, GENDER_FEMALE, SandgemTown_LucasWellIllBeTheProfessorHadTMs
    End

SandgemTown_DawnIDidntKnowTheProfessorHadTMs:
    Message SandgemTown_Text_DawnIDidntKnowTheProfessorHadTMs
    CloseMessage
    GoTo SandgemTown_CounterpartWillShowYouAround
    End

SandgemTown_LucasWellIllBeTheProfessorHadTMs:
    Message SandgemTown_Text_LucasWellIllBeTheProfessorHadTMs
    CloseMessage
    GoTo SandgemTown_CounterpartWillShowYouAround
    End

SandgemTown_CounterpartWillShowYouAround:
    ApplyMovement LOCALID_PLAYER, SandgemTown_Movement_PlayerFaceCounterpartSouth
    ApplyMovement LOCALID_COUNTERPART, SandgemTown_Movement_CounterpartWalkNorthToPlayer
    WaitMovement
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, SandgemTown_DawnIllActAsYourMentor
    GoToIfEq VAR_RESULT, GENDER_FEMALE, SandgemTown_LucasIWantToShowYouAFewThings
    End

SandgemTown_DawnIllActAsYourMentor:
    BufferCounterpartName 0
    BufferPlayerName 1
    Message SandgemTown_Text_DawnIllActAsYourMentor
    GoTo SandgemTown_WalkToPokemonCenter

SandgemTown_LucasIWantToShowYouAFewThings:
    BufferCounterpartName 0
    BufferPlayerName 1
    Message SandgemTown_Text_LucasIWantToShowYouAFewThings
    GoTo SandgemTown_WalkToPokemonCenter

SandgemTown_WalkToPokemonCenter:
    CloseMessage
    SetFollowMeBGM
    ApplyMovement LOCALID_COUNTERPART, SandgemTown_Movement_CounterpartWalkToPokemonCenter
    ApplyMovement LOCALID_PLAYER, SandgemTown_Movement_PlayerWalkToPokemonCenter
    WaitMovement
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, SandgemTown_DawnThisIsThePokemonCenter
    GoToIfEq VAR_RESULT, GENDER_FEMALE, SandgemTown_LucasThisIsThePokemonCenter
    End

SandgemTown_DawnThisIsThePokemonCenter:
    BufferCounterpartName 0
    BufferPlayerName 1
    Message SandgemTown_Text_DawnThisIsThePokemonCenter
    GoTo SandgemTown_WalkToPokeMart

SandgemTown_LucasThisIsThePokemonCenter:
    BufferCounterpartName 0
    BufferPlayerName 1
    Message SandgemTown_Text_LucasThisIsThePokemonCenter
    GoTo SandgemTown_WalkToPokeMart

SandgemTown_WalkToPokeMart:
    CloseMessage
    ApplyMovement LOCALID_COUNTERPART, SandgemTown_Movement_CounterpartWalkToPokeMart
    ApplyMovement LOCALID_PLAYER, SandgemTown_Movement_PlayerWalkToPokeMart
    WaitMovement
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, SandgemTown_DawnThisIsThePokeMart
    GoToIfEq VAR_RESULT, GENDER_FEMALE, SandgemTown_LucasThisIsThePokeMart
    End

SandgemTown_DawnThisIsThePokeMart:
    BufferPlayerName 0
    Message SandgemTown_Text_DawnThisIsThePokeMart
    GoTo SandgemTown_LetYourFamilyKnowYoureHelpingProfRowan

SandgemTown_LucasThisIsThePokeMart:
    BufferPlayerName 0
    Message SandgemTown_Text_LucasThisIsThePokeMart
    GoTo SandgemTown_LetYourFamilyKnowYoureHelpingProfRowan

SandgemTown_LetYourFamilyKnowYoureHelpingProfRowan:
    CloseMessage
    ApplyMovement LOCALID_COUNTERPART, SandgemTown_CounterpartFacePlayerWest
    ApplyMovement LOCALID_PLAYER, SandgemTown_PlayerFaceCounterpartEast
    WaitMovement
    ApplyMovement LOCALID_COUNTERPART, SandgemTown_CounterpartExclamationMark
    WaitMovement
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, SandgemTown_DawnLetYourFamilyKnowYoureHelpingProfRowan
    GoToIfEq VAR_RESULT, GENDER_FEMALE, SandgemTown_LucasLetYourFamilyKnowYoureHelpingProfRowan
    End

SandgemTown_DawnLetYourFamilyKnowYoureHelpingProfRowan:
    BufferPlayerName 1
    Message SandgemTown_Text_DawnLetYourFamilyKnowYoureHelpingProfRowan
    GoTo SandgemTown_CounterpartLeave

SandgemTown_LucasLetYourFamilyKnowYoureHelpingProfRowan:
    BufferPlayerName 1
    Message SandgemTown_Text_LucasLetYourFamilyKnowYoureHelpingProfRowan
    GoTo SandgemTown_CounterpartLeave

SandgemTown_CounterpartLeave:
    CloseMessage
    ApplyMovement LOCALID_COUNTERPART, SandgemTown_Movement_CounterpartLeave
    ApplyMovement LOCALID_PLAYER, SandgemTown_Movement_PlayerWatchCounterpartLeave
    WaitMovement
    FadeToDefaultMusic3
    RemoveObject LOCALID_COUNTERPART
    SetVar VAR_SANDGEM_TOWN_STATE, 2
    ReleaseAll
    End

    .balign 4, 0
SandgemTown_Movement_ProfRowanExitLab:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
SandgemTown_Movement_ProfRowanEnterLab:
    WalkOnSpotNormalNorth
    SetInvisible
    EndMovement

    .balign 4, 0
SandgemTown_Movement_PlayerNoticeProfRowan:
    EmoteExclamationMark
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SandgemTown_Movement_PlayerFaceCounterpartSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
SandgemTown_Movement_PlayerWalkToPokemonCenter:
    WalkNormalSouth
    WalkNormalEast 9
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SandgemTown_Movement_PlayerWalkToPokeMart:
    WalkNormalEast 10
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SandgemTown_PlayerFaceCounterpartEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
SandgemTown_Movement_PlayerWatchCounterpartLeave:
    Delay8
    WalkOnSpotNormalSouth
    Delay4
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
SandgemTown_Movement_CounterpartNoticeProfRowan:
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
SandgemTown_Movement_CounterpartWalkNorthToPlayer:
    WalkNormalNorth
    EndMovement

    .balign 4, 0
SandgemTown_Movement_CounterpartWalkToPokemonCenter:
    WalkNormalEast 10
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SandgemTown_Movement_CounterpartWalkToPokeMart:
    WalkNormalEast 10
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SandgemTown_CounterpartFacePlayerWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
SandgemTown_CounterpartExclamationMark:
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
SandgemTown_Movement_CounterpartLeave:
    WalkNormalSouth
    WalkNormalWest 5
    WalkNormalNorth 10
    EndMovement

SandgemTown_Youngster:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message SandgemTown_Text_PokemonAreSoCool
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SandgemTown_PokemonBreederM:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message SandgemTown_Text_TheThingYouHaveItsAPokedexIsntIt
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SandgemTown_PokemonBreederF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message SandgemTown_Text_IdBetterSaveThis
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SandgemTown_Unused:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message SandgemTown_Text_ProfessorRowansComeBackToTown
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SandgemTown_MapSign:
    ShowMapSign SandgemTown_Text_MapSign
    End

SandgemTown_LandmarkSignPokemonResearchLab:
    ShowLandmarkSign SandgemTown_Text_PokemonResearchLabSign
    End

SandgemTown_LandmarkSignCounterpartMailbox:
    BufferCounterpartName 0
    ShowLandmarkSign SandgemTown_Text_CounterpartMailbox
    End

SandgemTown_LandmarkSignPokeMart:
    ShowLandmarkSign SandgemTown_Text_PokeMartSign
    End

SandgemTown_LandmarkSignPokemonCenter:
    ShowLandmarkSign SandgemTown_Text_PokemonCenterSign
    End

    .balign 4, 0
