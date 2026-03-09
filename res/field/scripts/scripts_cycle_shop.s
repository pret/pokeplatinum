#include "macros/scrcmd.inc"
#include "res/text/bank/cycle_shop.h"


    ScriptEntry _0016
    ScriptEntry _005D
    ScriptEntry _007C
    ScriptEntry _00A5
    ScriptEntry _00B6
    ScriptEntryEnd

_0016:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0082, _0052
    Message 0
    SetVar VAR_0x8004, ITEM_BICYCLE
    SetVar VAR_0x8005, 1
    Common_GiveItemQuantity
    SetFlag FLAG_UNK_0x0082
    SetVar VAR_UNK_0x4114, 1
    ScrCmd_14C 9
    GoTo _0052
    End

_0052:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_005D:
    PokemonCryAndMessage SPECIES_CLEFAIRY, 2
    End

_007C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0081, _009A
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_009A:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A5:
    EventMessage 5
    End

_00B6:
    EventMessage 6
    End

    .balign 4, 0
