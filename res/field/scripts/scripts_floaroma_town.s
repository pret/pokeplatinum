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
    ScriptEntry FloaromaTown_SignboardFlowerShop
    ScriptEntry FloaromaTown_SignboardFloaromaMeadow
    ScriptEntry FloaromaTown_Beauty
    ScriptEntryEnd

FloaromaTown_OnTransition:
    End

FloaromaTown_Grunts:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    ApplyMovement LOCALID_GRUNT_M_WEST, FloaromaTown_Movement_WalkOnSpotEast
    WaitMovement
    Message FloaromaTown_Text_ThisDoesntSeemCool
    CloseMessage
    ApplyMovement LOCALID_GRUNT_M_EAST, FloaromaTown_Movement_WalkOnSpotWest
    WaitMovement
    Message FloaromaTown_Text_DontComplain
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
    GoToIfGe VAR_VALLEY_WINDWORKS_TEAM_GALACTIC_STATE, 2, FloaromaTown_OddlyPleasantMood
    Message FloaromaTown_Text_IWantedToGetFlowers
    ApplyMovement LOCALID_SCHOOL_KID_M, FloaromaTown_Movement_SchoolKidMFaceNorth
    WaitMovement
    Message FloaromaTown_Text_GalacticGuysWentToMeadow
    WaitButton
    CloseMessage
    ReleaseAll
    End

FloaromaTown_OddlyPleasantMood:
    Message FloaromaTown_Text_OddlyPleasantMood
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
    NPCMessage FloaromaTown_Text_WelcomeToFloaroma
    End

FloaromaTown_LassEast:
    NPCMessage FloaromaTown_Text_BerriesCanBeFoodForPokemon
    End

FloaromaTown_Camper:
    NPCMessage FloaromaTown_Text_DrawnHereByHoney
    End

FloaromaTown_MapSignpost:
    ShowMapSign FloaromaTown_Text_MapSign
    End

FloaromaTown_SignboardFlowerShop:
    ShowLandmarkSign FloaromaTown_Text_SignFlowerShop
    End

FloaromaTown_SignboardFloaromaMeadow:
    ShowLandmarkSign FloaromaTown_Text_SignFlowerMeadow
    End

FloaromaTown_Beauty:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    FindPartySlotWithFatefulEncounterSpecies VAR_RESULT, SPECIES_SHAYMIN
    GoToIfEq VAR_RESULT, 0xFF, FloaromaTown_DoYouKnowGracideaFlowers
    CheckPartyHasSpecies VAR_RESULT, SPECIES_SHAYMIN
    GoToIfEq VAR_RESULT, FALSE, FloaromaTown_DoYouKnowGracideaFlowers
    CheckItem ITEM_GRACIDEA, 1, VAR_RESULT
    GoToIfNe VAR_RESULT, FALSE, FloaromaTown_GracideaFlowersBeenAroundLongTime
    Message FloaromaTown_Text_HaveGracideaFlowers
    SetVar VAR_0x8004, ITEM_GRACIDEA
    SetVar VAR_0x8005, 1
    Common_GiveItemQuantityNoLineFeed
    CloseMessage
    ReleaseAll
    End

FloaromaTown_DoYouKnowGracideaFlowers:
    Message FloaromaTown_Text_DoYouKnowGracideaFlowers
    GoTo FloaromaTown_BeautyEnd
    End

FloaromaTown_GracideaFlowersBeenAroundLongTime:
    Message FloaromaTown_Text_GracideaFlowersBeenAroundLongTime
    GoTo FloaromaTown_BeautyEnd
    End

FloaromaTown_BeautyEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
