#include <nitro.h>
#include <string.h>

#include "core_sys.h"

#include "struct_decls/sys_task.h"
#include "struct_decls/struct_020216E0_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061830_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "pokemon.h"
#include "overlay005/struct_ov5_021D1BEC_decl.h"
#include "overlay009/struct_ov9_0224F6EC_decl.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"

#include "field/field_system.h"
#include "overlay005/struct_ov5_021F8E3C.h"
#include "overlay006/battle_params.h"

#include "unk_02005474.h"
#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_0201CCF0.h"
#include "unk_0202CD50.h"
#include "unk_020508D4.h"
#include "unk_02050A74.h"
#include "unk_020553DC.h"
#include "unk_0205DAC8.h"
#include "unk_0205E7D0.h"
#include "unk_0205F180.h"
#include "unk_02061804.h"
#include "unk_02063400.h"
#include "unk_020655F4.h"
#include "unk_02071B10.h"
#include "party.h"
#include "overlay005/ov5_021DF440.h"
#include "overlay005/ov5_021DFB54.h"
#include "overlay005/ov5_021EB1A0.h"
#include "overlay005/ov5_021ECE40.h"
#include "overlay005/ov5_021F25C0.h"
#include "overlay005/ov5_021F2850.h"
#include "overlay005/ov5_021F8560.h"
#include "overlay006/ov6_02240C9C.h"
#include "overlay006/ov6_02243258.h"
#include "overlay006/ov6_02248050.h"
#include "overlay009/ov9_02249960.h"

typedef struct {
    u32 unk_00;
    int unk_04;
    Pokemon * unk_08;
    SysTask * unk_0C;
} UnkStruct_ov5_021E1050;

typedef struct {
    int unk_00;
    int unk_04;
    FieldSystem * unk_08;
    PlayerAvatar * unk_0C;
    LocalMapObject * unk_10;
    UnkStruct_ov9_0224F6EC * unk_14;
} UnkStruct_ov5_021DFF88;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    UnkStruct_ov5_021E1050 unk_0C;
    FieldSystem * unk_1C;
    PlayerAvatar * unk_20;
    LocalMapObject * unk_24;
    UnkStruct_ov101_021D5D90 * unk_28;
} UnkStruct_ov5_021E00B0;

typedef struct {
    int unk_00;
    int unk_04;
    FieldSystem * unk_08;
    PlayerAvatar * unk_0C;
    LocalMapObject * unk_10;
    UnkStruct_ov101_021D5D90 * unk_14;
} UnkStruct_ov5_021E0390;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    FieldSystem * unk_0C;
    PlayerAvatar * unk_10;
    LocalMapObject * unk_14;
    UnkStruct_ov101_021D5D90 * unk_18;
    UnkStruct_ov5_021E1050 unk_1C;
    UnkStruct_ov5_021D1BEC * unk_2C;
} UnkStruct_ov5_021F9B54;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    fx32 unk_18;
    VecFx32 unk_1C;
    VecFx32 unk_28;
    FieldSystem * unk_34;
    PlayerAvatar * unk_38;
    LocalMapObject * unk_3C;
    UnkStruct_ov5_021E1050 unk_40;
    UnkStruct_ov5_021D1BEC * unk_50;
} UnkStruct_ov5_021F9B10;

typedef struct {
    int unk_00;
    int unk_04;
    FieldSystem * unk_08;
    PlayerAvatar * unk_0C;
} UnkStruct_ov5_021E0534;

typedef struct {
    FieldSystem * unk_00;
    PlayerAvatar * unk_04;
    LocalMapObject * unk_08;
    int unk_0C;
    int unk_10;
    SysTask * unk_14;
} UnkStruct_ov5_021E0DE0;

typedef struct {
    int unk_00;
    int unk_04;
    FieldSystem * unk_08;
    PlayerAvatar * unk_0C;
} UnkStruct_ov5_021E0FF0;

static int ov5_021DFE68(FieldSystem * param0, PlayerAvatar * param1, int param2, int param3);
static int ov5_021DFEF4(FieldSystem * param0, PlayerAvatar * param1, int param2, int param3);
static int ov5_021DFF1C(FieldSystem * param0, PlayerAvatar * param1, int param2, int param3);
static void ov5_021DFF88(int param0, FieldSystem * param1, PlayerAvatar * param2, LocalMapObject * param3);
static BOOL ov5_021DFFBC(TaskManager * param0);
static void ov5_021E00B0(FieldSystem * param0, int param1, const UnkStruct_ov5_021E1050 * param2);
static BOOL ov5_021E0160(TaskManager * param0);
static int ov5_021E032C(FieldSystem * param0, PlayerAvatar * param1, int param2, int param3);
static void ov5_021E0390(int param0, FieldSystem * param1, PlayerAvatar * param2);
static BOOL ov5_021E03C8(TaskManager * param0);
static int ov5_021E04A8(FieldSystem * param0, PlayerAvatar * param1, int param2, int param3);
static int ov5_021E04EC(FieldSystem * param0, PlayerAvatar * param1, int param2, int param3);
static void ov5_021E0534(FieldSystem * param0, PlayerAvatar * param1);
static BOOL ov5_021E0560(TaskManager * param0);
static int ov5_021E067C(FieldSystem * param0, PlayerAvatar * param1, int param2);
static int ov5_021E06A8(FieldSystem * param0, PlayerAvatar * param1);
static void ov5_021E06F8(FieldSystem * param0, int param1, const UnkStruct_ov5_021E1050 * param2);
static BOOL ov5_021E07A0(TaskManager * param0);
static UnkStruct_ov5_021F9B10 * ov5_021E0948(FieldSystem * param0, int param1, const UnkStruct_ov5_021E1050 * param2);
static BOOL ov5_021E09D4(TaskManager * param0);
static SysTask * ov5_021E0F54(FieldSystem * param0, u32 param1);
static void ov5_021E0FC0(SysTask * param0);
static void ov5_021E0FF0(SysTask * param0, void * param1);
static void ov5_021E1028(FieldSystem * param0, Pokemon * param1, UnkStruct_ov5_021E1050 * param2);
static void ov5_021E103C(FieldSystem * param0, UnkStruct_ov5_021E1050 * param1);
static int ov5_021E1050(UnkStruct_ov5_021E1050 * param0);
static void ov5_021E106C(PlayerAvatar * param0, int param1);
static void ov5_021E10C0(void * param0, const UnkStruct_020216E0 * param1);
static LocalMapObject * ov5_021E10D4(PlayerAvatar * param0, int param1);
static void * ov5_021E1110(int param0);
static void ov5_021E1134(void * param0);
static Pokemon * ov5_021E1140(FieldSystem * param0, int param1);
static void ov5_021E0DE0(FieldSystem * param0);
static BOOL ov5_021E0E10(TaskManager * param0);

static void(*const Unk_ov5_021F9B74[10])(PlayerAvatar *);
int(*const Unk_ov5_021F9B54[])(UnkStruct_ov5_021F9B54 *);
int(*const Unk_ov5_021F9B10[])(UnkStruct_ov5_021F9B10 *);
int(*const Unk_ov5_021F9AFC[])(UnkStruct_ov5_021F9B10 *);

void ov5_021DFB54 (PlayerAvatar * param0, u32 param1)
{
    sub_0205EB84(param0, param1);
}

void ov5_021DFB5C (PlayerAvatar * param0)
{
    u32 v0 = 0;
    u32 v1 = sub_0205EB90(param0);

    do {
        if ((v1 & 0x1)) {
            Unk_ov5_021F9B74[v0](param0);
        }

        v1 >>= 1;
    } while (++v0 < 10);

    sub_0205EB8C(param0, 0);
}

static void ov5_021DFB90 (PlayerAvatar * param0)
{
    int v0;
    int v1 = 0x0;

    if (sub_0205F108(param0) != 0) {
        v1 = 0x18;
    } else {
        LocalMapObject * v2 = Player_LocalMapObject(param0);
        FieldSystem * v3 = sub_02062C00(v2);

        if (sub_02071CB4(v3, 2) == 1) {
            v1 = 0x1c;
        }
    }

    v0 = sub_0205ED6C(v1, sub_0205EB98(param0));

    ov5_021E106C(param0, v0);
    sub_0205EB58(param0, 0x0);
    sub_0205EBC0(param0);

    {
        UnkStruct_ov101_021D5D90 * v4 = sub_0205EC04(param0);

        if (v4 != NULL) {
            ov5_021DF74C(v4);
        }

        sub_0205EC00(param0, NULL);
    }
}

static void ov5_021DFBF4 (PlayerAvatar * param0)
{
    int v0;

    v0 = sub_0205ED6C(0x1, sub_0205EB98(param0));
    ov5_021E106C(param0, v0);

    sub_0205EB58(param0, 0x1);
    sub_0205EBC0(param0);

    {
        UnkStruct_ov101_021D5D90 * v1 = sub_0205EC04(param0);

        if (v1 != NULL) {
            ov5_021DF74C(v1);
        }

        sub_0205EC00(param0, NULL);
    }

    Sound_PlayEffect(1560);
}

static void ov5_021DFC3C (PlayerAvatar * param0)
{
    int v0, v1;
    LocalMapObject * v2 = Player_LocalMapObject(param0);
    FieldSystem * v3 = sub_02062C00(v2);
    int v4 = sub_0205F108(param0);
    UnkStruct_ov101_021D5D90 * v5 = sub_0205EC04(param0);

    if (v5 != NULL) {
        ov5_021DF74C(v5);
    }

    sub_0205EC00(param0, NULL);

    if (sub_0205F16C(param0) == 1) {
        v1 = Player_Dir(param0);
    } else {
        v1 = sub_0205EA94(param0);
    }

    if (v4 == 0) {
        v5 = ov5_021F261C(v2, 0, 0, v1, 1);
        v0 = 0x2;
    } else {
        v5 = ov5_021F85BC(param0, 0, 0, 0, v1, 1, v4);
        v0 = 0x19;
    }

    sub_0205EC00(param0, v5);

    v0 = sub_0205ED6C(v0, sub_0205EB98(param0));
    ov5_021E106C(param0, v0);

    sub_0205EB58(param0, 0x2);
    sub_0205EBC0(param0);
}

static void ov5_021DFCE4 (PlayerAvatar * param0)
{
    sub_0205EF6C(param0, 1);
}

static void ov5_021DFCF0 (PlayerAvatar * param0)
{
    int v0;

    v0 = sub_0205ED6C(0x11, sub_0205EB98(param0));
    ov5_021E106C(param0, v0);
}

static void ov5_021DFD0C (PlayerAvatar * param0)
{
    int v0;

    v0 = sub_0205ED6C(0x13, sub_0205EB98(param0));
    ov5_021E106C(param0, v0);
}

static void ov5_021DFD28 (PlayerAvatar * param0)
{
    int v0;
    int v1 = 0x14;

    if (sub_0205F108(param0) != 0) {
        v1 = 0x1b;
    } else {
        LocalMapObject * v2 = Player_LocalMapObject(param0);
        FieldSystem * v3 = sub_02062C00(v2);

        if (sub_02071CB4(v3, 2) == 1) {
            v1 = 0x1e;
        }
    }

    v0 = sub_0205ED6C(v1, sub_0205EB98(param0));
    ov5_021E106C(param0, v0);
}

static void ov5_021DFD68 (PlayerAvatar * param0)
{
    int v0;
    int v1 = 0x15;

    if (sub_0205F108(param0) != 0) {
        v1 = 0x1a;
    } else {
        LocalMapObject * v2 = Player_LocalMapObject(param0);
        FieldSystem * v3 = sub_02062C00(v2);

        if (sub_02071CB4(v3, 2) == 1) {
            v1 = 0x1d;
        }
    }

    v0 = sub_0205ED6C(v1, sub_0205EB98(param0));
    ov5_021E106C(param0, v0);
}

static void ov5_021DFDA8 (PlayerAvatar * param0)
{
    int v0;

    v0 = sub_0205ED6C(0x16, sub_0205EB98(param0));
    ov5_021E106C(param0, v0);
}

static void ov5_021DFDC4 (PlayerAvatar * param0)
{
    int v0;

    v0 = sub_0205ED6C(0x17, sub_0205EB98(param0));
    ov5_021E106C(param0, v0);
}

static void(*const Unk_ov5_021F9B74[10])(PlayerAvatar *) = {
    ov5_021DFB90,
    ov5_021DFBF4,
    ov5_021DFC3C,
    ov5_021DFCE4,
    ov5_021DFCF0,
    ov5_021DFD0C,
    ov5_021DFD28,
    ov5_021DFD68,
    ov5_021DFDA8,
    ov5_021DFDC4
};

int ov5_021DFDE0 (FieldSystem * param0, PlayerAvatar * param1, int param2, int param3)
{
    {
        LocalMapObject * v0;

        GF_ASSERT(param1 != NULL);
        v0 = Player_LocalMapObject(param1);
        GF_ASSERT(v0 != NULL);
    }

    if (sub_0205EF58(param1) == 1) {
        if (ov5_021E067C(param0, param1, param3) == 1) {
            return 1;
        }

        return 0;
    }

    if (sub_0205F224(param1, param2) == 0) {
        return 0;
    }

    if (param2 == -1) {
        if (ov5_021DFEF4(param0, param1, param2, param3) == 1) {
            return 1;
        }

        return 0;
    }

    if (ov5_021DFE68(param0, param1, param2, param3) == 1) {
        return 1;
    }

    return 0;
}

static int ov5_021DFE68 (FieldSystem * param0, PlayerAvatar * param1, int param2, int param3)
{
    int v0 = sub_02061434(param1, param2);

    if ((param3 & 1 << 2)) {
        if (ov9_0224A59C(param0, param2) == 1) {
            return 1;
        }
    }

    if ((param3 & 1 << 0)) {
        if (ov5_021DFF1C(param0, param1, param2, v0) == 1) {
            return 1;
        }
    }

    if ((param3 & 1 << 1)) {
        if (ov5_021E04A8(param0, param1, param2, v0) == 1) {
            return 1;
        }
    }

    if (ov5_021E032C(param0, param1, param2, v0) == 1) {
        return 1;
    }

    if (ov5_021E04EC(param0, param1, param2, v0) == 1) {
        return 1;
    }

    return 0;
}

static int ov5_021DFEF4 (FieldSystem * param0, PlayerAvatar * param1, int param2, int param3)
{
    int v0 = sub_02061434(param1, param2);

    if (ov5_021E04EC(param0, param1, param2, v0) == 1) {
        return 1;
    }

    return 0;
}

static int ov5_021DFF1C (FieldSystem * param0, PlayerAvatar * param1, int param2, int param3)
{
    if (param3 != 1) {
        return 0;
    }

    {
        LocalMapObject * v0 = ov5_021E10D4(param1, param2);

        if (v0 == NULL) {
            return 0;
        }

        {
            int v1 = sub_02062920(v0);

            if (v1 != 0x54) {
                return 0;
            }
        }

        {
            u32 v2 = sub_02063EBC(v0, param2);

            v2 &= ~(1 << 0);

            if (v2 != 0) {
                if (sub_02071CB4(param0, 9) == 1) {
                    if (ov9_0224F240(v0, param2) == 0) {
                        return 0;
                    }
                } else {
                    return 0;
                }
            }
        }

        ov5_021DFF88(param2, param0, param1, v0);
        return 1;
    }
}

static void ov5_021DFF88 (int param0, FieldSystem * param1, PlayerAvatar * param2, LocalMapObject * param3)
{
    UnkStruct_ov5_021DFF88 * v0 = ov5_021E1110((sizeof(UnkStruct_ov5_021DFF88)));

    v0->unk_04 = param0;
    v0->unk_08 = param1;
    v0->unk_10 = param3;
    v0->unk_0C = param2;

    sub_02050904(param1, ov5_021DFFBC, v0);
    sub_0202CF28(sub_0202CD88(param1->saveData), (1 + 54));
}

static BOOL ov5_021DFFBC (TaskManager * param0)
{
    UnkStruct_ov5_021DFF88 * v0 = TaskManager_Environment(param0);
    LocalMapObject * v1 = Player_LocalMapObject(v0->unk_0C);
    LocalMapObject * v2 = v0->unk_10;

    switch (v0->unk_00) {
    case 0:
        if (LocalMapObj_IsAnimationSet(v2) == 0) {
            break;
        }

        if (LocalMapObj_IsAnimationSet(v1) == 0) {
            if (sub_020613AC(v0->unk_0C) == 0) {
                break;
            }
        }

        {
            int v3 = sub_02065838(v0->unk_04, 0x8);

            LocalMapObj_SetAnimationCode(v2, v3);

            v3 = sub_02065838(v0->unk_04, 0x20);
            LocalMapObj_SetAnimationCode(v1, v3);
            Sound_PlayEffect(1575);
        }

        v0->unk_00++;
        break;
    case 1:
        if (LocalMapObj_CheckAnimationFinished(v2) == 0) {
            break;
        }

        if (LocalMapObj_CheckAnimationFinished(v1) == 0) {
            break;
        }

        if (sub_02071CB4(v0->unk_08, 9) == 1) {
            if (ov9_0224F2B0(v2) == 1) {
                v0->unk_14 = ov9_0224F2BC(v0->unk_08, param0, v2);
                v0->unk_00 = 3;
                break;
            }
        }

        sub_020656AC(v2);
        sub_020656AC(v1);
        v0->unk_00++;
    case 2:
        ov5_021E1134(v0);
        return 1;
    case 3:
        if (ov9_0224F6EC(v0->unk_14) == 1) {
            sub_020656AC(v2);
            sub_020656AC(v1);
            v0->unk_00 = 2;
        }
        break;
    }

    return 0;
}

static void ov5_021E00B0 (FieldSystem * param0, int param1, const UnkStruct_ov5_021E1050 * param2)
{
    UnkStruct_ov5_021E00B0 * v0 = ov5_021E1110((sizeof(UnkStruct_ov5_021E00B0)));

    v0->unk_04 = param1;
    v0->unk_1C = param0;
    v0->unk_20 = param0->playerAvatar;
    v0->unk_24 = Player_LocalMapObject(v0->unk_20);
    v0->unk_0C = *param2;

    sub_02050944(param0->unk_10, ov5_021E0160, v0);
}

void ov5_021E00EC (TaskManager * param0, int param1, int param2)
{
    UnkStruct_ov5_021E1050 v0;
    FieldSystem * v1 = TaskMan_FieldSystem(param0);
    Pokemon * v2 = ov5_021E1140(v1, param2);

    ov5_021E1028(v1, v2, &v0);
    ov5_021E00B0(v1, param1, &v0);
}

int ov5_021E0118 (PlayerAvatar * param0, u32 param1, u32 param2)
{
    LocalMapObject * v0 = Player_LocalMapObject(param0);

    if (sub_0205DB58(param2) == 1) {
        if ((sub_0205DEFC(param1) == 1) || (sub_0205DEF0(param1) == 1)) {
            if (sub_02062F30(v0) == 1) {
                return 0;
            }
        }

        return 1;
    }

    return 0;
}

static BOOL ov5_021E0160 (TaskManager * param0)
{
    UnkStruct_ov5_021E00B0 * v0 = TaskManager_Environment(param0);

    switch (v0->unk_00) {
    case 0:
        if (sub_0205F108(v0->unk_20) == 0) {
            sub_020553F0(v0->unk_1C, 0);
            sub_02055554(v0->unk_1C, 1151, 1);
        }

        if (v0->unk_0C.unk_00 == 1) {
            ov5_021E103C(v0->unk_1C, &v0->unk_0C);
            v0->unk_00++;
        } else {
            v0->unk_00 = 2;
        }
        break;
    case 1:
        if (ov5_021E1050(&v0->unk_0C) == 1) {
            v0->unk_00++;
        }
        break;
    case 2:
    {
        if (sub_0205F108(v0->unk_20) == 0) {
            int v1 = Player_XPos(v0->unk_20) + sub_0206419C(v0->unk_04);
            int v2 = Player_ZPos(v0->unk_20) + sub_020641A8(v0->unk_04);

            v0->unk_28 = ov5_021F261C(v0->unk_24, v1, v2, v0->unk_04, 0);
        } else {
            int v3 = sub_02063020(v0->unk_24);
            int v4 = ((sub_02063030(v0->unk_24) / 2));
            int v5 = sub_02063040(v0->unk_24);
            int v6 = sub_0205F108(v0->unk_20);

            sub_02061674(v0->unk_20, v0->unk_04, &v3, &v4, &v5);
            v0->unk_28 = ov5_021F85BC(v0->unk_20, v3, v4, v5, v0->unk_04, 0, v6);
        }

        sub_0205EC00(v0->unk_20, v0->unk_28);
        sub_0205EB58(v0->unk_20, 0x2);
    }

        v0->unk_00++;
        break;
    case 3:
        v0->unk_00++;
    case 4:
        if (LocalMapObj_IsAnimationSet(v0->unk_24) == 1) {
            int v7;
            int v8[6] = {
                0x34, 0x34, 0x34, 0x85, 0x89, 0x8d
            };
            int v9 = sub_0205F108(v0->unk_20);

            v7 = sub_02065838(v0->unk_04, v8[v9]);
            LocalMapObj_SetAnimationCode(v0->unk_24, v7);
            v0->unk_00++;
        }
        break;
    case 5:
        if (LocalMapObj_CheckAnimationFinished(v0->unk_24) == 0) {
            break;
        }

        sub_020656AC(v0->unk_24);

        if (sub_0205F108(v0->unk_20) == 0) {
            int v10;

            ov5_021F2838(v0->unk_28, 1);
            v10 = sub_0205ED6C(0x2, sub_0205EB98(v0->unk_20));
            ov5_021E106C(v0->unk_20, v10);
        } else {
            int v11;

            ov5_021F88CC(v0->unk_28, 1 << 1);
            v11 = sub_0205ED6C(0x19, sub_0205EB98(v0->unk_20));
            ov5_021E106C(v0->unk_20, v11);
        }

        ov5_021E1134(v0);
        return 1;
    }

    return 0;
}

static int ov5_021E032C (FieldSystem * param0, PlayerAvatar * param1, int param2, int param3)
{
    if ((param3 != 1) || (sub_0205EB74(param1) != 0x2)) {
        return 0;
    }

    {
        u32 v0;
        LocalMapObject * v1 = Player_LocalMapObject(param1);

        if (sub_0205F158(param1) == 0) {
            v0 = sub_02060B7C(param1, v1, param2);
        } else {
            v0 = sub_020611FC(param1, v1, param2);
        }

        if (v0 == (1 << 5)) {
            return 0;
        }

        v0 &= ~(1 << 5);

        if (v0 != 0) {
            return 0;
        }
    }

    ov5_021E0390(param2, param0, param1);
    return 1;
}

static void ov5_021E0390 (int param0, FieldSystem * param1, PlayerAvatar * param2)
{
    UnkStruct_ov5_021E0390 * v0 = ov5_021E1110((sizeof(UnkStruct_ov5_021E0390)));

    v0->unk_04 = param0;
    v0->unk_08 = param1;
    v0->unk_0C = param2;
    v0->unk_10 = Player_LocalMapObject(param2);
    v0->unk_14 = sub_0205EC04(param2);

    sub_02050904(param1, ov5_021E03C8, v0);
}

static BOOL ov5_021E03C8 (TaskManager * param0)
{
    UnkStruct_ov5_021E0390 * v0 = TaskManager_Environment(param0);

    switch (v0->unk_00) {
    case 0:
        if (LocalMapObj_IsAnimationSet(v0->unk_10) == 1) {
            int v1;
            int v2;
            int v3[6] = {
                0x34, 0x34, 0x34, 0x85, 0x89, 0x8d
            };

            v2 = sub_0205F108(v0->unk_0C);

            if (v2 == 0) {
                ov5_021F2838(v0->unk_14, 0);
                v1 = sub_0205ED6C(0x0, sub_0205EB98(v0->unk_0C));
            } else {
                ov5_021F88DC(v0->unk_14, 1 << 1);
                v1 = sub_0205ED6C(0x18, sub_0205EB98(v0->unk_0C));
            }

            ov5_021E106C(v0->unk_0C, v1);

            v1 = sub_02065838(v0->unk_04, v3[v2]);
            LocalMapObj_SetAnimationCode(v0->unk_10, v1);
            v0->unk_00++;
        }
        break;
    case 1:
        if (LocalMapObj_CheckAnimationFinished(v0->unk_10) == 0) {
            break;
        }

        sub_020656AC(v0->unk_10);

        if (v0->unk_14 != NULL) {
            ov5_021DF74C(v0->unk_14);
        }

        sub_0205EC00(v0->unk_0C, NULL);
        sub_0205EB58(v0->unk_0C, 0x0);
        sub_02055554(v0->unk_08, sub_020554A4(v0->unk_08, v0->unk_08->unk_1C->unk_00), 1);
        ov5_021E1134(v0);
        return 1;
    }

    return 0;
}

static int ov5_021E04A8 (FieldSystem * param0, PlayerAvatar * param1, int param2, int param3)
{
    if ((param2 != 1) || (param3 != 1) || (sub_0205EB74(param1) != 0x2)) {
        return 0;
    }

    {
        u8 v0 = sub_0206156C(param1, param2);

        if (sub_0205DDB4(v0) == 0) {
            return 0;
        }
    }

    ov5_021E097C(param0, param2);
    return 1;
}

static int ov5_021E04EC (FieldSystem * param0, PlayerAvatar * param1, int param2, int param3)
{
    if (sub_0205F008(param1) == 1) {
        return 0;
    }

    {
        LocalMapObject * v0 = Player_LocalMapObject(param1);
        u8 v1 = sub_02062BE8(v0);

        if ((sub_0205DCF0(v1) != 1) && (sub_0205DD0C(v1) != 1)) {
            return 0;
        }
    }

    ov5_021E0534(param0, param1);
    return 1;
}

static void ov5_021E0534 (FieldSystem * param0, PlayerAvatar * param1)
{
    UnkStruct_ov5_021E0534 * v0 = ov5_021E1110((sizeof(UnkStruct_ov5_021E0534)));

    v0->unk_08 = param0;
    v0->unk_0C = param1;

    sub_02050904(param0, ov5_021E0560, v0);
    sub_0202CF28(sub_0202CD88(param0->saveData), (1 + 55));
}

static BOOL ov5_021E0560 (TaskManager * param0)
{
    UnkStruct_ov5_021E0534 * v0 = TaskManager_Environment(param0);
    LocalMapObject * v1 = Player_LocalMapObject(v0->unk_0C);

    switch (v0->unk_00) {
    case 0:
        Sound_PlayEffect(1617);
        v0->unk_00++;
    case 1:
        if (LocalMapObj_IsAnimationSet(v1) == 0) {
            if (sub_020613AC(v0->unk_0C) == 0) {
                break;
            }
        }

        if (v0->unk_04 >= 5) {
            Sound_PlayEffect(1618);
            sub_0205EFF0(v0->unk_0C, 1);
            ov5_021E1134(v0);
            return 1;
        }

        v0->unk_00++;
    case 2:
    {
        int v2 = Player_Dir(v0->unk_0C);
        u32 v3, v4 = gCoreSys.pressedKeys, v5 = gCoreSys.heldKeys;
        int v6 = sub_02061308(v0->unk_0C, v4, v5);

        if ((v6 == -1) || (v6 == v2)) {
            break;
        }

        v0->unk_00 = 1;
        v0->unk_04++;

        {
            u8 v7 = sub_02062BE8(v1);

            if (sub_0205DD0C(v7) == 1) {
                FieldSystem * v8 = TaskMan_FieldSystem(param0);
                BattleParams * v9;

                if (ov6_022413E4(v8, &v9) == 1) {
                    sub_0205EFF0(v0->unk_0C, 1);
                    ov5_021E1134(v0);
                    sub_02050E78(v8, param0, v9);
                    return 0;
                }
            }
        }

        if (v0->unk_04 < 5) {
            v3 = 0x28;
        } else {
            v3 = 0x30;
            sub_02062EE0(v1, 1);
        }

        v3 = sub_02065838(v6, v3);
        sub_02061550(v0->unk_0C, v3, 1);
    }
    break;
    }

    return 0;
}

static int ov5_021E067C (FieldSystem * param0, PlayerAvatar * param1, int param2)
{
    LocalMapObject * v0 = Player_LocalMapObject(param1);

    if (LocalMapObj_IsAnimationSet(v0) == 0) {
        return 0;
    }

    if (ov5_021E06A8(param0, param1) == 1) {
        return 1;
    }

    return 0;
}

static int ov5_021E06A8 (FieldSystem * param0, PlayerAvatar * param1)
{
    if (sub_0205EBB8(param1) < 1) {
        return 0;
    }

    {
        int v0 = sub_0205EA94(param1);
        LocalMapObject * v1 = ov5_021E10D4(param1, v0);

        if (v1 == NULL) {
            return 0;
        }

        {
            int v2 = sub_02062920(v1);

            if (v2 != 0x76) {
                return 0;
            }
        }

        ov5_021EC7F0(v1);
        sub_02061AF4(v1);
        Sound_PlayEffect(1627);
    }

    return 0;
}

static void ov5_021E06F8 (FieldSystem * param0, int param1, const UnkStruct_ov5_021E1050 * param2)
{
    UnkStruct_ov5_021F9B54 * v0 = ov5_021E1110((sizeof(UnkStruct_ov5_021F9B54)));

    v0->unk_04 = param1;
    v0->unk_0C = param0;
    v0->unk_10 = param0->playerAvatar;
    v0->unk_14 = Player_LocalMapObject(v0->unk_10);
    v0->unk_1C = *param2;

    sub_02050944(param0->unk_10, ov5_021E07A0, v0);
}

void ov5_021E0734 (TaskManager * param0, int param1, int param2)
{
    UnkStruct_ov5_021E1050 v0;
    FieldSystem * v1 = TaskMan_FieldSystem(param0);
    Pokemon * v2 = ov5_021E1140(v1, param2);

    ov5_021E1028(v1, v2, &v0);
    ov5_021E06F8(v1, param1, &v0);
}

int ov5_021E0760 (u32 param0, int param1)
{
    switch (param1) {
    case 0:
    case 1:
        if (sub_0205DC68(param0) == 1) {
            return 1;
        }
        break;
    case 2:
    case 3:
        if (sub_0205DC74(param0) == 1) {
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov5_021E07A0 (TaskManager * param0)
{
    int v0;
    UnkStruct_ov5_021F9B54 * v1 = TaskManager_Environment(param0);

    do {
        v0 = Unk_ov5_021F9B54[v1->unk_00](v1);
    } while (v0 == (1 + 1));

    if (v0 == 1) {
        ov5_021E1134(v1);
    }

    return (BOOL)v0;
}

static int ov5_021E07CC (UnkStruct_ov5_021F9B54 * param0)
{
    ov5_021E103C(param0->unk_0C, &param0->unk_1C);

    param0->unk_00++;
    return(0);
}

static int ov5_021E07E4 (UnkStruct_ov5_021F9B54 * param0)
{
    if (ov5_021E1050(&param0->unk_1C) == 1) {
        param0->unk_00++;
    }

    return(0);
}

static int ov5_021E07FC (UnkStruct_ov5_021F9B54 * param0)
{
    int v0 = Player_XPos(param0->unk_10) + sub_0206419C(param0->unk_04);
    int v1 = Player_ZPos(param0->unk_10) + sub_020641A8(param0->unk_04);

    param0->unk_18 = ov5_021F28F4(param0->unk_14, v0, v1, param0->unk_04, 0);
    param0->unk_2C = ov6_0224892C(param0->unk_0C);

    Sound_PlayEffect(1575);
    param0->unk_00++;

    return(0);
}

static int ov5_021E0850 (UnkStruct_ov5_021F9B54 * param0)
{
    if (LocalMapObj_IsAnimationSet(param0->unk_14) == 1) {
        int v0 = sub_02065838(param0->unk_04, 0x34);

        LocalMapObj_SetAnimationCode(param0->unk_14, v0);
        param0->unk_00++;
    }

    return(0);
}

static int ov5_021E0878 (UnkStruct_ov5_021F9B54 * param0)
{
    if (LocalMapObj_CheckAnimationFinished(param0->unk_14) == 1) {
        param0->unk_00++;
        ov5_021F2974(param0->unk_18, 1);
    }

    return(0);
}

static int ov5_021E0898 (UnkStruct_ov5_021F9B54 * param0)
{
    if (LocalMapObj_IsAnimationSet(param0->unk_14) == 1) {
        int v0 = sub_02065838(param0->unk_04, 0x10);

        LocalMapObj_SetAnimationCode(param0->unk_14, v0);
        param0->unk_00++;
    }

    return(0);
}

static int ov5_021E08C0 (UnkStruct_ov5_021F9B54 * param0)
{
    if (LocalMapObj_CheckAnimationFinished(param0->unk_14) == 0) {
        return(0);
    }

    {
        int v0 = sub_0206299C(param0->unk_14);
        u8 v1 = sub_02064238(param0->unk_14, v0);

        if (ov5_021E0760(v1, v0) == 1) {
            param0->unk_00 = 5;
            return(1 + 1);
        }
    }

    {
        int v2 = sub_02065838(param0->unk_04, 0x34);

        LocalMapObj_SetAnimationCode(param0->unk_14, v2);
        param0->unk_08 = 0;
        param0->unk_00++;
        ov5_021F2974(param0->unk_18, 0);
    }

    ov6_02248940(param0->unk_2C);
    param0->unk_2C = NULL;

    return(0);
}

static int ov5_021E0924 (UnkStruct_ov5_021F9B54 * param0)
{
    if (LocalMapObj_CheckAnimationFinished(param0->unk_14) == 0) {
        return(0);
    }

    sub_020656AC(param0->unk_14);
    ov5_021DF74C(param0->unk_18);
    return(1);
}

static int(*const Unk_ov5_021F9B54[])(UnkStruct_ov5_021F9B54 *) = {
    ov5_021E07CC,
    ov5_021E07E4,
    ov5_021E07FC,
    ov5_021E0850,
    ov5_021E0878,
    ov5_021E0898,
    ov5_021E08C0,
    ov5_021E0924
};

static UnkStruct_ov5_021F9B10 * ov5_021E0948 (FieldSystem * param0, int param1, const UnkStruct_ov5_021E1050 * param2)
{
    UnkStruct_ov5_021F9B10 * v0 = ov5_021E1110((sizeof(UnkStruct_ov5_021F9B10)));

    v0->unk_04 = param1;
    v0->unk_34 = param0;
    v0->unk_38 = param0->playerAvatar;
    v0->unk_3C = Player_LocalMapObject(param0->playerAvatar);

    if (param2 != NULL) {
        v0->unk_40 = *param2;
    }

    return v0;
}

void ov5_021E097C (FieldSystem * param0, int param1)
{
    UnkStruct_ov5_021F9B10 * v0 = ov5_021E0948(param0, param1, NULL);
    sub_02050904(param0, ov5_021E09D4, v0);
}

void ov5_021E0998 (TaskManager * param0, int param1, int param2)
{
    UnkStruct_ov5_021E1050 v0;
    FieldSystem * v1 = TaskMan_FieldSystem(param0);
    Pokemon * v2 = ov5_021E1140(v1, param2);

    ov5_021E1028(v1, v2, &v0);

    {
        UnkStruct_ov5_021F9B10 * v3 = ov5_021E0948(v1, param1, &v0);
        sub_02050944(param0, ov5_021E09D4, v3);
    }
}

static BOOL ov5_021E09D4 (TaskManager * param0)
{
    int v0;
    UnkStruct_ov5_021F9B10 * v1 = TaskManager_Environment(param0);

    do {
        if (v1->unk_04 == 0) {
            v0 = Unk_ov5_021F9B10[v1->unk_00](v1);
        } else {
            v0 = Unk_ov5_021F9AFC[v1->unk_00](v1);
        }
    } while (v0 == (1 + 1));

    if (v0 == 1) {
        ov5_021E1134(v1);
        return 1;
    }

    return 0;
}

static int ov5_021E0A1C (UnkStruct_ov5_021F9B10 * param0)
{
    if (param0->unk_40.unk_00 == 1) {
        ov5_021E103C(param0->unk_34, &param0->unk_40);
        param0->unk_00++;
        return(0);
    }

    param0->unk_00 = 2;
    return(1);
}

static int ov5_021E0A44 (UnkStruct_ov5_021F9B10 * param0)
{
    if (ov5_021E1050(&param0->unk_40) == 1) {
        Sound_PlayEffect(1613);
        param0->unk_00++;
    }

    return(0);
}

static int ov5_021E0A68 (UnkStruct_ov5_021F9B10 * param0)
{
    int v0, v1;
    VecFx32 v2, v3;

    v0 = sub_02063020(param0->unk_3C) + (sub_0206419C(0) << 1);
    v1 = sub_02063040(param0->unk_3C) + (sub_020641A8(0) << 1);

    sub_02064450(v0, v1, &param0->unk_28);
    sub_020644A4(param0->unk_34, &param0->unk_28);

    param0->unk_0C = v0;
    param0->unk_10 = (((param0->unk_28.y) >> 3) / FX32_ONE);
    param0->unk_14 = v1;

    sub_02063050(param0->unk_3C, &v2);

    GF_ASSERT(v2.z > param0->unk_28.z);
    GF_ASSERT(v2.y < param0->unk_28.y);

    v3.x = 0;
    v3.y = param0->unk_28.y - v2.y;
    v3.z = param0->unk_28.z - v2.z;
    v3.y /= 64;
    v3.z /= 64;

    param0->unk_1C = v3;
    param0->unk_50 = ov6_022485F4(param0->unk_34);
    param0->unk_00++;

    return(0);
}

static int ov5_021E0B24 (UnkStruct_ov5_021F9B10 * param0)
{
    VecFx32 v0;

    sub_02063050(param0->unk_3C, &v0);

    v0.y += param0->unk_1C.y;

    if (v0.y > param0->unk_28.y) {
        v0.y = param0->unk_28.y;
    }

    sub_02063060(param0->unk_3C, &v0);

    param0->unk_08++;

    if (param0->unk_08 >= 32) {
        param0->unk_08 = 0;
        param0->unk_00++;
    }

    return(0);
}

static int ov5_021E0B64 (UnkStruct_ov5_021F9B10 * param0)
{
    VecFx32 v0;

    sub_02063050(param0->unk_3C, &v0);

    v0.y += param0->unk_1C.y;

    if (v0.y > param0->unk_28.y) {
        v0.y = param0->unk_28.y;
    }

    v0.z += param0->unk_1C.z;

    if (v0.z < param0->unk_28.z) {
        v0.z = param0->unk_28.z;
    }

    sub_02063060(param0->unk_3C, &v0);

    param0->unk_08++;

    if (param0->unk_08 < 64) {
        return(0);
    }

    GF_ASSERT(v0.z == param0->unk_28.z);
    GF_ASSERT(v0.y == param0->unk_28.y);

    LocalMapObj_SetX(param0->unk_3C, param0->unk_0C);
    sub_02063034(param0->unk_3C, param0->unk_10);
    LocalMapObj_SetZ(param0->unk_3C, param0->unk_14);
    sub_02064208(param0->unk_3C);

    ov6_02248608(param0->unk_50);
    return(1);
}

static int(*const Unk_ov5_021F9B10[])(UnkStruct_ov5_021F9B10 *) = {
    ov5_021E0A1C,
    ov5_021E0A44,
    ov5_021E0A68,
    ov5_021E0B24,
    ov5_021E0B64
};

static int ov5_021E0BEC (UnkStruct_ov5_021F9B10 * param0)
{
    if (param0->unk_40.unk_00 == 1) {
        ov5_021E103C(param0->unk_34, &param0->unk_40);
        param0->unk_00++;
        return(0);
    }

    param0->unk_00 = 2;
    return(1 + 1);
}

static int ov5_021E0C10 (UnkStruct_ov5_021F9B10 * param0)
{
    if (ov5_021E1050(&param0->unk_40) == 1) {
        Sound_PlayEffect(1613);
        param0->unk_00++;
    }

    return(0);
}

static int ov5_021E0C34 (UnkStruct_ov5_021F9B10 * param0)
{
    int v0, v1;
    VecFx32 v2, v3;

    v0 = sub_02063020(param0->unk_3C) + (sub_0206419C(1) << 1);
    v1 = sub_02063040(param0->unk_3C) + (sub_020641A8(1) << 1);

    sub_02064450(v0, v1, &param0->unk_28);
    sub_020644A4(param0->unk_34, &param0->unk_28);

    param0->unk_18 = 0;
    param0->unk_0C = v0;
    param0->unk_10 = (((param0->unk_28.y) >> 3) / FX32_ONE);
    param0->unk_14 = v1;

    sub_02063050(param0->unk_3C, &v2);

    GF_ASSERT(v2.z < param0->unk_28.z);
    GF_ASSERT(v2.y > param0->unk_28.y);

    v3.x = 0;
    v3.y = param0->unk_28.y - v2.y;
    v3.z = param0->unk_28.z - v2.z;
    v3.y /= 64;
    v3.z /= 64;

    param0->unk_1C = v3;
    param0->unk_50 = ov6_022485F4(param0->unk_34);
    param0->unk_00++;

    return(0);
}

static int ov5_021E0CF4 (UnkStruct_ov5_021F9B10 * param0)
{
    VecFx32 v0;

    sub_02063050(param0->unk_3C, &v0);

    v0.z += param0->unk_1C.z;

    if (v0.z > param0->unk_28.z) {
        v0.z = param0->unk_28.z;
    } else {
        param0->unk_18 += param0->unk_1C.z;
    }

    sub_02063060(param0->unk_3C, &v0);

    param0->unk_08++;

    if (param0->unk_08 >= 32) {
        param0->unk_08 = 0;
        param0->unk_00++;
    }

    return(0);
}

static int ov5_021E0D40 (UnkStruct_ov5_021F9B10 * param0)
{
    VecFx32 v0;

    sub_02063050(param0->unk_3C, &v0);

    v0.y += param0->unk_1C.y;

    if (v0.y < param0->unk_28.y) {
        v0.y = param0->unk_28.y;
    }

    v0.z += param0->unk_1C.z;

    if (v0.z > param0->unk_28.z) {
        v0.z = param0->unk_28.z;
    } else {
        param0->unk_18 += param0->unk_1C.z;
    }

    sub_02063060(param0->unk_3C, &v0);

    param0->unk_08++;

    if (param0->unk_08 < 64) {
        return(0);
    }

    GF_ASSERT(v0.z == param0->unk_28.z);
    GF_ASSERT(v0.y == param0->unk_28.y);

    LocalMapObj_SetX(param0->unk_3C, param0->unk_0C);
    sub_02063034(param0->unk_3C, param0->unk_10);
    LocalMapObj_SetZ(param0->unk_3C, param0->unk_14);
    sub_02064208(param0->unk_3C);

    ov6_02248608(param0->unk_50);

    return(1);
}

static int(*const Unk_ov5_021F9AFC[])(UnkStruct_ov5_021F9B10 *) = {
    ov5_021E0BEC,
    ov5_021E0C10,
    ov5_021E0C34,
    ov5_021E0CF4,
    ov5_021E0D40
};

static const UnkStruct_ov5_021F8E3C Unk_ov5_021F9B9C[] = {
    {0x1, 0x1},
    {0x3C, 0x2},
    {0x2, 0x1},
    {0x3C, 0x2},
    {0x0, 0x1},
    {0x3C, 0x2},
    {0x3, 0x1},
    {0x3C, 0x2},
    {0x1, 0x1},
    {0x3C, 0x1},
    {0x2, 0x1},
    {0x3C, 0x1},
    {0x0, 0x1},
    {0x3C, 0x1},
    {0x3, 0x1},
    {0x3C, 0x1},
    {0x1, 0x1},
    {0x2, 0x1},
    {0x0, 0x1},
    {0x3, 0x1},
    {0x1, 0x1},
    {0x2, 0x1},
    {0x0, 0x1},
    {0x3, 0x1},
    {0xfe, 0x0}
};

static const UnkStruct_ov5_021F8E3C Unk_ov5_021F9C00[] = {
    {0x1, 0x1},
    {0x2, 0x1},
    {0x0, 0x1},
    {0x3, 0x1},
    {0x1, 0x1},
    {0x2, 0x1},
    {0x0, 0x1},
    {0x3, 0x1},
    {0x1, 0x1},
    {0x3C, 0x1},
    {0x2, 0x1},
    {0x3C, 0x1},
    {0x0, 0x1},
    {0x3C, 0x1},
    {0x3, 0x1},
    {0x3C, 0x1},
    {0x1, 0x1},
    {0x3C, 0x2},
    {0x2, 0x1},
    {0x3C, 0x3},
    {0x0, 0x1},
    {0x3C, 0x4},
    {0x3, 0x1},
    {0x3C, 0x5},
    {0x1, 0x1},
    {0xfe, 0x0}
};

void ov5_021E0DD4 (TaskManager * param0)
{
    FieldSystem * v0 = TaskMan_FieldSystem(param0);
    ov5_021E0DE0(v0);
}

static void ov5_021E0DE0 (FieldSystem * param0)
{
    UnkStruct_ov5_021E0DE0 * v0 = ov5_021E1110((sizeof(UnkStruct_ov5_021E0DE0)));

    v0->unk_00 = param0;
    v0->unk_04 = param0->playerAvatar;
    v0->unk_08 = Player_LocalMapObject(v0->unk_04);
    v0->unk_10 = sub_0205EB98(v0->unk_04);

    sub_02050944(param0->unk_10, ov5_021E0E10, v0);
}

static BOOL ov5_021E0E10 (TaskManager * param0)
{
    UnkStruct_ov5_021E0DE0 * v0 = TaskManager_Environment(param0);

    switch (v0->unk_0C) {
    case 0:
        v0->unk_14 = sub_02065700(v0->unk_08, Unk_ov5_021F9B9C);
        v0->unk_0C++;
        break;
    case 1:
        if (sub_0206574C(v0->unk_14) == 1) {
            int v1 = sub_0205ED6C(0x12, v0->unk_10);

            ov5_021E106C(v0->unk_04, v1);
            sub_02065758(v0->unk_14);

            v0->unk_14 = sub_02065700(v0->unk_08, Unk_ov5_021F9C00);
            v0->unk_0C++;
        }
        break;
    case 2:
        if (sub_0206574C(v0->unk_14) == 1) {
            sub_02065758(v0->unk_14);
            ov5_021E1134(v0);
            return 1;
        }
        break;
    }

    return 0;
}

void ov5_021E0E94 (PlayerAvatar * param0)
{
    LocalMapObject * v0 = Player_LocalMapObject(param0);

    if (sub_02062DFC(v0) == 0) {
        return;
    }

    {
        int v1 = sub_0205EB74(param0);

        if (v1 != 0x0) {
            return;
        }
    }

    {
        int v2 = sub_02062920(v0);

        if ((v2 == 0xc4) || (v2 == 0xc5) || (v2 == 0x10e) || (v2 == 0x10f)) {
            return;
        }
    }

    {
        u32 v3 = sub_0205EB90(param0);

        ov5_021DFB54(param0, (1 << 6));
        ov5_021DFB5C(param0);
        ov5_021DFB54(param0, v3);
    }
}

void ov5_021E0EEC (PlayerAvatar * param0)
{
    LocalMapObject * v0 = Player_LocalMapObject(param0);

    if (sub_02062DFC(v0) == 0) {
        return;
    }

    {
        int v1 = sub_0205EB74(param0);

        if (v1 != 0x0) {
            return;
        }
    }

    {
        int v2 = sub_02062920(v0);

        if ((v2 != 0xc4) && (v2 != 0xc5) && (v2 != 0x10e) && (v2 != 0x10f) && (v2 != 0x112) && (v2 != 0x113)) {
            return;
        }
    }

    {
        u32 v3 = sub_0205EB90(param0);

        ov5_021DFB54(param0, (1 << 0));
        ov5_021DFB5C(param0);
        ov5_021DFB54(param0, v3);
    }
}

static SysTask * ov5_021E0F54 (FieldSystem * param0, u32 param1)
{
    PlayerAvatar * v0 = param0->playerAvatar;
    int v1 = sub_0205EB74(v0);

    if (v1 != 0x0) {
        return NULL;
    }

    {
        SysTask * v2;
        LocalMapObject * v3 = Player_LocalMapObject(v0);
        UnkStruct_ov5_021E0FF0 * v4 = Heap_AllocFromHeapAtEnd(4, (sizeof(UnkStruct_ov5_021E0FF0)));

        v4->unk_00 = 0;
        v4->unk_08 = param0;
        v4->unk_0C = v0;
        v4->unk_04 = v1;

        sub_02062DDC(v3);
        ov5_021DFB54(v0, param1);
        ov5_021DFB5C(v0);

        v2 = SysTask_Start(ov5_021E0FF0, v4, 0xffff);
        GF_ASSERT(v2 != NULL);

        return v2;
    }
}

static void ov5_021E0FC0 (SysTask * param0)
{
    if (param0 == NULL) {
        return;
    }

    {
        UnkStruct_ov5_021E0FF0 * v0 = sub_0201CED0(param0);
        PlayerAvatar * v1 = v0->unk_0C;
        int v2 = sub_0205ED6C(0x0, sub_0205EB98(v1));

        ov5_021DFB90(v1);
        Heap_FreeToHeap(v0);
        SysTask_Done(param0);
    }
}

static void ov5_021E0FF0 (SysTask * param0, void * param1)
{
    UnkStruct_ov5_021E0FF0 * v0 = param1;
    LocalMapObject * v1 = Player_LocalMapObject(v0->unk_0C);

    sub_02062B68(v1);
}

SysTask * ov5_021E1000 (FieldSystem * param0)
{
    return ov5_021E0F54(param0, (1 << 7));
}

void ov5_021E100C (SysTask * param0)
{
    ov5_021E0FC0(param0);
}

SysTask * ov5_021E1014 (FieldSystem * param0)
{
    return ov5_021E0F54(param0, (1 << 9));
}

void ov5_021E1020 (SysTask * param0)
{
    ov5_021E0FC0(param0);
}

static void ov5_021E1028 (FieldSystem * param0, Pokemon * param1, UnkStruct_ov5_021E1050 * param2)
{
    param2->unk_00 = 1;
    param2->unk_08 = param1;
    param2->unk_04 = sub_0205EB98(param0->playerAvatar);
}

static void ov5_021E103C (FieldSystem * param0, UnkStruct_ov5_021E1050 * param1)
{
    param1->unk_0C = ov6_02243F88(param0, 0, param1->unk_08, param1->unk_04);
}

static int ov5_021E1050 (UnkStruct_ov5_021E1050 * param0)
{
    if (ov6_02243FBC(param0->unk_0C) == 1) {
        ov6_02243FC8(param0->unk_0C);
        return 1;
    }

    return 0;
}

static void ov5_021E106C (PlayerAvatar * param0, int param1)
{
    LocalMapObject * v0 = Player_LocalMapObject(param0);

    if (sub_0205F108(param0) == 0) {
        ov5_021EE3FC(v0, param1, NULL, NULL);
    } else {
        int v1;
        FieldSystem * v2;
        UnkStruct_020216E0 * v3;

        v2 = sub_02062C00(v0);
        v1 = ov9_0224A520(v2, v0);
        v3 = ov5_021EE3FC(v0, param1, ov5_021E10C0, param0);

        if (v3 != NULL) {
            ov9_0224A558(v2, v3, v1);
        }
    }
}

static void ov5_021E10C0 (void * param0, const UnkStruct_020216E0 * param1)
{
    PlayerAvatar * v0 = param0;
    LocalMapObject * v1 = Player_LocalMapObject(v0);
    FieldSystem * v2 = sub_02062C00(v1);

    ov9_0224A564(v2, param1);
}

static LocalMapObject * ov5_021E10D4 (PlayerAvatar * param0, int param1)
{
    int v0 = Player_XPos(param0) + sub_0206419C(param1);
    int v1 = Player_ZPos(param0) + sub_020641A8(param1);
    const MapObjectManager * v2 = sub_02062A40(Player_LocalMapObject(param0));
    LocalMapObject * v3 = sub_0206326C(v2, v0, v1, 0);

    return v3;
}

static void * ov5_021E1110 (int param0)
{
    void * v0 = Heap_AllocFromHeapAtEnd(4, param0);

    GF_ASSERT(v0 != NULL);
    memset(v0, 0, param0);

    return v0;
}

static void ov5_021E1134 (void * param0)
{
    Heap_FreeToHeapExplicit(4, param0);
}

static Pokemon * ov5_021E1140 (FieldSystem * param0, int param1)
{
    Pokemon * v0 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(param0->saveData), param1);
    return v0;
}
