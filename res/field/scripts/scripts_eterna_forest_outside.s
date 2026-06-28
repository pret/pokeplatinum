#include "macros/scrcmd.inc"
#include "res/text/bank/eterna_forest_outside.h"


    ScriptEntry EternaForestOutside_OnTransition
    ScriptEntry EternaForestOutside_Dummy2
    ScriptEntry EternaForestOutside_Dummy3
    ScriptEntry EternaForestOutside_PokemonBreederF
    ScriptEntryEnd

EternaForestOutside_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_ETERNA_FOREST
    End

EternaForestOutside_PokemonBreederF:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_ETERNA_FOREST_OUTSIDE_ACCESSORY_BIG_TREE, EternaForestOutside_ITradeBerriesForAccessories
    SetVar VAR_0x8004, ACCESSORY_BIG_TREE
    BufferAccessoryName 0, VAR_0x8004
    Message EternaForestOutside_Text_AreYouCollectingAccessories
    SetVar VAR_0x8005, 1
    Common_GiveAccessoryWaitForConfirm
    SetFlag FLAG_RECEIVED_ETERNA_FOREST_OUTSIDE_ACCESSORY_BIG_TREE
    CloseMessage
    ReleaseAll
    End

EternaForestOutside_ITradeBerriesForAccessories:
    Message EternaForestOutside_Text_ITradeBerriesForAccessories
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaForestOutside_Dummy2:
    ShowLandmarkSign EternaForestOutside_Text_Dummy2
    End

EternaForestOutside_Dummy3:
    ShowScrollingSign EternaForestOutside_Text_Dummy3
    End
