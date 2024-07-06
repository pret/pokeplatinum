#ifndef POKEPLATINUM_EASY3D_OBJECT_H
#define POKEPLATINUM_EASY3D_OBJECT_H

#include <nitro/fx/fx.h>
#include <nnsys.h>

#include "constants/heap.h"

#include "struct_decls/struct_02006C24_decl.h"

enum RotationAxis {
    ROTATION_AXIS_X = 0,
    ROTATION_AXIS_Y,
    ROTATION_AXIS_Z,
    ROTATION_AXIS_COUNT
};

typedef struct Easy3DModel {
    void *data;
    NNSG3dResMdlSet *set;
    NNSG3dResMdl *model;
    NNSG3dResTex *texture;
} Easy3DModel;

typedef struct Easy3DAnim {
    void *data;
    void *anim;
    NNSG3dAnmObj *animObj;
    fx32 frame;
    BOOL dataBorrowed; // Whether the data field is borrowed from another object (i.e. not allocated by this object)
} Easy3DAnim;

typedef struct Easy3DObject {
    NNSG3dRenderObj renderObj;
    VecFx32 position;
    VecFx32 scale;
    BOOL visible;
    u16 rotation[ROTATION_AXIS_COUNT];
    u8 padding_76[2];
} Easy3DObject;

void Easy3DModel_Load(Easy3DModel *model, u32 narcIndex, u32 memberIndex, u32 heapID);
void Easy3DModel_LoadFrom(Easy3DModel *model, NARC *narc, u32 memberIndex, u32 heapID);
void Easy3DModel_Release(Easy3DModel *model);

void Easy3DAnim_LoadFrom(Easy3DAnim *anim, const Easy3DModel *model, NARC *narc, u32 memberIndex, u32 heapID, NNSFndAllocator *allocator);
void Easy3DAnim_LoadFromData(Easy3DAnim *anim, const Easy3DModel *model, void *data, NNSFndAllocator *allocator);
void Easy3DAnim_Release(Easy3DAnim *anim, NNSFndAllocator *allocator);
void Easy3DAnim_UpdateLooped(Easy3DAnim *anim, fx32 frameDelta);
BOOL Easy3DAnim_Update(Easy3DAnim *anim, fx32 frameDelta);
void Easy3DAnim_SetFrame(Easy3DAnim *anim, fx32 frame);
fx32 Easy3DAnim_GetFrame(const Easy3DAnim *anim);
fx32 Easy3DAnim_GetFrameCount(const Easy3DAnim *anim);

void Easy3DObject_Init(Easy3DObject *obj, Easy3DModel *model);
void Easy3DObject_AddAnim(Easy3DObject *obj, Easy3DAnim *anim);
void Easy3DObject_RemoveAnim(Easy3DObject *obj, Easy3DAnim *anim);
void Easy3DObject_Draw(Easy3DObject *obj);
void Easy3DObject_DrawRotated(Easy3DObject *obj, const MtxFx33 *rotation);
void Easy3DObject_SetVisibility(Easy3DObject *obj, BOOL visible);
BOOL Easy3DObject_GetVisibility(const Easy3DObject *obj);
void Easy3DObject_SetPosition(Easy3DObject *obj, fx32 x, fx32 y, fx32 z);
void Easy3DObject_GetPosition(const Easy3DObject *obj, fx32 *outX, fx32 *outY, fx32 *outZ);
void Easy3DObject_SetScale(Easy3DObject *obj, fx32 x, fx32 y, fx32 z);
void Easy3DObject_GetScale(const Easy3DObject *obj, fx32 *outX, fx32 *outY, fx32 *outZ);
void Easy3DObject_SetRotation(Easy3DObject *obj, u16 angle, enum RotationAxis axis);
u16 Easy3DObject_GetRotation(const Easy3DObject *obj, enum RotationAxis axis);

#endif // POKEPLATINUM_EASY3D_OBJECT_H
