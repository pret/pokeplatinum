#include "macros/scrcmd.inc"
#include "res/text/bank/global_terminal_1f.h"
#include "res/text/bank/menu_entries.h"
#include "constants/map_object.h"


    ScriptEntry GlobalTerminal1F_Unused1
    ScriptEntry GlobalTerminal1F_Unused2
    ScriptEntry GlobalTerminal1F_ReceptionistGTS
    ScriptEntry GlobalTerminal1F_Collector
    ScriptEntry GlobalTerminal1F_BugCatcher
    ScriptEntry GlobalTerminal1F_Guitarist
    ScriptEntry GlobalTerminal1F_ExpertM
    ScriptEntry GlobalTerminal1F_AceTrainerM
    ScriptEntry GlobalTerminal1F_Beauty1
    ScriptEntry GlobalTerminal1F_Picnicker
    ScriptEntry GlobalTerminal1F_Youngster
    ScriptEntry GlobalTerminal1F_OnFrameExitGTSRoom
    ScriptEntry GlobalTerminal1F_OnResume
    ScriptEntry GlobalTerminal1F_BattleVideoRankingsMachine
    ScriptEntry GlobalTerminal1F_TrainerRankingsMachine
    ScriptEntry GlobalTerminal1F_RepectionistEntryNorth
    ScriptEntry GlobalTerminal1F_RepectionistEntrySouth
    ScriptEntry GlobalTerminal1F_PokemonBreederF
    ScriptEntry GlobalTerminal1F_PokemonBreederM
    ScriptEntry GlobalTerminal1F_Beauty2
    ScriptEntry GlobalTerminal1F_Sign
    ScriptEntryEnd

GlobalTerminal1F_OnResume:
    CallIfEq VAR_UNK_0x40D5, 6, GlobalTerminal1F_HidePlayer
    End

GlobalTerminal1F_HidePlayer:
    HideObject LOCALID_PLAYER
    Return

GlobalTerminal1F_OnFrameExitGTSRoom:
    LockAll
    Call GlobalTerminal1F_ExitGTSRoom
    ReleaseAll
    End

GlobalTerminal1F_ExitGTSRoom:
    LoadDoorAnimation 0, 0, 8, 2, ANIMATION_TAG_DOOR_1
    Call GlobalTerminal1F_PlayDoorOpenAnimation
    ShowObject LOCALID_PLAYER
    ApplyMovement LOCALID_PLAYER, GlobalTerminal1F_Movement_PlayerExitGTSRoom
    WaitMovement
    Call GlobalTerminal1F_PlayDoorCloseAnimation
    LoadDoorAnimation 0, 0, 8, 4, ANIMATION_TAG_DOOR_1
    Call GlobalTerminal1F_PlayDoorOpenAnimation
    ApplyMovement LOCALID_PLAYER, GlobalTerminal1F_Movement_PlayerWalkSouth
    WaitMovement
    Call GlobalTerminal1F_PlayDoorCloseAnimation
    SetVar VAR_UNK_0x40D5, 0
    Return

GlobalTerminal1F_PlayDoorOpenAnimation:
    PlayDoorOpenAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    Return

GlobalTerminal1F_PlayDoorCloseAnimation:
    PlayDoorCloseAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    UnloadAnimation ANIMATION_TAG_DOOR_1
    Return

    .balign 4, 0
GlobalTerminal1F_Movement_PlayerExitGTSRoom:
    WalkNormalSouth
    EndMovement

GlobalTerminal1F_UnusedMovement:
    WalkNormalSouth
    EndMovement

    .balign 4, 0
GlobalTerminal1F_Movement_PlayerWalkSouth:
    WalkNormalSouth 2
    EndMovement

GlobalTerminal1F_Unused1:
    End

GlobalTerminal1F_Unused2:
    End

GlobalTerminal1F_ReceptionistGTS:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckPartyHasBadEgg VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, GlobalTerminal1F_HasBadEgg
    GoToIfSet FLAG_TALKED_TO_GLOBAL_TERMINAL_1F_RECEPTIONIST_GTS, GlobalTerminal1F_AskDoGlobalTrade
    SetFlag FLAG_TALKED_TO_GLOBAL_TERMINAL_1F_RECEPTIONIST_GTS
    Message GlobalTerminal1F_Text_ThisIsGTSDoGlobalTrade
    GoTo GlobalTerminal1F_GTSMenu
    End

GlobalTerminal1F_GTSMenu:
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm MenuEntries_Text_GTS_Trade, 0
    AddMenuEntryImm MenuEntries_Text_GTS_Info, 1
    AddMenuEntryImm MenuEntries_Text_GTS_Exit, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, GlobalTerminal1F_CheckCanTrade
    GoToIfEq VAR_0x8008, 1, GlobalTerminal1F_ExplainGTS
    GoToIfEq VAR_0x8008, 2, GlobalTerminal1F_ReceptionistGTSEnd
    GoTo GlobalTerminal1F_ReceptionistGTSEnd
    End

GlobalTerminal1F_ExplainGTS:
    Message GlobalTerminal1F_Text_ExplainGTS
    GoTo GlobalTerminal1F_MoreInfoMenu
    End

GlobalTerminal1F_MoreInfoMenu:
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm MenuEntries_Text_GTS_OfferPokemon, 0
    AddMenuEntryImm MenuEntries_Text_GTS_SeekPokemon, 1
    AddMenuEntryImm MenuEntries_Text_GTS_Understood, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, GlobalTerminal1F_ExplainOfferPokemon
    GoToIfEq VAR_0x8008, 1, GlobalTerminal1F_ExplainSeekPokemon
    GoToIfEq VAR_0x8008, 2, GlobalTerminal1F_AskMakeGlobalTrade
    GoTo GlobalTerminal1F_AskMakeGlobalTrade
    End

GlobalTerminal1F_ExplainOfferPokemon:
    Message GlobalTerminal1F_Text_ExplainOfferPokemon
    GoTo GlobalTerminal1F_MoreInfoMenu
    End

GlobalTerminal1F_ExplainSeekPokemon:
    Message GlobalTerminal1F_Text_ExplainSeekPokemon
    GoTo GlobalTerminal1F_MoreInfoMenu
    End

GlobalTerminal1F_AskMakeGlobalTrade:
    Message GlobalTerminal1F_Text_MakeGlobalTrade
    GoTo GlobalTerminal1F_GTSMenu
    End

GlobalTerminal1F_CheckCanTrade:
    CountPartyNonEggs VAR_RESULT
    GoToIfLt VAR_RESULT, 2, GlobalTerminal1F_MustHaveTwoPokemon
    GoTo GlobalTerminal1F_CheckFreePartySlot
    End

GlobalTerminal1F_MustHaveTwoPokemon:
    Message GlobalTerminal1F_Text_MustHaveTwoPokemon
    WaitButton
    CloseMessage
    ReleaseAll
    End

GlobalTerminal1F_BeginTrade:
    Common_SaveGame
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0
    GoToIfEq VAR_RESULT, 0, GlobalTerminal1F_ReceptionistGTSEnd
    HealParty
    SetVar VAR_UNK_0x40D5, 6
    Message GlobalTerminal1F_Text_EnjoyVisitToGTS
    CloseMessage
    ApplyMovement LOCALID_PLAYER, GlobalTerminal1F_Movement_PlayerWalkToGate
    WaitMovement
    LoadDoorAnimation 0, 0, 8, 4, ANIMATION_TAG_DOOR_1
    Call GlobalTerminal1F_PlayDoorOpenAnimation
    ApplyMovement LOCALID_PLAYER, GlobalTerminal1F_Movement_PlayerWalkToDoor
    WaitMovement
    Call GlobalTerminal1F_PlayDoorCloseAnimation
    LoadDoorAnimation 0, 0, 8, 2, ANIMATION_TAG_DOOR_1
    Call GlobalTerminal1F_PlayDoorOpenAnimation
    ApplyMovement LOCALID_PLAYER, GlobalTerminal1F_Movement_PlayerEnterGTSRoom
    WaitMovement
    HideObject LOCALID_PLAYER
    ApplyMovement LOCALID_PLAYER, GlobalTerminal1F_Movement_PlayerFaceSouth
    WaitMovement
    Call GlobalTerminal1F_PlayDoorCloseAnimation
    FadeScreenOut
    WaitFadeScreen
    ScrCmd_2B2
    ScrCmd_0B3 VAR_RESULT
    SetVar VAR_0x8004, VAR_RESULT
    TryStartGTSApp VAR_0x8004, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, GlobalTerminal1F_ExitAndEnd
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    Call GlobalTerminal1F_ExitGTSRoom
    ReleaseAll
    End

GlobalTerminal1F_ExitAndEnd:
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    Call GlobalTerminal1F_ExitGTSRoom
    GoTo GlobalTerminal1F_ReceptionistGTSEnd
    End

GlobalTerminal1F_ReceptionistGTSEnd:
    SetVar VAR_UNK_0x40D5, 0
    Message GlobalTerminal1F_Text_PleaseVisitAgain
    WaitButton
    CloseMessage
    ReleaseAll
    End

GlobalTerminal1F_AskDoGlobalTrade:
    Message GlobalTerminal1F_Text_DoGlobalTrade
    GoTo GlobalTerminal1F_GTSMenu
    End

GlobalTerminal1F_CheckFreePartySlot:
    GetPartyCount VAR_RESULT
    GoToIfEq VAR_RESULT, MAX_PARTY_SIZE, GlobalTerminal1F_CheckFreeBoxSlot
    GoTo GlobalTerminal1F_BeginTrade
    End

GlobalTerminal1F_CheckFreeBoxSlot:
    GetPCBoxesFreeSlotCount VAR_RESULT
    GoToIfEq VAR_RESULT, 0, GlobalTerminal1F_BoxesAreFull
    GoTo GlobalTerminal1F_BeginTrade
    End

GlobalTerminal1F_BoxesAreFull:
    Message GlobalTerminal1F_Text_BoxesAreFull
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
GlobalTerminal1F_Movement_PlayerWalkToGate:
    WalkNormalEast
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
GlobalTerminal1F_Movement_PlayerEnterGTSRoom:
    WalkNormalNorth
    EndMovement

    .balign 4, 0
GlobalTerminal1F_Movement_PlayerWalkToDoor:
    WalkNormalNorth 2
    EndMovement

    .balign 4, 0
GlobalTerminal1F_Movement_PlayerFaceSouth:
    FaceSouth
    EndMovement

GlobalTerminal1F_HasBadEgg:
    CallCommonScript 0x2338 @ CommonScript_HasBadEgg; outputs pl_msg_00000221_00127
    WaitButton
    CloseMessage
    ReleaseAll
    End

GlobalTerminal1F_Collector:
    NPCMessage GlobalTerminal1F_Text_BigGlobeEh
    End

GlobalTerminal1F_BugCatcher:
    NPCMessage GlobalTerminal1F_Text_LocationIsRecorded
    End

GlobalTerminal1F_Guitarist:
    NPCMessage GlobalTerminal1F_Text_LeavePokemonToTrade
    End

GlobalTerminal1F_ExpertM:
    NPCMessage GlobalTerminal1F_Text_TradeAroundTheWorld
    End

GlobalTerminal1F_AceTrainerM:
    NPCMessage GlobalTerminal1F_Text_RegisterWhereYouLive
    End

GlobalTerminal1F_Beauty1:
    NPCMessage GlobalTerminal1F_Text_IsWFCEasyToUse
    End

GlobalTerminal1F_Picnicker:
    NPCMessage GlobalTerminal1F_Text_IllDoIt
    End

GlobalTerminal1F_Youngster:
    NPCMessage GlobalTerminal1F_Text_GTSHasThreeFloors
    End

GlobalTerminal1F_BattleVideoRankingsMachine:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8005, 3
    GoTo GlobalTerminal1F_BattleVideoRankingsMenu
    End

GlobalTerminal1F_BattleVideoRankingsMenu:
    Message GlobalTerminal1F_Text_ConnectForBattleVideoRankings
    InitLocalTextMenu 31, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm GlobalTerminal1F_Text_Use, 0
    AddMenuEntryImm GlobalTerminal1F_Text_Info, 1
    AddMenuEntryImm GlobalTerminal1F_Text_Cancel, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, GlobalTerminal1F_UseBattleVideoRankingsMachine
    GoToIfEq VAR_0x8008, 1, GlobalTerminal1F_ExplainBattleVideoRankings
    GoTo GlobalTerminal1F_BattleVideoRankingsMachineEnd
    End

GlobalTerminal1F_BattleVideoRankingsMachineEnd:
    CloseMessage
    ReleaseAll
    End

GlobalTerminal1F_UseBattleVideoRankingsMachine:
    Common_SaveGame
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0
    GoToIfEq VAR_RESULT, 0, GlobalTerminal1F_BattleVideoRankingsMachineEnd
    CloseMessage
    CallCommonScript 0x802
    ReleaseAll
    End

GlobalTerminal1F_ExplainBattleVideoRankings:
    Message GlobalTerminal1F_Text_ExplainBattleVideoRankings
    GoTo GlobalTerminal1F_BattleVideoRankingsMenu
    End

GlobalTerminal1F_TrainerRankingsMachine:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8005, 4
    GoTo GlobalTerminal1F_TrainerRankingsMenu
    End

GlobalTerminal1F_TrainerRankingsMenu:
    Message GlobalTerminal1F_Text_ConnectForTrainerRankings
    InitLocalTextMenu 31, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm GlobalTerminal1F_Text_Use, 0
    AddMenuEntryImm GlobalTerminal1F_Text_Info, 1
    AddMenuEntryImm GlobalTerminal1F_Text_Cancel, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, GlobalTerminal1F_UseTrainerRankingsMachine
    GoToIfEq VAR_0x8008, 1, GlobalTerminal1F_ExplainTrainerRankings
    GoTo GlobalTerminal1F_TrainerRankingsMachineEnd
    End

GlobalTerminal1F_TrainerRankingsMachineEnd:
    CloseMessage
    ReleaseAll
    End

GlobalTerminal1F_UseTrainerRankingsMachine:
    Common_SaveGame
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0
    GoToIfEq VAR_RESULT, 0, GlobalTerminal1F_TrainerRankingsMachineEnd
    CloseMessage
    CallCommonScript 0x802
    ReleaseAll
    End

GlobalTerminal1F_ExplainTrainerRankings:
    Message GlobalTerminal1F_Text_ExplainTrainerRankings
    GoTo GlobalTerminal1F_TrainerRankingsMenu
    End

GlobalTerminal1F_RepectionistEntryNorth:
    NPCMessage GlobalTerminal1F_Text_GiveMachinesATry
    End

GlobalTerminal1F_RepectionistEntrySouth:
    NPCMessage GlobalTerminal1F_Text_WelcomeToGlobalTerminal
    End

GlobalTerminal1F_PokemonBreederF:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckPartyHasBadEgg VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, GlobalTerminal1F_WantToKnowFavorites
    SetVar VAR_0x8000, 0
    GetPartyMonSpecies VAR_0x8000, VAR_RESULT
    GoToIfEq VAR_RESULT, SPECIES_NONE, GlobalTerminal1F_AskFavoriteIsEgg
    BufferPartyMonSpecies 0, 0
    Message GlobalTerminal1F_Text_FavoriteIsPokemon
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, GlobalTerminal1F_SetFavoriteMon
    GoToIfEq VAR_RESULT, MENU_NO, GlobalTerminal1F_FavoriteReallyIsPokemon
    End

GlobalTerminal1F_WantToKnowFavorites:
    Message GlobalTerminal1F_Text_WantToKnowFavorites
    GoTo GlobalTerminal1F_PokemonBreederFEnd
    End

GlobalTerminal1F_SetFavoriteMon:
    SetFavoriteMon
    Message GlobalTerminal1F_Text_IWasRight
    GoTo GlobalTerminal1F_PokemonBreederFEnd
    End

GlobalTerminal1F_FavoriteReallyIsPokemon:
    BufferPartyMonSpecies 0, 0
    Message GlobalTerminal1F_Text_FavoriteReallyIsPokemon
    GoTo GlobalTerminal1F_PokemonBreederFEnd
    End

GlobalTerminal1F_Unused:
    Message GlobalTerminal1F_Text_FavoriteIsPokemon
GlobalTerminal1F_AskFavoriteIsEgg:
    Message GlobalTerminal1F_Text_FavoriteIsEgg
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, GlobalTerminal1F_SetFavoriteMon
    GoToIfEq VAR_RESULT, MENU_NO, GlobalTerminal1F_FavoriteReallyIsEgg
    End

GlobalTerminal1F_FavoriteReallyIsEgg:
    Message GlobalTerminal1F_Text_FavoriteReallyIsEgg
    GoTo GlobalTerminal1F_PokemonBreederFEnd
    End

GlobalTerminal1F_PokemonBreederFEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

GlobalTerminal1F_PokemonBreederM:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message GlobalTerminal1F_Text_TellMeYo
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, GlobalTerminal1F_NothingToSay
    FadeScreenOut
    WaitFadeScreen
    CloseMessage
    ScrCmd_30E VAR_0x8004
    GoToIfEq VAR_0x8004, 0, GlobalTerminal1F_NothingToSay
    Message GlobalTerminal1F_Text_IKnowAll
    WaitButton
    CloseMessage
    ReleaseAll
    End

GlobalTerminal1F_NothingToSay:
    Message GlobalTerminal1F_Text_NothingToSay
    WaitButton
    CloseMessage
    ReleaseAll
    End

GlobalTerminal1F_Beauty2:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckItem ITEM_FASHION_CASE, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, GlobalTerminal1F_GiveSomethingIfFashionCase
    GoToIfSet FLAG_RECEIVED_DAILY_GLOBAL_TERMINAL_1F_BACKDROP, GlobalTerminal1F_GoToFittingRoom
    GoToIfSet FLAG_RECEIVED_ALL_GLOBAL_TERMINAL_1F_BACKDROPS, GlobalTerminal1F_ShareDressUpData
    Message GlobalTerminal1F_Text_IHaveBackdropForYou
    SetVar VAR_0x8004, BACKDROP_RANCH
    GoTo GlobalTerminal1F_TryGiveBackDrop
    End

GlobalTerminal1F_GiveSomethingIfFashionCase:
    Message GlobalTerminal1F_Text_GiveSomethingIfFashionCase
    GoTo GlobalTerminal1F_Beauty2End
    End

GlobalTerminal1F_TryGiveBackDrop:
    CheckBackdrop VAR_0x8004, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, GlobalTerminal1F_GiveBackdrop
    AddVar VAR_0x8004, 1
    GoToIfLe VAR_0x8004, BACKDROP_GINGERBREAD_ROOM, GlobalTerminal1F_TryGiveBackDrop
    SetFlag FLAG_RECEIVED_ALL_GLOBAL_TERMINAL_1F_BACKDROPS
    GoTo GlobalTerminal1F_ShareDressUpData
    End

GlobalTerminal1F_GiveBackdrop:
    SetVar VAR_0x8005, BACKDROP_RANCH
    Common_ObtainContestBackdrop
    Message GlobalTerminal1F_Text_ObtainedBackdrop
    Call GlobalTerminal1F_CheckReceivedAllBackdrops
    SetFlag FLAG_RECEIVED_DAILY_GLOBAL_TERMINAL_1F_BACKDROP
    GoTo GlobalTerminal1F_Beauty2End
    End

GlobalTerminal1F_ShareDressUpData:
    Message GlobalTerminal1F_Text_ShareDressUpData
    GoTo GlobalTerminal1F_Beauty2End
    End

GlobalTerminal1F_GoToFittingRoom:
    Message GlobalTerminal1F_Text_GoToFittingRoom
    GoTo GlobalTerminal1F_Beauty2End
    End

GlobalTerminal1F_Beauty2End:
    WaitButton
    CloseMessage
    ReleaseAll
    End

GlobalTerminal1F_CheckReceivedAllBackdrops:
    SetVar VAR_0x8004, BACKDROP_RANCH
    GoTo GlobalTerminal1F_CheckReceivedBackdrop
    End

GlobalTerminal1F_CheckReceivedBackdrop:
    CheckBackdrop VAR_0x8004, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, GlobalTerminal1F_DidntReceivAllBackdrops
    AddVar VAR_0x8004, 1
    GoToIfLe VAR_0x8004, BACKDROP_GINGERBREAD_ROOM, GlobalTerminal1F_CheckReceivedBackdrop
    SetFlag FLAG_RECEIVED_ALL_GLOBAL_TERMINAL_1F_BACKDROPS
    Return

GlobalTerminal1F_DidntReceivAllBackdrops:
    Return

GlobalTerminal1F_Sign:
    EventMessage GlobalTerminal1F_Text_PanelsLeadTo2F3F
    End

    .balign 4, 0
