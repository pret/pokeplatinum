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
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_0x8007, 0
    CallIfUnset FLAG_ENTERED_DRESSING_ROOM, _006F
    GoToIfEq VAR_MAP_LOCAL_0x1, 0, JubilifeTV2FGallery_AskDressUpPokemon
    GoToIfEq VAR_MAP_LOCAL_0x1, 1, JubilifeTV2FGallery_AskDressUpPokemonChangePhoto
    End

_006F:
    SetVar VAR_0x8007, 1
    Return

JubilifeTV2FGallery_AskDressUpPokemon:
    Message JubilifeTV2FGallery_Text_DressUpYourPokemon
    GoTo JubilifeTV2FGallery_YesNoDressUpPokemon

JubilifeTV2FGallery_AskDressUpPokemonChangePhoto:
    Message JubilifeTV2FGallery_Text_WouldYouLikeToDressUp
    GoTo JubilifeTV2FGallery_YesNoDressUpPokemon

JubilifeTV2FGallery_ShouldIExplainDressUp:
    Message JubilifeTV2FGallery_Text_ShouldIExplainDressUp
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, JubilifeTV2FGallery_ExplainDressUp
    GoToIfEq VAR_RESULT, MENU_NO, JubilifeTV2FGallery_SetPokemonForDressUp
    End

JubilifeTV2FGallery_ExplainDressUp:
    Message JubilifeTV2FGallery_Text_ExplainDressUp
    GoTo JubilifeTV2FGallery_YesNoDressUpPokemonAfterExplanation

JubilifeTV2FGallery_YesNoDressUpPokemon:
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, JubilifeTV2FGallery_ShouldIExplainDressUp
    GoToIfEq VAR_RESULT, MENU_NO, JubilifeTV2FGallery_WheresYourSenseOfAdventure
    End

JubilifeTV2FGallery_YesNoDressUpPokemonAfterExplanation:
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, JubilifeTV2FGallery_SetPokemonForDressUp
    GoToIfEq VAR_RESULT, MENU_NO, JubilifeTV2FGallery_WheresYourSenseOfAdventure
    End

JubilifeTV2FGallery_SetPokemonForDressUp:
    GetPartyCount VAR_RESULT
    GoToIfEq VAR_RESULT, 1, JubilifeTV2FGallery_SetOnlyPokemonForDressUp
    GoToIfNe VAR_RESULT, 1, JubilifeTV2FGallery_ChoosePokemonForDressUp
    End

JubilifeTV2FGallery_SetOnlyPokemonForDressUp:
    SetVar VAR_MAP_LOCAL_0x2, 0
    GoTo JubilifeTV2FGallery_DressItUpAdorably

JubilifeTV2FGallery_ChoosePokemonForDressUp:
    Message JubilifeTV2FGallery_Text_DressUpWhichPokemon
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    SelectMoveTutorPokemon
    GetSelectedPartySlot VAR_MAP_LOCAL_0x2
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_MAP_LOCAL_0x2, 0xFF, JubilifeTV2FGallery_WheresYourSenseOfAdventure
    GetPartyMonSpecies VAR_MAP_LOCAL_0x2, VAR_RESULT
    GoToIfEq VAR_RESULT, SPECIES_NONE, JubilifeTV2FGallery_ThatsAnEgg
    GoTo JubilifeTV2FGallery_DressItUpAdorably

JubilifeTV2FGallery_DressItUpAdorably:
    Message JubilifeTV2FGallery_Text_DressItUpAdorably
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
    ScrCmd_0A6 VAR_MAP_LOCAL_0x2, VAR_0x8005, VAR_0x8007
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
    GoToIfEq VAR_0x8005, 0, JubilifeTV2FGallery_CameOutWithoutDoingAnything
    SetVar VAR_MAP_LOCAL_0x1, 1
    Message JubilifeTV2FGallery_Text_ItNeedsATitle
    WaitButton
    CloseMessage
    GoTo JubilifeTV2FGallery_SetDressUpPhotoTitle

JubilifeTV2FGallery_WheresYourSenseOfAdventure:
    Message JubilifeTV2FGallery_Text_WheresYourSenseOfAdventure
    WaitButton
    CloseMessage
    ReleaseAll
    End

JubilifeTV2FGallery_ThatsAnEgg:
    Message JubilifeTV2FGallery_Text_ThatsAnEgg
    GoTo JubilifeTV2FGallery_ChoosePokemonForDressUp

JubilifeTV2FGallery_SetDressUpPhotoTitle:
    FadeScreenOut
    WaitFadeScreen
    ChooseCustomMessageWord VAR_RESULT, VAR_0x8004
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 0, JubilifeTV2FGallery_ForlornWithoutATitle
    SetDressUpPhotoTitle VAR_0x8004
    IncrementGameRecord RECORD_TIMES_DRESSED_UP_POKEMON
    Dummy316
    BufferCustomMessageWord 0, VAR_0x8004
    Message JubilifeTV2FGallery_Text_IGetItNow
    ApplyMovement LOCALID_HIKER, JubilifeTV2FGallery_Movement_HikerFaceEast
    WaitMovement
    Message JubilifeTV2FGallery_Text_IPutPhotoRightHere
    WaitButton
    CloseMessage
    ApplyMovement LOCALID_HIKER, JubilifeTV2FGallery_Movement_HikerFaceSouth
    WaitMovement
    ReleaseAll
    End

JubilifeTV2FGallery_ForlornWithoutATitle:
    Message JubilifeTV2FGallery_Text_ForlornWithoutATitle
    WaitButton
    CloseMessage
    GoTo JubilifeTV2FGallery_SetDressUpPhotoTitle

JubilifeTV2FGallery_CameOutWithoutDoingAnything:
    Message JubilifeTV2FGallery_Text_CameOutWithoutDoingAnything
    WaitButton
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
    PlaySE SEQ_SE_CONFIRM
    LockAll
    DressUpPhotoHasData 0, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, JubilifeTV2FGallery_FrameForHoldingPortrait
    FadeScreenOut
    WaitFadeScreen
    ShowDressUpPhoto 0, VAR_RESULT
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

JubilifeTV2FGallery_Frame1:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    DressUpPhotoHasData 1, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, JubilifeTV2FGallery_FrameForHoldingPortrait
    FadeScreenOut
    WaitFadeScreen
    ShowDressUpPhoto 1, VAR_RESULT
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

JubilifeTV2FGallery_Frame2:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    DressUpPhotoHasData 2, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, JubilifeTV2FGallery_FrameForHoldingPortrait
    FadeScreenOut
    WaitFadeScreen
    ShowDressUpPhoto 2, VAR_RESULT
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

JubilifeTV2FGallery_Frame3:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    DressUpPhotoHasData 3, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, JubilifeTV2FGallery_FrameForHoldingPortrait
    FadeScreenOut
    WaitFadeScreen
    ShowDressUpPhoto 3, VAR_RESULT
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

JubilifeTV2FGallery_Frame4:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    DressUpPhotoHasData 4, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, JubilifeTV2FGallery_FrameForHoldingPortrait
    FadeScreenOut
    WaitFadeScreen
    ShowDressUpPhoto 4, VAR_RESULT
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

JubilifeTV2FGallery_Frame5:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    DressUpPhotoHasData 5, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, JubilifeTV2FGallery_FrameForHoldingPortrait
    FadeScreenOut
    WaitFadeScreen
    ShowDressUpPhoto 5, VAR_RESULT
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

JubilifeTV2FGallery_Frame6:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    DressUpPhotoHasData 6, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, JubilifeTV2FGallery_FrameForHoldingPortrait
    FadeScreenOut
    WaitFadeScreen
    ShowDressUpPhoto 6, VAR_RESULT
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

JubilifeTV2FGallery_Frame7:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    DressUpPhotoHasData 7, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, JubilifeTV2FGallery_FrameForHoldingPortrait
    FadeScreenOut
    WaitFadeScreen
    ShowDressUpPhoto 7, VAR_RESULT
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

JubilifeTV2FGallery_Frame8:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    DressUpPhotoHasData 8, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, JubilifeTV2FGallery_FrameForHoldingPortrait
    FadeScreenOut
    WaitFadeScreen
    ShowDressUpPhoto 8, VAR_RESULT
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

JubilifeTV2FGallery_Frame9:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    DressUpPhotoHasData 9, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, JubilifeTV2FGallery_FrameForHoldingPortrait
    FadeScreenOut
    WaitFadeScreen
    ShowDressUpPhoto 9, VAR_RESULT
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

JubilifeTV2FGallery_Frame10:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    DressUpPhotoHasData 10, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, JubilifeTV2FGallery_FrameForHoldingPortrait
    FadeScreenOut
    WaitFadeScreen
    ShowDressUpPhoto 10, VAR_RESULT
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

JubilifeTV2FGallery_FrameForHoldingPortrait:
    Message JubilifeTV2FGallery_Text_FrameForHoldingPortrait
    WaitButton
    CloseMessage
    ReleaseAll
    End

JubilifeTV2FGallery_PokemonBreederM:
    NPCMessage JubilifeTV2FGallery_Text_DisplayTrainersMixedRecordsWith
    End

JubilifeTV2FGallery_Twin:
    NPCMessage JubilifeTV2FGallery_Text_SomeoneGaveNewBackdrop
    End
