#include "macros/scrcmd.inc"


    ScriptEntry _000A
    ScriptEntry _0020
    ScriptEntryEnd

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    VendorGreeting
    CloseMessageWithoutErasing
    PokeMartCommon
    ReleaseAll
    End

_0020:
    End

    .balign 4, 0
