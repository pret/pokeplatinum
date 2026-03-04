#include "macros/scrcmd.inc"
#include "res/text/bank/sandgem_town_mart.h"


    ScriptEntry SandgemTownMart_CommonVendor
    ScriptEntry SandgemTownMart_Dummy
    ScriptEntry SandgemTownMart_Breeder
    ScriptEntry SandgemTownMart_SchoolBoy
    ScriptEntryEnd

SandgemTownMart_CommonVendor:
    PokeMartCommonWithGreeting 0
    End

SandgemTownMart_Dummy:
    End

SandgemTownMart_Breeder:
    NPCMessage SandgemTownMart_Text_BuyLotsOfPotions
    End

SandgemTownMart_SchoolBoy:
    NPCMessage SandgemTownMart_Text_TossAPokeBall
    End
