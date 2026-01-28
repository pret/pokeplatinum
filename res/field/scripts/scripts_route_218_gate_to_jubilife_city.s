#include "macros/scrcmd.inc"
#include "res/text/bank/route_218_gate_to_jubilife_city.h"


    ScriptEntry _000A
    ScriptEntry _001D
    ScriptEntryEnd

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_001D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_0x8004, ITEM_OLD_ROD
    BufferItemName 0, VAR_0x8004
    GoToIfSet FLAG_OLD_ROD_OBTAINED, _005E
    Message 1
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, AcceptOldRod
    GoToIfEq VAR_RESULT, MENU_NO, RefuseOldRod
    End

_005E:
    BufferItemName 0, VAR_0x8004
    Message 3
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0086
    GoToIfEq VAR_RESULT, MENU_NO, _0091
    End

_0086:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0091:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

RefuseOldRod:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

AcceptOldRod:
    BufferItemName 0, VAR_0x8004
    Message 2
    SetVar VAR_0x8005, 1
    Common_GiveItemQuantity
    SetFlag FLAG_OLD_ROD_OBTAINED
    GoTo _005E

    .balign 4, 0
