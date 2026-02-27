#include "unk_02097B18.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0202440C_decl.h"
#include "struct_defs/seal_case.h"
#include "struct_defs/struct_02097F18.h"

#include "applications/party_menu/defs.h"
#include "applications/party_menu/main.h"
#include "field/field_system.h"
#include "overlay076/ov76_0223B140.h"
#include "overlay076/ov76_0223B870.h"
#include "overlay076/ov76_0223D338.h"
#include "overlay076/struct_ov76_0223DE00.h"
#include "savedata/save_table.h"

#include "bag.h"
#include "bg_window.h"
#include "field_task.h"
#include "field_transition.h"
#include "g3d_pipeline.h"
#include "game_options.h"
#include "game_overlay.h"
#include "gx_layers.h"
#include "heap.h"
#include "mail.h"
#include "narc.h"
#include "overlay_manager.h"
#include "palette.h"
#include "party.h"
#include "pokemon.h"
#include "pokemon_anim.h"
#include "pokemon_sprite.h"
#include "save_player.h"
#include "savedata.h"
#include "screen_fade.h"
#include "sound.h"
#include "system.h"
#include "touch_pad.h"
#include "touch_screen_actions.h"
#include "tv_episode_segment.h"
#include "unk_0202C9F4.h"
#include "vram_transfer.h"

#include "constdata/const_020F64C0.h"

FS_EXTERN_OVERLAY(overlay11);
FS_EXTERN_OVERLAY(battle_anim);
FS_EXTERN_OVERLAY(overlay76);

typedef struct {
    int unk_00;
} UnkStruct_02097F38_sub1;

typedef struct {
    UnkStruct_ov76_0223DE00 *unk_00;
    UnkStruct_02097F38_sub1 *unk_04;
    UnkStruct_02097F18 *unk_08;
    PartyMenu *partyMenu;
    SaveData *saveData;
    int unk_14;
} UnkStruct_02097F38;

static int sub_02097B18(ApplicationManager *appMan, int *param1);
static int sub_02097D30(ApplicationManager *appMan, int *param1);
static int sub_02097D88(ApplicationManager *appMan, int *param1);

const ApplicationManagerTemplate Unk_020F64C0 = {
    sub_02097B18,
    sub_02097D30,
    sub_02097D88,
    FS_OVERLAY_ID(overlay76),
};

static int sub_02097B18(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov76_0223DE00 *v0;
    UnkStruct_02097F18 *v1;

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_53, 0x80000);
    ov76_0223EB20(53);
    ov76_0223D3A0();

    v0 = ApplicationManager_NewData(appMan, sizeof(UnkStruct_ov76_0223DE00), HEAP_ID_53);
    memset(v0, 0, sizeof(UnkStruct_ov76_0223DE00));

    v0->unk_D4.unk_15C = ov76_0223BE6C();
    v1 = ApplicationManager_Args(appMan);
    v0->unk_00 = v1;
    v0->unk_42C = NARC_ctor(NARC_INDEX_POKETOOL__POKE_EDIT__PL_POKE_DATA, HEAP_ID_53);
    v0->unk_428 = Pokemon_New(HEAP_ID_53);
    v0->unk_D4.unk_00 = 0xFF;
    v0->unk_418.unk_00 = 0;

    {
        int v2 = 0;
        int v3;

        v3 = (SealCase_CountUniqueSeals(v0->unk_00->unk_20));

        if (v3 % 8) {
            v2 = 1;
        }

        v0->unk_418.unk_04 = (SealCase_CountUniqueSeals(v0->unk_00->unk_20) / 8) + v2;
    }

    if (v0->unk_418.unk_04 > (SEAL_ID_MAX / 8)) {
        v0->unk_418.unk_04 = (SEAL_ID_MAX / 8);
    }

    v0->unk_3C4[0] = sub_02097F18(v0->unk_00);
    v0->unk_3C4[1] = sub_02097F18(v0->unk_00);

    {
        int i;
        int capsuleId;
        BallCapsule *capsule;

        v0->unk_64 = SealCase_GetSealsObtained(v0->unk_00->unk_20);

        for (i = 0; i < TOTAL_CAPSULES; i++) {
            capsule = SealCase_GetCapsuleById(v0->unk_00->unk_20, i);
            v0->unk_04[i].unk_00 = 0xff;
            v0->unk_04[i].unk_04 = capsule;
        }

        for (i = 0; i < 6; i++) {
            if (v0->unk_00->unk_04[i] == NULL) {
                continue;
            }

            capsuleId = Pokemon_GetValue(v0->unk_00->unk_04[i], MON_DATA_BALL_CAPSULE_ID, 0);

            if (capsuleId != 0) {
                v0->unk_04[capsuleId - 1].unk_00 = i;
            }
        }
    }

    v0->unk_D4.unk_10 = BgConfig_New(HEAP_ID_53);
    VramTransfer_New(64, HEAP_ID_53);
    v0->unk_D4.unk_14 = PaletteData_New(HEAP_ID_53);
    PaletteData_SetAutoTransparent(v0->unk_D4.unk_14, 1);
    PaletteData_AllocBuffer(v0->unk_D4.unk_14, 0, 0x200, HEAP_ID_53);
    PaletteData_AllocBuffer(v0->unk_D4.unk_14, 1, 0x200, HEAP_ID_53);
    PaletteData_AllocBuffer(v0->unk_D4.unk_14, 2, 0x200, HEAP_ID_53);
    PaletteData_AllocBuffer(v0->unk_D4.unk_14, 3, 0x200, HEAP_ID_53);

    ov76_0223EB64(v0->unk_D4.unk_10);
    ov76_0223BF10();

    v0->unk_D4.unk_D0 = PokemonSpriteManager_New(HEAP_ID_53);
    v0->unk_D4.unk_188 = PokemonAnimManager_New(HEAP_ID_53, 1, FALSE);

    int v7 = Options_Frame(v0->unk_00->options);
    ov76_0223C8EC(v0->unk_D4.unk_10, v0->unk_D4.unk_14, v7);
    ov76_0223C974(v0->unk_D4.unk_10, v0->unk_D4.unk_14, v7);

    ov76_0223C398(&v0->unk_D4);

    {
        u32 v8;

        EnableTouchPad();
        v8 = InitializeTouchPad(4);

        if (v8 != 1) {
            (void)0;
        }
    }

    ov76_0223DCC0(v0);
    SetVBlankCallback(ov76_0223ECB0, v0);
    ov76_0223B8A8(v0);
    Sound_SetSceneAndPlayBGM(SOUND_SCENE_SUB_59, SEQ_NONE, 0);

    return 1;
}

static int sub_02097D30(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov76_0223DE00 *v0 = ApplicationManager_Data(appMan);

    switch (*param1) {
    case 0:
        if (IsScreenFadeDone() == TRUE) {
            *param1 = 1;
        }
        break;
    case 1: {
        BOOL v1 = ov76_0223D550(v0);

        if (v1 == 0) {
            *param1 = 2;
            break;
        }

        PokemonSpriteManager_DrawSprites(v0->unk_D4.unk_D0);
        ov76_0223BF50();
    } break;
    case 2:
        if (IsScreenFadeDone() == TRUE) {
            return 1;
        }
        break;
    }

    return 0;
}

static int sub_02097D88(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov76_0223DE00 *v0 = ApplicationManager_Data(appMan);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 0);
    Bg_FreeTilemapBuffer(v0->unk_D4.unk_10, 1);
    Bg_FreeTilemapBuffer(v0->unk_D4.unk_10, 2);
    Bg_FreeTilemapBuffer(v0->unk_D4.unk_10, 3);
    Bg_FreeTilemapBuffer(v0->unk_D4.unk_10, 4);
    Bg_FreeTilemapBuffer(v0->unk_D4.unk_10, 5);
    Bg_FreeTilemapBuffer(v0->unk_D4.unk_10, 6);
    Bg_FreeTilemapBuffer(v0->unk_D4.unk_10, 7);
    Heap_Free(v0->unk_D4.unk_10);
    PaletteData_FreeBuffer(v0->unk_D4.unk_14, 0);
    PaletteData_FreeBuffer(v0->unk_D4.unk_14, 1);
    PaletteData_FreeBuffer(v0->unk_D4.unk_14, 2);
    PaletteData_FreeBuffer(v0->unk_D4.unk_14, 3);
    PaletteData_Free(v0->unk_D4.unk_14);
    sub_02097F20(v0->unk_00, v0->unk_3C4[0]);
    Heap_Free(v0->unk_428);
    ov76_0223B678(v0);
    TouchScreenActions_Free(v0->unk_D4.unk_F8);
    PokemonSpriteManager_Free(v0->unk_D4.unk_D0);
    PokemonAnimManager_Free(v0->unk_D4.unk_188);
    ov76_0223B8C4(v0);
    ov76_0223C424(&v0->unk_D4);
    VramTransfer_Free();
    G3DPipelineBuffers_Free(v0->unk_D4.unk_15C);
    ov76_0223EB54(53);
    NARC_dtor(v0->unk_42C);
    ApplicationManager_FreeData(appMan);

    {
        u32 v1;

        v1 = DisableTouchPad();

        if (v1 != 1) {
            (void)0;
        }
    }

    Heap_Destroy(HEAP_ID_53);
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay11));
    Overlay_UnloadByID(FS_OVERLAY_ID(battle_anim));

    return 1;
}

Pokemon *sub_02097F00(UnkStruct_02097F18 *param0, int param1)
{
    int v0 = param1;

    if (param0->unk_00 < v0) {
        GF_ASSERT(0);
        v0 = 0;
    }

    return param0->unk_04[v0];
}

u8 sub_02097F18(UnkStruct_02097F18 *param0)
{
    return param0->unk_2C;
}

void sub_02097F20(UnkStruct_02097F18 *param0, u8 param1)
{
    param0->unk_2C = param1;
}

u8 sub_02097F28(UnkStruct_02097F18 *param0)
{
    return param0->unk_2D;
}

void sub_02097F30(UnkStruct_02097F18 *param0, u8 param1)
{
    param0->unk_2D = param1;
}

static BOOL sub_02097F38(FieldTask *param0)
{
    UnkStruct_02097F38 *v0 = FieldTask_GetEnv(param0);
    UnkStruct_02097F18 *v1 = v0->unk_08;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);

    switch (v0->unk_14) {
    case 0:

        FieldTransition_FinishMap(param0);
        v1->unk_20 = SaveData_GetSealCase(v0->saveData);
        sub_02097F20(v1, 0);

        {
            int v3;
            int v4;

            v1->unk_1C = SaveData_GetParty(v0->saveData);
            v4 = Party_GetCurrentCount(v1->unk_1C);
            v1->unk_00 = v4;

            for (v3 = 0; v3 < v4; v3++) {
                v1->unk_04[v3] = Party_GetPokemonBySlotIndex(v1->unk_1C, v3);
            }

            for (; v3 < 6; v3++) {
                v1->unk_04[v3] = NULL;
            }
        }
        v0->unk_14 = 1;
        break;
    case 1:
        FieldTask_RunApplication(param0, &Unk_020F64C0, v1);
        v0->unk_14 = 2;
        break;
    case 2: {
        u8 v5;

        v5 = sub_02097F28(v0->unk_08);

        switch (v5) {
        default:
            GF_ASSERT(0);
        case 0:
            v0->unk_14 = 5;
            break;

        case 1:
            v0->unk_14 = 3;
            break;
        }
    } break;
    case 3: {
        PartyMenu *partyMenu = v0->partyMenu;

        partyMenu->party = v1->unk_1C;
        partyMenu->bag = SaveData_GetBag(v0->saveData);
        partyMenu->mailbox = SaveData_GetMailbox(v0->saveData);
        partyMenu->selectedMonSlot = 0;
        partyMenu->type = PARTY_MENU_TYPE_BASIC;
        partyMenu->mode = PARTY_MENU_MODE_BALL_SEAL;
        partyMenu->options = v1->options;

        FieldTask_RunApplication(param0, &gPokemonPartyAppTemplate, partyMenu);
        v0->unk_14 = 4;
    } break;
    case 4: {
        PartyMenu *partyMenu = v0->partyMenu;
        Pokemon *v8;
        BallCapsule *v9;
        BallSeal *v10;
        TVBroadcast *broadcast;
        int v12;
        int v13;

        v13 = sub_02097F18(v0->unk_08) + 1;

        if (partyMenu->selectedMonSlot != 7) {
            v8 = sub_02097F00(v0->unk_08, partyMenu->selectedMonSlot);

            Pokemon_SetValue(v8, MON_DATA_BALL_CAPSULE_ID, (u8 *)&v13);
            Pokemon_SetValue(v8, MON_DATA_BALL_CAPSULE, SealCase_GetCapsuleById(v1->unk_20, v13 - 1));

            v9 = SealCase_GetCapsuleById(v1->unk_20, v13 - 1);
            v10 = BallCapsule_GetBallSeals(v9, 0);
            v12 = BallSeal_GetSealType(v10);
            v12 = sub_02098164(v12);
            broadcast = SaveData_GetTVBroadcast(fieldSystem->saveData);

            FieldSystem_SaveTVEpisodeSegment_SealClubShow(broadcast, v8, v12);
        }
    }
        v0->unk_14 = 1;
        break;
    case 5:
        FieldTransition_StartMap(param0);
        v0->unk_14 = 6;
        break;
    case 6:
        Heap_Free(v0->partyMenu);
        Heap_Free(v0->unk_08);
        Heap_Free(v0);
        return 1;
    }

    return 0;
}

void sub_020980DC(FieldTask *param0, SaveData *saveData)
{
    UnkStruct_02097F38 *v0 = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(UnkStruct_02097F38));

    memset(v0, 0, sizeof(UnkStruct_02097F38));
    v0->saveData = saveData;
    v0->unk_08 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(UnkStruct_02097F18));
    memset(v0->unk_08, 0, sizeof(UnkStruct_02097F18));
    v0->unk_08->options = SaveData_GetOptions(saveData);
    v0->unk_08->saveData = saveData;
    v0->partyMenu = Heap_Alloc(HEAP_ID_FIELD2, sizeof(PartyMenu));
    memset(v0->partyMenu, 0, sizeof(PartyMenu));

    FieldTask_InitCall(param0, sub_02097F38, v0);
}

typedef struct {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u8 unk_05;
    u16 unk_06;
    u8 unk_08;
} UnkStruct_020F64D0;

static const UnkStruct_020F64D0 Unk_020F64D0[SEAL_ID_MAX] = {
    { 0xB8, 0x0, 0x125, 0x25, 0x0, 0x3E7, 0x0 },
    { 0xB9, 0x1, 0x125, 0x25, 0x0, 0x32, 0x0 },
    { 0xBA, 0x2, 0x125, 0x26, 0x0, 0x32, 0x1 },
    { 0xBB, 0x3, 0x125, 0x27, 0x0, 0x32, 0x2 },
    { 0xBC, 0x4, 0x125, 0x28, 0x0, 0x32, 0x3 },
    { 0xBD, 0x5, 0x125, 0x29, 0x0, 0x64, 0x4 },
    { 0xBE, 0x6, 0x125, 0x2A, 0x0, 0x64, 0x5 },
    { 0xC0, 0x7, 0x125, 0x2B, 0x0, 0x32, 0x6 },
    { 0xBF, 0x8, 0x125, 0x2C, 0x0, 0x32, 0x7 },
    { 0xC2, 0x9, 0x125, 0x2D, 0x0, 0x32, 0x8 },
    { 0xC1, 0xA, 0x125, 0x2E, 0x0, 0x32, 0x9 },
    { 0xC4, 0xB, 0x125, 0x2F, 0x0, 0x64, 0xA },
    { 0xC3, 0xC, 0x125, 0x30, 0x0, 0x64, 0xB },
    { 0xC5, 0xD, 0x125, 0x31, 0x0, 0x64, 0xC },
    { 0xC6, 0xE, 0x125, 0x32, 0x0, 0x64, 0xD },
    { 0xC7, 0xF, 0x125, 0x33, 0x0, 0x64, 0xE },
    { 0xC8, 0x4D, 0x125, 0x34, 0x0, 0x64, 0xF },
    { 0xC9, 0x10, 0x125, 0x39, 0x0, 0x64, 0x10 },
    { 0xCA, 0x11, 0x125, 0x3A, 0x0, 0x64, 0x11 },
    { 0xCB, 0x12, 0x125, 0x3B, 0x0, 0x64, 0x12 },
    { 0xCC, 0x13, 0x125, 0x3C, 0x0, 0x64, 0x13 },
    { 0xCD, 0x14, 0x125, 0x35, 0x0, 0x64, 0x14 },
    { 0xCE, 0x15, 0x125, 0x36, 0x0, 0x64, 0x15 },
    { 0xCF, 0x16, 0x125, 0x37, 0x0, 0x64, 0x16 },
    { 0xD0, 0x17, 0x125, 0x38, 0x0, 0x64, 0x17 },
    { 0xD1, 0x18, 0x125, 0x3D, 0x0, 0x32, 0x18 },
    { 0xD2, 0x19, 0x125, 0x3E, 0x0, 0x32, 0x19 },
    { 0xD3, 0x1A, 0x125, 0x3F, 0x0, 0x32, 0x1A },
    { 0xD4, 0x1B, 0x125, 0x40, 0x0, 0x32, 0x1B },
    { 0xD6, 0x1C, 0x125, 0x41, 0x0, 0x32, 0x1C },
    { 0xD5, 0x1D, 0x125, 0x42, 0x0, 0x32, 0x1D },
    { 0xD8, 0x1E, 0x125, 0x43, 0x0, 0x32, 0x1E },
    { 0xD7, 0x1F, 0x125, 0x44, 0x0, 0x32, 0x1F },
    { 0xD9, 0x20, 0x125, 0x45, 0x0, 0x32, 0x20 },
    { 0xDA, 0x21, 0x125, 0x46, 0x0, 0x32, 0x21 },
    { 0xDB, 0x22, 0x125, 0x47, 0x0, 0x64, 0x22 },
    { 0xDC, 0x23, 0x125, 0x48, 0x0, 0x64, 0x23 },
    { 0xDD, 0x24, 0x125, 0x49, 0x0, 0x32, 0x24 },
    { 0xDE, 0x25, 0x125, 0x4A, 0x0, 0x32, 0x25 },
    { 0xDF, 0x26, 0x125, 0x4B, 0x0, 0x32, 0x26 },
    { 0xE0, 0x27, 0x125, 0x4C, 0x0, 0x32, 0x27 },
    { 0xE1, 0x28, 0x125, 0x4D, 0x0, 0x32, 0x28 },
    { 0xE2, 0x29, 0x125, 0x4E, 0x0, 0x32, 0x29 },
    { 0xE3, 0x2A, 0x125, 0x4F, 0x0, 0x32, 0x2A },
    { 0xE4, 0x2B, 0x125, 0x50, 0x0, 0x32, 0x2B },
    { 0xE5, 0x2C, 0x125, 0x51, 0x0, 0x32, 0x2C },
    { 0xE6, 0x2D, 0x125, 0x52, 0x0, 0x32, 0x2D },
    { 0xE7, 0x2E, 0x125, 0x53, 0x0, 0x32, 0x2E },
    { 0xE8, 0x2F, 0x125, 0x54, 0x0, 0x32, 0x2F },
    { 0xE9, 0x30, 0x125, 0x55, 0x0, 0x32, 0x30 },
    { 0xEA, 0x31, 0x125, 0x56, 0x1, 0x0, 0x0 },
    { 0xEB, 0x32, 0x125, 0x57, 0x1, 0x0, 0x0 },
    { 0xEC, 0x33, 0x125, 0x58, 0x1, 0x0, 0x0 },
    { 0xED, 0x34, 0x125, 0x59, 0x1, 0x0, 0x0 },
    { 0xEE, 0x35, 0x125, 0x5A, 0x1, 0x0, 0x0 },
    { 0xEF, 0x36, 0x125, 0x5B, 0x1, 0x0, 0x0 },
    { 0xF0, 0x37, 0x125, 0x5C, 0x1, 0x0, 0x0 },
    { 0xF1, 0x38, 0x125, 0x5D, 0x1, 0x0, 0x0 },
    { 0xF2, 0x39, 0x125, 0x5E, 0x1, 0x0, 0x0 },
    { 0xF3, 0x3A, 0x125, 0x5F, 0x1, 0x0, 0x0 },
    { 0xF4, 0x3B, 0x125, 0x60, 0x1, 0x0, 0x0 },
    { 0xF5, 0x3C, 0x125, 0x61, 0x1, 0x0, 0x0 },
    { 0xF6, 0x3D, 0x125, 0x62, 0x1, 0x0, 0x0 },
    { 0xF7, 0x3E, 0x125, 0x63, 0x1, 0x0, 0x0 },
    { 0xF8, 0x3F, 0x125, 0x64, 0x1, 0x0, 0x0 },
    { 0xF9, 0x40, 0x125, 0x65, 0x1, 0x0, 0x0 },
    { 0xFA, 0x41, 0x125, 0x66, 0x1, 0x0, 0x0 },
    { 0xFB, 0x42, 0x125, 0x67, 0x1, 0x0, 0x0 },
    { 0xFC, 0x43, 0x125, 0x68, 0x1, 0x0, 0x0 },
    { 0xFD, 0x44, 0x125, 0x69, 0x1, 0x0, 0x0 },
    { 0xFE, 0x45, 0x125, 0x6A, 0x1, 0x0, 0x0 },
    { 0xFF, 0x46, 0x125, 0x6B, 0x1, 0x0, 0x0 },
    { 0x100, 0x47, 0x125, 0x6C, 0x1, 0x0, 0x0 },
    { 0x101, 0x48, 0x125, 0x6D, 0x1, 0x0, 0x0 },
    { 0x102, 0x49, 0x125, 0x6E, 0x1, 0x0, 0x0 },
    { 0x103, 0x4A, 0x125, 0x6F, 0x1, 0x0, 0x0 },
    { 0x104, 0x4B, 0x125, 0x70, 0x1, 0x0, 0x0 },
    { 0x105, 0x4C, 0x125, 0x71, 0x1, 0x0, 0x0 },
    { 0x106, 0x4E, 0x125, 0x72, 0x0, 0x0, 0x31 },
    { 0x107, 0x4F, 0x125, 0x73, 0x0, 0x0, 0x32 },
    { 0x108, 0x50, 0x125, 0x74, 0x0, 0x0, 0x33 }
};

int sub_02098140(u8 param0)
{
    GF_ASSERT(param0 < (sizeof(Unk_020F64D0)));
    return Unk_020F64D0[param0].unk_00;
}

int sub_02098164(u8 param0)
{
    GF_ASSERT(param0 < (sizeof(Unk_020F64D0)));
    return Unk_020F64D0[param0].unk_02;
}

int sub_02098188(u8 param0)
{
    GF_ASSERT(param0 < (sizeof(Unk_020F64D0)));
    return Unk_020F64D0[param0].unk_04;
}

int sub_020981AC(u8 param0)
{
    GF_ASSERT(param0 < (sizeof(Unk_020F64D0)));
    return Unk_020F64D0[param0].unk_05;
}

int sub_020981D0(u8 param0)
{
    GF_ASSERT(param0 < (sizeof(Unk_020F64D0)));
    return Unk_020F64D0[param0].unk_06;
}

int sub_020981F4(u8 param0)
{
    GF_ASSERT(param0 < (sizeof(Unk_020F64D0)));
    return Unk_020F64D0[param0].unk_08;
}
