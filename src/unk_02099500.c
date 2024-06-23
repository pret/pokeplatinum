#include "unk_02099500.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02039A58.h"
#include "struct_defs/struct_02072014.h"

#include "overlay023/ov23_0223E140.h"
#include "overlay023/ov23_022416A8.h"
#include "overlay023/ov23_02241F74.h"
#include "overlay023/ov23_0224340C.h"
#include "overlay023/ov23_0224A1D0.h"
#include "overlay023/ov23_0224B05C.h"
#include "overlay023/ov23_0224DC40.h"
#include "overlay023/ov23_0225128C.h"
#include "overlay023/ov23_02253598.h"

#include "comm_player_manager.h"
#include "field_comm_manager.h"
#include "trainer_info.h"
#include "unk_02032798.h"
#include "unk_0204FA34.h"
#include "unk_0205001C.h"
#include "unk_02050548.h"
#include "unk_0205A0D8.h"
#include "unk_0205B33C.h"

static int CommPacketSizeOf_TrainerCard(void);
static int sub_02099548(void);
static int sub_0209954C(void);

static int sub_02099500(void)
{
    return 3;
}

static int sub_02099504(void)
{
    return 24;
}

static int sub_02099508(void)
{
    return 236 * 6 + 4 * 2;
}

static const CommCmdTable Unk_020F68A4[] = {
    { CommPlayer_RecvLocation, CommPacketSizeOf_RecvLocation, NULL },
    { CommPlayer_RecvLocationAndInit, CommPacketSizeOf_RecvLocationAndInit, NULL },
    { ov23_022431C4, CommPacketSizeOf_NetId, NULL },
    { ov23_0224ACE8, sub_0203294C, NULL },
    { ov23_0224ACF8, CommPacketSizeOf_NetId, NULL },
    { ov23_0224A348, sub_0203294C, NULL },
    { ov23_022428D8, ov23_022428D4, NULL },
    { ov23_0224A3A8, sub_02032944, NULL },
    { ov23_0224A410, sub_02032944, NULL },
    { ov23_022433BC, sub_0203294C, NULL },
    { ov23_02243B0C, CommPacketSizeOf_NetId, NULL },
    { ov23_02243F78, ov23_02243F98, NULL },
    { ov23_02243ED4, ov23_02243C38, NULL },
    { ov23_02243F9C, ov23_02243860, NULL },
    { ov23_0224401C, ov23_02244048, NULL },
    { ov23_0224448C, ov23_022442EC, NULL },
    { ov23_022445E8, CommPacketSizeOf_NetId, NULL },
    { ov23_0224461C, sub_02099500, NULL },
    { ov23_02245540, CommPacketSizeOf_NetId, NULL },
    { ov23_0224540C, sub_0203294C, NULL },
    { ov23_022454B4, ov23_02245408, NULL },
    { ov23_0224546C, sub_0203294C, NULL },
    { ov23_022455B4, ov23_02245694, NULL },
    { ov23_0224467C, CommPacketSizeOf_NetId, NULL },
    { ov23_022457E4, sub_0203294C, NULL },
    { ov23_0224589C, ov23_02245908, NULL },
    { ov23_022425F8, ov23_0224407C, NULL },
    { ov23_02242624, sub_02032944, NULL },
    { ov23_02242654, sub_02032944, NULL },
    { ov23_02244140, ov23_0224413C, NULL },
    { CommPlayer_RecvDelete, CommPacketSizeOf_NetId, NULL },
    { ov23_0224C384, ov23_0224C41C, NULL },
    { ov23_0224C25C, ov23_0224C41C, NULL },
    { ov23_0224C4CC, ov23_0224C584, NULL },
    { ov23_0224C1A4, sub_0203294C, NULL },
    { ov23_0224C104, ov23_0224C100, NULL },
    { ov23_0224B6AC, ov23_0224B72C, NULL },
    { ov23_0224B730, ov23_0224B798, NULL },
    { ov23_0224D4CC, ov23_0224D4FC, NULL },
    { ov23_0224B700, CommPacketSizeOf_NetId, NULL },
    { sub_02058018, CommPacketSizeOf_NetId, NULL },
    { ov23_022419B4, CommPacketSizeOf_NetId, NULL },
    { ov23_0223E9D4, CommPacketSizeOf_NetId, NULL },
    { ov23_0223EAF8, CommPacketSizeOf_NetId, NULL },
    { ov23_0223EB8C, CommPacketSizeOf_NetId, NULL },
    { ov23_0223EBC0, CommPacketSizeOf_NetId, NULL },
    { ov23_0223EBE4, ov23_0223EBFC, NULL },
    { ov23_0223EC00, ov23_0223EC30, NULL },
    { ov23_02243390, ov23_022433B8, NULL },
    { ov23_022413A0, sub_0203294C, NULL },
    { ov23_0224142C, ov23_022414D0, NULL },
    { ov23_0224F0F0, ov23_0224F174, NULL },
    { ov23_0224F0FC, ov23_0224F174, NULL },
    { ov23_0224F108, ov23_0224F174, NULL },
    { ov23_0224F138, ov23_0224F174, NULL },
    { ov23_0224F178, ov23_0224F1F8, NULL },
    { ov23_0224F184, ov23_0224F1F8, NULL },
    { ov23_0224F1FC, ov23_0224F248, NULL },
    { ov23_0224F208, ov23_0224F248, NULL },
    { ov23_02253998, sub_02032944, NULL },
    { ov23_022539A8, sub_02032944, NULL },
    { ov23_022513B0, ov23_02251414, NULL },
    { ov23_0224A570, CommPacketSizeOf_NetId, NULL },
    { ov23_0224A77C, ov23_0224A56C, NULL },
    { ov23_0224CD80, CommPacketSizeOf_NetId, NULL },
    { ov23_0224CF18, ov23_0224CD7C, NULL },
    { sub_02059EAC, CommPacketSizeOf_TrainerCard, sub_02059EBC },
    { ov23_0225215C, ov23_02251414, NULL },
    { ov23_02252178, ov23_02251414, NULL },
    { ov23_0224AB30, ov23_0224AB2C, NULL },
    { ov23_0224ABC4, ov23_0224AC0C, ov23_0224AAA0 },
    { ov23_0224AC10, CommPacketSizeOf_NetId, NULL },
    { sub_02059180, CommPacketSizeOf_NetId, NULL },
    { sub_02059D0C, CommPacketSizeOf_NetId, NULL },
    { ov23_0224D698, CommPacketSizeOf_NetId, NULL },
    { ov23_0224D6AC, ov23_0224D6F4, NULL },
    { sub_0205B988, TrainerInfo_Size, NULL },
    { sub_0205B9AC, CommPacketSizeOf_NetId, NULL },
    { sub_0205B98C, CommPacketSizeOf_NetId, NULL },
    { sub_0205BA6C, CommPacketSizeOf_NetId, NULL },
    { sub_0205B990, sub_0203294C, NULL },
    { sub_0205B9C4, CommPacketSizeOf_NetId, NULL },
    { sub_0205B9E0, sub_0203294C, NULL },
    { sub_0205BA08, CommPacketSizeOf_TrainerCard, sub_0205BA5C },
    { sub_0205B0C0, sub_0205B0E4, sub_0205B0F4 },
    { sub_0205B110, CommPacketSizeOf_NetId, NULL },
    { sub_02099510, CommPacketSizeOf_NetId, NULL },
    { sub_02099510, CommPacketSizeOf_NetId, NULL },
    { sub_02099510, CommPacketSizeOf_NetId, NULL },
    { sub_02099510, sub_0203294C, NULL },
    { sub_02099510, sub_02099548, NULL },
    { sub_02099510, sub_0203294C, NULL },
    { sub_02099510, sub_0203294C, NULL },
    { sub_02099510, sub_0203294C, NULL },
    { sub_02099510, sub_02099530, NULL },
    { sub_02099510, CommPacketSizeOf_NetId, NULL },
    { sub_02099510, sub_02099538, NULL },
    { sub_02099510, sub_02099540, NULL },
    { sub_02099510, sub_02099544, NULL },
    { sub_02099510, CommPacketSizeOf_NetId, NULL },
    { sub_02099510, CommPacketSizeOf_NetId, NULL },
    { sub_02099510, CommPacketSizeOf_NetId, NULL },
    { sub_02099510, sub_0203294C, NULL },
    { sub_02099510, sub_0203294C, NULL },
    { sub_02099510, sub_0209954C, NULL },
    { sub_02099510, sub_0203294C, NULL },
    { sub_02099510, sub_0203294C, NULL },
    { sub_02099510, sub_0203294C, NULL },
    { sub_02099510, sub_02099504, NULL },
    { sub_02099510, sub_02099508, NULL },
    { sub_0204FA34, sub_02032944, NULL },
    { sub_0205001C, sub_02032944, NULL },
    { sub_02050548, sub_02032944, NULL }
};

void sub_02099510(int param0, int param1, void *param2, void *param3)
{
    return;
}

void CommFieldCmd_Init(void *param0)
{
    int v0 = sizeof(Unk_020F68A4) / sizeof(CommCmdTable);
    CommCmd_Init(Unk_020F68A4, v0, param0);
}

static int CommPacketSizeOf_TrainerCard(void)
{
    return sizeof(TrainerCard);
}

int sub_02099530(void)
{
    return 3000 + 8;
}

int sub_02099538(void)
{
    return 1008;
}

int sub_02099540(void)
{
    return 10;
}

int sub_02099544(void)
{
    return 10 * 5;
}

static int sub_02099548(void)
{
    return 4;
}

static int sub_0209954C(void)
{
    return 4;
}
