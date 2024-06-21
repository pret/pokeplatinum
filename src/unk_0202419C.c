#include <nitro.h>
#include <string.h>

#include "unk_0202419C.h"

typedef struct {
    BOOL unk_00;
    GXSortMode unk_04;
    GXBufferMode unk_08;
} UnkStruct_021C0788;

static UnkStruct_021C0788 Unk_021C0788;

void sub_0202419C (void)
{
    memset(&Unk_021C0788, 0, sizeof(UnkStruct_021C0788));
    Unk_021C0788.unk_00 = 0;
}

void sub_020241B4 (void)
{
    G3X_Reset();
}

void G3_RequestSwapBuffers (GXSortMode param0, GXBufferMode param1)
{
    Unk_021C0788.unk_04 = param0;
    Unk_021C0788.unk_08 = param1;
    Unk_021C0788.unk_00 = 1;
}

void sub_020241CC (void)
{
    if (Unk_021C0788.unk_00) {
        G3_SwapBuffers(Unk_021C0788.unk_04, Unk_021C0788.unk_08);
        Unk_021C0788.unk_00 = 0;
    }
}
