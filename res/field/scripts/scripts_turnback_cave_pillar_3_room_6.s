#include "macros/scrcmd.inc"


    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    Call _0014
    InitTurnbackCave VAR_UNK_0x410B, VAR_UNK_0x410C
    End

_0014:
    AddVar VAR_UNK_0x410C, 1
    Return
