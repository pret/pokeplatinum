#include "macros/scrcmd.inc"
#include "res/text/bank/sandgem_town_counterpart_house_2f.h"


    ScriptEntry SandgemTownCounterpartHouse2F_PC
    ScriptEntryEnd

SandgemTownCounterpartHouse2F_PC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    BufferPlayerName 0
    Message SandgemTownCounterpartHouse2F_Text_PlayerCheckedThePCScreen
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
