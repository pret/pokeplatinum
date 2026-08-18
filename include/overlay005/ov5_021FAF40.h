#ifndef POKEPLATINUM_OV5_021FAF40_H
#define POKEPLATINUM_OV5_021FAF40_H

#include <nitro/fx/fx.h>

#include "constants/items.h"

#include "overlay005/berry_graphics_data.h"

#include "billboard.h"
#include "map_object.h"

enum BillboardModel {
    BILLBOARD_MODEL_GENERIC_32x32 = 0,
    BILLBOARD_MODEL_GENERIC_16x16,
    BILLBOARD_MODEL_ROCK_SMASH,
    BILLBOARD_MODEL_BERRY_SPROUT,
    BILLBOARD_MODEL_BERRY_TREE,
    BILLBOARD_MODEL_GENERIC_64x64,
    BILLBOARD_MODEL_PLAYER_FISHING,
    BILLBOARD_MODEL_GALACTIC_HQ_DOOR,
    BILLBOARD_MODEL_CELESTIC_RUINS_WALL,
    BILLBOARD_MODEL_HEARTHOME_GYM_PLAYER,
    BILLBOARD_MODEL_UNUSED_10,
    BILLBOARD_MODEL_GIRATINA_ORIGIN,
    BILLBOARD_MODEL_GRUNTS_GROUP_OF_4,
    BILLBOARD_MODEL_CAVE_PAINTING_SHARDS_LEFT,
    BILLBOARD_MODEL_CAVE_PAINTING_SHARDS_RIGHT,
    BILLBOARD_MODEL_DIST_WORLD_PLAYER,
    BILLBOARD_MODEL_GRUNTS_GROUP_OF_3,
    BILLBOARD_MODEL_DIST_WORLD_B1F_MESPRIT,
};

enum BillboardFrameSequence {
    BILLBOARD_FRAME_SEQ_GENERIC_WALK = 0,
    BILLBOARD_FRAME_SEQ_WALK_AND_RUN,
    BILLBOARD_FRAME_SEQ_BERRY_TREE,
    BILLBOARD_FRAME_SEQ_BIKE,
    BILLBOARD_FRAME_SEQ_HOLDING_POKE_BALL,
    BILLBOARD_FRAME_SEQ_SPRAY_DUCK,
    BILLBOARD_FRAME_SEQ_SURF,
    BILLBOARD_FRAME_SEQ_STARLY,
    BILLBOARD_FRAME_SEQ_ALTERNATING_FRAMES,
    BILLBOARD_FRAME_SEQ_CONTEST,
    BILLBOARD_FRAME_SEQ_FISHING,
    BILLBOARD_FRAME_SEQ_POKECENTER_NURSE,
    BILLBOARD_FRAME_SEQ_MAGIKARP,
    BILLBOARD_FRAME_SEQ_POKETCH,
    BILLBOARD_FRAME_SEQ_SAVE,
    BILLBOARD_FRAME_SEQ_HEAL_POKECENTER,
    BILLBOARD_FRAME_SEQ_ARCEUS,
    BILLBOARD_FRAME_SEQ_DARKRAI,
    BILLBOARD_FRAME_SEQ_CRESSELIA,
    BILLBOARD_FRAME_SEQ_GIRATINA_ALTERED,
    BILLBOARD_FRAME_SEQ_HEATRAN,
    BILLBOARD_FRAME_SEQ_GIRATINA_ORIGIN,
    BILLBOARD_FRAME_SEQ_VS_SEEKER,
};

enum ModelType {
    MODEL_TYPE_NONE = 0,
    MODEL_TYPE_BILLBOARD,
    MODEL_TYPE_3D,
};

enum TrackType {
    TRACK_TYPE_NONE = 0,
    TRACK_TYPE_FOOTSTEPS,
    TRACK_TYPE_LINE,
};

typedef struct {
    u32 graphicsID;
    const UnkStruct_ov5_021FB0F0 *renderer;
} ObjectEventGfxRendererEntry;

typedef struct {
    int id;
    int narcIdx;
} ObjectEventGfxFileEntry;

typedef struct {
    int graphicsID;
    int modelID;
    int frameSeqID;
    const BillboardAnim *animations;
} ObjectEventGfxModelAnimEntry;

typedef struct {
    int graphicsID;
    u32 modelType : 4;
    u32 hasShadow : 2;
    u32 trackType : 4;
    u32 hasReflection : 2;
    u32 padding : 20;
} ObjectEventGfxRenderDetailsEntry;

typedef struct {
    u32 graphicsID;
    VecFx32 initialPos;
} ObjectEventGfxFieldAnimsInitialPosEntry;

extern const UnkStruct_ov5_021FB0F0 gInvisibleObjectEventGfxRenderer;

extern const ObjectEventGfxRendererEntry gObjectEventGfxRenderersTable[];
extern const ObjectEventGfxFileEntry gObjectEventGfxTexturesTable[];
extern const ObjectEventGfxFileEntry gObjectEventGfxModelsTable[];
extern const ObjectEventGfxFileEntry gObjectEventGfxFrameSeqsTable[];
extern const ObjectEventGfxModelAnimEntry gObjectEventGfxModelAnimsTable[];
extern const ObjectEventGfxRenderDetailsEntry gObjectEventGfxRenderDetailsTable[];
extern const BerryGraphicsData gBerryGraphicsTable[NUM_BERRIES];
extern const ObjectEventGfxFieldAnimsInitialPosEntry gObjectEventGfxOverworldAnimsInitialPosTable[];

extern const int gFogIgnoredModels[];
extern const int gPreloadedBillboardFrameSeqs[];
extern const int gPreloadedBillboardModels[];

#endif
