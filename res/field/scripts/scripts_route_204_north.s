#include "macros/scrcmd.inc"
#include "res/text/bank/route_204_north.h"


    ScriptEntry Route204North_Youngster
    ScriptEntry Route204North_AceTrainerF
    ScriptEntry Route204North_ArrowSignpostFloaromaTown
    ScriptEntryEnd

Route204North_Youngster:
    NPCMessage Route204North_Text_AreYouRaisingDifferentKindsOfPokemon
    End

Route204North_AceTrainerF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_ROUTE_204_NORTH_TM78, Route204North_CaptivateOnlyWorksAgainstTheOppositeGender
    Message Route204North_Text_IdLikeYouToHaveThisTM
    SetVar VAR_0x8004, ITEM_TM78
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, Route204North_BagIsFull
    Common_GiveItemQuantity
    SetFlag FLAG_RECEIVED_ROUTE_204_NORTH_TM78
    GoTo Route204North_CaptivateOnlyWorksAgainstTheOppositeGender

Route204North_CaptivateOnlyWorksAgainstTheOppositeGender:
    Message Route204North_Text_CaptivateOnlyWorksAgainstTheOppositeGender
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route204North_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

Route204North_ArrowSignpostFloaromaTown:
    ShowArrowSign Route204North_Text_Rt204FloaromaTown
    End

    .balign 4, 0
