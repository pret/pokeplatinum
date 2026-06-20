#include "macros/scrcmd.inc"
#include "res/text/bank/sandgem_town.h"
#include "res/field/events/events_sandgem_town.h"


    ScriptEntry SandgemTown_OnTransition
    ScriptEntry SandgemTown_CoordEvent_CounterpartLeadToLab
    ScriptEntry SandgemTown_OnFrame_ExitLab
    ScriptEntry SandgemTown_Youngster
    ScriptEntry SandgemTown_PokemonBreederM
    ScriptEntry SandgemTown_PokemonBreederF
    ScriptEntry SandgemTown_RowansComeBack_Unused
    ScriptEntry SandgemTown_MapSignpost
    ScriptEntry SandgemTown_SignboardPokemonResearchLab
    ScriptEntry SandgemTown_SignboardCounterpartsHouse
    ScriptEntry SandgemTown_SignboardPokeMart
    ScriptEntry SandgemTown_SignboardPokemonCenter
    ScriptEntryEnd

SandgemTown_OnTransition:
    CallIfEq VAR_SANDGEM_TOWN_STATE, 1, SandgemTown_SetCounterpartPositionExitLab
    GetPlayerGender VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_MALE, SandgemTown_SetCounterpartGraphicsDawn
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_FEMALE, SandgemTown_SetCounterpartGraphicsLucas
    End

SandgemTown_SetCounterpartPositionExitLab:
    SetObjectEventPos LOCALID_SANDGEM_COUNTERPART, 168, 845
    SetObjectEventDir LOCALID_SANDGEM_COUNTERPART, DIR_NORTH
    SetObjectEventMovementType LOCALID_SANDGEM_COUNTERPART, MOVEMENT_TYPE_LOOK_NORTH
    Return

SandgemTown_SetCounterpartGraphicsDawn:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_PLAYER_F
    End

SandgemTown_SetCounterpartGraphicsLucas:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_PLAYER_M
    End

SandgemTown_CoordEvent_CounterpartLeadToLab:
    LockAll
    ApplyMovement LOCALID_SANDGEM_COUNTERPART, SandgemTown_Movement_CounterpartNoticePlayer
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
    ApplyMovement LOCALID_SANDGEM_COUNTERPART, SandgemTown_Movement_CounterpartWalkToPlayerZ843
    ApplyMovement LOCALID_PLAYER, SandgemTown_Movement_PlayerFaceCounterpartZ843
    WaitMovement
    GoTo SandgemTown_TheProfessorIsWaiting

SandgemTown_CounterpartWalkToPlayerZ844:
    ApplyMovement LOCALID_SANDGEM_COUNTERPART, SandgemTown_Movement_CounterpartWalkToPlayerZ844
    WaitMovement
    GoTo SandgemTown_TheProfessorIsWaiting

SandgemTown_CounterpartWalkToPlayerZ845:
    ApplyMovement LOCALID_SANDGEM_COUNTERPART, SandgemTown_Movement_CounterpartWalkToPlayerZ845
    WaitMovement
    GoTo SandgemTown_TheProfessorIsWaiting

SandgemTown_CounterpartWalkToPlayerZ846:
    ApplyMovement LOCALID_SANDGEM_COUNTERPART, SandgemTown_Movement_CounterpartWalkToPlayerZ846
    ApplyMovement LOCALID_PLAYER, SandgemTown_Movement_PlayerFaceCounterpartZ846
    WaitMovement
    GoTo SandgemTown_TheProfessorIsWaiting

SandgemTown_CounterpartWalkToPlayerZ847:
    ApplyMovement LOCALID_SANDGEM_COUNTERPART, SandgemTown_Movement_CounterpartWalkToPlayerZ847
    ApplyMovement LOCALID_PLAYER, SandgemTown_Movement_PlayerFaceCounterpartZ847
    WaitMovement
    GoTo SandgemTown_TheProfessorIsWaiting

SandgemTown_CounterpartWalkToPlayerZ848:
    ApplyMovement LOCALID_SANDGEM_COUNTERPART, SandgemTown_Movement_CounterpartWalkToPlayerZ848
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
    GoTo SandgemTown_WalkToLab

SandgemTown_LucasTheProfsWaitingToSeeYou:
    BufferCounterpartName 0
    Message SandgemTown_Text_LucasTheProfsWaitingToSeeYou
    GoTo SandgemTown_WalkToLab

SandgemTown_WalkToLab:
    CloseMessage
    GoToIfEq VAR_0x8005, 843, SandgemTown_WalkToLabZ843
    GoToIfEq VAR_0x8005, 844, SandgemTown_WalkToLabZ844
    GoToIfEq VAR_0x8005, 845, SandgemTown_WalkToLabZ845
    GoToIfEq VAR_0x8005, 846, SandgemTown_WalkToLabZ846
    GoToIfEq VAR_0x8005, 847, SandgemTown_WalkToLabZ847
    GoToIfEq VAR_0x8005, 848, SandgemTown_WalkToLabZ848
    End

SandgemTown_WalkToLabZ843:
    ApplyMovement LOCALID_SANDGEM_COUNTERPART, SandgemTown_Movement_CounterpartWalkToLabZ843
    ApplyMovement LOCALID_PLAYER, SandgemTown_Movement_PlayerWalkToLabZ843
    WaitMovement
    GoTo SandgemTown_ThisIsOurPokemonResearchLab

SandgemTown_WalkToLabZ844:
    ApplyMovement LOCALID_SANDGEM_COUNTERPART, SandgemTown_Movement_CounterpartWalkToLabZ844
    ApplyMovement LOCALID_PLAYER, SandgemTown_Movement_PlayerWalkToLabZ844
    WaitMovement
    GoTo SandgemTown_ThisIsOurPokemonResearchLab

SandgemTown_WalkToLabZ845:
    ApplyMovement LOCALID_SANDGEM_COUNTERPART, SandgemTown_Movement_CounterpartWalkToLabZ845
    ApplyMovement LOCALID_PLAYER, SandgemTown_Movement_PlayerWalkToLabZ845
    WaitMovement
    GoTo SandgemTown_ThisIsOurPokemonResearchLab

SandgemTown_WalkToLabZ846:
    ApplyMovement LOCALID_SANDGEM_COUNTERPART, SandgemTown_Movement_CounterpartWalkToLabZ846
    ApplyMovement LOCALID_PLAYER, SandgemTown_Movement_PlayerWalkToLabZ846
    WaitMovement
    GoTo SandgemTown_ThisIsOurPokemonResearchLab

SandgemTown_WalkToLabZ847:
    ApplyMovement LOCALID_SANDGEM_COUNTERPART, SandgemTown_Movement_CounterpartWalkToLabZ847
    ApplyMovement LOCALID_PLAYER, SandgemTown_Movement_PlayerWalkToLabZ847
    WaitMovement
    GoTo SandgemTown_ThisIsOurPokemonResearchLab

SandgemTown_WalkToLabZ848:
    ApplyMovement LOCALID_SANDGEM_COUNTERPART, SandgemTown_Movement_CounterpartWalkToLabZ848
    ApplyMovement LOCALID_PLAYER, SandgemTown_Movement_PlayerWalkToLabZ848
    WaitMovement
    GoTo SandgemTown_ThisIsOurPokemonResearchLab

SandgemTown_ThisIsOurPokemonResearchLab:
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, SandgemTown_DawnThisIsItOurLab
    GoToIfEq VAR_RESULT, GENDER_FEMALE, SandgemTown_LucasThisIsItOurLab
    End

SandgemTown_DawnThisIsItOurLab:
    Message SandgemTown_Text_DawnThisIsItOurLab
    GoTo SandgemTown_RivalExitLab

SandgemTown_LucasThisIsItOurLab:
    Message SandgemTown_Text_LucasThisIsItOurLab
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
    PlaySE SEQ_SE_DP_WALL_HIT2
    Message SandgemTown_Text_BigThud
    ApplyMovement LOCALID_RIVAL, SandgemTown_Movement_RivalNoticePlayer
    WaitMovement
    Common_SetRivalBGM
    BufferRivalName 0
    BufferPlayerName 1
    Message SandgemTown_Text_OhItsYouPlayer
    CloseMessage
    ApplyMovement LOCALID_PLAYER, SandgemTown_Movement_PlayerWatchRivalLeave
    ApplyMovement LOCALID_SANDGEM_COUNTERPART, SandgemTown_Movement_CounterpartWatchRivalLeave
    ApplyMovement LOCALID_RIVAL, SandgemTown_Movement_RivalLeave
    WaitMovement
    RemoveObject LOCALID_RIVAL
    Common_FadeToDefaultMusic2
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
    ApplyMovement LOCALID_SANDGEM_COUNTERPART, SandgemTown_Movement_CounterpartEnterLab
    ApplyMovement LOCALID_PLAYER, SandgemTown_Movement_PlayerEnterLab
    WaitMovement
    PlayDoorCloseAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    UnloadAnimation ANIMATION_TAG_DOOR_1
    RemoveObject LOCALID_SANDGEM_COUNTERPART
    SetVar VAR_SANDGEM_TOWN_STATE, 1
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_SANDGEM_TOWN_POKEMON_RESEARCH_LAB, 7, 15, DIR_NORTH
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
SandgemTown_Movement_CounterpartWalkToLabZ843:
    WalkNormalEast 5
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SandgemTown_Movement_CounterpartWalkToLabZ844:
    WalkNormalEast 4
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SandgemTown_Movement_CounterpartWalkToLabZ845:
    WalkNormalNorth
    WalkNormalEast 4
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SandgemTown_Movement_CounterpartWalkToLabZ846:
    WalkNormalEast 2
    WalkNormalNorth
    WalkNormalEast 3
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SandgemTown_Movement_CounterpartWalkToLabZ847:
    WalkNormalNorth 2
    WalkNormalEast 5
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SandgemTown_Movement_CounterpartWalkToLabZ848:
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

SandgemTown_Movement_Unused:
    Delay8 3
    WalkOnSpotNormalSouth
    EndMovement

SandgemTown_Movement_Unused2:
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
SandgemTown_Movement_PlayerWalkToLabZ843:
    WalkNormalSouth
    WalkNormalEast 4
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SandgemTown_Movement_PlayerWalkToLabZ844:
    WalkNormalEast 2
    WalkNormalEast 2
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SandgemTown_Movement_PlayerWalkToLabZ845:
    WalkNormalEast
    WalkNormalNorth
    WalkNormalEast 3
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SandgemTown_Movement_PlayerWalkToLabZ846:
    WalkNormalNorth
    WalkNormalEast 2
    WalkNormalNorth
    WalkNormalEast 2
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SandgemTown_Movement_PlayerWalkToLabZ847:
    WalkNormalNorth 3
    WalkNormalEast 4
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SandgemTown_Movement_PlayerWalkToLabZ848:
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

SandgemTown_OnFrame_ExitLab:
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
    ApplyMovement LOCALID_SANDGEM_COUNTERPART, SandgemTown_Movement_CounterpartNoticeProfRowan
    WaitMovement
    Message SandgemTown_Text_TakeThisAsWell
    SetVar VAR_0x8004, ITEM_TM27
    SetVar VAR_0x8005, 1
    Common_GiveItemQuantity
    Message SandgemTown_Text_ContainsTheMoveReturn
    CloseMessage
    ApplyMovement LOCALID_PROF_ROWAN, SandgemTown_Movement_ProfRowanEnterLab
    WaitMovement
    PlayDoorCloseAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    UnloadAnimation ANIMATION_TAG_DOOR_1
    RemoveObject LOCALID_PROF_ROWAN
    WaitTime 30, VAR_RESULT
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, SandgemTown_DawnIDidntKnowProfessorHadTMs
    GoToIfEq VAR_RESULT, GENDER_FEMALE, SandgemTown_LucasWellIllBeProfessorHadTMs
    End

SandgemTown_DawnIDidntKnowProfessorHadTMs:
    Message SandgemTown_Text_DawnIDidntKnowProfessorHadTMs
    CloseMessage
    GoTo SandgemTown_CounterpartWillShowYouAround
    End

SandgemTown_LucasWellIllBeProfessorHadTMs:
    Message SandgemTown_Text_LucasWellIllBeProfessorHadTMs
    CloseMessage
    GoTo SandgemTown_CounterpartWillShowYouAround
    End

SandgemTown_CounterpartWillShowYouAround:
    ApplyMovement LOCALID_PLAYER, SandgemTown_Movement_PlayerFaceCounterpartSouth
    ApplyMovement LOCALID_SANDGEM_COUNTERPART, SandgemTown_Movement_CounterpartWalkNorthToPlayer
    WaitMovement
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, SandgemTown_DawnIllActAsYourMentor
    GoToIfEq VAR_RESULT, GENDER_FEMALE, SandgemTown_LucasShowYouAFewThings
    End

SandgemTown_DawnIllActAsYourMentor:
    BufferCounterpartName 0
    BufferPlayerName 1
    Message SandgemTown_Text_DawnIllActAsYourMentor
    GoTo SandgemTown_WalkToPokemonCenter

SandgemTown_LucasShowYouAFewThings:
    BufferCounterpartName 0
    BufferPlayerName 1
    Message SandgemTown_Text_LucasShowYouAFewThings
    GoTo SandgemTown_WalkToPokemonCenter

SandgemTown_WalkToPokemonCenter:
    CloseMessage
    Common_SetFollowMeBGM
    ApplyMovement LOCALID_SANDGEM_COUNTERPART, SandgemTown_Movement_CounterpartWalkToPokemonCenter
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
    ApplyMovement LOCALID_SANDGEM_COUNTERPART, SandgemTown_Movement_CounterpartWalkToPokeMart
    ApplyMovement LOCALID_PLAYER, SandgemTown_Movement_PlayerWalkToPokeMart
    WaitMovement
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, SandgemTown_DawnThisIsThePokeMart
    GoToIfEq VAR_RESULT, GENDER_FEMALE, SandgemTown_LucasThisIsThePokeMart
    End

SandgemTown_DawnThisIsThePokeMart:
    BufferPlayerName 0
    Message SandgemTown_Text_DawnThisIsThePokeMart
    GoTo SandgemTown_LetYourFamilyKnow

SandgemTown_LucasThisIsThePokeMart:
    BufferPlayerName 0
    Message SandgemTown_Text_LucasThisIsThePokeMart
    GoTo SandgemTown_LetYourFamilyKnow

SandgemTown_LetYourFamilyKnow:
    CloseMessage
    ApplyMovement LOCALID_SANDGEM_COUNTERPART, SandgemTown_Movement_CounterpartFacePlayerWest
    ApplyMovement LOCALID_PLAYER, SandgemTown_Movement_PlayerFaceCounterpartEast
    WaitMovement
    ApplyMovement LOCALID_SANDGEM_COUNTERPART, SandgemTown_Movement_CounterpartExclamationMark
    WaitMovement
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, SandgemTown_DawnLetYourFamilyKnow
    GoToIfEq VAR_RESULT, GENDER_FEMALE, SandgemTown_LucasLetYourFamilyKnow
    End

SandgemTown_DawnLetYourFamilyKnow:
    BufferPlayerName 1
    Message SandgemTown_Text_DawnLetYourFamilyKnow
    GoTo SandgemTown_CounterpartLeave

SandgemTown_LucasLetYourFamilyKnow:
    BufferPlayerName 1
    Message SandgemTown_Text_LucasLetYourFamilyKnow
    GoTo SandgemTown_CounterpartLeave

SandgemTown_CounterpartLeave:
    CloseMessage
    ApplyMovement LOCALID_SANDGEM_COUNTERPART, SandgemTown_Movement_CounterpartLeave
    ApplyMovement LOCALID_PLAYER, SandgemTown_Movement_PlayerWatchCounterpartLeave
    WaitMovement
    Common_FadeToDefaultMusic3
    RemoveObject LOCALID_SANDGEM_COUNTERPART
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
SandgemTown_Movement_PlayerFaceCounterpartEast:
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
SandgemTown_Movement_CounterpartFacePlayerWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
SandgemTown_Movement_CounterpartExclamationMark:
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
SandgemTown_Movement_CounterpartLeave:
    WalkNormalSouth
    WalkNormalWest 5
    WalkNormalNorth 10
    EndMovement

SandgemTown_Youngster:
    NPCMessage SandgemTown_Text_PokemonAreSoCool
    End

SandgemTown_PokemonBreederM:
    NPCMessage SandgemTown_Text_ItsAPokedexIsntIt
    End

SandgemTown_PokemonBreederF:
    NPCMessage SandgemTown_Text_IdBetterSaveThis
    End

SandgemTown_RowansComeBack_Unused:
    NPCMessage SandgemTown_Text_RowansComeBack
    End

SandgemTown_MapSignpost:
    ShowMapSign SandgemTown_Text_MapSign
    End

SandgemTown_SignboardPokemonResearchLab:
    ShowLandmarkSign SandgemTown_Text_SignPokemonResearchLab
    End

SandgemTown_SignboardCounterpartsHouse:
    BufferCounterpartName 0
    ShowLandmarkSign SandgemTown_Text_SignCounterpartsHouse
    End

SandgemTown_SignboardPokeMart:
    ShowLandmarkSign SandgemTown_Text_SignPokeMart
    End

SandgemTown_SignboardPokemonCenter:
    ShowLandmarkSign SandgemTown_Text_SignPokemonCenter
    End

    .balign 4, 0
