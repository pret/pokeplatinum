#ifndef POKEPLATINUM_UNK_02073838_H
#define POKEPLATINUM_UNK_02073838_H

#include <nitro/fx/fx.h>
#include <nnsys.h>

#include "narc.h"

typedef struct {
    u16 alpha;
    u16 beta;
    u16 gamma;
    u8 padding_06[2];
} YA3DA_RotationAngles;

typedef struct {
    BOOL isTextureBound;
    NNSG3dResFileHeader *modelSetHeader;
    NNSG3dResMdlSet *modelSet;
    NNSG3dResMdl *g3DModel;
    NNSG3dResTex *texture;
} YA3DA_Model;

typedef struct {
    u32 flags;
    fx32 currFrame;
    void *animSet;
    void *g3DAnim;
    NNSG3dAnmObj *animObj;
    NNSFndAllocator allocator;
} YA3DA_Animation;

typedef struct {
    NNSG3dRenderObj g3DRenderObj;
} YA3DA_RenderObj;

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
void YA3DA_LoadModelFromSet(YA3DA_Model *model, u32 modelIdx, NARC *narc, u32 modelSetNarcIdx, u32 heapID, BOOL allocAtEnd);

/*
 * @brief Schedule a model's texture to be bound on the next VBlank interrupt.
 *
 * @param model
 */
void YA3DA_ScheduleBindModelTexture(YA3DA_Model *model);

/*
 * @brief Free the model's model set data from the heap and texture data from VRAM.
 *
 * @param model
 */
void YA3DA_FreeModel(YA3DA_Model *model);

/*
 * @brief Write all 0s to the animation object.
 *
 * @param anim
 */
void YA3DA_ZeroOutAnimation(YA3DA_Animation *anim);

/*
 * @brief Load the first animation from the passed, already allocated, animation set.
 * The resulting object does not own the animation set data.
 *
 * @param[out] anim
 * @param animSet   A set of animation to load the new animation from.
 * @param unused    Unused. Probably intended to be an index into the animation set.
 */
void YA3DA_LoadFromAllocatedSet(YA3DA_Animation *anim, void *animSet, u32 unused);

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
void YA3DA_LoadAnimFromOpenNARC(YA3DA_Animation *anim, u32 unused, NARC *narc, u32 animSetNarcIdx, u32 heapID, BOOL allocAtEnd);

/*
 * @brief Free the animation's G3D animation data.
 *
 * @param anim
 */
void YA3DA_FreeAnimationSet(YA3DA_Animation *anim);

/*
 * @brief Set a model to be animated by an animation. Allocates a G3D animation object.
 *
 * @param anim
 * @param model
 * @param heapID
 */
void YA3DA_BindModelToAnim(YA3DA_Animation *anim, const YA3DA_Model *model, u32 heapID);

/*
 * @brief Initialize the G3D animation object allocated by BindModelToAnim. Must be passed the same model.
 *
 * @param anim
 * @param model
 */
void YA3DA_InitG3DAnimObject(YA3DA_Animation *anim, const YA3DA_Model *model);

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
void YA3DA_ApplyAnimCopyToModel(YA3DA_Animation *dest, const YA3DA_Model *model, YA3DA_Animation *src, u32 unused, u32 heapID);

/*
 * @brief Free an animation's G3D animation object.
 *
 * @param anim
 */
void YA3DA_FreeAnimObject(YA3DA_Animation *anim);

/*
 * @brief Free an animation's data. Does not free the animation set's data if not owned by the given animation.
 *
 * @param anim
 */
void YA3DA_FreeAnimation(YA3DA_Animation *anim);

/*
 * @brief Update an animation, advancing a number of frames.
 *
 * @param anim       The animation to be updated.
 * @param frameDelta How much to advance by. Can be negative to advance backwards.
 * @param loop       Whether to loop the animation if the end (or beginning) is reached.
 * @return TRUE if the animation reached its end (or looped), FALSE otherwise.
 */
BOOL YA3DA_UpdateAnim(YA3DA_Animation *anim, fx32 frameDelta, BOOL loop);

/*
 * @brief Set an animation's current frame number.
 *
 * @param anim
 * @param frame
 */
void YA3DA_SetAnimFrame(YA3DA_Animation *anim, fx32 frame);

/*
 * @brief Get an animation's current frame number.
 *
 * @param anim
 * @return The current frame number for the animation.
 */
fx32 YA3DA_GetAnimFrame(const YA3DA_Animation *anim);

/*
 * @brief Get an animation's length in frames.
 *
 * @param anim
 * @return The total length of the animation in frames.
 */
fx32 YA3DA_GetAnimFrameCount(const YA3DA_Animation *anim);

/*
 * @brief Query whether the animation reached its end during the last update.
 *
 * @param anim
 * @return TRUE if the animation reached its end (or looped), FALSE otherwise.
 */
BOOL YA3DA_HasAnimationReachedEnd(const YA3DA_Animation *anim);

/*
 * @brief Create a render object from a model.
 *
 * @param[out] renderObj
 * @param model
 */
void YA3DA_CreateRenderObject(YA3DA_RenderObj *renderObj, YA3DA_Model *model);

/*
 * @brief Bind an animation to a render object.
 *
 * @param renderObj
 * @param anim
 */
void YA3DA_BindAnimToRenderObj(YA3DA_RenderObj *renderObj, YA3DA_Animation *anim);

/*
 * @brief Create a render object, automatically binding an animation to it.
 *
 * @param[out] renderObj
 * @param model
 * @param anim
 */
void YA3DA_CreateRenderObjectWithAnim(YA3DA_RenderObj *renderObj, YA3DA_Model *model, YA3DA_Animation *anim);

/*
 * @brief Render a render object to screen.
 *
 * @param renderObj
 * @param position
 * @param scale
 * @param rotation
 */
void YA3DA_DrawRenderObj(YA3DA_RenderObj *renderObj, const VecFx32 *position, const VecFx32 *scale, const MtxFx33 *rotation);

/*
 * @brief Render a render object to screen with scale 1 and no rotation.
 *
 * @param renderObj
 * @param position
 */
void YA3DA_DrawRenderObjWithPos(YA3DA_RenderObj *renderObj, const VecFx32 *position);

/*
 * @brief Render a render object to screen. Uses Euler angles instead of a rotation matrix.
 *
 * @param renderObj
 * @param position
 * @param scale
 * @param rotation
 */
void YA3DA_DrawRenderObjRotationAngles(YA3DA_RenderObj *renderObj, const VecFx32 *position, const VecFx32 *scale, const YA3DA_RotationAngles *rotation);

/*
 * @brief Render a render object to screen with scale 1. Uses Euler angles instead of a rotation matrix.
 *
 * @param renderObj
 * @param position
 * @param rotation
 */
void YA3DA_DrawRenderObjWithPosAndRotationAngles(YA3DA_RenderObj *renderObj, const VecFx32 *position, const YA3DA_RotationAngles *rotation);

/*
 * @brief Render a simple (single-material, single-mesh) render object to screen.
 *
 * @param renderObj
 * @param position
 * @param scale
 * @param rotation
 */
void YA3DA_DrawRenderObjSimple(YA3DA_RenderObj *renderObj, const VecFx32 *position, const VecFx32 *scale, const MtxFx33 *rotation);

#endif // POKEPLATINUM_UNK_02073838_H
