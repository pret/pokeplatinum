#include "macros/scrcmd.inc"
#include "res/text/bank/grand_lake_valor_lakefront_west_house.h"


    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0001, _00D3
    CheckLocalDexCompleted VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _004C
    GoToIfUnset FLAG_LOCAL_DEX_DIPLOMA_RECEIVED, _0057
    CheckNationalDexCompleted VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0057
    GoTo _0095

_004C:
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0057:
    CallIfUnset FLAG_LOCAL_DEX_DIPLOMA_RECEIVED, _00DE
    SetFlag FLAG_LOCAL_DEX_DIPLOMA_RECEIVED
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
    CallIfUnset FLAG_NATIONAL_DEX_DIPLOMA_RECEIVED, _00E4
    SetFlag FLAG_NATIONAL_DEX_DIPLOMA_RECEIVED
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
    IncrementTrainerScore2 TRAINER_SCORE_EVENT_LOCAL_DEX_DIPLOMA_RECEIVED
    Return

_00E4:
    IncrementTrainerScore2 TRAINER_SCORE_EVENT_NATIONAL_DEX_DIPLOMA_RECEIVED
    Return

    .balign 4, 0
