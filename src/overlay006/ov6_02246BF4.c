#include "overlay006/ov6_02246BF4.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system_decl.h"

#include "savedata.h"
#include "script_manager.h"
#include "unk_0202D7A8.h"

BOOL ov6_02246BF4(SaveData *param0, FieldSystem *fieldSystem)
{
    u8 *v0;

    v0 = sub_0202D9CC(sub_0202D834(param0));

    if ((*v0) > 0) {
        //(*v0)--;

        if ((*v0) == 0) {
            ScriptManager_Set(fieldSystem, 2032, NULL);
            return 1;
        }
    }

    return 0;
}
