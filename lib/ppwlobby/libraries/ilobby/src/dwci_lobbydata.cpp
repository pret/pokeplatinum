#include "ilobby/dwci_lobbydata.h"

UnkClass_ov66_02243B64::UnkClass_ov66_02243B64(const PPWString &param0, const PPWString &param1, DWC_LOBBY_CHANNEL_PREFIX param2, s32 param3, const PPWString &param4, const PPWString &param5, const PPWString &param6, const DWCi_LobbyGlobalCallbacks *param7)
    : unk_00(NULL)
    , unk_04(DWCi_LOBBY_STATE_NOTINITIALIZED)
    , unk_08(param3)
    , unk_0C(param4)
    , unk_18(param5)
    , unk_24(param6)
    , unk_30(param0)
    , unk_3C(param1)
    , unk_48()
    , unk_54(0)
    , unk_58(DWCi_LOBBY_ERROR_NONE)
    , unk_5C(0)
    , unk_60(FALSE)
    , unk_64(*param7)
    , unk_70()
    , unk_80()
    , unk_90()
    , unk_9C()
{
    const char *const Unk_ov66_02258CB4[] = {
        "R",
        "D",
        "D1",
        "D2",
        "D3",
        "D4",
        "D5",
        "D6",
        "D7",
        "D8",
        "D9",
        "T"
    };

    unk_48 = PPWString(Unk_ov66_02258CAC) + DWCi_LOBBY_CHANNEL_NAME_SEPARATOR
        + unk_30 + DWCi_LOBBY_CHANNEL_NAME_SEPARATOR
        + PPWString(Unk_ov66_02258CB4[param2]) + DWCi_LOBBY_CHANNEL_NAME_SEPARATOR;
}

UnkClass_ov66_02243B64::~UnkClass_ov66_02243B64()
{
    return;
}

PPWString UnkClass_ov66_02243B64::ov66_022467C4(const PPWString &param0) const
{
    return unk_48 + param0;
}

PPWString UnkClass_ov66_02243B64::ov66_022467D4(const PPWString &param0) const
{
    return param0.substr(unk_48.length());
}

std::vector<char *, PPW_Allocator<char *> > UnkClass_ov66_02243B64::ov66_0224680C(int param0, const char **param1) const
{
    std::vector<char *, PPW_Allocator<char *> > v0;

    for (int i = 0; i < param0; i++) {
        v0.push_back((char *)(param1[i] + unk_48.length()));
    }

    return v0;
}

PPWString UnkClass_ov66_02243B64::ov66_022468DC(s32 param0)
{
    return ov66_02236A38<PPWString>(DWCi_MAX_CHAT_NICK_SIZE, _T("N_%d_%u"), param0, (u32)current_time() % 1000);
}

s32 UnkClass_ov66_02243B64::ov66_02246928(const PPWString &param0)
{
    std::vector<PPWString, PPW_Allocator<PPWString> > v0(ov66_02242F08<PPWString>(param0, "_"));
    if (v0.size() < 2) {
        return DWC_LOBBY_INVALID_USER_ID;
    }

    int v1 = atoi(v0[1].c_str());
    if (v1 == 0) {
        return DWC_LOBBY_INVALID_USER_ID;
    }
    return v1;
}

BOOL UnkClass_ov66_02243B64::ov66_022469C8(const PPWString param0, const DWCi_LobbyChannelCallbacks &param1, s32 param2)
{
    std::pair<UnkClass_ov66_02243B64_UnkMap1::iterator, bool> v0;
    v0 = unk_80.insert(std::make_pair(param0, UnkClass_ov66_02243B64_SubStruct0(param1, param2)));
    return (BOOL)v0.second;
}

const DWCi_LobbyChannelCallbacks *UnkClass_ov66_02243B64::ov66_02246B38(const PPWString &param0) const
{
    UnkClass_ov66_02243B64_UnkMap1::const_iterator v0 = unk_80.find(param0);
    if (v0 == unk_80.end()) {
        return NULL;
    }
    return &v0->second.unk_14;
}

s32 UnkClass_ov66_02243B64::ov66_02246C2C(const PPWString &param0, const PPWString &param1)
{
    s32 v0 = ov66_02246928(param0);

    if (v0 == DWC_LOBBY_INVALID_USER_ID) {
        return DWC_LOBBY_INVALID_USER_ID;
    }

    UnkClass_ov66_02243B64_UnkMap1::iterator v1 = unk_80.find(param1);
    if (v1 == unk_80.end()) {
        return DWC_LOBBY_INVALID_USER_ID;
    }
    v1->second.unk_04.insert(v0);

    unk_70[v0] = param0;
    return v0;
}

std::vector<s32, PPW_Allocator<s32> > UnkClass_ov66_02243B64::ov66_02246DF0(int param0, const char **param1, const PPWString &param2)
{
    std::vector<s32, PPW_Allocator<s32> > v0;
    v0.reserve((std::size_t)param0);
    for (int i = 0; i < param0; i++) {
        if (ov66_02246928(param1[i]) == UnkClass_ov66_02243B64_InlineFunc4() && ov66_02243B64() != param1[i]) {
            continue;
        }

        s32 v2 = ov66_02246C2C(param1[i], param2);
        if (v2 != DWC_LOBBY_INVALID_USER_ID) {
            v0.push_back(v2);
        }
    }

    return v0;
}

BOOL UnkClass_ov66_02243B64::ov66_02246F78(s32 param0)
{
    UnkClass_ov66_02243B64_UnkMap1::const_iterator v0 = std::find_if(unk_80.begin(), unk_80.end(), UnkClass_ov66_02243B64_UnaryFunc(param0));
    if (v0 == unk_80.end()) {
        unk_70.erase(param0);
        return TRUE;
    }
    return FALSE;
}

BOOL UnkClass_ov66_02243B64::ov66_0224717C(const PPWString &param0, const PPWString &param1)
{
    s32 v0 = ov66_02246928(param0);

    if (v0 == DWC_LOBBY_INVALID_USER_ID) {
        return FALSE;
    }

    UnkClass_ov66_02243B64_UnkMap1::iterator v1 = unk_80.find(param1);
    if (v1 == unk_80.end()) {
        return FALSE;
    }

    if (!v1->second.unk_04.erase(v0)) {
        return FALSE;
    }

    ov66_02246F78(v0);
    return TRUE;
}

BOOL UnkClass_ov66_02243B64::ov66_02247258(const PPWString &param0)
{
    UnkClass_ov66_02243B64_UnkMap1::iterator v0 = unk_80.find(param0);
    if (v0 == unk_80.end()) {
        return FALSE;
    }

    std::vector<s32, PPW_Allocator<s32> > v1;
    v1.assign(v0->second.unk_04.begin(), v0->second.unk_04.end());

    unk_80.erase(param0);

    std::for_each(v1.begin(), v1.end(), std::bind1st(std::mem_fun(&UnkClass_ov66_02243B64::ov66_02246F78), this));
    return TRUE;
}

s32 UnkClass_ov66_02243B64::ov66_022474F4(const PPWString &param0) const
{
    s32 v0 = ov66_02246928(param0);

    if (v0 == DWC_LOBBY_INVALID_USER_ID) {
        return DWC_LOBBY_INVALID_USER_ID;
    }

    UnkClass_ov66_02243B64_UnkMap0::const_iterator v1 = unk_70.find(v0);
    if (v1 == unk_70.end()) {
        return DWC_LOBBY_INVALID_USER_ID;
    }

    if (v1->second != param0) {
        return DWC_LOBBY_INVALID_USER_ID;
    }

    return v0;
}

PPWString UnkClass_ov66_02243B64::ov66_02247578(s32 param0) const
{
    UnkClass_ov66_02243B64_UnkMap0::const_iterator v0 = unk_70.find(param0);
    if (v0 == unk_70.end()) {
        return "";
    }
    return v0->second;
}

s32 UnkClass_ov66_02243B64::ov66_022475DC(const PPWString &param0, const PPWString &param1)
{
    s32 v0 = ov66_022474F4(param0);
    unk_70.erase(v0);

    std::pair<UnkClass_ov66_02243B64_UnkMap0::iterator, bool> v1;
    v1 = unk_70.insert(std::make_pair(v0, param1));
    if (!v1.second) {
        return DWC_LOBBY_INVALID_USER_ID;
    }

    return v0;
}

BOOL UnkClass_ov66_02243B64::ov66_02247690(const PPWString &param0) const
{
    UnkClass_ov66_02243B64_UnkMap1::const_iterator v0 = unk_80.find(param0);
    if (v0 == unk_80.end()) {
        return FALSE;
    }
    return v0->second.unk_00;
}

BOOL UnkClass_ov66_02243B64::ov66_022476C8(const PPWString &param0)
{
    UnkClass_ov66_02243B64_UnkMap1::iterator v0 = unk_80.find(param0);
    if (v0 == unk_80.end()) {
        return FALSE;
    }
    v0->second.unk_00 = TRUE;
    return TRUE;
}

s32 UnkClass_ov66_02243B64::ov66_02247704(const PPWString &param0)
{
    UnkClass_ov66_02243B64_UnkMap1::iterator v0 = unk_80.find(param0);
    if (v0 == unk_80.end()) {
        return -1;
    }
    return v0->second.unk_10;
}
