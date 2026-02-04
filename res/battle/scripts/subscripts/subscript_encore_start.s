#include "macros/btlcmd.inc"


_000:
    TryEncore _010
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION
    // {0} received an encore!
    PrintMessage BattleStrings_Text_PokemonReceivedAnEncore_Ally, TAG_NICKNAME, BTLSCR_DEFENDER
    Wait 
    WaitButtonABTime 30

_010:
    End 
