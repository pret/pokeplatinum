#include "scrcmd_outfit.h"

#include <nitro.h>

#include "field/field_system.h"

#include "constants/savedata/vars_flags.h"

#include "field_script_context.h"
#include "inlines.h"
#include "map_object.h"
#include "player_avatar.h"
#include "script_manager.h"

BOOL ScrCmd_SetPlayerOutfit(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 outfit = ScriptContext_GetVar(ctx);
    MapObject *player = MapObjectMan_GetPlayerMapObject(fieldSystem->mapObjMan);
    u16 *saved = FieldSystem_GetVarPointer(fieldSystem, VAR_PLAYER_OUTFIT);

    GF_ASSERT(player != NULL);
    GF_ASSERT(saved != NULL);

    MapObject_SetPlttVariant(player, outfit);
    *saved = outfit;

    return FALSE;
}
