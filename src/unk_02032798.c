#include "unk_02032798.h"

#include <nitro.h>
#include <string.h>

#include "constants/communication/comm_command.h"

#include "struct_defs/comm_cmd_table.h"

#include "functypes/funcptr_02032868.h"
#include "functypes/funcptr_0203290C.h"
#include "functypes/funcptr_020F8E60.h"

#include "comm_manager.h"
#include "communication_information.h"
#include "communication_system.h"
#include "heap.h"
#include "unk_020363E8.h"

typedef struct {
    const CommCmdTable *cmdTable;
    int cmdTableSize;
    void *data;
    u8 swapCommandTableFlag[8];
    u8 commandTableSwapped; // never accessed
} CommCmdManager;

static void CommCmd_SwapCommandTable(int param0, int param1, void *param2, void *param3);
static void CommCmd_DeinitCommCmdManager(int param0, int param1, void *param2, void *param3);
static void CommCmd_FinishSwapCmdTable(int param0, int param1, void *param2, void *param3);
static int CommPacketSizeOf_Two(void);

/**
 * CommCmdTable used by all communication methods
 */
static const CommCmdTable sCommCmdTable_Common[] = {
    [COMM_CMD_NONE] = { NULL, CommPacketSizeOf_Nothing, NULL },
    [COMM_CMD_1] = { NULL, CommPacketSizeOf_Nothing, NULL },
    [COMM_CMD_2] = { sub_0203619C, CommPacketSizeOf_Nothing, NULL },
    [COMM_CMD_RECV_PLAYER_INFO] = { CommCmd_RecvPlayerInfo, CommPlayerInfo_Size, NULL },
    [COMM_CMD_RECV_PLAYER_INFO_ARRAY] = { CommCmd_RecvPlayerInfoArray, CommPlayerInfo_Size, NULL },
    [COMM_CMD_RECV_PLAYER_INFO_FINISH] = { CommCmd_FinishRecvPlayerInfo, CommPacketSizeOf_Nothing, NULL },
    [COMM_CMD_VALIDATE_CONFIRMATION] = { CommCmd_ValidateConfirmationMessage, CommManager_ConfirmationMessage_sizeof, NULL },
    [COMM_CMD_VALIDATE_CONFIRMATION_RESPONSE] = { CommCmd_ValidateConfirmationResponseMessage, CommManager_ConfirmationMessage_sizeof, NULL },
    [COMM_CMD_8] = { NULL, NULL, NULL },
    [COMM_CMD_9] = { NULL, NULL, NULL },
    [COMM_CMD_10] = { sub_02036008, CommPacketSizeOf_NetId, NULL },
    [COMM_CMD_11] = { sub_02036030, CommPacketSizeOf_NetId, NULL },
    [COMM_CMD_12] = { sub_02036058, CommPacketSizeOf_NetId, NULL },
    [COMM_CMD_SWAP_CMD_TABLE] = { CommCmd_SwapCommandTable, CommPacketSizeOf_Nothing, NULL },
    [COMM_CMD_DEINIT_MANAGER] = { CommCmd_DeinitCommCmdManager, CommPacketSizeOf_Nothing, NULL },
    [COMM_CMD_FINISH_SWAP_CMD_TABLE] = { CommCmd_FinishSwapCmdTable, CommPacketSizeOf_Nothing, NULL },
    [COMM_CMD_16] = { CommCmd_16, CommPacketSizeOf_NetId, NULL },
    [COMM_CMD_17] = { CommCmd_17, CommPacketSizeOf_NetId, NULL },
    [COMM_CMD_18] = { CommCmd_18, CommPacketSizeOf_Two, NULL },
    [COMM_CMD_19] = { sub_02036574, sub_02036590, NULL },
    [COMM_CMD_20] = { sub_02036670, CommTool_TempDataSize, NULL },
    [COMM_CMD_DISCONNECT_WIFI] = { CommCmd_DisconnectWifi, CommPacketSizeOf_Nothing, NULL }
};

static CommCmdManager *sCommCmdManager = NULL;

/**
 * @brief Initializes the Communication Command Manager
 *
 * @param extraCmdTable
 * @param cmdTableSize
 * @param data
 */
void CommCmdManager_Init(const CommCmdTable *cmdTable, int cmdTableSize, void *data)
{
    int i;

    if (!sCommCmdManager) {
        sCommCmdManager = Heap_Alloc(HEAP_ID_COMMUNICATION, sizeof(CommCmdManager));
    }

    sCommCmdManager->cmdTable = cmdTable;
    sCommCmdManager->cmdTableSize = cmdTableSize;
    sCommCmdManager->data = data;

    for (i = 0; i < (7 + 1); i++) {
        sCommCmdManager->swapCommandTableFlag[i] = 0;
    }

    sCommCmdManager->commandTableSwapped = FALSE;
}

/**
 * @brief Frees the Communication Command Manager
 */
void CommCmdManager_Free(void)
{
    if (sCommCmdManager) {
        Heap_Free(sCommCmdManager);
        sCommCmdManager = NULL;
    }
}

/**
 * @brief Calls the communication command specified by cmd
 *
 * @param netID
 * @param cmd
 * @param size
 * @param data
 */
void CommCommCmdManager_Callback(int netID, int cmd, int size, void *data)
{
    CommCmdRecvFunc recvFunc;

    if (cmd < COMM_CMD_MAX_COMMON) {
        recvFunc = sCommCmdTable_Common[cmd].recvFunc;
    } else {
        GF_ASSERT(sCommCmdManager);

        if (cmd > (sCommCmdManager->cmdTableSize + COMM_CMD_MAX_COMMON)) {
            sub_020363BC();
            return;
        }

        recvFunc = sCommCmdManager->cmdTable[cmd - COMM_CMD_MAX_COMMON].recvFunc;
    }

    if (recvFunc != NULL) {
        if (sCommCmdManager) {
            recvFunc(netID, size, data, sCommCmdManager->data);
        } else {
            recvFunc(netID, size, data, NULL);
        }
    }
}

/**
 * @brief Gets the sizeof the packet sent by the comm command
 *
 * @param cmd
 *
 * @return Output of _sizeof() function associated with cmd return. Default 0
 */
int CommCmdManager_PacketSizeOf(int cmd)
{
    int size = 0;
    CommCmdSizeFunc sizeFunc;

    if (cmd < COMM_CMD_MAX_COMMON) {
        sizeFunc = sCommCmdTable_Common[cmd].sizeFunc;
    } else {
        GF_ASSERT(sCommCmdManager);

        if (sCommCmdManager == NULL) {
            sub_020363BC();
            return size;
        }

        if (cmd > (sCommCmdManager->cmdTableSize + COMM_CMD_MAX_COMMON)) {
            GF_ASSERT(FALSE);
            sub_020363BC();
            return size;
        }

        sizeFunc = sCommCmdManager->cmdTable[cmd - COMM_CMD_MAX_COMMON].sizeFunc;
    }

    if (sizeFunc != NULL) {
        size = sizeFunc();
    }

    return size;
}

/**
 * @brief Checks if the specified command has a receive buffer function
 *
 * @param cmd
 *
 * @return TRUE if the associated buffer function is not NULL
 */
BOOL CommCmdManager_CheckCmdHasBuffer(int cmd)
{
    if (cmd < COMM_CMD_MAX_COMMON) {
        return sCommCmdTable_Common[cmd].buffFunc != NULL;
    }

    return sCommCmdManager->cmdTable[cmd - COMM_CMD_MAX_COMMON].buffFunc != NULL;
}

/**
 * @brief Creates a buffer specified by the cmd's corresponding receive buffer function
 *
 * @param cmd
 * @param netID
 * @param size
 *
 * @return Pointer to the buffer if created, NULL otherwise
 */
void *CommCmdManager_TryCreateRecvBuffer(int cmd, int netId, int size)
{
    CommCmdBuffFunc buffFunc;

    if (cmd < COMM_CMD_MAX_COMMON) {
        buffFunc = sCommCmdTable_Common[cmd].buffFunc;
        return buffFunc(netId, NULL, size);
    } else {
        buffFunc = sCommCmdManager->cmdTable[cmd - COMM_CMD_MAX_COMMON].buffFunc;
        return buffFunc(netId, sCommCmdManager->data, size);
    }

    return NULL;
}

/**
 * @brief Gets the constant that indicates the message has a variable size instead of a fixed one.
 *
 * @return PACKET_SIZE_VARIABLE
 */
int CommPacketSizeOf_Variable(void)
{
    return PACKET_SIZE_VARIABLE;
}

/**
 * @brief Used for when the function doesn't receive any data
 *
 * @return 0
 */
int CommPacketSizeOf_Nothing(void)
{
    return 0;
}

/**
 * @brief Used for when the function only sends a NetID
 *
 * @return 1
 */
int CommPacketSizeOf_NetId(void)
{
    return 1;
}

/**
 * @brief Returns 2
 *
 * @return 2
 */
static int CommPacketSizeOf_Two(void)
{
    return 2;
}

/**
 * @brief Waits for a response from all connected players before swapping the secondary command table.
 *
 * @param netID
 * @param size
 * @param unused2
 * @param unused3
 */
static void CommCmd_SwapCommandTable(int netID, int size, void *unused2, void *unused3)
{
    int i;

    if (CommSys_CurNetId() != 0) {
        return;
    }

    sCommCmdManager->swapCommandTableFlag[netID] = 1;

    for (i = 0; i < (7 + 1); i++) {
        if (!CommSys_IsPlayerConnected(i)) {
            continue;
        }

        if (!sCommCmdManager->swapCommandTableFlag[i]) {
            return;
        }
    }

    CommSys_SendDataServer(COMM_CMD_DEINIT_MANAGER, NULL, 0);
}

/**
 * @brief Deinitializes the Communication Command Manager without freeing it. Usually used to swap the secondary command table.
 *
 * @param netID
 * @param size
 * @param unused2
 * @param unused3
 */
static void CommCmd_DeinitCommCmdManager(int netID, int size, void *param2, void *param3)
{
    sCommCmdManager->cmdTable = NULL;
    sCommCmdManager->cmdTableSize = 0;
    sCommCmdManager->data = NULL;
    sCommCmdManager->commandTableSwapped = TRUE;

    CommSys_SendDataFixedSize(COMM_CMD_FINISH_SWAP_CMD_TABLE, param2);
}

/**
 * @brief Waits for a response after finishing swapping the command table, reseting the swap flags.
 *
 * @param netID
 * @param size
 * @param unused2
 * @param unused3
 */
static void CommCmd_FinishSwapCmdTable(int netID, int size, void *param2, void *param3)
{
    if (CommSys_CurNetId() != 0) {
        return;
    }

    sCommCmdManager->swapCommandTableFlag[netID] = 0;
}
