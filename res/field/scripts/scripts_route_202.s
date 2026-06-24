#include "macros/scrcmd.inc"
#include "res/text/bank/route_202.h"
#include "res/field/events/events_route_202.h"


    ScriptEntry Route202_OnTransition
    ScriptEntry Route202_Youngster
    ScriptEntry Route202_ArrowSignpostSandgemTown
    ScriptEntry Route202_ArrowSignpostJubilifeCity
    ScriptEntry Route202_TrainerTipsSignpost
    ScriptEntry Route202_CoordEvent_CatchingTutorial
    ScriptEntry Route202_Counterpart
    ScriptEntryEnd

Route202_OnTransition:
    CallIfGe VAR_ROUTE_202_STATE, 2, Route202_SetCounterpartPokeRadarPosition
    GetPlayerGender VAR_MAP_LOCAL_0x0
    GoToIfEq VAR_MAP_LOCAL_0x0, GENDER_MALE, Route202_SetCounterpartGraphicsDawn
    GoToIfEq VAR_MAP_LOCAL_0x0, GENDER_FEMALE, Route202_SetCounterpartGraphicsLucas
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
    NPCMessage Route202_Text_SomePokemonOnlyInTheMorning
    End

Route202_ArrowSignpostSandgemTown:
    ShowArrowSign Route202_Text_SignSandgemTown
    End

Route202_ArrowSignpostJubilifeCity:
    ShowArrowSign Route202_Text_SignJubilifeCity
    End

Route202_TrainerTipsSignpost:
    ShowScrollingSign Route202_Text_TrainerTipsEarnExpPoints
    End

Route202_CoordEvent_CatchingTutorial:
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
    GoToIfEq VAR_RESULT, GENDER_MALE, Route202_DawnIllDemonstrateHowToCatch
    GoToIfEq VAR_RESULT, GENDER_FEMALE, Route202_LucasIllDemonstrateHowToCatch
    End

Route202_DawnIllDemonstrateHowToCatch:
    Common_SetCounterpartBGM
    BufferCounterpartName 0
    BufferPlayerName 1
    Message Route202_Text_DawnIllDemonstrateHowToCatch
    GoTo Route202_DoCatchingTutorial

Route202_LucasIllDemonstrateHowToCatch:
    Common_SetCounterpartBGM
    BufferCounterpartName 0
    BufferPlayerName 1
    Message Route202_Text_LucasIllDemonstrateHowToCatch
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
    GoToIfEq VAR_RESULT, GENDER_MALE, Route202_DawnIllGiveYouFivePokeBalls
    GoToIfEq VAR_RESULT, GENDER_FEMALE, Route202_LucasIllGiveYouFivePokeBalls
    End

Route202_DawnIllGiveYouFivePokeBalls:
    BufferPlayerName 0
    Message Route202_Text_DawnIllGiveYouFivePokeBalls
    GoTo Route202_GivePokeballs

Route202_LucasIllGiveYouFivePokeBalls:
    BufferPlayerName 0
    Message Route202_Text_LucasIllGiveYouFivePokeBalls
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
    CallIfSet FLAG_TALKED_TO_ROUTE_202_COUNTERPART, Route202_DawnGoTellYourFamily
    GoTo Route202_CloseMessageTellYourFamily

Route202_DawnDidYouTellYourFamily:
    Message Route202_Text_DawnDidYouTellYourFamily
    Return

Route202_DawnGoTellYourFamily:
    Message Route202_Text_DawnGoTellYourFamily
    Return

Route202_LucasTellYourFamily:
    BufferCounterpartName 0
    BufferPlayerName 1
    CallIfUnset FLAG_TALKED_TO_ROUTE_202_COUNTERPART, Route202_LucasDidYouTellYourFamily
    CallIfSet FLAG_TALKED_TO_ROUTE_202_COUNTERPART, Route202_LucasGoTellYourFamily
    GoTo Route202_CloseMessageTellYourFamily

Route202_LucasDidYouTellYourFamily:
    Message Route202_Text_LucasDidYouTellYourFamily
    Return

Route202_LucasGoTellYourFamily:
    Message Route202_Text_LucasGoTellYourFamily
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
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 0
    GetPlayerDir VAR_0x8002
    GetPlayerGender VAR_0x8000
    CallIfEq VAR_0x8000, GENDER_MALE, Route202_DawnLetMeShowPokeRadar
    CallIfEq VAR_0x8000, GENDER_FEMALE, Route202_LucasLetMeExplainPokeRadar
    CloseMessage
    PlayMusic SEQ_POKERADAR
    AddCameraOverrideObject 189, 818
    ApplyFreeCameraMovement Route202_Movement_CameraMoveEast
    WaitMovement
    RemoveCameraOverrideObject
    ApplyMovement LOCALID_COUNTERPART, Route202_Movement_CounterpartFaceGrassPatchEast
    ApplyMovement LOCALID_PLAYER, Route202_Movement_PlayerFaceGrassPatchEast
    WaitMovement
    WaitTime 15, VAR_RESULT
    CallIfEq VAR_0x8000, 0, Route202_DawnPokemonInPatchOfGrass
    CallIfEq VAR_0x8000, 1, Route202_LucasPokemonInPatchOfGrass
    CloseMessage
    WaitTime 15, VAR_RESULT
    PlayDefaultMusic
    CallIfEq VAR_0x8002, DIR_NORTH, Route202_PlayerCounterpartFaceEachOtherNorth
    CallIfEq VAR_0x8002, DIR_SOUTH, Route202_PlayerCounterpartFaceEachOtherSouth
    CallIfEq VAR_0x8002, DIR_WEST, Route202_PlayerCounterpartFaceEachOtherWest
    CallIfEq VAR_0x8002, DIR_EAST, Route202_PlayerCounterpartFaceEachOtherEast
    CallIfEq VAR_0x8000, GENDER_MALE, Route202_DawnItGetsInteresting
    CallIfEq VAR_0x8000, GENDER_FEMALE, Route202_LucasHeresTheStrangePart
    CloseMessage
    CallIfEq VAR_0x8002, DIR_NORTH, Route202_CounterpartLeavePokeRadarNorth
    CallIfEq VAR_0x8002, DIR_SOUTH, Route202_CounterpartLeavePokeRadarSouth
    CallIfEq VAR_0x8002, DIR_WEST, Route202_CounterpartLeavePokeRadarWest
    CallIfEq VAR_0x8002, DIR_EAST, Route202_CounterpartLeavePokeRadarEast
    GoTo Route202_CounterpartPokeRadarEnd
    End

Route202_PlayerCounterpartFaceEachOtherNorth:
    ApplyMovement LOCALID_COUNTERPART, Route202_Movement_CounterpartWalkOnSpotSouth
    ApplyMovement LOCALID_PLAYER, Route202_Movement_PlayerWalkOnSpotNorth
    WaitMovement
    Return

Route202_PlayerCounterpartFaceEachOtherSouth:
    ApplyMovement LOCALID_COUNTERPART, Route202_Movement_CounterpartWalkOnSpotNorth
    ApplyMovement LOCALID_PLAYER, Route202_Movement_PlayerWalkOnSpotSouth
    WaitMovement
    Return

Route202_PlayerCounterpartFaceEachOtherWest:
    ApplyMovement LOCALID_PLAYER, Route202_Movement_PlayerWalkOnSpotWest
    WaitMovement
    Return

Route202_PlayerCounterpartFaceEachOtherEast:
    ApplyMovement LOCALID_COUNTERPART, Route202_Movement_CounterpartWalkOnSpotWest
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

Route202_DawnLetMeShowPokeRadar:
    Message Route202_Text_DawnLetMeShowPokeRadar
    Return

Route202_LucasLetMeExplainPokeRadar:
    Message Route202_Text_LucasLetMeExplainPokeRadar
    Return

Route202_DawnPokemonInPatchOfGrass:
    Message Route202_Text_DawnPokemonInPatchOfGrass
    Return

Route202_LucasPokemonInPatchOfGrass:
    Message Route202_Text_LucasPokemonInPatchOfGrass
    Return

Route202_DawnItGetsInteresting:
    Message Route202_Text_DawnItGetsInteresting
    Return

Route202_LucasHeresTheStrangePart:
    Message Route202_Text_LucasHeresTheStrangePart
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
Route202_Movement_CounterpartWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
Route202_Movement_CounterpartWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

Route202_Movement_Unused:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
Route202_Movement_CounterpartWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

Route202_Movement_Unused2:
    Delay8
    WalkOnSpotNormalWest
    EndMovement

Route202_Movement_Unused3:
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
Route202_Movement_PlayerFaceGrassPatchEast:
    FaceEast
    EndMovement

    .balign 4, 0
Route202_Movement_PlayerWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
Route202_Movement_PlayerWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
Route202_Movement_PlayerWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

Route202_Movement_Unused4:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
Route202_Movement_CameraMoveEast:
    WalkNormalEast
    EndMovement
