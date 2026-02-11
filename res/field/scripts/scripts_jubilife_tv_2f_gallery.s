#include "macros/scrcmd.inc"
#include "res/text/bank/jubilife_tv_2f_gallery.h"
#include "res/field/events/events_jubilife_tv_2f_gallery.h"


    ScriptEntry JubilifeTV2FGallery_Hiker
    ScriptEntry JubilifeTV2FGallery_Frame0
    ScriptEntry JubilifeTV2FGallery_Frame1
    ScriptEntry JubilifeTV2FGallery_Frame2
    ScriptEntry JubilifeTV2FGallery_Frame3
    ScriptEntry JubilifeTV2FGallery_Frame4
    ScriptEntry JubilifeTV2FGallery_Frame5
    ScriptEntry JubilifeTV2FGallery_Frame6
    ScriptEntry JubilifeTV2FGallery_Frame7
    ScriptEntry JubilifeTV2FGallery_Frame8
    ScriptEntry JubilifeTV2FGallery_Frame9
    ScriptEntry JubilifeTV2FGallery_Frame10
    ScriptEntry JubilifeTV2FGallery_PokemonBreederM
    ScriptEntry JubilifeTV2FGallery_Twin
    ScriptEntryEnd

JubilifeTV2FGallery_Hiker:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_0x8007, 0
    CallIfUnset FLAG_ENTERED_DRESSING_ROOM, _006F
    GoToIfEq VAR_MAP_LOCAL_1, 0, JubilifeTV2FGallery_AskDressUpPokemon
    GoToIfEq VAR_MAP_LOCAL_1, 1, JubilifeTV2FGallery_AskDressUpPokemonChangePhoto
    End

_006F:
    SetVar VAR_0x8007, 1
    Return

JubilifeTV2FGallery_AskDressUpPokemon:
    Message JubilifeTV2FGallery_Text_DressUpYourPokemonYouWillDoThisWontYou
    GoTo JubilifeTV2FGallery_YesNoDressUpPokemon

JubilifeTV2FGallery_AskDressUpPokemonChangePhoto:
    Message JubilifeTV2FGallery_Text_WouldYouLikeToDressUpAPokemonDearie
    GoTo JubilifeTV2FGallery_YesNoDressUpPokemon

JubilifeTV2FGallery_ShouldIExplainToYouHowToDressUpYourPokemon:
    Message JubilifeTV2FGallery_Text_ShouldIExplainToYouHowToDressUpYourPokemon
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, JubilifeTV2FGallery_JustChooseTheAccessoriesAndPutThemOnYourPokemon
    GoToIfEq VAR_RESULT, MENU_NO, JubilifeTV2FGallery_SetPokemonForDressUp
    End

JubilifeTV2FGallery_JustChooseTheAccessoriesAndPutThemOnYourPokemon:
    Message JubilifeTV2FGallery_Text_JustChooseTheAccessoriesAndPutThemOnYourPokemon
    GoTo JubilifeTV2FGallery_YesNoDressUpPokemonAfterExplanation

JubilifeTV2FGallery_YesNoDressUpPokemon:
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, JubilifeTV2FGallery_ShouldIExplainToYouHowToDressUpYourPokemon
    GoToIfEq VAR_RESULT, MENU_NO, JubilifeTV2FGallery_OhYouSillyThingWheresYourSenseOfAdventure
    End

JubilifeTV2FGallery_YesNoDressUpPokemonAfterExplanation:
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, JubilifeTV2FGallery_SetPokemonForDressUp
    GoToIfEq VAR_RESULT, MENU_NO, JubilifeTV2FGallery_OhYouSillyThingWheresYourSenseOfAdventure
    End

JubilifeTV2FGallery_SetPokemonForDressUp:
    GetPartyCount VAR_RESULT
    GoToIfEq VAR_RESULT, 1, JubilifeTV2FGallery_SetOnlyPokemonForDressUp
    GoToIfNe VAR_RESULT, 1, JubilifeTV2FGallery_ChoosePokemonForDressUp
    End

JubilifeTV2FGallery_SetOnlyPokemonForDressUp:
    SetVar VAR_MAP_LOCAL_2, 0
    GoTo JubilifeTV2FGallery_TehehehIHopeYouWillDressItUpAdorably

JubilifeTV2FGallery_ChoosePokemonForDressUp:
    Message JubilifeTV2FGallery_Text_OohIWonderWhichPokemonYoullDressUp
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    SelectMoveTutorPokemon
    GetSelectedPartySlot VAR_MAP_LOCAL_2
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_MAP_LOCAL_2, 0xFF, JubilifeTV2FGallery_OhYouSillyThingWheresYourSenseOfAdventure
    GetPartyMonSpecies VAR_MAP_LOCAL_2, VAR_RESULT
    GoToIfEq VAR_RESULT, SPECIES_NONE, JubilifeTV2FGallery_OohNonNonNonThatsAnEgg
    GoTo JubilifeTV2FGallery_TehehehIHopeYouWillDressItUpAdorably

JubilifeTV2FGallery_TehehehIHopeYouWillDressItUpAdorably:
    Message JubilifeTV2FGallery_Text_TehehehIHopeYouWillDressItUpAdorably
    CloseMessage
    GetPlayerDir VAR_0x8006
    GoToIfEq VAR_0x8006, DIR_NORTH, JubilifeTV2FGallery_EnterDressingRoomNorth
    GoToIfEq VAR_0x8006, DIR_WEST, JubilifeTV2FGallery_EnterDressingRoomWest
    GoToIfEq VAR_0x8006, DIR_EAST, JubilifeTV2FGallery_EnterDressingRoomEast
    End

JubilifeTV2FGallery_EnterDressingRoomNorth:
    ApplyMovement LOCALID_HIKER, JubilifeTV2FGallery_Movement_HikerMoveOutOfTheWayNorth
    WaitMovement
    ApplyMovement LOCALID_PLAYER, JubilifeTV2FGallery_Movement_PlayerEnterDressingRoomNorth
    WaitMovement
    GoTo JubilifeTV2FGallery_EnterDressingRoom

JubilifeTV2FGallery_EnterDressingRoomWest:
    ApplyMovement LOCALID_HIKER, JubilifeTV2FGallery_Movement_HikerMoveOutOfTheWayWest
    WaitMovement
    ApplyMovement LOCALID_PLAYER, JubilifeTV2FGallery_Movement_PlayerEnterDressingRoomWest
    WaitMovement
    GoTo JubilifeTV2FGallery_EnterDressingRoom

JubilifeTV2FGallery_EnterDressingRoomEast:
    ApplyMovement LOCALID_HIKER, JubilifeTV2FGallery_Movement_HikerMoveOutOfTheWayEast
    WaitMovement
    ApplyMovement LOCALID_PLAYER, JubilifeTV2FGallery_Movement_PlayerEnterDressingRoomEast
    WaitMovement
    GoTo JubilifeTV2FGallery_EnterDressingRoom

JubilifeTV2FGallery_EnterDressingRoom:
    SetFlag FLAG_ENTERED_DRESSING_ROOM
    FadeScreenOut
    WaitFadeScreen
    DressUpPokemon VAR_MAP_LOCAL_2, VAR_0x8005, VAR_0x8007
    ReturnToField
    ApplyMovement LOCALID_PLAYER, JubilifeTV2FGallery_Movement_PlayerFaceSouth
    WaitMovement
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_0x8006, DIR_NORTH, JubilifeTV2FGallery_ExitDressingRoomNorth
    GoToIfEq VAR_0x8006, DIR_WEST, JubilifeTV2FGallery_ExitDressingRoomWest
    GoToIfEq VAR_0x8006, DIR_EAST, JubilifeTV2FGallery_ExitDressingRoomEast
    End

JubilifeTV2FGallery_ExitDressingRoomNorth:
    ApplyMovement LOCALID_PLAYER, JubilifeTV2FGallery_Movement_PlayerExitDressingRoom
    WaitMovement
    ApplyMovement LOCALID_HIKER, JubilifeTV2FGallery_Movement_HikerBlockDoorNorth
    WaitMovement
    GoTo JubilifeTV2FGallery_CheckDressUpPokemonResult

JubilifeTV2FGallery_ExitDressingRoomWest:
    ApplyMovement LOCALID_PLAYER, JubilifeTV2FGallery_Movement_PlayerExitDressingRoom
    WaitMovement
    ApplyMovement LOCALID_HIKER, JubilifeTV2FGallery_Movement_HikerBlockDoorWest
    WaitMovement
    GoTo JubilifeTV2FGallery_CheckDressUpPokemonResult

JubilifeTV2FGallery_ExitDressingRoomEast:
    ApplyMovement LOCALID_PLAYER, JubilifeTV2FGallery_Movement_PlayerExitDressingRoom
    WaitMovement
    ApplyMovement LOCALID_HIKER, JubilifeTV2FGallery_Movement_HikerBlockDoorEast
    WaitMovement
    GoTo JubilifeTV2FGallery_CheckDressUpPokemonResult

JubilifeTV2FGallery_CheckDressUpPokemonResult:
    GoToIfEq VAR_0x8005, 0, JubilifeTV2FGallery_OhYouCameOutWithoutDoingAnythingHowDisappointing
    SetVar VAR_MAP_LOCAL_1, 1
    Message JubilifeTV2FGallery_Text_OohNiceWorkOhButItNeedsToHaveATitle
    WaitABXPadPress
    CloseMessage
    GoTo JubilifeTV2FGallery_SetDressUpPhotoTitle

JubilifeTV2FGallery_OhYouSillyThingWheresYourSenseOfAdventure:
    Message JubilifeTV2FGallery_Text_OhYouSillyThingWheresYourSenseOfAdventure
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeTV2FGallery_OohNonNonNonThatsAnEgg:
    Message JubilifeTV2FGallery_Text_OohNonNonNonThatsAnEgg
    GoTo JubilifeTV2FGallery_ChoosePokemonForDressUp

JubilifeTV2FGallery_SetDressUpPhotoTitle:
    FadeScreenOut
    WaitFadeScreen
    ChooseCustomMessageWord 0, VAR_RESULT, VAR_0x8004
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 0, JubilifeTV2FGallery_OhNonNonNonItWillBeForlornWithoutATitle
    SetDressUpPhotoTitle VAR_0x8004
    IncrementGameRecord RECORD_TIMES_DRESSED_UP_POKEMON
    Dummy316
    BufferCustomMessageWord 0, VAR_0x8004
    Message JubilifeTV2FGallery_Text_OohYesYesIGetItNow
    ApplyMovement LOCALID_HIKER, JubilifeTV2FGallery_Movement_HikerFaceEast
    WaitMovement
    Message JubilifeTV2FGallery_Text_IPutYourPhotoUpRightHere
    WaitABXPadPress
    CloseMessage
    ApplyMovement LOCALID_HIKER, JubilifeTV2FGallery_Movement_HikerFaceSouth
    WaitMovement
    ReleaseAll
    End

JubilifeTV2FGallery_OhNonNonNonItWillBeForlornWithoutATitle:
    Message JubilifeTV2FGallery_Text_OhNonNonNonItWillBeForlornWithoutATitle
    WaitABXPadPress
    CloseMessage
    GoTo JubilifeTV2FGallery_SetDressUpPhotoTitle

JubilifeTV2FGallery_OhYouCameOutWithoutDoingAnythingHowDisappointing:
    Message JubilifeTV2FGallery_Text_OhYouCameOutWithoutDoingAnythingHowDisappointing
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
JubilifeTV2FGallery_Movement_PlayerEnterDressingRoomNorth:
    WalkSlowNorth 2
    EndMovement

    .balign 4, 0
JubilifeTV2FGallery_Movement_PlayerEnterDressingRoomWest:
    WalkSlowWest
    WalkSlowNorth
    EndMovement

    .balign 4, 0
JubilifeTV2FGallery_Movement_PlayerEnterDressingRoomEast:
    WalkSlowEast
    WalkSlowNorth
    EndMovement

    .balign 4, 0
JubilifeTV2FGallery_Movement_PlayerFaceSouth:
    FaceSouth
    EndMovement

    .balign 4, 0
JubilifeTV2FGallery_Movement_PlayerExitDressingRoom:
    WalkSlowSouth 2
    FaceNorth
    EndMovement

    .balign 4, 0
JubilifeTV2FGallery_Movement_HikerMoveOutOfTheWayNorth:
    WalkNormalWest
    FaceEast
    EndMovement

    .balign 4, 0
JubilifeTV2FGallery_Movement_HikerMoveOutOfTheWayWest:
    WalkNormalWest
    FaceEast
    EndMovement

    .balign 4, 0
JubilifeTV2FGallery_Movement_HikerMoveOutOfTheWayEast:
    WalkNormalEast
    FaceWest
    EndMovement

    .balign 4, 0
JubilifeTV2FGallery_Movement_HikerBlockDoorNorth:
    WalkNormalEast
    FaceSouth
    EndMovement

    .balign 4, 0
JubilifeTV2FGallery_Movement_HikerBlockDoorWest:
    WalkNormalEast
    FaceSouth
    EndMovement

    .balign 4, 0
JubilifeTV2FGallery_Movement_HikerBlockDoorEast:
    WalkNormalWest
    FaceSouth
    EndMovement

    .balign 4, 0
JubilifeTV2FGallery_Movement_HikerFaceEast:
    FaceEast
    EndMovement

    .balign 4, 0
JubilifeTV2FGallery_Movement_HikerFaceSouth:
    FaceSouth
    EndMovement

JubilifeTV2FGallery_Frame0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    DressUpPhotoHasData 0, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, JubilifeTV2FGallery_ItsAFrameForHoldingAPokemonPortraitPhoto
    FadeScreenOut
    WaitFadeScreen
    ShowDressUpPhoto 0, VAR_RESULT
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

JubilifeTV2FGallery_Frame1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    DressUpPhotoHasData 1, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, JubilifeTV2FGallery_ItsAFrameForHoldingAPokemonPortraitPhoto
    FadeScreenOut
    WaitFadeScreen
    ShowDressUpPhoto 1, VAR_RESULT
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

JubilifeTV2FGallery_Frame2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    DressUpPhotoHasData 2, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, JubilifeTV2FGallery_ItsAFrameForHoldingAPokemonPortraitPhoto
    FadeScreenOut
    WaitFadeScreen
    ShowDressUpPhoto 2, VAR_RESULT
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

JubilifeTV2FGallery_Frame3:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    DressUpPhotoHasData 3, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, JubilifeTV2FGallery_ItsAFrameForHoldingAPokemonPortraitPhoto
    FadeScreenOut
    WaitFadeScreen
    ShowDressUpPhoto 3, VAR_RESULT
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

JubilifeTV2FGallery_Frame4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    DressUpPhotoHasData 4, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, JubilifeTV2FGallery_ItsAFrameForHoldingAPokemonPortraitPhoto
    FadeScreenOut
    WaitFadeScreen
    ShowDressUpPhoto 4, VAR_RESULT
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

JubilifeTV2FGallery_Frame5:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    DressUpPhotoHasData 5, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, JubilifeTV2FGallery_ItsAFrameForHoldingAPokemonPortraitPhoto
    FadeScreenOut
    WaitFadeScreen
    ShowDressUpPhoto 5, VAR_RESULT
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

JubilifeTV2FGallery_Frame6:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    DressUpPhotoHasData 6, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, JubilifeTV2FGallery_ItsAFrameForHoldingAPokemonPortraitPhoto
    FadeScreenOut
    WaitFadeScreen
    ShowDressUpPhoto 6, VAR_RESULT
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

JubilifeTV2FGallery_Frame7:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    DressUpPhotoHasData 7, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, JubilifeTV2FGallery_ItsAFrameForHoldingAPokemonPortraitPhoto
    FadeScreenOut
    WaitFadeScreen
    ShowDressUpPhoto 7, VAR_RESULT
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

JubilifeTV2FGallery_Frame8:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    DressUpPhotoHasData 8, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, JubilifeTV2FGallery_ItsAFrameForHoldingAPokemonPortraitPhoto
    FadeScreenOut
    WaitFadeScreen
    ShowDressUpPhoto 8, VAR_RESULT
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

JubilifeTV2FGallery_Frame9:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    DressUpPhotoHasData 9, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, JubilifeTV2FGallery_ItsAFrameForHoldingAPokemonPortraitPhoto
    FadeScreenOut
    WaitFadeScreen
    ShowDressUpPhoto 9, VAR_RESULT
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

JubilifeTV2FGallery_Frame10:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    DressUpPhotoHasData 10, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, JubilifeTV2FGallery_ItsAFrameForHoldingAPokemonPortraitPhoto
    FadeScreenOut
    WaitFadeScreen
    ShowDressUpPhoto 10, VAR_RESULT
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

JubilifeTV2FGallery_ItsAFrameForHoldingAPokemonPortraitPhoto:
    Message JubilifeTV2FGallery_Text_ItsAFrameForHoldingAPokemonPortraitPhoto
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeTV2FGallery_PokemonBreederM:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeTV2FGallery_Text_TheyDisplayPhotosFromTrainersYouBeenMixinRecordsWithRight
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeTV2FGallery_Twin:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeTV2FGallery_Text_SomeoneGaveMeANewBackdropWhenIWentToTheGlobalTerminal
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
