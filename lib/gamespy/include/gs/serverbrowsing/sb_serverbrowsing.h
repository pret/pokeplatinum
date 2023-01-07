#ifndef _SB_SERVERBROWSING_H
#define _SB_SERVERBROWSING_H

#ifdef __cplusplus
extern "C" {
#endif

#include <gs/nonport.h>

#define MAX_FILTER_LEN 256
#define QVERSION_GOA 0
#define QVERSION_QR2 1
#ifndef GSI_UNICODE
#define ServerBrowserNew ServerBrowserNewA
#define ServerBrowserUpdate ServerBrowserUpdateA
#define ServerBrowserLimitUpdate ServerBrowserLimitUpdateA
#define ServerBrowserAuxUpdateIP ServerBrowserAuxUpdateIPA
#define ServerBrowserRemoveIP ServerBrowserRemoveIPA
#define ServerBrowserSendNatNegotiateCookieToServer ServerBrowserSendNatNegotiateCookieToServerA
#define ServerBrowserSendMessageToServer ServerBrowserSendMessageToServerA
#define ServerBrowserSort ServerBrowserSortA
#define SBServerGetStringValue SBServerGetStringValueA
#define SBServerGetIntValue SBServerGetIntValueA
#define SBServerGetFloatValue SBServerGetFloatValueA
#define SBServerGetBoolValue SBServerGetBoolValueA
#define SBServerGetPlayerStringValue SBServerGetPlayerStringValueA
#define SBServerGetPlayerIntValue SBServerGetPlayerIntValueA
#define SBServerGetPlayerFloatValue SBServerGetPlayerFloatValueA
#define SBServerGetTeamStringValue SBServerGetTeamStringValueA
#define SBServerGetTeamIntValue SBServerGetTeamIntValueA
#define SBServerGetTeamFloatValue SBServerGetTeamFloatValueA
#define ServerBrowserListQueryError ServerBrowserListQueryErrorA
#define ServerBrowserErrorDesc ServerBrowserErrorDescA
#define ServerBrowserGetServerByIP ServerBrowserGetServerByIPA
#else
#define ServerBrowserNew ServerBrowserNewW
#define ServerBrowserUpdate ServerBrowserUpdateW
#define ServerBrowserLimitUpdate ServerBrowserLimitUpdateW
#define ServerBrowserAuxUpdateIP ServerBrowserAuxUpdateIPW
#define ServerBrowserRemoveIP ServerBrowserRemoveIPW
#define ServerBrowserSendNatNegotiateCookieToServer ServerBrowserSendNatNegotiateCookieToServerW
#define ServerBrowserSendMessageToServer ServerBrowserSendMessageToServerW
#define ServerBrowserSort ServerBrowserSortW
#define SBServerGetStringValue SBServerGetStringValueW
#define SBServerGetIntValue SBServerGetIntValueW
#define SBServerGetFloatValue SBServerGetFloatValueW
#define SBServerGetBoolValue SBServerGetBoolValueW
#define SBServerGetPlayerStringValue SBServerGetPlayerStringValueW
#define SBServerGetPlayerIntValue SBServerGetPlayerIntValueW
#define SBServerGetPlayerFloatValue SBServerGetPlayerFloatValueW
#define SBServerGetTeamStringValue SBServerGetTeamStringValueW
#define SBServerGetTeamIntValue SBServerGetTeamIntValueW
#define SBServerGetTeamFloatValue SBServerGetTeamFloatValueW
#define ServerBrowserListQueryError ServerBrowserListQueryErrorW
#define ServerBrowserErrorDesc ServerBrowserErrorDescW
#define ServerBrowserGetServerByIP ServerBrowserGetServerByIPW
#endif

typedef struct _ServerBrowser * ServerBrowser;
#ifndef SBServer
typedef struct _SBServer * SBServer;
#endif

typedef enum {
    SBFalse,
    SBTrue
} SBBool;

typedef enum {
    sbe_noerror,
    sbe_socketerror,
    sbe_dnserror,
    sbe_connecterror,
    sbe_dataerror,
    sbe_allocerror,
    sbe_paramerror
} SBError;

typedef enum {
    sb_disconnected,
    sb_listxfer,
    sb_querying,
    sb_connected
} SBState;

typedef enum {
    sbc_serveradded,
    sbc_serverupdated,
    sbc_serverupdatefailed,
    sbc_serverdeleted,
    sbc_updatecomplete,
    sbc_queryerror
} SBCallbackReason;

typedef enum {
    sbcm_int,
    sbcm_float,
    sbcm_strcase,
    sbcm_stricase
} SBCompareMode;

typedef void (* ServerBrowserCallback)(ServerBrowser sb, SBCallbackReason reason, SBServer server, void * instance);
typedef void (* SBServerKeyEnumFn)(gsi_char * key, gsi_char * value, void * instance);

ServerBrowser ServerBrowserNew(const gsi_char * queryForGamename, const gsi_char * queryFromGamename, const gsi_char * queryFromKey, int queryFromVersion, int maxConcUpdates, int queryVersion, SBBool lanBrowse, ServerBrowserCallback callback, void * instance);
void ServerBrowserFree(ServerBrowser sb);
SBError ServerBrowserUpdate(ServerBrowser sb, SBBool async, SBBool disconnectOnComplete, const unsigned char * basicFields, int numBasicFields, const gsi_char * serverFilter);
SBError ServerBrowserLimitUpdate(ServerBrowser sb, SBBool async, SBBool disconnectOnComplete, const unsigned char * basicFields, int numBasicFields, const gsi_char * serverFilter, int maxServers);
SBError ServerBrowserThink(ServerBrowser sb);
SBError ServerBrowserLANUpdate(ServerBrowser sb, SBBool async, unsigned short startSearchPort, unsigned short endSearchPort);
SBError ServerBrowserAuxUpdateIP(ServerBrowser sb, const gsi_char * ip, unsigned short port, SBBool viaMaster, SBBool async, SBBool fullUpdate);
SBError ServerBrowserAuxUpdateServer(ServerBrowser sb, SBServer server, SBBool async, SBBool fullUpdate);
void ServerBrowserDisconnect(ServerBrowser sb);
SBState ServerBrowserState(ServerBrowser sb);
void ServerBrowserRemoveIP(ServerBrowser sb, const gsi_char * ip, unsigned short port);
void ServerBrowserRemoveServer(ServerBrowser sb, SBServer server);
void ServerBrowserHalt(ServerBrowser sb);
void ServerBrowserClear(ServerBrowser sb);
const gsi_char * ServerBrowserErrorDesc(ServerBrowser sb, SBError error);
const gsi_char * ServerBrowserListQueryError(ServerBrowser sb);
SBServer ServerBrowserGetServer(ServerBrowser sb, int index);
SBServer ServerBrowserGetServerByIP(ServerBrowser sb, const gsi_char * ip, unsigned short port);
int ServerBrowserCount(ServerBrowser sb);
int ServerBrowserPendingQueryCount(ServerBrowser sb);
char * ServerBrowserGetMyPublicIP(ServerBrowser sb);
unsigned int ServerBrowserGetMyPublicIPAddr(ServerBrowser sb);
SBError ServerBrowserSendNatNegotiateCookieToServer(ServerBrowser sb, const gsi_char * ip, unsigned short port, int cookie);
SBError ServerBrowserSendMessageToServer(ServerBrowser sb, const gsi_char * ip, unsigned short port, const char * data, int len);
void ServerBrowserSort(ServerBrowser sb, SBBool ascending, gsi_char * sortkey, SBCompareMode comparemode);
void ServerBrowserLANSetLocalAddr(ServerBrowser sb, const char * theAddr);
SBBool SBServerHasPrivateAddress(SBServer server);
SBBool SBServerDirectConnect(SBServer server);
int SBServerGetPing(SBServer server);
char * SBServerGetPublicAddress(SBServer server);
char * SBServerGetPrivateAddress(SBServer server);
unsigned int SBServerGetPublicInetAddress(SBServer server);
unsigned int SBServerGetPrivateInetAddress(SBServer server);
unsigned short SBServerGetPublicQueryPort(SBServer server);
unsigned short SBServerGetPrivateQueryPort(SBServer server);
SBBool SBServerHasBasicKeys(SBServer server);
SBBool SBServerHasFullKeys(SBServer server);
SBBool SBServerHasValidPing(SBServer server);
const gsi_char * SBServerGetStringValue(SBServer server, const gsi_char * keyname, const gsi_char * def);
int SBServerGetIntValue(SBServer server, const gsi_char * key, int idefault);
double SBServerGetFloatValue(SBServer server, const gsi_char * key, double fdefault);
SBBool SBServerGetBoolValue(SBServer server, const gsi_char * key, SBBool bdefault);
const gsi_char * SBServerGetPlayerStringValue(SBServer server, int playernum, const gsi_char * key, const gsi_char * sdefault);
int SBServerGetPlayerIntValue(SBServer server, int playernum, const gsi_char * key, int idefault);
double SBServerGetPlayerFloatValue(SBServer server, int playernum, const gsi_char * key, double fdefault);
const gsi_char * SBServerGetTeamStringValue(SBServer server, int teamnum, const gsi_char * key, const gsi_char * sdefault);
int SBServerGetTeamIntValue(SBServer server, int teamnum, const gsi_char * key, int idefault);
double SBServerGetTeamFloatValue(SBServer server, int teamnum, const gsi_char * key, double fdefault);
void SBServerEnumKeys(SBServer server, SBServerKeyEnumFn KeyFn, void * instance);

#ifdef __cplusplus
}
#endif

#endif
