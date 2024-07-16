#include "macros/btlcmd.inc"

    .data

_000:
    CompareVarToValue OPCODE_EQU, BTLVAR_SCRIPT_TEMP, 1, _034
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_BATTLE_TYPE, BATTLE_TYPE_TRAINER, _018
    // Use next Pokémon?{YESNO 0}
    PrintMessage pl_msg_00000368_00011, TAG_NONE
    Wait 
    YesNoMenu YES_NO_NEXT_MON
    WaitYesNoResult _018, _024

_018:
    ShowParty 
    WaitMonSelection 
    SwitchAndUpdateMon BTLSCR_SWITCHED_MON
    GoTo _064

_024:
    TryEscape BTLSCR_PLAYER, _031
    Call BATTLE_SUBSCRIPT_ESCAPE_FAILED
    GoTo _018

_031:
    Call BATTLE_SUBSCRIPT_ESCAPE
    End 

_034:
    ShowParty 
    WaitMonSelection 

_036:
    SwitchAndUpdateMon BTLSCR_SWITCHED_MON
    // {0} {1} is about to send in {2}. Will you switch your Pokémon?{YESNO 0}
    PrintMessage pl_msg_00000368_00835, TAG_TRCLASS_TRNAME_NICKNAME_TRNAME, BTLSCR_SWITCHED_MON, BTLSCR_SWITCHED_MON, BTLSCR_SWITCHED_MON, BTLSCR_PLAYER
    Wait 
    YesNoMenu YES_NO_CHANGE_MON
    WaitYesNoResult _051, _064

_051:
    UpdateVarFromVar OPCODE_SET, BTLVAR_SWITCHED_MON_TEMP, BTLVAR_SWITCHED_MON
    ChoosePokemonMenu 
    WaitPokemonMenuResult _060
    Call BATTLE_SUBSCRIPT_SWITCH_POKEMON

_060:
    UpdateVarFromVar OPCODE_SET, BTLVAR_SWITCHED_MON, BTLVAR_SWITCHED_MON_TEMP

_064:
    LoadPartyGaugeGraphics 
    ShowPartyGauge BTLSCR_SWITCHED_MON
    Wait 
    PrintSendOutMessage BTLSCR_SWITCHED_MON
    Wait 
    HidePartyGauge BTLSCR_SWITCHED_MON
    Wait 
    FreePartyGaugeGraphics 
    PokemonSendOut BTLSCR_SWITCHED_MON
    WaitTime 72
    HealthbarSlideIn BTLSCR_SWITCHED_MON
    Wait 
    Call BATTLE_SUBSCRIPT_HAZARDS_CHECK
    CompareVarToValue OPCODE_FLAG_NOT, BTLVAR_BATTLE_CTX_STATUS, SYSCTL_MON_FAINTED, _091
    Call BATTLE_SUBSCRIPT_FAINT_MON

_091:
    GoToIfAnySwitches _036
    End 
