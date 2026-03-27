#include "macros/scrcmd.inc"
#include "res/text/bank/route_213_gate_to_pastoria_city.h"


    ScriptEntry Route213GateToPastoriaCity_PokefanM
    ScriptEntry Route213GateToPastoriaCity_SchoolKidF
    ScriptEntryEnd

Route213GateToPastoriaCity_PokefanM:
    NPCMessage Route213GateToPastoriaCity_Text_FootprintsInSand
    End

Route213GateToPastoriaCity_SchoolKidF:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message Route213GateToPastoriaCity_Text_DoYouKnowBattleFrontier
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, Route213GateToPastoriaCity_YouDontKnow
    Message Route213GateToPastoriaCity_Text_YouKnow
    GoTo Route213GateToPastoriaCity_SchoolKidFEnd
    End

Route213GateToPastoriaCity_YouDontKnow:
    Message Route213GateToPastoriaCity_Text_YouDontKnow
    GoTo Route213GateToPastoriaCity_SchoolKidFEnd
    End

Route213GateToPastoriaCity_SchoolKidFEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
