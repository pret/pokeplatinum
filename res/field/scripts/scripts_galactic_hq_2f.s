#include "macros/scrcmd.inc"
#include "res/text/bank/galactic_hq_2f.h"


    ScriptEntry GalacticHQ2F_Bed
    ScriptEntry GalacticHQ2F_SignNapRoom
    ScriptEntry GalacticHQ2F_SignTVRoom
    ScriptEntry GalacticHQ2F_SignCredo
    ScriptEntry GalacticHQ2F_KitchenSink
    ScriptEntry GalacticHQ2F_Report
    ScriptEntry GalacticHQ2F_Refrigerator
    ScriptEntryEnd

GalacticHQ2F_Bed:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message GalacticHQ2F_Text_TakeARest
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, GalacticHQ2F_TakeARest
    GoTo GalacticHQ2F_BedEnd

GalacticHQ2F_TakeARest:
    BufferPlayerName 0
    Message GalacticHQ2F_Text_FellAsleep
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    PlayFanfare SEQ_ASA
    WaitFanfare
    HealParty
    FadeScreenIn
    WaitFadeScreen
    BufferPlayerName 0
    Message GalacticHQ2F_Text_PokemonBecameFullyHealed
    WaitButton
    CloseMessage
    ReleaseAll
    End

GalacticHQ2F_BedEnd:
    CloseMessage
    ReleaseAll
    End

GalacticHQ2F_SignNapRoom:
    EventMessage GalacticHQ2F_Text_TeamGalacticNapRoom
    End

GalacticHQ2F_SignTVRoom:
    EventMessage GalacticHQ2F_Text_TeamGalacticTVRoom
    End

GalacticHQ2F_SignCredo:
    EventMessage GalacticHQ2F_Text_TeamGalacticCredo
    End

GalacticHQ2F_KitchenSink:
    EventMessage GalacticHQ2F_Text_KitchenSinkNotice
    End

GalacticHQ2F_Refrigerator:
    EventMessage GalacticHQ2F_Text_RefrigeratorNotice
    End

GalacticHQ2F_Report:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message GalacticHQ2F_Text_ReadReport
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, GalacticHQ2F_PutReportBack
    Message GalacticHQ2F_Text_StatuePlateText1
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, GalacticHQ2F_PutReportBack
    Message GalacticHQ2F_Text_StatuePlateText2
    GoTo GalacticHQ2F_PutReportBack
    End

GalacticHQ2F_PutReportBack:
    BufferPlayerName 0
    Message GalacticHQ2F_Text_PutReportBack
    GoTo GalacticHQ2F_ReportEnd
    End

GalacticHQ2F_ReportEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End
