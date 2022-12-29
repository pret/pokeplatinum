#ifndef _GPICALLBACK_H_
#define _GPICALLBACK_H_

#include "gpi.h"

#define GPI_ERROR 0
#define GPI_RECV_BUDDY_REQUEST 1
#define GPI_RECV_BUDDY_STATUS 2
#define GPI_RECV_BUDDY_MESSAGE 3
#define GPI_RECV_GAME_INVITE 4
#define GPI_TRANSFER_CALLBACK 5
#define GPI_NUM_CALLBACKS 6
#define GPI_ADD_NORMAL 0
#define GPI_ADD_ERROR 1
#define GPI_ADD_MESSAGE 2
#define GPI_ADD_NICKS 3
#define GPI_ADD_PMATCH 4
#define GPI_ADD_STATUS 5
#define GPI_ADD_BUDDDYREQUEST 6
#define GPI_ADD_TRANSFER_CALLBACK 7
#define GPI_ADD_REVERSE_BUDDIES 8
#define GPI_ADD_SUGGESTED_UNIQUE 9

typedef struct GPIOperation_s * GPIOperation_st;

typedef struct {
    GPCallback callback;
    void * param;
} GPICallback;

typedef struct GPICallbackData {
    GPICallback callback;
    void * arg;
    int type;
    int operationID;
    struct GPICallbackData * pnext;
} GPICallbackData;

void gpiCallErrorCallback(GPConnection * connection, GPResult result, GPEnum fatal);
GPResult gpiAddCallback(GPConnection * connection, GPICallback callback, void * arg, const struct GPIOperation_s * operation, int type);
GPResult gpiProcessCallbacks(GPConnection * connection, int blockingOperationID);

#endif
