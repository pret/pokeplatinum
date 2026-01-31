#ifndef POKEPLATINUM_FIELD_EFFECT_RENDERER_H
#define POKEPLATINUM_FIELD_EFFECT_RENDERER_H

#include "constants/field/field_effect_renderer.h"

#include "overlay005/field_effect_manager.h"

typedef void *(*FieldEffectRenderer_NewFunc)(FieldEffectManager *);
typedef void (*FieldEffectRenderer_FreeFunc)(void *);

typedef struct FieldEffectRendererFuncs {
    u32 id;
    FieldEffectRenderer_NewFunc newFunc;
    FieldEffectRenderer_FreeFunc freeFunc;
} FieldEffectRendererFuncs;

extern const u32 sDistWorldFieldEffectRenderers[FIELD_EFFECT_RENDERER_COUNT + 1];
extern const u32 sDefaultFieldEffectRenderers[FIELD_EFFECT_RENDERER_COUNT + 1];
extern const u32 sUndergroundFieldEffectRenderers[FIELD_EFFECT_RENDERER_COUNT + 1];
extern const FieldEffectRendererFuncs sFieldEffectRendererHandlers[FIELD_EFFECT_RENDERER_COUNT + 1];

#endif // POKEPLATINUM_FIELD_EFFECT_RENDERER_H
