#include "unk_020366A0.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "constants/communication/comm_type.h"
#include "constants/communication/comm_error.h"
#include "nintendo_wfc/main.h"
#include "overlay065/struct_ov65_0222F6EC.h"
#include "overlay066/ov66_022324F0.h"

#include "battle_regulation.h"
#include "bg_window.h"
#include "communication_information.h"
#include "communication_system.h"
#include "heap.h"
#include "network_icon.h"
#include "save_player.h"
#include "savedata.h"
#include "sound_playback.h"
#include "system.h"
#include "trainer_info.h"
#include "unk_0203266C.h"
#include "unk_02032798.h"
#include "unk_02033200.h"
#include "unk_02039814.h"
#include "wireless_manager.h"

typedef void (*CommTaskFunc)(void);

typedef struct {
    void *unk_00;
    u8 unk_04[6];
    MATHRandContext32 rand;
    CommTaskFunc task;
    SaveData *saveData;
    TrainerInfo *trainerInfo;
    const BattleRegulation *battleRegulation;
    UnkStruct_ov65_0222F6EC unk_34;
    int timer;
    u16 retryConnectionAttempts;
    u8 maxNumConnection;
    u8 connectedCount;
    u8 unk_48;
    u8 connectionID;
    u8 commType;
    u8 contestRegulation;
    u8 unk_4C;
    s8 unk_4D;
    u8 unk_4E;
    u8 errorDisconnect;
    u8 unk_50;
    u8 unk_51;
    u8 unk_52;
    u8 pauseUnion;
    u8 unk_54;
    u8 initializeAsServer; //always FALSE
    u8 unk_56;
    u8 doNotConnectUnderground;
    u8 unk_58;
    u8 commError;
    u8 pauseUnderground;
    const void *unk_5C;
    u8 lobbyLoginSuccess;
    u8 unk_61[3];
} CommunicationManager;

static void CommManager_SetTask(CommTaskFunc param0, int param1);
static void CommTask_StartUnderground(void);
static void sub_02036E08(void);
static void CommTask_ReinitUnderground(void);
static void CommTask_SearchUndergroundClient(void);
static void sub_02036EDC(void);
static void sub_02036F44(void);
static void CommTask_ConnectUndergroundClient(void);
static void CommTask_ResetUnderground(void);
static void CommTask_ResetUndergroundServer(void);
static void sub_02036FBC(void);
static void CommTask_InitUndergroundServer(void);
static void CommTask_WaitUndergroundServer(void);
static void sub_02037094(void);
static void CommTask_ConnectUndergroundServer(void);
static void CommManager_EndConnectionUnderground(void);
static void CommTask_RestartSecretBase(void);
static void CommTask_StartBattleServer(void);
static void CommTask_WaitBattleServer(void);
static void sub_0203718C(void);
static void CommTask_StartBattleClient(void);
static void sub_02037208(void);
static void CommTask_ConnectBattleClient(void);
static void sub_02037238(void);
static void CommTask_WaitBattleClient(void);
static void sub_020372DC(void);
static void sub_020372F0(void);
static void sub_02037270(void);
static void sub_02037284(void);
static void CommTask_StartWirelessClient(void);
static void CommTask_StartUnion(void);
static void CommTask_SearchUnionClient(void);
static void CommTask_EndUnionClient(void);
static void CommTask_InitializeServerUnion(void);
static void sub_020374F4(void);
static void CommTask_RestartUnionClient(void);
static void sub_020376A8(void);
static void sub_020375A4(void);
static void sub_020375BC(void);
static void sub_020375E8(void);
static void sub_0203764C(void);
static void CommTask_SuccededConnectUnionClient(void);
static void CommTask_FailedConnectUnionClient(void);
static void CommTask_ResetUnionClient(void);
static void CommTask_ConnectUnionServer(void);
static void CommTask_PauseUnionServer(void);
static void CommTask_StartRandomBattleServer(void);
static void CommTask_StartMysteryGiftClient(void);
static void CommTask_None(void);
static void CommTask_End(void);
static void sub_02037354(void);
static void sub_0203739C(void);
static void CommTask_EndConnection(void);
static void sub_02038164(void);
static void sub_02038314(void);
static void CommTask_StartWifiLobby(void);
static void CommTask_LogInWifiLobby(void);
static void CommTask_ConnectWifiLobby(void);
static void CommTask_LogoutWifiLobby(void);
static void CommTask_WaitLogoutWifiLobby(void);
static void CommTask_WifiLobbyError(void);
static void CommTask_ConnectWifiLobbyP2P(void);
static void CommTask_WaitWifiLobbyMatchServerP2P(void);
static void CommTask_DisconnectWifiLobbyP2P(void);
static void CommTask_WifiLobbyTimeout(void);
static BOOL CommManager_ProcessWifiLobbyDWCError(int param0);
static BOOL CommManager_UpdateWifiLobby(void);
static BOOL CommManager_UpdateWifiLobbyCommon(void);
static BOOL CommManager_UpdateWifiLobbyMatchmaking(u32 *param0);
static void CommTask_StartDrawClient(void);
static void CommTask_InitDrawClient(void);
static void CommTask_ConnectDraw(void);
static void CommTask_ConnectingDraw(void);

static CommunicationManager *sCommMan = NULL;
static u8 Unk_02100A20[] = { "FREAK" };
static u8 Unk_02100A30[] = { " GAME" };
static u8 Unk_02100A28[] = { " FULL" };

/**
 * @brief Initializes sCommMan with the given commType
 *
 * @param SaveData
 * @param commType
 */
static void CommManager_Initialize(SaveData *saveData, int commType)
{
    if (sCommMan != NULL) {
        return;
    }

    GF_ASSERT(saveData);
    WirelessDriver_Init();

    sCommMan = (CommunicationManager *)Heap_Alloc(HEAP_ID_COMMUNICATION, sizeof(CommunicationManager));
    MI_CpuFill8(sCommMan, 0, sizeof(CommunicationManager));

    sCommMan->timer = 50;
    sCommMan->unk_4E = 1;
    sCommMan->saveData = saveData;
    sCommMan->trainerInfo = SaveData_GetTrainerInfo(saveData);
    sCommMan->maxNumConnection = 1 + 1;
    sCommMan->unk_48 = 0;
    sCommMan->pauseUnion = FALSE;
    sCommMan->commType = commType;

    CommSys_Seed(&sCommMan->rand);
    CommCmd_Init(NULL, 0, NULL);

    if ((commType != COMM_TYPE_UNION) && (commType != COMM_TYPE_PARTY) && (commType != COMM_TYPE_MYSTERY_GIFT)) {
        NetworkIcon_Init();
    }
}

/**
 * @brief Frees sCommMan, if it exists
 */
static void CommMan_Free(void)
{
    if (sCommMan == NULL) {
        return;
    }

    sub_020327E0();

    if (sCommMan->unk_00) {
        Heap_Free(sCommMan->unk_00);
    }

    if (CommMan_IsConnectedToWifi()) {
        Heap_Destroy(HEAP_ID_NINTENDO_WFC);
    }

    NetworkIcon_Destroy();
    WirelessDriver_Shutdown();
    Heap_Free(sCommMan);
    Heap_Destroy(HEAP_ID_COMMUNICATION);

    sCommMan = NULL;
}

/**
 * @brief Checks if sCommMan is initialized
 *
 * @return TRUE if sCommMan is not NULL
 */
BOOL CommMan_IsInitialized(void)
{
    if (sCommMan) {
        return TRUE;
    }

    return FALSE;
}

/**
 * @brief Initializes the Communication Manager for Underground play
 */
void CommManager_StartUnderground(SaveData *saveData)
{
    if (sCommMan != NULL) {
        return;
    }

    Heap_CreateAtEnd(HEAP_ID_APPLICATION, HEAP_ID_COMMUNICATION, 0xF000);
    CommManager_Initialize(saveData, COMM_TYPE_UNDERGROUND);

    sCommMan->contestRegulation = 0;

    CommManager_SetTask(CommTask_StartUnderground, 50);
}

/**
 * @brief Shuts down and ends the Communication Manager for Underground play
 */
void CommManager_EndUnderground(void)
{
    if (sCommMan == NULL) {
        return;
    }

    CommSys_StartShutdown();
    CommManager_SetTask(CommManager_EndConnectionUnderground, 0);
}

/**
 * @brief Resets the Commmunication Manager for the underground
 */
void CommManager_ResetUnderground(void)
{
    CommSys_Reset();
    sCommMan->retryConnectionAttempts = CommSys_CurNetId();
    CommManager_SetTask(CommTask_ResetUnderground, 0);
}

/**
 * @brief Sets a flag to pause underground connection that pauses the client search process
 *
 * @param pause
 */
void CommManager_SetPauseUnderground(BOOL pause)
{
    sCommMan->pauseUnderground = pause;
}

/**
 * @brief Resets the Communication Manager as a server for the underground
 */
void CommManager_ResetUndergroundServer(void)
{
    CommManager_SetTask(CommTask_ResetUndergroundServer, 0);
}

/**
 * @brief Checks if the current CommManager task is an underground connecting task. Unused
 *
 * @return TRUE if the current sCommMan->task is CommTask_ConnectUndergroundClient or CommTask_ConnectUndergroundServer
 */
BOOL CommManager_IsConnectingUnderground(void)
{
    int i;
    u32 connectFunctions[] = {
        (u32)CommTask_ConnectUndergroundClient, (u32)CommTask_ConnectUndergroundServer, 0
    };
    u32 task = (u32)sCommMan->task;

    if (sCommMan == NULL) {
        return FALSE;
    }

    for (i = 0; connectFunctions[i] != 0; i++) {
        if (task == connectFunctions[i]) {
            return TRUE;
        }
    }

    return FALSE;
}

/**
 * @brief Closes the secret base and switches to single player underground mode
 */
void CommManager_CloseSecretBase(void)
{
    CommManager_SetTask(CommTask_RestartSecretBase, 0);
}

/**
 * @brief Sets a flag that prevents the CommManager from connecting after initializing for the underground
 */
void CommManager_SetDoNotConnectUndergroundFlag(void)
{
    sCommMan->doNotConnectUnderground = TRUE;
}

/**
 * @brief Reopens the underground secret base to Wireless/Online play
 */
void CommMan_ReopenSecretBase(void)
{
    WirelessDriver_Init();
    CommManager_SetTask(CommTask_StartWirelessClient, 0);
}

/**
 * @brief Initializes the Communication Manager for battles as a server
 *
 * @param saveData
 * @param commType
 * @param contestRegulation
 * @param battleRegulation
 * @param unusedBool
 */
void CommMan_StartBattleServer(SaveData *saveData, int commType, int contestRegulation, const BattleRegulation *battleRegulation, BOOL unusedBool)
{
    if (CommSys_IsInitialized()) {
        return;
    }

    Heap_CreateAtEnd(HEAP_ID_APPLICATION, HEAP_ID_COMMUNICATION, 0x7080);
    CommManager_Initialize(saveData, commType);

    sCommMan->contestRegulation = contestRegulation;
    sCommMan->battleRegulation = battleRegulation;

    CommManager_SetTask(CommTask_StartBattleServer, 0);
}

/**
 * @brief Initializes the Communication Manager for battles as a client
 *
 * @param saveData
 * @param commType
 * @param contestRegulation
 * @param battleRegulation
 * @param unusedBool
 */
void CommMan_StartBattleClient(SaveData *saveData, int commType, int contestRegulation, const BattleRegulation *battleRegulation, BOOL unusedBool)
{
    if (CommSys_IsInitialized()) {
        return;
    }

    Heap_CreateAtEnd(HEAP_ID_APPLICATION, HEAP_ID_COMMUNICATION, 0x7080);
    CommManager_Initialize(saveData, commType);

    sCommMan->contestRegulation = contestRegulation;
    sCommMan->battleRegulation = battleRegulation;

    CommManager_SetTask(CommTask_StartBattleClient, 0);
}

/**
 * @brief Connects a client to the battle with the given connectionID
 *
 * @param connectionID
 */
void CommManager_ConnectBattleClient(int connectionID)
{
    sCommMan->connectionID = connectionID;
    CommManager_SetTask(CommTask_ConnectBattleClient, 0);
}

/**
 * @brief Resets the communication system and manager for battles for the client
 */
void CommManager_ResetBattleClient(void)
{
    CommSys_ResetBattleClient();
    CommManager_SetTask(sub_020372DC, 0);
}

/**
 * @brief Ends the communication for battles
 */
void CommManager_EndBattle(void)
{
    if (sCommMan == NULL) {
        return;
    }

    CommManager_SetTask(CommTask_EndConnection, 5);
}

/**
 * @brief Calls WirelessManager_SetEntry(entry)
 *
 * @param entry
 */
void WirelessManager_SetEntry2(BOOL entry)
{
    WirelessManager_SetEntry(entry);
}

/**
 * @brief Checks if the current CommManager task is a battle waiting task.
 *
 * @return TRUE if the current sCommMan->task is CommTask_WaitBattleServer or CommTask_WaitBattleClient
 */
BOOL CommManager_IsWaitingBattle(void)
{
    int i;
    u32 waitFunctions[] = {
        (u32)CommTask_WaitBattleServer,
        (u32)CommTask_WaitBattleClient,
        0,
    };
    u32 task = (u32)sCommMan->task;

    if (sCommMan == NULL) {
        return FALSE;
    }

    for (i = 0; waitFunctions[i] != 0; i++) {
        if (task == waitFunctions[i]) {
            return TRUE;
        }
    }

    return FALSE;
}

/**
 * @brief Initializes the Communication Manager for Union play
 *
 * @param saveData
 */
void CommManager_StartUnion(SaveData *saveData)
{
    if (sCommMan != NULL) {
        return;
    }

    if (Heap_CreateAtEnd(HEAP_ID_APPLICATION, HEAP_ID_COMMUNICATION, 0x7080) == 0) {
        NetworkError_DisplayGTSCriticalError();
    }

    CommManager_Initialize(saveData, COMM_TYPE_UNION);

    sCommMan->commType = COMM_TYPE_UNION;
    sCommMan->contestRegulation = 0;

    CommManager_SetTask(CommTask_StartUnion, 0);
}

/**
 * @brief Connect to the union with the given connectionID
 *
 * @param connectionID
 */
void CommManager_ConnectUnion(int connectionID)
{
    sCommMan->connectionID = connectionID;
    sCommMan->retryConnectionAttempts = 3;

    WirelessManager_SetPauseConnection(1);
    NetworkIcon_Init();
    CommManager_SetTask(sub_020375A4, 0);
}

/**
 * @brief Checks if the current CommManager task is the union client connection success task
 *
 * @return TRUE if the task is CommTask_SuccededConnectUnionClient, -1 if sCommMan isn't initialized or the current task is CommTask_FailedConnectUnionClient, FALSE otherwise
 */
int CommManager_IsConnectedUnionClientSuccess(void)
{
    u32 task;
    
    if (sCommMan == NULL) {
        return -1;
    }

    task = (u32)sCommMan->task;

    if (task == (u32)CommTask_SuccededConnectUnionClient) {
        return TRUE;
    }

    if (task == (u32)CommTask_FailedConnectUnionClient) {
        return -1;
    }

    return FALSE;
}

/**
 * @brief Checks if the current CommManager task is the union server connect task
 *
 * @return TRUE if the task is CommTask_ConnectUnionServer, FALSE otherwise or if sCommMan isn't initialized or the current task 
 */
BOOL CommManager_IsConnectUnionServer(void)
{
    u32 task;
    
    if (sCommMan == NULL) {
        return FALSE;
    }

    task = (u32)sCommMan->task;

    if (task == (u32)CommTask_ConnectUnionServer) {
        return TRUE;
    }

    return FALSE;
}

/**
 * @brief Restarts the search for clients in the union and resets the connection
 */
void CommManager_UnionRestartSearch(void)
{
    WirelessManager_SetPauseConnection(0);

    if (!((sCommMan->errorDisconnect == 1) && (sCommMan->unk_50 == 1)) || (sCommMan->commType == COMM_TYPE_UNION)) {
        CommMan_SetErrorHandling(0, 0);
    }

    NetworkIcon_Destroy();

    sCommMan->commType = COMM_TYPE_UNION;
    sCommMan->pauseUnion = FALSE;

    WirelessManager_SetMaxNumConnections(sCommMan->maxNumConnection);

    if (CommSys_CurNetId() == 0) {
        WirelessManager_SetPauseConnectionSystem(1);
        CommManager_SetTask(sub_02037354, 15);
    } else {
        CommManager_SetTask(sub_0203739C, 5);
    }
}

/**
 * @brief Checks if the Comm Manager has restarted successfully for Union play
 *
 * @return TRUE when sCommMan is NULL or when the current task is not CommTask_EndUnionClient
 */
BOOL CommManager_UnionRestartSuccess(void)
{
    u32 task;

    if (sCommMan == NULL) {
        return TRUE;
    }

    task = (u32)sCommMan->task;

    if (task == (u32)CommTask_EndUnionClient) {
        return FALSE;
    }

    return TRUE;
}

/**
 * @brief Starts the Communication Manager end connection task for union play
 */
void CommManager_ExitUnion(void)
{
    if (sCommMan == NULL) {
        return;
    }

    CommManager_SetTask(CommTask_EndConnection, 5);
}

/**
 * @brief Pauses the client connection to the server for union play
 */
void CommManager_PauseUnionClient(void)
{
    if (sCommMan == NULL) {
        return;
    }

    sCommMan->pauseUnion = TRUE;
    WirelessManager_SetPauseConnection(1);
}

/**
 * @brief Pauses the server connection to the clients for union play
 */
void CommManager_PauseUnionServer(void)
{
    if (sCommMan == NULL) {
        return;
    }

    sCommMan->pauseUnion = TRUE;

    WirelessManager_SetPauseConnection(1);
    CommManager_SetTask(CommTask_PauseUnionServer, 0);
}

/**
 * @brief Sets sCommMan->commType to COMM_TYPE_UNION_APP
 */
void CommManager_SetState_UnionApp(void)
{
    sCommMan->commType = COMM_TYPE_UNION_APP;
}

/**
 * @brief Sets sCommMan->commType to COMM_TYPE_UNION
 */
void CommManager_SetState_Union(void)
{
    sCommMan->commType = COMM_TYPE_UNION;
}

/**
 * @brief Initializes the Communication Manager as a server to play a battle against a random opponent
 *
 * @param saveData
 * @param commType
 */
void CommManager_StartRandomBattleServer(SaveData *saveData, int commType)
{
    if (CommSys_IsInitialized()) {
        return;
    }

    Heap_CreateAtEnd(HEAP_ID_APPLICATION, HEAP_ID_COMMUNICATION, 0x7080);
    CommManager_Initialize(saveData, commType);
    CommManager_SetTask(CommTask_StartRandomBattleServer, 0);
}

/**
 * @brief Initializes the Communication Manager as a client to play a battle against a random opponent
 *
 * @param saveData
 * @param commType
 */
void CommManager_StartRandomBattleClient(SaveData *saveData, int commType)
{
    if (CommSys_IsInitialized()) {
        return;
    }

    Heap_CreateAtEnd(HEAP_ID_APPLICATION, HEAP_ID_COMMUNICATION, 0x7080);
    CommManager_Initialize(saveData, commType);
    CommManager_SetTask(CommTask_StartMysteryGiftClient, 0);
}

/**
 * @brief Calls the current task function and updates the network icon
 */
void CommManager_Update(void)
{
    if (sCommMan) {
        if (sCommMan->task != NULL) {
            CommTaskFunc task = sCommMan->task;
            task();
        }
    }

    if (CommMan_IsConnectedToWifi()) {
        NetworkIcon_SetStrength(WM_LINK_LEVEL_3 - DWC_GetLinkLevel());
    } else if (CommServerClient_IsInitialized()) {
        NetworkIcon_SetStrength(WM_LINK_LEVEL_3 - WM_GetLinkLevel());
    }
}

/**
 * @brief Sets the Communication Manager's current task and timer
 *
 * @param task
 * @param timer
 */
static void CommManager_SetTask(CommTaskFunc task, int timer)
{
    sCommMan->task = task;
    sCommMan->timer = timer;
}

/**
 * @brief Starts the Underground process
 */
static void CommTask_StartUnderground(void)
{
    if (sCommMan->timer != 0) {
        sCommMan->timer--;
        return;
    }

    if (!WirelessDriver_IsReady()) {
        return;
    }

    CommServerClient_Init(sCommMan->trainerInfo, 1);
    CommInfo_Init(sCommMan->saveData, NULL);
    CommSys_SetAlone(1);
    CommSys_EnableSendMovementData();

    if (sCommMan->initializeAsServer) {
        if (CommSys_InitServer(1, sCommMan->unk_4E, 500, 1)) {
            u32 rand = MATH_Rand32(&sCommMan->rand, 40 / 2);

            sCommMan->unk_4E = 0;
            CommManager_SetTask(CommTask_WaitUndergroundServer, 40 / 2 + rand);
        }
    } else {
        if (CommSys_InitClient(1, 1, 500)) {
            if (sCommMan->doNotConnectUnderground) {
                CommManager_SetTask(CommTask_None, 0);
            } else {
                CommManager_SetTask(CommTask_SearchUndergroundClient, 32 * 2);
            }
        }
    }
}

/**
 * @brief Reinitializes the Communication Manager for underground play
 */
static void CommTask_ReinitUnderground(void)
{
    BOOL ret;

    if (!sub_02033E30()) {
        return;
    }

    CommSys_SetAlone(1);
    CommSys_EnableSendMovementData();

    if (sCommMan->initializeAsServer) {
        CommManager_SetTask(CommTask_InitUndergroundServer, 0);
    } else {
        ret = CommSys_InitClient(0, 1, 500);

        if (ret) {
            u32 rand = MATH_Rand32(&sCommMan->rand, 32 * 2);

            if (sCommMan->retryConnectionAttempts > 0) {
                rand = 2 * 32 * sCommMan->retryConnectionAttempts;
                sCommMan->retryConnectionAttempts = 0;
            }

            CommManager_SetTask(CommTask_SearchUndergroundClient, rand);
        }
    }
}

static void sub_02036E08(void)
{
    BOOL ret;

    if (!sub_02033E30()) {
        return;
    }

    ret = CommSys_InitClient(0, 0, 500);

    if (ret) {
        u32 rand = MATH_Rand32(&sCommMan->rand, 32);
        CommManager_SetTask(CommTask_SearchUndergroundClient, 32 / 2 + rand);
    }
}

static void CommTask_SearchUndergroundClient(void)
{
    int v0;

    sub_02033A5C();

    if (sCommMan->pauseUnderground || sCommMan->unk_56) {
        return;
    }

    v0 = sub_020338EC();

    if (v0 != -1) {
        sCommMan->connectionID = v0;
        CommManager_SetTask(sub_02036EDC, 32);
        return;
    }

    if (sCommMan->timer != 0) {
        sCommMan->timer--;
        return;
    }

    v0 = sub_0203394C();

    if (v0 != -1) {
        sCommMan->connectionID = v0;
        CommManager_SetTask(sub_02036EDC, 32);
        return;
    }

    CommManager_SetTask(CommTask_ResetUndergroundServer, 0);
}

static void sub_02036EDC(void)
{
    sub_02033A5C();

    if (sub_02033898(sCommMan->connectionID) != 0) {
        if (sub_02034984(sCommMan->connectionID)) {
            CommManager_SetTask(sub_02036F44, 100);
            return;
        }
    }

    if (CommSys_CheckError()) {
        CommManager_SetTask(CommTask_ResetUndergroundServer, 0);
    } else if (sCommMan->timer != 0) {
        sCommMan->timer--;
    } else {
        CommManager_SetTask(CommTask_ResetUndergroundServer, 0);
    }
}

static void sub_02036F44(void)
{
    if (CommSys_IsPlayerConnected(CommSys_CurNetId())) {
        CommSys_Reset();
        CommSys_SetAlone(0);
        CommSys_EnableSendMovementData();
        CommManager_SetTask(CommTask_ConnectUndergroundClient, 0);
        return;
    }

    if (CommSys_CheckError()) {
        CommManager_SetTask(CommTask_ResetUndergroundServer, 0);
        return;
    }

    if (sCommMan->timer != 0) {
        sCommMan->timer--;
        return;
    }

    CommManager_SetTask(CommTask_ResetUndergroundServer, 0);
}

static void CommTask_ResetUndergroundServer(void)
{
    if (!sub_020336D4()) {
        return;
    }

    CommManager_SetTask(CommTask_InitUndergroundServer, 0);
}

static void sub_02036FBC(void)
{
    if (!sub_020336D4()) {
        return;
    }

    CommManager_SetTask(sub_02036E08, 0);
}

static void CommTask_InitUndergroundServer(void)
{
    if (!sub_02033E30()) {
        return;
    }

    CommSys_SetAlone(1);

    if (CommSys_InitServer(0, sCommMan->unk_4E, 500, 1)) {
        u32 rand = MATH_Rand32(&sCommMan->rand, 40 / 2);

        sCommMan->unk_4E = 0;
        CommManager_SetTask(CommTask_WaitUndergroundServer, 40 / 2 + rand);
    }
}

static void CommTask_WaitUndergroundServer(void)
{
    if (CommSys_IsClientConnecting()) {
        sCommMan->unk_4E = 1;
        CommManager_SetTask(sub_02037094, 0);
        return;
    }

    if (sCommMan->timer != 0) {
        sCommMan->timer--;
        return;
    }

    if (sCommMan->initializeAsServer) {
        return;
    }

    if (sub_020336D4()) {
        CommManager_SetTask(sub_02036FBC, 2);
    }
}

static void sub_02037094(void)
{
    CommSys_SetAlone(0);
    sub_02033EA8(1);
    CommSys_EnableSendMovementData();
    CommManager_SetTask(CommTask_ConnectUndergroundServer, 0);
}

static void CommTask_ConnectUndergroundServer(void)
{
    return;
}

static void CommTask_ConnectUndergroundClient(void)
{
    return;
}

static void CommTask_StartSecretBase(void)
{
    if (!CommMan_IsConnectedToWifi()) {
        if (!sub_02033E30()) {
            return;
        }

        CommSys_SetAlone(1);
        CommSys_EnableSendMovementData();
        CommServerClient_SetSecretBaseClosedState(TRUE);
    }

    CommManager_SetTask(CommTask_None, 0);
}

static void CommTask_RestartSecretBase(void)
{
    if (!sub_020336D4()) {
        return;
    }

    CommSys_Reset();
    CommManager_SetTask(CommTask_StartSecretBase, 0);
}

static void CommTask_StartWirelessClient(void)
{
    if (!WirelessDriver_IsReady()) {
        return;
    }

    CommServerClient_SetSecretBaseClosedState(FALSE);
    CommSys_Reset();
    CommManager_SetTask(CommTask_ReinitUnderground, 0);
}

static void CommTask_ResetUnderground(void)
{
    if (!sub_020336D4()) {
        return;
    }

    CommManager_SetTask(CommTask_ReinitUnderground, 0);
}

static void CommTask_StartBattleServer(void)
{
    if (!WirelessDriver_IsReady()) {
        return;
    }

    CommServerClient_Init(sCommMan->trainerInfo, 1);
    CommInfo_Init(sCommMan->saveData, sCommMan->battleRegulation);

    if (CommSys_InitServer(1, 1, 512, 1)) {
        CommSys_SwitchTransitionTypeToParallel();
        CommManager_SetTask(sub_0203718C, 0);
    }
}

static void sub_0203718C(void)
{
    if (!CommSys_IsPlayerConnected(CommSys_CurNetId())) {
        return;
    }

    CommManager_SetTask(CommTask_WaitBattleServer, 0);
}

static void CommTask_WaitBattleServer(void)
{
    if (!CommSys_IsInitialized()) {
        CommManager_SetTask(CommTask_End, 0);
    }
}

static void CommTask_StartBattleClient(void)
{
    if (!WirelessDriver_IsReady()) {
        return;
    }

    CommServerClient_Init(sCommMan->trainerInfo, 1);
    CommInfo_Init(sCommMan->saveData, sCommMan->battleRegulation);

    if (CommSys_InitClient(1, 1, 512)) {
        CommSys_SwitchTransitionTypeToParallel();
        CommManager_SetTask(sub_02037208, 0);
    }
}

static void sub_02037208(void)
{
    sub_02033A5C();
}

static void CommTask_ConnectBattleClient(void)
{
    sub_02033A5C();

    if (sub_02034984(sCommMan->connectionID)) {
        CommManager_SetTask(sub_02037238, 10);
    }
}

static void sub_02037238(void)
{
    if (CommSys_CheckError()) {
        CommManager_SetTask(sub_02037270, 0);
    }

    if (CommSys_IsPlayerConnected(CommSys_CurNetId()) && (0 != CommSys_CurNetId())) {
        CommManager_SetTask(CommTask_WaitBattleClient, 0);
    }
}

static void sub_02037270(void)
{
    sub_020336D4();
    CommManager_SetTask(sub_02037284, 2);
}

static void sub_02037284(void)
{
    TrainerInfo *v0;

    if (sCommMan->timer != 0) {
        sCommMan->timer--;
        return;
    }

    if (!sub_02033E30()) {
        return;
    }

    if (CommSys_InitClient(0, 1, 512)) {
        CommSys_SwitchTransitionTypeToParallel();
        CommManager_SetTask(CommTask_ConnectBattleClient, 10);
    }
}

static void CommTask_WaitBattleClient(void)
{
    if (!CommSys_IsInitialized()) {
        CommManager_SetTask(CommTask_End, 0);
    }
}

static void sub_020372DC(void)
{
    sub_020336D4();
    CommManager_SetTask(sub_020372F0, 2);
}

static void sub_020372F0(void)
{
    if (sCommMan->timer != 0) {
        sCommMan->timer--;
        return;
    }

    if (!sub_02033E30()) {
        return;
    }

    if (CommSys_InitClient(0, 1, 512)) {
        CommSys_SwitchTransitionTypeToParallel();
        CommManager_SetTask(sub_02037208, 10);
    }
}

/**
 * @brief Blank task, does nothing when called
 */
static void CommTask_None(void)
{
    return;
}

/**
 * @brief Deletes the Communication Manager after the connection ended
 */
static void CommTask_End(void)
{
    if (CommSys_IsInitialized()) {
        return;
    }

    CommMan_Free();
}

/**
 * @brief Calls the end connection function for underground connections
 */
static void CommManager_EndConnectionUnderground(void)
{
    CommManager_SetTask(CommTask_EndConnection, 5);
}

static void sub_02037354(void)
{
    if (CommSys_ConnectedCount() <= 1) {
        WirelessManager_SetPauseConnectionSystem(0);
        CommSys_ResetDS();
        CommManager_SetTask(CommTask_EndUnionClient, 0);
    }

    if (sCommMan->timer != 0) {
        sCommMan->timer--;
        return;
    }

    WirelessManager_SetPauseConnectionSystem(0);
    CommSys_ResetDS();
    CommManager_SetTask(CommTask_EndUnionClient, 0);
}

static void sub_0203739C(void)
{
    if (!sub_020336D4()) {
        return;
    }

    CommSys_Reset();
    CommManager_SetTask(CommTask_EndUnionClient, 0);
}

/**
 * @brief Handles ending the connection and deletes the Communication System
 */
static void CommTask_EndConnection(void)
{
    if (sCommMan->timer != 0) {
        sCommMan->timer--;
    }

    if (!sub_020336D4()) {
        return;
    }

    if (sCommMan->timer != 0) {
        return;
    }

    CommSys_Delete();
    CommManager_SetTask(CommTask_End, 0);
}

/**
 * @brief Task to initialize sCommMan for Union play
 */
static void CommTask_StartUnion(void)
{
    if (!WirelessDriver_IsReady()) {
        return;
    }

    CommServerClient_Init(sCommMan->trainerInfo, 1);
    WirelessManager_SetMaxNumConnections(sCommMan->maxNumConnection);
    CommInfo_Init(sCommMan->saveData, NULL);

    if (CommSys_InitClient(1, 1, 512)) {
        CommSys_SwitchTransitionTypeToParallel();
        CommManager_SetTask(CommTask_SearchUnionClient, 32 * 2);
    }
}

/**
 * @brief Searches for parents to connect to as a client for union play, initializes as a server if none are found
 */
static void CommTask_SearchUnionClient(void)
{
    int v0;

    sub_02033A5C();

    if (sCommMan->timer != 0) {
        sCommMan->timer--;
        return;
    }

    if (!sub_020336D4()) {
        return;
    }

    CommManager_SetTask(CommTask_InitializeServerUnion, 0);
}

static void CommTask_EndUnionClient(void)
{
    if (!sub_020336D4()) {
        return;
    }

    CommManager_SetTask(CommTask_InitializeServerUnion, 0);
}

/**
 * @brief Initializes the current CommManager as a server for union play
 */
static void CommTask_InitializeServerUnion(void)
{
    if (!sub_02033E30()) {
        return;
    }

    if (CommSys_InitServer(0, sCommMan->unk_4E, 512, 1)) {
        u32 rand = MATH_Rand32(&sCommMan->rand, 40 * 2);

        CommSys_SwitchTransitionTypeToParallel();
        sCommMan->unk_4E = 0;
        CommManager_SetTask(sub_020374F4, 10000);
    }
}

static void sub_020374F4(void)
{
    if (sub_02034148()) {
        (void)0;
    } else {
        if (CommSys_IsClientConnecting()) {
            sCommMan->unk_4E = 1;
            NetworkIcon_Init();
            CommManager_SetTask(CommTask_ConnectUnionServer, 0);
            return;
        }

        if (sCommMan->timer != 0) {
            sCommMan->timer--;
            return;
        }
    }

    if (sub_020336D4()) {
        CommManager_SetTask(CommTask_RestartUnionClient, 0);
    }
}

static void CommTask_RestartUnionClient(void)
{
    u32 rand;

    if (!sub_02033E30()) {
        return;
    }

    if (CommSys_InitClient(0, 0, 512)) {
        CommSys_SwitchTransitionTypeToParallel();
        rand = MATH_Rand32(&sCommMan->rand, 32);
        CommManager_SetTask(CommTask_SearchUnionClient, rand);
    }
}

static void sub_020375A4(void)
{
    if (!sub_020336D4()) {
        return;
    }

    CommManager_SetTask(sub_020375BC, 0);
}

static void sub_020375BC(void)
{
    if (!sub_02033E30()) {
        return;
    }

    if (CommSys_InitClient(0, 0, 512)) {
        CommSys_SwitchTransitionTypeToParallel();
        CommManager_SetTask(sub_020375E8, 100);
    }
}

static void sub_020375E8(void)
{
    if (sub_02033898(sCommMan->connectionID) != 0) {
        if (sub_02034984(sCommMan->connectionID)) {
            CommManager_SetTask(sub_0203764C, 100);
            return;
        }
    }

    if (CommSys_CheckError()) {
        CommManager_SetTask(CommTask_ResetUnionClient, 0);
    } else if (sCommMan->timer != 0) {
        sCommMan->timer--;
    } else {
        CommManager_SetTask(CommTask_ResetUnionClient, 0);
    }
}

static void sub_0203764C(void)
{
    if (CommSys_CheckError()) {
        CommManager_SetTask(CommTask_ResetUnionClient, 0);
        return;
    }

    if (CommSys_IsPlayerConnected(CommSys_CurNetId())) {
        sCommMan->unk_48 = 0;
        CommManager_SetTask(sub_020376A8, 120);
        return;
    }

    if (sCommMan->timer != 0) {
        sCommMan->timer--;
        return;
    }

    CommManager_SetTask(CommTask_ResetUnionClient, 0);
}

static void sub_020376A8(void)
{
    if (CommSys_CheckError()) {
        CommManager_SetTask(CommTask_ResetUnionClient, 0);
        return;
    }

    if (sCommMan->unk_48 == 2) {
        CommManager_SetTask(CommTask_FailedConnectUnionClient, 0);
        return;
    }

    if (sCommMan->unk_48 == 1) {
        CommInfo_SendPlayerInfo();
        CommManager_SetTask(CommTask_SuccededConnectUnionClient, 0);
        return;
    }

    if (sCommMan->timer > (120 - 10)) {
        CommSys_SendDataFixedSize(6, Unk_02100A20);
    }

    if (sCommMan->timer != 0) {
        sCommMan->timer--;
        return;
    }

    CommManager_SetTask(CommTask_ResetUnionClient, 0);
}

static void CommTask_SuccededConnectUnionClient(void)
{
    if (CommSys_CheckError()) {
        CommManager_SetTask(CommTask_ResetUnionClient, 0);
        return;
    }
}

static void CommTask_FailedConnectUnionClient(void)
{
    return;
}

static void CommTask_ResetUnionClient(void)
{
    sCommMan->unk_48 = 0;

    if (!sub_020336D4()) {
        return;
    }

    if (sCommMan->retryConnectionAttempts != 0) {
        sCommMan->retryConnectionAttempts--;
        CommManager_SetTask(sub_020375BC, 0);
    } else {
        CommManager_SetTask(CommTask_FailedConnectUnionClient, 0);
    }
}

static void CommTask_ConnectUnionServer(void)
{
    if (!CommSys_IsClientConnecting()) {
        if (!sub_02038938()) {
            if (sub_020336D4()) {
                CommManager_SetTask(CommTask_RestartUnionClient, 0);
            }
        }
    } else {
        if (CommSys_CurNetId() == 0) {
            CommInfo_ServerSendArray();
        }
    }

    if (CommSys_CheckError()) {
        if (!sub_02038938()) {
            CommManager_SetTask(CommTask_ResetUnionClient, 0);
            return;
        }
    }
}

static void CommTask_PauseUnionServer(void)
{
    if (!sub_02033E30()) {
        return;
    }

    if (CommSys_InitServer(0, sCommMan->unk_4E, 512, 0)) {
        CommSys_SwitchTransitionTypeToParallel();
        CommManager_SetTask(CommTask_None, 0);
    }
}

void CommManager_StartDrawServer(void)
{
    sCommMan->commType = COMM_TYPE_DRAW;

    if (CommSys_CurNetId() == 0) {
        u8 v0 = 0;
        CommSys_SendDataFixedSize(10, &v0);
    } else {
        u8 v0 = 0;
        CommSys_SendDataFixedSize(10, &v0);
    }
}

void CommManager_StartDrawClient(int param0)
{
    sCommMan->connectionID = param0;
    sCommMan->retryConnectionAttempts = 3;
    CommManager_SetTask(CommTask_StartDrawClient, 0);
}

void CommManager_SetState_MixRecords(void)
{
    sCommMan->commType = COMM_TYPE_MIX_RECORDS;
}

void CommManager_StartMixRecordsClient(int param0)
{
    sCommMan->connectionID = param0;
    sCommMan->commType = COMM_TYPE_MIX_RECORDS;
    sCommMan->retryConnectionAttempts = 3;

    NetworkIcon_Init();
    CommManager_SetTask(sub_020375A4, 0);
}

/**
 * @brief Sets sCommMan->commType to COMM_TYPE_SPIN_TRADE
 */
void CommManager_SetState_SpinTrade(void)
{
    sCommMan->commType = COMM_TYPE_SPIN_TRADE;
}

void CommManager_StartSpinTradeClient(int param0)
{
    sCommMan->connectionID = param0;
    sCommMan->commType = COMM_TYPE_SPIN_TRADE;
    sCommMan->retryConnectionAttempts = 3;

    NetworkIcon_Init();
    CommManager_SetTask(sub_020375A4, 0);
}

static void CommTask_StartDrawClient(void)
{
    if (sub_020336D4()) {
        CommManager_SetTask(CommTask_InitDrawClient, 0);
    }
}

static void CommTask_InitDrawClient(void)
{
    if (!sub_02033E30()) {
        return;
    }

    sCommMan->commType = COMM_TYPE_DRAW;

    if (CommSys_InitClient(0, 0, 512)) {
        CommSys_SwitchTransitionTypeToServerClient();
        CommManager_SetTask(CommTask_ConnectDraw, 100);
    }
}

static void CommTask_ConnectDraw(void)
{
    if (sub_02033898(sCommMan->connectionID) != 0) {
        if (sub_02034984(sCommMan->connectionID)) {
            CommManager_SetTask(CommTask_ConnectingDraw, 100);
            return;
        }
    }

    if (CommSys_CheckError() || (sCommMan->timer == 0)) {
        sCommMan->retryConnectionAttempts--;

        if (sCommMan->retryConnectionAttempts == 0) {
            CommManager_SetTask(CommTask_FailedConnectUnionClient, 0);
        } else {
            CommManager_SetTask(CommTask_StartDrawClient, 0);
        }
    } else if (sCommMan->timer != 0) {
        sCommMan->timer--;
    }
}

static void CommTask_ConnectingDraw(void)
{
    if (sCommMan->timer > 90) {
        sCommMan->timer--;
        return;
    }

    if (CommSys_CheckError()) {
        sCommMan->retryConnectionAttempts--;

        if (sCommMan->retryConnectionAttempts == 0) {
            CommManager_SetTask(CommTask_FailedConnectUnionClient, 0);
        } else {
            CommManager_SetTask(CommTask_StartDrawClient, 0);
        }

        return;
    }

    if (CommSys_IsPlayerConnected(CommSys_CurNetId())) {
        CommManager_SetTask(CommTask_SuccededConnectUnionClient, 0);
        return;
    }

    if (sCommMan->timer != 0) {
        sCommMan->timer--;
        return;
    }

    sCommMan->retryConnectionAttempts--;

    if (sCommMan->retryConnectionAttempts == 0) {
        CommManager_SetTask(CommTask_FailedConnectUnionClient, 0);
    } else {
        CommManager_SetTask(CommTask_StartDrawClient, 0);
    }
}

void sub_02037A78(int param0, int param1, void *param2, void *param3)
{
    int v0;
    u8 *v1 = param2;
    BOOL v2 = 1;

    if (CommSys_CurNetId() != 0) {
        return;
    }

    v2 = 1;

    for (v0 = 0; v0 < sizeof(Unk_02100A20); v0++) {
        if (v1[v0] != Unk_02100A20[v0]) {
            v2 = 0;
            break;
        }
    }

    if (v2 && (!sCommMan->pauseUnion)) {
        Unk_02100A30[0] = param0;
        CommSys_SendDataFixedSizeServer(7, Unk_02100A30);
        return;
    }

    Unk_02100A28[0] = param0;
    CommSys_SendDataFixedSizeServer(7, Unk_02100A28);
}

void sub_02037AD8(int param0, int param1, void *param2, void *param3)
{
    u8 v0;
    int v1;
    u8 *v2 = param2;
    BOOL v3 = 1;

    for (v1 = 1; v1 < sizeof(Unk_02100A30); v1++) {
        if (v2[v1] != Unk_02100A30[v1]) {
            v3 = 0;
            break;
        }
    }

    if (v3) {
        v0 = v2[0];

        if (v0 == CommSys_CurNetId()) {
            sCommMan->unk_48 = 1;
        }

        return;
    }

    v3 = 1;

    for (v1 = 1; v1 < sizeof(Unk_02100A28); v1++) {
        if (v2[v1] != Unk_02100A28[v1]) {
            v3 = 0;
            break;
        }
    }

    if (v3) {
        v0 = v2[0];

        if (v0 == (u8)CommSys_CurNetId()) {
            sCommMan->unk_48 = 2;
        }

        return;
    }
}

int sub_02037B54(void)
{
    return sizeof(Unk_02100A20);
}

void CommManager_SetMaxNumConnections(int param0)
{
    if (sCommMan) {
        sCommMan->maxNumConnection = param0;
        WirelessManager_SetMaxNumConnections(param0);
    }
}

static void sub_02037B70(void)
{
    sub_02033A5C();
}

static void sub_02037B78(void)
{
    if (!WirelessDriver_IsReady()) {
        return;
    }

    CommServerClient_Init(sCommMan->trainerInfo, 1);
    CommInfo_Init(sCommMan->saveData, NULL);

    if (CommSys_InitClient(1, 1, 32)) {
        CommSys_SwitchTransitionTypeToParallel();
        CommManager_SetTask(sub_02037B70, 0);
    }
}

void sub_02037BC0(SaveData *saveData)
{
    if (CommSys_IsInitialized()) {
        return;
    }

    Heap_CreateAtEnd(HEAP_ID_APPLICATION, HEAP_ID_COMMUNICATION, 0x7000);
    CommManager_Initialize(saveData, COMM_TYPE_POKETCH);

    sCommMan->contestRegulation = 0;

    CommManager_SetTask(sub_02037B78, 0);
}

void sub_02037BFC(void)
{
    if (sCommMan == NULL) {
        return;
    }

    CommManager_SetTask(CommTask_EndConnection, 5);
}

BOOL sub_02037C18(void)
{
    int v0;
    u32 v1[] = {
        (u32)sub_02037B70, 0
    };
    u32 v2 = (u32)sCommMan->task;

    if (sCommMan == NULL) {
        return 0;
    }

    for (v0 = 0; v1[v0] != 0; v0++) {
        if (v2 == v1[v0]) {
            return 1;
        }
    }

    return 0;
}

static void sub_02037C5C(u32 param0, int param1)
{
    switch (param0) {
    case 0x333:
        if (param1 == 15) {
            sCommMan->unk_54 |= 0x1;
        }
        break;
    case 0x400318:
        sCommMan->unk_54 |= 0x1;
        break;
    case 0x400131:
        sCommMan->unk_54 |= 0x2;
        break;
    case 0x400286:
        sCommMan->unk_54 |= 0x4;
        break;
    }
}

static void sub_02037CE4(void)
{
    if (CommSys_InitClient(1, 1, 32)) {
        CommSys_SwitchTransitionTypeToParallel();
        CommManager_SetTask(sub_02037B70, 0);
    }
}

static void sub_02037D08(void)
{
    if (!WirelessDriver_IsReady()) {
        return;
    }

    CommServerClient_Init(sCommMan->trainerInfo, 0);
    CommInfo_Init(sCommMan->saveData, NULL);
    WirelessManager_SetGGIDScanCallback(sub_02037C5C);
    CommManager_SetTask(sub_02037CE4, 0);
}

void sub_02037D48(SaveData *saveData)
{
    if (CommSys_IsInitialized()) {
        return;
    }

    Heap_CreateAtEnd(HEAP_ID_APPLICATION, HEAP_ID_COMMUNICATION, 0x7000);
    CommManager_Initialize(saveData, COMM_TYPE_PARTY);
    sCommMan->contestRegulation = 0;
    CommManager_SetTask(sub_02037D08, 0);
}

void sub_02037D84(void)
{
    if (sCommMan == NULL) {
        return;
    }

    CommManager_SetTask(CommTask_EndConnection, 5);
}

u8 sub_02037DA0(void)
{
    return sCommMan->unk_54;
}

BOOL sub_02037DB0(void)
{
    CommSys_StartShutdown();

    if (sCommMan == NULL) {
        return 1;
    }

    if ((sCommMan->commType == COMM_TYPE_24) || (sCommMan->commType == COMM_TYPE_25) || (sCommMan->commType == COMM_TYPE_EMAIL_WIFI)) {
        NintendoWFC_Stop();
        return 1;
    } else if (CommMan_IsConnectedToWifi()) {
        if (sCommMan->commType == COMM_TYPE_LOBBY_WIFI) {
            CommManager_SetTask(CommTask_LogoutWifiLobby, 0);
        } else {
            CommManager_SetTask(sub_02038314, 0);
        }
    } else {
        CommManager_SetTask(CommTask_RestartSecretBase, 0);
    }

    return 0;
}

static void CommTask_StartRandomBattleServer(void)
{
    if (!WirelessDriver_IsReady()) {
        return;
    }

    CommServerClient_Init(sCommMan->trainerInfo, 1);
    CommInfo_Init(sCommMan->saveData, NULL);

    if (CommSys_InitServer(1, 1, 512, 1)) {
        CommSys_SwitchTransitionTypeToParallel();
        CommManager_SetTask(sub_0203718C, 0);
    }
}

static void CommTask_StartMysteryGiftClient(void)
{
    if (!WirelessDriver_IsReady()) {
        return;
    }

    CommServerClient_Init(sCommMan->trainerInfo, 1);
    CommInfo_Init(sCommMan->saveData, NULL);

    if (CommSys_InitClient(1, 1, 512)) {
        CommSys_SwitchTransitionTypeToParallel();
        CommManager_SetTask(sub_02037208, 0);
    }
}

static void CommTask_WifiBattleError(void)
{
    return;
}

static void sub_02037EB4(void)
{
    int v0 = NintendoWFC_Process(0);

    if (v0 < 0) {
        CommManager_SetTask(CommTask_WifiBattleError, 0);
    } else if (v0 == ((DWC_ERROR_NUM) + 3)) {
        (void)0;
    }
}

static void CommTask_DisconnectWifiBattle(void)
{
    return;
}

static void CommTask_WifiBattleFailed(void)
{
    return;
}

static void sub_02037ED8(void)
{
    int v0, v1;

    CommSys_SetWifiConnected(1);

    v0 = NintendoWFC_Process(0);

    if ((v0 >= DWC_ERROR_FRIENDS_SHORTAGE) && ((DWC_ERROR_NUM) > v0)) {
        CommManager_SetTask(CommTask_WifiBattleFailed, 0);
    } else if (v0 < 0) {
        CommManager_SetTask(CommTask_WifiBattleError, 0);
    } else if (v0 == ((DWC_ERROR_NUM) + 3)) {
        CommManager_SetTask(sub_02037EB4, 0);
    } else if (v0 == ((DWC_ERROR_NUM) + 4)) {
        if (sCommMan->errorDisconnect) {
            CommManager_SetTask(CommTask_WifiBattleError, 0);
        } else {
            CommManager_SetTask(CommTask_DisconnectWifiBattle, 0);
        }
    } else if (v0 == ((DWC_ERROR_NUM) + 1)) {
        if (sCommMan->errorDisconnect) {
            CommManager_SetTask(CommTask_WifiBattleError, 0);
        } else {
            CommManager_SetTask(CommTask_DisconnectWifiBattle, 0);
        }
    }

    if (sCommMan->errorDisconnect) {
        if (sCommMan->connectedCount != CommSys_ConnectedCount()) {
            CommManager_SetTask(CommTask_WifiBattleError, 0);
        }
    }
}

void sub_02037F94(int param0, int param1, int param2)
{
    int v0;

    if (sCommMan) {
        if ((param0 == ((DWC_ERROR_NUM) + 6)) || (param0 == ((DWC_ERROR_NUM) + 5))) {
            v0 = param0;
        } else {
            v0 = -param0;
        }

        sCommMan->unk_34.unk_00 = v0;
        sCommMan->unk_34.unk_04 = param1;
        sCommMan->unk_34.unk_08 = param2;
    }
}

static void sub_02037FBC(void)
{
    int v0 = NintendoWFC_Process(0);

    if ((v0 >= DWC_ERROR_FRIENDS_SHORTAGE) && ((DWC_ERROR_NUM) > v0)) {
        CommManager_SetTask(CommTask_WifiBattleFailed, 0);
    } else if (v0 < 0) {
        CommManager_SetTask(CommTask_WifiBattleError, 0);
    } else if (v0 == NINTENDO_WFC_RESULT_MATCHMAKING_SUCCESS) {
        CommManager_SetTask(sub_02037ED8, 0);
    } else if (v0 == NINTENDO_WFC_RESULT_CONN_RESET) {
        CommManager_SetTask(CommTask_DisconnectWifiBattle, 0);
    } else if (v0 == NINTENDO_WFC_RESULT_CONN_RESET_AFTER_HOST_LEFT) {
        CommManager_SetTask(CommTask_WifiBattleFailed, 0);
    } else if (v0 == NINTENDO_WFC_RESULT_CONNECTION_CLOSED) {
        CommManager_SetTask(CommTask_DisconnectWifiBattle, 0);
    }
}

static void sub_0203802C(void)
{
    int v0 = NintendoWFC_Process(1);

    if (v0 < 0) {
        CommManager_SetTask(CommTask_WifiBattleError, 0);
    } else {
        int v1 = NintendoWFC_StartConnectionWithFriends(sCommMan->unk_4D, CommLocal_MaxMachines(sCommMan->commType) + 1, 0);

        switch (v1) {
        case 0:
            CommSys_Reset();

            CommManager_SetTask(sub_02037FBC, 0);
            break;
        case -1:
        case -2:
            break;
        case -3:
            CommManager_SetTask(CommTask_WifiBattleError, 0);
            break;
        }
    }
}

int sub_020380A0(int param0)
{
    if (sCommMan->task != sub_02037FBC) {
        return 0;
    }

    NintendoDWC_SetDataTransferCallbacks(sub_020351F8, sub_0203509C);
    sCommMan->unk_4D = param0;
    CommManager_SetTask(sub_0203802C, 0);
    return 1;
}

int sub_020380E4(void)
{
    if (sCommMan->task == sub_02037FBC) {
        return 0;
    }

    if (sCommMan->task == sub_02037ED8) {
        return 1;
    }

    if (sCommMan->task == sub_02037EB4) {
        return 3;
    }

    if (sCommMan->task == CommTask_DisconnectWifiBattle) {
        return 4;
    }

    if (sCommMan->task == CommTask_WifiBattleFailed) {
        return 5;
    }

    if (sCommMan->task == CommTask_WaitWifiLobbyMatchServerP2P) {
        return 0;
    }

    if (sCommMan->task == CommTask_ConnectWifiLobbyP2P) {
        return 1;
    }

    if (sCommMan->task == CommTask_WifiLobbyTimeout) {
        return 3;
    }

    return 2;
}

static void sub_02038164(void)
{
    int v0;
    int v1;

    NintendoDWC_SetDataTransferCallbacks(sub_020351F8, sub_0203509C);

    v0 = NintendoWFC_StartConnectionWithFriends(-1, 4, 1);

    switch (v0) {
    case 0:
        sCommMan->unk_58 = 0;
        CommSys_Reset();
        CommManager_SetTask(sub_02037FBC, 0);
        break;
    case -1:
    case -2:
        break;
    case -3:
        CommManager_SetTask(CommTask_WifiBattleError, 0);
        break;
    case -4:
        return;
    }

    v1 = NintendoWFC_HandleError();

    if (v1 < 0) {
        CommManager_SetTask(CommTask_WifiBattleError, 0);
    } else if (v1 == ((DWC_ERROR_NUM) + 6)) {
        CommManager_SetTask(CommTask_WifiBattleError, 0);
    }
}

static void sub_020381F0(void)
{
    int v0;

    CommSys_SetWifiConnected(0);

    if (NintendoWFC_EndConnection(sCommMan->unk_4C)) {
        if (NintendoWFC_ReturnToReadyState()) {
            CommInfo_Delete();

            CommManager_SetTask(sub_02038164, 0);
            return;
        }
    }

    v0 = NintendoWFC_Process(0);

    if (v0 < 0) {
        CommManager_SetTask(CommTask_WifiBattleError, 0);
    }
}

void sub_02038240(int param0, int param1, void *param2, void *param3)
{
    if (CommSys_CurNetId() == 0) {
        sCommMan->unk_4C = 0;
        CommManager_SetTask(sub_020381F0, 0);
    } else {
        sCommMan->unk_4C = 1;
        CommManager_SetTask(sub_020381F0, 0);
    }

    sCommMan->unk_58 = 1;
}

BOOL sub_02038284(void)
{
    return sCommMan->unk_58;
}

BOOL sub_02038294(void)
{
    u32 v0 = (u32)sCommMan->task;

    if (v0 == (u32)sub_02038164) {
        return 1;
    }

    if (v0 == (u32)CommTask_ConnectWifiLobby) {
        return 1;
    }

    return 0;
}

BOOL sub_020382C0(void)
{
    u32 v0 = (u32)sCommMan->task;

    if (v0 == (u32)sub_02037FBC) {
        return 1;
    }

    if (v0 == (u32)sub_02038164) {
        return 1;
    }

    if (v0 == (u32)CommTask_ConnectWifiLobby) {
        return 1;
    }

    return 0;
}

UnkStruct_ov65_0222F6EC *sub_020382F8(void)
{
    GF_ASSERT(sCommMan);
    return &sCommMan->unk_34;
}

static void sub_02038314(void)
{
    int v0;

    CommSys_SetWifiConnected(0);

    if (NintendoWFC_EndConnection(0)) {
        NintendoWFC_ReturnToReadyState();
        CommManager_SetTask(CommTask_EndConnection, 0);
    }

    v0 = NintendoWFC_Process(0);

    if (v0 < 0) {
        CommManager_SetTask(CommTask_WifiBattleError, 0);
    }
}

void sub_02038350(void)
{
    if (sCommMan == NULL) {
        return;
    }

    ResetUnlock(RESET_LOCK_0x1);
    CommInfo_Delete();
    CommManager_SetTask(CommTask_EndConnection, 5);
}

void sub_02038378(void)
{
    if (sCommMan == NULL) {
        return;
    }

    sCommMan->unk_4C = 0;
    CommManager_SetTask(sub_020381F0, 0);
}

void sub_02038398(void)
{
    if (sCommMan == NULL) {
        return;
    }

    CommMan_SetErrorHandling(0, 1);

    if (CommSys_CurNetId() == 0) {
        sCommMan->unk_4C = 0;
    } else {
        sCommMan->unk_4C = 1;
    }

    CommManager_SetTask(sub_020381F0, 0);
}

void sub_020383D4(void)
{
    u8 v0 = CommSys_CurNetId();

    CommSys_SendDataFixedSize(21, &v0);
}

BOOL sub_020383E8(void)
{
    if (sCommMan) {
        u32 v0 = (u32)sCommMan->task;

        if (v0 == (u32)CommTask_WifiBattleError) {
            return 1;
        }

        if ((v0 == (u32)sub_02037EB4) && sCommMan->errorDisconnect) {
            return 1;
        }

        if ((v0 == (u32)CommTask_WifiLobbyTimeout) && sCommMan->errorDisconnect) {
            return 1;
        }
    }

    return 0;
}

void sub_02038438(SaveData *saveData)
{
    if (!sCommMan) {
        Heap_CreateAtEnd(HEAP_ID_APPLICATION, HEAP_ID_COMMUNICATION, 0x100);
        sCommMan = (CommunicationManager *)Heap_Alloc(HEAP_ID_COMMUNICATION, sizeof(CommunicationManager));
        MI_CpuFill8(sCommMan, 0, sizeof(CommunicationManager));
        sCommMan->commType = COMM_TYPE_24;
        sCommMan->unk_51 = 1;
        sCommMan->saveData = saveData;
        CommMan_SetErrorHandling(0, 1);
        ResetLock(RESET_LOCK_0x1);
    }
}

void sub_0203848C(void)
{
    if (sCommMan) {
        ResetUnlock(RESET_LOCK_0x1);
        CommMan_SetErrorHandling(0, 0);
        Heap_Free(sCommMan);
        sCommMan = NULL;
        Heap_Destroy(HEAP_ID_COMMUNICATION);
    }
}

void sub_020384C0(SaveData *saveData)
{
    if (!sCommMan) {
        Heap_CreateAtEnd(HEAP_ID_APPLICATION, HEAP_ID_COMMUNICATION, 0x100);
        sCommMan = (CommunicationManager *)Heap_Alloc(HEAP_ID_COMMUNICATION, sizeof(CommunicationManager));
        MI_CpuFill8(sCommMan, 0, sizeof(CommunicationManager));
        sCommMan->commType = COMM_TYPE_25;
        sCommMan->unk_51 = 1;
        sCommMan->saveData = saveData;
        CommMan_SetErrorHandling(0, 1);
        ResetLock(RESET_LOCK_0x1);
    }
}

void sub_02038514(void)
{
    if (sCommMan) {
        ResetUnlock(RESET_LOCK_0x1);
        CommMan_SetErrorHandling(0, 0);
        Heap_Free(sCommMan);
        sCommMan = NULL;
        Heap_Destroy(HEAP_ID_COMMUNICATION);
    }
}

void sub_02038548(SaveData *saveData)
{
    if (!sCommMan) {
        Heap_CreateAtEnd(HEAP_ID_APPLICATION, HEAP_ID_COMMUNICATION, 0x100);
        sCommMan = (CommunicationManager *)Heap_Alloc(HEAP_ID_COMMUNICATION, sizeof(CommunicationManager));
        MI_CpuFill8(sCommMan, 0, sizeof(CommunicationManager));
        sCommMan->commType = COMM_TYPE_EMAIL_WIFI;
        sCommMan->unk_51 = 1;
        sCommMan->saveData = saveData;
        CommMan_SetErrorHandling(0, 1);
        ResetLock(RESET_LOCK_0x1);
    }
}

void sub_0203859C(void)
{
    if (sCommMan) {
        ResetUnlock(RESET_LOCK_0x1);
        CommMan_SetErrorHandling(0, 0);
        Heap_Free(sCommMan);
        sCommMan = NULL;
        Heap_Destroy(HEAP_ID_COMMUNICATION);
    }
}

BOOL sub_020385D0(void)
{
    int v0, v1;
    DWCErrorType v2;

    if (!sCommMan) {
        return 0;
    }

    if ((sCommMan->commType == COMM_TYPE_24) || (sCommMan->commType == COMM_TYPE_EMAIL_WIFI)) {
        v1 = DWC_GetLastErrorEx(&v0, &v2);

        if (v1 != 0) {
            DWC_ClearError();
            return 1;
        }
    } else if (sCommMan->commType == COMM_TYPE_25) {
        v1 = DWC_GetLastErrorEx(&v0, &v2);

        if (v1 != 0) {
            if (v2 == DWC_ETYPE_FATAL) {
                return 1;
            }
        }
    }

    return 0;
}

static void CommTask_ConnectWifiBattle(void)
{
    int v0 = NintendoWFC_ConnectToDWCServer();

    sCommMan->timer--;

    if (v0 == NINTENDO_WFC_RESULT_CONNECTED_TO_SERVER) {
        if (sCommMan->commType == COMM_TYPE_LOBBY_WIFI) {
            BOOL v1;

            v1 = ov66_02232714(sCommMan->unk_5C);

            if (v1 == TRUE) {
                sCommMan->lobbyLoginSuccess = TRUE;
                CommManager_SetTask(CommTask_LogInWifiLobby, sCommMan->timer);
                return;
            } else {
                CommManager_SetTask(CommTask_WifiLobbyError, 0);
                return;
            }
        } else {
            CommManager_SetTask(sub_02038164, 0);
            return;
        }
    } else if (v0 != 0) {
        CommManager_SetTask(CommTask_WifiBattleError, 0);
    }

    if (sCommMan->timer <= 0) {
        CommManager_SetTask(CommTask_WifiBattleError, 0);
    }
}

static void CommTask_StartWifiBattleServer(void)
{
    if (!WirelessDriver_IsReady()) {
        return;
    }
    
    Heap_CreateAtEnd(HEAP_ID_APPLICATION, HEAP_ID_NINTENDO_WFC, (0x2A000 + 0xA000 + 0x1400));
    
    if (CommSys_InitServer(1, 1, 512, 1)) {
        NintendoWFC_Init(sCommMan->saveData, HEAP_ID_NINTENDO_WFC, (0x2B000 + 0x1400), CommLocal_MaxMachines(sCommMan->commType) + 1);
        NintendoWFC_SetFatalErrorCallback(sub_020389FC);
        CommSys_SwitchTransitionTypeToParallel();
        CommManager_SetTask(CommTask_ConnectWifiBattle, (30 * 60 * 2));
    }
}

void *sub_0203871C(SaveData *saveData, int param1)
{
    TrainerInfo *v0 = SaveData_GetTrainerInfo(saveData);
    
    if (CommSys_IsInitialized()) {
        return NULL;
    }

    ResetLock(RESET_LOCK_0x1);
    Heap_CreateAtEnd(HEAP_ID_APPLICATION, HEAP_ID_COMMUNICATION, 0x7080);
    CommManager_Initialize(saveData, COMM_TYPE_LOGIN_WIFI);
    sCommMan->unk_00 = Heap_Alloc(HEAP_ID_COMMUNICATION, param1);
    MI_CpuFill8(sCommMan->unk_00, 0, param1);

    sCommMan->contestRegulation = 0;
    sCommMan->saveData = saveData;

    CommManager_SetTask(CommTask_StartWifiBattleServer, 0);

    return sCommMan->unk_00;
}

/**
 * @brief Initializes the Communication Manager for the Wifi Lobby 
 *
 * @param saveData
 * @param param1
 */
void CommManager_LoginWifiLobby(SaveData *saveData, const void *param1)
{
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(saveData);

    if (CommSys_IsInitialized()) {
        return;
    }

    ResetLock(RESET_LOCK_0x1);
    Heap_CreateAtEnd(HEAP_ID_APPLICATION, HEAP_ID_COMMUNICATION, 0x7080);
    CommManager_Initialize(saveData, COMM_TYPE_LOBBY_WIFI);

    sCommMan->unk_00 = NULL;
    sCommMan->unk_5C = param1;
    sCommMan->lobbyLoginSuccess = FALSE;
    sCommMan->contestRegulation = 0;
    sCommMan->saveData = saveData;

    CommManager_SetTask(CommTask_StartWifiLobby, 0);
}

/**
 * @brief Begins the Communication Manager's log out of wifi lobby task
 */
void CommManager_LogoutWifiLobby(void)
{
    if (sCommMan == NULL) {
        return;
    }

    CommManager_SetTask(CommTask_LogoutWifiLobby, 0);
}

/**
 * @brief Gets the flag for whether the login task has been reached successfully
 *
 * @return sCommMan->lobbyLoginSuccess
 */
BOOL CommManager_GetWifiLobbyLoginSuccess(void)
{
    if (sCommMan == NULL) {
        return 0;
    }

    return sCommMan->lobbyLoginSuccess;
}

/**
 * @brief Checks if the current Communication Manager is in a Wifi Lobby Error state
 *
 * @return TRUE if the current task is CommTask_WifiLobbyError
 */
BOOL CommManager_IsWifiLobbyError(void)
{
    if (sCommMan) {
        u32 task = (u32)sCommMan->task;

        if (task == (u32)CommTask_WifiLobbyError) {
            return TRUE;
        }
    }

    return FALSE;
}

/**
 * @brief Starts the wifi p2p connection
 */
void CommManager_StartWifiP2P(UnkEnum_ov66_02232F38 param0)
{
    GF_ASSERT(sCommMan);
    GF_ASSERT(sub_020382C0() == 1);

    if (ov66_02233184(param0) == 0) {
        ov66_02232F38(param0, 4);
        CommManager_SetTask(CommTask_WaitWifiLobbyMatchServerP2P, 0);
    } else {
        ov66_02233260(param0);
        CommManager_SetTask(CommTask_WaitWifiLobbyMatchServerP2P, 0);
    }
}

/**
 * @brief Ends the wifi p2p connection
 */
void CommManager_EndWifiP2P(void)
{
    if (ov66_02233374() == 1) {
        ov66_02233064();
    }

    ov66_0223361C();
    CommManager_SetTask(CommTask_DisconnectWifiLobbyP2P, 0);
}

u32 CommManager_GetWifiP2PConnectState(void)
{
    if (sCommMan) {
        u32 task = (u32)sCommMan->task;

        if (task == (u32)CommTask_ConnectWifiLobbyP2P) {
            return 2;
        } else if (task == (u32)CommTask_WaitWifiLobbyMatchServerP2P) {
            return 1;
        } else if (task == (u32)CommTask_DisconnectWifiLobbyP2P) {
            return 3;
        }
    }

    return 0;
}

void *sub_020388E8(void)
{
    return sCommMan->unk_00;
}

void CommMan_SetErrorHandling(BOOL errorDisconnect, BOOL param1)
{
    if (sCommMan) {
        sCommMan->errorDisconnect = errorDisconnect;
        sCommMan->unk_50 = param1;

        if (errorDisconnect) {
            sCommMan->connectedCount = CommSys_ConnectedCount();
        } else {
            sCommMan->connectedCount = 0;
        }
    }

    sub_02033EA8(errorDisconnect);
    sub_02033ED4(errorDisconnect);
}

BOOL sub_02038938(void)
{
    if (sCommMan) {
        if (sCommMan->commError != 0) {
            return TRUE;
        }

        return sCommMan->unk_50;
    }

    return FALSE;
}

/**
 * @brief Gets the Communication Manager's current communication type
 *
 * @return sCommMan->commType (default COMM_TYPE_SINGLE_BATTLE)
 */
int CommManager_GetCommType(void)
{
    if (sCommMan) {
        return sCommMan->commType;
    }

    return COMM_TYPE_SINGLE_BATTLE;
}

/**
 * @brief Gets the Communication Manager's current contest regulation type
 *
 * @return sCommMan->contestRegulation (default 0)
 */
int CommManager_GetContestRegulation(void)
{
    if (sCommMan) {
        return sCommMan->contestRegulation;
    }

    return 0;
}

void sub_0203898C(u8 *param0)
{
    MI_CpuCopy8(param0, sCommMan->unk_04, NELEMS(sCommMan->unk_04));
}

void sub_020389A0(u8 *param0)
{
    MI_CpuCopy8(sCommMan->unk_04, param0, NELEMS(sCommMan->unk_04));
}

BOOL CommMan_IsConnectedToWifi(void)
{
    return CommLocal_IsWifiGroup(CommManager_GetCommType());
}

void sub_020389C4(u8 param0)
{
    if (sCommMan) {
        sCommMan->unk_52 = param0;
    }
}

u8 sub_020389D8(void)
{
    if (HeapCanaryOK()) {
        return 0;
    }

    if (sCommMan) {
        return sCommMan->unk_52;
    }

    return 0;
}

void sub_020389FC(int param0)
{
    int i = 0;

    NetworkError_DisplayNetworkError(HEAP_ID_SYSTEM, 1, param0);

    while (TRUE) {
        i++;
    }
}

/**
 * @brief Displays the GTS Critical Error screen and halts the game
 */
void NetworkError_DisplayGTSCriticalError(void)
{
    int i = 0;

    NetworkError_DisplayNetworkError(HEAP_ID_SYSTEM, 4, 0);

    while (TRUE) {
        i++;
    }
}

void sub_02038A1C(int param0, BgConfig *param1)
{
    return;
}

void sub_02038A20(int param0)
{
    if (sub_02038938()) {
        if (CommSys_CheckError() || sub_020383E8() || sub_020385D0()
            || (sCommMan->commError != COMM_ERROR_NONE) || CommManager_IsWifiLobbyError()) {
            if (!HeapCanaryOK()) {
                if (!sub_020389D8()) {
                    Sound_StopWaveOutAndSequences();
                    SaveData_SaveStateCancel(sCommMan->saveData);
                    gSystem.touchAutoSampling = TRUE;

                    if (sCommMan->commError == COMM_ERROR_3) {
                        sub_020389C4(COMM_ERROR_3);
                    } else if ((sCommMan->commType == COMM_TYPE_25) || (sCommMan->commType == COMM_TYPE_MYSTERY_GIFT) || (sCommMan->commType == COMM_TYPE_EMAIL_WIFI)) {
                        sub_020389C4(COMM_ERROR_RESET_TITLE);
                    } else {
                        sub_020389C4(COMM_ERROR_RESET_SAVEPOINT);
                    }
                }
            }
        }
    }
}

/**
 * @brief Checks if the Commmunication Manager is in a state that indicates it's finished being reset
 *
 * @return TRUE if it has been reset
 */
BOOL CommManager_CheckResetFinished(void)
{
    if (CommServerClient_IsInClosedSecretBase() || !CommMan_IsInitialized()) {
        return TRUE;
    }

    if (!sub_020332D0()) {
        return TRUE;
    }

    return FALSE;
}

/**
 * @brief Sets the Communication Manager's current comm error
 *
 * @param error
 *
 * @return TRUE if sCommMan is initialized 
 */
BOOL CommManager_SetCommError(int error)
{
    if (sCommMan) {
        sCommMan->commError = error;
        CommSys_StartShutdown();
        return TRUE;
    }

    return FALSE;
}

/**
 * @brief Sets sCommMan->commType to COMM_TYPE_POFFIN_WIFI and updates the data transfer callbacks
 */
void CommManager_SetState_WifiPoffin(void)
{
    sCommMan->commType = COMM_TYPE_POFFIN_WIFI;
    NintendoDWC_SetDataTransferCallbacks(sub_020352C0, sub_020352C0);
}

/**
 * @brief Sets sCommMan->commType to COMM_TYPE_CLUB_WIFI and updates the data transfer callbacks
 */
void CommManager_SetState_WifiClub(void)
{
    sCommMan->commType = COMM_TYPE_CLUB_WIFI;
    NintendoDWC_SetDataTransferCallbacks(sub_020352C0, sub_020352C0);
}

/**
 * @brief Sets sCommMan->commType to COMM_TYPE_LOBBY_WIFI and updates the data transfer callbacks
 */
void CommManager_SetState_WifiLobby(void)
{
    sCommMan->commType = COMM_TYPE_LOBBY_WIFI;
    NintendoDWC_SetDataTransferCallbacks(sub_020352C0, sub_020352C0);
}

/**
 * @brief Sets sCommMan->commType to COMM_TYPE_LOGIN_WIFI and updates the data transfer callbacks
 */
void CommManager_SetState_LoginWifi(void)
{
    sCommMan->commType = COMM_TYPE_LOGIN_WIFI;
    NintendoDWC_SetDataTransferCallbacks(sub_020351F8, sub_0203509C);
}

/**
 * @brief Sets sCommMan->commType to COMM_TYPE_SINGLE_BATTLE and updates the data transfer callbacks
 */
void CommManager_SetState_SingleBattleWifi(void)
{
    sCommMan->commType = COMM_TYPE_SINGLE_BATTLE_WIFI;
    NintendoDWC_SetDataTransferCallbacks(sub_020351F8, sub_0203509C);
}

/**
 * @brief Task to initialize the Communication Manager for the Wifi Lobby and battle
 */
static void CommTask_StartWifiLobby(void)
{
    if (!WirelessDriver_IsReady()) {
        return;
    }

    Heap_CreateAtEnd(HEAP_ID_APPLICATION, HEAP_ID_NINTENDO_WFC, 0x60000);

    if (CommSys_InitServer(1, 1, 512, 1)) {
        NintendoWFC_Init(sCommMan->saveData, HEAP_ID_NINTENDO_WFC, 0x58000, CommLocal_MaxMachines(sCommMan->commType) + 1);
        NintendoWFC_SetFatalErrorCallback(sub_020389FC);
        CommSys_SwitchTransitionTypeToParallel();
        NintendoWFC_SetVoiceChatEnabled(0);
        sub_0203632C(0);
        CommManager_SetTask(CommTask_ConnectWifiBattle, (30 * 60 * 2));
    }
}

/** 
 * @brief Task while logging in to the wifi lobby, errors if timed out
 */
static void CommTask_LogInWifiLobby(void)
{
    BOOL result;

    sCommMan->timer--;

    if (sCommMan->timer <= 0) {
        CommManager_SetTask(CommTask_WifiBattleError, 0);
        return;
    }

    CommSys_SetWifiConnected(1);

    result = CommManager_UpdateWifiLobbyCommon();

    if (result == 0) {
        return;
    }

    result = ov66_02232804();

    if (result) {
        CommManager_SetTask(CommTask_ConnectWifiLobby, 0);
    }
}

/**
 * @brief Task while connecting to the wifi lobby. Internal process handled entirely by CommManager_UpdateWifiLobbyCommon
 */
static void CommTask_ConnectWifiLobby(void)
{
    BOOL v0 = CommManager_UpdateWifiLobbyCommon();

    if (v0 == 0) {
        return;
    }
}

/**
 * @brief Processes any DWC Error when handling the wifi connection for the wifi lobby
 *
 * @return TRUE if no error occured
 */
static BOOL CommManager_ProcessWifiLobbyDWCError(int dwcError)
{
    BOOL ret = TRUE;

    if ((dwcError >= DWC_ERROR_FRIENDS_SHORTAGE) && ((DWC_ERROR_NUM) > dwcError)) {
        CommManager_SetTask(CommTask_WifiBattleFailed, 0);
        ret = FALSE;
    } else if (dwcError < 0) {
        CommManager_SetTask(CommTask_WifiBattleError, 0);
        ret = FALSE;
    } else if (dwcError == ((DWC_ERROR_NUM) + 3)) {
        CommManager_SetTask(CommTask_WifiLobbyTimeout, 0);
        ret = FALSE;
    } else if (dwcError == ((DWC_ERROR_NUM) + 4)) {
        ret = FALSE;

        if (sCommMan->errorDisconnect) {
            CommManager_SetTask(CommTask_WifiBattleError, 0);
        } else {
            CommManager_SetTask(CommTask_DisconnectWifiBattle, 0);
        }
    }

    if (sCommMan->errorDisconnect) {
        if (sCommMan->connectedCount != CommSys_ConnectedCount()) {
            CommManager_SetTask(CommTask_WifiBattleError, 0);
            ret = 0;
        }
    }

    return ret;
}

/**
 * @brief Calls the updates wifi lobby function
 *
 * @return TRUE if no error occured processing the lobby
 */
static BOOL CommManager_UpdateWifiLobby(void)
{
    UnkEnum_ov66_0223287C v0;
    BOOL noError = TRUE;

    v0 = ov66_022325D8(); //Wifi lobby update function

    switch (v0) {
    case UnkEnum_ov66_0223287C_00: //none
    case UnkEnum_ov66_0223287C_01: //login wait
    case UnkEnum_ov66_0223287C_02: //connect
    case UnkEnum_ov66_0223287C_03: //logout wait
        break;

    case UnkEnum_ov66_0223287C_04: //error
        CommManager_SetTask(CommTask_WifiLobbyError, 0);
        noError = FALSE;
        break;
    }

    return noError;
}

/**
 * @brief Calls the update wifi lobby function and wifi connection process function
 *
 * @return TRUE if no error occured processing the lobby or handling the connection
 */
static BOOL CommManager_UpdateWifiLobbyCommon(void)
{
    int v0;
    BOOL ret;

    v0 = NintendoWFC_Process(0);

    ret = CommManager_ProcessWifiLobbyDWCError(v0);

    if (ret == 0) {
        return ret;
    }

    ret = CommManager_UpdateWifiLobby();
    return ret;
}

/**
 * @brief Updates the wifi lobby matchmaking
 *
 * @param matchmakingRet
 *
 * @return TRUE if no errors occurred while updating the lobby or while processing matchmaking
 */
static BOOL CommManager_UpdateWifiLobbyMatchmaking(u32 *matchmakingRet)
{
    int wfcResult;
    BOOL ret;

    wfcResult = NintendoWFC_Process(0);

    if (wfcResult >= NINTENDO_WFC_RESULT_MATCHMAKING_SUCCESS) {
        *matchmakingRet = wfcResult;
    } else {
        *matchmakingRet = 0;

        ret = CommManager_ProcessWifiLobbyDWCError(wfcResult);

        if (ret == 0) {
            return ret;
        }
    }

    ret = CommManager_UpdateWifiLobby();
    return ret;
}

/**
 * @brief Calls the Wifi Lobby logout function and waits
 */
static void CommTask_LogoutWifiLobby(void)
{
    ov66_0223282C();
    CommManager_SetTask(CommTask_WaitLogoutWifiLobby, 0);
}

/**
 * @brief Waits until the Wifi logout function is complete, then ends communication
 */
static void CommTask_WaitLogoutWifiLobby(void)
{
    BOOL result;

    NintendoWFC_Process(0);
    CommManager_UpdateWifiLobby();

    result = ov66_02232854();

    if (result) {
        ResetUnlock(RESET_LOCK_0x1);
        CommInfo_Delete();
        CommManager_SetTask(CommTask_EndConnection, 5);
        CommSys_SetWifiConnected(0);
    }
}

/**
 * @brief Task the Comm Manager uses to indicate that an error has occured in the wifi lobby. Does nothing when called.
 */
static void CommTask_WifiLobbyError(void)
{
    return;
}

/**
 * @brief Connects to the Wifi Lobby using a p2p connection
 */
static void CommTask_ConnectWifiLobbyP2P(void)
{
    BOOL v0;
    CommManager_UpdateWifiLobbyCommon();

    v0 = ov66_02233164();

    if (v0 == 1) {
        ov66_0223361C();
        CommManager_SetTask(CommTask_DisconnectWifiLobbyP2P, 0);
    }
}

static void CommTask_WaitWifiLobbyMatchServerP2P(void)
{
    BOOL v0;
    u32 v1;

    v0 = ov66_02233164();

    if (v0 == 1) {
        ov66_0223361C();
        CommManager_SetTask(CommTask_DisconnectWifiLobbyP2P, 0);
        return;
    }

    CommManager_UpdateWifiLobbyMatchmaking(&v1);

    switch (v1) {
    case 0:
        break;
    case (DWC_ERROR_NUM):
        CommManager_SetTask(CommTask_ConnectWifiLobbyP2P, 0);
        break;
    default:
        ov66_0223361C();
        CommManager_SetTask(CommTask_ConnectWifiLobby, 0);
        break;
    }
}

/**
 * @brief Handles a wifi lobby p2p disconnect and updates the wifi lobby
 */
static void CommTask_DisconnectWifiLobbyP2P(void)
{
    BOOL updateResult;
    int ret = NintendoWFC_Process(1);

    if (ret < 0) {
        CommManager_SetTask(CommTask_WifiBattleError, 0);
        return;
    }

    updateResult = CommManager_UpdateWifiLobby();

    if (updateResult == 0) {
        return;
    }

    if (NintendoWFC_EndConnection(0)) {
        ret = NintendoWFC_ReturnToReadyState();

        if (ret) {
            CommSys_Reset();
            sub_0203632C(0);
            CommManager_SetTask(CommTask_ConnectWifiLobby, 0);
        }
    }
}

/**
 * @brief Handles a wifi lobby timeout and updates the wifi lobby
 */
static void CommTask_WifiLobbyTimeout(void)
{
    int ret = NintendoWFC_Process(0);

    if (ret < 0) {
        CommManager_SetTask(CommTask_WifiBattleError, 0);
    }

    CommManager_UpdateWifiLobby();
}

/**
 * @brief Sets the Communication Manager's commType to COMM_TYPE_FRONTIER_WIFI
 */
void CommManager_SetState_FrontierWifi(void)
{
    sCommMan->commType = COMM_TYPE_FRONTIER_WIFI;
}

/**
 * @brief Checks if the Communication System is initialized and the comm type isn't poketch
 *
 * @return TRUE if the Communication System is initialized and the comm type isn't poketch
 */
BOOL CommManager_IsInitializedNotPoketch(void)
{
    if (sCommMan && (sCommMan->commType == COMM_TYPE_POKETCH)) {
        return FALSE;
    }

    return CommSys_IsInitialized();
}
