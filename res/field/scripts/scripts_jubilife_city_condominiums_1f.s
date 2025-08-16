#include "macros/scrcmd.inc"
#include "res/text/bank/jubilife_city_condominiums_1f.h"


    ScriptEntry _0012
    ScriptEntry _0025
    ScriptEntry _0044
    ScriptEntry _0063
    ScriptEntryEnd

_0012:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0025:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_PIKACHU
    Message 1
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0044:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_PACHIRISU
    Message 2
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0063:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00BF, _00B7
    BufferItemName 0, ITEM_QUICK_CLAW
    Message 3
    SetVar VAR_0x8004, ITEM_QUICK_CLAW
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _00AD
    SetFlag FLAG_UNK_0x00BF
    CallCommonScript CommonScript_Unk10
    CloseMessage
    ReleaseAll
    End

_00AD:
    CallCommonScript CommonScript_Unk11
    CloseMessage
    ReleaseAll
    End

_00B7:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
