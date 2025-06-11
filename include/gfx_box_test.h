#ifndef POKEPLATINUM_GFX_TEST_BOX_H
#define POKEPLATINUM_GFX_TEST_BOX_H

#include <nitro/fx/fx.h>
#include <nnsys.h>

typedef struct GFXTestBox {
    fx16 width;
    fx16 height;
    fx16 depth;
    u8 padding[2];
    int xScale;
    int yScale;
    int zScale;
} GFXTestBox;

/*
 * @brief Tests whether any face or part of a face of the model's axis-aligned
 * bounding box is inside the view volume.
 *
 * @param model
 * @param position The model's position in the world.
 * @param rotation The model's rotation.
 * @param scale    The model's scale.
 * @return 2 if the model is in view, 0 if it isn't.
 */
u32 GFXBoxTest_IsModelInView(const NNSG3dResMdl *model, const VecFx32 *position, const MtxFx33 *rotation, const VecFx32 *scale);

/*
 * @brief Tests whether any face or part of a face of the given box is inside
 * the view volume.
 *
 * @param position The position of box's corner with the lowest X, Y and Z coordinates.
 * @param box
 * @return 2 if the model is in view, 0 if it isn't.
 */
u32 GFXBoxTest_IsBoxAtPositionInView(const VecFx32 *position, const GFXTestBox *box);

/*
 * @brief Populates a GFXTestBox with the given width, height and depth.
 * The dimensions are scaled down to a fx16 in the process, truncating the
 * lowest bits, which leads to a possible precision loss.
 *
 * @param width    The X-axis dimension of the box. Must be positive.
 * @param height   The Y-axis dimension of the box. Must be positive.
 * @param depth    The Z-axis dimension of the box. Must be positive.
 * @param[out] box The GFXTestBox to be populated.
 */
void GFXBoxTest_MakeBox(const fx32 width, const fx32 height, const fx32 depth, GFXTestBox *box);

#endif // POKEPLATINUM_GFX_TEST_BOX_H
