#include "macros/scrcmd.inc"
#include "res/text/bank/route_218.h"


    ScriptEntry _001E
    ScriptEntry _0035
    ScriptEntry _004C
    ScriptEntry _005D
    ScriptEntry _006E
    ScriptEntry _008B
    ScriptEntry _00A8
    ScriptEntryEnd

_001E:
    ShowArrowSign 5
    End

_0035:
    ShowArrowSign 6
    End

_004C:
    EventMessage 0
    End

_005D:
    EventMessage 4
    End

_006E:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    WaitSE SEQ_SE_CONFIRM
    PlayCry SPECIES_CLEFAIRY
    Message 1
    WaitCry
    WaitButton
    CloseMessage
    ReleaseAll
    End

_008B:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    WaitSE SEQ_SE_CONFIRM
    PlayCry SPECIES_CLEFAIRY
    Message 2
    WaitCry
    WaitButton
    CloseMessage
    ReleaseAll
    End

_00A8:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    WaitSE SEQ_SE_CONFIRM
    PlayCry SPECIES_PIKACHU
    Message 3
    WaitCry
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
