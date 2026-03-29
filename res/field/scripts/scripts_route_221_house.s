#include "macros/scrcmd.inc"
#include "res/text/bank/route_221_house.h"


    ScriptEntry Route221House_ExpertM
    ScriptEntry Route221House_Sign
    ScriptEntryEnd

Route221House_ExpertM:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_COULD_NOT_RECEIVE_ROUTE_221_HOUSE_REWARD, Route221House_TryGiveReward
    GoToIfSet FLAG_RECEIVED_ROUTE_221_HOUSE_REWARD, Route221House_ComeAgainTomorrow
    GetDailyRandomLevel VAR_0x8000
    BufferNumber 0, VAR_0x8000
    GetPartyCount VAR_0x8002
    SetVar VAR_0x8003, 0
Route221House_CheckPartyMonLevel:
    GetPartyMonLevel VAR_0x8001, VAR_0x8003
    GoToIfEq VAR_0x8000, VAR_0x8001, Route221House_CorrectPartyMonLevel
    AddVar VAR_0x8003, 1
    SubVar VAR_0x8002, 1
    GoToIfNe VAR_0x8002, 0, Route221House_CheckPartyMonLevel
    GoTo Route221House_ShowThisLevelPokemon

Route221House_CorrectPartyMonLevel:
    CallIfEq VAR_ROUTE_221_HOUSE_REWARD_INDEX, 0, Route221House_SetRewardBlackBelt
    CallIfEq VAR_ROUTE_221_HOUSE_REWARD_INDEX, 1, Route221House_SetRewardExpertBelt
    CallIfEq VAR_ROUTE_221_HOUSE_REWARD_INDEX, 2, Route221House_SetRewardFocusSash
    BufferPartyMonSpecies 1, VAR_0x8003
    BufferItemName 2, VAR_0x8004
    Message Route221House_Text_PokemonIsCorrectLevel
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, Route221House_NoRoomInBag
    GoTo Route221House_GiveReward

Route221House_GiveReward:
    Common_GiveItemQuantityNoLineFeed
    ClearFlag FLAG_COULD_NOT_RECEIVE_ROUTE_221_HOUSE_REWARD
    SetFlag FLAG_RECEIVED_ROUTE_221_HOUSE_REWARD
    AddVar VAR_ROUTE_221_HOUSE_REWARD_INDEX, 1
    GoToIfLt VAR_ROUTE_221_HOUSE_REWARD_INDEX, 3, Route221House_ExpertMEnd
    SetVar VAR_ROUTE_221_HOUSE_REWARD_INDEX, 0
Route221House_ExpertMEnd:
    CloseMessage
    ReleaseAll
    End

Route221House_SetRewardBlackBelt:
    SetVar VAR_0x8004, ITEM_BLACK_BELT
    Return

Route221House_SetRewardExpertBelt:
    SetVar VAR_0x8004, ITEM_EXPERT_BELT
    Return

Route221House_SetRewardFocusSash:
    SetVar VAR_0x8004, ITEM_FOCUS_SASH
    Return

Route221House_NoRoomInBag:
    SetFlag FLAG_COULD_NOT_RECEIVE_ROUTE_221_HOUSE_REWARD
    Message Route221House_Text_NoRoomInBag
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route221House_TryGiveReward:
    CallIfEq VAR_ROUTE_221_HOUSE_REWARD_INDEX, 0, Route221House_SetRewardBlackBelt
    CallIfEq VAR_ROUTE_221_HOUSE_REWARD_INDEX, 1, Route221House_SetRewardExpertBelt
    CallIfEq VAR_ROUTE_221_HOUSE_REWARD_INDEX, 2, Route221House_SetRewardFocusSash
    BufferItemName 2, VAR_0x8004
    Message Route221House_Text_ThankWithItem
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, Route221House_NoRoomInBag
    GoTo Route221House_GiveReward

Route221House_ShowThisLevelPokemon:
    Message Route221House_Text_ShowThisLevelPokemon
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route221House_ComeAgainTomorrow:
    Message Route221House_Text_ComeAgainTomorrow
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route221House_Sign:
    EventMessage Route221House_Text_WinItemsFromMe
    End

    .balign 4, 0
