#include "macros/scrcmd.inc"
#include "res/text/bank/route_209_lost_tower_5f.h"


    ScriptEntry Route209LostTower5F_OldWoman1
    ScriptEntry Route209LostTower5F_OldWoman2
    ScriptEntryEnd

Route209LostTower5F_OldWoman1:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfUnset FLAG_USED_DEFOG_IN_ROUTE_209_LOST_TOWER_5F, Route209LostTower5F_ThisFogObscuresEverything
    GoToIfSet FLAG_RECEIVED_ROUTE_209_LOST_TOWER_5F_SPELL_TAG, Route209LostTower5F_FantinaIsARegularVisitor
    Message Route209LostTower5F_Text_DontBeShyTakeIt
    SetVar VAR_0x8004, ITEM_SPELL_TAG
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, Route209LostTower5F_BagIsFull
    Common_GiveItemQuantity
    SetFlag FLAG_RECEIVED_ROUTE_209_LOST_TOWER_5F_SPELL_TAG
    GoTo Route209LostTower5F_FantinaIsARegularVisitor
    End

Route209LostTower5F_FantinaIsARegularVisitor:
    Message Route209LostTower5F_Text_FantinaIsARegularVisitor
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route209LostTower5F_ThisFogObscuresEverything:
    Message Route209LostTower5F_Text_ThisFogObscuresEverything
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route209LostTower5F_OldWoman2:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfUnset FLAG_USED_DEFOG_IN_ROUTE_209_LOST_TOWER_5F, Route209LostTower5F_ThisFogObscuresEverything2
    GoToIfSet FLAG_RECEIVED_ROUTE_209_LOST_TOWER_5F_CLEANSE_TAG, Route209LostTower5F_AllDepartedPokemonFindSolaceHere
    Message Route209LostTower5F_Text_TakeThis
    SetVar VAR_0x8004, ITEM_CLEANSE_TAG
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, Route209LostTower5F_BagIsFull
    Common_GiveItemQuantity
    SetFlag FLAG_RECEIVED_ROUTE_209_LOST_TOWER_5F_CLEANSE_TAG
    GoTo Route209LostTower5F_AllDepartedPokemonFindSolaceHere
    End

Route209LostTower5F_AllDepartedPokemonFindSolaceHere:
    Message Route209LostTower5F_Text_AllDepartedPokemonFindSolaceHere
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route209LostTower5F_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

Route209LostTower5F_ThisFogObscuresEverything2:
    Message Route209LostTower5F_Text_ThisFogObscuresEverything2
    WaitButton
    CloseMessage
    ReleaseAll
    End
