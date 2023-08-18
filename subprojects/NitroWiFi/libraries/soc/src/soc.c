#include <nitroWiFi/soc.h>
#include <nitroWiFi/socl.h>

const u8 SOCAddrAny[SOC_ALEN] = {0, 0, 0, 0};
const u8 SOCAddrLoopback[SOC_ALEN] = {127, 0, 0, 1};
const u8 SOCAddrLimited[SOC_ALEN] = {255, 255, 255, 255};

int SOC_Socket (int pf, int type, int protocol) {
    (void)pf;
    (void)protocol;

    SDK_ASSERT(pf == SOC_PF_INET);
    SDK_ASSERT(type == SOC_SOCK_STREAM || type == SOC_SOCK_DGRAM);
    SDK_ASSERT(protocol == 0);

    return (type == SOC_SOCK_STREAM) ? SOCL_TcpSocket() : SOCL_UdpSocket();
}

int SOC_Bind (int s, const void * sockAddr) {
    const SOCSockAddrIn * addr = (const SOCSockAddrIn *)sockAddr;

    SDK_ASSERT(addr != NULL);
    SDK_ASSERT(addr->len == sizeof(SOCSockAddrIn));
    SDK_ASSERT(addr->family == SOC_PF_INET);
    return SOCL_Bind(s, SOC_NtoHs(addr->port));
}

int SOC_Connect (int s, const void * sockAddr) {
    const SOCSockAddrIn * addr = (const SOCSockAddrIn *)sockAddr;

    SDK_ASSERT(addr != NULL);
    SDK_ASSERT(addr->len == sizeof(SOCSockAddrIn));
    SDK_ASSERT(addr->family == SOC_PF_INET);
    return SOCL_Connect(s, SOC_NtoHs(addr->port), SOC_NtoHl(addr->addr.addr));
}

int SOC_Read (int s, void * buf, int len) {
    return SOCL_ReadFrom(s, buf, len, NULL, NULL, 0);
}

int SOC_Recv (int s, void * buf, int len, int flags) {
    return SOCL_ReadFrom(s, buf, len, NULL, NULL, flags);
}

int SOC_RecvFrom (int s, void * buf, int len, int flags, void * sockFrom) {
    u16 port;
    SOCLInAddr ip;
    int result;

    result = SOCL_ReadFrom(s, buf, len, &port, &ip, flags);

    if (result >= 0 && sockFrom) {
        SOCSockAddrIn * addr = (SOCSockAddrIn *)sockFrom;
        addr->port = SOC_HtoNs(port);
        addr->addr.addr = SOC_HtoNl(ip);
    }

    return result;
}

int SOC_Write (int s, const void * buf, int len) {
    return SOCL_WriteTo(s, buf, len, 0, (SOCLInAddr)0, 0);
}

int SOC_Send (int s, const void * buf, int len, int flags) {
    return SOCL_WriteTo(s, buf, len, 0, (SOCLInAddr)0, flags);
}

int SOC_SendTo (int s, const void * buf, int len, int flags, const void * sockTo) {
    SOCSockAddrIn * addr;
    u16 port;
    SOCLInAddr ip;

    if (sockTo) {
        addr = (SOCSockAddrIn *)sockTo;
        port = SOC_NtoHs(addr->port);
        ip = SOC_NtoHl(addr->addr.addr);
    } else {
        port = 0;
        ip = 0;
    }

    return SOCL_WriteTo(s, buf, len, port, ip, flags);
}

int SOC_Shutdown (int s, int how) {
    SDK_ASSERT(how == SOC_SHUT_RDWR);
    (void)how;
    return SOCL_Shutdown(s);
}

int SOC_Close (int s) {
    return SOCL_Close(s);
}

SOCHostEnt * SOC_GetHostByName (const char * name) {
    static SOCHostEnt hostent;
    static u8 * hostAddrList[2];
    static SOCLInAddr hostip;
    static char entName[SOC_MAXDNAME + 1];
    u32 h;

    h = (u32)SOCL_Resolve(name);
    if (h == 0) {
        return NULL;
    }

    MI_CpuClear8(entName, sizeof(entName));

    (void)STD_CopyLString(&entName[0], name, SOC_MAXDNAME + 1);

    hostent.name = &entName[0];
    hostent.aliases = NULL;
    hostent.addrType = SOC_PF_INET;
    hostent.length = sizeof(SOCLInAddr);
    hostent.addrList = hostAddrList;
    hostAddrList[0] = (u8 *)&hostip;
    hostAddrList[1] = NULL;
    hostip = SOC_HtoNl(h);

    return &hostent;
}

SOCHostEnt * SOC_GetHostByAddr (const void * addr, int len, int type) {
    static SOCHostEnt hostent;
    static u8 * hostAddrList[2];
    static SOCLInAddr hostip;
    static char entName[SOC_MAXDNAME + 1];

    SDK_ASSERT(type == SOC_PF_INET);
    SDK_ASSERT(len == sizeof(SOCLInAddr));

    (void)SOC_InetNtoP(SOC_AF_INET, addr, &entName[0], SOC_MAXDNAME + 1);

    hostent.name = &entName[0];
    hostent.aliases = NULL;
    hostent.addrType = (s16)type;
    hostent.length = (s16)len;
    hostent.addrList = hostAddrList;
    hostAddrList[0] = (u8 *)&hostip;
    hostAddrList[1] = NULL;
    hostip = *(SOCLInAddr *)addr;

    return &hostent;
}

int SOC_GetSockName (int s, void * sockAddr) {
    SOCSockAddrIn * addr = (SOCSockAddrIn *)sockAddr;
    u32 local_ip;
    u32 local_port;

    if (!s) {
        return SOC_ENETRESET;
    }

    local_ip = (u32)SOCL_GetHostID();
    local_port = (u32)SOCL_GetHostPort(s);

    if (local_ip == 0) {
        local_port = 0;
    }

    addr->len = sizeof(SOCSockAddrIn);
    addr->family = SOC_PF_INET;
    addr->port = SOC_HtoNs(local_port);
    addr->addr.addr = SOC_HtoNl(local_ip);

    return 0;
}

long SOC_GetHostID (void) {
    u32 hostid = (u32)SOCL_GetHostID();

    return (long)SOC_HtoNl(hostid);
}

int SOC_SetResolver (const SOCInAddr * dns1, const SOCInAddr * dns2) {
    return SOCL_SetResolver(SOC_NtoHl(dns1->addr), SOC_NtoHl(dns2->addr));
}

int SOC_GetResolver (SOCInAddr * dns1, SOCInAddr * dns2) {
    u32 dns1a, dns2a;
    int result;

    result = SOCL_GetResolver(&dns1a, &dns2a);
    if (result >= 0) {
        dns1->addr = SOC_HtoNl(dns1a);
        dns2->addr = SOC_HtoNl(dns2a);
    }

    return result;
}

int SOC_Listen (int s, int backlog) {
    return SOCL_Listen(s, backlog);
}

int SOC_Accept (int s, void * sockAddr) {
    SOCSockAddrIn * addr = (SOCSockAddrIn *)sockAddr;
    u16 remote_port;
    SOCLInAddr remote_ip;
    int result;

    result = SOCL_Accept(s, &remote_port, &remote_ip);

    if (result >= 0) {
        addr->port = SOC_HtoNs(remote_port);
        addr->addr.addr = SOC_HtoNl(remote_ip);
    }

    return result;
}

int SOC_Fcntl (int s, int cmd, int mode) {
    int t;

    if (!s) {
        return -1;
    }

    switch (cmd) {
    case SOC_F_GETFL:
        t = SOCL_IsBlock(s) ? 0 : SOC_O_NONBLOCK;
        return (int)t;

    case SOC_F_SETFL:
        if (mode & SOC_O_NONBLOCK) {
            SOCL_SetNoBlock(s);
        } else {
            SOCL_SetBlock(s);
        }
        break;

    default:
        SDK_ASSERT(0);
        break;
    }

    return 0;
}

static void *  (*AllocFunc_SOC) (u32 name, s32 size);
static void * AllocFunc_SOCL (u32 size) {
    s32 msize = (s32)(size + sizeof(s32));
    s32 * m = AllocFunc_SOC(0U, msize);

    if (m) {
        m[0] = (s32)msize;
        m++;
    }

    return (void *)m;
}

static void (*FreeFunc_SOC) (u32 name, void * ptr, s32 size);
static void FreeFunc_SOCL (void * ptr) {
    s32 * m = (s32 *)ptr;

    if (m) {
        m--;
        FreeFunc_SOC(0U, (void *)m, m[0]);
    }
}

int SOC_Startup (const SOCConfig * config) {
    static SOCLConfig soclConfig;

    soclConfig.use_dhcp = (config->flag == SOC_FLAG_DHCP) ? TRUE : FALSE;
    soclConfig.host_ip.my_ip = SOC_NtoHl(config->addr.addr);
    soclConfig.host_ip.net_mask = SOC_NtoHl(config->netmask.addr);
    soclConfig.host_ip.gateway_ip = SOC_NtoHl(config->router.addr);
    soclConfig.host_ip.dns_ip[0] = SOC_NtoHl(config->dns1.addr);
    soclConfig.host_ip.dns_ip[1] = SOC_NtoHl(config->dns2.addr);
    soclConfig.alloc = AllocFunc_SOCL;
    soclConfig.free = FreeFunc_SOCL;
    AllocFunc_SOC = config->alloc;
    FreeFunc_SOC = config->free;
    soclConfig.cmd_packet_max = SOCL_CMDPACKET_MAX;
    soclConfig.mtu = config->mtu;
    soclConfig.rwin = config->rwin;

    return SOCL_Startup(&soclConfig);
}

int SOC_Cleanup (void) {
    return SOCL_Cleanup();
}

char * SOC_InetNtoA (SOCInAddr in) {
    static char buffer[SOC_INET_ADDRSTRLEN];

    (void)SOC_InetNtoP(SOC_AF_INET, &in.addr, buffer, sizeof(buffer));

    return buffer;
}

int SOC_InetAtoN (const char * cp, SOCInAddr * inp) {
    u32 h = (u32)SOCL_InetAtoH(cp);

    if (h == 0) {
        return FALSE;
    }

    inp->addr = SOC_HtoNl(h);
    return TRUE;
}

const char * SOC_InetNtoP (int af, const void * src, char * dst, unsigned len) {
    u32 addr32;
    u8 addr[4];

    if (af != SOC_AF_INET) {
        return NULL;
    }

    if (len < SOC_INET_ADDRSTRLEN) {
        return NULL;
    }

    MI_CpuCopy8(src, &addr32, sizeof(addr32));

    SOC_U32to4U8(addr32, addr);
    (void)OS_SNPrintf(dst, SOC_INET_ADDRSTRLEN, "%d.%d.%d.%d", addr[3], addr[2], addr[1], addr[0]);

    return (const char *)dst;
}

int SOC_InetPtoN (int af, const char * src, void * dst) {
    u32 h;
    u32 addr;

    if (af != SOC_AF_INET) {
        return SOC_EAFNOSUPPORT;
    }

    h = (u32)SOCL_InetAtoH(src);

    if (h == 0) {
        return 1;
    }

    addr = SOC_HtoNl(h);
    MI_CpuCopy8(&addr, dst, sizeof(addr));

    return 0;
}

void SOC_U32to4U8 (u32 adr_u32, u8 * adr_4u8) {
    adr_4u8[0] = (u8)((adr_u32 >> 24) & 0xff);
    adr_4u8[1] = (u8)((adr_u32 >> 16) & 0xff);
    adr_4u8[2] = (u8)((adr_u32 >> 8) & 0xff);
    adr_4u8[3] = (u8)((adr_u32 >> 0) & 0xff);
}

#define SOC_POLLING_INTERVAL 1
int SOC_Poll (SOCPollFD * fds, unsigned int nfds, OSTick timeout) {
    SOCPollFD * fp;
    BOOL is_enable_timeout;
    s64 time;
    int i, num_good;
    int status, status_mask;

    is_enable_timeout = (timeout != (OSTick)SOC_INFTIM);
    time = (s64)timeout;

    for (;;) {
        fp = fds;
        num_good = 0;

        for (i = 0; i < nfds; i++) {
            status_mask = fp->events | SOC_POLLERR | SOC_POLLHUP | SOC_POLLNVAL;
            status = SOCL_GetStatus(fp->fd) & status_mask;
            if (status) {
                num_good++;
            }

            fp->revents = (s16)status;
            fp++;
        }

        if (num_good > 0 || (is_enable_timeout && time <= 0)) {
            break;
        }

        OS_Sleep(SOC_POLLING_INTERVAL);
        time -= (s64)OS_MilliSecondsToTicks(SOC_POLLING_INTERVAL);
    }

    return num_good;
}

void SOC_GetLinkState (SOCInterface * interface, BOOL * status) {
    if (WCM_GetPhase() == WCM_PHASE_DCF) {
        *status = TRUE;
    } else {
        *status = FALSE;

        if (OS_GetProcMode() != OS_PROCMODE_IRQ) {
            OS_Sleep(1);
        }
    }
    (void)interface;
}

s32 SOC_GetConfigError (SOCInterface * interface) {
    s32 result = 0;

    if (WCM_GetPhase() == WCM_PHASE_DCF) {
        if ((SOCLiDhcpState & SOCL_DHCP_ERROR) == SOCL_DHCP_ERROR) {
            result = SOC_IP_ERR_DHCP_TIMEOUT;
        }
    } else {
        result = SOC_IP_ERR_LINK_DOWN;
    }

#ifdef SDK_MY_DEBUG
    switch (CPSNoIpReason) {
    case CPS_NOIP_REASON_DHCPDISCOVERY:
        OS_TPrintf("CPS_NOIP_REASON_DHCPDISCOVERY\n");
        break;

    case CPS_NOIP_REASON_LINKOFF:
        OS_TPrintf("CPS_NOIP_REASON_LINKOFF\n");
        break;

    case CPS_NOIP_REASON_LEASETIMEOUT:
        OS_TPrintf("CPS_NOIP_REASON_LEASETIMEOUT\n");
        break;

    case CPS_NOIP_REASON_COLLISION:
        OS_TPrintf("CPS_NOIP_REASON_COLLISION\n");
        break;

    default:
        OS_TPrintf("DEFAULT???\n");
    }
#endif

    (void)interface;
    return result;
}
