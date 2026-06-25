#ifndef PPWLOBBY_INNERINFO_H
#define PPWLOBBY_INNERINFO_H

// needs to be included first to match
// clang-format off
#include <vector>
// clang-format on
#include <deque>
#include <functional>

#include "ilobby/dwci_lobbydata.h"
#include "ilobby/ov66_022364B0.h"
#include "ppwlobby/ppw_lobby.h"

class UnkClass_ov66_0223CA1C : public UnkClass_ov66_0225B6E4 {
public:
    struct UnkClass_ov66_0223CA1C_SubStruct1 {
        s64 unk_00;

        UnkClass_ov66_0223CA1C_SubStruct1()
            : unk_00(PPW_LOBBY_INVALID_TIME)
        {
        }

        void UnkClass_ov66_0223CA1C_InlineFunc0()
        {
            unk_00 = inline_ov66_0223EE30();
        }
    };

private:
    struct UnkClass_ov66_0223CA1C_SubStruct2 : std::binary_function<const PPW_LobbyScheduleRecord &, const PPW_LobbyScheduleRecord &, bool> {
        bool operator()(const PPW_LobbyScheduleRecord &param0, const PPW_LobbyScheduleRecord &param1) const
        {
            return param0.time < param1.time;
        }
    };

    int unk_00;
    BOOL unk_04;
    UnkClass_ov66_0223CA1C_SubStruct1 unk_08;
    s64 unk_10;
    BOOL unk_18;
    u32 unk_1C;
    u32 unk_20;
    u32 unk_24;
    u8 unk_28;
    u8 unk_29;
    std::vector<PPW_LobbyScheduleRecord, PPW_Allocator<PPW_LobbyScheduleRecord> > unk_2C;
    std::deque<PPW_LobbyScheduleRecord, PPW_Allocator<PPW_LobbyScheduleRecord> > unk_38;
    std::vector<PPW_LobbyVipRecord, PPW_Allocator<PPW_LobbyVipRecord> > unk_50;
    PPW_LobbyQuestionnaire unk_5C;
    BOOL unk_334;

public:
    UnkClass_ov66_0223CA1C();

    BOOL ov66_0223CA80(PPW_LobbySchedule *param0, u32 &param1) const;
    BOOL ov66_0223CB84(const u8 *param0, u32 param1);
    BOOL ov66_0223EB80(const u8 *param0, u32 param1);
    BOOL ov66_0223EBAC(const u8 *param0, u32 param1);
    BOOL ov66_0223ED8C(const u8 *param0, u32 param1);
    BOOL ov66_0223EDE4(PPW_LobbyQuestionnaire *param0);
    void ov66_0223EE0C(const PPW_LobbyQuestionnaire *param0);
    std::vector<u8, PPW_Allocator<u8> > ov66_0223CB2C() const;
    void ov66_0223EE30();
    BOOL ov66_0223F00C() const;
    BOOL ov66_0223F0D0();

    BOOL UnkClass_ov66_0223CA1C_InlineFunc0()
    {
        unk_00 = 2;
        return TRUE;
    }

    BOOL UnkClass_ov66_0223CA1C_InlineFunc1()
    {
        return unk_00 >= 2;
    }

    BOOL UnkClass_ov66_0223CA1C_InlineFunc2()
    {
        unk_00 = 4;
        return TRUE;
    }

    BOOL UnkClass_ov66_0223CA1C_InlineFunc3() const
    {
        return unk_00 >= 4;
    }

    BOOL UnkClass_ov66_0223CA1C_InlineFunc4() const
    {
        return unk_04;
    }

    void UnkClass_ov66_0223CA1C_InlineFunc5(UnkClass_ov66_0223CA1C_SubStruct1 param0)
    {
        unk_04 = TRUE;
        unk_08 = param0;
    }

    void UnkClass_ov66_0223CA1C_InlineFunc6(PPW_LobbyTimeInfo &param0) const
    {
        param0.currentTime = inline_ov66_0223EE30();
        param0.openedTime = unk_08.unk_00;
        param0.lockedTime = unk_10;
    }

    UnkClass_ov66_0223CA1C_SubStruct1 UnkClass_ov66_0223CA1C_InlineFunc7()
    {
        unk_08.UnkClass_ov66_0223CA1C_InlineFunc0();
        return unk_08;
    }
};

#endif // PPWLOBBY_INNERINFO_H
