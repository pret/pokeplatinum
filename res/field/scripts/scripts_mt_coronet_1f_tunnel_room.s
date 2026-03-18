#include "macros/scrcmd.inc"
#include "res/text/bank/mt_coronet_1f_tunnel_room.h"
#include "res/field/events/events_mt_coronet_1f_tunnel_room.h"


    ScriptEntry MtCoronet1FTunnelRoom_GruntM
    ScriptEntryEnd

MtCoronet1FTunnelRoom_GruntM:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message MtCoronet1FTunnelRoom_Text_ImHopelesslyLost
    WaitABXPadPress
    CloseMessage
    ApplyMovement LOCALID_GRUNT_M, MtCoronet1FTunnelRoom_Movement_GruntMFaceNorth
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
MtCoronet1FTunnelRoom_Movement_GruntMFaceNorth:
    FaceNorth
    EndMovement
