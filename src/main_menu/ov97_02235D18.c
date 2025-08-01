#include "main_menu/ov97_02235D18.h"

#include <nitro.h>
#include <string.h>

#include "main_menu/gba_save.h"

typedef struct GBANameLengths {
    u8 playerNameLength;
    u8 trainerNameLength;
    u8 pokemonNameLength1;
    u8 pokemonNameLength2;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    u8 unk_0B;
    u8 unk_0C;
    u8 unk_0D;
    u8 unk_0E;
    u8 unk_0F;
    u8 unk_10;
} GBANameLengths;

typedef struct GBAPkmnGameHeader_sub2 {
    u32 unk_00_0 : 1;
    u32 unk_00_1 : 1;
    u32 unk_00_2 : 30;
} GBAPkmnGameHeader_sub2;

typedef struct GBAPocketSizes {
    u8 itemsPocketSize;
    u8 keyItemsPocketSize;
    u8 pokeballsPocketSize;
    u8 tmhmPocketSize;
    u8 berriesPocketSize;
    u8 itemsPCSize;
} GBAPocketSizes;

/*
 * Holds information about GBA Pokemon games (specifically Emerald and FR/LG)
 * ROM and save structures, stored in bytes 0x100-0x1FB of the ROM.
 *
 * The offsets are relative to the save block that holds the information,
 * as indicated after the member declaration for convenience.
 *
 * Member names mostly taken from pokeemerald.
 */
typedef struct GBAPkmnGameHeader {
    u32 version;
    u32 language;
    u8 gameName[32];
    const void *monFrontPics;
    const void *monBackPics;
    const void *monNormalPalettes;
    const void *monShinyPalettes;
    u8 *const *monIcons;
    const u8 *monIconPaletteIds;
    const void *monIconPalettes;
    const u8 **speciesNames;
    const u8 **moveNames;
    const void *decorations;
    u32 flagsOffset; // Save block 1
    u32 varsOffset; // Save block 1
    u32 pokedexOffset; // Save block 2
    u32 seen1Offset; // Save block 1
    u32 seen2Offset; // Save block 1
    u32 pokedexVar;
    u32 pokedexFlag;
    u32 mysteryEventFlag;
    u32 pokedexCount;
    GBANameLengths nameLengths;
    u32 saveBlock2Size;
    u32 saveBlock1Size;
    u32 partyCountOffset; // Save block 1
    u32 partyOffset; // Save block 1
    u32 warpFlagsOffset; // Save block 2
    u32 trainerIDOffset; // Save block 2
    u32 playerNameOffset; // Save block 2
    u32 playerGenderOffset; // Save block 2
    u32 frontierStatusOffset; // Save block 2
    u32 frontierStatusOffset2; // Save block 2
    u32 externalEventFlagsOffset; // Save block 1
    u32 externalEventDataOffset; // Save block 1
    GBAPkmnGameHeader_sub2 unk_B8;
    const void *speciesInfo;
    const u8 **abilityNames;
    const u8 **abilityDescriptions;
    const void *items;
    const void *moves;
    const void *ballGraphics;
    const void *ballPalettes;
    u32 gcnLinkFlagsOffset; // Save block 2
    u32 gameClearFlag;
    u32 ribbonFlag;
    GBAPocketSizes pocketSizes;
    u32 pcItemsOffset; // Save block 1
    u32 giftRibbonsOffset; // Save block 1
    u32 enigmaBerryOffset; // Save block 1
    u32 enigmaBerrySize;
    // The equivalent struct on the GBA games has eight extra bytes, which are never set to interesting values (and never read by Platinum):
    // const u8 *moveDescriptions; // always NULL
    // u32 unk_100; // 0x00000000 in Emerald, 0xFFFFFFFF in FR/LG
} GBAPkmnGameHeader;

typedef struct {
    u32 agbGameCodeReversed;
    u8 gameSet;
    u8 gameType;
    u16 language;
} GBAPokemonCartInfo;

typedef struct {
    u8 unk_00[4084];
    u16 unk_FF4;
    u16 unk_FF6;
    u32 unk_FF8;
    u32 unk_FFC;
} UnkStruct_ov97_02235F4C;

static int ov97_02235DC8(const GBAPokemonCartInfo *cartInfo, int param1);
static u16 ov97_02235FFC(void *param0, int *param1, u32 *param2);
static u32 ov97_02236244(struct CTRDGTaskInfo_tag *param0);
static GBAPkmnGameHeader Unk_ov97_0223F450;

static GBAPkmnGameHeader Unk_ov97_0223F450;
static const GBAPokemonCartInfo sGBAPokemonCartInfo[30];
static u8 Unk_ov97_0223EC04[0xa0 - 4];
static const GBAPokemonCartInfo *sLoadedGBACartInfo = NULL;
static int Unk_ov97_0223F438;
static u32 Unk_ov97_0223F448;
GBASaveSlot *sGBASaveSlot;
static int Unk_ov97_0223F43C = 0;
static int Unk_ov97_0223F444;

static BOOL ov97_02235D18()
{
    if (CTRDG_IdentifyAgbBackup(CTRDG_BACKUP_TYPE_FLASH_1M) != 0) {
        return FALSE;
    }

    return TRUE;
}

int ov97_02235D2C(void *param0)
{
    sGBASaveSlot = (GBASaveSlot *)param0;

    if (sLoadedGBACartInfo != NULL) {
        return 12;
    }

    {
        int v0 = ov97_02235DC8(sGBAPokemonCartInfo, NELEMS(sGBAPokemonCartInfo));

        if (v0 != 0) {
            return v0;
        }
    }

    if (sLoadedGBACartInfo->gameSet == AGB_SET_RUBYSAPP) {
        Unk_ov97_0223F450.saveBlock2Size = 2192;
        Unk_ov97_0223F450.saveBlock1Size = 15040;
        Unk_ov97_0223F450.flagsOffset = 4640;
        Unk_ov97_0223F450.warpFlagsOffset = 9;
    } else {
        CTRDG_CpuCopy32((void *)0x8000100, (void *)&Unk_ov97_0223F450, sizeof(GBAPkmnGameHeader));
    }

    if (!ov97_02235D18()) {
        return 3;
    } else {
        (void)0;
    }

    return 0;
}

void ResetLoadedGBACartInfo(void)
{
    sLoadedGBACartInfo = NULL;
}

int GBACart_GetAGBGameType()
{
    return sLoadedGBACartInfo->gameType;
}

int GBACart_GetLanguage()
{
    return sLoadedGBACartInfo->language;
}

static int ov97_02235DC8(const GBAPokemonCartInfo *cartInfo, int param1)
{
    u32 agbGameCode;

    sLoadedGBACartInfo = NULL;

    if (!CTRDG_IsAgbCartridge()) {
        return 1;
    }

    agbGameCode = CTRDG_GetAgbGameCode();
    {
        int i;

        for (i = 0; i < param1; i++) {
            if (cartInfo[i].agbGameCodeReversed == agbGameCode) {
                sLoadedGBACartInfo = cartInfo + i;
                break;
            }
        }

        if (sLoadedGBACartInfo == NULL) {
            return 2;
        }
    }

    CTRDG_Enable(1);

    {
        u32 v2[0xc0 / 4];
        u8 *v3 = (u8 *)&(v2[0]);

        CTRDG_CpuCopy32((void *)0x8000000, (void *)&(v2[0]), 0xc0);

        {
            int v4;

            for (v4 = 0; v4 < sizeof(Unk_ov97_0223EC04); v4++) {
                if (Unk_ov97_0223EC04[v4] != v3[4 + v4]) {
                    return 4;
                }
            }
        }

        {
            int v5;
            u8 v6 = 0;

            for (v5 = 0xa0; v5 <= 0xbc; v5++) {
                v6 += v3[v5];
            }

            v6 = (u8)(-(v6 + 0x19));

            if (v3[0xbd] != v6) {
                return 4;
            }
        }
    }

    return 0;
}

static u16 ov97_02235E7C(u32 *param0, u16 param1)
{
    u16 v0;
    u32 v1 = 0;

    for (v0 = 0; v0 < (param1 / 4); v0++) {
        v1 += *param0;
        param0++;
    }

    return (u16)(((v1 >> 16) & 0xffff) + (v1 & 0xffff));
}

static void ov97_02235EAC(int param0, void *param1)
{
    CTRDG_ReadAgbFlash((u16)param0, 0, param1, 0x1000);
}

static u16 ov97_02235EC0(int param0)
{
    if (param0 == 0) {
        return (u16)(Unk_ov97_0223F450.saveBlock2Size);
    }

    if (param0 == 4) {
        return (u16)(Unk_ov97_0223F450.saveBlock1Size - 0xf80 * 3);
    }

    if (param0 == 13) {
        return sizeof(GBAPokemonStorage) - 0xf80 * 8;
    }

    return 0xf80;
}

static void *GetGBASaveSectorById(int gbaSectorId)
{
    if (gbaSectorId == GBA_SECTOR_ID_SAVEBLOCK2) {
        return &(sGBASaveSlot->saveBlock2[0]);
    }

    if ((gbaSectorId >= GBA_SECTOR_ID_SAVEBLOCK1_START) && (gbaSectorId <= GBA_SECTOR_ID_SAVEBLOCK1_END)) {
        return &(sGBASaveSlot->saveBlock1[GBA_SECTOR_DATA_SIZE * (gbaSectorId - GBA_SECTOR_ID_SAVEBLOCK1_START)]);
    }

    if ((gbaSectorId >= GBA_SECTOR_ID_PKMN_STORAGE_START) && (gbaSectorId < GBA_NUM_SECTORS_PER_SLOT)) {
        return (void *)((u8 *)&(sGBASaveSlot->pokemonStorage) + (GBA_SECTOR_DATA_SIZE * (gbaSectorId - GBA_SECTOR_ID_PKMN_STORAGE_START)));
    }

    return NULL;
}

static u16 ov97_02235F4C(int param0, void *param1, u32 *param2)
{
    u32 v0 = 0;
    u16 v1 = 0;
    u16 v2;
    UnkStruct_ov97_02235F4C *v3 = (UnkStruct_ov97_02235F4C *)param1;
    int v4;

    *param2 = 0;
    Unk_ov97_0223F43C = 0;

    for (v4 = 0; v4 < 14; v4++) {
        ov97_02235EAC(v4 % 14 + param0 * 14, (void *)v3);
        DC_FlushRange(v3, 0x1000);

        if (v3->unk_FF8 == 0x8012025) {
            v1 = 1;
            v2 = ov97_02235E7C((u32 *)v3->unk_00, ov97_02235EC0(v3->unk_FF4));

            if (v3->unk_FF6 == v2) {
                *param2 = v3->unk_FFC;
                v0 |= (0x1 << v3->unk_FF4);
            }
        }
    }

    if (v1) {
        if (v0 == ((0xffffffff << 14) ^ 0xffffffff)) {
            return 0x1;
        } else {
            return 0xff;
        }
    } else {
        return 0x0;
    }
}

static u16 ov97_02235FFC(void *param0, int *param1, u32 *param2)
{
    u16 v0, v1;
    u32 v2, v3;

    v0 = ov97_02235F4C(0, param0, &v2);
    v1 = ov97_02235F4C(1, param0, &v3);

    if ((v0 == 0x1) && (v1 == 0x1)) {
        if (((v2 == 0xffffffff) && (v3 == 0x0)) || ((v2 == 0x0) && (v3 == 0xffffffff))) {
            if ((v2 + 1) < (v3 + 1)) {
                *param2 = v3;
                *param1 = 1;
            } else {
                *param2 = v2;
                *param1 = 0;
            }
        } else {
            if (v2 < v3) {
                *param2 = v3;
                *param1 = 1;
            } else {
                *param2 = v2;
                *param1 = 0;
            }
        }

        return 0x1;
    }

    if ((v0 == 0x1) && (v1 != 0x1)) {
        *param2 = v2;

        if (v1 == 0xff) {
            *param1 = 0;
            return 0xff;
        } else {
            *param1 = 0;
            return 0x1;
        }
    }

    if ((v1 == 0x1) && (v0 != 0x1)) {
        *param2 = v3;

        if (v0 == 0xff) {
            *param1 = 1;
            return 0xff;
        } else {
            *param1 = 1;
            return 0x1;
        }
    }

    if ((v0 == 0x0) && (v1 == 0x0)) {
        *param2 = 0;
        *param1 = 0;

        return 0x0;
    }

    *param2 = 0;
    *param1 = 0;

    return 0x2;
}

static int Unk_ov97_0223F438;
static u32 Unk_ov97_0223F448;

int ov97_022360D8()
{
    u16 v0 = ov97_02235FFC((void *)sGBASaveSlot->unk_00, &Unk_ov97_0223F438, &Unk_ov97_0223F448);

    if (v0 != 0x1) {
        switch (v0) {
        case 0xff:
            return 5;
        case 0x0:
            return 7;
        case 0x2:
            return 6;
        }
    }

    if ((Unk_ov97_0223F438 == 0) || (Unk_ov97_0223F438 == 1)) {
        int v1;
        u32 v2 = 0;
        UnkStruct_ov97_02235F4C *v3 = (UnkStruct_ov97_02235F4C *)sGBASaveSlot->unk_00;

        for (v1 = 0; v1 < 14; v1++) {
            ov97_02235EAC(v1 + Unk_ov97_0223F438 * 14, (void *)v3);

            if (v3->unk_FF8 == 0x8012025) {
                u16 v4 = ov97_02235E7C((u32 *)v3->unk_00, ov97_02235EC0(v3->unk_FF4));

                if (v3->unk_FF6 == v4) {
                    Unk_ov97_0223F448 = v3->unk_FFC;
                    v2 |= (0x1 << v3->unk_FF4);

                    MI_CpuCopy32((u32 *)v3->unk_00, GetGBASaveSectorById(v3->unk_FF4), ov97_02235EC0(v3->unk_FF4));

                    if (v3->unk_FF4 == 0) {
                        Unk_ov97_0223F444 = v1;
                    }
                }
            }
        }

        if (v2 == ((0xffffffff << 14) ^ 0xffffffff)) {
            return 0;
        } else {
            return 4;
        }
    }

    return 6;
}

int Unk_ov97_0223EC00 = -1;
static int Unk_ov97_0223F44C = 0;

static void ov97_022361B0(int param0)
{
    UnkStruct_ov97_02235F4C *v0 = (UnkStruct_ov97_02235F4C *)sGBASaveSlot->unk_00;

    Unk_ov97_0223F44C = 1;

    MI_CpuClear32(v0, 0x1000);
    MI_CpuCopy32(GetGBASaveSectorById(param0), v0->unk_00, ov97_02235EC0(param0));

    v0->unk_FFC = Unk_ov97_0223F448;
    v0->unk_FF4 = (u16)param0;
    v0->unk_FF8 = 0x8012025;
    v0->unk_FF6 = ov97_02235E7C((u32 *)v0->unk_00, ov97_02235EC0(param0));

    {
        u8 v1 = (u8)(((param0 + Unk_ov97_0223F444 + 1) % 14) + 14 * Unk_ov97_0223EC00);
        CTRDG_WriteAndVerifyAgbFlashAsync(v1, (u8 *)v0, 4, ov97_02236244);
    }
}

static u32 ov97_02236244(struct CTRDGTaskInfo_tag *param0)
{
    if (param0->result == 0) {
        Unk_ov97_0223F43C++;

        if (Unk_ov97_0223F43C >= GBA_MAX_PC_BOXES) {
            Unk_ov97_0223F43C = 0;
            Unk_ov97_0223F44C = 0;
            return 0;
        }

        if (Unk_ov97_0223F43C == GBA_MAX_PC_BOXES - 1) {
            Unk_ov97_0223F44C = 2;
            return 0;
        } else {
            Unk_ov97_0223F44C = 3;
        }
    } else {
        Unk_ov97_0223F44C = 4;
    }

    return 0;
}

BOOL ov97_02236280()
{
    if (Unk_ov97_0223F43C == 0) {
        if (Unk_ov97_0223F438 == 1) {
            Unk_ov97_0223EC00 = 0;
        } else {
            Unk_ov97_0223EC00 = 1;
        }

        Unk_ov97_0223F448++;
    } else {
        return 0;
    }

    if (Unk_ov97_0223EC00 < 0) {
        return 0;
    }

    ov97_022361B0(Unk_ov97_0223F43C);
    return 1;
}

int ov97_022362C8()
{
    switch (Unk_ov97_0223F44C) {
    case 2:
        ov97_022361B0(Unk_ov97_0223F43C);
        return 0;
    case 3:
        ov97_022361B0(Unk_ov97_0223F43C);
    case 1:
        return 10;
    case 4:
        return 8;
    case 0:
    default:
        return 0;
    }
}

int ov97_02236308(void)
{
    switch (Unk_ov97_0223F44C) {
    case 2:
        return 11;
    case 3:
        return 10;
    case 1:
        return 9;
    case 4:
        return 8;
    case 0:
    default:
        return 0;
    }
}

GBAPokemonStorage *GetGBAPokemonStorage(void)
{
    return &(sGBASaveSlot->pokemonStorage);
}

void *GetGBASaveBlock2(void)
{
    return GetGBASaveSectorById(GBA_SECTOR_ID_SAVEBLOCK2);
}

static const GBAPokemonCartInfo sGBAPokemonCartInfo[30] = {
    // Ruby
    { 'JVXA', AGB_SET_RUBYSAPP, AGB_TYPE_RUBY, JAPANESE },
    { 'EVXA', AGB_SET_RUBYSAPP, AGB_TYPE_RUBY, ENGLISH },
    { 'FVXA', AGB_SET_RUBYSAPP, AGB_TYPE_RUBY, FRENCH },
    { 'DVXA', AGB_SET_RUBYSAPP, AGB_TYPE_RUBY, GERMAN },
    { 'SVXA', AGB_SET_RUBYSAPP, AGB_TYPE_RUBY, SPANISH },
    { 'IVXA', AGB_SET_RUBYSAPP, AGB_TYPE_RUBY, ITALIAN },
    // Sapphire
    { 'JPXA', AGB_SET_RUBYSAPP, AGB_TYPE_SAPPHIRE, JAPANESE },
    { 'EPXA', AGB_SET_RUBYSAPP, AGB_TYPE_SAPPHIRE, ENGLISH },
    { 'FPXA', AGB_SET_RUBYSAPP, AGB_TYPE_SAPPHIRE, FRENCH },
    { 'DPXA', AGB_SET_RUBYSAPP, AGB_TYPE_SAPPHIRE, GERMAN },
    { 'SPXA', AGB_SET_RUBYSAPP, AGB_TYPE_SAPPHIRE, SPANISH },
    { 'IPXA', AGB_SET_RUBYSAPP, AGB_TYPE_SAPPHIRE, ITALIAN },
    // FireRed
    { 'JRPB', AGB_SET_FIRELEAF, AGB_TYPE_FIRERED, JAPANESE },
    { 'ERPB', AGB_SET_FIRELEAF, AGB_TYPE_FIRERED, ENGLISH },
    { 'FRPB', AGB_SET_FIRELEAF, AGB_TYPE_FIRERED, FRENCH },
    { 'DRPB', AGB_SET_FIRELEAF, AGB_TYPE_FIRERED, GERMAN },
    { 'SRPB', AGB_SET_FIRELEAF, AGB_TYPE_FIRERED, SPANISH },
    { 'IRPB', AGB_SET_FIRELEAF, AGB_TYPE_FIRERED, ITALIAN },
    // LeafGreen
    { 'JGPB', AGB_SET_FIRELEAF, AGB_TYPE_LEAFGREEN, JAPANESE },
    { 'EGPB', AGB_SET_FIRELEAF, AGB_TYPE_LEAFGREEN, ENGLISH },
    { 'FGPB', AGB_SET_FIRELEAF, AGB_TYPE_LEAFGREEN, FRENCH },
    { 'DGPB', AGB_SET_FIRELEAF, AGB_TYPE_LEAFGREEN, GERMAN },
    { 'SGPB', AGB_SET_FIRELEAF, AGB_TYPE_LEAFGREEN, SPANISH },
    { 'IGPB', AGB_SET_FIRELEAF, AGB_TYPE_LEAFGREEN, ITALIAN },
    // Emerald
    { 'JEPB', AGB_SET_EMERALD, AGB_TYPE_EMERALD, JAPANESE },
    { 'EEPB', AGB_SET_EMERALD, AGB_TYPE_EMERALD, ENGLISH },
    { 'FEPB', AGB_SET_EMERALD, AGB_TYPE_EMERALD, FRENCH },
    { 'DEPB', AGB_SET_EMERALD, AGB_TYPE_EMERALD, GERMAN },
    { 'SEPB', AGB_SET_EMERALD, AGB_TYPE_EMERALD, SPANISH },
    { 'IEPB', AGB_SET_EMERALD, AGB_TYPE_EMERALD, ITALIAN }
};

static u8 Unk_ov97_0223EC04[] = {
    0x24,
    0xff,
    0xAE,
    0x51,
    0x69,
    0x9A,
    0xA2,
    0x21,
    0x3D,
    0x84,
    0x82,
    0xA,
    0x84,
    0xE4,
    0x9,
    0xAD,
    0x11,
    0x24,
    0x8B,
    0x98,
    0xC0,
    0x81,
    0x7f,
    0x21,
    0xA3,
    0x52,
    0xBE,
    0x19,
    0x93,
    0x9,
    0xCE,
    0x20,
    0x10,
    0x46,
    0x4A,
    0x4A,
    0xf8,
    0x27,
    0x31,
    0xEC,
    0x58,
    0xC7,
    0xE8,
    0x33,
    0x82,
    0xE3,
    0xCE,
    0xbf,
    0x85,
    0xf4,
    0xdf,
    0x94,
    0xCE,
    0x4B,
    0x9,
    0xC1,
    0x94,
    0x56,
    0x8A,
    0xC0,
    0x13,
    0x72,
    0xA7,
    0xfc,
    0x9f,
    0x84,
    0x4D,
    0x73,
    0xA3,
    0xCA,
    0x9A,
    0x61,
    0x58,
    0x97,
    0xA3,
    0x27,
    0xfc,
    0x3,
    0x98,
    0x76,
    0x23,
    0x1D,
    0xC7,
    0x61,
    0x3,
    0x4,
    0xAE,
    0x56,
    0xbf,
    0x38,
    0x84,
    0x0,
    0x40,
    0xA7,
    0xE,
    0xfd,
    0xff,
    0x52,
    0xfe,
    0x3,
    0x6f,
    0x95,
    0x30,
    0xf1,
    0x97,
    0xfb,
    0xC0,
    0x85,
    0x60,
    0xD6,
    0x80,
    0x25,
    0xA9,
    0x63,
    0xBE,
    0x3,
    0x1,
    0x4E,
    0x38,
    0xE2,
    0xf9,
    0xA2,
    0x34,
    0xff,
    0xBB,
    0x3E,
    0x3,
    0x44,
    0x78,
    0x0,
    0x90,
    0xCB,
    0x88,
    0x11,
    0x3A,
    0x94,
    0x65,
    0xC0,
    0x7C,
    0x63,
    0x87,
    0xf0,
    0x3C,
    0xaf,
    0xD6,
    0x25,
    0xE4,
    0x8B,
    0x38,
    0xA,
    0xAC,
    0x72,
    0x21,
    0xD4,
    0xf8,
    0x7
};
