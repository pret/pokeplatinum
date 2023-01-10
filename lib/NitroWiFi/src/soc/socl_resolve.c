#include <nitroWiFi/socl.h>

#define CPS_RCVBUF SOCL_TCP_SOCKET_CPS_RCVBUF_SIZE
#define CPS_SNDBUF SOCL_TCP_SOCKET_CPS_SNDBUF_SIZE
#define CPS_RCVBUF_ALIGNED ((CPS_RCVBUF + 3) & ~3)
#define CPS_SNDBUF_ALIGNED ((CPS_SNDBUF + 3) & ~3)

SOCLInAddr SOCL_Resolve (const char * hostname) {
    u8 * buffers;
    CPSSoc soc;
    SOCLInAddr hostip;

    if (!hostname) {
        return 0;
    }

    buffers = SOCLi_Alloc(CPS_RCVBUF_ALIGNED + CPS_SNDBUF_ALIGNED);

    if (buffers == NULL) {
        return 0;
    }

    MI_CpuClear8(&soc, sizeof(CPSSoc));
    soc.rcvbuf.data = buffers;
    soc.rcvbuf.size = CPS_RCVBUF;
    soc.sndbuf.data = buffers + CPS_RCVBUF_ALIGNED;
    soc.sndbuf.size = CPS_SNDBUF;

    CPS_SocRegister(&soc);
    hostip = CPS_Resolve((char *)hostname);
    CPS_SocUnRegister();

    SOCLi_Free(buffers);

    return hostip;
}

SOCLInAddr SOCL_InetAtoH (const char * hostname) {
    SOCLInAddr hostip;
    OSIntrMode enable;
    CPSInAddr dns0, dns1;

    enable = OS_DisableInterrupts();
    dns0 = CPSDnsIp[0];
    dns1 = CPSDnsIp[1];
    CPSDnsIp[0] = 0;
    CPSDnsIp[1] = 0;
    hostip = CPS_Resolve((char *)hostname);
    CPSDnsIp[0] = dns0;
    CPSDnsIp[1] = dns1;
    (void)OS_RestoreInterrupts(enable);

    return hostip;
}

int SOCL_GetResolver (SOCLInAddr * dns1, SOCLInAddr * dns2) {
    SDK_ASSERT(dns1);
    SDK_ASSERT(dns2);

    if (SOCL_GetHostID() == 0) {
        return SOCL_ENETRESET;
    }

    *dns1 = (SOCLInAddr)CPSDnsIp[0];
    *dns2 = (SOCLInAddr)CPSDnsIp[1];
    return 0;
}

int SOCL_SetResolver (const SOCLInAddr dns1, const SOCLInAddr dns2) {
    if (SOCL_GetHostID() == 0) {
        return SOCL_ENETRESET;
    }

    CPSDnsIp[0] = (CPSInAddr)dns1;
    CPSDnsIp[1] = (CPSInAddr)dns2;
    return 0;
}

int SOCL_GetRemote (int s, u16 * port, SOCLInAddr * ip) {
    SOCLSocket * socket = (SOCLSocket *)s;

    if (!SOCL_SocketIsCreated(socket)) {
        return SOCL_ENETRESET;
    }

    if (SOCL_SocketIsTCP(socket) && (!SOCL_SocketIsConnected(socket) || SOCL_SocketIsClosing(socket))) {
        return SOCL_ENOTCONN;
    }

    *port = socket->cps_socket.remote_port;
    *ip = socket->cps_socket.remote_ip;

    return SOCL_ESUCCESS;
}

SOCLInAddr SOCL_GetHostID (void) {
    if (CPSMyIp == 0) {
        if ((SOCLiDhcpState & (SOCL_DHCP_REQUEST | SOCL_DHCP_CALLBACK)) == SOCL_DHCP_REQUEST) {
            if (OS_GetProcMode() != OS_PROCMODE_IRQ) {
                OS_Sleep(10);
            }
        }
    } else if (SOCLiRequestedIP == 0) {
        SOCLiRequestedIP = CPSMyIp;
    }

    return (volatile SOCLInAddr)CPSMyIp;
}
