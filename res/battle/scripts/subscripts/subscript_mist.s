#include "macros/btlcmd.inc"


_000:
    TryMist _007
    // Your team became shrouded in mist!
    BufferMessage BattleStrings_Text_YourTeamBecameShroudedInMist, TAG_NONE_SIDE_CONSCIOUS, BTLSCR_ATTACKER
    Call BATTLE_SUBSCRIPT_ANIMATION_PREPARED_MESSAGE

_007:
    End 
