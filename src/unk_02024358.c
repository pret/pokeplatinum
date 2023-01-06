#include <nitro.h>
#include <string.h>

#include "unk_02024358.h"

void sub_02024358 ()
{
    if (!FS_IsAvailable()) {
        OS_Terminate();
    } else {
        static const char v0[] = "rom";
        static const int v1 = sizeof(v0) - 1;
        const CARDRomHeader * v2;
        FSArchive * v3;
        {
            CARDRomHeader * const v4 = (CARDRomHeader *)0x27FF000;
            CARDRomHeader * const v5 = (CARDRomHeader *)HW_ROM_HEADER_BUF;
            CARDRomHeader * const v6 = (CARDRomHeader *)HW_CARD_ROM_HEADER;

            if (v4->game_code == 0) {
                CARD_Init();
                MI_CpuCopy8(v5, v4, HW_CARD_ROM_HEADER_SIZE);
                MI_CpuCopy8(v5, v6, HW_CARD_ROM_HEADER_SIZE);
                v4->game_code = (('A' << 0) | ('D' << 8) | ('A' << 16) | ('J' << 24));
            }

            v2 = v4;
        }

        v3 = FS_FindArchive(v0, v1);
        v3->fat = v2->fat.offset;
        v3->fat_size = v2->fat.length;
        v3->fnt = v2->fnt.offset;
        v3->fnt_size = v2->fnt.length;

        if ((v2->game_code != (('A' << 0) | ('D' << 8) | ('A' << 16) | ('J' << 24))) || (v2->maker_code != (('0' << 0) | ('1' << 8)))) {
            OS_Terminate();
        }
    }
}

void sub_020243E0 (const char * param0)
{
    FSFile v0;
    u32 v1;

    FS_InitFile(&v0);

    if (!FS_OpenFile(&v0, param0)) {
        return;
    }

    v1 = FS_GetFileImageTop(&v0);

    *(u32 *)HW_ROM_BASE_OFFSET_BUF = v1;
    OS_ResetSystem(0);
}
