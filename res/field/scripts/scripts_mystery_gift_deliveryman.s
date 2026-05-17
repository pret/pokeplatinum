#include "macros/scrcmd.inc"
#include "res/text/bank/mystery_gift_deliveryman.h"


    ScriptEntry MysteryGiftDeliveryman_OnMartTransition
    ScriptEntry MysteryGiftDeliveryman_Deliveryman
    ScriptEntryEnd

MysteryGiftDeliveryman_OnMartTransition:
    LoadMysteryGift
    CheckAvailableMysteryGift VAR_AVAILABLE_MYSTERY_GIFT_EXISTS
    GoToIfEq VAR_AVAILABLE_MYSTERY_GIFT_EXISTS, FALSE, MysteryGiftDeliveryman_HideDeliveryman
    ClearFlag FLAG_HIDE_MART_MYSTERY_GIFT_DELIVERYMAN
    UnloadMysteryGiftNotReceived
    End

MysteryGiftDeliveryman_HideDeliveryman:
    SetFlag FLAG_HIDE_MART_MYSTERY_GIFT_DELIVERYMAN
    UnloadMysteryGiftNotReceived
    End

MysteryGiftDeliveryman_Deliveryman:
    LoadMysteryGift
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckAvailableMysteryGift VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, MysteryGiftDeliveryman_NoMoreGifts
    GetTimeOfDay VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, TIMEOFDAY_MORNING, MysteryGiftDeliveryman_MorningGreeting
    GoToIfEq VAR_0x8008, TIMEOFDAY_DAY, MysteryGiftDeliveryman_MiddayGreeting
    GoTo MysteryGiftDeliveryman_EveningGreeting

MysteryGiftDeliveryman_MorningGreeting:
    BufferPlayerName 0
    Message MysteryGiftDeliveryman_Text_MorningGreeting
    GoTo MysteryGiftDeliveryman_TryGiveMysteryGift

MysteryGiftDeliveryman_MiddayGreeting:
    BufferPlayerName 0
    Message MysteryGiftDeliveryman_Text_MiddayGreeting
    GoTo MysteryGiftDeliveryman_TryGiveMysteryGift

MysteryGiftDeliveryman_EveningGreeting:
    BufferPlayerName 0
    Message MysteryGiftDeliveryman_Text_EveningGreeting
    GoTo MysteryGiftDeliveryman_TryGiveMysteryGift

MysteryGiftDeliveryman_TryGiveMysteryGift:
    CheckCanReceiveMysteryGift VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, MysteryGiftDeliveryman_CantReceiveGift
    PlayFanfare SEQ_FANFA4
    PrepareMysteryGiftReceivedMsg VAR_0x8005, VAR_0x8006
    MessageFromBank VAR_0x8005, VAR_0x8006
    WaitFanfare
    Message MysteryGiftDeliveryman_Text_LookForwardNextVisit
    WaitButton
    GiveMysteryGift
    GoTo MysteryGiftDeliveryman_UnloadGiftReceived

MysteryGiftDeliveryman_CantReceiveGift:
    PrepareMysterGiftCantReceiveMsg VAR_0x8005, VAR_0x8006
    MessageFromBank VAR_0x8005, VAR_0x8006
    WaitButton
    GoTo MysteryGiftDeliveryman_UnloadGiftNotReceived

MysteryGiftDeliveryman_NoMoreGifts:
    Message MysteryGiftDeliveryman_Text_NoMoreGifts
    WaitButton
    GoTo MysteryGiftDeliveryman_UnloadGiftNotReceived

MysteryGiftDeliveryman_UnloadGiftNotReceived:
    CloseMessage
    ReleaseAll
    UnloadMysteryGiftNotReceived
    End

MysteryGiftDeliveryman_UnloadGiftReceived:
    CloseMessage
    ReleaseAll
    UnloadMysteryGiftReceived
    End

    .balign 4, 0
