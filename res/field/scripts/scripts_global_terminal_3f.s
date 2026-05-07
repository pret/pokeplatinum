#include "macros/scrcmd.inc"
#include "res/text/bank/global_terminal_3f.h"


    ScriptEntry GlobalTerminal3F_Unused1
    ScriptEntry GlobalTerminal3F_Youngster
    ScriptEntry GlobalTerminal3F_SchoolKidF
    ScriptEntry GlobalTerminal3F_AceTrainerM
    ScriptEntry GlobalTerminal3F_PokefanM
    ScriptEntry GlobalTerminal3F_Camper
    ScriptEntry GlobalTerminal3F_Gentleman
    ScriptEntry GlobalTerminal3F_Clown
    ScriptEntry GlobalTerminal3F_Guitarist
    ScriptEntry GlobalTerminal3F_Hiker
    ScriptEntry GlobalTerminal3F_SignWarp1F
    ScriptEntry GlobalTerminal3F_SignWarp2F
    ScriptEntry GlobalTerminal3F_BattleVideosMachine
    ScriptEntryEnd

GlobalTerminal3F_Youngster:
    NPCMessage GlobalTerminal3F_Text_SeePeopleLovePokemon
    End

GlobalTerminal3F_SchoolKidF:
    NPCMessage GlobalTerminal3F_Text_ThisIsAGreatIdea
    End

GlobalTerminal3F_AceTrainerM:
    NPCMessage GlobalTerminal3F_Text_ThisBattleVideoRocks
    End

GlobalTerminal3F_PokefanM:
    NPCMessage GlobalTerminal3F_Text_BattleVideosOfClefairy
    End

GlobalTerminal3F_Camper:
    NPCMessage GlobalTerminal3F_Text_WhatAnAmazingCollection
    End

GlobalTerminal3F_Gentleman:
    NPCMessage GlobalTerminal3F_Text_TreatToBattleVideos
    End

GlobalTerminal3F_Clown:
    NPCMessage GlobalTerminal3F_Text_MyFavoriteBattleVideo
    End

GlobalTerminal3F_Guitarist:
    NPCMessage GlobalTerminal3F_Text_AlphabetRapJubilife
    End

GlobalTerminal3F_Hiker:
    NPCMessage GlobalTerminal3F_Text_Hiker2FIsBrother
    End

GlobalTerminal3F_SignWarp1F:
    EventMessage GlobalTerminal3F_Text_WarpsTo1F
    End

GlobalTerminal3F_SignWarp2F:
    EventMessage GlobalTerminal3F_Text_WarpsTo2F
    End

GlobalTerminal3F_Unused1:
    End

GlobalTerminal3F_BattleVideosMachine:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8005, 2
    GoTo GlobalTerminal3F_BattleVideosMenu
    End

GlobalTerminal3F_BattleVideosMenu:
    Message GlobalTerminal3F_Text_ConnectForBattleVideos
    InitLocalTextMenu 31, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm GlobalTerminal3F_Text_Use, 0
    AddMenuEntryImm GlobalTerminal3F_Text_Info, 1
    AddMenuEntryImm GlobalTerminal3F_Text_Cancel, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, GlobalTerminal3F_UseBattleVideosMachine
    GoToIfEq VAR_0x8008, 1, GlobalTerminal3F_ExplainBattleVideos
    GoTo GlobalTerminal3F_BattleVideosMachineEnd
    End

GlobalTerminal3F_BattleVideosMachineEnd:
    CloseMessage
    ReleaseAll
    End

GlobalTerminal3F_UseBattleVideosMachine:
    Common_SaveGame
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0
    GoToIfEq VAR_RESULT, 0, GlobalTerminal3F_BattleVideosMachineEnd
    CloseMessage
    CallCommonScript 0x802
    ReleaseAll
    End

GlobalTerminal3F_ExplainBattleVideos:
    Message GlobalTerminal3F_Text_ExplainBattleVideos
    GoTo GlobalTerminal3F_BattleVideosMenu
    End

    .balign 4, 0
