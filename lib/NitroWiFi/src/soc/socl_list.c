#include <nitroWiFi/socl.h>

SOCLSocket * SOCLiSocketList = NULL;
SOCLSocket * SOCLiSocketListTrash = NULL;

static SOCLSocket * * SOCLi_SocketGetNextPtr(SOCLSocket * * start, SOCLSocket * socket);
static void SOCLi_SocketRegisterList(SOCLSocket * * next, SOCLSocket * socket);
static void SOCLi_SocketUnregisterList(SOCLSocket * * next, SOCLSocket * socket);

void SOCLi_SocketRegister (SOCLSocket * socket) {
    SOCLi_SocketRegisterList(&SOCLiSocketList, socket);
}

static void SOCLi_SocketRegisterList (SOCLSocket * * next, SOCLSocket * socket) {
    socket->next = *next;
    *next = socket;
}

void SOCLi_SocketRegisterTrash (SOCLSocket * socket) {
    SOCLi_SocketRegisterList(&SOCLiSocketListTrash, socket);
}

void SOCLi_SocketUnregister (SOCLSocket * socket) {
    SOCLi_SocketUnregisterList(&SOCLiSocketList, socket);
}

static void SOCLi_SocketUnregisterList (SOCLSocket * * next, SOCLSocket * socket) {
    next = SOCLi_SocketGetNextPtr(next, socket);

    if (next) {
        *next = socket->next;
    }
}

static SOCLSocket * * SOCLi_SocketGetNextPtr (SOCLSocket * * next, SOCLSocket * socket) {
    SOCLSocket * t;

    for (t = *next; t; t = t->next) {
        if (t == socket) {
            return next;
        }

        next = &t->next;
    }

    return NULL;
}

void SOCLi_SocketUnregisterTrash (SOCLSocket * socket) {
    SOCLi_SocketUnregisterList(&SOCLiSocketListTrash, socket);
}

int SOCL_SocketIsInvalid (SOCLSocket * socket) {
    return ((int)socket <= 0) || !SOCLi_SocketGetNextPtr(&SOCLiSocketList, socket);
}

int SOCL_SocketIsInTrash (SOCLSocket * socket) {
    return SOCLi_SocketGetNextPtr(&SOCLiSocketListTrash, socket) != NULL;
}
