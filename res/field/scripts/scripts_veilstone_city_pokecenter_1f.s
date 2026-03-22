#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_city_pokecenter_1f.h"


    ScriptEntry _000E
    ScriptEntry _001A
    ScriptEntry _0032
    ScriptEntryEnd

_000E:
    Common_CallPokecenterNurse 0
    End

_001A:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferTMHMMoveName 0, ITEM_HM03
    Message 0
    WaitButton
    CloseMessage
    ReleaseAll
    End

_0032:
    NPCMessage 1
    End

    .balign 4, 0
