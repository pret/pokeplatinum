#include "ilobby/dwci_lobbynewhandler.h"

#include <lobby/dwci_lobby.h>

#include "ilobby/dwci_lobbydata.h"

static UnkClass_ov66_02243B64 *Unk_ov66_0225B6E8 = NULL;
static void *Unk_ov66_0225B6EC = NULL;

static void ov66_022462DC()
{
    chatDisconnect(Unk_ov66_0225B6E8->UnkClass_ov66_02243B64_InlineFunc0());
    UnkClass_ov66_0225B6E4::UnkClass_ov66_0225B6E4_InlineFunc0(0);
}

static void ov66_02246308()
{
    if (Unk_ov66_0225B6EC) {
        DWC_Free(DWC_ALLOCTYPE_AUTH, Unk_ov66_0225B6EC, 0);
        Unk_ov66_0225B6EC = NULL;
    }
    Unk_ov66_0225B6E8->UnkClass_ov66_02243B64_InlineFunc13(DWCi_LOBBY_ERROR_ALLOC);
    UnkClass_ov66_0225B6E4::UnkClass_ov66_0225B6E4_InlineFunc0(ov66_022462DC);
}

BOOL ov66_02246368(UnkClass_ov66_02243B64 *param0)
{
    Unk_ov66_0225B6E8 = param0;
    if (Unk_ov66_0225B6EC) {
        DWC_Free(DWC_ALLOCTYPE_AUTH, Unk_ov66_0225B6EC, 0);
        Unk_ov66_0225B6EC = NULL;
    }

    Unk_ov66_0225B6EC = DWC_Alloc(DWC_ALLOCTYPE_AUTH, 1024);
    if (!Unk_ov66_0225B6EC) {
        return FALSE;
    }

    UnkClass_ov66_0225B6E4::UnkClass_ov66_0225B6E4_InlineFunc0(ov66_02246308);
    return TRUE;
}

void ov66_022463D8()
{
    if (Unk_ov66_0225B6EC) {
        DWC_Free(DWC_ALLOCTYPE_AUTH, Unk_ov66_0225B6EC, 0);
        Unk_ov66_0225B6EC = NULL;
    }
}
