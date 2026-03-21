#include "macros/scrcmd.inc"
#include "res/text/bank/bg_events.h"


    ScriptEntry _0026
    ScriptEntry _0037
    ScriptEntry _0048
    ScriptEntry _0059
    ScriptEntry _006A
    ScriptEntry _007B
    ScriptEntry _008C
    ScriptEntry _009D
    ScriptEntry _00AE
    ScriptEntryEnd

_0026:
    EventMessage 0
    End

_0037:
    EventMessage 1
    End

_0048:
    EventMessage 2
    End

_0059:
    EventMessage 3
    End

_006A:
    EventMessage 4
    End

_007B:
    EventMessage 5
    End

_008C:
    EventMessage 6
    End

_009D:
    EventMessage 7
    End

_00AE:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FadeScreenOut
    WaitFadeScreen
    OpenRegionMap
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End
