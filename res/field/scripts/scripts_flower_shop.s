#include "macros/scrcmd.inc"
#include "res/text/bank/flower_shop.h"


    ScriptEntry _000E
    ScriptEntry _006E
    ScriptEntry _00A9
    ScriptEntryEnd

_000E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0AAA, _0059
    Message 0
    GetRandom VAR_0x8004, 5
    AddVar VAR_0x8004, ITEM_CHERI_BERRY /* Cheri, Chesto, Pecha, Rawst or Aspear */
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _0064
    SetFlag FLAG_UNK_0x0AAA
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_0059:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0064:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_006E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0080, _009E
    Message 2
    SetVar VAR_0x8004, 0x1C0
    SetVar VAR_0x8005, 1
    SetFlag FLAG_UNK_0x0080
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_009E:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A9:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ShowAccessoryShop
    ReleaseAll
    End

    .balign 4, 0
