#ifndef DWCi_LOBBY_H_
#define DWCi_LOBBY_H_

#include <lobby/dwc_lobby.h>

#ifdef __cplusplus
extern "C" {
#endif

#ifdef WIN32
#pragma pack(push, 4)
#endif

#define DWCi_LOBBY_INVALID_CHANNEL_ID 0xffffffff
#define DWCi_MAX_CHAT_NICK_SIZE 20
#define DWCi_LOBBY_CONNECTINGWAIT_TIME 60
#define DWCi_LOBBY_CHANNEL_NAME_SEPARATOR "!"
#define DWCi_LOBBY_ERROR_CODE_BASE 42000
#define DWCi_LOBBY_SERVER_DOMAIN "peerchat.gs.nintendowifi.net"

typedef enum DWCi_LOBBY_STATE {
    DWCi_LOBBY_STATE_NOTINITIALIZED,
    DWCi_LOBBY_STATE_CONNECTING,
    DWCi_LOBBY_STATE_CONNECTINGWAIT,
    DWCi_LOBBY_STATE_CONNECTED,
    DWCi_LOBBY_STATE_CLOSING,
    DWCi_LOBBY_STATE_ERROR
} DWCi_LOBBY_STATE;

typedef enum DWCi_LOBBY_RESULT {
    DWCi_LOBBY_RESULT_SUCCESS,
    DWCi_LOBBY_RESULT_ERROR_ALLOC,
    DWCi_LOBBY_RESULT_ERROR_SESSION,
    DWCi_LOBBY_RESULT_ERROR_PARAM,
    DWCi_LOBBY_RESULT_ERROR_STATE,
    DWCi_LOBBY_RESULT_ERROR_CHANNEL,
    DWCi_LOBBY_RESULT_ERROR_NODATA,
    DWCi_LOBBY_RESULT_ERROR_CONDITION,
    DWCi_LOBBY_RESULT_MAX
} DWCi_LOBBY_RESULT;

typedef enum DWCi_LOBBY_ERROR {
    DWCi_LOBBY_ERROR_NONE,
    DWCi_LOBBY_ERROR_UNKNOWN,
    DWCi_LOBBY_ERROR_ALLOC,
    DWCi_LOBBY_ERROR_SESSION,
    DWCi_LOBBY_ERROR_MAX
} DWCi_LOBBY_ERROR;

typedef enum {
    DWCi_LOBBY_ENTER_RESULT_SUCCESS,
    DWCi_LOBBY_ENTER_RESULT_BAD_CHANNEL_NAME,
    DWCi_LOBBY_ENTER_RESULT_FULL,
    DWCi_LOBBY_ENTER_RESULT_INVITE_ONLY,
    DWCi_LOBBY_ENTER_RESULT_BANNED,
    DWCi_LOBBY_ENTER_RESULT_BAD_PASSWORD,
    DWCi_LOBBY_ENTER_RESULT_TOO_MANY_CHANNELS,
    DWCi_LOBBY_ENTER_RESULT_TIME_OUT,
    DWCi_LOBBY_ENTER_RESULT_MAX
} DWCi_LOBBY_ENTER_RESULT;

typedef struct DWCi_LobbyChannelMode {
    BOOL inviteOnly;
    BOOL privateMode;
    BOOL secretMode;
    BOOL moderated;
    BOOL noExternalMessages;
    BOOL onlyOpsChangeTopic;
    BOOL opsObeyChannelLimit;
    s32 limit;
} DWCi_LobbyChannelMode;

typedef void (* DWCi_LobbyJoinChannelCallback)(BOOL success, DWCi_LOBBY_ENTER_RESULT result, const char * channelName, void * param);
typedef void (* DWCi_LobbyPlayerConnectedCallback)(const char * channelName, s32 userId, void * param);
typedef void (* DWCi_LobbyPlayerDisconnectedCallback)(const char * channelName, s32 userId, void * param);
typedef void (* DWCi_LobbyChannelMassageReceivedCallback)(const char * channelName, s32 userId, const char * message, void * param);
typedef void (* DWCi_LobbyUserMassageReceivedCallback)(s32 userId, const char * message, void * param);
typedef void (* DWCi_LobbyGetChannelDataCallback)(BOOL success, const char * channelName, s32 userId, const char * key, const char * value, void * param);
typedef void (* DWCi_LobbyBroadcastDataCallback)(const char * channelName, s32 userId, const char * key, const char * value, void * param);
typedef void (* DWCi_LobbyEnumChannelsCallback)(BOOL success, s32 numChannels, const char ** channels, const char ** topics, const s32 * numUsers, void * param);
typedef void (* DWCi_LobbyEnumUsersCallback)(BOOL success, const char * channelName, s32 numUsers, const s32 * userIds, void * param);
typedef void (* DWCi_LobbyGetChannelModeCallback)(BOOL success, const char * channelName, const DWCi_LobbyChannelMode * mode, void * param);
typedef void (* DWCi_LobbyTopicChangedCallback)(const char * channelName, const char * topic, void * param);
typedef void (* DWCi_LobbyExcessFloodCallback)(u32 floodWeight, void * param);

typedef struct DWCi_LobbyGlobalCallbacks {
    DWCi_LobbyUserMassageReceivedCallback lobbyUserMassageReceivedCallback;
    DWCi_LobbyExcessFloodCallback lobbyExcessFloodCallback;
    void * param;
} DWCi_LobbyGlobalCallbacks;

typedef struct DWCi_LobbyChannelCallbacks {
    DWCi_LobbyPlayerConnectedCallback lobbyPlayerConnectedCallback;
    DWCi_LobbyPlayerDisconnectedCallback lobbyPlayerDisconnectedCallback;
    DWCi_LobbyChannelMassageReceivedCallback lobbyChannelMassageReceivedCallback;
    DWCi_LobbyBroadcastDataCallback lobbyBroadcastDataCallback;
    DWCi_LobbyTopicChangedCallback lobbyTopicChangedCallback;
    void * param;
} DWCi_LobbyChannelCallbacks;

DWCi_LOBBY_RESULT DWCi_LobbyInitializeAsync(const char * gameName, const char * secretKey, DWC_LOBBY_CHANNEL_PREFIX prefix, const DWCi_LobbyGlobalCallbacks * globalCallbacks, const DWCUserData * userdata);
DWCi_LOBBY_RESULT DWCi_LobbyInitializePidAsync(const char * gameName, const char * secretKey, DWC_LOBBY_CHANNEL_PREFIX prefix, const DWCi_LobbyGlobalCallbacks * globalCallbacks, s32 pid);
DWCi_LOBBY_RESULT DWCi_LobbyShutdownAsync();
DWCi_LOBBY_STATE DWCi_LobbyProcess();
DWCi_LOBBY_ERROR DWCi_LobbyGetLastError();
s32 DWCi_LobbyToErrorCode(DWCi_LOBBY_ERROR err);
s32 DWCi_LobbyGetMyUserId();
BOOL DWCi_LobbyInChannel(const char * channelName);
DWCi_LOBBY_RESULT DWCi_LobbyJoinChannelAsync(const char * channelName, const char * password, const DWCi_LobbyChannelCallbacks * channelCallbacks, DWCi_LobbyJoinChannelCallback callback, void * param);
DWCi_LOBBY_RESULT DWCi_LobbyJoinChannelLimitAsync(const char * channelName, const char * password, s32 limit, const DWCi_LobbyChannelCallbacks * channelCallbacks, DWCi_LobbyJoinChannelCallback callback, void * param);
DWCi_LOBBY_RESULT DWCi_LobbyLeaveChannel(const char * channelName);
DWCi_LOBBY_RESULT DWCi_LobbySendChannelMessage(const char * channelName, const char * message);
DWCi_LOBBY_RESULT DWCi_LobbySendUserMessage(s32 userId, const char * message);
DWCi_LOBBY_RESULT DWCi_LobbySetChannelData(const char * channelName, s32 userId, const char * key, const char * value);
DWCi_LOBBY_RESULT DWCi_LobbyGetChannelDataAsync(const char * channelName, s32 userId, const char * key, DWCi_LobbyGetChannelDataCallback callback, void * param);
DWCi_LOBBY_RESULT DWCi_LobbyEnumChannelsAsync(const char * filter, DWCi_LobbyEnumChannelsCallback callback, void * param);
DWCi_LOBBY_RESULT DWCi_LobbyEnumUsersAsync(const char * channelName, DWCi_LobbyEnumUsersCallback callback, void * param);
DWCi_LOBBY_RESULT DWCi_LobbyEnumUsers(const char * channelName, s32 * userIds, u32 * userIdNum);
DWCi_LOBBY_RESULT DWCi_LobbySetChannelMode(const char * channelName, const DWCi_LobbyChannelMode * mode);
DWCi_LOBBY_RESULT DWCi_LobbyGetChannelModeAsync(const char * channelName, DWCi_LobbyGetChannelModeCallback callback, void * param);
DWCi_LOBBY_RESULT DWCi_LobbySetChannelTopic(const char * channelName, const char * topic);
DWCi_LOBBY_RESULT DWCi_LobbySetChannelPassword(const char * channelName, BOOL enable, const char * password);
BOOL ov66_02244758(void * param);

#ifdef WIN32
#pragma pack(pop)
#endif

#ifdef __cplusplus
}
#endif

#endif
