#include "macros/scrcmd.inc"
#include "res/text/bank/fight_area_south_house.h"


    ScriptEntry FightAreaSouthHouse_OldMan
    ScriptEntry FightAreaSouthHouse_OldWoman
    ScriptEntry FightAreaSouthHouse_Torchic
    ScriptEntry FightAreaSouthHouse_ItemExpert
    ScriptEntryEnd

FightAreaSouthHouse_OldMan:
    NPCMessage FightAreaSouthHouse_Text_AttractedHardiestTrainers
    End

FightAreaSouthHouse_OldWoman:
    NPCMessage FightAreaSouthHouse_Text_EarlyEccentrics
    End

FightAreaSouthHouse_Torchic:
    PokemonCryAndMessage SPECIES_TORCHIC, FightAreaSouthHouse_Text_TorchicCry
    End

FightAreaSouthHouse_ItemExpert:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message FightAreaSouthHouse_Text_IAmTheItemExpert
    GoTo FightAreaSouthHouse_DescribeWhichItem
    End

FightAreaSouthHouse_DescribeWhichItem:
    Message FightAreaSouthHouse_Text_DescribeWhichItem
    InitLocalTextListMenu 1, 1, 0, VAR_RESULT
    AddListMenuEntry FightAreaSouthHouse_Text_LumBerry, 0
    AddListMenuEntry FightAreaSouthHouse_Text_FocusSash, 1
    AddListMenuEntry FightAreaSouthHouse_Text_ExpertBelt, 2
    AddListMenuEntry FightAreaSouthHouse_Text_LifeOrb, 3
    AddListMenuEntry FightAreaSouthHouse_Text_ChoiceScarf, 4
    AddListMenuEntry FightAreaSouthHouse_Text_ChoiceBand, 5
    AddListMenuEntry FightAreaSouthHouse_Text_ChoiceSpecs, 6
    AddListMenuEntry FightAreaSouthHouse_Text_Leftovers, 7
    AddListMenuEntry FightAreaSouthHouse_Text_Exit, 8
    ShowListMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, FightAreaSouthHouse_DescribeLumBerry
    GoToIfEq VAR_0x8008, 1, FightAreaSouthHouse_DescribeFocusSash
    GoToIfEq VAR_0x8008, 2, FightAreaSouthHouse_DescribeExpertBelt
    GoToIfEq VAR_0x8008, 3, FightAreaSouthHouse_DescribeLifeOrb
    GoToIfEq VAR_0x8008, 4, FightAreaSouthHouse_DescribeChoiceScarf
    GoToIfEq VAR_0x8008, 5, FightAreaSouthHouse_DescribeChoiceBand
    GoToIfEq VAR_0x8008, 6, FightAreaSouthHouse_DescribeChoiceSpecs
    GoToIfEq VAR_0x8008, 7, FightAreaSouthHouse_DescribeLeftovers
    GoTo FightAreaSouthHouse_VarietyOfOtherItems
    End

FightAreaSouthHouse_DescribeLumBerry:
    Message FightAreaSouthHouse_Text_DescribeLumBerry
    GoTo FightAreaSouthHouse_DescribeWhichItem
    End

FightAreaSouthHouse_DescribeFocusSash:
    Message FightAreaSouthHouse_Text_DescribeFocusSash
    GoTo FightAreaSouthHouse_DescribeWhichItem
    End

FightAreaSouthHouse_DescribeExpertBelt:
    Message FightAreaSouthHouse_Text_DescribeExpertBelt
    GoTo FightAreaSouthHouse_DescribeWhichItem
    End

FightAreaSouthHouse_DescribeLifeOrb:
    Message FightAreaSouthHouse_Text_DescribeLifeOrb
    GoTo FightAreaSouthHouse_DescribeWhichItem
    End

FightAreaSouthHouse_DescribeChoiceScarf:
    Message FightAreaSouthHouse_Text_DescribeChoiceScarf
    GoTo FightAreaSouthHouse_DescribeWhichItem
    End

FightAreaSouthHouse_DescribeChoiceBand:
    Message FightAreaSouthHouse_Text_DescribeChoiceBand
    GoTo FightAreaSouthHouse_DescribeWhichItem
    End

FightAreaSouthHouse_DescribeChoiceSpecs:
    Message FightAreaSouthHouse_Text_DescribeChoiceSpecs
    GoTo FightAreaSouthHouse_DescribeWhichItem
    End

FightAreaSouthHouse_DescribeLeftovers:
    Message FightAreaSouthHouse_Text_DescribeLeftovers
    GoTo FightAreaSouthHouse_DescribeWhichItem
    End

FightAreaSouthHouse_VarietyOfOtherItems:
    Message FightAreaSouthHouse_Text_VarietyOfOtherItems
    WaitButton
    CloseMessage
    ReleaseAll
    End
