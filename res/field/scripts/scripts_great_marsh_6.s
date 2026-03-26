#include "macros/scrcmd.inc"
#include "res/text/bank/great_marsh_6.h"


    ScriptEntry GreatMarsh6_AceTrainerM
    ScriptEntry GreatMarsh6_SignArea6
    ScriptEntryEnd

GreatMarsh6_AceTrainerM:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_GREAT_MARSH_6_RANDOM_SHARD, GreatMarsh6_IllTryFindingMore
    Message GreatMarsh6_Text_IPickedThisUp
    GetRandom VAR_0x8004, 4
    SetVar VAR_0x8008, VAR_0x8004
    GoToIfEq VAR_0x8008, 0, GreatMarsh6_SetRedShard
    GoToIfEq VAR_0x8008, 1, GreatMarsh6_SetBlueShard
    GoToIfEq VAR_0x8008, 2, GreatMarsh6_SetYellowShard
    GoTo GreatMarsh6_SetGreenShard
    End

GreatMarsh6_SetRedShard:
    SetVar VAR_0x8004, ITEM_RED_SHARD
    GoTo GreatMarsh6_TryGiveShard
    End

GreatMarsh6_SetBlueShard:
    SetVar VAR_0x8004, ITEM_BLUE_SHARD
    GoTo GreatMarsh6_TryGiveShard
    End

GreatMarsh6_SetYellowShard:
    SetVar VAR_0x8004, ITEM_YELLOW_SHARD
    GoTo GreatMarsh6_TryGiveShard
    End

GreatMarsh6_SetGreenShard:
    SetVar VAR_0x8004, ITEM_GREEN_SHARD
    GoTo GreatMarsh6_TryGiveShard
    End

GreatMarsh6_TryGiveShard:
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, GreatMarsh6_BagIsFull
    SetFlag FLAG_RECEIVED_GREAT_MARSH_6_RANDOM_SHARD
    Common_GiveItemQuantityNoLineFeed
    CloseMessage
    ReleaseAll
    End

GreatMarsh6_IllTryFindingMore:
    Message GreatMarsh6_Text_IllTryFindingMore
    WaitButton
    CloseMessage
    ReleaseAll
    End

GreatMarsh6_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

GreatMarsh6_SignArea6:
    ShowLandmarkSign GreatMarsh6_Text_Area6
    End
