#ifndef ILOBBY_LOBBYDATA_H
#define ILOBBY_LOBBYDATA_H

// needs to be included first to match
// clang-format off
#include <vector>
// clang-format on
#include <functional>
#include <map>
#include <set>

#include "lobby/dwci_lobby.h"

// include order necessary to match
// clang-format off
#include "ilobby/dwci_lobbybase.h"
#include "ilobby/dwci_lobbycallback.h"
#include "ilobby/class_ov66_02243B64_sub1.h"
#include "ilobby/ov66_022364B0.h"
// clang-format on

static const char Unk_ov66_02258CAC[] = "#GSP";

class UnkClass_ov66_02243B64 : public UnkClass_ov66_0225B6E4 {
    CHAT unk_00;
    DWCi_LOBBY_STATE unk_04;
    const s32 unk_08;
    PPWString unk_0C;
    const PPWString unk_18;
    const PPWString unk_24;
    const PPWString unk_30;
    const PPWString unk_3C;
    PPWString unk_48;
    u32 unk_54;
    DWCi_LOBBY_ERROR unk_58;
    u32 unk_5C;
    BOOL unk_60;
    const DWCi_LobbyGlobalCallbacks unk_64;

    typedef std::map<s32, PPWString, std::less<s32>, PPW_Allocator<std::pair<s32, PPWString> > > UnkClass_ov66_02243B64_UnkMap0;
    UnkClass_ov66_02243B64_UnkMap0 unk_70;

    typedef std::set<s32, std::less<s32>, PPW_Allocator<s32> > UnkClass_ov66_02243B64_UnkSet;

    struct UnkClass_ov66_02243B64_SubStruct0 : public UnkClass_ov66_0225B6E4 {
        BOOL unk_00;
        UnkClass_ov66_02243B64_UnkSet unk_04;
        s32 unk_10;
        const DWCi_LobbyChannelCallbacks unk_14;

        UnkClass_ov66_02243B64_SubStruct0()
            : unk_14()
        {
        }

        UnkClass_ov66_02243B64_SubStruct0(const DWCi_LobbyChannelCallbacks &param0, s32 param1)
            : unk_00(FALSE)
            , unk_04()
            , unk_10(param1)
            , unk_14(param0)
        {
        }
    };
    typedef std::map<PPWString, UnkClass_ov66_02243B64_SubStruct0, std::less<PPWString>, PPW_Allocator<std::pair<PPWString, UnkClass_ov66_02243B64_SubStruct0> > > UnkClass_ov66_02243B64_UnkMap1;
    UnkClass_ov66_02243B64_UnkMap1 unk_80;

    UnkClass_ov66_0224640C unk_90;
    UnkClass_ov66_02243B64_Sub1 unk_9C;

public:
    UnkClass_ov66_02243B64(const PPWString &param0, const PPWString &param1, DWC_LOBBY_CHANNEL_PREFIX param2, s32 param3, const PPWString &param4, const PPWString &param5, const PPWString &param6, const DWCi_LobbyGlobalCallbacks *param7);

    ~UnkClass_ov66_02243B64();

    CHAT UnkClass_ov66_02243B64_InlineFunc0() const
    {
        return unk_00;
    }

    void UnkClass_ov66_02243B64_InlineFunc1(CHAT param0)
    {
        unk_00 = param0;
    }

    DWCi_LOBBY_STATE UnkClass_ov66_02243B64_InlineFunc2() const
    {
        return unk_04;
    }

    void UnkClass_ov66_02243B64_InlineFunc3(DWCi_LOBBY_STATE param0)
    {
        if (!(unk_04 == DWCi_LOBBY_STATE_ERROR && param0 != DWCi_LOBBY_STATE_CLOSING)) {
            unk_04 = param0;
        }
    }

    s32 UnkClass_ov66_02243B64_InlineFunc4() const
    {
        return unk_08;
    }

    PPWString ov66_02243B64() const
    {
        return unk_0C;
    }

    void UnkClass_ov66_02243B64_InlineFunc5(const PPWString &param0)
    {
        unk_0C = param0;
    }

    PPWString ov66_02243934() const
    {
        return unk_18;
    }

    PPWString UnkClass_ov66_02243B64_InlineFunc6() const
    {
        return unk_24;
    }

    PPWString UnkClass_ov66_02243B64_InlineFunc7() const
    {
        return unk_30;
    }

    PPWString UnkClass_ov66_02243B64_InlineFunc8() const
    {
        return unk_3C;
    }

    PPWString ov66_022467C4(const PPWString &param0) const;

    PPWString ov66_022467D4(const PPWString &param0) const;

    std::vector<char *, PPW_Allocator<char *> > ov66_0224680C(int param0, const char **param1) const;

    u32 UnkClass_ov66_02243B64_InlineFunc9() const
    {
        return unk_54;
    }

    void UnkClass_ov66_02243B64_InlineFunc10()
    {
        unk_54 = 0;
    }

    DWCi_LobbyGlobalCallbacks UnkClass_ov66_02243B64_InlineFunc11() const
    {
        return unk_64;
    }

    DWCi_LOBBY_ERROR UnkClass_ov66_02243B64_InlineFunc12() const
    {
        return unk_58;
    }

    void UnkClass_ov66_02243B64_InlineFunc13(DWCi_LOBBY_ERROR param0)
    {
        unk_58 = param0;
        unk_04 = DWCi_LOBBY_STATE_ERROR;
    }

    BOOL UnkClass_ov66_02243B64_InlineFunc14()
    {
        if (unk_5C++ == DWCi_LOBBY_CONNECTINGWAIT_TIME) {
            unk_5C = 0;
            UnkClass_ov66_02243B64_InlineFunc3(DWCi_LOBBY_STATE_CONNECTED);
            return TRUE;
        } else {
            return FALSE;
        }
    }

    BOOL UnkClass_ov66_02243B64_InlineFunc15() const
    {
        return unk_60;
    }

    void UnkClass_ov66_02243B64_InlineFunc16()
    {
        unk_60 = TRUE;
    }

    UnkClass_ov66_0224640C &UnkClass_ov66_02243B64_InlineFunc17()
    {
        return unk_90;
    }

    UnkClass_ov66_02243B64_Sub1 &UnkClass_ov66_02243B64_InlineFunc18()
    {
        return unk_9C;
    }

    void UnkClass_ov66_02243B64_InlineFunc19()
    {
        unk_9C.UnkClass_ov66_02243B64_Sub1_InlineFunc1();
    }

    static PPWString ov66_022468DC(s32 param0);
    static s32 ov66_02246928(const PPWString &param0);
    BOOL ov66_022469C8(const PPWString param0, const DWCi_LobbyChannelCallbacks &param1, s32 param2);
    const DWCi_LobbyChannelCallbacks *ov66_02246B38(const PPWString &param0) const;
    s32 ov66_02246C2C(const PPWString &param0, const PPWString &param1);
    std::vector<s32, PPW_Allocator<s32> > ov66_02246DF0(int param0, const char **param1, const PPWString &param2);

private:
    struct UnkClass_ov66_02243B64_UnaryFunc : public std::unary_function<UnkClass_ov66_02243B64_UnkMap1::value_type, bool> {
        const s32 unk_00;
        UnkClass_ov66_02243B64_UnaryFunc(s32 param0)
            : unk_00(param0)
        {
        }

        bool operator()(const UnkClass_ov66_02243B64_UnkMap1::value_type &param0) const
        {
            return param0.second.unk_04.find(unk_00) != param0.second.unk_04.end();
        }
    };

    BOOL ov66_02246F78(s32 param0);

public:
    BOOL ov66_0224717C(const PPWString &param0, const PPWString &param1);
    BOOL ov66_02247258(const PPWString &param0);
    s32 ov66_022474F4(const PPWString &param0) const;
    PPWString ov66_02247578(s32 param0) const;
    s32 ov66_022475DC(const PPWString &param0, const PPWString &param1);
    BOOL ov66_02247690(const PPWString &param0) const;
    BOOL ov66_022476C8(const PPWString &param0);
    s32 ov66_02247704(const PPWString &param0);
};

#endif // ILOBBY_LOBBYDATA_H
