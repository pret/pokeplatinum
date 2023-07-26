#ifndef NITROWIFI_SOCL_H_
#define NITROWIFI_SOCL_H_

#include <nitro/types.h>
#include <nitro/os.h>
#include <nitro/math.h>
#include <nitroWiFi/cps.h>
#include <nitroWiFi/ssl.h>
#include <nitroWiFi/soc_errcode.h>

#ifdef __cplusplus

extern "C" {
#endif

typedef CPSInAddr SOCLInAddr;
#define SOCL2CPSInAddr(socl) ((CPSInAddr)(socl))

#define SOCL_OPTIMIZE_TCP_SEND 1

typedef struct SOCLiSocketRingBuffer {
    CPSSocBuf area;
    vu16 in;
    vu16 out;
    OSThreadQueue waiting;
} SOCLiSocketRingBuffer;

typedef struct SOCLiSocketUdpData {
    struct SOCLiSocketUdpData * next;
    u16 size;
    u16 remote_port;
    SOCLInAddr remote_ip;
} SOCLiSocketUdpData;

typedef struct SOCLiSocketUdpDataControl {
    SOCLiSocketUdpData * volatile in;
    SOCLiSocketUdpData * volatile out;
    vu16 size;
    u16 size_max;
    OSThreadQueue waiting;
} SOCLiSocketUdpDataControl;

typedef struct SOCLSocketCommandPipe {
    OSMessageQueue queue;
    OSThread thread;
    OSMutex in_use;
} SOCLiSocketCommandPipe;

typedef struct SOCLiSocketRecvCommandPipe {
    SOCLiSocketCommandPipe h;
    vs32 consumed;
    u16 consumed_min;
    s8 flag_noconsume;
    u8 padding[1];
    SOCLiSocketUdpDataControl udpdata;
} SOCLiSocketRecvCommandPipe;

struct SOCLSocket;

typedef struct SOCLiSocketSendCommandPipe {
    SOCLiSocketCommandPipe h;
    SOCLiSocketRingBuffer buffer;
    struct SOCLSocket * exe_socket;
} SOCLiSocketSendCommandPipe;

typedef struct SOCLSocket {
    CPSSoc cps_socket;
    SOCLiSocketRecvCommandPipe * recv_pipe;
    SOCLiSocketSendCommandPipe * send_pipe;
    vs32 result;
    vs16 state;
    s8 flag_block;
    s8 flag_mode;
    u16 local_port;
    u16 remote_port;
    SOCLInAddr remote_ip;

    struct SOCLSocket * next;
} SOCLSocket;

#define SOCL_FLAGBLOCK_BLOCK OS_MESSAGE_BLOCK
#define SOCL_FLAGBLOCK_NOBLOCK OS_MESSAGE_NOBLOCK
#define SOCL_FLAGBLOCK_NORESULT (OS_MESSAGE_BLOCK | 2)
#define SOCL_FLAGISBLOCK(x) ((x) & OS_MESSAGE_BLOCK)

static inline BOOL SOCL_SocketIsBlock (SOCLSocket * socket)
{
    return (socket->flag_block == SOCL_FLAGBLOCK_BLOCK);
}

static inline BOOL SOCL_SocketIsNoBlock (SOCLSocket * socket)
{
    return (socket->flag_block == SOCL_FLAGBLOCK_NOBLOCK);
}

static inline void SOCL_SocketSetBlock (SOCLSocket * socket)
{
    socket->flag_block = SOCL_FLAGBLOCK_BLOCK;
}

static inline void SOCL_SocketSetNoBlock (SOCLSocket * socket)
{
    socket->flag_block = SOCL_FLAGBLOCK_NOBLOCK;
}

#define SOCL_FLAGMODE_TCP 0
#define SOCL_FLAGMODE_UDP 1
#define SOCL_FLAGMODE_UDPSEND 2
#define SOCL_FLAGMODE_ICMP 3
#define SOCL_FLAGMODE_SSL 4

static inline BOOL SOCL_SocketIsTCP (SOCLSocket * socket)
{
    return (socket->flag_mode == SOCL_FLAGMODE_TCP || socket->flag_mode == SOCL_FLAGMODE_SSL);
}

static inline BOOL SOCL_SocketIsUDP (SOCLSocket * socket)
{
    return (socket->flag_mode == SOCL_FLAGMODE_UDP);
}

static inline BOOL SOCL_SocketIsUDPSend (SOCLSocket * socket)
{
    return (socket->flag_mode == SOCL_FLAGMODE_UDPSEND);
}

static inline BOOL SOCL_SocketIsICMP (SOCLSocket * socket)
{
    return (socket->flag_mode == SOCL_FLAGMODE_ICMP);
}

static inline BOOL SOCL_SocketIsSSL (SOCLSocket * socket)
{
    return (socket->flag_mode == SOCL_FLAGMODE_SSL);
}

#define SOCL_STATUS_CREATE 0x0001
#define SOCL_STATUS_CONNECTING 0x0002
#define SOCL_STATUS_CONNECTED 0x0004
#define SOCL_STATUS_CLOSING 0x0008
#define SOCL_STATUS_WAIT_CLOSE 0x0010
#define SOCL_STATUS_WAIT_RELEASE 0x0020
#define SOCL_STATUS_ERROR 0x0040
#define SOCL_STATUS_RESET 0x0080

static inline BOOL SOCL_SocketIsState (SOCLSocket * socket, u16 state)
{
    return (s32)socket->state & (s32)state;
}

static inline BOOL SOCL_SocketIsCreated (SOCLSocket * socket)
{
    return socket && SOCL_SocketIsState(socket, SOCL_STATUS_CREATE);
}

static inline BOOL SOCL_SocketIsConnecting (SOCLSocket * socket)
{
    return SOCL_SocketIsState(socket, SOCL_STATUS_CONNECTING);
}

static inline BOOL SOCL_SocketIsConnected (SOCLSocket * socket)
{
    return SOCL_SocketIsState(socket, SOCL_STATUS_CONNECTED);
}

static inline BOOL SOCL_SocketIsClosing (SOCLSocket * socket)
{
    return SOCL_SocketIsState(socket, SOCL_STATUS_CLOSING);
}

static inline BOOL SOCL_SocketIsWaitingClose (SOCLSocket * socket)
{
    return SOCL_SocketIsState(socket, SOCL_STATUS_WAIT_CLOSE);
}

static inline BOOL SOCL_SocketIsError (SOCLSocket * socket)
{
    return SOCL_SocketIsState(socket, SOCL_STATUS_ERROR);
}

static inline BOOL SOCL_SocketIsReset (SOCLSocket * socket)
{
    return SOCL_SocketIsState(socket, SOCL_STATUS_RESET);
}

#define SOCL_MSG_PEEK 0x02
#define SOCL_MSG_DONTWAIT 0x04

typedef CPSSslConnection SOCLSslConnection;
typedef CPSCaInfo SOCLCaInfo;
typedef int (* SOCLSslAuthHandler) (int result, SOCLSslConnection * con, int level);

#define SOCL_CERT_OUTOFDATE CPS_CERT_OUTOFDATE
#define SOCL_CERT_BADSERVER CPS_CERT_BADSERVER

#define SOCL_CERT_ERRMASK CPS_CERT_ERRMASK

#define SOCL_CERT_NOROOTCA CPS_CERT_NOROOTCA
#define SOCL_CERT_BADSIGNATURE CPS_CERT_BADSIGNATURE
#define SOCL_CERT_UNKNOWN_SIGALGORITHM CPS_CERT_UNKNOWN_SIGALGORITHM
#define SOCL_CERT_UNKNOWN_PUBKEYALGORITHM CPS_CERT_UNKNOWN_PUBKEYALGORITHM

typedef int (* SOCLiCommandHandler) (void *);

typedef struct SOCLiCommandHeader {
    SOCLiCommandHandler handler;
    SOCLSocket * socket;
    OSMessageQueue * response;
    s8 flag_mode;
    s8 flag_block;
    u8 padding[2];
} SOCLiCommandHeader;

typedef struct SOCLiCommandCreateSocket {
    SOCLiCommandHeader h;
} SOCLiCommandCreateSocket;

typedef struct SOCLiCommandBind {
    SOCLiCommandHeader h;
    u16 local_port;
    u16 remote_port;
    SOCLInAddr remote_ip;
} SOCLiCommandBind;

typedef struct SOCLiCommandListenAccept {
    SOCLiCommandHeader h;
    u16 local_port;
    u8 padding[2];
    volatile u16 * remote_port_ptr;
    volatile SOCLInAddr * remote_ip_ptr;
} SOCLiCommandListenAccept;

typedef struct SOCLiCommandRead {
    SOCLiCommandHeader h;
    u8 * buffer;
    s32 buffer_len;
    u16 * remote_port;
    SOCLInAddr * remote_ip;
    s8 flag_noconsume;
    u8 padding[3];
} SOCLiCommandRead;

typedef struct SOCLiCommandConsume {
    SOCLiCommandHeader h;
} SOCLiCommandConsume;

typedef struct SOCLiCommandWrite {
    SOCLiCommandHeader h;
    u8 * buffer1;
    s32 buffer1_len;
    u8 * buffer2;
    s32 buffer2_len;
    u16 wrtbuf_after;
    u8 padding[2];
    u16 local_port;
    u16 remote_port;
    SOCLInAddr remote_ip;
} SOCLiCommandWrite;

typedef struct SOCLiCommandShutdown {
    SOCLiCommandHeader h;
} SOCLiCommandShutdown;

typedef struct SOCLiCommandClose {
    SOCLiCommandHeader h;
} SOCLiCommandClose;

typedef struct SOCLiCommandEnableSsl {
    SOCLiCommandHeader h;
    SOCLSslConnection * connection;
} SOCLiCommandEnableSsl;

typedef union SOCLiCommandPacket {
    SOCLiCommandHeader h;
    SOCLiCommandCreateSocket create_socket;
    SOCLiCommandBind bind;
    SOCLiCommandListenAccept listen_accept;
    SOCLiCommandRead read;
    SOCLiCommandConsume consume;
    SOCLiCommandWrite write;
    SOCLiCommandShutdown shutdown;
    SOCLiCommandClose close;
    SOCLiCommandEnableSsl enable_ssl;
} SOCLiCommandPacket;

#define SOCL_CMDPACKET_MAX 64

typedef struct {
    BOOL use_dhcp;
    struct {
        SOCLInAddr my_ip;
        SOCLInAddr net_mask;
        SOCLInAddr gateway_ip;
        SOCLInAddr dns_ip[2];
    } host_ip;
    void *  (*alloc)(u32);
    void (* free)(void *);

    u32 cmd_packet_max;
    u32 lan_buffer_size;
    void * lan_buffer;

    s32 cps_thread_prio;

    s32 mtu;
    s32 rwin;
} SOCLConfig;

#define SOCLi_MTUtoMSS(mtu) ((mtu) - 40)

#define SOCL_LAN_BUFFER_SIZE_DEFAULT 16384
#define SOCL_MTU_SIZE_MAX 1500
#define SOCL_MTU_SIZE_MIN 576

#define SOCL_MTU_SIZE_DEFAULT 576
#define SOCL_RWIN_SIZE_DEFAULT (SOCLi_MTUtoMSS(SOCL_MTU_SIZE_DEFAULT) * 8)

#define SOCL_DHCP_REQUEST 0x01
#define SOCL_DHCP_CALLBACK 0x02
#define SOCL_DHCP_ERROR SOCL_DHCP_CALLBACK

extern int SOCLiDhcpState;
extern SOCLInAddr SOCLiRequestedIP;
extern u32 SOCLiYieldWait;

static inline void SOCL_SetRequestedIP (SOCLInAddr ip)
{
    SOCLiRequestedIP = ip;
}

static inline void SOCL_SetYieldWait (u32 wait)
{
    SOCLiYieldWait = wait;
}

static inline void SOCL_SetSslHandshakePriority (u32 prio)
{
    CPS_SetSslHandshakePriority(prio);
}

static inline u32 SOCL_GetSslHandshakePriority (void)
{
    return CPS_GetSslHandshakePriority();
}

typedef struct SOCLSocketThreadParam {
    u16 stack_size;
    u8 priority;
    u8 queue_max;
} SOCLSocketCommandPipeParam;

typedef struct SOCLSocketBufferParam {
    u16 rcvbuf_size;
    u16 rcvbuf_consume_min;
    u16 sndbuf_size;
    u16 linbuf_size;
    u16 outbuf_size;
    u16 wrtbuf_size;
    u16 udpbuf_size;
} SOCLSocketBufferParam;

typedef struct SOCLSocketParam {
    s8 flag_mode;
    s8 flag_block;
    SOCLSocketBufferParam buffer;
    SOCLSocketCommandPipeParam recv_pipe;
    SOCLSocketCommandPipeParam send_pipe;
} SOCLSocketParam;

extern SOCLSocketParam SOCLSocketParamTCP;
extern SOCLSocketParam SOCLSocketParamUDP;
extern SOCLSocketParam SOCLSocketParamUDPSend;

#define SOCL_CPS_SOCKET_THREAD_PRIORITY 11

#define SOCL_TCP_SOCKET_CPS_RCVBUF_SIZE (1460 * 2)

#define SOCL_TCP_SOCKET_CPS_RCVBUF_CONSUME_MIN 1460

#if SOCL_OPTIMIZE_TCP_SEND
#define SOCL_TCP_SOCKET_CPS_SNDBUF_SIZE ((SOCLi_MTUtoMSS(SOCL_MTU_SIZE_DEFAULT) * 2) + SOCL_TCP_SNDBUF_NOCOPY_OFFSET)
#define SOCL_TCP_SOCKET_SEND_WRTBUF_SIZE ((SOCL_TCP_SOCKET_CPS_SNDBUF_SIZE - SOCL_TCP_SNDBUF_NOCOPY_OFFSET) * 2 + 1)
#else
#define SOCL_TCP_SOCKET_CPS_SNDBUF_SIZE (SOCL_MTU_SIZE_MAX + 14)
#define SOCL_TCP_SOCKET_SEND_WRTBUF_SIZE (SOCL_TCP_SOCKET_CPS_SNDBUF_SIZE * 2 + 1)
#endif

#define SOCL_TCP_SOCKET_RECV_THREAD_PRIORITY 12
#define SOCL_TCP_SOCKET_SEND_THREAD_PRIORITY 13
#define SOCL_TCP_SOCKET_RECV_THREAD_STACK_SIZE 2048
#define SOCL_TCP_SOCKET_SEND_THREAD_STACK_SIZE 2048
#define SOCL_TCP_SOCKET_RECV_THREAD_QUEUE_MAX 32
#define SOCL_TCP_SOCKET_SEND_THREAD_QUEUE_MAX 32

#define SOCL_UDP_SOCKET_CPS_RCVBUF_SIZE 1472
#define SOCL_UDP_SOCKET_CPS_SNDBUF_SIZE 1514
#define SOCL_UDP_SOCKET_SEND_WRTBUF_SIZE (SOCL_UDP_SOCKET_CPS_SNDBUF_SIZE + 256 + 1)
#define SOCL_UDP_SOCKET_RECV_UDPBUF_SIZE 2048
#define SOCL_UDP_SOCKET_RECV_THREAD_PRIORITY 12
#define SOCL_UDP_SOCKET_SEND_THREAD_PRIORITY 13
#define SOCL_UDP_SOCKET_RECV_THREAD_STACK_SIZE 2048
#define SOCL_UDP_SOCKET_SEND_THREAD_STACK_SIZE 2048
#define SOCL_UDP_SOCKET_RECV_THREAD_QUEUE_MAX 32
#define SOCL_UDP_SOCKET_SEND_THREAD_QUEUE_MAX 32
#ifdef SDK_USE_CHAROUT
#define SOCL_TCP_SOCKET_CPS_LINBUF_SIZE 128
#define SOCL_TCP_SOCKET_CPS_OUTBUF_SIZE 512
#define SOCL_UDP_SOCKET_CPS_LINBUF_SIZE 128
#define SOCL_UDP_SOCKET_CPS_OUTBUF_SIZE 512
#else
#define SOCL_TCP_SOCKET_CPS_LINBUF_SIZE 0
#define SOCL_TCP_SOCKET_CPS_OUTBUF_SIZE 0
#define SOCL_UDP_SOCKET_CPS_LINBUF_SIZE 0
#define SOCL_UDP_SOCKET_CPS_OUTBUF_SIZE 0
#endif

#define SOCL_TCP_SNDBUF_NOCOPY_OFFSET (14 + 20 + 20)
#define SOCL_UDP_SNDBUF_NOCOPY_OFFSET (14 + 20 + 8)

int SOCLi_StartupCommandPacketQueue(s32 cp_max_count);
int SOCLi_CleanupCommandPacketQueue(void);
void SOCLi_CommandPacketHandler(void * arg);

SOCLiCommandPacket * SOCLi_AllocCommandPacket(s32 flag);
SOCLiCommandPacket * SOCLi_CreateCommandPacket(SOCLiCommandHandler handler, SOCLSocket * socket, s32 flag);
SOCLiSocketCommandPipe * SOCLi_GetCtrlPipe(SOCLSocket * socket);
void SOCLi_FreeCommandPacket(SOCLiCommandPacket * command);
int SOCLi_SendCommandPacket(SOCLiSocketCommandPipe * pipe, SOCLiCommandPacket * command);
int SOCLi_SendCommandPacketToCtrlPipe(SOCLSocket * socket, SOCLiCommandPacket * command);
int SOCLi_ExecCommandPacket(SOCLiSocketCommandPipe * pipe, SOCLiCommandPacket * command);
int SOCLi_ExecCommandPacketInRecvPipe(SOCLSocket * socket, SOCLiCommandPacket * command);
int SOCLi_ExecCommandPacketInSendPipe(SOCLSocket * socket, SOCLiCommandPacket * command);
int SOCLi_ExecCommandPacketInCtrlPipe(SOCLSocket * socket, SOCLiCommandPacket * command);

#define SOCLi_ROUNDUP4(size) MATH_ROUNDUP((size), 4)
u32 SOCLi_RoundUp4(u32 size);

int SOCL_Startup(const SOCLConfig * socl_config);
int SOCL_Cleanup(void);
extern int SOCLiUDPSendSocket;

void SOCLi_SetMyIPinConfig(SOCLInAddr ip, SOCLInAddr mask, SOCLInAddr gateway);
void SOCLi_SetMyIP(void);
void SOCLi_DhcpTimeout(void);

int SOCL_CreateSocket(const SOCLSocketParam * param);
int SOCL_Bind(int s, u16 local_port);
int SOCL_Connect(int s, u16 remote_port, SOCLInAddr remote_ip);
int SOCL_Listen(int s, int backlog);
int SOCL_Accept(int s, volatile u16 * remote_port_ptr, volatile SOCLInAddr * remote_ip_ptr);
int SOCL_ListenAccept(int s, volatile u16 * remote_port_ptr, volatile SOCLInAddr * remote_ip_ptr);
int SOCL_Read(int, void *, int, u16 *, SOCLInAddr *);
int SOCL_ReadFrom(int, void *, int, u16 *, SOCLInAddr *, int);
int SOCL_ReadNoBlock(int, void *, int, u16 *, SOCLInAddr *);
int SOCL_ReadBlock(int, void *, int, u16 *, SOCLInAddr *);
int SOCL_Write(int, const void * buffer, int buffer_len, u16 port, SOCLInAddr ip);
int SOCL_WriteTo(int, const void * buffer, int buffer_len, u16 port, SOCLInAddr ip, int flags);
int SOCL_WriteNoBlock(int s, const void * buffer, int buffer_len, u16 port, SOCLInAddr ip);
int SOCL_WriteBlock(int s, const void * buffer, int buffer_len, u16 port, SOCLInAddr ip);
int SOCL_Shutdown(int s);
int SOCL_IsClosed(int s);
int SOCL_Close(int s);
int SOCL_CloseAll(void);
int SOCL_CalmDown(void);
int SOCL_GetRemote(int s, u16 * port, SOCLInAddr * ip);
SOCLInAddr SOCL_Resolve(const char * hostname);
SOCLInAddr SOCL_InetAtoH(const char * hostname);
int SOCL_GetResolver(SOCLInAddr * dns1, SOCLInAddr * dns2);
int SOCL_SetResolver(const SOCLInAddr dns1, const SOCLInAddr dns2);
SOCLInAddr SOCL_GetHostID(void);

const char * SOCL_GetErrName(int errcode);
int SOCL_GetStatus(int s);
int SOCL_EnableSsl(int s, SOCLSslConnection * con);

// ERROR-CODE BEGINS
#define SOCL_ESUCCESS 0
#define SOCL_ENOMEM SOC_ENOMEM
#define SOCL_EMFILE SOC_EMFILE
#define SOCL_ECONNRESET SOC_ECONNRESET
#define SOCL_ECANCELED SOC_ECANCELED
#define SOCL_EALREADY SOC_EALREADY
#define SOCL_ENOTCONN SOC_ENOTCONN
#define SOCL_ENETRESET SOC_ENETRESET
#define SOCL_EINVAL SOC_EINVAL
#define SOCL_ENOBUFS SOC_ENOBUFS
#define SOCL_ETIMEDOUT SOC_ETIMEDOUT
#define SOCL_EWOULDBLOCK SOC_EWOULDBLOCK
#define SOCL_EAGAIN SOC_EAGAIN
#define SOCL_EINPROGRESS SOC_EINPROGRESS
#define SOCL_EISCONN SOC_EISCONN
#define SOCL_EMSGSIZE SOC_EMSGSIZE

// ERROR-CODE ENDS
#define SOCL_POLLRDNORM SOC_POLLRDNORM
#define SOCL_POLLWRNORM SOC_POLLWRNORM
#define SOCL_POLLERR SOC_POLLERR
#define SOCL_POLLHUP SOC_POLLHUP
#define SOCL_POLLNVAL SOC_POLLNVAL

#define SOCL_POLLERRORSTATUS (SOCL_POLLERR | SOCL_POLLHUP | SOCL_POLLNVAL)
#define SOCL_POLLREADSTATUS (SOCL_POLLRDNORM | SOCL_POLLERRORSTATUS)
#define SOCL_POLLWRITESTATUS (SOCL_POLLWRNORM | SOCL_POLLERRORSTATUS)

SOCLSocket * SOCLi_StartupSocket(const SOCLSocketParam * param);
void SOCLi_CleanupSocket(SOCLSocket * socket);
void SOCLi_TrashSocket(void);
s32 SOCLi_GetWriteBufferFreeSize(SOCLSocket * socket);
s32 SOCLi_GetReadBufferOccpiedSize(SOCLSocket * socket);
int SOCLi_UdpRecvCallback(u8 * data, u32 len, CPSSoc * soc);

void SOCLi_SocketRegister(SOCLSocket * socket);
void SOCLi_SocketUnregister(SOCLSocket * socket);
void SOCLi_SocketRegisterTrash(SOCLSocket * socket);
void SOCLi_SocketUnregisterTrash(SOCLSocket * socket);
int SOCL_SocketIsInvalid(SOCLSocket * socket);
int SOCL_SocketIsInTrash(SOCLSocket * socket);
extern SOCLSocket * SOCLiSocketList;
extern SOCLSocket * SOCLiSocketListTrash;

static inline int SOCL_TcpSocket (void)
{
    return SOCL_CreateSocket(&SOCLSocketParamTCP);
}

static inline int SOCL_UdpSocket (void)
{
    return SOCL_CreateSocket(&SOCLSocketParamUDP);
}

static inline int SOCL_UdpSendSocket (void)
{
    return SOCL_CreateSocket(&SOCLSocketParamUDPSend);
}

extern CPSConfig SOCLiCPSConfig;
extern const SOCLConfig * SOCLiConfigPtr;

static inline void * SOCLi_Alloc (u32 size)
{
    return SOCLiConfigPtr->alloc(size);
}

static inline void SOCLi_Free (void * ptr)
{
    SOCLiConfigPtr->free(ptr);
}

static inline u16 SOCL_GetHostPort (int s)
{
    SOCLSocket * socket = (SOCLSocket *)s;

    return s ? (u16)socket->local_port : (u16)0;
}

static inline void SOCL_SetBlock (int s)
{
    SOCL_SocketSetBlock((SOCLSocket *)s);
}

static inline void SOCL_SetNoBlock (int s)
{
    SOCL_SocketSetNoBlock((SOCLSocket *)s);
}

static inline BOOL SOCL_IsBlock (int s)
{
    return SOCL_SocketIsBlock((SOCLSocket *)s);
}

static inline BOOL SOCL_IsNoBlock (int s)
{
    return SOCL_SocketIsNoBlock((SOCLSocket *)s);
}

static inline int SOCL_GetReadStatus (int s)
{
    return (SOCL_GetStatus(s) & SOCL_POLLREADSTATUS);
}

static inline int SOCL_GetWriteStatus (int s)
{
    return (SOCL_GetStatus(s) & SOCL_POLLWRITESTATUS);
}

static inline void SOCL_AddRandomSeed (void * seed, u32 len)
{
    CPS_SslAddRandomSeed(seed, len);
}

#define SOCLi_IsInitialized() (NULL != SOCLConfigPtr)

enum {
    SOCL_CHECKCOUNT_UDPRCVCB_1  = 0,
    SOCL_CHECKCOUNT_UDPRCVCB_2,
    SOCL_CHECKCOUNT_MAX
};
extern u32 SOCLi_CheckCount[SOCL_CHECKCOUNT_MAX];
#ifdef __cplusplus
}
#endif

#endif
