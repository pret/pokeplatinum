#ifndef POKEPLATINUM_SIMPLE3D_H
#define POKEPLATINUM_SIMPLE3D_H

#include <nitro/fx/fx.h>
#include <nnsys.h>

#include "narc.h"

typedef struct Simple3DRotationAngles {
    u16 alpha;
    u16 beta;
    u16 gamma;
    u8 padding_06[2];
} Simple3DRotationAngles;

typedef struct Simple3DModel {
    BOOL isTextureBound;
    NNSG3dResFileHeader *modelSetHeader;
    NNSG3dResMdlSet *modelSet;
    NNSG3dResMdl *g3DModel;
    NNSG3dResTex *texture;
} Simple3DModel;

typedef struct Simple3DAnimation {
    u32 flags;
    fx32 currFrame;
    void *animSet;
    void *g3DAnim;
    NNSG3dAnmObj *animObj;
    NNSFndAllocator allocator;
} Simple3DAnimation;

typedef struct Simple3DRenderObj {
    NNSG3dRenderObj g3DRenderObj;
} Simple3DRenderObj;

/*
 * @brief Load a single model from a model set in the given NARC.
 *
 * @param[out] model
 * @param modelIdx        The model's index within the model set.
 * @param narc            The NARC from which to load the model set from.
 * @param modelSetNarcIdx The index of the model set within the NARC.
 * @param heapID          A heap to allocate the model set data to.
 * @param allocAtEnd      Whether to allocate from the end of the heap.
 */
void Simple3D_LoadModelFromSet(Simple3DModel *model, u32 modelIdx, NARC *narc, u32 modelSetNarcIdx, u32 heapID, BOOL allocAtEnd);

/*
 * @brief Schedule a model's texture to be bound on the next VBlank interrupt.
 *
 * @param model
 */
void Simple3D_ScheduleBindModelTexture(Simple3DModel *model);

/*
 * @brief Free the model's model set data from the heap and texture data from VRAM.
 *
 * @param model
 */
void Simple3D_FreeModel(Simple3DModel *model);

/*
 * @brief Write all 0s to the animation object.
 *
 * @param anim
 */
void Simple3D_ZeroOutAnimation(Simple3DAnimation *anim);

/*
 * @brief Load the first animation from the passed, already allocated, animation set.
 * The resulting object does not own the animation set data.
 *
 * @param[out] anim
 * @param animSet   A set of animation to load the new animation from.
 * @param unused    Unused. Probably intended to be an index into the animation set.
 */
void Simple3D_LoadFromAllocatedSet(Simple3DAnimation *anim, void *animSet, u32 unused);

/*
 * @brief Load the first animation from an animation set in the given NARC.
 * The resulting object owns the animation set data.
 *
 * @param[out] anim
 * @param unused          Unused. Probably intended to be an index into the animation set.
 * @param narc            The NARC from which to load the animation set from.
 * @param modelSetNarcIdx The index of the animation set within the NARC.
 * @param heapID          A heap to allocate the animation set data on.
 * @param allocAtEnd      Whether to allocate from the end of the heap.
 */
void Simple3D_LoadAnimFromOpenNARC(Simple3DAnimation *anim, u32 unused, NARC *narc, u32 animSetNarcIdx, u32 heapID, BOOL allocAtEnd);

/*
 * @brief Free the animation's G3D animation data.
 *
 * @param anim
 */
void Simple3D_FreeAnimationSet(Simple3DAnimation *anim);

/*
 * @brief Set a model to be animated by an animation. Allocates a G3D animation object.
 *
 * @param anim
 * @param model
 * @param heapID
 */
void Simple3D_BindModelToAnim(Simple3DAnimation *anim, const Simple3DModel *model, u32 heapID);

/*
 * @brief Initialize the G3D animation object allocated by BindModelToAnim. Must be passed the same model.
 *
 * @param anim
 * @param model
 */
void Simple3D_InitG3DAnimObject(Simple3DAnimation *anim, const Simple3DModel *model);

/*
 * @brief Creates a animation's copy and bind the given model to it immediately.
 * The created copy does not own its animation set data.
 *
 * @param[out] dest The newly created copy.
 * @param model     Model the newly created copy should be bound to.
 * @param src       Animation to be copied.
 * @param unused    Unused. Probably intended to be an index into the source animation's set.
 * @param heapID    A heap to allocate the G3D animation object on.
 */
void Simple3D_ApplyAnimCopyToModel(Simple3DAnimation *dest, const Simple3DModel *model, Simple3DAnimation *src, u32 unused, u32 heapID);

/*
 * @brief Free an animation's G3D animation object.
 *
 * @param anim
 */
void Simple3D_FreeAnimObject(Simple3DAnimation *anim);

/*
 * @brief Free an animation's data. Does not free the animation set's data if not owned by the given animation.
 *
 * @param anim
 */
void Simple3D_FreeAnimation(Simple3DAnimation *anim);

/*
 * @brief Update an animation, advancing a number of frames.
 *
 * @param anim       The animation to be updated.
 * @param frameDelta How much to advance by. Can be negative to advance backwards.
 * @param loop       Whether to loop the animation if the end (or beginning) is reached.
 * @return TRUE if the animation reached its end (or looped), FALSE otherwise.
 */
BOOL Simple3D_UpdateAnim(Simple3DAnimation *anim, fx32 frameDelta, BOOL loop);

/*
 * @brief Set an animation's current frame number.
 *
 * @param anim
 * @param frame
 */
void Simple3D_SetAnimFrame(Simple3DAnimation *anim, fx32 frame);

/*
 * @brief Get an animation's current frame number.
 *
 * @param anim
 * @return The current frame number for the animation.
 */
fx32 Simple3D_GetAnimFrame(const Simple3DAnimation *anim);

/*
 * @brief Get an animation's length in frames.
 *
 * @param anim
 * @return The total length of the animation in frames.
 */
fx32 Simple3D_GetAnimFrameCount(const Simple3DAnimation *anim);

/*
 * @brief Query whether the animation reached its end during the last update.
 *
 * @param anim
 * @return TRUE if the animation reached its end (or looped), FALSE otherwise.
 */
BOOL Simple3D_HasAnimationReachedEnd(const Simple3DAnimation *anim);

/*
 * @brief Create a render object from a model.
 *
 * @param[out] renderObj
 * @param model
 */
void Simple3D_CreateRenderObject(Simple3DRenderObj *renderObj, Simple3DModel *model);

/*
 * @brief Bind an animation to a render object.
 *
 * @param renderObj
 * @param anim
 */
void Simple3D_BindAnimToRenderObj(Simple3DRenderObj *renderObj, Simple3DAnimation *anim);

/*
 * @brief Create a render object, automatically binding an animation to it.
 *
 * @param[out] renderObj
 * @param model
 * @param anim
 */
void Simple3D_CreateRenderObjectWithAnim(Simple3DRenderObj *renderObj, Simple3DModel *model, Simple3DAnimation *anim);

/*
 * @brief Render a render object to screen.
 *
 * @param renderObj
 * @param position
 * @param scale
 * @param rotation
 */
void Simple3D_DrawRenderObj(Simple3DRenderObj *renderObj, const VecFx32 *position, const VecFx32 *scale, const MtxFx33 *rotation);

/*
 * @brief Render a render object to screen with scale 1 and no rotation.
 *
 * @param renderObj
 * @param position
 */
void Simple3D_DrawRenderObjWithPos(Simple3DRenderObj *renderObj, const VecFx32 *position);

/*
 * @brief Render a render object to screen. Uses Euler angles instead of a rotation matrix.
 *
 * @param renderObj
 * @param position
 * @param scale
 * @param rotation
 */
void Simple3D_DrawRenderObjRotationAngles(Simple3DRenderObj *renderObj, const VecFx32 *position, const VecFx32 *scale, const Simple3DRotationAngles *rotation);

/*
 * @brief Render a render object to screen with scale 1. Uses Euler angles instead of a rotation matrix.
 *
 * @param renderObj
 * @param position
 * @param rotation
 */
void Simple3D_DrawRenderObjWithPosAndRotationAngles(Simple3DRenderObj *renderObj, const VecFx32 *position, const Simple3DRotationAngles *rotation);

/*
 * @brief Render a simple (single-material, single-mesh) render object to screen.
 *
 * @param renderObj
 * @param position
 * @param scale
 * @param rotation
 */
void Simple3D_DrawRenderObjSimple(Simple3DRenderObj *renderObj, const VecFx32 *position, const VecFx32 *scale, const MtxFx33 *rotation);

#endif // POKEPLATINUM_SIMPLE3D_H
