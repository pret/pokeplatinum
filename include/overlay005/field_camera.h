#ifndef POKEPLATINUM_OV5_FIELD_CAMERA_H
#define POKEPLATINUM_OV5_FIELD_CAMERA_H

#include <nitro/fx/fx.h>

#include "constants/fieldmap.h"

#include "field/field_system_decl.h"

void FieldCamera_Create(const VecFx32 *_target, FieldSystem *fieldSystem, enum CameraType configID, BOOL withHistory);
void FieldCamera_Delete(FieldSystem *fieldSystem);

#endif // POKEPLATINUM_OV5_FIELD_CAMERA_H
