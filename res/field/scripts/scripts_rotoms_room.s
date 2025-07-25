#include "macros/scrcmd.inc"
#include "generated/distribution_events.h"
#include "constants/moves.h"
#include "res/text/bank/rotoms_room.h"

#define LOCALID_PARTY_SLOT VAR_0x8000
#define LOCALID_MOVE_TO_LEARN VAR_0x8001
#define LOCALID_ROTOM_FORM VAR_0x8004


    ScriptEntry RotomsRoom_MicrowaveOven
    ScriptEntry RotomsRoom_Refrigerator
    ScriptEntry RotomsRoom_WashingMachine
    ScriptEntry RotomsRoom_RotaryFan
    ScriptEntry RotomsRoom_LawnMower
    ScriptEntry RotomsRoom_MysteriousNotebook
    ScriptEntry RotomsRoom_InitFlags
    ScriptEntry _002E
    ScriptEntry _07BB
    ScriptEntry RotomsRoom_OldNotebook
    ScriptEntry RotomsRoom_ProfessorRowan
    ScriptEntryEnd

_002E:
    End

RotomsRoom_InitFlags:
    SetFlag FLAG_ROTOM_ROOM_HIDE_MICROWAVE_OVEN
    SetFlag FLAG_ROTOM_ROOM_HIDE_WASHING_MACHINE
    SetFlag FLAG_ROTOM_ROOM_HIDE_REFRIGERATOR
    SetFlag FLAG_ROTOM_ROOM_HIDE_ROTARY_FAN
    SetFlag FLAG_ROTOM_ROOM_HIDE_LAWN_MOWER
    CheckDistributionEvent DISTRIBUTION_EVENT_ROTOM, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, _00A5
    GetRotomFormsInSave VAR_MAP_LOCAL_0, VAR_MAP_LOCAL_1, VAR_MAP_LOCAL_2, VAR_MAP_LOCAL_3, VAR_MAP_LOCAL_4
    CallIfEq VAR_MAP_LOCAL_0, FALSE, RotomsRoom_InitShowMicrowaveOven
    CallIfEq VAR_MAP_LOCAL_1, FALSE, RotomsRoom_InitShowWashingMachine
    CallIfEq VAR_MAP_LOCAL_2, FALSE, RotomsRoom_InitShowRefrigerator
    CallIfEq VAR_MAP_LOCAL_3, FALSE, RotomsRoom_InitShowRotaryFan
    CallIfEq VAR_MAP_LOCAL_4, FALSE, RotomsRoom_InitShowLawnMower
    End

_00A5:
    ScrCmd_18B 0, 4, 1
    ScrCmd_18B 1, 4, 1
    ScrCmd_18B 2, 4, 1
    ScrCmd_18B 3, 4, 1
    ScrCmd_18B 4, 4, 1
    End

RotomsRoom_InitShowMicrowaveOven:
    ClearFlag FLAG_ROTOM_ROOM_HIDE_MICROWAVE_OVEN
    Return

RotomsRoom_InitShowWashingMachine:
    ClearFlag FLAG_ROTOM_ROOM_HIDE_WASHING_MACHINE
    Return

RotomsRoom_InitShowRefrigerator:
    ClearFlag FLAG_ROTOM_ROOM_HIDE_REFRIGERATOR
    Return

RotomsRoom_InitShowRotaryFan:
    ClearFlag FLAG_ROTOM_ROOM_HIDE_ROTARY_FAN
    Return

RotomsRoom_InitShowLawnMower:
    ClearFlag FLAG_ROTOM_ROOM_HIDE_LAWN_MOWER
    Return

RotomsRoom_MicrowaveOven:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar LOCALID_ROTOM_FORM, ROTOM_FORM_HEAT
    GoTo RotomsRoom_CheckAppliance
    End

RotomsRoom_Refrigerator:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar LOCALID_ROTOM_FORM, ROTOM_FORM_FROST
    GoTo RotomsRoom_CheckAppliance
    End

RotomsRoom_WashingMachine:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar LOCALID_ROTOM_FORM, ROTOM_FORM_WASH
    GoTo RotomsRoom_CheckAppliance
    End

RotomsRoom_RotaryFan:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar LOCALID_ROTOM_FORM, ROTOM_FORM_FAN
    GoTo RotomsRoom_CheckAppliance
    End

RotomsRoom_LawnMower:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar LOCALID_ROTOM_FORM, ROTOM_FORM_MOW
    GoTo RotomsRoom_CheckAppliance
    End

RotomsRoom_CheckAppliance:
    CheckPartyHasSpecies VAR_RESULT, SPECIES_ROTOM
    GoToIfEq VAR_RESULT, FALSE, RotomsRoom_ItsAnAppliance
    CheckItem ITEM_SECRET_KEY, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, RotomsRoom_ItsAnAppliance
    CheckDistributionEvent DISTRIBUTION_EVENT_ROTOM, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, RotomsRoom_ItsAnAppliance
    CallIfEq LOCALID_ROTOM_FORM, ROTOM_FORM_HEAT, RotomsRoom_ItsAMicrowaveOvenRotomWantsToGoIntoTheMotor
    CallIfEq LOCALID_ROTOM_FORM, ROTOM_FORM_FROST, RotomsRoom_ItsARefrigeratorRotomWantsToGoIntoTheMotor
    CallIfEq LOCALID_ROTOM_FORM, ROTOM_FORM_WASH, RotomsRoom_ItsAWashingMachineRotomWantsToGoIntoTheMotor
    CallIfEq LOCALID_ROTOM_FORM, ROTOM_FORM_FAN, RotomsRoom_ItsARotaryFanRotomWantsToGoIntoTheMotor
    CallIfEq LOCALID_ROTOM_FORM, ROTOM_FORM_MOW, RotomsRoom_ItsALawnMowerRotomWantsToGoIntoTheMotor
    GetPartyRotomCountAndFirst VAR_0x8003, VAR_RESULT
    GoToIfGe VAR_0x8003, 1, _0254
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, RotomsRoom_RotomGaveUpEnteringTheMotor
    GoTo _01F8
    End

_01F8:
    CallIfEq LOCALID_ROTOM_FORM, ROTOM_FORM_HEAT, RotomsRoom_SetVarOverheat
    CallIfEq LOCALID_ROTOM_FORM, ROTOM_FORM_FROST, RotomsRoom_SetVarBlizzard
    CallIfEq LOCALID_ROTOM_FORM, ROTOM_FORM_WASH, RotomsRoom_SetVarHydroPump
    CallIfEq LOCALID_ROTOM_FORM, ROTOM_FORM_FAN, RotomsRoom_SetVarAirSlash
    CallIfEq LOCALID_ROTOM_FORM, ROTOM_FORM_MOW, RotomsRoom_SetVarLeafStorm
    CountRepeatedSpeciesInParty VAR_RESULT, SPECIES_ROTOM
    GoToIfEq VAR_RESULT, 1, RotomsRoom_GetRotomPartySlot
    GoTo _0403
    End

_0254:
    InitLocalTextMenu 31, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 15, 0
    AddMenuEntryImm 16, 1
    AddMenuEntryImm 14, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _01F8
    GoToIfEq VAR_0x8008, 2, _0295
    GoTo RotomsRoom_RotomGaveUpEnteringTheMotor
    End

_0295:
    GetPartyRotomCountAndFirst VAR_0x8003, VAR_RESULT
    SetVar LOCALID_PARTY_SLOT, VAR_RESULT
    GoToIfGe VAR_0x8003, 2, RotomsRoom_ChooseARotom
    GoTo _02B6
    End

_02B6:
    BufferPartyMonNickname 0, LOCALID_PARTY_SLOT
    Message RotomsRoom_Text_PokemonEmergedFromTheMotor
    SetRotomForm LOCALID_PARTY_SLOT, 0, 0, ROTOM_FORM_BASE
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    GetPartyMonForm2 LOCALID_PARTY_SLOT, LOCALID_ROTOM_FORM
    CallIfEq LOCALID_ROTOM_FORM, ROTOM_FORM_HEAT, RotomsRoom_AddMicrowaveOven
    CallIfEq LOCALID_ROTOM_FORM, ROTOM_FORM_FAN, RotomsRoom_AddRotaryFan
    CallIfEq LOCALID_ROTOM_FORM, ROTOM_FORM_FROST, RotomsRoom_AddRefrigerator
    CallIfEq LOCALID_ROTOM_FORM, ROTOM_FORM_WASH, RotomsRoom_AddWashingMachine
    CallIfEq LOCALID_ROTOM_FORM, ROTOM_FORM_MOW, RotomsRoom_AddLawnMower
    GoTo _0325
    End

_0325:
    GetPlayerMapPos VAR_0x8006, VAR_0x8007
    GetPlayerDir VAR_RESULT
    Warp MAP_HEADER_ROTOMS_ROOM, 0, VAR_0x8006, VAR_0x8007, VAR_RESULT
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

RotomsRoom_AddMicrowaveOven:
    ClearFlag FLAG_ROTOM_ROOM_HIDE_MICROWAVE_OVEN
    AddObject 0
    Return

RotomsRoom_AddRefrigerator:
    ClearFlag FLAG_ROTOM_ROOM_HIDE_REFRIGERATOR
    AddObject 2
    Return

RotomsRoom_AddWashingMachine:
    ClearFlag FLAG_ROTOM_ROOM_HIDE_WASHING_MACHINE
    AddObject 3
    Return

RotomsRoom_AddRotaryFan:
    ClearFlag FLAG_ROTOM_ROOM_HIDE_ROTARY_FAN
    AddObject 1
    Return

RotomsRoom_AddLawnMower:
    ClearFlag FLAG_ROTOM_ROOM_HIDE_LAWN_MOWER
    AddObject 4
    Return

RotomsRoom_ChooseARotom:
    Message RotomsRoom_Text_WhichRotomAreYouChoosing
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    ScrCmd_191
    GetSelectedPartySlot LOCALID_PARTY_SLOT
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq LOCALID_PARTY_SLOT, 0xFF, RotomsRoom_End
    GetPartyMonSpecies LOCALID_PARTY_SLOT, VAR_RESULT
    GoToIfEq VAR_RESULT, SPECIES_NONE, RotomsRoom_AnEggCantEnterAMotor
    GoToIfNe VAR_RESULT, SPECIES_ROTOM, RotomsRoom_ThatPokemonCantEnterAMotor
    GetPartyMonForm2 LOCALID_PARTY_SLOT, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _03E8
    GoTo _02B6
    End

_03E8:
    Message RotomsRoom_Text_ThatRotomHasntEnteredAMotor
    GoTo RotomsRoom_CloseMessage
    End

RotomsRoom_End:
    End

RotomsRoom_GetRotomPartySlot:
    FindPartySlotWithSpecies LOCALID_PARTY_SLOT, SPECIES_ROTOM
    GoTo _0473
    End

_0403:
    Message RotomsRoom_Text_WhichRotomAreYouChoosing
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    ScrCmd_191
    GetSelectedPartySlot LOCALID_PARTY_SLOT
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq LOCALID_PARTY_SLOT, 0xFF, RotomsRoom_RotomGaveUpEnteringTheMotor
    GetPartyMonSpecies LOCALID_PARTY_SLOT, VAR_RESULT
    GoToIfEq VAR_RESULT, SPECIES_NONE, RotomsRoom_AnEggCantEnterAMotor
    GoToIfNe VAR_RESULT, SPECIES_ROTOM, RotomsRoom_ThatPokemonCantEnterAMotor
    GoTo _0473
    End

RotomsRoom_AnEggCantEnterAMotor:
    Message RotomsRoom_Text_AnEggCantEnterAMotor
    GoTo RotomsRoom_CloseMessage
    End

RotomsRoom_ThatPokemonCantEnterAMotor:
    Message RotomsRoom_Text_ThatPokemonCantEnterAMotor
    GoTo RotomsRoom_CloseMessage
    End

_0473:
    CheckPartyMonHasMove VAR_RESULT, MOVE_OVERHEAT, LOCALID_PARTY_SLOT
    GoToIfEq VAR_RESULT, TRUE, RotomsRoom_SetVarMoveNone
    CheckPartyMonHasMove VAR_RESULT, MOVE_BLIZZARD, LOCALID_PARTY_SLOT
    GoToIfEq VAR_RESULT, TRUE, RotomsRoom_SetVarMoveNone
    CheckPartyMonHasMove VAR_RESULT, MOVE_HYDRO_PUMP, LOCALID_PARTY_SLOT
    GoToIfEq VAR_RESULT, TRUE, RotomsRoom_SetVarMoveNone
    CheckPartyMonHasMove VAR_RESULT, MOVE_AIR_SLASH, LOCALID_PARTY_SLOT
    GoToIfEq VAR_RESULT, TRUE, RotomsRoom_SetVarMoveNone
    CheckPartyMonHasMove VAR_RESULT, MOVE_LEAF_STORM, LOCALID_PARTY_SLOT
    GoToIfEq VAR_RESULT, TRUE, RotomsRoom_SetVarMoveNone
    GetPartyMonMoveCount VAR_RESULT, LOCALID_PARTY_SLOT
    SetVar VAR_0x8002, VAR_RESULT
    GoToIfEq VAR_RESULT, LEARNED_MOVES_MAX, RotomsRoom_Text_PokemonTryingToLearnMove
    GoTo RotomsRoom_PokemonEnteredMotor
    End

RotomsRoom_SetVarMoveNone:
    SetVar VAR_0x8002, 0
    GoTo RotomsRoom_PokemonEnteredMotor
    End

RotomsRoom_PokemonEnteredMotor:
    BufferPartyMonNickname 0, LOCALID_PARTY_SLOT
    Message RotomsRoom_Text_PokemonEnteredMotor
    GoTo RotomsRoom_SetRotomForm
    End

RotomsRoom_Text_PokemonTryingToLearnMove:
    BufferPartyMonNickname 0, LOCALID_PARTY_SLOT
    BufferMoveName 1, LOCALID_MOVE_TO_LEARN
    Message RotomsRoom_Text_PokemonEnteredMotorTryingToLearnMove
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, RotomsRoom_DidNotLearnMoveEmergedFromTheMotor
    GoTo RotomsRoom_LearnMove
    End

RotomsRoom_LearnMove:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    OpenSummaryScreenTeachMove LOCALID_PARTY_SLOT, LOCALID_MOVE_TO_LEARN
    GetSummarySelectedMoveSlot VAR_0x8002
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq VAR_0x8002, LEARNED_MOVES_MAX, RotomsRoom_GiveUpLearningMove
    GetPartyMonMove VAR_RESULT, LOCALID_PARTY_SLOT, VAR_0x8002
    BufferMoveName 1, VAR_RESULT
    Message RotomsRoom_Text_TheMoveWillBeForgotten
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, RotomsRoom_DidNotLearnMoveEmergedFromTheMotor
    BufferPartyMonNickname 0, LOCALID_PARTY_SLOT
    GetPartyMonMove VAR_RESULT, LOCALID_PARTY_SLOT, VAR_0x8002
    BufferMoveName 1, VAR_RESULT
    Message RotomsRoom_Text_12andPoof
    PlayFanfare SEQ_SE_DP_KON
    WaitFanfare SEQ_SE_DP_KON
    WaitTime 30, VAR_RESULT
    Message RotomsRoom_Text_PokemonForgotHowToUseMove
    WaitTime 32, VAR_RESULT
    PlaySound SEQ_FANFA1
    BufferMoveName 1, LOCALID_MOVE_TO_LEARN
    Message RotomsRoom_Text_PokemonLearnedMove
    WaitSound
    WaitTime 16, VAR_RESULT
    GoTo RotomsRoom_SetRotomForm
    End

RotomsRoom_GiveUpLearningMove:
    BufferMoveName 1, LOCALID_MOVE_TO_LEARN
    Message RotomsRoom_Text_GiveUpLearningMove
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, RotomsRoom_LearnMove
    GoTo RotomsRoom_DidNotLearnMoveEmergedFromTheMotor
    End

RotomsRoom_DidNotLearnMoveEmergedFromTheMotor:
    BufferPartyMonNickname 0, LOCALID_PARTY_SLOT
    BufferMoveName 1, LOCALID_MOVE_TO_LEARN
    Message RotomsRoom_Text_PokemonDidNotLearnMoveEmergedFromTheMotor
    GoTo RotomsRoom_CloseMessage
    End

RotomsRoom_SetRotomForm:
    SetRotomForm LOCALID_PARTY_SLOT, VAR_0x8002, LOCALID_MOVE_TO_LEARN, LOCALID_ROTOM_FORM
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    CallIfEq LOCALID_ROTOM_FORM, ROTOM_FORM_HEAT, RotomsRoom_RemoveMicrowaveOven
    CallIfEq LOCALID_ROTOM_FORM, ROTOM_FORM_FAN, RotomsRoom_RemoveRotaryFan
    CallIfEq LOCALID_ROTOM_FORM, ROTOM_FORM_FROST, RotomsRoom_RemoveRefrigerator
    CallIfEq LOCALID_ROTOM_FORM, ROTOM_FORM_WASH, RotomsRoom_RemoveWashingMachine
    CallIfEq LOCALID_ROTOM_FORM, ROTOM_FORM_MOW, RotomsRoom_RemoveLawnMower
    GoToIfUnset FLAG_UNK_0x0077, _080C
    GoTo _0325
    End

RotomsRoom_RemoveMicrowaveOven:
    RemoveObject 0
    Return

RotomsRoom_RemoveRefrigerator:
    RemoveObject 2
    Return

RotomsRoom_RemoveWashingMachine:
    RemoveObject 3
    Return

RotomsRoom_RemoveRotaryFan:
    RemoveObject 1
    Return

RotomsRoom_RemoveLawnMower:
    RemoveObject 4
    Return

RotomsRoom_SetVarOverheat:
    SetVar LOCALID_MOVE_TO_LEARN, MOVE_OVERHEAT
    Return

RotomsRoom_SetVarBlizzard:
    SetVar LOCALID_MOVE_TO_LEARN, MOVE_BLIZZARD
    Return

RotomsRoom_SetVarHydroPump:
    SetVar LOCALID_MOVE_TO_LEARN, MOVE_HYDRO_PUMP
    Return

RotomsRoom_SetVarAirSlash:
    SetVar LOCALID_MOVE_TO_LEARN, MOVE_AIR_SLASH
    Return

RotomsRoom_SetVarLeafStorm:
    SetVar LOCALID_MOVE_TO_LEARN, MOVE_LEAF_STORM
    Return

RotomsRoom_ItsAMicrowaveOvenRotomWantsToGoIntoTheMotor:
    Message RotomsRoom_Text_ItsAMicrowaveOvenRotomWantsToGoIntoTheMotor
    Return

RotomsRoom_ItsARefrigeratorRotomWantsToGoIntoTheMotor:
    Message RotomsRoom_Text_ItsARefrigeratorRotomWantsToGoIntoTheMotor
    Return

RotomsRoom_ItsAWashingMachineRotomWantsToGoIntoTheMotor:
    Message RotomsRoom_Text_ItsAWashingMachineRotomWantsToGoIntoTheMotor
    Return

RotomsRoom_ItsARotaryFanRotomWantsToGoIntoTheMotor:
    Message RotomsRoom_Text_ItsARotaryFanRotomWantsToGoIntoTheMotor
    Return

RotomsRoom_ItsALawnMowerRotomWantsToGoIntoTheMotor:
    Message RotomsRoom_Text_ItsALawnMowerRotomWantsToGoIntoTheMotor
    Return

RotomsRoom_ItsAnAppliance:
    CallIfEq LOCALID_ROTOM_FORM, ROTOM_FORM_HEAT, RotomsRoom_ItsAMicrowaveOven
    CallIfEq LOCALID_ROTOM_FORM, ROTOM_FORM_FROST, RotomsRoom_ItsARefrigerator
    CallIfEq LOCALID_ROTOM_FORM, ROTOM_FORM_WASH, RotomsRoom_ItsAWashingMachine
    CallIfEq LOCALID_ROTOM_FORM, ROTOM_FORM_FAN, RotomsRoom_ItsARotaryFan
    CallIfEq LOCALID_ROTOM_FORM, ROTOM_FORM_MOW, RotomsRoom_ItsALawnMower
    GoTo RotomsRoom_CloseMessage
    End

RotomsRoom_ItsAMicrowaveOven:
    Message RotomsRoom_Text_ItsAMicrowaveOven
    Return

RotomsRoom_ItsARefrigerator:
    Message RotomsRoom_Text_ItsARefrigerator
    Return

RotomsRoom_ItsAWashingMachine:
    Message RotomsRoom_Text_ItsAWashingMachine
    Return

RotomsRoom_ItsARotaryFan:
    Message RotomsRoom_Text_ItsARotaryFan
    Return

RotomsRoom_ItsALawnMower:
    Message RotomsRoom_Text_ItsALawnMower
    Return

RotomsRoom_RotomGaveUpEnteringTheMotor:
    CallIfEq LOCALID_ROTOM_FORM, ROTOM_FORM_HEAT, RotomsRoom_RotomGaveUpEnteringTheMicrowaveOven
    CallIfEq LOCALID_ROTOM_FORM, ROTOM_FORM_FROST, RotomsRoom_RotomGaveUpEnteringTheRefrigerator
    CallIfEq LOCALID_ROTOM_FORM, ROTOM_FORM_WASH, RotomsRoom_RotomGaveUpEnteringTheWashingMachine
    CallIfEq LOCALID_ROTOM_FORM, ROTOM_FORM_FAN, RotomsRoom_RotomGaveUpEnteringTheRotaryFan
    CallIfEq LOCALID_ROTOM_FORM, ROTOM_FORM_MOW, RotomsRoom_RotomGaveUpEnteringTheLawnMower
    GoTo RotomsRoom_CloseMessage
    End

RotomsRoom_RotomGaveUpEnteringTheMicrowaveOven:
    Message RotomsRoom_Text_RotomGaveUpEnteringTheMicrowaveOvensMotor
    Return

RotomsRoom_RotomGaveUpEnteringTheRefrigerator:
    Message RotomsRoom_Text_RotomGaveUpEnteringTheRefrigeratorsMotor
    Return

RotomsRoom_RotomGaveUpEnteringTheWashingMachine:
    Message RotomsRoom_Text_RotomGaveUpEnteringTheWashingMachinesMotor
    Return

RotomsRoom_RotomGaveUpEnteringTheRotaryFan:
    Message RotomsRoom_Text_RotomGaveUpEnteringTheRotaryFansMotor
    Return

RotomsRoom_RotomGaveUpEnteringTheLawnMower:
    Message RotomsRoom_Text_RotomGaveUpEnteringTheLawnMowersMotor
    Return

RotomsRoom_CloseMessage:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

RotomsRoom_MysteriousNotebook:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message RotomsRoom_Text_ThereIsAMysteriousNotebookHere
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_07BB:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GetPartyRotomCountAndFirst VAR_0x8003, VAR_RESULT
    GoToIfEq VAR_0x8003, 0, _0801
    Message RotomsRoom_Text_OhRotomWantsToRevertToItsOriginalForm
    InitLocalTextMenu 31, 15, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 14, 0
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0295
    CloseMessage
    ReleaseAll
    End

_0801:
    Message RotomsRoom_Text_ThereWasAnApplianceHere
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_080C:
    SetFlag FLAG_UNK_0x0077
    SetVar VAR_UNK_0x411B, 1
    GoTo _0325
    End

RotomsRoom_ProfessorRowan:
    LockAll
    ClearFlag FLAG_UNK_0x02C0
    PlayFanfare SEQ_SE_DP_KAIDAN2
    AddObject 6
    WaitFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_PLAYER, _08AC
    ApplyMovement 6, _08D4
    WaitMovement
    BufferPlayerName 0
    Message RotomsRoom_Text_RowanAhImagineFindingYouHere
    CloseMessage
    GetPlayerMapPos VAR_0x8006, VAR_0x8007
    CallIfGe VAR_0x8006, 10, _08A8
    CallIfLe VAR_0x8006, 4, _08AA
    ApplyMovement 6, _08DC
    WaitMovement
    Message RotomsRoom_Text_APokemonThatSlipsIntoElectricAppliancesYouSay
    CloseMessage
    ApplyMovement 6, _08F4
    WaitMovement
    Message RotomsRoom_Text_AnywayThisRotomWhatAnInterestingPokemon
    CloseMessage
    ApplyMovement 6, _0900
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject 6
    WaitFanfare SEQ_SE_DP_KAIDAN2
    SetVar VAR_UNK_0x411B, 2
    ReleaseAll
    End

_08A8:
    Return

_08AA:
    Return

    .balign 4, 0
_08AC:
    WalkOnSpotNormalSouth
    EmoteExclamationMark
    EndMovement

    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_08D4:
    WalkNormalNorth 2
    EndMovement

    .balign 4, 0
_08DC:
    WalkNormalWest 2
    WalkOnSpotNormalNorth
    Delay8 2
    WalkNormalEast 4
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_08F4:
    WalkNormalWest 2
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0900:
    WalkNormalSouth 2
    EndMovement

RotomsRoom_OldNotebook:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message RotomsRoom_Text_ItsAnOldNotebook
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _09CF
    Message RotomsRoom_Text_OurEncounterWasASuddenOne
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _09CF
    Message RotomsRoom_Text_ThePokemonHoveredInTheAir
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _09CF
    Message RotomsRoom_Text_ThePokemonOnlyWishedToBeFriends
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _09CF
    Message RotomsRoom_Text_RotomIsAPokemonThatIsSensational
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _09CF
    Message RotomsRoom_Text_RotomAndIBecameFastFriends
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _09CF
    Message RotomsRoom_Text_AFeelingOfMischiefGotTheBetterOfMe
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _09CF
    Message RotomsRoom_Text_WhenICameToRotomDisappeared
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _09CF
    Message RotomsRoom_Text_MySearchForRotomCarriedMeFarFromHome
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _09CF
    Message RotomsRoom_Text_TheRobotEyesLitUpHappilyAsIHeldIt
    GoTo _09D5
    End

_09CF:
    CloseMessage
    ReleaseAll
    End

_09D5:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
