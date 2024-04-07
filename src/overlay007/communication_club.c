#include <nitro.h>
#include <string.h>

#include "core_sys.h"

#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_02001AF4_decl.h"
#include "message.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_decls/sys_task.h"
#include "strbuf.h"
#include "trainer_info.h"

#include "struct_defs/struct_02013A04_t.h"
#include "field/field_system.h"
#include "struct_defs/struct_0205AA50.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_02240FA8.h"

#include "unk_0200112C.h"
#include "unk_02001AF4.h"
#include "unk_02002328.h"
#include "unk_02005474.h"
#include "message.h"
#include "unk_0200B358.h"
#include "unk_0200D9E8.h"
#include "unk_0200DA60.h"
#include "unk_02013A04.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "strbuf.h"
#include "unk_02025E08.h"
#include "trainer_info.h"
#include "communication_information.h"
#include "unk_02033200.h"
#include "communication_system.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"
#include "unk_0203CC84.h"
#include "field_comm_manager.h"
#include "unk_0205D8CC.h"
#include "overlay007/communication_club.h"

#include "constants/sdat.h"

typedef struct CommClubManager CommClubManager;
typedef void (* CommClubManStateFunc)(SysTask *, void *);
typedef void (* UnkFuncPtr_ov7_02249C2C_1)(CommClubManager *);

typedef struct CommClubManager {
    Strbuf* unk_00[8];
    Window unk_20;
    Window unk_30;
    Window unk_40;
    StringFormatter * unk_50;
    StringFormatter * unk_54;
    StringFormatter * unk_58;
    UnkStruct_0200112C * unk_5C;
    UIControlData * unk_60;
    ResourceMetadata * unk_64;
    FieldSystem * fieldSystem;
    CommClubManStateFunc commClubTask;
    UnkFuncPtr_ov7_02249C2C_1 unk_70;
    MessageLoader * msgLoader;
    TrainerInfo * trainerInfoPersonal;
    TrainerInfo * unk_7C;
    u8 unk_80[8];
    u32 unk_88;
    u16 unk_8C;
    u16 unk_8E;
    u8 unk_90;
    u8 unk_91;
    u8 unk_92;
    u8 unk_93;
    u8 unk_94;
    u8 unk_95;
    u8 unk_96;
    u8 unk_97;
    u8 unk_98;
} CommClubManager;

static void CommClubMan_Run(SysTask * param0, void * param1);
static void CommClubMan_SetTask(CommClubManStateFunc param0);
static void CommClubMan_OpenMenu(int param0, BOOL param1);
static void CommClubMan_StartBattleClient(CommClubManager * param0);
static void ov7_0224A510(CommClubManager * param0);
static void ov7_02249C44(UnkStruct_0200112C * param0, u32 param1, u8 param2);
static void ov7_02249C64(UnkStruct_0200112C * param0, u32 param1, u8 param2);
static void ov7_02249C94(UnkStruct_0200112C * param0, u32 param1, u8 param2);
static void ov7_02249E0C(CommClubManager * param0);
static void CommClubMan_DisplayPersonalTrainerInfo(CommClubManager * param0);
static void ov7_02249F54(SysTask * param0, void * param1);
static void ov7_02249FFC(SysTask * param0, void * param1);
static void ov7_0224A0C8(CommClubManager * param0);
static void CommClubTask_SelectServerList(SysTask * param0, void * param1);
static void ov7_0224A34C(SysTask * param0, void * param1);
static void ov7_0224A394(SysTask * param0, void * param1);
static void ov7_0224A3E4(SysTask * param0, void * param1);
static void CommClubMan_Disconnect(void);
static void ov7_0224A53C(CommClubManager * param0);
static void ov7_0224A5D0(void);
static void ov7_0224A64C(CommClubManager * param0);
static void ov7_0224A438(UnkStruct_0200112C * param0, u32 param1, u8 param2);
static void ov7_0224A72C(SysTask * param0, void * param1);
static void ov7_0224A7D0(SysTask * param0, void * param1);
static void ov7_0224A97C(SysTask * param0, void * param1);
static void ov7_0224ABA4(SysTask * param0, void * param1);
static void ov7_0224ABE0(SysTask * param0, void * param1);
static void ov7_0224AC08(SysTask * param0, void * param1);
static void ov7_0224AC48(SysTask * param0, void * param1);
static void ov7_0224ACA4(SysTask * param0, void * param1);
static void ov7_0224AE10(SysTask * param0, void * param1);
static void ov7_0224AD68(SysTask * param0, void * param1);
static void ov7_0224ADD8(SysTask * param0, void * param1);
static void ov7_0224AECC(SysTask * param0, void * param1);
static void ov7_0224AE78(SysTask * param0, void * param1);
static void ov7_0224AF2C(SysTask * param0, void * param1);
static void ov7_0224AF84(SysTask * param0, void * param1);
static void CommClubTask_DifferentRegulation(SysTask * param0, void * param1);
static void CommClubMan_DestroyList(SysTask * param0, CommClubManager * param1);
static void ov7_0224A6D4(int param0, CommClubManager * param1);
static void ov7_0224B054(CommClubManager * param0);
static void ov7_0224B08C(CommClubManager * param0);
static void ov7_0224B0E8(SysTask * param0, void * param1);
static void ov7_0224B14C(SysTask * param0, void * param1);
static void ov7_0224B274(SysTask * param0, void * param1);
static void ov7_0224B2A0(SysTask * param0, void * param1);
static void ov7_0224B2DC(CommClubManager * param0);
static void ov7_0224B31C(SysTask * param0, void * param1);
static void ov7_0224B348(CommClubManager * param0);
static void ov7_0224B370(SysTask * param0, void * param1);
static void ov7_0224B3A8(CommClubManager * param0);
static int ov7_0224B3E8(void);
static int CommClubMan_MinPlayers(void);
static int CommClubMan_Regulation(void);

static CommClubManager * sCommClubMan = NULL;

static const UnkStruct_ov61_0222C884 Unk_ov7_0224ED0C = {
    0x3,
    0x19,
    0xD,
    0x6,
    0x4,
    0xD,
    0x21F
};

static void CommClubMan_OpenMenu (int msgId, BOOL format)
{
    if (!sub_0205DA04(sCommClubMan->unk_94)) {
        sub_0201D730(sCommClubMan->unk_94);
    }

    if (format) {
        MessageLoader_GetStrbuf(sCommClubMan->msgLoader, msgId, sCommClubMan->unk_00[4]);
        StringFormatter_Format(sCommClubMan->unk_58, sCommClubMan->unk_00[5], sCommClubMan->unk_00[4]);
    } else {
        MessageLoader_GetStrbuf(sCommClubMan->msgLoader, msgId, sCommClubMan->unk_00[5]);
    }

    if (!sub_0201A7CC(&sCommClubMan->unk_40)) {
        sub_0205D8F4(sCommClubMan->fieldSystem->unk_08, &sCommClubMan->unk_40, 3);
    }

    sub_0205D944(&sCommClubMan->unk_40, sub_02025E44(sCommClubMan->fieldSystem->unk_0C));
    sCommClubMan->unk_94 = sub_0205D994(&sCommClubMan->unk_40, sCommClubMan->unk_00[5], sub_02025E44(sCommClubMan->fieldSystem->unk_0C), 1);
}

static void CommClubMan_CreateList (UnkStruct_ov84_02240FA8 param0, u8 param1, u8 param2, u8 param3, u8 param4, u16 param5)
{
    if (!sub_0201A7CC(&sCommClubMan->unk_20)) {
        BGL_AddWindow(sCommClubMan->fieldSystem->unk_08, &sCommClubMan->unk_20, 3, param1, param2, param3, param4, 13, param5);
    }

    Window_Show(&sCommClubMan->unk_20, 1, 1024 - (18 + 12) - 9, 11);

    UnkStruct_ov84_02240FA8 v0 = param0;
    v0.unk_00 = sCommClubMan->unk_64;
    v0.unk_0C = &sCommClubMan->unk_20;

    sCommClubMan->unk_5C = sub_0200112C(&v0, 0, 0, 4);
    sub_0201A954(&sCommClubMan->unk_20);
}

static void CommClubMan_Init (FieldSystem * fsys)
{
    int v0;

    GF_ASSERT(sCommClubMan == NULL);

    sCommClubMan = Heap_AllocFromHeap(4, sizeof(CommClubManager));
    MI_CpuFill8(sCommClubMan, 0, sizeof(CommClubManager));

    sCommClubMan->unk_88 = 0;
    sCommClubMan->fieldSystem = fsys;
    sCommClubMan->unk_97 = 0;
    sCommClubMan->msgLoader = MessageLoader_Init(1, 26, 353, 4);
    sCommClubMan->trainerInfoPersonal = SaveData_GetTrainerInfo(FieldSystem_SaveData(sCommClubMan->fieldSystem));
    sCommClubMan->unk_7C = TrainerInfo_New(4);

    sub_0201A7A0(&sCommClubMan->unk_20);
    sub_0201A7A0(&sCommClubMan->unk_30);
    sub_0201A7A0(&sCommClubMan->unk_40);

    sCommClubMan->unk_50 = StringFormatter_New(4);
    sCommClubMan->unk_54 = StringFormatter_New(4);
    sCommClubMan->unk_58 = StringFormatter_New(4);
    sCommClubMan->unk_98 = 0;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        sCommClubMan->unk_80[v0] = 0;
    }

    for (v0 = 0; v0 < 8; v0++) {
        sCommClubMan->unk_00[v0] = Strbuf_Init((70 * 2), 4);
    }
}

static void CommClubMan_Delete (void)
{
    for (int i = 0; i < 8; i++) {
        Strbuf_Free(sCommClubMan->unk_00[i]);
    }

    Heap_FreeToHeap(sCommClubMan->unk_7C);

    if (sCommClubMan->unk_50) {
        sub_0200B3F0(sCommClubMan->unk_50);
        sCommClubMan->unk_50 = NULL;
    }

    if (sCommClubMan->unk_54) {
        sub_0200B3F0(sCommClubMan->unk_54);
        sCommClubMan->unk_54 = NULL;
    }

    if (sCommClubMan->unk_58) {
        sub_0200B3F0(sCommClubMan->unk_58);
        sCommClubMan->unk_58 = NULL;
    }

    MessageLoader_Free(sCommClubMan->msgLoader);

    if (sCommClubMan->unk_40.unk_0C != NULL) {
        BGL_DeleteWindow(&sCommClubMan->unk_40);
    }

    Heap_FreeToHeap(sCommClubMan);
    sCommClubMan = NULL;
}

static void CommClubMan_StartBattleClient (CommClubManager * man)
{
    FieldCommMan_StartBattleClient(man->fieldSystem, man->unk_91, CommClubMan_Regulation());
}

static const UnkStruct_ov84_02240FA8 Unk_ov7_0224ED34 = {
    NULL,
    ov7_02249C44,
    ov7_02249C64,
    NULL,
    0x10,
    0x5,
    0x0,
    0x8,
    0x0,
    0x0,
    0x1,
    0xF,
    0x2,
    0x0,
    0x10,
    0x1,
    0x0,
    0x0,
    NULL
};

static void ov7_02249C44 (UnkStruct_0200112C * param0, u32 param1, u8 param2)
{
    sCommClubMan->unk_98 = 1;

    if (param2 == 0) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }
}

static void ov7_02249C64 (UnkStruct_0200112C * param0, u32 param1, u8 param2)
{
    int v0;

    for (v0 = 0; v0 < sub_02001504(param0, 3); v0++) {
        ov7_02249C94(param0, 0, v0);
    }
}

static void ov7_02249C94 (UnkStruct_0200112C * param0, u32 param1, u8 param2)
{
    int v0 = sub_02033808();
    u16 v1 = 0;

    if (sCommClubMan->unk_5C) {
        sub_020014DC(sCommClubMan->unk_5C, &v1, NULL);
    }

    v1 += param2;

    BGL_WindowColor(&sCommClubMan->unk_20, 15, 8, param2 * 16, sub_0201C294(&sCommClubMan->unk_20) * 8 - 8, 16);

    if (v1 < v0) {
        sub_020339AC(v1, sCommClubMan->unk_7C);
        
        StringFormatter_FormatNumber(sCommClubMan->unk_50, 0, v1 + 1, 2, 2, 1);
        StringFormatter_FormatPlayerName(sCommClubMan->unk_50, 1, sCommClubMan->unk_7C);
        MessageLoader_GetStrbuf(sCommClubMan->msgLoader, 63, sCommClubMan->unk_00[1]);
        
        StringFormatter_Format(sCommClubMan->unk_50, sCommClubMan->unk_00[0], sCommClubMan->unk_00[1]);
        PrintStringSimple(&sCommClubMan->unk_20, 0, sCommClubMan->unk_00[0], 8, param2 * 16, 0xff, NULL);
        
        StringFormatter_FormatNumber(sCommClubMan->unk_50, 2, TrainerInfo_ID(sCommClubMan->unk_7C) % 0x10000, 5, 2, 1);
        MessageLoader_GetStrbuf(sCommClubMan->msgLoader, 65, sCommClubMan->unk_00[3]);
        
        StringFormatter_Format(sCommClubMan->unk_50, sCommClubMan->unk_00[2], sCommClubMan->unk_00[3]);
        PrintStringSimple(&sCommClubMan->unk_20, 0, sCommClubMan->unk_00[2], 11 * 8, param2 * 16, 0xff, NULL);
    } else {
        StringFormatter_FormatNumber(sCommClubMan->unk_50, 0, v1 + 1, 2, 2, 1);
        MessageLoader_GetStrbuf(sCommClubMan->msgLoader, 64, sCommClubMan->unk_00[1]);
        
        StringFormatter_Format(sCommClubMan->unk_50, sCommClubMan->unk_00[0], sCommClubMan->unk_00[1]);
        PrintStringSimple(&sCommClubMan->unk_20, 0, sCommClubMan->unk_00[0], 8, param2 * 16, 0xff, NULL);
    }
}

static void ov7_02249E0C (CommClubManager * param0)
{
    int v0;

    if (!sub_0201A7CC(&sCommClubMan->unk_30)) {
        BGL_AddWindow(sCommClubMan->fieldSystem->unk_08, &sCommClubMan->unk_30, 3, 23, 2, 8, 4, 13, (1 + 20 * 5 * 2));
    }

    Window_Show(&sCommClubMan->unk_30, 1, 1024 - (18 + 12) - 9, 11);
    BGL_FillWindow(&sCommClubMan->unk_30, 15);
    sub_0201A954(&sCommClubMan->unk_30);

    param0->unk_97 = 1;

    SysTask_Start(CommClubMan_Run, param0, 0);
    CommClubMan_DisplayPersonalTrainerInfo(sCommClubMan);

    int v1[] = {
        40,
        41,
        42,
        44,
        43,
        43,
        45,
        46,
        47,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        48,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        49,
        50,
        0,
        51,
        52,
        53
    };

    if (sCommClubMan->unk_91 == 8) {
        CommClubMan_OpenMenu(103 + sCommClubMan->unk_92, 0);
    } else {
        CommClubMan_OpenMenu(v1[sCommClubMan->unk_91], 0);
    }
    
    CommClubMan_SetTask(ov7_02249F54);
}

static void CommClubMan_DisplayPersonalTrainerInfo (CommClubManager * param0)
{
    StringFormatter_FormatPlayerName(sCommClubMan->unk_54, 0, sCommClubMan->trainerInfoPersonal);
    StringFormatter_FormatNumber(sCommClubMan->unk_54, 1, TrainerInfo_ID(sCommClubMan->trainerInfoPersonal) % 0x10000, 5, 2, 1);
    MessageLoader_GetStrbuf(sCommClubMan->msgLoader, 62, sCommClubMan->unk_00[6]);
    StringFormatter_Format(sCommClubMan->unk_54, sCommClubMan->unk_00[7], sCommClubMan->unk_00[6]);
    PrintStringSimple(&sCommClubMan->unk_30, 0, sCommClubMan->unk_00[7], 2, 2, 0, NULL);
}

static void ov7_02249F54 (SysTask * param0, void * param1)
{
    u32 v0;

    if (sub_0205DA04(sCommClubMan->unk_94)) {
        int v2;

        sCommClubMan->unk_64 = sub_02013A04(16, 4);

        for (v2 = 0; v2 < 16; v2++) {
            StringFormatter_FormatNumber(sCommClubMan->unk_50, 0, v2 + 1, 2, 2, 1);
            MessageLoader_GetStrbuf(sCommClubMan->msgLoader, 64, sCommClubMan->unk_00[1]);
            StringFormatter_Format(sCommClubMan->unk_50, sCommClubMan->unk_00[0], sCommClubMan->unk_00[1]);
            sub_02013A6C(sCommClubMan->unk_64, sCommClubMan->unk_00[0], 0);
        }

        CommClubMan_CreateList(Unk_ov7_0224ED34, 1, 2, 20, 5 * 2, 1);
        CommClubMan_SetTask(ov7_02249FFC);
    }
}

static void ov7_02249FFC (SysTask * param0, void * param1)
{
    u32 v0;
    int v1;
    CommClubManager * v2 = (CommClubManager *)param1;

    CommClubMan_DisplayPersonalTrainerInfo(v2);

    if (CommSys_CheckError()) {
        sCommClubMan->unk_88 = 3;
        CommClubMan_Disconnect();
        CommClubMan_DestroyList(param0, v2);
    } else {
        if (!sub_02033870()) {
            v0 = sub_02001288(sCommClubMan->unk_5C);
        } else {
            v0 = 0xffffffff;
        }

        switch (v0) {
        case 0xffffffff:
            ov7_0224A0C8(v2);
            break;
        case 0xfffffffe:
            Sound_PlayEffect(1500);
            sCommClubMan->unk_88 = 1;
            CommClubMan_Disconnect();
            CommClubMan_DestroyList(param0, v2);
            break;
        default:
            Sound_PlayEffect(1500);
            sub_020014D0(v2->unk_5C, &v2->unk_8E);

            if (sub_02033808() > v2->unk_8E) {
                ov7_0224A0C8(v2);
                v2->unk_8E = sub_0203383C(v2->unk_8E);
                FieldCommMan_ConnectBattleClient(v2->unk_8E);
                sub_020365D0();
                CommClubMan_SetTask(CommClubTask_SelectServerList);
            }
            break;
        }
    }
}

static void ov7_0224A0C8 (CommClubManager * param0)
{
    if (sub_02033870() || sCommClubMan->unk_98) {
        sCommClubMan->unk_98 = 0;
        sub_02033884();
        BGL_WindowColor(&sCommClubMan->unk_20, 15, 8, 0, 20 - 8, (5 * 2) * 8);
        ov7_02249C64(sCommClubMan->unk_5C, 0, 0);
        sub_0201A954(&sCommClubMan->unk_20);
    }
}

asm static void CommClubTask_SelectServerList (SysTask * param0, void * param1)
{
    push {r4, r5, lr}
    sub sp, #0xc
    add r5, r0, #0
    add r4, r1, #0
    bl CommSys_CheckError
    cmp r0, #0
    beq _0224A152
    add r0, r5, #0
    add r1, r4, #0
    bl CommClubMan_DestroyList
    mov r0, #0
    add r1, r0, #0
    bl CommClubMan_OpenMenu
    add r0, r4, #0
    bl ov7_0224B348
    add sp, #0xc
    pop {r4, r5, pc}
 _0224A152:
    bl CommSys_CurNetId
    bl CommInfo_TrainerInfo
    cmp r0, #0
    beq _0224A238
    bl sub_020365D0
    ldr r1, = sCommClubMan
              add r0, r4, #0
    add r0, #0x8e
    ldr r1, [r1, #0]
    ldrh r0, [r0]
    ldr r1, [r1, #0x7c]
    bl sub_020339AC
    ldr r2, = sCommClubMan
              ldr r0, [r4, #0x58]
    ldr r2, [r2, #0]
    mov r1, #1
    ldr r2, [r2, #0x7c]
    bl StringFormatter_FormatPlayerName
    bl CommClubMan_MinPlayers
    cmp r0, #2
    bgt _0224A192
    mov r0, #1
    add r1, r0, #0
    bl CommClubMan_OpenMenu
    b _0224A232
 _0224A192:
    ldr r0, = sCommClubMan
              ldr r0, [r0, #0]
    add r0, #0x94
    ldrb r0, [r0]
    bl sub_0205DA04
    cmp r0, #0
    bne _0224A1AE
    ldr r0, = sCommClubMan
              ldr r0, [r0, #0]
    add r0, #0x94
    ldrb r0, [r0]
    bl sub_0201D730
 _0224A1AE:
    ldr r0, = sCommClubMan
              mov r1, #2
    ldr r2, [r0, #0]
    ldr r0, [r2, #0x74]
    ldr r2, [r2, #0x10]
    bl MessageLoader_GetStrbuf
    ldr r0, = sCommClubMan
              ldr r2, [r0, #0]
    ldr r0, [r2, #0x58]
    ldr r1, [r2, #0x14]
    ldr r2, [r2, #0x10]
    bl StringFormatter_Format
    ldr r0, = sCommClubMan
              ldr r0, [r0, #0]
    add r0, #0x40
    bl sub_0201A7CC
    cmp r0, #0
    bne _0224A1E8
    ldr r0, = sCommClubMan
              mov r2, #3
    ldr r1, [r0, #0]
    ldr r0, [r1, #0x68]
    add r1, #0x40
    ldr r0, [r0, #8]
    bl sub_0205D8F4
 _0224A1E8:
    ldr r0, = sCommClubMan
              ldr r0, [r0, #0]
    ldr r0, [r0, #0x68]
    ldr r0, [r0, #0xc]
    bl sub_02025E44
    add r1, r0, #0
    ldr r0, = sCommClubMan
              ldr r0, [r0, #0]
    add r0, #0x40
    bl sub_0205D944
    mov r0, #1
    bl sub_02002AC8
    mov r0, #0
    bl sub_02002AE4
    mov r0, #0
    bl sub_02002B20
    ldr r0, = sCommClubMan
              mov r3, #0
    ldr r2, [r0, #0]
    mov r1, #1
    str r3, [sp]
    str r1, [sp, #4]
    add r0, r2, #0
    str r3, [sp, #8]
    ldr r2, [r2, #0x14]
    add r0, #0x40
    bl PrintStringSimple
    ldr r1, = sCommClubMan
              ldr r1, [r1, #0]
    add r1, #0x94
    strb r0, [r1]
 _0224A232:
    ldr r0, = ov7_0224A34C
              bl CommClubMan_SetTask
 _0224A238:
              add sp, #0xc
    pop {r4, r5, pc}
}

static BOOL ov7_0224A244 (SysTask * param0, void * param1)
{
    CommClubManager * v0 = param1;

    if (CommSys_CheckError()) {
        CommClubMan_DestroyList(param0, v0);
        CommClubMan_OpenMenu(0, 0);
        ov7_0224B348(v0);
    } else if (sub_020365A8(0, 3) == CommSys_CurNetId()) {
        sub_020365D0();
        CommClubMan_DestroyList(param0, v0);
        ov7_0224B2DC(v0);
    } else if (sub_020365A8(0, 5) != -1) {
        sub_020365D0();
        CommClubMan_DestroyList(param0, v0);
        ov7_0224B2DC(v0);
    } else if (sub_020365A8(0, 4) == CommSys_CurNetId()) {
        CommClubMan_OpenMenu(97, 0);
        CommClubMan_SetTask(CommClubTask_DifferentRegulation);
    } else if (sub_020365A8(0, 2) == CommSys_CurNetId()) {
        sub_020365D0();

        v0->unk_90 = CommInfo_CountReceived();

        if (!sub_0205DA04(sCommClubMan->unk_94)) {
            sub_0201D730(sCommClubMan->unk_94);
        }

        CommClubMan_DestroyList(param0, v0);
        ov7_0224B08C(v0);
    } else if (ov7_0224B4E4()) {
        CommClubMan_DestroyList(param0, v0);
        ov7_0224B2DC(v0);
    } else {
        return 0;
    }

    return 1;
}

static void ov7_0224A34C (SysTask * param0, void * param1)
{
    CommClubManager * v0 = param1;

    if (!sub_0205DA04(sCommClubMan->unk_94)) {
        return;
    }

    if (ov7_0224A244(param0, param1)) {
        return;
    }
    
    if (( PAD_BUTTON_B ) & gCoreSys.pressedKeys) {
        CommClubMan_OpenMenu(3, 0);
        CommClubMan_SetTask(ov7_0224A394);
    }
}

static void ov7_0224A394 (SysTask * param0, void * param1)
{
    CommClubManager * v0 = param1;

    if (ov7_0224A244(param0, param1)) {
        (void)0;
    } else if (sub_0205DA04(sCommClubMan->unk_94)) {
        v0->unk_60 = sub_02002100(sCommClubMan->fieldSystem->unk_08, &Unk_ov7_0224ED0C, 1024 - (18 + 12) - 9, 11, 4);
        CommClubMan_SetTask(ov7_0224A3E4);
    }
}

static void ov7_0224A3E4 (SysTask * param0, void * param1)
{
    CommClubManager * v0 = param1;
    u32 v1;

    if (ov7_0224A244(param0, param1)) {
        sub_02002154(v0->unk_60, 4);
        v0->unk_60 = NULL;
        return;
    }

    v1 = sub_02002114(v0->unk_60, 4);

    if (v1 == 0) {
        CommClubMan_DestroyList(param0, v0);
        CommClubMan_OpenMenu(6, 0);
        ov7_0224B348(v0);
    } else if (v1 != 0xffffffff) {
        CommClubMan_SetTask(CommClubTask_SelectServerList);
    }
}

static const UnkStruct_ov84_02240FA8 Unk_ov7_0224ED14 = {
    NULL,
    NULL,
    NULL,
    NULL,
    0x5,
    0x5,
    0x0,
    0x1,
    0x0,
    0x0,
    0x1,
    0xF,
    0x2,
    0x0,
    0x10,
    0x1,
    0x0,
    0x1,
    NULL
};

static void ov7_0224A438 (UnkStruct_0200112C * param0, u32 param1, u8 param2)
{
    u16 v0 = 0;

    if (sCommClubMan->unk_5C) {
        sub_020014DC(sCommClubMan->unk_5C, &v0, NULL);
    }

    v0 += param2;

    if (NULL != CommInfo_TrainerInfo(v0)) {
        StringFormatter_FormatPlayerName(sCommClubMan->unk_50, 0, CommInfo_TrainerInfo(v0));
        MessageLoader_GetStrbuf(sCommClubMan->msgLoader, 66, sCommClubMan->unk_00[1]);
        
        StringFormatter_Format(sCommClubMan->unk_50, sCommClubMan->unk_00[0], sCommClubMan->unk_00[1]);
        PrintStringSimple(&sCommClubMan->unk_20, 0, sCommClubMan->unk_00[0], 8, param2 * 16, 0, NULL);
        
        StringFormatter_FormatNumber(sCommClubMan->unk_50, 2, TrainerInfo_ID_LowHalf(CommInfo_TrainerInfo(v0)), 5, 2, 1);
        MessageLoader_GetStrbuf(sCommClubMan->msgLoader, 65, sCommClubMan->unk_00[3]);
        
        StringFormatter_Format(sCommClubMan->unk_50, sCommClubMan->unk_00[2], sCommClubMan->unk_00[3]);
        PrintStringSimple(&sCommClubMan->unk_20, 0, sCommClubMan->unk_00[2], 9 * 8, param2 * 16, 0, NULL);
    }
}

static void ov7_0224A510 (CommClubManager * param0)
{
    FieldCommMan_StartBattleServer(param0->fieldSystem, param0->unk_91, CommClubMan_Regulation());
}

static void CommClubMan_Disconnect (void)
{
    FieldCommMan_EndBattle();
}

static void CommClubMan_SetTask (CommClubManStateFunc stateFunc)
{
    sCommClubMan->commClubTask = stateFunc;
}

static void ov7_0224A53C (CommClubManager * man)
{
    int v0;

    SysTask_Start(CommClubMan_Run, man, 0);
    ov7_0224A5D0();

    if (!sub_0201A7CC(&sCommClubMan->unk_30)) {
        BGL_AddWindow(sCommClubMan->fieldSystem->unk_08, &sCommClubMan->unk_30, 3, 22, 2, 9, 4, 13, (1 + 17 * 6 * 2));
    }

    Window_Show(&sCommClubMan->unk_30, 1, 1024 - (18 + 12) - 9, 11);
    BGL_FillWindow(&sCommClubMan->unk_30, 15);
    sub_0201A954(&sCommClubMan->unk_30);

    man->unk_97 = 1;

    sub_02032E1C(0);
    CommClubMan_SetTask(ov7_0224A72C);
}

static void ov7_0224A5D0 (void)
{
    int v0[] = {
        7,
        8,
        9,
        11,
        10,
        10,
        12,
        13,
        14,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        15,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        16,
        17,
        0,
        18,
        19,
        20
    };

    GF_ASSERT(sCommClubMan->unk_91 < (sizeof(v0) / sizeof(int)));

    if (sCommClubMan->unk_91 == 8) {
        if (CommInfo_CountReceived() > 1) {
            CommClubMan_OpenMenu(108 + sCommClubMan->unk_92, 0);
        } else {
            CommClubMan_OpenMenu(98 + sCommClubMan->unk_92, 0);
        }
    } else {
        CommClubMan_OpenMenu(v0[sCommClubMan->unk_91], 0);
    }
}

static void ov7_0224A64C (CommClubManager * param0)
{
    int v0, v1;

    if (CommInfo_CountReceived() >= CommClubMan_MinPlayers()) {
        v1 = CommInfo_CountReceived();
        v0 = 68;
    } else {
        v1 = CommClubMan_MinPlayers() - CommInfo_CountReceived();
        v0 = 67;
    }

    StringFormatter_FormatNumber(sCommClubMan->unk_54, 0, v1, 2, 5, 1);
    BGL_FillWindow(&sCommClubMan->unk_30, 15);
    
    MessageLoader_GetStrbuf(sCommClubMan->msgLoader, v0, sCommClubMan->unk_00[7]);
    StringFormatter_Format(sCommClubMan->unk_54, sCommClubMan->unk_00[6], sCommClubMan->unk_00[7]);
    PrintStringSimple(&sCommClubMan->unk_30, 0, sCommClubMan->unk_00[6], 2, 2, 0, NULL);
}

static void ov7_0224A6D4 (int param0, CommClubManager * param1)
{
    int v0[] = {
        21,
        22,
        23,
        24,
        25,
        25,
        31,
        25,
        25,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        26,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        27,
        27,
        0,
        28,
        29,
        30
    };
    TrainerInfo * v1 = CommInfo_TrainerInfo(param0);

    if (v1) {
        StringFormatter_FormatPlayerName(param1->unk_58, 1, v1);
    }

    CommClubMan_OpenMenu(v0[param1->unk_91], 1);
}

static void CommClubMan_Run (SysTask * task, void * param1)
{
    CommClubManager * man = (CommClubManager *)param1;

    if (sCommClubMan->commClubTask != NULL) {
        CommClubManStateFunc stateFunc = sCommClubMan->commClubTask;

        stateFunc(task, man);
    }
}

static void ov7_0224A72C (SysTask * param0, void * param1)
{
    CommClubManager * v0 = (CommClubManager *)param1;
    u32 v1 = 0xffffffff;

    ov7_0224A64C(v0);

    if (sub_0205DA04(sCommClubMan->unk_94)) {
        int v2;

        sCommClubMan->unk_64 = sub_02013A04(5, 4);

        for (v2 = 0; v2 < 5; v2++) {
            sub_02013A4C(sCommClubMan->unk_64, sCommClubMan->msgLoader, 69, 0);
        }

        sCommClubMan->unk_98 = 1;

        for (v2 = 0; v2 < (7 + 1); v2++) {
            sCommClubMan->unk_80[v2] = 0;
        }

        CommClubMan_CreateList(Unk_ov7_0224ED14, 1, 2, 17, 6 * 2, 1);
        CommClubMan_SetTask(ov7_0224A7D0);
    }
}

static void ov7_0224A7D0 (SysTask * param0, void * param1)
{
    CommClubManager * v0 = (CommClubManager *)param1;
    u32 v1 = 0xffffffff;
    int v2;

    ov7_0224A64C(v0);

    for (v2 = 0; v2 < (7 + 1); v2++) {
        if (sub_02032DC4(v2) && (v2 != 0)) {
            sCommClubMan->unk_80[v2] = 1;
            sCommClubMan->unk_98 = 1;
        } else if ((NULL != CommInfo_TrainerInfo(v2)) && !sCommClubMan->unk_80[v2]) {
            sCommClubMan->unk_80[v2] = 1;
            sCommClubMan->unk_98 = 1;
        } else if ((NULL == CommInfo_TrainerInfo(v2)) && sCommClubMan->unk_80[v2]) {
            sCommClubMan->unk_80[v2] = 0;
            sCommClubMan->unk_98 = 1;
        }
    }

    if (sCommClubMan->unk_98) {
        sCommClubMan->unk_98 = 0;
        sub_020013AC(sCommClubMan->unk_5C);

        for (v2 = 0; v2 < sub_02001504(sCommClubMan->unk_5C, 3); v2++) {
            ov7_0224A438(sCommClubMan->unk_5C, 0, v2);
        }
    }

    v1 = sub_02001288(v0->unk_5C);

    if (CommInfo_NewNetworkId() != 0xff) {
        v0->unk_95 = CommInfo_NewNetworkId();
        Sound_PlayEffect(1549);
        ov7_0224A6D4(v0->unk_95, v0);
        CommClubMan_SetTask(ov7_0224AF84);
        return;
    }

    if (CommSys_CheckError()) {
        CommClubMan_Disconnect();
        CommClubMan_DestroyList(param0, v0);
        sCommClubMan->unk_88 = 3;
    } else {
        switch (v1) {
        case 0xffffffff:
            break;
        case 0xfffffffe:
            CommClubMan_SetTask(ov7_0224AE10);
            break;
        default:
            if (CommClubMan_MinPlayers() <= CommInfo_CountReceived()) {
                int v3[] = {
                    0,
                    0,
                    0,
                    32,
                    32,
                    32,
                    33,
                    34,
                    35,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0
                };

                v0->unk_90 = CommInfo_CountReceived();

                CommClubMan_OpenMenu(v3[v0->unk_91], 0);
                CommClubMan_SetTask(ov7_0224AC48);
            }

            break;
        }
    }
}

static void ov7_0224A97C (SysTask * param0, void * param1)
{
    CommClubManager * v0 = (CommClubManager *)param1;
    u32 v1 = 0xffffffff;
    int v2;

    ov7_0224A64C(v0);
    sub_02001288(v0->unk_5C);

    v1 = sub_02002114(v0->unk_60, 4);

    if (!CommSys_IsPlayerConnected(v0->unk_95)) {
        if (v1 == 0xffffffff) {
            sub_02002154(v0->unk_60, 4);
        }

        if (v0->unk_91 == 8) {
            for (v2 = 1; v2 < ov7_0224B3E8(); v2++) {
                if (CommSys_IsPlayerConnected(v2)) {
                    CommInfo_InitPlayer(v2);
                    sub_02036594(5, v2);
                }
            }

            CommClubMan_OpenMenu(0, 0);
            CommClubMan_SetTask(ov7_0224ABA4);
        } else {
            CommInfo_InitPlayer(v0->unk_95);
            CommClubMan_OpenMenu(0, 0);
            CommClubMan_SetTask(ov7_0224ABA4);
        }
    } else if (CommSys_CheckError() || ov7_0224B4E4()) {
        if (v1 == 0xffffffff) {
            sub_02002154(v0->unk_60, 4);
        }

        CommInfo_InitPlayer(v0->unk_95);
        CommClubMan_OpenMenu(0, 0);
        CommClubMan_SetTask(ov7_0224ABA4);
    } else if (v1 == 0) {
        if ((v0->unk_91 == 1) || (v0->unk_91 == 2)) {
            if (!CommInfo_CheckBattleRegulation()) {
                CommClubMan_OpenMenu(97, 0);
                CommClubMan_SetTask(CommClubTask_DifferentRegulation);
                sub_02036594(4, v0->unk_95);
                return;
            }
        }

        sub_02032E1C(v0->unk_95);
        sub_02036594(2, v0->unk_95);

        if (ov7_0224B3E8() == CommInfo_CountReceived()) {
            v0->unk_90 = CommInfo_CountReceived();

            if (ov7_0224B3E8() > 2) {
                CommClubMan_SetTask(ov7_0224AC08);
            } else {
                CommClubMan_DestroyList(param0, v0);
                ov7_0224B054(v0);
            }
        } else {
            ov7_0224A5D0();
            CommClubMan_SetTask(ov7_0224ABE0);
        }
    } else if (v1 != 0xffffffff) {
        if (v0->unk_91 == 8) {
            for (v2 = 1; v2 < ov7_0224B3E8(); v2++) {
                if (CommSys_IsPlayerConnected(v2)) {
                    CommInfo_InitPlayer(v2);
                    sub_02036594(5, v2);
                }
            }

            ov7_0224A5D0();
            CommClubMan_SetTask(ov7_0224ABE0);
        } else {
            CommInfo_InitPlayer(v0->unk_95);
            sub_02036594(3, v0->unk_95);
            ov7_0224A5D0();
            CommClubMan_SetTask(ov7_0224ABE0);
        }
    }
}

static void CommClubTask_DifferentRegulation (SysTask * param0, void * param1)
{
    CommClubManager * v0 = (CommClubManager *)param1;

    if (sub_0205DA04(sCommClubMan->unk_94)) {
        if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            CommClubMan_DestroyList(param0, v0);
            CommClubMan_Disconnect();
            sCommClubMan->unk_88 = 4;
        }
    }
}

static void ov7_0224ABA4 (SysTask * param0, void * param1)
{
    CommClubManager * v0 = (CommClubManager *)param1;
    u32 v1 = 0xffffffff;

    ov7_0224A64C(v0);

    if (sub_0205DA04(sCommClubMan->unk_94)) {
        if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov7_0224A5D0();
            CommClubMan_SetTask(ov7_0224ABE0);
        }
    }
}

static void ov7_0224ABE0 (SysTask * param0, void * param1)
{
    CommClubManager * v0 = (CommClubManager *)param1;
    u32 v1 = 0xffffffff;

    ov7_0224A64C(v0);

    if (sub_0205DA04(sCommClubMan->unk_94)) {
        CommClubMan_SetTask(ov7_0224A7D0);
    }
}

static void ov7_0224AC08 (SysTask * param0, void * param1)
{
    CommClubManager * v0 = (CommClubManager *)param1;
    u32 v1 = 0xffffffff;
    int v2[] = {
        0,
        0,
        0,
        32,
        32,
        32,
        33,
        34,
        35,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0
    };

    ov7_0224A64C(v0);
    CommClubMan_OpenMenu(v2[v0->unk_91], 0);
    CommClubMan_SetTask(ov7_0224AC48);
}

static void ov7_0224AC48 (SysTask * param0, void * param1)
{
    CommClubManager * v0 = (CommClubManager *)param1;
    u32 v1 = 0xffffffff;

    ov7_0224A64C(v0);

    sub_02036994(0);
    sub_02001288(v0->unk_5C);

    if (sub_0205DA04(sCommClubMan->unk_94)) {
        v0->unk_60 = sub_02002100(sCommClubMan->fieldSystem->unk_08, &Unk_ov7_0224ED0C, 1024 - (18 + 12) - 9, 11, 4);
        CommClubMan_SetTask(ov7_0224ACA4);
    }
}

static void ov7_0224ACA4 (SysTask * param0, void * param1)
{
    CommClubManager * v0 = (CommClubManager *)param1;
    u32 v1 = 0xffffffff;
    int v2;

    ov7_0224A64C(v0);
    sub_02001288(v0->unk_5C);

    v1 = sub_02002114(v0->unk_60, 4);

    if (CommSys_CheckError() || (CommSys_ConnectedCount() != v0->unk_90)) {
        if (v1 == 0xffffffff) {
            sub_02002154(v0->unk_60, 4);
        }

        v0->unk_60 = NULL;
        CommClubMan_SetTask(ov7_0224AD68);
    } else if (v1 == 0) {
        if (v0->unk_91 == 8) {
            for (v2 = 1; v2 < CommSys_ConnectedCount(); v2++) {
                if (!CommSys_IsPlayerConnected(v2)) {
                    CommClubMan_SetTask(ov7_0224AD68);
                    return;
                }
            }
        }

        sub_020364F0(10);
        CommClubMan_SetTask(ov7_0224AF2C);
    } else if (v1 != 0xffffffff) {
        sub_02036994(1);
        CommClubMan_Disconnect();
        CommClubMan_DestroyList(param0, v0);
        sCommClubMan->unk_88 = 1;
    }
}

static void ov7_0224AD68 (SysTask * param0, void * param1)
{
    CommClubManager * v0 = (CommClubManager *)param1;
    int v1[] = {
        0,
        0,
        0,
        0,
        0,
        0,
        54,
        55,
        56,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0
    };

    CommClubMan_DestroyList(param0, v0);

    if (sCommClubMan->unk_91 == 8) {
        CommClubMan_OpenMenu(118 + sCommClubMan->unk_92, 0);
    } else {
        CommClubMan_OpenMenu(v1[v0->unk_91], 0);
    }

    FieldCommMan_EndBattle();
    SysTask_Start(ov7_0224ADD8, v0, 0);
}

static void ov7_0224ADD8 (SysTask * param0, void * param1)
{
    if (sub_0205DA04(sCommClubMan->unk_94)) {
        if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            sCommClubMan->unk_88 = 1;
            SysTask_Done(param0);
        }
    }
}

static void ov7_0224AE10 (SysTask * param0, void * param1)
{
    CommClubManager * v0 = (CommClubManager *)param1;
    u32 v1 = 0xffffffff;
    int v2[] = {
        0,
        0,
        0,
        36,
        36,
        36,
        37,
        38,
        39,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0
    };

    ov7_0224A64C(v0);

    if (CommInfo_CountReceived() > 1) {
        CommClubMan_OpenMenu(v2[v0->unk_91], 0);
        CommClubMan_SetTask(ov7_0224AE78);
    } else {
        CommClubMan_Disconnect();
        CommClubMan_DestroyList(param0, v0);
        sCommClubMan->unk_88 = 1;
    }
}

static void ov7_0224AE78 (SysTask * param0, void * param1)
{
    CommClubManager * v0 = (CommClubManager *)param1;

    ov7_0224A64C(v0);
    sub_02001288(v0->unk_5C);

    if (sub_0205DA04(sCommClubMan->unk_94)) {
        v0->unk_60 = sub_02002100(sCommClubMan->fieldSystem->unk_08, &Unk_ov7_0224ED0C, 1024 - (18 + 12) - 9, 11, 4);
        CommClubMan_SetTask(ov7_0224AECC);
    }
}

static void ov7_0224AECC (SysTask * param0, void * param1)
{
    CommClubManager * v0 = (CommClubManager *)param1;
    u32 v1 = 0xffffffff;

    ov7_0224A64C(v0);

    sub_02001288(v0->unk_5C);
    v1 = sub_02002114(v0->unk_60, 4);

    if (CommSys_CheckError()) {
        v1 = 0xfffffffe;
    }

    if (v1 == 0) {
        CommClubMan_Disconnect();
        CommClubMan_DestroyList(param0, v0);
        sCommClubMan->unk_88 = 1;
    } else if (v1 != 0xffffffff) {
        ov7_0224A5D0();
        CommClubMan_SetTask(ov7_0224ABE0);
    }
}

static void ov7_0224AF2C (SysTask * param0, void * param1)
{
    CommClubManager * v0 = (CommClubManager *)param1;
    u32 v1 = 0xffffffff;

    if (CommSys_CheckError() || (CommSys_ConnectedCount() != v0->unk_90)) {
        CommClubMan_SetTask(ov7_0224AD68);
    } else {
        ov7_0224A64C(v0);
        sub_02001288(v0->unk_5C);

        if (sub_02036540(10) && sub_02036450()) {
            CommClubMan_DestroyList(param0, v0);
            ov7_0224B3A8(v0);          
        }
    }
}

static void ov7_0224AF84 (SysTask * param0, void * param1)
{
    CommClubManager * v0 = (CommClubManager *)param1;
    u32 v1 = 0xffffffff;

    ov7_0224A64C(v0);
    sub_02001288(v0->unk_5C);

    if (sub_0205DA04(sCommClubMan->unk_94)) {
        v0->unk_60 = sub_02002100(sCommClubMan->fieldSystem->unk_08, &Unk_ov7_0224ED0C, 1024 - (18 + 12) - 9, 11, 4);
        CommClubMan_SetTask(ov7_0224A97C);
    }
}

static void CommClubMan_DestroyList (SysTask * param0, CommClubManager * param1)
{
    BGL_FillWindow(&sCommClubMan->unk_40, 15);
    Window_Clear(&param1->unk_20, 0);
    sub_02013A3C(param1->unk_64);
    sub_02001384(param1->unk_5C, NULL, NULL);
    sub_0201ACF4(&param1->unk_20);
    BGL_DeleteWindow(&param1->unk_20);

    if (param1->unk_97) {
        Window_Clear(&sCommClubMan->unk_30, 0);
        sub_0201ACF4(&sCommClubMan->unk_30);
        BGL_DeleteWindow(&sCommClubMan->unk_30);
        param1->unk_97 = 0;
    }

    if (param0) {
        SysTask_Done(param0);
    }
}

static void ov7_0224B054 (CommClubManager * param0)
{
    StringFormatter_FormatPlayerName(param0->unk_58, 1, CommInfo_TrainerInfo(1));
    CommClubMan_OpenMenu(57, 1);

    SysTask_Start(CommClubMan_Run, param0, 0);
    CommClubMan_SetTask(ov7_0224B0E8);
}

static void ov7_0224B08C (CommClubManager * param0)
{
    sub_020339AC(param0->unk_8E, sCommClubMan->unk_7C);
    StringFormatter_FormatPlayerName(param0->unk_58, 1, sCommClubMan->unk_7C);
    CommClubMan_OpenMenu(4, 1);

    param0->unk_90 = CommSys_ConnectedCount();

    SysTask_Start(CommClubMan_Run, param0, 0);
    CommClubMan_SetTask(ov7_0224B0E8);

    sCommClubMan->unk_96 = (30 * 3);
}

static void ov7_0224B0E8 (SysTask * param0, void * param1)
{
    CommClubManager * v0 = (CommClubManager *)param1;

    if ((CommSys_CurNetId() == 0) && (CommSys_ConnectedCount() != v0->unk_90)) {
        CommClubMan_SetTask(ov7_0224B274);
    } else if (ov7_0224B4E4() || CommSys_CheckError()) {
        CommClubMan_SetTask(ov7_0224B274);
    } else if (sub_0205DA04(sCommClubMan->unk_94)) {
        sub_020364F0(10);
        CommClubMan_SetTask(ov7_0224B14C);
    }
}

static void ov7_0224B14C (SysTask * param0, void * param1)
{
    CommClubManager * v0 = (CommClubManager *)param1;

    if ((CommSys_CurNetId() == 0) && (CommSys_ConnectedCount() != v0->unk_90)) {
        CommClubMan_SetTask(ov7_0224B274);
    } else if (ov7_0224B4E4() || CommSys_CheckError()) {
        CommClubMan_SetTask(ov7_0224B274);
        return;
    } else if (!CommSys_IsPlayerConnected(0)) {
        CommClubMan_SetTask(ov7_0224B274);
        return;
    } else if (sub_020365A8(0, 5) != -1) {
        CommClubMan_SetTask(ov7_0224B274);
        return;
    } else if (sub_02036540(10)) {
        if (sub_02036450()) {
            if (!sub_0205DA04(sCommClubMan->unk_94)) {
                sub_0201D730(sCommClubMan->unk_94);
            }

            v0->unk_90 = CommSys_ConnectedCount();
            ov7_0224B3A8(v0);
            SysTask_Done(param0);
            return;
        }
    }

    if (sCommClubMan->unk_96 != 0) {
        sCommClubMan->unk_96--;

        if (sCommClubMan->unk_96 == 0) {
            int v1[] = {
                NULL,
                NULL,
                NULL,
                58,
                58,
                58,
                59,
                60,
                61,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL,
                NULL
            };

            if (sCommClubMan->unk_91 == 8) {
                CommClubMan_OpenMenu(113 + sCommClubMan->unk_92, 0);
            } else {
                CommClubMan_OpenMenu(v1[v0->unk_91], 0);
            }
        }
    }
}

static void ov7_0224B274 (SysTask * param0, void * param1)
{
    CommClubManager * v0 = (CommClubManager *)param1;

    if (sub_0205DA04(sCommClubMan->unk_94)) {
        CommClubMan_OpenMenu(0, 0);
        CommClubMan_SetTask(ov7_0224B2A0);
    }
}

static void ov7_0224B2A0 (SysTask * param0, void * param1)
{
    CommClubManager * v0 = (CommClubManager *)param1;

    if (sub_0205DA04(sCommClubMan->unk_94)) {
        if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            SysTask_Done(param0);
            CommClubMan_Disconnect();
            sCommClubMan->unk_88 = 1;
        }
    }
}

static void ov7_0224B2DC (CommClubManager * param0)
{
    sub_020339AC(param0->unk_8E, sCommClubMan->unk_7C);
    StringFormatter_FormatPlayerName(param0->unk_58, 1, sCommClubMan->unk_7C);

    CommClubMan_OpenMenu(5, 1);

    FieldCommMan_ReconnectBattleClient();
    SysTask_Start(ov7_0224B31C, param0, 0);
}

static void ov7_0224B31C (SysTask * task, void * param1)
{
    CommClubManager * v0 = (CommClubManager *)param1;

    if (sub_0205DA04(sCommClubMan->unk_94)) {
        FieldCommMan_ReconnectBattleClient();
        ov7_02249E0C(v0);
        SysTask_Done(task);
    }
}

static void ov7_0224B348 (CommClubManager * param0)
{
    FieldCommMan_ReconnectBattleClient();

    for (int netId = 0; netId < (7 + 1); netId++) {
        CommInfo_InitPlayer(netId);
    }

    SysTask_Start(ov7_0224B370, param0, 0);
}

static void ov7_0224B370 (SysTask * param0, void * param1)
{
    CommClubManager * v0 = (CommClubManager *)param1;

    if (sub_0205DA04(sCommClubMan->unk_94)) {
        if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov7_02249E0C(v0);
            SysTask_Done(param0);
        }
    }
}

static void ov7_0224B3A8 (CommClubManager * param0)
{
    sub_02036994(0);
    sCommClubMan->unk_88 = 2;
    CommMan_SetErrorHandling(1, 1);
    CommInfo_SendBattleRegulation();
    sub_02033EA8(1);
}

int CommClubMan_MinPlayers (void)
{
    return sub_02036158(sCommClubMan->unk_91);
}

static int ov7_0224B3E8 (void)
{
    return sub_02036148(sCommClubMan->unk_91);
}

static int CommClubMan_Regulation (void)
{
    return sCommClubMan->unk_92 + (sCommClubMan->unk_93 << 4);
}

void ov7_0224B414 (FieldSystem * fieldSys, int param1, int param2, int param3)
{
    CommClubMan_Init(fieldSys);
    sCommClubMan->unk_91 = param1;

    if ((param1 == 3) || (param1 == 4)) {
        fieldSys->unk_B0 = NULL;
    }

    sCommClubMan->unk_92 = param2;
    sCommClubMan->unk_93 = param3;

    CommClubMan_StartBattleClient(sCommClubMan);
}

void ov7_0224B450 (void)
{
    ov7_02249E0C(sCommClubMan);
}

u32 ov7_0224B460 (void)
{
    u32 v0 = sCommClubMan->unk_88;

    if (0 != v0) {
        CommClubMan_Delete();
    }

    return v0;
}

void ov7_0224B47C (FieldSystem * fieldSys, int param1, int param2, int param3)
{
    CommClubMan_Init(fieldSys);
    sCommClubMan->unk_91 = param1;

    if ((param1 == 3) || (param1 == 4)) {
        fieldSys->unk_B0 = NULL;
    }

    sCommClubMan->unk_92 = param2;
    sCommClubMan->unk_93 = param3;

    ov7_0224A510(sCommClubMan);
}

void ov7_0224B4B8 (void)
{
    ov7_0224A53C(sCommClubMan);
}

u32 CommClub_CheckWindowOpenClient (void)
{
    u32 ret = sCommClubMan->unk_88;

    if (0 != ret) {
        CommClubMan_Delete();
    }

    return ret;
}

BOOL ov7_0224B4E4 (void)
{
    return 0;
}
