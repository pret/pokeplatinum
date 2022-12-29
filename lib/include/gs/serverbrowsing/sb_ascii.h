#ifndef _SB_ASCII_H
#define _SB_ASCII_H

#ifdef __cplusplus
extern "C" {
#endif

#include <gs/nonport.h>

ServerBrowser ServerBrowserNewA(const char * queryForGamename, const char * queryFromGamename, const char * queryFromKey, int queryFromVersion, int maxConcUpdates, int queryVersion, SBBool lanBrowse, ServerBrowserCallback callback, void * instance);
SBError ServerBrowserUpdateA(ServerBrowser sb, SBBool async, SBBool disconnectOnComplete, const unsigned char * basicFields, int numBasicFields, const char * serverFilter);
SBError ServerBrowserLimitUpdateA(ServerBrowser sb, SBBool async, SBBool disconnectOnComplete, const unsigned char * basicFields, int numBasicFields, const char * serverFilter, int maxServers);
SBError ServerBrowserAuxUpdateIPA(ServerBrowser sb, const char * ip, unsigned short port, SBBool viaMaster, SBBool async, SBBool fullUpdate);
void ServerBrowserRemoveIPA(ServerBrowser sb, const char * ip, unsigned short port);
const char * ServerBrowserErrorDescA(ServerBrowser sb, SBError error);
const char * ServerBrowserListQueryErrorA(ServerBrowser sb);
SBError ServerBrowserSendNatNegotiateCookieToServerA(ServerBrowser sb, const char * ip, unsigned short port, int cookie);
SBError ServerBrowserSendMessageToServerA(ServerBrowser sb, const char * ip, unsigned short port, const char * data, int len);
void ServerBrowserSortA(ServerBrowser sb, SBBool ascending, char * sortkey, SBCompareMode comparemode);
char * SBServerGetPublicAddress(SBServer server);
char * SBServerGetPrivateAddress(SBServer server);
const char * SBServerGetStringValueA(SBServer server, const char * keyname, const char * def);
int SBServerGetIntValueA(SBServer server, const char * key, int idefault);
double SBServerGetFloatValueA(SBServer server, const char * key, double fdefault);
SBBool SBServerGetBoolValueA(SBServer server, const char * key, SBBool bdefault);
const char * SBServerGetPlayerStringValueA(SBServer server, int playernum, const char * key, const char * sdefault);
int SBServerGetPlayerIntValueA(SBServer server, int playernum, const char * key, int idefault);
double SBServerGetPlayerFloatValueA(SBServer server, int playernum, const char * key, double fdefault);
const char * SBServerGetTeamStringValueA(SBServer server, int teamnum, const char * key, const char * sdefault);
int SBServerGetTeamIntValueA(SBServer server, int teamnum, const char * key, int idefault);
double SBServerGetTeamFloatValueA(SBServer server, int teamnum, const char * key, double fdefault);

#ifdef __cplusplus
}
#endif

#endif
