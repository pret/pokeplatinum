#include "overlay119/ov119_021D191C.h"

#include <nitro.h>
#include <string.h>

#include "overlay119/ov119_021D0D80.h"
#include "overlay119/struct_ov119_021D0FD0.h"
#include "overlay119/struct_ov119_021D1930.h"

#include "gx_layers.h"
#include "menu.h"
#include "palette.h"
#include "pltt_transfer.h"
#include "pokemon.h"
#include "pokemon_sprite.h"
#include "screen_fade.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_system.h"
#include "text.h"
#include "unk_02015F84.h"

static BOOL ov119_021D1930(UnkStruct_ov119_021D0FD0 *param0);
static BOOL ov119_021D1BD0(UnkStruct_ov119_021D0FD0 *param0);
static BOOL ov119_021D1E38(UnkStruct_ov119_021D0FD0 *param0);
static BOOL ov119_021D1E80(UnkStruct_ov119_021D0FD0 *param0);
static BOOL ov119_021D1EF0(UnkStruct_ov119_021D0FD0 *param0);
static BOOL ov119_021D1F48(UnkStruct_ov119_021D0FD0 *param0);
static BOOL ov119_021D1FAC(UnkStruct_ov119_021D0FD0 *param0);
static BOOL ov119_021D21BC(UnkStruct_ov119_021D0FD0 *param0);

static BOOL (*const Unk_ov119_021D26AC[])(UnkStruct_ov119_021D0FD0 *) = {
    ov119_021D1930,
    ov119_021D1BD0,
};

BOOL ov119_021D191C(UnkStruct_ov119_021D0FD0 *param0)
{
    BOOL v0 = Unk_ov119_021D26AC[param0->unk_5C](param0);
    return v0;
}

static BOOL ov119_021D1930(UnkStruct_ov119_021D0FD0 *param0)
{
    BOOL v0 = 1;

    switch (param0->unk_60) {
    case 0:
        ov119_021D1308(param0->unk_04.unk_00, param0->unk_04.unk_04);
        ov119_021D135C(param0->unk_04.unk_00, param0->unk_04.unk_04);

        ov119_021D1068(param0->unk_04.unk_00, param0->unk_04.unk_04, param0->unk_04.unk_10);
        ov119_021D10F0(param0->unk_04.unk_00, &param0->unk_04.unk_14[0], 1, 2, 19, 27, 4, ((20 + (18 + 12)) + 9), 14);

        ov119_021D1514(param0);
        ov119_021D161C(param0);

        ov119_021D1858(param0);
        ov119_021D190C(param0, 1);

        {
            UnkStruct_ov119_021D1930 v1;

            v1.heapID = HEAP_ID_71;
            v1.unk_04 = 0;

            param0->unk_04.unk_40 = ov119_021D14AC(&v1);
        }

        param0->unk_60++;
        break;
    case 1:
        ov119_021D1028();
        param0->unk_60++;
    case 2:
        if (IsScreenFadeDone() == TRUE) {
            Sound_StopWaveOutAndSequences();
            Sound_SetSceneAndPlayBGM(SOUND_SCENE_13, SEQ_SHINKA, 1);
            param0->unk_60++;
        }
        break;
    case 3: {
        BOOL v2;

        v2 = ov119_021D1E38(param0);

        if (v2 == 0) {
            param0->unk_60++;
        }
    } break;
    case 4: {
        BOOL v3;

        v3 = ov119_021D1E80(param0);

        if (v3 == 0) {
            param0->unk_60++;
        }
    } break;
    case 5: {
        BOOL v4;

        v4 = ov119_021D1EF0(param0);

        if (v4 == 0) {
            param0->unk_60++;
        }
    } break;
    case 6: {
        BOOL v5;

        v5 = ov119_021D1F48(param0);

        if (v5 == 0) {
            param0->unk_60++;
        }
    } break;
    case 7: {
        BOOL v6;

        v6 = ov119_021D1FAC(param0);

        if (v6 == 0) {
            ov119_021D18C0(param0);
            {
                int species = Pokemon_GetValue(param0->unk_00->unk_0C.unk_00, MON_DATA_SPECIES, NULL);
                int form = Pokemon_GetValue(param0->unk_00->unk_0C.unk_00, MON_DATA_FORM, NULL);
                Sound_PlayPokemonCry(species, form);
                param0->unk_04.unk_08 = ov119_021D1158(&param0->unk_04.unk_14[0], 0, param0->unk_00->unk_0C.unk_00, param0->unk_04.unk_0C);
            }
            param0->unk_60++;
        }
    } break;
    case 8:
        if (Sound_IsPokemonCryPlaying() != 0) {
            break;
        }

        Sound_PlayFanfare(SEQ_FANFA5);
        param0->unk_60++;
    case 9:
        if (Sound_IsBGMPausedByFanfare() != 0) {
            break;
        }

        param0->unk_60++;
    case 10:
        if (Text_IsPrinterActive(param0->unk_04.unk_08) != 0) {
            break;
        }

        param0->unk_04.unk_08 = ov119_021D1158(&param0->unk_04.unk_14[0], 1, param0->unk_00->unk_0C.unk_00, param0->unk_04.unk_0C);
        param0->unk_60++;
    case 11:
        if (Text_IsPrinterActive(param0->unk_04.unk_08) != 0) {
            break;
        }

        if (sub_020160F4(param0->unk_04.unk_54, 0) != 1) {
            break;
        }

        if (PokemonSprite_IsAnimActive(param0->unk_70) != 0) {
            break;
        }

        ov119_021D11E4(param0, param0->unk_04.unk_00, &param0->unk_04.unk_14[1], 1, 25, 13, 6, 4, (((20 + (18 + 12)) + 9) + (27 * 4)), 14);
        param0->unk_60++;
        break;
    case 12: {
        u32 v9 = Menu_ProcessInput(param0->unk_04.unk_48);

        switch (v9) {
        case 0xfffffffe:
            param0->unk_00->unk_04 = 0;
            param0->unk_60++;
            break;
        case 0xffffffff:
            break;
        default:
            if (v9 == 0) {
                param0->unk_00->unk_04 = 1;
            } else {
                param0->unk_00->unk_04 = 0;
            }

            param0->unk_60++;
            break;
        }
    } break;
    case 13:
        ov119_021D12CC(param0);
        param0->unk_60++;
        break;
    case 14:
        param0->unk_60++;
        break;
    case 15:
        ov119_021D1048();
        param0->unk_60++;
    case 16:
        if (IsScreenFadeDone() == TRUE) {
            param0->unk_60++;
        }
        break;
    case 17:
    default:
        ov119_021D1900(param0);
        ov119_021D17A0(param0);
        ov119_021D12F8(&param0->unk_04.unk_14[0]);
        ov119_021D145C(param0->unk_04.unk_40->unk_0C);
        ov119_021D150C(param0->unk_04.unk_40);
        v0 = 0;
        break;
    }

    SpriteSystem_DrawSprites(param0->unk_04.unk_4C);

    return v0;
}

static BOOL ov119_021D1BD0(UnkStruct_ov119_021D0FD0 *param0)
{
    BOOL v0 = 1;

    switch (param0->unk_60) {
    case 0:
        ov119_021D1308(param0->unk_04.unk_00, param0->unk_04.unk_04);
        ov119_021D135C(param0->unk_04.unk_00, param0->unk_04.unk_04);

        ov119_021D1068(param0->unk_04.unk_00, param0->unk_04.unk_04, param0->unk_04.unk_10);
        ov119_021D10F0(param0->unk_04.unk_00, &param0->unk_04.unk_14[0], 1, 2, 19, 27, 4, ((20 + (18 + 12)) + 9), 14);

        ov119_021D1514(param0);
        ov119_021D161C(param0);

        ManagedSprite_SetDrawFlag(param0->unk_74, 0);

        ov119_021D1858(param0);
        ov119_021D190C(param0, 1);

        {
            UnkStruct_ov119_021D1930 v1;

            v1.heapID = HEAP_ID_71;
            v1.unk_04 = 1;
            param0->unk_04.unk_40 = ov119_021D14AC(&v1);
        }

        param0->unk_60++;
        break;
    case 1:
        ov119_021D1028();
        param0->unk_60++;
    case 2:
        if (IsScreenFadeDone() == TRUE) {
            Sound_SetSceneAndPlayBGM(SOUND_SCENE_13, SEQ_SHINKA, 1);
            param0->unk_60++;
        }
        break;
    case 3: {
        BOOL v2;

        v2 = ov119_021D21BC(param0);

        if (v2 == 0) {
            ov119_021D18C0(param0);
            {
                int species = Pokemon_GetValue(param0->unk_00->unk_0C.unk_00, MON_DATA_SPECIES, NULL);
                int form = Pokemon_GetValue(param0->unk_00->unk_0C.unk_00, MON_DATA_FORM, NULL);
                Sound_PlayPokemonCry(species, form);
                param0->unk_04.unk_08 = ov119_021D1158(&param0->unk_04.unk_14[0], 0, param0->unk_00->unk_0C.unk_00, param0->unk_04.unk_0C);
            }

            param0->unk_60 = 8;
        }
    } break;
    case 4:
    case 5:
    case 6:
    case 7:
        GF_ASSERT(0);
        break;
    case 8:
        if (Sound_IsPokemonCryPlaying() != 0) {
            break;
        }

        Sound_PlayFanfare(SEQ_FANFA5);
        param0->unk_60++;
    case 9:
        if (Sound_IsBGMPausedByFanfare() != 0) {
            break;
        }

        param0->unk_60++;
    case 10:
        if (Text_IsPrinterActive(param0->unk_04.unk_08) != 0) {
            break;
        }

        param0->unk_04.unk_08 = ov119_021D1158(&param0->unk_04.unk_14[0], 1, param0->unk_00->unk_0C.unk_00, param0->unk_04.unk_0C);
        param0->unk_60++;
    case 11:
        if (Text_IsPrinterActive(param0->unk_04.unk_08) != 0) {
            break;
        }

        if (sub_020160F4(param0->unk_04.unk_54, 0) != 1) {
            break;
        }

        if (PokemonSprite_IsAnimActive(param0->unk_70) != 0) {
            break;
        }

        ov119_021D11E4(param0, param0->unk_04.unk_00, &param0->unk_04.unk_14[1], 1, 25, 13, 6, 4, (((20 + (18 + 12)) + 9) + (27 * 4)), 14);
        param0->unk_60++;
        break;
    case 12: {
        u32 v5 = Menu_ProcessInput(param0->unk_04.unk_48);

        switch (v5) {
        case 0xfffffffe:
            param0->unk_00->unk_04 = 0;
            param0->unk_60++;
            break;
        case 0xffffffff:
            break;
        default:
            if (v5 == 0) {
                param0->unk_00->unk_04 = 1;
            } else {
                param0->unk_00->unk_04 = 0;
            }

            param0->unk_60++;
            break;
        }
    } break;
    case 13:
        ov119_021D12CC(param0);
        param0->unk_60++;
        break;
    case 14:
        param0->unk_60++;
        break;
    case 15:
        ov119_021D1048();
        param0->unk_60++;
    case 16:
        if (IsScreenFadeDone() == TRUE) {
            param0->unk_60++;
        }
        break;
    case 17:
    default:
        ov119_021D1900(param0);
        ov119_021D17A0(param0);
        ov119_021D12F8(&param0->unk_04.unk_14[0]);
        ov119_021D145C(param0->unk_04.unk_40->unk_0C);
        ov119_021D150C(param0->unk_04.unk_40);
        v0 = 0;
        break;
    }

    SpriteSystem_DrawSprites(param0->unk_04.unk_4C);

    return v0;
}

static BOOL ov119_021D1E38(UnkStruct_ov119_021D0FD0 *param0)
{
    switch (param0->unk_68) {
    case 0:
        ManagedSprite_SetAnimationFrame(param0->unk_74, 0);
        param0->unk_68++;
        break;
    case 1:
        if ((++param0->unk_64) >= 25) {
            Sound_PlayEffect(SEQ_SE_DP_EGG01);

            param0->unk_68++;
        }
        break;
    default:
        param0->unk_68 = 0;
        param0->unk_64 = 0;
        return 0;
    }

    return 1;
}

static BOOL ov119_021D1E80(UnkStruct_ov119_021D0FD0 *param0)
{
    switch (param0->unk_68) {
    case 0:
        if (ov119_021D14F8(param0->unk_04.unk_40) == 1) {
            break;
        }

        ManagedSprite_SetAnimationFrame(param0->unk_74, 1);
        param0->unk_68++;
        break;
    case 1: {
        int v0;

        v0 = ov119_021D176C(param0, 0);

        if (v0 == 2) {
            Sound_PlayEffect(SEQ_SE_DP_EGG01);

            ManagedSprite_SetAnimationFrame(param0->unk_74, 2);
            param0->unk_68++;
            param0->unk_64 = 0;
        }
    } break;
    default: {
        int v1;

        v1 = ov119_021D176C(param0, 0);

        if (v1 == 2) {
            ManagedSprite_SetAnimationFrame(param0->unk_74, 2);
            param0->unk_68 = 0;
            param0->unk_64 = 0;
            return 0;
        }
    } break;
    }

    return 1;
}

static BOOL ov119_021D1EF0(UnkStruct_ov119_021D0FD0 *param0)
{
    switch (param0->unk_68) {
    case 0:
        param0->unk_68++;
        break;
    case 1: {
        int v0;

        v0 = ov119_021D176C(param0, 1);

        if (v0 == 1) {
            Sound_PlayEffect(SEQ_SE_DP_EGG01);
            ManagedSprite_SetAnimationFrame(param0->unk_74, 3);
            ov119_021D14DC(param0->unk_04.unk_40, 0);
        }

        if (v0 == 2) {
            param0->unk_64 = 0;
            param0->unk_68++;
        }
    } break;
    default:
        param0->unk_68 = 0;
        param0->unk_64 = 0;
        return 0;
    }

    return 1;
}

static BOOL ov119_021D1F48(UnkStruct_ov119_021D0FD0 *param0)
{
    switch (param0->unk_68) {
    case 0:
        if (ov119_021D14F8(param0->unk_04.unk_40) == 1) {
            break;
        }

        param0->unk_68++;
        break;
    case 1: {
        int v0;

        v0 = ov119_021D176C(param0, 2);

        if (v0 == 1) {
            Sound_PlayEffect(SEQ_SE_DP_EGG01);

            ManagedSprite_SetAnimationFrame(param0->unk_74, 4);
            ov119_021D14DC(param0->unk_04.unk_40, 1);
        }

        if (v0 == 2) {
            param0->unk_64 = 0;
            param0->unk_68++;
        }
    } break;
    default:
        param0->unk_68 = 0;
        param0->unk_64 = 0;
        return 0;
    }

    return 1;
}

static BOOL ov119_021D1FAC(UnkStruct_ov119_021D0FD0 *param0)
{
    switch (param0->unk_68) {
    case 0:
        if (ov119_021D14F8(param0->unk_04.unk_40) == 1) {
            break;
        }

        ManagedSprite_SetAnimationFrame(param0->unk_74, 4);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
        param0->unk_68++;
        break;
    case 1: {
        int v0;

        v0 = ov119_021D176C(param0, 3);

        if (v0 == 1) {
            ManagedSprite_SetAnimationFrame(param0->unk_74, 5);
            Sound_PlayEffect(SEQ_SE_DP_BOWA3);
            ov119_021D14DC(param0->unk_04.unk_40, 2);
            ov119_021D14DC(param0->unk_04.unk_40, 3);
        }

        if (v0 == 2) {
            ManagedSprite_SetDrawFlag(param0->unk_74, 0);
            param0->unk_64 = 0;
            param0->unk_68++;
        }
    } break;
    case 2:
        if ((++param0->unk_64) >= 10) {
            param0->unk_64 = 0;

            PaletteData_StartFade(param0->unk_04.unk_04, 0x1, 0xFFFF, 0, 0, 16, 0xFFFF);

            {
                NNSG2dImagePaletteProxy *v1;
                int v2;

                v1 = Sprite_GetPaletteProxy(param0->unk_78->sprite);
                v2 = PlttTransfer_GetPlttOffset(v1, NNS_G2D_VRAM_TYPE_2DMAIN);

                PaletteData_StartFade(param0->unk_04.unk_04, 0x4, 0xFFFF ^ (1 << v2), 0, 0, 16, 0xFFFF);
            }

            PokemonSprite_StartFade(param0->unk_70, 0, 16, 0, 0xFFFF);
            param0->unk_68++;
        }
        break;
    case 3: {
        s16 v3, v4;
        int v5 = 0;

        ManagedSprite_GetPositionXY(param0->unk_78, &v3, &v4);

        if (v4 > -48) {
            ManagedSprite_OffsetPositionXY(param0->unk_78, 0, -4);
        } else {
            v5++;
        }

        ManagedSprite_GetPositionXY(param0->unk_7C, &v3, &v4);

        if (v4 < 192) {
            ManagedSprite_OffsetPositionXY(param0->unk_7C, 0, +4);
        } else {
            v5++;
        }

        if ((PaletteData_GetSelectedBuffersMask(param0->unk_04.unk_04) != 0) || (v5 != 2) || (PokemonSprite_IsFadeActive(param0->unk_70) != 0)) {
            break;
        }

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
        ov119_021D190C(param0, 0);
        ManagedSprite_SetDrawFlag(param0->unk_74, 0);
        ManagedSprite_SetDrawFlag(param0->unk_78, 0);
        ManagedSprite_SetDrawFlag(param0->unk_7C, 0);

        param0->unk_68++;
    } break;
    case 4:
        if ((++param0->unk_64) >= 25) {
            param0->unk_64 = 0;

            PokemonSprite_StartFade(param0->unk_70, 16, 0, 0, 0xFFFF);
            PaletteData_StartFade(param0->unk_04.unk_04, 0x1, 0xFFFF, 0, 16, 0, 0xFFFF);
            PaletteData_StartFade(param0->unk_04.unk_04, 0x4, 0xFFFF, 0, 16, 0, 0xFFFF);

            param0->unk_68++;
        }
        break;
    case 5:
        if ((PaletteData_GetSelectedBuffersMask(param0->unk_04.unk_04) != 0) || (PokemonSprite_IsFadeActive(param0->unk_70) != 0)) {
            break;
        }

        param0->unk_68++;
        break;
    default:
        if (ov119_021D14F8(param0->unk_04.unk_40) == 1) {
            break;
        }

        param0->unk_68 = 0;
        param0->unk_64 = 0;

        return 0;
    }

    return 1;
}

static BOOL ov119_021D21BC(UnkStruct_ov119_021D0FD0 *param0)
{
    switch (param0->unk_68) {
    case 0:
        ov119_021D14DC(param0->unk_04.unk_40, 0);
        ov119_021D14DC(param0->unk_04.unk_40, 1);
        ov119_021D14DC(param0->unk_04.unk_40, 2);
        ov119_021D14DC(param0->unk_04.unk_40, 3);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
        param0->unk_68++;
        break;
    case 1:
        switch (param0->unk_64) {
        case 25:
            Sound_PlayEffect(SEQ_SE_DP_W278);
            break;
        case 80:
            Sound_PlayEffect(SEQ_SE_DP_W080C);
            break;
        case 142:
            Sound_PlayEffect(SEQ_SE_DP_W361);
            break;
        }

        if ((++param0->unk_64) >= 160) {
            param0->unk_64 = 0;
            PaletteData_StartFade(param0->unk_04.unk_04, 0x1, 0xFFFF, 0, 0, 16, 0xFFFF);

            {
                NNSG2dImagePaletteProxy *v0;
                int v1;

                v0 = Sprite_GetPaletteProxy(param0->unk_78->sprite);
                v1 = PlttTransfer_GetPlttOffset(v0, NNS_G2D_VRAM_TYPE_2DMAIN);

                PaletteData_StartFade(param0->unk_04.unk_04, 0x4, 0xFFFF ^ (1 << v1), 0, 0, 16, 0xFFFF);
            }

            PokemonSprite_StartFade(param0->unk_70, 0, 16, 0, 0xFFFF);
            param0->unk_68++;
        }
        break;
    case 2: {
        s16 v2, v3;
        int v4 = 0;

        ManagedSprite_GetPositionXY(param0->unk_78, &v2, &v3);

        if (v3 > -48) {
            ManagedSprite_OffsetPositionXY(param0->unk_78, 0, -4);
        } else {
            v4++;
        }

        ManagedSprite_GetPositionXY(param0->unk_7C, &v2, &v3);

        if (v3 < 192) {
            ManagedSprite_OffsetPositionXY(param0->unk_7C, 0, +4);
        } else {
            v4++;
        }

        if ((PaletteData_GetSelectedBuffersMask(param0->unk_04.unk_04) != 0) || (v4 != 2) || (PokemonSprite_IsFadeActive(param0->unk_70) != 0)) {
            break;
        }

        ov119_021D190C(param0, 0);

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
        ManagedSprite_SetDrawFlag(param0->unk_74, 0);
        ManagedSprite_SetDrawFlag(param0->unk_78, 0);
        ManagedSprite_SetDrawFlag(param0->unk_7C, 0);

        param0->unk_68++;
    } break;
    case 3:
        if ((++param0->unk_64) >= 25) {
            param0->unk_64 = 0;

            PokemonSprite_StartFade(param0->unk_70, 16, 0, 0, 0xFFFF);
            PaletteData_StartFade(param0->unk_04.unk_04, 0x1, 0xFFFF, 0, 16, 0, 0xFFFF);
            PaletteData_StartFade(param0->unk_04.unk_04, 0x4, 0xFFFF, 0, 16, 0, 0xFFFF);

            param0->unk_68++;
        }
        break;
    case 4:
        if ((PaletteData_GetSelectedBuffersMask(param0->unk_04.unk_04) != 0) || (PokemonSprite_IsFadeActive(param0->unk_70) != 0)) {
            break;
        }

        param0->unk_68++;
        break;
    default:
        param0->unk_68 = 0;
        param0->unk_64 = 0;
        return 0;
    }

    return 1;
}
