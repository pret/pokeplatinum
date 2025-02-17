#include "boot.h"

#include <nitro.h>

#define GAME_CODE_POKEMON_DIAMOND_JP (('A' << 0) | ('D' << 8) | ('A' << 16) | ('J' << 24))
#define MAKER_CODE_NINTENDO          (('0' << 0) | ('1' << 8))

static const char sLoadName[] = "rom";
static const int sLoadNameLen = sizeof(sLoadName) - 1;

void CheckForMemoryTampering()
{
    if (!FS_IsAvailable()) {
        OS_Terminate();
    } else {
        const CARDRomHeader *sanityHeader;

        // Deliberately keeping this scope block so that the declared variables fall out of scope
        // and cannot be reused
        {
            CARDRomHeader *const checkHeader = (CARDRomHeader *)HW_MAIN_MEM_SHARED; // 0x027FF000
            CARDRomHeader *const loadedHeader = (CARDRomHeader *)HW_ROM_HEADER_BUF; // 0x027FFE00
            CARDRomHeader *const backupHeader = (CARDRomHeader *)HW_CARD_ROM_HEADER; // 0x027FFA80

            if (checkHeader->game_code == 0) {
                CARD_Init();
                MI_CpuCopy8(loadedHeader, checkHeader, HW_CARD_ROM_HEADER_SIZE);
                MI_CpuCopy8(loadedHeader, backupHeader, HW_CARD_ROM_HEADER_SIZE);
                checkHeader->game_code = GAME_CODE_POKEMON_DIAMOND_JP;
            }

            sanityHeader = checkHeader;
        }

        FSArchive *archive = FS_FindArchive(sLoadName, sLoadNameLen);
        archive->fat = sanityHeader->fat.offset;
        archive->fat_size = sanityHeader->fat.length;
        archive->fnt = sanityHeader->fnt.offset;
        archive->fnt_size = sanityHeader->fnt.length;

        if (sanityHeader->game_code != GAME_CODE_POKEMON_DIAMOND_JP
            || sanityHeader->maker_code != MAKER_CODE_NINTENDO) {
            OS_Terminate();
        }
    }
}

void RebootAndLoadROM(const char *filesystemPath)
{
    FSFile file;
    FS_InitFile(&file);
    if (!FS_OpenFile(&file, filesystemPath)) {
        return;
    }

    u32 fileStartAddress = FS_GetFileImageTop(&file);
    *(u32 *)HW_ROM_BASE_OFFSET_BUF = fileStartAddress;
    OS_ResetSystem(0);
}
