#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_city_northwest_house_2f.h"


    ScriptEntry _0012
    ScriptEntry _0025
    ScriptEntry _0038
    ScriptEntry _0097
    ScriptEntryEnd

_0012:
    NPCMessage 0
    End

_0025:
    NPCMessage 1
    End

_0038:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00C0, _008C
    BufferItemName 0, ITEM_DUSK_BALL
    Message 2
    SetVar VAR_0x8004, ITEM_DUSK_BALL
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _0082
    SetFlag FLAG_UNK_0x00C0
    Common_GiveItemQuantityNoLineFeed
    CloseMessage
    ReleaseAll
    End

_0082:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

_008C:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0097:
    PokemonCryAndMessage SPECIES_PSYDUCK, 4
    End

    .balign 4, 0
