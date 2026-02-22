#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_gate_b1f.h"


    ScriptEntry OreburghGateB1F_CyclistF
    ScriptEntryEnd

OreburghGateB1F_CyclistF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghGateB1F_Text_DoYouSeeThoseBumpsOnTheGround
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
