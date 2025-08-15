#include "overlay005/field_camera.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"

#include "camera.h"

#define F32_DEG_TO_IDX(__deg) FX_DEG_TO_IDX(FX32_CONST(__deg))

// History size must be greater than the delay, so we add 1 to the delay to get the minimum acceptable size.
#define FIELD_CAMERA_DELAY        6
#define FIELD_CAMERA_HISTORY_SIZE (FIELD_CAMERA_DELAY + 1)

typedef struct {
    fx32 distance;
    CameraAngle cameraAngle;
    u8 projection;
    u16 verticalFov;
    fx32 nearPlaneDist;
    fx32 farPlaneDist;
} CameraSettings;

static const CameraSettings sCameraTypes[] = {
    [CAMERA_TYPE_DEFAULT] = {
        .distance = FX32_CONST(666.922119140625),
        .cameraAngle = { -F32_DEG_TO_IDX(59.051513671875), 0, 0 },
        .projection = CAMERA_PROJECTION_PERSPECTIVE,
        .verticalFov = F32_DEG_TO_IDX(8.0914306640625),
        .nearPlaneDist = CAMERA_DEFAULT_NEAR_CLIP,
        .farPlaneDist = CAMERA_DEFAULT_FAR_CLIP,
    },
    [CAMERA_TYPE_PASTORIA_GYM] = {
        .distance = FX32_CONST(666.922119140625),
        .cameraAngle = { -F32_DEG_TO_IDX(68.367919921875), 0, 0 },
        .projection = CAMERA_PROJECTION_PERSPECTIVE,
        .verticalFov = F32_DEG_TO_IDX(8.0914306640625),
        .nearPlaneDist = CAMERA_DEFAULT_NEAR_CLIP,
        .farPlaneDist = CAMERA_DEFAULT_FAR_CLIP,
    },
    [CAMERA_TYPE_ZOOMED_IN] = {
        .distance = FX32_CONST(515.4560546875),
        .cameraAngle = { -F32_DEG_TO_IDX(54.656982421875), 0, 0 },
        .projection = CAMERA_PROJECTION_PERSPECTIVE,
        .verticalFov = F32_DEG_TO_IDX(10.458984375),
        .nearPlaneDist = CAMERA_DEFAULT_NEAR_CLIP,
        .farPlaneDist = CAMERA_DEFAULT_FAR_CLIP,
    },
    [CAMERA_TYPE_CANALAVE_GYM] = {
        .distance = FX32_CONST(666.922119140625),
        .cameraAngle = { -F32_DEG_TO_IDX(59.051513671875), 0, 0 },
        .projection = CAMERA_PROJECTION_PERSPECTIVE,
        .verticalFov = F32_DEG_TO_IDX(8.0914306640625),
        .nearPlaneDist = CAMERA_DEFAULT_NEAR_CLIP,
        .farPlaneDist = CAMERA_DEFAULT_FAR_CLIP,
    },
    [CAMERA_TYPE_INTERIOR_ORTHOGRAPHIC] = {
        .distance = FX32_CONST(1563.537841796875),
        .cameraAngle = { -F32_DEG_TO_IDX(50.086669921875), 0, 0 },
        .projection = CAMERA_PROJECTION_ORTHOGRAPHIC,
        .verticalFov = F32_DEG_TO_IDX(3.5211181640625),
        .nearPlaneDist = CAMERA_DEFAULT_NEAR_CLIP,
        .farPlaneDist = FX32_ONE * 1735,
    },
    [CAMERA_TYPE_SPEAR_PILLAR] = {
        .distance = FX32_CONST(316.501220703125),
        .cameraAngle = { -F32_DEG_TO_IDX(59.0460205078125), 0, 0 },
        .projection = CAMERA_PROJECTION_PERSPECTIVE,
        .verticalFov = F32_DEG_TO_IDX(16.8804931640625),
        .nearPlaneDist = FX32_ONE * 10,
        .farPlaneDist = FX32_ONE * 1008,
    },
    [CAMERA_TYPE_MT_CORONET_EXT_SOUTH] = {
        .distance = FX32_CONST(866.554443359375),
        .cameraAngle = { -F32_DEG_TO_IDX(73.1085205078125), 0, 0 },
        .projection = CAMERA_PROJECTION_PERSPECTIVE,
        .verticalFov = F32_DEG_TO_IDX(6.3336181640625),
        .nearPlaneDist = FX32_ONE * 115,
        .farPlaneDist = FX32_ONE * 1221,
    },
    [CAMERA_TYPE_MT_CORONET_EXT_NORTH] = {
        .distance = FX32_CONST(666.922119140625),
        .cameraAngle = { -F32_DEG_TO_IDX(59.0460205078125), 0, 0 },
        .projection = CAMERA_PROJECTION_PERSPECTIVE,
        .verticalFov = F32_DEG_TO_IDX(8.0914306640625),
        .nearPlaneDist = FX32_ONE * 153,
        .farPlaneDist = FX32_ONE * 1031,
    },
    [CAMERA_TYPE_STARK_MOUNTAIN_ROOM_2] = {
        .distance = FX32_CONST(662.922119140625),
        .cameraAngle = { -F32_DEG_TO_IDX(70.4718017578125), 0, 0 },
        .projection = CAMERA_PROJECTION_PERSPECTIVE,
        .verticalFov = F32_DEG_TO_IDX(9.8492431640625),
        .nearPlaneDist = CAMERA_DEFAULT_NEAR_CLIP,
        .farPlaneDist = FX32_ONE * 1034,
    },
    [CAMERA_TYPE_OREBURGH_GYM] = {
        .distance = FX32_CONST(357.6044921875),
        .cameraAngle = { -F32_DEG_TO_IDX(40.5889892578125), 0, 0 },
        .projection = CAMERA_PROJECTION_PERSPECTIVE,
        .verticalFov = F32_DEG_TO_IDX(15.029296875),
        .nearPlaneDist = CAMERA_DEFAULT_NEAR_CLIP,
        .farPlaneDist = CAMERA_DEFAULT_FAR_CLIP,
    },
    [CAMERA_TYPE_VEILSTONE_GYM] = {
        .distance = FX32_CONST(1202.355712890625),
        .cameraAngle = { -F32_DEG_TO_IDX(60.8038330078125), 0, 0 },
        .projection = CAMERA_PROJECTION_PERSPECTIVE,
        .verticalFov = F32_DEG_TO_IDX(4.5758056640625),
        .nearPlaneDist = CAMERA_DEFAULT_NEAR_CLIP,
        .farPlaneDist = FX32_ONE * 1746,
    },
    [CAMERA_TYPE_SLIGHTLY_ZOOMED_OUT] = {
        .distance = FX32_CONST(675.833251953125),
        .cameraAngle = { -F32_DEG_TO_IDX(57.8155517578125), 0, 0 },
        .projection = CAMERA_PROJECTION_PERSPECTIVE,
        .verticalFov = F32_DEG_TO_IDX(8.0914306640625),
        .nearPlaneDist = FX32_ONE * 230,
        .farPlaneDist = FX32_ONE * 1127,
    },
    [CAMERA_TYPE_CAVE] = {
        .distance = FX32_CONST(574.577880859375),
        .cameraAngle = { -F32_DEG_TO_IDX(63.2647705078125), 0, 0 },
        .projection = CAMERA_PROJECTION_PERSPECTIVE,
        .verticalFov = F32_DEG_TO_IDX(9.4976806640625),
        .nearPlaneDist = CAMERA_DEFAULT_NEAR_CLIP,
        .farPlaneDist = CAMERA_DEFAULT_FAR_CLIP,
    },
    [CAMERA_TYPE_IRON_ISLAND_CAVE] = {
        .distance = FX32_CONST(515.4560546875),
        .cameraAngle = { -F32_DEG_TO_IDX(47.7960205078125), 0, 0 },
        .projection = CAMERA_PROJECTION_PERSPECTIVE,
        .verticalFov = F32_DEG_TO_IDX(10.458984375),
        .nearPlaneDist = CAMERA_DEFAULT_NEAR_CLIP,
        .farPlaneDist = CAMERA_DEFAULT_FAR_CLIP,
    },
    [CAMERA_TYPE_HALL_OF_ORIGIN] = {
        .distance = FX32_CONST(169.462158203125),
        .cameraAngle = { -F32_DEG_TO_IDX(78.37646484375), 0, 0 },
        .projection = CAMERA_PROJECTION_PERSPECTIVE,
        .verticalFov = F32_DEG_TO_IDX(29.5367431640625),
        .nearPlaneDist = FX32_ONE * 10,
        .farPlaneDist = FX32_ONE * 1008,
    },
    [CAMERA_TYPE_LAKE_ACUITY] = {
        .distance = FX32_CONST(653.929443359375),
        .cameraAngle = { -F32_DEG_TO_IDX(54.656982421875), 0, 0 },
        .projection = CAMERA_PROJECTION_PERSPECTIVE,
        .verticalFov = F32_DEG_TO_IDX(8.349609375),
        .nearPlaneDist = CAMERA_DEFAULT_NEAR_CLIP,
        .farPlaneDist = CAMERA_DEFAULT_FAR_CLIP,
    },
    [CAMERA_TYPE_UNUSED_16] = {
        .distance = FX32_CONST(330.921875),
        .cameraAngle = { -F32_DEG_TO_IDX(59.051513671875), 0, 0 },
        .projection = CAMERA_PROJECTION_PERSPECTIVE,
        .verticalFov = F32_DEG_TO_IDX(15.4742431640625),
        .nearPlaneDist = CAMERA_DEFAULT_NEAR_CLIP,
        .farPlaneDist = CAMERA_DEFAULT_FAR_CLIP,
    },
};

void FieldCamera_Create(const VecFx32 *_target, FieldSystem *fieldSystem, const enum CameraType configID, const BOOL withHistory)
{
    const VecFx32 *target = _target;
    const CameraSettings *config = &sCameraTypes[configID];

    GF_ASSERT(configID < NELEMS(sCameraTypes));

    fieldSystem->camera = Camera_Alloc(HEAP_ID_FIELD1);

    Camera_InitWithTarget(target, config->distance, &config->cameraAngle, config->verticalFov, config->projection, TRUE, fieldSystem->camera);
    Camera_SetAsActive(fieldSystem->camera);
    Camera_SetClipping(config->nearPlaneDist, config->farPlaneDist, fieldSystem->camera);

    if (withHistory) {
        Camera_InitHistory(FIELD_CAMERA_HISTORY_SIZE, FIELD_CAMERA_DELAY, CAMERA_DELAY_Y, HEAP_ID_FIELD1, fieldSystem->camera);
    }
}

void FieldCamera_Delete(FieldSystem *fieldSystem)
{
    Camera_ClearActive();
    Camera_DeleteHistory(fieldSystem->camera);
    Camera_Delete(fieldSystem->camera);
}
