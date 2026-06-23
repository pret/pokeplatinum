#ifndef PPWLOBBY_OV66_0225B6C4_H
#define PPWLOBBY_OV66_0225B6C4_H

#include "ilobby/class_ov66_02243B64_sub1.h"
#include "ilobby/dwci_lobbydata.h"

// include order necessary to match
// clang-format off
#include "ppwlobby/ov66_02237170.h"
#include "ppwlobby/ov66_02235FC8.h"
#include "ppwlobby/ppw_profile.h"
#include "ppwlobby/dwci_encsession.h"
#include "ppwlobby/ppw_innerinfo.h"
// clang-format on

class UnkClass_ov66_0225B6C4 : public UnkClass_ov66_0225B6E4 {
private:
    PPW_LOBBY_STATE unk_00;
    PPW_LOBBY_ERROR unk_04;
    const PPW_LobbyCallbacks unk_08;
    const s32 unk_4C;
    const DWC_LOBBY_CHANNEL_PREFIX unk_50;
    const BOOL unk_54;
    PPWString unk_58;
    BOOL unk_64;
    BOOL unk_68;
    BOOL unk_6C;
    s32 unk_70;
    PPW_LobbyRecruitInfo unk_74;
    UnkClass_ov66_02236348 unk_B8;
    UnkClass_ov66_02241C44 unk_E8;
    UnkClass_ov66_02243B64_Sub1 unk_134;
    UnkClass_ov66_0223CA1C unk_144;

public:
    UnkClass_ov66_0225B6C4(const PPW_LobbyCallbacks &param0, s32 param1, DWC_LOBBY_CHANNEL_PREFIX param2, BOOL param3)
        : unk_00(PPW_LOBBY_STATE_NOTINITIALIZED)
        , unk_04(PPW_LOBBY_ERROR_NONE)
        , unk_08(param0)
        , unk_4C(param1)
        , unk_50(param2)
        , unk_54(param3)
        , unk_58()
        , unk_64(FALSE)
        , unk_68(FALSE)
        , unk_6C(FALSE)
        , unk_70(0)
        , unk_74()
        , unk_B8()
        , unk_E8()
        , unk_134()
        , unk_144()
    {
    }

    ~UnkClass_ov66_0225B6C4()
    {
    }

    PPW_LOBBY_STATE UnkClass_ov66_0225B6C4_InlineFunc0() const
    {
        return unk_00;
    }

    void UnkClass_ov66_0225B6C4_InlineFunc1(PPW_LOBBY_STATE param0)
    {
        unk_00 = param0;
    }

    const PPW_LobbyCallbacks &UnkClass_ov66_0225B6C4_InlineFunc2() const
    {
        return unk_08;
    }

    s32 UnkClass_ov66_0225B6C4_InlineFunc3() const
    {
        return unk_4C;
    }

    enum UnkEnum_ov66_02258338 UnkClass_ov66_0225B6C4_InlineFunc4() const
    {
        return unk_50 == DWC_LOBBY_CHANNEL_PREFIX_RELEASE ? UnkEnum_ov66_02258338_0 : UnkEnum_ov66_02258338_1;
    }

    PPW_LOBBY_ERROR UnkClass_ov66_0225B6C4_InlineFunc5() const
    {
        return unk_04;
    }

    void UnkClass_ov66_0225B6C4_InlineFunc6(PPW_LOBBY_ERROR param0)
    {
        if (param0 != PPW_LOBBY_ERROR_NONE) {
            unk_04 = param0;
            unk_00 = PPW_LOBBY_STATE_ERROR;
        }
    }

    void UnkClass_ov66_0225B6C4_InlineFunc7(DWCi_LOBBY_ERROR param0)
    {
        UnkClass_ov66_0225B6C4_InlineFunc6((PPW_LOBBY_ERROR)param0);
    }

    void UnkClass_ov66_0225B6C4_InlineFunc8(PPW_LOBBY_RESULT param0)
    {
        PPW_LOBBY_ERROR v0;
        switch (param0) {
        case PPW_LOBBY_RESULT_ERROR_ALLOC:
            v0 = PPW_LOBBY_ERROR_ALLOC;
            break;
        case PPW_LOBBY_RESULT_ERROR_SESSION:
            v0 = PPW_LOBBY_ERROR_SESSION;
            break;
        default:
            v0 = PPW_LOBBY_ERROR_NONE;
            break;
        }

        UnkClass_ov66_0225B6C4_InlineFunc6(v0);
    }

    void UnkClass_ov66_0225B6C4_InlineFunc9(BOOL param0)
    {
        unk_64 = param0;
    }

    PPWString ov66_02235DC4() const
    {
        return unk_58;
    }

    BOOL UnkClass_ov66_0225B6C4_InlineFunc10()
    {
        if (unk_70 >= 3) {
            return FALSE;
        } else {
            unk_70++;
            return TRUE;
        }
    }

    void UnkClass_ov66_0225B6C4_InlineFunc11()
    {
        unk_70 = 0;
    }

    void UnkClass_ov66_0225B6C4_InlineFunc12(const PPWString &param0)
    {
        unk_58 = param0;
    }

    BOOL UnkClass_ov66_0225B6C4_InlineFunc13(const PPW_LobbyRecruitInfo &param0, PPWString &param1)
    {
        if (unk_68) {
            return FALSE;
        } else {
            unk_68 = TRUE;
            unk_74 = param0;
            param1 = ov66_02236A38<PPWString>(PPW_LOBBY_MAX_MATCHMAKING_STRING_LENGTH, "M%d_%u", unk_4C, (unsigned long)current_time() % 1000);
            strncpy(unk_74.matchMakingString, param1.c_str(), PPW_LOBBY_MAX_MATCHMAKING_STRING_LENGTH - 1);
            return TRUE;
        }
    }

    BOOL UnkClass_ov66_0225B6C4_InlineFunc14() const
    {
        return unk_68;
    }

    const PPW_LobbyRecruitInfo &UnkClass_ov66_0225B6C4_InlineFunc15() const
    {
        return unk_74;
    }

    BOOL UnkClass_ov66_0225B6C4_InlineFunc16(const PPW_LobbyRecruitInfo &_recruitInfo)
    {
        if (!unk_68) {
            return FALSE;
        } else {
            unk_74 = _recruitInfo;
            return TRUE;
        }
    }

    BOOL UnkClass_ov66_0225B6C4_InlineFunc17()
    {
        if (!unk_68) {
            return FALSE;
        } else {
            unk_68 = FALSE;
            return TRUE;
        }
    }

    void UnkClass_ov66_0225B6C4_InlineFunc18(BOOL param0)
    {
        unk_6C = param0;
    }

    BOOL UnkClass_ov66_0225B6C4_InlineFunc19() const
    {
        return unk_6C;
    }

    void UnkClass_ov66_0225B6C4_InlineFunc20()
    {
        unk_134.UnkClass_ov66_02243B64_Sub1_InlineFunc1();
        unk_E8.ov66_02242460();
        unk_144.ov66_0223EE30();
    }

    UnkClass_ov66_02236348 &UnkClass_ov66_0225B6C4_InlineFunc21()
    {
        return unk_B8;
    }

    UnkClass_ov66_02235FC8 &UnkClass_ov66_0225B6C4_InlineFunc22()
    {
        return unk_B8.UnkClass_ov66_02236348_InlineFunc0(0);
    }

    UnkClass_ov66_02235FC8 &UnkClass_ov66_0225B6C4_InlineFunc23()
    {
        return unk_B8.UnkClass_ov66_02236348_InlineFunc0(1);
    }

    void UnkClass_ov66_0225B6C4_InlineFunc24(const UnkClass_ov66_02235FC8 &param0)
    {
        unk_B8.UnkClass_ov66_02236348_InlineFunc1(0, param0);
    }

    void UnkClass_ov66_0225B6C4_InlineFunc25(const UnkClass_ov66_02235FC8 &param0)
    {
        unk_B8.UnkClass_ov66_02236348_InlineFunc1(1, param0);
    }

    UnkClass_ov66_02241C44 &UnkClass_ov66_0225B6C4_InlineFunc26()
    {
        return unk_E8;
    }

    UnkClass_ov66_02243B64_Sub1 &UnkClass_ov66_0225B6C4_InlineFunc27()
    {
        return unk_134;
    }

    UnkClass_ov66_0223CA1C &UnkClass_ov66_0225B6C4_InlineFunc28()
    {
        return unk_144;
    }
};

UnkClass_ov66_0225B6C4 *ov66_02234FC4();

#endif // PPWLOBBY_OV66_0225B6C4_H
