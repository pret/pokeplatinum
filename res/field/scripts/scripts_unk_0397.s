#include "macros/scrcmd.inc"
#include "res/text/bank/common_strings.h"

    .data

    ScriptEntry _0022
    ScriptEntry _002E
    ScriptEntry _0054
    ScriptEntry _005C
    ScriptEntry _0078
    ScriptEntry _008A
    ScriptEntry _008C
    ScriptEntry _00A2
    ScriptEntryEnd

_0022:
    SetFlag FLAG_UNK_0x01A7
    SetVar 0x40D0, 1
    End

_002E:
    ClearFlag FLAG_UNK_0x0178
    ClearFlag FLAG_UNK_0x0179
    SetVar 0x4095, 1
    SetVar 0x4082, 2
    ClearFlag FLAG_UNK_0x0195
    SetVar VAR_FOLLOWER_RIVAL_STATE, 2
    SetVar 0x40A4, 3
    End

_0054:
    SetVar VAR_SHAYMIN_EVENT_STATE, 1
    End

_005C:
    ClearFlag FLAG_UNK_0x0194
    ClearFlag FLAG_UNK_0x0175
    SetVar 0x4095, 1
    SetFlag FLAG_UNK_0x0196
    SetFlag FLAG_UNK_0x01AE
    ClearFlag FLAG_UNK_0x0293
    End

_0078:
    SetFlag FLAG_UNK_0x023F
    SetVar 0x40F0, 1
    SetVar 0x40D4, 1
    End

_008A:
    End

_008C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar 0x8005, 0
    GoTo _00B8
    End

_00A2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar 0x8005, 1
    GoTo _00B8
    End

_00B8:
    CallIfEq 0x8005, 0, _0254
    CallIfEq 0x8005, 1, _0259
    CallIfEq 0x8005, 2, _025B
    GoTo _00E7
    End

_00E7:
    CallIfEq 0x8005, 0, _0260
    CallIfEq 0x8005, 1, _0265
    CallIfEq 0x8005, 2, _0267
    InitGlobalTextMenu 1, 1, 0, 0x800C
    AddMenuEntryImm 14, 0
    AddMenuEntryImm 15, 1
    AddMenuEntryImm 16, 2
    ShowMenu
    GoToIfEq 0x800C, 0, _0188
    GoToIfEq 0x800C, 1, _0146
    GoTo _0175
    End

_0146:
    CallIfEq 0x8005, 0, _026C
    CallIfEq 0x8005, 1, _0271
    CallIfEq 0x8005, 2, _0273
    GoTo _00E7
    End

_0175:
    GoTo _017D
    End

_017D:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0188:
    Message 7
    InitGlobalTextMenu 1, 1, 0, 0x800C
    AddMenuEntryImm 17, 0
    AddMenuEntryImm 18, 1
    AddMenuEntryImm 19, 2
    ShowMenu
    GoToIfEq 0x800C, 0, _01C3
    GoToIfEq 0x800C, 1, _01D1
    GoTo _0175
    End

_01C3:
    SetVar 0x8006, 0
    GoTo _01DF
    End

_01D1:
    SetVar 0x8006, 1
    GoTo _01DF
    End

_01DF:
    Message 8
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _0175
    GoTo _01FB
    End

_01FB:
    SetVar 0x4000, 0
    CallCommonScript 0x7D6
    SetVar 0x800C, 0x4000
    GoToIfEq 0x800C, 0, _0175
    GoTo _0220
    End

_0220:
    Message 9
    CloseMessage
    CallIfEq 0x8005, 0, _024E
    CallIfEq 0x8005, 1, _0250
    CallIfEq 0x8005, 2, _0252
    End

_024E:
    Return

_0250:
    Return

_0252:
    Return

_0254:
    Message 0
    Return

_0259:
    Return

_025B:
    Message 3
    Return

_0260:
    Message 1
    Return

_0265:
    Return

_0267:
    Message 4
    Return

_026C:
    Message 2
    Return

_0271:
    Return

_0273:
    Message 5
    Return
