#include "macros/scrcmd.inc"
#include "res/text/bank/global_terminal_2f.h"


    ScriptEntry GlobalTerminal2F_Unused1
    ScriptEntry GlobalTerminal2F_Artist
    ScriptEntry GlobalTerminal2F_Hiker
    ScriptEntry GlobalTerminal2F_BattleGirl
    ScriptEntry GlobalTerminal2F_Idol
    ScriptEntry GlobalTerminal2F_ExpertF
    ScriptEntry GlobalTerminal2F_PokefanF
    ScriptEntry GlobalTerminal2F_Beauty
    ScriptEntry GlobalTerminal2F_Lass
    ScriptEntry GlobalTerminal2F_Twin
    ScriptEntry GlobalTerminal2F_SignWarp1F
    ScriptEntry GlobalTerminal2F_SignWarp3F
    ScriptEntry GlobalTerminal2F_BoxDataMachine
    ScriptEntry GlobalTerminal2F_DressUpDataMachine
    ScriptEntryEnd

GlobalTerminal2F_Artist:
    NPCMessage GlobalTerminal2F_Text_ThisIsDiscriminatory
    End

GlobalTerminal2F_Hiker:
    NPCMessage GlobalTerminal2F_Text_SneakingAPeek
    End

GlobalTerminal2F_BattleGirl:
    NPCMessage GlobalTerminal2F_Text_DidYouKnow
    End

GlobalTerminal2F_Idol:
    NPCMessage GlobalTerminal2F_Text_IVisitEveryDay
    End

GlobalTerminal2F_ExpertF:
    NPCMessage GlobalTerminal2F_Text_ThisIsAlmostScandalous
    End

GlobalTerminal2F_PokefanF:
    NPCMessage GlobalTerminal2F_Text_CombinationWasWonderful
    End

GlobalTerminal2F_Beauty:
    NPCMessage GlobalTerminal2F_Text_DifferentImpressions
    End

GlobalTerminal2F_Lass:
    NPCMessage GlobalTerminal2F_Text_BackdropFromNiceLady
    End

GlobalTerminal2F_Twin:
    NPCMessage GlobalTerminal2F_Text_ILikeSneakingGlances
    End

GlobalTerminal2F_SignWarp1F:
    EventMessage GlobalTerminal2F_Text_WarpsTo1F
    End

GlobalTerminal2F_SignWarp3F:
    EventMessage GlobalTerminal2F_Text_WarpsTo3F
    End

GlobalTerminal2F_Unused1:
    End

GlobalTerminal2F_BoxDataMachine:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8005, 6
    GoTo GlobalTerminal2F_BoxDataMenu
    End

GlobalTerminal2F_BoxDataMenu:
    Message GlobalTerminal2F_Text_ConnectForBoxData
    InitLocalTextMenu 31, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm GlobalTerminal2F_Text_Use, 0
    AddMenuEntryImm GlobalTerminal2F_Text_Info, 1
    AddMenuEntryImm GlobalTerminal2F_Text_Cancel, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, GlobalTerminal2F_UseBoxDataMachine
    GoToIfEq VAR_0x8008, 1, GlobalTerminal2F_ExplainBoxData
    GoTo GlobalTerminal2F_BoxDataMachineEnd
    End

GlobalTerminal2F_BoxDataMachineEnd:
    CloseMessage
    ReleaseAll
    End

GlobalTerminal2F_UseBoxDataMachine:
    Common_SaveGame
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0
    GoToIfEq VAR_RESULT, 0, GlobalTerminal2F_BoxDataMachineEnd
    CloseMessage
    CallCommonScript 0x802
    ReleaseAll
    End

GlobalTerminal2F_ExplainBoxData:
    Message GlobalTerminal2F_Text_ExplainBoxData
    GoTo GlobalTerminal2F_BoxDataMenu
    End

GlobalTerminal2F_DressUpDataMachine:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8005, 5
    GoTo GlobalTerminal2F_DressUpDataMenu
    End

GlobalTerminal2F_DressUpDataMenu:
    Message GlobalTerminal2F_Text_ConnectForDressUpData
    InitLocalTextMenu 31, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm GlobalTerminal2F_Text_Use, 0
    AddMenuEntryImm GlobalTerminal2F_Text_Info, 1
    AddMenuEntryImm GlobalTerminal2F_Text_Cancel, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, GlobalTerminal2F_UseDressUpDataMachine
    GoToIfEq VAR_0x8008, 1, GlobalTerminal2F_ExplainDressUpData
    GoTo GlobalTerminal2F_DressUpDataMachineEnd
    End

GlobalTerminal2F_DressUpDataMachineEnd:
    CloseMessage
    ReleaseAll
    End

GlobalTerminal2F_UseDressUpDataMachine:
    Common_SaveGame
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0
    GoToIfEq VAR_RESULT, 0, GlobalTerminal2F_DressUpDataMachineEnd
    CloseMessage
    CallCommonScript 0x802
    ReleaseAll
    End

GlobalTerminal2F_ExplainDressUpData:
    Message GlobalTerminal2F_Text_ExplainDressUpData
    GoTo GlobalTerminal2F_DressUpDataMenu
    End

    .balign 4, 0
