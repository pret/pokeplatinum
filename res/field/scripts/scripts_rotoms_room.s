#include "macros/scrcmd.inc"
#include "generated/distribution_events.h"
#include "generated/moves.h"
#include "constants/forms.h"
#include "res/text/bank/rotoms_room.h"

#define VAR_ROTOM_FORM 0x8004

    .data

    ScriptEntry RotomsRoom_MicrowaveOven
    ScriptEntry RotomsRoom_Refrigerator
    ScriptEntry RotomsRoom_WashingMachine
    ScriptEntry RotomsRoom_RotaryFan
    ScriptEntry RotomsRoom_LawnMower
    ScriptEntry _07AA
    ScriptEntry _0030
    ScriptEntry _002E
    ScriptEntry _07BB
    ScriptEntry _0908
    ScriptEntry _081E
    ScriptEntryEnd

_002E:
    End

_0030:
    SetFlag 0x2BB
    SetFlag 0x2BC
    SetFlag 0x2BD
    SetFlag 0x2BE
    SetFlag 0x2BF
    CheckDistributionEvent DISTRIBUTION_EVENT_ROTOM, 0x4000
    GoToIfEq 0x4000, FALSE, _00A5
    ScrCmd_302 0x4000, 0x4001, 0x4002, 0x4003, 0x4004
    CallIfEq 0x4000, 0, _00CF
    CallIfEq 0x4001, 0, _00D5
    CallIfEq 0x4002, 0, _00DB
    CallIfEq 0x4003, 0, _00E1
    CallIfEq 0x4004, 0, _00E7
    End

_00A5:
    ScrCmd_18B 0, 4, 1
    ScrCmd_18B 1, 4, 1
    ScrCmd_18B 2, 4, 1
    ScrCmd_18B 3, 4, 1
    ScrCmd_18B 4, 4, 1
    End

_00CF:
    ClearFlag 0x2BB
    Return

_00D5:
    ClearFlag 0x2BC
    Return

_00DB:
    ClearFlag 0x2BD
    Return

_00E1:
    ClearFlag 0x2BE
    Return

_00E7:
    ClearFlag 0x2BF
    Return

RotomsRoom_MicrowaveOven:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_ROTOM_FORM, ROTOM_FORM_HEAT
    GoTo _0151
    End

RotomsRoom_Refrigerator:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_ROTOM_FORM, ROTOM_FORM_FROST
    GoTo _0151
    End

RotomsRoom_WashingMachine:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_ROTOM_FORM, ROTOM_FORM_WASH
    GoTo _0151
    End

RotomsRoom_RotaryFan:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_ROTOM_FORM, ROTOM_FORM_FAN
    GoTo _0151
    End

RotomsRoom_LawnMower:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_ROTOM_FORM, ROTOM_FORM_MOW
    GoTo _0151
    End

_0151:
    PartyHasSpecies 0x800C, SPECIES_ROTOM
    GoToIfEq 0x800C, FALSE, RotomsRoom_ItsAnAppliance
    CheckItem ITEM_SECRET_KEY, 1, 0x800C
    GoToIfEq 0x800C, FALSE, RotomsRoom_ItsAnAppliance
    CheckDistributionEvent DISTRIBUTION_EVENT_ROTOM, 0x800C
    GoToIfEq 0x800C, FALSE, RotomsRoom_ItsAnAppliance
    CallIfEq VAR_ROTOM_FORM, ROTOM_FORM_HEAT, _06C5
    CallIfEq VAR_ROTOM_FORM, ROTOM_FORM_FROST, _06CA
    CallIfEq VAR_ROTOM_FORM, ROTOM_FORM_WASH, _06CF
    CallIfEq VAR_ROTOM_FORM, ROTOM_FORM_FAN, _06D4
    CallIfEq VAR_ROTOM_FORM, ROTOM_FORM_MOW, _06D9
    ScrCmd_303 0x8003, 0x800C
    GoToIfGe 0x8003, 1, _0254
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, RotomsRoom_RotomGaveUpEnteringTheMotor
    GoTo _01F8
    End

_01F8:
    CallIfEq VAR_ROTOM_FORM, ROTOM_FORM_HEAT, RotomsRoom_SetVarOverheat
    CallIfEq VAR_ROTOM_FORM, ROTOM_FORM_FROST, RotomsRoom_SetVarBlizzard
    CallIfEq VAR_ROTOM_FORM, ROTOM_FORM_WASH, RotomsRoom_SetVarHydroPump
    CallIfEq VAR_ROTOM_FORM, ROTOM_FORM_FAN, RotomsRoom_SetVarAirSlash
    CallIfEq VAR_ROTOM_FORM, ROTOM_FORM_MOW, RotomsRoom_SetVarLeafStorm
    GetPartyRepeatedSpeciesCount 0x800C, SPECIES_ROTOM
    GoToIfEq 0x800C, 1, _03F5
    GoTo _0403
    End

_0254:
    ScrCmd_041 31, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 15, 0
    ScrCmd_042 16, 1
    ScrCmd_042 14, 2
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _01F8
    GoToIfEq 0x8008, 2, _0295
    GoTo RotomsRoom_RotomGaveUpEnteringTheMotor
    End

_0295:
    ScrCmd_303 0x8003, 0x800C
    SetVar 0x8000, 0x800C
    GoToIfGe 0x8003, 2, _037B
    GoTo _02B6
    End

_02B6:
    BufferPartyMonNickname 0, 0x8000
    Message RotomsRoom_Text_PokemonEmergedFromTheMotor
    SetRotomForm 0x8000, 0, 0, ROTOM_FORM_NORMAL
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    GetPartyMonForm2 0x8000, VAR_ROTOM_FORM
    CallIfEq VAR_ROTOM_FORM, ROTOM_FORM_HEAT, _0349
    CallIfEq VAR_ROTOM_FORM, ROTOM_FORM_FAN, _0367
    CallIfEq VAR_ROTOM_FORM, ROTOM_FORM_FROST, _0353
    CallIfEq VAR_ROTOM_FORM, ROTOM_FORM_WASH, _035D
    CallIfEq VAR_ROTOM_FORM, ROTOM_FORM_MOW, _0371
    GoTo _0325
    End

_0325:
    GetPlayerMapPos 0x8006, 0x8007
    GetPlayerDir 0x800C
    Warp MAP_HEADER_ROTOMS_ROOM, 0, 0x8006, 0x8007, 0x800C
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

_0349:
    ClearFlag 0x2BB
    AddObject 0
    Return

_0353:
    ClearFlag 0x2BD
    AddObject 2
    Return

_035D:
    ClearFlag 0x2BC
    AddObject 3
    Return

_0367:
    ClearFlag 0x2BE
    AddObject 1
    Return

_0371:
    ClearFlag 0x2BF
    AddObject 4
    Return

_037B:
    Message RotomsRoom_Text_WhichRotomAreYouChoosing
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    ScrCmd_191
    ScrCmd_193 0x8000
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x8000, 0xFF, _03F3
    GetPartyMonSpecies 0x8000, 0x800C
    GoToIfEq 0x800C, 0, _045D
    GoToIfNe 0x800C, 0x1DF, _0468
    GetPartyMonForm2 0x8000, 0x800C
    GoToIfEq 0x800C, 0, _03E8
    GoTo _02B6
    End

_03E8:
    Message RotomsRoom_Text_ThatRotomHasntEnteredAMotor
    GoTo _07A2
    End

_03F3:
    End

_03F5:
    GetPartyIDWithSpecies 0x8000, SPECIES_ROTOM
    GoTo _0473
    End

_0403:
    Message RotomsRoom_Text_WhichRotomAreYouChoosing
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    ScrCmd_191
    ScrCmd_193 0x8000
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x8000, 0xFF, RotomsRoom_RotomGaveUpEnteringTheMotor
    GetPartyMonSpecies 0x8000, 0x800C
    GoToIfEq 0x800C, 0, _045D
    GoToIfNe 0x800C, 0x1DF, _0468
    GoTo _0473
    End

_045D:
    Message RotomsRoom_Text_AnEggCantEnterAMotor
    GoTo _07A2
    End

_0468:
    Message RotomsRoom_Text_ThatPokemonCantEnterAMotor
    GoTo _07A2
    End

_0473:
    CheckPartyMonHasMove 0x800C, MOVE_OVERHEAT, 0x8000
    GoToIfEq 0x800C, TRUE, RotomsRoom_SetVarMoveNone
    CheckPartyMonHasMove 0x800C, MOVE_BLIZZARD, 0x8000
    GoToIfEq 0x800C, TRUE, RotomsRoom_SetVarMoveNone
    CheckPartyMonHasMove 0x800C, MOVE_HYDRO_PUMP, 0x8000
    GoToIfEq 0x800C, TRUE, RotomsRoom_SetVarMoveNone
    CheckPartyMonHasMove 0x800C, MOVE_AIR_SLASH, 0x8000
    GoToIfEq 0x800C, TRUE, RotomsRoom_SetVarMoveNone
    CheckPartyMonHasMove 0x800C, MOVE_LEAF_STORM, 0x8000
    GoToIfEq 0x800C, TRUE, RotomsRoom_SetVarMoveNone
    ScrCmd_1C8 0x800C, 0x8000
    SetVar 0x8002, 0x800C
    GoToIfEq 0x800C, 4, _051B
    GoTo _050B
    End

RotomsRoom_SetVarMoveNone:
    SetVar 0x8002, 0
    GoTo _050B
    End

_050B:
    BufferPartyMonNickname 0, 0x8000
    Message RotomsRoom_Text_PokemonEnteredMotor
    GoTo _0613
    End

_051B:
    BufferPartyMonNickname 0, 0x8000
    BufferMoveName 1, 0x8001
    Message RotomsRoom_Text_PokemonEnteredTheMotorTryingToLearnMove
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _05FE
    GoTo _0541
    End

_0541:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    OpenSummaryScreenTeachMove 0x8000, 0x8001
    ScrCmd_2E8 0x8002
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x8002, 4, _05DD
    ScrCmd_1CA 0x800C, 0x8000, 0x8002
    BufferMoveName 1, 0x800C
    Message RotomsRoom_Text_TheMoveWillBeForgotten
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _05FE
    BufferPartyMonNickname 0, 0x8000
    ScrCmd_1CA 0x800C, 0x8000, 0x8002
    BufferMoveName 1, 0x800C
    Message RotomsRoom_Text_12andPoof
    PlayFanfare SEQ_SE_DP_KON
    WaitFanfare SEQ_SE_DP_KON
    WaitTime 30, 0x800C
    Message RotomsRoom_Text_PokemonForgotHowToUseMove
    WaitTime 32, 0x800C
    PlaySound SEQ_FANFA1
    BufferMoveName 1, 0x8001
    Message RotomsRoom_Text_PokemonLearnedMove
    WaitSound
    WaitTime 16, 0x800C
    GoTo _0613
    End

_05DD:
    BufferMoveName 1, 0x8001
    Message RotomsRoom_Text_GiveUpLearningMove
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _0541
    GoTo _05FE
    End

_05FE:
    BufferPartyMonNickname 0, 0x8000
    BufferMoveName 1, 0x8001
    Message RotomsRoom_Text_PokemonDidNotLearnMoveEmergedFromTheMotor
    GoTo _07A2
    End

_0613:
    SetRotomForm 0x8000, 0x8002, 0x8001, VAR_ROTOM_FORM
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    CallIfEq VAR_ROTOM_FORM, ROTOM_FORM_HEAT, _067F
    CallIfEq VAR_ROTOM_FORM, ROTOM_FORM_FAN, _0691
    CallIfEq VAR_ROTOM_FORM, ROTOM_FORM_FROST, _0685
    CallIfEq VAR_ROTOM_FORM, ROTOM_FORM_WASH, _068B
    CallIfEq VAR_ROTOM_FORM, ROTOM_FORM_MOW, _0697
    GoToIfUnset 119, _080C
    GoTo _0325
    End

_067F:
    RemoveObject 0
    Return

_0685:
    RemoveObject 2
    Return

_068B:
    RemoveObject 3
    Return

_0691:
    RemoveObject 1
    Return

_0697:
    RemoveObject 4
    Return

RotomsRoom_SetVarOverheat:
    SetVar 0x8001, MOVE_OVERHEAT
    Return

RotomsRoom_SetVarBlizzard:
    SetVar 0x8001, MOVE_BLIZZARD
    Return

RotomsRoom_SetVarHydroPump:
    SetVar 0x8001, MOVE_HYDRO_PUMP
    Return

RotomsRoom_SetVarAirSlash:
    SetVar 0x8001, MOVE_AIR_SLASH
    Return

RotomsRoom_SetVarLeafStorm:
    SetVar 0x8001, MOVE_LEAF_STORM
    Return

_06C5:
    Message RotomsRoom_Text_ItsAMicrowaveOvenRotomWantsToGoIntoTheMotor
    Return

_06CA:
    Message RotomsRoom_Text_ItsARefrigeratorRotomWantsToGoIntoTheMotor
    Return

_06CF:
    Message RotomsRoom_Text_ItsAWashingMachineRotomWantsToGoIntoTheMotor
    Return

_06D4:
    Message RotomsRoom_Text_ItsARotaryFanRotomWantsToGoIntoTheMotor
    Return

_06D9:
    Message RotomsRoom_Text_ItsALawnMowerRotomWantsToGoIntoTheMotor
    Return

RotomsRoom_ItsAnAppliance:
    CallIfEq VAR_ROTOM_FORM, ROTOM_FORM_HEAT, RotomsRoom_ItsAMicrowaveOven
    CallIfEq VAR_ROTOM_FORM, ROTOM_FORM_FROST, RotomsRoom_ItsARefrigerator
    CallIfEq VAR_ROTOM_FORM, ROTOM_FORM_WASH, RotomsRoom_ItsAWashingMachine
    CallIfEq VAR_ROTOM_FORM, ROTOM_FORM_FAN, RotomsRoom_ItsARotaryFan
    CallIfEq VAR_ROTOM_FORM, ROTOM_FORM_MOW, RotomsRoom_ItsALawnMower
    GoTo _07A2
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
    CallIfEq VAR_ROTOM_FORM, ROTOM_FORM_HEAT, RotomsRoom_RotomGaveUpEnteringTheMicrowaveOven
    CallIfEq VAR_ROTOM_FORM, ROTOM_FORM_FROST, RotomsRoom_RotomGaveUpEnteringTheRefrigerator
    CallIfEq VAR_ROTOM_FORM, ROTOM_FORM_WASH, RotomsRoom_RotomGaveUpEnteringTheWashingMachine
    CallIfEq VAR_ROTOM_FORM, ROTOM_FORM_FAN, RotomsRoom_RotomGaveUpEnteringTheRotaryFan
    CallIfEq VAR_ROTOM_FORM, ROTOM_FORM_MOW, RotomsRoom_RotomGaveUpEnteringTheLawnMower
    GoTo _07A2
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

_07A2:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_07AA:
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
    ScrCmd_303 0x8003, 0x800C
    GoToIfEq 0x8003, 0, _0801
    Message RotomsRoom_Text_OhRotomWantsToRevertToItsOriginalForm
    ScrCmd_041 31, 15, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 14, 0
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0295
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
    SetFlag 119
    SetVar 0x411B, 1
    GoTo _0325
    End

_081E:
    LockAll
    ClearFlag 0x2C0
    PlayFanfare SEQ_SE_DP_KAIDAN2
    AddObject 6
    WaitFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_PLAYER, _08AC
    ApplyMovement 6, _08D4
    WaitMovement
    BufferPlayerName 0
    Message RotomsRoom_Text_RowanAhImagineFindingYouHere
    CloseMessage
    GetPlayerMapPos 0x8006, 0x8007
    CallIfGe 0x8006, 10, _08A8
    CallIfLe 0x8006, 4, _08AA
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
    SetVar 0x411B, 2
    ReleaseAll
    End

_08A8:
    Return

_08AA:
    Return

    .balign 4, 0
_08AC:
    MoveAction_033
    MoveAction_075
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
    MoveAction_012 2
    EndMovement

    .balign 4, 0
_08DC:
    MoveAction_014 2
    MoveAction_032
    MoveAction_063 2
    MoveAction_015 4
    MoveAction_032
    EndMovement

    .balign 4, 0
_08F4:
    MoveAction_014 2
    MoveAction_032
    EndMovement

    .balign 4, 0
_0900:
    MoveAction_013 2
    EndMovement

_0908:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message RotomsRoom_Text_ItsAnOldNotebook
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _09CF
    Message RotomsRoom_Text_OurEncounterWasASuddenOne
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _09CF
    Message RotomsRoom_Text_ThePokemonHoveredInTheAir
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _09CF
    Message RotomsRoom_Text_ThePokemonOnlyWishedToBeFriends
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _09CF
    Message RotomsRoom_Text_RotomIsAPokemonThatIsSensational
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _09CF
    Message RotomsRoom_Text_RotomAndIBecameFastFriends
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _09CF
    Message RotomsRoom_Text_AFeelingOfMischiefGotTheBetterOfMe
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _09CF
    Message RotomsRoom_Text_WhenICameToRotomDisappeared
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _09CF
    Message RotomsRoom_Text_MySearchForRotomCarriedMeFarFromHome
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _09CF
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
