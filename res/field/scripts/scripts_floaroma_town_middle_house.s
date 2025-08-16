#include "macros/scrcmd.inc"
#include "res/text/bank/floaroma_town_middle_house.h"


    ScriptEntry _000E
    ScriptEntry _0021
    ScriptEntry _00A9
    ScriptEntryEnd

_000E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0021:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0083, _0094
    Message 1
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0062
    GoToIfEq VAR_RESULT, MENU_NO, _0057
    End

_0057:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0062:
    Message 2
    SetVar VAR_0x8004, ITEM_TM88
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _009F
    SetFlag FLAG_UNK_0x0083
    CallCommonScript CommonScript_Unk10
    CloseMessage
    ReleaseAll
    End

_0094:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_009F:
    CallCommonScript CommonScript_Unk11
    CloseMessage
    ReleaseAll
    End

_00A9:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_CLEFAIRY
    Message 5
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
