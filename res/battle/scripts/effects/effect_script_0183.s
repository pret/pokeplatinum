#include "macros/btlcmd.inc"


_000:
    TrySetMagicCoat _010
    // {0} shrouded itself with Magic Coat!
    BufferMessage BattleStrings_Text_PokemonShroudedItselfWithMagicCoat_Ally, TAG_NICKNAME, BTLSCR_ATTACKER
    UpdateVar OPCODE_SET, BTLVAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_PRINT_MESSAGE_AND_PLAY_ANIMATION
    End 

_010:
    UpdateVar OPCODE_SET, BTLVAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
