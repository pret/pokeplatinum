#include "macros/scrcmd.inc"
#include "res/text/bank/battle_castle.h"

    .data

    ScriptEntry _0059
    ScriptEntry _06A4
    ScriptEntry _06DD
    ScriptEntry _06EC
    ScriptEntry _0760
    ScriptEntry _0075
    ScriptEntry _0788
    ScriptEntry _079B
    ScriptEntry _07AE
    ScriptEntry _07C1
    ScriptEntry _07D4
    ScriptEntry _07E7
    ScriptEntry _07FA
    ScriptEntry _003A
    ScriptEntryEnd

_003A:
    ScrCmd_238 19, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, _0053
    ClearFlag FLAG_UNK_0x02C3
    End

_0053:
    SetFlag FLAG_UNK_0x02C3
    End

_0059:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_MAP_LOCAL_3, 0
    SetVar VAR_MAP_LOCAL_4, 0
    GoTo _0091
    End

_0075:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_MAP_LOCAL_3, 0
    SetVar VAR_MAP_LOCAL_4, 1
    GoTo _0091
    End

_0091:
    ScrCmd_313 0
    CallIfEq VAR_MAP_LOCAL_4, 0, _0664
    CallIfEq VAR_MAP_LOCAL_4, 1, _0669
    GoTo _00B7
    End

_00B7:
    CallIfEq VAR_MAP_LOCAL_4, 0, _066E
    CallIfEq VAR_MAP_LOCAL_4, 1, _0686
    AddMenuEntryImm 41, 2
    AddMenuEntryImm 42, 3
    ShowMenu
    GoToIfEq VAR_RESULT, 0, _0152
    GoToIfEq VAR_RESULT, 1, _017F
    GoToIfEq VAR_RESULT, 2, _0117
    GoToIfEq VAR_RESULT, 4, _01AC
    GoTo _0139
    End

_0117:
    CallIfEq VAR_MAP_LOCAL_4, 0, _069A
    CallIfEq VAR_MAP_LOCAL_4, 1, _069F
    GoTo _00B7
    End

_0139:
    GoTo _0141
    End

_0141:
    SetVar VAR_UNK_0x40BC, 0
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0152:
    SetVar VAR_UNK_0x40BD, 0
    ScrCmd_2D2 0, 3, VAR_RESULT
    BufferNumber 0, 3
    BufferNumber 1, 3
    GoToIfEq VAR_RESULT, 0, _01D9
    GoTo _01FF
    End

_017F:
    SetVar VAR_UNK_0x40BD, 1
    ScrCmd_2D2 0, 3, VAR_RESULT
    BufferNumber 0, 3
    BufferNumber 1, 3
    GoToIfEq VAR_RESULT, 0, _01D9
    GoTo _01FF
    End

_01AC:
    SetVar VAR_UNK_0x40BD, 2
    ScrCmd_2D2 0, 2, VAR_RESULT
    BufferNumber 0, 2
    BufferNumber 1, 2
    GoToIfEq VAR_RESULT, 0, _01EC
    GoTo _01FF
    End

_01D9:
    Message 8
    ScrCmd_1FF 9, 3, 0, 0
    GoTo _0139
    End

_01EC:
    Message 8
    ScrCmd_1FF 9, 2, 0, 0
    GoTo _0139
    End

_01FF:
    Message 7
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_2D2 4, VAR_UNK_0x40BD, VAR_RESULT
    ScrCmd_2D4 VAR_MAP_LOCAL_2, VAR_MAP_LOCAL_5, VAR_MAP_LOCAL_6
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq VAR_MAP_LOCAL_2, 0xFF, _0139
    ScrCmd_31E VAR_MAP_LOCAL_2, VAR_RESULT
    GoToIfEq VAR_RESULT, 0xFF, _05D5
    ScrCmd_31E VAR_MAP_LOCAL_5, VAR_RESULT
    GoToIfEq VAR_RESULT, 0xFF, _05D5
    ScrCmd_31E VAR_MAP_LOCAL_6, VAR_RESULT
    GoToIfEq VAR_RESULT, 0xFF, _05D5
    GetPartyMonSpecies VAR_MAP_LOCAL_2, VAR_MAP_LOCAL_1
    GoToIfEq VAR_MAP_LOCAL_1, 0, _0139
    GoTo _028F
    End

_028F:
    GoTo _0297
    End

_0297:
    CallIfEq VAR_UNK_0x40BD, 0, _043C
    CallIfEq VAR_UNK_0x40BD, 1, _043C
    SetVar VAR_MAP_LOCAL_0, 0
    HealParty
    CallCommonScript 0x7D6
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0
    GoToIfEq VAR_RESULT, 0, _0139
    GoToIfEq VAR_UNK_0x40BD, 2, _02E5
    GoTo _049D
    End

_02E5:
    Message 43
    InitGlobalTextMenu 30, 1, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 13, 0
    AddMenuEntryImm 14, 1
    AddMenuEntryImm 5, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0329
    GoToIfEq VAR_0x8008, 1, _037D
    GoTo _0139
    End

_0329:
    Message 44
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _02E5
    CloseMessage
    ScrCmd_0F2 31, 0, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _036B
    GoToIfEq VAR_RESULT, 3, _0373
    GoTo _03D1
    End

_036B:
    GoTo _02E5
    End

_0373:
    ScrCmd_150
    GoTo _02E5
    End

_037D:
    Message 44
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _02E5
    CloseMessage
    ScrCmd_0F3 31, 0, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _03BF
    GoToIfEq VAR_RESULT, 3, _03C7
    GoTo _03D1
    End

_03BF:
    GoTo _02E5
    End

_03C7:
    ScrCmd_150
    GoTo _02E5
    End

_03D1:
    ScrCmd_136
    ScrCmd_135 136
    GetPartyMonSpecies VAR_MAP_LOCAL_2, VAR_0x8000
    GetPartyMonSpecies VAR_MAP_LOCAL_5, VAR_0x8001
    ScrCmd_2D3 VAR_0x8000, VAR_0x8001, VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 1, _0444
    GoToIfEq VAR_0x8008, 2, _045A
    GoToIfEq VAR_0x8008, 3, _0470
    ScrCmd_136
    ScrCmd_135 138
    Message 45
    CallIfEq VAR_UNK_0x40BD, 2, _043C
    Call _06CB
    GoTo _049D
    End

_043C:
    SetVar VAR_UNK_0x40BC, 0xFF
    Return

_0444:
    Call _0493
    BufferPartyMonSpecies 0, VAR_MAP_LOCAL_2
    Message 29
    GoTo _048B
    End

_045A:
    Call _0493
    BufferPartyMonSpecies 0, VAR_MAP_LOCAL_5
    Message 29
    GoTo _048B
    End

_0470:
    Call _0493
    BufferPartyMonSpecies 0, VAR_MAP_LOCAL_2
    BufferPartyMonSpecies 1, VAR_MAP_LOCAL_5
    Message 30
    GoTo _048B
    End

_048B:
    GoTo _0139
    End

_0493:
    ScrCmd_136
    ScrCmd_135 139
    ScrCmd_150
    Return

_049D:
    CallIfEq VAR_UNK_0x40BD, 0, _053D
    CallIfEq VAR_UNK_0x40BD, 1, _0558
    CallIfEq VAR_UNK_0x40BD, 2, _0573
    PlayFanfare SEQ_SE_DP_KAIDAN2
    GoTo _04D0
    End

_04D0:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CallIfEq VAR_UNK_0x40BD, 0, _0599
    CallIfEq VAR_UNK_0x40BD, 1, _05AD
    CallIfEq VAR_UNK_0x40BD, 2, _05C1
    IncrementGameRecord RECORD_UNK_058
    CreateJournalEvent LOCATION_EVENT_BATTLE_CASTLE, 0, 0, 0, 0
    ScrCmd_1F8
    ScrCmd_2C4 11
    CallIfEq VAR_UNK_0x40BD, 2, _0539
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ScrCmd_313 1
    End

_0539:
    ScrCmd_150
    Return

_053D:
    Message 32
    WaitABPress
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _05E4
    ApplyMovement VAR_LAST_TALKED, _0604
    WaitMovement
    Return

_0558:
    Message 32
    WaitABPress
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _05E4
    ApplyMovement VAR_LAST_TALKED, _0604
    WaitMovement
    Return

_0573:
    ScrCmd_02E 32
    WaitTime 10, VAR_RESULT
    ScrCmd_136
    ScrCmd_135 137
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _05F0
    ApplyMovement VAR_LAST_TALKED, _0610
    WaitMovement
    Return

_0599:
    ApplyMovement LOCALID_PLAYER, _0624
    ApplyMovement VAR_LAST_TALKED, _0648
    WaitMovement
    Return

_05AD:
    ApplyMovement LOCALID_PLAYER, _0624
    ApplyMovement VAR_LAST_TALKED, _0648
    WaitMovement
    Return

_05C1:
    ApplyMovement LOCALID_PLAYER, _0634
    ApplyMovement VAR_LAST_TALKED, _0654
    WaitMovement
    Return

_05D5:
    SetVar VAR_UNK_0x40BC, 0
    CallCommonScript 0x809
    End

    .balign 4, 0
_05E4:
    MoveAction_014 6
    MoveAction_069
    EndMovement

    .balign 4, 0
_05F0:
    MoveAction_014 3
    MoveAction_012
    MoveAction_014 3
    MoveAction_069
    EndMovement

    .balign 4, 0
_0604:
    MoveAction_014 5
    MoveAction_069
    EndMovement

    .balign 4, 0
_0610:
    MoveAction_014 2
    MoveAction_012
    MoveAction_014 3
    MoveAction_069
    EndMovement

    .balign 4, 0
_0624:
    MoveAction_023 6
    MoveAction_070
    MoveAction_002
    EndMovement

    .balign 4, 0
_0634:
    MoveAction_023 6
    MoveAction_021
    MoveAction_070
    MoveAction_002
    EndMovement

    .balign 4, 0
_0648:
    MoveAction_023 5
    MoveAction_070
    EndMovement

    .balign 4, 0
_0654:
    MoveAction_021
    MoveAction_023 5
    MoveAction_070
    EndMovement

_0664:
    Message 0
    Return

_0669:
    Message 3
    Return

_066E:
    InitLocalTextMenu 31, 9, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 38, 0
    AddMenuEntryImm 39, 1
    Message 1
    Return

_0686:
    InitLocalTextMenu 31, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 40, 4
    Message 4
    Return

_069A:
    Message 2
    Return

_069F:
    Message 5
    Return

_06A4:
    ScrCmd_313 0
    SetVar VAR_MAP_LOCAL_3, 1
    SetVar VAR_UNK_0x40BC, 0
    Message 33
    Call _043C
    Call _06CB
    GoTo _049D
    End

_06CB:
    ScrCmd_18D
    ScrCmd_12D VAR_RESULT
    ScrCmd_18E
    PlayFanfare SEQ_SE_DP_SAVE
    WaitFanfare SEQ_SE_DP_SAVE
    Return

_06DD:
    Message 34
    ScrCmd_2D5 VAR_UNK_0x40BD
    GoTo _0139
    End

_06EC:
    CallIfEq VAR_UNK_0x40BD, 0, _0728
    CallIfEq VAR_UNK_0x40BD, 1, _0728
    CallIfEq VAR_BATTLE_CASTLE_PRINT_STATE, 1, _072E
    CallIfEq VAR_BATTLE_CASTLE_PRINT_STATE, 3, _0745
    GoTo _0139
    End

_0728:
    ScrCmd_30A 39
    Return

_072E:
    Message 35
    BufferPlayerName 0
    Message 37
    PlaySound SEQ_FANFA4
    WaitSound
    SetVar VAR_BATTLE_CASTLE_PRINT_STATE, 2
    Return

_0745:
    Message 35
    BufferPlayerName 0
    Message 36
    PlaySound SEQ_FANFA4
    WaitSound
    SetVar VAR_BATTLE_CASTLE_PRINT_STATE, 4
    CallCommonScript 0x806
    Return

_0760:
    GoTo _0139

    .byte 2
    .byte 0
    .byte 12
    .byte 0
    .byte 2
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 12
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 12
    .byte 0
    .byte 2
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 12
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_0788:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 46
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_079B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 47
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_07AE:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 48
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_07C1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 49
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_07D4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 50
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_07E7:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 51
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_07FA:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 52
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
