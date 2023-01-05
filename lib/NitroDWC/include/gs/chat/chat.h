#ifndef _CHAT_H_
#define _CHAT_H_

#include <gs/nonport.h>

#ifdef __cplusplus
extern "C" {
#endif

#define CHAT_MESSAGE 0
#define CHAT_ACTION 1
#define CHAT_NOTICE 2
#define CHAT_UTM 3
#define CHAT_ATM 4
#define CHAT_NORMAL 0
#define CHAT_VOICE 1
#define CHAT_OP 2
#define CHAT_LEFT 0
#define CHAT_QUIT 1
#define CHAT_KICKED 2
#define CHAT_KILLED 3
#define CHAT_NICK_OK 0
#define CHAT_IN_USE 1
#define CHAT_INVALID 2
#define CHAT_UNIQUENICK_EXPIRED 3
#define CHAT_NO_UNIQUENICK 4
#define CHAT_INVALID_UNIQUENICK 5
#define CHAT_NICK_TOO_LONG 6
#define CHAT_DISCONNECTED 0
#define CHAT_NICK_ERROR 1
#define CHAT_LOGIN_FAILED 2
#ifndef GSI_UNICODE
#define chatConnect chatConnectA
#define chatConnectSpecial chatConnectSpecialA
#define chatConnectSecure chatConnectSecureA
#define chatConnectLogin chatConnectLoginA
#define chatConnectPreAuth chatConnectPreAuthA
#define chatRetryWithNick chatRetryWithNickA
#define chatRegisterUniqueNick chatRegisterUniqueNickA
#define chatSendRaw chatSendRawA
#define chatChangeNick chatChangeNickA
#define chatFixNick chatFixNickA
#define chatTranslateNick chatTranslateNickA
#define chatAuthenticateCDKey chatAuthenticateCDKeyA
#define chatEnumChannels chatEnumChannelsA
#define chatEnterChannel chatEnterChannelA
#define chatLeaveChannel chatLeaveChannelA
#define chatSendChannelMessage chatSendChannelMessageA
#define chatSetChannelTopic chatSetChannelTopicA
#define chatGetChannelTopic chatGetChannelTopicA
#define chatSetChannelMode chatSetChannelModeA
#define chatGetChannelMode chatGetChannelModeA
#define chatSetChannelPassword chatSetChannelPasswordA
#define chatGetChannelPassword chatGetChannelPasswordA
#define chatSetChannelLimit chatSetChannelLimitA
#define chatEnumChannelBans chatEnumChannelBansA
#define chatAddChannelBan chatAddChannelBanA
#define chatRemoveChannelBan chatRemoveChannelBanA
#define chatSetChannelGroup chatSetChannelGroupA
#define chatGetChannelNumUsers chatGetChannelNumUsersA
#define chatInChannel chatInChannelA
#define chatEnumUsers chatEnumUsersA
#define chatSendUserMessage chatSendUserMessageA
#define chatGetUserInfo chatGetUserInfoA
#define chatGetBasicUserInfo chatGetBasicUserInfoA
#define chatGetBasicUserInfoNoWait chatGetBasicUserInfoNoWaitA
#define chatGetChannelBasicUserInfo chatGetChannelBasicUserInfoA
#define chatInviteUser chatInviteUserA
#define chatKickUser chatKickUserA
#define chatBanUser chatBanUserA
#define chatSetUserMode chatSetUserModeA
#define chatGetUserMode chatGetUserModeA
#define chatGetUserModeNoWait chatGetUserModeNoWaitA
#define chatSetGlobalKeys chatSetGlobalKeysA
#define chatSetChannelKeys chatSetChannelKeysA
#define chatGetGlobalKeys chatGetGlobalKeysA
#define chatGetChannelKeys chatGetChannelKeysA
#define chatGetNick chatGetNickA
#else
#define chatConnect chatConnectW
#define chatConnectSpecial chatConnectSpecialW
#define chatConnectSecure chatConnectSecureW
#define chatConnectLogin chatConnectLoginW
#define chatConnectPreAuth chatConnectPreAuthW
#define chatRetryWithNick chatRetryWithNickW
#define chatRegisterUniqueNick chatRegisterUniqueNickW
#define chatSendRaw chatSendRawW
#define chatChangeNick chatChangeNickW
#define chatFixNick chatFixNickW
#define chatTranslateNick chatTranslateNickW
#define chatAuthenticateCDKey chatAuthenticateCDKeyW
#define chatEnumChannels chatEnumChannelsW
#define chatEnterChannel chatEnterChannelW
#define chatLeaveChannel chatLeaveChannelW
#define chatSendChannelMessage chatSendChannelMessageW
#define chatSetChannelTopic chatSetChannelTopicW
#define chatGetChannelTopic chatGetChannelTopicW
#define chatSetChannelMode chatSetChannelModeW
#define chatGetChannelMode chatGetChannelModeW
#define chatSetChannelPassword chatSetChannelPasswordW
#define chatGetChannelPassword chatGetChannelPasswordW
#define chatSetChannelLimit chatSetChannelLimitW
#define chatEnumChannelBans chatEnumChannelBansW
#define chatAddChannelBan chatAddChannelBanW
#define chatRemoveChannelBan chatRemoveChannelBanW
#define chatSetChannelGroup chatSetChannelGroupW
#define chatGetChannelNumUsers chatGetChannelNumUsersW
#define chatInChannel chatInChannelW
#define chatEnumUsers chatEnumUsersW
#define chatSendUserMessage chatSendUserMessageW
#define chatGetUserInfo chatGetUserInfoW
#define chatGetBasicUserInfo chatGetBasicUserInfoW
#define chatGetBasicUserInfoNoWait chatGetBasicUserInfoNoWaitW
#define chatGetChannelBasicUserInfo chatGetChannelBasicUserInfoW
#define chatInviteUser chatInviteUserW
#define chatKickUser chatKickUserW
#define chatBanUser chatBanUserW
#define chatSetUserMode chatSetUserModeW
#define chatGetUserMode chatGetUserModeW
#define chatGetUserModeNoWait chatGetUserModeNoWaitW
#define chatSetGlobalKeys chatSetGlobalKeysW
#define chatSetChannelKeys chatSetChannelKeysW
#define chatGetGlobalKeys chatGetGlobalKeysW
#define chatGetChannelKeys chatGetChannelKeysW
#define chatGetNick chatGetNickW
#endif

typedef void * CHAT;

typedef enum {
    CHATFalse,
    CHATTrue
} CHATBool;

typedef struct CHATChannelMode {
    CHATBool InviteOnly;
    CHATBool Private;
    CHATBool Secret;
    CHATBool Moderated;
    CHATBool NoExternalMessages;
    CHATBool OnlyOpsChangeTopic;
    CHATBool OpsObeyChannelLimit;
    int Limit;
} CHATChannelMode;

typedef enum {
    CHATEnterSuccess,
    CHATBadChannelName,
    CHATChannelIsFull,
    CHATInviteOnlyChannel,
    CHATBannedFromChannel,
    CHATBadChannelPassword,
    CHATTooManyChannels,
    CHATEnterTimedOut,
    CHATBadChannelMask
} CHATEnterResult;

typedef void (* chatRaw)(CHAT chat, const gsi_char * raw, void * param);
typedef void (* chatDisconnected)(CHAT chat, const gsi_char * reason, void * param);
typedef void (* chatPrivateMessage)(CHAT chat, const gsi_char * user, const gsi_char * message, int type, void * param);
typedef void (* chatInvited)(CHAT chat, const gsi_char * channel, const gsi_char * user, void * param);
typedef void (* chatChannelMessage)(CHAT chat, const gsi_char * channel, const gsi_char * user, const gsi_char * message, int type, void * param);
typedef void (* chatKicked)(CHAT chat, const gsi_char * channel, const gsi_char * user, const gsi_char * reason, void * param);
typedef void (* chatUserJoined)(CHAT chat, const gsi_char * channel, const gsi_char * user, int mode, void * param);
typedef void (* chatUserParted)(CHAT chat, const gsi_char * channel, const gsi_char * user, int why, const gsi_char * reason, const gsi_char * kicker, void * param);
typedef void (* chatUserChangedNick)(CHAT chat, const gsi_char * channel, const gsi_char * oldNick, const gsi_char * newNick, void * param);
typedef void (* chatTopicChanged)(CHAT chat, const gsi_char * channel, const gsi_char * topic, void * param);
typedef void (* chatChannelModeChanged)(CHAT chat, const gsi_char * channel, CHATChannelMode * mode, void * param);
typedef void (* chatUserModeChanged)(CHAT chat, const gsi_char * channel, const gsi_char * user, int mode, void * param);
typedef void (* chatUserListUpdated)(CHAT chat, const gsi_char * channel, void * param);
typedef void (* chatNewUserList)(CHAT chat, const gsi_char * channel, int num, const gsi_char ** users, int * modes, void * param);
typedef void (* chatBroadcastKeyChanged)(CHAT chat, const gsi_char * channel, const gsi_char * user, const gsi_char * key, const gsi_char * value, void * param);
typedef void (* chatChangeNickCallback)(CHAT chat, CHATBool success, const gsi_char * oldNick, const gsi_char * newNick, void * param);
typedef void (* chatConnectCallback)(CHAT chat, CHATBool success, int failureReason, void * param);
typedef void (* chatNickErrorCallback)(CHAT chat, int type, const gsi_char * nick, int numSuggestedNicks, const gsi_char ** suggestedNicks, void * param);
typedef void (* chatFillInUserCallback)(CHAT chat, unsigned int IP, gsi_char user[128], void * param);
typedef void (* chatAuthenticateCDKeyCallback)(CHAT chat, int result, const gsi_char * message, void * param);
typedef void (* chatEnumChannelsCallbackEach)(CHAT chat, CHATBool success, int index, const gsi_char * channel, const gsi_char * topic, int numUsers, void * param);
typedef void (* chatEnumChannelsCallbackAll)(CHAT chat, CHATBool success, int numChannels, const gsi_char ** channels, const gsi_char ** topics, int * numUsers, void * param);
typedef void (* chatEnumJoinedChannelsCallback)(CHAT chat, int index, const gsi_char * channel, void * param);
typedef void (* chatEnterChannelCallback)(CHAT chat, CHATBool success, CHATEnterResult result, const gsi_char * channel, void * param);
typedef void (* chatGetChannelTopicCallback)(CHAT chat, CHATBool success, const gsi_char * channel, const gsi_char * topic, void * param);
typedef void (* chatGetChannelModeCallback)(CHAT chat, CHATBool success, const gsi_char * channel, CHATChannelMode * mode, void * param);
typedef void (* chatGetChannelPasswordCallback)(CHAT chat, CHATBool success, const gsi_char * channel, CHATBool enabled, const gsi_char * password, void * param);
typedef void (* chatEnumChannelBansCallback)(CHAT chat, CHATBool success, const gsi_char * channel, int numBans, const gsi_char ** bans, void * param);
typedef void (* chatEnumUsersCallback)(CHAT chat, CHATBool success, const gsi_char * channel, int numUsers, const gsi_char ** users, int * modes, void * param);
typedef void (* chatGetUserInfoCallback)(CHAT chat, CHATBool success, const gsi_char * nick, const gsi_char * user, const gsi_char * name, const gsi_char * address, int numChannels, const gsi_char ** channels, void * param);
typedef void (* chatGetBasicUserInfoCallback)(CHAT chat, CHATBool success, const gsi_char * nick, const gsi_char * user, const gsi_char * address, void * param);
typedef void (* chatGetChannelBasicUserInfoCallback)(CHAT chat, CHATBool success, const gsi_char * channel, const gsi_char * nick, const gsi_char * user, const gsi_char * address, void * param);
typedef void (* chatGetUserModeCallback)(CHAT chat, CHATBool success, const gsi_char * channel, const gsi_char * user, int mode, void * param);
typedef void (* chatGetGlobalKeysCallback)(CHAT chat, CHATBool success, const gsi_char * user, int num, const gsi_char ** keys, const gsi_char ** values, void * param);
typedef void (* chatGetChannelKeysCallback)(CHAT chat, CHATBool success, const gsi_char * channel, const gsi_char * user, int num, const gsi_char ** keys, const gsi_char ** values, void * param);

typedef struct chatGlobalCallbacks {
    chatRaw raw;
    chatDisconnected disconnected;
    chatPrivateMessage privateMessage;
    chatInvited invited;
    void * param;
} chatGlobalCallbacks;

typedef struct chatChannelCallbacks {
    chatChannelMessage channelMessage;
    chatKicked kicked;
    chatUserJoined userJoined;
    chatUserParted userParted;
    chatUserChangedNick userChangedNick;
    chatTopicChanged topicChanged;
    chatChannelModeChanged channelModeChanged;
    chatUserModeChanged userModeChanged;
    chatUserListUpdated userListUpdated;
    chatNewUserList newUserList;
    chatBroadcastKeyChanged broadcastKeyChanged;
    void * param;
} chatChannelCallbacks;

CHAT chatConnect(const gsi_char * serverAddress, int port, const gsi_char * nick, const gsi_char * user, const gsi_char * name, chatGlobalCallbacks * callbacks, chatNickErrorCallback nickErrorCallback, chatConnectCallback connectCallback, void * param, CHATBool blocking);
CHAT chatConnectSpecial(const gsi_char * serverAddress, int port, const gsi_char * nick, const gsi_char * name, chatGlobalCallbacks * callbacks, chatNickErrorCallback nickErrorCallback, chatFillInUserCallback fillInUserCallback, chatConnectCallback connectCallback, void * param, CHATBool blocking);
CHAT chatConnectSecure(const gsi_char * serverAddress, int port, const gsi_char * nick, const gsi_char * name, const gsi_char * gamename, const gsi_char * secretKey, chatGlobalCallbacks * callbacks, chatNickErrorCallback nickErrorCallback, chatFillInUserCallback fillInUserCallback, chatConnectCallback connectCallback, void * param, CHATBool blocking);
CHAT chatConnectLogin(const gsi_char * serverAddress, int port, int namespaceID, const gsi_char * email, const gsi_char * profilenick, const gsi_char * uniquenick, const gsi_char * password, const gsi_char * name, const gsi_char * gamename, const gsi_char * secretKey, chatGlobalCallbacks * callbacks, chatNickErrorCallback nickErrorCallback, chatFillInUserCallback fillInUserCallback, chatConnectCallback connectCallback, void * param, CHATBool blocking);
CHAT chatConnectPreAuth(const gsi_char * serverAddress, int port, const gsi_char * authtoken, const gsi_char * partnerchallenge, const gsi_char * name, const gsi_char * gamename, const gsi_char * secretKey, chatGlobalCallbacks * callbacks, chatNickErrorCallback nickErrorCallback, chatFillInUserCallback fillInUserCallback, chatConnectCallback connectCallback, void * param, CHATBool blocking);
void chatRetryWithNick(CHAT chat, const gsi_char * nick);
void chatRegisterUniqueNick(CHAT chat, int namespaceID, const gsi_char * uniquenick, const gsi_char * cdkey);
void chatDisconnect(CHAT chat);
void chatThink(CHAT chat);
void chatSendRaw(CHAT chat, const gsi_char * command);
void chatChangeNick(CHAT chat, const gsi_char * newNick, chatChangeNickCallback callback, void * param, CHATBool blocking);
const gsi_char * chatGetNick(CHAT chat);
void chatFixNick(gsi_char * newNick, const gsi_char * oldNick);
const gsi_char * chatTranslateNick(gsi_char * nick, const gsi_char * extension);
int chatGetUserID(CHAT chat);
int chatGetProfileID(CHAT chat);
void chatSetQuietMode(CHAT chat, CHATBool quiet);
void chatAuthenticateCDKey(CHAT chat, const gsi_char * cdkey, chatAuthenticateCDKeyCallback callback, void * param, CHATBool blocking);
void chatEnumChannels(CHAT chat, const gsi_char * filter, chatEnumChannelsCallbackEach callbackEach, chatEnumChannelsCallbackAll callbackAll, void * param, CHATBool blocking);
void chatEnumJoinedChannels(CHAT chat, chatEnumJoinedChannelsCallback callback, void * param);
void chatEnterChannel(CHAT chat, const gsi_char * channel, const gsi_char * password, chatChannelCallbacks * callbacks, chatEnterChannelCallback callback, void * param, CHATBool blocking);
void chatLeaveChannel(CHAT chat, const gsi_char * channel, const gsi_char * reason);
void chatSendChannelMessage(CHAT chat, const gsi_char * channel, const gsi_char * message, int type);
void chatSetChannelTopic(CHAT chat, const gsi_char * channel, const gsi_char * topic);
void chatGetChannelTopic(CHAT chat, const gsi_char * channel, chatGetChannelTopicCallback callback, void * param, CHATBool blocking);
void chatSetChannelMode(CHAT chat, const gsi_char * channel, CHATChannelMode * mode);
void chatGetChannelMode(CHAT chat, const gsi_char * channel, chatGetChannelModeCallback callback, void * param, CHATBool blocking);
void chatSetChannelPassword(CHAT chat, const gsi_char * channel, CHATBool enable, const gsi_char * password);
void chatGetChannelPassword(CHAT chat, const gsi_char * channel, chatGetChannelPasswordCallback callback, void * param, CHATBool blocking);
void chatSetChannelLimit(CHAT chat, const gsi_char * channel, int limit);
void chatEnumChannelBans(CHAT chat, const gsi_char * channel, chatEnumChannelBansCallback callback, void * param, CHATBool blocking);
void chatAddChannelBan(CHAT chat, const gsi_char * channel, const gsi_char * ban);
void chatRemoveChannelBan(CHAT chat, const gsi_char * channel, const gsi_char * ban);
void chatSetChannelGroup(CHAT chat, const gsi_char * channel, const gsi_char * group);
int chatGetChannelNumUsers(CHAT chat, const gsi_char * channel);
CHATBool chatInChannel(CHAT chat, const gsi_char * channel);
void chatEnumUsers(CHAT chat, const gsi_char * channel, chatEnumUsersCallback callback, void * param, CHATBool blocking);
void chatSendUserMessage(CHAT chat, const gsi_char * user, const gsi_char * message, int type);
void chatGetUserInfo(CHAT chat, const gsi_char * user, chatGetUserInfoCallback callback, void * param, CHATBool blocking);
void chatGetBasicUserInfo(CHAT chat, const gsi_char * user, chatGetBasicUserInfoCallback callback, void * param, CHATBool blocking);
CHATBool chatGetBasicUserInfoNoWait(CHAT chat, const gsi_char * nick, const gsi_char ** user, const gsi_char ** address);
void chatGetChannelBasicUserInfo(CHAT chat, const gsi_char * channel, chatGetChannelBasicUserInfoCallback callback, void * param, CHATBool blocking);
void chatInviteUser(CHAT chat, const gsi_char * channel, const gsi_char * user);
void chatKickUser(CHAT chat, const gsi_char * channel, const gsi_char * user, const gsi_char * reason);
void chatBanUser(CHAT chat, const gsi_char * channel, const gsi_char * user);
void chatSetUserMode(CHAT chat, const gsi_char * channel, const gsi_char * user, int mode);
void chatGetUserMode(CHAT chat, const gsi_char * channel, const gsi_char * user, chatGetUserModeCallback callback, void * param, CHATBool blocking);
CHATBool chatGetUserModeNoWait(CHAT chat, const gsi_char * channel, const gsi_char * user, int * mode);
void chatSetGlobalKeys(CHAT chat, int num, const gsi_char ** keys, const gsi_char ** values);
void chatGetGlobalKeys(CHAT chat, const gsi_char * target, int num, const gsi_char ** keys, chatGetGlobalKeysCallback callback, void * param, CHATBool blocking);
void chatSetChannelKeys(CHAT chat, const gsi_char * channel, const gsi_char * user, int num, const gsi_char ** keys, const gsi_char ** values);
void chatGetChannelKeys(CHAT chat, const gsi_char * channel, const gsi_char * user, int num, const gsi_char ** keys, chatGetChannelKeysCallback callback, void * param, CHATBool blocking);
#ifdef GSI_UNICODE
CHATBool chatGetBasicUserInfoNoWaitA(CHAT chat, const char * nick, const char ** user, const char ** address);
#endif

#ifdef __cplusplus
}
#endif

#endif
