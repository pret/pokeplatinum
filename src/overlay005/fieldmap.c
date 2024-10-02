#include <nitro.h>
#include <string.h>

#include "constants/field/map_load.h"

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_02020C44_decl.h"
#include "struct_decls/struct_02027860_decl.h"
#include "struct_decls/struct_0203A790_decl.h"
#include "struct_defs/struct_020556C4.h"
#include "struct_defs/struct_02099F80.h"

#include "field/field_system.h"
#include "field/field_system_sub2_decl.h"
#include "field/field_system_sub2_t.h"
#include "overlay005/const_ov5_021F89B0.h"
#include "overlay005/const_ov5_021FF6B8.h"
#include "overlay005/const_ov5_021FF744.h"
#include "overlay005/const_ov5_021FF7D0.h"
#include "overlay005/hblank_system.h"
#include "overlay005/ov5_021D0D80.h"
#include "overlay005/ov5_021D1A94.h"
#include "overlay005/ov5_021D37AC.h"
#include "overlay005/ov5_021D521C.h"
#include "overlay005/ov5_021D57BC.h"
#include "overlay005/ov5_021D5878.h"
#include "overlay005/ov5_021D5B40.h"
#include "overlay005/ov5_021D5BC0.h"
#include "overlay005/ov5_021D5CB0.h"
#include "overlay005/ov5_021D5EB8.h"
#include "overlay005/ov5_021DD6FC.h"
#include "overlay005/ov5_021DF440.h"
#include "overlay005/ov5_021E15F4.h"
#include "overlay005/ov5_021E1B08.h"
#include "overlay005/ov5_021E779C.h"
#include "overlay005/ov5_021EA714.h"
#include "overlay005/ov5_021ECC20.h"
#include "overlay005/ov5_021ECE40.h"
#include "overlay005/ov5_021EE75C.h"
#include "overlay005/ov5_021EF250.h"
#include "overlay005/ov5_021EF4BC.h"
#include "overlay005/ov5_021EF75C.h"
#include "overlay005/ov5_021EFB0C.h"
#include "overlay005/ov5_021F0824.h"
#include "overlay005/ov5_021F10E8.h"
#include "overlay005/struct_ov5_021D1A68_decl.h"
#include "overlay005/struct_ov5_021D5894.h"
#include "overlay005/struct_ov5_021ED0A4.h"
#include "overlay009/ov9_02249960.h"
#include "overlay022/struct_ov22_022559F8.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "camera.h"
#include "comm_player_manager.h"
#include "core_sys.h"
#include "easy3d.h"
#include "field_map_change.h"
#include "field_overworld_state.h"
#include "field_system.h"
#include "game_overlay.h"
#include "gx_layers.h"
#include "heap.h"
#include "inlines.h"
#include "map_header.h"
#include "map_header_data.h"
#include "map_object.h"
#include "narc.h"
#include "overlay_manager.h"
#include "player_avatar.h"
#include "pokeradar.h"
#include "savedata_misc.h"
#include "script_manager.h"
#include "unk_0200A784.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201DBEC.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "unk_02020AEC.h"
#include "unk_0202419C.h"
#include "unk_02027F50.h"
#include "unk_02039C80.h"
#include "unk_020508D4.h"
#include "unk_020553DC.h"
#include "unk_020556C4.h"
#include "unk_020559DC.h"
#include "unk_02055C50.h"
#include "unk_0205D8CC.h"
#include "unk_02068344.h"

FS_EXTERN_OVERLAY(overlay6);
FS_EXTERN_OVERLAY(overlay7);
FS_EXTERN_OVERLAY(overlay8);
FS_EXTERN_OVERLAY(overlay9);

struct UnkStruct_ov5_021D1A68_t {
    u16 unk_00;
    int unk_02[24];
};

static void ov5_021D1444(BGL *bgl);
static void ov5_021D1524(BGL *bgl);
static void ov5_021D154C(void);
static void ov5_021D1570(void);
static void ov5_021D1578(UnkStruct_ov5_021D5894 *param0);
static void ov5_021D15F4(FieldSystem *fieldSystem);
static void ov5_021D173C(FieldSystem *fieldSystem);
static void ov5_021D1414(void);
static void ov5_021D15B4(void);
static void ov5_021D15E8(void);
static void ov5_021D1790(FieldSystem *fieldSystem);
static void ov5_021D17EC(FieldSystem *fieldSystem);
static void ov5_021D1878(FieldSystem *fieldSystem);
static void ov5_021D1968(FieldSystem *fieldSystem);
static BOOL FieldMap_Init(OverlayManager *overlayMan, int *param1);
static BOOL FieldMap_Main(OverlayManager *overlayMan, int *param1);
static BOOL FieldMap_Exit(OverlayManager *overlayMan, int *param1);
static BOOL FieldMap_ChangeZone(FieldSystem *fieldSystem);
static void ov5_021D134C(FieldSystem *fieldSystem, u8 param1);
static BOOL ov5_021D119C(FieldSystem *fieldSystem);
static void ov5_021D0D80(void *param0);
static void ov5_021D13B4(FieldSystem *fieldSystem);
static int ov5_021D1178(FieldSystem *fieldSystem);
static BOOL FieldMap_InDistortionWorld(FieldSystem *fieldSystem);
static UnkStruct_ov5_021D1A68 *ov5_021D1A14(int param0, int param1);
static const int *ov5_021D1A68(const UnkStruct_ov5_021D1A68 *param0);
static const int ov5_021D1A6C(const UnkStruct_ov5_021D1A68 *param0);
static void ov5_021D1A70(UnkStruct_ov5_021D1A68 *param0);

static inline void inline_ov5_021D0D80(FieldSystem *fieldSystem)
{
    UnkStruct_ov5_021ED0A4 *v0 = sub_0206285C(fieldSystem->mapObjMan);
    UnkStruct_02020C44 *v1 = ov5_021EDC8C(v0);

    sub_02020D68(v1);
}

static void ov5_021D0D80(void *param0)
{
    FieldSystem *fieldSystem = param0;

    sub_0201C2B8(fieldSystem->unk_08);
    sub_0201DCAC();
    sub_0200A858();

    inline_ov5_021D0D80(fieldSystem);
}

static BOOL FieldMap_Init(OverlayManager *overlayMan, int *param1)
{
    FieldSystem *fieldSystem;
    BOOL ret = FALSE;

    fieldSystem = OverlayManager_Args(overlayMan);

    switch (*param1) {
    case 0:
        SetMainCallback(NULL, NULL);
        DisableHBlank();

        G2_BlendNone();
        G2S_BlendNone();

        sub_0200F32C(0);
        sub_0200F32C(1);
        ov5_021D173C(fieldSystem);
        FieldMapChange_Set3DDisplay(fieldSystem);

        if (fieldSystem->mapLoadMode->unk_00_20) {
            Overlay_LoadByID(FS_OVERLAY_ID(overlay6), 2);

            switch (ov5_021D1178(fieldSystem)) {
            case 0:
                Overlay_LoadByID(FS_OVERLAY_ID(overlay8), 2);
                break;
            case 1:
                Overlay_LoadByID(FS_OVERLAY_ID(overlay7), 2);
                break;
            case 2:
                Overlay_LoadByID(FS_OVERLAY_ID(overlay9), 2);
                break;
            }
        }

        Heap_Create(3, 4, fieldSystem->mapLoadMode->unk_04);
        GF_ASSERT(fieldSystem->unk_04 == NULL);

        fieldSystem->unk_04 = Heap_AllocFromHeap(4, sizeof(FieldSystem_sub2));
        MI_CpuClear8(fieldSystem->unk_04, sizeof(FieldSystem_sub2));
        fieldSystem->unk_04->unk_04 = ov5_021D1A94(fieldSystem, 4, 8);

        ov5_021D1414();

        sub_0201DBEC(128, 4);
        sub_02020B90(4, 4);
        Easy3D_Init(4);

        ov5_021D15B4();
        ov5_021D154C();

        GXLayers_SwapDisplay();
        fieldSystem->unk_08 = sub_02018340(4);
        ov5_021D1444(fieldSystem->unk_08);
        sub_0205D8CC(0, 1);
        sub_0203F5C0(fieldSystem, 4);
        break;
    case 1:
        ov5_021D1790(fieldSystem);
        ov5_021EF7A0(fieldSystem->unk_30);

        fieldSystem->unk_A4 = ov5_021E15F4(4);

        ov5_021F0824(fieldSystem);
        ov5_021D17EC(fieldSystem);
        ov5_021D1878(fieldSystem);
        ov5_021D1968(fieldSystem);

        if (fieldSystem->unk_04->unk_0C != NULL) {
            u16 v3 = FieldOverworldState_GetWeather(SaveData_GetFieldOverworldState(fieldSystem->saveData));
            ov5_021D5F24(fieldSystem->unk_04->unk_0C, v3);
        }

        sub_020556A0(fieldSystem, fieldSystem->location->mapId);
        sub_0203F5C0(fieldSystem, 3);

        fieldSystem->unk_04->hBlankSystem = HBlankSystem_New(4);
        HBlankSystem_Start(fieldSystem->unk_04->hBlankSystem);
        fieldSystem->unk_04->unk_20 = ov5_021EF4BC(4, fieldSystem->unk_04->hBlankSystem);
        break;
    case 2:
        ov5_021D5BD8(fieldSystem);
        break;
    case 3:
        if (ov5_021D5BF4(fieldSystem)) {
            fieldSystem->unk_68 = 1;
            ret = TRUE;
        }
        break;
    }

    (*param1)++;
    return ret;
}

static BOOL FieldMap_Main(OverlayManager *overlayMan, int *param1)
{
    FieldSystem *fieldSystem = OverlayManager_Args(overlayMan);

    if (ov5_021D119C(fieldSystem)) {
        sub_02055D94(fieldSystem);
        ov5_021D13B4(fieldSystem);
        ov5_021EA714(fieldSystem, 1, 1);

        FieldMap_ChangeZone(fieldSystem);
    }

    ov5_021D134C(fieldSystem, fieldSystem->unk_C0);

    if (fieldSystem->unk_68) {
        return FALSE;
    } else {
        return TRUE;
    }
}

static BOOL FieldMap_Exit(OverlayManager *overlayMan, int *param1)
{
    FieldSystem *fieldSystem = OverlayManager_Args(overlayMan);
    ov5_021E8188(fieldSystem, fieldSystem->unk_28);

    switch (*param1) {
    case 0:
        sub_02068368(fieldSystem);
        ov5_021E9338(fieldSystem->unk_28);

        fieldSystem->location->x = Player_GetXPos(fieldSystem->playerAvatar);
        fieldSystem->location->z = Player_GetZPos(fieldSystem->playerAvatar);
        fieldSystem->location->unk_10 = PlayerAvatar_GetDir(fieldSystem->playerAvatar);

        ov5_021EF300(fieldSystem->unk_A0);

        {
            GF_ASSERT(fieldSystem->unk_50 != 0);
            ov5_021E924C(fieldSystem->unk_28);
        }

        ov5_021D3CAC(fieldSystem->unk_50);
        ov5_021D3D7C(fieldSystem->unk_50);
        ov5_021D41B4(&fieldSystem->unk_54);
        ov5_021D5E8C(fieldSystem->unk_04->unk_10);
        ov5_021D5EAC(fieldSystem->unk_04->unk_10);

        fieldSystem->unk_04->unk_10 = NULL;

        sub_02061BF0(fieldSystem->mapObjMan);
        ov5_021ECC78(fieldSystem->mapObjMan);

        MapObjectMan_StopAllMovement(fieldSystem->mapObjMan);
        ov5_021DF500(fieldSystem->unk_40);

        ov5_021D1A70(fieldSystem->unk_34);
        fieldSystem->unk_34 = NULL;
        ov5_021E1608(fieldSystem->unk_A4);

        (*param1)++;
        break;
    case 1:
        if (ov5_021E9300(fieldSystem->unk_28) == 1) {
            ov5_021EFA10(&fieldSystem->unk_30);
            ov5_021E92E4(fieldSystem->unk_28);
            ov5_021EFB30(&fieldSystem->unk_A8);
            ov5_021D5BA8(fieldSystem);
            ov5_021D5278(&fieldSystem->unk_4C);
            ov5_021E1B20(fieldSystem->unk_64);
            ov5_021DD9C8(fieldSystem->unk_04->unk_08);

            if (fieldSystem->unk_04->unk_0C != NULL) {
                ov5_021D5EF8(fieldSystem->unk_04->unk_0C);
            }

            ov5_021EF4F8(fieldSystem->unk_04->unk_20);
            HBlankSystem_Delete(fieldSystem->unk_04->hBlankSystem);
            sub_02055CBC(fieldSystem->unk_04->unk_18);
            ov5_021D57D8(&fieldSystem->unk_48);
            ov5_021D5894(&fieldSystem->unk_44);
            ov5_021D1570();
            ov5_021D1524(fieldSystem->unk_08);
            ov5_021D5C14(fieldSystem);
            (*param1)++;
        }
        break;
    case 2:
        if (ov5_021D5C30(fieldSystem)) {
            ov5_021D15E8();
            sub_02020BD0();
            sub_0201DC3C();
            Easy3D_Shutdown();
            ov5_021D1AE4(fieldSystem->unk_04->unk_04);
            SetMainCallback(NULL, NULL);
            Heap_FreeToHeap(fieldSystem->unk_08);
            Heap_FreeToHeap(fieldSystem->unk_04);

            fieldSystem->unk_04 = NULL;

            Heap_Destroy(4);

            if (fieldSystem->mapLoadMode->unk_00_20) {
                Overlay_UnloadByID(FS_OVERLAY_ID(overlay6));
                Overlay_UnloadByID(FS_OVERLAY_ID(overlay8));
                Overlay_UnloadByID(FS_OVERLAY_ID(overlay7));
                Overlay_UnloadByID(FS_OVERLAY_ID(overlay9));
            }

            return TRUE;
        }
        break;
    }

    return FALSE;
}

const OverlayManagerTemplate gFieldMapTemplate = {
    FieldMap_Init,
    FieldMap_Main,
    FieldMap_Exit,
    0xffffffff
};

static int ov5_021D1178(FieldSystem *fieldSystem)
{
    UnkStruct_02027860 *v0 = sub_02027860(FieldSystem_SaveData(fieldSystem));
    int v1 = sub_02027F80(v0);

    if (v1 == 0) {
        return 1;
    }

    if (v1 == 9) {
        return 2;
    }

    return 0;
}

static BOOL ov5_021D119C(FieldSystem *fieldSystem)
{
    int x, y;

    x = Player_GetXPos(fieldSystem->playerAvatar);
    y = Player_GetZPos(fieldSystem->playerAvatar);

    if ((x != fieldSystem->location->x) || (y != fieldSystem->location->z)) {
        fieldSystem->location->x = x;
        fieldSystem->location->z = y;
        return TRUE;
    } else {
        return FALSE;
    }
}

static BOOL FieldMap_ChangeZone(FieldSystem *fieldSystem)
{
    u32 v0;
    u32 v1;
    int v2, v3;
    FieldOverworldState *v4;

    if (FieldMap_InDistortionWorld(fieldSystem) == 1) {
        return 0;
    }

    v2 = (Player_GetXPos(fieldSystem->playerAvatar) - ov5_021EA6AC(fieldSystem->unk_28)) / 32;
    v3 = (Player_GetZPos(fieldSystem->playerAvatar) - ov5_021EA6B4(fieldSystem->unk_28)) / 32;
    v0 = sub_02039E30(fieldSystem->unk_2C, v2, v3);
    v1 = fieldSystem->location->mapId;

    if (v0 == v1) {
        return 0;
    }

    v4 = SaveData_GetFieldOverworldState(fieldSystem->saveData);
    {
        fieldSystem->location->mapId = v0;

        MapHeaderData_Load(fieldSystem, v0);
        FieldMapChange_UpdateGameData(fieldSystem, 1);
    }

    {
        int v5 = MapHeaderData_GetNumObjectEvents(fieldSystem);
        const ObjectEvent *v6 = MapHeaderData_GetObjectEvents(fieldSystem);

        sub_0206184C(fieldSystem->mapObjMan, v1, v0, v5, v6);
    }

    {
        RadarChain_Clear(fieldSystem->chain);
        sub_02055554(fieldSystem, sub_02055428(fieldSystem, fieldSystem->location->mapId), 1);
        sub_0203A418(fieldSystem);

        if (fieldSystem->unk_04->unk_0C != NULL) {
            ov5_021D5F7C(
                fieldSystem->unk_04->unk_0C, FieldOverworldState_GetWeather(v4));
        }
    }

    {
        int v7, v8;
        int v9;

        v7 = MapHeader_GetMapLabelTextID(v1);
        v8 = MapHeader_GetMapLabelTextID(v0);
        v9 = MapHeader_GetMapLabelWindowID(v0);

        if (v7 != v8) {
            if (v9 != 0) {
                v9--;
            }

            ov5_021DD9E8(fieldSystem->unk_04->unk_08, v8, v9);
        }
    }

    return TRUE;
}

void ov5_021D12D0(FieldSystem *fieldSystem, u32 param1)
{
    u32 v0;
    FieldOverworldState *v1;

    v0 = fieldSystem->location->mapId;
    v1 = SaveData_GetFieldOverworldState(fieldSystem->saveData);

    {
        fieldSystem->location->mapId = param1;

        MapHeaderData_Load(fieldSystem, param1);
        FieldMapChange_UpdateGameDataDistortionWorld(fieldSystem, 1);
    }

    {
        int v2 = MapHeaderData_GetNumObjectEvents(fieldSystem);
        const ObjectEvent *v3 = MapHeaderData_GetObjectEvents(fieldSystem);

        sub_0206184C(fieldSystem->mapObjMan, v0, param1, v2, v3);
    }

    {
        sub_02055554(fieldSystem, sub_02055428(fieldSystem, fieldSystem->location->mapId), 1);
        sub_0203A418(fieldSystem);

        if (fieldSystem->unk_04->unk_0C != NULL) {
            ov5_021D5F7C(fieldSystem->unk_04->unk_0C, FieldOverworldState_GetWeather(v1));
        }
    }
}

static void ov5_021D134C(FieldSystem *fieldSystem, u8 param1)
{
    if (sub_020509A4(fieldSystem) == 0) {
        sub_020559DC(fieldSystem);
    }

    ov5_021D5298(fieldSystem->unk_4C);
    ov5_021E1B68(fieldSystem);

    if ((param1 & 1) != 0) {
        ov5_021D5DEC(fieldSystem->unk_04->unk_10);
    }

    if ((param1 & 8) != 0) {
        ov5_021D3F10(fieldSystem->unk_50);
    }

    if ((param1 & 2) != 0) {
        ov5_021E8188(fieldSystem, fieldSystem->unk_28);

        if (FieldMap_InDistortionWorld(fieldSystem) == 1) {
            ov9_0224CA5C(fieldSystem);
        }
    }

    if ((param1 & 4) != 0) {
        ov5_021D15F4(fieldSystem);
    }
}

static void ov5_021D13B4(FieldSystem *fieldSystem)
{
    UnkStruct_020556C4 *v0;
    int v1, v2, v3;

    if (MapHeader_IsOnMainMatrix(fieldSystem->location->mapId) == 0) {
        return;
    }

    v0 = sub_0203A76C(SaveData_GetFieldOverworldState(fieldSystem->saveData));
    v1 = (Player_GetXPos(fieldSystem->playerAvatar) - ov5_021EA6AC(fieldSystem->unk_28)) / 32;
    v2 = (Player_GetZPos(fieldSystem->playerAvatar) - ov5_021EA6B4(fieldSystem->unk_28)) / 32;
    v3 = PlayerAvatar_GetDir(fieldSystem->playerAvatar);

    sub_02055740(v0, v1, v2, v3);
}

static void ov5_021D1414(void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_C,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_32_H,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_32_FG,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_01_AB,
        GX_VRAM_TEXPLTT_0123_E
    };

    GXLayers_SetBanks(&v0);
}

void ov5_021D1434(BGL *bgl)
{
    ov5_021D1444(bgl);
}

void ov5_021D143C(BGL *bgl)
{
    ov5_021D1524(bgl);
}

static void ov5_021D1444(BGL *bgl)
{
    {
        UnkStruct_ov84_0223BA5C v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_3D
        };

        sub_02018368(&v0);
    }

    {
        UnkStruct_ov97_0222DB78 v1 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0000,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };

        sub_020183C4(bgl, 1, &v1, 0);
        sub_02019690(1, 32, 0, 4);
        sub_02019EBC(bgl, 1);
    }

    {
        UnkStruct_ov97_0222DB78 v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0800,
            GX_BG_CHARBASE_0x14000,
            GX_BG_EXTPLTT_23,
            3,
            0,
            0,
            0
        };

        sub_020183C4(bgl, 2, &v2, 0);
        sub_02019690(2, 32, 0, 4);
        sub_02019EBC(bgl, 2);
    }
    {
        UnkStruct_ov97_0222DB78 v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x1000,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_23,
            0,
            0,
            0,
            0
        };

        sub_020183C4(bgl, 3, &v3, 0);
        sub_02019690(3, 32, 0, 4);
        sub_02019EBC(bgl, 3);
    }

    {
        u16 v4 = 0x0;

        DC_FlushRange((void *)v4, 2);
        GX_LoadBGPltt(&v4, 0, 2);
    }
}

static void ov5_021D1524(BGL *bgl)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3, 0);
    sub_02019044(bgl, 1);
    sub_02019044(bgl, 2);
    sub_02019044(bgl, 3);
}

static void ov5_021D154C(void)
{
    NNS_G2dInitOamManagerModule();
    sub_0200A784(0, 124, 0, 31, 0, 124, 0, 31, 4);
}

static void ov5_021D1570(void)
{
    sub_0200A878();
}

static void ov5_021D1578(UnkStruct_ov5_021D5894 *param0)
{
    ov5_021D5ADC(param0, GX_POLYGONMODE_MODULATE, 0);
    ov5_021D5AF0(param0, GX_CULL_BACK, 0);
    ov5_021D5B04(param0, 31, 0);
    ov5_021D5B18(param0, GX_POLYGON_ATTR_MISC_FOG, 1, 0);
    ov5_021D58A8(param0, 1 << 22);
}

void ov5_021D15B4(void)
{
    {
        UnkStruct_ov22_022559F8 v0 = {
            20, 0x8000, 0x4000, 4
        };

        sub_0201E88C(&v0, GX_OBJVRAMMODE_CHAR_1D_32K, GX_OBJVRAMMODE_CHAR_1D_32K);
    }

    sub_0201F834(20, 4);
    sub_0201E994();
    sub_0201F8E4();
}

void ov5_021D15E8(void)
{
    sub_0201E958();
    sub_0201F8B4();
}

static void ov5_021D15F4(FieldSystem *fieldSystem)
{
    MtxFx44 v0, v1;

    sub_020241B4();

    if (fieldSystem->unk_20 == 1) {
        if (FieldMap_InDistortionWorld(fieldSystem) == 1) {
            ov9_02249F9C(fieldSystem);
        }

        Camera_ComputeViewMatrixWithRoll();
    } else {
        Camera_ComputeViewMatrix();
    }

    sub_0206979C(fieldSystem);
    ov5_021E91FC(fieldSystem->unk_28, fieldSystem->unk_44);

    if (FieldMap_InDistortionWorld(fieldSystem) == 1) {
        ov9_0224CA50(fieldSystem);
    }

    ov5_021E1A6C(fieldSystem->unk_A4, fieldSystem->unk_30);

    {
        const MtxFx44 *v2;

        v2 = NNS_G3dGlbGetProjectionMtx();
        v0 = *v2;
        v1 = v0;
        v1._32 += FX_Mul(v1._22, 4 * FX32_ONE);

        NNS_G3dGlbSetProjectionMtx(&v1);
        NNS_G3dGlbFlush();
    }

    ov5_021DF4F8(fieldSystem->unk_40);
    sub_02020C08();

    if (FieldMap_InDistortionWorld(fieldSystem) == 1) {
        ov9_02250780(fieldSystem);
    }

    {
        NNS_G3dGlbSetProjectionMtx(&v0);
        NNS_G3dGlbFlush();
    }

    ov5_021D1B18(fieldSystem->unk_04->unk_04);
    G3_RequestSwapBuffers(GX_SORTMODE_AUTO, gBufferMode);
}

void ov5_021D16F4(FieldSystem *fieldSystem, BOOL param1)
{
    if (param1 == 1) {
        fieldSystem->unk_C0 |= 4;
    } else {
        fieldSystem->unk_C0 &= ~4;
    }
}

void ov5_021D1718(FieldSystem *fieldSystem, BOOL param1)
{
    if (param1 == 1) {
        fieldSystem->unk_C0 |= 1;
    } else {
        fieldSystem->unk_C0 &= ~1;
    }
}

static void ov5_021D173C(FieldSystem *fieldSystem)
{
    fieldSystem->unk_C0 = (8 | 1 | 2 | 4);
}

void ov5_021D1744(const u8 param0)
{
    if (param0 == 1) {
        sub_0200F174(
            0, 1, 1, 0x0, 6, 1, 4);
    } else if (param0 == 0) {
        sub_0200F174(
            0, 0, 0, 0x0, 6, 1, 4);
    } else {
        GF_ASSERT(FALSE);
    }
}

static void ov5_021D1790(FieldSystem *fieldSystem)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    G3_SwapBuffers(GX_SORTMODE_AUTO, gBufferMode);

    fieldSystem->unk_50 = ov5_021D38B8();
    fieldSystem->unk_54 = ov5_021D4194();

    {
        u16 v0, v1;

        v0 = sub_0203A038(fieldSystem->location->mapId);
        fieldSystem->unk_30 = ov5_021EF76C(v0, fieldSystem->unk_50);

        v1 = sub_0203A04C(fieldSystem->location->mapId);
        GF_ASSERT(fieldSystem->unk_34 == NULL);

        fieldSystem->unk_34 = ov5_021D1A14(4, v1);
    }
}

static void ov5_021D17EC(FieldSystem *fieldSystem)
{
    fieldSystem->unk_28 = ov5_021E9084(fieldSystem->unk_2C, fieldSystem->unk_30, fieldSystem->unk_50, fieldSystem->unk_60);

    if (FieldMap_InDistortionWorld(fieldSystem) == 1) {
        int v0 = 0, v1 = 0, v2 = 0;

        ov9_02251094(fieldSystem->location->mapId, &v0, &v1, &v2);
        ov5_021EA678(fieldSystem->unk_28, v0, v1, v2);
        ov5_021EA6A4(fieldSystem->unk_28, 1);
        ov5_021EA6D0(fieldSystem->unk_28, 1);
    }

    fieldSystem->unk_A0 = ov5_021EF28C(8, 4);
    fieldSystem->unk_A8 = ov5_021EFB0C();

    if (fieldSystem->mapLoadType == MAP_LOAD_TYPE_OVERWORLD) {
        ov5_021E9630(fieldSystem->unk_28, ov5_021F0030, fieldSystem);
    }

    ov5_021E9150(fieldSystem->unk_28, fieldSystem->location->x, fieldSystem->location->z);
}

static void ov5_021D1878(FieldSystem *fieldSystem)
{
    fieldSystem->unk_40 = ov5_021DF440(fieldSystem, 34, 4);

    {
        int v0 = 80;

        if (FieldMap_InDistortionWorld(fieldSystem) == 1) {
            v0 = 112;
        }

        ov5_021DF47C(fieldSystem->unk_40, v0);
    }

    ov5_021DF488(fieldSystem->unk_40, 4, 32, 32, 32, 32, (0x500 * (32 / 2)), (0x80 * (32 / 2)), (0x800 * 32));

    if ((fieldSystem->mapLoadType == MAP_LOAD_TYPE_UNDERGROUND) || (fieldSystem->mapLoadType == MAP_LOAD_TYPE_UNION)) {
        sub_02062CCC(fieldSystem->mapObjMan, 0);
    }

    {
        const u32 *v1;

        if (fieldSystem->mapLoadType == MAP_LOAD_TYPE_UNDERGROUND) {
            v1 = Unk_ov5_021FF7D0;
        } else {
            if (FieldMap_InDistortionWorld(fieldSystem) == 1) {
                v1 = Unk_ov5_021FF6B8;
            } else {
                v1 = Unk_ov5_021FF744;
            }
        }

        ov5_021DF4C8(fieldSystem->unk_40, v1);
    }

    {
        int v2 = 10;

        if (fieldSystem->mapLoadType == MAP_LOAD_TYPE_UNION) {
            v2 = 5;
        }

        ov5_021ECC20(fieldSystem->mapObjMan, 32, ov5_021D1A6C(fieldSystem->unk_34) + 3, ov5_021D1A68(fieldSystem->unk_34), v2);
    }

    FieldEffect_InitRenderObject(fieldSystem->unk_40);

    {
        UnkStruct_02027860 *v3 = sub_02027860(FieldSystem_SaveData(fieldSystem));
        int v4 = sub_02027F80(v3);

        PlayerAvatar_InitDraw(fieldSystem->playerAvatar, v4);
    }

    sub_02061C48(fieldSystem->mapObjMan);
    CommPlayerMan_ForcePos();
    sub_02062C3C(fieldSystem->mapObjMan);
    ov5_021E931C(PlayerAvatar_PosVector(fieldSystem->playerAvatar), fieldSystem->unk_28);

    fieldSystem->unk_04->unk_18 = sub_02055C8C(fieldSystem, 4);
}

static void ov5_021D1968(FieldSystem *fieldSystem)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_TurnBothDispOn();
    fieldSystem->unk_44 = ov5_021D5878();
    ov5_021D1578(fieldSystem->unk_44);
    fieldSystem->unk_48 = ov5_021D57BC();

    {
        int v0 = FieldOverworldState_GetCameraType(SaveData_GetFieldOverworldState(fieldSystem->saveData));
        ov5_021D5B40(PlayerAvatar_PosVector(fieldSystem->playerAvatar), fieldSystem, v0, 1);
    }

    fieldSystem->unk_4C = ov5_021D521C(fieldSystem->unk_44, ov5_021EFAD8(fieldSystem->unk_30));

    if (FieldMap_InDistortionWorld(fieldSystem) == 1) {
        fieldSystem->unk_04->unk_0C = NULL;
    } else {
        fieldSystem->unk_04->unk_0C = ov5_021D5EB8(fieldSystem);
    }

    fieldSystem->unk_04->unk_08 = ov5_021DD98C(fieldSystem->unk_08);
    fieldSystem->unk_64 = ov5_021E1B08(4);
    fieldSystem->unk_04->unk_10 = ov5_021D5CB0();

    ov5_021D5CE4(fieldSystem->unk_04->unk_10, ov5_021EFA8C(fieldSystem->unk_30));
    sub_02068344(fieldSystem);
    ov5_021EE7C0(fieldSystem);
    SetMainCallback(ov5_021D0D80, fieldSystem);
}

static UnkStruct_ov5_021D1A68 *ov5_021D1A14(int fieldSystem, int param1)
{
    int v0;
    u16 *v1;
    UnkStruct_ov5_021D1A68 *v2;

    v2 = Heap_AllocFromHeap(fieldSystem, sizeof(UnkStruct_ov5_021D1A68));
    v1 = NARC_AllocAtEndAndReadWholeMemberByIndexPair(NARC_INDEX_FIELDDATA__MM_LIST__MOVE_MODEL_LIST, param1, fieldSystem);

    for (v0 = 0; v0 < 24; v0++) {
        v2->unk_02[v0] = 0xffff;
    }

    for (v0 = 0; v0 < 24; v0++) {
        v2->unk_02[v0] = v1[v0];

        if (v1[v0] == 0xffff) {
            break;
        }
    }

    v2->unk_00 = v0;
    Heap_FreeToHeap(v1);
    return v2;
}

static const int *ov5_021D1A68(const UnkStruct_ov5_021D1A68 *param0)
{
    return param0->unk_02;
}

static const int ov5_021D1A6C(const UnkStruct_ov5_021D1A68 *param0)
{
    return param0->unk_00;
}

static void ov5_021D1A70(UnkStruct_ov5_021D1A68 *param0)
{
    Heap_FreeToHeap(param0);
}

static BOOL FieldMap_InDistortionWorld(FieldSystem *fieldSystem)
{
    UnkStruct_02027860 *v0 = sub_02027860(FieldSystem_SaveData(fieldSystem));
    int v1 = sub_02027F80(v0);

    if (v1 == 9) {
        return 1;
    }

    return 0;
}
