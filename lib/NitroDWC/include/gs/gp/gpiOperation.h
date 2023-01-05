#ifndef _GPIOPERATION_H_
#define _GPIOPERATION_H_

#include "gpi.h"

#define GPI_CONNECT 0
#define GPI_NEW_PROFILE 1
#define GPI_GET_INFO 2
#define GPI_PROFILE_SEARCH 3
#define GPI_REGISTER_UNIQUENICK 4
#define GPI_START 0
#define GPI_LOGIN 2
#define GPI_REQUESTING 3
#define GPI_WAITING 4
#define GPI_FINISHING 5

typedef struct GPIOperation_s {
    int type;
    void * data;
    GPIBool blocking;
    GPICallback callback;
    int state;
    int id;
    GPResult result;
    struct GPIOperation_s * pnext;
} GPIOperation;

typedef struct {
    char serverChallenge[128];
    char userChallenge[33];
    char passwordHash[33];
    char authtoken[GP_AUTHTOKEN_LEN];
    char partnerchallenge[GP_PARTNERCHALLENGE_LEN];
    char cdkey[GP_CDKEY_LEN];
    GPIBool newuser;
} GPIConnectData;

GPResult gpiAddOperation(GPConnection * connection, int type, void * data, GPIOperation ** op, GPEnum blocking, GPCallback callback, void * param);
void gpiRemoveOperation(GPConnection * connection, GPIOperation * operation);
void gpiDestroyOperation(GPConnection * connection, GPIOperation * operation);
GPIBool gpiFindOperationByID(const GPConnection * connection, GPIOperation ** operation, int id);
GPIBool gpiOperationsAreBlocking(const GPConnection * connection);
GPResult gpiProcessOperation(GPConnection * connection, GPIOperation * operation, const char * input);
GPResult gpiFailedOpCallback(GPConnection * connection, const GPIOperation * operation);

#endif
