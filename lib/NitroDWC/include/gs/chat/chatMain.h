#ifndef _CHATMAIN_H_
#define _CHATMAIN_H_

#include "chat.h"
#include "chatSocket.h"
#include "chatHandlers.h"
#include <hashtable.h>
#include <darray.h>
#include <gs/nonport.h>
#include <stringutil.h>
#include <md5.h>

#define MAX_NICK 64
#define MAX_CHAT_NICK 21
#define MAX_NAME 128
#define MAX_USER 128
#define MAX_SERVER 128
#define MAX_PARAM 512
#define MAX_SECRETKEY 128
#define MAX_EMAIL 64
#define MAX_PROFILENICK 32
#define MAX_UNIQUENICK 64
#define MAX_PASSWORD 32
#define MAX_AUTHTOKEN 256
#define MAX_PARTNERCHALLENGE 256

#define strzcpy(dest, src, len) {strncpy(dest, src, (len)); (dest)[(len) - 1] = '\0';}
#define wcszcpy(dest, src, len) {wcsncpy(dest, src, (len)); (dest)[(len) - 1] = 0;}

#define CONNECTION ciConnection * connection; \
    assert(chat != NULL); \
    connection = (ciConnection *)chat;

#define CONNECTED if (!connection || !connection->connected) return;

#if 0
ciConnection * connection;
#endif

#define VALID_NICK_CHARS "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789\"#$%&'()*+,-./:;<=>?@[]^_`{|}~"

typedef enum {
    CINoLogin,
    CIUniqueNickLogin,
    CIProfileLogin,
    CIPreAuthLogin
} CILoginType;

typedef struct ciConnection {
    CHATBool connected;
    CHATBool connecting;
    CHATBool disconnected;
    chatNickErrorCallback nickErrorCallback;
    chatFillInUserCallback fillInUserCallback;
    chatConnectCallback connectCallback;
    void * connectParam;
    ciSocket chatSocket;
    char nick[MAX_NICK];
    char name[MAX_NAME];
    char user[MAX_USER];
    int namespaceID;
    char email[MAX_EMAIL];
    char profilenick[MAX_PROFILENICK];
    char uniquenick[MAX_UNIQUENICK];
    char password[MAX_PASSWORD];
    char authtoken[MAX_AUTHTOKEN];
    char partnerchallenge[MAX_PARTNERCHALLENGE];
#ifdef GSI_UNICODE
    unsigned short nickW[MAX_NICK];
    unsigned short userW[MAX_NAME];
#endif
    unsigned int IP;
    char server[MAX_SERVER];
    int port;
    chatGlobalCallbacks globalCallbacks;
    HashTable channelTable;
    DArray enteringChannelList;
    ciServerMessageFilter * filterList;
    ciServerMessageFilter * lastFilter;
    int nextID;
    DArray callbackList;
    CHATBool quiet;
    char secretKey[MAX_SECRETKEY];
    CILoginType loginType;
    int userID;
    int profileID;
} ciConnection;

void ciSendNickAndUser(CHAT chat);
void ciSendNick(CHAT chat);
void ciSendUser(CHAT chat);
void ciSendLogin(CHAT chat);
void ciHandleDisconnect(CHAT chat, const char * reason);
int ciNickIsValid(const char * nick);
void ciNickError(CHAT chat, int type, const char * nick, int numSuggestedNicks, char ** suggestedNicks);

#endif
