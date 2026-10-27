#ifndef POKEPLATINUM_STRUCT_OV19_021D8318_H
#define POKEPLATINUM_STRUCT_OV19_021D8318_H

#include "applications/pc_boxes/box_application.h"
#include "applications/pc_boxes/struct_ov19_021D61B0_decl.h"
#include "applications/pc_boxes/struct_ov19_021DA384.h"
#include "applications/pc_boxes/struct_ov19_021DCD18.h"

#include "bg_window.h"

typedef struct BoxView {
    u8 boxID;
    u8 unk_01;
    u8 currentPage;
    u8 previousPage;
    u32 scrollTicksRemaining;
    s32 scrollStartX;
    s32 bgScrollX;
    s32 scrollStepX;
    s32 scrollTargetX;
    u8 padding_18[24];
    u32 pendingBoxID;
    u32 pendingPage;
    fx32 unk_38[2][6];
    fx32 unk_68[2][6];
    u32 scrollStep;
    BOOL scrollDone;
    u16 boxCursorPosition;
    u8 wallpaperChangeStep;
    u8 taskBusy;
    u8 releaseAnimStep;
    u8 padding_A5[3];
    MonIcon icons[2][30];
    u8 iconTileData[30][640];
    u16 iconSpriteIndex[30];
    u16 species[30];
    u8 padding_5850[4];
    int unk_5854;
    int unk_5858;
    int compareModeXOffset;
    u16 unk_5860[9][16];
    MonIconHelper *monIconHelper;
    BgConfig *bgConfig;
    const BoxApplication *boxApp;
    BoxGraphics *boxGraphics;
} BoxView;

#endif // POKEPLATINUM_STRUCT_OV19_021D8318_H
