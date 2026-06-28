#ifndef PPWLOBBY_OV66_02235FC8_H
#define PPWLOBBY_OV66_02235FC8_H

#include "ilobby/dwci_lobbydata.h"
#include "ppwlobby/ppw_lobby.h"

class UnkClass_ov66_02235FC8 : public UnkClass_ov66_0225B6E4 {
    PPW_LOBBY_CHANNEL_KIND unk_00;
    PPWString unk_04;
    BOOL unk_10;
    BOOL unk_14;

public:
    UnkClass_ov66_02235FC8()
        : unk_00(PPW_LOBBY_CHANNEL_KIND_INVALID)
        , unk_04()
    {
    }

    UnkClass_ov66_02235FC8(PPW_LOBBY_CHANNEL_KIND param0, const PPWString &param1)
        : unk_00(param0)
        , unk_04(param1)
        , unk_10(FALSE)
        , unk_14(FALSE)
    {
    }

    BOOL UnkClass_ov66_02235FC8_InlineFunc0() const
    {
        if (unk_00 != PPW_LOBBY_CHANNEL_KIND_INVALID) {
            return TRUE;
        } else {
            return FALSE;
        }
    }

    PPW_LOBBY_CHANNEL_KIND UnkClass_ov66_02235FC8_InlineFunc1() const
    {
        return unk_00;
    }

    PPWString ov66_02235FC8() const
    {
        return unk_04;
    }

    void UnkClass_ov66_02235FC8_InlineFunc2()
    {
        unk_10 = TRUE;
    }

    BOOL UnkClass_ov66_02235FC8_InlineFunc3() const
    {
        return unk_10;
    }

    void UnkClass_ov66_02235FC8_InlineFunc4()
    {
        unk_14 = TRUE;
    }

    BOOL UnkClass_ov66_02235FC8_InlineFunc5() const
    {
        return unk_14;
    }

    void UnkClass_ov66_02235FC8_InlineFunc6(PPW_LOBBY_CHANNEL_KIND param0, const PPWString &param1)
    {
        unk_00 = param0;
        unk_04 = param1;
        unk_10 = FALSE;
        unk_14 = FALSE;
    }

    void UnkClass_ov66_02235FC8_InlineFunc7()
    {
        UnkClass_ov66_02235FC8_InlineFunc6(PPW_LOBBY_CHANNEL_KIND_INVALID, PPWString());
    }
};

class UnkClass_ov66_02236348 : public UnkClass_ov66_0225B6E4 {
private:
    UnkClass_ov66_02235FC8 unk_00;
    UnkClass_ov66_02235FC8 unk_18;

public:
    UnkClass_ov66_02236348()
        : unk_00()
        , unk_18()
    {
    }

    UnkClass_ov66_02235FC8 &UnkClass_ov66_02236348_InlineFunc0(int param0)
    {
        switch (param0) {
        case 0:
            return unk_00;
        case 1:
            return unk_18;
        default:
            return unk_00;
        }
    }

    void UnkClass_ov66_02236348_InlineFunc1(int param0, const UnkClass_ov66_02235FC8 &param1)
    {
        switch (param0) {
        case 0:
            unk_00 = param1;
            break;
        case 1:
            unk_18 = param1;
            break;
        default:
            break;
        }
    }

    PPWString ov66_02236348(PPW_LOBBY_CHANNEL_KIND param0) const
    {
        if (param0 == PPW_LOBBY_CHANNEL_KIND_MAIN) {
            return unk_00.ov66_02235FC8();
        } else {
            return unk_18.ov66_02235FC8();
        }
    }

    PPW_LOBBY_CHANNEL_KIND UnkClass_ov66_02236348_InlineFunc2(const PPWString &param0) const
    {
        if (unk_00.ov66_02235FC8() == param0) {
            return unk_00.UnkClass_ov66_02235FC8_InlineFunc1();
        }

        if (unk_18.ov66_02235FC8() == param0) {
            return unk_18.UnkClass_ov66_02235FC8_InlineFunc1();
        }

        return PPW_LOBBY_CHANNEL_KIND_INVALID;
    }
};

#endif // PPWLOBBY_OV66_02235FC8_H
