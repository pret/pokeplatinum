#include "macros/scrcmd.inc"
#include "res/text/bank/mt_coronet_1f_tunnel_room.h"
#include "res/field/events/events_mt_coronet_1f_tunnel_room.h"


    ScriptEntry MtCoronet1FTunnelRoom_GruntM
    ScriptEntryEnd

MtCoronet1FTunnelRoom_GruntM:
    PlaySE SE_CONFIRM_sseq_3
    LockAll
    FacePlayer
    Message MtCoronet1FTunnelRoom_Text_ImHopelesslyLost
    WaitButton
    CloseMessage
    ApplyMovement LOCALID_GRUNT_M, MtCoronet1FTunnelRoom_Movement_GruntMFaceNorth
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
MtCoronet1FTunnelRoom_Movement_GruntMFaceNorth:
    FaceNorth
    EndMovement
