#include <nitro.h>
#include <string.h>

#include "core_sys.h"

#include "struct_decls/struct_0200112C_decl.h"
#include "message.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/sys_task.h"
#include "strbuf.h"
#include "trainer_info.h"
#include "struct_decls/struct_0202855C_decl.h"
#include "struct_decls/struct_020298B0_decl.h"
#include "struct_decls/struct_021C0794_decl.h"
#include "overlay023/struct_ov23_02253598_decl.h"

#include "struct_defs/struct_02013A04_t.h"
#include "struct_defs/struct_0205AA50.h"
#include "overlay023/funcptr_ov23_0224DCB8.h"
#include "overlay023/funcptr_ov23_02253834.h"
#include "overlay084/struct_ov84_02240FA8.h"

#include "unk_02005474.h"
#include "message.h"
#include "unk_0200B358.h"
#include "unk_0200D9E8.h"
#include "unk_0200DA60.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "strbuf.h"
#include "trainer_info.h"
#include "unk_0202854C.h"
#include "unk_0202CD50.h"
#include "unk_02034198.h"
#include "unk_02057518.h"
#include "overlay023/ov23_02241F74.h"
#include "overlay023/ov23_02253598.h"
#include "overlay023/ov23_02253D40.h"

typedef int (* UnkFuncPtr_ov23_022576EC)(const UnkStruct_0202855C *);

typedef struct {
    UnkFuncPtr_ov23_02253834 unk_00;
    void * unk_04;
    Window unk_08;
    ResourceMetadata * unk_18;
    UnkStruct_0200112C * unk_1C;
    UnkFuncPtr_ov23_0224DCB8 unk_20;
    u16 unk_24;
    int unk_28;
} UnkStruct_ov23_022537D4;

typedef struct UnkStruct_ov23_02253598_t {
    UnkStruct_ov23_022537D4 * unk_00;
    SysTask * unk_04;
    SaveData * unk_08;
    UnkStruct_0202855C * unk_0C;
    UnkStruct_0202855C * unk_10;
    MATHRandContext32 unk_14;
    u8 unk_2C;
};

static UnkStruct_ov23_02253598 * Unk_ov23_022577BC = NULL;
static void ov23_022537D4(SysTask * param0, void * param1);

void ov23_02253598 (UnkStruct_ov23_02253598 * param0, UnkStruct_0202855C * param1, SaveData * param2)
{
    MI_CpuFill8(param0, 0, sizeof(UnkStruct_ov23_02253598));

    Unk_ov23_022577BC = param0;
    Unk_ov23_022577BC->unk_08 = param2;
    Unk_ov23_022577BC->unk_0C = param1;
    Unk_ov23_022577BC->unk_10 = sub_0202855C(15);

    sub_020361BC(&Unk_ov23_022577BC->unk_14);
}

void ov23_022535CC (void)
{
    Heap_FreeToHeap(Unk_ov23_022577BC->unk_10);
    Heap_FreeToHeap(Unk_ov23_022577BC);

    Unk_ov23_022577BC = NULL;
}

void ov23_022535EC (void)
{
    if (Unk_ov23_022577BC->unk_04) {
        ov23_022537D4(Unk_ov23_022577BC->unk_04, Unk_ov23_022577BC->unk_00);
    }
}

void ov23_02253604 (void)
{
    return;
}

int ov23_02253608 (void)
{
    return sizeof(UnkStruct_ov23_02253598);
}

static UnkFuncPtr_ov23_022576EC Unk_ov23_022576EC[] = {
    sub_020294B8,
    sub_020294EC,
    sub_02029524,
    sub_020295B8,
    sub_020295F0,
    sub_0202963C,
    sub_020296CC,
    sub_02029704,
    sub_0202973C,
    sub_02029774,
    sub_020297AC,
    sub_020297E4,
    sub_0202981C,
    sub_020295B8
};

asm static void ov23_0225360C (Window * param0, MessageLoader * param1, TrainerInfo * param2, const UnkStruct_0202855C * param3)
{
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x20
    add r7, r0, #0
    mov r0, #4
    str r1, [sp, #0xc]
    add r5, r2, #0
    str r3, [sp, #0x10]
    bl sub_0200B358
    str r0, [sp, #0x1c]
    mov r0, #0x1e
    mov r1, #4
    bl Strbuf_Init
    add r4, r0, #0
    mov r0, #0x1e
    mov r1, #4
    bl Strbuf_Init
    str r0, [sp, #0x18]
    ldr r0, [sp, #0xc]
    mov r1, #0
    add r2, r4, #0
    bl MessageLoader_GetStrbuf
    mov r0, #1
    str r0, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    mov r1, #0
    add r0, r7, #0
    add r2, r4, #0
    mov r3, #2
    str r1, [sp, #8]
    bl sub_0201D738
    ldr r0, [sp, #0xc]
    mov r1, #1
    add r2, r4, #0
    bl MessageLoader_GetStrbuf
    mov r0, #0x11
    str r0, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    mov r1, #0
    add r0, r7, #0
    add r2, r4, #0
    mov r3, #2
    str r1, [sp, #8]
    bl sub_0201D738
    ldr r0, [sp, #0xc]
    mov r1, #2
    add r2, r4, #0
    bl MessageLoader_GetStrbuf
    mov r0, #1
    str r0, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    mov r1, #0
    add r0, r7, #0
    add r2, r4, #0
    mov r3, #0x84
    str r1, [sp, #8]
    bl sub_0201D738
    add r0, r5, #0
    bl TrainerInfo_ID_LowHalf
    add r2, r0, #0
    mov r0, #2
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    ldr r0, [sp, #0x1c]
    mov r1, #6
    mov r3, #5
    bl sub_0200B60C
    ldr r0, [sp, #0xc]
    mov r1, #5
    add r2, r4, #0
    bl MessageLoader_GetStrbuf
    ldr r0, [sp, #0x1c]
    ldr r1, [sp, #0x18]
    add r2, r4, #0
    bl sub_0200C388
    mov r0, #1
    str r0, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    mov r1, #0
    ldr r2, [sp, #0x18]
    add r0, r7, #0
    mov r3, #0x94
    str r1, [sp, #8]
    bl sub_0201D738
    ldr r0, [sp, #0x1c]
    mov r1, #0
    add r2, r5, #0
    bl sub_0200B498
    ldr r0, [sp, #0xc]
    mov r1, #4
    add r2, r4, #0
    bl MessageLoader_GetStrbuf
    ldr r0, [sp, #0x1c]
    ldr r1, [sp, #0x18]
    add r2, r4, #0
    bl sub_0200C388
    mov r0, #1
    str r0, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    mov r1, #0
    ldr r2, [sp, #0x18]
    add r0, r7, #0
    mov r3, #0x39
    str r1, [sp, #8]
    bl sub_0201D738
    ldr r0, [sp, #0x10]
    bl sub_0202958C
    add r1, r0, #0
    ldr r0, [sp, #0xc]
    add r1, #0x14
    add r2, r4, #0
    bl MessageLoader_GetStrbuf
    mov r0, #0x11
    str r0, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    mov r1, #0
    add r0, r7, #0
    add r2, r4, #0
    mov r3, #0x39
    str r1, [sp, #8]
    bl sub_0201D738
    mov r5, #0
    mov r6, #0x27
 _02253738:
    ldr r0, [sp, #0xc]
    add r1, r5, #6
    add r2, r4, #0
    bl MessageLoader_GetStrbuf
    str r6, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    mov r0, #0
    str r0, [sp, #8]
    add r0, r7, #0
    mov r1, #0
    add r2, r4, #0
    mov r3, #2
    bl sub_0201D738
    add r5, r5, #1
    add r6, #0x10
    cmp r5, #7
    blt _02253738
    mov r0, #0
    ldr r6, = Unk_ov23_022576EC
              str r0, [sp, #0x14]
    mov r5, #0x27
 _02253768:
    ldr r0, [sp, #0x10]
    ldr r1, [r6, #0]
    blx r1
    add r2, r0, #0
    mov r0, #1
    str r0, [sp]
    str r0, [sp, #4]
    mov r1, #6
    ldr r0, [sp, #0x1c]
    add r3, r1, #0
    bl sub_0200B60C
    ldr r0, [sp, #0xc]
    mov r1, #0xd
    add r2, r4, #0
    bl MessageLoader_GetStrbuf
    ldr r0, [sp, #0x1c]
    ldr r1, [sp, #0x18]
    add r2, r4, #0
    bl sub_0200C388
    str r5, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    mov r0, #0
    str r0, [sp, #8]
    ldr r2, [sp, #0x18]
    add r0, r7, #0
    mov r1, #0
    mov r3, #0x94
    bl sub_0201D738
    ldr r0, [sp, #0x14]
    add r6, r6, #4
    add r0, r0, #1
    add r5, #0x10
    str r0, [sp, #0x14]
    cmp r0, #7
    blt _02253768
    add r0, r4, #0
    bl Strbuf_Free
    ldr r0, [sp, #0x18]
    bl Strbuf_Free
    ldr r0, [sp, #0x1c]
    bl sub_0200B3F0
    add sp, #0x20
    pop {r3, r4, r5, r6, r7, pc}
    nop
}

static void ov23_022537D4 (SysTask * param0, void * param1)
{
    UnkStruct_ov23_022537D4 * v0 = param1;

    Window_Clear(&v0->unk_08, 0);
    sub_0201ACF4(&v0->unk_08);
    BGL_DeleteWindow(&v0->unk_08);

    {
        UnkFuncPtr_ov23_02253834 v1 = v0->unk_00;

        if (v1 != NULL) {
            v1(v0->unk_04);
        }
    }

    Heap_FreeToHeap(v0);
    SysTask_Done(param0);

    Unk_ov23_022577BC->unk_04 = NULL;
    Unk_ov23_022577BC->unk_00 = NULL;
}

static void ov23_0225381C (SysTask * param0, void * param1)
{
    UnkStruct_ov23_022537D4 * v0 = param1;

    if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        ov23_022537D4(param0, param1);
    }
}

void ov23_02253834 (BGL * param0, TrainerInfo * param1, UnkFuncPtr_ov23_02253834 param2, void * param3, BOOL param4)
{
    UnkStruct_0202855C * v0;
    MessageLoader * v1;
    UnkStruct_ov84_02240FA8 v2;
    int v3 = 10;
    UnkStruct_ov23_022537D4 * v4 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov23_022537D4));

    MI_CpuClear8(v4, sizeof(UnkStruct_ov23_022537D4));

    v4->unk_00 = param2;
    v4->unk_04 = param3;

    BGL_AddWindow(param0, &v4->unk_08, 3, 4, 2, 24, 19, 13, 1);
    Window_Show(&v4->unk_08, 1, 1024 - (18 + 12) - 9, 11);

    v1 = MessageLoader_Init(0, 26, 640, 4);
    BGL_FillWindow(&v4->unk_08, 15);

    if (param4) {
        v0 = Unk_ov23_022577BC->unk_0C;
    } else {
        v0 = Unk_ov23_022577BC->unk_10;
    }

    ov23_0225360C(&v4->unk_08, v1, param1, v0);

    sub_0201A9A4(&v4->unk_08);
    Sound_PlayEffect(1533);

    Unk_ov23_022577BC->unk_04 = SysTask_Start(ov23_0225381C, v4, 10);
    Unk_ov23_022577BC->unk_00 = v4;

    MessageLoader_Free(v1);
}

void ov23_022538FC (int param0)
{
    int v0 = sub_02028558();
    int v1 = sub_0202D034(sub_0202CD88(Unk_ov23_022577BC->unk_08));
    u8 * v2 = Heap_AllocFromHeap(4, v0 + 1);

    MI_CpuClear8(v2, v0 + 1);
    v2[0] = param0;

    if (v1 >= 999999) {
        v1 = 999999;
    }

    sub_020294D4(Unk_ov23_022577BC->unk_0C, v1);

    MI_CpuCopy8(Unk_ov23_022577BC->unk_0C, &v2[1], v0);

    sub_020359DC(81, v2, v0 + 1);
    Heap_FreeToHeap(v2);
}

void ov23_02253968 (void)
{
    int v0 = sub_0202D034(sub_0202CD88(Unk_ov23_022577BC->unk_08));

    if (v0 >= 999999) {
        v0 = 999999;
    }

    sub_020294D4(Unk_ov23_022577BC->unk_0C, v0);
}

void ov23_02253998 (int param0, int param1, void * param2, void * param3)
{
    sub_02035AC4(82, param2, param1);
}

void ov23_022539A8 (int param0, int param1, void * param2, void * param3)
{
    u8 * v0 = param2;

    if (v0[0] == sub_0203608C()) {
        MI_CpuCopy8(&v0[1], Unk_ov23_022577BC->unk_10, param1 - 1);
        Unk_ov23_022577BC->unk_2C = 1;
    }
}

BOOL ov23_022539D8 (void)
{
    return Unk_ov23_022577BC->unk_2C;
}

void ov23_022539E8 (void)
{
    Unk_ov23_022577BC->unk_2C = 0;
}

static void ov23_022539F8 (int param0)
{
    sub_02059514();
}

void ov23_02253A00 (UnkStruct_0202855C * param0, int param1)
{
    s32 v0;
    UnkStruct_0202855C * v1;
    UnkFuncPtr_ov23_022576EC v2 = Unk_ov23_022576EC[param1 - 32];

    GF_ASSERT(param1 >= 32);
    GF_ASSERT(param1 <= 45);

    sub_020594FC();
    ov23_02253DFC(ov23_022421BC(), 640, 1);

    v1 = sub_0202855C(4);
    MI_CpuCopy8(param0, v1, sub_02028558());

    v0 = v2(v1);
    Heap_FreeToHeap(v1);

    ov23_02254178(ov23_022421BC(), v0);
    ov23_02253F40(ov23_022421BC(), param1, 1, ov23_022539F8);
}

static void ov23_02253A78 (Window * param0, MessageLoader * param1, TrainerInfo * param2, const UnkStruct_0202855C * param3, const UnkStruct_020298B0 * param4)
{
    UnkStruct_0200B358 * v0;
    Strbuf* v1;
    Strbuf* v2;
    int v3, v4;
    const int v5 = 17;
    const int v6 = 39;
    const int v7 = 2;
    const int v8 = 17;
    const int v9 = 55;
    const int v10 = 130;
    const int v11 = 146;
    const int v12 = 100;

    v0 = sub_0200B358(4);
    v1 = Strbuf_Init(40, 4);
    v2 = Strbuf_Init(40, 4);

    sub_0200B498(v0, 1, param2);
    MessageLoader_GetStrbuf(param1, 12, v1);
    sub_0200C388(v0, v2, v1);
    sub_0201D738(param0, 0, v2, v7, 1, 0xff, NULL);

    MessageLoader_GetStrbuf(param1, 13, v1);
    sub_0201D738(param0, 0, v1, v7, 1 + v8, 0xff, NULL);

    sub_0200B60C(v0, 6, sub_020295B8(param3), 6, 1, 1);
    MessageLoader_GetStrbuf(param1, 14, v1);
    sub_0200C388(v0, v2, v1);
    sub_0201D738(param0, 0, v2, v7 + 100, 1 + v8, 0xff, NULL);

    MessageLoader_GetStrbuf(param1, 15, v1);
    sub_0201D738(param0, 0, v1, v7, 1 + v8 * 3, 0xff, NULL);

    for (v3 = 0; v3 < 5; v3++) {
        TrainerInfo * v13 = sub_020288C8(param4, 4, v3);

        if (v13) {
            sub_0200B498(v0, 0, v13);
            MessageLoader_GetStrbuf(param1, 16, v1);
            sub_0200C388(v0, v2, v1);
            sub_0201D738(param0, 0, v2, v7, 1 + v8 * (4 + v3), 0xff, NULL);

            sub_0200B60C(v0, 5, TrainerInfo_ID_LowHalf(v13), 5, 2, 1);
            MessageLoader_GetStrbuf(param1, 17, v1);
            sub_0200C388(v0, v2, v1);

            sub_0201D738(param0, 0, v2, v7 + v12, 1 + v8 * (4 + v3), 0xff, NULL);
            Heap_FreeToHeap(v13);
        } else {
            MessageLoader_GetStrbuf(param1, 51, v1);
            sub_0201D738(param0, 0, v1, v7, 1 + v8 * (4 + v3), 0xff, NULL);
            MessageLoader_GetStrbuf(param1, 52, v1);
            sub_0201D738(param0, 0, v1, v7 + v12, 1 + v8 * (4 + v3), 0xff, NULL);
        }
    }

    Strbuf_Free(v1);
    Strbuf_Free(v2);
    sub_0200B3F0(v0);
}

void * ov23_02253C64 (BGL * param0, TrainerInfo * param1, UnkStruct_020298B0 * param2, UnkFuncPtr_ov23_02253834 param3, void * param4)
{
    UnkStruct_0202855C * v0;
    MessageLoader * v1;
    UnkStruct_ov84_02240FA8 v2;
    int v3 = 10;
    UnkStruct_ov23_022537D4 * v4 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov23_022537D4));

    MI_CpuClear8(v4, sizeof(UnkStruct_ov23_022537D4));

    v4->unk_00 = param3;
    v4->unk_04 = param4;

    BGL_AddWindow(param0, &v4->unk_08, 3, 4, 2, 24, 19, 13, 1);
    Window_Show(&v4->unk_08, 1, 1024 - (18 + 12) - 9, 11);

    v1 = MessageLoader_Init(0, 26, 639, 4);
    BGL_FillWindow(&v4->unk_08, 15);

    v0 = Unk_ov23_022577BC->unk_0C;
    ov23_02253A78(&v4->unk_08, v1, param1, v0, param2);

    Sound_PlayEffect(1533);
    sub_0201A9A4(&v4->unk_08);
    MessageLoader_Free(v1);

    return v4;
}

void ov23_02253D10 (void * param0)
{
    UnkStruct_ov23_022537D4 * v0 = param0;

    Window_Clear(&v0->unk_08, 0);
    sub_0201ACF4(&v0->unk_08);
    BGL_DeleteWindow(&v0->unk_08);

    {
        UnkFuncPtr_ov23_02253834 v1 = v0->unk_00;

        if (v1 != NULL) {
            v1(v0->unk_04);
        }
    }

    Heap_FreeToHeap(v0);
}
