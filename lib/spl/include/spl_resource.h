#ifndef SPL_RESOURCE_H
#define SPL_RESOURCE_H

#include <nitro/types.h>

#include "struct_defs/struct_020147B8.h"

#define SPL_TEX_ANIM_MAX_FRAMES 8

enum SPLCircleAxis {
    SPL_CIRCLE_AXIS_Z = 0,
    SPL_CIRCLE_AXIS_Y = 1,
    SPL_CIRCLE_AXIS_X = 2,
    SPL_CIRCLE_AXIS_EMITTER = 3, // The emitter's axis
};

enum SPLEmissionType {
    SPL_EMISSION_TYPE_POINT = 0, // A single point
    SPL_EMISSION_TYPE_SPHERE_SURFACE, // Any point on the surface of a sphere
    SPL_EMISSION_TYPE_CIRCLE_BORDER, // Any point on a circle around an axis (specified by flags)
    SPL_EMISSION_TYPE_CIRCLE_BORDER_UNIFORM, // Uniform distribution of points on a circle around an axis (specified by flags)
    SPL_EMISSION_TYPE_SPHERE, // Any point inside a sphere
    SPL_EMISSION_TYPE_CIRCLE, // Any point inside a circle around an axis (specified by flags)
    SPL_EMISSION_TYPE_CYLINDER_SURFACE, // Any point on the surface of a cylinder
    SPL_EMISSION_TYPE_CYLINDER, // Any point inside a cylinder
    SPL_EMISSION_TYPE_HEMISPHERE_SURFACE, // Any point on the surface of a hemisphere (direction specified by flags)
    SPL_EMISSION_TYPE_HEMISPHERE, // Any point inside a hemisphere (direction specified by flags)
};

enum SPLChildRotationType {
    SPL_CHILD_ROT_NONE = 0,
    SPL_CHILD_ROT_INHERIT_ANGLE = 1,
    SPL_CHILD_ROT_INHERIT_ANGLE_AND_VELOCITY = 2,
};

typedef struct SPLArcHdr {
    u32 magic;
    u32 version;
    u16 resCount;
    u16 texCount;
    u32 reserved0;
    u32 resSize;
    u32 texSize;
    u32 texOffset;
    u32 reserved1;
} SPLFileHeader;

typedef union SPLResourceFlags {
    u32 all;
    struct {
        u32 emissionType : 4; // Maps to SPLEmissionType
        u32 drawType : 2;
        u32 circleAxis : 2; // Maps to SPLCircleAxis
        u32 hasScaleAnim : 1;
        u32 hasColorAnim : 1;
        u32 hasAlphaAnim : 1;
        u32 hasTexAnim : 1;
        u32 hasRotation : 1;
        u32 unk_05_5 : 1;
        // Whether the emitter manages itself or not.
        // If set, the emitter will automatically terminate when it reaches the end of its life
        // and all of its particles have died
        u32 selfMaintaining : 1;
        u32 followEmitter : 1;
        u32 hasChildResource : 1;
        u32 unk_06_1 : 2;
        u32 unk_06_3 : 1;
        u32 randomizeLoopedAnim : 1;
        u32 drawChildrenFirst : 1; // If set, child particles will be rendered before parent particles
        u32 hideParent : 1; // If set, only child particles will be rendered
        u32 unk_06_7 : 1;
        u32 hasGravityBehavior : 1;
        u32 hasRandomBehavior : 1;
        u32 hasMagnetBehavior : 1;
        u32 hasSpinBehavior : 1;
        u32 hasCollisionPlaneBehavior : 1;
        u32 hasConvergenceBehavior : 1;
        u32 hasFixedPolygonID : 1;
        u32 childHasFixedPolygonID : 1;
    };
} SPLResourceFlags;

typedef union SPLChildResourceFlags {
    u16 all;
    struct {
        u16 usesBehaviors : 1;
        u16 hasScaleAnim : 1;
        u16 hasAlphaAnim : 1;
        u16 rotationType : 2;
        u16 followEmitter : 1;
        u16 useChildColor : 1;
        u16 drawType : 2;
        u16 unk_03_1 : 2;
        u16 unk_03_3 : 1;
        u16 reserved_03_4 : 4;
    };
} SPLChildResourceFlags;

typedef union {
    u16 val1;
    struct {
        u16 val2_00 : 8;
        u16 val2_01 : 8;
    };
} UnkSPLUnion3; // size=0x2

typedef union {
    u32 unk_00;
    struct {
        u32 unk_04_0 : 8;
        u32 unk_05_0 : 8;
        u32 unk_06_0 : 8;
        u32 unk_07_0 : 8;
    };
} UnkSPLUnion4; // size=0x4

typedef struct SPLResourceHeader {
    SPLResourceFlags flags;
    VecFx32 emitterBasePos;
    fx32 emissionCount; // Number of particles to emit per emission interval
    fx32 unk_14;
    fx32 unk_18;
    VecFx16 unk_1C;
    GXRgb color;
    fx32 unk_24;
    fx32 unk_28;
    fx32 unk_2C;
    fx16 unk_30;
    u16 startDelay; // Delay, in frames, before the emitter starts emitting particles
    s16 minRotation;
    s16 maxRotation;
    u16 unk_38;
    u16 reserved_3A;
    u16 emitterLifeTime;
    u16 particleLifeTime;

    // All of these values are mapped to the range [0, 1]
    // They are used to attenuate the particle's properties at initialization,
    // acting as a sort of randomization factor which scales down the initial values
    struct {
        u32 baseScale : 8; // Damping factor for the base scale of the particles (0 = no damping)
        u32 lifeTime : 8;
        u32 initVel : 8; // Attenuation factor for the initial velocity of the particles (0 = no attenuation)
        u32 : 8;
    } randomAttenuation;

    struct {
        u32 unk_00_0 : 8;
        u32 unk_01_0 : 8;
        u32 airResistance : 8;
        u32 textureIndex : 8;
        u32 loopFrames : 8;
        u32 unk_05_0 : 16;
        u32 unk_07_0 : 2;
        u32 unk_07_2 : 2;
        u32 unk_07_4 : 3;
        u32 unk_07_7 : 1;
        u32 unk_08_0 : 1;
        u32 unk_08_1 : 1;
        u32 unk_08_2 : 3;
        u32 unk_08_5 : 27;
    } misc;
    fx16 unk_54;
    fx16 unk_56;
    struct {
        u32 unk_00_0 : 8;
        u32 reserved_01_0 : 24;
    } unk_58;
} SPLResourceHeader; // size=0x5C

typedef struct SPLScaleAnim {
    fx16 unk_00;
    fx16 unk_02;
    fx16 unk_04;
    UnkSPLUnion3 unk_06;
    struct {
        u16 unk_00_0 : 1;
        u16 reserved_00_1 : 15;
    } unk_08;
    u16 reserved_0A;
} SPLScaleAnim; // size=0xc

typedef struct SPLColorAnim {
    GXRgb startColor;
    GXRgb endColor;
    UnkSPLUnion4 unk_04;
    struct {
        u16 unk_00_0 : 1;
        u16 unk_00_1 : 1;
        u16 unk_00_2 : 1;
        u16 unk_00_3 : 13;
    } unk_08;
    u16 reserved_0A;
} SPLColorAnim;

typedef struct SPLAlphaAnim {
    union {
        u16 val1;
        struct {
            u16 val2_00_0 : 5;
            u16 val2_00_5 : 5;
            u16 val2_01_2 : 5;
            u16 val2_reserved_01_7 : 1;
        };
    } unk_00;
    struct {
        u16 unk_00_0 : 8;
        u16 unk_01_0 : 1;
        u16 unk_01_1 : 7;
    } unk_02;
    UnkSPLUnion3 unk_04;
    u16 reserved_06;
} SPLAlphaAnim; // size=0x8

typedef struct SPLTexAnim {
    u8 textures[SPL_TEX_ANIM_MAX_FRAMES];
    struct {
        u32 frameCount : 8;
        u32 unk_01_0 : 8;
        u32 randomizeInit : 1; // Randomize the initial texture frame
        u32 unk_02_1 : 1;
        u32 reserved_02_2 : 14;
    } param;
} SPLTexAnim;

typedef struct SPLChildResource {
    SPLChildResourceFlags flags;
    fx16 randomInitVelMag; // Randomization factor for the initial velocity magnitude (0 = no randomization)
    fx16 unk_04;
    u16 lifeTime;
    u8 velocityRatio; // Ratio of the parent particle's velocity to inherit (255 = 100%)
    u8 scaleRatio; // Ratio of the parent particle's scale to inherit (255 = 100%)
    GXRgb color;
    struct {
        u32 emissionCount : 8; // Number of particles to emit per emission interval
        u32 emissionDelay : 8; // Delay, as a fraction of the particle's lifetime, before the particle starts emitting
        u32 emissionInterval : 8;
        u32 textureIndex : 8;
        u32 unk_04_0 : 2;
        u32 unk_04_2 : 2;
        u32 unk_04_4 : 1;
        u32 unk_04_5 : 1;
        u32 unk_04_6 : 1;
        u32 reserved_04_7 : 25;
    } misc;
} SPLChildResource;

typedef struct SPLResource {
    SPLResourceHeader *header;
    SPLScaleAnim *scaleAnim;
    SPLColorAnim *colorAnim;
    SPLAlphaAnim *alphaAnim;
    SPLTexAnim *texAnim;
    SPLChildResource *childResource;
    SPLBehavior *behaviors;
    u16 behaviorCount;
    u16 reserved_1E;
} SPLResource;

#endif // SPL_RESOURCE_H
