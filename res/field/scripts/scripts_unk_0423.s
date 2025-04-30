#include "macros/scrcmd.inc"
#include "res/text/bank/unk_0430.h"

    .data

    ScriptEntry _001A
    ScriptEntry _00F4
    ScriptEntry _01A3
    ScriptEntry _043C
    ScriptEntry _048E
    ScriptEntry _0650
    ScriptEntryEnd

_001A:
    LockAll
    Message 0
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _00D8
    WaitMovement
    Message 1
    SetVar VAR_0x8004, 0x1B5
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7FC
    GoTo _0046
    End

_0046:
    Message 2
    InitGlobalTextMenu 31, 13, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 153, 0
    AddMenuEntryImm 154, 1
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0086
    GoToIfEq VAR_0x8008, 1, _00C6
    GoTo _00C6
    End

_0086:
    Message 3
    InitGlobalTextMenu 31, 13, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 155, 0
    AddMenuEntryImm 154, 1
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0086
    GoToIfEq VAR_0x8008, 1, _00C6
    GoTo _00C6
    End

_00C6:
    SetVar VAR_UNK_0x40D4, 1
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_00D8:
    MoveAction_032
    MoveAction_063 2
    MoveAction_012 4
    MoveAction_014
    MoveAction_000
    MoveAction_063 2
    EndMovement

_00F4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 5
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0123
    GoTo _0118
    End

_0118:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0123:
    Message 6
    InitGlobalTextMenu 31, 13, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 153, 0
    AddMenuEntryImm 154, 1
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0163
    GoToIfEq VAR_0x8008, 1, _0118
    GoTo _0118
    End

_0163:
    Message 3
    InitGlobalTextMenu 31, 13, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 155, 0
    AddMenuEntryImm 154, 1
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0163
    GoToIfEq VAR_0x8008, 1, _0118
    GoTo _0118
    End

_01A3:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_2B7 VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0430
    GoTo _01C4
    End

_01C4:
    Message 7
    InitLocalTextMenu 31, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 14, 0
    AddMenuEntryImm 15, 1
    AddMenuEntryImm 16, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0213
    GoToIfEq VAR_0x8008, 1, _0208
    GoTo _026C
    End

_0208:
    Message 13
    GoTo _01C4
    End

_0213:
    ScrCmd_2A4 VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _022C
    GoTo _0277
    End

_022C:
    ScrCmd_2A3 VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0261
    GoTo _0245
    End

_0245:
    Message 11
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0277
    GoTo _026C
    End

_0261:
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_026C:
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0277:
    ScrCmd_31D VAR_RESULT
    GoToIfEq VAR_RESULT, 0xFF, _02A9
    HealParty
    CallCommonScript 0x7D6
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0
    GoToIfEq VAR_RESULT, 1, _02AF
    GoTo _026C
    End

_02A9:
    CallCommonScript 0x809
    End

_02AF:
    Message 10
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    ApplyMovement LOCALID_PLAYER, _03B8
    WaitMovement
    GoTo _02CC
    End

_02CC:
    ScrCmd_168 0, 0, 9, 5, 77
    Call _0320
    ApplyMovement LOCALID_PLAYER, _03C4
    WaitMovement
    Call _0328
    ApplyMovement LOCALID_PLAYER, _03CC
    WaitMovement
    ScrCmd_168 0, 0, 9, 2, 77
    Call _0320
    ApplyMovement LOCALID_PLAYER, _03D4
    WaitMovement
    Call _0328
    GoTo _0333
    End

_0320:
    ScrCmd_16B 77
    ScrCmd_169 77
    Return

_0328:
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    Return

_0333:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_1F8
    ScrCmd_2A4 VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _035A
    ScrCmd_0A3
    GoTo _035C

_035A:
    ScrCmd_0A3
_035C:
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ScrCmd_168 0, 0, 8, 2, 77
    Call _0320
    ApplyMovement LOCALID_PLAYER, _03EC
    WaitMovement
    Call _0328
    ApplyMovement LOCALID_PLAYER, _03FC
    WaitMovement
    ScrCmd_168 0, 0, 8, 5, 77
    Call _0320
    ApplyMovement LOCALID_PLAYER, _0404
    WaitMovement
    Call _0328
    End

    .balign 4, 0
_03B8:
    MoveAction_015
    MoveAction_032
    EndMovement

    .balign 4, 0
_03C4:
    MoveAction_012 2
    EndMovement

    .balign 4, 0
_03CC:
    MoveAction_012
    EndMovement

    .balign 4, 0
_03D4:
    MoveAction_012
    MoveAction_069
    EndMovement

    .balign 4, 0
_03E0:
    MoveAction_012 2
    MoveAction_069
    EndMovement

    .balign 4, 0
_03EC:
    MoveAction_001
    MoveAction_070
    MoveAction_013
    EndMovement

    .balign 4, 0
_03FC:
    MoveAction_013
    EndMovement

    .balign 4, 0
_0404:
    MoveAction_013 2
    EndMovement

    .balign 4, 0
_040C:
    MoveAction_035
    EndMovement

    .balign 4, 0
_0414:
    MoveAction_012
    MoveAction_015
    MoveAction_032
    EndMovement

    .balign 4, 0
_0424:
    MoveAction_012
    MoveAction_069
    EndMovement

_0430:
    CallCommonScript 0x2338
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_043C:
    Dummy1F9 VAR_UNK_0x40B8
    SetVar VAR_UNK_0x40DD, 0
    SetVar VAR_UNK_0x40DE, 0
    SetVar VAR_UNK_0x40B8, 0
    SetVar VAR_UNK_0x40B9, 0
    SetVar VAR_UNK_0x40BD, 0
    SetVar VAR_UNK_0x40BB, 0
    SetVar VAR_UNK_0x40BE, 0
    SetVar VAR_UNK_0x40D8, 0
    SetVar VAR_UNK_0x40B7, 0
    SetVar VAR_UNK_0x40BC, 0
    SetVar VAR_UNK_0x40BA, 0
    SetVar VAR_UNK_0x40BF, 0
    Dummy1F9 VAR_UNK_0x40B8
    End

_048E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_323 VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _04BC
    GetCurrentMapID 0x405C
    SetVar VAR_UNK_0x405D, VAR_LAST_TALKED
    Message 17
    GoTo _04C7
    End

_04BC:
    Message 25
    GoTo _0513
    End

_04C7:
    InitLocalTextMenu 31, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 22, 0
    AddMenuEntryImm 23, 1
    AddMenuEntryImm 24, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0526
    GoToIfEq VAR_0x8008, 1, _051B
    GoTo _0508
    End

_0508:
    Message 20
    GoTo _0513
    End

_0513:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_051B:
    Message 21
    GoTo _04C7
    End

_0526:
    HealParty
    CallCommonScript 0x7D6
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0
    GoToIfEq VAR_RESULT, 0, _0508
    Message 19
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _03B8
    WaitMovement
    ScrCmd_168 0, 0, 5, 5, 77
    Call _0320
    ApplyMovement VAR_LAST_TALKED, _040C
    ApplyMovement LOCALID_PLAYER, _03C4
    WaitMovement
    Call _0328
    ApplyMovement VAR_LAST_TALKED, _0414
    WaitMovement
    ScrCmd_168 0, 0, 5, 2, 77
    Call _0320
    ApplyMovement LOCALID_PLAYER, _03E0
    ApplyMovement VAR_LAST_TALKED, _0424
    WaitMovement
    Call _0328
    SetVar VAR_MAP_LOCAL_3, 0
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_WIFI_PLAZA_ENTRANCE, 0, 20, 11, 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

    .byte 188
    .byte 0
    .byte 6
    .byte 0
    .byte 1
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 189
    .byte 0
    .byte 248
    .byte 1
    .byte 179
    .byte 0
    .byte 12
    .byte 128
    .byte 41
    .byte 0
    .byte 4
    .byte 128
    .byte 12
    .byte 128
    .byte 247
    .byte 2
    .byte 4
    .byte 128
    .byte 161
    .byte 0
    .byte 188
    .byte 0
    .byte 6
    .byte 0
    .byte 1
    .byte 0
    .byte 1
    .byte 0
    .byte 0
    .byte 0
    .byte 189
    .byte 0
    .byte 104
    .byte 1
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 5
    .byte 0
    .byte 2
    .byte 0
    .byte 77
    .byte 26
    .byte 0
    .byte 15
    .byte 253
    .byte 0xFF
    .byte 0xFF
    .byte 94
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 211
    .byte 253
    .byte 0xFF
    .byte 0xFF
    .byte 95
    .byte 0
    .byte 26
    .byte 0
    .byte 7
    .byte 253
    .byte 0xFF
    .byte 0xFF
    .byte 94
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 211
    .byte 253
    .byte 0xFF
    .byte 0xFF
    .byte 95
    .byte 0
    .byte 104
    .byte 1
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 5
    .byte 0
    .byte 5
    .byte 0
    .byte 77
    .byte 26
    .byte 0
    .byte 228
    .byte 252
    .byte 0xFF
    .byte 0xFF
    .byte 94
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 192
    .byte 253
    .byte 0xFF
    .byte 0xFF
    .byte 95
    .byte 0
    .byte 26
    .byte 0
    .byte 220
    .byte 252
    .byte 0xFF
    .byte 0xFF
    .byte 97
    .byte 0
    .byte 2
    .byte 0

_0650:
    LockAll
    ScrCmd_168 0, 0, 5, 2, 77
    Call _0320
    ApplyMovement LOCALID_PLAYER, _03EC
    WaitMovement
    Call _0328
    ApplyMovement LOCALID_PLAYER, _03FC
    WaitMovement
    ScrCmd_168 0, 0, 5, 5, 77
    Call _0320
    ApplyMovement LOCALID_PLAYER, _0404
    WaitMovement
    Call _0328
    SetVar VAR_UNK_0x4080, 0
    ReleaseAll
    End
