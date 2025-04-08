#include "unk_02026150.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02026030_decl.h"
#include "struct_defs/struct_02026030_t.h"
#include "struct_defs/struct_0202610C.h"

#include "message.h"
#include "savedata.h"
#include "strbuf.h"
#include "unk_0202602C.h"

BattleRegulation Unk_02100880[] = {
    {
        { 0xffff },
        0x0,
        0x3,
        0x32,
        0x0,
        0x0,
        0x1,
        0x0,
        0x0,
        0x0,
        0x0,
    },
    {
        { 0xffff },
        0x50,
        0x3,
        0x1E,
        -20,
        -20,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
    },
    {
        { 0xffff },
        0x0,
        0x3,
        0x5,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
    },
    {
        { 0xffff },
        0x0,
        0x3,
        0x32,
        0x0,
        -99,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
    },
    {
        { 0xffff },
        0x0,
        0x4,
        0x32,
        0x0,
        0x0,
        0x1,
        0x0,
        0x0,
        0x0,
        0x0,
    },
};

BattleRegulation Unk_02100860 = {
    { 0xffff },
    0x0,
    0x6,
    0x64,
    0x0,
    0x0,
    0x1,
    0x1,
    0x1,
    0x1,
    0x0,
};

const BattleRegulation *sub_02026150(SaveData *saveData, int param1)
{
    UnkStruct_02026030 *v0 = NULL;

    if (param1 < NELEMS(Unk_02100880)) {
        return &Unk_02100880[param1];
    }

    v0 = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_REGULATION_BATTLES);
    return &v0->unk_00[0];
}

void sub_0202616C(SaveData *param0, int param1, Strbuf *param2, int param3)
{
    MessageLoader *v0;
    UnkStruct_02026030 *v1 = NULL;

    if (param1 < NELEMS(Unk_02100880)) {
        v0 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0353, param3);
        MessageLoader_GetStrbuf(v0, 70 + param1, param2);
        MessageLoader_Free(v0);
    } else {
        sub_0202604C(sub_0202610C(param0, 0), param2);
    }
}

const BattleRegulation *sub_020261A8(void)
{
    return &Unk_02100860;
}

int sub_020261B0(const BattleRegulation *param0)
{
    int v0;

    if (param0 == NULL) {
        return 0xff;
    }

    for (v0 = 0; v0 < NELEMS(Unk_02100880); v0++) {
        if (memcmp(param0, &Unk_02100880[v0], sizeof(BattleRegulation)) == 0) {
            return v0;
        }
    }

    return 5;
}
