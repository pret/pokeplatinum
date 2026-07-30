#include "macros/scrcmd.inc"
#include "res/text/bank/route_218.h"


    ScriptEntry Route218_ArrowSignpostCanalaveCity
    ScriptEntry Route218_ArrowSignpostJubilifeCity
    ScriptEntry Route218_Guitarist
    ScriptEntry Route218_Fisherman
    ScriptEntry Route218_ClefairySouth
    ScriptEntry Route218_ClefairyNorth
    ScriptEntry Route218_Pikachu
    ScriptEntryEnd

Route218_ArrowSignpostCanalaveCity:
    ShowArrowSign Route218_Text_SignCanalaveCity
    End

Route218_ArrowSignpostJubilifeCity:
    ShowArrowSign Route218_Text_SignJubilifeCity
    End

Route218_Guitarist:
    EventMessage Route218_Text_ClefairyCuterNow
    End

Route218_Fisherman:
    EventMessage Route218_Text_PikachuDazzle
    End

Route218_ClefairySouth:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    WaitSE SEQ_SE_CONFIRM
    PlayCry SPECIES_CLEFAIRY
    Message Route218_Text_ClefairyCryPippiih
    WaitCry
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route218_ClefairyNorth:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    WaitSE SEQ_SE_CONFIRM
    PlayCry SPECIES_CLEFAIRY
    Message Route218_Text_ClefairyCryPippippiih
    WaitCry
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route218_Pikachu:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    WaitSE SEQ_SE_CONFIRM
    PlayCry SPECIES_PIKACHU
    Message Route218_Text_PikachuCry
    WaitCry
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
