#include "choose_starter/choose_starter_app.h"

#include <nitro.h>
#include <nnsys.h>
#include <string.h>

#include "constants/heap.h"
#include "constants/narc.h"
#include "constants/species.h"

#include "struct_decls/sprite_decl.h"
#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_02007768_decl.h"
#include "struct_decls/struct_02015064_decl.h"
#include "struct_decls/struct_02015128_decl.h"
#include "struct_decls/struct_020151A4_decl.h"
#include "struct_decls/struct_02015214_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/archived_sprite.h"
#include "struct_defs/choose_starter_data.h"
#include "struct_defs/struct_0200C738.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay021/struct_ov21_021E7F40.h"
#include "overlay022/struct_ov22_022550D4.h"
#include "overlay022/struct_ov22_022557A0.h"
#include "overlay022/struct_ov22_02255800.h"
#include "overlay022/struct_ov22_022559F8.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay115/camera_angle.h"

#include "camera.h"
#include "cell_actor.h"
#include "core_sys.h"
#include "easy3d.h"
#include "font.h"
#include "game_options.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "overlay_manager.h"
#include "pokemon.h"
#include "render_text.h"
#include "sprite_resource.h"
#include "strbuf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "unk_02001AF4.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_0200762C.h"
#include "unk_020093B4.h"
#include "unk_0200A328.h"
#include "unk_0200A784.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02015064.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201DBEC.h"
#include "unk_0201E3D8.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "unk_0202419C.h"

#define NUM_STARTER_OPTIONS 3
#define STARTER_OPTION_0    SPECIES_TURTWIG
#define STARTER_OPTION_1    SPECIES_CHIMCHAR
#define STARTER_OPTION_2    SPECIES_PIPLUP

#define OAM_MAIN_START 0
#define OAM_MAIN_END   128
#define OAM_SUB_START  0
#define OAM_SUB_END    128

#define OAM_AFFINE_MAIN_START 0
#define OAM_AFFINE_MAIN_END   32
#define OAM_AFFINE_SUB_START  0
#define OAM_AFFINE_SUB_END    32

#define OAM_NUM_BYTES               32
#define OAM_VRAM_TRANSFER_MAIN_SIZE (0x14000)
#define OAM_VRAM_TRANSFER_SUB_SIZE  (0x4000)

#define COLOR_BLACK       GX_RGB(4, 4, 4)
#define COLOR_TRANSPARENT GX_RGB(31, 31, 16)

#define TRANSPARENT_DEPTH      0x7FFF
#define TRANSPARENT_POLYGON_ID 63

// Coordinates for the camera viewport of the rendered 3D scene
#define VIEWPORT_LOWER_LEFT_X  0
#define VIEWPORT_LOWER_LEFT_Y  0
#define VIEWPORT_UPPER_RIGHT_X 255
#define VIEWPORT_UPPER_RIGHT_Y 191

#define TEXT_POS_X   4
#define TEXT_POS_Y   19
#define TEXT_COLUMNS 23
#define TEXT_ROWS    4

#define FRAME_PALETTE_INDEX      2
#define FRAME_TEXT_START         512
#define FRAME_TEXT_PALETTE_INDEX 0

#define POKEMON_SPRITE_CHAR_SIZE  0x8000
#define POKEMON_SPRITE_PLTT_SIZE  0x80
#define POKEMON_SPRITE_POS_X      128
#define POKEMON_SPRITE_POS_Y      96
#define POKEMON_SPRITE_POS_Z      1023
#define POKEMON_SPRITE_POLYGON_ID 0

enum CursorPosition {
    CURSOR_POSITION_LEFT = 0,
    CURSOR_POSITION_CENTER,
    CURSOR_POSITION_RIGHT,
};

typedef struct ChooseStarter3DGraphics {
    NNSG3dRenderObj unk_00;
    void *unk_54;
    NNSG3dResMdlSet *unk_58;
    NNSG3dResMdl *unk_5C;
    NNSG3dResTex *unk_60;
    void *unk_64;
    void *unk_68;
    NNSG3dAnmObj *unk_6C;
    fx32 unk_70;
    BOOL unk_74;
    VecFx32 unk_78;
    VecFx32 unk_84;
    u16 unk_90;
    u16 unk_92;
    u16 unk_94;
} ChooseStarter3DGraphics;

typedef struct ChooseStarterMovement {
    s32 unk_00;
    s32 unk_04;
    s32 unk_08;
    s32 unk_0C;
} ChooseStarterMovement;

typedef struct ChooseStarterCameraMovement {
    ChooseStarterMovement unk_00;
    ChooseStarterMovement unk_10;
    ChooseStarterMovement unk_20;
    Camera *camera;
    VecFx32 *unk_34;
    s32 unk_38;
    BOOL unk_3C;
    SysTask *unk_40;
} ChooseStarterCameraMovement;

typedef struct ChooseStarterRotation {
    fx32 unk_00;
    fx32 unk_04;
    int unk_08;
    int unk_0C;
} ChooseStarterRotation;

typedef struct ChooseStarterCursor {
    CellActor *unk_00;
    SpriteResource *unk_04[6];
    VecFx32 unk_1C;
    SysTask *unk_28;
    ChooseStarterRotation unk_2C;
} ChooseStarterCursor;

typedef struct StarterPreviewAnimation {
    ChooseStarterMovement unk_00;
    ChooseStarterMovement unk_10;
    ChooseStarterMovement unk_20;
    int unk_30;
    int unk_34;
} StarterPreviewAnimation;

typedef struct StarterPreviewWindow {
    UnkStruct_02015128 *unk_00;
    UnkStruct_020151A4 *unk_04;
    UnkStruct_02015214 *unk_08;
    void *unk_0C;
    void *unk_10;
    NNSG2dCharacterData *unk_14;
    NNSG2dPaletteData *unk_18;
    StarterPreviewAnimation unk_1C;
    SysTask *unk_54;
} StarterPreviewWindow;

typedef struct StarterPreviewGraphics {
    Sprite *unk_00;
    StarterPreviewAnimation unk_04;
    SysTask *unk_3C;
} StarterPreviewGraphics;

typedef struct ChooseStarterApp {
    int unk_00;
    int unk_04;
    BOOL unk_08;
    int unk_0C;
    ChooseStarterCameraMovement unk_10;
    enum CursorPosition cursorPosition;
    int unk_58[3][3];
    int unk_7C[3][2];
    BGL *bgl;
    Window *messageWindow;
    Window *unk_9C[3];
    int unk_A8;
    Strbuf *unk_AC;
    UnkStruct_ov61_0222C884 unk_B0;
    UIControlData *unk_B8;
    UnkStruct_0200C738 unk_BC;
    CellActorCollection *unk_248;
    SpriteResourceCollection *unk_24C[6];
    UnkStruct_02007768 *spriteManager;
    Sprite *sprites[NUM_STARTER_OPTIONS];
    StarterPreviewGraphics unk_274;
    NNSFndAllocator unk_2B4;
    ChooseStarter3DGraphics unk_2C4[6];
    Camera *camera;
    VecFx32 unk_64C;
    ChooseStarterCursor unk_658;
    GXRgb edgeMarkings[8];
    UnkStruct_02015064 *spriteDisplay;
    StarterPreviewWindow unk_6A8;
    int messageFrame;
    u32 unk_704;
    u8 unk_708;
    u8 unk_709[3];
} ChooseStarterApp;

static void ChooseStarterAppMainCallback(void *data);
static void StartFadeIn(ChooseStarterApp *param0);
static void StartFadeOut(ChooseStarterApp *param0);
static BOOL IsFadeDone(ChooseStarterApp *param0);
static u16 GetSelectedSpecies(u16 cursorPosition);
static BOOL IsSelectionMade(ChooseStarterApp *param0, int param1);
static void UpdateGraphics(ChooseStarterApp *param0, int param1);
static void DrawScene(ChooseStarterApp *param0);
static void SetupDrawing(ChooseStarterApp *app, enum HeapId heapID);
static void ov78_021D10DC(void);
static void SetupVRAMBank(void);
static void SetupOAM(enum HeapId heapID);
static void Setup3D(ChooseStarterApp *app);
static void ov78_021D1218(void);
static void SetupBGL(BGL *bgl, enum HeapId heapID);
static void ov78_021D12EC(BGL *param0);
static void MakeMessageWindow(ChooseStarterApp *app, enum HeapId heapID);
static void ov78_021D13A0(ChooseStarterApp *param0);
static u8 ov78_021D1FB4(Window *param0, int param1, int param2, int param3, TextColor param4, u32 param5);
static u8 ov78_021D201C(Window *param0, int param1, int param2, int param3, u32 param4, u32 param5, Strbuf **param6);
static void ov78_021D2090(ChooseStarterApp *param0);
static void MakeSubplaneWindow(ChooseStarterApp *param0, int param1);
static void ov78_021D2884(ChooseStarterApp *param0);
static void ov78_021D28A8(Window *param0, int param1, int param2, int param3, TextColor param4);
static void ov78_021D2904(ChooseStarterApp *param0);
static void MakeConfirmationWindow(ChooseStarterApp *param0, int param1);
static void MakeSprite(ChooseStarterApp *app, enum HeapId heapID);
static void ov78_021D14BC(ChooseStarterApp *param0);
static void MakeSpriteDisplay(ChooseStarterApp *app, enum HeapId heapID);
static void ov78_021D1518(ChooseStarterApp *param0);
static void MakeCellActors(ChooseStarterApp *param0, int param1);
static void ov78_021D1594(ChooseStarterApp *param0);
static void MakeCamera(ChooseStarterApp *param0, int param1);
static void ov78_021D1B3C(Camera *camera, VecFx32 *param1);
static void ov78_021D1B90(ChooseStarterApp *param0);
static void Make3DObjects(ChooseStarterApp *param0, int param1);
static void ov78_021D1908(ChooseStarterApp *param0);
static void ov78_021D192C(ChooseStarterApp *param0);
static void MakeCursorOAM(ChooseStarterApp *param0, ChooseStarterCursor *param1, int param2);
static void ov78_021D2290(ChooseStarterApp *param0, ChooseStarterCursor *param1);
static void AttachCursorCellActor(ChooseStarterApp *param0, ChooseStarterCursor *param1, int param2);
static void ov78_021D2350(ChooseStarterCursor *param0);
static void ov78_021D2430(ChooseStarterCursor *param0, BOOL param1);
static void ov78_021D243C(ChooseStarterCursor *param0, int param1, int param2);
static void MakeSelectionMatrix(ChooseStarterApp *param0);
static void SetSelectionMatrixObjects(ChooseStarterApp *param0);
static void ov78_021D1CA8(ChooseStarterApp *param0, int param1);
static void ov78_021D1DF0(ChooseStarterApp *param0);
static void ov78_021D1E28(ChooseStarterApp *param0);
static void ov78_021D1E44(ChooseStarterApp *param0, int param1);
static void MakePokemonSprite(Sprite **sprite, ChooseStarterApp *app, int species);
static void ov78_021D15CC(ChooseStarter3DGraphics *param0, int param1, int param2, int param3, NNSFndAllocator *param4);
static void ov78_021D1604(ChooseStarter3DGraphics *param0, int param1, int param2);
static void ov78_021D16D8(ChooseStarter3DGraphics *param0, NNSFndAllocator *param1);
static void ov78_021D1708(ChooseStarter3DGraphics *param0);
static void ov78_021D17A4(ChooseStarter3DGraphics *param0, BOOL param1);
static void ov78_021D17A8(ChooseStarter3DGraphics *param0, fx32 param1, fx32 param2, fx32 param3);
static void ov78_021D17B4(ChooseStarter3DGraphics *param0, fx32 param1, fx32 param2, fx32 param3);
static void ov78_021D17CC(ChooseStarter3DGraphics *param0, u16 param1, u16 param2, u16 param3);
static BOOL ov78_021D17E4(ChooseStarter3DGraphics *param0);
static void ov78_021D180C(ChooseStarter3DGraphics *param0);
static void ov78_021D182C(ChooseStarter3DGraphics *param0, fx32 param1);
static void ov78_021D1630(ChooseStarter3DGraphics *param0, int param1, int param2);
static void ov78_021D1694(ChooseStarter3DGraphics *param0, int param1, int param2, NNSFndAllocator *param3);
static void MakePreviewWindow(StarterPreviewWindow *param0, ChooseStarterApp *param1, int param2);
static void ov78_021D24E4(StarterPreviewWindow *param0);
static void ov78_021D2508(StarterPreviewWindow *param0, BOOL param1);
static void ov78_021D2514(StarterPreviewWindow *param0, fx32 param1, fx32 param2, fx32 param3, fx32 param4, fx32 param5, fx32 param6, int param7);
static void ov78_021D256C(StarterPreviewWindow *param0);
static void ov78_021D25A0(SysTask *param0, void *param1);
static BOOL ov78_021D2608(StarterPreviewWindow *param0);
static void ov78_021D2618(ChooseStarterApp *param0);
static void ov78_021D2688(ChooseStarterApp *param0);
static BOOL ov78_021D26A4(ChooseStarterApp *param0);
static void ov78_021D26B4(StarterPreviewGraphics *param0, Sprite *param1, fx32 param2, fx32 param3, fx32 param4, fx32 param5, fx32 param6, fx32 param7, int param8);
static void ov78_021D270C(StarterPreviewGraphics *param0);
static void ov78_021D2740(SysTask *param0, void *param1);
static void ov78_021D1C58(ChooseStarterApp *param0);
static void ov78_021D1C98(ChooseStarterApp *param0, int param1);
static int ov78_021D1CA4(ChooseStarterApp *param0);
static void ov78_021D2108(ChooseStarterMovement *param0, s32 param1, s32 param2, s32 param3);
static BOOL ov78_021D2114(ChooseStarterMovement *param0, s32 param1);
static void ov78_021D235C(ChooseStarterRotation *param0, fx32 param1, int param2);
static void ov78_021D2368(ChooseStarterRotation *param0);
static void ov78_021D213C(ChooseStarterCameraMovement *param0, Camera *camera, VecFx32 *param2);
static void ov78_021D219C(SysTask *param0, void *param1);
static BOOL ov78_021D2200(ChooseStarterCameraMovement *param0);
static void StartCursorMovement(ChooseStarterCursor *param0);
static void ov78_021D23E8(SysTask *param0, void *param1);
static void ov78_021D241C(ChooseStarterCursor *param0);

BOOL ChooseStarter_Init(OverlayManager *param0, int *param1)
{
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_CHOOSE_STARTER_APP, HEAP_SIZE_CHOOSE_STARTER_APP);

    ChooseStarterApp *app = OverlayManager_NewData(param0, sizeof(ChooseStarterApp), HEAP_ID_CHOOSE_STARTER_APP);
    GF_ASSERT(app);
    memset(app, 0, sizeof(ChooseStarterApp));

    Heap_FndInitAllocatorForExpHeap(&app->unk_2B4, HEAP_ID_CHOOSE_STARTER_APP, 32);

    ChooseStarterData *data = OverlayManager_Args(param0);
    app->messageFrame = Options_Frame(data->options);
    app->unk_704 = Options_TextFrameDelay(data->options);

    sub_0201DBEC(8, HEAP_ID_CHOOSE_STARTER_APP);
    SetMainCallback(ChooseStarterAppMainCallback, app);
    DisableHBlank();

    sub_0201E3D8();
    GF_ASSERT(sub_0201E450(4) == 1);

    RenderControlFlags_SetCanABSpeedUpPrint(1);
    RenderControlFlags_SetAutoScrollFlags(0);
    RenderControlFlags_SetSpeedUpOnTouch(0);

    SetupDrawing(app, HEAP_ID_CHOOSE_STARTER_APP);

    UnkStruct_ov84_0223BA5C bglHeader;
    app->bgl = sub_02018340(HEAP_ID_CHOOSE_STARTER_APP);
    bglHeader.unk_00 = GX_DISPMODE_GRAPHICS;
    bglHeader.unk_04 = GX_BGMODE_0;
    bglHeader.unk_08 = GX_BGMODE_1;
    bglHeader.unk_0C = GX_BG0_AS_3D;
    sub_02018368(&bglHeader);

    SetupBGL(app->bgl, HEAP_ID_CHOOSE_STARTER_APP);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);

    MakeMessageWindow(app, HEAP_ID_CHOOSE_STARTER_APP);
    MakeConfirmationWindow(app, HEAP_ID_CHOOSE_STARTER_APP);
    MakeSubplaneWindow(app, HEAP_ID_CHOOSE_STARTER_APP);
    MakeSprite(app, HEAP_ID_CHOOSE_STARTER_APP);
    MakeSpriteDisplay(app, HEAP_ID_CHOOSE_STARTER_APP);
    MakeCellActors(app, HEAP_ID_CHOOSE_STARTER_APP);
    Make3DObjects(app, HEAP_ID_CHOOSE_STARTER_APP);
    MakeCamera(app, HEAP_ID_CHOOSE_STARTER_APP);

    MakeSelectionMatrix(app);
    SetSelectionMatrixObjects(app);
    MakeCursorOAM(app, &app->unk_658, HEAP_ID_CHOOSE_STARTER_APP);
    AttachCursorCellActor(app, &app->unk_658, HEAP_ID_CHOOSE_STARTER_APP);
    StartCursorMovement(&app->unk_658);
    MakePreviewWindow(&app->unk_6A8, app, HEAP_ID_CHOOSE_STARTER_APP);

    sub_02004550(60, 0, 0);

    return TRUE;
}

enum {
    CHOOSE_STARTER_MAIN_FADE_IN = 0,
    CHOOSE_STARTER_MAIN_WAIT_FADE_IN,
    CHOOSE_STARTER_MAIN_LOOP,
    CHOOSE_STARTER_MAIN_FADE_OUT,
    CHOOSE_STARTER_MAIN_WAIT_FADE_OUT,
};

BOOL ChooseStarter_Main(OverlayManager *ovyManager, int *state)
{
    ChooseStarterApp *app = OverlayManager_Data(ovyManager);
    BOOL selectionMade;
    u16 palette = 0x08C3;

    switch (*state) {
    case CHOOSE_STARTER_MAIN_FADE_IN:
        StartFadeIn(app);
        GX_LoadBGPltt(&palette, 0, sizeof(u16));
        (*state)++;
        break;

    case CHOOSE_STARTER_MAIN_WAIT_FADE_IN:
        if (IsFadeDone(app)) {
            sub_0200F32C(0);
            sub_0200F32C(1);
            (*state)++;
        }
        break;

    case CHOOSE_STARTER_MAIN_LOOP:
        selectionMade = IsSelectionMade(app, HEAP_ID_CHOOSE_STARTER_APP);
        UpdateGraphics(app, HEAP_ID_CHOOSE_STARTER_APP);

        if (selectionMade == TRUE) {
            (*state)++;
        }
        break;

    case CHOOSE_STARTER_MAIN_FADE_OUT:
        StartFadeOut(app);
        (*state)++;
        break;

    case CHOOSE_STARTER_MAIN_WAIT_FADE_OUT:
        if (IsFadeDone(app)) {
            sub_0200F32C(0);
            sub_0200F32C(1);

            return TRUE;
        }
        break;
    }

    DrawScene(app);
    return FALSE;
}

BOOL ChooseStarter_Exit(OverlayManager *param0, int *param1)
{
    ChooseStarterApp *v0 = OverlayManager_Data(param0);
    ChooseStarterData *v1 = OverlayManager_Args(param0);
    BOOL v2;

    SetMainCallback(NULL, NULL);

    v1->species = GetSelectedSpecies(v0->cursorPosition);

    v2 = sub_0201E530();
    GF_ASSERT(v2 == 1);

    ov78_021D24E4(&v0->unk_6A8);
    ov78_021D2350(&v0->unk_658);
    ov78_021D2290(v0, &v0->unk_658);
    ov78_021D241C(&v0->unk_658);

    ov78_021D1B90(v0);
    ov78_021D1908(v0);
    ov78_021D1594(v0);
    ov78_021D14BC(v0);
    ov78_021D1518(v0);
    ov78_021D13A0(v0);
    ov78_021D2884(v0);

    ov78_021D12EC(v0->bgl);
    Heap_FreeToHeap(v0->bgl);
    ov78_021D10DC();

    sub_0201DC3C();
    OverlayManager_FreeData(param0);
    Heap_Destroy(47);

    return TRUE;
}

static void ChooseStarterAppMainCallback(void *data)
{
    ChooseStarterApp *app = data;

    sub_0200A858();
    sub_0201C2B8(app->bgl);
    sub_02008A94(app->spriteManager);
    sub_0201DCAC();
}

static void StartFadeIn(ChooseStarterApp *param0)
{
    sub_0200F174(0, 1, 1, 0x0, 6, 1, 47);
}

static void StartFadeOut(ChooseStarterApp *param0)
{
    sub_0200F174(0, 0, 0, 0x0, 6, 1, 47);
}

static BOOL IsFadeDone(ChooseStarterApp *param0)
{
    return ScreenWipe_Done();
}

static void SetupDrawing(ChooseStarterApp *app, enum HeapId heap)
{
    SetupVRAMBank();
    SetupOAM(heap);
    Setup3D(app);
}

static void ov78_021D10DC(void)
{
    sub_0200A878();
    sub_0201E958();
    sub_0201F8B4();

    ov78_021D1218();
}

static void SetupVRAMBank(void)
{
    UnkStruct_02099F80 banks = {
        GX_VRAM_BG_128_B,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_80_EF,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_A,
        GX_VRAM_TEXPLTT_0_G
    };

    GXLayers_SetBanks(&banks);
}

static void SetupOAM(enum HeapId heapID)
{
    NNS_G2dInitOamManagerModule();

    sub_0200A784(OAM_MAIN_START, OAM_MAIN_END, OAM_AFFINE_MAIN_START, OAM_AFFINE_MAIN_END, OAM_SUB_START, OAM_SUB_END, OAM_AFFINE_SUB_START, OAM_AFFINE_SUB_END, heapID);

    UnkStruct_ov22_022559F8 v0 = {
        OAM_NUM_BYTES,
        OAM_VRAM_TRANSFER_MAIN_SIZE,
        OAM_VRAM_TRANSFER_SUB_SIZE,
        heapID,
    };

    sub_0201E88C(&v0, GX_OBJVRAMMODE_CHAR_1D_128K, GX_OBJVRAMMODE_CHAR_1D_32K);

    sub_0201F834(32, heapID);
    sub_0201E994();
    sub_0201F8E4();
}

static void Setup3D(ChooseStarterApp *app)
{
    NNS_G3dInit();

    G3X_InitMtxStack();
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(TRUE);
    G3X_AlphaTest(FALSE, 0);
    G3X_AlphaBlend(TRUE);
    G3X_EdgeMarking(TRUE);

    for (int i = 0; i < 8; i++) {
        app->edgeMarkings[i] = COLOR_BLACK;
    }

    G3X_SetEdgeColorTable(app->edgeMarkings);
    G3X_SetClearColor(COLOR_TRANSPARENT, 0, TRANSPARENT_DEPTH, TRANSPARENT_POLYGON_ID, FALSE);

    G3_SwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
    G3_ViewPort(VIEWPORT_LOWER_LEFT_X, VIEWPORT_LOWER_LEFT_Y, VIEWPORT_UPPER_RIGHT_X, VIEWPORT_UPPER_RIGHT_Y);

    NNS_GfdInitFrmTexVramManager(1, TRUE);
    NNS_GfdInitFrmPlttVramManager(0x4000, TRUE);
}

static void ov78_021D1218(void)
{
    NNS_GfdResetFrmTexVramState();
    NNS_GfdResetFrmPlttVramState();
}

static void SetupBGL(BGL *bgl, enum HeapId heapID)
{
    G2_SetBG0Priority(1);

    {
        UnkStruct_ov97_0222DB78 header = {
            0,
            0,
            0x800,
            0,
            SCREEN_SIZE_256x256,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0000,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(bgl, 1, &header, 0);
        sub_02019690(1, 32, 0, heapID);
        sub_02019EBC(bgl, 1);
    }

    {
        UnkStruct_ov97_0222DB78 header = {
            0,
            0,
            0x800,
            0,
            SCREEN_SIZE_256x256,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0800,
            GX_BG_CHARBASE_0x0c000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        sub_020183C4(bgl, 2, &header, 0);
        sub_02019690(2, 32, 0, heapID);
        sub_02019EBC(bgl, 2);
    }

    {
        UnkStruct_ov97_0222DB78 header = {
            0,
            0,
            0x800,
            0,
            SCREEN_SIZE_256x256,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x1000,
            GX_BG_CHARBASE_0x14000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(bgl, 3, &header, 0);
        sub_02019690(3, 32, 0, heapID);
        sub_02019EBC(bgl, 3);
    }
}

static void ov78_021D12EC(BGL *param0)
{
    sub_02019044(param0, 1);
    sub_02019044(param0, 2);
    sub_02019044(param0, 3);
}

static void MakeMessageWindow(ChooseStarterApp *app, enum HeapId heapID)
{
    app->messageWindow = sub_0201A778(heapID, 1);
    Window_Init(app->messageWindow);

    BGL_AddWindow(app->bgl, app->messageWindow, BGL_FRAME_MAIN_1, TEXT_POS_X, TEXT_POS_Y, TEXT_COLUMNS, TEXT_ROWS, FRAME_PALETTE_INDEX, TEXT_WINDOW_SIZE + 1);

    BGL_FillWindow(app->messageWindow, 15);
    sub_0200DD0C(app->bgl, BGL_FRAME_MAIN_1, FRAME_TEXT_START, FRAME_TEXT_PALETTE_INDEX, app->messageFrame, heapID);
    sub_02006E84(NARC_INDEX_GRAPHIC__EV_POKESELECT, 16, 0, FRAME_PALETTE_INDEX * 32, 32, heapID);
    sub_0200E060(app->messageWindow, 0, FRAME_TEXT_START, FRAME_TEXT_PALETTE_INDEX);
}

static void ov78_021D13A0(ChooseStarterApp *param0)
{
    BGL_DeleteWindow(param0->messageWindow);
    Heap_FreeToHeap(param0->messageWindow);
}

static void MakeSprite(ChooseStarterApp *app, enum HeapId heapID)
{
    app->spriteManager = sub_0200762C(heapID);

    NNSGfdTexKey texture = NNS_GfdAllocTexVram(POKEMON_SPRITE_CHAR_SIZE, FALSE, 0);
    NNSGfdPlttKey palette = NNS_GfdAllocPlttVram(POKEMON_SPRITE_PLTT_SIZE, FALSE, NNS_GFD_ALLOC_FROM_LOW);
    sub_02008A78(app->spriteManager, NNS_GfdGetTexKeyAddr(texture), NNS_GfdGetTexKeySize(texture));
    sub_02008A84(app->spriteManager, NNS_GfdGetPlttKeyAddr(palette), NNS_GfdGetPlttKeySize(palette));

    MakePokemonSprite(&app->sprites[0], app, STARTER_OPTION_0);
    MakePokemonSprite(&app->sprites[1], app, STARTER_OPTION_1);
    MakePokemonSprite(&app->sprites[2], app, STARTER_OPTION_2);

    for (int i = 0; i < NUM_STARTER_OPTIONS; i++) {
        sub_02007DEC(app->sprites[i], 6, 1);
    }
}

static void MakePokemonSprite(Sprite **sprite, ChooseStarterApp *app, int species)
{
    int gender = Pokemon_GetGenderOf(species, 0);

    ArchivedSprite archivedSprite;
    BuildArchivedPokemonSprite(&archivedSprite, species, gender, FACE_FRONT, FALSE, NULL, NULL);

    *sprite = sub_02007C34(app->spriteManager,
        &archivedSprite,
        POKEMON_SPRITE_POS_X,
        POKEMON_SPRITE_POS_Y,
        POKEMON_SPRITE_POS_Z,
        POKEMON_SPRITE_POLYGON_ID,
        NULL,
        NULL);
}

static void ov78_021D14BC(ChooseStarterApp *param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        if (param0->sprites[v0]) {
            sub_02007DC8(param0->sprites[v0]);
        }
    }

    sub_02007B6C(param0->spriteManager);
}

static void MakeSpriteDisplay(ChooseStarterApp *param0, enum HeapId param1)
{
    UnkStruct_ov22_022550D4 v0 = {
        1, 1, 1, 0
    };

    v0.unk_0C = param1;
    param0->spriteDisplay = sub_02015064(&v0);
}

static void ov78_021D1518(ChooseStarterApp *param0)
{
    sub_020150A8(param0->spriteDisplay);
}

static void MakeCellActors(ChooseStarterApp *param0, int param1)
{
    param0->unk_248 = sub_020095C4(2, &param0->unk_BC, param1);
    param0->unk_24C[0] = SpriteResourceCollection_New(2, 0, param1);
    param0->unk_24C[1] = SpriteResourceCollection_New(2, 1, param1);
    param0->unk_24C[2] = SpriteResourceCollection_New(2, 2, param1);
    param0->unk_24C[3] = SpriteResourceCollection_New(2, 3, param1);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov78_021D1594(ChooseStarterApp *param0)
{
    CellActorCollection_Delete(param0->unk_248);
    SpriteResourceCollection_Delete(param0->unk_24C[0]);
    SpriteResourceCollection_Delete(param0->unk_24C[1]);
    SpriteResourceCollection_Delete(param0->unk_24C[2]);
    SpriteResourceCollection_Delete(param0->unk_24C[3]);
}

static void ov78_021D15CC(ChooseStarter3DGraphics *param0, int param1, int param2, int param3, NNSFndAllocator *param4)
{
    memset(param0, 0, sizeof(ChooseStarter3DGraphics));

    ov78_021D1630(param0, param1, param3);
    ov78_021D1694(param0, param2, param3, param4);
    ov78_021D17B4(param0, FX32_ONE, FX32_ONE, FX32_ONE);
}

static void ov78_021D1604(ChooseStarter3DGraphics *param0, int param1, int param2)
{
    memset(param0, 0, sizeof(ChooseStarter3DGraphics));

    ov78_021D1630(param0, param1, param2);
    ov78_021D17B4(param0, FX32_ONE, FX32_ONE, FX32_ONE);
}

static void ov78_021D1630(ChooseStarter3DGraphics *param0, int param1, int param2)
{
    param0->unk_54 = sub_02006FE8(82, param1, 0, param2, 0);
    param0->unk_58 = NNS_G3dGetMdlSet(param0->unk_54);
    param0->unk_5C = NNS_G3dGetMdlByIdx(param0->unk_58, 0);
    param0->unk_60 = NNS_G3dGetTex(param0->unk_54);

    Easy3D_UploadTextureToVRAM(param0->unk_60);
    Easy3D_BindTextureToResource(param0->unk_54, param0->unk_60);

    NNS_G3dRenderObjInit(&param0->unk_00, param0->unk_5C);
}

static void ov78_021D1694(ChooseStarter3DGraphics *param0, int param1, int param2, NNSFndAllocator *param3)
{
    param0->unk_64 = sub_02006FE8(82, param1, 0, param2, 0);
    param0->unk_68 = NNS_G3dGetAnmByIdx(param0->unk_64, 0);
    param0->unk_6C = NNS_G3dAllocAnmObj(param3, param0->unk_68, param0->unk_5C);

    NNS_G3dAnmObjInit(param0->unk_6C, param0->unk_68, param0->unk_5C, param0->unk_60);
    NNS_G3dRenderObjAddAnmObj(&param0->unk_00, param0->unk_6C);
}

static void ov78_021D16D8(ChooseStarter3DGraphics *param0, NNSFndAllocator *param1)
{
    if (param0->unk_54) {
        Heap_FreeToHeap(param0->unk_54);
    }

    if (param0->unk_64) {
        NNS_G3dFreeAnmObj(param1, param0->unk_6C);
        Heap_FreeToHeap(param0->unk_64);
    }

    memset(param0, 0, sizeof(ChooseStarter3DGraphics));
}

static void ov78_021D1708(ChooseStarter3DGraphics *param0)
{
    MtxFx33 v0;
    MtxFx33 v1;

    MTX_Identity33(&v0);
    MTX_RotX33(&v1, FX_SinIdx(param0->unk_90), FX_CosIdx(param0->unk_90));
    MTX_Concat33(&v1, &v0, &v0);
    MTX_RotY33(&v1, FX_SinIdx(param0->unk_92), FX_CosIdx(param0->unk_92));
    MTX_Concat33(&v1, &v0, &v0);
    MTX_RotZ33(&v1, FX_SinIdx(param0->unk_94), FX_CosIdx(param0->unk_94));
    MTX_Concat33(&v1, &v0, &v0);

    if (param0->unk_74) {
        Easy3D_DrawRenderObj(&param0->unk_00, &param0->unk_78, &v0, &param0->unk_84);
    }
}

static void ov78_021D17A4(ChooseStarter3DGraphics *param0, BOOL param1)
{
    param0->unk_74 = param1;
}

static void ov78_021D17A8(ChooseStarter3DGraphics *param0, fx32 param1, fx32 param2, fx32 param3)
{
    param0->unk_78.x = param1;
    param0->unk_78.y = param2;
    param0->unk_78.z = param3;
}

static void ov78_021D17B4(ChooseStarter3DGraphics *param0, fx32 param1, fx32 param2, fx32 param3)
{
    param0->unk_84.x = param1;
    param0->unk_84.y = param2;
    param0->unk_84.z = param3;
}

static void ov78_021D17CC(ChooseStarter3DGraphics *param0, u16 param1, u16 param2, u16 param3)
{
    param0->unk_90 = param1;
    param0->unk_92 = param2;
    param0->unk_94 = param3;
}

static BOOL ov78_021D17E4(ChooseStarter3DGraphics *param0)
{
    fx32 v0 = NNS_G3dAnmObjGetNumFrame(param0->unk_6C);
    BOOL v1;

    if ((param0->unk_70 + FX32_ONE) < v0) {
        param0->unk_70 += FX32_ONE;
        v1 = 0;
    } else {
        param0->unk_70 = v0;
        v1 = 1;
    }

    NNS_G3dAnmObjSetFrame(param0->unk_6C, param0->unk_70);

    return v1;
}

static void ov78_021D180C(ChooseStarter3DGraphics *param0)
{
    fx32 v0 = NNS_G3dAnmObjGetNumFrame(param0->unk_6C);

    param0->unk_70 = (param0->unk_70 + FX32_ONE) % v0;
    NNS_G3dAnmObjSetFrame(param0->unk_6C, param0->unk_70);
}

static void ov78_021D182C(ChooseStarter3DGraphics *param0, fx32 param1)
{
    param0->unk_70 = param1;
    NNS_G3dAnmObjSetFrame(param0->unk_6C, param1);
}

static void Make3DObjects(ChooseStarterApp *param0, int param1)
{
    int v0;

    ov78_021D15CC(&param0->unk_2C4[0], 1, 0, param1, &param0->unk_2B4);
    ov78_021D17A4(&param0->unk_2C4[0], 1);

    ov78_021D1604(&param0->unk_2C4[1], 8, param1);
    ov78_021D17A4(&param0->unk_2C4[1], 0);

    for (v0 = 2; v0 <= 4; v0++) {
        ov78_021D15CC(&param0->unk_2C4[v0], 3 + (v0 - 2) * 2, 2 + (v0 - 2) * 2, param1, &param0->unk_2B4);
        ov78_021D17A4(&param0->unk_2C4[v0], 0);
    }

    ov78_021D1604(&param0->unk_2C4[5], 9, param1);
    ov78_021D17A4(&param0->unk_2C4[5], 1);

    ov78_021D17A8(&param0->unk_2C4[5], 0, (-28 * FX32_ONE), (40 * FX32_ONE));
    ov78_021D17B4(&param0->unk_2C4[5], (FX32_CONST(3.50f)), (FX32_ONE), (FX32_CONST(3.50f)));
    ov78_021D17CC(&param0->unk_2C4[5], ((0 * 0xffff) / 360), ((180 * 0xffff) / 360), ((0 * 0xffff) / 360));
}

static void ov78_021D1908(ChooseStarterApp *param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        ov78_021D16D8(&param0->unk_2C4[v0], &param0->unk_2B4);
    }
}

static void ov78_021D192C(ChooseStarterApp *param0)
{
    int v0;

    NNS_G3dGlbLightVector(0, 0, -FX32_ONE, 0);
    NNS_G3dGlbLightColor(0, GX_RGB(31, 31, 31));
    NNS_G3dGlbMaterialColorDiffAmb(GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), 0);
    NNS_G3dGlbMaterialColorSpecEmi(GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), 0);

    for (v0 = 0; v0 < 6; v0++) {
        ov78_021D1708(&param0->unk_2C4[v0]);
    }
}

static BOOL IsSelectionMade(ChooseStarterApp *param0, int param1)
{
    if (param0->unk_08 == 1) {
        return 0;
    }

    switch (ov78_021D1CA4(param0)) {
    case 0:
        break;
    case 1:
        break;
    case 2:
        break;
    case 3:
        ov78_021D1C58(param0);

        if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
            ov78_021D1C98(param0, 1);

            Sound_PlayEffect(1500);
        }
        break;
    case 4:
        break;
    case 5:
        return 1;
    default:
        break;
    }

    return 0;
}

static void UpdateGraphics(ChooseStarterApp *param0, int param1)
{
    switch (ov78_021D1CA4(param0)) {
    case 0:

        param0->unk_08 = 1;
        param0->unk_0C = 36;
        ov78_021D1C98(param0, 1);
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG3, GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_OBJ, 10, 16 - 10);
        break;
    case 1:
        param0->unk_0C--;

        if (param0->unk_0C < 0) {
            ov78_021D1C98(param0, 1);
            Sound_PlayEffect(1738);
        }
        break;
    case 2:
        if (ov78_021D17E4(&param0->unk_2C4[0])) {
            ov78_021D17A4(&param0->unk_2C4[0], 0);
            ov78_021D17A4(&param0->unk_2C4[1], 1);
            ov78_021D17A4(&param0->unk_2C4[2], 1);
            ov78_021D17A4(&param0->unk_2C4[3], 1);
            ov78_021D17A4(&param0->unk_2C4[4], 1);
            ov78_021D1C98(param0, 1);
        }
        break;
    case 3:
        ov78_021D1CA8(param0, param1);
        break;
    case 4:
        ov78_021D1E44(param0, param1);
        break;
    case 5:
        G2_BlendNone();
        break;
    default:
        break;
    }
}

static void DrawScene(ChooseStarterApp *param0)
{
    sub_020241B4();

    NNS_G3dGePushMtx();

    {
        NNS_G3dGeFlushBuffer();
        NNS_G2dSetupSoftwareSpriteCamera();

        sub_02007768(param0->spriteManager);
        sub_020150EC(param0->spriteDisplay);
    }

    NNS_G3dGePopMtx(1);
    NNS_G3dGePushMtx();

    {
        Camera_ComputeViewMatrix();
        ov78_021D192C(param0);
    }

    NNS_G3dGePopMtx(1);

    G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
    CellActorCollection_Update(param0->unk_248);
}

static void MakeCamera(ChooseStarterApp *param0, int param1)
{
    param0->camera = Camera_Alloc(param1);
    ov78_021D1B3C(param0->camera, &param0->unk_64C);
}

static void ov78_021D1B3C(Camera *camera, VecFx32 *param1)
{
    CameraAngle v0;
    VecFx32 v1;

    param1->x = 0;
    param1->y = 0;
    param1->z = 0;

    v0.x = ((-30 * 0xffff) / 360);
    v0.y = ((0 * 0xffff) / 360);
    v0.z = ((0 * 0xffff) / 360);

    Camera_InitWithTarget(param1, (300 << FX32_SHIFT), &v0, ((22 * 0xffff) / 360), 0, 1, camera);

    v1.x = 0;
    v1.y = FX32_ONE;
    v1.z = 0;

    Camera_SetUp(&v1, camera);
    Camera_SetAsActive(camera);
}

static void ov78_021D1B90(ChooseStarterApp *param0)
{
    Camera_Delete(param0->camera);
}

static void MakeSelectionMatrix(ChooseStarterApp *param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        switch (v0) {
        case 0:
            param0->unk_58[v0][0] = -44;
            param0->unk_58[v0][1] = -4;
            param0->unk_58[v0][2] = 32;
            break;
        case 1:
            param0->unk_58[v0][0] = 0;
            param0->unk_58[v0][1] = -4;
            param0->unk_58[v0][2] = 62;
            break;
        case 2:
            param0->unk_58[v0][0] = 38;
            param0->unk_58[v0][1] = -4;
            param0->unk_58[v0][2] = 26;
            break;
        }
    }

    for (v0 = 0; v0 < 3; v0++) {
        switch (v0) {
        case 0:
            param0->unk_7C[v0][0] = 78;
            param0->unk_7C[v0][1] = 55;
            break;
        case 1:
            param0->unk_7C[v0][0] = 130;
            param0->unk_7C[v0][1] = 82;
            break;
        case 2:
            param0->unk_7C[v0][0] = 172;
            param0->unk_7C[v0][1] = 50;
            break;
        }
    }
}

static void SetSelectionMatrixObjects(ChooseStarterApp *param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        ov78_021D17A8(&param0->unk_2C4[v0 + 2], param0->unk_58[v0][0] << FX32_SHIFT, param0->unk_58[v0][1] << FX32_SHIFT, param0->unk_58[v0][2] << FX32_SHIFT);
    }
}

static void ov78_021D1C58(ChooseStarterApp *param0)
{
    if (gCoreSys.pressedKeys & PAD_KEY_LEFT) {
        if (param0->cursorPosition - 1 >= 0) {
            param0->cursorPosition -= 1;
            Sound_PlayEffect(1500);
        }
    }

    if (gCoreSys.pressedKeys & PAD_KEY_RIGHT) {
        if (param0->cursorPosition + 1 < 3) {
            param0->cursorPosition += 1;
            Sound_PlayEffect(1500);
        }
    }
}

static void ov78_021D1C98(ChooseStarterApp *param0, int param1)
{
    param0->unk_00 += param1;
    param0->unk_04 = 0;
}

static int ov78_021D1CA4(ChooseStarterApp *param0)
{
    return param0->unk_00;
}

static void ov78_021D1CA8(ChooseStarterApp *param0, int param1)
{
    switch (param0->unk_04) {
    case 0:
        ov78_021D213C(&param0->unk_10, param0->camera, &param0->unk_64C);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
        param0->unk_04++;
        break;
    case 1:
        if (ov78_021D2200(&param0->unk_10)) {
            param0->unk_0C = 6;
            param0->unk_04++;
        }
        break;
    case 2:
        param0->unk_0C--;

        if (param0->unk_0C < 0) {
            ov78_021D1E28(param0);
            param0->unk_04++;
        }
        break;
    case 3:
        param0->unk_708 = ov78_021D201C(param0->messageWindow, param1, 360, 0, TEXT_COLOR(1, 2, 15), param0->unk_704, &param0->unk_AC);
        param0->unk_04++;
        break;
    case 4:
        if (Text_IsPrinterActive(param0->unk_708) == 0) {
            ov78_021D2090(param0);
            param0->unk_04++;
        }
        break;
    case 5:
        param0->unk_708 = ov78_021D201C(param0->messageWindow, param1, 360, 7, TEXT_COLOR(1, 2, 15), param0->unk_704, &param0->unk_AC);
        param0->unk_04++;
        break;
    case 6:
        if (Text_IsPrinterActive(param0->unk_708) == 0) {
            ov78_021D2090(param0);
            param0->unk_04++;
        }
        break;
    case 7:
        ov78_021D2430(&param0->unk_658, 1);
        param0->unk_08 = 0;
        param0->unk_04++;
        break;
    case 8:
        ov78_021D1DF0(param0);
        ov78_021D1E28(param0);
        break;
    }
}

static void ov78_021D1DF0(ChooseStarterApp *param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        if (param0->cursorPosition == v0) {
            ov78_021D180C(&param0->unk_2C4[2 + v0]);
        } else {
            ov78_021D182C(&param0->unk_2C4[2 + v0], 0);
        }
    }
}

static void ov78_021D1E28(ChooseStarterApp *param0)
{
    ov78_021D243C(&param0->unk_658, param0->unk_7C[param0->cursorPosition][0], param0->unk_7C[param0->cursorPosition][1]);
}

static void ov78_021D1E44(ChooseStarterApp *param0, int param1)
{
    u32 v0;

    switch (param0->unk_04) {
    case 0:
        ov78_021D2430(&param0->unk_658, 0);
        ov78_021D1E28(param0);
        ov78_021D2904(param0);
        ov78_021D2618(param0);
        param0->unk_04++;
        param0->unk_08 = 1;
        break;
    case 1:
        ov78_021D2508(&param0->unk_6A8, 1);
        sub_02007DEC(param0->sprites[param0->cursorPosition], 6, 0);

        if (ov78_021D26A4(param0)) {
            sub_02005844(GetSelectedSpecies(param0->cursorPosition), 0);

            param0->unk_04++;
        }
        break;
    case 2:
        ov78_021D1FB4(param0->messageWindow, param1, 360, 1 + param0->cursorPosition, TEXT_COLOR(1, 2, 15), TEXT_SPEED_NO_TRANSFER);
        param0->unk_B8 = sub_02002100(param0->bgl, &param0->unk_B0, (512 + (18 + 12) + 128), 1, param1);
        param0->unk_08 = 0;
        param0->unk_04++;
        break;
    case 3:
        v0 = sub_02002114(param0->unk_B8, param1);

        switch (v0) {
        case 0xffffffff:
            break;
        case 0:
            ov78_021D1C98(param0, 1);
            break;
        case 0xfffffffe:
            param0->unk_04++;
            ov78_021D2688(param0);
            break;
        }
        break;
    case 4:
        if (ov78_021D26A4(param0)) {
            ov78_021D1C98(param0, -1);
            param0->unk_04 = 7;
            ov78_021D2508(&param0->unk_6A8, 0);
            sub_02007DEC(param0->sprites[param0->cursorPosition], 6, 1);
            param0->unk_708 = ov78_021D1FB4(param0->messageWindow, param1, 360, 7, TEXT_COLOR(1, 2, 15), TEXT_SPEED_NO_TRANSFER);
        }
        break;
    }
}

static u8 ov78_021D1FB4(Window *param0, int param1, int param2, int param3, TextColor param4, u32 param5)
{
    MessageLoader *v0;
    Strbuf *v1;
    u8 v2;

    v0 = MessageLoader_Init(0, 26, param2, param1);
    GF_ASSERT(v0);
    v1 = MessageLoader_GetNewStrbuf(v0, param3);

    BGL_FillWindow(param0, 15);
    v2 = Text_AddPrinterWithParamsAndColor(param0, FONT_MESSAGE, v1, 0, 0, param5, param4, NULL);
    sub_0200E060(param0, 0, 512, 0);

    Strbuf_Free(v1);
    MessageLoader_Free(v0);

    return v2;
}

static u8 ov78_021D201C(Window *param0, int param1, int param2, int param3, u32 param4, u32 param5, Strbuf **param6)
{
    MessageLoader *v0;
    u8 v1;

    GF_ASSERT((*param6) == NULL);

    v0 = MessageLoader_Init(0, 26, param2, param1);
    GF_ASSERT(v0);

    *param6 = MessageLoader_GetNewStrbuf(v0, param3);
    BGL_FillWindow(param0, 15);
    v1 = Text_AddPrinterWithParamsAndColor(param0, FONT_MESSAGE, *param6, 0, 0, param5, param4, NULL);

    sub_0200E060(param0, 0, 512, 0);
    MessageLoader_Free(v0);

    return v1;
}

static void ov78_021D2090(ChooseStarterApp *param0)
{
    Strbuf_Free(param0->unk_AC);
    param0->unk_AC = NULL;
}

static void MakeConfirmationWindow(ChooseStarterApp *param0, int param1)
{
    param0->unk_B0.unk_00 = 1;
    param0->unk_B0.unk_01 = 23;
    param0->unk_B0.unk_02 = 12;
    param0->unk_B0.unk_03 = 5;
    param0->unk_B0.unk_04 = 4;
    param0->unk_B0.unk_05 = 3;
    param0->unk_B0.unk_06 = ((18 + 12) + 9 + 128);

    sub_0200DAA4(param0->bgl, 1, (512 + (18 + 12) + 128), 1, 0, param1);
    Font_LoadTextPalette(0, 3 * 32, param1);
}

static void ov78_021D2108(ChooseStarterMovement *param0, s32 param1, s32 param2, s32 param3)
{
    param0->unk_00 = param1;
    param0->unk_04 = param1;
    param0->unk_08 = param2 - param1;
    param0->unk_0C = param3;
}

static BOOL ov78_021D2114(ChooseStarterMovement *param0, s32 param1)
{
    s32 v0;
    BOOL v1;
    s32 v2;

    if (param1 >= param0->unk_0C) {
        v0 = param0->unk_0C;
        v1 = 1;
    } else {
        v0 = param1;
        v1 = 0;
    }

    v2 = param0->unk_08 * param1;
    v2 = v2 / param0->unk_0C;
    v2 += param0->unk_04;

    param0->unk_00 = v2;

    return v1;
}

static void ov78_021D213C(ChooseStarterCameraMovement *param0, Camera *camera, VecFx32 *param2)
{
    GF_ASSERT(param0->unk_40 == NULL);

    ov78_021D2108(&param0->unk_00, ((-30 * 0xffff) / 360), ((-50 * 0xffff) / 360), 6);
    ov78_021D2108(&param0->unk_10, (300 << FX32_SHIFT), (200 << FX32_SHIFT), 6);
    ov78_021D2108(&param0->unk_20, 0, (36 * FX32_ONE), 6);

    param0->unk_3C = 0;
    param0->camera = camera;
    param0->unk_34 = param2;
    param0->unk_38 = 0;

    SysTask_Start(ov78_021D219C, param0, 0);
}

static void ov78_021D219C(SysTask *param0, void *param1)
{
    ChooseStarterCameraMovement *v0 = param1;
    BOOL v1;
    CameraAngle v2;

    v1 = ov78_021D2114(&v0->unk_00, v0->unk_38);
    ov78_021D2114(&v0->unk_10, v0->unk_38);
    ov78_021D2114(&v0->unk_20, v0->unk_38);

    v2.x = v0->unk_00.unk_00;
    v2.y = ((0 * 0xffff) / 360);
    v2.z = ((0 * 0xffff) / 360);

    Camera_SetAngleAroundTarget(&v2, v0->camera);
    Camera_SetDistance(v0->unk_10.unk_00, v0->camera);

    v0->unk_34->z = v0->unk_20.unk_00;
    v0->unk_38++;

    if (v1 == 1) {
        SysTask_Done(param0);
        v0->unk_40 = NULL;
        v0->unk_3C = 1;
    }
}

static BOOL ov78_021D2200(ChooseStarterCameraMovement *param0)
{
    return param0->unk_3C;
}

static void MakeCursorOAM(ChooseStarterApp *param0, ChooseStarterCursor *param1, int param2)
{
    param1->unk_04[0] = SpriteResourceCollection_AddTiles(param0->unk_24C[0], 82, 10, 0, 10, NNS_G2D_VRAM_TYPE_2DMAIN, param2);

    sub_0200A3DC(param1->unk_04[0]);
    SpriteResource_ReleaseData(param1->unk_04[0]);

    param1->unk_04[1] = SpriteResourceCollection_AddPalette(param0->unk_24C[1], 82, 11, 0, 11, NNS_G2D_VRAM_TYPE_2DMAIN, 1, param2);

    sub_0200A640(param1->unk_04[1]);
    SpriteResource_ReleaseData(param1->unk_04[1]);

    param1->unk_04[2] = SpriteResourceCollection_Add(param0->unk_24C[2], 82, 12, 0, 12, 2, param2);
    param1->unk_04[3] = SpriteResourceCollection_Add(param0->unk_24C[3], 82, 13, 0, 13, 3, param2);
}

static void ov78_021D2290(ChooseStarterApp *param0, ChooseStarterCursor *param1)
{
    sub_0200A4E4(param1->unk_04[0]);
    sub_0200A6DC(param1->unk_04[1]);

    SpriteResourceCollection_Remove(param0->unk_24C[0], param1->unk_04[0]);
    SpriteResourceCollection_Remove(param0->unk_24C[1], param1->unk_04[1]);
    SpriteResourceCollection_Remove(param0->unk_24C[2], param1->unk_04[2]);
    SpriteResourceCollection_Remove(param0->unk_24C[3], param1->unk_04[3]);
}

static void AttachCursorCellActor(ChooseStarterApp *param0, ChooseStarterCursor *param1, int param2)
{
    CellActorResourceData v0;
    CellActorInitParams v1;

    sub_020093B4(&v0, 10, 11, 12, 13, 0xffffffff, 0xffffffff, 0, 1, param0->unk_24C[0], param0->unk_24C[1], param0->unk_24C[2], param0->unk_24C[3], NULL, NULL);

    v1.collection = param0->unk_248;
    v1.resourceData = &v0;
    v1.priority = 32;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.heapID = param2;

    v1.position.x = 0;
    v1.position.y = 0;

    param1->unk_00 = CellActorCollection_Add(&v1);
    CellActor_SetDrawFlag(param1->unk_00, 0);

    param1->unk_1C.x = 0;
    param1->unk_1C.y = 0;
}

static void ov78_021D2350(ChooseStarterCursor *param0)
{
    CellActor_Delete(param0->unk_00);
}

static void ov78_021D235C(ChooseStarterRotation *param0, fx32 param1, int param2)
{
    param0->unk_00 = 0;
    param0->unk_04 = param1;
    param0->unk_08 = param2;
    param0->unk_0C = 0;
}

static void ov78_021D2368(ChooseStarterRotation *param0)
{
    u16 v0;
    int v1;

    v1 = ((360 * 0xffff) / 360) * param0->unk_0C;
    v1 = v1 / param0->unk_08;
    v0 = v1;

    param0->unk_00 = FX_Mul(FX_SinIdx(v0), param0->unk_04);
    param0->unk_0C = (param0->unk_0C + 1) % param0->unk_08;
}

static void StartCursorMovement(ChooseStarterCursor *param0)
{
    GF_ASSERT(param0->unk_28 == NULL);

    ov78_021D235C(&param0->unk_2C, (8 * FX32_ONE), 32);
    param0->unk_28 = SysTask_Start(ov78_021D23E8, param0, 0);
}

static void ov78_021D23E8(SysTask *param0, void *param1)
{
    ChooseStarterCursor *v0 = param1;
    VecFx32 v1;

    ov78_021D2368(&v0->unk_2C);

    v1 = v0->unk_1C;
    v1.y += v0->unk_2C.unk_00;

    CellActor_SetPosition(v0->unk_00, &v1);
}

static void ov78_021D241C(ChooseStarterCursor *param0)
{
    if (param0->unk_28) {
        SysTask_Done(param0->unk_28);
        param0->unk_28 = NULL;
    }
}

static void ov78_021D2430(ChooseStarterCursor *param0, BOOL param1)
{
    CellActor_SetDrawFlag(param0->unk_00, param1);
}

static void ov78_021D243C(ChooseStarterCursor *param0, int param1, int param2)
{
    param0->unk_1C.x = param1 << FX32_SHIFT;
    param0->unk_1C.y = param2 << FX32_SHIFT;
}

static void MakePreviewWindow(StarterPreviewWindow *param0, ChooseStarterApp *param1, int param2)
{
    UnkStruct_ov22_022557A0 v0;
    UnkStruct_ov22_02255800 v1;
    UnkStruct_ov21_021E7F40 v2;

    param0->unk_0C = sub_02006F50(82, 14, 0, &param0->unk_14, param2);
    param0->unk_10 = sub_02006F88(82, 15, &param0->unk_18, param2);

    v0.unk_00 = param1->spriteDisplay;
    v0.unk_04 = param0->unk_14;

    param0->unk_00 = sub_02015128(&v0);

    v1.unk_00 = param1->spriteDisplay;
    v1.unk_04 = param0->unk_18;
    v1.unk_08 = 1;

    param0->unk_04 = sub_020151A4(&v1);

    v2.unk_00 = param1->spriteDisplay;
    v2.unk_04 = param0->unk_00;
    v2.unk_08 = param0->unk_04;
    v2.unk_0C = 0;
    v2.unk_0E = 0;
    v2.unk_10 = 0;
    v2.unk_14 = 31;
    v2.unk_18 = 1022;
    v2.unk_1C = 0;

    param0->unk_08 = sub_02015214(&v2);

    sub_02015240(param0->unk_08, 0);
    sub_02015268(param0->unk_08, 128 / 2, 128 / 2);
}

static void ov78_021D24E4(StarterPreviewWindow *param0)
{
    sub_02015238(param0->unk_08);
    sub_02015164(param0->unk_00);
    sub_020151D4(param0->unk_04);
    Heap_FreeToHeap(param0->unk_0C);
    Heap_FreeToHeap(param0->unk_10);
}

static void ov78_021D2508(StarterPreviewWindow *param0, BOOL param1)
{
    sub_02015240(param0->unk_08, param1);
}

static void ov78_021D2514(StarterPreviewWindow *param0, fx32 param1, fx32 param2, fx32 param3, fx32 param4, fx32 param5, fx32 param6, int param7)
{
    GF_ASSERT(param0->unk_54 == NULL);

    ov78_021D2108(&param0->unk_1C.unk_00, param1, param2, param7);
    ov78_021D2108(&param0->unk_1C.unk_10, param3, param4, param7);
    ov78_021D2108(&param0->unk_1C.unk_20, param5, param6, param7);

    param0->unk_1C.unk_30 = 0;
    param0->unk_1C.unk_34 = 1;
    param0->unk_54 = SysTask_Start(ov78_021D25A0, param0, 0);
}

static void ov78_021D256C(StarterPreviewWindow *param0)
{
    GF_ASSERT(param0->unk_54 == NULL);

    param0->unk_1C.unk_34 = -2;

    if (param0->unk_1C.unk_30 >= param0->unk_1C.unk_00.unk_0C) {
        param0->unk_1C.unk_30 = param0->unk_1C.unk_00.unk_0C + param0->unk_1C.unk_34;
    }

    param0->unk_54 = SysTask_Start(ov78_021D25A0, param0, 0);
}

static void ov78_021D25A0(SysTask *param0, void *param1)
{
    StarterPreviewWindow *v0 = param1;
    BOOL v1;
    fx32 v2, v3;

    v1 = ov78_021D2114(&v0->unk_1C.unk_00, v0->unk_1C.unk_30);

    ov78_021D2114(&v0->unk_1C.unk_10, v0->unk_1C.unk_30);
    ov78_021D2114(&v0->unk_1C.unk_20, v0->unk_1C.unk_30);

    v2 = v0->unk_1C.unk_00.unk_00 - ((128 / 2) * FX32_ONE);
    v3 = v0->unk_1C.unk_10.unk_00 - ((128 / 2) * FX32_ONE);

    sub_02015254(v0->unk_08, v2 >> FX32_SHIFT, v3 >> FX32_SHIFT);
    sub_02015270(v0->unk_08, v0->unk_1C.unk_20.unk_00, v0->unk_1C.unk_20.unk_00);

    if ((v1 == 1) || (v0->unk_1C.unk_30 < 0)) {
        SysTask_Done(param0);
        v0->unk_54 = NULL;
    }

    v0->unk_1C.unk_30 += v0->unk_1C.unk_34;
}

static BOOL ov78_021D2608(StarterPreviewWindow *param0)
{
    if (param0->unk_54) {
        return 0;
    }

    return 1;
}

static void ov78_021D2618(ChooseStarterApp *param0)
{
    fx32 v0, v1;

    v0 = param0->unk_7C[param0->cursorPosition][0] << FX32_SHIFT;
    v1 = (param0->unk_7C[param0->cursorPosition][1] + 48) << FX32_SHIFT;

    ov78_021D2514(&param0->unk_6A8, v0, 128 << FX32_SHIFT, v1, 96 << FX32_SHIFT, (FX32_CONST(0.40f)), (FX32_CONST(1.0f)), 6);
    ov78_021D26B4(&param0->unk_274, param0->sprites[param0->cursorPosition], v0, 128 << FX32_SHIFT, v1, 96 << FX32_SHIFT, (FX32_CONST(0.40f)), (FX32_CONST(1.0f)), 6);
}

static void ov78_021D2688(ChooseStarterApp *param0)
{
    ov78_021D256C(&param0->unk_6A8);
    ov78_021D270C(&param0->unk_274);
}

static BOOL ov78_021D26A4(ChooseStarterApp *param0)
{
    return ov78_021D2608(&param0->unk_6A8);
}

static void ov78_021D26B4(StarterPreviewGraphics *param0, Sprite *param1, fx32 param2, fx32 param3, fx32 param4, fx32 param5, fx32 param6, fx32 param7, int param8)
{
    GF_ASSERT(param0->unk_3C == NULL);

    ov78_021D2108(&param0->unk_04.unk_00, param2, param3, param8);
    ov78_021D2108(&param0->unk_04.unk_10, param4, param5, param8);
    ov78_021D2108(&param0->unk_04.unk_20, param6, param7, param8);

    param0->unk_00 = param1;
    param0->unk_04.unk_30 = 0;
    param0->unk_04.unk_34 = 1;
    param0->unk_3C = SysTask_Start(ov78_021D2740, param0, 0);
}

static void ov78_021D270C(StarterPreviewGraphics *param0)
{
    GF_ASSERT(param0->unk_3C == NULL);

    param0->unk_04.unk_34 = -2;

    if (param0->unk_04.unk_30 >= param0->unk_04.unk_00.unk_0C) {
        param0->unk_04.unk_30 = param0->unk_04.unk_00.unk_0C + param0->unk_04.unk_34;
    }

    param0->unk_3C = SysTask_Start(ov78_021D2740, param0, 0);
}

static void ov78_021D2740(SysTask *param0, void *param1)
{
    StarterPreviewGraphics *v0 = param1;
    BOOL v1;
    u32 v2;

    v1 = ov78_021D2114(&v0->unk_04.unk_00, v0->unk_04.unk_30);

    ov78_021D2114(&v0->unk_04.unk_10, v0->unk_04.unk_30);
    ov78_021D2114(&v0->unk_04.unk_20, v0->unk_04.unk_30);

    v2 = FX_Mul(0x100 * FX32_ONE, v0->unk_04.unk_20.unk_00) >> FX32_SHIFT;

    sub_02007DEC(v0->unk_00, 0, v0->unk_04.unk_00.unk_00 >> FX32_SHIFT);
    sub_02007DEC(v0->unk_00, 1, v0->unk_04.unk_10.unk_00 >> FX32_SHIFT);
    sub_02007DEC(v0->unk_00, 12, v2);
    sub_02007DEC(v0->unk_00, 13, v2);

    if ((v1 == 1) || (v0->unk_04.unk_30 < 0)) {
        SysTask_Done(param0);
        v0->unk_3C = NULL;
    }

    v0->unk_04.unk_30 += v0->unk_04.unk_34;
}

static void MakeSubplaneWindow(ChooseStarterApp *param0, int param1)
{
    int v0;
    int v1, v2;

    sub_02006E84(82, 17, 0, 5 * 32, 32, param1);

    for (v0 = 0; v0 < 3; v0++) {
        param0->unk_9C[v0] = sub_0201A778(param1, 1);
        Window_Init(param0->unk_9C[v0]);

        switch (v0) {
        case 0:
            v1 = 12;
            v2 = 4;
            break;
        case 1:
            v1 = 4;
            v2 = 14;
            break;
        case 2:
            v1 = 20;
            v2 = 13;
            break;
        }

        BGL_AddWindow(param0->bgl, param0->unk_9C[v0], 3, v1, v2, 11, 4, 5, 1 + (64 * v0));
        ov78_021D28A8(param0->unk_9C[v0], param1, 360, 4 + v0, TEXT_COLOR(1, 2, 10));
    }
}

static void ov78_021D2884(ChooseStarterApp *param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        BGL_DeleteWindow(param0->unk_9C[v0]);
        Heap_FreeToHeap(param0->unk_9C[v0]);
    }
}

static void ov78_021D28A8(Window *param0, int param1, int param2, int param3, TextColor param4)
{
    MessageLoader *v0;
    Strbuf *v1;

    v0 = MessageLoader_Init(0, 26, param2, param1);
    GF_ASSERT(v0);
    v1 = MessageLoader_GetNewStrbuf(v0, param3);

    BGL_FillWindow(param0, (((param4) >> 0) & 0xff));
    Text_AddPrinterWithParamsAndColor(param0, FONT_SYSTEM, v1, 1, 0, TEXT_SPEED_NO_TRANSFER, param4, NULL);
    Strbuf_Free(v1);
    MessageLoader_Free(v0);
}

static void ov78_021D2904(ChooseStarterApp *param0)
{
    sub_0201ACF4(param0->unk_9C[param0->unk_A8]);
}

static u16 GetSelectedSpecies(u16 cursorPosition)
{
    switch (cursorPosition) {
    case CURSOR_POSITION_LEFT:
        return STARTER_OPTION_0;

    case CURSOR_POSITION_CENTER:
        return STARTER_OPTION_1;

    case CURSOR_POSITION_RIGHT:
        return STARTER_OPTION_2;

    default:
        GF_ASSERT(FALSE);
        break;
    }

    return SPECIES_NONE;
}
