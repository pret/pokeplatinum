#include "macros/scrcmd.inc"
#include "res/text/bank/route_209_lost_tower_5f.h"


    ScriptEntry _000A
    ScriptEntry _0072
    ScriptEntryEnd

_000A:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfUnset FLAG_UNK_0x007B, _0067
    GoToIfSet FLAG_UNK_0x00A1, _005C
    Message 0
    SetVar VAR_0x8004, ITEM_SPELL_TAG
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _00CF
    Common_GiveItemQuantity
    SetFlag FLAG_UNK_0x00A1
    GoTo _005C
    End

_005C:
    Message 1
    WaitButton
    CloseMessage
    ReleaseAll
    End

_0067:
    Message 2
    WaitButton
    CloseMessage
    ReleaseAll
    End

_0072:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfUnset FLAG_UNK_0x007B, _00D9
    GoToIfSet FLAG_UNK_0x0116, _00C4
    Message 3
    SetVar VAR_0x8004, ITEM_CLEANSE_TAG
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _00CF
    Common_GiveItemQuantity
    SetFlag FLAG_UNK_0x0116
    GoTo _00C4
    End

_00C4:
    Message 4
    WaitButton
    CloseMessage
    ReleaseAll
    End

_00CF:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

_00D9:
    Message 5
    WaitButton
    CloseMessage
    ReleaseAll
    End
