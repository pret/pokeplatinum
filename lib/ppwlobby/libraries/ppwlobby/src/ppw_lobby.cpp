#include <lobby/dwci_lobby.h>

// include order necessary to match
// clang-format off
#include "ilobby/dwci_lobbybase.h"
#include "ilobby/ov66_022364B0.h"
#include "overlay066/struct_ov66_0222E71C.h"
#include "ppwlobby/ov66_0225B6C4.h"
#include "ppwlobby/ppw_parser.h"
#include "ppwlobby/dwci_encsession.h"
// clang-format on

static const char *const Unk_ov66_02258BF4[] = {
    "M",
    "F1",
    "F2",
    "C",
    "N",
    "Invalid"
};

static const char *Unk_ov66_02258E64 = "uLMOGEiiJogofchScpXb000244fd00006015100000005b440e7epokemondpds";

typedef enum ENC_SERVER_RESPONSE_CODE {
    ENC_SERVER_RESPONSE_CODE_OK = 0,
    ENC_SERVER_RESPONSE_CODE_INVALID_PARAM = 6,
    ENC_SERVER_RESPONSE_CODE_INTERNAL_ERROR = 7,
    ENC_SERVER_RESPONSE_CODE_DATABASE_ERROR = 8,
    ENC_SERVER_RESPONSE_CODE_MAINTENANCE = 9,
    ENC_SERVER_RESPONSE_CODE_UNKNOWN_ERROR = 10
} ENC_SERVER_RESPONSE_CODE;

static const char *Unk_ov66_02258E70 = "/web/enc/lobby/checkProfile.asp";

static const char *Unk_ov66_02258E68 = "/web/enc/lobby/getSchedule.asp";

static const char *Unk_ov66_02258E6C = "/web/enc/lobby/getVIP.asp";

static const char *Unk_ov66_02258E60 = "/web/enc/lobby/getQuestionnaire.asp";

static const char *Unk_ov66_02258E5C = "/web/enc/lobby/submitQuestionnaire.asp";

static const u32 PPW_LOBBY_TIMER_ID_SYSTEM_CHANNEL_DATA = 1;
static const u32 PPW_LOBBY_TIMER_ID_USER_CHANNEL_DATA = 2;
static const u32 PPW_LOBBY_TIMER_ID_RECRUIT = 3;
static const u32 PPW_LOBBY_TIMER_ID_CHECK_MAINCHANNEL_MODE = 4;
static const u32 PPW_LOBBY_TIMER_ID_CHECK_MAINCHANNEL_SYSTEMDATA = 5;
static const u32 PPW_LOBBY_TIMER_ID_CHECK_LOBBY_INFO = 6;

static const u32 PPW_LOBBY_TIMER_INTERVAL_SYSTEM_CHANNEL_DATA = 3;
static const u32 PPW_LOBBY_TIMER_INTERVAL_USER_CHANNEL_DATA = 4;
static const u32 PPW_LOBBY_TIMER_INTERVAL_RECRUIT = 5;
static const u32 PPW_LOBBY_TIMER_INTERVAL_CHECK_MAINCHANNEL_MODE = 3;
static const u32 PPW_LOBBY_TIMER_INTERVAL_CHECK_MAINCHANNEL_SYSTEMDATA = 4;
static const u32 PPW_LOBBY_TIMER_INTERVAL_CHECK_LOBBY_INFO = 4;

static UnkClass_ov66_0225B6C4 *Unk_ov66_0225B6C4 = NULL;

UnkClass_ov66_0225B6C4 *ov66_02234FC4()
{
    return Unk_ov66_0225B6C4;
}

static PPW_LOBBY_RESULT ov66_02235058(const char *param0, const char *param1, DWC_LOBBY_CHANNEL_PREFIX param2, const PPW_LobbyCallbacks *param3, s32 param4, const u8 *param5, u32 param6, BOOL param7);
static PPW_LOBBY_RESULT ov66_02237BB4();
static void ov66_022374B4();
static PPWString ov66_022378A8(PPW_LOBBY_CHANNEL_KIND param0, const PPWString &param1);
static BOOL ov66_0223859C();
static BOOL ov66_02238070(BOOL param0, BOOL param1, PPW_LOBBY_CHANNEL_KIND param2, s32 param3, const char *param4, const u8 *param5, u32 param6, void *param7);
static BOOL ov66_02238728(void *param0);
static void ov66_0223899C(BOOL param0, const u8 *param1, u32 param2, void *param3);
static void ov66_02238C7C(BOOL param0, const u8 *param1, u32 param2, void *param3);
static void ov66_02239010(BOOL param0, const u8 *param1, u32 param2, void *param3);
static void ov66_02239304(BOOL param0, const u8 *param1, u32 param2, void *param3);
static void ov66_022393C0(BOOL param0, const u8 *param1, u32 param2, void *param3);
static void ov66_02239408(BOOL param0, DWCi_LOBBY_ENTER_RESULT param1, const char *param2, void *param3);
static void ov66_022399A8(BOOL param0, DWCi_LOBBY_ENTER_RESULT param1, const char *param2, void *param3);
static void ov66_02239B54(const char *param0, s32 param1, void *param2);
static void ov66_02239D60(const char *param0, s32 param1, void *param2);
static void ov66_02239FA4(const char *param0, s32 param1, const char *param2, void *param3);
static void ov66_02239F84(s32 param0, const char *param1, void *param2);
static void ov66_0223A1C8(u32 param0, void *param1);
static void ov66_0223A1E4(const char *param0, s32 param1, const char *param2, const char *param3, void *param4);
static void ov66_0223A21C(BOOL param0, const char *param1, s32 param2, const char *param3, const char *param4, void *param5);
static void ov66_0223A250(BOOL param0, s32 param1, const char **param2, const char **param3, const s32 *param4, void *param5);
static void ov66_0223A5A4(BOOL param0, const char *param1, s32 param2, const s32 *param3, void *param4);
static void ov66_0223A6F4(BOOL param0, const char *param1, const DWCi_LobbyChannelMode *param2, void *param3);
static void ov66_0223A750(BOOL param0, const char *param1, s32 param2, const char *param3, const char *param4, void *param5);
static void ov66_0223A860(BOOL param0, const char *param1, s32 param2, const char *param3, const char *param4, void *param5);
static void ov66_0223A958(const char *param0, const char *param1, void *param2);

static inline PPW_LOBBY_RESULT inline_ov66_02235058(DWCi_LOBBY_RESULT param0)
{
    PPW_STATIC_ASSERT(DWCi_LOBBY_RESULT_MAX == PPW_LOBBY_RESULT_MAX);

    PPW_LOBBY_RESULT v0 = (PPW_LOBBY_RESULT)param0;

    Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc8(v0);

    return v0;
}

class EncCommonRequest : public UnkClass_ov66_0225B6E4 {
    s32 pid;
    u16 requestVersion;
    u8 romVersion;
    u8 language;
    u8 macAddr[6];
    u16 reserve1;
    u32 reserve2;

public:
    EncCommonRequest()
    {
        const UnkClass_ov66_02241BD8::UnkClass_ov66_02241BD8_SubStruct2 &v0 = Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc26().UnkClass_ov66_02241C44_InlineFunc1().UnkClass_ov66_02241BD8_InlineFunc2();
        const UnkStruct_ov66_0222E71C *v1 = (const UnkStruct_ov66_0222E71C *)ov66_022364B0(v0.unk_00);

        pid = Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc3();
        requestVersion = PPW_LOBBY_ENC_REQUEST_VERSION;
        romVersion = v1->unk_42;
        language = v1->language;
        OS_GetMacAddress(macAddr);
    }

    ~EncCommonRequest()
    {
    }
};

PPW_LOBBY_RESULT PPW_LobbyInitializeAsync(const char *gameName, const char *secretKey, DWC_LOBBY_CHANNEL_PREFIX prefix, const PPW_LobbyCallbacks *lobbyCallbacks, const DWCUserData *dwcUserData, const u8 *userProfile, u32 userProfileSize)
{
    if (!DWC_CheckUserData(dwcUserData) || !DWC_CheckHasProfile(dwcUserData)) {
        return PPW_LOBBY_RESULT_ERROR_PARAM;
    }

    return ov66_02235058(gameName, secretKey, prefix, lobbyCallbacks, dwcUserData->gs_profile_id, userProfile, userProfileSize, TRUE);
}

PPW_LOBBY_RESULT PPW_LobbyInitializePidAsync(const char *gameName, const char *secretKey, DWC_LOBBY_CHANNEL_PREFIX prefix, const PPW_LobbyCallbacks *lobbyCallbacks, s32 pid, const u8 *userProfile, u32 userProfileSize)
{
    return ov66_02235058(gameName, secretKey, prefix, lobbyCallbacks, pid, userProfile, userProfileSize, FALSE);
}

static PPW_LOBBY_RESULT ov66_02235058(const char *param0, const char *param1, DWC_LOBBY_CHANNEL_PREFIX param2, const PPW_LobbyCallbacks *param3, s32 param4, const u8 *param5, u32 param6, BOOL param7)
{
    if (Unk_ov66_0225B6C4) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }

    DWCi_LobbyGlobalCallbacks v0;
    v0.lobbyUserMessageReceivedCallback = ov66_02239F84;
    v0.lobbyExcessFloodCallback = ov66_0223A1C8;
    v0.param = (void *)PPW_LOBBY_CHANNEL_KIND_INVALID;

    Unk_ov66_0225B6C4 = new UnkClass_ov66_0225B6C4(*param3, param4, param2, param7);
    if (!Unk_ov66_0225B6C4) {
        return PPW_LOBBY_RESULT_ERROR_ALLOC;
    }

    PPW_LOBBY_RESULT v1 = inline_ov66_02235058(DWCi_LobbyInitializePidAsync(param0, param1, param2, &v0, param4));
    if (v1 != PPW_LOBBY_RESULT_SUCCESS) {
        if (Unk_ov66_0225B6C4) {
            delete Unk_ov66_0225B6C4;
            Unk_ov66_0225B6C4 = NULL;
        }
        return v1;
    }

    Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc26().ov66_02242008(param4, param5, param6);

    ov66_022374B4();

    Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc1(PPW_LOBBY_STATE_CONNECTING);
    return PPW_LOBBY_RESULT_SUCCESS;
}

PPW_LOBBY_RESULT PPW_LobbyShutdownAsync()
{
    if (!Unk_ov66_0225B6C4) {
        return PPW_LOBBY_RESULT_SUCCESS;
    }

    if (Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() == PPW_LOBBY_STATE_CLOSING) {
        return PPW_LOBBY_RESULT_SUCCESS;
    }

    Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc27().UnkClass_ov66_02243B64_Sub1_InlineFunc3();

    Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc1(PPW_LOBBY_STATE_CLOSING);
    return inline_ov66_02235058(DWCi_LobbyShutdownAsync());
}

PPW_LOBBY_STATE PPW_LobbyProcess()
{
    BOOL v0 = UnkClass_ov66_0225B6D4::UnkClass_ov66_0225B6D4_InlineFunc4();

    if (v0) {
        if (!Unk_ov66_0225B6C4) {
            return PPW_LOBBY_STATE_CLOSING;
        }
    } else {
        if (!Unk_ov66_0225B6C4) {
            return PPW_LOBBY_STATE_NOTINITIALIZED;
        }
    }

    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() == PPW_LOBBY_STATE_ERROR) {
        return PPW_LOBBY_STATE_ERROR;
    }

    switch (DWCi_LobbyProcess()) {
    case DWCi_LOBBY_STATE_NOTINITIALIZED:
        PPW_LobbyShutdownAsync();
        if (Unk_ov66_0225B6C4) {
            delete Unk_ov66_0225B6C4;
            Unk_ov66_0225B6C4 = NULL;
        }
        return PPW_LOBBY_STATE_CLOSING;
    case DWCi_LOBBY_STATE_CONNECTING:
        break;
    case DWCi_LOBBY_STATE_CONNECTINGWAIT:
        break;
    case DWCi_LOBBY_STATE_CONNECTED:
        if (Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() == PPW_LOBBY_STATE_CONNECTING) {
            Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc1(PPW_LOBBY_STATE_CONNECTED);
        }
        break;
    case DWCi_LOBBY_STATE_CLOSING:
        break;
    case DWCi_LOBBY_STATE_ERROR:
        Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc7(DWCi_LobbyGetLastError());
        break;
    default:
        break;
    }

    Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc20();

    switch (Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0()) {
    case PPW_LOBBY_STATE_NOTINITIALIZED:
        return PPW_LOBBY_STATE_CLOSING;
    case PPW_LOBBY_STATE_CONNECTING:
        break;
    case PPW_LOBBY_STATE_CONNECTED:
        Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc1(PPW_LOBBY_STATE_DOWNLOAD);
        break;
    case PPW_LOBBY_STATE_DOWNLOAD:
        if (Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc28().UnkClass_ov66_0223CA1C_InlineFunc1()) {
            Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc1(PPW_LOBBY_STATE_DOWNLOAD_WAIT);
        }
        break;
    case PPW_LOBBY_STATE_DOWNLOAD_WAIT:
        DWCi_LobbyEnumChannelsAsync((ov66_022378A8(PPW_LOBBY_CHANNEL_KIND_MAIN, "*")).c_str(), ov66_0223A250, NULL);
        Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc1(PPW_LOBBY_STATE_SEARCHINGCHANNEL);
        break;
    case PPW_LOBBY_STATE_SEARCHINGCHANNEL:
        break;
    case PPW_LOBBY_STATE_ENTERMAINCHANNEL: {
        PPW_LOBBY_RESULT v1 = ov66_02237BB4();
        if (v1 != PPW_LOBBY_RESULT_SUCCESS) {
            Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc8(v1);
        } else {
            Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc1(PPW_LOBBY_STATE_PREPARINGMAINCHANNEL);
        }
    } break;
    case PPW_LOBBY_STATE_PREPARINGMAINCHANNEL:
        if (ov66_0223859C()) {
            UnkClass_ov66_02241BD8 &v2 = Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc26().UnkClass_ov66_02241C44_InlineFunc1();
            UnkClass_ov66_02241BD8::UnkClass_ov66_02241BD8_SubStruct1 v3 = v2.UnkClass_ov66_02241BD8_InlineFunc7();
            v3.unk_0C = TRUE;
            v2.UnkClass_ov66_02241BD8_InlineFunc5(v3);

            Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc1(PPW_LOBBY_STATE_READY);
            Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc2().lobbyJoinChannelCallback(TRUE, PPW_LOBBY_CHANNEL_KIND_MAIN);
        }
        break;
    case PPW_LOBBY_STATE_READY:
        break;
    case PPW_LOBBY_STATE_CLOSING:
        break;
    case PPW_LOBBY_STATE_ERROR:
        break;
    default:
        break;
    }

    return Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0();
}

PPW_LOBBY_RESULT PPW_LobbyJoinSubChannelAsync(PPW_LOBBY_CHANNEL_KIND channelKind)
{
    if (!Unk_ov66_0225B6C4) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }
    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() == PPW_LOBBY_STATE_ERROR) {
        return PPW_LOBBY_RESULT_ERROR_CONDITION;
    }
    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() != PPW_LOBBY_STATE_READY) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }

    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc23().UnkClass_ov66_02235FC8_InlineFunc0()) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }

    DWCi_LobbyChannelCallbacks v0;
    v0.lobbyPlayerConnectedCallback = ov66_02239B54;
    v0.lobbyPlayerDisconnectedCallback = ov66_02239D60;
    v0.lobbyChannelMessageReceivedCallback = ov66_02239FA4;
    v0.lobbyBroadcastDataCallback = ov66_0223A1E4;
    v0.lobbyTopicChangedCallback = ov66_0223A958;
    v0.param = (void *)channelKind;

    PPWString v1 = ov66_022378A8(channelKind, Unk_ov66_0225B6C4->ov66_02235DC4());
    const DWCi_LobbyChannelMode *v2 = inline_ov66_02235BA0(channelKind);
    PPW_LOBBY_RESULT v3 = inline_ov66_02235058(DWCi_LobbyJoinChannelLimitAsync(v1.c_str(), NULL, v2->limit, &v0, ov66_022399A8, (void *)channelKind));
    if (v3 != PPW_LOBBY_RESULT_SUCCESS) {
        return v3;
    }
    Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc25(UnkClass_ov66_02235FC8(channelKind, v1));
    return PPW_LOBBY_RESULT_SUCCESS;
}

PPW_LOBBY_RESULT PPW_LobbyLeaveSubChannel()
{
    if (!Unk_ov66_0225B6C4) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }
    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() == PPW_LOBBY_STATE_ERROR) {
        return PPW_LOBBY_RESULT_ERROR_CONDITION;
    }
    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() != PPW_LOBBY_STATE_READY) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }

    if (!(Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc23().UnkClass_ov66_02235FC8_InlineFunc0())) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }

    PPW_LOBBY_RESULT unused = inline_ov66_02235058(DWCi_LobbyLeaveChannel(Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc23().ov66_02235FC8().c_str()));

    Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc23().UnkClass_ov66_02235FC8_InlineFunc7();

    UnkClass_ov66_02241BD8 &v0 = Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc26().UnkClass_ov66_02241C44_InlineFunc1();
    UnkClass_ov66_02241BD8::UnkClass_ov66_02241BD8_SubStruct1 v1 = v0.UnkClass_ov66_02241BD8_InlineFunc7();
    v1.unk_00 = PPW_LOBBY_CHANNEL_KIND_INVALID;
    v0.UnkClass_ov66_02241BD8_InlineFunc5(v1);

    return PPW_LOBBY_RESULT_SUCCESS;
}

PPW_LOBBY_RESULT PPW_LobbyGetTimeInfo(PPW_LobbyTimeInfo *timeInfo)
{
    if (!Unk_ov66_0225B6C4) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }
    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() == PPW_LOBBY_STATE_ERROR) {
        return PPW_LOBBY_RESULT_ERROR_CONDITION;
    }
    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() != PPW_LOBBY_STATE_READY) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }

    Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc28().UnkClass_ov66_0223CA1C_InlineFunc6(*timeInfo);

    return PPW_LOBBY_RESULT_SUCCESS;
}

PPW_LOBBY_RESULT PPW_LobbySetSchedule(const PPW_LobbySchedule *schedule, u32 scheduleSize)
{
    if (!Unk_ov66_0225B6C4) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }
    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() == PPW_LOBBY_STATE_ERROR) {
        return PPW_LOBBY_RESULT_ERROR_CONDITION;
    }

    return Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc28().ov66_0223CB84((u8 *)schedule, scheduleSize) ? PPW_LOBBY_RESULT_SUCCESS : PPW_LOBBY_RESULT_ERROR_PARAM;
}

PPW_LOBBY_RESULT PPW_LobbyGetSchedule(PPW_LobbySchedule *schedule, u32 *scheduleSize)
{
    if (!Unk_ov66_0225B6C4) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }
    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() == PPW_LOBBY_STATE_ERROR) {
        return PPW_LOBBY_RESULT_ERROR_CONDITION;
    }
    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() != PPW_LOBBY_STATE_READY) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }

    return Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc28().ov66_0223CA80(schedule, *scheduleSize) ? PPW_LOBBY_RESULT_SUCCESS : PPW_LOBBY_RESULT_ERROR_PARAM;
}

PPW_LOBBY_CHANNEL_STATE PPW_LobbyGetSubChannelState()
{
    if (!Unk_ov66_0225B6C4) {
        return PPW_LOBBY_CHANNEL_STATE_ERROR;
    }
    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() == PPW_LOBBY_STATE_ERROR) {
        return PPW_LOBBY_CHANNEL_STATE_ERROR;
    }
    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() != PPW_LOBBY_STATE_READY) {
        return PPW_LOBBY_CHANNEL_STATE_ERROR;
    }

    if (!Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc23().UnkClass_ov66_02235FC8_InlineFunc0()) {
        return PPW_LOBBY_CHANNEL_STATE_NONE;
    }

    BOOL v0 = DWCi_LobbyInChannel(Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc23().ov66_02235FC8().c_str());
    return v0 ? PPW_LOBBY_CHANNEL_STATE_AVAILABLE : PPW_LOBBY_CHANNEL_STATE_UNAVAILABLE;
}

PPW_LOBBY_RESULT PPW_LobbySetChannelData(s32 userId, PPW_LOBBY_CHANNEL_KIND channelKind, const char *key, const u8 *data, u32 dataSize)
{
    if (!Unk_ov66_0225B6C4) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }
    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() == PPW_LOBBY_STATE_ERROR) {
        return PPW_LOBBY_RESULT_ERROR_CONDITION;
    }
    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() != PPW_LOBBY_STATE_READY) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }

    return ov66_02237348(userId, channelKind, key, data, dataSize);
}

PPW_LOBBY_RESULT PPW_LobbyGetChannelDataAsync(s32 userId, PPW_LOBBY_CHANNEL_KIND channelKind, const char *key, void *param)
{
    if (!Unk_ov66_0225B6C4) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }
    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() == PPW_LOBBY_STATE_ERROR) {
        return PPW_LOBBY_RESULT_ERROR_CONDITION;
    }
    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() != PPW_LOBBY_STATE_READY) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }

    PPWString v0 = Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc21().ov66_02236348(channelKind);
    if (v0 == "") {
        return PPW_LOBBY_RESULT_ERROR_CHANNEL;
    }

    return inline_ov66_02235058(DWCi_LobbyGetChannelDataAsync(v0.c_str(), userId, key, ov66_0223A21C, param));
}

PPW_LOBBY_RESULT PPW_LobbySendChannelStringMessage(PPW_LOBBY_CHANNEL_KIND channelKind, s32 type, const char *message)
{
    if (!Unk_ov66_0225B6C4) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }
    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() == PPW_LOBBY_STATE_ERROR) {
        return PPW_LOBBY_RESULT_ERROR_CONDITION;
    }
    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() != PPW_LOBBY_STATE_READY) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }

    return ov66_02237170(PPW_LOBBY_INVALID_USER_ID, channelKind, 0, UnkClass_ov66_02241184::UnkEnum_ov66_02241184_1, type, (u8 *)message, strlen(message) + 1);
}

PPW_LOBBY_RESULT PPW_LobbySendPlayerStringMessage(s32 userId, s32 type, const char *message)
{
    if (!Unk_ov66_0225B6C4) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }
    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() == PPW_LOBBY_STATE_ERROR) {
        return PPW_LOBBY_RESULT_ERROR_CONDITION;
    }
    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() != PPW_LOBBY_STATE_READY) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }

    return ov66_02237170(userId, PPW_LOBBY_CHANNEL_KIND_INVALID, 0, UnkClass_ov66_02241184::UnkEnum_ov66_02241184_1, type, (u8 *)message, strlen(message) + 1);
}

PPW_LOBBY_RESULT PPW_LobbySendChannelBinaryMessage(PPW_LOBBY_CHANNEL_KIND channelKind, s32 type, const u8 *data, u32 dataSize)
{
    if (!Unk_ov66_0225B6C4) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }
    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() == PPW_LOBBY_STATE_ERROR) {
        return PPW_LOBBY_RESULT_ERROR_CONDITION;
    }
    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() != PPW_LOBBY_STATE_READY) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }

    return ov66_02237170(PPW_LOBBY_INVALID_USER_ID, channelKind, 1, UnkClass_ov66_02241184::UnkEnum_ov66_02241184_1, type, data, dataSize);
}

PPW_LOBBY_RESULT PPW_LobbySendPlayerBinaryMessage(s32 userId, s32 type, const u8 *data, u32 dataSize)
{
    if (!Unk_ov66_0225B6C4) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }
    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() == PPW_LOBBY_STATE_ERROR) {
        return PPW_LOBBY_RESULT_ERROR_CONDITION;
    }
    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() != PPW_LOBBY_STATE_READY) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }

    return ov66_02237170(userId, PPW_LOBBY_CHANNEL_KIND_INVALID, 1, UnkClass_ov66_02241184::UnkEnum_ov66_02241184_1, type, data, dataSize);
}

s32 PPW_LobbyGetMyUserId()
{
    if (!Unk_ov66_0225B6C4) {
        return PPW_LOBBY_INVALID_USER_ID;
    }
    return Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc3();
}

PPW_LOBBY_RESULT PPW_LobbyEnumUserId(s32 *userIds, u32 *num)
{
    if (!Unk_ov66_0225B6C4) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }
    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() == PPW_LOBBY_STATE_ERROR) {
        return PPW_LOBBY_RESULT_ERROR_CONDITION;
    }
    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() != PPW_LOBBY_STATE_READY) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }

    u32 v0 = *num;

    std::vector<s32, PPW_Allocator<s32> > v1 = Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc26().ov66_02241F2C();
    *num = v1.size();
    if (*num == 0) {
        return PPW_LOBBY_RESULT_SUCCESS;
    }

    if (v0 < *num || userIds == NULL) {
        return PPW_LOBBY_RESULT_ERROR_PARAM;
    }

    MI_CpuCopy8(ov66_022364B0(v1), userIds, v1.size() * sizeof(v1[0]));
    return PPW_LOBBY_RESULT_SUCCESS;
}

PPW_LOBBY_RESULT PPW_LobbyGetProfile(s32 userId, u8 *userProfile, u32 *userProfileSize)
{
    if (!Unk_ov66_0225B6C4) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }
    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() == PPW_LOBBY_STATE_ERROR) {
        return PPW_LOBBY_RESULT_ERROR_CONDITION;
    }
    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() != PPW_LOBBY_STATE_READY) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }

    if (userId == PPW_LOBBY_INVALID_USER_ID) {
        userId = Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc3();
    }

    UnkClass_ov66_02241BD8 *v0 = Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc26().ov66_02241DCC(userId);
    if (!v0) {
        return PPW_LOBBY_RESULT_ERROR_NODATA;
    }

    return v0->UnkClass_ov66_02241BD8_InlineFunc1(userProfile, userProfileSize) ? PPW_LOBBY_RESULT_SUCCESS : PPW_LOBBY_RESULT_ERROR_PARAM;
}

PPW_LOBBY_RESULT PPW_LobbyUpdateMyProfile(const u8 *userProfile, u32 userProfileSize, BOOL force)
{
    if (!Unk_ov66_0225B6C4) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }
    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() == PPW_LOBBY_STATE_ERROR) {
        return PPW_LOBBY_RESULT_ERROR_CONDITION;
    }
    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() != PPW_LOBBY_STATE_READY) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }

    UnkClass_ov66_02241BD8 &v0 = Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc26().UnkClass_ov66_02241C44_InlineFunc1();

    v0.UnkClass_ov66_02241BD8_InlineFunc0(userProfile, userProfileSize, force);

    return PPW_LOBBY_RESULT_SUCCESS;
}

PPW_LOBBY_RESULT PPW_LobbyStartRecruit(PPW_LobbyRecruitInfo *recruitInfo)
{
    if (!Unk_ov66_0225B6C4) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }
    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() == PPW_LOBBY_STATE_ERROR) {
        return PPW_LOBBY_RESULT_ERROR_CONDITION;
    }
    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() != PPW_LOBBY_STATE_READY) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }

    PPWString v0;
    if (!Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc13(*recruitInfo, v0)) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }

    strncpy(recruitInfo->matchMakingString, v0.c_str(), PPW_LOBBY_MAX_MATCHMAKING_STRING_LENGTH - 1);

    Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc27().UnkClass_ov66_02243B64_Sub1_InlineFunc0(PPW_LOBBY_TIMER_ID_RECRUIT, PPW_LOBBY_TIMER_INTERVAL_RECRUIT, ov66_02238728, NULL, TRUE);

    return PPW_LOBBY_RESULT_SUCCESS;
}

PPW_LOBBY_RESULT PPW_LobbyUpdateRecruitInfo(const PPW_LobbyRecruitInfo *recruitInfo)
{
    if (!Unk_ov66_0225B6C4) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }
    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() == PPW_LOBBY_STATE_ERROR) {
        return PPW_LOBBY_RESULT_ERROR_CONDITION;
    }
    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() != PPW_LOBBY_STATE_READY) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }

    if (!Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc16(*recruitInfo)) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }
    return PPW_LOBBY_RESULT_SUCCESS;
}

PPW_LOBBY_RESULT PPW_LobbyStopRecruit()
{
    if (!Unk_ov66_0225B6C4) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }
    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() == PPW_LOBBY_STATE_ERROR) {
        return PPW_LOBBY_RESULT_ERROR_CONDITION;
    }
    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() != PPW_LOBBY_STATE_READY) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }

    if (!Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc17()) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }

    ov66_02237170(Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc3(), PPW_LOBBY_CHANNEL_KIND_MAIN, 1, UnkClass_ov66_02241184::UnkEnum_ov66_02241184_0, 2, (u8 *)&Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc15(), sizeof(PPW_LobbyRecruitInfo));

    Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc27().UnkClass_ov66_02243B64_Sub1_InlineFunc2(PPW_LOBBY_TIMER_ID_RECRUIT);
    return PPW_LOBBY_RESULT_SUCCESS;
}

PPW_LOBBY_RESULT PPW_LobbySubmitQuestionnaire(s32 answerNo)
{
    if (!Unk_ov66_0225B6C4) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }
    if (Unk_ov66_0225B6C4 && Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() == PPW_LOBBY_STATE_ERROR) {
        return PPW_LOBBY_RESULT_ERROR_CONDITION;
    }

    if (answerNo < 0 || answerNo > 2) {
        return PPW_LOBBY_RESULT_ERROR_PARAM;
    }

    PPW_LobbyQuestionnaire v0;
    if (!Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc28().ov66_0223EDE4(&v0) || Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc19()) {
        return PPW_LOBBY_RESULT_ERROR_STATE;
    }

    const UnkClass_ov66_02241BD8::UnkClass_ov66_02241BD8_SubStruct2 &v1 = Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc26().UnkClass_ov66_02241C44_InlineFunc1().UnkClass_ov66_02241BD8_InlineFunc2();
    const UnkStruct_ov66_0222E71C *v2 = (const UnkStruct_ov66_0222E71C *)ov66_022364B0(v1.unk_00);

    struct UnkStruct_ov66_02236D74 {
        EncCommonRequest unk_00;
        s32 unk_14;
        s32 unk_18;
        s32 unk_1C;
        u32 unk_20;
        s32 unk_24;
        u16 unk_28;
        u16 unk_2A;
    } v3 = {
        EncCommonRequest(),
        v0.currentQuestionnaireRecord.questionSerialNo,
        v0.currentQuestionnaireRecord.questionNo,
        answerNo,
        v2->unk_04,
        v2->unk_38,
        v2->unk_3C,
        v2->unk_3E
    };

    UnkClass_ov66_0225B6D4::UnkClass_ov66_0225B6D4_InlineFunc3(Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc4(), Unk_ov66_02258E64, Unk_ov66_02258E5C, Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc3(), (u8 *)&v3, sizeof(v3), 3, ov66_022393C0, NULL);

    Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc18(TRUE);
    return PPW_LOBBY_RESULT_SUCCESS;
}

PPW_LOBBY_ERROR PPW_LobbyGetLastError()
{
    if (!Unk_ov66_0225B6C4) {
        return PPW_LOBBY_ERROR_NONE;
    }

    return Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc5();
}

s32 PPW_LobbyToErrorCode(PPW_LOBBY_ERROR err)
{
    if (err >= DWCi_LOBBY_ERROR_MAX) {
        return err + PPW_LOBBY_ERROR_CODE_BASE;
    } else {
        return DWCi_LobbyToErrorCode((DWCi_LOBBY_ERROR)err);
    }
}

PPW_LOBBY_ERROR ov66_02237134(PPW_LOBBY_RESULT param0)
{
    switch (param0) {
    case PPW_LOBBY_RESULT_SUCCESS:
        return PPW_LOBBY_ERROR_NONE;
    case PPW_LOBBY_RESULT_ERROR_ALLOC:
        return PPW_LOBBY_ERROR_ALLOC;
    case PPW_LOBBY_RESULT_ERROR_SESSION:
        return PPW_LOBBY_ERROR_SESSION;
    default:
        return PPW_LOBBY_ERROR_UNKNOWN;
    }
}

BOOL PPW_IsConnectedUserId(const DWCFriendsMatchControl *dwcFriendMatchCtrl, s32 userId)
{
    if (!Unk_ov66_0225B6C4) {
        return FALSE;
    }

    int v0 = DWC_GetNumConnectionHost();
    if (v0 == 0 || !dwcFriendMatchCtrl) {
        return FALSE;
    }

    if (userId == Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc3()) {
        return TRUE;
    }

    const int *v1 = dwcFriendMatchCtrl->matchcnt.sbPidList;
    const int *v2 = std::find(v1, v1 + v0, userId);

    return v2 != v1 + v0;
}

void PPW_LobbySetEncInitData(const char *initData)
{
    Unk_ov66_02258E64 = initData;
}

PPW_LOBBY_RESULT ov66_02237170(s32 param0, PPW_LOBBY_CHANNEL_KIND param1, int param2, UnkClass_ov66_02241184::UnkEnum_ov66_02241184 param3, s32 param4, const u8 *param5, u32 param6)
{
    if (param0 == PPW_LOBBY_INVALID_USER_ID && param1 == PPW_LOBBY_CHANNEL_KIND_INVALID) {
        return PPW_LOBBY_RESULT_ERROR_PARAM;
    }

    PPWString v0;
    if (!UnkClass_ov66_02241184::ov66_022416DC(param2, param3, param4, (const char *)param5, param6, v0)) {
        return PPW_LOBBY_RESULT_ERROR_PARAM;
    }

    if (param1 == PPW_LOBBY_CHANNEL_KIND_INVALID) {
        return inline_ov66_02235058(DWCi_LobbySendUserMessage(param0, v0.c_str()));
    } else {
        PPWString v1 = Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc21().ov66_02236348(param1);
        if (v1 == "") {
            return PPW_LOBBY_RESULT_ERROR_CHANNEL;
        }
        return inline_ov66_02235058(DWCi_LobbySendChannelMessage(v1.c_str(), v0.c_str()));
    }
}

PPW_LOBBY_RESULT ov66_02237348(s32 param0, PPW_LOBBY_CHANNEL_KIND param1, const char *param2, const u8 *param3, u32 param4)
{
    PPWString v0 = Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc21().ov66_02236348(param1);
    if (v0 == "") {
        return PPW_LOBBY_RESULT_ERROR_CHANNEL;
    }

    if (param4 > PPW_LOBBY_MAX_BINARY_SIZE) {
        return PPW_LOBBY_RESULT_ERROR_PARAM;
    }

    std::vector<char, PPW_Allocator<char> > v1((((param4 + 2) / 3) << 2) + 1);
    int v2 = DWC_Base64Encode((char *)param3, param4, ov66_022364B0(v1), v1.size());

    v1[(std::size_t)v2] = '\0';

    return inline_ov66_02235058(DWCi_LobbySetChannelData(v0.c_str(), param0, param2, ov66_022364B0(v1)));
}

static void ov66_022374B4()
{
    const UnkClass_ov66_02241BD8::UnkClass_ov66_02241BD8_SubStruct2 &v0 = Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc26().UnkClass_ov66_02241C44_InlineFunc1().UnkClass_ov66_02241BD8_InlineFunc2();
    const UnkStruct_ov66_0222E71C *v1 = (const UnkStruct_ov66_0222E71C *)ov66_022364B0(v0.unk_00);

    struct UnkStruct_ov66_022374B4 {
        EncCommonRequest unk_00;
        UnkStruct_ov66_0222E71C unk_14;
    } v2;
    v2.unk_14 = *v1;

    UnkClass_ov66_0225B6D4::UnkClass_ov66_0225B6D4_InlineFunc3(Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc4(), Unk_ov66_02258E64, Unk_ov66_02258E70, Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc3(), (u8 *)&v2, sizeof(v2), 3, ov66_0223899C, NULL);
}

static PPWString ov66_022378A8(PPW_LOBBY_CHANNEL_KIND param0, const PPWString &param1)
{
    return PPWString(Unk_ov66_02258BF4[param0]) + DWCi_LOBBY_CHANNEL_NAME_SEPARATOR + param1;
}

static PPWString ov66_02237A88()
{
    return ov66_02237ADC<PPWString>("C%d_%u", Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc3(), (u32)current_time() % 1000);
}

static PPW_LOBBY_RESULT ov66_02237BB4()
{
    DWCi_LobbyChannelCallbacks v0;
    v0.lobbyPlayerConnectedCallback = ov66_02239B54;
    v0.lobbyPlayerDisconnectedCallback = ov66_02239D60;
    v0.lobbyChannelMessageReceivedCallback = ov66_02239FA4;
    v0.lobbyBroadcastDataCallback = ov66_0223A1E4;
    v0.lobbyTopicChangedCallback = ov66_0223A958;
    v0.param = (void *)PPW_LOBBY_CHANNEL_KIND_MAIN;

    PPWString v1 = ov66_022378A8(PPW_LOBBY_CHANNEL_KIND_MAIN, Unk_ov66_0225B6C4->ov66_02235DC4());
    PPW_LOBBY_RESULT v2 = inline_ov66_02235058(DWCi_LobbyJoinChannelLimitAsync(v1.c_str(), NULL, PPW_LOBBY_MAX_PLAYER_NUM_MAIN, &v0, ov66_02239408, (void *)PPW_LOBBY_CHANNEL_KIND_MAIN));
    if (v2 != PPW_LOBBY_RESULT_SUCCESS) {
        return v2;
    }

    Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc24(UnkClass_ov66_02235FC8(PPW_LOBBY_CHANNEL_KIND_MAIN, v1));
    return v2;
}

static void ov66_02237D24(BOOL param0, BOOL param1, const char *param2, s32 param3, const char *param4, const char *param5, void *param6)
{
    PPW_LOBBY_CHANNEL_KIND v0 = Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc21().UnkClass_ov66_02236348_InlineFunc2(param2);
    if (v0 == PPW_LOBBY_CHANNEL_KIND_INVALID) {
        return;
    }

    std::vector<u8, PPW_Allocator<u8> > v1;
    if (!ov66_02237EF8(param5, v1)) {
        return;
    }

    if (v1.empty()) {
        return;
    }

    if (ov66_02238070(param0, param1, v0, param3, param4, ov66_022364B0(v1), v1.size(), param6)) {
        return;
    }

    if (param3 != PPW_LOBBY_INVALID_USER_ID && !Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc26().UnkClass_ov66_02241C44_InlineFunc0(param3)) {
        return;
    }

    Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc2().lobbyGetChannelDataCallback(param0, param1, v0, param3, param4, ov66_022364B0(v1), v1.size(), param6);
}

static BOOL ov66_02238070(BOOL param0, BOOL param1, PPW_LOBBY_CHANNEL_KIND param2, s32 param3, const char *param4, const u8 *param5, u32 param6, void *param7)
{
    if (param2 != PPW_LOBBY_CHANNEL_KIND_MAIN) {
        return FALSE;
    }

    if (strcmp(param4, PPW_LOBBY_CHANNEL_KEY_USER) == 0) {
        if (param3 == Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc3()) {
            return TRUE;
        }

        UnkClass_ov66_02241BD8 *v0 = Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc26().ov66_02241DCC(param3);
        if (!v0) {
            return TRUE;
        }

        v0->UnkClass_ov66_02241BD8_InlineFunc0(param5, (u32)param6);

        if (v0->UnkClass_ov66_02241BD8_InlineFunc10()) {
            Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc2().lobbyUserProfileUpdatedCallback(param3, param5, param6);
        }

        return TRUE;
    } else if (strcmp(param4, PPW_LOBBY_CHANNEL_KEY_SYSTEM) == 0) {
        if (param3 == Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc3()) {
            return TRUE;
        }

        if (param6 != sizeof(UnkClass_ov66_02241BD8::UnkClass_ov66_02241BD8_SubStruct1)) {
            return TRUE;
        }

        UnkClass_ov66_02241BD8 *v1 = Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc26().ov66_02241DCC(param3);
        if (!v1) {
            return TRUE;
        }
        v1->UnkClass_ov66_02241BD8_InlineFunc5(*(UnkClass_ov66_02241BD8::UnkClass_ov66_02241BD8_SubStruct1 *)param5);

        if (v1->UnkClass_ov66_02241BD8_InlineFunc10() && v1->UnkClass_ov66_02241BD8_InlineFunc8()) {
            const UnkClass_ov66_02241BD8::UnkClass_ov66_02241BD8_SubStruct1 &v2 = v1->UnkClass_ov66_02241BD8_InlineFunc7();
            PPW_LobbySystemProfile v3 = v2.UnkClass_ov66_02241BD8_SubStruct1_InlineFunc0();
            Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc2().lobbySystemProfileUpdatedCallback(param3, &v3);
        }

        return TRUE;
    } else if (strcmp(param4, PPW_LOBBY_CHANNEL_KEY_CHANNEL_TIME) == 0) {
        if (param6 != sizeof(UnkClass_ov66_0223CA1C::UnkClass_ov66_0223CA1C_SubStruct1)) {
            return TRUE;
        }
        UnkClass_ov66_0223CA1C::UnkClass_ov66_0223CA1C_SubStruct1 *v4 = (UnkClass_ov66_0223CA1C::UnkClass_ov66_0223CA1C_SubStruct1 *)param5;

        Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc28().UnkClass_ov66_0223CA1C_InlineFunc5(*v4);
        return TRUE;
    } else if (strcmp(param4, PPW_LOBBY_CHANNEL_KEY_CHANNEL_LOBBY) == 0) {
        if (!Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc28().ov66_0223CB84(param5, param6)) {
            return TRUE;
        }
        Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc28().UnkClass_ov66_0223CA1C_InlineFunc2();
        return TRUE;
    }

    return FALSE;
}

static BOOL ov66_02238460(const UnkClass_ov66_02241184::UnkClass_ov66_02241184_SubStruct &param0, s32 param1, PPW_LOBBY_CHANNEL_KIND param2, u8 *param3, u32 param4)
{
    if (param2 != PPW_LOBBY_CHANNEL_KIND_MAIN) {
        return TRUE;
    }

    switch (param0.unk_10) {
    case 1:
        if (Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc3() == param1) {
            break;
        }

        if (!Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc26().UnkClass_ov66_02241C44_InlineFunc0(param1)) {
            break;
        }

        if (param0.unk_08 == 1 && param4 == sizeof(PPW_LobbyRecruitInfo)) {
            Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc2().lobbyRecruitCallback(param1, (PPW_LobbyRecruitInfo *)param3);
        }
        break;
    case 2:
        if (Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc3() == param1) {
            break;
        }

        if (!Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc26().UnkClass_ov66_02241C44_InlineFunc0(param1)) {
            break;
        }

        if (param0.unk_08 == 1 && param4 == sizeof(PPW_LobbyRecruitInfo)) {
            Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc2().lobbyRecruitStoppedCallback(param1, (PPW_LobbyRecruitInfo *)param3);
        }

        break;
    case 0:
        if (param0.unk_08 == 1 && param4 == sizeof(UnkStruct_ov66_0223EE30)) {
            Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc28().ov66_0223F0D0();
        }

        break;
    default:
        break;
    }
    return TRUE;
}

static BOOL ov66_0223859C()
{
    if (!DWCi_LobbyInChannel(Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc22().ov66_02235FC8().c_str())) {
        return FALSE;
    }

    if (!Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc22().UnkClass_ov66_02235FC8_InlineFunc3()) {
        return FALSE;
    }

    if (!Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc22().UnkClass_ov66_02235FC8_InlineFunc5()) {
        return FALSE;
    }

    if (!Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc28().UnkClass_ov66_0223CA1C_InlineFunc4()) {
        return FALSE;
    }

    if (!Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc28().UnkClass_ov66_0223CA1C_InlineFunc3()) {
        return FALSE;
    }

    if (!Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc26().ov66_022423B0()) {
        return FALSE;
    }
    return TRUE;
}

static BOOL ov66_02238678(void *param0)
{
    UnkClass_ov66_02241BD8 &v0 = Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc26().UnkClass_ov66_02241C44_InlineFunc1();

    if (!v0.UnkClass_ov66_02241BD8_InlineFunc4()) {
        return TRUE;
    }

    const UnkClass_ov66_02241BD8::UnkClass_ov66_02241BD8_SubStruct2 &v1 = v0.UnkClass_ov66_02241BD8_InlineFunc3();

    ov66_02237348(Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc3(), PPW_LOBBY_CHANNEL_KIND_MAIN, PPW_LOBBY_CHANNEL_KEY_USER, (u8 *)ov66_022364B0(v1.unk_00), v1.unk_00.size());

    return TRUE;
}

static BOOL ov66_022386D8(void *param0)
{
    UnkClass_ov66_02241BD8 &v0 = Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc26().UnkClass_ov66_02241C44_InlineFunc1();

    if (!v0.UnkClass_ov66_02241BD8_InlineFunc8()) {
        return TRUE;
    }

    const UnkClass_ov66_02241BD8::UnkClass_ov66_02241BD8_SubStruct1 &v1 = v0.UnkClass_ov66_02241BD8_InlineFunc7();

    ov66_02237348(Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc3(), PPW_LOBBY_CHANNEL_KIND_MAIN, PPW_LOBBY_CHANNEL_KEY_SYSTEM, (u8 *)&v1, sizeof(v1));

    return TRUE;
}

static BOOL ov66_02238728(void *param0)
{
    if (!Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc14()) {
        return FALSE;
    }

    ov66_02237170(Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc3(), PPW_LOBBY_CHANNEL_KIND_MAIN, 1, UnkClass_ov66_02241184::UnkEnum_ov66_02241184_0, 1, (u8 *)&Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc15(), sizeof(PPW_LobbyRecruitInfo));

    return TRUE;
}

static BOOL ov66_02238784(void *param0)
{
    DWCi_LobbyGetChannelModeAsync(Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc22().ov66_02235FC8().c_str(), ov66_0223A6F4, NULL);

    return TRUE;
}

static BOOL ov66_022387DC(void *param0)
{
    if (Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc28().UnkClass_ov66_0223CA1C_InlineFunc4()) {
        return FALSE;
    }

    DWCi_LobbyGetChannelDataAsync(Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc22().ov66_02235FC8().c_str(), PPW_LOBBY_INVALID_USER_ID, PPW_LOBBY_CHANNEL_KEY_CHANNEL_TIME, ov66_0223A750, NULL);

    return TRUE;
}

static BOOL ov66_02238858(void *param0)
{
    if (Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc28().UnkClass_ov66_0223CA1C_InlineFunc3()) {
        return FALSE;
    }

    DWCi_LobbyGetChannelDataAsync(Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc22().ov66_02235FC8().c_str(), PPW_LOBBY_INVALID_USER_ID, PPW_LOBBY_CHANNEL_KEY_CHANNEL_LOBBY, ov66_0223A860, NULL);

    return TRUE;
}

static PPW_LOBBY_STATS_RESULT ov66_022388E0(u32 param0)
{
    switch (param0) {
    case ENC_SERVER_RESPONSE_CODE_OK:
        return PPW_LOBBY_STATS_RESULT_SUCCESS;
    case ENC_SERVER_RESPONSE_CODE_INVALID_PARAM:
        return PPW_LOBBY_STATS_RESULT_INVALID_PARAM;
    case ENC_SERVER_RESPONSE_CODE_INTERNAL_ERROR:
    case ENC_SERVER_RESPONSE_CODE_DATABASE_ERROR:
    case ENC_SERVER_RESPONSE_CODE_MAINTENANCE:
    case ENC_SERVER_RESPONSE_CODE_UNKNOWN_ERROR:
        return PPW_LOBBY_STATS_RESULT_SERVER_ERROR;
    default:
        return PPW_LOBBY_STATS_RESULT_SERVER_ERROR;
    }
}

static PPW_LOBBY_STATS_RESULT ov66_02238938(BOOL param0, const u8 *param1, u32 param2, const u8 **param3, u32 *param4)
{
    PPW_LOBBY_STATS_RESULT v0 = PPW_LOBBY_STATS_RESULT_SUCCESS;
    *param3 = NULL;
    *param4 = 0;

    if (!param0) {
        return PPW_LOBBY_STATS_RESULT_SERVER_ERROR;
    }

    if (param2 < sizeof(u32)) {
        return PPW_LOBBY_STATS_RESULT_SERVER_ERROR;
    }

    u32 v1 = (u32)*param1;
    v0 = ov66_022388E0(v1);
    if (v0 == PPW_LOBBY_STATS_RESULT_SERVER_ERROR) {
        return v0;
    } else if (v0 == PPW_LOBBY_STATS_RESULT_INVALID_PARAM) {
        return v0;
    }

    *param3 = param1 + sizeof(u32);
    *param4 = param2 - sizeof(u32);

    return v0;
}

static void ov66_0223899C(BOOL param0, const u8 *param1, u32 param2, void *param3)
{
    if (!Unk_ov66_0225B6C4) {
        return;
    }
    if (Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() == PPW_LOBBY_STATE_CLOSING) {
        return;
    }

    const u8 *v0 = NULL;
    u32 v1 = 0;
    PPW_LOBBY_STATS_RESULT v2 = ov66_02238938(param0, param1, param2, &v0, &v1);

    if (v2 == PPW_LOBBY_STATS_RESULT_SUCCESS && v1 != sizeof(UnkStruct_ov66_0222E71C)) {
        v2 = PPW_LOBBY_STATS_RESULT_SERVER_ERROR;
    }

    if (v2 == PPW_LOBBY_STATS_RESULT_SUCCESS) {
        PPW_LobbyUpdateMyProfile(v0, v1, FALSE);
    }

    Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc2().lobbyCheckProfileCallback(v2, v0, v1);

    if (v2 != PPW_LOBBY_STATS_RESULT_SUCCESS) {
        Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc6(PPW_LOBBY_ERROR_STATS_CHECKPROFILE);
        return;
    }

    EncCommonRequest v3;
    UnkClass_ov66_0225B6D4::UnkClass_ov66_0225B6D4_InlineFunc3(Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc4(), Unk_ov66_02258E64, Unk_ov66_02258E68, Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc3(), (u8 *)&v3, sizeof(v3), 3, ov66_02238C7C, NULL, TRUE);
}

static void ov66_02238C7C(BOOL param0, const u8 *param1, u32 param2, void *param3)
{
    if (!Unk_ov66_0225B6C4) {
        return;
    }
    if (Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() == PPW_LOBBY_STATE_CLOSING) {
        return;
    }

    const u8 *v0 = NULL;
    u32 v1 = 0;
    PPW_LOBBY_STATS_RESULT v2 = ov66_02238938(param0, param1, param2, &v0, &v1);

    if (v2 == PPW_LOBBY_STATS_RESULT_SUCCESS) {
        if (!Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc28().ov66_0223EB80(v0, v1)) {
            v2 = PPW_LOBBY_STATS_RESULT_SERVER_ERROR;
        }
    }

    BOOL v3 = Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc2().lobbyNotifyScheduleCallback(v2, (PPW_LobbySchedule *)v0);

    if (v2 != PPW_LOBBY_STATS_RESULT_SUCCESS) {
        Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc6(PPW_LOBBY_ERROR_STATS_SCHEDULE);
        return;
    }

    if (v3) {
        Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc28().ov66_0223CB84(v0, v1);
    }

    const UnkClass_ov66_02241BD8::UnkClass_ov66_02241BD8_SubStruct2 &v4 = Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc26().UnkClass_ov66_02241C44_InlineFunc1().UnkClass_ov66_02241BD8_InlineFunc2();
    const UnkStruct_ov66_0222E71C *v5 = (const UnkStruct_ov66_0222E71C *)ov66_022364B0(v4.unk_00);

    struct UnkStruct_ov66_02238C7C {
        EncCommonRequest unk_00;
        u32 unk_14;
    } v6 = {
        EncCommonRequest(),
        v5->unk_04
    };
    ;

    UnkClass_ov66_0225B6D4::UnkClass_ov66_0225B6D4_InlineFunc3(Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc4(), Unk_ov66_02258E64, Unk_ov66_02258E6C, Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc3(), (u8 *)&v6, sizeof(v6), 3, ov66_02239010, NULL, TRUE);
}

static void ov66_02239010(BOOL param0, const u8 *param1, u32 param2, void *param3)
{
    if (!Unk_ov66_0225B6C4) {
        return;
    }
    if (Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() == PPW_LOBBY_STATE_CLOSING) {
        return;
    }

    const u8 *v0 = NULL;
    u32 v1 = 0;
    PPW_LOBBY_STATS_RESULT v2 = ov66_02238938(param0, param1, param2, &v0, &v1);

    if (!Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc28().ov66_0223ED8C(v0, v1)) {
        v2 = PPW_LOBBY_STATS_RESULT_SERVER_ERROR;
    }

    if (v2 != PPW_LOBBY_STATS_RESULT_SUCCESS) {
        Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc6(PPW_LOBBY_ERROR_STATS_VIP);
        return;
    }

    Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc28().ov66_0223EBAC(v0, v1);

    Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc2().lobbyGetVipCallback(v2, (PPW_LobbyVipRecord *)v0, v1 / sizeof(PPW_LobbyVipRecord));

    EncCommonRequest v3;
    UnkClass_ov66_0225B6D4::UnkClass_ov66_0225B6D4_InlineFunc3(Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc4(), Unk_ov66_02258E64, Unk_ov66_02258E60, Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc3(), (u8 *)&v3, sizeof(v3), 3, ov66_02239304, NULL, TRUE);
}

static void ov66_02239304(BOOL param0, const u8 *param1, u32 param2, void *param3)
{
    if (!Unk_ov66_0225B6C4) {
        return;
    }
    if (Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() == PPW_LOBBY_STATE_CLOSING) {
        return;
    }

    const u8 *v0 = NULL;
    u32 v1 = 0;
    PPW_LOBBY_STATS_RESULT v2 = ov66_02238938(param0, param1, param2, &v0, &v1);

    if (v1 != sizeof(PPW_LobbyQuestionnaire)) {
        v2 = PPW_LOBBY_STATS_RESULT_SERVER_ERROR;
    }

    if (v2 != PPW_LOBBY_STATS_RESULT_SUCCESS) {
        Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc6(PPW_LOBBY_ERROR_STATS_QUESTIONNAIRE);
        return;
    }

    Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc28().ov66_0223EE0C((PPW_LobbyQuestionnaire *)v0);

    Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc2().lobbyGetQuestionnaireCallback(v2, (PPW_LobbyQuestionnaire *)v0);

    Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc28().UnkClass_ov66_0223CA1C_InlineFunc0();
}

static void ov66_022393C0(BOOL param0, const u8 *param1, u32 param2, void *param3)
{
    if (!Unk_ov66_0225B6C4) {
        return;
    }
    if (Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc0() == PPW_LOBBY_STATE_CLOSING) {
        return;
    }

    Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc18(FALSE);
    Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc2().lobbySubmitQuestionnaireCallback(param0 ? PPW_LOBBY_STATS_RESULT_SUCCESS : PPW_LOBBY_STATS_RESULT_SERVER_ERROR);
}

static void ov66_02239408(BOOL param0, DWCi_LOBBY_ENTER_RESULT param1, const char *param2, void *param3)
{
    PPW_LOBBY_CHANNEL_KIND v0 = (PPW_LOBBY_CHANNEL_KIND)(u32)param3;
    if (v0 == PPW_LOBBY_CHANNEL_KIND_INVALID) {
        return;
    }

    if (param0) {
        Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc11();

        Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc26().UnkClass_ov66_02241C44_InlineFunc1().UnkClass_ov66_02241BD8_InlineFunc5(UnkClass_ov66_02241BD8::UnkClass_ov66_02241BD8_SubStruct1());

        DWCi_LobbyEnumUsersAsync(param2, ov66_0223A5A4, (void *)v0);

        Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc27().UnkClass_ov66_02243B64_Sub1_InlineFunc0(PPW_LOBBY_TIMER_ID_SYSTEM_CHANNEL_DATA, PPW_LOBBY_TIMER_INTERVAL_SYSTEM_CHANNEL_DATA, ov66_022386D8, NULL, TRUE);
        Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc27().UnkClass_ov66_02243B64_Sub1_InlineFunc0(PPW_LOBBY_TIMER_ID_USER_CHANNEL_DATA, PPW_LOBBY_TIMER_INTERVAL_USER_CHANNEL_DATA, ov66_02238678, NULL, TRUE);

        Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc27().UnkClass_ov66_02243B64_Sub1_InlineFunc0(PPW_LOBBY_TIMER_ID_CHECK_MAINCHANNEL_SYSTEMDATA, PPW_LOBBY_TIMER_INTERVAL_CHECK_MAINCHANNEL_SYSTEMDATA, ov66_022387DC, NULL, TRUE);

        Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc27().UnkClass_ov66_02243B64_Sub1_InlineFunc0(PPW_LOBBY_TIMER_ID_CHECK_MAINCHANNEL_MODE, PPW_LOBBY_TIMER_INTERVAL_CHECK_MAINCHANNEL_MODE, ov66_02238784, NULL, TRUE);

        Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc27().UnkClass_ov66_02243B64_Sub1_InlineFunc0(PPW_LOBBY_TIMER_ID_CHECK_LOBBY_INFO, PPW_LOBBY_TIMER_INTERVAL_CHECK_LOBBY_INFO, ov66_02238858, NULL, TRUE);

        const UnkClass_ov66_02241BD8 &v1 = Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc26().UnkClass_ov66_02241C44_InlineFunc1();
        const UnkClass_ov66_02241BD8::UnkClass_ov66_02241BD8_SubStruct1 &v2 = v1.UnkClass_ov66_02241BD8_InlineFunc6();
        const UnkClass_ov66_02241BD8::UnkClass_ov66_02241BD8_SubStruct2 &v3 = v1.UnkClass_ov66_02241BD8_InlineFunc2();
        PPW_LobbySystemProfile v4 = v2.UnkClass_ov66_02241BD8_SubStruct1_InlineFunc0();
        Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc2().lobbyPlayerConnectedCallback(v1.UnkClass_ov66_02241BD8_InlineFunc12(), &v4, ov66_022364B0(v3.unk_00), v3.unk_00.size());
    } else {
        Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc22().UnkClass_ov66_02235FC8_InlineFunc7();

        if (Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc10()) {
            Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc1(PPW_LOBBY_STATE_DOWNLOAD_WAIT);
        } else {
            Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc6(PPW_LOBBY_ERROR_SESSION);
        }
    }
}

static void ov66_022399A8(BOOL param0, DWCi_LOBBY_ENTER_RESULT param1, const char *param2, void *param3)
{
    PPW_LOBBY_CHANNEL_KIND v0 = (PPW_LOBBY_CHANNEL_KIND)(u32)param3;
    if (v0 == PPW_LOBBY_CHANNEL_KIND_INVALID) {
        return;
    }

    if (param0) {
        const DWCi_LobbyChannelMode *v1 = inline_ov66_02235BA0(v0);
        if (!v1) {
            Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc6(PPW_LOBBY_ERROR_UNKNOWN);
        }
        DWCi_LobbySetChannelMode(param2, v1);

        UnkClass_ov66_02241BD8 &v2 = Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc26().UnkClass_ov66_02241C44_InlineFunc1();
        UnkClass_ov66_02241BD8::UnkClass_ov66_02241BD8_SubStruct1 v3 = v2.UnkClass_ov66_02241BD8_InlineFunc7();
        v3.unk_00 = v0;
        v2.UnkClass_ov66_02241BD8_InlineFunc5(v3);
    } else {
        Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc23().UnkClass_ov66_02235FC8_InlineFunc7();
    }

    Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc2().lobbyJoinChannelCallback(param0, (PPW_LOBBY_CHANNEL_KIND)(u32)param3);
}

static void ov66_02239B54(const char *param0, s32 param1, void *param2)
{
    PPW_LOBBY_CHANNEL_KIND v0 = Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc21().UnkClass_ov66_02236348_InlineFunc2(param0);
    if (v0 == PPW_LOBBY_CHANNEL_KIND_INVALID) {
        return;
    }

    if (v0 == PPW_LOBBY_CHANNEL_KIND_MAIN) {
        Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc26().ov66_02241C44(param1);
    } else {
        UnkClass_ov66_02241BD8 *v1 = Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc26().ov66_02241DCC(param1);
        if (!v1) {
            Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc26().ov66_02241C44(param1);
            v1 = Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc26().ov66_02241DCC(param1);
        }
        UnkClass_ov66_02241BD8::UnkClass_ov66_02241BD8_SubStruct1 v2 = v1->UnkClass_ov66_02241BD8_InlineFunc7();
        v2.unk_00 = v0;
        v1->UnkClass_ov66_02241BD8_InlineFunc5(v2);

        const UnkClass_ov66_02241BD8::UnkClass_ov66_02241BD8_SubStruct1 &v3 = v1->UnkClass_ov66_02241BD8_InlineFunc7();
        PPW_LobbySystemProfile v4 = v3.UnkClass_ov66_02241BD8_SubStruct1_InlineFunc0();

        if (v1->UnkClass_ov66_02241BD8_InlineFunc10()) {
            Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc2().lobbySystemProfileUpdatedCallback(param1, &v4);
        }
    }
}

static void ov66_02239D60(const char *param0, s32 param1, void *param2)
{
    PPW_LOBBY_CHANNEL_KIND v0 = Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc21().UnkClass_ov66_02236348_InlineFunc2(param0);
    if (v0 == PPW_LOBBY_CHANNEL_KIND_INVALID) {
        return;
    }

    if (v0 == PPW_LOBBY_CHANNEL_KIND_MAIN) {
        UnkClass_ov66_02241BD8 *v1 = Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc26().ov66_02241DCC(param1);
        if (!v1 || !v1->UnkClass_ov66_02241BD8_InlineFunc10()) {
            return;
        }

        Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc2().lobbyPlayerDisconnectedCallback(param1);
        Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc26().ov66_02241D40(param1);
    } else {
        UnkClass_ov66_02241BD8 *v1 = Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc26().ov66_02241DCC(param1);
        if (!v1) {
            return;
        }

        UnkClass_ov66_02241BD8::UnkClass_ov66_02241BD8_SubStruct1 v2 = v1->UnkClass_ov66_02241BD8_InlineFunc7();
        v2.unk_00 = PPW_LOBBY_CHANNEL_KIND_INVALID;
        v1->UnkClass_ov66_02241BD8_InlineFunc5(v2);

        const UnkClass_ov66_02241BD8::UnkClass_ov66_02241BD8_SubStruct1 &v3 = v1->UnkClass_ov66_02241BD8_InlineFunc7();
        PPW_LobbySystemProfile v4 = v3.UnkClass_ov66_02241BD8_SubStruct1_InlineFunc0();

        if (v1->UnkClass_ov66_02241BD8_InlineFunc10()) {
            Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc2().lobbySystemProfileUpdatedCallback(param1, &v4);
        }
    }
}

static void ov66_02239F84(s32 param0, const char *param1, void *param2)
{
    ov66_02239FA4(NULL, param0, param1, param2);
}

static void ov66_02239FA4(const char *param0, s32 param1, const char *param2, void *param3)
{
    PPW_LOBBY_CHANNEL_KIND v0 = PPW_LOBBY_CHANNEL_KIND_INVALID;
    if (param0) {
        v0 = Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc21().UnkClass_ov66_02236348_InlineFunc2(param0);
    }

    if (param0 != NULL && v0 == PPW_LOBBY_CHANNEL_KIND_INVALID) {
        return;
    }

    UnkClass_ov66_02241184::UnkClass_ov66_02241184_SubStruct v1;
    if (!UnkClass_ov66_02241184::ov66_02241184(param2, v1)) {
        return;
    }

    switch (v1.unk_0C) {
    case UnkClass_ov66_02241184::UnkEnum_ov66_02241184_1:
        if (!Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc26().UnkClass_ov66_02241C44_InlineFunc0(param1)) {
            return;
        }

        switch (v1.unk_08) {
        case 1:
            Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc2().lobbyBinaryMessageReceivedCallback(param1, v0, v1.unk_10, (u8 *)ov66_022364B0(v1.unk_18), v1.unk_18.size());
            break;
        case 0:
            Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc2().lobbyStringMessageReceivedCallback(param1, v0, v1.unk_10, (char *)ov66_022364B0(v1.unk_18));
            break;
        default:
            break;
        }

        break;
    case UnkClass_ov66_02241184::UnkEnum_ov66_02241184_0:
        ov66_02238460(v1, param1, v0, (u8 *)ov66_022364B0(v1.unk_18), v1.unk_18.size());
        break;
    default:
        break;
    }
}

static void ov66_0223A1C8(u32 param0, void *param1)
{
    Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc2().lobbyExcessFloodCallback(param0);
}

static void ov66_0223A1E4(const char *param0, s32 param1, const char *param2, const char *param3, void *param4)
{
    ov66_02237D24(TRUE, TRUE, param0, param1, param2, param3, NULL);
}

static void ov66_0223A21C(BOOL param0, const char *param1, s32 param2, const char *param3, const char *param4, void *param5)
{
    ov66_02237D24(param0, FALSE, param1, param2, param3, param4, param5);
}

static void ov66_0223A250(BOOL param0, s32 param1, const char **param2, const char **param3, const s32 *param4, void *param5)
{
    if (!param0) {
        return;
    }

    for (int i = 0; i < param1; i++) {
        if (param4[i] < PPW_LOBBY_MAX_PLAYER_NUM_MAIN) {
            std::vector<PPWString, PPW_Allocator<PPWString> > v0 = ov66_0223A3B0<PPWString>(param2[i], DWCi_LOBBY_CHANNEL_NAME_SEPARATOR);
            if (v0.size() < 2) {
                continue;
            }

            Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc12(v0[1].c_str());
            Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc9(FALSE);
            Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc1(PPW_LOBBY_STATE_ENTERMAINCHANNEL);
            return;
        }
    }

    Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc12(ov66_02237A88());
    Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc9(TRUE);
    Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc1(PPW_LOBBY_STATE_ENTERMAINCHANNEL);
}

static void ov66_0223A5A4(BOOL param0, const char *param1, s32 param2, const s32 *param3, void *param4)
{
    if (!param0) {
        return;
    }

    PPW_LOBBY_CHANNEL_KIND v0 = Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc21().UnkClass_ov66_02236348_InlineFunc2(param1);
    if (v0 == PPW_LOBBY_CHANNEL_KIND_INVALID) {
        return;
    }

    if (v0 == PPW_LOBBY_CHANNEL_KIND_MAIN) {
        for (int i = 0; i < param2; i++) {
            if (param3[i] == Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc3()) {
                continue;
            }
            Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc26().ov66_02241C44(param3[i]);
            DWCi_LobbyGetChannelDataAsync(param1, param3[i], PPW_LOBBY_CHANNEL_KEY_USER, ov66_0223A21C, NULL);
            DWCi_LobbyGetChannelDataAsync(param1, param3[i], PPW_LOBBY_CHANNEL_KEY_SYSTEM, ov66_0223A21C, NULL);
        }

        Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc22().UnkClass_ov66_02235FC8_InlineFunc2();
    }
}

static void ov66_0223A6F4(BOOL param0, const char *param1, const DWCi_LobbyChannelMode *param2, void *param3)
{
    if (!param0) {
        return;
    }

    if (param2->limit == PPW_LOBBY_MAX_PLAYER_NUM_MAIN) {
        Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc22().UnkClass_ov66_02235FC8_InlineFunc4();
        Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc27().UnkClass_ov66_02243B64_Sub1_InlineFunc2(PPW_LOBBY_TIMER_ID_CHECK_MAINCHANNEL_MODE);
    } else {
        DWCi_LobbySetChannelMode(param1, &Unk_ov66_02258C6C);
    }
}

static void ov66_0223A750(BOOL param0, const char *param1, s32 param2, const char *param3, const char *param4, void *param5)
{
    if (!param0) {
        return;
    }

    std::vector<u8, PPW_Allocator<u8> > v0;
    BOOL v1 = ov66_02237EF8(param4, v0);
    if (!v1 || v0.size() != sizeof(UnkClass_ov66_0223CA1C::UnkClass_ov66_0223CA1C_SubStruct1)) {
        UnkClass_ov66_0223CA1C::UnkClass_ov66_0223CA1C_SubStruct1 v2 = Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc28().UnkClass_ov66_0223CA1C_InlineFunc7();
        ov66_02237348(PPW_LOBBY_INVALID_USER_ID, PPW_LOBBY_CHANNEL_KIND_MAIN, PPW_LOBBY_CHANNEL_KEY_CHANNEL_TIME, (u8 *)&v2, sizeof(v2));
        return;
    } else {
        UnkClass_ov66_0223CA1C::UnkClass_ov66_0223CA1C_SubStruct1 *v2 = (UnkClass_ov66_0223CA1C::UnkClass_ov66_0223CA1C_SubStruct1 *)ov66_022364B0(v0);
        Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc28().UnkClass_ov66_0223CA1C_InlineFunc5(*v2);
        Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc27().UnkClass_ov66_02243B64_Sub1_InlineFunc2(PPW_LOBBY_TIMER_ID_CHECK_MAINCHANNEL_SYSTEMDATA);
    }
}

static void ov66_0223A860(BOOL param0, const char *param1, s32 param2, const char *param3, const char *param4, void *param5)
{
    if (!param0) {
        return;
    }

    std::vector<u8, PPW_Allocator<u8> > v0;
    BOOL v1 = ov66_02237EF8(param4, v0);

    if (!v1 || v0.empty() || !Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc28().ov66_0223CB84(ov66_022364B0(v0), v0.size())) {
        std::vector<u8, PPW_Allocator<u8> > v2 = Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc28().ov66_0223CB2C();
        ov66_02237348(PPW_LOBBY_INVALID_USER_ID, PPW_LOBBY_CHANNEL_KIND_MAIN, PPW_LOBBY_CHANNEL_KEY_CHANNEL_LOBBY, ov66_022364B0(v2), v2.size());
        return;
    } else {
        Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc28().UnkClass_ov66_0223CA1C_InlineFunc2();
        Unk_ov66_0225B6C4->UnkClass_ov66_0225B6C4_InlineFunc27().UnkClass_ov66_02243B64_Sub1_InlineFunc2(PPW_LOBBY_TIMER_ID_CHECK_LOBBY_INFO);
    }
}

static void ov66_0223A958(const char *param0, const char *param1, void *param2)
{
    return;
}
