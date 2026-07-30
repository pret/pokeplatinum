#include "macros/scrcmd.inc"
#include "res/text/bank/communication_club.h"


    ScriptEntry CommunicationClub_Waitress
    ScriptEntry CommunicationClub_AskEndCommunication
    ScriptEntry CommunicationClub_EndCommunication
    ScriptEntryEnd

CommunicationClub_Waitress:
    NPCMessage CommunicationClub_Text_TakePositionStartBattle
    End

CommunicationClub_AskEndCommunication:
    LockAll
    Message CommunicationClub_Text_OKToEndCommuncation
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, CommunicationClub_EndCommunication
    GoToIfEq VAR_RESULT, MENU_NO, CommunicationClub_DontEndCommunication
    End

CommunicationClub_EndCommunication:
    ScrCmd_0A2
    Message CommunicationClub_Text_EndingCommunication
    ScrCmd_135 94
    CloseMessage
    ScrCmd_2BB
    ScrCmd_204
    ReleaseAll
    End

CommunicationClub_DontEndCommunication:
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
