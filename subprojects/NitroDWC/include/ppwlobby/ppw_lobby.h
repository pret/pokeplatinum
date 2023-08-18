#ifndef PPW_LOBBY_H_
#define PPW_LOBBY_H_

#include <lobby/dwc_lobby.h>

#ifdef __cplusplus
extern "C" {
#endif

#ifdef WIN32
#pragma pack(push, 4)
#endif

#define PPW_LOBBY_MAX_STRING_SIZE 400
#define PPW_LOBBY_MAX_BINARY_SIZE 300
#define PPW_LOBBY_MAX_MATCHMAKING_BUF_SIZE 32
#define PPW_LOBBY_MAX_MATCHMAKING_STRING_LENGTH 20
#define PPW_LOBBY_MAX_QUESTION_SENTENCE_LENGTH 110
#define PPW_LOBBY_MAX_ANSWER_LENGTH 18
#define PPW_LOBBY_QUESTIONNAIRE_ANSWER_NUM 3
#define PPW_LOBBY_FREE_QUESTION_START_NO 1000
#define PPW_LOBBY_FREE_QUESTION_NUM 10
#define PPW_LOBBY_INVALID_QUESTION_NO 0xffffffff
#define PPW_LOBBY_ERROR_CODE_BASE 10620
#define PPW_LOBBY_CHANNEL_KEY_SYSTEM "b_lib_u_system"
#define PPW_LOBBY_CHANNEL_KEY_USER "b_lib_u_user"
#define PPW_LOBBY_CHANNEL_KEY_CHANNEL_TIME "b_lib_c_time"
#define PPW_LOBBY_CHANNEL_KEY_CHANNEL_LOBBY "b_lib_c_lobby"
#define PPW_LOBBY_MATCHMAKING_KEY "ppw_lobby"
#define PPW_LOBBY_ENC_REQUEST_VERSION 1
#define PPW_LOBBY_MAX_PLAYER_NUM_MAIN 20
#define PPW_LOBBY_MAX_PLAYER_NUM_FOOT 8
#define PPW_LOBBY_MAX_PLAYER_NUM_CLOCK 4
#define PPW_LOBBY_MAX_PLAYER_NUM_NEWS 4
#define PPW_LOBBY_INVALID_USER_ID DWC_LOBBY_INVALID_USER_ID
#define PPW_LOBBY_INVALID_TIME DWC_LOBBY_INVALID_TIME
#define PPW_LOBBY_CHANNEL_PREFIX_RELEASE DWC_LOBBY_CHANNEL_PREFIX_RELEASE
#define PPW_LOBBY_CHANNEL_PREFIX_DEBUG DWC_LOBBY_CHANNEL_PREFIX_DEBUG
#define PPW_LOBBY_CHANNEL_PREFIX_DEBUG1 DWC_LOBBY_CHANNEL_PREFIX_DEBUG1
#define PPW_LOBBY_CHANNEL_PREFIX_DEBUG2 DWC_LOBBY_CHANNEL_PREFIX_DEBUG2
#define PPW_LOBBY_CHANNEL_PREFIX_DEBUG3 DWC_LOBBY_CHANNEL_PREFIX_DEBUG3
#define PPW_LOBBY_CHANNEL_PREFIX_DEBUG4 DWC_LOBBY_CHANNEL_PREFIX_DEBUG4
#define PPW_LOBBY_CHANNEL_PREFIX_DEBUG5 DWC_LOBBY_CHANNEL_PREFIX_DEBUG5
#define PPW_LOBBY_CHANNEL_PREFIX_DEBUG6 DWC_LOBBY_CHANNEL_PREFIX_DEBUG6
#define PPW_LOBBY_CHANNEL_PREFIX_DEBUG7 DWC_LOBBY_CHANNEL_PREFIX_DEBUG7
#define PPW_LOBBY_CHANNEL_PREFIX_DEBUG8 DWC_LOBBY_CHANNEL_PREFIX_DEBUG8
#define PPW_LOBBY_CHANNEL_PREFIX_DEBUG9 DWC_LOBBY_CHANNEL_PREFIX_DEBUG9
#define PPW_LOBBY_CHANNEL_PREFIX_TEST DWC_LOBBY_CHANNEL_PREFIX_TEST

typedef DWC_LOBBY_CHANNEL_PREFIX PPW_LOBBY_CHANNEL_PREFIX;

typedef enum PPW_LOBBY_STATE {
    PPW_LOBBY_STATE_NOTINITIALIZED,
    PPW_LOBBY_STATE_CONNECTING,
    PPW_LOBBY_STATE_CONNECTED,
    PPW_LOBBY_STATE_DOWNLOAD,
    PPW_LOBBY_STATE_DOWNLOAD_WAIT,
    PPW_LOBBY_STATE_SEARCHINGCHANNEL,
    PPW_LOBBY_STATE_ENTERMAINCHANNEL,
    PPW_LOBBY_STATE_PREPARINGMAINCHANNEL,
    PPW_LOBBY_STATE_READY,
    PPW_LOBBY_STATE_CLOSING,
    PPW_LOBBY_STATE_ERROR
} PPW_LOBBY_STATE;

typedef enum PPW_LOBBY_CHANNEL_STATE {
    PPW_LOBBY_CHANNEL_STATE_NONE,
    PPW_LOBBY_CHANNEL_STATE_UNAVAILABLE,
    PPW_LOBBY_CHANNEL_STATE_AVAILABLE,
    PPW_LOBBY_CHANNEL_STATE_ERROR
} PPW_LOBBY_CHANNEL_STATE;

typedef enum PPW_LOBBY_RESULT {
    PPW_LOBBY_RESULT_SUCCESS,
    PPW_LOBBY_RESULT_ERROR_ALLOC,
    PPW_LOBBY_RESULT_ERROR_SESSION,
    PPW_LOBBY_RESULT_ERROR_PARAM,
    PPW_LOBBY_RESULT_ERROR_STATE,
    PPW_LOBBY_RESULT_ERROR_CHANNEL,
    PPW_LOBBY_RESULT_ERROR_NODATA,
    PPW_LOBBY_RESULT_ERROR_CONDITION,
    PPW_LOBBY_RESULT_MAX
} PPW_LOBBY_RESULT;

typedef enum PPW_LOBBY_CHANNEL_KIND {
    PPW_LOBBY_CHANNEL_KIND_MAIN,
    PPW_LOBBY_CHANNEL_KIND_FOOT1,
    PPW_LOBBY_CHANNEL_KIND_FOOT2,
    PPW_LOBBY_CHANNEL_KIND_CLOCK,
    PPW_LOBBY_CHANNEL_KIND_NEWS,
    PPW_LOBBY_CHANNEL_KIND_INVALID
} PPW_LOBBY_CHANNEL_KIND;

typedef enum PPW_LOBBY_ERROR {
    PPW_LOBBY_ERROR_NONE,
    PPW_LOBBY_ERROR_UNKNOWN,
    PPW_LOBBY_ERROR_ALLOC,
    PPW_LOBBY_ERROR_SESSION,
    PPW_LOBBY_ERROR_STATS_SCHEDULE,
    PPW_LOBBY_ERROR_STATS_VIP,
    PPW_LOBBY_ERROR_STATS_CHECKPROFILE,
    PPW_LOBBY_ERROR_STATS_QUESTIONNAIRE,
    PPW_LOBBY_ERROR_MAX
} PPW_LOBBY_ERROR;

typedef enum PPW_LOBBY_TIME_EVENT {
    PPW_LOBBY_TIME_EVENT_LOCK,
    PPW_LOBBY_TIME_EVENT_NEON_A0,
    PPW_LOBBY_TIME_EVENT_NEON_A1,
    PPW_LOBBY_TIME_EVENT_NEON_A2,
    PPW_LOBBY_TIME_EVENT_NEON_A3,
    PPW_LOBBY_TIME_EVENT_NEON_A4,
    PPW_LOBBY_TIME_EVENT_NEON_A5,
    PPW_LOBBY_TIME_EVENT_NEON_B0,
    PPW_LOBBY_TIME_EVENT_NEON_B1,
    PPW_LOBBY_TIME_EVENT_NEON_B2,
    PPW_LOBBY_TIME_EVENT_NEON_B3,
    PPW_LOBBY_TIME_EVENT_NEON_C0,
    PPW_LOBBY_TIME_EVENT_NEON_C1,
    PPW_LOBBY_TIME_EVENT_NEON_C2,
    PPW_LOBBY_TIME_EVENT_NEON_C3,
    PPW_LOBBY_TIME_EVENT_MINIGAME_END,
    PPW_LOBBY_TIME_EVENT_FIRE_WORKS_START,
    PPW_LOBBY_TIME_EVENT_FIRE_WORKS_END,
    PPW_LOBBY_TIME_EVENT_PARADE,
    PPW_LOBBY_TIME_EVENT_CLOSE
} PPW_LOBBY_TIME_EVENT;

typedef enum PPW_LOBBY_ROOM_FLAG {
    PPW_LOBBY_ROOM_FLAG_ARCEUS = 0x00000001
} PPW_LOBBY_ROOM_FLAG;

typedef enum PPW_LOBBY_STATS_RESULT {
    PPW_LOBBY_STATS_RESULT_SUCCESS,
    PPW_LOBBY_STATS_RESULT_INVALID_PARAM,
    PPW_LOBBY_STATS_RESULT_SERVER_ERROR
} PPW_LOBBY_STATS_RESULT;

typedef struct PPW_LobbySystemProfile {
    s64 enterTime;
    PPW_LOBBY_CHANNEL_KIND subChannelKind;
} PPW_LobbySystemProfile;

typedef struct PPW_LobbyRecruitInfo {
    s32 gameKind;
    u32 maxNum;
    u32 currentNum;
    u32 paramVal;
    u8 paramBuf[PPW_LOBBY_MAX_MATCHMAKING_BUF_SIZE];
    char matchMakingString[PPW_LOBBY_MAX_MATCHMAKING_STRING_LENGTH];
} PPW_LobbyRecruitInfo;

typedef struct PPW_LobbyTimeInfo {
    s64 currentTime;
    s64 openedTime;
    s64 lockedTime;
} PPW_LobbyTimeInfo;

typedef struct PPW_LobbyScheduleRecord {
    s32 time;
    PPW_LOBBY_TIME_EVENT event;
} PPW_LobbyScheduleRecord;

typedef struct PPW_LobbySchedule {
    u32 lockTime;
    u32 random;
    u32 roomFlag;
    u8 roomType;
    u8 season;
    u16 scheduleRecordNum;
    PPW_LobbyScheduleRecord scheduleRecords[1];
} PPW_LobbySchedule;

typedef struct PPW_LobbyVipRecord {
    s32 profileId;
    s32 key;
} PPW_LobbyVipRecord;

typedef struct PPW_LobbyQuestionnaireRecord {
    s32 questionSerialNo;
    s32 questionNo;
    u16 questionSentence[PPW_LOBBY_MAX_QUESTION_SENTENCE_LENGTH];
    u16 answer[PPW_LOBBY_QUESTIONNAIRE_ANSWER_NUM][PPW_LOBBY_MAX_ANSWER_LENGTH];
    u8 multiLanguageSummarizeFlags[12];
    BOOL isSpecialWeek;
} PPW_LobbyQuestionnaireRecord;

typedef struct PPW_LobbyQuestionnaire {
    PPW_LobbyQuestionnaireRecord currentQuestionnaireRecord;
    PPW_LobbyQuestionnaireRecord lastQuestionnaireRecord;
    s32 lastResult[PPW_LOBBY_QUESTIONNAIRE_ANSWER_NUM];
    s32 lastMultiResult[PPW_LOBBY_QUESTIONNAIRE_ANSWER_NUM];
} PPW_LobbyQuestionnaire;

typedef void (* PPW_LobbyJoinChannelCallback)(BOOL success, PPW_LOBBY_CHANNEL_KIND channelKind);
typedef void (* PPW_LobbyPlayerConnectedCallback)(s32 userId, const PPW_LobbySystemProfile * systemProfile, const u8 * userProfile, u32 userProfileSize);
typedef void (* PPW_LobbyPlayerDisconnectedCallback)(s32 userId);
typedef void (* PPW_LobbyStringMassageReceivedCallback)(s32 userId, PPW_LOBBY_CHANNEL_KIND channelKind, s32 type, const char * message);
typedef void (* PPW_LobbyBinaryMassageReceivedCallback)(s32 userId, PPW_LOBBY_CHANNEL_KIND channelKind, s32 type, const u8 * data, u32 dataSize);
typedef void (* PPW_LobbyGetChannelDataCallback)(BOOL success, BOOL broadcast, PPW_LOBBY_CHANNEL_KIND channelKind, s32 userId, const char * key, const u8 * data, u32 dataSize, void * param);
typedef void (* PPW_LobbySystemProfileUpdatedCallback)(s32 userId, const PPW_LobbySystemProfile * systemProfile);
typedef void (* PPW_LobbyUserProfileUpdatedCallback)(s32 userId, const u8 * userProfile, u32 userProfileSize);
typedef void (* PPW_LobbyRecruitCallback)(s32 userId, const PPW_LobbyRecruitInfo * recruitInfo);
typedef void (* PPW_LobbyRecruitStoppedCallback)(s32 userId, const PPW_LobbyRecruitInfo * recruitInfo);
typedef void (* PPW_LobbyScheduleProgressCallback)(PPW_LOBBY_TIME_EVENT event);
typedef void (* PPW_LobbyCheckProfileCallback)(PPW_LOBBY_STATS_RESULT result, const u8 * userProfile, u32 userProfileSize);
typedef BOOL (* PPW_LobbyNotifyScheduleCallback)(PPW_LOBBY_STATS_RESULT result, const PPW_LobbySchedule * schedule);
typedef void (* PPW_LobbyGetVipCallback)(PPW_LOBBY_STATS_RESULT result, const PPW_LobbyVipRecord * vipRecords, u32 num);
typedef void (* PPW_LobbyGetQuestionnaireCallback)(PPW_LOBBY_STATS_RESULT result, const PPW_LobbyQuestionnaire * questionnaire);
typedef void (* PPW_LobbySubmitQuestionnaireCallback)(PPW_LOBBY_STATS_RESULT result);
typedef void (* PPW_LobbyExcessFloodCallback)(u32 floodWeight);

typedef struct PPW_LobbyCallbacks {
    PPW_LobbyJoinChannelCallback lobbyJoinChannelCallback;
    PPW_LobbyPlayerConnectedCallback lobbyPlayerConnectedCallback;
    PPW_LobbyPlayerDisconnectedCallback lobbyPlayerDisconnectedCallback;
    PPW_LobbyStringMassageReceivedCallback lobbyStringMassageReceivedCallback;
    PPW_LobbyBinaryMassageReceivedCallback lobbyBinaryMassageReceivedCallback;
    PPW_LobbyGetChannelDataCallback lobbyGetChannelDataCallback;
    PPW_LobbySystemProfileUpdatedCallback lobbySystemProfileUpdatedCallback;
    PPW_LobbyUserProfileUpdatedCallback lobbyUserProfileUpdatedCallback;
    PPW_LobbyRecruitCallback lobbyRecruitCallback;
    PPW_LobbyRecruitStoppedCallback lobbyRecruitStoppedCallback;
    PPW_LobbyScheduleProgressCallback lobbyScheduleProgressCallback;
    PPW_LobbyCheckProfileCallback lobbyCheckProfileCallback;
    PPW_LobbyNotifyScheduleCallback lobbyNotifyScheduleCallback;
    PPW_LobbyGetVipCallback lobbyGetVipCallback;
    PPW_LobbyGetQuestionnaireCallback lobbyGetQuestionnaireCallback;
    PPW_LobbySubmitQuestionnaireCallback lobbySubmitQuestionnaireCallback;
    PPW_LobbyExcessFloodCallback lobbyExcessFloodCallback;
} PPW_LobbyCallbacks;

PPW_LOBBY_RESULT PPW_LobbyInitializeAsync(const char * gameName, const char * secretKey, DWC_LOBBY_CHANNEL_PREFIX prefix, const PPW_LobbyCallbacks * lobbyCallbacks, const DWCUserData * dwcUserdata, const u8 * userProfile, u32 userProfileSize);
PPW_LOBBY_RESULT PPW_LobbyInitializePidAsync(const char * gameName, const char * secretKey, DWC_LOBBY_CHANNEL_PREFIX prefix, const PPW_LobbyCallbacks * lobbyCallbacks, s32 pid, const u8 * userProfile, u32 userProfileSize);
PPW_LOBBY_RESULT PPW_LobbyShutdownAsync();
PPW_LOBBY_STATE PPW_LobbyProcess();
PPW_LOBBY_ERROR PPW_LobbyGetLastError();
s32 PPW_LobbyToErrorCode(PPW_LOBBY_ERROR err);
PPW_LOBBY_RESULT PPW_LobbyJoinSubChannelAsync(PPW_LOBBY_CHANNEL_KIND channelKind);
PPW_LOBBY_RESULT PPW_LobbyLeaveSubChannel();
PPW_LOBBY_RESULT PPW_LobbyGetTimeInfo(PPW_LobbyTimeInfo * timeInfo);
PPW_LOBBY_RESULT PPW_LobbySetSchedule(const PPW_LobbySchedule * schedule, u32 scheduleSize);
PPW_LOBBY_RESULT PPW_LobbyGetSchedule(PPW_LobbySchedule * schedule, u32 * scheduleSize);
PPW_LOBBY_RESULT PPW_LobbyGetVip(PPW_LobbyVipRecord * records, u32 * recordNum);
PPW_LOBBY_CHANNEL_STATE PPW_LobbyGetSubChannelState();
PPW_LOBBY_RESULT PPW_LobbySetChannelData(s32 userId, PPW_LOBBY_CHANNEL_KIND channelKind, const char * key, const u8 * data, u32 dataSize);
PPW_LOBBY_RESULT PPW_LobbyGetChannelDataAsync(s32 userId, PPW_LOBBY_CHANNEL_KIND channelKind, const char * key, void * param);
PPW_LOBBY_RESULT PPW_LobbySendChannelStringMessage(PPW_LOBBY_CHANNEL_KIND channelKind, s32 type, const char * message);
PPW_LOBBY_RESULT PPW_LobbySendPlayerStringMessage(s32 userId, s32 type, const char * message);
PPW_LOBBY_RESULT PPW_LobbySendChannelBinaryMessage(PPW_LOBBY_CHANNEL_KIND channelKind, s32 type, const u8 * data, u32 dataSize);
PPW_LOBBY_RESULT PPW_LobbySendPlayerBinaryMessage(s32 userId, s32 type, const u8 * data, u32 dataSize);
s32 PPW_LobbyGetMyUserId();
PPW_LOBBY_RESULT PPW_LobbyEnumUserId(s32 * userIds, u32 * num);
PPW_LOBBY_RESULT PPW_LobbyGetProfile(s32 userId, u8 * userProfile, u32 * userProfileSize);
PPW_LOBBY_RESULT PPW_LobbyUpdateMyProfile(const u8 * userProfile, u32 userProfileSize, BOOL force);
PPW_LOBBY_RESULT PPW_LobbyStartRecruit(PPW_LobbyRecruitInfo * recruitInfo);
PPW_LOBBY_RESULT PPW_LobbyUpdateRecruitInfo(const PPW_LobbyRecruitInfo * recruitInfo);
PPW_LOBBY_RESULT PPW_LobbyStopRecruit();
PPW_LOBBY_RESULT PPW_LobbySubmitQuestionnaire(s32 answerNo);
BOOL PPW_IsConnectedUserId(const DWCFriendsMatchControl * dwcFriendMatchCtrl, s32 userId);
void PPW_LobbySetEncInitData(const char * initData);
extern PPW_LOBBY_ERROR ov66_02237134();

#ifdef WIN32
#pragma pack(pop)
#endif

#ifdef __cplusplus
}
#endif

#endif
