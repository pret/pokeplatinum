#ifndef _CHATASCII_H_
#define _CHATASCII_H_

#include "chat.h"

#ifdef __cplusplus
extern "C" {
#endif

CHAT chatConnectA(const char * serverAddress, int port, const char * nick, const char * user, const char * name, chatGlobalCallbacks * callbacks, chatNickErrorCallback nickErrorCallback, chatConnectCallback connectCallback, void * param, CHATBool blocking);
CHAT chatConnectSpecialA(const char * serverAddress, int port, const char * nick, const char * name, chatGlobalCallbacks * callbacks, chatNickErrorCallback nickErrorCallback, chatFillInUserCallback fillInUserCallback, chatConnectCallback connectCallback, void * param, CHATBool blocking);
CHAT chatConnectSecureA(const char * serverAddress, int port, const char * nick, const char * name, const char * gamename, const char * secretKey, chatGlobalCallbacks * callbacks, chatNickErrorCallback nickErrorCallback, chatFillInUserCallback fillInUserCallback, chatConnectCallback connectCallback, void * param, CHATBool blocking);
CHAT chatConnectLoginA(const char * serverAddress, int port, int namespaceID, const char * email, const char * profilenick, const char * uniquenick, const char * password, const char * name, const char * gamename, const char * secretKey, chatGlobalCallbacks * callbacks, chatNickErrorCallback nickErrorCallback, chatFillInUserCallback fillInUserCallback, chatConnectCallback connectCallback, void * param, CHATBool blocking);
CHAT chatConnectPreAuthA(const char * serverAddress, int port, const char * authtoken, const char * partnerchallenge, const char * name, const char * gamename, const char * secretKey, chatGlobalCallbacks * callbacks, chatNickErrorCallback nickErrorCallback, chatFillInUserCallback fillInUserCallback, chatConnectCallback connectCallback, void * param, CHATBool blocking);
void chatRetryWithNickA(CHAT chat, const char * nick);
void chatRegisterUniqueNickA(CHAT chat, int namespaceID, const char * uniquenick, const char * cdkey);
void chatSendRawA(CHAT chat, const char * command);
void chatChangeNickA(CHAT chat, const char * newNick, chatChangeNickCallback callback, void * param, CHATBool blocking);
const char * chatGetNickA(CHAT chat);
void chatFixNickA(char * newNick, const char * oldNick);
const char * chatTranslateNickA(char * nick, const char * extension);
void chatAuthenticateCDKeyA(CHAT chat, const char * cdkey, chatAuthenticateCDKeyCallback callback, void * param, CHATBool blocking);
void chatEnumChannelsA(CHAT chat, const char * filter, chatEnumChannelsCallbackEach callbackEach, chatEnumChannelsCallbackAll callbackAll, void * param, CHATBool blocking);
void chatEnterChannelA(CHAT chat, const char * channel, const char * password, chatChannelCallbacks * callbacks, chatEnterChannelCallback callback, void * param, CHATBool blocking);
void chatLeaveChannelA(CHAT chat, const char * channel, const char * reason);
void chatSendChannelMessageA(CHAT chat, const char * channel, const char * message, int type);
void chatSetChannelTopicA(CHAT chat, const char * channel, const char * topic);
void chatGetChannelTopicA(CHAT chat, const char * channel, chatGetChannelTopicCallback callback, void * param, CHATBool blocking);
void chatSetChannelModeA(CHAT chat, const char * channel, CHATChannelMode * mode);
void chatGetChannelModeA(CHAT chat, const char * channel, chatGetChannelModeCallback callback, void * param, CHATBool blocking);
void chatSetChannelPasswordA(CHAT chat, const char * channel, CHATBool enable, const char * password);
void chatGetChannelPasswordA(CHAT chat, const char * channel, chatGetChannelPasswordCallback callback, void * param, CHATBool blocking);
void chatSetChannelLimitA(CHAT chat, const char * channel, int limit);
void chatEnumChannelBansA(CHAT chat, const char * channel, chatEnumChannelBansCallback callback, void * param, CHATBool blocking);
void chatAddChannelBanA(CHAT chat, const char * channel, const char * ban);
void chatRemoveChannelBanA(CHAT chat, const char * channel, const char * ban);
void chatSetChannelGroupA(CHAT chat, const char * channel, const char * group);
int chatGetChannelNumUsersA(CHAT chat, const char * channel);
CHATBool chatInChannelA(CHAT chat, const char * channel);
void chatEnumUsersA(CHAT chat, const char * channel, chatEnumUsersCallback callback, void * param, CHATBool blocking);
void chatSendUserMessageA(CHAT chat, const char * user, const char * message, int type);
void chatGetUserInfoA(CHAT chat, const char * user, chatGetUserInfoCallback callback, void * param, CHATBool blocking);
void chatGetBasicUserInfoA(CHAT chat, const char * user, chatGetBasicUserInfoCallback callback, void * param, CHATBool blocking);
CHATBool chatGetBasicUserInfoNoWaitA(CHAT chat, const char * nick, const char ** user, const char ** address);
void chatGetChannelBasicUserInfoA(CHAT chat, const char * channel, chatGetChannelBasicUserInfoCallback callback, void * param, CHATBool blocking);
void chatInviteUserA(CHAT chat, const char * channel, const char * user);
void chatKickUserA(CHAT chat, const char * channel, const char * user, const char * reason);
void chatBanUserA(CHAT chat, const char * channel, const char * user);
void chatSetUserModeA(CHAT chat, const char * channel, const char * user, int mode);
void chatGetUserModeA(CHAT chat, const char * channel, const char * user, chatGetUserModeCallback callback, void * param, CHATBool blocking);
CHATBool chatGetUserModeNoWaitA(CHAT chat, const char * channel, const char * user, int * mode);
void chatSetGlobalKeysA(CHAT chat, int num, const char ** keys, const char ** values);
void chatGetGlobalKeysA(CHAT chat, const char * target, int num, const char ** keys, chatGetGlobalKeysCallback callback, void * param, CHATBool blocking);
void chatSetChannelKeysA(CHAT chat, const char * channel, const char * user, int num, const char ** keys, const char ** values);
void chatGetChannelKeysA(CHAT chat, const char * channel, const char * user, int num, const char ** keys, chatGetChannelKeysCallback callback, void * param, CHATBool blocking);
CHATBool chatGetBasicUserInfoNoWaitA(CHAT chat, const char * nick, const char ** user, const char ** address);

#ifdef __cplusplus
}
#endif

#endif
