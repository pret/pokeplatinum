#ifndef POKEPLATINUM_POKETCH_STRUCTS_H
#define POKEPLATINUM_POKETCH_STRUCTS_H

typedef struct Ov25_540_AnimationManager_t Ov25_540_AnimationManager;
typedef struct Ov25_540_AnimatedSpriteData_t Ov25_540_AnimatedSpriteData;
typedef struct Ov25_560_TaskData_t Ov25_560_TaskData;

#include <nnsys.h>

typedef struct {
    NNSG2dFVec2 translation;
    u16 animIdx;
    u8 flip;
    u8 oamPriority;
    u8 unk_0C;
    u8 hasAffineTransform;
} ov25_AnimationData;

typedef struct {
    void *compressedSprite;
    void *compressedAnim;
    NNSG2dCellDataBank *sprite;
    NNSG2dAnimBankData *anim;
    u32 heapID;
} ov25_SpriteData;

typedef struct {
    u32 lastAppID;
} Ov25_560_ConstTaskData;

#endif // POKEPLATINUM_POKETCH_STRUCTS_H
