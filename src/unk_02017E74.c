#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02017E74.h"

#include "unk_02017E74.h"
#include "unk_020366A0.h"
#include "unk_0209B47C.h"

typedef struct {
    NNSFndHeapHandle * unk_00;
    NNSFndHeapHandle * unk_04;
    void ** unk_08;
    u16 * unk_0C;
    u8 * unk_10;
    u16 unk_14;
    u16 unk_16;
    u16 unk_18;
    u16 unk_1A;
} UnkStruct_021BFAF0;

typedef struct {
    char unk_00[12];
    u32 unk_0C_0 : 8;
    u32 unk_0C_8 : 24;
} UnkStruct_020181C4;

static int sub_02017FA0(void);
static BOOL sub_02017FE0(u32 param0, u32 param1, u32 param2, s32 param3);
static void * sub_020180F0(NNSFndHeapHandle param0, u32 param1, s32 param2, u32 param3);

static UnkStruct_021BFAF0 Unk_021BFAF0 = {
    0
};

void sub_02017E74 (const UnkStruct_02017E74 * param0, u32 param1, u32 param2, u32 param3)
{
    void * v0;
    u32 v1, v2;

    v1 = param1 + 24;

    if (param2 < v1) {
        param2 = v1;
    }

    if (param3) {
        while (param3 & 3) {
            param3++;
        }

        OS_AllocFromMainArenaLo(param3, 4);
    }

    Unk_021BFAF0.unk_00 = OS_AllocFromMainArenaLo(sizeof(NNSFndHeapHandle) * (v1 + 1) + sizeof(NNSFndHeapHandle) * (v1) + sizeof(void *) * (v1) + sizeof(u16) * (param2) + param2, 4);
    Unk_021BFAF0.unk_04 = Unk_021BFAF0.unk_00 + (v1 + 1);
    Unk_021BFAF0.unk_08 = (void **)((u8 *)(Unk_021BFAF0.unk_04) + (sizeof(NNSFndHeapHandle) * v1));
    Unk_021BFAF0.unk_0C = (u16 *)((u8 *)(Unk_021BFAF0.unk_08) + (sizeof(void *) * v1));
    Unk_021BFAF0.unk_10 = (u8 *)(Unk_021BFAF0.unk_0C) + (sizeof(u16) * (param2));
    Unk_021BFAF0.unk_14 = param2;
    Unk_021BFAF0.unk_16 = param1;
    Unk_021BFAF0.unk_1A = v1;
    Unk_021BFAF0.unk_18 = v1;

    for (v2 = 0; v2 < param1; v2++) {
        switch (param0[v2].unk_04) {
        case OS_ARENA_MAIN:
        default:
            v0 = OS_AllocFromMainArenaLo(param0[v2].unk_00, 4);
            break;
        case OS_ARENA_MAINEX:
            v0 = OS_AllocFromMainExArenaHi(param0[v2].unk_00, 4);
            break;
        }

        if (v0 != NULL) {
            Unk_021BFAF0.unk_00[v2] = NNS_FndCreateExpHeap(v0, param0[v2].unk_00);
            Unk_021BFAF0.unk_10[v2] = v2;
        } else {
            GF_ASSERT(0);
        }
    }

    for (v2 = param1; v2 < (v1 + 1); v2++) {
        Unk_021BFAF0.unk_00[v2] = NNS_FND_HEAP_INVALID_HANDLE;
        Unk_021BFAF0.unk_10[v2] = Unk_021BFAF0.unk_1A;
    }

    while (v2 < param2) {
        Unk_021BFAF0.unk_10[v2++] = Unk_021BFAF0.unk_1A;
    }

    for (v2 = 0; v2 < param2; v2++) {
        Unk_021BFAF0.unk_0C[v2] = 0;
    }
}

static int sub_02017FA0 (void)
{
    int v0;

    for (v0 = Unk_021BFAF0.unk_16; v0 < Unk_021BFAF0.unk_18; v0++) {
        if (Unk_021BFAF0.unk_00[v0] == NNS_FND_HEAP_INVALID_HANDLE) {
            return v0;
        }
    }

    return -1;
}

BOOL sub_02017FC8 (u32 param0, u32 param1, u32 param2)
{
    return sub_02017FE0(param0, param1, param2, 4);
}

BOOL sub_02017FD4 (u32 param0, u32 param1, u32 param2)
{
    return sub_02017FE0(param0, param1, param2, -4);
}

static BOOL sub_02017FE0 (u32 param0, u32 param1, u32 param2, s32 param3)
{
    GF_ASSERT((OS_GetProcMode() != OS_PROCMODE_IRQ));

    if (Unk_021BFAF0.unk_10[param1] == Unk_021BFAF0.unk_1A) {
        NNSFndHeapHandle v0 = Unk_021BFAF0.unk_00[Unk_021BFAF0.unk_10[(param0)]];

        if (v0 != NNS_FND_HEAP_INVALID_HANDLE) {
            void * v1 = NNS_FndAllocFromExpHeapEx(v0, param2, param3);

            if (v1 != NULL) {
                int v2 = sub_02017FA0();

                if (v2 >= 0) {
                    Unk_021BFAF0.unk_00[v2] = NNS_FndCreateExpHeap(v1, param2);

                    if (Unk_021BFAF0.unk_00[v2] != NNS_FND_HEAP_INVALID_HANDLE) {
                        Unk_021BFAF0.unk_04[v2] = v0;
                        Unk_021BFAF0.unk_08[v2] = v1;
                        Unk_021BFAF0.unk_10[param1] = v2;

                        return 1;
                    } else {
                        GF_ASSERT(0);
                    }
                } else {
                    GF_ASSERT(0);
                }
            } else {
                GF_ASSERT(0);
            }
        } else {
            GF_ASSERT(0);
        }
    } else {
        GF_ASSERT(0);
    }

    return 0;
}

void sub_0201807C (u32 param0)
{
    GF_ASSERT((OS_GetProcMode() != OS_PROCMODE_IRQ));

    {
        NNSFndHeapHandle v0, v1;

        v0 = Unk_021BFAF0.unk_00[Unk_021BFAF0.unk_10[(param0)]];

        if (v0 != NNS_FND_HEAP_INVALID_HANDLE) {
            NNSFndHeapHandle v2;
            void * v3;

            NNS_FndDestroyExpHeap(v0);

            v2 = Unk_021BFAF0.unk_04[Unk_021BFAF0.unk_10[(param0)]];
            v3 = Unk_021BFAF0.unk_08[Unk_021BFAF0.unk_10[(param0)]];

            if ((v2 != NNS_FND_HEAP_INVALID_HANDLE) && (v3 != NULL)) {
                NNS_FndFreeToExpHeap(v2, v3);
            } else {
                GF_ASSERT(0);
            }

            Unk_021BFAF0.unk_00[Unk_021BFAF0.unk_10[(param0)]] = (void *)0;
            Unk_021BFAF0.unk_04[Unk_021BFAF0.unk_10[(param0)]] = (void *)0;
            Unk_021BFAF0.unk_08[Unk_021BFAF0.unk_10[(param0)]] = (void *)0;

            Unk_021BFAF0.unk_10[param0] = Unk_021BFAF0.unk_1A;
        }
    }
}

static void * sub_020180F0 (NNSFndHeapHandle param0, u32 param1, s32 param2, u32 param3)
{
    void * v0;
    OSIntrMode v1;

    GF_ASSERT(param0 != NNS_FND_HEAP_INVALID_HANDLE);

    v1 = OS_DisableInterrupts();
    v0 = NNS_FndAllocFromExpHeapEx(param0, param1 + sizeof(UnkStruct_020181C4), param2);

    OS_RestoreInterrupts(v1);

    if (v0 != NULL) {
        ((UnkStruct_020181C4 *)v0)->unk_0C_0 = param3;
        (u8 *)v0 += sizeof(UnkStruct_020181C4);
    }

    return v0;
}

static void sub_02018134 (void)
{
    if (sub_02036780()) {
        sub_0209B49C();
    }
}

void * sub_02018144 (u32 param0, u32 param1)
{
    void * v0 = NULL;

    if (param0 < Unk_021BFAF0.unk_14) {
        NNSFndHeapHandle v1 = Unk_021BFAF0.unk_00[Unk_021BFAF0.unk_10[(param0)]];

        v0 = sub_020180F0(v1, param1, 4, param0);
    }

    if (v0 != NULL) {
        Unk_021BFAF0.unk_0C[param0]++;
    } else {
        sub_02018134();
    }

    return v0;
}

void * sub_02018184 (u32 param0, u32 param1)
{
    void * v0 = NULL;

    if (param0 < Unk_021BFAF0.unk_14) {
        NNSFndHeapHandle v1 = Unk_021BFAF0.unk_00[Unk_021BFAF0.unk_10[(param0)]];

        v0 = sub_020180F0(v1, param1, -4, param0);
    }

    if (v0 != NULL) {
        Unk_021BFAF0.unk_0C[param0]++;
    } else {
        sub_02018134();
    }

    return v0;
}

void sub_020181C4 (void * param0)
{
    {
        u32 v0;

        (u8 *)param0 -= sizeof(UnkStruct_020181C4);
        v0 = ((UnkStruct_020181C4 *)param0)->unk_0C_0;

        if (v0 < Unk_021BFAF0.unk_14) {
            NNSFndHeapHandle v1 = Unk_021BFAF0.unk_00[Unk_021BFAF0.unk_10[v0]];

            GF_ASSERT(v1 != NNS_FND_HEAP_INVALID_HANDLE);

            if (Unk_021BFAF0.unk_0C[v0] == 0) {
                sub_0201833C(v0);
            }

            GF_ASSERT(Unk_021BFAF0.unk_0C[v0]);

            Unk_021BFAF0.unk_0C[v0]--;

            {
                OSIntrMode v2;

                v2 = OS_DisableInterrupts();
                NNS_FndFreeToExpHeap(v1, param0);
                OS_RestoreInterrupts(v2);
            }
        } else {
            GF_ASSERT(0);
        }
    }
}

void sub_02018238 (u32 param0, void * param1)
{
    GF_ASSERT(OS_GetProcMode() != OS_PROCMODE_IRQ);

    if (param0 < Unk_021BFAF0.unk_14) {
        NNSFndHeapHandle v0 = Unk_021BFAF0.unk_00[Unk_021BFAF0.unk_10[(param0)]];

        GF_ASSERT(v0 != NNS_FND_HEAP_INVALID_HANDLE);

        (u8 *)param1 -= sizeof(UnkStruct_020181C4);

        if (((UnkStruct_020181C4 *)param1)->unk_0C_0 != param0) {
            GF_ASSERT(0);
        }

        NNS_FndFreeToExpHeap(v0, param1);

        GF_ASSERT(Unk_021BFAF0.unk_0C[param0]);
        Unk_021BFAF0.unk_0C[param0]--;
    } else {
        GF_ASSERT(0);
    }
}

u32 sub_020182A4 (u32 param0)
{
    if (param0 < Unk_021BFAF0.unk_14) {
        NNSFndHeapHandle v0 = Unk_021BFAF0.unk_00[Unk_021BFAF0.unk_10[(param0)]];

        return NNS_FndGetTotalFreeSizeForExpHeap(v0);
    }

    GF_ASSERT(0);
    return 0;
}

void sub_020182CC (NNSFndAllocator * param0, u32 param1, int param2)
{
    if (param1 < Unk_021BFAF0.unk_14) {
        NNSFndHeapHandle v0 = Unk_021BFAF0.unk_00[Unk_021BFAF0.unk_10[(param1)]];

        NNS_FndInitAllocatorForExpHeap(param0, v0, param2);
    } else {
        GF_ASSERT(0);
    }
}

void sub_020182F0 (void * param0, u32 param1)
{
    GF_ASSERT(OS_GetProcMode() != OS_PROCMODE_IRQ);

    {
        u32 v0;

        (u8 *)param0 -= sizeof(UnkStruct_020181C4);

        v0 = NNS_FndGetSizeForMBlockExpHeap(param0);
        param1 += sizeof(UnkStruct_020181C4);

        if (v0 >= param1) {
            u32 v1;
            NNSFndHeapHandle v2;

            v1 = ((UnkStruct_020181C4 *)param0)->unk_0C_0;
            v2 = Unk_021BFAF0.unk_00[Unk_021BFAF0.unk_10[(v1)]];

            NNS_FndResizeForMBlockExpHeap(v2, param0, param1);
        } else {
            GF_ASSERT(0);
        }
    }
}

BOOL sub_0201833C (u32 param0)
{
    return 1;
}
