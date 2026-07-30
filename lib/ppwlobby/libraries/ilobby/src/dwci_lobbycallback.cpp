#include "ilobby/dwci_lobbycallback.h"

BOOL UnkClass_ov66_0224640C::ov66_0224640C(u32 param0)
{
    UnkClass_ov66_02243C74 v0(param0, NULL);
    UnkClass_ov66_0224640C_UnkSet::iterator v1 = unk_00.find(&v0);
    if (v1 == unk_00.end()) {
        return FALSE;
    }

    delete *v1;
    unk_00.erase(v1);
    return TRUE;
}

void UnkClass_ov66_0224640C::ov66_0224649C()
{
    for (UnkClass_ov66_0224640C_UnkSet::iterator v0 = unk_00.begin(); v0 != unk_00.end();) {
        delete *v0;
        unk_00.erase(v0++);
    }
}
