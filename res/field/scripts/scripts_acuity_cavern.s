#include "macros/scrcmd.inc"
#include "res/text/bank/acuity_cavern.h"

#define LOCALID_UXIE 0

    .data

    ScriptEntry _000E
    ScriptEntry AcuityCavern_CheckShouldUxieBeRemoved
    ScriptEntry AcuityCavern_Uxie
    ScriptEntryEnd

_000E:
    SetFlag 0x9E3
    End

AcuityCavern_CheckShouldUxieBeRemoved:
    GoToIfSet 142, AcuityCavern_RemoveUxie
    End

AcuityCavern_RemoveUxie:
    SetFlag FLAG_UXIE_DISAPPEARED
    RemoveObject LOCALID_UXIE
    ClearFlag 142
    End

AcuityCavern_Uxie:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    PlayCry SPECIES_UXIE, 0
    Message acuity_cavern_uxie_battle_intro
    CloseMessage
    SetFlag 142
    StartLegendaryBattle SPECIES_UXIE, 50
    ClearFlag 142
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, AcuityCavern_LostBattle
    CheckDidNotCapture 0x800C
    GoToIfEq 0x800C, TRUE, AcuityCavern_UxieDisappeared
    SetFlag FLAG_UXIE_CAUGHT
    ReleaseAll
    End

AcuityCavern_UxieDisappeared:
    Message acuity_cavern_uxie_disappeared
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

AcuityCavern_LostBattle:
    BlackOutFromBattle
    ReleaseAll
    End

    .byte 0
