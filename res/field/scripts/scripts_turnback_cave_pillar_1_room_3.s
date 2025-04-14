#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    Call _0014
    ScrCmd_285 VAR_UNK_0x410B, VAR_UNK_0x410C
    End

_0014:
    AddVar VAR_UNK_0x410C, 1
    Return
