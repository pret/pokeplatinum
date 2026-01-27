#include "unk_02099500.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02039A58.h"

#include "overlay023/ov23_0223E140.h"
#include "overlay023/secret_bases.h"
#include "overlay023/underground_manager.h"
#include "overlay023/underground_pc.h"
#include "overlay023/underground_player.h"
#include "overlay023/underground_player_talk.h"
#include "overlay023/underground_records.h"
#include "overlay023/underground_spheres.h"
#include "overlay023/underground_traps.h"

#include "comm_player_manager.h"
#include "field_comm_manager.h"
#include "trainer_card.h"
#include "trainer_info.h"
#include "unk_02032798.h"
#include "unk_0204FA34.h"
#include "unk_0205001C.h"
#include "unk_02050548.h"
#include "unk_0205A0D8.h"
#include "unk_0205B33C.h"

static int CommPacketSizeOf_TrainerCard(void);
static int sub_02099548(void);
static int sub_0209954C(void);

static int CommPacketSizeOf_3Bytes_Unused(void)
{
    return 3;
}

static int sub_02099504(void)
{
    return 24;
}

static int sub_02099508(void)
{
    return 236 * 6 + 4 * 2;
}

static const CommCmdTable Unk_020F68A4[] = {
    { CommPlayer_RecvLocation, CommPacketSizeOf_RecvLocation, NULL },
    { CommPlayer_RecvLocationAndInit, CommPacketSizeOf_RecvLocationAndInit, NULL },
    { UndergroundMan_ProcessVendorTalkRequest, CommPacketSizeOf_NetId, NULL },
    { UndergroundPlayer_ProcessVendorTalk, CommPacketSizeOf_Nothing, NULL }, // 25
    { UndergroundPlayer_ProcessVendorTalkServer, CommPacketSizeOf_NetId, NULL },
    { UndergroundPlayer_ProcessOpenMenuRequest, CommPacketSizeOf_Nothing, NULL },
    { UndergroundMan_ProcessInteractEvent, CommPacketSizeOf_InteractEvent, NULL },
    { UndergroundPlayer_ProcessOpenMenuEvent, CommPacketSizeOf_Variable, NULL },
    { UndergroundPlayer_ProcessTalkEvent, CommPacketSizeOf_Variable, NULL },
    { ov23_022433BC, CommPacketSizeOf_Nothing, NULL },
    { UndergroundTraps_TryPlaceTrap, CommPacketSizeOf_NetId, NULL },
    { UndergroundTraps_RemoveBuriedTrapAtIndex_Unused, CommPacketSizeOf_2Bytes_Unused, NULL }, // corresponding cmd never sent
    { UndergroundTraps_ProcessPlaceTrapResult, CommPacketSizeOf_PlaceTrapResult, NULL },
    { UndergroundTraps_LoadLinkPlacedTraps, CommPacketSizeOf_AllTrapsPlacedPlayer, NULL },
    { UndergroundTraps_ReceiveLoadTrapsResult, CommPacketSizeOf_LoadTrapsResult, NULL },
    { UndergroundTraps_HandleTriggeredTrap, CommPacketSizeOf_TriggeredTrap2, NULL },
    { UndergroundTraps_CallSecondTrapEffectServerFunc, CommPacketSizeOf_NetId, NULL },
    { UndergroundTraps_StartLinkSlideAnimation_Unused, CommPacketSizeOf_3Bytes_Unused, NULL }, // corresponding cmd never sent
    { UndergroundTraps_EscapeHole, CommPacketSizeOf_NetId, NULL },
    { UndergroundTraps_EscapeTrapServer, CommPacketSizeOf_Nothing, NULL },
    { UndergroundTraps_ProcessEscapedTrap, CommPacketSizeOf_EscapedTrap, NULL },
    { UndergroundTraps_EndCurrentTrapEffectServer, CommPacketSizeOf_Nothing, NULL },
    { UndergroundTraps_ProcessTrapHelp, CommPacketSizeOf_TrapHelpData, NULL },
    { UndergroundTraps_ProcessTriggeredTrapBits, CommPacketSizeOf_NetId, NULL },
    { UndergroundTraps_QueueSendTrapRadarResults, CommPacketSizeOf_Nothing, NULL },
    { UndergroundTraps_ReceiveTrapRadarResults, CommPacketSizeOf_TrapRadarResult, NULL },
    { UndergroundMan_ProcessTouchInput, CommPacketSizeOf_Coordinates, NULL },
    { UndergroundMan_ProcessTouchRadarTrapResults, CommPacketSizeOf_Variable, NULL },
    { UndergroundMan_ProcessTouchRadarMiningSpotResults, CommPacketSizeOf_Variable, NULL }, // 50
    { UndergroundTraps_ProcessDisengagedTrap, CommPacketSizeOf_TriggeredTrap, NULL },
    { CommPlayer_RecvDelete, CommPacketSizeOf_NetId, NULL },
    { SecretBases_ProcessBaseInfo, CommPacketSizeOf_SecretBaseInfo, NULL },
    { SecretBases_ProcessBaseEnter, CommPacketSizeOf_SecretBaseInfo, NULL },
    { SecretBases_ProcessBaseEntrancesBuffer, CommPacketSizeOf_BaseEntrancesBuffer, NULL }, // 55
    { SecretBases_ClearTransitioningStatus, CommPacketSizeOf_Nothing, NULL },
    { SecretBases_ProcessBaseExitEvent, CommPacketSizeOf_BaseExitEvent, NULL },
    { SecretBases_ProcessBaseTransitionPromptEvent, CommPacketSizeOf_BaseTransitionPromptEvent, NULL },
    { SecretBases_ProcessBaseTransitionEvent, CommPacketSizeOf_BaseTransitionEvent, NULL },
    { SecretBases_ProcessGoodInteractionEvent, CommPacketSizeOf_GoodInteractionEvent, NULL }, // 60
    { SecretBases_ProcessFailedBaseEnter, CommPacketSizeOf_NetId, NULL },
    { sub_02058018, CommPacketSizeOf_NetId, NULL },
    { UndergroundSpheres_RetrieveBuriedSphere, CommPacketSizeOf_NetId, NULL },
    { ov23_0223E9D4, CommPacketSizeOf_NetId, NULL },
    { ov23_0223EAF8, CommPacketSizeOf_NetId, NULL },
    { ov23_0223EB8C, CommPacketSizeOf_NetId, NULL },
    { ov23_0223EBC0, CommPacketSizeOf_NetId, NULL },
    { ov23_0223EBE4, ov23_0223EBFC, NULL },
    { Mining_TakeLinkInput, ov23_0223EC30, NULL },
    { UndergroundMan_ProcessPlayerState, CommPacketSizeOf_UndergroundPlayerState, NULL },
    { ov23_022413A0, CommPacketSizeOf_Nothing, NULL },
    { ov23_0224142C, ov23_022414D0, NULL },
    { UndergroundTalk_RequestLinkTalkStateUpdateServer, CommPacketSizeOf_TalkStateChangeRequest, NULL },
    { UndergroundTalkResponse_RequestLinkTalkStateUpdateServer, CommPacketSizeOf_TalkStateChangeRequest, NULL },
    { UndergroundTalkResponse_HandleLinkTalkStateUpdateServer, CommPacketSizeOf_TalkStateChangeRequest, NULL }, // 75
    { UndergroundTalk_HandleLinkTalkStateUpdateServer, CommPacketSizeOf_TalkStateChangeRequest, NULL },
    { UndergroundTalk_SendGiftServer, CommPacketSizeOf_Gift, NULL },
    { UndergroundTalkResponse_ReceiveGiftOffer, CommPacketSizeOf_Gift, NULL },
    { UndergroundTalk_SendTalkMessageServer, CommPacketSizeOf_TalkMessage, NULL },
    { UndergroundTalk_ReceiveTalkMessage, CommPacketSizeOf_TalkMessage, NULL },
    { UndergroundRecords_SendRecordServer, CommPacketSizeOf_Variable, NULL },
    { UndergroundRecords_ProcessLinkRecord, CommPacketSizeOf_Variable, NULL },
    { UndergroundPC_ProcessPCInteraction, CommPacketSizeOf_PCInteraction, NULL }, // 83
    { UndergroundPlayer_ProcessFlagEventType, CommPacketSizeOf_NetId, NULL },
    { UndergroundPlayer_ProcessFlagEvent, CommPacketSizeOf_FlagEvent, NULL },
    { SecretBases_ProcessBaseCreateRequest, CommPacketSizeOf_NetId, NULL },
    { SecretBases_ProcessBaseCreateEvent, CommPacketSizeOf_SecretBaseCreateEvent, NULL },
    { sub_02059EAC, CommPacketSizeOf_TrainerCard, sub_02059EBC },
    { UndergroundPC_ProcessTakeFlagAttempt, CommPacketSizeOf_PCInteraction, NULL },
    { UndergroundPC_ProcessTakenFlag, CommPacketSizeOf_PCInteraction, NULL }, // 90
    { UndergroundPlayer_ProcessHeldFlagOwnerInfo, CommPacketSizeOf_TrainerInfo, NULL },
    { UndergroundPlayer_ProcessHeldFlagOwnerInfoServer, CommPacketSizeOf_HeldFlagInfo, ov23_0224AAA0 },
    { UndergroundPlayer_ProcessHeldFlagOwnerInfoAck, CommPacketSizeOf_NetId, NULL },
    { sub_02059180, CommPacketSizeOf_NetId, NULL },
    { sub_02059D0C, CommPacketSizeOf_NetId, NULL }, // 95
    { SecretBases_ProcessFlagRankUp, CommPacketSizeOf_NetId, NULL },
    { SecretBases_ProcessFlagRankUpEvent, CommPacketSizeOf_FlagRankUpEvent, NULL },
    { sub_0205B988, TrainerInfo_Size, NULL },
    { sub_0205B9AC, CommPacketSizeOf_NetId, NULL },
    { sub_0205B98C, CommPacketSizeOf_NetId, NULL },
    { sub_0205BA6C, CommPacketSizeOf_NetId, NULL },
    { sub_0205B990, CommPacketSizeOf_Nothing, NULL },
    { sub_0205B9C4, CommPacketSizeOf_NetId, NULL },
    { sub_0205B9E0, CommPacketSizeOf_Nothing, NULL },
    { sub_0205BA08, CommPacketSizeOf_TrainerCard, sub_0205BA5C },
    { sub_0205B0C0, sub_0205B0E4, sub_0205B0F4 },
    { sub_0205B110, CommPacketSizeOf_NetId, NULL },
    { sub_02099510, CommPacketSizeOf_NetId, NULL },
    { sub_02099510, CommPacketSizeOf_NetId, NULL },
    { sub_02099510, CommPacketSizeOf_NetId, NULL },
    { sub_02099510, CommPacketSizeOf_Nothing, NULL },
    { sub_02099510, sub_02099548, NULL },
    { sub_02099510, CommPacketSizeOf_Nothing, NULL },
    { sub_02099510, CommPacketSizeOf_Nothing, NULL },
    { sub_02099510, CommPacketSizeOf_Nothing, NULL },
    { sub_02099510, sub_02099530, NULL },
    { sub_02099510, CommPacketSizeOf_NetId, NULL },
    { sub_02099510, sub_02099538, NULL },
    { sub_02099510, sub_02099540, NULL },
    { sub_02099510, sub_02099544, NULL },
    { sub_02099510, CommPacketSizeOf_NetId, NULL },
    { sub_02099510, CommPacketSizeOf_NetId, NULL },
    { sub_02099510, CommPacketSizeOf_NetId, NULL },
    { sub_02099510, CommPacketSizeOf_Nothing, NULL },
    { sub_02099510, CommPacketSizeOf_Nothing, NULL },
    { sub_02099510, sub_0209954C, NULL },
    { sub_02099510, CommPacketSizeOf_Nothing, NULL },
    { sub_02099510, CommPacketSizeOf_Nothing, NULL },
    { sub_02099510, CommPacketSizeOf_Nothing, NULL },
    { sub_02099510, sub_02099504, NULL },
    { sub_02099510, sub_02099508, NULL },
    { sub_0204FA34, CommPacketSizeOf_Variable, NULL },
    { sub_0205001C, CommPacketSizeOf_Variable, NULL },
    { sub_02050548, CommPacketSizeOf_Variable, NULL }
};

void sub_02099510(int param0, int param1, void *param2, void *param3)
{
    return;
}

void CommFieldCmd_Init(void *param0)
{
    int v0 = sizeof(Unk_020F68A4) / sizeof(CommCmdTable);
    CommCmd_Init(Unk_020F68A4, v0, param0);
}

static int CommPacketSizeOf_TrainerCard(void)
{
    return sizeof(TrainerCard);
}

int sub_02099530(void)
{
    return 3000 + 8;
}

int sub_02099538(void)
{
    return 1008;
}

int sub_02099540(void)
{
    return 10;
}

int sub_02099544(void)
{
    return 10 * 5;
}

static int sub_02099548(void)
{
    return 4;
}

static int sub_0209954C(void)
{
    return 4;
}
