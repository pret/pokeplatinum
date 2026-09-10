#include "overlay005/ov5_021D5EB8.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay005/fog_manager.h"
#include "overlay005/hblank_system.h"

#include "bg_window.h"
#include "buffer_manager.h"
#include "camera.h"
#include "debug.h"
#include "enums.h"
#include "fx_util.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "math_util.h"
#include "narc.h"
#include "render_oam.h"
#include "render_view.h"
#include "sound_playback.h"
#include "spl_internal.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "sys_task.h"
#include "sys_task_manager.h"

#define FOREST_SHADOW_WIGGLE_TABLE_SIZE  64
#define FOREST_SHADOW_WIGGLE_FRAME_DELAY 8

#define UNK_48_LIST_SIZE 48

enum WeatherGraphicsEntry {
    WEATHER_GRAPHICS_ENTRY_NONE = -1,
    WEATHER_GRAPHICS_ENTRY_BLIZZARD,
    WEATHER_GRAPHICS_ENTRY_SANDSTORM,
    WEATHER_GRAPHICS_ENTRY_RAINBOW,
    WEATHER_GRAPHICS_ENTRY_SLOW_ASHFALL,
    WEATHER_GRAPHICS_ENTRY_UNUSED,
    WEATHER_GRAPHICS_ENTRY_CLOUDY,
    WEATHER_GRAPHICS_ENTRY_FOG,
    WEATHER_GRAPHICS_ENTRY_DARK_FLASH,
    WEATHER_GRAPHICS_ENTRY_SPEAR_PILLAR,
    WEATHER_GRAPHICS_ENTRY_FOREST_SHADOWS,
    WEATHER_GRAPHICS_ENTRY_10,
    WEATHER_GRAPHICS_ENTRY_MAX,
};

typedef struct WeatherSystem_t WeatherSystem;
typedef struct UnkStruct_ov5_021D5EF8_t {
    WeatherSystem *weatherSystem;
    int unk_weather_04; // some sort of weatherID, has a public getter read from outside the file
    int unk_weather_08; // next weatherID?
    int state;
    int unk_weather_10; // next weatherID?
    SysTask *sysTask;
} UnkStruct_ov5_021D5EF8; // weatherID change?

typedef struct WeatherBackroundGraphicsIndexes {
    int narcPLTTIdx;
    int narcSpriteIdx;
    int narcNSCRIdx;
} WeatherBackroundGraphicsIndexes;

typedef struct WeatherSpriteResourceGroup {
    SpriteResource *weatherSpriteResources[MAX_SPRITE_RESOURCE_GEN4];
    AffineSpriteListTemplate template;
    SpriteResourcesHeader resourceHeader;
} WeatherSpriteResourceGroup;

typedef struct WeatherBackgroundTilemapData {
    char *palette;
    char *bgNcgr;
    char *bgNscr;
    NNSG2dScreenData *tilemap;
    NNSG2dCharacterData *bgTiles;
    NNSG2dPaletteData *paletteData;
} WeatherBackgroundTilemapData;

typedef struct UnkStruct_ov5_021D6FA8_tag {
    WeatherSystem *weatherSystem;
    Sprite *sprite;
    void *unk_08; // probably some sort of array? index 0 = state, index 1 = ???, index 2 related to y position, index 3 = ???, index 4 related to x positon
    s32 unk_0C[10];
    struct UnkStruct_ov5_021D6FA8_tag *unk_34; // next?
    struct UnkStruct_ov5_021D6FA8_tag *unk_38; // prev?
} UnkStruct_ov5_021D6FA8;

typedef struct {
    WeatherSystem *weatherSystem;
    void *unk_04; // types: Weather
    const WeatherSpriteResourceGroup *spriteResources;
    UnkStruct_ov5_021D6FA8 unk_0C;
    UnkStruct_ov5_021D6FA8 unk_48[UNK_48_LIST_SIZE]; // TODO: this
    SysTask *sysTask;
    VecFx32 prevCameraTarget;
    void *weatherCallbackParams;
    BOOL isSoundPlaying;
    u16 soundSeqID;
    u16 state;
    u16 unk_BA4;
    u16 unk_BA6;
} WeatherCallbackContext;

typedef void (*WeatherFunctionCallback)(SysTask *sysTask, void *ctx);

typedef struct Weather {
    u16 spriteResourceIndex;
    u16 weatherGraphicsEntry;
    int callbackParamSize;
    WeatherCallbackContext *weatherCallbackCtx;
    WeatherSpriteResourceGroup *spriteResources;
    u16 unk_10;
    u16 resLoadState;
    SysTask *sysTask;
    WeatherFunctionCallback callback;
} Weather; // This is the central key to this file

typedef void (*UnkFuncPtr_ov5_021D6FF0)(UnkStruct_ov5_021D6FA8 *);

typedef struct WeatherDraw {
    SpriteResourceCollection *spriteResourceCollection[MAX_SPRITE_RESOURCE_GEN4];
    SpriteResourceTable *weatherSpriteResourceTable;
    NNSG2dRendererInstance renderer;
    NNSG2dRenderSurface surface;
    SpriteList *spriteList;
    SysTask *sysTask;
} WeatherDraw; // this is a param for some sysTask

typedef struct WeatherSystem_t {
    Weather *weatherTable;
    const WeatherBackroundGraphicsIndexes *backgroundIndexes;
    WeatherDraw unk_08; // so this is the systask param.  But what is the sys task?
    FieldSystem *fieldSystem;
    NARC *weatherNarc;
} WeatherSystem;

typedef void (*UnkFuncPtr_ov5_021D7210)(WeatherCallbackContext *, int);

typedef struct {
    WeatherCallbackContext *ctx;
    s16 unk_04;
    s16 unk_06;
    s16 unk_08;
    s16 unk_0A;
    s16 unk_0C;
    s16 unk_0E;
    s16 unk_10;
    s16 unk_12;
    s32 unk_14;
    UnkFuncPtr_ov5_021D7210 unk_18;
} UnkStruct_ov5_021D7210;

typedef void (*UnkFuncPtr_ov5_021D7210_1)(WeatherCallbackContext *, int);

typedef struct {
    int alphaCoefficient;
    int unk_04;
    int unk_08; // alpha minus offset??
    int unk_0C;
    int unk_10;
} UnkStruct_ov5_021D64FC;

typedef struct {
    fx32 unk_00;
    fx32 unk_04;
    fx32 unk_08;
    s16 unk_0C; // a counter?
    s16 unk_0E;
} UnkStruct_ov5_021D6538;

typedef struct {
    FogManager *fogMan;
    UnkStruct_ov5_021D64FC unk_04;
    UnkStruct_ov5_021D64FC unk_18;
    UnkStruct_ov5_021D64FC unk_2C;
    UnkStruct_ov5_021D64FC unk_40;
    UnkStruct_ov5_021D64FC unk_54;
} UnkStruct_ov5_021D7308; // this is a type of fogMan? C inheritance

typedef struct {
    FogManager *fogMan;
    char fogDensityTable[G3X_FOG_DENSITY_TABLE_SIZE]; // fog density table
    s32 unk_24;
    s32 unk_28;
    s16 unk_2C;
    s16 unk_2E;
} UnkStruct_ov5_021D7480;

typedef struct PrecipitationContext {
    UnkStruct_ov5_021D7210 unk_00;
    UnkStruct_ov5_021D7480 unk_1C;
    UnkStruct_ov5_021D7308 unk_4C;
    s32 unk_B4[10]; // index comes from this, divided by 512?
} PrecipitationContext;

typedef struct SpiritsContext {
    UnkStruct_ov5_021D7210 unk_00;
    s32 unk_1C[10];
} SpiritsContext;

/* This is only used by the weathers that are unused:
 * Weathers 18, 19, 24 - 30
 */
typedef struct UnusedWeatherContext {
    UnkStruct_ov5_021D7480 unk_00;
    UnkStruct_ov5_021D7308 unk_30;
    s32 unk_98[10];
} UnusedWeatherContext;

typedef struct CloudyContext {
    UnkStruct_ov5_021D64FC unk_00;
    s16 unk_14;
    s16 unk_16;
    u16 unk_18;
    u16 unk_1A;
} CloudyContext; // cloudy

typedef struct ForestShadowsContext {
    UnkStruct_ov5_021D64FC unk_00;
    UnkStruct_ov5_021D7480 unk_14;
    UnkStruct_ov5_021D7308 unk_44;
    fx32 cameraScrollX;
    fx32 cameraScrollY;
    u16 counter;
    u16 unk_B6;
} ForestShadowsContext;

typedef struct FogContext {
    UnkStruct_ov5_021D64FC unk_00;
    UnkStruct_ov5_021D7480 unk_14;
    UnkStruct_ov5_021D7308 unk_44;
} FogContext;

typedef struct DarkFlashContext {
    s16 unk_00;
    s16 unk_02;
    UnkStruct_ov5_021D6538 unk_04;
    HBlankSystem *hBlankSystem;
    HBlankTask *unk_18;
    BufferManager *bufferManagers[2];
    SysTask *unk_24;
    u32 unk_28;
    u16 unk_2C[4][192];
} DarkFlashContext;

static void ov5_021D5FE4(SysTask *param0, void *param1);
static void ov5_021D60B4(SysTask *param0, void *param1);
static BOOL ov5_IsWeatherColdAndWet(int param0, int param1);
static void ov5_StartWeatherSound(WeatherCallbackContext *param0, int param1);
static void ov5_StopWeatherSound(WeatherCallbackContext *param0);
static void ov5_SetBlendAlpha(int alphaCoefficient1, int alphaCoefficient2);
static void ov5_021D64FC(UnkStruct_ov5_021D64FC *param0, int alphaCoefficient, int param2, int param3); // TODO: param refs
static BOOL ov5_021D650C(UnkStruct_ov5_021D64FC *param0);
static void ov5_021D6538(UnkStruct_ov5_021D6538 *param0, fx32 param1, fx32 param2, int param3);
static BOOL ov5_021D6548(UnkStruct_ov5_021D6538 *param0);
static void ov5_LoadWeatherSpriteResources(WeatherSystem *weatherSystem, int param1, WeatherSpriteResourceGroup *spriteResources);
static void WeatherSystem_LoadWeatherEntryGraphics(WeatherSystem *weatherSystem, enum WeatherGraphicsEntry weatherGraphicsEntry);
static void WeatherSystem_ResetSpriteResources(WeatherSystem *weatherSystem, int spriteResourceIndex, WeatherSpriteResourceGroup *spriteResources);
static SpriteResource *ov5_GetWeatherSpriteResource(SpriteResourceTable *spriteResourceTable, enum SpriteResourceType resourceType, int spriteResourceIndex, SpriteResourceCollection *param3, NARC *weatherNarc, BOOL allocAtEnd);
static void WeatherDraw_Init(WeatherDraw *param0);
static void ov5_LoadSpriteResource(SpriteResourceTable *weatherSpriteResourceTable, int spriteIndex, int narcIdx);
static void WeatherDraw_Delete(WeatherDraw *param0);
static void ov5_UpdateSpriteList(SysTask *task, void *param1);
static void ov5_SetPrecipitationPosition(Sprite *sprite, VecFx32 *pos);
static void ov5_021D6FA8(UnkStruct_ov5_021D6FA8 *param0);
static void ov5_021D6FD8(UnkStruct_ov5_021D6FA8 *param0);
static UnkStruct_ov5_021D6FA8 *ov5_021D6F00(WeatherCallbackContext *param0, int size);
static void Weather_InitSpriteResourcesHeader(SpriteResourcesHeader *resourceHeader, WeatherSystem *weatherSystem, WeatherSpriteResourceGroup *spriteResources, BOOL vramTransfer, int priority);
static BOOL WeatherSystem_TryLoadWeatherSpriteResources(WeatherSystem *weatherSystem, Weather *param1);
static void ov5_021D6FF0(UnkStruct_ov5_021D6FA8 *param0, UnkFuncPtr_ov5_021D6FF0 param1);
static void ov5_WeatherDummy(WeatherCallbackContext *param0);
static VecFx32 ov5_GetWeatherSpritePosition(UnkStruct_ov5_021D6FA8 *param0);
static void ov5_CalcCameraDistanceChange(fx32 *destXCameraDelta, fx32 *destYCameraDelta, WeatherCallbackContext *ctx);
static void ov5_CameraMoveWeatherSprite(WeatherCallbackContext *ctx, int *cameraAdjusmentX, int *cameraAdjusmentY);
static void ov5_CameraMoveWeatherSpriteFX(WeatherCallbackContext *ctx, fx32 *cameraAdjusmentX, fx32 *cameraAdjusmentY);
static void ov5_021D6EC8(UnkStruct_ov5_021D6FA8 *param0, int size);
static void ov5_021D6EF0(UnkStruct_ov5_021D6FA8 *param0);
static void ov5_021D7210(UnkStruct_ov5_021D7210 *param0, WeatherCallbackContext *param1, s32 param2, s32 param3, s32 param4, s32 param5, s32 param6, s32 param7, s32 param8, UnkFuncPtr_ov5_021D7210_1 param9);
static void ov5_021D7238(UnkStruct_ov5_021D7210 *param0, s32 param1, s32 param2, s32 param3, s32 param4);
static int ov5_021D7244(UnkStruct_ov5_021D7210 *param0);
static void ov5_021D7308(UnkStruct_ov5_021D7308 *param0, UnkStruct_ov5_021D7480 *param1, FogManager *fogMan, GXFogSlope slope, int param4, GXRgb fogColor, int param6, u32 param7);
static int ov5_021D735C(UnkStruct_ov5_021D7308 *param0, UnkStruct_ov5_021D7480 *param1, u32 param2);
static void ov5_ApplyFogProperties(FogManager *fogMan, GXFogSlope slope, int offset, GXRgb color);
static void ov5_021D73B0(UnkStruct_ov5_021D7308 *param0, FogManager *fogMan, GXFogSlope fogSlope, int param3, GXRgb param4, int param5);
static BOOL ov5_021D7434(UnkStruct_ov5_021D7308 *param0);
static void ov5_ZeroFogDensityTable(UnkStruct_ov5_021D7480 *param0);
static void ov5_021D749C(UnkStruct_ov5_021D7480 *param0, int param1, BOOL param2);
static int ov5_021D74B8(UnkStruct_ov5_021D7480 *param0);
static int ov5_021D74F4(UnkStruct_ov5_021D7480 *param0);
static void ov5_021D74D4(UnkStruct_ov5_021D7480 *param0);
static void ov5_021D7534(UnkStruct_ov5_021D7480 *param0);
static void ov5_021D7568(WeatherCallbackContext *param0, UnkFuncPtr_ov5_021D7210_1 param1, int param2, int param3, int param4, UnkFuncPtr_ov5_021D6FF0 param5);
static UnkStruct_ov5_021D6FA8 *ov5_021D75E4(WeatherCallbackContext *param0);
static BOOL ov5_021D66D0(WeatherSystem *weatherSystem, int weatherID);
static BOOL WeatherSystem_TryStartLoadWeatehrResources(WeatherSystem *weatherSystem, int weatherID);
static BOOL WeatherSystem_StartWeatherTask(WeatherSystem *weatherSystem, int weatherID, int param2, u32 param3);
static void ov5_021D6868(WeatherSystem *weatherSystem, int weatherID, u32 param2);
static void ov5_021D6890(WeatherSystem *weatherSystem, int weatherID);
static void ov5_021D68B8(WeatherSystem *weatherSystem, int weatherID);
static void ov5_021D69B8(Weather *param0);
static void SysTask_LoadWeatherResources(SysTask *param0, void *param1);
static BOOL WeatherSystem_TryInitWeatherCallbackCtx(WeatherSystem *weatherSystem, Weather *param1);
static BOOL Weather_TryCreateWeatherSpriteResourceGroup(Weather *param0);
static void WeatherSystem_LoadWeatherSpriteResourceCell(WeatherSystem *weatherSystem, int param1, WeatherSpriteResourceGroup *spriteResources);
static void WeatherSystem_LoadWeatherSpriteResourceAnim(WeatherSystem *parweatherSystemam0, int param1, WeatherSpriteResourceGroup *spriteResources);
static void WeatherSystem_LoadWeatherSpriteResourceTile(WeatherSystem *weatherSystem, int param1, WeatherSpriteResourceGroup *spriteResources);
static void WeatherSystem_LoadWeatherSpriteResourcePalette(WeatherSystem *weatherSystem, int param1, WeatherSpriteResourceGroup *spriteResources);
static void WeatherSystem_LoadSpriteResourceTemplate(WeatherSystem *weatherSystem, Weather *param1);
static void WeatherCallbackContext_DisableSprites(WeatherCallbackContext *param0);
static void WeatherCallbackContext_DeleteSprites(WeatherCallbackContext *param0);
static void WeatherSystem_LoadWeatherBGPalette(WeatherSystem *weatherSystem, enum WeatherGraphicsEntry weatherGraphicsEntry);
static void WeatherSystem_LoadWeatherBGTiles(WeatherSystem *weatherSystem, enum WeatherGraphicsEntry weatherGraphicsEntry);
static void WeatherSystem_BufferWeatherBGTilemap(WeatherSystem *weatherSystem, enum WeatherGraphicsEntry weatherGraphicsEntry);
static void ov5_021D7604(SysTask *param0, void *param1);
static void ov5_021D7658(SysTask *param0, void *param1);
static void ov5_021D79F0(SysTask *param0, void *param1);
static void ov5_021D7E54(SysTask *param0, void *param1);
static void ov5_021D823C(SysTask *param0, void *param1);
static void ov5_021D84D4(SysTask *param0, void *param1);
static void ov5_021D8638(SysTask *param0, void *param1);
static void ov5_021D879C(SysTask *param0, void *param1);
static void ov5_021D8948(SysTask *param0, void *param1);
static void ov5_021D8D08(SysTask *param0, void *param1);
static void ov5_021D8FF8(SysTask *param0, void *param1);
static void ov5_021D9464(SysTask *param0, void *param1);
static void ov5_021D97E8(SysTask *param0, void *param1);
static void ov5_021D9FF8(SysTask *param0, void *param1);
static void ov5_021D9F0C(SysTask *param0, void *param1);
static void ov5_021DA244(SysTask *param0, void *param1);
static void ov5_021DA748(SysTask *param0, void *param1);
static void ov5_021DA8A0(SysTask *param0, void *param1);
static void ov5_021DAB78(SysTask *param0, void *param1);
static void ov5_021DAC68(SysTask *param0, void *param1);
static void ov5_021DAD38(SysTask *param0, void *param1);
static void ov5_021DAEC0(SysTask *param0, void *param1);
static void SysTask_DarkFlash(SysTask *param0, void *param1);
static void ov5_021DB144(SysTask *param0, void *param1);
static void ov5_021DB3A8(SysTask *param0, void *param1);
static void ov5_021DB3C4(SysTask *param0, void *param1);
static void ov5_021DB3E0(SysTask *param0, void *param1);
static void ov5_021DB40C(SysTask *param0, void *param1);
static void ov5_021DB438(SysTask *param0, void *param1);
static void ov5_021DB460(SysTask *param0, void *param1);
static void ov5_021DB48C(SysTask *param0, void *param1);
static void ov5_021D78A4(WeatherCallbackContext *param0, int param1);
static void ov5_021D7C40(WeatherCallbackContext *param0, int param1);
static void ov5_021D8098(WeatherCallbackContext *param0, int param1);
static void ov5_021D8B88(WeatherCallbackContext *param0, int param1);
static void ov5_021D92C4(WeatherCallbackContext *param0, int param1);
static void ov5_021D9690(WeatherCallbackContext *param0, int param1);
static void ov5_021DA0A8(WeatherCallbackContext *param0, int param1);
static void ov5_021DA5A0(WeatherCallbackContext *param0, int param1);
static void ov5_021DA9DC(WeatherCallbackContext *param0, int param1);
static void ov5_021D7960(UnkStruct_ov5_021D6FA8 *param0);
static void ov5_021D7E20(UnkStruct_ov5_021D6FA8 *param0);
static void ov5_021D81BC(UnkStruct_ov5_021D6FA8 *param0);
static void ov5_021D8C90(UnkStruct_ov5_021D6FA8 *param0);
static void ov5_021D93DC(UnkStruct_ov5_021D6FA8 *param0);
static void ov5_021D97C0(UnkStruct_ov5_021D6FA8 *param0);
static void ov5_021DA1A8(UnkStruct_ov5_021D6FA8 *param0);
static void ov5_021DA6BC(UnkStruct_ov5_021D6FA8 *param0);
static void ov5_021DAADC(UnkStruct_ov5_021D6FA8 *param0);
static void ov5_021D9984(WeatherCallbackContext *param0, PrecipitationContext *param1);
static BOOL ov5_021D9A0C(WeatherCallbackContext *param0, PrecipitationContext *param1);
static void ov5_021D9A58(WeatherCallbackContext *param0, PrecipitationContext *param1);
static void ov5_021D9AEC(WeatherCallbackContext *param0, PrecipitationContext *param1);
static void ov5_021D9B28(WeatherCallbackContext *param0, PrecipitationContext *param1);
static BOOL ov5_021D9B68(WeatherCallbackContext *param0, PrecipitationContext *param1);
static void ov5_021D9BC0(WeatherCallbackContext *param0, PrecipitationContext *param1);
static void ov5_021D9BEC(WeatherCallbackContext *param0, PrecipitationContext *param1);
static void ov5_021D9C20(SysTask *param0, void *param1, u32 alphaCoefficient, u32 param3, u32 param4, u32 param5); // TODO: alphaCoefficient ref
static void ov5_021D9DFC(WeatherCallbackContext *param0, UnusedWeatherContext *param1, GXFogSlope fogSlope, u32 offset, GXRgb fogColor, u32 param5, u32 param6);
static void ov5_021DB614(DarkFlashContext *param0, HBlankSystem *param1);
static void DarkFlash_Done(DarkFlashContext *param0);
static void ov5_021DB6E0(DarkFlashContext *param0, fx32 param1, fx32 param2, int param3, int param4, int param5);
static BOOL ov5_021DB700(DarkFlashContext *param0);
static void ov5_021DB72C(HBlankTask *param0, void *param1);
static void DarkFlash_SwapBuffers(SysTask *param0, void *param1);
static void DarkFlash_DoneAfterVBlank(DarkFlashContext *param0);
static void Task_DarkFlashDone(SysTask *param0, void *param1);
static void ov5_021DB7F8(SysTask *param0, void *param1);
static void ov5_021DB500(DarkFlashContext *param0);
static void ov5_021DB7CC(DarkFlashContext *param0);
static void ov5_021DB588(fx32 param0, int param1, int param2, int param3, int *param4, int *param5);
WeatherSystem *WeatherSystem_Init(FieldSystem *weatherSystem);
void WeatherSystem_Delete(WeatherSystem **weatherSystem);
BOOL ov5_021D6418(WeatherSystem *weatherSystem, int stateOfSomeSort, int weather);
int ov5_021D64D0(WeatherSystem *weatherSystem, int param1);

UnkStruct_ov5_021D5EF8 *ov5_021D5EB8(FieldSystem *fieldSystem)
{
    UnkStruct_ov5_021D5EF8 *v0 = Heap_Alloc(HEAP_ID_FIELD1, sizeof(UnkStruct_ov5_021D5EF8));
    memset(v0, 0, sizeof(UnkStruct_ov5_021D5EF8));

    v0->weatherSystem = WeatherSystem_Init(fieldSystem);
    v0->unk_weather_04 = OVERWORLD_WEATHER_CLEAR;
    v0->unk_weather_08 = OVERWORLD_WEATHER_CLEAR;
    v0->state = 6;
    v0->sysTask = NULL;
    v0->unk_weather_10 = OVERWORLD_WEATHER_MAX;

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

    return v0;
}

void ov5_021D5EF8(UnkStruct_ov5_021D5EF8 *param0)
{
    if (param0->sysTask) {
        SysTask_Done(param0->sysTask);
    }

    WeatherSystem_Delete(&param0->weatherSystem);
    memset(param0, 0, sizeof(UnkStruct_ov5_021D5EF8));
    Heap_Free(param0);

    param0 = NULL;
}

void ov5_021D5F24(UnkStruct_ov5_021D5EF8 *param0, int weatherID)
{
    BOOL v0;

    GF_ASSERT(param0->state == 6);
    GF_ASSERT(weatherID < OVERWORLD_WEATHER_MAX);

    if (param0->unk_weather_04 == weatherID) {
        return;
    }

    v0 = ov5_021D6418(param0->weatherSystem, 8, param0->unk_weather_04);
    GF_ASSERT(v0);

    v0 = ov5_021D6418(param0->weatherSystem, 0, weatherID);
    GF_ASSERT(v0);

    v0 = ov5_021D6418(param0->weatherSystem, 3, weatherID);
    GF_ASSERT(v0);

    param0->unk_weather_04 = weatherID;
}

// this handles changing weather on map zone loads, defog/flash use
BOOL ov5_021D5F7C(UnkStruct_ov5_021D5EF8 *param0, int weatherID)
{
    GF_ASSERT(weatherID < OVERWORLD_WEATHER_MAX);

    if (param0->state != 6) {
        param0->unk_weather_10 = weatherID;
        return TRUE;
    }

    if (param0->unk_weather_04 == weatherID) {
        return TRUE;
    }

    GF_ASSERT(param0->sysTask == NULL);
    param0->unk_weather_08 = weatherID;

    if (ov5_IsWeatherColdAndWet(param0->unk_weather_04, param0->unk_weather_08) == FALSE) {
        param0->state = 0;
        param0->sysTask = SysTask_Start(ov5_021D5FE4, param0, 0);
    } else {
        param0->state = 0;
        param0->sysTask = SysTask_Start(ov5_021D60B4, param0, 0);
    }

    return TRUE;
}

// get some kinda weatherID
u32 ov5_Get_unk_weather_04(UnkStruct_ov5_021D5EF8 *param0)
{
    return param0->unk_weather_04;
}

// called from weather changing
static void ov5_021D5FE4(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021D5EF8 *v0 = param1;
    BOOL v1;

    switch (v0->state) {
    case 0:
        v1 = ov5_021D6418(v0->weatherSystem, 5, v0->unk_weather_04);
        GF_ASSERT(v1);
        v0->state++;
        break;
    case 1:
        v1 = ov5_021D64D0(v0->weatherSystem, v0->unk_weather_04);

        if (v1 != 3) {
            v1 = ov5_021D6418(v0->weatherSystem, 8, v0->unk_weather_04);
            GF_ASSERT(v1);
            v0->state++;
        }
        break;
    case 2:
        v1 = ov5_021D6418(v0->weatherSystem, 1, v0->unk_weather_08);
        GF_ASSERT(v1);
        v0->state++;
        break;
    case 3:
        v1 = ov5_021D64D0(v0->weatherSystem, v0->unk_weather_08);

        if (v1 != 1) {
            v0->state++;
        }
        break;
    case 4:
        v1 = ov5_021D6418(v0->weatherSystem, 2, v0->unk_weather_08);
        GF_ASSERT(v1);

        v0->state++;
        v0->unk_weather_04 = v0->unk_weather_08;
        v0->unk_weather_08 = OVERWORLD_WEATHER_CLEAR;
        break;
    case 5:
        v0->state = 6;
        v0->sysTask = NULL;

        SysTask_Done(param0);

        if (v0->unk_weather_10 != OVERWORLD_WEATHER_MAX) {
            ov5_021D5F7C(v0, v0->unk_weather_10);
            v0->unk_weather_10 = OVERWORLD_WEATHER_MAX;
        }
        break;
    default:
        break;
    }
}

// only for blizzard, snow, heavy snow?
static void ov5_021D60B4(SysTask *task, void *param1)
{
    UnkStruct_ov5_021D5EF8 *v0 = param1;
    int v1;

    switch (v0->state) {
    case 0:
        v1 = ov5_021D6418(v0->weatherSystem, 1, v0->unk_weather_08);
        GF_ASSERT(v1);
        v0->state++;
        break;
    case 1:
        v1 = ov5_021D64D0(v0->weatherSystem, v0->unk_weather_08);

        if (v1 != 1) {
            v0->state++;
        }
        break;
    case 2:
        v1 = ov5_021D6418(v0->weatherSystem, 7, v0->unk_weather_04);
        GF_ASSERT(v1);
        v1 = ov5_021D6418(v0->weatherSystem, 4, v0->unk_weather_08);
        GF_ASSERT(v1);
        v0->state++;
        break;
    case 3:
        v1 = ov5_021D64D0(v0->weatherSystem, v0->unk_weather_04);

        if (v1 != 3) {
            v1 = ov5_021D6418(v0->weatherSystem, 8, v0->unk_weather_04);
            GF_ASSERT(v1);
            v0->state++;
        }
        break;
    case 4:
        v0->unk_weather_04 = v0->unk_weather_08;
        v0->unk_weather_08 = OVERWORLD_WEATHER_CLEAR;
        v0->state = 6;
        v0->sysTask = NULL;

        SysTask_Done(task);

        if (v0->unk_weather_10 != OVERWORLD_WEATHER_MAX) {
            ov5_021D5F7C(v0, v0->unk_weather_10);
            v0->unk_weather_10 = OVERWORLD_WEATHER_MAX;
        }
        break;
    default:
        break;
    }
}

// Something about checking for snow/heavy snow/blizzard
static BOOL ov5_IsWeatherColdAndWet(int weather0, int weather1)
{
    BOOL isBothWeathersColdAndWet = FALSE;

    switch (weather0) {
    case OVERWORLD_WEATHER_SNOWING:
        if ((weather1 == OVERWORLD_WEATHER_HEAVY_SNOW) || (weather1 == OVERWORLD_WEATHER_HEAVY_SNOW_UNUSED) || (weather1 == OVERWORLD_WEATHER_BLIZZARD)) {
            isBothWeathersColdAndWet = TRUE;
        }
        break;
    case OVERWORLD_WEATHER_HEAVY_SNOW:
        if ((weather1 == OVERWORLD_WEATHER_SNOWING) || (weather1 == OVERWORLD_WEATHER_HEAVY_SNOW_UNUSED) || (weather1 == OVERWORLD_WEATHER_BLIZZARD)) {
            isBothWeathersColdAndWet = TRUE;
        }
        break;
    case OVERWORLD_WEATHER_HEAVY_SNOW_UNUSED:
        if ((weather1 == OVERWORLD_WEATHER_SNOWING) || (weather1 == OVERWORLD_WEATHER_HEAVY_SNOW) || (weather1 == OVERWORLD_WEATHER_BLIZZARD)) {
            isBothWeathersColdAndWet = TRUE;
        }
        break;
    case OVERWORLD_WEATHER_BLIZZARD:
        if ((weather1 == OVERWORLD_WEATHER_SNOWING) || (weather1 == OVERWORLD_WEATHER_HEAVY_SNOW_UNUSED) || (weather1 == OVERWORLD_WEATHER_HEAVY_SNOW)) {
            isBothWeathersColdAndWet = TRUE;
        }
        break;
    default:
        break;
    }

    return isBothWeathersColdAndWet;
}

static const int Unk_ov5_021F8CDC[4] = {
    -4,
    -6,
    -8,
    -10
};

static const int Unk_ov5_021F8CEC[4] = {
    0x2,
    0x4,
    0x2,
    0x4
};

static const char sFogDensityTable[G3X_FOG_DENSITY_TABLE_SIZE] = {
    0x38,
    0x30,
    0x28,
    0x20,
    0x18,
    0x10,
    0x8,
    0x0,
    0x8,
    0x8,
    0x8,
    0x10,
    0x18,
    0x20,
    0x28,
    0x30,
    0x38,
    0x40,
    0x44,
    0x48,
    0x4C,
    0x50,
    0x54,
    0x58,
    0x5C,
    0x60,
    0x64,
    0x68,
    0x6C,
    0x70,
    0x74,
    0x78
};

static u8 sForestShadowWiggleAmounts[FOREST_SHADOW_WIGGLE_TABLE_SIZE] = {
    -0x1,
    -0x1,
    -0x2,
    -0x2,
    -0x1,
    -0x1,
    0x0,
    0x0,
    -0x1,
    -0x1,
    -0x2,
    -0x2,
    -0x1,
    -0x1,
    0x0,
    0x0,
    -0x1,
    -0x1,
    -0x2,
    -0x2,
    -0x1,
    -0x1,
    0x0,
    0x0,
    -0x1,
    -0x1,
    0x0,
    0x0,
    -0x1,
    -0x1,
    -0x2,
    -0x2,
    -0x1,
    -0x1,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    -0x1,
    -0x1,
    -0x2,
    -0x2,
    -0x1,
    -0x1,
    0x0,
    0x0,
    -0x1,
    -0x1,
    0x0,
    0x0,
    -0x1,
    -0x1,
    -0x2,
    -0x2,
    -0x1,
    -0x1,
    0x0,
    0x0,
    -0x1,
    -0x1,
    0x0,
    0x0
};

static const WeatherBackroundGraphicsIndexes sWeatherBGIndexes[WEATHER_GRAPHICS_ENTRY_MAX] = {
    [WEATHER_GRAPHICS_ENTRY_BLIZZARD] = {
        .narcPLTTIdx = 21,
        .narcSpriteIdx = 36,
        .narcNSCRIdx = 38,
    },
    [WEATHER_GRAPHICS_ENTRY_SANDSTORM] = {
        .narcPLTTIdx = 37,
        .narcSpriteIdx = 36,
        .narcNSCRIdx = 38,
    },
    [WEATHER_GRAPHICS_ENTRY_RAINBOW] = {
        .narcPLTTIdx = 9,
        .narcSpriteIdx = 8,
        .narcNSCRIdx = 10,
    },
    [WEATHER_GRAPHICS_ENTRY_SLOW_ASHFALL] = {
        .narcPLTTIdx = 42,
        .narcSpriteIdx = 44,
        .narcNSCRIdx = 43,
    },
    [WEATHER_GRAPHICS_ENTRY_UNUSED] = {
        .narcPLTTIdx = 30,
        .narcSpriteIdx = 29,
        .narcNSCRIdx = 31,
    },
    [WEATHER_GRAPHICS_ENTRY_CLOUDY] = {
        .narcPLTTIdx = 46,
        .narcSpriteIdx = 45,
        .narcNSCRIdx = 47,
    },
    [WEATHER_GRAPHICS_ENTRY_FOG] = {
        .narcPLTTIdx = 51,
        .narcSpriteIdx = 45,
        .narcNSCRIdx = 47,
    },
    [WEATHER_GRAPHICS_ENTRY_DARK_FLASH] = { .narcPLTTIdx = 52, .narcSpriteIdx = 53, .narcNSCRIdx = 54 },
    [WEATHER_GRAPHICS_ENTRY_SPEAR_PILLAR] = { .narcPLTTIdx = 49, .narcSpriteIdx = 48, .narcNSCRIdx = 50 },
    [WEATHER_GRAPHICS_ENTRY_FOREST_SHADOWS] = { .narcPLTTIdx = 55, .narcSpriteIdx = 56, .narcNSCRIdx = 57 },
    [WEATHER_GRAPHICS_ENTRY_10] = { .narcPLTTIdx = 58, .narcSpriteIdx = 59, .narcNSCRIdx = 60 },
};

static Weather sWeatherTable[OVERWORLD_WEATHER_MAX] = {
    [OVERWORLD_WEATHER_CLEAR] = {
        .spriteResourceIndex = 0xffff,
        .weatherGraphicsEntry = WEATHER_GRAPHICS_ENTRY_NONE,
        .callbackParamSize = sizeof(u32),
        .weatherCallbackCtx = NULL,
        .spriteResources = NULL,
        .unk_10 = 0x0,
        .resLoadState = 0x0,
        .sysTask = NULL,
        .callback = ov5_021D7604 },
    [OVERWORLD_WEATHER_CLOUDY] = { .spriteResourceIndex = 0xffff, .weatherGraphicsEntry = WEATHER_GRAPHICS_ENTRY_CLOUDY, .callbackParamSize = sizeof(CloudyContext), .weatherCallbackCtx = NULL, .spriteResources = NULL, .unk_10 = 0x0, .resLoadState = 0, .sysTask = NULL, .callback = ov5_021DAC68 },
    [OVERWORLD_WEATHER_RAINING] = { .spriteResourceIndex = 0x0, .weatherGraphicsEntry = WEATHER_GRAPHICS_ENTRY_NONE, .callbackParamSize = sizeof(PrecipitationContext), .weatherCallbackCtx = NULL, .spriteResources = NULL, .unk_10 = 0x0, .resLoadState = 0, .sysTask = NULL, .callback = ov5_021D7658 },
    [OVERWORLD_WEATHER_HEAVY_RAIN] = { .spriteResourceIndex = 0x5, .weatherGraphicsEntry = WEATHER_GRAPHICS_ENTRY_NONE, .callbackParamSize = sizeof(PrecipitationContext), .weatherCallbackCtx = NULL, .spriteResources = NULL, .unk_10 = 0x0, .resLoadState = 0, .sysTask = NULL, .callback = ov5_021D9FF8 },
    [OVERWORLD_WEATHER_THUNDERSTORM] = { .spriteResourceIndex = 0x5, .weatherGraphicsEntry = WEATHER_GRAPHICS_ENTRY_NONE, .callbackParamSize = sizeof(PrecipitationContext), .weatherCallbackCtx = NULL, .spriteResources = NULL, .unk_10 = 0x0, .resLoadState = 0, .sysTask = NULL, .callback = ov5_021D9F0C },
    [OVERWORLD_WEATHER_SNOWING] = { .spriteResourceIndex = 0x3, .weatherGraphicsEntry = WEATHER_GRAPHICS_ENTRY_NONE, .callbackParamSize = sizeof(PrecipitationContext), .weatherCallbackCtx = NULL, .spriteResources = NULL, .unk_10 = 0x0, .resLoadState = 0, .sysTask = NULL, .callback = ov5_021D79F0 },
    [OVERWORLD_WEATHER_HEAVY_SNOW] = { .spriteResourceIndex = 0x1, .weatherGraphicsEntry = WEATHER_GRAPHICS_ENTRY_NONE, .callbackParamSize = sizeof(PrecipitationContext), .weatherCallbackCtx = NULL, .spriteResources = NULL, .unk_10 = 0x0, .resLoadState = 0, .sysTask = NULL, .callback = ov5_021D7E54 },
    [OVERWORLD_WEATHER_BLIZZARD] = { .spriteResourceIndex = 0x9, .weatherGraphicsEntry = WEATHER_GRAPHICS_ENTRY_BLIZZARD, .callbackParamSize = sizeof(PrecipitationContext), .weatherCallbackCtx = NULL, .spriteResources = NULL, .unk_10 = 0x0, .resLoadState = 0, .sysTask = NULL, .callback = ov5_021D8FF8 },
    [OVERWORLD_WEATHER_LOW_FOG] = { .spriteResourceIndex = 0xffff, .weatherGraphicsEntry = WEATHER_GRAPHICS_ENTRY_FOG, .callbackParamSize = sizeof(FogContext), .weatherCallbackCtx = NULL, .spriteResources = NULL, .unk_10 = 0x0, .resLoadState = 0, .sysTask = NULL, .callback = ov5_021D879C },
    [OVERWORLD_WEATHER_SLOW_ASHFALL] = { .spriteResourceIndex = 0x6, .weatherGraphicsEntry = WEATHER_GRAPHICS_ENTRY_SLOW_ASHFALL, .callbackParamSize = sizeof(PrecipitationContext), .weatherCallbackCtx = NULL, .spriteResources = NULL, .unk_10 = 0x0, .resLoadState = 0, .sysTask = NULL, .callback = ov5_021DA244 },
    [OVERWORLD_WEATHER_SANDSTORM] = { .spriteResourceIndex = 0x2, .weatherGraphicsEntry = WEATHER_GRAPHICS_ENTRY_SANDSTORM, .callbackParamSize = sizeof(PrecipitationContext), .weatherCallbackCtx = NULL, .spriteResources = NULL, .unk_10 = 0x0, .resLoadState = 0, .sysTask = NULL, .callback = ov5_021D8D08 },
    [OVERWORLD_WEATHER_HAILING] = { .spriteResourceIndex = 0x4, .weatherGraphicsEntry = WEATHER_GRAPHICS_ENTRY_NONE, .callbackParamSize = sizeof(PrecipitationContext), .weatherCallbackCtx = NULL, .spriteResources = NULL, .unk_10 = 0x0, .resLoadState = 0, .sysTask = NULL, .callback = ov5_021D9464 },
    [OVERWORLD_WEATHER_SPIRITS] = { .spriteResourceIndex = 0x7, .weatherGraphicsEntry = WEATHER_GRAPHICS_ENTRY_NONE, .callbackParamSize = sizeof(SpiritsContext), .weatherCallbackCtx = NULL, .spriteResources = NULL, .unk_10 = 0x0, .resLoadState = 0, .sysTask = NULL, .callback = ov5_021DA8A0 },
    [OVERWORLD_WEATHER_SPEAR_PILLAR] = { .spriteResourceIndex = 0xffff, .weatherGraphicsEntry = WEATHER_GRAPHICS_ENTRY_SPEAR_PILLAR, .callbackParamSize = sizeof(FogContext), .weatherCallbackCtx = NULL, .spriteResources = NULL, .unk_10 = 0x0, .resLoadState = 0, .sysTask = NULL, .callback = ov5_021DAB78 },
    [OVERWORLD_WEATHER_FOG] = { .spriteResourceIndex = 0xffff, .weatherGraphicsEntry = WEATHER_GRAPHICS_ENTRY_FOG, .callbackParamSize = sizeof(FogContext), .weatherCallbackCtx = NULL, .spriteResources = NULL, .unk_10 = 0x0, .resLoadState = 0, .sysTask = NULL, .callback = ov5_021DAEC0 },
    [OVERWORLD_WEATHER_DEEP_FOG] = { .spriteResourceIndex = 0xffff, .weatherGraphicsEntry = WEATHER_GRAPHICS_ENTRY_FOG, .callbackParamSize = sizeof(FogContext), .weatherCallbackCtx = NULL, .spriteResources = NULL, .unk_10 = 0x0, .resLoadState = 0, .sysTask = NULL, .callback = ov5_021DAD38 },
    [OVERWORLD_WEATHER_DARK_FLASH] = { .spriteResourceIndex = 0xffff, .weatherGraphicsEntry = WEATHER_GRAPHICS_ENTRY_DARK_FLASH, .callbackParamSize = sizeof(DarkFlashContext), .weatherCallbackCtx = NULL, .spriteResources = NULL, .unk_10 = 0x0, .resLoadState = 0, .sysTask = NULL, .callback = SysTask_DarkFlash },
    [OVERWORLD_WEATHER_17] = { .spriteResourceIndex = 0xffff, .weatherGraphicsEntry = WEATHER_GRAPHICS_ENTRY_UNUSED, .callbackParamSize = (sizeof(int) * 10), .weatherCallbackCtx = NULL, .spriteResources = NULL, .unk_10 = 0x0, .resLoadState = 0, .sysTask = NULL, .callback = ov5_021DA748 },
    [OVERWORLD_WEATHER_18] = { .spriteResourceIndex = 0xffff, .weatherGraphicsEntry = WEATHER_GRAPHICS_ENTRY_NONE, .callbackParamSize = sizeof(UnusedWeatherContext), .weatherCallbackCtx = NULL, .spriteResources = NULL, .unk_10 = 0x0, .resLoadState = 0, .sysTask = NULL, .callback = ov5_021D84D4 },
    [OVERWORLD_WEATHER_19] = { .spriteResourceIndex = 0xffff, .weatherGraphicsEntry = WEATHER_GRAPHICS_ENTRY_NONE, .callbackParamSize = sizeof(UnusedWeatherContext), .weatherCallbackCtx = NULL, .spriteResources = NULL, .unk_10 = 0x0, .resLoadState = 0, .sysTask = NULL, .callback = ov5_021D8638 },
    [OVERWORLD_WEATHER_RAINBOW] = { .spriteResourceIndex = 0xffff, .weatherGraphicsEntry = WEATHER_GRAPHICS_ENTRY_RAINBOW, .callbackParamSize = (sizeof(int) * 10), .weatherCallbackCtx = NULL, .spriteResources = NULL, .unk_10 = 0x0, .resLoadState = 0, .sysTask = NULL, .callback = ov5_021D97E8 },
    [OVERWORLD_WEATHER_HEAVY_SNOW_UNUSED] = { .spriteResourceIndex = 0x1, .weatherGraphicsEntry = WEATHER_GRAPHICS_ENTRY_BLIZZARD, .callbackParamSize = sizeof(PrecipitationContext), .weatherCallbackCtx = NULL, .spriteResources = NULL, .unk_10 = 0x0, .resLoadState = 0, .sysTask = NULL, .callback = ov5_021D823C },
    [OVERWORLD_WEATHER_22] = { .spriteResourceIndex = 0x2, .weatherGraphicsEntry = WEATHER_GRAPHICS_ENTRY_NONE, .callbackParamSize = sizeof(PrecipitationContext), .weatherCallbackCtx = NULL, .spriteResources = NULL, .unk_10 = 0x0, .resLoadState = 0, .sysTask = NULL, .callback = ov5_021D8948 },
    [OVERWORLD_WEATHER_FOREST_SHADOWS] = { .spriteResourceIndex = 0xffff, .weatherGraphicsEntry = WEATHER_GRAPHICS_ENTRY_FOREST_SHADOWS, .callbackParamSize = sizeof(ForestShadowsContext), .weatherCallbackCtx = NULL, .spriteResources = NULL, .unk_10 = 0x0, .resLoadState = 0, .sysTask = NULL, .callback = ov5_021DB144 },
    [OVERWORLD_WEATHER_24] = { .spriteResourceIndex = 0xffff, .weatherGraphicsEntry = WEATHER_GRAPHICS_ENTRY_10, .callbackParamSize = sizeof(UnusedWeatherContext), .weatherCallbackCtx = NULL, .spriteResources = NULL, .unk_10 = 0x0, .resLoadState = 0, .sysTask = NULL, .callback = ov5_021DB3A8 },
    [OVERWORLD_WEATHER_25] = { .spriteResourceIndex = 0xffff, .weatherGraphicsEntry = WEATHER_GRAPHICS_ENTRY_10, .callbackParamSize = sizeof(UnusedWeatherContext), .weatherCallbackCtx = NULL, .spriteResources = NULL, .unk_10 = 0x0, .resLoadState = 0, .sysTask = NULL, .callback = ov5_021DB3C4 },
    [OVERWORLD_WEATHER_26] = { .spriteResourceIndex = 0xffff, .weatherGraphicsEntry = WEATHER_GRAPHICS_ENTRY_NONE, .callbackParamSize = sizeof(UnusedWeatherContext), .weatherCallbackCtx = NULL, .spriteResources = NULL, .unk_10 = 0x0, .resLoadState = 0, .sysTask = NULL, .callback = ov5_021DB3E0 },
    [OVERWORLD_WEATHER_27] = { .spriteResourceIndex = 0xffff, .weatherGraphicsEntry = WEATHER_GRAPHICS_ENTRY_NONE, .callbackParamSize = sizeof(UnusedWeatherContext), .weatherCallbackCtx = NULL, .spriteResources = NULL, .unk_10 = 0x0, .resLoadState = 0, .sysTask = NULL, .callback = ov5_021DB40C },
    [OVERWORLD_WEATHER_28] = { .spriteResourceIndex = 0xffff, .weatherGraphicsEntry = WEATHER_GRAPHICS_ENTRY_NONE, .callbackParamSize = sizeof(UnusedWeatherContext), .weatherCallbackCtx = NULL, .spriteResources = NULL, .unk_10 = 0x0, .resLoadState = 0, .sysTask = NULL, .callback = ov5_021DB438 },
    [OVERWORLD_WEATHER_29] = { .spriteResourceIndex = 0xffff, .weatherGraphicsEntry = WEATHER_GRAPHICS_ENTRY_NONE, .callbackParamSize = sizeof(UnusedWeatherContext), .weatherCallbackCtx = NULL, .spriteResources = NULL, .unk_10 = 0x0, .resLoadState = 0, .sysTask = NULL, .callback = ov5_021DB460 },
    [OVERWORLD_WEATHER_30] = { .spriteResourceIndex = 0xffff, .weatherGraphicsEntry = WEATHER_GRAPHICS_ENTRY_NONE, .callbackParamSize = sizeof(UnusedWeatherContext), .weatherCallbackCtx = NULL, .spriteResources = NULL, .unk_10 = 0x0, .resLoadState = 0, .sysTask = NULL, .callback = ov5_021DB48C }
};

static void WeatherDraw_Init(WeatherDraw *weatherDraw)
{
    InitRenderer(&weatherDraw->renderer, -FX32_ONE);

    NNSG2dViewRect viewRect;
    viewRect.posTopLeft.x = 0;
    viewRect.posTopLeft.y = 0;
    viewRect.sizeView.x = (HW_LCD_WIDTH - 1 << FX32_SHIFT);
    viewRect.sizeView.y = (HW_LCD_HEIGHT << FX32_SHIFT);

    RenderOam_InitSurface(&weatherDraw->surface, &viewRect, NNS_G2D_SURFACETYPE_MAIN2D, &weatherDraw->renderer);

    for (int i = 0; i < MAX_SPRITE_RESOURCE_GEN4; i++) {
        weatherDraw->spriteResourceCollection[i] = SpriteResourceCollection_New(31, i, HEAP_ID_FIELD1);
    }

    int spriteResTableSize = SpriteResourceTable_Size();
    weatherDraw->weatherSpriteResourceTable = Heap_Alloc(HEAP_ID_FIELD1, spriteResTableSize * MAX_SPRITE_RESOURCE_GEN4);

    ov5_LoadSpriteResource(weatherDraw->weatherSpriteResourceTable, SPRITE_RESOURCE_CHAR, 63);
    ov5_LoadSpriteResource(weatherDraw->weatherSpriteResourceTable, SPRITE_RESOURCE_PLTT, 64);
    ov5_LoadSpriteResource(weatherDraw->weatherSpriteResourceTable, SPRITE_RESOURCE_CELL, 61);
    ov5_LoadSpriteResource(weatherDraw->weatherSpriteResourceTable, SPRITE_RESOURCE_ANIM, 62);

    SpriteListParams spriteListParams;

    spriteListParams.maxElements = 96;
    spriteListParams.renderer = &weatherDraw->renderer;
    spriteListParams.heapID = HEAP_ID_FIELD1;

    weatherDraw->spriteList = SpriteList_New(&spriteListParams);
    weatherDraw->sysTask = SysTask_Start(ov5_UpdateSpriteList, weatherDraw, 10);
}

static void ov5_UpdateSpriteList(SysTask *task, void *param)
{
    SpriteList_Update(((WeatherDraw *)param)->spriteList);
}

static void ov5_LoadSpriteResource(SpriteResourceTable *weatherSpriteResourceTable, int spriteIndex, int narcIdx)
{
    SpriteResourceTable *resTable = SpriteResourceTable_GetArrayElement(weatherSpriteResourceTable, spriteIndex);
    void *buffer = LoadMemberFromNARC(NARC_INDEX_DATA__WEATHER_SYS, narcIdx, 0, HEAP_ID_FIELD1, 1);

    SpriteResourceTable_LoadFromBinary(buffer, resTable, HEAP_ID_FIELD1);
    Heap_Free(buffer);
}

static void WeatherDraw_Delete(WeatherDraw *param0)
{
    for (int i = 0; i < MAX_SPRITE_RESOURCE_GEN4; i++) {
        SpriteResourceTable_Clear(SpriteResourceTable_GetArrayElement(param0->weatherSpriteResourceTable, i));
        SpriteResourceCollection_Delete(param0->spriteResourceCollection[i]);
    }

    Heap_Free(param0->weatherSpriteResourceTable);
    param0->weatherSpriteResourceTable = NULL;

    SpriteList_Delete(param0->spriteList);
    param0->spriteList = NULL;

    SysTask_Done(param0->sysTask);
    param0->sysTask = NULL;
}

static void ov5_SetPrecipitationPosition(Sprite *sprite, VecFx32 *pos)
{
    if (pos->x > ((HW_LCD_WIDTH - 1 << FX32_SHIFT) + 64 * FX32_ONE)) {
        pos->x %= ((HW_LCD_WIDTH - 1 << FX32_SHIFT) + 64 * FX32_ONE);
    } else if (pos->x < (-64 * FX32_ONE)) {
        pos->x += ((HW_LCD_WIDTH - 1 << FX32_SHIFT) + 64 * FX32_ONE);
    }

    if (pos->y > ((HW_LCD_HEIGHT << FX32_SHIFT) + 64 * FX32_ONE)) {
        pos->y %= ((HW_LCD_HEIGHT << FX32_SHIFT) + 64 * FX32_ONE);
    } else if (pos->y < (-64 * FX32_ONE)) {
        pos->y += ((HW_LCD_HEIGHT << FX32_SHIFT) + 64 * FX32_ONE);
    }

    Sprite_SetPosition(sprite, pos);
}

WeatherSystem *WeatherSystem_Init(FieldSystem *fieldSystem)
{
    WeatherSystem *weatherSystem = Heap_Alloc(HEAP_ID_FIELD1, sizeof(WeatherSystem));
    weatherSystem->fieldSystem = fieldSystem;

    WeatherDraw_Init(&weatherSystem->unk_08);

    weatherSystem->weatherTable = sWeatherTable;
    weatherSystem->backgroundIndexes = sWeatherBGIndexes;
    weatherSystem->weatherNarc = NARC_ctor(NARC_INDEX_DATA__WEATHER_SYS, HEAP_ID_FIELD1);

    return weatherSystem;
}

void WeatherSystem_Delete(WeatherSystem **weatherSystem)
{
    if (*weatherSystem != NULL) {
        for (int weatherID = 0; weatherID < OVERWORLD_WEATHER_MAX; weatherID++) {
            ov5_021D68B8(*weatherSystem, weatherID);
        }

        FogManager_ApplyParameters((*weatherSystem)->fieldSystem->fogMan, FOG_PARAMETER_ENABLED, FALSE, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);

        G2_SetBG0Priority(1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);

        WeatherDraw_Delete(&(*weatherSystem)->unk_08);

        NARC_dtor((*weatherSystem)->weatherNarc);
        Heap_FreeExplicit(HEAP_ID_FIELD1, *weatherSystem);

        *weatherSystem = NULL;
    }
}

// Try something
BOOL ov5_021D6418(WeatherSystem *weatherSystem, int stateOfSomeSort, int weatherID)
{
    BOOL success = TRUE;

    if (weatherID > OVERWORLD_WEATHER_MAX) {
        return FALSE;
    }

    switch (stateOfSomeSort) {
    case 0:
        success = ov5_021D66D0(weatherSystem, weatherID);
        break;
    case 1:
        success = WeatherSystem_TryStartLoadWeatehrResources(weatherSystem, weatherID);
        break;
    case 2:
        success = WeatherSystem_StartWeatherTask(weatherSystem, weatherID, 0, 1);
        break;
    case 3:
        success = WeatherSystem_StartWeatherTask(weatherSystem, weatherID, 2, 1);
        break;
    case 4:
        if (FogManager_IsEnabled(weatherSystem->fieldSystem->fogMan) == TRUE) {
            success = WeatherSystem_StartWeatherTask(weatherSystem, weatherID, 0, 2);
        } else {
            success = WeatherSystem_StartWeatherTask(weatherSystem, weatherID, 0, 1);
        }
        break;
    case 5:
        ov5_021D6868(weatherSystem, weatherID, 1);
        break;
    case 6:
        ov5_021D6890(weatherSystem, weatherID);
        break;
    case 7:
        ov5_021D6868(weatherSystem, weatherID, 0);
        break;
    case 8:
        ov5_021D68B8(weatherSystem, weatherID);
        break;
    default:
        break;
    }

    return success;
}

int ov5_021D64D0(WeatherSystem *weatherSystem, int weatherID)
{
    if (weatherID >= OVERWORLD_WEATHER_MAX) {
        return 0;
    }

    Weather *weather = &weatherSystem->weatherTable[weatherID];

    return weather->unk_10;
}

static void ov5_SetBlendAlpha(int alphaCoefficient1, int alphaCoefficient2)
{
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BD, alphaCoefficient1, alphaCoefficient2);
}

// TODO: this
static void ov5_021D64FC(UnkStruct_ov5_021D64FC *param0, int param1, int param2, int param3)
{
    param0->alphaCoefficient = param1;
    param0->unk_04 = param1;
    param0->unk_08 = param2 - param1;
    param0->unk_10 = param3;
    param0->unk_0C = 0;
}

static BOOL ov5_021D650C(UnkStruct_ov5_021D64FC *param0)
{
    int v0 = param0->unk_08 * param0->unk_0C;
    v0 = v0 / param0->unk_10;

    param0->alphaCoefficient = v0 + param0->unk_04;

    if ((param0->unk_0C + 1) <= param0->unk_10) {
        param0->unk_0C++;
        return FALSE;
    }

    param0->unk_0C = param0->unk_10;
    return TRUE;
}

static void ov5_021D6538(UnkStruct_ov5_021D6538 *param0, fx32 param1, fx32 param2, int param3)
{
    param0->unk_00 = param1;
    param0->unk_04 = param1;
    param0->unk_08 = param2 - param1;
    param0->unk_0E = param3;
    param0->unk_0C = 0;
}

static BOOL ov5_021D6548(UnkStruct_ov5_021D6538 *param0)
{
    fx32 v0 = FX_Mul(param0->unk_08, param0->unk_0C);
    v0 = FX_Div(v0, param0->unk_0E);

    param0->unk_00 = v0 + param0->unk_04;

    if (param0->unk_0C + 1 <= param0->unk_0E) {
        param0->unk_0C++;

        return FALSE;
    }

    param0->unk_0C = param0->unk_0E;
    return TRUE;
}

static void ov5_LoadWeatherSpriteResources(WeatherSystem *weatherSystem, int spriteResourceIndex, WeatherSpriteResourceGroup *spriteResources)
{
    WeatherSystem_LoadWeatherSpriteResourceCell(weatherSystem, spriteResourceIndex, spriteResources);
    WeatherSystem_LoadWeatherSpriteResourceAnim(weatherSystem, spriteResourceIndex, spriteResources);
    WeatherSystem_LoadWeatherSpriteResourceTile(weatherSystem, spriteResourceIndex, spriteResources);
    WeatherSystem_LoadWeatherSpriteResourcePalette(weatherSystem, spriteResourceIndex, spriteResources);
}

static SpriteResource *ov5_GetWeatherSpriteResource(SpriteResourceTable *spriteResourceTable, enum SpriteResourceType resourceType, int spriteResourceIndex, SpriteResourceCollection *spriteResources, NARC *weatherNarc, BOOL allocAtEnd)
{
    SpriteResource *spriteResource;

    SpriteResourceTable *resourceTable = SpriteResourceTable_GetArrayElement(spriteResourceTable, resourceType);
    int memberIdx = SpriteResourceTable_GetNARCEntryMemberIndex(resourceTable, spriteResourceIndex);
    BOOL isCompressed = SpriteResourceTable_IsNARCEntryCompressed(resourceTable, spriteResourceIndex);
    NNS_G2D_VRAM_TYPE vramType = SpriteResourceTable_GetEntryVRAMType(resourceTable, spriteResourceIndex);
    int palIdx = SpriteResourceTable_GetPaletteIndex(resourceTable, spriteResourceIndex);
    int entryId = SpriteResourceTable_GetEntryID(resourceTable, spriteResourceIndex);

    switch (resourceType) {
    case SPRITE_RESOURCE_CHAR:
        spriteResource = SpriteResourceCollection_AddTilesFromEx(spriteResources, weatherNarc, memberIdx, isCompressed, entryId, vramType, HEAP_ID_FIELD1, allocAtEnd);
        break;
    case SPRITE_RESOURCE_PLTT:
        spriteResource = SpriteResourceCollection_AddPaletteFromEx(spriteResources, weatherNarc, memberIdx, isCompressed, entryId, vramType, palIdx, HEAP_ID_FIELD1, allocAtEnd);
        break;
    case SPRITE_RESOURCE_CELL:
        spriteResource = SpriteResourceCollection_AddFrom(spriteResources, weatherNarc, memberIdx, isCompressed, entryId, SPRITE_RESOURCE_CELL, HEAP_ID_FIELD1);
        break;
    case SPRITE_RESOURCE_ANIM:
        spriteResource = SpriteResourceCollection_AddFrom(spriteResources, weatherNarc, memberIdx, isCompressed, entryId, SPRITE_RESOURCE_ANIM, HEAP_ID_FIELD1);
        break;
    }

    return spriteResource;
}

static void WeatherSystem_ResetSpriteResources(WeatherSystem *weatherSystem, int spriteResourceIndex, WeatherSpriteResourceGroup *spriteResources)
{
    if (spriteResourceIndex != 0xffff) {
        if (spriteResources->weatherSpriteResources[SPRITE_RESOURCE_CHAR]) {
            SpriteTransfer_ResetCharTransfer(spriteResources->weatherSpriteResources[SPRITE_RESOURCE_CHAR]);
        }

        if (spriteResources->weatherSpriteResources[SPRITE_RESOURCE_PLTT]) {
            SpriteTransfer_ResetPlttTransfer(spriteResources->weatherSpriteResources[SPRITE_RESOURCE_PLTT]);
        }

        for (int i = 0; i < MAX_SPRITE_RESOURCE_GEN4; i++) {
            if (spriteResources->weatherSpriteResources[i]) {
                SpriteResourceCollection_Remove(weatherSystem->unk_08.spriteResourceCollection[i], spriteResources->weatherSpriteResources[i]);
            }
        }
    }
}

static BOOL ov5_021D66D0(WeatherSystem *weatherSystem, int weatherID)
{
    Weather *weather = &weatherSystem->weatherTable[weatherID];
    BOOL canProceed;

    if (weather->weatherCallbackCtx == NULL) {
        canProceed = WeatherSystem_TryInitWeatherCallbackCtx(weatherSystem, weather);

        if (canProceed == FALSE) {
            return FALSE;
        }

        canProceed = WeatherSystem_TryLoadWeatherSpriteResources(weatherSystem, weather);

        if (canProceed == FALSE) {
            Heap_Free(weather->weatherCallbackCtx);
            weather->weatherCallbackCtx = NULL;
            return FALSE;
        }

        weather->weatherCallbackCtx->spriteResources = weather->spriteResources;

        if (weather->spriteResourceIndex != 0xffff) {
            WeatherCallbackContext_DisableSprites(weather->weatherCallbackCtx);
        }

        WeatherSystem_LoadWeatherEntryGraphics(weatherSystem, weather->weatherGraphicsEntry);

        weather->unk_10 = 2;
    }

    return TRUE;
}

static BOOL WeatherSystem_TryStartLoadWeatehrResources(WeatherSystem *weatherSystem, int weatherID)
{
    Weather *weather = &weatherSystem->weatherTable[weatherID];

    if (weather->weatherCallbackCtx) {
        return TRUE;
    }

    if (WeatherSystem_TryInitWeatherCallbackCtx(weatherSystem, weather) == FALSE) {
        return FALSE;
    }

    weather->sysTask = SysTask_Start(SysTask_LoadWeatherResources, weather, 1);
    weather->unk_10 = 1;
    weather->resLoadState = 0;

    return TRUE;
}

static BOOL WeatherSystem_StartWeatherTask(WeatherSystem *weatherSystem, int weatherID, int state, u32 param3)
{
    Weather *weather = &weatherSystem->weatherTable[weatherID];

    if (weather->spriteResourceIndex != 0xffff) {
        if (weather->spriteResources == NULL) {
            return FALSE;
        }
    }

    if (weather->weatherCallbackCtx == NULL) {
        return FALSE;
    }

    if (weather->unk_10 != 2) {
        return FALSE;
    }

    weather->weatherCallbackCtx->sysTask = SysTask_Start(weather->callback, weather->weatherCallbackCtx, 4);

    if (weather->weatherCallbackCtx->sysTask == NULL) {
        return FALSE;
    }

    weather->unk_10 = 3;
    weather->weatherCallbackCtx->state = state;
    weather->weatherCallbackCtx->unk_BA6 = 0;
    weather->weatherCallbackCtx->unk_0C.unk_34 = &weather->weatherCallbackCtx->unk_0C;
    weather->weatherCallbackCtx->unk_0C.unk_38 = &weather->weatherCallbackCtx->unk_0C;
    weather->weatherCallbackCtx->unk_BA4 = param3;
    weather->weatherCallbackCtx->isSoundPlaying = FALSE;
    weather->weatherCallbackCtx->prevCameraTarget = *(NNS_G3dGlbGetCameraTarget());

    if (weather->callbackParamSize > 0) {
        weather->weatherCallbackCtx->weatherCallbackParams = Heap_Alloc(HEAP_ID_FIELD1, weather->callbackParamSize);
        memset(weather->weatherCallbackCtx->weatherCallbackParams, 0, weather->callbackParamSize);
    } else {
        weather->weatherCallbackCtx->weatherCallbackParams = NULL;
    }

    if (weather->weatherGraphicsEntry != 0xffff) {
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);

        G2_SetBG2Priority(1);
        G2_SetBG0Priority(2);
    }

    return TRUE;
}

static void ov5_021D6868(WeatherSystem *weatherSystem, int weatherID, u32 param2)
{
    Weather *weather = &weatherSystem->weatherTable[weatherID];

    if (weather->unk_10 == 3) {
        weather->weatherCallbackCtx->unk_BA6 = 5;
        weather->weatherCallbackCtx->unk_BA4 = param2;
    }
}

static void ov5_021D6890(WeatherSystem *weatherSystem, int weatherID)
{
    Weather *weather = &weatherSystem->weatherTable[weatherID];

    if (ov5_021D64D0(weatherSystem, weatherID) == 3) {
        weather->weatherCallbackCtx->state = 5;
        weather->callback(NULL, weather->weatherCallbackCtx);
    }
}

static void ov5_021D68B8(WeatherSystem *weatherSystem, int weatherID)
{
    Weather *weather = &weatherSystem->weatherTable[weatherID];

    if (weather->weatherGraphicsEntry != 0xffff) {
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);

        G2_SetBG2Priority(3);
        G2_SetBG0Priority(1);
        G2_BlendNone();
    }

    if (weather->spriteResources != NULL) {
        WeatherSystem_ResetSpriteResources(weatherSystem, weather->spriteResourceIndex, weather->spriteResources);
        Heap_FreeExplicit(HEAP_ID_FIELD1, weather->spriteResources);
        weather->spriteResources = NULL;

        if (weather->sysTask != NULL) {
            SysTask_Done(weather->sysTask);
            weather->sysTask = NULL;
        }
    }

    if (weather->weatherCallbackCtx != NULL) {
        ov5_021D6FD8(&weather->weatherCallbackCtx->unk_0C);

        if (weather->spriteResourceIndex != 0xffff) {
            WeatherCallbackContext_DeleteSprites(weather->weatherCallbackCtx);
        }

        if (weather->weatherCallbackCtx->isSoundPlaying == TRUE) {
            ov5_StopWeatherSound(weather->weatherCallbackCtx);
        }

        if (weather->weatherCallbackCtx->weatherCallbackParams != NULL) {
            Heap_FreeExplicit(HEAP_ID_FIELD1, weather->weatherCallbackCtx->weatherCallbackParams);
            weather->weatherCallbackCtx->weatherCallbackParams = NULL;
        }

        if (weather->unk_10 == 1) {
            if (weather->sysTask) {
                SysTask_Done(weather->sysTask);
            }
        } else {
            if (weather->unk_10 == 3) {
                SysTask_Done(weather->weatherCallbackCtx->sysTask);
            }
        }

        Heap_FreeExplicit(HEAP_ID_FIELD1, weather->weatherCallbackCtx);
        weather->weatherCallbackCtx = NULL;
    }

    FogManager_ApplyParameters(weatherSystem->fieldSystem->fogMan, FOG_PARAMETER_ENABLED, FALSE, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
}

static void ov5_021D69B8(Weather *weather)
{
    if (weather->weatherGraphicsEntry != 0xffff) {
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);

        G2_SetBG2Priority(3);
        G2_SetBG0Priority(1);
        G2_BlendNone();
    }

    if (weather->weatherCallbackCtx != NULL) {
        ov5_021D6FD8(&weather->weatherCallbackCtx->unk_0C);

        if (weather->weatherCallbackCtx->isSoundPlaying == TRUE) {
            ov5_StopWeatherSound(weather->weatherCallbackCtx);
        }

        if (weather->unk_10 == 3) {
            SysTask_Done(weather->weatherCallbackCtx->sysTask);
            weather->unk_10 = 2;
        }
    }
}

static void WeatherSystem_LoadWeatherEntryGraphics(WeatherSystem *weatherSystem, enum WeatherGraphicsEntry weatherGraphicsEntry)
{
    WeatherSystem_LoadWeatherBGPalette(weatherSystem, weatherGraphicsEntry);
    WeatherSystem_LoadWeatherBGTiles(weatherSystem, weatherGraphicsEntry);
    WeatherSystem_BufferWeatherBGTilemap(weatherSystem, weatherGraphicsEntry);
}

static BOOL WeatherSystem_TryLoadWeatherSpriteResources(WeatherSystem *weatherSystem, Weather *weather)
{
    if (weather->spriteResourceIndex != 0xffff) {
        if (weather->spriteResources == NULL) {
            if (!Weather_TryCreateWeatherSpriteResourceGroup(weather)) {
                return FALSE;
            }

            ov5_LoadWeatherSpriteResources(weatherSystem, weather->spriteResourceIndex, weather->spriteResources);
            WeatherSystem_LoadSpriteResourceTemplate(weatherSystem, weather);
        }
    }

    return TRUE;
}

static void SysTask_LoadWeatherResources(SysTask *task, void *weatherParam)
{
    Weather *weather = weatherParam;
    WeatherSystem *weatherSystem = weather->weatherCallbackCtx->weatherSystem;

    switch (weather->resLoadState) {
    case 0:
        BOOL success = Weather_TryCreateWeatherSpriteResourceGroup(weather);
        GF_ASSERT(success);
        weather->resLoadState++;
        break;
    case 1:
        WeatherSystem_LoadWeatherSpriteResourceCell(weatherSystem, weather->spriteResourceIndex, weather->spriteResources);
        weather->resLoadState++;
        break;
    case 2:
        WeatherSystem_LoadWeatherBGPalette(weatherSystem, weather->weatherGraphicsEntry);
        weather->resLoadState++;
        break;
    case 3:
        WeatherSystem_LoadWeatherSpriteResourceAnim(weatherSystem, weather->spriteResourceIndex, weather->spriteResources);
        weather->resLoadState++;
        break;
    case 4:
        WeatherSystem_LoadWeatherBGTiles(weatherSystem, weather->weatherGraphicsEntry);
        weather->resLoadState++;
        break;
    case 5:
        WeatherSystem_LoadWeatherSpriteResourceTile(weatherSystem, weather->spriteResourceIndex, weather->spriteResources);
        weather->resLoadState++;
        break;
    case 6:
        WeatherSystem_BufferWeatherBGTilemap(weatherSystem, weather->weatherGraphicsEntry);
        weather->resLoadState++;
        break;
    case 7:
        WeatherSystem_LoadWeatherSpriteResourcePalette(weatherSystem, weather->spriteResourceIndex, weather->spriteResources);
        weather->resLoadState++;
        break;
    case 8:
        WeatherSystem_LoadSpriteResourceTemplate(weatherSystem, weather);
        weather->weatherCallbackCtx->spriteResources = weather->spriteResources;

        if (weather->spriteResourceIndex != 0xffff) {
            WeatherCallbackContext_DisableSprites(weather->weatherCallbackCtx);
        }

        weather->unk_10 = 2;
        weather->resLoadState = 0;
        weather->sysTask = NULL;
        SysTask_Done(task);
        break;
    }
}

static BOOL WeatherSystem_TryInitWeatherCallbackCtx(WeatherSystem *weatherSystem, Weather *weather)
{
    if (weather->weatherCallbackCtx) {
        return TRUE;
    }

    weather->weatherCallbackCtx = Heap_Alloc(HEAP_ID_FIELD1, sizeof(WeatherCallbackContext));

    if (weather->weatherCallbackCtx == NULL) {
        return FALSE;
    }

    memset(weather->weatherCallbackCtx, 0, sizeof(WeatherCallbackContext));

    weather->weatherCallbackCtx->weatherSystem = weatherSystem;
    weather->weatherCallbackCtx->state = 0;
    weather->weatherCallbackCtx->unk_BA6 = 0;
    weather->weatherCallbackCtx->unk_0C.unk_34 = &weather->weatherCallbackCtx->unk_0C;
    weather->weatherCallbackCtx->unk_0C.unk_38 = &weather->weatherCallbackCtx->unk_0C;
    weather->weatherCallbackCtx->weatherCallbackParams = NULL;
    weather->weatherCallbackCtx->unk_04 = weather;

    return TRUE;
}

static BOOL Weather_TryCreateWeatherSpriteResourceGroup(Weather *weather)
{
    if (weather->spriteResourceIndex != 0xffff) {
        if (weather->spriteResources) {
            return TRUE;
        }

        weather->spriteResources = Heap_Alloc(HEAP_ID_FIELD1, sizeof(WeatherSpriteResourceGroup));

        if (weather->spriteResources == NULL) {
            return FALSE;
        }

        memset(weather->spriteResources, 0, sizeof(WeatherSpriteResourceGroup));
    }

    return TRUE;
}

static void WeatherSystem_LoadWeatherSpriteResourceCell(WeatherSystem *weatherSystem, int spriteResourceIndex, WeatherSpriteResourceGroup *spriteResources)
{
    if (spriteResourceIndex != 0xffff) {
        spriteResources->weatherSpriteResources[SPRITE_RESOURCE_CELL] = ov5_GetWeatherSpriteResource(weatherSystem->unk_08.weatherSpriteResourceTable, SPRITE_RESOURCE_CELL, spriteResourceIndex, weatherSystem->unk_08.spriteResourceCollection[SPRITE_RESOURCE_CELL], weatherSystem->weatherNarc, FALSE);
    }
}

static void WeatherSystem_LoadWeatherSpriteResourceAnim(WeatherSystem *weatherSystem, int spriteResourceIndex, WeatherSpriteResourceGroup *spriteResources)
{
    if (spriteResourceIndex != 0xffff) {
        spriteResources->weatherSpriteResources[SPRITE_RESOURCE_ANIM] = ov5_GetWeatherSpriteResource(weatherSystem->unk_08.weatherSpriteResourceTable, SPRITE_RESOURCE_ANIM, spriteResourceIndex, weatherSystem->unk_08.spriteResourceCollection[SPRITE_RESOURCE_ANIM], weatherSystem->weatherNarc, FALSE);
    }
}

static void WeatherSystem_LoadWeatherSpriteResourceTile(WeatherSystem *weatherSystem, int spriteResourceIndex, WeatherSpriteResourceGroup *spriteResources)
{
    if (spriteResourceIndex != 0xffff) {
        spriteResources->weatherSpriteResources[SPRITE_RESOURCE_CHAR] = ov5_GetWeatherSpriteResource(weatherSystem->unk_08.weatherSpriteResourceTable, SPRITE_RESOURCE_CHAR, spriteResourceIndex, weatherSystem->unk_08.spriteResourceCollection[SPRITE_RESOURCE_CHAR], weatherSystem->weatherNarc, TRUE);

        SpriteTransfer_RequestCharAtEnd(spriteResources->weatherSpriteResources[SPRITE_RESOURCE_CHAR]);
        SpriteResource_ReleaseData(spriteResources->weatherSpriteResources[SPRITE_RESOURCE_CHAR]);
    }
}

static void WeatherSystem_LoadWeatherSpriteResourcePalette(WeatherSystem *weatherSystem, int spriteResourceIndex, WeatherSpriteResourceGroup *spriteResources)
{
    if (spriteResourceIndex != 0xffff) {
        spriteResources->weatherSpriteResources[SPRITE_RESOURCE_PLTT] = ov5_GetWeatherSpriteResource(weatherSystem->unk_08.weatherSpriteResourceTable, SPRITE_RESOURCE_PLTT, spriteResourceIndex, weatherSystem->unk_08.spriteResourceCollection[SPRITE_RESOURCE_PLTT], weatherSystem->weatherNarc, TRUE);

        SpriteTransfer_RequestPlttFreeSpace(spriteResources->weatherSpriteResources[SPRITE_RESOURCE_PLTT]);
        SpriteResource_ReleaseData(spriteResources->weatherSpriteResources[SPRITE_RESOURCE_PLTT]);
    }
}

// sprite resource template init?
static void WeatherSystem_LoadSpriteResourceTemplate(WeatherSystem *weatherSystem, Weather *weather)
{
    if (weather->spriteResourceIndex != 0xffff) {
        Weather_InitSpriteResourcesHeader(&weather->spriteResources->resourceHeader, weatherSystem, weather->spriteResources, FALSE, 1);
        memset(&weather->spriteResources->template, 0, sizeof(AffineSpriteListTemplate));
        weather->spriteResources->template.list = weatherSystem->unk_08.spriteList;
        weather->spriteResources->template.resourceData = &weather->spriteResources->resourceHeader;
        weather->spriteResources->template.affineScale.x = FX32_ONE;
        weather->spriteResources->template.affineScale.y = FX32_ONE;
        weather->spriteResources->template.affineScale.z = FX32_ONE;
        weather->spriteResources->template.vramType = 1;
    }
}

static void WeatherCallbackContext_DisableSprites(WeatherCallbackContext *ctx)
{
    for (int i = 0; i < UNK_48_LIST_SIZE; i++) {
        ctx->unk_48[i].sprite = SpriteList_AddAffine(&ctx->spriteResources->template);
        Sprite_SetDrawFlag(ctx->unk_48[i].sprite, FALSE);
        GF_ASSERT(ctx->unk_48[i].sprite);
    }
}

static void WeatherCallbackContext_DeleteSprites(WeatherCallbackContext *ctx)
{
    for (int i = 0; i < UNK_48_LIST_SIZE; i++) {
        if (ctx->unk_48[i].sprite) {
            Sprite_Delete(ctx->unk_48[i].sprite);
            ctx->unk_48[i].sprite = NULL;
        }
    }
}

static void WeatherSystem_LoadWeatherBGPalette(WeatherSystem *weatherSystem, enum WeatherGraphicsEntry weatherGraphicsEntry)
{
    WeatherBackgroundTilemapData weatherTilemapData;

    if (weatherGraphicsEntry != 0xffff) {
        weatherTilemapData.palette = NARC_AllocAndReadWholeMember(weatherSystem->weatherNarc, weatherSystem->backgroundIndexes[weatherGraphicsEntry].narcPLTTIdx, HEAP_ID_FIELD1);

        NNS_G2dGetUnpackedPaletteData(weatherTilemapData.palette, &weatherTilemapData.paletteData);

        Bg_LoadPalette(BG_LAYER_MAIN_2, weatherTilemapData.paletteData->pRawData, PALETTE_SIZE_BYTES, PLTT_OFFSET(6));
        Heap_Free(weatherTilemapData.palette);

        weatherTilemapData.palette = NULL;
    }
}

static void WeatherSystem_LoadWeatherBGTiles(WeatherSystem *weatherSystem, enum WeatherGraphicsEntry weatherGraphicsEntry)
{
    WeatherBackgroundTilemapData weatherTilemapData;

    if (weatherGraphicsEntry != 0xffff) {
        weatherTilemapData.bgNcgr = NARC_AllocAndReadWholeMember(weatherSystem->weatherNarc, weatherSystem->backgroundIndexes[weatherGraphicsEntry].narcSpriteIdx, HEAP_ID_FIELD1);

        NNS_G2dGetUnpackedCharacterData(weatherTilemapData.bgNcgr, &weatherTilemapData.bgTiles);

        Bg_LoadTiles(weatherSystem->fieldSystem->bgConfig, 2, weatherTilemapData.bgTiles->pRawData, weatherTilemapData.bgTiles->szByte, 0);
        Heap_Free(weatherTilemapData.bgNcgr);

        weatherTilemapData.bgNcgr = NULL;
    }
}

static void WeatherSystem_BufferWeatherBGTilemap(WeatherSystem *weatherSystem, enum WeatherGraphicsEntry weatherGraphicsEntry)
{
    WeatherBackgroundTilemapData weatherTilemapData;

    if (weatherGraphicsEntry != 0xffff) {
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);

        weatherTilemapData.bgNscr = NARC_AllocAndReadWholeMember(weatherSystem->weatherNarc, weatherSystem->backgroundIndexes[weatherGraphicsEntry].narcNSCRIdx, HEAP_ID_FIELD1);
        GF_ASSERT(weatherTilemapData.bgNscr);

        NNS_G2dGetUnpackedScreenData(weatherTilemapData.bgNscr, &weatherTilemapData.tilemap);

        Bg_CopyTilemapBufferRangeToVRAM(weatherSystem->fieldSystem->bgConfig, 2, (void *)weatherTilemapData.tilemap->rawData, weatherTilemapData.tilemap->szByte, 0);
        Bg_LoadTilemapBuffer(weatherSystem->fieldSystem->bgConfig, 2, (void *)weatherTilemapData.tilemap->rawData, weatherTilemapData.tilemap->szByte);
        Bg_ChangeTilemapRectPalette(weatherSystem->fieldSystem->bgConfig, 2, 0, 0, 32, 32, 6);
        Bg_CopyTilemapBufferToVRAM(weatherSystem->fieldSystem->bgConfig, 2);
        Heap_Free(weatherTilemapData.bgNscr);

        weatherTilemapData.bgNscr = NULL;
    }
}

// verify that size fits, then assign unk_0C to unk_08
static void ov5_021D6EC8(UnkStruct_ov5_021D6FA8 *param0, int size)
{
    GF_ASSERT(param0->unk_08 == NULL);
    GF_ASSERT(size > 0);
    GF_ASSERT(size <= (sizeof(s32) * 10));

    param0->unk_08 = param0->unk_0C;
}

static void ov5_021D6EF0(UnkStruct_ov5_021D6FA8 *param0)
{
    param0->unk_08 = NULL;
    memset(param0->unk_0C, 0, (sizeof(s32) * 10));
}

static UnkStruct_ov5_021D6FA8 *ov5_021D6F00(WeatherCallbackContext *ctx, int size)
{
    UnkStruct_ov5_021D6FA8 *v0;
    WeatherSystem *weatherSystem = (WeatherSystem *)ctx->weatherSystem;

    v0 = ov5_021D75E4(ctx);

    if (v0 == NULL) {
        return NULL;
    }

    v0->weatherSystem = weatherSystem;
    v0->unk_34 = &ctx->unk_0C;
    v0->unk_38 = ctx->unk_0C.unk_38;

    ctx->unk_0C.unk_38->unk_34 = v0;
    ctx->unk_0C.unk_38 = v0;

    ov5_021D6EC8(v0, size);

    if (v0->unk_08 == NULL) {
        return NULL;
    }

    GF_ASSERT(v0->sprite);
    Sprite_SetDrawFlag(v0->sprite, TRUE);

    return v0;
}

static void Weather_InitSpriteResourcesHeader(SpriteResourcesHeader *resourceHeader, WeatherSystem *weatherSystem, WeatherSpriteResourceGroup *spriteResources, BOOL vramTransfer, int priority)
{
    int spriteResourceIDs[MAX_SPRITE_RESOURCE_GEN4];

    for (int i = 0; i < MAX_SPRITE_RESOURCE_GEN4; i++) {
        spriteResourceIDs[i] = SpriteResource_GetID(spriteResources->weatherSpriteResources[i]);
    }

    SpriteResourcesHeader_Init(
        resourceHeader,
        spriteResourceIDs[SPRITE_RESOURCE_CHAR],
        spriteResourceIDs[SPRITE_RESOURCE_PLTT],
        spriteResourceIDs[SPRITE_RESOURCE_CELL],
        spriteResourceIDs[SPRITE_RESOURCE_ANIM],
        RESOURCE_NONE,
        RESOURCE_NONE,
        vramTransfer,
        priority,
        weatherSystem->unk_08.spriteResourceCollection[SPRITE_RESOURCE_CHAR],
        weatherSystem->unk_08.spriteResourceCollection[SPRITE_RESOURCE_PLTT],
        weatherSystem->unk_08.spriteResourceCollection[SPRITE_RESOURCE_CELL],
        weatherSystem->unk_08.spriteResourceCollection[SPRITE_RESOURCE_ANIM],
        NULL,
        NULL);
}

// zeroes out pased in struct, stops drawing sprite.  Deconstructor?
static void ov5_021D6FA8(UnkStruct_ov5_021D6FA8 *param0)
{
    Sprite *sprite;

    param0->unk_38->unk_34 = param0->unk_34;
    param0->unk_34->unk_38 = param0->unk_38;

    Sprite_SetDrawFlag(param0->sprite, FALSE);
    ov5_021D6EF0(param0);

    sprite = param0->sprite;
    memset(param0, 0, sizeof(UnkStruct_ov5_021D6FA8));

    param0->sprite = sprite;
}

static void ov5_021D6FD8(UnkStruct_ov5_021D6FA8 *param0)
{
    UnkStruct_ov5_021D6FA8 *child;
    UnkStruct_ov5_021D6FA8 *parent;

    child = param0->unk_34;

    while (child != param0) {
        parent = child->unk_34;
        ov5_021D6FA8(child);
        child = parent;
    }
}

static void ov5_021D6FF0(UnkStruct_ov5_021D6FA8 *param0, UnkFuncPtr_ov5_021D6FF0 param1)
{
    UnkStruct_ov5_021D6FA8 *v0 = param0->unk_34;
    UnkStruct_ov5_021D6FA8 *v1 = v0->unk_34;

    while (v0 != param0) {
        param1(v0);

        v0 = v1;
        v1 = v0->unk_34;
    }
}

// empty
static void ov5_WeatherDummy(WeatherCallbackContext *param0)
{
    return;
}

// get sprite position. what sprite?
static VecFx32 ov5_GetWeatherSpritePosition(UnkStruct_ov5_021D6FA8 *param0)
{
    const VecFx32 *pos = Sprite_GetPosition(param0->sprite);
    return *pos;
}

static void ov5_CalcCameraDistanceChange(fx32 *destXCameraDelta, fx32 *destYCameraDelta, WeatherCallbackContext *ctx)
{
    VecFx32 cameraTarget;
    fx32 xCameraDelta, zCameraDelta;
    fx32 width, height;
    fx32 xDelta, zDelta;
    int direction;
    fx32 aspectRatio;

    cameraTarget = *(NNS_G3dGlbGetCameraTarget());
    xDelta = cameraTarget.x - ctx->prevCameraTarget.x;
    zDelta = cameraTarget.z - ctx->prevCameraTarget.z;
    aspectRatio = FX_Div(FX32_CONST(4), FX32_CONST(3));

    CalcLinearFov(Camera_GetFOV(ctx->weatherSystem->fieldSystem->camera), Camera_GetDistance(ctx->weatherSystem->fieldSystem->camera), aspectRatio, &width, &height);
    width = FX_Div(width, 256 * FX32_ONE);

    if (zDelta <= 0) {
        height = FX_Div(height, 0xbe8d0);
    } else {
        height = FX_Div(height, 0xbe811);
    }

    direction = FX32_ONE;

    if (xDelta < 0) {
        direction = -FX32_ONE;
        xDelta = FX_Mul(xDelta, -FX32_ONE);
    }

    xCameraDelta = FX_Div(xDelta, width);

    if (direction < 0) {
        xCameraDelta = FX_Mul(xCameraDelta, direction);
    }

    direction = FX32_ONE;

    if (zDelta < 0) {
        direction = -FX32_ONE;
        zDelta = FX_Mul(zDelta, -FX32_ONE);
    }

    zCameraDelta = FX_Div(zDelta, height);

    if (direction < 0) {
        zCameraDelta = FX_Mul(zCameraDelta, direction);
    }

    if ((xCameraDelta + zCameraDelta) != 0) {
        ctx->prevCameraTarget = cameraTarget;
    }

    *destXCameraDelta = xCameraDelta;
    *destYCameraDelta = zCameraDelta;
}

// Provides caller with the amount the camera changed
static void ov5_CameraMoveWeatherSprite(WeatherCallbackContext *ctx, int *cameraAdjusmentX, int *cameraAdjusmentY)
{
    fx32 cameraDX, cameraDY;

    ov5_CameraMoveWeatherSpriteFX(ctx, &cameraDX, &cameraDY);

    if (cameraAdjusmentX != NULL) {
        *cameraAdjusmentX = cameraDX >> FX32_SHIFT;

        if (*cameraAdjusmentX < 0) {
            *cameraAdjusmentX += FX32_ONE;
        }
    }

    if (cameraAdjusmentY != NULL) {
        *cameraAdjusmentY = cameraDY >> FX32_SHIFT;

        if (*cameraAdjusmentY < 0) {
            *cameraAdjusmentY += 1;
        }
    }
}

// Provides caller with the amount the camera changed
static void ov5_CameraMoveWeatherSpriteFX(WeatherCallbackContext *ctx, fx32 *cameraAdjusmentX, fx32 *cameraAdjusmentY)
{
    UnkStruct_ov5_021D6FA8 *v0;
    fx32 dX, dY;
    VecFx32 precipitationPos;

    ov5_CalcCameraDistanceChange(&dX, &dY, ctx);

    v0 = ctx->unk_0C.unk_34;

    while (v0 != &ctx->unk_0C) {
        precipitationPos = ov5_GetWeatherSpritePosition(v0);

        precipitationPos.x -= dX;
        precipitationPos.y -= dY;

        ov5_SetPrecipitationPosition(v0->sprite, &precipitationPos);

        v0 = v0->unk_34;
    }

    if (cameraAdjusmentX != NULL) {
        *cameraAdjusmentX = dX;
    }

    if (cameraAdjusmentY != NULL) {
        *cameraAdjusmentY = dY;
    }
}

static void ov5_021D7210(UnkStruct_ov5_021D7210 *param0, WeatherCallbackContext *ctx, s32 param2, s32 param3, s32 param4, s32 param5, s32 param6, s32 param7, s32 param8, UnkFuncPtr_ov5_021D7210_1 param9)
{
    param0->ctx = ctx;
    param0->unk_04 = param2;
    param0->unk_06 = 0;
    param0->unk_08 = param3;
    param0->unk_0A = 0;
    param0->unk_0C = param4;
    param0->unk_0E = param5;
    param0->unk_10 = param6;
    param0->unk_12 = param7;
    param0->unk_14 = param8;
    param0->unk_18 = param9;
}

static void ov5_021D7238(UnkStruct_ov5_021D7210 *param0, s32 param1, s32 param2, s32 param3, s32 param4)
{
    param0->unk_0C = param1;
    param0->unk_0E = param2;
    param0->unk_10 = param3;
    param0->unk_14 = param4;
}

static int ov5_021D7244(UnkStruct_ov5_021D7210 *param0)
{
    int v0;
    int v1 = 0;

    if (param0->unk_10 == 0) {
        v1 |= 1;
    } else {
        if (param0->unk_10 > 0) {
            v0 = 0;
        } else {
            v0 = 1;
        }

        if (((param0->unk_08 >= param0->unk_0E) && (v0 == 0)) || ((param0->unk_08 <= param0->unk_0E) && (v0 == 1))) {
            v1 |= 1;
            param0->unk_08 = param0->unk_0E;
        }
    }

    if (param0->unk_14 == 0) {
        v1 |= 2;
    } else {
        if (param0->unk_14 > 0) {
            v0 = 0;
        } else {
            v0 = 1;
        }

        if (((param0->unk_04 >= param0->unk_0C) && (v0 == 0)) || ((param0->unk_04 <= param0->unk_0C) && (v0 == 1))) {
            v1 |= 2;
            param0->unk_04 = param0->unk_0C;
        }
    }

    (param0->unk_06)--;

    if (param0->unk_06 <= 0) {
        param0->unk_18(param0->ctx, param0->unk_04);
        param0->unk_06 = param0->unk_08;

        if ((v1 & 1) == 0) {
            param0->unk_08 += param0->unk_10;
        }

        if ((v1 & 2) == 0) {
            (param0->unk_0A)++;

            if (param0->unk_0A >= param0->unk_12) {
                param0->unk_0A = 0;
                param0->unk_04 += param0->unk_14;
            }
        }
    }

    return v1;
}

// do something with fog
static void ov5_021D7308(UnkStruct_ov5_021D7308 *param0, UnkStruct_ov5_021D7480 *param1, FogManager *fogMan, GXFogSlope fogSlope, int offset, GXRgb fogColor, int param6, u32 param7)
{
    param1->fogMan = fogMan;

    if (param7 != 0) {
        if (param7 == 1) {
            ov5_ApplyFogProperties(fogMan, fogSlope, offset, fogColor);
            ov5_ZeroFogDensityTable(param1);
            ov5_021D749C(param1, param6, TRUE);
        } else if (param7 == 2) {
            ov5_021D73B0(param0, fogMan, fogSlope, offset, fogColor, param6 * 127);
        }
    }
}

// TryDoSomething to progress the state of state machine
static int ov5_021D735C(UnkStruct_ov5_021D7308 *param0, UnkStruct_ov5_021D7480 *param1, u32 param2)
{
    BOOL v0;
    int v1 = 1;

    if (param2 != 0) {
        if (param2 == 1) {
            v1 = ov5_021D74B8(param1);
        } else if (param2 == 2) {
            v0 = ov5_021D7434(param0);

            if (v0 == 0) {
                v1 = 0;
            }
        }
    }

    return v1;
}

static void ov5_ApplyFogProperties(FogManager *fogMan, GXFogSlope slope, int offset, GXRgb fogColor)
{
    FogManager_ApplyParameters(fogMan, FOG_PARAMETER_ALL, TRUE, GX_FOGBLEND_COLOR_ALPHA, slope, offset);
    FogManager_ApplyColor(fogMan, FOG_PARAMETER_ALL, fogColor, 31);
}

// This entire function does nothing, as far as I can tell? I can return on line 1 and nothing changes in deep fog or rain
static void ov5_021D73B0(UnkStruct_ov5_021D7308 *param0, FogManager *fogMan, GXFogSlope slope, int offset, GXRgb param4, int param5)
{
    int fogSlope = FogManager_GetSlope(fogMan);
    int fogOffset = FogManager_GetOffset(fogMan);
    GXRgb fogColor = FogManager_GetColor(fogMan); // pretty sure this does nothing?

    param0->fogMan = fogMan;

    ov5_021D64FC(&param0->unk_04, fogOffset, offset, param5);
    ov5_021D64FC(&param0->unk_18, GX_RGB_R(fogColor), GX_RGB_R(param4), param5);
    ov5_021D64FC(&param0->unk_2C, GX_RGB_G(fogColor), GX_RGB_G(param4), param5);
    ov5_021D64FC(&param0->unk_40, GX_RGB_B(fogColor), GX_RGB_B(param4), param5);
    ov5_021D64FC(&param0->unk_54, fogSlope, slope, param5);
}

static BOOL ov5_021D7434(UnkStruct_ov5_021D7308 *param0)
{
    BOOL v0 = ov5_021D650C(&param0->unk_04);

    ov5_021D650C(&param0->unk_18);
    ov5_021D650C(&param0->unk_2C);
    ov5_021D650C(&param0->unk_40);
    ov5_021D650C(&param0->unk_54);
    ov5_ApplyFogProperties(param0->fogMan, param0->unk_54.alphaCoefficient, param0->unk_04.alphaCoefficient, GX_RGB(param0->unk_18.alphaCoefficient, param0->unk_2C.alphaCoefficient, param0->unk_40.alphaCoefficient));

    return v0;
}

static void ov5_ZeroFogDensityTable(UnkStruct_ov5_021D7480 *param0)
{
    for (int i = 0; i < G3X_FOG_DENSITY_TABLE_SIZE; i++) {
        param0->fogDensityTable[i] = 0;
    }

    FogManager_ApplyDensityTable(param0->fogMan, param0->fogDensityTable);
}

static void ov5_021D749C(UnkStruct_ov5_021D7480 *param0, int param1, BOOL param2)
{
    param0->unk_24 = 127;
    param0->unk_28 = 0;
    param0->unk_2C = param1;

    if (param2 == TRUE) {
        param0->unk_2E = 1;
    } else {
        param0->unk_2E = -1;
    }
}

static int ov5_021D74B8(UnkStruct_ov5_021D7480 *param0)
{
    int v0 = ov5_021D74F4(param0);

    if (param0->unk_28 == 0) {
        FogManager_ApplyDensityTable(param0->fogMan, param0->fogDensityTable);
    }

    return v0;
}

static void ov5_021D74D4(UnkStruct_ov5_021D7480 *param0)
{
    param0->unk_24 = 1;
    param0->unk_28 = 0;
    param0->unk_2C = 0;
    param0->unk_2E = 1;

    ov5_021D7534(param0);
    FogManager_ApplyDensityTable(param0->fogMan, param0->fogDensityTable);
}

static int ov5_021D74F4(UnkStruct_ov5_021D7480 *param0)
{
    int v0 = 0;

    if (param0->unk_2E == 0) {
        v0 = 1;
    } else {
        if (param0->unk_24 <= 0) {
            v0 = 1;
        } else {
            param0->unk_28++;

            if (param0->unk_28 >= param0->unk_2C) {
                param0->unk_28 = 0;
                ov5_021D7534(param0);
                param0->unk_24--;

                if (param0->unk_24 <= 0) {
                    v0 = 1;
                }
            }
        }
    }

    return v0;
}

static void ov5_021D7534(UnkStruct_ov5_021D7480 *param0)
{
    int i;
    int v1;
    int v2;

    if (param0->unk_2E < 0) {
        v2 = 127 - param0->unk_24;
    } else {
        v2 = param0->unk_24;
    }

    v1 = v2 / 4;

    for (i = G3X_FOG_DENSITY_TABLE_SIZE - 1; i > v1; i--) {
        param0->fogDensityTable[i] = ((i - v1) * 4);

        if (param0->fogDensityTable[i] > 127) {
            param0->fogDensityTable[i] = 127;
        }
    }
}

// calls the function pointer param1 with the provided context, then does some extra stuff
// and then calls param5 function pointer with something from in a loop
static void ov5_021D7568(WeatherCallbackContext *ctx, UnkFuncPtr_ov5_021D7210_1 param1, int param2, int param3, int param4, UnkFuncPtr_ov5_021D6FF0 param5)
{
    int v0, v1;
    int v2;
    UnkStruct_ov5_021D6FA8 *v3;
    UnkStruct_ov5_021D6FA8 *v4;

    param1(ctx, param2);

    v2 = 0;
    v3 = ctx->unk_0C.unk_34;
    v4 = v3->unk_34;

    for (v0 = 0; v0 < param2; v0++) {
        if (v3 == &ctx->unk_0C) {
            break;
        }

        for (v1 = 0; v1 < v2; v1++) {
            param5(v3);

            if (v3->unk_08 == NULL) {
                break;
            }
        }

        v3 = v4;
        v4 = v3->unk_34;

        if (v0 >= param3) {
            if ((v0 % param3) == 0) {
                v2 += param4;
            }
        }
    }
}

// loops over the 48 thing, when reaches the first oen wil null weatherSystem, returns that thing, otherwise returns null???
static UnkStruct_ov5_021D6FA8 *ov5_021D75E4(WeatherCallbackContext *ctx)
{
    for (int i = i = 0; i < UNK_48_LIST_SIZE; i++) {
        if (ctx->unk_48[i].weatherSystem == NULL) {
            return &ctx->unk_48[i];
        }
    }

    return NULL;
}

// clear weather
static void ov5_021D7604(SysTask *param0, void *param1)
{
    WeatherCallbackContext *v0 = (WeatherCallbackContext *)param1;

    switch (v0->state) {
    case 0:
        v0->state = 1;
        break;
    case 1:
        v0->state = 3;
        break;
    case 2:
        v0->state = 3;
        break;
    case 3:
        if (v0->unk_BA6 == 5) {
            v0->state = 4;
        }
        break;
    case 4:
        v0->state = 5;
        break;
    case 5: {
        ov5_021D69B8(v0->unk_04);
    } break;
    default:
        break;
    }
}

// rain callback function
static void ov5_021D7658(SysTask *param0, void *param1)
{
    WeatherCallbackContext *v0 = (WeatherCallbackContext *)param1;
    int v1;
    PrecipitationContext *v2;
    int v3;
    int v4;

    v2 = (PrecipitationContext *)v0->weatherCallbackParams;

    switch (v0->state) {
    case 0:
        ov5_021D7210(&v2->unk_00, v0, 1, 8, 4, 0, -1, 1, 1, ov5_021D78A4);
        ov5_021D7308(&v2->unk_4C, &v2->unk_1C, v0->weatherSystem->fieldSystem->fogMan, GX_FOGSLOPE_0x1000, 0x6F6F + 0x300, GX_RGB(26, 26, 26), 1, v0->unk_BA4);

        v2->unk_B4[0] = 0;

        ov5_StartWeatherSound(v0, SEQ_SE_DP_T_AME_sseq);
        v0->state = 1;
        break;
    case 1:
        v3 = ov5_021D7244(&v2->unk_00);

        if (v2->unk_B4[0] > 0) {
            v2->unk_B4[0]--;
        } else {
            v4 = ov5_021D735C(&v2->unk_4C, &v2->unk_1C, v0->unk_BA4);

            if ((v4 == 1) && (v3 == 3)) {
                v0->state = 3;
            }
        }
        break;
    case 2:
        ov5_021D7210(&v2->unk_00, v0, 4, 0, 4, 0, -1, 1, 1, ov5_021D78A4);

        if (v0->unk_BA4 != 0) {
            v2->unk_1C.fogMan = v0->weatherSystem->fieldSystem->fogMan;
            ov5_ApplyFogProperties(v2->unk_1C.fogMan, GX_FOGSLOPE_0x1000, 0x6F6F + 0x300, GX_RGB(26, 26, 26));

            ov5_021D74D4(&v2->unk_1C);
        }

        ov5_021D7568(v0, ov5_021D78A4, 20, 10, 1, ov5_021D7960);
        ov5_StartWeatherSound(v0, SEQ_SE_DP_T_AME_sseq);
        v0->state = 3;
        break;
    case 3:
        if (v2->unk_00.unk_06-- <= 0) {
            ov5_021D78A4(v0, v2->unk_00.unk_04);
            v2->unk_00.unk_06 = v2->unk_00.unk_08;
        }

        if (v0->unk_BA6 == 5) {
            ov5_021D7238(&v2->unk_00, 0, 8, 1, -1);

            if (v0->unk_BA4 != 0) {
                ov5_021D749C(&v2->unk_1C, 1, FALSE);
            }

            v2->unk_B4[0] = 0;
            v0->state = 4;

            ov5_StopWeatherSound(v0);
        }
        break;
    case 4:
        v3 = ov5_021D7244(&v2->unk_00);

        if (v2->unk_B4[0] > 0) {
            v2->unk_B4[0]--;
        } else {
            if (v0->unk_BA4 != 0) {
                v4 = ov5_021D74B8(&v2->unk_1C);
            } else {
                v4 = 1;
            }

            if ((v4 == 1) && (v3 == 3)) {
                if (v0->unk_0C.unk_34 == &v0->unk_0C) {
                    v0->state = 5;
                }
            }
        }
        break;
    case 5:
        if (v0->unk_BA4 != 0) {
            FogManager_ApplyParameters(v2->unk_1C.fogMan, FOG_PARAMETER_ENABLED, FALSE, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
        }

        {
            Weather *v5 = v0->unk_04;
            ov5_021D69B8(v5);
        }
        break;
    default:
        break;
    }

    if ((v0->state != 5) && (v0->state != 0)) {
        ov5_021D6FF0(&v0->unk_0C, ov5_021D7960);
        ov5_CameraMoveWeatherSprite(v0, NULL, NULL);
        ov5_WeatherDummy(v0);
    }
}

static void ov5_021D78A4(WeatherCallbackContext *param0, int param1)
{
    UnkStruct_ov5_021D6FA8 *v1;
    int v2;
    s32 *v3;
    int animFrame;
    VecFx32 precipitationPos;
    u32 random;

    for (int i = 0; i < param1; i++) {
        v1 = ov5_021D6F00(param0, sizeof(s32) * 8);

        if (v1 == NULL) {
            break;
        }

        v3 = (s32 *)v1->unk_08;
        random = MTRNG_Next();

        v3[0] = 0;
        animFrame = random % 3;

        Sprite_SetAnimFrame(v1->sprite, animFrame);

        v2 = (random % 20);
        v3[2] = 10 * (animFrame + 1) + v2;

        if (animFrame == 2) {
            v3[2] += 10;
        }

        v2 /= -5;
        v3[4] = -5 * (animFrame + 1) + v2;

        if (animFrame == 2) {
            v3[4] += -5;
        }

        v3[3] = 0;
        v3[1] = 1 + (random % 3);

        precipitationPos.x = (0 + (animFrame * 15) + (random % 270)) << FX32_SHIFT;
        precipitationPos.y = -96 << FX32_SHIFT;
        precipitationPos.z = 0;

        ov5_SetPrecipitationPosition(v1->sprite, &precipitationPos);
    }
}

// only called from rain
static void ov5_021D7960(UnkStruct_ov5_021D6FA8 *param0)
{
    int v0;
    UnkStruct_ov5_021D6FA8 *v1 = param0;
    s32 *v2 = (s32 *)v1->unk_08;
    VecFx32 precipitationPos;

    precipitationPos = ov5_GetWeatherSpritePosition(v1);

    switch (v2[3]) {
    case 0:
        precipitationPos.x += (v2[4] * 2) << FX32_SHIFT;
        precipitationPos.y += (v2[2] * 2) << FX32_SHIFT;

        v2[0] += 2;

        if (v2[0] > v2[1]) {
            if ((MTRNG_Next() % 10) < 7) {
                v2[3] = 2;
            } else {
                v2[3] = 1;
                v2[0] = 4;
                Sprite_SetAnimFrame(v1->sprite, 3);
            }
        }

        ov5_SetPrecipitationPosition(v1->sprite, &precipitationPos);
        break;
    case 1:
        if (v2[0]-- <= 0) {
            v2[3] = 2;
        }
        break;
    case 2:
        ov5_021D6FA8(v1);
        break;
    }
}

// snowing
static void ov5_021D79F0(SysTask *param0, void *param1)
{
    WeatherCallbackContext *v0 = (WeatherCallbackContext *)param1;
    int v1;
    int v2;
    PrecipitationContext *v3 = (PrecipitationContext *)v0->weatherCallbackParams;
    int v4;
    int v5;

    switch (v0->state) {
    case 0:
        ov5_021D7210(&v3->unk_00, v0, 1, 24, 1, 14, -5, 1, 0, ov5_021D7C40);
        v3->unk_B4[1] = 0;

        ov5_021D7308(&v3->unk_4C, &v3->unk_1C, v0->weatherSystem->fieldSystem->fogMan, GX_FOGSLOPE_0x1000, 0x6F6F + 0x300, GX_RGB(26, 26, 26), 1, v0->unk_BA4);
        v3->unk_B4[0] = 16;

        v0->state = 1;
        break;
    case 1:
        v4 = ov5_021D7244(&v3->unk_00);

        if (v3->unk_B4[0] > 0) {
            v3->unk_B4[0]--;
        } else {
            v5 = ov5_021D735C(&v3->unk_4C, &v3->unk_1C, v0->unk_BA4);

            if ((v5 == 1) && (v4 == 3)) {
                v0->state = 3;
            }
        }
        break;
    case 2:
        ov5_021D7210(&v3->unk_00, v0, 1, 14, 1, 14, -5, 1, 0, ov5_021D7C40);

        v3->unk_B4[1] = 0;
        v3->unk_B4[2] = 0;

        if (v0->unk_BA4 != 0) {
            v3->unk_1C.fogMan = v0->weatherSystem->fieldSystem->fogMan;
            ov5_ApplyFogProperties(v3->unk_1C.fogMan, GX_FOGSLOPE_0x1000, 0x6F6F + 0x300, GX_RGB(26, 26, 26));
            ov5_021D74D4(&v3->unk_1C);
        }

        ov5_021D7568(v0, ov5_021D7C40, 20, 2, 24, ov5_021D7E20);

        v0->state = 3;
        break;
    case 3:
        if (v3->unk_00.unk_06-- <= 0) {
            ov5_021D7C40(v0, v3->unk_00.unk_04);
            v3->unk_00.unk_06 = v3->unk_00.unk_08;
        }

        if (v0->unk_BA6 == 5) {
            ov5_021D7238(&v3->unk_00, 0, 24, 5, -1);

            if (v0->unk_BA4 != 0) {
                ov5_021D749C(&v3->unk_1C, 2, FALSE);
            }

            v3->unk_B4[0] = 32;
            v0->state = 4;
        }
        break;
    case 4:
        v4 = ov5_021D7244(&v3->unk_00);

        if (v3->unk_B4[0] > 0) {
            v3->unk_B4[0]--;
        } else {
            if (v0->unk_BA4 != 0) {
                v5 = ov5_021D74B8(&v3->unk_1C);
            } else {
                v5 = 1;
            }

            if ((v5 == 1) && (v4 == 3)) {
                v3->unk_B4[2] = 1;

                if (v0->unk_0C.unk_34 == &v0->unk_0C) {
                    v0->state = 5;
                }
            }
        }
        break;
    case 5:
        if (v0->unk_BA4 != 0) {
            FogManager_ApplyParameters(v3->unk_1C.fogMan, FOG_PARAMETER_ENABLED, FALSE, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
        }

        {
            Weather *v6 = v0->unk_04;
            ov5_021D69B8(v6);
        }
        break;
    default:
        break;
    }

    if ((v0->state != 5) && (v0->state != 0)) {
        ov5_021D6FF0(&v0->unk_0C, ov5_021D7E20);
        ov5_CameraMoveWeatherSprite(v0, NULL, NULL);
        ov5_WeatherDummy(v0);
    }
}

static void ov5_021D7C40(WeatherCallbackContext *param0, int param1)
{
    int v1;
    UnkStruct_ov5_021D6FA8 *v2;
    PrecipitationContext *v3;
    s32 *v4;
    int animFrame;
    VecFx32 precipitationPos;

    v3 = (PrecipitationContext *)param0->weatherCallbackParams;

    if (v3->unk_B4[1] == 1) {
        param1 *= 2;
    }

    for (int i = 0; i < param1; i++) {
        v2 = ov5_021D6F00(param0, sizeof(s32) * 10);

        if (v2 == NULL) {
            break;
        }

        v4 = (s32 *)v2->unk_08;
        animFrame = MTRNG_Next() % 4;

        Sprite_SetAnimFrame(v2->sprite, animFrame);

        v4[4] = 10;
        v4[5] = 0;
        v4[6] = 0;
        v4[8] = 0;

        v1 = MTRNG_Next();

        v4[9] = 4 + (v1 % 60);

        if ((v1 % 2) == 0) {
            v4[1] = 1;
        } else {
            v4[1] = -1;
        }

        v4[2] = 4 + (MTRNG_Next() % 2);
        v4[3] = 1 + (MTRNG_Next() % 2);
        v4[0] = (s32)&v3->unk_B4[1];
        v4[7] = (s32)&v3->unk_B4[2];

        precipitationPos.x = (-32 + (MTRNG_Next() % 414)) << FX32_SHIFT;

        if ((v3->unk_B4[1] == 1) && (i >= (param1 / 2))) {
            precipitationPos.y = (-40 - (MTRNG_Next() % 20)) << FX32_SHIFT;
        } else {
            precipitationPos.y = (-8 - (MTRNG_Next() % 20)) << FX32_SHIFT;
        }

        ov5_SetPrecipitationPosition(v2->sprite, &precipitationPos);
    }
}

// only called from snowing
static void ov5_021D7D54(UnkStruct_ov5_021D6FA8 *param0, s32 *param1)
{
    VecFx32 precipitationPos;
    s32 *v1;

    precipitationPos = ov5_GetWeatherSpritePosition(param0);

    if ((param1[5] & 0xffff) >= param1[2]) {
        precipitationPos.x += param1[1] << FX32_SHIFT;

        param1[4]++;
        param1[5] &= 0xffff0000;

        if (param1[4] < 10) {
            param1[2]--;
        } else {
            param1[2]++;
        }

        if (param1[4] >= 20) {
            param1[4] = 0;
            param1[1] *= -1;
        }
    }

    if ((param1[5] >> 16) >= param1[3]) {
        precipitationPos.y += FX32_ONE;
        param1[5] &= 0xffff;
    }

    ov5_SetPrecipitationPosition(param0->sprite, &precipitationPos);

    precipitationPos.x >>= FX32_SHIFT;
    precipitationPos.y >>= FX32_SHIFT;

    param1[6] = (param1[6] + 1) % 100;
    param1[5]++;
    param1[5] += 0x10000;

    if (((precipitationPos.y < -284) && (precipitationPos.y > -296)) || ((precipitationPos.y > 212) && (precipitationPos.y < 232))) {
        v1 = (s32 *)(param1[0]);
        *v1 = 1;
        ov5_021D6FA8(param0);
    }
}

// only called from snowing
static void ov5_021D7E20(UnkStruct_ov5_021D6FA8 *param0)
{
    UnkStruct_ov5_021D6FA8 *v0 = (UnkStruct_ov5_021D6FA8 *)param0;
    s32 *v1 = (s32 *)v0->unk_08;
    s32 *v2 = (s32 *)v1[7];

    switch (v1[8]) {
    case 0:
        if (*v2 == 1) {
            v1[8]++;
        }
        break;
    case 1:
        v1[9]--;

        if (v1[9] < 0) {
            ov5_021D6FA8(v0);
            return;
        }
        break;
    }

    ov5_021D7D54(v0, v1);
}

// heavy snow
static void ov5_021D7E54(SysTask *param0, void *param1)
{
    WeatherCallbackContext *v0 = (WeatherCallbackContext *)param1;
    int v1;
    PrecipitationContext *v2;
    int v3;
    int v4;

    v2 = (PrecipitationContext *)v0->weatherCallbackParams;

    switch (v0->state) {
    case 0:
        ov5_021D7210(&v2->unk_00, v0, 1, 30, 6, 3, -5, 2, 1, ov5_021D8098);
        ov5_021D7308(&v2->unk_4C, &v2->unk_1C, v0->weatherSystem->fieldSystem->fogMan, GX_FOGSLOPE_0x1000, 0x6F6F + -0x200, GX_RGB(24, 24, 24), 2, v0->unk_BA4);

        v2->unk_B4[0] = 8;
        v2->unk_B4[1] = 0;
        v0->state = 1;
        break;
    case 1:
        v3 = ov5_021D7244(&v2->unk_00);

        if (v2->unk_B4[0] > 0) {
            v2->unk_B4[0]--;
        } else {
            v4 = ov5_021D735C(&v2->unk_4C, &v2->unk_1C, v0->unk_BA4);

            if ((v4 == 1) && (v3 == 3)) {
                v0->state = 3;
            }
        }
        break;
    case 2:
        ov5_021D7210(&v2->unk_00, v0, 6, 3, 6, 3, -5, 2, 1, ov5_021D8098);

        if (v0->unk_BA4 != 0) {
            v2->unk_1C.fogMan = v0->weatherSystem->fieldSystem->fogMan;
            ov5_ApplyFogProperties(v2->unk_1C.fogMan, GX_FOGSLOPE_0x1000, 0x6F6F + -0x200, GX_RGB(24, 24, 24));
            ov5_021D74D4(&v2->unk_1C);
        }

        v2->unk_B4[1] = 0;
        ov5_021D7568(v0, ov5_021D8098, 20, 2, 3, ov5_021D81BC);
        v0->state = 3;
        break;
    case 3:
        if (v2->unk_00.unk_06-- <= 0) {
            ov5_021D8098(v0, v2->unk_00.unk_04);
            v2->unk_00.unk_06 = v2->unk_00.unk_08;
        }

        if (v0->unk_BA6 == 5) {
            ov5_021D7238(&v2->unk_00, 0, 30, 5, -3);

            if (v0->unk_BA4 != 0) {
                ov5_021D749C(&v2->unk_1C, 1, FALSE);
            }

            v2->unk_B4[0] = 0;
            v0->state = 4;
        }
        break;
    case 4:
        v3 = ov5_021D7244(&v2->unk_00);

        if (v2->unk_B4[0] > 0) {
            v2->unk_B4[0]--;
        } else {
            if (v0->unk_BA4 != 0) {
                v4 = ov5_021D74B8(&v2->unk_1C);
            } else {
                v4 = 1;
            }

            if ((v4 == 1) && (v3 == 3)) {
                if (v0->unk_0C.unk_34 == &v0->unk_0C) {
                    v0->state = 5;
                }
            }
        }
        break;
    case 5:
        if (v0->unk_BA4 != 0) {
            FogManager_ApplyParameters(v2->unk_1C.fogMan, FOG_PARAMETER_ENABLED, FALSE, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
        }

        Weather *v5 = v0->unk_04;
        ov5_021D69B8(v5);
        break;
    default:
        break;
    }

    if ((v0->state != 5) && (v0->state != 0)) {
        ov5_021D6FF0(&v0->unk_0C, ov5_021D81BC);
        ov5_CameraMoveWeatherSprite(v0, NULL, NULL);
        ov5_WeatherDummy(v0);
    }
}

// only called from heavy snow and heavy snow unused
static void ov5_021D8098(WeatherCallbackContext *param0, int param1)
{
    UnkStruct_ov5_021D6FA8 *v1;
    int v2;
    PrecipitationContext *v3;
    s32 *v4;
    int v5[4] = { 16, 32, 16, 10 };
    int v6[4] = { 2, 2, 2, 2 };
    int animFrame;

    v3 = (PrecipitationContext *)param0->weatherCallbackParams;

    for (int i = 0; i < param1; i++) {
        v1 = ov5_021D6F00(param0, sizeof(s32) * 8);

        if (v1 == NULL) {
            break;
        }

        v4 = (s32 *)v1->unk_08;
        v3->unk_B4[1]++;

        if (v3->unk_B4[1] >= (200 * 4)) {
            v3->unk_B4[1] = 0;
        }

        v2 = (v3->unk_B4[1] / 200);

        v4[5] = v5[v2];
        v4[0] = 0;
        v4[1] = 4 + (MTRNG_Next() % (46 - 4));

        animFrame = (v4[1] - 4) / (((46 - 4) / 3) + 1);
        Sprite_SetAnimFrame(v1->sprite, animFrame);

        v4[4] = -1 * (animFrame + 1);
        v4[2] = v6[v2] * (animFrame + 1);
        v4[3] = 0;

        {
            VecFx32 precipitationPos = ov5_GetWeatherSpritePosition(v1);

            precipitationPos.x = -20 + (animFrame * 20) + (MTRNG_Next() % 420);
            precipitationPos.y = -8;
            precipitationPos.z = 0;
            precipitationPos.x <<= FX32_SHIFT;
            precipitationPos.y <<= FX32_SHIFT;

            ov5_SetPrecipitationPosition(v1->sprite, &precipitationPos);
        }
    }
}

// only called from heavy snow and heavy snow unused
static void ov5_021D81BC(UnkStruct_ov5_021D6FA8 *param0)
{
    UnkStruct_ov5_021D6FA8 *v0 = (UnkStruct_ov5_021D6FA8 *)param0;
    s32 *v1 = (s32 *)v0->unk_08;
    VecFx32 precipitationPos = ov5_GetWeatherSpritePosition(v0);

    switch (v1[3]) {
    case 0:

        precipitationPos.x += v1[4] << FX32_SHIFT;
        precipitationPos.y += v1[2] << FX32_SHIFT;

        if (v1[0]++ > v1[1]) {
            v1[3] = 1;
        }

        if ((v1[0] % v1[5]) == 0) {
            v1[4]--;

            if (v1[2] > 1) {
                v1[2]--;
            }
        }

        ov5_SetPrecipitationPosition(v0->sprite, &precipitationPos);
        break;
    case 1:
        ov5_021D6FA8(v0);
        break;
    }
}

// heavy snow unused
static void ov5_021D823C(SysTask *param0, void *param1)
{
    WeatherCallbackContext *v0 = (WeatherCallbackContext *)param1;
    int v1;
    PrecipitationContext *v2;
    int v3;
    int v4;

    v2 = (PrecipitationContext *)v0->weatherCallbackParams;

    switch (v0->state) {
    case 0:
        ov5_021D7210(&v2->unk_00, v0, 1, 30, 6, 3, -5, 2, 1, ov5_021D8098);
        ov5_021D7308(&v2->unk_4C, &v2->unk_1C, v0->weatherSystem->fieldSystem->fogMan, GX_FOGSLOPE_0x1000, 0x6F6F, GX_RGB(24, 24, 24), 2, v0->unk_BA4);

        v2->unk_B4[0] = 8;
        v2->unk_B4[1] = 0;
        v2->unk_B4[2] = 0;
        v0->state = 1;
        break;
    case 1:
        v3 = ov5_021D7244(&v2->unk_00);

        if (v2->unk_B4[0] > 0) {
            v2->unk_B4[0]--;

            if (v2->unk_B4[0] == 0) {
                (void)0;
            }
        } else {
            v4 = ov5_021D735C(&v2->unk_4C, &v2->unk_1C, v0->unk_BA4);

            if ((v4 == 1) && (v3 == 3)) {
                v0->state = 3;
            }
        }
        break;
    case 2:
        ov5_021D7210(&v2->unk_00, v0, 6, 3, 6, 3, -5, 2, 1, ov5_021D8098);

        if (v0->unk_BA4 != 0) {
            v2->unk_1C.fogMan = v0->weatherSystem->fieldSystem->fogMan;
            ov5_ApplyFogProperties(v2->unk_1C.fogMan, GX_FOGSLOPE_0x1000, 0x6F6F, GX_RGB(24, 24, 24));

            ov5_021D74D4(&v2->unk_1C);
        }

        v2->unk_B4[1] = 0;
        v2->unk_B4[2] = 0;

        ov5_021D7568(v0, ov5_021D8098, 20, 2, 3, ov5_021D81BC);

        v0->state = 3;
        break;
    case 3:
        if (v2->unk_00.unk_06-- <= 0) {
            ov5_021D8098(v0, v2->unk_00.unk_04);
            v2->unk_00.unk_06 = v2->unk_00.unk_08;
        }

        if (v0->unk_BA6 == 5) {
            ov5_021D7238(&v2->unk_00, 0, 30, 5, -3);

            if (v0->unk_BA4 != 0) {
                ov5_021D749C(&v2->unk_1C, 1, FALSE);
            }

            v2->unk_B4[0] = 0;
            v0->state = 4;
        }
        break;
    case 4:
        v3 = ov5_021D7244(&v2->unk_00);

        if (v2->unk_B4[0] > 0) {
            v2->unk_B4[0]--;

            if (v2->unk_B4[0] == 0) {
                (void)0;
            }
        } else {
            if (v0->unk_BA4 != 0) {
                v4 = ov5_021D74B8(&v2->unk_1C);
            } else {
                v4 = 1;
            }

            if ((v4 == 1) && (v3 == 3)) {
                if (v0->unk_0C.unk_34 == &v0->unk_0C) {
                    v0->state = 5;
                }
            }
        }
        break;
    case 5:
        if (v0->unk_BA4 != 0) {
            FogManager_ApplyParameters(v2->unk_1C.fogMan, FOG_PARAMETER_ENABLED, FALSE, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
        }

        Weather *v5 = v0->unk_04;
        ov5_021D69B8(v5);
        break;
    default:
        break;
    }

    if ((v0->state != 5) && (v0->state != 0)) {
        ov5_021D6FF0(&v0->unk_0C, ov5_021D81BC);
        ov5_CameraMoveWeatherSprite(v0, NULL, NULL);
        ov5_WeatherDummy(v0);

        v2->unk_B4[2] = (v2->unk_B4[2] + 6) % 256;
        G2_SetBG2Offset(v2->unk_B4[2], -v2->unk_B4[2]);
    }
}

// weather 18
static void ov5_021D84D4(SysTask *param0, void *param1)
{
    WeatherCallbackContext *v0 = (WeatherCallbackContext *)param1;
    int v1;
    UnusedWeatherContext *v2;
    int v3;

    v2 = (UnusedWeatherContext *)v0->weatherCallbackParams;

    switch (v0->state) {
    case 0:
        ov5_021D7308(&v2->unk_30, &v2->unk_00, v0->weatherSystem->fieldSystem->fogMan, GX_FOGSLOPE_0x1000, 0x6F6F + 0x200, GX_RGB(26, 26, 26), 2, v0->unk_BA4);
        v2->unk_98[0] = 16;

        v0->state = 1;
        break;
    case 1:
        if (v2->unk_98[0] > 0) {
            v2->unk_98[0]--;
        } else {
            v3 = ov5_021D735C(&v2->unk_30, &v2->unk_00, v0->unk_BA4);

            if (v3 == 1) {
                v0->state = 3;
            }
        }
        break;
    case 2:
        if (v0->unk_BA4 != 0) {
            v2->unk_00.fogMan = v0->weatherSystem->fieldSystem->fogMan;
            ov5_ApplyFogProperties(v2->unk_00.fogMan, GX_FOGSLOPE_0x1000, 0x6F6F + 0x200, GX_RGB(26, 26, 26));
            ov5_021D74D4(&v2->unk_00);
        }

        v0->state = 3;
        break;
    case 3:
        if (v0->unk_BA6 == 5) {
            if (v0->unk_BA4 != 0) {
                ov5_021D749C(&v2->unk_00, 2, FALSE);
            }

            v2->unk_98[0] = 16;
            v0->state = 4;
        }
        break;
    case 4:
        if (v2->unk_98[0] > 0) {
            v2->unk_98[0]--;
        } else {
            if (v0->unk_BA4 != 0) {
                v3 = ov5_021D74B8(&v2->unk_00);
            } else {
                v3 = 1;
            }

            if (v3 == 1) {
                v0->state = 5;
            }
        }
        break;
    case 5:
        if (v0->unk_BA4 != 0) {
            FogManager_ApplyParameters(v2->unk_00.fogMan, FOG_PARAMETER_ENABLED, FALSE, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
        }

        {
            Weather *v4 = v0->unk_04;
            ov5_021D69B8(v4);
        }
        break;
    default:
        break;
    }
}

// weather 19
static void ov5_021D8638(SysTask *param0, void *param1)
{
    WeatherCallbackContext *v0 = (WeatherCallbackContext *)param1;
    int v1;
    UnusedWeatherContext *v2;
    int v3;

    v2 = (UnusedWeatherContext *)v0->weatherCallbackParams;

    switch (v0->state) {
    case 0:
        ov5_021D7308(&v2->unk_30, &v2->unk_00, v0->weatherSystem->fieldSystem->fogMan, GX_FOGSLOPE_0x1000, 0x6F6F + -0x9E0, GX_RGB(26, 26, 26), 2, v0->unk_BA4);
        v2->unk_98[0] = 16;
        v0->state = 1;
        break;
    case 1:
        if (v2->unk_98[0] > 0) {
            v2->unk_98[0]--;
        } else {
            v3 = ov5_021D735C(&v2->unk_30, &v2->unk_00, v0->unk_BA4);

            if (v3 == 1) {
                v0->state = 3;
            }
        }
        break;
    case 2:
        if (v0->unk_BA4 != 0) {
            v2->unk_00.fogMan = v0->weatherSystem->fieldSystem->fogMan;
            ov5_ApplyFogProperties(v2->unk_00.fogMan, GX_FOGSLOPE_0x1000, 0x6F6F + -0x9E0, GX_RGB(26, 26, 26));
            ov5_021D74D4(&v2->unk_00);
        }

        v0->state = 3;
        break;
    case 3:
        if (v0->unk_BA6 == 5) {
            if (v0->unk_BA4 != 0) {
                ov5_021D749C(&v2->unk_00, 2, FALSE);
            }

            v2->unk_98[0] = 16;
            v0->state = 4;
        }
        break;
    case 4:
        if (v2->unk_98[0] > 0) {
            v2->unk_98[0]--;
        } else {
            if (v0->unk_BA4 != 0) {
                v3 = ov5_021D74B8(&v2->unk_00);
            } else {
                v3 = 1;
            }

            if (v3 == 1) {
                v0->state = 5;
            }
        }
        break;
    case 5:
        if (v0->unk_BA4 != 0) {
            FogManager_ApplyParameters(v2->unk_00.fogMan, FOG_PARAMETER_ENABLED, FALSE, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
        }

        {
            Weather *v4 = v0->unk_04;
            ov5_021D69B8(v4);
        }
        break;
    default:
        break;
    }
}

// low fog
static void ov5_021D879C(SysTask *param0, void *param1)
{
    WeatherCallbackContext *v0 = (WeatherCallbackContext *)param1;
    FogContext *v1;
    int v2;
    BOOL v3;

    v1 = (FogContext *)v0->weatherCallbackParams;

    switch (v0->state) {
    case 0:
        ov5_021D7308(&v1->unk_44, &v1->unk_14, v0->weatherSystem->fieldSystem->fogMan, GX_FOGSLOPE_0x0400, 0x6F6F + 0xAA0, GX_RGB(31, 31, 31), 2, v0->unk_BA4);
        ov5_021D64FC(&v1->unk_00, 0, 16, 30);
        ov5_SetBlendAlpha(0, 16);
        G2_SetBG2Priority(3);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        v0->state = 1;
        break;
    case 1:
        v2 = ov5_021D74B8(&v1->unk_14);
        v3 = ov5_021D650C(&v1->unk_00);

        ov5_SetBlendAlpha(v1->unk_00.alphaCoefficient, 16 - v1->unk_00.alphaCoefficient);

        if ((v2 == 1) && (v3 == 1)) {
            v0->state = 3;
        }
        break;
    case 2:
        if (v0->unk_BA4 != 0) {
            v1->unk_14.fogMan = v0->weatherSystem->fieldSystem->fogMan;
            ov5_ApplyFogProperties(v1->unk_14.fogMan, GX_FOGSLOPE_0x0400, 0x6F6F + 0xAA0, GX_RGB(31, 31, 31));
            ov5_021D74D4(&v1->unk_14);
        }

        ov5_SetBlendAlpha(16, 16 - 16);
        G2_SetBG2Priority(3);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);

        v0->state = 3;
        break;
    case 3:
        if (v0->unk_BA6 == 5) {
            if (v0->unk_BA4 != 0) {
                ov5_021D749C(&v1->unk_14, 1, FALSE);
            }

            ov5_021D64FC(&v1->unk_00, 16, 0, 30);
            v0->state = 4;
        }
        break;
    case 4:
        if (v0->unk_BA4 != 0) {
            v2 = ov5_021D74B8(&v1->unk_14);
        } else {
            v2 = 1;
        }

        v3 = ov5_021D650C(&v1->unk_00);
        ov5_SetBlendAlpha(v1->unk_00.alphaCoefficient, 16 - v1->unk_00.alphaCoefficient);

        if ((v2 == 1) && (v3 == 1)) {
            v0->state = 5;
        }
        break;
    case 5:
        if (v0->unk_BA4 != 0) {
            FogManager_ApplyParameters(v1->unk_14.fogMan, FOG_PARAMETER_ENABLED, FALSE, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
        }

        {
            Weather *v4 = v0->unk_04;
            ov5_021D69B8(v4);
        }

        break;
    default:
        break;
    }
}

// weather 22
static void ov5_021D8948(SysTask *param0, void *param1)
{
    WeatherCallbackContext *v0 = (WeatherCallbackContext *)param1;
    int v1;
    PrecipitationContext *v2;
    int v3;
    int v4;

    v2 = (PrecipitationContext *)v0->weatherCallbackParams;

    switch (v0->state) {
    case 0:
        ov5_021D7210(&v2->unk_00, v0, 1, 15, 8, 1, -2, 4, 2, ov5_021D8B88);
        ov5_021D7308(&v2->unk_4C, &v2->unk_1C, v0->weatherSystem->fieldSystem->fogMan, GX_FOGSLOPE_0x1000, 28399, GX_RGB(26, 20, 5), 1, v0->unk_BA4);
        v2->unk_B4[0] = 0;
        v2->unk_B4[1] = 0;
        v0->state = 1;
        break;
    case 1:
        v3 = ov5_021D7244(&v2->unk_00);

        if (v2->unk_B4[0] > 0) {
            v2->unk_B4[0]--;
        } else {
            v4 = ov5_021D735C(&v2->unk_4C, &v2->unk_1C, v0->unk_BA4);

            if ((v4 == 1) && (v3 == 3)) {
                v0->state = 3;
            }
        }
        break;
    case 2:
        ov5_021D7210(&v2->unk_00, v0, 8, 1, 8, 1, -2, 4, 2, ov5_021D8B88);

        if (v0->unk_BA4 != 0) {
            v2->unk_1C.fogMan = v0->weatherSystem->fieldSystem->fogMan;
            ov5_ApplyFogProperties(v2->unk_1C.fogMan, GX_FOGSLOPE_0x1000, 28399, GX_RGB(26, 20, 5));
            ov5_021D74D4(&v2->unk_1C);
        }

        v2->unk_B4[1] = 0;
        ov5_021D7568(v0, ov5_021D8B88, 24, 2, 2, ov5_021D8C90);
        v0->state = 3;
        break;
    case 3:
        if (v2->unk_00.unk_06-- <= 0) {
            ov5_021D8B88(v0, v2->unk_00.unk_04);
            v2->unk_00.unk_06 = v2->unk_00.unk_08;
        }

        if (v0->unk_BA6 == 5) {
            ov5_021D7238(&v2->unk_00, 0, 15, 2, -3);

            if (v0->unk_BA4 != 0) {
                ov5_021D749C(&v2->unk_1C, 1, FALSE);
            }

            v2->unk_B4[0] = 31;
            v0->state = 4;
        }
        break;
    case 4:
        v3 = ov5_021D7244(&v2->unk_00);

        if (v2->unk_B4[0] > 0) {
            v2->unk_B4[0]--;
        } else {
            if (v0->unk_BA4 != 0) {
                v4 = ov5_021D74B8(&v2->unk_1C);
            } else {
                v4 = 1;
            }

            if ((v4 == 1) && (v3 == 3)) {
                if (v0->unk_0C.unk_34 == &v0->unk_0C) {
                    v0->state = 5;
                }
            }
        }
        break;
    case 5:
        if (v0->unk_BA4 != 0) {
            FogManager_ApplyParameters(v2->unk_1C.fogMan, FOG_PARAMETER_ENABLED, FALSE, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
        }

        Weather *v5 = v0->unk_04;
        ov5_021D69B8(v5);
        break;
    default:
        break;
    }

    if ((v0->state != 5) && (v0->state != 0)) {
        ov5_021D6FF0(&v0->unk_0C, ov5_021D8C90);
        ov5_CameraMoveWeatherSprite(v0, NULL, NULL);
        ov5_WeatherDummy(v0);
    }
}

// also onyl called from sandstorm and weather 22
static void ov5_021D8B88(WeatherCallbackContext *param0, int param1)
{
    UnkStruct_ov5_021D6FA8 *v1;
    int v2;
    int random;
    PrecipitationContext *v4;
    s32 *v5;
    int animFrame;
    static const int v7[8] = { -3, -5, -5, -4, -5, -6, -10, -6 };
    static const int v8[8] = { 2, 2, 2, 4, 4, 2, 2, 2 };

    v4 = (PrecipitationContext *)param0->weatherCallbackParams;
    v4->unk_B4[1] = (v4->unk_B4[1] + 1) % (40 * 8);
    v2 = v4->unk_B4[1] / 40;

    for (int i = 0; i < param1; i++) {
        v1 = ov5_021D6F00(param0, sizeof(s32) * 8);

        if (v1 == NULL) {
            break;
        }

        v5 = v1->unk_08;

        v5[0] = 0;
        v5[1] = 15 + (MTRNG_Next() % (35 - 15));

        animFrame = 3 - ((v5[1] - 15) / (((35 - 15) / 4) + 1));

        v5[2] = (v8[v2]) * (animFrame + 1);
        v5[4] = (v7[v2]) * (animFrame + 1);
        v5[3] = 0;
        v5[5] = v7[v2];

        random = MTRNG_Next() % 1000;

        if (random == 777) {
            animFrame = 4;
            v5[2] += v5[2] / 2;
        }

        Sprite_SetAnimFrame(v1->sprite, animFrame);

        {
            VecFx32 precipitationPos;

            precipitationPos = ov5_GetWeatherSpritePosition(v1);
            precipitationPos.x = 262 + (MTRNG_Next() % 24);
            precipitationPos.x <<= FX32_SHIFT;
            precipitationPos.y = -64 + (MTRNG_Next() % 192); // is this modulo screen width?
            precipitationPos.y <<= FX32_SHIFT;

            ov5_SetPrecipitationPosition(v1->sprite, &precipitationPos);
        }
    }
}

// called from sandstorm and weather 22
static void ov5_021D8C90(UnkStruct_ov5_021D6FA8 *param0)
{
    UnkStruct_ov5_021D6FA8 *v0 = (UnkStruct_ov5_021D6FA8 *)param0;
    s32 *v1 = (s32 *)v0->unk_08;
    VecFx32 precipitationPos = ov5_GetWeatherSpritePosition(v0);

    switch (v1[3]) {
    case 0:
        precipitationPos.x += v1[4] << FX32_SHIFT;
        precipitationPos.y += v1[2] << FX32_SHIFT;

        if ((v1[0] % 5) == 0) {
            v1[4] += v1[5];
        }

        if (v1[0]++ > v1[1]) {
            v1[3] = 1;
        }

        ov5_SetPrecipitationPosition(v0->sprite, &precipitationPos);
        break;
    case 1:
        ov5_021D6FA8(v0);
        break;
    }
}

// sandstorm
static void ov5_021D8D08(SysTask *param0, void *param1)
{
    WeatherCallbackContext *v0 = (WeatherCallbackContext *)param1;
    int v1;
    int v2;
    int cameraDX, cameraDY;
    PrecipitationContext *v5;
    int v6;
    int v7;
    static const int v8[8] = { -3, -5, -5, -3, -5, -6, -10, -6 };
    static const int v9[8] = { 2, 2, 2, 4, 4, 2, 2, 2 };

    v5 = (PrecipitationContext *)v0->weatherCallbackParams;

    switch (v0->state) {
    case 0:
        ov5_021D7210(&v5->unk_00, v0, 1, 15, 8, 1, -2, 4, 2, ov5_021D8B88);
        ov5_021D7308(&v5->unk_4C, &v5->unk_1C, v0->weatherSystem->fieldSystem->fogMan, GX_FOGSLOPE_0x1000, 28399, GX_RGB(26, 20, 5), 1, v0->unk_BA4);
        v5->unk_B4[0] = 0;
        v5->unk_B4[1] = 0;
        v5->unk_B4[2] = 0;
        v5->unk_B4[3] = 0;
        v0->state = 1;
        break;
    case 1:
        v6 = ov5_021D7244(&v5->unk_00);

        if (v5->unk_B4[0] > 0) {
            v5->unk_B4[0]--;
        } else {
            v7 = ov5_021D735C(&v5->unk_4C, &v5->unk_1C, v0->unk_BA4);

            if ((v7 == 1) && (v6 == 3)) {
                v0->state = 3;
                GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            }
        }
        break;
    case 2:
        ov5_021D7210(&v5->unk_00, v0, 8, 1, 8, 1, -2, 4, 2, ov5_021D8B88);

        if (v0->unk_BA4 != 0) {
            v5->unk_1C.fogMan = v0->weatherSystem->fieldSystem->fogMan;
            ov5_ApplyFogProperties(v5->unk_1C.fogMan, GX_FOGSLOPE_0x1000, 28399, GX_RGB(26, 20, 5));
            ov5_021D74D4(&v5->unk_1C);
        }

        v5->unk_B4[1] = 0;
        v5->unk_B4[2] = 0;
        v5->unk_B4[3] = 0;

        ov5_021D7568(v0, ov5_021D8B88, 24, 2, 2, ov5_021D8C90);
        v0->state = 3;
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        break;
    case 3:
        if (v5->unk_00.unk_06-- <= 0) {
            v2 = v5->unk_B4[1] / 40;
            v5->unk_B4[3] = v8[v2];

            if (v5->unk_B4[3] <= -6) {
                ov5_021D8B88(v0, v5->unk_00.unk_04 * 2);
            } else {
                ov5_021D8B88(v0, v5->unk_00.unk_04);
            }

            v5->unk_00.unk_06 = v5->unk_00.unk_08;
        }

        if (v0->unk_BA6 == 5) {
            ov5_021D7238(&v5->unk_00, 0, 15, 2, -3);

            if (v0->unk_BA4 != 0) {
                ov5_021D749C(&v5->unk_1C, 1, FALSE);
            }

            v5->unk_B4[0] = 31;
            v0->state = 4;

            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        }
        break;
    case 4:
        v6 = ov5_021D7244(&v5->unk_00);

        if (v5->unk_B4[0] > 0) {
            v5->unk_B4[0]--;
        } else {
            if (v0->unk_BA4 != 0) {
                v7 = ov5_021D74B8(&v5->unk_1C);
            } else {
                v7;
            }

            if ((v7 == 1) && (v6 == 3)) {
                if (v0->unk_0C.unk_34 == &v0->unk_0C) {
                    v0->state = 5;
                }
            }
        }
        break;
    case 5:
        if (v0->unk_BA4 != 0) {
            FogManager_ApplyParameters(v5->unk_1C.fogMan, FOG_PARAMETER_ENABLED, FALSE, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
        }

        Weather *v10 = v0->unk_04;
        ov5_021D69B8(v10);
        break;
    default:
        break;
    }

    if ((v0->state != 5) && (v0->state != 0)) {
        ov5_021D6FF0(&v0->unk_0C, ov5_021D8C90);
        ov5_CameraMoveWeatherSprite(v0, &cameraDX, &cameraDY);
        ov5_WeatherDummy(v0);

        v5->unk_B4[2] = (v5->unk_B4[2] + 6) % HW_LCD_WIDTH;
        G2_SetBG2Offset(v5->unk_B4[2] * 2 - cameraDX, -v5->unk_B4[2] + cameraDY);
    }
}

// blizzard
static void ov5_021D8FF8(SysTask *param0, void *param1)
{
    WeatherCallbackContext *v0 = (WeatherCallbackContext *)param1;
    int v1;
    int v2;
    int v3, v4;
    PrecipitationContext *v5;
    int v6;
    int v7;

    v5 = (PrecipitationContext *)v0->weatherCallbackParams;

    switch (v0->state) {
    case 0:
        ov5_021D7210(&v5->unk_00, v0, 1, 30, 10, 1, -4, 2, 3, ov5_021D92C4);
        ov5_021D7308(&v5->unk_4C, &v5->unk_1C, v0->weatherSystem->fieldSystem->fogMan, GX_FOGSLOPE_0x1000, 0x6F6F + -0x400, GX_RGB(24, 24, 24), 1, v0->unk_BA4);
        v5->unk_B4[0] = 16;
        v5->unk_B4[1] = 0;
        v5->unk_B4[2] = 0;
        v0->state = 1;
        break;
    case 1:
        v6 = ov5_021D7244(&v5->unk_00);

        if (v5->unk_B4[0] > 0) {
            v5->unk_B4[0]--;
        } else {
            v7 = ov5_021D735C(&v5->unk_4C, &v5->unk_1C, v0->unk_BA4);

            if ((v7 == 1) && (v6 == 3)) {
                v0->state = 3;
                GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            }
        }
        break;
    case 2:
        ov5_021D7210(&v5->unk_00, v0, 10, 1, 10, 1, -4, 2, 3, ov5_021D92C4);

        if (v0->unk_BA4 != 0) {
            v5->unk_1C.fogMan = v0->weatherSystem->fieldSystem->fogMan;
            ov5_ApplyFogProperties(v5->unk_1C.fogMan, GX_FOGSLOPE_0x1000, 0x6F6F + -0x400, GX_RGB(24, 24, 24));
            ov5_021D74D4(&v5->unk_1C);
        }

        v5->unk_B4[1] = 0;
        v5->unk_B4[2] = 0;

        ov5_021D7568(v0, ov5_021D92C4, 20, 2, 2, ov5_021D93DC);
        v0->state = 3;
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        break;
    case 3:
        if (v5->unk_00.unk_06-- <= 0) {
            v2 = v5->unk_B4[1] / 512;
            v2 = Unk_ov5_021F8CDC[v2];

            if (v2 <= -8) {
                ov5_021D92C4(v0, v5->unk_00.unk_04 * 2);
            } else {
                ov5_021D92C4(v0, v5->unk_00.unk_04);
            }

            v5->unk_00.unk_06 = v5->unk_00.unk_08;
        }

        if (v0->unk_BA6 == 5) {
            ov5_021D7238(&v5->unk_00, 0, 12, 4, -4);

            if (v0->unk_BA4 != 0) {
                ov5_021D749C(&v5->unk_1C, 1, FALSE);
            }

            v5->unk_B4[0] = 20;
            v0->state = 4;

            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        }
        break;
    case 4:
        v6 = ov5_021D7244(&v5->unk_00);

        if (v5->unk_B4[0] > 0) {
            v5->unk_B4[0]--;
        } else {
            if (v0->unk_BA4 != 0) {
                v7 = ov5_021D74B8(&v5->unk_1C);
            } else {
                v7 = 1;
            }

            if ((v7 == 1) && (v6 == 3)) {
                if (v0->unk_0C.unk_34 == &v0->unk_0C) {
                    v0->state = 5;
                }
            }
        }
        break;
    case 5:
        if (v0->unk_BA4 != 0) {
            FogManager_ApplyParameters(v5->unk_1C.fogMan, FOG_PARAMETER_ENABLED, FALSE, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
        }

        Weather *v8 = v0->unk_04;
        ov5_021D69B8(v8);
        break;
    default:
        break;
    }

    if ((v0->state != 5) && (v0->state != 0)) {
        ov5_021D6FF0(&v0->unk_0C, ov5_021D93DC);
        ov5_WeatherDummy(v0);
        v5->unk_B4[2] = (v5->unk_B4[2] + 12) % 256;
        G2_SetBG2Offset(v5->unk_B4[2] * 2, -v5->unk_B4[2]);
    }
}

// only called from blizzard
static void ov5_021D92C4(WeatherCallbackContext *ctx, int param1)
{
    UnkStruct_ov5_021D6FA8 *v1;
    PrecipitationContext *v3;
    s32 *v4;
    int animFrame;

    v3 = (PrecipitationContext *)ctx->weatherCallbackParams;
    v3->unk_B4[1]++;

    if (v3->unk_B4[1] >= (512 * 4)) {
        v3->unk_B4[1] = 0;
    }

    int index = (v3->unk_B4[1] / 512);

    for (int i = 0; i < param1 * 4; i++) {
        v1 = ov5_021D6F00(ctx, sizeof(s32) * 8);

        if (v1 == NULL) {
            break;
        }

        v4 = (s32 *)v1->unk_08;

        v4[0] = 0;
        v4[1] = 18 + (MTRNG_Next() % (24 - 18));
        animFrame = MTRNG_Next() % 4;

        Sprite_SetAnimFrame(v1->sprite, animFrame);

        v4[4] = Unk_ov5_021F8CDC[index] * ((animFrame) + 1);
        v4[2] = Unk_ov5_021F8CEC[index] * ((animFrame) + 1);
        v4[3] = 0;

        if (animFrame == 3) {
            v4[4] += Unk_ov5_021F8CDC[index];
            v4[2] += Unk_ov5_021F8CEC[index];
        }

        v4[5] = Unk_ov5_021F8CDC[index];

        {
            VecFx32 precipitationPos = ov5_GetWeatherSpritePosition(v1);

            precipitationPos.x = HW_LCD_WIDTH + (MTRNG_Next() % 24);
            precipitationPos.y = -32 + (MTRNG_Next() % 168);
            precipitationPos.x <<= FX32_SHIFT;
            precipitationPos.y <<= FX32_SHIFT;
            precipitationPos.z = 0;

            ov5_SetPrecipitationPosition(v1->sprite, &precipitationPos);
        }
    }
}

// only called from blizzard
static void ov5_021D93DC(UnkStruct_ov5_021D6FA8 *param0)
{
    UnkStruct_ov5_021D6FA8 *v0 = (UnkStruct_ov5_021D6FA8 *)param0;
    s32 *v1 = (s32 *)v0->unk_08;
    VecFx32 precipitationPos = ov5_GetWeatherSpritePosition(v0);

    switch (v1[3]) {
    case 0:
        precipitationPos.x += v1[4] << FX32_SHIFT;
        precipitationPos.y += v1[2] << FX32_SHIFT;

        if (v1[0]++ > v1[1]) {
            v1[3] = 1;
        }

        if ((v1[0] % 4) == 0) {
            v1[4] += v1[5];

            if (v1[2] > 1) {
                v1[2]--;
            }
        }

        ov5_SetPrecipitationPosition(v0->sprite, &precipitationPos);
        break;
    case 1:
        ov5_021D6FA8(v0);
        break;
    }
}

// hail
static void ov5_021D9464(SysTask *param0, void *param1)
{
    WeatherCallbackContext *v0 = (WeatherCallbackContext *)param1;
    int v1;
    PrecipitationContext *v2;
    int v3;
    int v4;

    v2 = (PrecipitationContext *)v0->weatherCallbackParams;

    switch (v0->state) {
    case 0:
        ov5_021D7210(&v2->unk_00, v0, 2, 16, 20, 2, -2, 4, 2, ov5_021D9690);
        ov5_021D7308(&v2->unk_4C, &v2->unk_1C, v0->weatherSystem->fieldSystem->fogMan, GX_FOGSLOPE_0x1000, 0x6F6F + 0x200, GX_RGB(26, 26, 26), 1, v0->unk_BA4);
        v2->unk_B4[0] = 0;
        v0->state = 1;
        break;
    case 1:
        v3 = ov5_021D7244(&v2->unk_00);

        if (v2->unk_B4[0] > 0) {
            v2->unk_B4[0]--;
        } else {
            v4 = ov5_021D735C(&v2->unk_4C, &v2->unk_1C, v0->unk_BA4);

            if ((v4 == 1) && (v3 == 3)) {
                v0->state = 3;
            }
        }
        break;
    case 2:
        ov5_021D7210(&v2->unk_00, v0, 20, 2, 20, 2, -2, 4, 2, ov5_021D9690);

        if (v0->unk_BA4 != 0) {
            v2->unk_1C.fogMan = v0->weatherSystem->fieldSystem->fogMan;
            ov5_ApplyFogProperties(v2->unk_1C.fogMan, GX_FOGSLOPE_0x1000, 0x6F6F + 0x200, GX_RGB(26, 26, 26));
            ov5_021D74D4(&v2->unk_1C);
        }

        ov5_021D7568(v0, ov5_021D9690, 20, 10, 1, ov5_021D97C0);
        v0->state = 3;
        break;
    case 3:
        if (v2->unk_00.unk_06-- <= 0) {
            ov5_021D9690(v0, v2->unk_00.unk_04);
            v2->unk_00.unk_06 = v2->unk_00.unk_08;
        }

        if (v0->unk_BA6 == 5) {
            ov5_021D7238(&v2->unk_00, 0, 16, 6, -10);

            if (v0->unk_BA4 != 0) {
                ov5_021D749C(&v2->unk_1C, 1, FALSE);
            }

            v2->unk_B4[0] = 20;
            v0->state = 4;
        }
        break;
    case 4:
        v3 = ov5_021D7244(&v2->unk_00);

        if (v2->unk_B4[0] > 0) {
            v2->unk_B4[0]--;
        } else {
            v4 = ov5_021D735C(&v2->unk_4C, &v2->unk_1C, v0->unk_BA4);

            if ((v4 == 1) && (v3 == 3)) {
                if (v0->unk_0C.unk_34 == &v0->unk_0C) {
                    v0->state = 5;
                }
            }
        }
        break;
    case 5:
        if (v0->unk_BA4 != 0) {
            FogManager_ApplyParameters(v2->unk_1C.fogMan, FOG_PARAMETER_ENABLED, FALSE, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
        }

        {
            Weather *v5 = v0->unk_04;
            ov5_021D69B8(v5);
        }
        break;
    default:
        break;
    }

    if ((v0->state != 5) && (v0->state != 0)) {
        ov5_021D6FF0(&v0->unk_0C, ov5_021D97C0);
        ov5_CameraMoveWeatherSprite(v0, NULL, NULL);
        ov5_WeatherDummy(v0);
    }
}

// only called from hail
static void ov5_021D9690(WeatherCallbackContext *param0, int param1)
{
    int v0;
    UnkStruct_ov5_021D6FA8 *v1;
    int v2;
    int v3;
    int v4;
    int animFrame;
    VecFx32 precipitationPos;
    s32 *v7;

    for (v0 = 0; v0 < param1; v0++) {
        v1 = ov5_021D6F00(param0, sizeof(s32) * 8);

        if (v1 == NULL) {
            break;
        }

        v7 = (s32 *)v1->unk_08;

        v7[0] = 0;
        v7[1] = 7 + (MTRNG_Next() % 5);

        v2 = MTRNG_Next() % 1000;

        if ((v2 % 2) == 0) {
            v7[2] = 1;
        } else {
            v7[2] = -1;
        }

        v7[3] = 1;
        v7[4] = 3 + (MTRNG_Next() % 6);
        v7[5] = 4 + (MTRNG_Next() % 5);

        animFrame = MTRNG_Next() % 0x14;

        {
            precipitationPos = ov5_GetWeatherSpritePosition(v1);
            precipitationPos.x = -64 + (MTRNG_Next() % 384);
            precipitationPos.y = -8 + (MTRNG_Next() % 256);
            precipitationPos.x <<= FX32_SHIFT;
            precipitationPos.y <<= FX32_SHIFT;
            precipitationPos.z = 0;

            ov5_SetPrecipitationPosition(v1->sprite, &precipitationPos);

            precipitationPos.x >>= FX32_SHIFT;
            precipitationPos.y >>= FX32_SHIFT;
        }

        v3 = 50 - (precipitationPos.x / 3);
        v2 = 206 - (precipitationPos.x / 3);

        if (v2 < 0) {
            v2 *= -1;
            v4 = v3 - (MTRNG_Next() % v2);
        } else {
            v4 = v3 + (MTRNG_Next() % v2);
        }

        if ((v3 <= precipitationPos.y) && (v4 >= precipitationPos.y)) {
            v7[1] *= 2;
        } else {
            animFrame = MTRNG_Next() % 4;
        }

        Sprite_SetAnimFrame(v1->sprite, animFrame);
    }
}

// only called from Hail
static void ov5_021D97C0(UnkStruct_ov5_021D6FA8 *param0)
{
    UnkStruct_ov5_021D6FA8 *v0 = (UnkStruct_ov5_021D6FA8 *)param0;
    int v1;
    s32 *v2 = (s32 *)v0->unk_08;
    VecFx32 precipitationPos = ov5_GetWeatherSpritePosition(v0);

    v2[0]++;

    if ((v2[0] % v2[4]) == 0) {
        precipitationPos.x += v2[2] << FX32_SHIFT;
    }

    if ((v2[0] % v2[5]) == 0) {
        precipitationPos.y += v2[3] << FX32_SHIFT;
    }

    if (v2[0] >= v2[1]) {
        ov5_021D6FA8(v0);
        return;
    }
}

// rainbow
static void ov5_021D97E8(SysTask *param0, void *param1)
{
    WeatherCallbackContext *ctx = (WeatherCallbackContext *)param1;
    int v1;
    s32 *v2 = (s32 *)ctx->weatherCallbackParams;

    switch (ctx->state) {
    case 0:
        v2[0] = 0;
        v2[1] = 0;

        ov5_SetBlendAlpha(0, 16);
        G2_SetBG2Offset(0, 32);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);

        ctx->state = 1;
        break;
    case 1:
        v2[0]++;

        if (v2[0] >= 10) {
            v2[0] = 0;
            v2[1]++;

            ov5_SetBlendAlpha(v2[1], 16);

            if (v2[1] >= 10) {
                v2[2] = 10 + (MTRNG_Next() % 20);
                v2[3] = 5 + (MTRNG_Next() % 3);
                v2[4] = 1;
                ctx->state = 3;
            }
        }
        break;
    case 2:
        v2[0] = 0;
        v2[1] = 10;

        G2_SetBG2Offset(0, 32);
        ov5_SetBlendAlpha(v2[1], 16);

        v2[2] = 10 + (MTRNG_Next() % 20);
        v2[3] = 5 + (MTRNG_Next() % 3);
        v2[4] = 1;

        ctx->state = 3;
        break;
    case 3:
        v2[0]++;

        if (v2[0] >= v2[2]) {
            v2[0] = 0;

            if (v2[4] == 1) {
                v2[1]--;

                if (v2[1] <= v2[3]) {
                    v2[2] = 10 + (MTRNG_Next() % 15);
                    v2[3] = 7 + (MTRNG_Next() % 3);
                    v2[4] = 0;
                }
            } else {
                v2[1]++;

                if (v2[1] >= v2[3]) {
                    v2[2] = 10 + (MTRNG_Next() % 20);
                    v2[3] = 5 + (MTRNG_Next() % 3);
                    v2[4] = 1;
                }
            }
        }

        ov5_SetBlendAlpha(v2[1], 16);

        if (ctx->unk_BA6 == 5) {
            ctx->state = 4;
        }
        break;
    case 4:
        v2[0]++;

        if (v2[0] >= 10) {
            v2[0] = 0;
            v2[1]--;

            ov5_SetBlendAlpha(v2[1], 16);

            if (v2[1] <= 0) {
                ctx->state = 5;
            }
        }
        break;
    case 5: {
        Weather *v3 = ctx->unk_04;
        ov5_021D69B8(v3);
    } break;
    default:
        break;
    }
}

// called from heavy rain and thunderstorm
static void ov5_021D9984(WeatherCallbackContext *ctx, PrecipitationContext *param1)
{
    ov5_021D7210(&param1->unk_00, ctx, 1, 15, 10, 0, -3, 2, 1, ov5_021DA0A8);
    ov5_021D7308(&param1->unk_4C, &param1->unk_1C, ctx->weatherSystem->fieldSystem->fogMan, GX_FOGSLOPE_0x1000, 0x6F6F, GX_RGB(26, 26, 26), 1, ctx->unk_BA4);

    param1->unk_B4[0] = 0;
    param1->unk_B4[1] = 0;
    param1->unk_B4[2] = 0;

    ov5_StartWeatherSound(ctx, SEQ_SE_DP_T_OOAME_sseq);
}

static BOOL ov5_021D9A0C(WeatherCallbackContext *ctx, PrecipitationContext *param1)
{
    int v0;
    int v1;

    v0 = ov5_021D7244(&param1->unk_00);

    if (param1->unk_B4[0] > 0) {
        param1->unk_B4[0]--;
    } else {
        v1 = ov5_021D735C(&param1->unk_4C, &param1->unk_1C, ctx->unk_BA4);

        if ((v1 == 1) && (v0 == 3)) {
            return 1;
        }
    }

    return 0;
}

// called from heavy rain and thunderstorm
static void ov5_021D9A58(WeatherCallbackContext *param0, PrecipitationContext *param1)
{
    ov5_021D7210(&param1->unk_00, param0, 10, 0, 10, 0, -3, 2, 1, ov5_021DA0A8);

    if (param0->unk_BA4 != 0) {
        param1->unk_1C.fogMan = param0->weatherSystem->fieldSystem->fogMan;
        ov5_ApplyFogProperties(param1->unk_1C.fogMan, GX_FOGSLOPE_0x1000, 0x6F6F, GX_RGB(26, 26, 26));
        ov5_021D74D4(&param1->unk_1C);
    }

    param1->unk_B4[1] = 0;
    param1->unk_B4[2] = 0;

    ov5_021D7568(param0, ov5_021DA0A8, 20, 5, 1, ov5_021DA1A8);
    ov5_StartWeatherSound(param0, SEQ_SE_DP_T_OOAME_sseq);
}

// called from heavy rain and thunderstorm
static void ov5_021D9AEC(WeatherCallbackContext *param0, PrecipitationContext *param1)
{
    param1->unk_B4[2] = (param1->unk_B4[2] + 1) % (60 * 5);

    if (param1->unk_00.unk_06-- <= 0) {
        ov5_021DA0A8(param0, param1->unk_00.unk_04);
        param1->unk_00.unk_06 = param1->unk_00.unk_08;
    }
}

static void ov5_021D9B28(WeatherCallbackContext *param0, PrecipitationContext *param1)
{
    ov5_021D7238(&param1->unk_00, 0, 15, 3, -3);

    if (param0->unk_BA4 != 0) {
        ov5_021D749C(&param1->unk_1C, 1, FALSE);
    }

    param1->unk_B4[0] = 0;
    ov5_StopWeatherSound(param0);
}

static BOOL ov5_021D9B68(WeatherCallbackContext *param0, PrecipitationContext *param1)
{
    int v0;
    int v1;

    v0 = ov5_021D7244(&param1->unk_00);

    if (param1->unk_B4[0] > 0) {
        param1->unk_B4[0]--;
    } else {
        if (param0->unk_BA4 != 0) {
            v1 = ov5_021D74B8(&param1->unk_1C);
        } else {
            v1 = 1;
        }

        if ((v1 == 1) && (v0 == 3)) {
            if (param0->unk_0C.unk_34 == &param0->unk_0C) {
                return 1;
            }
        }
    }

    return 0;
}

// called from heavy rain and thunderstorm
static void ov5_021D9BC0(WeatherCallbackContext *param0, PrecipitationContext *param1)
{
    if (param0->unk_BA4 != 0) {
        FogManager_ApplyParameters(param1->unk_1C.fogMan, FOG_PARAMETER_ENABLED, FALSE, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
    }

    Weather *v0 = param0->unk_04;
    ov5_021D69B8(v0);
}

// called from heavy rain and thunderstorm
static void ov5_021D9BEC(WeatherCallbackContext *param0, PrecipitationContext *param1)
{
    if ((param0->state != 5) && (param0->state != 0)) {
        ov5_021D6FF0(&param0->unk_0C, ov5_021DA1A8);
        ov5_CameraMoveWeatherSprite(param0, NULL, NULL);
        ov5_WeatherDummy(param0);
    }
}

static void ov5_021D9C20(SysTask *param0, void *param1, u32 alphaCoefficient, u32 param3, u32 param4, u32 param5)
{
    WeatherCallbackContext *v0 = (WeatherCallbackContext *)param1;
    int v1;
    UnusedWeatherContext *v2;
    int v3;

    v2 = (UnusedWeatherContext *)v0->weatherCallbackParams;

    switch (v0->state) {
    case 0:
        if (v0->unk_BA4 != 0) {
            ov5_ApplyFogProperties(v0->weatherSystem->fieldSystem->fogMan, GX_FOGSLOPE_0x0400, 28591, (GX_RGB(0, 0, 0)));
            FogManager_ApplyDensityTable(v0->weatherSystem->fieldSystem->fogMan, sFogDensityTable);
            ov5_SetBlendAlpha(alphaCoefficient, 16 - alphaCoefficient);

            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);

            v2->unk_98[0] = param4;
            v2->unk_98[1] = 0;
        }

        v0->state = 1;
        break;
    case 1:
        v0->state = 3;
        break;
    case 2:
        if (v0->unk_BA4 != 0) {
            ov5_ApplyFogProperties(v0->weatherSystem->fieldSystem->fogMan, GX_FOGSLOPE_0x0400, 28591, (GX_RGB(0, 0, 0)));
            FogManager_ApplyDensityTable(v0->weatherSystem->fieldSystem->fogMan, sFogDensityTable);
            ov5_SetBlendAlpha(alphaCoefficient, 16 - alphaCoefficient);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            v2->unk_98[0] = param4;
            v2->unk_98[1] = 0;
        }

        v0->state = 3;
        break;
    case 3:
        if (v2->unk_98[1] == 0) {
            v2->unk_98[0] -= param3;

            if (v2->unk_98[0] <= 0) {
                v2->unk_98[1] = 1;
            }
        } else if (v2->unk_98[1] == 1) {
            v2->unk_98[0]++;

            if (v2->unk_98[0] >= param5) {
                v2->unk_98[1] = 2;
            }
        } else {
            v2->unk_98[0]--;

            if (v2->unk_98[0] <= 0) {
                v2->unk_98[1] = 1;
            }
        }

        ov5_SetBlendAlpha((alphaCoefficient + ((v2->unk_98[0]) / 128)), 16 - (alphaCoefficient + ((v2->unk_98[0]) / 128)));

        if (v0->unk_BA6 == 5) {
            v0->state = 4;
        }
        break;
    case 4:
        ov5_SetBlendAlpha(0, 16);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        v0->state = 5;
        break;
    case 5:
        if (v0->unk_BA4 != 0) {
            FogManager_ApplyParameters(v0->weatherSystem->fieldSystem->fogMan, FOG_PARAMETER_ENABLED, FALSE, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
        }

        {
            Weather *v4 = v0->unk_04;
            ov5_021D69B8(v4);
        }
        break;
    default:
        break;
    }
}

// only called from unused weathers 26 through 30
static void ov5_021D9DFC(WeatherCallbackContext *param0, UnusedWeatherContext *param1, GXFogSlope fogSlope, u32 offset, GXRgb fogColor, u32 param5, u32 param6)
{
    BOOL v1;

    switch (param0->state) {
    case 0:
        ov5_021D7308(&param1->unk_30, &param1->unk_00, param0->weatherSystem->fieldSystem->fogMan, fogSlope, offset, fogColor, param5, param0->unk_BA4);
        param0->state = 1;
        break;
    case 1:
        v1 = ov5_021D735C(&param1->unk_30, &param1->unk_00, param0->unk_BA4);

        if (v1 == TRUE) {
            param0->state = 3;
        }
        break;
    case 2:
        if (param0->unk_BA4 != 0) {
            param1->unk_00.fogMan = param0->weatherSystem->fieldSystem->fogMan;
            ov5_ApplyFogProperties(param1->unk_00.fogMan, fogSlope, offset, fogColor);
            ov5_021D74D4(&param1->unk_00);
        }

        param0->state = 3;
        break;
    case 3:
        if (param0->unk_BA6 == 5) {
            if (param0->unk_BA4 != 0) {
                ov5_021D749C(&param1->unk_00, param6, FALSE);
            }

            param0->state = 4;
        }
        break;
    case 4:
        if (param0->unk_BA4 != 0) {
            v1 = ov5_021D74B8(&param1->unk_00);
        } else {
            v1 = TRUE;
        }

        if (v1 == TRUE) {
            param0->state = 5;
        }
        break;
    case 5:
        if (param0->unk_BA4 != 0) {
            FogManager_ApplyParameters(param1->unk_00.fogMan, FOG_PARAMETER_ENABLED, FALSE, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
        }

        Weather *v2 = param0->unk_04;
        ov5_021D69B8(v2);
        break;
    default:
        break;
    }
}

// thunderstorm
static void ov5_021D9F0C(SysTask *param0, void *param1)
{
    WeatherCallbackContext *v0 = (WeatherCallbackContext *)param1;
    PrecipitationContext *v1 = (PrecipitationContext *)v0->weatherCallbackParams;

    switch (v0->state) {
    case 0:
        ov5_021D9984(v0, v1);
        ov5_021D6418(v0->weatherSystem, 0, OVERWORLD_WEATHER_17);
        ov5_021D6418(v0->weatherSystem, 3, OVERWORLD_WEATHER_17);

        v0->state = 1;
        break;
    case 1:
        if (ov5_021D9A0C(v0, v1)) {
            v0->state = 3;
        }
        break;
    case 2:
        ov5_021D9A58(v0, v1);
        ov5_021D6418(v0->weatherSystem, 0, OVERWORLD_WEATHER_17);
        ov5_021D6418(v0->weatherSystem, 3, OVERWORLD_WEATHER_17);

        v0->state = 3;
        break;
    case 3:
        ov5_021D9AEC(v0, v1);

        if (v0->unk_BA6 == 5) {
            ov5_021D9B28(v0, v1);
            ov5_021D6418(v0->weatherSystem, 5, OVERWORLD_WEATHER_17);
            v0->state = 4;
        }
        break;
    case 4:
        if (ov5_021D9B68(v0, v1)) {
            v0->state = 5;
        }
        break;
    case 5:
        ov5_021D9BC0(v0, v1);
        ov5_021D6418(v0->weatherSystem, 8, OVERWORLD_WEATHER_17);
        break;
    default:
        break;
    }

    ov5_021D9BEC(v0, v1);
}

// heavy rain
static void ov5_021D9FF8(SysTask *param0, void *param1)
{
    WeatherCallbackContext *v0 = (WeatherCallbackContext *)param1;
    PrecipitationContext *v1 = (PrecipitationContext *)v0->weatherCallbackParams;

    switch (v0->state) {
    case 0:
        ov5_021D9984(v0, v1);
        v0->state = 1;
        break;
    case 1:
        if (ov5_021D9A0C(v0, v1)) {
            v0->state = 3;
        }
        break;
    case 2:
        ov5_021D9A58(v0, v1);
        v0->state = 3;
        break;
    case 3:
        ov5_021D9AEC(v0, v1);

        if (v0->unk_BA6 == 5) {
            ov5_021D9B28(v0, v1);
            v0->state = 4;
        }
        break;
    case 4:
        if (ov5_021D9B68(v0, v1)) {
            v0->state = 5;
        }
        break;
    case 5:
        ov5_021D9BC0(v0, v1);
        break;
    default:
        break;
    }

    ov5_021D9BEC(v0, v1);
}

// yet another only called from heavy rain and thunderstorm
static void ov5_021DA0A8(WeatherCallbackContext *param0, int param1)
{
    int v0;
    UnkStruct_ov5_021D6FA8 *v1;
    int v2;
    s32 *v3;
    PrecipitationContext *v4;
    int v5;
    int animFrame;
    static const int v7[5] = { 1, 1, 2, 1, 3 };
    u32 random;

    v4 = (PrecipitationContext *)param0->weatherCallbackParams;

    for (v0 = 0; v0 < param1; v0++) {
        v1 = ov5_021D6F00(param0, sizeof(s32) * 8);

        if (v1 == NULL) {
            break;
        }

        v3 = (s32 *)v1->unk_08;
        random = MTRNG_Next();

        v3[0] = 0;
        animFrame = random % 3;

        Sprite_SetAnimFrame(v1->sprite, animFrame);

        v3[4] = -24 * (animFrame + 1);
        v3[2] = 24 * (animFrame + 1);
        v3[4] *= v7[v4->unk_B4[2] / 60];
        v3[2] *= v7[v4->unk_B4[2] / 60];
        v3[3] = 0;
        v3[1] = 0 + (random % 4);
        v3[1] /= v7[v4->unk_B4[2] / 60];

        {
            VecFx32 precipitationPos = ov5_GetWeatherSpritePosition(v1);

            precipitationPos.x = 0 + (random % 512);
            precipitationPos.y = -80 + (random % 48);
            precipitationPos.z = 0;
            precipitationPos.x <<= FX32_SHIFT;
            precipitationPos.y <<= FX32_SHIFT;

            ov5_SetPrecipitationPosition(v1->sprite, &precipitationPos);
        }
    }
}

// called from heavy rain and thunderstorm
static void ov5_021DA1A8(UnkStruct_ov5_021D6FA8 *param0)
{
    int v0;
    UnkStruct_ov5_021D6FA8 *v1 = (UnkStruct_ov5_021D6FA8 *)param0;
    s32 *v2 = (s32 *)v1->unk_08;
    VecFx32 precipitationPos = ov5_GetWeatherSpritePosition(v1);

    switch (v2[3]) {
    case 0:
        precipitationPos.x += (v2[4] * 2) << FX32_SHIFT;
        precipitationPos.y += (v2[2] * 2) << FX32_SHIFT;
        v2[0] += 2;

        if (v2[0] > v2[1]) {
            if ((MTRNG_Next() % 10) < 5) {
                v2[3] = 2;
            } else {
                v2[3] = 1;
                v2[0] = 4;
                Sprite_SetAnimFrame(v1->sprite, 3);
            }
        }

        ov5_SetPrecipitationPosition(v1->sprite, &precipitationPos);
        break;
    case 1:
        if (v2[0]-- <= 0) {
            v2[3] = 2;
        }
        break;
    case 2:
        ov5_021D6FA8(v1);
        break;
    }
}

// slow ashfall
static void ov5_021DA244(SysTask *param0, void *param1)
{
    WeatherCallbackContext *v0 = (WeatherCallbackContext *)param1;
    int v1;
    int v2;
    int cameraDX, cameraDY;
    short v5, v6;
    PrecipitationContext *v7;
    int v8;
    int v9;

    v7 = (PrecipitationContext *)v0->weatherCallbackParams;

    switch (v0->state) {
    case 0:
        ov5_021D7210(&v7->unk_00, v0, 1, 12, 1, 6, -1, 4, 0, ov5_021DA5A0);

        v7->unk_B4[1] = 0;
        v7->unk_B4[2] = 0;
        v7->unk_B4[4] = 0;
        v7->unk_B4[5] = 0;

        ov5_021D7308(&v7->unk_4C, &v7->unk_1C, v0->weatherSystem->fieldSystem->fogMan, GX_FOGSLOPE_0x1000, 0x6F6F + -0x40, GX_RGB(20, 20, 14), 1, v0->unk_BA4);

        v7->unk_B4[0] = 0;
        v0->state = 1;
        break;
    case 1:
        v8 = ov5_021D7244(&v7->unk_00);

        if (v7->unk_B4[0] > 0) {
            v7->unk_B4[0]--;
        } else {
            v9 = ov5_021D735C(&v7->unk_4C, &v7->unk_1C, v0->unk_BA4);

            if ((v9 == 1) && (v8 == 3)) {
                v0->state = 3;
                GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            }
        }

        break;
    case 2:
        ov5_021D7210(&v7->unk_00, v0, 1, 6, 1, 6, -1, 4, 0, ov5_021DA5A0);

        v7->unk_B4[1] = 0;
        v7->unk_B4[2] = 0;
        v7->unk_B4[4] = 0;
        v7->unk_B4[5] = 0;

        if (v0->unk_BA4 != 0) {
            v7->unk_1C.fogMan = v0->weatherSystem->fieldSystem->fogMan;
            ov5_ApplyFogProperties(v7->unk_1C.fogMan, GX_FOGSLOPE_0x1000, 0x6F6F + -0x40, GX_RGB(20, 20, 14));
            ov5_021D74D4(&v7->unk_1C);
        }

        ov5_021D7568(v0, ov5_021DA5A0, 20, 2, 16, ov5_021DA6BC);
        v0->state = 3;
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        break;
    case 3:
        if (v7->unk_00.unk_06-- <= 0) {
            ov5_021DA5A0(v0, v7->unk_00.unk_04);
            v7->unk_00.unk_06 = v7->unk_00.unk_08;
        }

        if (v0->unk_BA6 == 5) {
            ov5_021D7238(&v7->unk_00, 0, 12, 1, -1);

            if (v0->unk_BA4 != 0) {
                ov5_021D749C(&v7->unk_1C, 1, FALSE);
            }

            v7->unk_B4[0] = 9;
            v0->state = 4;
            v7->unk_B4[5] = 1;

            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        }
        break;
    case 4:
        v8 = ov5_021D7244(&v7->unk_00);

        if (v7->unk_B4[0] > 0) {
            v7->unk_B4[0]--;
        } else {
            if (v0->unk_BA4 != 0) {
                v9 = ov5_021D74B8(&v7->unk_1C);
            } else {
                v9 = 1;
            }

            if ((v9 == 1) && (v8 == 3)) {
                if (v0->unk_0C.unk_34 == &v0->unk_0C) {
                    v0->state = 5;
                }
            }
        }
        break;
    case 5:
        if (v0->unk_BA4 != 0) {
            FogManager_ApplyParameters(v7->unk_1C.fogMan, FOG_PARAMETER_ENABLED, FALSE, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
        }

        Weather *v10 = v0->unk_04;
        ov5_021D69B8(v10);
        break;
    default:
        break;
    }

    if ((v0->state != 5) && (v0->state != 0)) {
        ov5_021D6FF0(&v0->unk_0C, ov5_021DA6BC);
        ov5_CameraMoveWeatherSprite(v0, &cameraDX, &cameraDY);
        ov5_WeatherDummy(v0);

        v5 = v7->unk_B4[2] >> 16;
        v6 = v7->unk_B4[2] & 0xffff;
        v5 += cameraDX;
        v6 -= cameraDY * 5;

        if (v5 < 0) {
            v5 += HW_LCD_WIDTH;
        } else {
            if (v5 >= HW_LCD_WIDTH) {
                v5 -= HW_LCD_WIDTH;
            }
        }

        if (v6 < 0) {
            v6 += 2048;
        }

        v7->unk_B4[4] += 2;

        if (v7->unk_B4[4] > 60) {
            v7->unk_B4[4] = 0;

            v5 = (v5 + 32) % HW_LCD_WIDTH;
        }

        v6 = (v6 + 2) % 2048;
        G2_SetBG2Offset(v5, -v6 / 5);

        v7->unk_B4[2] = v5 << 16;
        v7->unk_B4[2] |= v6 & 0xffff;
    }
}

// also only called from slow ashfall
static void ov5_021DA5A0(WeatherCallbackContext *param0, int param1)
{
    int v0;
    int random;
    UnkStruct_ov5_021D6FA8 *v2;
    PrecipitationContext *v3;
    int v4;
    s32 *v5;

    v3 = param0->weatherCallbackParams;

    if (v3->unk_B4[1] == 1) {
        param1 *= 2;
    }

    for (v0 = 0; v0 < param1; v0++) {
        v2 = ov5_021D6F00(param0, sizeof(s32) * 8);

        if (v2 == NULL) {
            break;
        }

        v5 = (s32 *)v2->unk_08;
        v4 = MTRNG_Next() % 4;

        Sprite_SetAnimFrame(v2->sprite, v4);

        v5[4] = 10;
        v5[5] = 0;

        random = MTRNG_Next();

        if ((random % 2) == 0) {
            v5[1] = 1;
        } else {
            v5[1] = -1;
        }

        v5[3] = 1 + (MTRNG_Next() % 1);
        v5[0] = (s32)&v3->unk_B4[1];
        v5[6] = (s32)&v3->unk_B4[5];
        v5[7] = 10 + (MTRNG_Next() % 20);

        {
            VecFx32 precipitationPos = ov5_GetWeatherSpritePosition(v2);

            precipitationPos.x = -32 + (MTRNG_Next() % 414);

            if ((v3->unk_B4[1] == 1) && (v0 >= (param1 / 2))) {
                precipitationPos.y = -40 - (MTRNG_Next() % 20);
            } else {
                precipitationPos.y = -8 - (MTRNG_Next() % 20);
            }

            precipitationPos.x <<= FX32_SHIFT;
            precipitationPos.y <<= FX32_SHIFT;
            precipitationPos.z = 0;

            ov5_SetPrecipitationPosition(v2->sprite, &precipitationPos);
        }
    }
}

// only called from slow ashfall
static void ov5_021DA6BC(UnkStruct_ov5_021D6FA8 *param0)
{
    UnkStruct_ov5_021D6FA8 *v0 = (UnkStruct_ov5_021D6FA8 *)param0;
    s32 *v1 = (s32 *)v0->unk_08;
    VecFx32 precipitationPos = ov5_GetWeatherSpritePosition(v0);
    BOOL v3 = 0;

    if (v1[5] >= v1[3]) {
        precipitationPos.y += FX32_ONE;
        v1[5] = 0;

        ov5_SetPrecipitationPosition(v0->sprite, &precipitationPos);
    }

    v1[5]++;
    precipitationPos.y >>= FX32_SHIFT;

    if (*((s32 *)v1[6]) == 1) {
        v1[7]--;

        if (v1[7] <= 0) {
            v3 = 1;
        }
    }

    if (((precipitationPos.y < -284) && (precipitationPos.y > -296)) || ((precipitationPos.y > 212) && (precipitationPos.y < 232))) {
        v3 = 1;
    }

    if (v3 == 1) {
        *((s32 *)v1[0]) = 1;
        ov5_021D6FA8(v0);
        return;
    }
}

// unused
static void ov5_021DA748(SysTask *param0, void *param1)
{
    WeatherCallbackContext *v0 = (WeatherCallbackContext *)param1;
    s32 *v1;
    int v2;
    int v3;

    v1 = (s32 *)v0->weatherCallbackParams;

    switch (v0->state) {
    case 0:
    case 1:
    case 2:
        v1[0] = 0;
        v1[4] = 0;
        v1[1] = 0;

        ov5_SetBlendAlpha(0, 31);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);

        v0->state = 3;
        break;
    case 3:
        if (v1[4] >= 0) {
            v1[4]--;
        } else {
            switch (v1[1]) {
            case 0:
                v1[1] = 1;
                v1[5] = 0;
                v1[6] = 200 + (MTRNG_Next() % 480);
                v1[7] = 0;

                if ((MTRNG_Next() % 3) != 0) {
                    v1[2] = 36;

                    Sound_PlayEffect(SEQ_SE_DP_T_KAMI2_sseq);
                } else {
                    v1[2] = 200;

                    Sound_PlayEffect(SEQ_SE_DP_T_KAMI_sseq);
                }
                break;
            case 1:
                v1[5]++;
                v1[7] += v1[6];

                if (v1[5] >= 2) {
                    v1[1] = 2;
                }

                ov5_SetBlendAlpha(v1[7] / 100, 31);
                break;
            case 2:
                v1[7] -= v1[2];

                if (v1[7] <= 0) {
                    v1[1] = 0;
                    v1[7] = 0;

                    if (v1[2] == 200) {
                        v1[4] = (MTRNG_Next() % 15);
                    } else {
                        v1[4] = ((v1[6] * 50) / 100) + (MTRNG_Next() % 120);
                    }
                }

                ov5_SetBlendAlpha(v1[7] / 100, 31);
                break;
            }
        }

        if (v0->unk_BA6 == 5) {
            v0->state = 4;
        }
        break;
    case 4:
        v0->state = 5;
        break;
    case 5: {
        Weather *v4 = v0->unk_04;
        ov5_021D69B8(v4);
    } break;
    default:
        break;
    }
}

// spirits
static void ov5_021DA8A0(SysTask *param0, void *param1)
{
    WeatherCallbackContext *v0 = (WeatherCallbackContext *)param1;
    int v1;
    SpiritsContext *v2;
    int v3;

    v2 = (SpiritsContext *)v0->weatherCallbackParams;

    switch (v0->state) {
    case 0:
        ov5_021D7210(&v2->unk_00, v0, 1, 35, 4, 15, -2, 5, 1, ov5_021DA9DC);
        v0->state = 1;
        break;
    case 1:
        v3 = ov5_021D7244(&v2->unk_00);

        if (v3 == 3) {
            v0->state = 3;
        }
        break;
    case 2:
        ov5_021D7210(&v2->unk_00, v0, 1, 4, 15, 15, -2, 5, 1, ov5_021DA9DC);
        ov5_021D7568(v0, ov5_021DA9DC, 16, 2, 1, ov5_021DAADC);
        v0->state = 3;
        break;
    case 3:
        if (v2->unk_00.unk_06-- <= 0) {
            ov5_021DA9DC(v0, v2->unk_00.unk_04);
            v2->unk_00.unk_06 = v2->unk_00.unk_08;
        }

        if (v0->unk_BA6 == 5) {
            ov5_021D7238(&v2->unk_00, 0, 35, 2, -3);
            v0->state = 4;
        }
        break;
    case 4:
        v3 = ov5_021D7244(&v2->unk_00);

        if (v3 == 3) {
            if (v0->unk_0C.unk_34 == &v0->unk_0C) {
                v0->state = 5;
            }
        }
        break;
    case 5: {
        Weather *v4 = v0->unk_04;
        ov5_021D69B8(v4);
    } break;
    default:
        break;
    }

    if ((v0->state != 5) && (v0->state != 0)) {
        ov5_021D6FF0(&v0->unk_0C, ov5_021DAADC);
        ov5_CameraMoveWeatherSprite(v0, NULL, NULL);
        ov5_WeatherDummy(v0);
    }
}

static void ov5_021DA9DC(WeatherCallbackContext *param0, int param1)
{
    int v0;
    UnkStruct_ov5_021D6FA8 *v1;
    s32 *v2;
    int v3;
    int animFrame;
    VecFx32 precipitationPos;

    for (v0 = 0; v0 < param1; v0++) {
        v1 = ov5_021D6F00(param0, sizeof(s32) * 8);

        if (v1 == NULL) {
            break;
        }

        v2 = (s32 *)v1->unk_08;
        animFrame = MTRNG_Next() % 0xe;

        Sprite_SetAnimFrame(v1->sprite, animFrame);

        v3 = animFrame / 4;
        v3++;

        v2[0] = 8 + (MTRNG_Next() % 25);
        v2[0] *= v3;
        v2[1] = 16 / v3;
        v2[2] = 0;
        v2[3] = MTRNG_Next() % 2;
        v2[4] = 1;

        switch (v3) {
        case 1:
        case 2:
            precipitationPos.x = -128 + (MTRNG_Next() % (HW_LCD_WIDTH * 2));
            precipitationPos.y = 8 + (MTRNG_Next() % HW_LCD_HEIGHT);
            break;
        case 3:
            precipitationPos.x = -128 + (MTRNG_Next() % (HW_LCD_WIDTH * 2));
            precipitationPos.y = 64 + (MTRNG_Next() % (HW_LCD_HEIGHT - 64));
            break;
        case 4:
            precipitationPos.x = -128 + (MTRNG_Next() % (HW_LCD_WIDTH * 2));
            precipitationPos.y = 160 + (MTRNG_Next() % (HW_LCD_HEIGHT - 160));
            break;
        }

        precipitationPos.z = 0;
        precipitationPos.x <<= FX32_SHIFT;
        precipitationPos.y <<= FX32_SHIFT;

        ov5_SetPrecipitationPosition(v1->sprite, &precipitationPos);
    }
}

// only called from spirits
static void ov5_021DAADC(UnkStruct_ov5_021D6FA8 *param0)
{
    UnkStruct_ov5_021D6FA8 *v0 = (UnkStruct_ov5_021D6FA8 *)param0;
    s32 *v1 = (s32 *)v0->unk_08;
    VecFx32 precipitationPos = ov5_GetWeatherSpritePosition(v0);

    v1[2] += v1[1];

    if (v1[0] > 0) {
        v1[0]--;
        precipitationPos.y -= (v1[2] / 100) << FX32_SHIFT;
    } else {
        precipitationPos.y -= (v1[2] / 50) << FX32_SHIFT;
    }

    v1[4]--;

    if (v1[4] <= 0) {
        v1[4] = 1;

        if (v1[3] == 0) {
            precipitationPos.x += 2 << FX32_SHIFT;
            v1[3] = 1;
        } else {
            precipitationPos.x -= 2 << FX32_SHIFT;
            v1[3] = 0;
        }
    }

    ov5_SetPrecipitationPosition(v0->sprite, &precipitationPos);

    if ((precipitationPos.y >> FX32_SHIFT) <= -16) {
        ov5_021D6FA8(v0);
    }
}

// spear pillar
static void ov5_021DAB78(SysTask *param0, void *param1)
{
    WeatherCallbackContext *v0 = (WeatherCallbackContext *)param1;
    FogContext *v1;
    BOOL v2;
    BOOL v3;

    v1 = (FogContext *)v0->weatherCallbackParams;

    switch (v0->state) {
    case 0:
        ov5_021D64FC(&v1->unk_00, 0, 16, 8);
        ov5_SetBlendAlpha(0, 16);

        G2_SetBG2Priority(3);

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        v0->state = 1;
        break;
    case 1:
        v3 = 1;
        v2 = ov5_021D650C(&v1->unk_00);

        ov5_SetBlendAlpha(v1->unk_00.alphaCoefficient, 16 - v1->unk_00.alphaCoefficient);

        if ((v2 == 1) && (v3 == 1)) {
            v0->state = 3;
        }
        break;
    case 2:
        ov5_SetBlendAlpha(16, 16 - 16);
        G2_SetBG2Priority(3);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);

        v0->state = 3;
        break;
    case 3:
        if (v0->unk_BA6 == 5) {
            ov5_021D64FC(&v1->unk_00, 16, 0, 8);
            v0->state = 4;
        }
        break;
    case 4:
        v2 = ov5_021D650C(&v1->unk_00);
        ov5_SetBlendAlpha(v1->unk_00.alphaCoefficient, 16 - v1->unk_00.alphaCoefficient);
        v3 = 1;

        if ((v2 == 1) && (v3 == 1)) {
            v0->state = 5;
        }
        break;
    case 5: {
        Weather *v4 = v0->unk_04;
        ov5_021D69B8(v4);
    } break;
    default:
        break;
    }
}

// cloudy weather callback
static void ov5_021DAC68(SysTask *param0, void *param1)
{
    WeatherCallbackContext *v0 = (WeatherCallbackContext *)param1;
    CloudyContext *v1;
    BOOL v2;

    v1 = (CloudyContext *)v0->weatherCallbackParams;

    switch (v0->state) {
    case 0:
        ov5_021D64FC(&v1->unk_00, 0, 4, 8);
        ov5_SetBlendAlpha(0, 16);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        v0->state = 1;
        break;
    case 1:
        v2 = ov5_021D650C(&v1->unk_00);
        ov5_SetBlendAlpha(v1->unk_00.alphaCoefficient, 16 - v1->unk_00.alphaCoefficient);

        if (v2) {
            v0->state = 3;
        }
        break;
    case 2:
        ov5_SetBlendAlpha(4, 16 - 4);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        v0->state = 3;
        break;
    case 3:
        if (v0->unk_BA6 == 5) {
            ov5_021D64FC(&v1->unk_00, 4, 0, 8);
            v0->state = 4;
        }
        break;
    case 4:
        v2 = ov5_021D650C(&v1->unk_00);
        ov5_SetBlendAlpha(v1->unk_00.alphaCoefficient, 16 - v1->unk_00.alphaCoefficient);

        if (v2) {
            v0->state = 5;
        }
        break;
    case 5: {
        Weather *v3 = v0->unk_04;
        ov5_021D69B8(v3);
    } break;
    default:
        break;
    }
}

// deep fog
static void ov5_021DAD38(SysTask *param0, void *param1)
{
    WeatherCallbackContext *ctx = (WeatherCallbackContext *)param1;
    FogContext *v1;
    int v2;
    BOOL v3;

    v1 = (FogContext *)ctx->weatherCallbackParams;

    switch (ctx->state) {
    case 0:
        ov5_021D7308(&v1->unk_44, &v1->unk_14, ctx->weatherSystem->fieldSystem->fogMan, GX_FOGSLOPE_0x0100, 30287, (GX_RGB(0, 0, 0)), 1, ctx->unk_BA4);
        ov5_021D64FC(&v1->unk_00, 0, 9, 30);
        ov5_SetBlendAlpha(0, 16);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        ctx->state = 1;
        break;
    case 1:
        v2 = ov5_021D74B8(&v1->unk_14);
        v3 = ov5_021D650C(&v1->unk_00);

        ov5_SetBlendAlpha(v1->unk_00.alphaCoefficient, 16 - v1->unk_00.alphaCoefficient);

        if ((v2 == 1) && (v3 == 1)) {
            ctx->state = 3;
        }
        break;
    case 2:
        if (ctx->unk_BA4 != 0) {
            v1->unk_14.fogMan = ctx->weatherSystem->fieldSystem->fogMan;
            ov5_ApplyFogProperties(v1->unk_14.fogMan, GX_FOGSLOPE_0x0100, 30287, (GX_RGB(0, 0, 0)));
            ov5_021D74D4(&v1->unk_14);
        }

        ov5_SetBlendAlpha(9, 16 - 9);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);

        ctx->state = 3;
        break;
    case 3:
        if (ctx->unk_BA6 == 5) {
            if (ctx->unk_BA4 != 0) {
                ov5_021D749C(&v1->unk_14, 1, FALSE);
            }

            ov5_021D64FC(&v1->unk_00, 9, 0, 30);
            ctx->state = 4;
        }
        break;
    case 4:
        if (ctx->unk_BA4 != 0) {
            v2 = ov5_021D74B8(&v1->unk_14);
        } else {
            v2 = 1;
        }

        v3 = ov5_021D650C(&v1->unk_00);
        ov5_SetBlendAlpha(v1->unk_00.alphaCoefficient, 16 - v1->unk_00.alphaCoefficient);

        if ((v2 == 1) && (v3 == 1)) {
            ctx->state = 5;
        }
        break;
    case 5:
        if (ctx->unk_BA4 != 0) {
            FogManager_ApplyParameters(v1->unk_14.fogMan, FOG_PARAMETER_ENABLED, FALSE, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
        }

        Weather *v4 = ctx->unk_04;
        ov5_021D69B8(v4);
        break;
    default:
        break;
    }
}

enum FogState {
    FOG_STATE_0,
    FOG_STATE_1,
    FOG_STATE_2,
    FOG_STATE_3,
    FOG_STATE_4,
    FOG_STATE_5,
};

// fog
static void ov5_021DAEC0(SysTask *param0, void *param1)
{
    WeatherCallbackContext *v0 = (WeatherCallbackContext *)param1;
    FogContext *v1;
    int v2;
    BOOL v3;

    v1 = (FogContext *)v0->weatherCallbackParams;

    switch (v0->state) {
    case FOG_STATE_0:
        ov5_021D7308(&v1->unk_44, &v1->unk_14, v0->weatherSystem->fieldSystem->fogMan, GX_FOGSLOPE_0x0200, 30037, (GX_RGB(31, 31, 31)), 1, v0->unk_BA4);
        ov5_021D64FC(&v1->unk_00, 0, 9, 30);
        ov5_SetBlendAlpha(0, 16);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        v0->state = FOG_STATE_1;
        break;
    case FOG_STATE_1:
        v2 = ov5_021D74B8(&v1->unk_14);
        v3 = ov5_021D650C(&v1->unk_00);

        ov5_SetBlendAlpha(v1->unk_00.alphaCoefficient, 16 - v1->unk_00.alphaCoefficient);

        if ((v2 == 1) && (v3 == 1)) {
            v0->state = FOG_STATE_3;
        }
        break;
    case FOG_STATE_2:
        if (v0->unk_BA4 != 0) {
            v1->unk_14.fogMan = v0->weatherSystem->fieldSystem->fogMan;
            ov5_ApplyFogProperties(v1->unk_14.fogMan, GX_FOGSLOPE_0x0200, 30037, (GX_RGB(31, 31, 31)));
            ov5_021D74D4(&v1->unk_14);
        }

        ov5_SetBlendAlpha(9, 16 - 9);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        v0->state = FOG_STATE_3;
        break;
    case FOG_STATE_3:
        if (v0->unk_BA6 == 5) {
            if (v0->unk_BA4 != 0) {
                ov5_021D749C(&v1->unk_14, 1, FALSE);
            }

            ov5_021D64FC(&v1->unk_00, 9, 0, 30);
            v0->state = FOG_STATE_4;
        }
        break;
    case FOG_STATE_4:
        if (v0->unk_BA4 != 0) {
            v2 = ov5_021D74B8(&v1->unk_14);
        } else {
            v2 = 1;
        }

        v3 = ov5_021D650C(&v1->unk_00);
        ov5_SetBlendAlpha(v1->unk_00.alphaCoefficient, 16 - v1->unk_00.alphaCoefficient);

        if ((v2 == 1) && (v3 == 1)) {
            v0->state = FOG_STATE_5;
        }
        break;
    case FOG_STATE_5:
        if (v0->unk_BA4 != 0) {
            FogManager_ApplyParameters(v1->unk_14.fogMan, FOG_PARAMETER_ENABLED, FALSE, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
        }

        Weather *v4 = v0->unk_04;
        ov5_021D69B8(v4);
        break;
    default:
        break;
    }
}

// dark flash
static void SysTask_DarkFlash(SysTask *param0, void *param)
{
    WeatherCallbackContext *ctx = (WeatherCallbackContext *)param;
    DarkFlashContext *darkFlash;
    WeatherSystem *weatherSystem = ctx->weatherSystem;
    FieldSystem *fieldSystem = weatherSystem->fieldSystem;

    darkFlash = (DarkFlashContext *)ctx->weatherCallbackParams;

    switch (ctx->state) {
    case 0:
        ov5_021DB614(darkFlash, fieldSystem->unk_04->hBlankSystem);
        ov5_021DB6E0(darkFlash, (FX32_CONST(256)), (FX32_CONST(32)), 128, 84, 30);
        ctx->state = 1;
        break;
    case 1:
        if (ov5_021DB700(darkFlash) == 1) {
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            DarkFlash_DoneAfterVBlank(darkFlash);
            ctx->state = 3;
        }
        break;
    case 2:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        ctx->state = 3;
        break;
    case 3:
        if (ctx->unk_BA6 == 5) {
            ov5_021DB614(darkFlash, fieldSystem->unk_04->hBlankSystem);
            ov5_021DB6E0(darkFlash, (FX32_CONST(32)), (FX32_CONST(256)), 128, 84, 30);
            ctx->state = 4;
        }
        break;
    case 4:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);

        if (ov5_021DB700(darkFlash) == 1) {
            ctx->state = 5;
        }
        break;
    case 5:
        DarkFlash_Done(darkFlash);
        {
            Weather *weather = ctx->unk_04;
            ov5_021D69B8(weather);
        }
        break;
    default:
        break;
    }
}

enum ForestShadowsState {
    FOREST_SHADOWS_START,
    FOREST_SHADOWS_1,
    FOREST_SHADOWS_2,
    FOREST_SHADOWS_3,
    FOREST_SHADOWS_4,
    FOREST_SHADOWS_END
};

// forest shadows
static void ov5_021DB144(SysTask *param0, void *param1)
{
    WeatherCallbackContext *ctx = (WeatherCallbackContext *)param1;
    BOOL v2;
    BOOL v3;

    ForestShadowsContext *forestShadowCtx = (ForestShadowsContext *)ctx->weatherCallbackParams;

    switch (ctx->state) {
    case FOREST_SHADOWS_START:
        ov5_021D64FC(&forestShadowCtx->unk_00, 0, 7, 8);
        ov5_SetBlendAlpha(0, 16);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        ov5_021D7308(&forestShadowCtx->unk_44, &forestShadowCtx->unk_14, ctx->weatherSystem->fieldSystem->fogMan, GX_FOGSLOPE_0x1000, 0x6F6F + -1600, (GX_RGB(31, 31, 31)), 1, ctx->unk_BA4);

        forestShadowCtx->cameraScrollX = 0;
        forestShadowCtx->cameraScrollY = 0;
        forestShadowCtx->counter = 0;
        ctx->state = FOREST_SHADOWS_1;
        break;
    case FOREST_SHADOWS_1:
        v3 = ov5_021D735C(&forestShadowCtx->unk_44, &forestShadowCtx->unk_14, ctx->unk_BA4);
        v2 = ov5_021D650C(&forestShadowCtx->unk_00);

        ov5_SetBlendAlpha(forestShadowCtx->unk_00.alphaCoefficient, 16 - forestShadowCtx->unk_00.alphaCoefficient);

        if ((v2 == v3) && (v2 == 1)) {
            ctx->state = FOREST_SHADOWS_3;
        }
        break;
    case FOREST_SHADOWS_2:
        ov5_SetBlendAlpha(7, 16 - 7);

        if (ctx->unk_BA4 != 0) {
            forestShadowCtx->unk_14.fogMan = ctx->weatherSystem->fieldSystem->fogMan;
            ov5_ApplyFogProperties(forestShadowCtx->unk_14.fogMan, GX_FOGSLOPE_0x1000, 0x6F6F + -1600, (GX_RGB(31, 31, 31)));
            ov5_021D74D4(&forestShadowCtx->unk_14);
        }

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);

        forestShadowCtx->cameraScrollX = 0;
        forestShadowCtx->cameraScrollY = 0;
        forestShadowCtx->counter = 0;
        ctx->state = FOREST_SHADOWS_3;
        break;
    case FOREST_SHADOWS_3:
        if (ctx->unk_BA6 == 5) {
            ov5_021D64FC(&forestShadowCtx->unk_00, 7, 0, 8);

            if (ctx->unk_BA4 != 0) {
                ov5_021D749C(&forestShadowCtx->unk_14, 1, FALSE);
            }

            ctx->state = FOREST_SHADOWS_4;
        }
        break;
    case FOREST_SHADOWS_4:
        v2 = ov5_021D650C(&forestShadowCtx->unk_00);
        v3 = ov5_021D74B8(&forestShadowCtx->unk_14);

        ov5_SetBlendAlpha(forestShadowCtx->unk_00.alphaCoefficient, 16 - forestShadowCtx->unk_00.alphaCoefficient);

        if ((v2 == v3) && (v2 == 1)) {
            ctx->state = FOREST_SHADOWS_END;
        }
        break;
    case FOREST_SHADOWS_END:
        if (ctx->unk_BA4 != 0) {
            FogManager_ApplyParameters(forestShadowCtx->unk_14.fogMan, FOG_PARAMETER_ENABLED, FALSE, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
        }

        Weather *v4 = ctx->unk_04;
        ov5_021D69B8(v4);
        break;
    default:
        break;
    }

    if (ctx->state != FOREST_SHADOWS_END && ctx->state != FOREST_SHADOWS_START) {
        int shadowWiggleAmount;
        fx32 cameraDx, cameraDy;

        ov5_CameraMoveWeatherSpriteFX(ctx, &cameraDx, &cameraDy);

        if (cameraDy < 0) {
            cameraDy = FX_Mul(cameraDy, FX32_CONST(0.75));
        } else {
            cameraDy = FX_Mul(cameraDy, FX32_CONST(0.75));
        }

        forestShadowCtx->cameraScrollX += cameraDx;
        forestShadowCtx->cameraScrollY += cameraDy;
        forestShadowCtx->counter++;

        if (forestShadowCtx->counter >= (FOREST_SHADOW_WIGGLE_FRAME_DELAY * FOREST_SHADOW_WIGGLE_TABLE_SIZE)) {
            forestShadowCtx->counter = 0;
        }

        shadowWiggleAmount = sForestShadowWiggleAmounts[forestShadowCtx->counter / FOREST_SHADOW_WIGGLE_FRAME_DELAY];

        Bg_ScheduleScroll(ctx->weatherSystem->fieldSystem->bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_X, (forestShadowCtx->cameraScrollX >> FX32_SHIFT) + shadowWiggleAmount);
        Bg_ScheduleScroll(ctx->weatherSystem->fieldSystem->bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_Y, (forestShadowCtx->cameraScrollY >> FX32_SHIFT));
    }
}

// weather 24
static void ov5_021DB3A8(SysTask *param0, void *param1)
{
    ov5_021D9C20(param0, param1, 4, 4, (10 * 128), (2 * 128));
}

// weatehr 25
static void ov5_021DB3C4(SysTask *param0, void *param1)
{
    ov5_021D9C20(param0, param1, 6, 1, (8 * 128), (2 * 128));
}

// weatehr 26
static void ov5_021DB3E0(SysTask *param0, void *param1)
{
    WeatherCallbackContext *v0 = (WeatherCallbackContext *)param1;
    UnusedWeatherContext *v1 = (UnusedWeatherContext *)v0->weatherCallbackParams;

    ov5_021D9DFC(v0, v1, 3, 26095, (GX_RGB(2, 2, 6)), 0, 0);
}

// weather 27
static void ov5_021DB40C(SysTask *param0, void *param1)
{
    WeatherCallbackContext *v0 = (WeatherCallbackContext *)param1;
    UnusedWeatherContext *v1 = (UnusedWeatherContext *)v0->weatherCallbackParams;

    ov5_021D9DFC(v0, v1, 2, 26415, (GX_RGB(13, 25, 30)), 0, 0);
}

// weather 28
static void ov5_021DB438(SysTask *param0, void *param1)
{
    WeatherCallbackContext *v0 = (WeatherCallbackContext *)param1;
    UnusedWeatherContext *v1 = (UnusedWeatherContext *)v0->weatherCallbackParams;

    ov5_021D9DFC(v0, v1, 2, 26415, (GX_RGB(20, 0, 0)), 0, 0);
}

// weather 29
static void ov5_021DB460(SysTask *param0, void *param1)
{
    WeatherCallbackContext *v0 = (WeatherCallbackContext *)param1;
    UnusedWeatherContext *v1 = (UnusedWeatherContext *)v0->weatherCallbackParams;

    ov5_021D9DFC(v0, v1, 2, 26415, (GX_RGB(0, 0, 20)), 0, 0);
}

// weather 30
static void ov5_021DB48C(SysTask *param0, void *param1)
{
    WeatherCallbackContext *v0 = (WeatherCallbackContext *)param1;
    UnusedWeatherContext *v1 = (UnusedWeatherContext *)v0->weatherCallbackParams;

    ov5_021D9DFC(v0, v1, 1, 19311, (GX_RGB(1, 1, 1)), 0, 0);
}

static void ov5_StartWeatherSound(WeatherCallbackContext *param0, int seqID)
{
    GF_ASSERT(param0->isSoundPlaying == FALSE);
    param0->isSoundPlaying = TRUE;
    param0->soundSeqID = seqID;

    Sound_PlayEffect(seqID);
}

static void ov5_StopWeatherSound(WeatherCallbackContext *param0)
{
    Sound_StopEffect(param0->soundSeqID, 0);
    param0->isSoundPlaying = FALSE;
}

static void ov5_021DB500(DarkFlashContext *param0)
{
    int v0;
    int v1;
    int v2;
    u16 *v3 = BufferManager_GetWriteBuffer(param0->bufferManagers[0]);
    u16 *v4 = BufferManager_GetWriteBuffer(param0->bufferManagers[1]);

    for (v0 = 0; v0 < 192; v0++) {
        if (v0 <= param0->unk_02) {
            ov5_021DB588(param0->unk_04.unk_00, param0->unk_00, param0->unk_02, v0, &v1, &v2);
        } else {
            if (v0 <= (param0->unk_02 * 2)) {
                v1 = v3[(param0->unk_02 * 2) - v0];
                v2 = v4[(param0->unk_02 * 2) - v0];
            } else {
                ov5_021DB588(param0->unk_04.unk_00, param0->unk_00, param0->unk_02, v0, &v1, &v2);
            }
        }

        v3[v0] = v1;
        v4[v0] = v2;
    }
}

static void ov5_021DB588(fx32 param0, int param1, int param2, int param3, int *param4, int *param5)
{
    fx32 v0;
    fx32 v1;
    fx32 v2;

    v0 = param0;
    v1 = param3 - param2;

    if (v1 < 0) {
        v1 = -v1;
    }

    if (v1 >= v0) {
        *param4 = 0;
        *param5 = 0;
    } else {
        v1 <<= FX32_SHIFT;
        v2 = FX_Sqrt(FX_Mul(v0, v0) - FX_Mul(v1, v1));
        v2 >>= FX32_SHIFT;

        *param4 = param1 - v2;

        if (*param4 < 0) {
            *param4 = 0;
        }

        *param5 = *param4 + (v2 * 2);

        if (*param5 > 255) {
            *param5 = 255;
        }
    }
}

static void ov5_021DB614(DarkFlashContext *darkFlash, HBlankSystem *hBlankSystem)
{
    memset(darkFlash, 0, sizeof(DarkFlashContext));

    darkFlash->bufferManagers[0] = BufferManager_New(HEAP_ID_FIELD1, darkFlash->unk_2C[0], darkFlash->unk_2C[1]);
    darkFlash->bufferManagers[1] = BufferManager_New(HEAP_ID_FIELD1, darkFlash->unk_2C[2], darkFlash->unk_2C[3]);

    for (int i = 0; i < 192; i++) {
        darkFlash->unk_2C[2][i] = 255;
        darkFlash->unk_2C[3][i] = 255;
    }

    darkFlash->hBlankSystem = hBlankSystem;
    SysTask_ExecuteAfterVBlank(ov5_021DB7F8, darkFlash, 120);
    darkFlash->unk_24 = SysTask_ExecuteAfterVBlank(DarkFlash_SwapBuffers, darkFlash, 1024);
    darkFlash->unk_28 = 0;
}

static void DarkFlash_Done(DarkFlashContext *ctx)
{
    GX_SetVisibleWnd(GX_GetVisibleWnd() & (~GX_WNDMASK_W1));
    HBlankTask_Delete(ctx->unk_18);

    SysTask_Done(ctx->unk_24);
    BufferManager_Delete(ctx->bufferManagers[0]);
    BufferManager_Delete(ctx->bufferManagers[1]);

    memset(ctx, 0, sizeof(DarkFlashContext));
}

static void ov5_021DB6E0(DarkFlashContext *ctx, fx32 param1, fx32 param2, int param3, int param4, int param5)
{
    ov5_021D6538(&ctx->unk_04, param1, param2, param5);

    ctx->unk_00 = param3;
    ctx->unk_02 = param4;
    ctx->unk_28 = 1;

    ov5_021DB500(ctx);
}

static BOOL ov5_021DB700(DarkFlashContext *ctx)
{
    BOOL v0;

    if (ctx->unk_28 == 0) {
        ov5_021DB7CC(ctx);

        return 1;
    }

    v0 = ov5_021D6548(&ctx->unk_04);
    ov5_021DB500(ctx);

    if (v0 == 1) {
        ctx->unk_28 = 0;
    }

    return v0;
}

static void ov5_021DB72C(HBlankTask *task, void *darkFlash)
{
    DarkFlashContext *ctx = darkFlash;
    const u16 *v1[2];
    int v2;
    int v3;

    v2 = GX_GetVCount();

    for (v3 = 0; v3 < 2; v3++) {
        v1[v3] = BufferManager_GetReadBuffer(ctx->bufferManagers[v3]);
    }

    if (v2 < 192) {
        v2++;

        if (v2 >= 192) {
            v2 -= 192;
        }

        if (GX_IsHBlank()) {
            G2_SetWnd1Position(v1[0][v2], 0, v1[1][v2], 192);
        }
    }
}

static void DarkFlash_SwapBuffers(SysTask *task, void *darkFlash)
{
    DarkFlashContext *ctx = darkFlash;

    for (int i = 0; i < 2; i++) {
        BufferManager_SwapBuffers(ctx->bufferManagers[i]);
    }
}

static void DarkFlash_DoneAfterVBlank(DarkFlashContext *ctx)
{
    SysTask_ExecuteAfterVBlank(Task_DarkFlashDone, ctx, 128);
}

static void Task_DarkFlashDone(SysTask *task, void *darkFlash)
{
    DarkFlash_Done(darkFlash);
    SysTask_Done(task);
}

// writes the read buffer to the write buffer?
static void ov5_021DB7CC(DarkFlashContext *darkFlash)
{
    const u16 *readBuffer;
    u16 *writeBuffer;

    for (int i = 0; i < 2; i++) {
        readBuffer = BufferManager_GetReadBuffer(darkFlash->bufferManagers[i]);
        writeBuffer = BufferManager_GetWriteBuffer(darkFlash->bufferManagers[i]);

        memcpy(writeBuffer, readBuffer, sizeof(u16) * 192);
    }
}

static void ov5_021DB7F8(SysTask *sysTask, void *param1)
{
    DarkFlashContext *darkFlash = param1;
    GXWndPlane v1 = G2_GetWndOutsidePlane();
    int v2 = GX_GetVisibleWnd();

    G2_SetWnd1InsidePlane((GX_BLEND_ALL), 1);
    G2_SetWndOutsidePlane((GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), v1.effect);
    G2_SetWnd1Position(0, 0, HW_LCD_WIDTH - 1, HW_LCD_HEIGHT);
    GX_SetVisibleWnd(v2 | GX_WNDMASK_W1);

    darkFlash->unk_18 = HBlankSystem_StartTask(darkFlash->hBlankSystem, ov5_021DB72C, darkFlash);

    SysTask_Done(sysTask);
}
