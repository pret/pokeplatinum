#include <nitroWiFi/socl.h>
#include "wcm_cpsif.h"

CPSConfig SOCLiCPSConfig;
const SOCLConfig * SOCLiConfigPtr = NULL;
int SOCLiUDPSendSocket = 0;
int SOCLiDhcpState = 0;
SOCLInAddr SOCLiRequestedIP = 0;
u32 SOCLiYieldWait = 0;

static void SOCLi_StartupCPS(void);
static int SOCLi_StartupSOCL(void);
static void SOCLi_SetMyIP(void);
BOOL SOCL_LinkIsOn(void);

#include <nitroWiFi/version.h>
#include <nitro/version_begin.h>
#define MODULE "WiFi"SDK_WIFI_VERSION_STRING
static char id_string[] = SDK_MIDDLEWARE_STRING("NINTENDO", MODULE);
#include <nitro/version_end.h>

int SOCL_Startup (const SOCLConfig * socl_config) {
    SDK_USING_MIDDLEWARE(id_string);
    SDK_ASSERT(socl_config);

    if (SOCLiConfigPtr) {
        return 0;
    }

    SOCLiConfigPtr = socl_config;
    SOCLi_StartupCPS();
    return SOCLi_StartupSOCL();
}

static int SOCLi_StartupSOCL (void) {
    int r;

    r = SOCLi_StartupCommandPacketQueue((int)SOCLiConfigPtr->cmd_packet_max);

    if (r >= 0) {
        SOCLiUDPSendSocket = SOCL_UdpSendSocket();
    }

    return r;
}

static void SOCLi_StartupCPS (void) {
    CPSConfig * cps_config = &SOCLiCPSConfig;
    const SOCLConfig * socl_config = SOCLiConfigPtr;

    SDK_ASSERT(socl_config->alloc);
    SDK_ASSERT(socl_config->free);

    MI_CpuClear8(cps_config, sizeof(CPSConfig));
    cps_config->alloc = socl_config->alloc;
    cps_config->free = socl_config->free;
    cps_config->link_is_on = SOCL_LinkIsOn;
    cps_config->random_seed = 0;
    cps_config->yield_wait = SOCLiYieldWait;

    if (socl_config->lan_buffer_size) {
        cps_config->lan_buflen = socl_config->lan_buffer_size;
    } else {
        cps_config->lan_buflen = SOCL_LAN_BUFFER_SIZE_DEFAULT;
    }

    if (socl_config->lan_buffer) {
        cps_config->lan_buf = socl_config->lan_buffer;
    } else {
        cps_config->lan_buf = SOCLi_Alloc(cps_config->lan_buflen);
    }

    {
        s32 mtu, mss, rwin;

        mtu = socl_config->mtu ? socl_config->mtu : SOCL_MTU_SIZE_DEFAULT;
        rwin = socl_config->rwin ? socl_config->rwin : SOCL_RWIN_SIZE_DEFAULT;
        mss = SOCLi_MTUtoMSS(mtu);

        cps_config->mymss = (u32)mss;
        SOCLSocketParamTCP.buffer.rcvbuf_size = (u16)rwin;
        SOCLSocketParamTCP.buffer.rcvbuf_consume_min = (u16)(rwin / 2);
    }

    CPSMyIp = 0x00000000;

    if (socl_config->use_dhcp) {
        SOCLiDhcpState = SOCL_DHCP_REQUEST;
        cps_config->mode = 0;
        cps_config->dhcp_callback = SOCLi_DhcpTimeout;
        cps_config->requested_ip = SOCLiRequestedIP;
    } else {
        SOCLiDhcpState = 0;
        cps_config->mode = CPS_DONOTUSE_DHCP;
        cps_config->dhcp_callback = SOCLi_SetMyIP;
    }

    CPS_SetThreadPriority(socl_config->cps_thread_prio ? socl_config->cps_thread_prio : (u32)SOCL_CPS_SOCKET_THREAD_PRIORITY);

    WCM_SetRecvDCFCallback(CPSi_RecvCallbackFunc);

    {
        extern void CPS_SetScavengerCallback(void (*f) (void));
        CPS_SetScavengerCallback(SOCLi_TrashSocket);
    }

#ifdef SDK_MY_DEBUG
    OS_TPrintf("CPS_Startup\n");
#endif
    CPS_Startup(cps_config);

    return;
}

SDK_WEAK_SYMBOL void SOCLi_SetMyIPinConfig (SOCLInAddr ip, SOCLInAddr mask, SOCLInAddr gateway) {
    SOCLConfig * config = (SOCLConfig *)SOCLiConfigPtr;

    if (config) {
        config->host_ip.my_ip = ip;
        config->host_ip.net_mask = mask;
        config->host_ip.gateway_ip = gateway;
    }

    return;
}

SDK_WEAK_SYMBOL void SOCLi_SetMyIP (void) {
    const SOCLConfig * config = SOCLiConfigPtr;

    SDK_ASSERT(config);
    CPSMyIp = SOCL2CPSInAddr(config->host_ip.my_ip);
    CPSNetMask = SOCL2CPSInAddr(config->host_ip.net_mask);
    CPSGatewayIp = SOCL2CPSInAddr(config->host_ip.gateway_ip);
    CPSDnsIp[0] = SOCL2CPSInAddr(config->host_ip.dns_ip[0]);
    CPSDnsIp[1] = SOCL2CPSInAddr(config->host_ip.dns_ip[1]);
    SOCLiDhcpState |= SOCL_DHCP_CALLBACK;
    return;
}

SDK_WEAK_SYMBOL void SOCLi_DhcpTimeout (void) {
    SOCLiDhcpState |= (SOCL_DHCP_CALLBACK | SOCL_DHCP_ERROR);
    return;
}

SDK_WEAK_SYMBOL BOOL SOCL_LinkIsOn (void) {
    return WCM_GetApMacAddress() != NULL;
}
