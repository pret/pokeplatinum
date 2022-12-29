#ifndef NITROWIFI_SOC_STUB_H_
#define NITROWIFI_SOC_STUB_H_

#include <nitro.h>
#include <nitroWiFi/wcm.h>
#include <nitroWiFi/soc.h>
#include <nitroWiFi/soc_errcode.h>

#include <string.h>

#ifdef __cplusplus

extern "C" {
#endif

#define UDP_HLEN 8
#define SOC_SOL_TCP 0
#define SOC_TCP_MAXSEG 0
#define SOC_SO_TYPE 0x00001008
#define SOC_SOL_IP 0
#define SOC_IP_ADD_MEMBERSHIP 0x0000000b
#define SOC_IP_MULTICAST_LOOP 0x00000009
#define SOC_IP_DROP_MEMBERSHIP 0x0000000c
#define SOC_SO_SNDLOWAT 0x00001003
#define SOC_SO_RCVLOWAT 0x00001004
#define SOC_NI_MAXHOST 10
#define SOC_NI_MAXSERV 10
#define SOC_NI_NOFQDN 1

#define SOAddrInfo SOCAddrInfo
#define SO_NI_MAXHOST SOC_NI_MAXHOST
#define SO_NI_MAXSERV SOC_NI_MAXSERV
#define SO_GetAddrInfo SOC_GetAddrInfo
#define SO_FreeAddrInfo SOC_FreeAddrInfo
#define SO_NI_NOFQDN SOC_NI_NOFQDN

#define DNS_NAME_MAX 10
#define IPAddrLoopback SOCAddrLoopback
#define IP_GetMtu SOC_GetMtu
#define IP_GetConfigError SOC_GetConfigError

extern const u8 SOCAddrLoopback[SOC_ALEN];

typedef struct {
    int ___temporary___;
} ICMPInfo;

typedef void (* ICMPCallback) (ICMPInfo * info, s32 result);

typedef struct IPHeader {
    u8 verlen;
    u8 tos;
    u16 len;
    u16 id;
    u16 frag;
    u8 ttl;
    u8 proto;
    u16 sum;
    u8 src[SOC_ALEN];
    u8 dst[SOC_ALEN];
} IPHeader;

typedef struct SOCIpMreq {
    SOCInAddr multiaddr;
    SOCInAddr interface;
} SOCIpMreq;

extern int SOC_GetAddrInfo(const char * nodeName, const char * servName, const SOCAddrInfo * hints, SOCAddrInfo ** res);
extern void SOC_FreeAddrInfo(SOCAddrInfo * head);
extern int SOC_GetNameInfo(const void * sa, char * node, unsigned nodeLen, char * service, unsigned serviceLen,
                           int flags);
extern void SOC_GetMtu(SOCInterface * interface, s32 * mtu);

extern s32 ICMP_Cancel(ICMPInfo * info, s32 err);
extern s32 ICMP_Socket(int af, ICMPInfo * info);
extern s32 ICMP_Ping(ICMPInfo * info, const void * data, s32 len, const void * remote, ICMPCallback callback,
                     s32 * result);
extern s32 ICMP_Close(ICMPInfo * info);

extern u16 IPi_CheckSum(IPHeader * ip);

#ifdef __cplusplus
}
#endif

#endif
