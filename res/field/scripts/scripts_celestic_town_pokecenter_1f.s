#include "macros/scrcmd.inc"
#include "res/text/bank/celestic_town_pokecenter_1f.h"


    ScriptEntry _0012
    ScriptEntry _001E
    ScriptEntry _0031
    ScriptEntry _0044
    ScriptEntryEnd

_0012:
    Common_CallPokecenterNurse 0
    End

_001E:
    NPCMessage 0
    End

_0031:
    NPCMessage 1
    End

_0044:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0AA1, _00C0
    Message 2
    GetFirstNonEggInParty VAR_0x8000
    GetPartyMonFriendship VAR_RESULT, VAR_0x8000
    GoToIfGe VAR_RESULT, 150, _0084
    GoToIfGe VAR_RESULT, 50, _00CB
    GoTo _00D6

_0084:
    Message 3
    SetVar VAR_0x8004, ITEM_GREAT_BALL
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _00B6
    Common_GiveItemQuantity
    SetFlag FLAG_UNK_0x0AA1
    GoTo _00C0

_00B6:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

_00C0:
    Message 4
    WaitButton
    CloseMessage
    ReleaseAll
    End

_00CB:
    Message 5
    WaitButton
    CloseMessage
    ReleaseAll
    End

_00D6:
    Message 6
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
