#include "macros/scrcmd.inc"
#include "res/text/bank/sandgem_town_counterpart_house_2f.h"


    ScriptEntry SandgemTownCounterpartHouse2F_PC
    ScriptEntryEnd

SandgemTownCounterpartHouse2F_PC:
    PlaySE SE_CONFIRM_sseq_3
    LockAll
    BufferPlayerName 0
    Message SandgemTownCounterpartHouse2F_Text_PlayerCheckedPCScreen
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
