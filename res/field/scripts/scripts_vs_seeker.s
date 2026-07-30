#include "macros/scrcmd.inc"
#include "res/text/bank/vs_seeker.h"


    ScriptEntry VsSeeker_Use
    ScriptEntryEnd

VsSeeker_Use:
    SetVar VAR_RESULT, 0
    StartVsSeeker VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, VS_SEEKER_USE_RESULT_OK, VsSeeker_OK
    GoToIfEq VAR_0x8008, VS_SEEKER_USE_RESULT_NO_BATTERY, VsSeeker_NoBattery
    GoToIfEq VAR_0x8008, VS_SEEKER_USE_RESULT_NO_TRAINERS, VsSeeker_NoTrainers
    GoTo VsSeeker_NoTrainersReadyToBattle

VsSeeker_OK:
    ReleaseAll
    End

VsSeeker_NoBattery:
    Message VsSeeker_Text_BatteryIsntChargedEnough
    GoTo VsSeeker_End

VsSeeker_NoTrainers:
    Message VsSeeker_Text_NoTrainersWithinRange
    GoTo VsSeeker_End

VsSeeker_NoTrainersReadyToBattle:
    WaitTime 30, VAR_RESULT
    Message VsSeeker_Text_NoTrainersReadyToBattle
    GoTo VsSeeker_End

VsSeeker_End:
    WaitButton
    CloseMessage
    ReleaseAll
    End
