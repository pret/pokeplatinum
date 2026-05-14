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
    u8 party[6];
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
    u8 unionConnectState;
    u8 connectionID;
    u8 commType;
    u8 contestRegulation;
    u8 unk_4C;
    s8 wifiTarget;
    u8 unk_4E;
    u8 errorDisconnect;
    u8 errorUnknown_50;
    u8 globalWifi;
    u8 resetType;
    u8 pauseUnion;
    u8 unk_54;
    u8 initializeAsServer; //always FALSE
    u8 unk_56;
    u8 doNotConnectUnderground;
    u8 disconnectedWifi;
    u8 commError;
    u8 pauseUnderground;
    const void *unk_5C;
    u8 lobbyLoginSuccess;
    u8 unk_61[3];
} CommunicationManager;

static void CommManager_SetTask(CommTaskFunc param0, int param1);
static void CommTask_StartUnderground(void);
static void CommTask_ReinitUndergroundClient(void);
static void CommTask_ReinitUnderground(void);
static void CommTask_SearchUndergroundClient(void);
static void CommTask_ForceConnectUndergroundClient(void);
static void CommTask_ConnectingUndergroundClient(void);
static void CommTask_ConnectUndergroundClient(void);
static void CommTask_ResetUnderground(void);
static void CommTask_ResetUndergroundServer(void);
static void CommTask_ResetUndergroundClient(void);
static void CommTask_InitUndergroundServer(void);
static void CommTask_WaitUndergroundServer(void);
static void CommTask_InitConnectUndergroundServer(void);
static void CommTask_ConnectUndergroundServer(void);
static void CommManager_EndConnectionUnderground(void);
static void CommTask_RestartSecretBase(void);
static void CommTask_StartBattleServer(void);
static void CommTask_WaitBattleServer(void);
static void CommTask_ConnectingBattleServer(void);
static void CommTask_StartBattleClient(void);
static void CommTask_ScanBattleClient(void);
static void CommTask_ConnectBattleClient(void);
static void CommTask_ConnectingBattleClient(void);
static void CommTask_WaitBattleClient(void);
static void CommTask_RetryBattleClient(void);
static void CommTask_ReinitBattleClient(void);
static void CommTask_ResetBattleClient(void);
static void CommTask_ReconnectBattleClient(void);
static void CommTask_StartUndergroundWifiClient(void);
static void CommTask_StartUnion(void);
static void CommTask_SearchUnionClient(void);
static void CommTask_EndUnionClient(void);
static void CommTask_InitializeServerUnion(void);
static void CommTask_WaitUnionServer(void);
static void CommTask_RestartUnionClient(void);
static void CommTask_ConnectUnionClient(void);
static void CommTask_StartForceConnectUnion1(void);
static void CommTask_StartForceConnectUnion2(void);
static void CommTask_ForceConnectUnion(void);
static void CommTask_ConnectingUnionClient(void);
static void CommTask_SuccededConnectUnionClient(void);
static void CommTask_FailedConnectUnionClient(void);
static void CommTask_ResetUnionClient(void);
static void CommTask_ConnectUnionServer(void);
static void CommTask_PauseUnionServer(void);
static void CommTask_StartRandomBattleServer(void);
static void CommTask_StartRandomBattleClient(void);
static void CommTask_None(void);
static void CommTask_End(void);
static void CommTask_WaitEndConnectionUnionClient(void);
static void CommTask_EndConnectionUnionClient(void);
static void CommTask_EndConnection(void);
static void CommTask_WifiBattleLogin(void);
static void CommTask_LogoutWifi(void);
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
static u8 sFreakConfirmationMessage[] = { "FREAK" };
static u8 sGameConfirmationMessage[] = { " GAME" };
static u8 sFullConfirmationMessage[] = { " FULL" };

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
    sCommMan->unionConnectState = 0;
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

    if (CommManager_IsConnectedToWifi()) {
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
    CommManager_SetTask(CommTask_StartUndergroundWifiClient, 0);
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
    CommManager_SetTask(CommTask_RetryBattleClient, 0);
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
    CommManager_SetTask(CommTask_StartForceConnectUnion1, 0);
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

    if (!((sCommMan->errorDisconnect == 1) && (sCommMan->errorUnknown_50 == 1)) || (sCommMan->commType == COMM_TYPE_UNION)) {
        CommManager_SetErrorHandling(0, 0);
    }

    NetworkIcon_Destroy();

    sCommMan->commType = COMM_TYPE_UNION;
    sCommMan->pauseUnion = FALSE;

    WirelessManager_SetMaxNumConnections(sCommMan->maxNumConnection);

    if (CommSys_CurNetId() == 0) {
        WirelessManager_SetPauseConnectionSystem(1);
        CommManager_SetTask(CommTask_WaitEndConnectionUnionClient, 15);
    } else {
        CommManager_SetTask(CommTask_EndConnectionUnionClient, 5);
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
    CommManager_SetTask(CommTask_StartRandomBattleClient, 0);
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

    if (CommManager_IsConnectedToWifi()) {
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

/**
 * @brief Reinitializes the Communication Manager for underground play. Only allows the Communication Manager to be initialized as a client.
 */
static void CommTask_ReinitUndergroundClient(void)
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

/**
 * @brief Task indicating the client is searching for servers to connect to for underground play
 */
static void CommTask_SearchUndergroundClient(void)
{
    int connectionID;

    sub_02033A5C();

    if (sCommMan->pauseUnderground || sCommMan->unk_56) {
        return;
    }

    connectionID = sub_020338EC();

    if (connectionID != -1) {
        sCommMan->connectionID = connectionID;
        CommManager_SetTask(CommTask_ForceConnectUndergroundClient, 32);
        return;
    }

    if (sCommMan->timer != 0) {
        sCommMan->timer--;
        return;
    }

    connectionID = sub_0203394C();

    if (connectionID != -1) {
        sCommMan->connectionID = connectionID;
        CommManager_SetTask(CommTask_ForceConnectUndergroundClient, 32);
        return;
    }

    CommManager_SetTask(CommTask_ResetUndergroundServer, 0);
}

/**
 * @brief Forcibly opens an underground connection by connecting a client to a found server or restarting the Communication Manager as a server if that isn't possible
 */
static void CommTask_ForceConnectUndergroundClient(void)
{
    sub_02033A5C();

    if (sub_02033898(sCommMan->connectionID) != 0) {
        if (sub_02034984(sCommMan->connectionID)) {
            CommManager_SetTask(CommTask_ConnectingUndergroundClient, 100);
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

/**
 * @brief Task indicating the client is connecting to a server for underground play
 */
static void CommTask_ConnectingUndergroundClient(void)
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

/**
 * @brief Switches to a server mode and initializes the Communication Manager as a server
 */
static void CommTask_ResetUndergroundServer(void)
{
    if (!sub_020336D4()) {
        return;
    }

    CommManager_SetTask(CommTask_InitUndergroundServer, 0);
}

/**
 * @brief Switches to a client mode and initializes the Communication Manager as a client
 */
static void CommTask_ResetUndergroundClient(void)
{
    if (!sub_020336D4()) {
        return;
    }

    CommManager_SetTask(CommTask_ReinitUndergroundClient, 0);
}

/**
 * @brief Initializes the Communication Manager as a server for underground play
 */
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

/**
 * @brief Wait task for the server for underground play. Times out if no clients connect.
 */
static void CommTask_WaitUndergroundServer(void)
{
    if (CommSys_IsClientConnecting()) {
        sCommMan->unk_4E = 1;
        CommManager_SetTask(CommTask_InitConnectUndergroundServer, 0);
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
        CommManager_SetTask(CommTask_ResetUndergroundClient, 2);
    }
}

/**
 * @brief Initializes all server variables for underground play as a server.
 */
static void CommTask_InitConnectUndergroundServer(void)
{
    CommSys_SetAlone(0);
    sub_02033EA8(1);
    CommSys_EnableSendMovementData();
    CommManager_SetTask(CommTask_ConnectUndergroundServer, 0);
}

/**
 * @brief State task to indicate the Communication Manager is connected as a server for underground play. Does nothing when called.
 */
static void CommTask_ConnectUndergroundServer(void)
{
    return;
}

/**
 * @brief State task to indicate the Communication Manager is connected as a client for underground play. Does nothing when called.
 */
static void CommTask_ConnectUndergroundClient(void)
{
    return;
}

/**
 * @brief Starts a secret base connection. Only one person is allowed in the secret base at a time.
 */
static void CommTask_StartSecretBase(void)
{
    if (!CommManager_IsConnectedToWifi()) {
        if (!sub_02033E30()) {
            return;
        }

        CommSys_SetAlone(1);
        CommSys_EnableSendMovementData();
        CommServerClient_SetSecretBaseClosedState(TRUE);
    }

    CommManager_SetTask(CommTask_None, 0);
}

/**
 * @brief Restarts a secret base connection and the communication system
 */
static void CommTask_RestartSecretBase(void)
{
    if (!sub_020336D4()) {
        return;
    }

    CommSys_Reset();
    CommManager_SetTask(CommTask_StartSecretBase, 0);
}

/**
 * @brief Starts the Communication Manager for underground online play as a client
 */
static void CommTask_StartUndergroundWifiClient(void)
{
    if (!WirelessDriver_IsReady()) {
        return;
    }

    CommServerClient_SetSecretBaseClosedState(FALSE);
    CommSys_Reset();
    CommManager_SetTask(CommTask_ReinitUnderground, 0);
}

/**
 * @brief Resets and reinitializes the communication manager for underground play
 */
static void CommTask_ResetUnderground(void)
{
    if (!sub_020336D4()) {
        return;
    }

    CommManager_SetTask(CommTask_ReinitUnderground, 0);
}

/**
 * @brief Initializes the communication manager for battles as a server
 */
static void CommTask_StartBattleServer(void)
{
    if (!WirelessDriver_IsReady()) {
        return;
    }

    CommServerClient_Init(sCommMan->trainerInfo, 1);
    CommInfo_Init(sCommMan->saveData, sCommMan->battleRegulation);

    if (CommSys_InitServer(1, 1, 512, 1)) {
        CommSys_SwitchTransitionTypeToParallel();
        CommManager_SetTask(CommTask_ConnectingBattleServer, 0);
    }
}

/**
 * @brief Task that indicates the Communication Manager is connecting to a battle as a server
 */
static void CommTask_ConnectingBattleServer(void)
{
    if (!CommSys_IsPlayerConnected(CommSys_CurNetId())) {
        return;
    }

    CommManager_SetTask(CommTask_WaitBattleServer, 0);
}

/**
 * @brief Task that indicates the Communication Manager is waiting during battle as a server
 */
static void CommTask_WaitBattleServer(void)
{
    if (!CommSys_IsInitialized()) {
        CommManager_SetTask(CommTask_End, 0);
    }
}

/**
 * @brief Initializes the Communication Manager and System as a client for battles
 */
static void CommTask_StartBattleClient(void)
{
    if (!WirelessDriver_IsReady()) {
        return;
    }

    CommServerClient_Init(sCommMan->trainerInfo, 1);
    CommInfo_Init(sCommMan->saveData, sCommMan->battleRegulation);

    if (CommSys_InitClient(1, 1, 512)) {
        CommSys_SwitchTransitionTypeToParallel();
        CommManager_SetTask(CommTask_ScanBattleClient, 0);
    }
}

/**
 * @brief Task that indicates the client is scanning for servers to connect to for battles
 */
static void CommTask_ScanBattleClient(void)
{
    sub_02033A5C();
}

/**
 * @brief Begins connecting the client for battles
 */
static void CommTask_ConnectBattleClient(void)
{
    sub_02033A5C();

    if (sub_02034984(sCommMan->connectionID)) {
        CommManager_SetTask(CommTask_ConnectingBattleClient, 10);
    }
}

/**
 * @brief Task that indicates the Communication Manager is connecting to a battle as a client
 */
static void CommTask_ConnectingBattleClient(void)
{
    if (CommSys_CheckError()) {
        CommManager_SetTask(CommTask_ResetBattleClient, 0);
    }

    if (CommSys_IsPlayerConnected(CommSys_CurNetId()) && (0 != CommSys_CurNetId())) {
        CommManager_SetTask(CommTask_WaitBattleClient, 0);
    }
}

/**
 * @brief Resets the client's connection for battles
 */
static void CommTask_ResetBattleClient(void)
{
    sub_020336D4();
    CommManager_SetTask(CommTask_ReconnectBattleClient, 2);
}

/**
 * @brief Task that indicates the Communication Manager is attempting to reconnect during battle as a client.
 */
static void CommTask_ReconnectBattleClient(void)
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
        CommManager_SetTask(CommTask_ConnectBattleClient, 10);
    }
}

/**
 * @brief Task that indicates the Communication Manager is waiting during battle as a client
 */
static void CommTask_WaitBattleClient(void)
{
    if (!CommSys_IsInitialized()) {
        CommManager_SetTask(CommTask_End, 0);
    }
}

/**
 * @brief Attempts to retry the connection for the battle client
 */ 
static void CommTask_RetryBattleClient(void)
{
    sub_020336D4();
    CommManager_SetTask(CommTask_ReinitBattleClient, 2);
}

/**
 * @brief Task that indicates the Communication Manager is trying to reconnect during battle as a client, reinitializes the client if it fails
 */
static void CommTask_ReinitBattleClient(void)
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
        CommManager_SetTask(CommTask_ScanBattleClient, 10);
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

/**
 * @brief Wait task to end the client's connection to the union
 */
static void CommTask_WaitEndConnectionUnionClient(void)
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

/**
 * @brief Task to end the client's connection to the union, without wait
 */
static void CommTask_EndConnectionUnionClient(void)
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

/**
 * @brief Ends the clients connection to the union. Reinitializes as a server if applicable.
 */
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
        CommManager_SetTask(CommTask_WaitUnionServer, 10000);
    }
}

/**
 * @brief Wait task for the server's union connection
 */
static void CommTask_WaitUnionServer(void)
{
    if (sub_02034148()) {
        
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

/**
 * @brief Restarts the communication manager and reinitializes it as a client for union play
 */
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

/**
 * @brief Starts to force connects to the union. Part 1 waits for a potential internal swap between server and client.
 */
static void CommTask_StartForceConnectUnion1(void)
{
    if (!sub_020336D4()) {
        return;
    }

    CommManager_SetTask(CommTask_StartForceConnectUnion2, 0);
}

/**
 * @brief Starts to force connects to the union. Part 2 initializes the Communication Manager as a client
 */
static void CommTask_StartForceConnectUnion2(void)
{
    if (!sub_02033E30()) {
        return;
    }

    if (CommSys_InitClient(0, 0, 512)) {
        CommSys_SwitchTransitionTypeToParallel();
        CommManager_SetTask(CommTask_ForceConnectUnion, 100);
    }
}

/**
 * @brief Forces a connection to the union. If not possible, resets the communication manager as a client.
 */
static void CommTask_ForceConnectUnion(void)
{
    if (sub_02033898(sCommMan->connectionID) != 0) {
        if (sub_02034984(sCommMan->connectionID)) {
            CommManager_SetTask(CommTask_ConnectingUnionClient, 100);
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

/**
 * @brief Task that indicates a client is connecting to the union. Resets on timeout or error.
 */
static void CommTask_ConnectingUnionClient(void)
{
    if (CommSys_CheckError()) {
        CommManager_SetTask(CommTask_ResetUnionClient, 0);
        return;
    }

    if (CommSys_IsPlayerConnected(CommSys_CurNetId())) {
        sCommMan->unionConnectState = 0;
        CommManager_SetTask(CommTask_ConnectUnionClient, 120);
        return;
    }

    if (sCommMan->timer != 0) {
        sCommMan->timer--;
        return;
    }

    CommManager_SetTask(CommTask_ResetUnionClient, 0);
}

/**
 * @brief Connects the client to the union server. Resets on error or timeout.
 */
static void CommTask_ConnectUnionClient(void)
{
    if (CommSys_CheckError()) {
        CommManager_SetTask(CommTask_ResetUnionClient, 0);
        return;
    }

    if (sCommMan->unionConnectState == 2) {
        CommManager_SetTask(CommTask_FailedConnectUnionClient, 0);
        return;
    }

    if (sCommMan->unionConnectState == 1) {
        CommInfo_SendPlayerInfo();
        CommManager_SetTask(CommTask_SuccededConnectUnionClient, 0);
        return;
    }

    if (sCommMan->timer > (120 - 10)) {
        CommSys_SendDataFixedSize(6, sFreakConfirmationMessage);
    }

    if (sCommMan->timer != 0) {
        sCommMan->timer--;
        return;
    }

    CommManager_SetTask(CommTask_ResetUnionClient, 0);
}

/**
 * @brief Task that indicates a client has sucessfully connected to the union. Monitors for errors and resets on error.
 */
static void CommTask_SuccededConnectUnionClient(void)
{
    if (CommSys_CheckError()) {
        CommManager_SetTask(CommTask_ResetUnionClient, 0);
        return;
    }
}

/**
 * @brief Task that indicates the client failed to connect to the union server. Does nothing when called.
 */
static void CommTask_FailedConnectUnionClient(void)
{
    return;
}

/**
 * @brief Resets the Communication Manager as a client for union play. Fails after retrying too many times.
 */
static void CommTask_ResetUnionClient(void)
{
    sCommMan->unionConnectState = 0;

    if (!sub_020336D4()) {
        return;
    }

    if (sCommMan->retryConnectionAttempts != 0) {
        sCommMan->retryConnectionAttempts--;
        CommManager_SetTask(CommTask_StartForceConnectUnion2, 0);
    } else {
        CommManager_SetTask(CommTask_FailedConnectUnionClient, 0);
    }
}

/**
 * @brief Connection task for the server for union play
 */
static void CommTask_ConnectUnionServer(void)
{
    if (!CommSys_IsClientConnecting()) {
        if (!CommManager_CheckError()) {
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
        if (!CommManager_CheckError()) {
            CommManager_SetTask(CommTask_ResetUnionClient, 0);
            return;
        }
    }
}

/**
 * @brief Task to indicate the connection is paused without causing errors. Reinitializes the connection when unpaused.
 */
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

/**
 * @brief Initializes the Communication Manager for the Drawing minigame in the union as a server
 */
void CommManager_StartDrawServer(void)
{
    sCommMan->commType = COMM_TYPE_DRAW;

    if (CommSys_CurNetId() == 0) {
        u8 data = 0;
        CommSys_SendDataFixedSize(10, &data);
    } else {
        u8 data = 0;
        CommSys_SendDataFixedSize(10, &data);
    }
}

/**
 * @brief Initializes the Communication Manager for the Drawing minigame in the union as a client
 *
 * @param connectionID
 */
void CommManager_StartDrawClient(int connectionID)
{
    sCommMan->connectionID = connectionID;
    sCommMan->retryConnectionAttempts = 3;
    CommManager_SetTask(CommTask_StartDrawClient, 0);
}

/**
 * @brief Sets the current commType to COMM_TYPE_MIX_RECORDS
 */
void CommManager_SetState_MixRecords(void)
{
    sCommMan->commType = COMM_TYPE_MIX_RECORDS;
}

/**
 * @brief Initializes the Communication Manager to Mix Records as a client 
 *
 * @param connectionID
 */
void CommManager_StartMixRecordsClient(int connectionID)
{
    sCommMan->connectionID = connectionID;
    sCommMan->commType = COMM_TYPE_MIX_RECORDS;
    sCommMan->retryConnectionAttempts = 3;

    NetworkIcon_Init();
    CommManager_SetTask(CommTask_StartForceConnectUnion1, 0);
}

/**
 * @brief Sets sCommMan->commType to COMM_TYPE_SPIN_TRADE
 */
void CommManager_SetState_SpinTrade(void)
{
    sCommMan->commType = COMM_TYPE_SPIN_TRADE;
}

/**
 * @brief Initializes the Communication Manager for Spin Trade as a client 
 *
 * @param connectionID
 */
void CommManager_StartSpinTradeClient(int connectionID)
{
    sCommMan->connectionID = connectionID;
    sCommMan->commType = COMM_TYPE_SPIN_TRADE;
    sCommMan->retryConnectionAttempts = 3;

    NetworkIcon_Init();
    CommManager_SetTask(CommTask_StartForceConnectUnion1, 0);
}

/**
 * @brief Task to start the draw connection for clients
 */
static void CommTask_StartDrawClient(void)
{
    if (sub_020336D4()) {
        CommManager_SetTask(CommTask_InitDrawClient, 0);
    }
}

/**
 * @brief Task to initialize the Communication Manager for the union Draw minigame for clients
 */
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

/**
 * @brief Connects the Communication Manager to other players for the union Draw minigame.
 */
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

/**
 * @brief Task that indicates the Communication Manager is connecting to other players for the union Draw minigame
 */
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

/**
 * @brief Validates a confirmation message that should be "FREAK" to ensure communication has been established. Sends a response with the user's netID based on the result
 *
 * @param netID
 * @param unused_1
 * @param confirmationMessage
 * @param unused_3
 */
void CommManager_ValidateConfirmationMessage(int netID, int unused_1, void *msg, void *unused_3)
{
    int i;
    u8 *confirmation = msg;
    BOOL success = 1;

    if (CommSys_CurNetId() != 0) {
        return;
    }

    success = 1;

    for (i = 0; i < sizeof(sFreakConfirmationMessage); i++) {
        if (confirmation[i] != sFreakConfirmationMessage[i]) {
            success = 0;
            break;
        }
    }

    if (success && (!sCommMan->pauseUnion)) {
        sGameConfirmationMessage[0] = netID;
        // "[netID]GAME" indicates a success
        CommSys_SendDataFixedSizeServer(7, sGameConfirmationMessage);
        return;
    }

    // "[netID]FULL" indicates a failure
    sFullConfirmationMessage[0] = netID;
    CommSys_SendDataFixedSizeServer(7, sFullConfirmationMessage);
}

/**
 * @brief Validates a confirmation response message that should be "[netID]GAME" or "[netID]FULL" to ensure communication has been established. 
 *
 * @param unused_0
 * @param unused_1
 * @param confirmationMessage
 * @param unused_3
 */
void CommManager_ValidateConfirmationResponseMessage(int unused_0, int unused_1, void *msg, void *unused_3)
{
    u8 netID;
    int i;
    u8 *response = msg;
    BOOL noMismatch = 1;

    for (i = 1; i < sizeof(sGameConfirmationMessage); i++) {
        if (response[i] != sGameConfirmationMessage[i]) {
            noMismatch = 0;
            break;
        }
    }

    if (noMismatch) {
        netID = response[0];

        if (netID == CommSys_CurNetId()) {
            sCommMan->unionConnectState = 1;
        }

        return;
    }

    noMismatch = 1;

    for (i = 1; i < sizeof(sFullConfirmationMessage); i++) {
        if (response[i] != sFullConfirmationMessage[i]) {
            noMismatch = 0;
            break;
        }
    }

    if (noMismatch) {
        netID = response[0];

        if (netID == (u8)CommSys_CurNetId()) {
            sCommMan->unionConnectState = 2;
        }

        return;
    }
}

/**
 * @brief Gets the size of the confirmation messages used to validate connections
 *
 * @return sizeof(sFreakConfirmationMessage)
 */
int CommManager_ConfirmationMessage_sizeof(void)
{
    return sizeof(sFreakConfirmationMessage);
}

/**
 * @brief Sets the max number of connections allowed by the Communication Manager
 *
 * @param maxNumConnection
 */
void CommManager_SetMaxNumConnections(int maxNumConnection)
{
    if (sCommMan) {
        sCommMan->maxNumConnection = maxNumConnection;
        WirelessManager_SetMaxNumConnections(maxNumConnection);
    }
}

/**
 * @brief Scans for other connections for the Poketch Link Search feature
 */
static void CommTask_ScanPoketch(void)
{
    sub_02033A5C();
}

/**
 * @brief Starts the connection for the Poketch Link Search feature as as client
 */
static void CommTask_StartPoketchClient(void)
{
    if (!WirelessDriver_IsReady()) {
        return;
    }

    CommServerClient_Init(sCommMan->trainerInfo, 1);
    CommInfo_Init(sCommMan->saveData, NULL);

    if (CommSys_InitClient(1, 1, 32)) {
        CommSys_SwitchTransitionTypeToParallel();
        CommManager_SetTask(CommTask_ScanPoketch, 0);
    }
}

/**
 * @brief Initializes the Communication Manager for the Link Search poketch app. Always initializes as a client.
 *
 * @param saveData
 */
void CommManager_InitializePoketchLinkSearch(SaveData *saveData)
{
    if (CommSys_IsInitialized()) {
        return;
    }

    Heap_CreateAtEnd(HEAP_ID_APPLICATION, HEAP_ID_COMMUNICATION, 0x7000);
    CommManager_Initialize(saveData, COMM_TYPE_POKETCH);

    sCommMan->contestRegulation = 0;

    CommManager_SetTask(CommTask_StartPoketchClient, 0);
}

/**
 * @brief Ends the connection used by the Poketch Link Search app
 */
void CommManager_EndPoketchLinkSearch(void)
{
    if (sCommMan == NULL) {
        return;
    }

    CommManager_SetTask(CommTask_EndConnection, 5);
}

/**
 * @brief Checks if the communication manager is in a poketch search state
 *
 * @return TRUE if the current task is CommTask_ScanPoketch
 */
BOOL CommManager_IsPoketchSearching(void)
{
    int i;
    u32 tasks[] = {
        (u32)CommTask_ScanPoketch, 0
    };
    u32 task = (u32)sCommMan->task;

    if (sCommMan == NULL) {
        return FALSE;
    }

    for (i = 0; tasks[i] != 0; i++) {
        if (task == tasks[i]) {
            return TRUE;
        }
    }

    return FALSE;
}

/**
 * @brief Callback used by WirelessManager_SetGGIDScanCallback
 *
 * @param ggid
 * @param commType
 */
static void CommManager_GGIDScanCallback(u32 ggid, int commType)
{
    switch (ggid) {
    case 0x333:
        if (commType == COMM_TYPE_MYSTERY_GIFT) {
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

/**
 * @brief Initializes the communication system for the party search and switches to the scan mode used by the poketch
 */
static void CommTask_SearchPartyClient(void)
{
    if (CommSys_InitClient(1, 1, 32)) {
        CommSys_SwitchTransitionTypeToParallel();
        CommManager_SetTask(CommTask_ScanPoketch, 0);
    }
}

/**
 * @brief Task to initialize the party search as a client
 */
static void CommTask_InitSearchPartyClient(void)
{
    if (!WirelessDriver_IsReady()) {
        return;
    }

    CommServerClient_Init(sCommMan->trainerInfo, 0);
    CommInfo_Init(sCommMan->saveData, NULL);
    WirelessManager_SetGGIDScanCallback(CommManager_GGIDScanCallback);
    CommManager_SetTask(CommTask_SearchPartyClient, 0);
}

/**
 * @brief Initializes the Communication Manager to search for a party to join
 *
 * @param saveData
 */
void CommManager_InitializeSearchParty(SaveData *saveData)
{
    if (CommSys_IsInitialized()) {
        return;
    }

    Heap_CreateAtEnd(HEAP_ID_APPLICATION, HEAP_ID_COMMUNICATION, 0x7000);
    CommManager_Initialize(saveData, COMM_TYPE_PARTY);
    sCommMan->contestRegulation = 0;
    CommManager_SetTask(CommTask_InitSearchPartyClient, 0);
}

/**
 * @brief Ends the party searc communication
 */
void CommManager_EndSearchParty(void)
{
    if (sCommMan == NULL) {
        return;
    }

    CommManager_SetTask(CommTask_EndConnection, 5);
}

/**
 * @brief Gets the Communication Manager's unk_54
 *
 * @return sCommMan->unk_54
 */
u8 CommManager_GetUnk54(void)
{
    return sCommMan->unk_54;
}

/**
 * @brief Shuts down or resets the Communication Manager, depending on commType
 *
 * @return TRUE if the CommManager shut down, FALSE if it reset
 */
BOOL CommManager_ExitOrReset(void)
{
    CommSys_StartShutdown();

    if (sCommMan == NULL) {
        return TRUE;
    }

    if ((sCommMan->commType == COMM_TYPE_24) || (sCommMan->commType == COMM_TYPE_25) || (sCommMan->commType == COMM_TYPE_EMAIL_WIFI)) {
        NintendoWFC_Stop();
        return TRUE;
    } else if (CommManager_IsConnectedToWifi()) {
        if (sCommMan->commType == COMM_TYPE_LOBBY_WIFI) {
            CommManager_SetTask(CommTask_LogoutWifiLobby, 0);
        } else {
            CommManager_SetTask(CommTask_LogoutWifi, 0);
        }
    } else {
        CommManager_SetTask(CommTask_RestartSecretBase, 0);
    }

    return FALSE;
}

/**
 * @brief Task to initialize the connection to a random battle as a server
 */
static void CommTask_StartRandomBattleServer(void)
{
    if (!WirelessDriver_IsReady()) {
        return;
    }

    CommServerClient_Init(sCommMan->trainerInfo, 1);
    CommInfo_Init(sCommMan->saveData, NULL);

    if (CommSys_InitServer(1, 1, 512, 1)) {
        CommSys_SwitchTransitionTypeToParallel();
        CommManager_SetTask(CommTask_ConnectingBattleServer, 0);
    }
}

/**
 * @brief Task to initialize the connection to a random battle as a client
 */
static void CommTask_StartRandomBattleClient(void)
{
    if (!WirelessDriver_IsReady()) {
        return;
    }

    CommServerClient_Init(sCommMan->trainerInfo, 1);
    CommInfo_Init(sCommMan->saveData, NULL);

    if (CommSys_InitClient(1, 1, 512)) {
        CommSys_SwitchTransitionTypeToParallel();
        CommManager_SetTask(CommTask_ScanBattleClient, 0);
    }
}

/**
 * @brief Task that indicates there was an error during a wifi battle. Does nothing when called.
 */
static void CommTask_WifiBattleError(void)
{
    return;
}

/**
 * @brief Task that indicates there was an timeout during a wifi battle. 
 */
static void CommTask_WifiBattleTimeout(void)
{
    int ret = NintendoWFC_Process(0);

    if (ret < 0) {
        CommManager_SetTask(CommTask_WifiBattleError, 0);
    } 
}

/**
 * @brief Task that indicates there was a disconnect during a wifi battle. 
 */
static void CommTask_DisconnectWifiBattle(void)
{
    return;
}

/**
 * @brief Task that indicates there was a failure during a wifi battle. 
 */
static void CommTask_WifiBattleFailed(void)
{
    return;
}

/**
 * @brief Task that establishes a connection for the wifi battle
 */
static void CommTask_ConnectWifiBattle(void)
{
    int ret;

    CommSys_SetWifiConnected(1);

    ret = NintendoWFC_Process(0);

    if ((ret >= DWC_ERROR_FRIENDS_SHORTAGE) && ((DWC_ERROR_NUM) > ret)) {
        CommManager_SetTask(CommTask_WifiBattleFailed, 0);
    } else if (ret < 0) {
        CommManager_SetTask(CommTask_WifiBattleError, 0);
    } else if (ret == ((DWC_ERROR_NUM) + 3)) {
        CommManager_SetTask(CommTask_WifiBattleTimeout, 0);
    } else if (ret == ((DWC_ERROR_NUM) + 4)) {
        if (sCommMan->errorDisconnect) {
            CommManager_SetTask(CommTask_WifiBattleError, 0);
        } else {
            CommManager_SetTask(CommTask_DisconnectWifiBattle, 0);
        }
    } else if (ret == ((DWC_ERROR_NUM) + 1)) {
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

/**
 * @brief Sets sCommMan->unk34 struct with the given variables
 *
 * @param errorCode
 * @param errorType
 * @param error
 */
void CommManager_SetUnk34(int errorCode, int errorType, int error)
{
    int correctedCode;

    if (sCommMan) {
        if ((errorCode == ((DWC_ERROR_NUM) + 6)) || (errorCode == ((DWC_ERROR_NUM) + 5))) {
            correctedCode = errorCode;
        } else {
            correctedCode = -errorCode;
        }

        sCommMan->unk_34.unk_00 = correctedCode;
        sCommMan->unk_34.unk_04 = errorType;
        sCommMan->unk_34.unk_08 = error;
    }
}

/**
 * @brief Processes the matchmaking result from the internal libraries for battles
 */
static void CommTask_WifiBattleMatchmaking(void)
{
    int ret = NintendoWFC_Process(0);

    if ((ret >= DWC_ERROR_FRIENDS_SHORTAGE) && ((DWC_ERROR_NUM) > ret)) {
        CommManager_SetTask(CommTask_WifiBattleFailed, 0);
    } else if (ret < 0) {
        CommManager_SetTask(CommTask_WifiBattleError, 0);
    } else if (ret == NINTENDO_WFC_RESULT_MATCHMAKING_SUCCESS) {
        CommManager_SetTask(CommTask_ConnectWifiBattle, 0);
    } else if (ret == NINTENDO_WFC_RESULT_CONN_RESET) {
        CommManager_SetTask(CommTask_DisconnectWifiBattle, 0);
    } else if (ret == NINTENDO_WFC_RESULT_CONN_RESET_AFTER_HOST_LEFT) {
        CommManager_SetTask(CommTask_WifiBattleFailed, 0);
    } else if (ret == NINTENDO_WFC_RESULT_CONNECTION_CLOSED) {
        CommManager_SetTask(CommTask_DisconnectWifiBattle, 0);
    }
}

/**
 * @brief Cancels the wifi battle connection
 */
static void CommTask_CancelWifiBattle(void)
{
    int ret = NintendoWFC_Process(1);

    if (ret < 0) {
        CommManager_SetTask(CommTask_WifiBattleError, 0);
    } else {
        int result = NintendoWFC_StartConnectionWithFriends(sCommMan->wifiTarget, CommLocal_MaxMachines(sCommMan->commType) + 1, 0);

        switch (result) {
        case 0:
            CommSys_Reset();

            CommManager_SetTask(CommTask_WifiBattleMatchmaking, 0);
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

/**
 * @brief Starts the Wifi Battle connection
 *
 * @param target
 *
 * @return FALSE if the Communication Manager is still matchmaking, TRUE on success
 */
int CommManager_StartWifiBattle(int target)
{
    if (sCommMan->task != CommTask_WifiBattleMatchmaking) {
        return FALSE;
    }

    NintendoDWC_SetDataTransferCallbacks(sub_020351F8, sub_0203509C);
    sCommMan->wifiTarget = target;
    CommManager_SetTask(CommTask_CancelWifiBattle, 0);
    return TRUE;
}

/**
 * @brief Checks if the Communication Manager is in a battle matchmaking state and gets the result
 *
 * return 0 - matchmaking, 1 connecting, 2 - default, 3 - timeout, 4 - disconnect, 5 - failed
 */
int CommManager_GetMatchmakingState(void)
{
    if (sCommMan->task == CommTask_WifiBattleMatchmaking) {
        return 0;
    }

    if (sCommMan->task == CommTask_ConnectWifiBattle) {
        return 1;
    }

    if (sCommMan->task == CommTask_WifiBattleTimeout) {
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

/**
 * @brief Logs in to the wifi, sets data transfer callbacks, and prrocesses errors during battle
 */
static void CommTask_WifiBattleLogin(void)
{
    int ret;
    int errorRet;

    NintendoDWC_SetDataTransferCallbacks(sub_020351F8, sub_0203509C);

    ret = NintendoWFC_StartConnectionWithFriends(-1, 4, 1);

    switch (ret) {
    case 0:
        sCommMan->disconnectedWifi = 0;
        CommSys_Reset();
        CommManager_SetTask(CommTask_WifiBattleMatchmaking, 0);
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

    errorRet = NintendoWFC_HandleError();

    if (errorRet < 0) {
        CommManager_SetTask(CommTask_WifiBattleError, 0);
    } else if (errorRet == ((DWC_ERROR_NUM) + 6)) {
        CommManager_SetTask(CommTask_WifiBattleError, 0);
    }
}

/**
 * @brief Wifi matchmaking end task
 */
static void CommTask_EndMatchmakingWifi(void)
{
    int ret;

    CommSys_SetWifiConnected(0);

    if (NintendoWFC_EndConnection(sCommMan->unk_4C)) {
        if (NintendoWFC_ReturnToReadyState()) {
            CommInfo_Delete();

            CommManager_SetTask(CommTask_WifiBattleLogin, 0);
            return;
        }
    }

    ret = NintendoWFC_Process(0);

    if (ret < 0) {
        CommManager_SetTask(CommTask_WifiBattleError, 0);
    }
}

/**
 * @brief Ends wifi matchmaking and sets the disconnected from wifi flag. Params unused
 */
void CommManager_DisconnectWifi(int param0, int param1, void *param2, void *param3)
{
    if (CommSys_CurNetId() == 0) {
        sCommMan->unk_4C = 0;
        CommManager_SetTask(CommTask_EndMatchmakingWifi, 0);
    } else {
        sCommMan->unk_4C = 1;
        CommManager_SetTask(CommTask_EndMatchmakingWifi, 0);
    }

    sCommMan->disconnectedWifi = TRUE;
}

/**
 * @brief Gets the wifi disconnected flag
 *
 * @return sCommMan->disconnectedWifi
 */
BOOL CommManager_GetDisconnectedWifi(void)
{
    return sCommMan->disconnectedWifi;
}

/**
 * @brief Checks if the current task is loging in to the wifi battle
 *
 * @return TRUE if task is CommTask_WifiBattleLogin, or CommTask_ConnectWifiLobby
 */
BOOL CommManager_IsLoginBattleWifi(void)
{
    u32 task = (u32)sCommMan->task;

    if (task == (u32)CommTask_WifiBattleLogin) {
        return 1;
    }

    if (task == (u32)CommTask_ConnectWifiLobby) {
        return 1;
    }

    return 0;
}

/**
 * @brief Checks if the current task is loging in to the wifi battle matchmaking
 *
 * @return TRUE if task is CommTask_WifiBattleMatchmaking, CommTask_WifiBattleLogin, or CommTask_ConnectWifiLobby
 */
BOOL CommManager_IsLoginBattleMatchWifi(void)
{
    u32 task = (u32)sCommMan->task;

    if (task == (u32)CommTask_WifiBattleMatchmaking) {
        return 1;
    }

    if (task == (u32)CommTask_WifiBattleLogin) {
        return 1;
    }

    if (task == (u32)CommTask_ConnectWifiLobby) {
        return 1;
    }

    return 0;
}

/**
 * @brief Gets sCommMan->unk_34. Related to wifi errors.
 *
 * @return &sCommMan->unk_34
 */
UnkStruct_ov65_0222F6EC *CommManager_GetUnk34(void)
{
    GF_ASSERT(sCommMan);
    return &sCommMan->unk_34;
}

/**
 * @brief Wifi logout task. Handles errors and ends the connection.
 */
static void CommTask_LogoutWifi(void)
{
    int ret;

    CommSys_SetWifiConnected(0);

    if (NintendoWFC_EndConnection(0)) {
        NintendoWFC_ReturnToReadyState();
        CommManager_SetTask(CommTask_EndConnection, 0);
    }

    ret = NintendoWFC_Process(0);

    if (ret < 0) {
        CommManager_SetTask(CommTask_WifiBattleError, 0);
    }
}

/**
 * @brief Logs out of wifi and ends the connection
 */
void CommManager_LogoutWifi(void)
{
    if (sCommMan == NULL) {
        return;
    }

    ResetUnlock(RESET_LOCK_0x1);
    CommInfo_Delete();
    CommManager_SetTask(CommTask_EndConnection, 5);
}

/**
 * @brief Ends wifi matchmaking 
 */
void CommManager_EndWifiMatch(void)
{
    if (sCommMan == NULL) {
        return;
    }

    sCommMan->unk_4C = 0;
    CommManager_SetTask(CommTask_EndMatchmakingWifi, 0);
}

/**
 * @brief Ends trade wifi matchmaking and sets error handling
 */
void CommManager_EndTradeWifiMatch(void)
{
    if (sCommMan == NULL) {
        return;
    }

    CommManager_SetErrorHandling(0, 1);

    if (CommSys_CurNetId() == 0) {
        sCommMan->unk_4C = 0;
    } else {
        sCommMan->unk_4C = 1;
    }

    CommManager_SetTask(CommTask_EndMatchmakingWifi, 0);
}

/**
 * @brief Ends battle wifi matchmaking and sends the exit wifi message
 */
void CommManager_EndBattleWifiMatch(void)
{
    u8 netID = CommSys_CurNetId();

    CommSys_SendDataFixedSize(21, &netID);
}

/**
 * @brief Checks if the Communication Manager is in a wifi error task
 *
 * @return TRUE if task is CommTask_WifiBattleError, CommTask_WifiBattleTimeout, or CommTask_WifiLobbyTimeout
 */
BOOL CommManager_CheckWifiError(void)
{
    if (sCommMan) {
        u32 task = (u32)sCommMan->task;

        if (task == (u32)CommTask_WifiBattleError) {
            return TRUE;
        }

        if ((task == (u32)CommTask_WifiBattleTimeout) && sCommMan->errorDisconnect) {
            return TRUE;
        }

        if ((task == (u32)CommTask_WifiLobbyTimeout) && sCommMan->errorDisconnect) {
            return TRUE;
        }
    }

    return FALSE;
}

/**
 * @brief Initializes the Communication Manager for the GTS and Global Matchmaking
 *
 * @param saveData
 */
void CommManager_InitializeGlobalWifi(SaveData *saveData)
{
    if (!sCommMan) {
        Heap_CreateAtEnd(HEAP_ID_APPLICATION, HEAP_ID_COMMUNICATION, 0x100);
        sCommMan = (CommunicationManager *)Heap_Alloc(HEAP_ID_COMMUNICATION, sizeof(CommunicationManager));
        MI_CpuFill8(sCommMan, 0, sizeof(CommunicationManager));
        sCommMan->commType = COMM_TYPE_24;
        sCommMan->globalWifi = 1;
        sCommMan->saveData = saveData;
        CommManager_SetErrorHandling(0, 1);
        ResetLock(RESET_LOCK_0x1);
    }
}

/**
 * @brief Ends the Communication Manager for the GTS and Global Matchmaking
 */
void CommManager_EndGlobalWifi(void)
{
    if (sCommMan) {
        ResetUnlock(RESET_LOCK_0x1);
        CommManager_SetErrorHandling(0, 0);
        Heap_Free(sCommMan);
        sCommMan = NULL;
        Heap_Destroy(HEAP_ID_COMMUNICATION);
    }
}

/**
 * @brief Starts the mystery gift wifi connection
 */
void CommManager_StartMysteryGiftWifi(SaveData *saveData)
{
    if (!sCommMan) {
        Heap_CreateAtEnd(HEAP_ID_APPLICATION, HEAP_ID_COMMUNICATION, 0x100);
        sCommMan = (CommunicationManager *)Heap_Alloc(HEAP_ID_COMMUNICATION, sizeof(CommunicationManager));
        MI_CpuFill8(sCommMan, 0, sizeof(CommunicationManager));
        sCommMan->commType = COMM_TYPE_25;
        sCommMan->globalWifi = 1;
        sCommMan->saveData = saveData;
        CommManager_SetErrorHandling(0, 1);
        ResetLock(RESET_LOCK_0x1);
    }
}

/**
 * @brief Ends the mystery gift wifi connection
 */
void CommManager_EndMysteryGiftWifi(void)
{
    if (sCommMan) {
        ResetUnlock(RESET_LOCK_0x1);
        CommManager_SetErrorHandling(0, 0);
        Heap_Free(sCommMan);
        sCommMan = NULL;
        Heap_Destroy(HEAP_ID_COMMUNICATION);
    }
}

/**
 * @brief Starts the mail wifi connection
 */
void CommManager_StartWifiMail(SaveData *saveData)
{
    if (!sCommMan) {
        Heap_CreateAtEnd(HEAP_ID_APPLICATION, HEAP_ID_COMMUNICATION, 0x100);
        sCommMan = (CommunicationManager *)Heap_Alloc(HEAP_ID_COMMUNICATION, sizeof(CommunicationManager));
        MI_CpuFill8(sCommMan, 0, sizeof(CommunicationManager));
        sCommMan->commType = COMM_TYPE_EMAIL_WIFI;
        sCommMan->globalWifi = 1;
        sCommMan->saveData = saveData;
        CommManager_SetErrorHandling(0, 1);
        ResetLock(RESET_LOCK_0x1);
    }
}

/**
 * @brief Ends the mail wifi connection
 */
void CommManager_EndWifiMail(void)
{
    if (sCommMan) {
        ResetUnlock(RESET_LOCK_0x1);
        CommManager_SetErrorHandling(0, 0);
        Heap_Free(sCommMan);
        sCommMan = NULL;
        Heap_Destroy(HEAP_ID_COMMUNICATION);
    }
}

/**
 * @brief Checks if there is a DWC error. Only applicable to certain wifi comm types (24, 25, email)
 *
 * @return TRUE if there is a DWC error, FALSE otherwise
 */
BOOL CommManager_GetDWCError(void)
{
    int errorCode, ret;
    DWCErrorType dwcError;

    if (!sCommMan) {
        return FALSE;
    }

    if ((sCommMan->commType == COMM_TYPE_24) || (sCommMan->commType == COMM_TYPE_EMAIL_WIFI)) {
        ret = DWC_GetLastErrorEx(&errorCode, &dwcError);

        if (ret != 0) {
            DWC_ClearError();
            return TRUE;
        }
    } else if (sCommMan->commType == COMM_TYPE_25) {
        ret = DWC_GetLastErrorEx(&errorCode, &dwcError);

        if (ret != 0) {
            if (dwcError == DWC_ETYPE_FATAL) {
                return TRUE;
            }
        }
    }

    return FALSE;
}

/**
 * @brief Task to indicate the Communication Manager is connecting to a wifi battle. Errors on timeout
 */
static void CommTask_ConnectingWifiBattle(void)
{
    int ret = NintendoWFC_ConnectToDWCServer();

    sCommMan->timer--;

    if (ret == NINTENDO_WFC_RESULT_CONNECTED_TO_SERVER) {
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
            CommManager_SetTask(CommTask_WifiBattleLogin, 0);
            return;
        }
    } else if (ret != 0) {
        CommManager_SetTask(CommTask_WifiBattleError, 0);
    }

    if (sCommMan->timer <= 0) {
        CommManager_SetTask(CommTask_WifiBattleError, 0);
    }
}

/**
 * @brief Initializes the Communication Manager as a server for wifi battles
 */
static void CommTask_StartWifiBattleServer(void)
{
    if (!WirelessDriver_IsReady()) {
        return;
    }
    
    Heap_CreateAtEnd(HEAP_ID_APPLICATION, HEAP_ID_NINTENDO_WFC, (0x2A000 + 0xA000 + 0x1400));
    
    if (CommSys_InitServer(1, 1, 512, 1)) {
        NintendoWFC_Init(sCommMan->saveData, HEAP_ID_NINTENDO_WFC, (0x2B000 + 0x1400), CommLocal_MaxMachines(sCommMan->commType) + 1);
        NintendoWFC_SetFatalErrorCallback(NetworkError_DisplayFatalError);
        CommSys_SwitchTransitionTypeToParallel();
        CommManager_SetTask(CommTask_ConnectingWifiBattle, (30 * 60 * 2));
    }
}

/**
 * @brief Initializes the Communication Manager and logs in for wifi battles as a server
 *
 * @param saveData
 * @param size
 *
 * @return sCommMan->unk_00
 */
void *CommManager_LoginWifiBattleServer(SaveData *saveData, int size)
{
    SaveData_GetTrainerInfo(saveData);
    
    if (CommSys_IsInitialized()) {
        return NULL;
    }

    ResetLock(RESET_LOCK_0x1);
    Heap_CreateAtEnd(HEAP_ID_APPLICATION, HEAP_ID_COMMUNICATION, 0x7080);
    CommManager_Initialize(saveData, COMM_TYPE_LOGIN_WIFI);
    sCommMan->unk_00 = Heap_Alloc(HEAP_ID_COMMUNICATION, size);
    MI_CpuFill8(sCommMan->unk_00, 0, size);

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
    GF_ASSERT(CommManager_IsLoginBattleMatchWifi() == 1);

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

/**
 * @brief Gets the current p2p connection state based on the current task
 *
 * @return 0 - none, 1 - wait, 2 - connect, 3 - disconnect
 */
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

/**
 * @brief Gets unk_00
 *
 * @return sCommMan->unk_00
 */
void *CommManager_GetUnk00(void)
{
    return sCommMan->unk_00;
}

/**
 * @brief Sets and handles errors for the Communication Manager
 *
 * @param errorDisconnect
 * @param errorUnknown
 */
void CommManager_SetErrorHandling(BOOL errorDisconnect, BOOL errorUnknown)
{
    if (sCommMan) {
        sCommMan->errorDisconnect = errorDisconnect;
        sCommMan->errorUnknown_50 = errorUnknown;

        if (errorDisconnect) {
            sCommMan->connectedCount = CommSys_ConnectedCount();
        } else {
            sCommMan->connectedCount = 0;
        }
    }

    sub_02033EA8(errorDisconnect);
    sub_02033ED4(errorDisconnect);
}

/**
 * @brief Checks if the communication manager has a reported error
 *
 * @return TRUE if commError is not COMM_ERROR_NONE, errorUnknown_50 otherwise
 */
BOOL CommManager_CheckError(void)
{
    if (sCommMan) {
        if (sCommMan->commError != COMM_ERROR_NONE) {
            return TRUE;
        }

        return sCommMan->errorUnknown_50;
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

/**
 * @brief Sets the party species list for battle preview
 *
 * @return src
 */
void CommManager_SetParty(u8 *src)
{
    MI_CpuCopy8(src, sCommMan->party, NELEMS(sCommMan->party));
}

/**
 * @brief Gets the party species list for battle preview
 *
 * @return dest
 */
void CommManager_GetParty(u8 *dest)
{
    MI_CpuCopy8(sCommMan->party, dest, NELEMS(sCommMan->party));
}

/**
 * @brief Checks if the Communication Manager is connected to the proper wifi group
 *
 * @return CommLocal_IsWifiGroup(CommManager_GetCommType())
 */
BOOL CommManager_IsConnectedToWifi(void)
{
    return CommLocal_IsWifiGroup(CommManager_GetCommType());
}

/**
 * @brief Sets the Communication Manager's resetType
 *
 * @param resetType
 */
void CommManager_SetResetType(u8 resetType)
{
    if (sCommMan) {
        sCommMan->resetType = resetType;
    }
}

/**
 * @brief Gets the Communication Manager's resetType
 *
 * @return sCommMan->resetType (default 0)
 */
u8 CommManager_GetResetType(void)
{
    if (HeapCanaryOK()) {
        return 0;
    }

    if (sCommMan) {
        return sCommMan->resetType;
    }

    return 0;
}

/**
 * @brief Displays the Fatal Error screen and halts the game
 */
void NetworkError_DisplayFatalError(int param0)
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

/**
 * @brief Deadstripped function. Does nothing when called
 *
 * @param unused_int
 * @param unused_BgConfig
 */
void CommManager_deadstripped_02038A1C(int unused_int, BgConfig *bgConfig)
{
    return;
}

/**
 * @brief Checks for a communication error and displays an error message
 *
 * @param unused
 */
void CommManager_DisplayError(int unused)
{
    if (CommManager_CheckError()) {
        if (CommSys_CheckError() || CommManager_CheckWifiError() || CommManager_GetDWCError()
            || (sCommMan->commError != COMM_ERROR_NONE) || CommManager_IsWifiLobbyError()) {
            if (!HeapCanaryOK()) {
                if (!CommManager_GetResetType()) {
                    Sound_StopWaveOutAndSequences();
                    SaveData_SaveStateCancel(sCommMan->saveData);
                    gSystem.touchAutoSampling = TRUE;

                    if (sCommMan->commError == COMM_ERROR_3) {
                        CommManager_SetResetType(COMM_ERROR_3);
                    } else if ((sCommMan->commType == COMM_TYPE_25) || (sCommMan->commType == COMM_TYPE_MYSTERY_GIFT) || (sCommMan->commType == COMM_TYPE_EMAIL_WIFI)) {
                        CommManager_SetResetType(COMM_ERROR_RESET_TITLE);
                    } else {
                        CommManager_SetResetType(COMM_ERROR_RESET_SAVEPOINT);
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
        NintendoWFC_SetFatalErrorCallback(NetworkError_DisplayFatalError);
        CommSys_SwitchTransitionTypeToParallel();
        NintendoWFC_SetVoiceChatEnabled(0);
        sub_0203632C(0);
        CommManager_SetTask(CommTask_ConnectingWifiBattle, (30 * 60 * 2));
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
    BOOL ret = CommManager_UpdateWifiLobbyCommon();

    if (ret == 0) {
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
    UnkEnum_ov66_0223287C ret;
    BOOL noError = TRUE;

    ret = ov66_022325D8(); //Wifi lobby update function

    switch (ret) {
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
    int errorCode;
    BOOL ret;

    errorCode = NintendoWFC_Process(0);

    ret = CommManager_ProcessWifiLobbyDWCError(errorCode);

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
    BOOL ret;
    CommManager_UpdateWifiLobbyCommon();

    ret = ov66_02233164();

    if (ret == 1) {
        ov66_0223361C();
        CommManager_SetTask(CommTask_DisconnectWifiLobbyP2P, 0);
    }
}

/**
 * @brief Task that indicates the server is waiting for a p2p connection for wifi lobby matchmaking. Disconnects if there's an error.
 */
static void CommTask_WaitWifiLobbyMatchServerP2P(void)
{
    BOOL ret;
    u32 v1;

    ret = ov66_02233164();

    if (ret == 1) {
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
