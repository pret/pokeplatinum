#include <nitro.h>
#include <string.h>
#include <ppwlobby/ppw_lobby.h>
#include <dwc.h>

#include "enums.h"

#include "struct_decls/struct_0202B370_decl.h"
#include "struct_decls/struct_0202C878_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "overlay066/struct_ov66_02232B20.h"
#include "overlay066/struct_ov66_022589B4.h"

#include "heap.h"
#include "error_handling.h"
#include "unk_0202ACE0.h"
#include "unk_0202C858.h"
#include "overlay004/ov4_021D0D80.h"
#include "overlay066/ov66_022324F0.h"

typedef struct {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
} UnkStruct_ov66_022336C4_sub2;

typedef struct {
    s16 unk_00;
    u16 unk_02;
    s32 * unk_04;
} UnkStruct_ov66_022336C4_sub1;

typedef struct {
    const UnkStruct_ov66_022589B4 * unk_00;
    u32 unk_04;
    void * unk_08;
} UnkStruct_ov66_022336C4_sub3;

typedef struct {
    PPW_LobbyRecruitInfo unk_00;
    u16 unk_44;
    u16 unk_46;
    s32 unk_48;
} UnkStruct_ov66_022336C4_sub4;

typedef struct {
    PPW_LobbyVipRecord * unk_00;
    u16 unk_04;
    u16 unk_06;
} UnkStruct_ov66_022342F4;

typedef struct {
    PPW_LobbyQuestionnaire unk_00;
    u32 unk_2D8;
} UnkStruct_ov66_0223439C;

typedef struct {
    SaveData * unk_00;
    UnkStruct_0202B370 * unk_04;
    UnkStruct_0202C878 * unk_08;
    UnkStruct_ov66_022324F0 unk_0C;
    void * unk_20;
    u8 * unk_24;
    u32 unk_28;
    PPW_LobbySystemProfile unk_2C[20];
    UnkStruct_ov66_022336C4_sub1 unk_11C[2];
    u8 unk_12C;
    u8 unk_12D;
    u8 unk_12E;
    u8 unk_12F;
    u8 unk_130;
    u8 unk_131;
    u8 unk_132;
    u8 unk_133;
    UnkStruct_ov66_022336C4_sub2 unk_134[20];
    UnkStruct_ov66_022336C4_sub3 unk_184[2];
    PPW_LobbyTimeInfo unk_19C;
    u8 unk_1B4[1024];
    u32 unk_5B4;
    UnkStruct_ov66_022336C4_sub4 unk_5B8[3];
    u16 unk_69C;
    u8 unk_69E;
    u8 unk_69F;
    UnkStruct_ov66_022342F4 unk_6A0;
    UnkStruct_ov66_0223439C unk_6A8;
    PPW_LOBBY_RESULT unk_984;
} UnkStruct_ov66_022336C4;

static BOOL ov66_0223365C(PPW_LOBBY_RESULT param0);
static void ov66_0223369C(void);
static UnkEnum_ov66_022336B8 ov66_022336B8(PPW_LOBBY_CHANNEL_KIND param0);
static PPW_LOBBY_CHANNEL_KIND ov66_022336C0(UnkEnum_ov66_022336B8 param0);
static BOOL ov66_022336C4(UnkStruct_ov66_022336C4 * param0);
static void ov66_02233758(UnkStruct_ov66_022336C4 * param0, u32 param1, u32 param2);
static void ov66_02233788(UnkStruct_ov66_022336C4 * param0);
static void ov66_0223379C(UnkStruct_ov66_022336C4 * param0, s32 param1, const void * param2);
static void ov66_022337A8(UnkStruct_ov66_022336C4 * param0, s32 param1, const void * param2, u32 param3);
static const void * ov66_022337E8(const UnkStruct_ov66_022336C4 * param0, s32 param1);
static void ov66_0223380C(UnkStruct_ov66_022336C4 * param0, s32 param1);
static void ov66_02233838(UnkStruct_ov66_022336C4 * param0, s32 param1, const PPW_LobbySystemProfile * param2);
static const PPW_LobbySystemProfile * ov66_02233864(const UnkStruct_ov66_022336C4 * param0, s32 param1);
static void ov66_02233888(UnkStruct_ov66_022336C4 * param0, s32 param1);
static void ov66_022338C8(UnkStruct_ov66_022336C4 * param0, u32 param1, u32 param2, u32 param3);
static void ov66_02233920(UnkStruct_ov66_022336C4 * param0);
static void ov66_02233950(UnkStruct_ov66_022336C4 * param0, u32 param1);
static void ov66_02233984(UnkStruct_ov66_022336C4 * param0, s32 param1, u32 param2);
static void ov66_02233A08(UnkStruct_ov66_022336C4 * param0, s32 param1, u32 param2);
static s32 ov66_02233A34(const UnkStruct_ov66_022336C4 * param0, s32 param1, u32 param2);
static s32 ov66_02233A6C(const UnkStruct_ov66_022336C4 * param0, s32 param1, u32 param2);
static void ov66_02233A94(UnkStruct_ov66_022336C4 * param0, UnkEnum_ov66_022336B8 param1);
static BOOL ov66_02233AE8(const UnkStruct_ov66_022336C4 * param0, UnkEnum_ov66_022336B8 param1);
static void ov66_02233B54(BOOL param0, PPW_LOBBY_CHANNEL_KIND param1);
static void ov66_02233BF0(s32 param0, const PPW_LobbySystemProfile * param1, const u8 * param2, u32 param3);
static void ov66_02233C60(s32 param0);
static void ov66_02233CE4(s32 param0, PPW_LOBBY_CHANNEL_KIND param1, s32 param2, const char * param3);
static void ov66_02233CE8(s32 param0, PPW_LOBBY_CHANNEL_KIND param1, s32 param2, const u8 * param3, u32 param4);
static void ov66_02233D94(BOOL param0, BOOL param1, PPW_LOBBY_CHANNEL_KIND param2, s32 param3, const char * param4, const u8 * param5, u32 param6, void * param7);
static void ov66_02233DD4(s32 param0, const PPW_LobbySystemProfile * param1);
static void ov66_02233E50(s32 param0, const u8 * param1, u32 param2);
static void ov66_02233E8C(s32 param0, const PPW_LobbyRecruitInfo * param1);
static void ov66_02233F18(s32 param0, const PPW_LobbyRecruitInfo * param1);
static void ov66_02233F60(PPW_LOBBY_TIME_EVENT param0);
static void ov66_02233F74(PPW_LOBBY_STATS_RESULT param0, const u8 * param1, u32 param2);
static BOOL ov66_02233FA0(PPW_LOBBY_STATS_RESULT param0, const PPW_LobbySchedule * param1);
static void ov66_02233FC0(PPW_LOBBY_STATS_RESULT param0, const PPW_LobbyVipRecord * param1, u32 param2);
static void ov66_02233FEC(PPW_LOBBY_STATS_RESULT param0, const PPW_LobbyQuestionnaire * param1);
static void ov66_02234018(PPW_LOBBY_STATS_RESULT param0);
static void ov66_02234040(u32 param0);
static void ov66_02234054(UnkStruct_ov66_022336C4 * param0);
static void ov66_02234074(UnkStruct_ov66_022336C4 * param0, UnkEnum_ov66_02232F38 param1, s32 param2, const PPW_LobbyRecruitInfo * param3);
static BOOL ov66_022340F0(UnkStruct_ov66_022336C4 * param0, UnkEnum_ov66_02232F38 param1, s32 param2);
static BOOL ov66_0223412C(const UnkStruct_ov66_022336C4 * param0, UnkEnum_ov66_02232F38 param1);
static u16 ov66_0223414C(const UnkStruct_ov66_022336C4 * param0, UnkEnum_ov66_02232F38 param1);
static const PPW_LobbyRecruitInfo * ov66_022341C0(const UnkStruct_ov66_022336C4 * param0, UnkEnum_ov66_02232F38 param1);
static void ov66_022341F4(UnkStruct_ov66_022336C4 * param0);
static void ov66_02234288(PPW_LobbyRecruitInfo * param0, const s64 * param1);
static void ov66_02234294(const PPW_LobbyRecruitInfo * param0, s64 * param1);
static void ov66_022342A0(u16 param0, void * param1);
static void ov66_022342A4(u16 param0, void * param1);
static u32 ov66_022342CC(const PPW_LobbySchedule * param0, PPW_LOBBY_TIME_EVENT param1);
static void ov66_022342F4(UnkStruct_ov66_022342F4 * param0, u32 param1, u32 param2);
static void ov66_0223430C(UnkStruct_ov66_022342F4 * param0);
static void ov66_0223431C(UnkStruct_ov66_022342F4 * param0, const PPW_LobbyVipRecord * param1, u32 param2);
static BOOL ov66_02234344(const UnkStruct_ov66_022342F4 * param0, s32 param1);
static s32 ov66_0223436C(const UnkStruct_ov66_022342F4 * param0, s32 param1);
static void ov66_0223439C(UnkStruct_ov66_0223439C * param0, const PPW_LobbyQuestionnaire * param1);

static const char * Unk_ov66_02258DF0[1] = {
    "b_lby_wlddata"
};

static UnkStruct_ov66_022336C4 * Unk_ov66_0225B6C0 = NULL;

void ov66_022324F0 (u32 param0, SaveData * param1, u32 param2, const UnkStruct_ov66_022324F0 * param3, void * param4)
{
    GF_ASSERT(Unk_ov66_0225B6C0 == NULL);
    GF_ASSERT(param2 < PPW_LOBBY_MAX_BINARY_SIZE);

    Unk_ov66_0225B6C0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov66_022336C4));
    memset(Unk_ov66_0225B6C0, 0, sizeof(UnkStruct_ov66_022336C4));

    Unk_ov66_0225B6C0->unk_00 = param1;
    Unk_ov66_0225B6C0->unk_04 = sub_0202B370(param1);
    Unk_ov66_0225B6C0->unk_08 = sub_0202C878(param1);
    Unk_ov66_0225B6C0->unk_0C = *param3;
    Unk_ov66_0225B6C0->unk_20 = param4;

    ov66_02233758(Unk_ov66_0225B6C0, param2, param0);
    ov66_022338C8(Unk_ov66_0225B6C0, PPW_LOBBY_MAX_PLAYER_NUM_MAIN, PPW_LOBBY_MAX_PLAYER_NUM_FOOT, param0);
    ov66_02234054(Unk_ov66_0225B6C0);
    ov66_022342F4(&Unk_ov66_0225B6C0->unk_6A0, 128, param0);
}

void ov66_02232598 (void)
{
    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);

    ov66_0223430C(&Unk_ov66_0225B6C0->unk_6A0);
    ov66_02233920(Unk_ov66_0225B6C0);
    ov66_02233788(Unk_ov66_0225B6C0);

    Heap_FreeToHeap(Unk_ov66_0225B6C0);
    Unk_ov66_0225B6C0 = NULL;
}

UnkEnum_ov66_0223287C ov66_022325D8 (void)
{
    PPW_LOBBY_STATE v0;

    if (Unk_ov66_0225B6C0 == NULL) {
        return UnkEnum_ov66_0223287C_00;
    }

    v0 = PPW_LobbyProcess();

    switch (v0) {
    case PPW_LOBBY_STATE_NOTINITIALIZED:
        Unk_ov66_0225B6C0->unk_12C = UnkEnum_ov66_0223287C_00;
        break;
    case PPW_LOBBY_STATE_CONNECTING:
    case PPW_LOBBY_STATE_CONNECTED:
    case PPW_LOBBY_STATE_DOWNLOAD:
    case PPW_LOBBY_STATE_DOWNLOAD_WAIT:
    case PPW_LOBBY_STATE_SEARCHINGCHANNEL:
    case PPW_LOBBY_STATE_ENTERMAINCHANNEL:
    case PPW_LOBBY_STATE_PREPARINGMAINCHANNEL:
        Unk_ov66_0225B6C0->unk_12C = UnkEnum_ov66_0223287C_01;
        break;
    case PPW_LOBBY_STATE_READY:
        Unk_ov66_0225B6C0->unk_12C = UnkEnum_ov66_0223287C_02;
        break;
    case PPW_LOBBY_STATE_CLOSING:
        Unk_ov66_0225B6C0->unk_12C = UnkEnum_ov66_0223287C_03;
        break;
    case PPW_LOBBY_STATE_ERROR:
        Unk_ov66_0225B6C0->unk_12C = UnkEnum_ov66_0223287C_04;
        break;
    }

    if (Unk_ov66_0225B6C0->unk_12C == UnkEnum_ov66_0223287C_02) {
        ov66_022341F4(Unk_ov66_0225B6C0);
        PPW_LobbyGetTimeInfo(&Unk_ov66_0225B6C0->unk_19C);

        {
            PPW_LOBBY_CHANNEL_STATE v1;

            v1 = PPW_LobbyGetSubChannelState();

            switch (v1) {
            case PPW_LOBBY_CHANNEL_STATE_NONE:
                Unk_ov66_0225B6C0->unk_12E = UnkEnum_ov66_0223287C_00;
                Unk_ov66_0225B6C0->unk_12D = UnkEnum_ov66_022336B8_04;
                break;
            case PPW_LOBBY_CHANNEL_STATE_UNAVAILABLE:
                Unk_ov66_0225B6C0->unk_12E = UnkEnum_ov66_0223287C_01;
                break;
            case PPW_LOBBY_CHANNEL_STATE_AVAILABLE:
                if (Unk_ov66_0225B6C0->unk_12E != UnkEnum_ov66_0223287C_03) {
                    Unk_ov66_0225B6C0->unk_12E = UnkEnum_ov66_0223287C_02;
                }
                break;
            case PPW_LOBBY_CHANNEL_STATE_ERROR:
                Unk_ov66_0225B6C0->unk_12E = UnkEnum_ov66_0223287C_04;
                break;
            }
        }
    }

    return ov66_0223287C();
}

PPW_LOBBY_ERROR ov66_022326DC (void)
{    
    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);
    
    if (Unk_ov66_0225B6C0->unk_984 == 0)
        return PPW_LobbyGetLastError();
    else
        return ov66_02237134(Unk_ov66_0225B6C0->unk_984);
}

s32 ov66_0223270C (PPW_LOBBY_ERROR param0)
{
    return PPW_LobbyToErrorCode(param0);
}

BOOL ov66_02232714 (const void * param0)
{
    return ov66_02232720(param0, ((DWC_LOBBY_CHANNEL_PREFIX_RELEASE)));
}

BOOL ov66_02232720 (const void * param0, u32 param1)
{
    PPW_LobbyCallbacks v0;
    PPW_LOBBY_RESULT v1;

    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);

    {
        v0.lobbyJoinChannelCallback = ov66_02233B54;
        v0.lobbyPlayerConnectedCallback = ov66_02233BF0;
        v0.lobbyPlayerDisconnectedCallback = ov66_02233C60;
        v0.lobbyStringMassageReceivedCallback = ov66_02233CE4;
        v0.lobbyBinaryMassageReceivedCallback = ov66_02233CE8;
        v0.lobbyGetChannelDataCallback = ov66_02233D94;
        v0.lobbySystemProfileUpdatedCallback = ov66_02233DD4;
        v0.lobbyUserProfileUpdatedCallback = ov66_02233E50;
        v0.lobbyRecruitCallback = ov66_02233E8C;
        v0.lobbyRecruitStoppedCallback = ov66_02233F18;
        v0.lobbyScheduleProgressCallback = ov66_02233F60;
        v0.lobbyCheckProfileCallback = ov66_02233F74;
        v0.lobbyNotifyScheduleCallback = ov66_02233FA0;
        v0.lobbyGetVipCallback = ov66_02233FC0;
        v0.lobbyGetQuestionnaireCallback = ov66_02233FEC;
        v0.lobbySubmitQuestionnaireCallback = ov66_02234018;
        v0.lobbyExcessFloodCallback = ov66_02234040;
    }

    {
        DWCUserData * v2;

        v2 = sub_0202AD28(Unk_ov66_0225B6C0->unk_04);
        Unk_ov66_0225B6C0->unk_984 = PPW_LobbyInitializeAsync(("pokemonplatds"), ("IIup73"), param1, &v0, v2, param0, Unk_ov66_0225B6C0->unk_28);
    }

    return ov66_0223365C(Unk_ov66_0225B6C0->unk_984);
}

BOOL ov66_02232804 (void)
{
    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);

    if (Unk_ov66_0225B6C0->unk_12C == UnkEnum_ov66_0223287C_02) {
        return 1;
    }

    return 0;
}

void ov66_0223282C (void)
{
    PPW_LOBBY_RESULT v0;
    BOOL v1;

    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);

    ov66_0223369C();

    v0 = PPW_LobbyShutdownAsync();
    v1 = ov66_0223365C(v0);

    GF_ASSERT(v1);
}

BOOL ov66_02232854 (void)
{
    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);

    if (Unk_ov66_0225B6C0->unk_12C == UnkEnum_ov66_0223287C_00) {
        return 1;
    }

    return 0;
}

UnkEnum_ov66_0223287C ov66_0223287C (void)
{
    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);

    if (Unk_ov66_0225B6C0->unk_12D != UnkEnum_ov66_022336B8_04) {
        if (Unk_ov66_0225B6C0->unk_12E == UnkEnum_ov66_0223287C_04) {
            return UnkEnum_ov66_0223287C_04;
        }
    }

    if (Unk_ov66_0225B6C0->unk_133) {
        return UnkEnum_ov66_0223287C_04;
    }

    if (Unk_ov66_0225B6C0->unk_132) {
        return UnkEnum_ov66_0223287C_04;
    }

    return Unk_ov66_0225B6C0->unk_12C;
}

BOOL ov66_022328CC (void)
{
    BOOL v0;

    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);
    v0 = Unk_ov66_0225B6C0->unk_131;

    Unk_ov66_0225B6C0->unk_131 = 0;
    return v0;
}

s32 ov66_022328F0 (void)
{
    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);
    return PPW_LobbyGetMyUserId();
}

void ov66_02232908 (const void * param0)
{
    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);
    ov66_0223379C(Unk_ov66_0225B6C0, PPW_LobbyGetMyUserId(), param0);

    PPW_LobbyUpdateMyProfile(param0, Unk_ov66_0225B6C0->unk_28, 0);
}

const void * ov66_0223293C (s32 param0)
{
    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);
    return ov66_022337E8(Unk_ov66_0225B6C0, param0);
}

void ov66_0223295C (s32 param0, s64 * param1)
{
    const PPW_LobbySystemProfile * v0;

    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);

    v0 = ov66_02233864(Unk_ov66_0225B6C0, param0);
    *param1 = v0->enterTime;
}

s32 ov66_02232988 (void)
{
    int v0;
    s32 v1 = DWC_LOBBY_INVALID_USER_ID;
    s64 v2 = 0xfffffffffffffff;

    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);

    for (v0 = 0; v0 < PPW_LOBBY_MAX_PLAYER_NUM_MAIN; v0++) {
        {
            s32 v3;
            s64 v4;

            v3 = ov66_02233A6C(Unk_ov66_0225B6C0, v0, 0);

            if (v3 != DWC_LOBBY_INVALID_USER_ID) {
                ov66_0223295C(v3, &v4);

                if (v2 > v4) {
                    v2 = v4;
                    v1 = v3;
                }
            }
        }
    }

    return v1;
}

s32 ov66_022329E4 (s32 param0)
{
    int v0;
    s32 v1 = DWC_LOBBY_INVALID_USER_ID;
    s64 v2 = 0xfffffffffffffff;

    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);

    for (v0 = 0; v0 < PPW_LOBBY_MAX_PLAYER_NUM_MAIN; v0++) {
        {
            s32 v3;
            s64 v4;

            v3 = ov66_02233A6C(Unk_ov66_0225B6C0, v0, 0);

            if ((v3 != DWC_LOBBY_INVALID_USER_ID) && (v3 != param0)) {
                ov66_0223295C(v3, &v4);

                if (v2 > v4) {
                    v2 = v4;
                    v1 = v3;
                }
            }
        }
    }

    return v1;
}

BOOL ov66_02232A48 (UnkEnum_ov66_022336B8 param0)
{
    BOOL v0;
    PPW_LOBBY_RESULT v1;

    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);

    v1 = PPW_LobbyJoinSubChannelAsync(ov66_022336C0(param0));
    v0 = ov66_0223365C(v1);

    if (v0 == 1) {
        Unk_ov66_0225B6C0->unk_12D = param0;
        Unk_ov66_0225B6C0->unk_12F = UnkEnum_ov66_02232A84_00;
    }

    return v0;
}

UnkEnum_ov66_02232A84 ov66_02232A84 (void)
{
    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);
    return Unk_ov66_0225B6C0->unk_12F;
}

BOOL ov66_02232AA4 (void)
{
    PPW_LOBBY_RESULT v0;
    BOOL v1;

    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);

    v0 = PPW_LobbyLeaveSubChannel();
    v1 = ov66_0223365C(v0);

    if (v1 == 1) {
        Unk_ov66_0225B6C0->unk_12E = UnkEnum_ov66_0223287C_03;
    }

    return v1;
}

BOOL ov66_02232AD4 (void)
{
    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);

    if (Unk_ov66_0225B6C0->unk_12E == UnkEnum_ov66_0223287C_00) {
        return 1;
    }

    return 0;
}

BOOL ov66_02232B00 (UnkEnum_ov66_022336B8 param0)
{
    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);
    return ov66_02233AE8(Unk_ov66_0225B6C0, param0);
}

void ov66_02232B20 (UnkStruct_ov66_02232B20 * param0)
{
    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);

    param0->unk_00 = Unk_ov66_0225B6C0->unk_11C[0].unk_00;
    param0->unk_04 = Unk_ov66_0225B6C0->unk_11C[0].unk_04;
}

void ov66_02232B4C (UnkStruct_ov66_02232B20 * param0)
{
    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);

    param0->unk_00 = Unk_ov66_0225B6C0->unk_11C[1].unk_00;
    param0->unk_04 = Unk_ov66_0225B6C0->unk_11C[1].unk_04;
}

u32 ov66_02232B78 (s32 param0)
{
    return ov66_02233A34(Unk_ov66_0225B6C0, param0, 0);
}

u32 ov66_02232B8C (s32 param0)
{
    return ov66_02233A34(Unk_ov66_0225B6C0, param0, 1);
}

s32 ov66_02232BA0 (u32 param0)
{
    return ov66_02233A6C(Unk_ov66_0225B6C0, param0, 0);
}

s32 ov66_02232BB4 (u32 param0)
{
    return ov66_02233A6C(Unk_ov66_0225B6C0, param0, 1);
}

void ov66_02232BC8 (s64 * param0)
{
    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);
    *param0 = Unk_ov66_0225B6C0->unk_19C.currentTime;
}

u32 ov66_02232BEC (UnkEnum_ov66_02232BEC param0)
{
    u32 v0;
    PPW_LobbySchedule * v1;
    int v2;

    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);
    GF_ASSERT((Unk_ov66_0225B6C0->unk_12C == UnkEnum_ov66_0223287C_02) || (Unk_ov66_0225B6C0->unk_12C == UnkEnum_ov66_0223287C_04));
    GF_ASSERT(param0 < UnkEnum_ov66_02232BEC_08);

    v1 = (PPW_LobbySchedule *)Unk_ov66_0225B6C0->unk_1B4;

    switch (param0) {
    case UnkEnum_ov66_02232BEC_00:
        v0 = v1->lockTime;
        break;
    case UnkEnum_ov66_02232BEC_01:
        v0 = v1->random;
        break;
    case UnkEnum_ov66_02232BEC_02:
        v0 = v1->roomType;
        break;
    case UnkEnum_ov66_02232BEC_03:
        v0 = v1->season;
        break;
    case UnkEnum_ov66_02232BEC_04:
        if (v1->roomFlag & PPW_LOBBY_ROOM_FLAG_ARCEUS) {
            v0 = 1;
        } else {
            v0 = 0;
        }
        break;
    case UnkEnum_ov66_02232BEC_05:
        v0 = ov66_022342CC(v1, PPW_LOBBY_TIME_EVENT_CLOSE);
        break;
    case UnkEnum_ov66_02232BEC_06:
        v0 = ov66_022342CC(v1, PPW_LOBBY_TIME_EVENT_FIRE_WORKS_START);
        break;
    case UnkEnum_ov66_02232BEC_07:
        v0 = ov66_022342CC(v1, PPW_LOBBY_TIME_EVENT_FIRE_WORKS_END);
        break;
    }

    return v0;
}

BOOL ov66_02232C8C (void)
{
    BOOL v0;

    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);

    v0 = ov66_022336C4(Unk_ov66_0225B6C0);

    if (v0) {
        Unk_ov66_0225B6C0->unk_130 = 1;
    }

    return v0;
}

BOOL ov66_02232CB8 (void)
{
    if (Unk_ov66_0225B6C0->unk_130 == 0) {
        return 1;
    }

    return 0;
}

u16 ov66_02232CD4 (u8 param0)
{
    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);
    GF_ASSERT(param0 < 20);

    return Unk_ov66_0225B6C0->unk_134[param0].unk_00;
}

u8 ov66_02232D00 (u8 param0)
{
    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);
    GF_ASSERT(param0 < 20);

    return Unk_ov66_0225B6C0->unk_134[param0].unk_02;
}

void ov66_02232D30 (const UnkStruct_ov66_022589B4 * param0, u32 param1, void * param2)
{
    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);

    Unk_ov66_0225B6C0->unk_184[0].unk_00 = param0;
    Unk_ov66_0225B6C0->unk_184[0].unk_04 = param1;
    Unk_ov66_0225B6C0->unk_184[0].unk_08 = param2;
}

void ov66_02232D60 (const UnkStruct_ov66_022589B4 * param0, u32 param1, void * param2)
{
    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);

    Unk_ov66_0225B6C0->unk_184[1].unk_00 = param0;
    Unk_ov66_0225B6C0->unk_184[1].unk_04 = param1;
    Unk_ov66_0225B6C0->unk_184[1].unk_08 = param2;
}

void ov66_02232D90 (void)
{
    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);
    memset(&Unk_ov66_0225B6C0->unk_184[0], 0, sizeof(UnkStruct_ov66_022336C4_sub3));
}

void ov66_02232DC8 (void)
{
    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);
    memset(&Unk_ov66_0225B6C0->unk_184[1], 0, sizeof(UnkStruct_ov66_022336C4_sub3));
}

void ov66_02232E00 (u32 param0, const void * param1, u32 param2)
{
    PPW_LOBBY_RESULT v0;
    BOOL v1;

    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);
    GF_ASSERT(Unk_ov66_0225B6C0->unk_184[0].unk_04 > param0);
    GF_ASSERT(Unk_ov66_0225B6C0->unk_184[0].unk_00[param0].unk_04 == param2);

    v0 = PPW_LobbySendChannelBinaryMessage(PPW_LOBBY_CHANNEL_KIND_MAIN, param0, param1, param2);
    v1 = ov66_0223365C(v0);

    GF_ASSERT(v1 == 1);
}

void ov66_02232E5C (u32 param0, s32 param1, const void * param2, u32 param3)
{
    PPW_LOBBY_RESULT v0;
    BOOL v1;

    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);
    GF_ASSERT(Unk_ov66_0225B6C0->unk_184[0].unk_04 > param0);
    GF_ASSERT(Unk_ov66_0225B6C0->unk_184[0].unk_00[param0].unk_04 == param3);

    v0 = PPW_LobbySendPlayerBinaryMessage(param1, param0, param2, param3);
    v1 = ov66_0223365C(v0);

    GF_ASSERT(v1 == 1);
}

void ov66_02232EBC (u32 param0, const void * param1, u32 param2)
{
    PPW_LOBBY_RESULT v0;
    BOOL v1;
    u32 v2;

    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);
    GF_ASSERT(Unk_ov66_0225B6C0->unk_184[1].unk_04 > param0);
    GF_ASSERT(Unk_ov66_0225B6C0->unk_184[1].unk_00[param0].unk_04 == param2);
    GF_ASSERT(Unk_ov66_0225B6C0->unk_12D != UnkEnum_ov66_022336B8_04);

    v2 = ov66_022336C0(Unk_ov66_0225B6C0->unk_12D);
    v0 = PPW_LobbySendChannelBinaryMessage(v2, param0, param1, param2);
    v1 = ov66_0223365C(v0);

    GF_ASSERT(v1 == 1);
}

BOOL ov66_02232F38 (UnkEnum_ov66_02232F38 param0, u32 param1)
{
    PPW_LOBBY_RESULT v0;
    BOOL v1;

    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);

    if (ov66_0223412C(Unk_ov66_0225B6C0, param0) == 1) {
        return 0;
    }

    if (Unk_ov66_0225B6C0->unk_69C != UnkEnum_ov66_02232F38_03) {
        return 0;
    }

    Unk_ov66_0225B6C0->unk_5B8[param0].unk_00.gameKind = param0;
    Unk_ov66_0225B6C0->unk_5B8[param0].unk_00.maxNum = param1;
    Unk_ov66_0225B6C0->unk_5B8[param0].unk_00.currentNum = 1;
    Unk_ov66_0225B6C0->unk_5B8[param0].unk_00.paramVal = 0;

    ov66_02234288(&Unk_ov66_0225B6C0->unk_5B8[param0].unk_00, &Unk_ov66_0225B6C0->unk_19C.currentTime);

    v0 = PPW_LobbyStartRecruit(&Unk_ov66_0225B6C0->unk_5B8[param0].unk_00);
    v1 = ov66_0223365C(v0);

    GF_ASSERT(v1);

    Unk_ov66_0225B6C0->unk_5B8[param0].unk_44 = 1;
    Unk_ov66_0225B6C0->unk_5B8[param0].unk_48 = PPW_LobbyGetMyUserId();
    Unk_ov66_0225B6C0->unk_5B8[param0].unk_46 = 60 * 30;
    Unk_ov66_0225B6C0->unk_69C = param0;
    Unk_ov66_0225B6C0->unk_69E = 1;
    Unk_ov66_0225B6C0->unk_69F = 0;

    if (ov4_021D116C((u8 *)Unk_ov66_0225B6C0->unk_5B8[param0].unk_00.matchMakingString, param1, 1, (Unk_ov66_0225B6C0->unk_5B8[param0].unk_46 / 30))) {
        (void)0;
    }

    ov4_021D1150(ov66_022342A0, Unk_ov66_0225B6C0);
    ov4_021D1120(ov66_022342A4, Unk_ov66_0225B6C0);

    return 1;
}

void ov66_02233064 (void)
{
    PPW_LOBBY_RESULT v0;
    BOOL v1;

    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);

    if (Unk_ov66_0225B6C0->unk_69C == UnkEnum_ov66_02232F38_03) {
        return;
    }

    if (Unk_ov66_0225B6C0->unk_69E == 0) {
        return;
    }

    v0 = PPW_LobbyStopRecruit();
    v1 = ov66_0223365C(v0);
    GF_ASSERT(v1);

    v1 = ov66_022340F0(Unk_ov66_0225B6C0, Unk_ov66_0225B6C0->unk_69C, PPW_LobbyGetMyUserId());
    GF_ASSERT(v1);

    Unk_ov66_0225B6C0->unk_69E = 0;
}

void ov66_022330CC (void)
{
    PPW_LOBBY_RESULT v0;
    BOOL v1;

    GF_ASSERT(Unk_ov66_0225B6C0);

    if (Unk_ov66_0225B6C0->unk_69E == 0) {
        return;
    }

    Unk_ov66_0225B6C0->unk_5B8[Unk_ov66_0225B6C0->unk_69C].unk_00.paramVal = 1;

    v0 = PPW_LobbyUpdateRecruitInfo(&Unk_ov66_0225B6C0->unk_5B8[Unk_ov66_0225B6C0->unk_69C].unk_00);
    v1 = ov66_0223365C(v0);

    GF_ASSERT(v1);
}

BOOL ov66_02233128 (void)
{
    GF_ASSERT(Unk_ov66_0225B6C0);

    if (Unk_ov66_0225B6C0->unk_69C == UnkEnum_ov66_02232F38_03) {
        return 0;
    }

    if (Unk_ov66_0225B6C0->unk_5B8[Unk_ov66_0225B6C0->unk_69C].unk_00.paramVal == 1) {
        return 1;
    }

    return 0;
}

BOOL ov66_02233164 (void)
{
    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);
    return Unk_ov66_0225B6C0->unk_69F;
}

BOOL ov66_02233184 (UnkEnum_ov66_02232F38 param0)
{
    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);
    return ov66_0223412C(Unk_ov66_0225B6C0, param0);
}

BOOL ov66_022331A4 (UnkEnum_ov66_02232F38 param0)
{
    GF_ASSERT(Unk_ov66_0225B6C0);

    if (ov66_02233184(param0) == 0) {
        return 0;
    }

    if (Unk_ov66_0225B6C0->unk_5B8[param0].unk_00.paramVal == 0) {
        return 1;
    }

    return 0;
}

u32 ov66_022331E4 (UnkEnum_ov66_02232F38 param0)
{
    const PPW_LobbyRecruitInfo * v0;

    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);
    GF_ASSERT(param0 < UnkEnum_ov66_02232F38_03);

    if (ov66_0223412C(Unk_ov66_0225B6C0, param0) == 0) {
        return 0;
    }

    v0 = ov66_022341C0(Unk_ov66_0225B6C0, param0);
    return v0->maxNum - v0->currentNum;
}

u32 ov66_02233224 (UnkEnum_ov66_02232F38 param0)
{
    const PPW_LobbyRecruitInfo * v0;

    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);
    GF_ASSERT(param0 < UnkEnum_ov66_02232F38_03);

    if (ov66_0223412C(Unk_ov66_0225B6C0, param0) == 0) {
        return 0;
    }

    v0 = ov66_022341C0(Unk_ov66_0225B6C0, param0);
    return v0->currentNum;
}

BOOL ov66_02233260 (UnkEnum_ov66_02232F38 param0)
{
    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);

    if (ov66_0223412C(Unk_ov66_0225B6C0, param0) == 0) {
        return 0;
    }

    if (Unk_ov66_0225B6C0->unk_69C != UnkEnum_ov66_02232F38_03) {
        return 0;
    }

    if (Unk_ov66_0225B6C0->unk_5B8[param0].unk_00.paramVal == 1) {
        return 0;
    }

    Unk_ov66_0225B6C0->unk_69C = param0;

    if (ov4_021D116C((u8 *)Unk_ov66_0225B6C0->unk_5B8[param0].unk_00.matchMakingString, Unk_ov66_0225B6C0->unk_5B8[param0].unk_00.maxNum, 0, (Unk_ov66_0225B6C0->unk_5B8[param0].unk_46 / 30))) {
        (void)0;
    }

    ov4_021D1150(ov66_022342A0, Unk_ov66_0225B6C0);
    ov4_021D1120(ov66_022342A4, Unk_ov66_0225B6C0);

    return 1;
}

s32 ov66_022332F8 (UnkEnum_ov66_02232F38 param0)
{
    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);
    GF_ASSERT(param0 < UnkEnum_ov66_02232F38_03);

    if (ov66_0223412C(Unk_ov66_0225B6C0, param0) == 0) {
        return 60 * 30;
    }

    return Unk_ov66_0225B6C0->unk_5B8[param0].unk_46;
}

s32 ov66_02233340 (void)
{
    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);

    if (Unk_ov66_0225B6C0->unk_69C == UnkEnum_ov66_02232F38_03) {
        return DWC_LOBBY_INVALID_USER_ID;
    }

    return Unk_ov66_0225B6C0->unk_5B8[Unk_ov66_0225B6C0->unk_69C].unk_48;
}

BOOL ov66_02233374 (void)
{
    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);
    return Unk_ov66_0225B6C0->unk_69E;
}

BOOL ov66_02233394 (s32 param0)
{
    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);
    return ov66_02234344(&Unk_ov66_0225B6C0->unk_6A0, param0);
}

s32 ov66_022333BC (s32 param0)
{
    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);
    return ov66_0223436C(&Unk_ov66_0225B6C0->unk_6A0, param0);
}

void ov66_022333E4 (s32 param0)
{
    u32 v0;
    BOOL v1;

    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);
    GF_ASSERT(param0 < PPW_LOBBY_QUESTIONNAIRE_ANSWER_NUM);
    GF_ASSERT(Unk_ov66_0225B6C0->unk_6A8.unk_2D8 != UnkEnum_ov66_02233434_01);

    v0 = PPW_LobbySubmitQuestionnaire(param0);
    v1 = ov66_0223365C(v0);

    GF_ASSERT(v1 == 1);

    Unk_ov66_0225B6C0->unk_6A8.unk_2D8 = UnkEnum_ov66_02233434_01;
}

UnkEnum_ov66_02233434 ov66_02233434 (void)
{
    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);
    return Unk_ov66_0225B6C0->unk_6A8.unk_2D8;
}

s32 ov66_02233454 (UnkEnum_ov66_02233454 param0)
{
    s32 v0;

    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);
    GF_ASSERT(param0 < UnkEnum_ov66_02233454_11);

    switch (param0) {
    case UnkEnum_ov66_02233454_00:
        v0 = Unk_ov66_0225B6C0->unk_6A8.unk_00.currentQuestionnaireRecord.questionSerialNo;
        break;
    case UnkEnum_ov66_02233454_01:
        v0 = Unk_ov66_0225B6C0->unk_6A8.unk_00.currentQuestionnaireRecord.questionNo;
        break;
    case UnkEnum_ov66_02233454_02:
        v0 = Unk_ov66_0225B6C0->unk_6A8.unk_00.currentQuestionnaireRecord.isSpecialWeek;
        break;
    case UnkEnum_ov66_02233454_03:
        if (Unk_ov66_0225B6C0->unk_6A8.unk_00.currentQuestionnaireRecord.questionNo >= PPW_LOBBY_FREE_QUESTION_START_NO) {
            v0 = 1;
        } else {
            v0 = 0;
        }
        break;
    case UnkEnum_ov66_02233454_04:
        v0 = Unk_ov66_0225B6C0->unk_6A8.unk_00.lastQuestionnaireRecord.questionSerialNo;
        break;
    case UnkEnum_ov66_02233454_05:
        v0 = Unk_ov66_0225B6C0->unk_6A8.unk_00.lastQuestionnaireRecord.questionNo;
        break;
    case UnkEnum_ov66_02233454_06:
        v0 = Unk_ov66_0225B6C0->unk_6A8.unk_00.lastQuestionnaireRecord.isSpecialWeek;
        break;
    case UnkEnum_ov66_02233454_07:
        if (Unk_ov66_0225B6C0->unk_6A8.unk_00.lastQuestionnaireRecord.questionNo >= PPW_LOBBY_FREE_QUESTION_START_NO) {
            v0 = 1;
        } else {
            v0 = 0;
        }
        break;
    case UnkEnum_ov66_02233454_08:
    case UnkEnum_ov66_02233454_09:
    case UnkEnum_ov66_02233454_10:
        v0 = Unk_ov66_0225B6C0->unk_6A8.unk_00.lastMultiResult[param0 - UnkEnum_ov66_02233454_08];
        break;
    default:
        GF_ASSERT(0);
        v0 = 0;
        break;
    }

    return v0;
}

u16 * ov66_02233538 (UnkEnum_ov66_02233538 param0)
{
    u16 * v0 = NULL;

    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);
    GF_ASSERT(param0 < UnkEnum_ov66_02233538_08);

    switch (param0) {
    case UnkEnum_ov66_02233538_00:
        v0 = Unk_ov66_0225B6C0->unk_6A8.unk_00.currentQuestionnaireRecord.questionSentence;
        break;
    case UnkEnum_ov66_02233538_01:
    case UnkEnum_ov66_02233538_02:
    case UnkEnum_ov66_02233538_03:
        v0 = Unk_ov66_0225B6C0->unk_6A8.unk_00.currentQuestionnaireRecord.answer[param0 - UnkEnum_ov66_02233538_01];
        break;
    case UnkEnum_ov66_02233538_04:
        v0 = Unk_ov66_0225B6C0->unk_6A8.unk_00.lastQuestionnaireRecord.questionSentence;
        break;
    case UnkEnum_ov66_02233538_05:
    case UnkEnum_ov66_02233538_06:
    case UnkEnum_ov66_02233538_07:
        v0 = Unk_ov66_0225B6C0->unk_6A8.unk_00.lastQuestionnaireRecord.answer[param0 - UnkEnum_ov66_02233538_05];
        break;
    default:
        GF_ASSERT(0);
        v0 = NULL;
        break;
    }

    return v0;
}

BOOL ov66_022335C0 (UnkEnum_ov66_022335C0 param0, u32 param1)
{
    BOOL v0;

    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);
    GF_ASSERT(param0 < UnkEnum_ov66_022335C0_02);
    GF_ASSERT(param1 < 12);

    if (param0 >= UnkEnum_ov66_022335C0_02) {
        return 0;
    }

    if (param1 >= 12) {
        return 0;
    }

    if (param0 == UnkEnum_ov66_022335C0_00) {
        v0 = Unk_ov66_0225B6C0->unk_6A8.unk_00.currentQuestionnaireRecord.multiLanguageSummarizeFlags[param1];
    } else {
        v0 = Unk_ov66_0225B6C0->unk_6A8.unk_00.lastQuestionnaireRecord.multiLanguageSummarizeFlags[param1];
    }

    return v0;
}

void ov66_0223361C (void)
{
    GF_ASSERT(Unk_ov66_0225B6C0 != NULL);

    ov4_021D1150(NULL, NULL);
    ov4_021D1120(NULL, NULL);

    Unk_ov66_0225B6C0->unk_69C = UnkEnum_ov66_02232F38_03;
    Unk_ov66_0225B6C0->unk_69E = 0;
    Unk_ov66_0225B6C0->unk_69F = 0;
}

static BOOL ov66_0223365C (PPW_LOBBY_RESULT param0)
{
    BOOL v0 = 1;

    switch (param0) {
    case PPW_LOBBY_RESULT_SUCCESS:
        break;
    case PPW_LOBBY_RESULT_ERROR_ALLOC:
    case PPW_LOBBY_RESULT_ERROR_SESSION:
    case PPW_LOBBY_RESULT_ERROR_CHANNEL:
    case PPW_LOBBY_RESULT_ERROR_STATE:
        v0 = 0;
        break;
    case PPW_LOBBY_RESULT_ERROR_PARAM:
    case PPW_LOBBY_RESULT_ERROR_NODATA:
        GF_ASSERT(0);
        v0 = 0;
        break;
    case PPW_LOBBY_RESULT_ERROR_CONDITION:
        v0 = 0;
        break;
    default:
        GF_ASSERT(0);
        v0 = 0;
        break;
    }

    return v0;
}

static void ov66_0223369C (void)
{
    Unk_ov66_0225B6C0->unk_133 = 0;
    Unk_ov66_0225B6C0->unk_132 = 0;
}

static UnkEnum_ov66_022336B8 ov66_022336B8 (PPW_LOBBY_CHANNEL_KIND param0)
{
    s32 v0;

    v0 = param0 - 1;

    if (v0 < 0) {
        v0 = UnkEnum_ov66_022336B8_04;
    }

    return v0;
}

static PPW_LOBBY_CHANNEL_KIND ov66_022336C0 (UnkEnum_ov66_022336B8 param0)
{
    return param0 + 1;
}

static BOOL ov66_022336C4 (UnkStruct_ov66_022336C4 * param0)
{
    u32 v0;
    u32 v1;
    int v2;
    PPW_LOBBY_RESULT v3;

    v0 = sub_0202C8C0(param0->unk_08);
    v1 = sub_0202C8C4(param0->unk_08);

    if (v0 == 0) {
        return 0;
    }

    for (v2 = 0; v2 < 20; v2++) {
        if (param0->unk_134[v2].unk_03 == 0) {
            break;
        } else {
            if ((param0->unk_134[v2].unk_00 == v0) && (param0->unk_134[v2].unk_02 == v1)) {
                return 0;
            }
        }
    }

    if (v2 >= 20) {
        GF_ASSERT(0);
        return 0;
    }

    param0->unk_134[v2].unk_00 = v0;
    param0->unk_134[v2].unk_02 = v1;
    param0->unk_134[v2].unk_03 = 1;

    v3 = PPW_LobbySetChannelData(PPW_LOBBY_INVALID_USER_ID, PPW_LOBBY_CHANNEL_KIND_MAIN, Unk_ov66_02258DF0[0], (const u8 *)param0->unk_134, sizeof(UnkStruct_ov66_022336C4_sub2) * 20);
    return ov66_0223365C(v3);
}

static void ov66_02233758 (UnkStruct_ov66_022336C4 * param0, u32 param1, u32 param2)
{
    Unk_ov66_0225B6C0->unk_24 = Heap_AllocFromHeap(param2, param1 * PPW_LOBBY_MAX_PLAYER_NUM_MAIN);
    memset(Unk_ov66_0225B6C0->unk_24, 0, param1 * PPW_LOBBY_MAX_PLAYER_NUM_MAIN);
    Unk_ov66_0225B6C0->unk_28 = param1;
}

static void ov66_02233788 (UnkStruct_ov66_022336C4 * param0)
{
    Heap_FreeToHeap(Unk_ov66_0225B6C0->unk_24);
}

static void ov66_0223379C (UnkStruct_ov66_022336C4 * param0, s32 param1, const void * param2)
{
    ov66_022337A8(param0, param1, param2, param0->unk_28);
}

static void ov66_022337A8 (UnkStruct_ov66_022336C4 * param0, s32 param1, const void * param2, u32 param3)
{
    s32 v0;
    u8 * v1;
    u32 v2;

    v0 = ov66_02233A34(param0, param1, 0);
    GF_ASSERT(v0 != 0xffffffff);

    v1 = param0->unk_24;
    v1 = &v1[param0->unk_28 * v0];

    if (param0->unk_28 > param3) {
        v2 = param3;
        memset(v1, 0, param0->unk_28);
    } else {
        v2 = param0->unk_28;
    }

    memcpy(v1, param2, v2);
}

static const void * ov66_022337E8 (const UnkStruct_ov66_022336C4 * param0, s32 param1)
{
    s32 v0;
    const u8 * v1;

    v0 = ov66_02233A34(param0, param1, 0);
    GF_ASSERT(v0 != 0xffffffff);

    v1 = param0->unk_24;
    v1 = &v1[param0->unk_28 * v0];

    return v1;
}

static void ov66_0223380C (UnkStruct_ov66_022336C4 * param0, s32 param1)
{
    s32 v0;
    u8 * v1;

    v0 = ov66_02233A34(param0, param1, 0);
    GF_ASSERT(v0 != 0xffffffff);

    v1 = param0->unk_24;
    v1 = &v1[param0->unk_28 * v0];

    memset(v1, 0, param0->unk_28);
}

static void ov66_02233838 (UnkStruct_ov66_022336C4 * param0, s32 param1, const PPW_LobbySystemProfile * param2)
{
    s32 v0;

    v0 = ov66_02233A34(param0, param1, 0);
    GF_ASSERT(v0 != 0xffffffff);

    param0->unk_2C[v0] = *param2;
}

static const PPW_LobbySystemProfile * ov66_02233864 (const UnkStruct_ov66_022336C4 * param0, s32 param1)
{
    s32 v0;

    v0 = ov66_02233A34(param0, param1, 0);
    GF_ASSERT(v0 != 0xffffffff);

    return &param0->unk_2C[v0];
}

static void ov66_02233888 (UnkStruct_ov66_022336C4 * param0, s32 param1)
{
    s32 v0;

    v0 = ov66_02233A34(param0, param1, 0);
    GF_ASSERT(v0 != 0xffffffff);

    memset(&param0->unk_2C[v0], 0, sizeof(PPW_LobbySystemProfile));
}

static void ov66_022338C8 (UnkStruct_ov66_022336C4 * param0, u32 param1, u32 param2, u32 param3)
{
    int v0;
    int v1;

    for (v0 = 0; v0 < 2; v0++) {
        GF_ASSERT(param0->unk_11C[v0].unk_04 == NULL);

        if (v0 == 0) {
            v1 = param1;
        } else {
            v1 = param2;
        }

        param0->unk_11C[v0].unk_00 = 0;
        param0->unk_11C[v0].unk_04 = Heap_AllocFromHeap(param3, sizeof(s32) * v1);
        param0->unk_11C[v0].unk_02 = v1;

        ov66_02233950(param0, v0);
    }
}

static void ov66_02233920 (UnkStruct_ov66_022336C4 * param0)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        GF_ASSERT(param0->unk_11C[v0].unk_04 != NULL);
        Heap_FreeToHeap(param0->unk_11C[v0].unk_04);
        param0->unk_11C[v0].unk_04 = NULL;
    }
}

static void ov66_02233950 (UnkStruct_ov66_022336C4 * param0, u32 param1)
{
    int v0;

    param0->unk_11C[param1].unk_00 = 0;

    for (v0 = 0; v0 < param0->unk_11C[param1].unk_02; v0++) {
        param0->unk_11C[param1].unk_04[v0] = DWC_LOBBY_INVALID_USER_ID;
    }
}

static void ov66_02233984 (UnkStruct_ov66_022336C4 * param0, s32 param1, u32 param2)
{
    u32 v0;
    int v1;

    if (ov66_02233A34(param0, param1, param2) != 0xffffffff) {
        return;
    }

    GF_ASSERT(param0->unk_11C[param2].unk_00 < param0->unk_11C[param2].unk_02);

    if (param0->unk_11C[param2].unk_00 >= param0->unk_11C[param2].unk_02) {
        return;
    }

    for (v1 = 0; v1 < param0->unk_11C[param2].unk_02; v1++) {
        if (param0->unk_11C[param2].unk_04[v1] == DWC_LOBBY_INVALID_USER_ID) {
            v0 = v1;
            break;
        }
    }

    param0->unk_11C[param2].unk_04[v0] = param1;
    param0->unk_11C[param2].unk_00++;
}

static void ov66_02233A08 (UnkStruct_ov66_022336C4 * param0, s32 param1, u32 param2)
{
    u32 v0;

    v0 = ov66_02233A34(param0, param1, param2);

    if (v0 == 0xffffffff) {
        return;
    }

    param0->unk_11C[param2].unk_04[v0] = DWC_LOBBY_INVALID_USER_ID;
    param0->unk_11C[param2].unk_00--;
}

static s32 ov66_02233A34 (const UnkStruct_ov66_022336C4 * param0, s32 param1, u32 param2)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_11C[param2].unk_02; v0++) {
        if (param0->unk_11C[param2].unk_04[v0] == param1) {
            return v0;
        }
    }

    return 0xffffffff;
}

static s32 ov66_02233A6C (const UnkStruct_ov66_022336C4 * param0, s32 param1, u32 param2)
{
    GF_ASSERT(param1 < param0->unk_11C[param2].unk_02);
    return param0->unk_11C[param2].unk_04[param1];
}

static void ov66_02233A94 (UnkStruct_ov66_022336C4 * param0, UnkEnum_ov66_022336B8 param1)
{
    int v0;
    s32 v1;
    u32 v2;

    v2 = ov66_022336C0(param1);
    ov66_02233950(param0, 1);

    for (v0 = 0; v0 < param0->unk_11C[0].unk_02; v0++) {
        v1 = ov66_02233A6C(param0, v0, 0);

        if (v1 != 0xffffffff) {
            if (param0->unk_2C[v0].subChannelKind == v2) {
                ov66_02233984(param0, v1, 1);
            }
        }
    }
}

static BOOL ov66_02233AE8 (const UnkStruct_ov66_022336C4 * param0, UnkEnum_ov66_022336B8 param1)
{
    int v0;
    int v1;
    s32 v2;
    u32 v3;
    static const u8 v4[UnkEnum_ov66_022336B8_04] = {
        PPW_LOBBY_MAX_PLAYER_NUM_FOOT,
        PPW_LOBBY_MAX_PLAYER_NUM_FOOT,
        PPW_LOBBY_MAX_PLAYER_NUM_CLOCK,
        PPW_LOBBY_MAX_PLAYER_NUM_NEWS,
    };

    GF_ASSERT(param1 < UnkEnum_ov66_022336B8_04);

    v3 = ov66_022336C0(param1);
    v1 = 0;

    for (v0 = 0; v0 < param0->unk_11C[0].unk_02; v0++) {
        v2 = ov66_02233A6C(param0, v0, 0);

        if (v2 != 0xffffffff) {
            if (param0->unk_2C[v0].subChannelKind == v3) {
                v1++;
            }
        }
    }

    if (v4[param1] > v1) {
        return 1;
    }

    return 0;
}

static void ov66_02233B54 (BOOL param0, PPW_LOBBY_CHANNEL_KIND param1)
{
    PPW_LOBBY_RESULT v0;

    if (param1 == PPW_LOBBY_CHANNEL_KIND_MAIN) {
        Unk_ov66_0225B6C0->unk_5B4 = 1024;
        v0 = PPW_LobbyGetSchedule((PPW_LobbySchedule *)Unk_ov66_0225B6C0->unk_1B4, &Unk_ov66_0225B6C0->unk_5B4);
        GF_ASSERT(ov66_0223365C(v0));

        {
            PPW_LobbySchedule * v1;
            v1 = (PPW_LobbySchedule *)Unk_ov66_0225B6C0->unk_1B4;
        }

        PPW_LobbyGetChannelDataAsync(PPW_LOBBY_INVALID_USER_ID, PPW_LOBBY_CHANNEL_KIND_MAIN, Unk_ov66_02258DF0[0], NULL);
    } else {
        if (Unk_ov66_0225B6C0->unk_12D == ov66_022336B8(param1)) {
            if (param0 == 1) {
                Unk_ov66_0225B6C0->unk_12F = UnkEnum_ov66_02232A84_01;

                ov66_02233A94(Unk_ov66_0225B6C0, Unk_ov66_0225B6C0->unk_12D);
                ov66_02233984(Unk_ov66_0225B6C0, PPW_LobbyGetMyUserId(), 1);
            } else {
                Unk_ov66_0225B6C0->unk_12F = UnkEnum_ov66_02232A84_02;
            }
        } else {
            GF_ASSERT(0);
            ov66_02232AA4();
        }
    }
}

static void ov66_02233BF0 (s32 param0, const PPW_LobbySystemProfile * param1, const u8 * param2, u32 param3)
{
    BOOL v0;

    if (param0 == PPW_LobbyGetMyUserId()) {
        {
            PPW_LobbyGetTimeInfo(&Unk_ov66_0225B6C0->unk_19C);
        }

        v0 = 1;
    } else {
        v0 = 0;
    }

    ov66_02233984(Unk_ov66_0225B6C0, param0, 0);
    ov66_022337A8(Unk_ov66_0225B6C0, param0, param2, param3);
    ov66_02233838(Unk_ov66_0225B6C0, param0, param1);

    Unk_ov66_0225B6C0->unk_0C.unk_00(param0, ov66_022337E8(Unk_ov66_0225B6C0, param0), Unk_ov66_0225B6C0->unk_20, v0);
}

static void ov66_02233C60 (s32 param0)
{
    if (ov66_02233A34(Unk_ov66_0225B6C0, param0, 0) == 0xffffffff) {
        return;
    }

    {
        int v0;

        for (v0 = 0; v0 < UnkEnum_ov66_02232F38_03; v0++) {
            if (Unk_ov66_0225B6C0->unk_5B8[v0].unk_48 == param0) {
                ov66_02233F18(param0, &Unk_ov66_0225B6C0->unk_5B8[v0].unk_00);
            }
        }
    }

    Unk_ov66_0225B6C0->unk_0C.unk_04(param0, Unk_ov66_0225B6C0->unk_20);

    ov66_02233888(Unk_ov66_0225B6C0, param0);
    ov66_0223380C(Unk_ov66_0225B6C0, param0);

    ov66_02233A08(Unk_ov66_0225B6C0, param0, 0);
    ov66_02233A08(Unk_ov66_0225B6C0, param0, 1);
}

static void ov66_02233CE4 (s32 param0, PPW_LOBBY_CHANNEL_KIND param1, s32 param2, const char * param3)
{
    return;
}

static void ov66_02233CE8 (s32 param0, PPW_LOBBY_CHANNEL_KIND param1, s32 param2, const u8 * param3, u32 param4)
{
    u32 v0;
    u32 v1;
    s32 v2;

    v2 = ov66_02233A34(Unk_ov66_0225B6C0, param0, 0);

    if (v2 == 0xffffffff) {
        return;
    }

    switch (param1) {
    case PPW_LOBBY_CHANNEL_KIND_MAIN:
        v0 = 0;
        break;
    case PPW_LOBBY_CHANNEL_KIND_FOOT1:
    case PPW_LOBBY_CHANNEL_KIND_FOOT2:
    case PPW_LOBBY_CHANNEL_KIND_CLOCK:
    case PPW_LOBBY_CHANNEL_KIND_NEWS:
        v1 = ov66_022336B8(param1);

        if (Unk_ov66_0225B6C0->unk_12D == v1) {
            v0 = 1;
        } else {
            return;
        }
        break;
    case PPW_LOBBY_CHANNEL_KIND_INVALID:
        v0 = 0;
        break;
    default:
        return;
    }

    if (Unk_ov66_0225B6C0->unk_184[v0].unk_04 > param2) {
        GF_ASSERT(Unk_ov66_0225B6C0->unk_184[v0].unk_00[param2].unk_04 <= param4);
        Unk_ov66_0225B6C0->unk_184[v0].unk_00[param2].unk_00(param0, param3, Unk_ov66_0225B6C0->unk_184[v0].unk_00[param2].unk_04, Unk_ov66_0225B6C0->unk_184[v0].unk_08);
    } else {
        (void)0;
    }
}

static void ov66_02233D94 (BOOL param0, BOOL param1, PPW_LOBBY_CHANNEL_KIND param2, s32 param3, const char * param4, const u8 * param5, u32 param6, void * param7)
{
    s32 v0;

    if (strcmp(param4, Unk_ov66_02258DF0[0]) == 0) {
        memcpy(Unk_ov66_0225B6C0->unk_134, param5, sizeof(UnkStruct_ov66_022336C4_sub2) * 20);

        if (Unk_ov66_0225B6C0->unk_130) {
            Unk_ov66_0225B6C0->unk_130 = 0;
        }
    }
}

static void ov66_02233DD4 (s32 param0, const PPW_LobbySystemProfile * param1)
{
    u32 v0, v1, v2;
    const PPW_LobbySystemProfile * v3;
    s32 v4;

    v4 = ov66_02233A34(Unk_ov66_0225B6C0, param0, 0);

    if (v4 == 0xffffffff) {
        return;
    }

    if (Unk_ov66_0225B6C0->unk_12D != UnkEnum_ov66_022336B8_04) {
        v3 = ov66_02233864(Unk_ov66_0225B6C0, param0);
        v1 = v3->subChannelKind;
        v0 = param1->subChannelKind;
        v2 = ov66_022336C0(Unk_ov66_0225B6C0->unk_12D);

        if ((v1 == PPW_LOBBY_CHANNEL_KIND_INVALID) && (v0 == v2)) {
            ov66_02233984(Unk_ov66_0225B6C0, param0, 1);
        } else if ((v1 == v2) && (v0 != v2)) {
            ov66_02233A08(Unk_ov66_0225B6C0, param0, 1);
        }
    }

    ov66_02233838(Unk_ov66_0225B6C0, param0, param1);
}

static void ov66_02233E50 (s32 param0, const u8 * param1, u32 param2)
{
    s32 v0;

    v0 = ov66_02233A34(Unk_ov66_0225B6C0, param0, 0);

    if (v0 == 0xffffffff) {
        return;
    }

    ov66_0223379C(Unk_ov66_0225B6C0, param0, param1);

    Unk_ov66_0225B6C0->unk_0C.unk_08(param0, param1, Unk_ov66_0225B6C0->unk_20);
}

static void ov66_02233E8C (s32 param0, const PPW_LobbyRecruitInfo * param1)
{
    u32 v0;
    s64 v1;
    s64 v2;
    s32 v3;

    v3 = ov66_02233A34(Unk_ov66_0225B6C0, param0, 0);

    if (v3 == 0xffffffff) {
        return;
    }

    v0 = ov66_022328F0();

    if (v0 != param0) {
        if (Unk_ov66_0225B6C0->unk_69E) {
            if (Unk_ov66_0225B6C0->unk_69C == param1->gameKind) {
                ov66_02234294(&Unk_ov66_0225B6C0->unk_5B8[Unk_ov66_0225B6C0->unk_69C].unk_00, &v1);
                ov66_02234294(param1, &v2);

                if (v1 >= v2) {
                    Unk_ov66_0225B6C0->unk_69F = 1;

                    ov66_02233064();
                } else {
                    return;
                }
            }
        }
    }

    ov66_02234074(Unk_ov66_0225B6C0, param1->gameKind, param0, param1);
}

static void ov66_02233F18 (s32 param0, const PPW_LobbyRecruitInfo * param1)
{
    BOOL v0;
    s32 v1;

    v1 = ov66_02233A34(Unk_ov66_0225B6C0, param0, 0);

    if (v1 == 0xffffffff) {
        return;
    }

    v0 = ov66_022340F0(Unk_ov66_0225B6C0, param1->gameKind, param0);

    if ((Unk_ov66_0225B6C0->unk_69C == param1->gameKind) && (v0 == 1)) {
        Unk_ov66_0225B6C0->unk_69F = 1;
    }
}

static void ov66_02233F60 (PPW_LOBBY_TIME_EVENT param0)
{
    Unk_ov66_0225B6C0->unk_0C.unk_0C(param0, Unk_ov66_0225B6C0->unk_20);
}

static void ov66_02233F74 (PPW_LOBBY_STATS_RESULT param0, const u8 * param1, u32 param2)
{
    if (param0 != PPW_LOBBY_STATS_RESULT_SUCCESS) {
        Unk_ov66_0225B6C0->unk_133 = 1;
    } else {
        Unk_ov66_0225B6C0->unk_0C.unk_10(param1, param2, Unk_ov66_0225B6C0->unk_20);
    }
}

static BOOL ov66_02233FA0 (PPW_LOBBY_STATS_RESULT param0, const PPW_LobbySchedule * param1)
{
    if (param0 == PPW_LOBBY_STATS_RESULT_SUCCESS) {
        return 1;
    }

    Unk_ov66_0225B6C0->unk_132 = 1;
    return 0;
}

static void ov66_02233FC0 (PPW_LOBBY_STATS_RESULT param0, const PPW_LobbyVipRecord * param1, u32 param2)
{
    if (param0 == PPW_LOBBY_STATS_RESULT_SUCCESS) {
        ov66_0223431C(&Unk_ov66_0225B6C0->unk_6A0, param1, param2);
    } else {
        Unk_ov66_0225B6C0->unk_132 = 1;
    }
}

static void ov66_02233FEC (PPW_LOBBY_STATS_RESULT param0, const PPW_LobbyQuestionnaire * param1)
{
    if (param0 == PPW_LOBBY_STATS_RESULT_SUCCESS) {
        ov66_0223439C(&Unk_ov66_0225B6C0->unk_6A8, param1);
    } else {
        Unk_ov66_0225B6C0->unk_132 = 1;
    }
}

static void ov66_02234018 (PPW_LOBBY_STATS_RESULT param0)
{
    GF_ASSERT(Unk_ov66_0225B6C0->unk_6A8.unk_2D8 == UnkEnum_ov66_02233434_01);

    if (param0 == PPW_LOBBY_STATS_RESULT_SUCCESS) {
        Unk_ov66_0225B6C0->unk_6A8.unk_2D8 = UnkEnum_ov66_02233434_02;
    } else {
        Unk_ov66_0225B6C0->unk_6A8.unk_2D8 = UnkEnum_ov66_02233434_02;
    }
}

static void ov66_02234040 (u32 param0)
{
    Unk_ov66_0225B6C0->unk_131 = 1;
}

static void ov66_02234054 (UnkStruct_ov66_022336C4 * param0)
{
    memset(param0->unk_5B8, 0, sizeof(UnkStruct_ov66_022336C4_sub4) * UnkEnum_ov66_02232F38_03);
    param0->unk_69C = UnkEnum_ov66_02232F38_03;
}

static void ov66_02234074 (UnkStruct_ov66_022336C4 * param0, UnkEnum_ov66_02232F38 param1, s32 param2, const PPW_LobbyRecruitInfo * param3)
{
    GF_ASSERT(param1 < UnkEnum_ov66_02232F38_03);

    if (ov66_0223412C(param0, param1) == 1) {
        if (param0->unk_5B8[param1].unk_48 != param2) {
            return;
        }
    }

    param0->unk_5B8[param1].unk_00 = *param3;

    if (param0->unk_5B8[param1].unk_44 == 0) {
        param0->unk_5B8[param1].unk_44 = 1;
        param0->unk_5B8[param1].unk_48 = param2;
        param0->unk_5B8[param1].unk_46 = ov66_0223414C(param0, param1);
    }
}

static BOOL ov66_022340F0 (UnkStruct_ov66_022336C4 * param0, UnkEnum_ov66_02232F38 param1, s32 param2)
{
    GF_ASSERT(param1 < UnkEnum_ov66_02232F38_03);

    if (ov66_0223412C(param0, param1) == 1) {
        if (param0->unk_5B8[param1].unk_48 == param2) {
            param0->unk_5B8[param1].unk_44 = 0;
            return 1;
        }
    }

    return 0;
}

static BOOL ov66_0223412C (const UnkStruct_ov66_022336C4 * param0, UnkEnum_ov66_02232F38 param1)
{
    GF_ASSERT(param1 < UnkEnum_ov66_02232F38_03);
    return param0->unk_5B8[param1].unk_44;
}

static u16 ov66_0223414C (const UnkStruct_ov66_022336C4 * param0, UnkEnum_ov66_02232F38 param1)
{
    s64 v0;
    s64 v1;
    const PPW_LobbyRecruitInfo * v2;

    if (ov66_0223412C(param0, param1) == 0) {
        return 0;
    }

    v2 = ov66_022341C0(param0, param1);
    ov66_02234294(v2, &v0);
    v1 = param0->unk_19C.currentTime - v0;

    if (v1 > 30) {
        v1 = 30;
    } else if (v1 < 0) {
        v1 = 0;
    }

    return (60 - v1) * 30;
}

static const PPW_LobbyRecruitInfo * ov66_022341C0 (const UnkStruct_ov66_022336C4 * param0, UnkEnum_ov66_02232F38 param1)
{
    GF_ASSERT(param1 < UnkEnum_ov66_02232F38_03);
    GF_ASSERT(param0->unk_5B8[param1].unk_44 == 1);
    return &param0->unk_5B8[param1].unk_00;
}

static void ov66_022341F4 (UnkStruct_ov66_022336C4 * param0)
{
    int v0;
    u16 v1;

    if (Unk_ov66_0225B6C0->unk_69E == 1) {
        UnkStruct_ov66_022336C4_sub4 * v2;
        u32 v3;

        v3 = ov4_021D2610();
        GF_ASSERT(v3 <= 4);
        v2 = &Unk_ov66_0225B6C0->unk_5B8[Unk_ov66_0225B6C0->unk_69C];

        if (v2->unk_00.currentNum != v3) {
            v2->unk_00.currentNum = v3;
            PPW_LobbyUpdateRecruitInfo(&v2->unk_00);
        }
    }

    for (v0 = 0; v0 < UnkEnum_ov66_02232F38_03; v0++) {
        if (Unk_ov66_0225B6C0->unk_5B8[v0].unk_44 == 1) {
            if (Unk_ov66_0225B6C0->unk_5B8[v0].unk_46 > 0) {
                Unk_ov66_0225B6C0->unk_5B8[v0].unk_46--;
            }

            v1 = ov66_0223414C(Unk_ov66_0225B6C0, v0);

            if (v1 < Unk_ov66_0225B6C0->unk_5B8[v0].unk_46) {
                Unk_ov66_0225B6C0->unk_5B8[v0].unk_46 = v1;
            }
        }
    }
}

static void ov66_02234288 (PPW_LobbyRecruitInfo * param0, const s64 * param1)
{
    s64 * v0;

    v0 = (s64 *)param0->paramBuf;
    *v0 = *param1;
}

static void ov66_02234294 (const PPW_LobbyRecruitInfo * param0, s64 * param1)
{
    const s64 * v0;

    v0 = (const s64 *)param0->paramBuf;
    *param1 = *v0;
}

static void ov66_022342A0 (u16 param0, void * param1)
{
    return;
}

static void ov66_022342A4 (u16 param0, void * param1)
{
    UnkStruct_ov66_022336C4 * v0;

    v0 = param1;

    if (v0->unk_69E == 1) {
        ov66_02233064();
    } else {
        if (param0 == 0) {
            Unk_ov66_0225B6C0->unk_69F = 1;
        }
    }
}

static u32 ov66_022342CC (const PPW_LobbySchedule * param0, PPW_LOBBY_TIME_EVENT param1)
{
    u32 v0;
    int v1;

    v0 = 0;

    for (v1 = 0; v1 < param0->scheduleRecordNum; v1++) {
        if (param0->scheduleRecords[v1].event == param1) {
            v0 = param0->scheduleRecords[v1].time;
        }
    }

    return v0;
}

static void ov66_022342F4 (UnkStruct_ov66_022342F4 * param0, u32 param1, u32 param2)
{
    param0->unk_00 = Heap_AllocFromHeap(param2, sizeof(PPW_LobbyVipRecord) * param1);
    param0->unk_04 = param1;
    param0->unk_06 = 0;
}

static void ov66_0223430C (UnkStruct_ov66_022342F4 * param0)
{
    Heap_FreeToHeap(param0->unk_00);
    param0->unk_00 = NULL;
}

static void ov66_0223431C (UnkStruct_ov66_022342F4 * param0, const PPW_LobbyVipRecord * param1, u32 param2)
{
    u32 v0;

    GF_ASSERT(param2 < param0->unk_04);

    if (param2 < param0->unk_04) {
        v0 = param2;
    } else {
        v0 = param0->unk_04;
    }

    MI_CpuCopy32(param1, param0->unk_00, sizeof(PPW_LobbyVipRecord) * v0);
    param0->unk_06 = v0;
}

static BOOL ov66_02234344 (const UnkStruct_ov66_022342F4 * param0, s32 param1)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_06; v0++) {
        if (param0->unk_00[v0].profileId == param1) {
            return 1;
        }
    }

    return 0;
}

static s32 ov66_0223436C (const UnkStruct_ov66_022342F4 * param0, s32 param1)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_06; v0++) {
        if (param0->unk_00[v0].profileId == param1) {
            return param0->unk_00[v0].key;
        }
    }

    return 0;
}

static void ov66_0223439C (UnkStruct_ov66_0223439C * param0, const PPW_LobbyQuestionnaire * param1)
{
    memcpy(&param0->unk_00, param1, sizeof(PPW_LobbyQuestionnaire));
}
