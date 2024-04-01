#include "enums.h"

#include <nitro.h>
#include <string.h>
#include <dwc.h>

#include "core_sys.h"

#include "strbuf.h"
#include "overlay066/struct_ov66_0222DFF8_decl.h"
#include "overlay070/struct_ov70_0225CA20_decl.h"
#include "overlay070/struct_ov70_0225CC54_decl.h"
#include "overlay070/struct_ov70_0225DEE8_decl.h"
#include "overlay070/struct_ov70_02263344_decl.h"

#include "overlay066/struct_ov66_0222E294.h"
#include "overlay070/struct_ov70_02265F38.h"
#include "overlay084/struct_ov84_02240FA8.h"

#include "unk_02005474.h"
#include "communication_information.h"
#include "communication_system.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"
#include "overlay066/ov66_0222DDF0.h"
#include "overlay066/ov66_022324F0.h"
#include "overlay070/ov70_0225C9B4.h"
#include "overlay070/ov70_0225D9A4.h"
#include "overlay070/ov70_02262DA8.h"
#include "overlay070/ov70_02265F38.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    s16 unk_04;
    u8 unk_06;
    u8 unk_07;
} UnkStruct_ov70_02266C68;

typedef struct {
    s16 unk_00;
    u16 unk_02;
    u8 unk_04;
    s8 unk_05;
    u8 unk_06;
    u8 unk_07;
    u16 unk_08;
    u16 unk_0A;
    s32 unk_0C;
    s32 unk_10;
    BOOL unk_14;
    UnkStruct_ov84_02240FA8 unk_18;
    u32 unk_38;
    UnkStruct_ov70_02266C68 unk_3C;
} UnkStruct_ov70_02266AF0;

typedef struct {
    UnkStruct_ov70_02266C68 unk_00;
} UnkStruct_ov70_022669FC;

static void ov70_02266AF0(UnkStruct_ov70_02266AF0 * param0, UnkStruct_ov70_02263344 * param1, UnkStruct_ov70_0225DEE8 * param2, u32 param3, u32 param4);
static void ov70_02266B18(UnkStruct_ov70_02266AF0 * param0, UnkStruct_ov70_02263344 * param1, u32 param2, u32 param3);
static void ov70_02266B30(UnkStruct_ov70_02266AF0 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2, u32 param3);
static void ov70_02266BA0(UnkStruct_ov70_02266AF0 * param0, UnkStruct_ov70_0225DEE8 * param1);
static BOOL ov70_02266BAC(UnkStruct_ov70_02266AF0 * param0, UnkStruct_ov70_0225DEE8 * param1, UnkStruct_ov70_02265F38 * param2, UnkStruct_ov70_02263344 * param3, u32 param4);
static void ov70_02266C68(UnkStruct_ov70_02266C68 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2, u32 param3, s32 param4);
static void ov70_02266CB0(UnkStruct_ov70_02266C68 * param0, UnkStruct_ov70_0225DEE8 * param1);
static void ov70_02266CCC(UnkStruct_ov70_02266C68 * param0, s32 param1);
static void ov70_02266CFC(UnkStruct_ov70_02266C68 * param0, UnkStruct_ov70_0225DEE8 * param1, BOOL param2);
static void ov70_02266CF0(UnkStruct_ov70_02266C68 * param0, UnkStruct_ov70_0225DEE8 * param1, BOOL param2);
static void ov70_02266D08(UnkStruct_ov70_02266C68 * param0, UnkStruct_ov70_0225DEE8 * param1, BOOL param2, BOOL param3);

static const UnkStruct_ov84_02240FA8 Unk_ov70_0226DC94 = {
    NULL,
    NULL,
    NULL,
    NULL,
    0x0,
    0x3,
    0x0,
    0x8,
    0x0,
    0x0,
    0x1,
    0xF,
    0x2,
    0x0,
    0x10,
    0x0,
    0x0,
    0x0,
    NULL
};

BOOL ov70_02265F38 (UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2)
{
    UnkStruct_ov70_02266AF0 * v0;
    UnkStruct_ov70_02265F38 * v1;
    UnkStruct_ov66_0222DFF8 * v2;

    v1 = ov70_02262E38(param0);
    v0 = ov70_02262E80(param0);
    v2 = ov70_0225DEE8(param1);

    switch (ov70_02262E84(param0)) {
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 26:
    case 27:
        if (v0->unk_08 > ov66_02233224(v1->unk_01)) {
            v1->unk_00 = 4;
            ov70_02262E88(param0, 23);
            break;
        }

        if (v0->unk_08 > sub_02035E18()) {
            v1->unk_00 = 4;
            ov70_02262E88(param0, 23);
            break;
        }

        if (sub_020388AC() == 0) {
            v1->unk_00 = 4;
            ov70_02262E88(param0, 23);
            break;
        }
    case 8:
        if (ov66_02233374() == 1) {
            if (ov66_02233224(v1->unk_01) <= 1) {
                v1->unk_00 = 4;
                ov70_02262E88(param0, 23);
                break;
            }
        }

        v0->unk_10--;

        if (v0->unk_10 < 0) {
            v1->unk_00 = 4;
            ov70_02262E88(param0, 23);
            break;
        }
    case 7:
    case 18:
    case 17:
    case 19:
    case 20:
    case 21:
    case 22:
        switch (sub_020380E4()) {
        case 2:
        case 3:
        case 4:
        case 5:
            v1->unk_00 = 4;
            ov70_02262E88(param0, 23);
            break;
        default:
            break;
        }
        break;
    default:
        break;
    }

    switch (ov70_02262E84(param0)) {
    case 0:
        v0 = ov70_02262E3C(param0, sizeof(UnkStruct_ov70_02266AF0));
        ov70_02262E8C(param0);
        break;
    case 1:
        if (ov66_0222E210(v2)) {
            v1->unk_00 = 7;
            ov70_02262E88(param0, 28);
            break;
        }

        if (ov66_0222E190(v2)) {
            v1->unk_00 = 2;
            ov70_02262E88(param0, 28);
            break;
        }

        Sound_PlayEffect(1501);
        ov70_02262E8C(param0);
        break;
    case 2:
        ov70_0225E27C(param1, v1->unk_02, 0);
        ov70_02266AF0(v0, param0, param1, 0, 3);
        break;
    case 3:
        ov70_02266B30(v0, param1, 3, 1);
        ov70_0225E074(param1, &v0->unk_18, 0, 0);
        ov70_02262E88(param0, 4);
        break;
    case 4:
    {
        u32 v3;
        BOOL v4 = 0;

        v3 = ov70_0225E0D4(param1);

        switch (v3) {
        case 0xfffffffe:
        case 2:
            v1->unk_00 = 5;
            ov70_02262E88(param0, 28);
            v4 = 1;
            break;
        case 1:
            ov70_02262E88(param0, 5);
            v4 = 1;
            break;
        case 0:
            ov70_02262E88(param0, 6);
            v4 = 1;
            break;
        default:
            break;
        }

        if (v4 == 1) {
            ov70_0225E0E4(param1, NULL, NULL);
            ov70_02266BA0(v0, param1);
        }
    }
    break;
    case 5:
        ov70_0225E27C(param1, v1->unk_02, 0);
        ov70_02266AF0(v0, param0, param1, v1->unk_02 + 34, 2);
        break;
    case 6:
        if (ov66_0222E190(v2)) {
            v1->unk_00 = 2;
            ov70_02262E88(param0, 28);
            break;
        }

        if (ov66_02233184(v1->unk_01) == 1) {
            if ((ov66_022331E4(v1->unk_01) == 0) || (ov66_022331A4(v1->unk_01) == 0)) {
                v1->unk_00 = 1;
                ov70_02262E88(param0, 28);
                break;
            }

            if (ov66_022332F8(v1->unk_01) == 0) {
                v1->unk_00 = 7;
                ov70_02262E88(param0, 28);
                break;
            }
        }

        v0->unk_00 = ov66_022332F8(v1->unk_01);
        v0->unk_10 = (30 * 30);

        {
            Strbuf* v5;

            if (v0->unk_00 > (11 * 30)) {
                v5 = ov70_0225E20C(param1, 0, 10);
            } else {
                v0->unk_14 = 1;
                v5 = ov70_0225E20C(param1, 0, 11);
            }

            ov70_0225DF9C(param1, v5);
            ov70_0225DFBC(param1);
        }

        sub_0203883C(v1->unk_01);

        if (ov66_02233374() == 1) {
            ov66_0222EA10(v2, v1->unk_02, 1, param2, 0, 0, 0, 0);
            v0->unk_07 = 1;
        }

        ov70_02266C68(&v0->unk_3C, param1, v1->unk_02, 1, v0->unk_00);
        ov70_02266CFC(&v0->unk_3C, param1, 1);
        ov70_02262E88(param0, 7);
        break;
    case 7:
    {
        u32 v6;
        u32 v7;

        v6 = sub_020388AC();
        v7 = ov66_02233224(v1->unk_01);
        v0->unk_00 = ov66_022332F8(v1->unk_01);

        ov70_02266CCC(&v0->unk_3C, v0->unk_00);

        if ((v0->unk_00 <= (11 * 30)) && (v0->unk_14 == 0)) {
            Strbuf* v8;

            ov70_0225DFCC(param1);

            v0->unk_14 = 1;
            v8 = ov70_0225E20C(param1, 0, 11);

            ov70_0225DF9C(param1, v8);
            ov70_0225DFBC(param1);
        }

        ov70_02266CF0(&v0->unk_3C, param1, 0);

        if (v6 == 0) {
            v1->unk_00 = 4;
            ov70_02262E88(param0, 23);
            break;
        }

        if (v6 == 2) {
            v1->unk_00 = 8;

            {
                u32 v9;
                Strbuf* v10;

                if (v7 == 4) {
                    v9 = 16;
                } else {
                    v9 = 18;
                }

                ov70_0225DFCC(param1);

                v10 = ov70_0225E20C(param1, 0, v9);

                ov70_0225DF9C(param1, v10);
                ov70_0225DFBC(param1);
                ov70_02262E88(param0, 9);

                v0->unk_08 = v7;
            }

            ov70_02266CCC(&v0->unk_3C, 0);
            ov70_02266CF0(&v0->unk_3C, param1, 0);
            break;
        }

        if (v0->unk_14 == 0) {
            if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
                Sound_PlayEffect(1500);

                if (ov66_02233374() == 0) {
                    v1->unk_00 = 6;
                    ov70_0225DFCC(param1);
                    ov70_02262E88(param0, 23);
                } else {
                    v1->unk_00 = 6;
                    ov70_0225DFCC(param1);
                    ov70_02262E88(param0, 16);
                }
                break;
            }
        }

        if (ov66_02233374() == 1) {
            if (v0->unk_07 != v7) {
                v0->unk_07 = v7;

                if (v7 != 4) {
                    ov66_0222EA10(v2, v1->unk_02, v7, param2, 0, 0, 0, 0);
                }
            }

            if (v0->unk_00 == 0) {
                if (ov66_02233224(v1->unk_01) <= 1) {
                    v1->unk_00 = 3;
                    ov70_02262E88(param0, 23);
                    break;
                }
            }
        }

        if ((ov66_02233184(v1->unk_01) == 1) && (ov66_022331A4(v1->unk_01) == 0)) {
            v1->unk_00 = 0;
            ov70_02262E88(param0, 23);
            break;
        }

        if (v0->unk_00 == 0) {
            ov70_02262E88(param0, 8);
            {
                Strbuf* v11;

                ov70_0225DFCC(param1);
                v11 = ov70_0225E20C(param1, 0, 18);
                ov70_0225DF9C(param1, v11);
                ov70_0225DFBC(param1);
            }
            break;
        }
    }
    break;

    case 8:
    {
        u32 v12;
        u32 v13;

        ov70_02266CCC(&v0->unk_3C, 0);
        ov70_02266CF0(&v0->unk_3C, param1, 0);

        v12 = sub_020388AC();
        v13 = ov66_02233224(v1->unk_01);

        switch (sub_020380E4()) {
        case 3:
        case 4:
            v1->unk_00 = 4;
            ov70_02262E88(param0, 23);
            break;
        default:
            break;
        }

        if (v12 == 0) {
            v1->unk_00 = 4;
            ov70_02262E88(param0, 23);
            break;
        }

        if (v12 == 2) {
            v1->unk_00 = 8;
            ov70_02262E88(param0, 9);
            v0->unk_08 = v13;
            break;
        }

        if ((ov66_02233184(v1->unk_01) == 1) && (ov66_022331A4(v1->unk_01) == 0)) {
            v1->unk_00 = 0;
            ov70_02262E88(param0, 23);
            break;
        }
    }
    break;
    case 9:
        ov70_02266CCC(&v0->unk_3C, 0);
        ov70_02266CF0(&v0->unk_3C, param1, 0);
        ov66_0222E3E4(ov70_0225DEE8(param1), v1->unk_03);

        sub_02038B40();
        CommunicationInformation_Init(ov66_0222E0C4(ov70_0225DEE8(param1)), NULL);
        CommunicationInformation_SetPersonalTrainerInfo(ov66_0222E918(v2));
        sub_0203632C(0);
        ov70_02266B18(v0, param0, 10, 17);
        break;
    case 10:
        ov70_02266CCC(&v0->unk_3C, 0);
        ov70_02266CF0(&v0->unk_3C, param1, 0);

        CommunicationInformation_SendBattleRegulation();
        sub_02032E1C(CommunicationSystem_GetCurNetId());

        ov70_02262E88(param0, 11);
        break;
    case 11:

        ov70_02266CCC(&v0->unk_3C, 0);
        ov70_02266CF0(&v0->unk_3C, param1, 0);

        {
            int v14;

            while ((v14 = CommunicationInformation_GetNewNetworkId()) != 0xff) {
                sub_02032E1C(v14);
            }
        }

        if (CommunicationInformation_GetRecvCnt() >= ov66_02233224(v1->unk_01)) {
            if (ov66_02233374() == 1) {
                if (v0->unk_02 == 0) {
                    ov66_022330CC();
                    v0->unk_02 = 1;
                }
            }

            if (ov66_02233128() == 1) {
                ov70_02262E88(param0, 12);
            }
        } else {
            if (ov66_02233128() == 1) {
                v1->unk_00 = 4;
                ov70_02262E88(param0, 23);
            }
        }
        break;
    case 12:
        ov70_02266CCC(&v0->unk_3C, 0);
        ov70_02266CF0(&v0->unk_3C, param1, 0);

        sub_020365F4();

        ov66_0222E238(v2);
        ov70_02266B18(v0, param0, 13, 14);
        break;
    case 13:
    {
        BOOL v15;

        ov70_02266CCC(&v0->unk_3C, 0);
        ov70_02266CF0(&v0->unk_3C, param1, 0);

        v0->unk_0C = ov66_0222E344(v2);
        v15 = sub_02036614(CommunicationSystem_GetCurNetId(), &v0->unk_0C);

        if (v15 == 1) {
            ov70_02262E88(param0, 14);
        }
    }
    break;
    case 14:
        ov70_02266CCC(&v0->unk_3C, 0);
        ov70_02266CF0(&v0->unk_3C, param1, 0);

        {
            int v16;
            int v17;
            int v18;
            const s32 * v19;
            int v20;
            BOOL v21;
            s32 v22;

            v17 = CommunicationInformation_GetRecvCnt();
            v18 = CommunicationSystem_GetCurNetId();
            v20 = 0;
            v21 = 0;
            v22 = ov66_02233340();

            for (v16 = 0; v16 < v17; v16++) {
                if (v18 != v16) {
                    v19 = sub_0203664C(v16);

                    if (v19 != NULL) {
                        ov66_0222E24C(v2, v19[0], v16);

                        if (v19[0] == v22) {
                            v21 = 1;
                        }

                        v20++;
                    }
                } else {
                    ov66_0222E27C(v2, v16);

                    if (ov66_02233374() == 1) {
                        v21 = 1;
                    }

                    v20++;
                }
            }

            if (v20 == v17) {
                if (v21 == 1) {
                    ov70_02262E88(param0, 15);
                } else {
                    v1->unk_00 = 4;
                    ov70_02262E88(param0, 23);
                }
            }
        }
        break;
    case 15:
        sub_020388F4(0, 1);

        if (ov66_02233374() == 1) {
            int v23;
            UnkStruct_ov66_0222E294 v24;

            ov66_0222E294(v2, &v24);
            v23 = ov66_02233224(v1->unk_01);
            ov66_0222EA10(v2, v1->unk_02, v23, v24.unk_00[0], v24.unk_00[1], v24.unk_00[2], v24.unk_00[3], 1);
        }

        ov70_0225DFCC(param1);
        ov70_02266B18(v0, param0, 28, 18);
        break;
    case 16:
    {
        Strbuf* v25;

        v25 = ov70_0225E20C(param1, 0, 26);
        ov70_0225DF8C(param1, v25);
    }

        ov70_02262E88(param0, 17);
        ov70_02266CB0(&v0->unk_3C, param1);
        break;
    case 17:
    {
        BOOL v26;

        v26 = ov70_02266BAC(v0, param1, v1, param0, param2);

        if (v26 == 0) {
            if (ov70_0225DFAC(param1) == 1) {
                ov70_02262E88(param0, 18);
            }
        }
    }
    break;
    case 18:
        ov70_0225E194(param1);
        ov70_02262E88(param0, 19);
        break;
    case 19:
    {
        int v27;

        v27 = ov70_0225E1C4(param1);

        switch (v27) {
        case 0:
            ov70_0225E1F8(param1);
            ov70_02262E88(param0, 23);
            ov66_0222E200(v2);
            break;
        case 1:
            ov70_0225E1F8(param1);
            ov70_02262E88(param0, 20);
            break;
        case 2:
        {
            BOOL v28;

            v28 = ov70_02266BAC(v0, param1, v1, param0, param2);

            if (v28 == 1) {
                ov70_0225E1F8(param1);
            }
        }
        break;
        }
    }
    break;
    case 20:
        v0->unk_00 = ov66_022332F8(v1->unk_01);

        ov70_02266C68(&v0->unk_3C, param1, v1->unk_02, 1, v0->unk_00);
        ov70_02266CFC(&v0->unk_3C, param1, 1);

        {
            Strbuf* v29;

            if (v0->unk_00 > (11 * 30)) {
                v29 = ov70_0225E20C(param1, 0, 10);
            } else {
                v0->unk_14 = 1;
                v29 = ov70_0225E20C(param1, 0, 11);
            }

            ov70_0225DF9C(param1, v29);
            ov70_0225DFBC(param1);
        }
        ov70_02262E88(param0, 7);
        break;
    case 21:
    {
        u32 v30;

        v30 = ov66_02233224(v1->unk_01);
        v1->unk_00 = 8;

        {
            u32 v31;
            Strbuf* v32;

            if (v30 == 4) {
                v31 = 16;
            } else {
                v31 = 18;
            }

            v32 = ov70_0225E20C(param1, 0, v31);

            ov70_0225DF9C(param1, v32);
            ov70_0225DFBC(param1);
            ov70_02262E88(param0, 9);
        }

        ov70_02266C68(&v0->unk_3C, param1, v1->unk_02, 1, 0);
        ov70_02266CFC(&v0->unk_3C, param1, 1);
    }
    break;
    case 22:
    {
        Strbuf* v33;

        v33 = ov70_0225E20C(param1, 0, 18);

        ov70_0225DF9C(param1, v33);
        ov70_0225DFBC(param1);
        ov70_02266C68(&v0->unk_3C, param1, v1->unk_02, 1, 0);
        ov70_02266CCC(&v0->unk_3C, 0);
        ov70_02266CF0(&v0->unk_3C, param1, 1);
        ov70_02262E88(param0, 8);
    }
    break;
    case 23:
        CommunicationInformation_Delete();
        sub_0203888C();
        ov70_02262E88(param0, 24);
        break;
    case 24:
    {
        u32 v34;

        v34 = sub_020388AC();

        if (v34 == 0) {
            ov70_02262E88(param0, 28);
        }
    }
    break;
    case 25:
        if (ov70_0225DFAC(param1) == 1) {
            ov70_02262E88(param0, v0->unk_04);
        }
        break;
    case 26:
        if (v0->unk_05 > 0) {
            v0->unk_05--;
        }

        if (v0->unk_05 == 0) {
            sub_020364F0(v0->unk_06);
            ov70_02262E88(param0, 27);
        }
        break;
    case 27:
        v0->unk_0A++;

        if (v0->unk_0A >= (5 * 30)) {
            sub_020364F0(v0->unk_06);
            v0->unk_0A = 0;
        }

        if (sub_02036540(v0->unk_06)) {
            ov70_02262E88(param0, v0->unk_04);
        }
        break;
    case 28:
    {
        ov70_0225DFEC(param1);
        ov70_02266BA0(v0, param1);
        ov70_02266CB0(&v0->unk_3C, param1);
    }

        ov70_02262E64(param0);
        return 1;
    }

    return 0;
}

BOOL ov70_022669B8 (UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2)
{
    switch (ov70_02262E84(param0)) {
    case 0:
        sub_020388F4(0, 0);

        if (sub_020382C0() == 0) {
            CommunicationInformation_Delete();
            sub_0203888C();
        }

        ov70_02262E88(param0, 1);
        break;
    case 1:
        if (sub_020382C0() == 1) {
            return 1;
        }
        break;
    }

    return 0;
}

BOOL ov70_022669FC (UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2)
{
    UnkStruct_ov70_022669FC * v0;

    v0 = ov70_02262E80(param0);

    switch (ov70_02262E84(param0)) {
    case 0:
    {
        Strbuf* v1;
        u32 v2;
        u32 v3;
        u32 v4;

        v0 = ov70_02262E3C(param0, sizeof(UnkStruct_ov70_022669FC));
        v2 = ov70_0225DF40(param1);

        switch (v2) {
        case 39:
            v3 = 42;
            v4 = UnkEnum_ov66_022324D0_00;
            break;
        case 40:
            v3 = 41;
            v4 = UnkEnum_ov66_022324D0_01;
            break;
        case 41:
            v3 = 43;
            v4 = UnkEnum_ov66_022324D0_02;
            break;
        default:
            GF_ASSERT(0);
            return 1;
        }

        ov70_0225E27C(param1, v4, 0);

        v1 = ov70_0225E20C(param1, 1, v3);

        ov70_0225DFFC(param1, v1);
        ov70_02266C68(&v0->unk_00, param1, v4, 0, 0);
        ov70_02266CFC(&v0->unk_00, param1, 1);
        ov70_02262E8C(param0);
    }
    break;
    case 1:
        if ((gCoreSys.pressedKeys & PAD_BUTTON_A) || (gCoreSys.pressedKeys & PAD_KEY_RIGHT) || (gCoreSys.pressedKeys & PAD_KEY_LEFT) || (gCoreSys.pressedKeys & PAD_KEY_DOWN)) {
            ov70_02266CB0(&v0->unk_00, param1);
            ov70_0225DFEC(param1);

            {
                UnkStruct_ov70_0225CA20 * v5;
                UnkStruct_ov70_0225CC54 * v6;

                v5 = ov70_0225DEF0(param1);
                v6 = ov70_0225CCAC(v5);

                ov70_0225CDEC(v5, v6, 1);
            }

            ov70_02262E64(param0);
            return 1;
        } else {
            ov70_02266CFC(&v0->unk_00, param1, 0);
        }
        break;
    }

    return 0;
}

static void ov70_02266AF0 (UnkStruct_ov70_02266AF0 * param0, UnkStruct_ov70_02263344 * param1, UnkStruct_ov70_0225DEE8 * param2, u32 param3, u32 param4)
{
    Strbuf* v0;

    v0 = ov70_0225E20C(param2, 0, param3);
    ov70_0225DF8C(param2, v0);
    param0->unk_04 = param4;
    ov70_02262E88(param1, 25);
}

static void ov70_02266B18 (UnkStruct_ov70_02266AF0 * param0, UnkStruct_ov70_02263344 * param1, u32 param2, u32 param3)
{
    param0->unk_04 = param2;
    param0->unk_06 = param3;
    param0->unk_05 = 0;
    param0->unk_0A = 0;

    ov70_02262E88(param1, 26);
}

static void ov70_02266B30 (UnkStruct_ov70_02266AF0 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2, u32 param3)
{
    int v0;
    Strbuf* v1;

    ov70_0225E00C(param1, param2);

    param0->unk_38 = param2;

    for (v0 = 0; v0 < param2; v0++) {
        v1 = ov70_0225E20C(param1, 0, param3 + v0);
        ov70_0225E044(param1, v1, v0);
    }

    param0->unk_18 = Unk_ov70_0226DC94;
    param0->unk_18.unk_10 = param0->unk_38;

    if (param0->unk_18.unk_12 > param0->unk_38) {
        param0->unk_18.unk_12 = param0->unk_38;
    }

    param0->unk_18.unk_00 = ov70_0225E054(param1);
}

static void ov70_02266BA0 (UnkStruct_ov70_02266AF0 * param0, UnkStruct_ov70_0225DEE8 * param1)
{
    ov70_0225E034(param1);
}

static BOOL ov70_02266BAC (UnkStruct_ov70_02266AF0 * param0, UnkStruct_ov70_0225DEE8 * param1, UnkStruct_ov70_02265F38 * param2, UnkStruct_ov70_02263344 * param3, u32 param4)
{
    u32 v0;
    u32 v1;
    UnkStruct_ov66_0222DFF8 * v2;

    v2 = ov70_0225DEE8(param1);
    v0 = sub_020388AC();
    v1 = ov66_02233224(param2->unk_01);

    if (v0 == 0) {
        param2->unk_00 = 4;
        ov70_02262E88(param3, 23);
        return 1;
    }

    if (v0 == 2) {
        param0->unk_08 = v1;
        ov70_02262E88(param3, 21);
        return 1;
    }

    if (param0->unk_07 != v1) {
        param0->unk_07 = v1;

        if (v1 != 4) {
            ov66_0222EA10(v2, param2->unk_02, v1, param4, 0, 0, 0, 0);
        }
    }

    param0->unk_00 = ov66_022332F8(param2->unk_01);

    if (param0->unk_00 == 0) {
        if (ov66_02233224(param2->unk_01) <= 1) {
            param2->unk_00 = 3;
            ov70_02262E88(param3, 23);
            return 1;
        }

        ov70_02262E88(param3, 22);
        return 1;
    } else {
        if (param0->unk_00 <= (11 * 30)) {
            ov70_02262E88(param3, 20);
            return 1;
        }
    }

    return 0;
}

static void ov70_02266C68 (UnkStruct_ov70_02266C68 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2, u32 param3, s32 param4)
{
    static const u8 v0[2] = {
        8, 10,
    };

    GF_ASSERT(param3 < 2);

    memset(param0, 0, sizeof(UnkStruct_ov70_02266C68));

    param0->unk_06 = param3;
    param0->unk_03 = param2;

    ov70_02266CCC(param0, param4);
    ov70_0225E104(param1, 18, 3, 13, v0[param3]);
}

static void ov70_02266CB0 (UnkStruct_ov70_02266C68 * param0, UnkStruct_ov70_0225DEE8 * param1)
{
    memset(param0, 0, sizeof(UnkStruct_ov70_02266C68));
    ov70_0225E12C(param1);
}

static void ov70_02266CCC (UnkStruct_ov70_02266C68 * param0, s32 param1)
{
    s16 v0;

    v0 = param1 / 30;

    if (v0 != param0->unk_04) {
        param0->unk_04 = v0;
        param0->unk_07 |= 8;
    }
}

static void ov70_02266CF0 (UnkStruct_ov70_02266C68 * param0, UnkStruct_ov70_0225DEE8 * param1, BOOL param2)
{
    ov70_02266D08(param0, param1, param2, 0);
}

static void ov70_02266CFC (UnkStruct_ov70_02266C68 * param0, UnkStruct_ov70_0225DEE8 * param1, BOOL param2)
{
    ov70_02266D08(param0, param1, param2, 1);
}

static void ov70_02266D08 (UnkStruct_ov70_02266C68 * param0, UnkStruct_ov70_0225DEE8 * param1, BOOL param2, BOOL param3)
{
    Strbuf* v0;
    u32 v1;
    BOOL v2;
    BOOL v3;
    u32 v4;

    if (param2) {
        param0->unk_07 = 0xff;
    }

    switch (param0->unk_03) {
    case UnkEnum_ov66_022324D0_00:
        v1 = UnkEnum_ov66_02232F38_00;
        break;
    case UnkEnum_ov66_022324D0_01:
        v1 = UnkEnum_ov66_02232F38_01;
        break;
    case UnkEnum_ov66_022324D0_02:
        v1 = UnkEnum_ov66_02232F38_02;
        break;
    default:
        GF_ASSERT(0);
        v1 = UnkEnum_ov66_02232F38_02;
        break;
    }

    {
        v2 = ov66_02233184(v1);

        if (param0->unk_00 != v2) {
            param0->unk_07 |= 4;
        }

        param0->unk_00 = v2;
        v3 = ov66_022331A4(v1);

        if (param0->unk_02 != v3) {
            param0->unk_07 |= 4;
        }

        param0->unk_02 = v3;
    }

    {
        if (v2 == 1) {
            v4 = ov66_022331E4(v1);
        } else {
            v4 = 4;
        }

        if (param0->unk_01 != v4) {
            param0->unk_07 |= 2;
        }

        param0->unk_01 = v4;
    }

    if (param0->unk_07 & 1) {
        ov70_0225E14C(param1, 0, 0, 13 * 8, 16);
        ov70_0225E27C(param1, param0->unk_03, 0);
        v0 = ov70_0225E20C(param1, 1, 54);
        ov70_0225E13C(param1, v0, 0, 0);
    }

    if (param0->unk_07 & 4) {
        ov70_0225E14C(param1, 36, 16, 13 * 8, 16);

        if (param3 == 1) {
            if ((param0->unk_02 == 0) && (param0->unk_00 == 1)) {
                v0 = ov70_0225E20C(param1, 1, 69);
                ov70_0225E13C(param1, v0, 36, 16);
            }
        }
    }

    if (param0->unk_07 & 2) {
        ov70_0225E14C(param1, 0, 32, 13 * 8, 32);
        ov70_0225E21C(param1, param0->unk_01, 1, 1, 2);
        ov70_0225E21C(param1, 4 - param0->unk_01, 1, 0, 2);

        v0 = ov70_0225E20C(param1, 1, 68);

        ov70_0225E13C(param1, v0, 0, 32);
    }

    if (param0->unk_06 == 1) {
        if (param0->unk_07 & 8) {
            ov70_0225E14C(param1, 0, 64, 13 * 8, 16);
            ov70_0225E21C(param1, param0->unk_04, 2, 0, 2);
            v0 = ov70_0225E20C(param1, 0, 15);
            ov70_0225E13C(param1, v0, 0, 64);
        }
    }

    param0->unk_07 = 0;
}
