#include "macros/scrcmd.inc"
#include "res/text/bank/sandgem_town_mart.h"


    ScriptEntry SandgemTownMart_CommonVendor
    ScriptEntry SandgemTownMart_Dummy
    ScriptEntry SandgemTownMart_Breeder
    ScriptEntry SandgemTownMart_SchoolBoy
    ScriptEntryEnd

SandgemTownMart_CommonVendor:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    VendorGreeting
    CloseMessageWithoutErasing
    PokeMartCommon 0
    ReleaseAll
    End

SandgemTownMart_Dummy:
    End

SandgemTownMart_Breeder:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message SandgemTownMart_Text_BuyLotsOfPotions
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SandgemTownMart_SchoolBoy:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message SandgemTownMart_Text_TossAPokeBall
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
