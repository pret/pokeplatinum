#include "ilobby/dwci_lobbybase.h"

UnkFuncPtr_0225B6E4 UnkClass_ov66_0225B6E4::Unk_ov66_0225B6E4 = 0;

void *UnkClass_ov66_0225B6E4::operator new(std::size_t param0) throw()
{
    if (param0 == 0) {
        param0 = 1;
    }

    while (TRUE) {
        void *v0 = DWC_Alloc(DWC_ALLOCTYPE_AUTH, param0);

        if (v0) {
            return v0;
        }

        UnkFuncPtr_0225B6E4 v1 = UnkClass_ov66_0225B6E4::UnkClass_ov66_0225B6E4_InlineFunc0(0);
        UnkClass_ov66_0225B6E4::UnkClass_ov66_0225B6E4_InlineFunc0(v1);

        if (v1) {
            (*v1)();
        } else {
            return NULL;
        }
    }
}
