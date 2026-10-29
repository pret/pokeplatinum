#include "macros/scrcmd.inc"
#include "res/text/bank/bag.h"


    ScriptEntry PokeRadar_BatteryHasRunDry
    ScriptEntry PokeRadar_GrassyPatchRemainedQUiet
    ScriptEntryEnd

PokeRadar_BatteryHasRunDry:
    LockAll
    BufferNumber 0, VAR_0x8000
    Message Bag_Text_BatteryHasRunDry
    WaitButton
    CloseMessage
    ReleaseAll
    End

PokeRadar_GrassyPatchRemainedQUiet:
    LockAll
    Message Bag_Text_GrassyPatchRemainedQuiet
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
