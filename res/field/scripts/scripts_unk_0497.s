#include "macros/scrcmd.inc"
#include "res/text/bank/unk_0538.h"

    .data

    ScriptEntry _005E
    ScriptEntry _0062
    ScriptEntry _00AF
    ScriptEntry _0178
    ScriptEntry _0242
    ScriptEntry _030C
    ScriptEntry _03D6
    ScriptEntry _04A0
    ScriptEntry _056A
    ScriptEntry _00A0
    ScriptEntry _0634
    ScriptEntry _063C
    ScriptEntry _0644
    ScriptEntry _0652
    ScriptEntry _0660
    ScriptEntry _066E
    ScriptEntry _067C
    ScriptEntry _068A
    ScriptEntry _0698
    ScriptEntry _06A6
    ScriptEntry _06B4
    ScriptEntry _012B
    ScriptEntry _00ED
    ScriptEntryEnd

_005E:
    InitPersistedMapFeaturesForGreatMarsh
    End

_0062:
    LockAll
    PlayFanfare SEQ_SE_DP_PINPON
    Message 0
    WaitABPress
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_PASTORIA_CITY_OBSERVATORY_GATE_1F, 0, 5, 2, 1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    SetVar VAR_UNK_0x40DA, 2
    ScrCmd_202 1
    ReleaseAll
    End

_00A0:
    LockAll
    SetVar VAR_UNK_0x40DA, 2
    ScrCmd_202 1
    ReleaseAll
    End

_00AF:
    LockAll
    PlayFanfare SEQ_SE_DP_PINPON
    Message 1
    WaitABPress
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_PASTORIA_CITY_OBSERVATORY_GATE_1F, 0, 5, 2, 1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    SetVar VAR_UNK_0x40DA, 2
    ScrCmd_202 1
    ReleaseAll
    End

_00ED:
    LockAll
    PlayFanfare SEQ_SE_DP_PINPON
    Message 2
    WaitABPress
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_PASTORIA_CITY_OBSERVATORY_GATE_1F, 0, 5, 2, 1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    SetVar VAR_UNK_0x40DA, 2
    ScrCmd_202 1
    ReleaseAll
    End

_012B:
    LockAll
    Message 5
    ShowYesNoMenu VAR_0x800C
    CloseMessage
    GoToIfNe VAR_0x800C, MENU_YES, _0174
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_PASTORIA_CITY_OBSERVATORY_GATE_1F, 0, 5, 2, 1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    SetVar VAR_UNK_0x40DA, 2
    ScrCmd_202 1
    ReleaseAll
    End

_0174:
    ReleaseAll
    End

_0178:
    LockAll
    Message 3
    InitGlobalTextMenu 1, 1, 0, VAR_0x800C
    AddMenuEntryImm 188, 0
    AddMenuEntryImm 189, 1
    AddMenuEntryImm 190, 2
    AddMenuEntryImm 191, 3
    AddMenuEntryImm 192, 4
    ShowMenu
    CloseMessage
    GoToIfEq VAR_0x800C, 4, _06C2
    GoToIfEq VAR_0x800C, -2, _06C2
    ScrCmd_210 0, VAR_0x8004
    SetVar VAR_0x8005, 0
    CallIfEq VAR_0x8004, 6, _0634
    SetPlayerHeightCalculationEnabled FALSE
    CallIfEq VAR_0x800C, 0, _06D0
    CallIfEq VAR_0x800C, 1, _06DC
    CallIfEq VAR_0x800C, 2, _06D0
    CallIfEq VAR_0x800C, 3, _06DC
    CallIfEq VAR_0x800C, 0, _068A
    CallIfEq VAR_0x800C, 1, _0698
    CallIfEq VAR_0x800C, 2, _06A6
    CallIfEq VAR_0x800C, 3, _06B4
    SetPlayerHeightCalculationEnabled TRUE
    ReleaseAll
    End

_0242:
    LockAll
    Message 3
    InitGlobalTextMenu 1, 1, 0, VAR_0x800C
    AddMenuEntryImm 188, 0
    AddMenuEntryImm 189, 1
    AddMenuEntryImm 190, 2
    AddMenuEntryImm 191, 3
    AddMenuEntryImm 192, 4
    ShowMenu
    CloseMessage
    GoToIfEq VAR_0x800C, 4, _06C2
    GoToIfEq VAR_0x800C, -2, _06C2
    ScrCmd_210 0, VAR_0x8004
    SetVar VAR_0x8005, 0
    CallIfEq VAR_0x8004, 6, _0634
    SetPlayerHeightCalculationEnabled FALSE
    CallIfEq VAR_0x800C, 0, _06F4
    CallIfEq VAR_0x800C, 1, _06E8
    CallIfEq VAR_0x800C, 2, _06F4
    CallIfEq VAR_0x800C, 3, _06E8
    CallIfEq VAR_0x800C, 0, _068A
    CallIfEq VAR_0x800C, 1, _0698
    CallIfEq VAR_0x800C, 2, _06A6
    CallIfEq VAR_0x800C, 3, _06B4
    SetPlayerHeightCalculationEnabled TRUE
    ReleaseAll
    End

_030C:
    LockAll
    Message 3
    InitGlobalTextMenu 1, 1, 0, VAR_0x800C
    AddMenuEntryImm 186, 0
    AddMenuEntryImm 187, 1
    AddMenuEntryImm 190, 2
    AddMenuEntryImm 191, 3
    AddMenuEntryImm 192, 4
    ShowMenu
    CloseMessage
    GoToIfEq VAR_0x800C, 4, _06C2
    GoToIfEq VAR_0x800C, -2, _06C2
    ScrCmd_210 1, VAR_0x8004
    SetVar VAR_0x8005, 1
    CallIfEq VAR_0x8004, 6, _0634
    SetPlayerHeightCalculationEnabled FALSE
    CallIfEq VAR_0x800C, 0, _06D0
    CallIfEq VAR_0x800C, 1, _06DC
    CallIfEq VAR_0x800C, 2, _06D0
    CallIfEq VAR_0x800C, 3, _06DC
    CallIfEq VAR_0x800C, 0, _066E
    CallIfEq VAR_0x800C, 1, _067C
    CallIfEq VAR_0x800C, 2, _06A6
    CallIfEq VAR_0x800C, 3, _06B4
    SetPlayerHeightCalculationEnabled TRUE
    ReleaseAll
    End

_03D6:
    LockAll
    Message 3
    InitGlobalTextMenu 1, 1, 0, VAR_0x800C
    AddMenuEntryImm 186, 0
    AddMenuEntryImm 187, 1
    AddMenuEntryImm 190, 2
    AddMenuEntryImm 191, 3
    AddMenuEntryImm 192, 4
    ShowMenu
    CloseMessage
    GoToIfEq VAR_0x800C, 4, _06C2
    GoToIfEq VAR_0x800C, -2, _06C2
    ScrCmd_210 1, VAR_0x8004
    SetVar VAR_0x8005, 1
    CallIfEq VAR_0x8004, 6, _0634
    SetPlayerHeightCalculationEnabled FALSE
    CallIfEq VAR_0x800C, 0, _06F4
    CallIfEq VAR_0x800C, 1, _06E8
    CallIfEq VAR_0x800C, 2, _06F4
    CallIfEq VAR_0x800C, 3, _06E8
    CallIfEq VAR_0x800C, 0, _066E
    CallIfEq VAR_0x800C, 1, _067C
    CallIfEq VAR_0x800C, 2, _06A6
    CallIfEq VAR_0x800C, 3, _06B4
    SetPlayerHeightCalculationEnabled TRUE
    ReleaseAll
    End

_04A0:
    LockAll
    Message 3
    InitGlobalTextMenu 1, 1, 0, VAR_0x800C
    AddMenuEntryImm 186, 0
    AddMenuEntryImm 187, 1
    AddMenuEntryImm 188, 2
    AddMenuEntryImm 189, 3
    AddMenuEntryImm 192, 4
    ShowMenu
    CloseMessage
    GoToIfEq VAR_0x800C, 4, _06C2
    GoToIfEq VAR_0x800C, -2, _06C2
    ScrCmd_210 2, VAR_0x8004
    SetVar VAR_0x8005, 2
    CallIfEq VAR_0x8004, 6, _0634
    SetPlayerHeightCalculationEnabled FALSE
    CallIfEq VAR_0x800C, 0, _06D0
    CallIfEq VAR_0x800C, 1, _06DC
    CallIfEq VAR_0x800C, 2, _06D0
    CallIfEq VAR_0x800C, 3, _06DC
    CallIfEq VAR_0x800C, 0, _066E
    CallIfEq VAR_0x800C, 1, _067C
    CallIfEq VAR_0x800C, 2, _068A
    CallIfEq VAR_0x800C, 3, _0698
    SetPlayerHeightCalculationEnabled TRUE
    ReleaseAll
    End

_056A:
    LockAll
    Message 3
    InitGlobalTextMenu 1, 1, 0, VAR_0x800C
    AddMenuEntryImm 186, 0
    AddMenuEntryImm 187, 1
    AddMenuEntryImm 188, 2
    AddMenuEntryImm 189, 3
    AddMenuEntryImm 192, 4
    ShowMenu
    CloseMessage
    GoToIfEq VAR_0x800C, 4, _06C2
    GoToIfEq VAR_0x800C, -2, _06C2
    ScrCmd_210 2, VAR_0x8004
    SetVar VAR_0x8005, 2
    CallIfEq VAR_0x8004, 6, _0634
    SetPlayerHeightCalculationEnabled FALSE
    CallIfEq VAR_0x800C, 0, _06F4
    CallIfEq VAR_0x800C, 1, _06E8
    CallIfEq VAR_0x800C, 2, _06F4
    CallIfEq VAR_0x800C, 3, _06E8
    CallIfEq VAR_0x800C, 0, _066E
    CallIfEq VAR_0x800C, 1, _067C
    CallIfEq VAR_0x800C, 2, _068A
    CallIfEq VAR_0x800C, 3, _0698
    SetPlayerHeightCalculationEnabled TRUE
    ReleaseAll
    End

_0634:
    ScrCmd_20F VAR_0x8005, 3
    Return

_063C:
    ScrCmd_20F VAR_0x8006, 4
    Return

_0644:
    SetVar VAR_0x8006, 0
    Call _063C
    Return

_0652:
    SetVar VAR_0x8006, 1
    Call _063C
    Return

_0660:
    SetVar VAR_0x8006, 2
    Call _063C
    Return

_066E:
    Call _0644
    Call _070C
    Return

_067C:
    Call _0644
    Call _0700
    Return

_068A:
    Call _0652
    Call _070C
    Return

_0698:
    Call _0652
    Call _0700
    Return

_06A6:
    Call _0660
    Call _070C
    Return

_06B4:
    Call _0660
    Call _0700
    Return

_06C2:
    BufferPlayerName 0
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_06D0:
    ApplyMovement LOCALID_PLAYER, _0718
    WaitMovement
    Return

_06DC:
    ApplyMovement LOCALID_PLAYER, _0724
    WaitMovement
    Return

_06E8:
    ApplyMovement LOCALID_PLAYER, _0730
    WaitMovement
    Return

_06F4:
    ApplyMovement LOCALID_PLAYER, _073C
    WaitMovement
    Return

_0700:
    ApplyMovement LOCALID_PLAYER, _0748
    WaitMovement
    Return

_070C:
    ApplyMovement LOCALID_PLAYER, _0754
    WaitMovement
    Return

    .balign 4, 0
_0718:
    MoveAction_015 3
    MoveAction_069
    EndMovement

    .balign 4, 0
_0724:
    MoveAction_015 4
    MoveAction_069
    EndMovement

    .balign 4, 0
_0730:
    MoveAction_014 3
    MoveAction_069
    EndMovement

    .balign 4, 0
_073C:
    MoveAction_014 4
    MoveAction_069
    EndMovement

    .balign 4, 0
_0748:
    MoveAction_070
    MoveAction_015 3
    EndMovement

    .balign 4, 0
_0754:
    MoveAction_070
    MoveAction_014 3
    EndMovement
