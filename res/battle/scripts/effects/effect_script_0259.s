#include "macros/btlcmd.inc"


_000:
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_FIELD_CONDITIONS, FIELD_CONDITION_TRICK_ROOM, _014
    UpdateVar OPCODE_FLAG_ON, BTLVAR_FIELD_CONDITIONS, FIELD_CONDITION_TRICK_ROOM_INIT
    // {0} twisted the dimensions!
    BufferMessage BattleStrings_Text_PokemonTwistedTheDimensions_Ally, TAG_NICKNAME, BTLSCR_ATTACKER
    GoTo _022

_014:
    UpdateVar OPCODE_FLAG_OFF, BTLVAR_FIELD_CONDITIONS, FIELD_CONDITION_TRICK_ROOM
    // {0} restored the twisted dimensions!
    BufferMessage BattleStrings_Text_PokemonRestoredTheTwistedDimensions_Ally, TAG_NICKNAME, BTLSCR_ATTACKER

_022:
    UpdateVar OPCODE_SET, BTLVAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_PRINT_MESSAGE_AND_PLAY_ANIMATION
    TrickRoom 
    End 
    UpdateVar OPCODE_FLAG_ON, BTLVAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
