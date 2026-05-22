#ifndef POKEPLATINUM_COMM_COMMAND_H
#define POKEPLATINUM_COMM_COMMAND_H

#include "struct_defs/comm_cmd_table.h"

void CommCmdManager_Init(const CommCmdTable *param0, int param1, void *param2);
void CommCmdManager_Free(void);
void CommCommCmdManager_Callback(int param0, int param1, int param2, void *param3);
int CommCmdManager_PacketSizeOf(int param0);
BOOL CommCmdManager_CheckCmdHasBuffer(int param0);
void *CommCmdManager_TryCreateRecvBuffer(int param0, int param1, int param2);
int CommPacketSizeOf_Variable(void);
int CommPacketSizeOf_Nothing(void);
int CommPacketSizeOf_NetId(void);

#endif // POKEPLATINUM_COMM_COMMAND_H
