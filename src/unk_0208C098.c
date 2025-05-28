#include "unk_0208C098.h"

#include <nitro.h>
#include <string.h>

#include "bg_window.h"
#include "heap.h"
#include "narc.h"
#include "screen_fade.h"
#include "system.h"

__attribute__((aligned(4))) static const u16 Unk_020F4030[] = {
    0x20,
    0x80,
    0x200,
    0x800,
    0x40,
    0x80,
    0x100,
    0x400,
    0x40,
    0x80,
    0x100,
    0x400
};

int sub_0208C098(int param0)
{
    param0 -= 0;
    return Unk_020F4030[param0];
}

u32 sub_0208C0A4(u32 param0, u32 param1)
{
    u32 v0 = (param0 * param0) + (param1 * param1);
    v0 = SVC_Sqrt(v0 << 4);

    return v0 >> 2;
}

u8 App_PixelCount(u32 cur, u32 max, u8 maxPixels)
{
    u8 pixels = cur * maxPixels / max;
    if (pixels == 0 && cur > 0) {
        pixels = 1;
    }

    return pixels;
}

u8 App_BarColor(u32 cur, u32 max)
{
    cur <<= 8;
    max <<= 8;

    if (cur > max / 2) {
        return BARCOLOR_GREEN;
    }

    if (cur > max / 5) {
        return BARCOLOR_YELLOW;
    }

    if (cur > 0) {
        return BARCOLOR_RED;
    }

    return BARCOLOR_EMPTY;
}

u8 HealthBar_Color(u16 curHP, u16 maxHP, u32 barSize)
{
    if (curHP == maxHP) {
        return BARCOLOR_MAX;
    }

    return App_BarColor(App_PixelCount(curHP, maxHP, barSize), barSize);
}

void sub_0208C120(u8 param0, u32 heapID)
{
    if (param0 == 0) {
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 6, 1, heapID);
    } else {
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_0, FADE_TYPE_UNK_0, FADE_TO_BLACK, 6, 1, heapID);
    }
}

u8 sub_0208C15C(s16 *param0, u16 param1)
{
    s16 v0 = *param0;

    if (gSystem.pressedKeysRepeatable & PAD_KEY_UP) {
        *param0 += 1;

        if (*param0 > param1) {
            *param0 = 1;
        }

        if (*param0 == v0) {
            return 0;
        }

        return 1;
    }

    if (gSystem.pressedKeysRepeatable & PAD_KEY_DOWN) {
        *param0 -= 1;

        if (*param0 <= 0) {
            *param0 = param1;
        }

        if (*param0 == v0) {
            return 0;
        }

        return 2;
    }

    if (gSystem.pressedKeysRepeatable & PAD_KEY_LEFT) {
        *param0 -= 10;

        if (*param0 <= 0) {
            *param0 = 1;
        }

        if (*param0 == v0) {
            return 0;
        }

        return 2;
    }

    if (gSystem.pressedKeysRepeatable & PAD_KEY_RIGHT) {
        *param0 += 10;

        if (*param0 > param1) {
            *param0 = param1;
        }

        if (*param0 == v0) {
            return 0;
        }

        return 1;
    }

    return 0;
}

void sub_0208C210(BgConfig *param0, int heapID, NARC *param2, int param3, int param4, int param5, int param6, u16 param7, u16 param8)
{
    u32 v0;
    void *v1;
    NNSG2dCharacterData *v2;
    NNSG2dScreenData *v3;
    NNSG2dPaletteData *v4;

    v0 = NARC_GetMemberSize(param2, param4);
    v1 = Heap_AllocFromHeapAtEnd(heapID, v0);

    NARC_ReadWholeMember(param2, param4, (void *)v1);

    switch (param6) {
    case 0:
        NNS_G2dGetUnpackedCharacterData(v1, &v2);

        if (param7 == 0) {
            param7 = v2->szByte;
        }

        Bg_LoadTiles(param0, param5, v2->pRawData, param7, param8);
        break;
    case 1:
        NNS_G2dGetUnpackedScreenData(v1, &v3);

        if (param7 == 0) {
            param7 = v3->szByte;
        }

        if (Bg_GetTilemapBuffer(param0, param5) != NULL) {
            Bg_LoadTilemapBuffer(param0, param5, v3->rawData, param7);
        }

        Bg_CopyTilemapBufferRangeToVRAM(param0, param5, v3->rawData, param7, param8);
        break;
    case 2:
        NNS_G2dGetUnpackedPaletteData(v1, &v4);

        if (param7 == 0) {
            param7 = v4->szByte;
        }

        Bg_LoadPalette(param5, v4->pRawData, param7, param8);
    }

    Heap_FreeToHeap(v1);
}

void *sub_0208C2F4(NARC *param0, int param1, int param2, NNSG2dScreenData **param3, int heapID)
{
    int v0;
    void *v1;

    v0 = NARC_GetMemberSize(param0, param2);
    v1 = Heap_AllocFromHeap(heapID, v0);

    NARC_ReadWholeMember(param0, param2, v1);
    NNS_G2dGetUnpackedScreenData(v1, param3);

    return v1;
}
