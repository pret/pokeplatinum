#include "macros/scrcmd.inc"
#include "res/text/bank/grand_lake_valor_lakefront_west_house.h"


    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0001, _00D3
    ScrCmd_1E8 VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _004C
    GoToIfUnset FLAG_UNK_0x00AB, _0057
    ScrCmd_1E9 VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0057
    GoTo _0095

_004C:
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0057:
    CallIfUnset FLAG_UNK_0x00AB, _00DE
    SetFlag FLAG_UNK_0x00AB
    SetFlag FLAG_UNK_0x0001
    Message 1
    PlaySound SEQ_FANFA4
    WaitSound
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_1EA
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_0095:
    CallIfUnset FLAG_UNK_0x00AC, _00E4
    SetFlag FLAG_UNK_0x00AC
    SetFlag FLAG_UNK_0x0001
    Message 2
    PlaySound SEQ_FANFA4
    WaitSound
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_1EB
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_00D3:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00DE:
    ScrCmd_260 26
    Return

_00E4:
    ScrCmd_260 27
    Return

    .byte 0
    .byte 0
