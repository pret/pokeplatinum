#include "macros/scrcmd.inc"
#include "res/text/bank/route_209.h"


    ScriptEntry _0091
    ScriptEntry _00A4
    ScriptEntry _0270
    ScriptEntry _0287
    ScriptEntry _01C7
    ScriptEntry _02B3
    ScriptEntry _02C6
    ScriptEntry _0026
    ScriptEntry _029E
    ScriptEntryEnd

_0026:
    GetTimeOfDay VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, _006D
    GoToIfEq VAR_MAP_LOCAL_0, 1, _007F
    GoToIfEq VAR_MAP_LOCAL_0, 2, _007F
    GoToIfEq VAR_MAP_LOCAL_0, 3, _007F
    GoToIfEq VAR_MAP_LOCAL_0, 4, _007F
    End

_006D:
    ClearFlag FLAG_UNK_0x026D
    ClearFlag FLAG_UNK_0x026F
    SetFlag FLAG_UNK_0x026C
    SetFlag FLAG_UNK_0x026E
    End

_007F:
    ClearFlag FLAG_UNK_0x026C
    ClearFlag FLAG_UNK_0x026E
    SetFlag FLAG_UNK_0x026D
    SetFlag FLAG_UNK_0x026F
    End

_0091:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfEq VAR_UNK_0x408A, 1, _0102
    CheckItem ITEM_ODD_KEYSTONE, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _01BC
    Message 2
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _00E6
    CloseMessage
    ReleaseAll
    End

_00E6:
    BufferPlayerName 0
    Message 3
    WaitABXPadPress
    RemoveItem ITEM_ODD_KEYSTONE, 1, VAR_RESULT
    SetVar VAR_UNK_0x408A, 1
    CloseMessage
    ReleaseAll
    End

_0102:
    GetSpiritombCounter VAR_RESULT
    GoToIfGe VAR_RESULT, 32, _014D
    GoToIfGe VAR_RESULT, 29, _01B1
    GoToIfGe VAR_RESULT, 22, _01A6
    GoToIfGe VAR_RESULT, 15, _019B
    GoToIfGe VAR_RESULT, 8, _0190
    GoTo _0185

_014D:
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_SPIRITOMB
    Message 9
    WaitCry
    CloseMessage
    StartWildBattle SPECIES_SPIRITOMB, 25
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _017F
    SetVar VAR_UNK_0x408A, 0
    ClearSpiritombCounter
    End

_017F:
    BlackOutFromBattle
    ReleaseAll
    End

_0185:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0190:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_019B:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01A6:
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01B1:
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01BC:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01C7:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_0x8004, 0x1BE
    ScrCmd_33C 0, VAR_0x8004
    ScrCmd_346 0
    GoToIfSet FLAG_UNK_0x00A2, _020B
    Message 10
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0254
    GoToIfEq VAR_RESULT, MENU_NO, _0249
    End

_020B:
    BufferItemName 0, VAR_0x8004
    Message 12
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0233
    GoToIfEq VAR_RESULT, MENU_NO, _023E
    End

_0233:
    Message 14
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_023E:
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0249:
    Message 13
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0254:
    BufferItemName 0, VAR_0x8004
    Message 11
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x00A2
    GoTo _020B

_0270:
    ShowArrowSign 18
    End

_0287:
    ShowArrowSign 19
    End

_029E:
    ShowScrollingSign 20
    End

_02B3:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 16
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02C6:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 17
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
