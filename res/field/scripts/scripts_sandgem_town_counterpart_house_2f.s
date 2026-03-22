#include "macros/scrcmd.inc"
#include "res/text/bank/sandgem_town_counterpart_house_2f.h"


    ScriptEntry SandgemTownCounterpartHouse2F_PC
    ScriptEntryEnd

SandgemTownCounterpartHouse2F_PC:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    BufferPlayerName 0
    Message SandgemTownCounterpartHouse2F_Text_PlayerCheckedThePCScreen
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
