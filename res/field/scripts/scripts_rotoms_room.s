#include "macros/scrcmd.inc"
#include "generated/distribution_events.h"
#include "constants/moves.h"
#include "res/text/bank/rotoms_room.h"
#include "res/field/events/events_rotoms_room.h"

#define LOCAL_VAR_PARTY_SLOT    VAR_0x8000
#define LOCAL_VAR_MOVE_TO_LEARN VAR_0x8001
#define LOCAL_VAR_ROTOM_FORM    VAR_0x8004


    ScriptEntry RotomsRoom_Microwave
    ScriptEntry RotomsRoom_Refrigerator
    ScriptEntry RotomsRoom_WashingMachine
    ScriptEntry RotomsRoom_Fan
    ScriptEntry RotomsRoom_LawnMower
    ScriptEntry RotomsRoom_MysteriousNotebook
    ScriptEntry RotomsRoom_OnTransition
    ScriptEntry RotomsRoom_OnResume
    ScriptEntry RotomsRoom_ApplianceSpot
    ScriptEntry RotomsRoom_OldNotebook
    ScriptEntry RotomsRoom_OnFrame_ProfRowan
    ScriptEntryEnd

RotomsRoom_OnResume:
    End

RotomsRoom_OnTransition:
    SetFlag FLAG_HIDE_ROTOMS_ROOM_MICROWAVE
    SetFlag FLAG_HIDE_ROTOMS_ROOM_WASHING_MACHINE
    SetFlag FLAG_HIDE_ROTOMS_ROOM_REFRIGERATOR
    SetFlag FLAG_HIDE_ROTOMS_ROOM_FAN
    SetFlag FLAG_HIDE_ROTOMS_ROOM_LAWN_MOWER
    CheckDistributionEvent DISTRIBUTION_EVENT_ROTOM, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, RotomsRoom_RemoveBgEvents
    GetRotomFormsInSave VAR_MAP_LOCAL_0, VAR_MAP_LOCAL_1, VAR_MAP_LOCAL_2, VAR_MAP_LOCAL_3, VAR_MAP_LOCAL_4
    CallIfEq VAR_MAP_LOCAL_0, FALSE, RotomsRoom_ShowMicrowave
    CallIfEq VAR_MAP_LOCAL_1, FALSE, RotomsRoom_ShowWashingMachine
    CallIfEq VAR_MAP_LOCAL_2, FALSE, RotomsRoom_ShowRefrigerator
    CallIfEq VAR_MAP_LOCAL_3, FALSE, RotomsRoom_ShowFan
    CallIfEq VAR_MAP_LOCAL_4, FALSE, RotomsRoom_ShowLawnMower
    End

RotomsRoom_RemoveBgEvents:
    SetBgEventPos 0, 4, 1
    SetBgEventPos 1, 4, 1
    SetBgEventPos 2, 4, 1
    SetBgEventPos 3, 4, 1
    SetBgEventPos 4, 4, 1
    End

RotomsRoom_ShowMicrowave:
    ClearFlag FLAG_HIDE_ROTOMS_ROOM_MICROWAVE
    Return

RotomsRoom_ShowWashingMachine:
    ClearFlag FLAG_HIDE_ROTOMS_ROOM_WASHING_MACHINE
    Return

RotomsRoom_ShowRefrigerator:
    ClearFlag FLAG_HIDE_ROTOMS_ROOM_REFRIGERATOR
    Return

RotomsRoom_ShowFan:
    ClearFlag FLAG_HIDE_ROTOMS_ROOM_FAN
    Return

RotomsRoom_ShowLawnMower:
    ClearFlag FLAG_HIDE_ROTOMS_ROOM_LAWN_MOWER
    Return

RotomsRoom_Microwave:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    SetVar LOCAL_VAR_ROTOM_FORM, ROTOM_FORM_HEAT
    GoTo RotomsRoom_CheckAppliance
    End

RotomsRoom_Refrigerator:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    SetVar LOCAL_VAR_ROTOM_FORM, ROTOM_FORM_FROST
    GoTo RotomsRoom_CheckAppliance
    End

RotomsRoom_WashingMachine:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    SetVar LOCAL_VAR_ROTOM_FORM, ROTOM_FORM_WASH
    GoTo RotomsRoom_CheckAppliance
    End

RotomsRoom_Fan:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    SetVar LOCAL_VAR_ROTOM_FORM, ROTOM_FORM_FAN
    GoTo RotomsRoom_CheckAppliance
    End

RotomsRoom_LawnMower:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    SetVar LOCAL_VAR_ROTOM_FORM, ROTOM_FORM_MOW
    GoTo RotomsRoom_CheckAppliance
    End

RotomsRoom_CheckAppliance:
    CheckPartyHasSpecies VAR_RESULT, SPECIES_ROTOM
    GoToIfEq VAR_RESULT, FALSE, RotomsRoom_ItsAnAppliance
    CheckItem ITEM_SECRET_KEY, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, RotomsRoom_ItsAnAppliance
    CheckDistributionEvent DISTRIBUTION_EVENT_ROTOM, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, RotomsRoom_ItsAnAppliance
    CallIfEq LOCAL_VAR_ROTOM_FORM, ROTOM_FORM_HEAT, RotomsRoom_AllowRotomEnterMicrowave
    CallIfEq LOCAL_VAR_ROTOM_FORM, ROTOM_FORM_FROST, RotomsRoom_AllowRotomEnterRefrigerator
    CallIfEq LOCAL_VAR_ROTOM_FORM, ROTOM_FORM_WASH, RotomsRoom_AllowRotomEnterWashingMachine
    CallIfEq LOCAL_VAR_ROTOM_FORM, ROTOM_FORM_FAN, RotomsRoom_AllowRotomEnterFan
    CallIfEq LOCAL_VAR_ROTOM_FORM, ROTOM_FORM_MOW, RotomsRoom_AllowRotomEnterLawnMower
    GetPartyRotomCountAndFirst VAR_0x8003, VAR_RESULT
    GoToIfGe VAR_0x8003, 1, RotomsRoom_EnterMotorMenu
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, RotomsRoom_RotomGaveUpEnteringMotor
    GoTo RotomsRoom_GetRotomForEnter
    End

RotomsRoom_GetRotomForEnter:
    CallIfEq LOCAL_VAR_ROTOM_FORM, ROTOM_FORM_HEAT, RotomsRoom_SetVarOverheat
    CallIfEq LOCAL_VAR_ROTOM_FORM, ROTOM_FORM_FROST, RotomsRoom_SetVarBlizzard
    CallIfEq LOCAL_VAR_ROTOM_FORM, ROTOM_FORM_WASH, RotomsRoom_SetVarHydroPump
    CallIfEq LOCAL_VAR_ROTOM_FORM, ROTOM_FORM_FAN, RotomsRoom_SetVarAirSlash
    CallIfEq LOCAL_VAR_ROTOM_FORM, ROTOM_FORM_MOW, RotomsRoom_SetVarLeafStorm
    CountRepeatedSpeciesInParty VAR_RESULT, SPECIES_ROTOM
    GoToIfEq VAR_RESULT, 1, RotomsRoom_GetRotomPartySlot
    GoTo RotomsRoom_ChooseRotomForEnter
    End

RotomsRoom_EnterMotorMenu:
    InitLocalTextMenu 31, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm RotomsRoom_Text_Yes, 0
    AddMenuEntryImm RotomsRoom_Text_No, 1
    AddMenuEntryImm RotomsRoom_Text_Recall, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, RotomsRoom_GetRotomForEnter
    GoToIfEq VAR_0x8008, 2, RotomsRoom_GetRotomForRecall
    GoTo RotomsRoom_RotomGaveUpEnteringMotor
    End

RotomsRoom_GetRotomForRecall:
    GetPartyRotomCountAndFirst VAR_0x8003, VAR_RESULT
    SetVar LOCAL_VAR_PARTY_SLOT, VAR_RESULT
    GoToIfGe VAR_0x8003, 2, RotomsRoom_ChooseRotomForRecall
    GoTo RotomsRoom_RecallRotom
    End

RotomsRoom_RecallRotom:
    BufferPartyMonNickname 0, LOCAL_VAR_PARTY_SLOT
    Message RotomsRoom_Text_PokemonEmergedFromTheMotor
    SetRotomForm LOCAL_VAR_PARTY_SLOT, 0, 0, ROTOM_FORM_BASE
    FadeScreenOut
    WaitFadeScreen
    CloseMessage
    GetPartyMonForm2 LOCAL_VAR_PARTY_SLOT, LOCAL_VAR_ROTOM_FORM
    CallIfEq LOCAL_VAR_ROTOM_FORM, ROTOM_FORM_HEAT, RotomsRoom_AddMicrowave
    CallIfEq LOCAL_VAR_ROTOM_FORM, ROTOM_FORM_FAN, RotomsRoom_AddFan
    CallIfEq LOCAL_VAR_ROTOM_FORM, ROTOM_FORM_FROST, RotomsRoom_AddRefrigerator
    CallIfEq LOCAL_VAR_ROTOM_FORM, ROTOM_FORM_WASH, RotomsRoom_AddWashingMachine
    CallIfEq LOCAL_VAR_ROTOM_FORM, ROTOM_FORM_MOW, RotomsRoom_AddLawnMower
    GoTo RotomsRoom_WarpInPlace
    End

RotomsRoom_WarpInPlace:
    GetPlayerMapPos VAR_0x8006, VAR_0x8007
    GetPlayerDir VAR_RESULT
    Warp MAP_HEADER_ROTOMS_ROOM, 0, VAR_0x8006, VAR_0x8007, VAR_RESULT
    FadeScreenIn
    WaitFadeScreen
    End

RotomsRoom_AddMicrowave:
    ClearFlag FLAG_HIDE_ROTOMS_ROOM_MICROWAVE
    AddObject LOCALID_MICROWAVE
    Return

RotomsRoom_AddRefrigerator:
    ClearFlag FLAG_HIDE_ROTOMS_ROOM_REFRIGERATOR
    AddObject LOCALID_REFRIGERATOR
    Return

RotomsRoom_AddWashingMachine:
    ClearFlag FLAG_HIDE_ROTOMS_ROOM_WASHING_MACHINE
    AddObject LOCALID_WASHING_MACHINE
    Return

RotomsRoom_AddFan:
    ClearFlag FLAG_HIDE_ROTOMS_ROOM_FAN
    AddObject LOCALID_FAN
    Return

RotomsRoom_AddLawnMower:
    ClearFlag FLAG_HIDE_ROTOMS_ROOM_LAWN_MOWER
    AddObject LOCALID_LAWN_MOWER
    Return

RotomsRoom_ChooseRotomForRecall:
    Message RotomsRoom_Text_ChooseWhichRotom
    FadeScreenOut
    WaitFadeScreen
    CloseMessage
    SelectMoveTutorPokemon
    GetSelectedPartySlot LOCAL_VAR_PARTY_SLOT
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq LOCAL_VAR_PARTY_SLOT, PARTY_SLOT_NONE, RotomsRoom_End
    GetPartyMonSpecies LOCAL_VAR_PARTY_SLOT, VAR_RESULT
    GoToIfEq VAR_RESULT, SPECIES_NONE, RotomsRoom_EggCantEnter
    GoToIfNe VAR_RESULT, SPECIES_ROTOM, RotomsRoom_ThatPokemonCantEnter
    GetPartyMonForm2 LOCAL_VAR_PARTY_SLOT, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, RotomsRoom_RotomHasntEnteredMotor
    GoTo RotomsRoom_RecallRotom
    End

RotomsRoom_RotomHasntEnteredMotor:
    Message RotomsRoom_Text_RotomHasntEnteredMotor
    GoTo RotomsRoom_ApplianceEnd
    End

RotomsRoom_End:
    End

RotomsRoom_GetRotomPartySlot:
    FindPartySlotWithSpecies LOCAL_VAR_PARTY_SLOT, SPECIES_ROTOM
    GoTo RotomsRoom_EnterMotorCheckMove
    End

RotomsRoom_ChooseRotomForEnter:
    Message RotomsRoom_Text_ChooseWhichRotom
    FadeScreenOut
    WaitFadeScreen
    CloseMessage
    SelectMoveTutorPokemon
    GetSelectedPartySlot LOCAL_VAR_PARTY_SLOT
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq LOCAL_VAR_PARTY_SLOT, PARTY_SLOT_NONE, RotomsRoom_RotomGaveUpEnteringMotor
    GetPartyMonSpecies LOCAL_VAR_PARTY_SLOT, VAR_RESULT
    GoToIfEq VAR_RESULT, SPECIES_NONE, RotomsRoom_EggCantEnter
    GoToIfNe VAR_RESULT, SPECIES_ROTOM, RotomsRoom_ThatPokemonCantEnter
    GoTo RotomsRoom_EnterMotorCheckMove
    End

RotomsRoom_EggCantEnter:
    Message RotomsRoom_Text_EggCantEnter
    GoTo RotomsRoom_ApplianceEnd
    End

RotomsRoom_ThatPokemonCantEnter:
    Message RotomsRoom_Text_ThatPokemonCantEnter
    GoTo RotomsRoom_ApplianceEnd
    End

RotomsRoom_EnterMotorCheckMove:
    CheckPartyMonHasMove VAR_RESULT, MOVE_OVERHEAT, LOCAL_VAR_PARTY_SLOT
    GoToIfEq VAR_RESULT, TRUE, RotomsRoom_SetVarMoveNone
    CheckPartyMonHasMove VAR_RESULT, MOVE_BLIZZARD, LOCAL_VAR_PARTY_SLOT
    GoToIfEq VAR_RESULT, TRUE, RotomsRoom_SetVarMoveNone
    CheckPartyMonHasMove VAR_RESULT, MOVE_HYDRO_PUMP, LOCAL_VAR_PARTY_SLOT
    GoToIfEq VAR_RESULT, TRUE, RotomsRoom_SetVarMoveNone
    CheckPartyMonHasMove VAR_RESULT, MOVE_AIR_SLASH, LOCAL_VAR_PARTY_SLOT
    GoToIfEq VAR_RESULT, TRUE, RotomsRoom_SetVarMoveNone
    CheckPartyMonHasMove VAR_RESULT, MOVE_LEAF_STORM, LOCAL_VAR_PARTY_SLOT
    GoToIfEq VAR_RESULT, TRUE, RotomsRoom_SetVarMoveNone
    GetPartyMonMoveCount VAR_RESULT, LOCAL_VAR_PARTY_SLOT
    SetVar VAR_0x8002, VAR_RESULT
    GoToIfEq VAR_RESULT, LEARNED_MOVES_MAX, RotomsRoom_AskLearnMove
    GoTo RotomsRoom_PokemonEnteredMotor
    End

RotomsRoom_SetVarMoveNone:
    SetVar VAR_0x8002, 0
    GoTo RotomsRoom_PokemonEnteredMotor
    End

RotomsRoom_PokemonEnteredMotor:
    BufferPartyMonNickname 0, LOCAL_VAR_PARTY_SLOT
    Message RotomsRoom_Text_PokemonEnteredMotor
    GoTo RotomsRoom_SetRotomForm
    End

RotomsRoom_AskLearnMove:
    BufferPartyMonNickname 0, LOCAL_VAR_PARTY_SLOT
    BufferMoveName 1, LOCAL_VAR_MOVE_TO_LEARN
    Message RotomsRoom_Text_TryingToLearnMove
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, RotomsRoom_DidNotLearnMoveEmergedFromMotor
    GoTo RotomsRoom_LearnMove
    End

RotomsRoom_LearnMove:
    FadeScreenOut
    WaitFadeScreen
    CloseMessage
    OpenSummaryScreenTeachMove LOCAL_VAR_PARTY_SLOT, LOCAL_VAR_MOVE_TO_LEARN
    GetSummarySelectedMoveSlot VAR_0x8002
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_0x8002, LEARNED_MOVES_MAX, RotomsRoom_GiveUpLearningMove
    GetPartyMonMove VAR_RESULT, LOCAL_VAR_PARTY_SLOT, VAR_0x8002
    BufferMoveName 1, VAR_RESULT
    Message RotomsRoom_Text_TheMoveWillBeForgotten
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, RotomsRoom_DidNotLearnMoveEmergedFromMotor
    BufferPartyMonNickname 0, LOCAL_VAR_PARTY_SLOT
    GetPartyMonMove VAR_RESULT, LOCAL_VAR_PARTY_SLOT, VAR_0x8002
    BufferMoveName 1, VAR_RESULT
    Message RotomsRoom_Text_12andPoof
    PlaySE SEQ_SE_DP_KON
    WaitSE SEQ_SE_DP_KON
    WaitTime 30, VAR_RESULT
    Message RotomsRoom_Text_PokemonForgotMove
    WaitTime 32, VAR_RESULT
    PlayFanfare SEQ_FANFA1
    BufferMoveName 1, LOCAL_VAR_MOVE_TO_LEARN
    Message RotomsRoom_Text_PokemonLearnedMove
    WaitFanfare
    WaitTime 16, VAR_RESULT
    GoTo RotomsRoom_SetRotomForm
    End

RotomsRoom_GiveUpLearningMove:
    BufferMoveName 1, LOCAL_VAR_MOVE_TO_LEARN
    Message RotomsRoom_Text_GiveUpLearningMove
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, RotomsRoom_LearnMove
    GoTo RotomsRoom_DidNotLearnMoveEmergedFromMotor
    End

RotomsRoom_DidNotLearnMoveEmergedFromMotor:
    BufferPartyMonNickname 0, LOCAL_VAR_PARTY_SLOT
    BufferMoveName 1, LOCAL_VAR_MOVE_TO_LEARN
    Message RotomsRoom_Text_DidNotLearnMoveEmergedFromMotor
    GoTo RotomsRoom_ApplianceEnd
    End

RotomsRoom_SetRotomForm:
    SetRotomForm LOCAL_VAR_PARTY_SLOT, VAR_0x8002, LOCAL_VAR_MOVE_TO_LEARN, LOCAL_VAR_ROTOM_FORM
    FadeScreenOut
    WaitFadeScreen
    CloseMessage
    CallIfEq LOCAL_VAR_ROTOM_FORM, ROTOM_FORM_HEAT, RotomsRoom_RemoveMicrowave
    CallIfEq LOCAL_VAR_ROTOM_FORM, ROTOM_FORM_FAN, RotomsRoom_RemoveFan
    CallIfEq LOCAL_VAR_ROTOM_FORM, ROTOM_FORM_FROST, RotomsRoom_RemoveRefrigerator
    CallIfEq LOCAL_VAR_ROTOM_FORM, ROTOM_FORM_WASH, RotomsRoom_RemoveWashingMachine
    CallIfEq LOCAL_VAR_ROTOM_FORM, ROTOM_FORM_MOW, RotomsRoom_RemoveLawnMower
    GoToIfUnset FLAG_USED_ROTOM_APPLIANCE, RotomsRoom_SetStateEnterProfRowan
    GoTo RotomsRoom_WarpInPlace
    End

RotomsRoom_RemoveMicrowave:
    RemoveObject LOCALID_MICROWAVE
    Return

RotomsRoom_RemoveRefrigerator:
    RemoveObject LOCALID_REFRIGERATOR
    Return

RotomsRoom_RemoveWashingMachine:
    RemoveObject LOCALID_WASHING_MACHINE
    Return

RotomsRoom_RemoveFan:
    RemoveObject LOCALID_FAN
    Return

RotomsRoom_RemoveLawnMower:
    RemoveObject LOCALID_LAWN_MOWER
    Return

RotomsRoom_SetVarOverheat:
    SetVar LOCAL_VAR_MOVE_TO_LEARN, MOVE_OVERHEAT
    Return

RotomsRoom_SetVarBlizzard:
    SetVar LOCAL_VAR_MOVE_TO_LEARN, MOVE_BLIZZARD
    Return

RotomsRoom_SetVarHydroPump:
    SetVar LOCAL_VAR_MOVE_TO_LEARN, MOVE_HYDRO_PUMP
    Return

RotomsRoom_SetVarAirSlash:
    SetVar LOCAL_VAR_MOVE_TO_LEARN, MOVE_AIR_SLASH
    Return

RotomsRoom_SetVarLeafStorm:
    SetVar LOCAL_VAR_MOVE_TO_LEARN, MOVE_LEAF_STORM
    Return

RotomsRoom_AllowRotomEnterMicrowave:
    Message RotomsRoom_Text_AllowRotomEnterMicrowave
    Return

RotomsRoom_AllowRotomEnterRefrigerator:
    Message RotomsRoom_Text_AllowRotomEnterRefrigerator
    Return

RotomsRoom_AllowRotomEnterWashingMachine:
    Message RotomsRoom_Text_AllowRotomEnterWashingMachine
    Return

RotomsRoom_AllowRotomEnterFan:
    Message RotomsRoom_Text_AllowRotomEnterFan
    Return

RotomsRoom_AllowRotomEnterLawnMower:
    Message RotomsRoom_Text_AllowRotomEnterLawnMower
    Return

RotomsRoom_ItsAnAppliance:
    CallIfEq LOCAL_VAR_ROTOM_FORM, ROTOM_FORM_HEAT, RotomsRoom_ItsAMicrowave
    CallIfEq LOCAL_VAR_ROTOM_FORM, ROTOM_FORM_FROST, RotomsRoom_ItsARefrigerator
    CallIfEq LOCAL_VAR_ROTOM_FORM, ROTOM_FORM_WASH, RotomsRoom_ItsAWashingMachine
    CallIfEq LOCAL_VAR_ROTOM_FORM, ROTOM_FORM_FAN, RotomsRoom_ItsAFan
    CallIfEq LOCAL_VAR_ROTOM_FORM, ROTOM_FORM_MOW, RotomsRoom_ItsALawnMower
    GoTo RotomsRoom_ApplianceEnd
    End

RotomsRoom_ItsAMicrowave:
    Message RotomsRoom_Text_ItsAMicrowave
    Return

RotomsRoom_ItsARefrigerator:
    Message RotomsRoom_Text_ItsARefrigerator
    Return

RotomsRoom_ItsAWashingMachine:
    Message RotomsRoom_Text_ItsAWashingMachine
    Return

RotomsRoom_ItsAFan:
    Message RotomsRoom_Text_ItsAFan
    Return

RotomsRoom_ItsALawnMower:
    Message RotomsRoom_Text_ItsALawnMower
    Return

RotomsRoom_RotomGaveUpEnteringMotor:
    CallIfEq LOCAL_VAR_ROTOM_FORM, ROTOM_FORM_HEAT, RotomsRoom_RotomGaveUpEnteringMicrowave
    CallIfEq LOCAL_VAR_ROTOM_FORM, ROTOM_FORM_FROST, RotomsRoom_RotomGaveUpEnteringRefrigerator
    CallIfEq LOCAL_VAR_ROTOM_FORM, ROTOM_FORM_WASH, RotomsRoom_RotomGaveUpEnteringWashingMachine
    CallIfEq LOCAL_VAR_ROTOM_FORM, ROTOM_FORM_FAN, RotomsRoom_RotomGaveUpEnteringFan
    CallIfEq LOCAL_VAR_ROTOM_FORM, ROTOM_FORM_MOW, RotomsRoom_RotomGaveUpEnteringLawnMower
    GoTo RotomsRoom_ApplianceEnd
    End

RotomsRoom_RotomGaveUpEnteringMicrowave:
    Message RotomsRoom_Text_RotomGaveUpEnteringMicrowave
    Return

RotomsRoom_RotomGaveUpEnteringRefrigerator:
    Message RotomsRoom_Text_RotomGaveUpEnteringRefrigerator
    Return

RotomsRoom_RotomGaveUpEnteringWashingMachine:
    Message RotomsRoom_Text_RotomGaveUpEnteringWashingMachine
    Return

RotomsRoom_RotomGaveUpEnteringFan:
    Message RotomsRoom_Text_RotomGaveUpEnteringFan
    Return

RotomsRoom_RotomGaveUpEnteringLawnMower:
    Message RotomsRoom_Text_RotomGaveUpEnteringLawnMower
    Return

RotomsRoom_ApplianceEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

RotomsRoom_MysteriousNotebook:
    EventMessage RotomsRoom_Text_InformationAboutRotom
    End

RotomsRoom_ApplianceSpot:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    GetPartyRotomCountAndFirst VAR_0x8003, VAR_RESULT
    GoToIfEq VAR_0x8003, 0, RotomsRoom_ThereWasAnApplianceHere
    Message RotomsRoom_Text_RevertRotomToOriginalForm
    InitLocalTextMenu 31, 15, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm RotomsRoom_Text_Recall, 0
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, RotomsRoom_GetRotomForRecall
    CloseMessage
    ReleaseAll
    End

RotomsRoom_ThereWasAnApplianceHere:
    Message RotomsRoom_Text_ThereWasAnApplianceHere
    WaitButton
    CloseMessage
    ReleaseAll
    End

RotomsRoom_SetStateEnterProfRowan:
    SetFlag FLAG_USED_ROTOM_APPLIANCE
    SetVar VAR_ROTOMS_ROOM_STATE, 1
    GoTo RotomsRoom_WarpInPlace
    End

RotomsRoom_OnFrame_ProfRowan:
    LockAll
    ClearFlag FLAG_HIDE_ROTOMS_ROOM_PROF_ROWAN
    PlaySE SEQ_SE_DP_KAIDAN2
    AddObject LOCALID_PROF_ROWAN
    WaitSE SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_PLAYER, RotomsRoom_Movement_PlayerNoticeRowan
    ApplyMovement LOCALID_PROF_ROWAN, RotomsRoom_Movement_RowanEnter
    WaitMovement
    BufferPlayerName 0
    Message RotomsRoom_Text_ImagineFindingYouHere
    CloseMessage
    GetPlayerMapPos VAR_0x8006, VAR_0x8007
    CallIfGe VAR_0x8006, 10, RotomsRoom_EastReturn
    CallIfLe VAR_0x8006, 4, RotomsRoom_WestReturn
    ApplyMovement LOCALID_PROF_ROWAN, RotomsRoom_Movement_RowanWalkAround
    WaitMovement
    Message RotomsRoom_Text_PokemonThatSlipsIntoAppliances
    CloseMessage
    ApplyMovement LOCALID_PROF_ROWAN, RotomsRoom_Movement_RowanWalkBack
    WaitMovement
    Message RotomsRoom_Text_RotomInterestingPokemon
    CloseMessage
    ApplyMovement LOCALID_PROF_ROWAN, RotomsRoom_Movement_RowanLeave
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    RemoveObject LOCALID_PROF_ROWAN
    WaitSE SEQ_SE_DP_KAIDAN2
    SetVar VAR_ROTOMS_ROOM_STATE, 2
    ReleaseAll
    End

RotomsRoom_EastReturn:
    Return

RotomsRoom_WestReturn:
    Return

    .balign 4, 0
RotomsRoom_Movement_PlayerNoticeRowan:
    WalkOnSpotNormalSouth
    EmoteExclamationMark
    EndMovement

RotomsRoom_Movement_Unused:
    WalkOnSpotNormalWest
    EndMovement

RotomsRoom_Movement_Unused2:
    WalkOnSpotNormalEast
    EndMovement

RotomsRoom_Movement_Unused3:
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
RotomsRoom_Movement_RowanEnter:
    WalkNormalNorth 2
    EndMovement

    .balign 4, 0
RotomsRoom_Movement_RowanWalkAround:
    WalkNormalWest 2
    WalkOnSpotNormalNorth
    Delay8 2
    WalkNormalEast 4
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
RotomsRoom_Movement_RowanWalkBack:
    WalkNormalWest 2
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
RotomsRoom_Movement_RowanLeave:
    WalkNormalSouth 2
    EndMovement

RotomsRoom_OldNotebook:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message RotomsRoom_Text_ReadOldNotebook
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, RotomsRoom_StopReading
    Message RotomsRoom_Text_PokemonEmergedFromLawnMower
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, RotomsRoom_StopReading
    Message RotomsRoom_Text_PokemonHoveredInTheAir
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, RotomsRoom_StopReading
    Message RotomsRoom_Text_INameThisRotom
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, RotomsRoom_StopReading
    Message RotomsRoom_Text_AbilityToEnterMachinery
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, RotomsRoom_StopReading
    Message RotomsRoom_Text_RotomAndIBecameFriends
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, RotomsRoom_StopReading
    Message RotomsRoom_Text_FeelingOfMischief
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, RotomsRoom_StopReading
    Message RotomsRoom_Text_RotomDisappeared
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, RotomsRoom_StopReading
    Message RotomsRoom_Text_SearchForRotom
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, RotomsRoom_StopReading
    Message RotomsRoom_Text_NotebookEnds
    GoTo RotomsRoom_NotebookEnd
    End

RotomsRoom_StopReading:
    CloseMessage
    ReleaseAll
    End

RotomsRoom_NotebookEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
