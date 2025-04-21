#include "macros/scrcmd.inc"
#include "res/text/bank/acuity_cavern.h"

#define LOCALID_UXIE 0

    .data

    ScriptEntry _000E
    ScriptEntry AcuityCavern_CheckShouldUxieBeRemoved
    ScriptEntry AcuityCavern_Uxie
    ScriptEntryEnd

_000E:
    SetFlag FLAG_UNK_0x09E3
    End

AcuityCavern_CheckShouldUxieBeRemoved:
    GoToIfSet FLAG_UNK_0x008E, AcuityCavern_RemoveUxie
    End

AcuityCavern_RemoveUxie:
    SetFlag FLAG_UXIE_DISAPPEARED
    RemoveObject LOCALID_UXIE
    ClearFlag FLAG_UNK_0x008E
    End

AcuityCavern_Uxie:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    PlayCry SPECIES_UXIE
    Message AcuityCavern_Text_UxieCry
    CloseMessage
    SetFlag FLAG_UNK_0x008E
    StartLegendaryBattle SPECIES_UXIE, 50
    ClearFlag FLAG_UNK_0x008E
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, AcuityCavern_LostBattle
    CheckDidNotCapture VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, AcuityCavern_UxieDisappeared
    SetFlag FLAG_UXIE_CAUGHT
    ReleaseAll
    End

AcuityCavern_UxieDisappeared:
    Message AcuityCavern_Text_UxieDisappeared
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

AcuityCavern_LostBattle:
    BlackOutFromBattle
    ReleaseAll
    End

    .byte 0
