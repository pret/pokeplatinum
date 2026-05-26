#include "comm_command_field.h"

#include <nitro.h>
#include <string.h>

#include "constants/communication/comm_command.h"

#include "struct_defs/comm_cmd_table.h"

#include "underground/manager.h"
#include "underground/mining.h"
#include "underground/pc.h"
#include "underground/player.h"
#include "underground/player_talk.h"
#include "underground/records.h"
#include "underground/secret_bases.h"
#include "underground/spheres.h"
#include "underground/traps.h"

#include "comm_command.h"
#include "comm_player_manager.h"
#include "field_comm_manager.h"
#include "trainer_case.h"
#include "trainer_info.h"
#include "unk_0204FA34.h"
#include "unk_0205001C.h"
#include "unk_02050548.h"
#include "unk_0205A0D8.h"
#include "unk_0205B33C.h"

static int CommPacketSizeOf_TrainerCase(void);
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

// clang-format off
static const CommCmdTable Unk_020F68A4[] = {
    [COMM_CMD_RECV_PLAYER_LOCATION - COMM_CMD_MAX_COMMON] = { CommCmd_RecvPlayerLocation, CommPacketSizeOf_RecvLocation, NULL },
    [COMM_CMD_RECV_PLAYER_LOCATION_AND_INIT - COMM_CMD_MAX_COMMON] = { CommCmd_RecvPlayerLocationAndInit, CommPacketSizeOf_RecvLocationAndInit, NULL },
    [COMM_CMD_VENDOR_TALK_REQUEST - COMM_CMD_MAX_COMMON] = { CommCmd_VendorTalkRequest, CommPacketSizeOf_NetId, NULL },
    [COMM_CMD_VENDOR_TALK - COMM_CMD_MAX_COMMON] = { CommCmd_UndergroundVendorTalk, CommPacketSizeOf_Nothing, NULL }, // 25
    [COMM_CMD_VENDOR_TALK_SERVER - COMM_CMD_MAX_COMMON] = { CommCmd_UndergroundVendorTalkServer, CommPacketSizeOf_NetId, NULL },
    [COMM_CMD_OPEN_MENU_REQUEST - COMM_CMD_MAX_COMMON] = { CommCmd_UndergroundOpenMenuRequest, CommPacketSizeOf_Nothing, NULL },
    [COMM_CMD_INTERACT_EVENT - COMM_CMD_MAX_COMMON] = { CommCmd_UndergroundInteractEvent, CommPacketSizeOf_InteractEvent, NULL },
    [COMM_CMD_OPEN_MENU_EVENT - COMM_CMD_MAX_COMMON] = { CommCmd_UndergroundOpenMenuEvent, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_TALK_EVENT - COMM_CMD_MAX_COMMON] = { CommCmd_UndergroundTalkEvent, CommPacketSizeOf_Variable, NULL }, // 30
    [COMM_CMD_PROCESS_ALL_DATA_SENT_MSG - COMM_CMD_MAX_COMMON] = { CommCmd_UndergroundProcessAllDataSentMessage, CommPacketSizeOf_Nothing, NULL },
    [COMM_CMD_TRY_PLACE_TRAP - COMM_CMD_MAX_COMMON] = { CommCmd_TryPlaceTrap, CommPacketSizeOf_NetId, NULL },
    [COMM_CMD_REMOVE_BURIED_TRAP_INDEX - COMM_CMD_MAX_COMMON] = { CommCmd_RemoveBuriedTrapAtIndex, CommPacketSizeOf_2Bytes_Unused, NULL }, // corresponding cmd never sent
    [COMM_CMD_PLACE_TRAP_RESULT - COMM_CMD_MAX_COMMON] = { CommCmd_PlaceTrapResult, CommPacketSizeOf_PlaceTrapResult, NULL },
    [COMM_CMD_LOAD_LINK_TRAPS - COMM_CMD_MAX_COMMON] = { CommCmd_LoadPlacedTraps, CommPacketSizeOf_AllTrapsPlacedPlayer, NULL }, // 35
    [COMM_CMD_RECV_LOAD_TRAPS - COMM_CMD_MAX_COMMON] = { CommCmd_RecvLoadTraps, CommPacketSizeOf_LoadTrapsResult, NULL },
    [COMM_CMD_TRIGGER_TRAP - COMM_CMD_MAX_COMMON] = { CommCmd_TriggeredTraps, CommPacketSizeOf_TriggeredTrap2, NULL },
    [COMM_CMD_CALL_SECOND_TRAP_EFFECT - COMM_CMD_MAX_COMMON] = { CommCmd_CallSecondTrapEffectServerFunc, CommPacketSizeOf_NetId, NULL },
    [COMM_CMD_START_SLIDE_ANIM - COMM_CMD_MAX_COMMON] = { CommCmd_StartSlideAnimation, CommPacketSizeOf_3Bytes_Unused, NULL }, // corresponding cmd never sent
    [COMM_CMD_ESCAPE_HOLE - COMM_CMD_MAX_COMMON] = { CommCmd_EscapeHole, CommPacketSizeOf_NetId, NULL },
    [COMM_CMD_ESCAPE_TRAP - COMM_CMD_MAX_COMMON] = { CommCmd_EscapeTrapServer, CommPacketSizeOf_Nothing, NULL },
    [COMM_CMD_ESCAPED_TRAP - COMM_CMD_MAX_COMMON] = { CommCmd_EscapedTrap, CommPacketSizeOf_EscapedTrap, NULL },
    [COMM_CMD_END_TRAP_EFFECT - COMM_CMD_MAX_COMMON] = { CommCmd_EndCurrentTrapEffectServer, CommPacketSizeOf_Nothing, NULL },
    [COMM_CMD_TRAP_HELP - COMM_CMD_MAX_COMMON] = { CommCmd_TrapHelp, CommPacketSizeOf_TrapHelpData, NULL },
    [COMM_CMD_TRIGGERD_TRAP_BITS - COMM_CMD_MAX_COMMON] = { CommCmd_TriggeredTrapBits, CommPacketSizeOf_NetId, NULL },
    [COMM_CMD_SEND_TRAP_RADAR_RESULTS - COMM_CMD_MAX_COMMON] = { CommCmd_SendTrapRadarResults, CommPacketSizeOf_Nothing, NULL },
    [COMM_CMD_RECV_TRAP_RADAR_RESULTS - COMM_CMD_MAX_COMMON] = { CommCmd_RecvTrapRadarResults, CommPacketSizeOf_TrapRadarResult, NULL },
    [COMM_CMD_UNDERGROUND_TOUCH_INPUT - COMM_CMD_MAX_COMMON] = { CommCmd_UndergroundTouchInput, CommPacketSizeOf_CoordinatesU16, NULL },
    [COMM_CMD_UNDERGROUND_RADAR_TRAP_RESULTS - COMM_CMD_MAX_COMMON] = { CommCmd_UndergroundTouchRadarTrapResults, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_UNDERGROUND_RADAR_MINING_RESULTS - COMM_CMD_MAX_COMMON] = { CommCmd_UndergroundTouchRadarMiningSpotResults, CommPacketSizeOf_Variable, NULL }, // 50
    [COMM_CMD_DISENGAGE_TRAP - COMM_CMD_MAX_COMMON] = { CommCmd_DisengagedTrap, CommPacketSizeOf_TriggeredTrap, NULL },
    [COMM_CMD_DELETE_PLAYER - COMM_CMD_MAX_COMMON] = { CommCmd_DeletePlayer, CommPacketSizeOf_NetId, NULL },
    [COMM_CMD_BASE_INFO - COMM_CMD_MAX_COMMON] = { CommCmd_SecretBaseInfo, CommPacketSizeOf_SecretBaseInfo, NULL },
    [COMM_CMD_ENTER_BASE - COMM_CMD_MAX_COMMON] = { CommCmd_EnterSecretBase, CommPacketSizeOf_SecretBaseInfo, NULL },
    [COMM_CMD_BASE_ENTRANCE_BUFFER - COMM_CMD_MAX_COMMON] = { CommCmd_SecretBaseEntranceBuffer, CommPacketSizeOf_BaseEntrancesBuffer, NULL }, // 55
    [COMM_CMD_CLEAR_TRANSITION_STATUS - COMM_CMD_MAX_COMMON] = { CommCmd_SecretBaseClearTransitioningStatus, CommPacketSizeOf_Nothing, NULL },
    [COMM_CMD_EXIT_BASE - COMM_CMD_MAX_COMMON] = { CommCmd_SecretBaseExit, CommPacketSizeOf_BaseExitEvent, NULL },
    [COMM_CMD_BASE_TRANSMITION_PROMPT - COMM_CMD_MAX_COMMON] = { CommCmd_SecretBaseTransitionPrompt, CommPacketSizeOf_BaseTransitionPromptEvent, NULL },
    [COMM_CMD_BASE_TRANSITION_EVENT - COMM_CMD_MAX_COMMON] = { CommCmd_SecretBaseTransitionEvent, CommPacketSizeOf_BaseTransitionEvent, NULL },
    [COMM_CMD_SECRET_BASE_GOOD_INTERACTION - COMM_CMD_MAX_COMMON] = { CommCmd_SecretBaseGoodInteraction, CommPacketSizeOf_GoodInteractionEvent, NULL }, // 60
    [COMM_CMD_ENTER_BASE_FAILED - COMM_CMD_MAX_COMMON] = { CommCmd_FailedSecretBaseEnter, CommPacketSizeOf_NetId, NULL },
    [COMM_CMD_FIELD_62 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_62, CommPacketSizeOf_NetId, NULL },
    [COMM_CMD_RETRIEVE_BURIED_SPHERES - COMM_CMD_MAX_COMMON] = { CommCmd_RetrieveBuriedSpheresRequest, CommPacketSizeOf_NetId, NULL },
    [COMM_CMD_INTERACT_MINING_SPOT - COMM_CMD_MAX_COMMON] = { CommCmd_InteractMiningSpot, CommPacketSizeOf_NetId, NULL },
    [COMM_CMD_CONFIRM_START_MINING_RESULT - COMM_CMD_MAX_COMMON] = { CommCmd_ConfirmStartMiningResult, CommPacketSizeOf_NetId, NULL }, // 65
    [COMM_CMD_CONFIRM_START_MINING - COMM_CMD_MAX_COMMON] = { CommCmd_ConfirmStartMining, CommPacketSizeOf_NetId, NULL },
    [COMM_CMD_END_MINING - COMM_CMD_MAX_COMMON] = { CommCmd_EndMiningGame, CommPacketSizeOf_NetId, NULL },
    [COMM_CMD_MINING_LINK_INPUT - COMM_CMD_MAX_COMMON] = { CommCmd_MiningLinkInput, CommPacketSizeOf_MiningLinkInput, NULL },
    [COMM_CMD_MINING_LINK_INPUT_SERVER - COMM_CMD_MAX_COMMON] = { CommCmd_MiningLinkInputServer, CommPacketSizeOf_MiningLinkInputWithNetID, NULL },
    [COMM_CMD_PLAYER_STATE_UNDERGROUND - COMM_CMD_MAX_COMMON] = { CommCmd_UndergroundPlayerState, CommPacketSizeOf_UndergroundPlayerState, NULL },
    [COMM_CMD_START_TREASURE_RADAR - COMM_CMD_MAX_COMMON] = { CommCmd_StartTreasureRadar, CommPacketSizeOf_Nothing, NULL },
    [COMM_CMD_MINING_SPOT_RADAR - COMM_CMD_MAX_COMMON] = { CommCmd_MiningSpotRadarResult, CommPacketSizeOf_MiningSpotRadarResult, NULL },
    [COMM_CMD_REQUEST_TALK_UPDATE_SERVER - COMM_CMD_MAX_COMMON] = { CommCmd_RequestUndergroundTalkStateAndUpdateServer, CommPacketSizeOf_TalkStateChangeRequest, NULL },
    [COMM_CMD_RESPONSE_TALK_UPDATE_SERVER - COMM_CMD_MAX_COMMON] = { CommCmd_RequestUndergroundTalkResponseStateAndUpdateServer, CommPacketSizeOf_TalkStateChangeRequest, NULL },
    [COMM_CMD_RESPONSE_REQUEST_TALK_UPDATE_SERVER - COMM_CMD_MAX_COMMON] = { CommCmd_UndergroundTalkResponseStateUpdateServer, CommPacketSizeOf_TalkStateChangeRequest, NULL }, // 75
    [COMM_CMD_TALK_UPDATE_SERVER - COMM_CMD_MAX_COMMON] = { CommCmd_UndergroundTalkStateUpdateServer, CommPacketSizeOf_TalkStateChangeRequest, NULL },
    [COMM_CMD_SEND_GIFT_SERVER - COMM_CMD_MAX_COMMON] = { CommCmd_UndergroundSendGiftServer, CommPacketSizeOf_Gift, NULL },
    [COMM_CMD_RECV_GIFT_OFFER - COMM_CMD_MAX_COMMON] = { CommCmd_UndergroundRecvGiftOffer, CommPacketSizeOf_Gift, NULL },
    [COMM_CMD_SEND_TALK_MSG_SERVER - COMM_CMD_MAX_COMMON] = { CommCmd_SendUndergroundTalkMessageServer, CommPacketSizeOf_TalkMessage, NULL },
    [COMM_CMD_RECV_TALK_MSG_SERVER - COMM_CMD_MAX_COMMON] = { CommCmd_RecvUndergroundTalkMessage, CommPacketSizeOf_TalkMessage, NULL },
    [COMM_CMD_SEND_UNDERGROUND_RECORD_SERVER - COMM_CMD_MAX_COMMON] = { CommCmd_SendUndergroundRecordServer, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_UNDERGROUND_RECORD - COMM_CMD_MAX_COMMON] = { CommCmd_UndergroundRecord, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_UNDERGROUND_PC_INTERACT - COMM_CMD_MAX_COMMON] = { CommCmd_IntreactUndergroundPC, CommPacketSizeOf_PCInteraction, NULL }, // 83
    [COMM_CMD_UNDERGROUND_FLAG_EVENT_TYPE - COMM_CMD_MAX_COMMON] = { CommCmd_UndergroundFlagEventType, CommPacketSizeOf_NetId, NULL },
    [COMM_CMD_UNDERGROUND_FLAG_EVENT - COMM_CMD_MAX_COMMON] = { CommCmd_UndergroundFlagEvent, CommPacketSizeOf_FlagEvent, NULL },
    [COMM_CMD_CREATE_SECRET_BASE_REQUEST - COMM_CMD_MAX_COMMON] = { CommCmd_CreateSecretBaseRequest, CommPacketSizeOf_NetId, NULL },
    [COMM_CMD_CREATE_SECRET_BASE_EVENT - COMM_CMD_MAX_COMMON] = { CommCmd_CreateSecretBaseEvent, CommPacketSizeOf_SecretBaseCreateEvent, NULL },
    [COMM_CMD_TRAINER_CASE_COPIED - COMM_CMD_MAX_COMMON] = { CommCmd_SetTrainerCaseCopiedFlag, CommPacketSizeOf_TrainerCase, FieldCommManager_GetTrainerCase },
    [COMM_CMD_UNDERGROUND_TRY_TAKE_FLAG - COMM_CMD_MAX_COMMON] = { CommCmd_AttemptUndergroundTakeFlag, CommPacketSizeOf_PCInteraction, NULL },
    [COMM_CMD_UNDERGROUND_TAKEN_FLAG - COMM_CMD_MAX_COMMON] = { CommCmd_UndergroundTakenFlag, CommPacketSizeOf_PCInteraction, NULL }, // 90
    [COMM_CMD_UNDERGROUND_FLAG_OWNER_INFO - COMM_CMD_MAX_COMMON] = { CommCmd_UndergroundHeldFlagOwnerInfo, CommPacketSizeOf_TrainerInfo, NULL },
    [COMM_CMD_UNDERGROUND_FLAG_OWNER_INFO_SERVER - COMM_CMD_MAX_COMMON] = { CommCmd_UndergroundHeldFlagOwnerInfoServer, CommPacketSizeOf_HeldFlagInfo, UndergroundPlayer_GetHeldFlagInfoBuffer },
    [COMM_CMD_UNDERGROUND_FLAG_OWNER_INFO_ACK - COMM_CMD_MAX_COMMON] = { CommCmd_UndergroundHeldFlagOwnerInfoAck, CommPacketSizeOf_NetId, NULL },
    [COMM_CMD_FIELD_93 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_93, CommPacketSizeOf_NetId, NULL },
    [COMM_CMD_UPDATE_MOVEMENT_BATTLE_ROOM - COMM_CMD_MAX_COMMON] = { CommCmd_UpdateBattleRoomMovement, CommPacketSizeOf_NetId, NULL }, // 95
    [COMM_CMD_UNDERGROUND_FLAG_RANK_UP - COMM_CMD_MAX_COMMON] = { CommCmd_UndergroundFlagRankUp, CommPacketSizeOf_NetId, NULL },
    [COMM_CMD_UNDERGROUND_FLAG_RANK_UP_EVENT - COMM_CMD_MAX_COMMON] = { CommCmd_UndergroundFlagRankUpEvent, CommPacketSizeOf_FlagRankUpEvent, NULL },
    [COMM_CMD_FIELD_98 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_98, TrainerInfo_Size, NULL },
    [COMM_CMD_FIELD_99 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_99, CommPacketSizeOf_NetId, NULL },
    [COMM_CMD_FIELD_100 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_100, CommPacketSizeOf_NetId, NULL },
    [COMM_CMD_FIELD_101 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_101, CommPacketSizeOf_NetId, NULL },
    [COMM_CMD_FIELD_102 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_102, CommPacketSizeOf_Nothing, NULL },
    [COMM_CMD_FIELD_103 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_103, CommPacketSizeOf_NetId, NULL },
    [COMM_CMD_FIELD_104 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_104, CommPacketSizeOf_Nothing, NULL },
    [COMM_CMD_FIELD_105 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_105, CommPacketSizeOf_TrainerCase, sub_0205BA5C },
    [COMM_CMD_FIELD_106 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_106, sub_0205B0E4, sub_0205B0F4 },
    [COMM_CMD_FIELD_107 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_107, CommPacketSizeOf_NetId, NULL },
    [COMM_CMD_FIELD_RECORD_108 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_Dummy, CommPacketSizeOf_NetId, NULL },
    [COMM_CMD_FIELD_RECORD_109 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_Dummy, CommPacketSizeOf_NetId, NULL },
    [COMM_CMD_FIELD_RECORD_110 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_Dummy, CommPacketSizeOf_NetId, NULL },
    [COMM_CMD_FIELD_RECORD_111 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_Dummy, CommPacketSizeOf_Nothing, NULL },
    [COMM_CMD_FIELD_RECORD_112 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_Dummy, sub_02099548, NULL },
    [COMM_CMD_FIELD_RECORD_113 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_Dummy, CommPacketSizeOf_Nothing, NULL },
    [COMM_CMD_FIELD_RECORD_114 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_Dummy, CommPacketSizeOf_Nothing, NULL },
    [COMM_CMD_FIELD_RECORD_115 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_Dummy, CommPacketSizeOf_Nothing, NULL },
    [COMM_CMD_FIELD_RECORD_116 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_Dummy, sub_02099530, NULL },
    [COMM_CMD_FIELD_RECORD_117 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_Dummy, CommPacketSizeOf_NetId, NULL },
    [COMM_CMD_FIELD_DRAWING_118 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_Dummy, sub_02099538, NULL },
    [COMM_CMD_FIELD_DRAWING_119 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_Dummy, sub_02099540, NULL },
    [COMM_CMD_FIELD_DRAWING_120 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_Dummy, sub_02099544, NULL },
    [COMM_CMD_FIELD_DRAWING_121 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_Dummy, CommPacketSizeOf_NetId, NULL },
    [COMM_CMD_FIELD_DRAWING_122 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_Dummy, CommPacketSizeOf_NetId, NULL },
    [COMM_CMD_FIELD_DRAWING_123 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_Dummy, CommPacketSizeOf_NetId, NULL },
    [COMM_CMD_FIELD_DRAWING_124 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_Dummy, CommPacketSizeOf_Nothing, NULL },
    [COMM_CMD_FIELD_DRAWING_125 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_Dummy, CommPacketSizeOf_Nothing, NULL },
    [COMM_CMD_FIELD_DRAWING_126 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_Dummy, sub_0209954C, NULL },
    [COMM_CMD_FIELD_DRAWING_127 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_Dummy, CommPacketSizeOf_Nothing, NULL },
    [COMM_CMD_FIELD_DRAWING_128 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_Dummy, CommPacketSizeOf_Nothing, NULL },
    [COMM_CMD_FIELD_DRAWING_129 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_Dummy, CommPacketSizeOf_Nothing, NULL },
    [COMM_CMD_FIELD_SPIN_TRADE_130 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_Dummy, sub_02099504, NULL },
    [COMM_CMD_FIELD_SPIN_TRADE_131 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_Dummy, sub_02099508, NULL },
    [COMM_CMD_BATTLE_HALL_SELECT_SPECIES_MESSAGE - COMM_CMD_MAX_COMMON] = { CommCmd_BattleHallSelectedSpeciesMsg, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_FIELD_133 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_133, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_FIELD_134 - COMM_CMD_MAX_COMMON] = { CommCmd_Field_134, CommPacketSizeOf_Variable, NULL }
};
// clang-format on

void CommCmd_Field_Dummy(int param0, int param1, void *param2, void *param3)
{
    return;
}

void CommFieldCmd_Init(void *param0)
{
    int v0 = sizeof(Unk_020F68A4) / sizeof(CommCmdTable);
    CommCmdManager_Init(Unk_020F68A4, v0, param0);
}

static int CommPacketSizeOf_TrainerCase(void)
{
    return sizeof(TrainerCase);
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
