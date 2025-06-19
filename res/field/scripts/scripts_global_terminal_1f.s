#include "macros/scrcmd.inc"
#include "res/text/bank/global_terminal_1f.h"

    .data

    ScriptEntry _00F0
    ScriptEntry _00F2
    ScriptEntry _00F4
    ScriptEntry _0374
    ScriptEntry _0387
    ScriptEntry _039A
    ScriptEntry _03AD
    ScriptEntry _03C0
    ScriptEntry _03D3
    ScriptEntry _03E6
    ScriptEntry _03F9
    ScriptEntry _006B
    ScriptEntry _0056
    ScriptEntry _040C
    ScriptEntry _0496
    ScriptEntry _0520
    ScriptEntry _0533
    ScriptEntry _0546
    ScriptEntry _0601
    ScriptEntry _0652
    ScriptEntry _074C
    ScriptEntryEnd

_0056:
    CallIfEq VAR_UNK_0x40D5, 6, _0065
    End

_0065:
    ScrCmd_1B2 0xFF
    Return

_006B:
    LockAll
    Call _0077
    ReleaseAll
    End

_0077:
    ScrCmd_168 0, 0, 8, 2, 77
    Call _00C5
    ScrCmd_1B1 0xFF
    ApplyMovement LOCALID_PLAYER, _00D8
    WaitMovement
    Call _00CD
    ScrCmd_168 0, 0, 8, 4, 77
    Call _00C5
    ApplyMovement LOCALID_PLAYER, _00E8
    WaitMovement
    Call _00CD
    SetVar VAR_UNK_0x40D5, 0
    Return

_00C5:
    ScrCmd_16B 77
    ScrCmd_169 77
    Return

_00CD:
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    Return

    .balign 4, 0
_00D8:
    WalkNormalSouth
    EndMovement

    .byte 13
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_00E8:
    WalkNormalSouth 2
    EndMovement

_00F0:
    End

_00F2:
    End

_00F4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_2B7 VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0368
    GoToIfSet FLAG_UNK_0x00C3, _02FB
    SetFlag FLAG_UNK_0x00C3
    Message 0
    GoTo _0127
    End

_0127:
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm 129, 0
    AddMenuEntryImm 128, 1
    AddMenuEntryImm 130, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _01E9
    GoToIfEq VAR_0x8008, 1, _0172
    GoToIfEq VAR_0x8008, 2, _02EA
    GoTo _02EA
    End

_0172:
    Message 2
    GoTo _017D
    End

_017D:
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm 131, 0
    AddMenuEntryImm 132, 1
    AddMenuEntryImm 133, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _01C8
    GoToIfEq VAR_0x8008, 1, _01D3
    GoToIfEq VAR_0x8008, 2, _01DE
    GoTo _01DE
    End

_01C8:
    Message 3
    GoTo _017D
    End

_01D3:
    Message 4
    GoTo _017D
    End

_01DE:
    Message 5
    GoTo _0127
    End

_01E9:
    GetPartyCountHatched VAR_RESULT
    GoToIfLt VAR_RESULT, 2, _0202
    GoTo _0306
    End

_0202:
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_020D:
    CallCommonScript 0x7D6
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0
    GoToIfEq VAR_RESULT, 0, _02EA
    HealParty
    SetVar VAR_UNK_0x40D5, 6
    Message 7
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _0344
    WaitMovement
    ScrCmd_168 0, 0, 8, 4, 77
    Call _00C5
    ApplyMovement LOCALID_PLAYER, _0358
    WaitMovement
    Call _00CD
    ScrCmd_168 0, 0, 8, 2, 77
    Call _00C5
    ApplyMovement LOCALID_PLAYER, _0350
    WaitMovement
    ScrCmd_1B2 0xFF
    ApplyMovement LOCALID_PLAYER, _0360
    WaitMovement
    Call _00CD
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_2B2
    ScrCmd_0B3 VAR_RESULT
    SetVar VAR_0x8004, VAR_RESULT
    ScrCmd_0B2 VAR_0x8004, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _02CE
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    Call _0077
    ReleaseAll
    End

_02CE:
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    Call _0077
    GoTo _02EA
    End

_02EA:
    SetVar VAR_UNK_0x40D5, 0
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02FB:
    Message 1
    GoTo _0127
    End

_0306:
    GetPartyCount VAR_RESULT
    GoToIfEq VAR_RESULT, 6, _031F
    GoTo _020D
    End

_031F:
    GetPCBoxesFreeSlotCount VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0338
    GoTo _020D
    End

_0338:
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0344:
    WalkNormalEast
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0350:
    WalkNormalNorth
    EndMovement

    .balign 4, 0
_0358:
    WalkNormalNorth 2
    EndMovement

    .balign 4, 0
_0360:
    FaceSouth
    EndMovement

_0368:
    CallCommonScript 0x2338
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0374:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0387:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_039A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03AD:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 13
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03C0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 14
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03D3:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03E6:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 16
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03F9:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 17
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_040C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8005, 3
    GoTo _0420
    End

_0420:
    Message 36
    InitLocalTextMenu 31, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 38, 0
    AddMenuEntryImm 39, 1
    AddMenuEntryImm 40, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _046A
    GoToIfEq VAR_0x8008, 1, _048B
    GoTo _0464
    End

_0464:
    CloseMessage
    ReleaseAll
    End

_046A:
    CallCommonScript 0x7D6
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0
    GoToIfEq VAR_RESULT, 0, _0464
    CloseMessage
    CallCommonScript 0x802
    ReleaseAll
    End

_048B:
    Message 37
    GoTo _0420
    End

_0496:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8005, 4
    GoTo _04AA
    End

_04AA:
    Message 34
    InitLocalTextMenu 31, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 38, 0
    AddMenuEntryImm 39, 1
    AddMenuEntryImm 40, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _04F4
    GoToIfEq VAR_0x8008, 1, _0515
    GoTo _04EE
    End

_04EE:
    CloseMessage
    ReleaseAll
    End

_04F4:
    CallCommonScript 0x7D6
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0
    GoToIfEq VAR_RESULT, 0, _04EE
    CloseMessage
    CallCommonScript 0x802
    ReleaseAll
    End

_0515:
    Message 35
    GoTo _04AA
    End

_0520:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 32
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0533:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 33
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0546:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_2B7 VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _05A0
    SetVar VAR_0x8000, 0
    GetPartyMonSpecies VAR_0x8000, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _05CB
    BufferPartyMonSpecies 0, 0
    Message 18
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _05AB
    GoToIfEq VAR_RESULT, MENU_NO, _05B8
    End

_05A0:
    Message 23
    GoTo _05F9
    End

_05AB:
    ScrCmd_300
    Message 20
    GoTo _05F9
    End

_05B8:
    BufferPartyMonSpecies 0, 0
    Message 21
    GoTo _05F9

    .byte 2
    .byte 0
    .byte 44
    .byte 0
    .byte 18

_05CB:
    Message 19
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _05AB
    GoToIfEq VAR_RESULT, MENU_NO, _05EE
    End

_05EE:
    Message 22
    GoTo _05F9
    End

_05F9:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0601:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 29
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _0647
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    ScrCmd_30E VAR_0x8004
    GoToIfEq VAR_0x8004, 0, _0647
    Message 30
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0647:
    Message 31
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0652:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckItem ITEM_FASHION_CASE, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0696
    GoToIfSet FLAG_UNK_0x0AC3, _06FD
    GoToIfSet FLAG_UNK_0x00CF, _06F2
    Message 24
    SetVar VAR_0x8004, 1
    GoTo _06A1
    End

_0696:
    Message 42
    GoTo _0708
    End

_06A1:
    CheckBackdrop VAR_0x8004, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _06D3
    AddVar VAR_0x8004, 1
    GoToIfLe VAR_0x8004, 13, _06A1
    SetFlag FLAG_UNK_0x00CF
    GoTo _06F2
    End

_06D3:
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7FD
    Message 28
    Call _0710
    SetFlag FLAG_UNK_0x0AC3
    GoTo _0708
    End

_06F2:
    Message 27
    GoTo _0708
    End

_06FD:
    Message 26
    GoTo _0708
    End

_0708:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0710:
    SetVar VAR_0x8004, 1
    GoTo _071E
    End

_071E:
    CheckBackdrop VAR_0x8004, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _074A
    AddVar VAR_0x8004, 1
    GoToIfLe VAR_0x8004, 13, _071E
    SetFlag FLAG_UNK_0x00CF
    Return

_074A:
    Return

_074C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 41
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
