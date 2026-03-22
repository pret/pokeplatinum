#include "macros/scrcmd.inc"
#include "res/text/bank/floaroma_town.h"
#include "res/field/events/events_floaroma_town.h"

    ScriptEntry FloaromaTown_OnTransition
    ScriptEntry FloaromaTown_Grunts
    ScriptEntry FloaromaTown_SchoolKidM
    ScriptEntry FloaromaTown_LassWest
    ScriptEntry FloaromaTown_PokemonBreederF
    ScriptEntry FloaromaTown_LassEast
    ScriptEntry FloaromaTown_Camper
    ScriptEntry FloaromaTown_MapSignpost
    ScriptEntry FloaromaTown_LandmarkSignFlowerShop
    ScriptEntry FloaromaTown_LandmarkSignFloaromaMeadow
    ScriptEntry FloaromaTown_Beauty
    ScriptEntryEnd

FloaromaTown_OnTransition:
    End

FloaromaTown_Grunts:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    ApplyMovement LOCALID_GRUNT_M_WEST, FloaromaTown_Movement_WalkOnSpotEast
    WaitMovement
    Message FloaromaTown_Text_ThisDoesntSeemAllThatCool
    CloseMessage
    ApplyMovement LOCALID_GRUNT_M_EAST, FloaromaTown_Movement_WalkOnSpotWest
    WaitMovement
    Message FloaromaTown_Text_DontComplainThisIsAPrettyDecentAssignment
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
FloaromaTown_Movement_WalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
FloaromaTown_Movement_WalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

FloaromaTown_SchoolKidM:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe VAR_VALLEY_WINDWORKS_TEAM_GALACTIC_STATE, 2, FloaromaTown_BeingSurroundedByFlowersPutsMeInAnOddlyPleasantMood
    Message FloaromaTown_Text_IWantedToGetSomeFlowersFromTheFloaromaMeadow
    ApplyMovement LOCALID_SCHOOL_KID_M, FloaromaTown_Movement_SchoolKidMFaceNorth
    WaitMovement
    Message FloaromaTown_Text_ThoseGalacticGuysWentToTheMeadowPastTheseFlowersHere
    WaitButton
    CloseMessage
    ReleaseAll
    End

FloaromaTown_BeingSurroundedByFlowersPutsMeInAnOddlyPleasantMood:
    Message FloaromaTown_Text_BeingSurroundedByFlowersPutsMeInAnOddlyPleasantMood
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
FloaromaTown_Movement_SchoolKidMFaceNorth:
    FaceNorth
    Delay8 3
    EndMovement

FloaromaTown_LassWest:
    NPCMessage FloaromaTown_Text_ISimplyLoveItHere
    End

FloaromaTown_PokemonBreederF:
    NPCMessage FloaromaTown_Text_WelcomeToFloaromaTheTownOfFlowersFlowersAndMoreFlowers
    End

FloaromaTown_LassEast:
    NPCMessage FloaromaTown_Text_TheBerriesYouPickCanBeUsedAsFoodForPokemon
    End

FloaromaTown_Camper:
    NPCMessage FloaromaTown_Text_IGotDrawnHereByTheSweetScentOfHoney
    End

FloaromaTown_MapSignpost:
    ShowMapSign FloaromaTown_Text_MapSign
    End

FloaromaTown_LandmarkSignFlowerShop:
    ShowLandmarkSign FloaromaTown_Text_PickAPeckOfColorsFlowerShopFreeBerriesAvailable
    End

FloaromaTown_LandmarkSignFloaromaMeadow:
    ShowLandmarkSign FloaromaTown_Text_FloaromaMeadowAheadHoneyAvailable
    End

FloaromaTown_Beauty:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    FindPartySlotWithFatefulEncounterSpecies VAR_RESULT, SPECIES_SHAYMIN
    GoToIfEq VAR_RESULT, 0xFF, FloaromaTown_DoYouKnowAboutGracideaFlowers
    CheckPartyHasSpecies VAR_RESULT, SPECIES_SHAYMIN
    GoToIfEq VAR_RESULT, FALSE, FloaromaTown_DoYouKnowAboutGracideaFlowers
    CheckItem ITEM_GRACIDEA, 1, VAR_RESULT
    GoToIfNe VAR_RESULT, FALSE, FloaromaTown_GracideaFlowersHaveBeenAroundALongTimeInThisRegion
    Message FloaromaTown_Text_IfYouHaveAShayminThenYouAlsoShouldHaveSomeGracideaFlowers
    SetVar VAR_0x8004, ITEM_GRACIDEA
    SetVar VAR_0x8005, 1
    Common_GiveItemQuantityNoLineFeed
    CloseMessage
    ReleaseAll
    End

FloaromaTown_DoYouKnowAboutGracideaFlowers:
    Message FloaromaTown_Text_DoYouKnowAboutGracideaFlowers
    GoTo FloaromaTown_BeautyEnd
    End

FloaromaTown_GracideaFlowersHaveBeenAroundALongTimeInThisRegion:
    Message FloaromaTown_Text_GracideaFlowersHaveBeenAroundALongTimeInThisRegion
    GoTo FloaromaTown_BeautyEnd
    End

FloaromaTown_BeautyEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
