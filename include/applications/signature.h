#ifndef POKEPLATINUM_APPLICATIONS_SIGNATURE_H
#define POKEPLATINUM_APPLICATIONS_SIGNATURE_H

#include "bg_window.h"
#include "game_options.h"
#include "game_records.h"
#include "message.h"
#include "overlay_manager.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_util.h"
#include "string_gf.h"
#include "string_template.h"
#include "touch_pad.h"
#include "trainer_case.h"
#include "yes_no_touch_menu.h"

#define DUMMY_COUNT 5

typedef struct SignatureTouchDataBuffer {
    u8 x[MAX_TOUCH_BUFFER_SIZE];
    u8 y[MAX_TOUCH_BUFFER_SIZE];
    u8 brushTypeUnused : 4;
    u8 bufferSize : 4;
} SignatureTouchDataBuffer;

typedef struct PreviousTouchDataBuffer {
    u8 lastX;
    u8 lastY;
    u16 bufferSize;
} PreviousTouchDataBuffer;

typedef struct DrawingState {
    s8 previousXDirection;
    s8 previousYDirection;
    s8 currentXDirection;
    s8 currentYDirection;
    u8 padding;
} DrawingState;

typedef struct SignatureApp {
    BgConfig *bgConfig;
    u8 padding[4];
    GameRecords *records;
    Options *options;
    StringTemplate *template;
    MessageLoader *loader;
    String *dummyStrings[DUMMY_COUNT];
    String *buttonText;
    String *descriptionText;
    String *messageText;
    int printerID;
    SpriteList *spriteList;
    G2dRenderer g2DRenderer;
    SpriteResourceCollection *spriteResourceCollection[MAX_SPRITE_RESOURCE_GEN4];
    SpriteResource *spriteResources[2][MAX_SPRITE_RESOURCE_GEN4];
    SpriteResourcesHeader dummyResourcesHeader;
    SpriteResourcesHeader spriteResourcesHeader;
    u8 padding2[112];
    Sprite *sprite[1];
    u8 padding3[32];
    Window dummyWindows[DUMMY_COUNT];
    Window signatureWindow;
    Window messageWindow;
    Window buttonWindow;
    Window descriptionWindow;
    u8 padding4[8];
    int subState;
    u8 padding5[16392];
    u16 glowEffectDegreesUnused;
    u8 brushTypeUnused;
    u8 padding6;
    SignatureTouchDataBuffer touchDataBuffer;
    SignatureTouchDataBuffer touchDataBuffers[DUMMY_COUNT];
    PreviousTouchDataBuffer prevTouchData[DUMMY_COUNT];
    u8 padding7[6144];
    u8 *savedSignature;
    u8 buttonPixelBuffer[256];
    YesNoTouchMenu *yesNoMenu;
    DrawingState drawingState;
    int lastTouchedX;
    int lastTouchedY;
} SignatureApp;

BOOL SignatureApp_Init(ApplicationManager *appMan, int *state);
BOOL SignatureApp_Main(ApplicationManager *appMan, int *state);
BOOL SignatureApp_Exit(ApplicationManager *appMan, int *state);

#endif // POKEPLATINUM_APPLICATIONS_SIGNATURE_H
