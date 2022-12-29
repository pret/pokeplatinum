#ifndef _CHATSOCKET_H_
#define _CHATSOCKET_H_

#include <stdio.h>
#include "chat.h"
#include "chatCrypt.h"
#include <gs/nonport.h>

typedef enum ciConnectState {
    ciNotConnected,
    ciConnected,
    ciDisconnected
} ciConnectState;

typedef struct ciBuffer {
    char * buffer;
    int length;
    int size;
} ciBuffer;

typedef struct ciServerMessage {
    char * message;
    char * server;
    char * nick;
    char * user;
    char * host;
    char * command;
    char * middle;
    char * param;
    char ** params;
    int numParams;
} ciServerMessage;

typedef struct ciSocket {
    SOCKET sock;
    ciConnectState connectState;
    char serverAddress[256];
    ciBuffer inputQueue;
    ciBuffer outputQueue;
    CHATBool secure;
    gs_crypt_key inKey;
    gs_crypt_key outKey;
    ciServerMessage lastMessage;
#ifdef IRC_LOG
    char filename[FILENAME_MAX];
#endif
} ciSocket;

CHATBool ciSocketInit(ciSocket * sock, const char * nick);
CHATBool ciSocketConnect(ciSocket * sock, const char * serverAddress, int port);
void ciSocketDisconnect(ciSocket * sock);
void ciSocketThink(ciSocket * sock);
CHATBool ciSocketSend(ciSocket * sock, const char * buffer);
CHATBool ciSocketSendf(ciSocket * sock, const char * format, ...);
ciServerMessage * ciSocketRecv(ciSocket * sock);

#endif
