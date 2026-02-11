#include "macros/scrcmd.inc"
#include "res/text/bank/route_202.h"
#include "res/field/events/events_route_202.h"


    ScriptEntry Route202_OnTransition
    ScriptEntry Route202_Youngster
    ScriptEntry Route202_ArrowSignpostSandgemTown
    ScriptEntry Route202_ArrowSignpostJubilifeCity
    ScriptEntry Route202_TrainerTipsSignpost
    ScriptEntry Route202_TriggerCatchingTutorial
    ScriptEntry Route202_Counterpart
    ScriptEntryEnd

Route202_OnTransition:
    CallIfGe VAR_ROUTE_202_STATE, 2, Route202_SetCounterpartPokeRadarPosition
    GetPlayerGender VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_MALE, Route202_SetCounterpartGraphicsDawn
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_FEMALE, Route202_SetCounterpartGraphicsLucas
    End

Route202_SetCounterpartGraphicsDawn:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_PLAYER_F
    End

Route202_SetCounterpartGraphicsLucas:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_PLAYER_M
    End

Route202_SetCounterpartPokeRadarPosition:
    SetObjectEventPos LOCALID_COUNTERPART, 186, 817
    SetObjectEventDir LOCALID_COUNTERPART, DIR_SOUTH
    SetObjectEventMovementType LOCALID_COUNTERPART, MOVEMENT_TYPE_LOOK_SOUTH
    Return

Route202_Youngster:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message Route202_Text_SomePokemonOnlyAppearInTheMorning
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

Route202_ArrowSignpostSandgemTown:
    ShowArrowSign Route202_Text_Rt202SandgemTown
    End

Route202_ArrowSignpostJubilifeCity:
    ShowArrowSign Route202_Text_Rt202JubilifeCity
    End

Route202_TrainerTipsSignpost:
    ShowScrollingSign Route202_Text_TrainerTipsPokemonInvolvedInBattleEarnExpPoints
    End

Route202_TriggerCatchingTutorial:
    LockAll
    ApplyMovement LOCALID_COUNTERPART, Route202_Movement_CounterpartNoticePlayer
    ApplyMovement LOCALID_PLAYER, Route202_Movement_PlayerDelay
    WaitMovement
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 825, Route202_CounterpartWalkToPlayerZ825
    GoToIfEq VAR_0x8005, 826, Route202_CounterpartWalkToPlayerZ826
    GoToIfEq VAR_0x8005, 827, Route202_CounterpartWalkToPlayerZ827
    GoToIfEq VAR_0x8005, 828, Route202_CounterpartWalkToPlayerZ828
    GoToIfEq VAR_0x8005, 829, Route202_CounterpartWalkToPlayerZ829
    End

Route202_CounterpartWalkToPlayerZ825:
    ApplyMovement LOCALID_COUNTERPART, Route202_Movement_CounterpartWalkToPlayerZ825
    WaitMovement
    GoTo Route202_CheckStartCatchingTutorial

Route202_CounterpartWalkToPlayerZ826:
    ApplyMovement LOCALID_COUNTERPART, Route202_Movement_CounterpartWalkToPlayerZ826
    WaitMovement
    GoTo Route202_CheckStartCatchingTutorial

Route202_CounterpartWalkToPlayerZ827:
    ApplyMovement LOCALID_COUNTERPART, Route202_Movement_CounterpartWalkToPlayerZ827
    WaitMovement
    GoTo Route202_CheckStartCatchingTutorial

Route202_CounterpartWalkToPlayerZ828:
    ApplyMovement LOCALID_COUNTERPART, Route202_Movement_CounterpartWalkToPlayerZ828
    WaitMovement
    GoTo Route202_CheckStartCatchingTutorial

Route202_CounterpartWalkToPlayerZ829:
    ApplyMovement LOCALID_COUNTERPART, Route202_Movement_CounterpartWalkToPlayerZ829
    WaitMovement
    GoTo Route202_CheckStartCatchingTutorial

Route202_CheckStartCatchingTutorial:
    GoToIfUnset FLAG_RECEIVED_PARCEL, Route202_TellYourFamily
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, Route202_DawnIHaventShownYouHowToCatchAPokemon
    GoToIfEq VAR_RESULT, GENDER_FEMALE, Route202_LucasDoYouKnowHowToCatchAPokemon
    End

Route202_DawnIHaventShownYouHowToCatchAPokemon:
    Common_SetCounterpartBGM
    BufferCounterpartName 0
    BufferPlayerName 1
    Message Route202_Text_DawnIHaventShownYouHowToCatchAPokemon
    GoTo Route202_DoCatchingTutorial

Route202_LucasDoYouKnowHowToCatchAPokemon:
    Common_SetCounterpartBGM
    BufferCounterpartName 0
    BufferPlayerName 1
    Message Route202_Text_LucasDoYouKnowHowToCatchAPokemon
    GoTo Route202_DoCatchingTutorial

Route202_DoCatchingTutorial:
    CloseMessage
    ApplyMovement LOCALID_COUNTERPART, Route202_Movement_CounterpartWalkWestIntoTallGrass
    ApplyMovement LOCALID_PLAYER, Route202_Movement_PlayerWalkWestIntoTallGrass
    WaitMovement
    StartCatchingTutorial
    ApplyMovement LOCALID_COUNTERPART, Route202_Movement_CounterpartWalkOnSpotEastAfterCatchingTutorial
    WaitMovement
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, Route202_DawnToGetYouStartedIllGiveYouFivePokeBalls
    GoToIfEq VAR_RESULT, GENDER_FEMALE, Route202_LucasHereIllGiveYouFivePokeballsToGetYouStarted
    End

Route202_DawnToGetYouStartedIllGiveYouFivePokeBalls:
    BufferPlayerName 0
    Message Route202_Text_DawnToGetYouStartedIllGiveYouFivePokeBalls
    GoTo Route202_GivePokeballs

Route202_LucasHereIllGiveYouFivePokeballsToGetYouStarted:
    BufferPlayerName 0
    Message Route202_Text_LucasHereIllGiveYouFivePokeballsToGetYouStarted
    GoTo Route202_GivePokeballs

Route202_GivePokeballs:
    SetVar VAR_0x8004, ITEM_POKE_BALL
    SetVar VAR_0x8005, 5
    Common_GiveItemQuantity
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, Route202_DawnLeave
    GoToIfEq VAR_RESULT, GENDER_FEMALE, Route202_LucasLeave
    End

Route202_DawnLeave:
    BufferPlayerName 0
    Message Route202_Text_DawnByeNow
    GoTo Route202_CounterpartLeave

Route202_LucasLeave:
    Message Route202_Text_LucasSeeYouAround
    GoTo Route202_CounterpartLeave

Route202_CounterpartLeave:
    CloseMessage
    ApplyMovement LOCALID_COUNTERPART, Route202_Movement_CounterpartLeaveCatchingTutorial
    WaitMovement
    RemoveObject LOCALID_COUNTERPART
    SetVar VAR_ROUTE_202_STATE, 1
    ReleaseAll
    End

Route202_TellYourFamily:
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, Route202_DawnTellYourFamily
    GoToIfEq VAR_RESULT, GENDER_FEMALE, Route202_LucasTellYourFamily
    End

Route202_DawnTellYourFamily:
    BufferCounterpartName 0
    BufferPlayerName 1
    CallIfUnset FLAG_TALKED_TO_ROUTE_202_COUNTERPART, Route202_DawnDidYouTellYourFamily
    CallIfSet FLAG_TALKED_TO_ROUTE_202_COUNTERPART, Route202_DawnYouShouldGoTellYourFamily
    GoTo Route202_CloseMessageTellYourFamily

Route202_DawnDidYouTellYourFamily:
    Message Route202_Text_DawnDidYouTellYourFamily
    Return

Route202_DawnYouShouldGoTellYourFamily:
    Message Route202_Text_DawnYouShouldGoTellYourFamily
    Return

Route202_LucasTellYourFamily:
    BufferCounterpartName 0
    BufferPlayerName 1
    CallIfUnset FLAG_TALKED_TO_ROUTE_202_COUNTERPART, Route202_LucasDidYouTellYourFamily
    CallIfSet FLAG_TALKED_TO_ROUTE_202_COUNTERPART, Route202_LucasWhyDontYouGoTellYourFamily
    GoTo Route202_CloseMessageTellYourFamily

Route202_LucasDidYouTellYourFamily:
    Message Route202_Text_LucasDidYouTellYourFamily
    Return

Route202_LucasWhyDontYouGoTellYourFamily:
    Message Route202_Text_LucasWhyDontYouGoTellYourFamily
    Return

Route202_CloseMessageTellYourFamily:
    CloseMessage
    GoToIfEq VAR_0x8005, 825, Route202_CounterpartWalkBackZ825
    GoToIfEq VAR_0x8005, 826, Route202_CounterpartWalkBackZ826
    GoToIfEq VAR_0x8005, 827, Route202_CounterpartWalkBackZ827
    GoToIfEq VAR_0x8005, 828, Route202_CounterpartWalkBackZ828
    GoToIfEq VAR_0x8005, 829, Route202_CounterpartWalkBackZ829
    End

Route202_CounterpartWalkBackZ825:
    ApplyMovement LOCALID_COUNTERPART, Route202_Movement_CounterpartPushPlayerAndWalkBackZ825
    ApplyMovement LOCALID_PLAYER, Route202_Movement_PlayerStepBackEast
    WaitMovement
    GoTo Route202_TellYourFamilyEnd

Route202_CounterpartWalkBackZ826:
    ApplyMovement LOCALID_COUNTERPART, Route202_Movement_CounterpartPushPlayerAndWalkBackZ826
    ApplyMovement LOCALID_PLAYER, Route202_Movement_PlayerStepBackEast
    WaitMovement
    GoTo Route202_TellYourFamilyEnd

Route202_CounterpartWalkBackZ827:
    ApplyMovement LOCALID_COUNTERPART, Route202_Movement_CounterpartPushPlayerAndWalkBackZ827
    ApplyMovement LOCALID_PLAYER, Route202_Movement_PlayerStepBackEast
    WaitMovement
    GoTo Route202_TellYourFamilyEnd

Route202_CounterpartWalkBackZ828:
    ApplyMovement LOCALID_COUNTERPART, Route202_Movement_CounterpartPushPlayerAndWalkBackZ828
    ApplyMovement LOCALID_PLAYER, Route202_Movement_PlayerStepBackEast
    WaitMovement
    GoTo Route202_TellYourFamilyEnd

Route202_CounterpartWalkBackZ829:
    ApplyMovement LOCALID_COUNTERPART, Route202_Movement_CounterpartPushPlayerAndWalkBackZ829
    ApplyMovement LOCALID_PLAYER, Route202_Movement_PlayerStepBackEast
    WaitMovement
    GoTo Route202_TellYourFamilyEnd

Route202_TellYourFamilyEnd:
    ApplyMovement LOCALID_COUNTERPART, Route202_Movement_CounterpartWalkOnSpotEast
    WaitMovement
    SetFlag FLAG_TALKED_TO_ROUTE_202_COUNTERPART
    ReleaseAll
    End

    .balign 4, 0
Route202_Movement_CounterpartNoticePlayer:
    WalkOnSpotNormalEast
    EmoteExclamationMark
    Delay16
    EndMovement

    .balign 4, 0
Route202_Movement_CounterpartWalkToPlayerZ825:
    WalkNormalEast 4
    WalkNormalNorth 2
    WalkNormalEast
    EndMovement

    .balign 4, 0
Route202_Movement_CounterpartWalkToPlayerZ826:
    WalkNormalEast 4
    WalkNormalNorth
    WalkNormalEast
    EndMovement

    .balign 4, 0
Route202_Movement_CounterpartWalkToPlayerZ827:
    WalkNormalEast 4
    WalkNormalEast
    EndMovement

    .balign 4, 0
Route202_Movement_CounterpartWalkToPlayerZ828:
    WalkNormalEast 4
    WalkNormalSouth
    WalkNormalEast
    EndMovement

    .balign 4, 0
Route202_Movement_CounterpartWalkToPlayerZ829:
    WalkNormalEast 4
    WalkNormalSouth 2
    WalkNormalEast
    EndMovement

    .balign 4, 0
Route202_Movement_CounterpartPushPlayerAndWalkBackZ825:
    WalkNormalEast
    WalkNormalWest 4
    WalkNormalWest 2
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
Route202_Movement_CounterpartPushPlayerAndWalkBackZ826:
    WalkNormalEast
    WalkNormalWest 4
    WalkNormalWest 2
    WalkNormalSouth
    EndMovement

    .balign 4, 0
Route202_Movement_CounterpartPushPlayerAndWalkBackZ827:
    WalkNormalEast
    WalkNormalWest 4
    WalkNormalWest 2
    EndMovement

    .balign 4, 0
Route202_Movement_CounterpartPushPlayerAndWalkBackZ828:
    WalkNormalEast
    WalkNormalWest 4
    WalkNormalWest 2
    WalkNormalNorth
    EndMovement

    .balign 4, 0
Route202_Movement_CounterpartPushPlayerAndWalkBackZ829:
    WalkNormalEast
    WalkNormalWest 4
    WalkNormalWest 2
    WalkNormalNorth 2
    EndMovement

    .balign 4, 0
Route202_Movement_CounterpartWalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
Route202_Movement_CounterpartWalkWestIntoTallGrass:
    WalkNormalWest 2
    EndMovement

    .balign 4, 0
Route202_Movement_CounterpartWalkOnSpotEastAfterCatchingTutorial:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
Route202_Movement_CounterpartLeaveCatchingTutorial:
    WalkNormalWest 12
    EndMovement

    .balign 4, 0
Route202_Movement_PlayerDelay:
    Delay8
    FaceWest
    EndMovement

    .balign 4, 0
Route202_Movement_PlayerStepBackEast:
    LockDir
    WalkNormalEast
    UnlockDir
    EndMovement

    .balign 4, 0
Route202_Movement_PlayerWalkWestIntoTallGrass:
    WalkNormalWest 2
    EndMovement

Route202_Counterpart:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 0
    GetPlayerDir VAR_0x8002
    GetPlayerGender VAR_0x8000
    CallIfEq VAR_0x8000, GENDER_MALE, Route202_DawnLetMeShowYouHowThePokeRadarWorks
    CallIfEq VAR_0x8000, GENDER_FEMALE, Route202_LucasLetMeExplainHowThePokeRadarWorks
    CloseMessage
    PlayMusic SEQ_POKERADAR
    AddCameraOverrideObject 189, 818
    ApplyFreeCameraMovement _06F8
    WaitMovement
    RemoveCameraOverrideObject
    ApplyMovement LOCALID_COUNTERPART, Route202_Movement_CounterpartFaceGrassPatchEast
    ApplyMovement LOCALID_PLAYER, Route202_Movement_PlayerFaceGrassPatchEast
    WaitMovement
    WaitTime 15, VAR_RESULT
    CallIfEq VAR_0x8000, 0, Route202_DawnTheresAPokemonInThatPatchOfTallGrass
    CallIfEq VAR_0x8000, 1, Route202_LucasTheresAPokemonInThatPatchOfTallGrass
    CloseMessage
    WaitTime 15, VAR_RESULT
    PlayDefaultMusic
    CallIfEq VAR_0x8002, DIR_NORTH, Route202_PlayerCounterpartFaceEachOtherNorth
    CallIfEq VAR_0x8002, DIR_SOUTH, Route202_PlayerCounterpartFaceEachOtherSouth
    CallIfEq VAR_0x8002, DIR_WEST, Route202_PlayerCounterpartFaceEachOtherWest
    CallIfEq VAR_0x8002, DIR_EAST, Route202_PlayerCounterpartFaceEachOtherEast
    CallIfEq VAR_0x8000, GENDER_MALE, Route202_DawnNowThisIsWhereItGetsInteresting
    CallIfEq VAR_0x8000, GENDER_FEMALE, Route202_LucasNowHeresTheStrangePart
    CloseMessage
    CallIfEq VAR_0x8002, DIR_NORTH, Route202_CounterpartLeavePokeRadarNorth
    CallIfEq VAR_0x8002, DIR_SOUTH, Route202_CounterpartLeavePokeRadarSouth
    CallIfEq VAR_0x8002, DIR_WEST, Route202_CounterpartLeavePokeRadarWest
    CallIfEq VAR_0x8002, DIR_EAST, Route202_CounterpartLeavePokeRadarEast
    GoTo Route202_CounterpartPokeRadarEnd
    End

Route202_PlayerCounterpartFaceEachOtherNorth:
    ApplyMovement LOCALID_COUNTERPART, Route202_Movement_CounterpartWalkOnSpotSouthToFacePlayer
    ApplyMovement LOCALID_PLAYER, Route202_Movement_PlayerWalkOnSpotNorthToFaceCounterpart
    WaitMovement
    Return

Route202_PlayerCounterpartFaceEachOtherSouth:
    ApplyMovement LOCALID_COUNTERPART, Route202_Movement_CounterpartWalkOnSpotNorthToFacePlayer
    ApplyMovement LOCALID_PLAYER, Route202_Movement_PlayerWalkOnSpotSouthToFaceCounterpart
    WaitMovement
    Return

Route202_PlayerCounterpartFaceEachOtherWest:
    ApplyMovement LOCALID_PLAYER, Route202_Movement_PlayerWalkOnSpotWestToFaceCounterpart
    WaitMovement
    Return

Route202_PlayerCounterpartFaceEachOtherEast:
    ApplyMovement LOCALID_COUNTERPART, Route202_Movement_CounterpartWalkOnSpotWestToFacePlayer
    WaitMovement
    Return

Route202_CounterpartLeavePokeRadarNorth:
    ApplyMovement LOCALID_COUNTERPART, Route202_Movement_CounterpartLeavePokeRadarNorth
    WaitMovement
    Return

Route202_CounterpartLeavePokeRadarSouth:
    ApplyMovement LOCALID_COUNTERPART, Route202_Movement_CounterpartLeavePokeRadarSouthWestEast
    WaitMovement
    Return

Route202_CounterpartLeavePokeRadarWest:
    ApplyMovement LOCALID_COUNTERPART, Route202_Movement_CounterpartLeavePokeRadarSouthWestEast
    WaitMovement
    Return

Route202_CounterpartLeavePokeRadarEast:
    ApplyMovement LOCALID_COUNTERPART, Route202_Movement_CounterpartLeavePokeRadarSouthWestEast
    WaitMovement
    Return

Route202_CounterpartPokeRadarEnd:
    RemoveObject LOCALID_COUNTERPART
    ClearFlag FLAG_HIDE_SANDGEM_TOWN_COUNTERPART
    SetVar VAR_ROUTE_202_STATE, 3
    ReleaseAll
    End

Route202_DawnLetMeShowYouHowThePokeRadarWorks:
    Message Route202_Text_DawnLetMeShowYouHowThePokeRadarWorks
    Return

Route202_LucasLetMeExplainHowThePokeRadarWorks:
    Message Route202_Text_LucasLetMeExplainHowThePokeRadarWorks
    Return

Route202_DawnTheresAPokemonInThatPatchOfTallGrass:
    Message Route202_Text_DawnTheresAPokemonInThatPatchOfTallGrass
    Return

Route202_LucasTheresAPokemonInThatPatchOfTallGrass:
    Message Route202_Text_LucasTheresAPokemonInThatPatchOfTallGrass
    Return

Route202_DawnNowThisIsWhereItGetsInteresting:
    Message Route202_Text_DawnNowThisIsWhereItGetsInteresting
    Return

Route202_LucasNowHeresTheStrangePart:
    Message Route202_Text_LucasNowHeresTheStrangePart
    Return

    .balign 4, 0
Route202_Movement_CounterpartLeavePokeRadarNorth:
    WalkNormalWest
    WalkNormalSouth 3
    WalkNormalWest 10
    EndMovement

    .balign 4, 0
Route202_Movement_CounterpartLeavePokeRadarSouthWestEast:
    WalkNormalSouth 3
    WalkNormalWest 10
    EndMovement

    .balign 4, 0
Route202_Movement_CounterpartFaceGrassPatchEast:
    FaceEast
    EndMovement

    .balign 4, 0
Route202_Movement_CounterpartWalkOnSpotSouthToFacePlayer:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
Route202_Movement_CounterpartWalkOnSpotNorthToFacePlayer:
    WalkOnSpotNormalNorth
    EndMovement

Route202_UnusedMovement:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
Route202_Movement_CounterpartWalkOnSpotWestToFacePlayer:
    WalkOnSpotNormalWest
    EndMovement

Route202_UnusedMovement2:
    Delay8
    WalkOnSpotNormalWest
    EndMovement

Route202_UnusedMovement3:
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
Route202_Movement_PlayerFaceGrassPatchEast:
    FaceEast
    EndMovement

    .balign 4, 0
Route202_Movement_PlayerWalkOnSpotNorthToFaceCounterpart:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
Route202_Movement_PlayerWalkOnSpotSouthToFaceCounterpart:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
Route202_Movement_PlayerWalkOnSpotWestToFaceCounterpart:
    WalkOnSpotNormalWest
    EndMovement

Route202_UnusedMovement4:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_06F8:
    WalkNormalEast
    EndMovement
