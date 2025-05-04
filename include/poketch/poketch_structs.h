#ifndef POKEPLATINUM_POKETCH_STRUCTS_H
#define POKEPLATINUM_POKETCH_STRUCTS_H

typedef struct PoketchAnimation_AnimationManager_t PoketchAnimation_AnimationManager;
typedef struct PoketchAnimation_AnimatedSpriteData_t PoketchAnimation_AnimatedSpriteData;
typedef struct PoketchGraphics_TaskData_t PoketchGraphics_TaskData;

#include <nnsys.h>

typedef struct {
    NNSG2dFVec2 translation;
    u16 animIdx;
    u8 flip;
    u8 oamPriority;
    u8 priority;
    u8 hasAffineTransform;
} PoketchAnimation_AnimationData;

typedef struct {
    void *compressedSprite;
    void *compressedAnim;
    NNSG2dCellDataBank *sprite;
    NNSG2dAnimBankData *anim;
    u32 heapID;
} PoketchAnimation_SpriteData;

typedef struct {
    u32 lastAppID;
} PoketchGraphics_ConstTaskData;

#endif // POKEPLATINUM_POKETCH_STRUCTS_H
