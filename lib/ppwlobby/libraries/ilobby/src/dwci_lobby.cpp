#include <lobby/dwci_lobby.h>

// include order necessary to match
// clang-format off
#include "ilobby/dwci_lobbybase.h"
#include "ilobby/dwci_lobbydata.h"
#include "ilobby/dwci_lobbycallback.h"
#include "ilobby/dwci_lobbynewhandler.h"
// clang-format on

static UnkClass_ov66_02243B64 *Unk_ov66_0225B6DC = NULL;

static void ov66_02242C08(CHAT param0, const char *param1, void *param2)
{
    if (!Unk_ov66_0225B6DC) {
        return;
    }
    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_ERROR) {
        return;
    }
}

static void ov66_02242C24(CHAT param0, const char *param1, void *param2)
{
    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_ERROR) {
        return;
    }

    Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc18().UnkClass_ov66_02243B64_Sub1_InlineFunc2(0);

    if (Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_CLOSING) {
        if (Unk_ov66_0225B6DC) {
            delete Unk_ov66_0225B6DC;
            Unk_ov66_0225B6DC = NULL;
        }
    } else {
        Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc13(DWCi_LOBBY_ERROR_SESSION);
        Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc16();
    }
}

static void ov66_02242CE0(CHAT param0, const char *param1, const char *param2, int param3, void *param4)
{
    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_ERROR) {
        return;
    }

    if (inline_ov66_0224154C(param1, "SERVER", 6) == 0) {
        if (inline_ov66_0224154C(param2, "Excess Flood", 12) != 0) {
            return;
        }

        std::vector<PPWString, PPW_Allocator<PPWString> > v0 = ov66_02242F08<PPWString>(param2, " :");
        if (v0.empty()) {
            return;
        }

        u32 v1 = (u32)atoi(v0.back().c_str());
        if (v1 == 0) {
            return;
        }

        Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc11().lobbyExcessFloodCallback(v1, param4);
        return;
    }

    if (param3 != CHAT_UTM) {
        return;
    }

    s32 v2 = Unk_ov66_0225B6DC->ov66_022474F4(param1);
    if (v2 != DWC_LOBBY_INVALID_USER_ID) {
        Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc11().lobbyUserMessageReceivedCallback(v2, param2, param4);
    }
}

static void ov66_022430D0(CHAT param0, const char *param1, const char *param2, void *param3)
{
    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_ERROR) {
        return;
    }
}

static void ov66_022430EC(CHAT param0, const char *param1, const char *param2, const char *param3, int param4, void *param5)
{
    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_ERROR) {
        return;
    }

    if (param4 != CHAT_UTM) {
        return;
    }

    s32 v0 = Unk_ov66_0225B6DC->ov66_022474F4(param2);

    const DWCi_LobbyChannelCallbacks *v1 = Unk_ov66_0225B6DC->ov66_02246B38(param1);

    v1->lobbyChannelMessageReceivedCallback(Unk_ov66_0225B6DC->ov66_022467D4(param1).c_str(), v0, param3, v1->param);
}

static void ov66_022431E0(CHAT param0, const char *param1, const char *param2, const char *param3, void *param4)
{
    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_ERROR) {
        return;
    }

    Unk_ov66_0225B6DC->ov66_02247258(param1);
}

static void ov66_02243234(CHAT param0, const char *param1, const char *param2, int param3, void *param4)
{
    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_ERROR) {
        return;
    }

    s32 v0 = Unk_ov66_0225B6DC->ov66_02247704(param1);

    if (v0 != 0 && chatGetChannelNumUsers(Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc0(), param1) > v0) {
        return;
    }

    PPWString v1 = Unk_ov66_0225B6DC->ov66_02247578(UnkClass_ov66_02243B64::ov66_02246928(param2));

    if (Unk_ov66_0225B6DC->ov66_0224717C(v1, param1)) {
        const DWCi_LobbyChannelCallbacks *v2 = Unk_ov66_0225B6DC->ov66_02246B38(param1);

        v2->lobbyPlayerDisconnectedCallback(Unk_ov66_0225B6DC->ov66_022467D4(param1).c_str(), UnkClass_ov66_02243B64::ov66_02246928(param2), v2->param);
    }

    s32 v3 = Unk_ov66_0225B6DC->ov66_02246C2C(param2, param1);

    if (v3 == DWC_LOBBY_INVALID_USER_ID) {
        return;
    }

    if (Unk_ov66_0225B6DC->ov66_02247690(param1)) {
        const DWCi_LobbyChannelCallbacks *v4 = Unk_ov66_0225B6DC->ov66_02246B38(param1);

        v4->lobbyPlayerConnectedCallback(Unk_ov66_0225B6DC->ov66_022467D4(param1).c_str(), v3, v4->param);
    }
}

static void ov66_022434D0(CHAT param0, const char *param1, const char *param2, int param3, const char *param4, const char *param5, void *param6)
{
    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_ERROR) {
        return;
    }

    s32 v0 = Unk_ov66_0225B6DC->ov66_022474F4(param2);

    if (v0 == DWC_LOBBY_INVALID_USER_ID) {
        return;
    }

    const DWCi_LobbyChannelCallbacks *v1 = Unk_ov66_0225B6DC->ov66_02246B38(param1);

    v1->lobbyPlayerDisconnectedCallback(Unk_ov66_0225B6DC->ov66_022467D4(param1).c_str(), v0, v1->param);

    Unk_ov66_0225B6DC->ov66_0224717C(param2, param1);
}

static void ov66_022435FC(CHAT param0, const char *param1, const char *param2, const char *param3, void *param4)
{
    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_ERROR) {
        return;
    }

    Unk_ov66_0225B6DC->ov66_022475DC(param2, param3);
}

static void ov66_02243670(CHAT param0, const char *param1, const char *param2, int param3, void *param4)
{
    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_ERROR) {
        return;
    }

    PPWString unused;
    switch (param3) {
    case CHAT_NORMAL:
        unused = "normal";
        break;
    case CHAT_VOICE:
        unused = "voice";
        break;
    case CHAT_OP:
        unused = "ops";
        break;
    case (CHAT_VOICE | CHAT_OP):
        unused = "voice+ops";
        break;
    default:
        unused = "invalid";
        break;
    }
}

static void ov66_02243744(CHAT param0, const char *param1, const char *param2, void *param3)
{
    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_ERROR) {
        return;
    }

    const DWCi_LobbyChannelCallbacks *v0 = Unk_ov66_0225B6DC->ov66_02246B38(param1);

    v0->lobbyTopicChangedCallback(Unk_ov66_0225B6DC->ov66_022467D4(param1).c_str(), param2, v0->param);
}

static void ov66_022437FC(CHAT param0, const char *param1, CHATChannelMode *param2, void *param3)
{
    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_ERROR) {
        return;
    }
}

static void ov66_02243818(CHAT param0, const char *param1, void *param2)
{
    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_ERROR) {
        return;
    }
}

static void ov66_02243834(CHAT param0, CHATBool param1, int param2, void *param3)
{
    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_ERROR) {
        return;
    }

    Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc18().UnkClass_ov66_02243B64_Sub1_InlineFunc2(0);

    if (param1 == CHATFalse) {
        Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc13(DWCi_LOBBY_ERROR_SESSION);
        Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc16();
    } else {
        Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc3(DWCi_LOBBY_STATE_CONNECTINGWAIT);
    }
}

static void ov66_022438CC(CHAT param0, unsigned int param1, char param2[128], void *param3)
{
    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_ERROR) {
        return;
    }

    strncpy(param2, Unk_ov66_0225B6DC->ov66_02243934().c_str(), 128 - 1);
}

static void ov66_02243944(CHAT param0, int param1, const char *param2, int param3, const char **param4, void *param5)
{
    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_ERROR) {
        return;
    }

    if (param1 == CHAT_IN_USE) {
        Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc5(UnkClass_ov66_02243B64::ov66_022468DC(Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc4()));
        chatRetryWithNick(param0, Unk_ov66_0225B6DC->ov66_02243B64().c_str());
    } else if (param1 == CHAT_INVALID) {
        Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc5(UnkClass_ov66_02243B64::ov66_022468DC(Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc4()));
        chatRetryWithNick(param0, Unk_ov66_0225B6DC->ov66_02243B64().c_str());
    } else if ((param1 == CHAT_UNIQUENICK_EXPIRED) || (param1 == CHAT_NO_UNIQUENICK)) {
        Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc5(UnkClass_ov66_02243B64::ov66_022468DC(Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc4()));
        chatRegisterUniqueNick(param0, 2, Unk_ov66_0225B6DC->ov66_02243B64().c_str(), "");
    } else if (param1 == CHAT_INVALID_UNIQUENICK) {
        return;
    } else if (param1 == CHAT_NICK_TOO_LONG) {
        Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc5(UnkClass_ov66_02243B64::ov66_022468DC(Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc4()));
        chatRetryWithNick(param0, Unk_ov66_0225B6DC->ov66_02243B64().c_str());
    }
}

static void ov66_02243B74(CHAT param0, CHATBool param1, int param2, const char **param3, const char **param4, int *param5, void *param6)
{
    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_ERROR) {
        return;
    }

    std::vector<char *, PPW_Allocator<char *> > v0 = Unk_ov66_0225B6DC->ov66_0224680C(param2, param3);

    UnkClass_ov66_02243B74<DWCi_LobbyEnumChannelsCallback> *v1 = Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc17().UnkClass_ov66_0224640C_InlineFunc1<DWCi_LobbyEnumChannelsCallback>((u32)param6);
    v1->UnkClass_ov66_02243B74_InlineFunc0()(param1 == CHATTrue, param2, (const char **)ov66_022364B0(v0), param4, (s32 *)param5, v1->ov66_02243C74());
    Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc17().ov66_0224640C((u32)param6);
}

static void ov66_02243D28(CHAT param0, CHATBool param1, int param2, const char *param3, const char *param4, int param5, void *param6)
{
    if (!param1) {
        return;
    }
}

static void ov66_02243D30(CHAT param0, CHATBool param1, const char *param2, int param3, const char **param4, int *param5, void *param6)
{
    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_ERROR) {
        return;
    }

    std::vector<s32, PPW_Allocator<s32> > v0;

    if (param3 != 0) {
        v0 = Unk_ov66_0225B6DC->ov66_02246DF0(param3, param4, param2);
    }

    UnkClass_ov66_02243B74<DWCi_LobbyEnumUsersCallback> *v1 = Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc17().UnkClass_ov66_0224640C_InlineFunc1<DWCi_LobbyEnumUsersCallback>((u32)param6);
    v1->UnkClass_ov66_02243B74_InlineFunc0()(param1 == CHATTrue, Unk_ov66_0225B6DC->ov66_022467D4(param2).c_str(), (s32)v0.size(), ov66_022364B0(v0), v1->ov66_02243C74());
    Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc17().ov66_0224640C((u32)param6);
}

static void ov66_02243F64(CHAT param0, CHATBool param1, const char *param2, int param3, const char **param4, int *param5, void *param6)
{
    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_ERROR) {
        return;
    }

    if (param1 == CHATTrue) {
        Unk_ov66_0225B6DC->ov66_02246DF0(param3, param4, param2);
    }

    Unk_ov66_0225B6DC->ov66_022476C8(param2);

    const UnkClass_ov66_02243B74<DWCi_LobbyJoinChannelCallback> *v0 = Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc17().UnkClass_ov66_0224640C_InlineFunc1<DWCi_LobbyJoinChannelCallback>((u32)param6);
    v0->UnkClass_ov66_02243B74_InlineFunc0()(param1 == CHATTrue, DWCi_LOBBY_ENTER_RESULT_SUCCESS, Unk_ov66_0225B6DC->ov66_022467D4(param2).c_str(), v0->ov66_02243C74());
    Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc17().ov66_0224640C((u32)param6);

    if (param1 == CHATFalse) {
        DWCi_LobbyLeaveChannel(Unk_ov66_0225B6DC->ov66_022467D4(param2).c_str());
    }
}

static void ov66_0224413C(CHAT param0, CHATBool param1, CHATEnterResult param2, const char *param3, void *param4)
{
    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_ERROR) {
        return;
    }

    if (param1 == CHATTrue) {
        s32 v0 = Unk_ov66_0225B6DC->ov66_02247704(param3);

        if (v0 != 0) {
            s32 v1 = chatGetChannelNumUsers(Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc0(), param3);

            if (v0 == -1) {
                param1 = CHATFalse;
                param2 = CHATEnterTimedOut;
            } else if (v1 > v0 || v1 == -1) {
                param1 = CHATFalse;
                param2 = CHATChannelIsFull;
            } else {
                chatSetChannelLimit(Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc0(), param3, v0);
            }
        }
    }

    if (param1 == CHATTrue) {
        Unk_ov66_0225B6DC->ov66_02246C2C(Unk_ov66_0225B6DC->ov66_02243B64(), param3);
        chatEnumUsers(param0, param3, ov66_02243F64, param4, CHATFalse);
    } else {
        DWCi_LobbyLeaveChannel(Unk_ov66_0225B6DC->ov66_022467D4(param3).c_str());

        const UnkClass_ov66_02243B74<DWCi_LobbyJoinChannelCallback> *v2 = Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc17().UnkClass_ov66_0224640C_InlineFunc1<DWCi_LobbyJoinChannelCallback>((u32)param4);
        v2->UnkClass_ov66_02243B74_InlineFunc0()(FALSE, (DWCi_LOBBY_ENTER_RESULT)param2, Unk_ov66_0225B6DC->ov66_022467D4(param3).c_str(), v2->ov66_02243C74());
        Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc17().ov66_0224640C((u32)param4);
    }
}

static void ov66_0224439C(CHAT param0, CHATBool param1, const char *param2, const char *param3, int param4, const char **param5, const char **param6, void *param7)
{
    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_ERROR) {
        return;
    }

    if (!param2) {
        return;
    }

    s32 v0;

    if (param3) {
        v0 = Unk_ov66_0225B6DC->ov66_022474F4(param3);
    } else {
        v0 = DWC_LOBBY_INVALID_USER_ID;
    }

    UnkClass_ov66_02243B74<DWCi_LobbyGetChannelDataCallback> *v1 = Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc17().UnkClass_ov66_0224640C_InlineFunc1<DWCi_LobbyGetChannelDataCallback>((u32)param7);

    char *v2 = NULL;
    char *v3 = NULL;
    if (param1 == CHATTrue && param4 > 0) {
        v2 = (char *)param5[0];
        v3 = (char *)param6[0];
    }
    v1->UnkClass_ov66_02243B74_InlineFunc0()(param1 == CHATTrue, Unk_ov66_0225B6DC->ov66_022467D4(param2).c_str(), v0, v2, v3, v1->ov66_02243C74());

    Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc17().ov66_0224640C((u32)param7);
}

static void ov66_02244528(CHAT param0, const char *param1, const char *param2, const char *param3, const char *param4, void *param5)
{
    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_ERROR) {
        return;
    }

    s32 v0;

    if (param2) {
        v0 = Unk_ov66_0225B6DC->ov66_022474F4(param2);
    } else {
        v0 = DWC_LOBBY_INVALID_USER_ID;
    }

    const DWCi_LobbyChannelCallbacks *v1 = Unk_ov66_0225B6DC->ov66_02246B38(param1);

    v1->lobbyBroadcastDataCallback(Unk_ov66_0225B6DC->ov66_022467D4(param1).c_str(), v0, param3, param4, v1->param);
}

static void ov66_02244620(CHAT param0, CHATBool param1, const char *param2, CHATChannelMode *param3, void *param4)
{
    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_ERROR) {
        return;
    }

    if (param1) {
        ov66_022437FC(param0, param2, param3, param4);
    } else {
        return;
    }

    UnkClass_ov66_02243B74<DWCi_LobbyGetChannelModeCallback> *v0 = Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc17().UnkClass_ov66_0224640C_InlineFunc1<DWCi_LobbyGetChannelModeCallback>((u32)param4);
    v0->UnkClass_ov66_02243B74_InlineFunc0()(param1 == CHATTrue, Unk_ov66_0225B6DC->ov66_022467D4(param2).c_str(), (DWCi_LobbyChannelMode *)param3, v0->ov66_02243C74());
    Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc17().ov66_0224640C((u32)param4);
}

static BOOL ov66_02244758(void *param0)
{
    Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc13(DWCi_LOBBY_ERROR_SESSION);

    return FALSE;
}

DWCi_LOBBY_STATE DWCi_LobbyProcess()
{
    if (!Unk_ov66_0225B6DC) {
        return DWCi_LOBBY_STATE_NOTINITIALIZED;
    }

    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_ERROR) {
        return DWCi_LOBBY_STATE_ERROR;
    }

    if (Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc0()) {
        chatThink(Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc0());
    }

    Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc19();

    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_ERROR) {
        return DWCi_LOBBY_STATE_ERROR;
    }

    if (Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc9() >= 3) {
        Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc10();
        Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc13(DWCi_LOBBY_ERROR_SESSION);
        return Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2();
    }

    switch (Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2()) {
    case DWCi_LOBBY_STATE_NOTINITIALIZED:
    case DWCi_LOBBY_STATE_CONNECTING:
        break;
    case DWCi_LOBBY_STATE_CONNECTINGWAIT:
        Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc14();
        break;
    case DWCi_LOBBY_STATE_CONNECTED:
    case DWCi_LOBBY_STATE_CLOSING:
    default:
        break;
    }

    return Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2();
}

DWCi_LOBBY_ERROR DWCi_LobbyGetLastError()
{
    if (!Unk_ov66_0225B6DC) {
        return DWCi_LOBBY_ERROR_NONE;
    }

    return Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc12();
}

s32 DWCi_LobbyToErrorCode(DWCi_LOBBY_ERROR err)
{
    return err + DWCi_LOBBY_ERROR_CODE_BASE;
}

BOOL DWCi_LobbyInChannel(const char *channelName)
{
    if (!Unk_ov66_0225B6DC) {
        return FALSE;
    }

    return chatInChannel(Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc0(), Unk_ov66_0225B6DC->ov66_022467C4(channelName).c_str()) == CHATTrue;
}

DWCi_LOBBY_RESULT DWCi_LobbyInitializePidAsync(const char *gameName, const char *secretKey, DWC_LOBBY_CHANNEL_PREFIX prefix, const DWCi_LobbyGlobalCallbacks *globalCallbacks, s32 pid)
{
    if (Unk_ov66_0225B6DC) {
        return DWCi_LOBBY_RESULT_ERROR_STATE;
    }

    PPWString v0(UnkClass_ov66_02243B64::ov66_022468DC(pid));
    PPWString v1("DWCUser");
    PPWString v2("DWCName");
    CHAT v3 = NULL;

    Unk_ov66_0225B6DC = new UnkClass_ov66_02243B64(gameName, secretKey, prefix, pid, v0, v1, v2, globalCallbacks);
    if (!Unk_ov66_0225B6DC) {
        return DWCi_LOBBY_RESULT_ERROR_ALLOC;
    }

    DWCi_LOBBY_RESULT v4 = DWCi_LOBBY_RESULT_SUCCESS;

    if (!ov66_02246368(Unk_ov66_0225B6DC)) {
        v4 = DWCi_LOBBY_RESULT_ERROR_ALLOC;
        goto ERROR_ALLOC;
    }

    chatGlobalCallbacks gsGlobalCallbacks;
    MI_CpuClear8(&gsGlobalCallbacks, sizeof(chatGlobalCallbacks));
    gsGlobalCallbacks.raw = ov66_02242C08;
    gsGlobalCallbacks.disconnected = ov66_02242C24;
    gsGlobalCallbacks.privateMessage = ov66_02242CE0;
    gsGlobalCallbacks.invited = ov66_022430D0;
    gsGlobalCallbacks.param = globalCallbacks->param;

    v3 = chatConnectSecure((Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc7() + "." + DWCi_LOBBY_SERVER_DOMAIN).c_str(), 6667, Unk_ov66_0225B6DC->ov66_02243B64().c_str(), Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc6().c_str(), Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc7().c_str(), Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc8().c_str(), &gsGlobalCallbacks, ov66_02243944, ov66_022438CC, ov66_02243834, globalCallbacks->param, CHATFalse);
    if (!v3) {
        v4 = DWCi_LOBBY_RESULT_ERROR_SESSION;
        goto ERROR_ALLOC;
    }

    Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc1(v3);
    Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc3(DWCi_LOBBY_STATE_CONNECTING);

    Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc18().UnkClass_ov66_02243B64_Sub1_InlineFunc0(0, 30, ov66_02244758, Unk_ov66_0225B6DC, FALSE);

    return DWCi_LOBBY_RESULT_SUCCESS;

ERROR_ALLOC:
    ov66_022463D8();

    if (Unk_ov66_0225B6DC) {
        delete Unk_ov66_0225B6DC;
        Unk_ov66_0225B6DC = NULL;
    }

    return v4;
}

DWCi_LOBBY_RESULT DWCi_LobbyShutdownAsync()
{
    if (!Unk_ov66_0225B6DC) {
        return DWCi_LOBBY_RESULT_SUCCESS;
    }

    if (Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_CLOSING) {
        return DWCi_LOBBY_RESULT_SUCCESS;
    }

    ov66_022463D8();

    if (Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc15()) {
        chatDisconnect(Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc0());
        if (Unk_ov66_0225B6DC) {
            delete Unk_ov66_0225B6DC;
            Unk_ov66_0225B6DC = NULL;
        }
    } else {
        Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc3(DWCi_LOBBY_STATE_CLOSING);
        chatDisconnect(Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc0());
    }

    return DWCi_LOBBY_RESULT_SUCCESS;
}

DWCi_LOBBY_RESULT DWCi_LobbyJoinChannelLimitAsync(const char *channelName, const char *password, s32 limit, const DWCi_LobbyChannelCallbacks *channelCallbacks, DWCi_LobbyJoinChannelCallback callback, void *param)
{
    if (!Unk_ov66_0225B6DC) {
        return DWCi_LOBBY_RESULT_ERROR_STATE;
    }

    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_ERROR) {
        return DWCi_LOBBY_RESULT_ERROR_CONDITION;
    }

    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() != DWCi_LOBBY_STATE_CONNECTED) {
        return DWCi_LOBBY_RESULT_ERROR_STATE;
    }

    BOOL unused = strlen(channelName) + 1 > DWC_LOBBY_MAX_CHANNEL_NAME_SIZE;

    u32 v0 = Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc17().UnkClass_ov66_0224640C_InlineFunc0(callback, param);

    Unk_ov66_0225B6DC->ov66_022469C8(Unk_ov66_0225B6DC->ov66_022467C4(channelName).c_str(), *channelCallbacks, limit);

    chatChannelCallbacks v1;
    MI_CpuClear8(&v1, sizeof(chatChannelCallbacks));
    v1.channelMessage = ov66_022430EC;
    v1.channelModeChanged = ov66_022437FC;
    v1.kicked = ov66_022431E0;
    v1.topicChanged = ov66_02243744;
    v1.userParted = ov66_022434D0;
    v1.userJoined = ov66_02243234;
    v1.userListUpdated = ov66_02243818;
    v1.userModeChanged = ov66_02243670;
    v1.userChangedNick = ov66_022435FC;
    v1.broadcastKeyChanged = ov66_02244528;
    v1.param = (void *)channelCallbacks->param;

    chatEnterChannel(Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc0(), Unk_ov66_0225B6DC->ov66_022467C4(channelName).c_str(), password, &v1, ov66_0224413C, (void *)v0, CHATFalse);

    return DWCi_LOBBY_RESULT_SUCCESS;
}

DWCi_LOBBY_RESULT DWCi_LobbyLeaveChannel(const char *channelName)
{
    if (!Unk_ov66_0225B6DC) {
        return DWCi_LOBBY_RESULT_ERROR_STATE;
    }

    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_ERROR) {
        return DWCi_LOBBY_RESULT_ERROR_CONDITION;
    }

    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() != DWCi_LOBBY_STATE_CONNECTED) {
        return DWCi_LOBBY_RESULT_ERROR_STATE;
    }

    chatLeaveChannel(Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc0(), Unk_ov66_0225B6DC->ov66_022467C4(channelName).c_str(), NULL);

    Unk_ov66_0225B6DC->ov66_02247258(Unk_ov66_0225B6DC->ov66_022467C4(channelName));

    return DWCi_LOBBY_RESULT_SUCCESS;
}

DWCi_LOBBY_RESULT DWCi_LobbySendChannelMessage(const char *channelName, const char *message)
{
    if (!Unk_ov66_0225B6DC) {
        return DWCi_LOBBY_RESULT_ERROR_STATE;
    }

    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_ERROR) {
        return DWCi_LOBBY_RESULT_ERROR_CONDITION;
    }

    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() != DWCi_LOBBY_STATE_CONNECTED) {
        return DWCi_LOBBY_RESULT_ERROR_STATE;
    }

    if (strlen(message) + 1 > DWC_LOBBY_MAX_STRING_SIZE) {
        return DWCi_LOBBY_RESULT_ERROR_PARAM;
    }

    chatSendChannelMessage(Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc0(), Unk_ov66_0225B6DC->ov66_022467C4(channelName).c_str(), message, CHAT_UTM);
    return DWCi_LOBBY_RESULT_SUCCESS;
}

DWCi_LOBBY_RESULT DWCi_LobbySendUserMessage(s32 userId, const char *message)
{
    if (!Unk_ov66_0225B6DC) {
        return DWCi_LOBBY_RESULT_ERROR_STATE;
    }

    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_ERROR) {
        return DWCi_LOBBY_RESULT_ERROR_CONDITION;
    }

    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() != DWCi_LOBBY_STATE_CONNECTED) {
        return DWCi_LOBBY_RESULT_ERROR_STATE;
    }

    if (strlen(message) + 1 > DWC_LOBBY_MAX_STRING_SIZE) {
        return DWCi_LOBBY_RESULT_ERROR_PARAM;
    }

    PPWString v0 = Unk_ov66_0225B6DC->ov66_02247578(userId);
    if (v0 == "") {
        return DWCi_LOBBY_RESULT_ERROR_PARAM;
    }

    chatSendUserMessage(Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc0(), v0.c_str(), message, CHAT_UTM);
    return DWCi_LOBBY_RESULT_SUCCESS;
}

DWCi_LOBBY_RESULT DWCi_LobbySetChannelData(const char *channelName, s32 userId, const char *key, const char *value)
{
    if (!Unk_ov66_0225B6DC) {
        return DWCi_LOBBY_RESULT_ERROR_STATE;
    }

    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_ERROR) {
        return DWCi_LOBBY_RESULT_ERROR_CONDITION;
    }

    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() != DWCi_LOBBY_STATE_CONNECTED) {
        return DWCi_LOBBY_RESULT_ERROR_STATE;
    }

    if (strlen(value) + 1 > DWC_LOBBY_MAX_STRING_SIZE || strlen(key) + 1 > DWC_LOBBY_MAX_CHANNEL_KEY_SIZE) {
        return DWCi_LOBBY_RESULT_ERROR_PARAM;
    }

    PPWString v0 = "";
    if (userId == DWC_LOBBY_INVALID_USER_ID) {
        v0 = "";
    } else {
        v0 = Unk_ov66_0225B6DC->ov66_02247578(userId);
        if (v0 == "") {
            return DWCi_LOBBY_RESULT_ERROR_PARAM;
        }
    }

    chatSetChannelKeys(Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc0(), Unk_ov66_0225B6DC->ov66_022467C4(channelName).c_str(), v0.c_str(), 1, &key, &value);
    return DWCi_LOBBY_RESULT_SUCCESS;
}

DWCi_LOBBY_RESULT DWCi_LobbyGetChannelDataAsync(const char *channelName, s32 userId, const char *key, DWCi_LobbyGetChannelDataCallback callback, void *param)
{
    if (!Unk_ov66_0225B6DC) {
        return DWCi_LOBBY_RESULT_ERROR_STATE;
    }

    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_ERROR) {
        return DWCi_LOBBY_RESULT_ERROR_CONDITION;
    }

    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() != DWCi_LOBBY_STATE_CONNECTED) {
        return DWCi_LOBBY_RESULT_ERROR_STATE;
    }

    if (strlen(key) + 1 > DWC_LOBBY_MAX_CHANNEL_KEY_SIZE) {
        return DWCi_LOBBY_RESULT_ERROR_PARAM;
    }

    PPWString v0 = "";
    if (userId == DWC_LOBBY_INVALID_USER_ID) {
        v0 = "";
    } else {
        v0 = Unk_ov66_0225B6DC->ov66_02247578(userId);
        if (v0 == "") {
            return DWCi_LOBBY_RESULT_ERROR_PARAM;
        }
    }

    u32 v1 = Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc17().UnkClass_ov66_0224640C_InlineFunc0(callback, param);

    chatGetChannelKeys(Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc0(), Unk_ov66_0225B6DC->ov66_022467C4(channelName).c_str(), v0.c_str(), 1, &key, ov66_0224439C, (void *)v1, CHATFalse);
    return DWCi_LOBBY_RESULT_SUCCESS;
}

DWCi_LOBBY_RESULT DWCi_LobbyEnumChannelsAsync(const char *filter, DWCi_LobbyEnumChannelsCallback callback, void *param)
{
    if (!Unk_ov66_0225B6DC) {
        return DWCi_LOBBY_RESULT_ERROR_STATE;
    }

    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_ERROR) {
        return DWCi_LOBBY_RESULT_ERROR_CONDITION;
    }

    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() != DWCi_LOBBY_STATE_CONNECTED) {
        return DWCi_LOBBY_RESULT_ERROR_STATE;
    }

    u32 v0 = Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc17().UnkClass_ov66_0224640C_InlineFunc0(callback, param);

    chatEnumChannels(Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc0(), Unk_ov66_0225B6DC->ov66_022467C4(filter).c_str(), ov66_02243D28, ov66_02243B74, reinterpret_cast<void *>(v0), CHATFalse);
    return DWCi_LOBBY_RESULT_SUCCESS;
}

DWCi_LOBBY_RESULT DWCi_LobbyEnumUsersAsync(const char *channelName, DWCi_LobbyEnumUsersCallback callback, void *param)
{
    if (!Unk_ov66_0225B6DC) {
        return DWCi_LOBBY_RESULT_ERROR_STATE;
    }

    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_ERROR) {
        return DWCi_LOBBY_RESULT_ERROR_CONDITION;
    }

    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() != DWCi_LOBBY_STATE_CONNECTED) {
        return DWCi_LOBBY_RESULT_ERROR_STATE;
    }

    if (!chatInChannel(Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc0(), Unk_ov66_0225B6DC->ov66_022467C4(channelName).c_str())) {
        return DWCi_LOBBY_RESULT_ERROR_CHANNEL;
    }

    u32 v0 = Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc17().UnkClass_ov66_0224640C_InlineFunc0(callback, param);

    chatEnumUsers(Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc0(), Unk_ov66_0225B6DC->ov66_022467C4(channelName).c_str(), ov66_02243D30, reinterpret_cast<void *>(v0), CHATFalse);
    return DWCi_LOBBY_RESULT_SUCCESS;
}

DWCi_LOBBY_RESULT DWCi_LobbySetChannelMode(const char *channelName, const DWCi_LobbyChannelMode *mode)
{
    if (!Unk_ov66_0225B6DC) {
        return DWCi_LOBBY_RESULT_ERROR_STATE;
    }

    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_ERROR) {
        return DWCi_LOBBY_RESULT_ERROR_CONDITION;
    }

    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() != DWCi_LOBBY_STATE_CONNECTED) {
        return DWCi_LOBBY_RESULT_ERROR_STATE;
    }

    chatSetChannelMode(Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc0(), Unk_ov66_0225B6DC->ov66_022467C4(channelName).c_str(), (CHATChannelMode *)mode);
    return DWCi_LOBBY_RESULT_SUCCESS;
}

DWCi_LOBBY_RESULT DWCi_LobbyGetChannelModeAsync(const char *channelName, DWCi_LobbyGetChannelModeCallback callback, void *param)
{
    if (!Unk_ov66_0225B6DC) {
        return DWCi_LOBBY_RESULT_ERROR_STATE;
    }

    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() == DWCi_LOBBY_STATE_ERROR) {
        return DWCi_LOBBY_RESULT_ERROR_CONDITION;
    }

    if (Unk_ov66_0225B6DC && Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc2() != DWCi_LOBBY_STATE_CONNECTED) {
        return DWCi_LOBBY_RESULT_ERROR_STATE;
    }

    u32 v0 = Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc17().UnkClass_ov66_0224640C_InlineFunc0(callback, param);

    chatGetChannelMode(Unk_ov66_0225B6DC->UnkClass_ov66_02243B64_InlineFunc0(), Unk_ov66_0225B6DC->ov66_022467C4(channelName).c_str(), ov66_02244620, reinterpret_cast<void *>(v0), CHATFalse);
    return DWCi_LOBBY_RESULT_SUCCESS;
}
