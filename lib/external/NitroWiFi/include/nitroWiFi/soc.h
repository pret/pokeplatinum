#ifndef NITROWIFI_SOC_H_
#define NITROWIFI_SOC_H_

#include <nitro/types.h>
#include <nitro/os.h>
#include <nitroWiFi/wcm.h>
#include <nitroWiFi/socl.h>
#include <nitroWiFi/soc_errcode.h>

#ifdef __cplusplus

extern "C" {
#endif

#define SOC_VENDOR_NINTENDO 0x0000
#define SOC_VERSION 0x0100
#define SOC_PF_INET 2
#define SOC_AF_INET SOC_PF_INET
#define SOC_SOCK_STREAM 1
#define SOC_SOCK_DGRAM 2
#define SOC_FLAG_DHCP 0x0001
#define SOC_SOL_SOCKET 0xffff
#define SOC_REUSEADDR 0x00000004
#define SOC_MSG_PEEK SOCL_MSG_PEEK
#define SOC_MSG_DONTWAIT SOCL_MSG_DONTWAIT
#define SOC_INET_ADDRSTRLEN 16

#define SOC_INADDR_ANY ((u32)0x00000000)
#define SOC_INADDR_BROADCAST ((u32)0xffffffff)
#define SOC_INADDR_LOOPBACK ((u32)0x7f000001)
#define SOC_INADDR_UNSPEC_GROUP ((u32)0xe0000000)
#define SOC_INADDR_ALLHOSTS_GROUP ((u32)0xe0000001)
#define SOC_INADDR_MAX_LOCAL_GROUP ((u32)0xe00000ff)

#define SOC_SHUT_RD 0
#define SOC_SHUT_WR 1
#define SOC_SHUT_RDWR 2

#define SOC_F_GETFL 3
#define SOC_F_SETFL 4
#define SOC_O_NONBLOCK 0x04

#define SOC_SOL_SOCKET 0xffff
#define SOC_SO_SNDBUF 0x00001001
#define SOC_SO_RCVBUF 0x00001002
#define SOC_SO_REUSEADDR 0x00000004

#define SOC_DHCP_STATE_INIT 0
#define SOC_DHCP_STATE_SELECTING 1
#define SOC_DHCP_STATE_REQUESTING 2
#define SOC_DHCP_STATE_BOUND 3
#define SOC_DHCP_STATE_RENEWING 4
#define SOC_DHCP_STATE_REBINDING 5
#define SOC_DHCP_STATE_INIT_REBOOT 6
#define SOC_DHCP_STATE_REBOOTING 7

#define SOC_IP_ERR_NONE 0
#define SOC_IP_ERR_BUSY (-1)
#define SOC_IP_ERR_UNREACHABLE (-2)
#define SOC_IP_ERR_RESET (-3)
#define SOC_IP_ERR_NOT_EXIST (-4)
#define SOC_IP_ERR_EXIST (-5)
#define SOC_IP_ERR_SOCKET_UNSPECIFIED (-6)
#define SOC_IP_ERR_INS_RESOURCES (-7)
#define SOC_IP_ERR_CLOSING (-8)
#define SOC_IP_ERR_AGAIN (-9)
#define SOC_IP_ERR_TIMEOUT (-10)
#define SOC_IP_ERR_REFUSED (-11)
#define SOC_IP_ERR_INVALID (-12)
#define SOC_IP_ERR_INV_SOCKET (-13)
#define SOC_IP_ERR_INV_OPTION (-14)

#define SOC_IP_ERR_CANCELED (-16)
#define SOC_IP_ERR_DATASIZE (-17)
#define SOC_IP_ERR_SOURCE_QUENCH (-18)
#define SOC_IP_ERR_NETDOWN (-19)

#define SOC_IP_ERR_DHCP_TIMEOUT (-100)
#define SOC_IP_ERR_DHCP_EXPIRED (-101)
#define SOC_IP_ERR_DHCP_NAK (-102)
#define SOC_IP_ERR_PPPoE_TIMEOUT (-103)
#define SOC_IP_ERR_PPPoE_SERVICE_NAME (-104)
#define SOC_IP_ERR_PPPoE_AC_SYSTEM (-105)
#define SOC_IP_ERR_PPPoE_GENERIC (-106)
#define SOC_IP_ERR_LCP (-107)
#define SOC_IP_ERR_AUTH (-108)
#define SOC_IP_ERR_IPCP (-109)
#define SOC_IP_ERR_PPP_TERMINATED (-110)
#define SOC_IP_ERR_ADDR_COLLISION (-111)
#define SOC_IP_ERR_LINK_DOWN (-112)

#define SOC_IP_ERR_DNS_MAX (-200)
#define SOC_IP_ERR_DNS_MIN (SOC_IP_ERR_DNS_MAX - 15)

#define SOC_DNS_ERROR_MASK 0x000f
#define SOC_DNS_ERROR_NONE 0x0000
#define SOC_DNS_ERROR_FORMAT 0x0001
#define SOC_DNS_ERROR_SERVER 0x0002
#define SOC_DNS_ERROR_NAME 0x0003
#define SOC_DNS_ERROR_NOTIMP 0x0004
#define SOC_DNS_ERROR_REFUSED 0x0005
#define SOC_IP_ERR_DNS_FORMAT (SOC_IP_ERR_DNS_MAX - SOC_DNS_ERROR_FORMAT)
#define SOC_IP_ERR_DNS_SERVER (SOC_IP_ERR_DNS_MAX - SOC_DNS_ERROR_SERVER)
#define SOC_IP_ERR_DNS_NAME (SOC_IP_ERR_DNS_MAX - SOC_DNS_ERROR_NAME)
#define SOC_IP_ERR_DNS_NOTIMP (SOC_IP_ERR_DNS_MAX - SOC_DNS_ERROR_NOTIMP)
#define SOC_IP_ERR_DNS_REFUSED (SOC_IP_ERR_DNS_MAX - SOC_DNS_ERROR_REFUSED)
#define SOC_DNS_NAME_MAX 255
#define SOC_MAXDNAME (SOC_DNS_NAME_MAX + 1)

#define SOC_ALEN 4
#define SOC_MAC_ALEN 6
typedef s64 SOCTime;

extern const u8 SOCAddrAny[SOC_ALEN];
extern const u8 IPAddrLoopback[SOC_ALEN];
extern const u8 IPAddrLimited[SOC_ALEN];
typedef struct SOCSockAddr {
    u8 len;
    u8 family;
    u8 data[6];
} SOCSockAddr;

typedef struct SOCInAddr {
    u32 addr;
} SOCInAddr;

typedef struct SOCSockAddrIn {
    u8 len;
    u8 family;
    u16 port;
    SOCInAddr addr;
} SOCSockAddrIn;

typedef struct SOCPollFD {
    int fd;
    short events;
    short revents;
} SOCPollFD;

typedef struct SOCHostEnt {
    char * name;
    char ** aliases;
    s16 addrType;
    s16 length;
    u8 ** addrList;
} SOCHostEnt;

typedef struct SOCIPSocket {
    u8 len;
    u8 family;
    u16 port;
    u8 addr[SOC_ALEN];
} SOCIPSocket;

typedef struct SOCConfig {
    u16 vendor;
    u16 version;

    void *  (*alloc)(u32 name, s32 size);
    void (* free)(u32 name, void * ptr, s32 size);

    u32 flag;
    SOCInAddr addr;
    SOCInAddr netmask;
    SOCInAddr router;
    SOCInAddr dns1;
    SOCInAddr dns2;

    s32 timeWaitBuffer;
    s32 reassemblyBuffer;
    s32 mtu;

    s32 rwin;
    SOCTime r2;

    const char * peerid;
    const char * passwd;

    const char * serviceName;

    const char * hostName;
    s32 rdhcp;

    s32 udpSendBuff;
    s32 udpRecvBuff;
} SOCConfig;

typedef struct SOCAddrInfo SOCAddrInfo;
struct SOCAddrInfo {
    int flags;
    int family;
    int sockType;
    int protocol;
    unsigned addrLen;
    char * canonName;
    void * addr;
    SOCAddrInfo * next;
};

typedef SOCLSslConnection SOCSslConnection;
typedef SOCLCaInfo SOCCaInfo;
typedef int (* SOCSslAuthHandler) (int result, SOCSslConnection * con, int level);

#define SOC_CERT_OUTOFDATE SOCL_CERT_OUTOFDATE
#define SOC_CERT_BADSERVER SOCL_CERT_BADSERVER

#define SOC_CERT_ERRMASK SOCL_CERT_ERRMASK

#define SOC_CERT_NOROOTCA SOCL_CERT_NOROOTCA
#define SOC_CERT_BADSIGNATURE SOCL_CERT_BADSIGNATURE
#define SOC_CERT_UNKNOWN_SIGALGORITHM SOCL_CERT_UNKNOWN_SIGALGORITHM
#define SOC_CERT_UNKNOWN_PUBKEYALGORITHM SOCL_CERT_UNKNOWN_PUBKEYALGORITHM

u32(SOC_NtoHl) (u32 netlong);
u16(SOC_NtoHs) (u16 netshort);
u32(SOC_HtoNl) (u32 hostlong);
u16(SOC_HtoNs) (u16 hostshort);

#ifdef SDK_BIG_ENDIAN
#define SOC_NtoHl(netlong) ((u32)(netlong))
#define SOC_NtoHs(netshort) ((u16)(netshort))
#define SOC_HtoNl(hostlong) ((u32)(hostlong))
#define SOC_HtoNs(hostshort) ((u16)(hostshort))

#else
#define SOC_NtoHl(netlong) \
    ( \
        (u32) \
        ( \
            (((u32)(netlong) >> 24) & 0x000000ff) | (((u32)(netlong) >> 8) & 0x0000ff00) | \
            (((u32)(netlong) << 8) & 0x00ff0000) | (((u32)(netlong) << 24) & 0xff000000) \
        ) \
    )

#define SOC_NtoHs(netshort) ((u16)((((u16)(netshort) >> 8) & 0x00ff) | (((u16)(netshort) << 8) & 0xff00)))

#define SOC_HtoNl(hostlong) \
    ( \
        (u32) \
        ( \
            (((u32)(hostlong) >> 24) & 0x000000ff) | (((u32)(hostlong) >> 8) & 0x0000ff00) | \
            (((u32)(hostlong) << 8) & 0x00ff0000) | (((u32)(hostlong) << 24) & 0xff000000) \
        ) \
    )

#define SOC_HtoNs(hostshort) ((u16)((((u16)(hostshort) >> 8) & 0x00ff) | (((u16)(hostshort) << 8) & 0xff00)))
#endif

int SOC_Socket(int pf, int type, int protocol);
int SOC_Bind(int s, const void * sockAddr);
int SOC_Connect(int s, const void * sockAddr);
int SOC_Read(int s, void * buf, int len);
int SOC_Recv(int s, void * buf, int len, int flags);
int SOC_RecvFrom(int s, void * buf, int len, int flags, void * sockFrom);
int SOC_Write(int s, const void * buf, int len);
int SOC_Send(int s, const void * buf, int len, int flags);
int SOC_SendTo(int s, const void * buf, int len, int flags, const void * sockTo);
int SOC_Close(int s);
int SOC_Shutdown(int s, int how);

SOCHostEnt * SOC_GetHostByAddr(const void * addr, int len, int type);
SOCHostEnt * SOC_GetHostByName(const char * name);
int SOC_GetSockName(int s, void * sockAddr);
long SOC_GetHostID(void);

int SOC_Startup(const SOCConfig * config);
int SOC_Cleanup(void);

int SOC_SetResolver(const SOCInAddr * dns1, const SOCInAddr * dns2);
int SOC_GetResolver(SOCInAddr * dns1, SOCInAddr * dns2);

int SOC_Accept(int s, void * sockAddr);
int SOC_Listen(int s, int backlog);

int SOC_Fcntl(int s, int cmd, int mode);

int SOC_InetAtoN(const char * cp, SOCInAddr * inp);
char * SOC_InetNtoA(SOCInAddr in);
int SOC_InetPtoN(int af, const char * src, void * dst);
const char * SOC_InetNtoP(int af, const void * src, char * dst, unsigned len);

int SOC_Poll(SOCPollFD fds[], unsigned nfds, OSTick timeout);

static inline int SOC_EnableSsl (int s, SOCSslConnection * con)
{
    return SOCL_EnableSsl(s, (SOCLSslConnection *)con);
}

static inline void SOC_AddRandomSeed (void * seed, u32 len)
{
    SOCL_AddRandomSeed(seed, len);
}

static inline int SOC_GetSockOpt (int s, int level, int optname, void * optval, int * optlen)
{
    (void)s;
    (void)level;
    (void)optname;
    MI_CpuClear8(optval, (u32) * optlen);

    return 0;
}

static inline int SOC_SetSockOpt (int s, int level, int optname, const void * optval, int optlen)
{
    (void)s;
    (void)level;
    (void)optname;
    (void)optval;
    (void)optlen;

    return 0;
}

static inline void SOC_Init (void)
{
}

static inline int SOC_Reset (int final)
{
    (void)final;
    return 0;
}

void SOC_U32to4U8(u32 adr_u32, u8 * adr_4u8);

typedef struct SOCInterface {
    u32 _dummy_;
} SOCInterface;

static inline void SOC_GetMacAddr (SOCInterface * interface, u8 * macAddress)
{
    (void)interface;
    OS_GetMacAddress(macAddress);
}

static inline void SOC_GetAddr (SOCInterface * interface, u8 * addr)
{
    u32 hostip = (u32)SOCL_GetHostID();
    SOC_U32to4U8(hostip, addr);

    (void)interface;
}

static inline void SOC_GetAlias (SOCInterface * interface, u8 * addr)
{
    SOC_GetAddr(interface, addr);
}

static inline void SOC_GetGateway (SOCInterface * interface, u8 * addr)
{
    SOC_U32to4U8((u32)CPSGatewayIp, addr);
    (void)interface;
}

static inline void SOC_GetNetmask (SOCInterface * interface, u8 * addr)
{
    SOC_U32to4U8((u32)CPSNetMask, addr);
    (void)interface;
}

static inline void SOC_GetBroadcastAddr (SOCInterface * interface, u8 * addr)
{
    SOC_U32to4U8((u32)SOC_INADDR_BROADCAST, addr);
    (void)interface;
}

static inline void SOC_GetMtu (SOCInterface * interface, s32 * mtu)
{
    (*mtu) = SOCLiConfigPtr ? (s32)SOCLiConfigPtr->mtu : 0;
    (void)interface;
}

static inline s32 SOC_ClearConfigError (SOCInterface * interface)
{
    (void)interface;
    SOCLiDhcpState = 0;
    return 0;
}

void SOC_GetLinkState(SOCInterface * interface, BOOL * status);
s32 SOC_GetConfigError(SOCInterface * interface);

typedef struct {
    u32 dummy;
} SOCDHCPInfo;

static inline int SOC_DHCPGetStatus (SOCDHCPInfo * info)
{
    (void)info;
    return SOC_GetHostID() ? SOC_DHCP_STATE_BOUND : SOC_DHCP_STATE_REQUESTING;
}

#ifdef __cplusplus
}
#endif

#endif
