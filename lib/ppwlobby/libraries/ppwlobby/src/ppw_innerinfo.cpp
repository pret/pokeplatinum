#include "ppwlobby/ppw_innerinfo.h"

#include <lobby/dwci_lobby.h>

#include "ilobby/dwci_lobbybase.h"
#include "ilobby/ov66_022364B0.h"
#include "ppwlobby/ov66_0225B6C4.h"
#include "ppwlobby/ppw_parser.h"

UnkClass_ov66_0223CA1C::UnkClass_ov66_0223CA1C()
    : unk_00(0)
    , unk_04(FALSE)
    , unk_08()
    , unk_10(PPW_LOBBY_INVALID_TIME)
    , unk_18(FALSE)
    , unk_1C()
    , unk_20()
    , unk_28()
    , unk_29()
    , unk_2C()
    , unk_38()
    , unk_50()
    , unk_5C()
{
}

BOOL UnkClass_ov66_0223CA1C::ov66_0223CA80(PPW_LobbySchedule *param0, u32 &param1) const
{
    u32 v0 = sizeof(PPW_LobbySchedule) + sizeof(PPW_LobbyScheduleRecord) * (unk_2C.size() - 1);

    u32 v1 = param1;
    param1 = v0;
    if (v1 < v0 || !param0) {
        return FALSE;
    }

    param0->lockTime = unk_1C;
    param0->random = unk_20;
    param0->roomFlag = unk_24;
    param0->roomType = unk_28;
    param0->season = unk_29;
    param0->scheduleRecordNum = unk_2C.size();
    if (param0->scheduleRecordNum != 0) {
        MI_CpuCopy8(ov66_022364B0(unk_2C), param0->scheduleRecords, sizeof(PPW_LobbyScheduleRecord) * unk_2C.size());
    }
    return TRUE;
}

std::vector<u8, PPW_Allocator<u8> > UnkClass_ov66_0223CA1C::ov66_0223CB2C() const
{
    u32 v0 = 0;
    ov66_0223CA80(NULL, v0);
    std::vector<u8, PPW_Allocator<u8> > v1(v0);
    ov66_0223CA80((PPW_LobbySchedule *)ov66_022364B0(v1), v0);
    return v1;
}

BOOL UnkClass_ov66_0223CA1C::ov66_0223CB84(const u8 *param0, u32 param1)
{
    if (!ov66_0223EB80(param0, param1)) {
        return FALSE;
    }

    PPW_LobbySchedule *v0 = (PPW_LobbySchedule *)param0;
    unk_28 = v0->roomType;
    unk_29 = v0->season;
    unk_1C = v0->lockTime;
    unk_20 = v0->random;
    unk_2C.assign(v0->scheduleRecords, v0->scheduleRecords + v0->scheduleRecordNum);
    std::stable_sort(unk_2C.begin(), unk_2C.end(), UnkClass_ov66_0223CA1C_SubStruct2());

    unk_38.assign(unk_2C.begin(), unk_2C.end());
    return TRUE;
}

BOOL UnkClass_ov66_0223CA1C::ov66_0223EB80(const u8 *param0, u32 param1)
{
    if (param1 < sizeof(PPW_LobbySchedule) - sizeof(PPW_LobbyScheduleRecord)) {
        return FALSE;
    }

    PPW_LobbySchedule *v0 = (PPW_LobbySchedule *)param0;

    if (param1 < sizeof(PPW_LobbySchedule) + sizeof(PPW_LobbyScheduleRecord) * (v0->scheduleRecordNum - 1)) {
        return FALSE;
    }
    return TRUE;
}

BOOL UnkClass_ov66_0223CA1C::ov66_0223EBAC(const u8 *param0, u32 param1)
{
    ov66_0223ED8C(param0, param1);

    u32 v0 = param1 / sizeof(PPW_LobbyVipRecord);

    PPW_LobbyVipRecord *tempRecords = (PPW_LobbyVipRecord *)param0;
    unk_50.assign(tempRecords, tempRecords + v0);
    return TRUE;
}

BOOL UnkClass_ov66_0223CA1C::ov66_0223ED8C(const u8 *param0, u32 param1)
{
    if (param1 % sizeof(PPW_LobbyVipRecord) != 0) {
        return FALSE;
    }

    if (param1 == 0) {
        unk_50.clear();
        return TRUE;
    }

    return TRUE;
}

BOOL UnkClass_ov66_0223CA1C::ov66_0223EDE4(PPW_LobbyQuestionnaire *param0)
{
    if (!unk_334) {
        return FALSE;
    }

    MI_CpuCopy8(&unk_5C, param0, sizeof(PPW_LobbyQuestionnaire));
    return TRUE;
}

void UnkClass_ov66_0223CA1C::ov66_0223EE0C(const PPW_LobbyQuestionnaire *param0)
{
    MI_CpuCopy8(param0, &unk_5C, sizeof(PPW_LobbyQuestionnaire));
    unk_334 = TRUE;
}

void UnkClass_ov66_0223CA1C::ov66_0223EE30()
{
    switch (unk_00) {
    case 0:
    case 1:
    case 2:
    case 3:
        break;
    case 4:
        if (ov66_0223F00C()) {
            DWCi_LobbySetChannelMode(ov66_02234FC4()->UnkClass_ov66_0225B6C4_InlineFunc22().ov66_02235FC8().c_str(), &Unk_ov66_02258C8C);

            UnkStruct_ov66_0223EE30 v0;
            ov66_02237170(PPW_LOBBY_INVALID_USER_ID, PPW_LOBBY_CHANNEL_KIND_MAIN, 1, UnkClass_ov66_02241184::UnkEnum_ov66_02241184_0, 0, (u8 *)&v0, sizeof(UnkStruct_ov66_0223EE30));

            ov66_0223F0D0();
        }
        break;
    case 5:
        if (unk_38.empty()) {
            break;
        }
        PPW_LobbyScheduleRecord &v1 = unk_38.front();
        s64 v2 = inline_ov66_0223EE30();
        while (v1.time <= v2 - unk_10) {
            ov66_02234FC4()->UnkClass_ov66_0225B6C4_InlineFunc2().lobbyScheduleProgressCallback(v1.event);
            unk_38.pop_front();
            if (unk_38.empty()) {
                break;
            }
            v1 = unk_38.front();
        }
        break;
    default:
        break;
    }
}

BOOL UnkClass_ov66_0223CA1C::ov66_0223F00C() const
{
    if (unk_00 == 5 || ov66_02234FC4()->UnkClass_ov66_0225B6C4_InlineFunc0() != 8) {
        return FALSE;
    }

    if (unk_10 != PPW_LOBBY_INVALID_TIME) {
        return FALSE;
    }

    if (unk_18) {
        return TRUE;
    }

    if (ov66_02234FC4()->UnkClass_ov66_0225B6C4_InlineFunc26().ov66_02241ED0()) {
        return TRUE;
    }

    if (inline_ov66_0223EE30() > unk_08.unk_00 + unk_1C) {
        return TRUE;
    }

    return FALSE;
}

BOOL UnkClass_ov66_0223CA1C::ov66_0223F0D0()
{
    if (unk_00 != 5 && ov66_02234FC4()->UnkClass_ov66_0225B6C4_InlineFunc0() == 8) {
        unk_10 = inline_ov66_0223EE30();
        unk_00 = 5;
        unk_18 = FALSE;

        ov66_02234FC4()->UnkClass_ov66_0225B6C4_InlineFunc2().lobbyScheduleProgressCallback(PPW_LOBBY_TIME_EVENT_LOCK);
        return TRUE;
    }

    unk_18 = TRUE;

    return FALSE;
}
