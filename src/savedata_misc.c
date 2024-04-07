#include <nitro.h>
#include <string.h>

#include "strbuf.h"
#include "savedata.h"

#include "struct_defs/sentence.h"

#include "unk_02014A84.h"
#include "unk_02014D38.h"
#include "strbuf.h"
#include "savedata.h"
#include "savedata_misc.h"
#include "unk_02027B70.h"
#include "unk_02027F50.h"

int MiscSaveBlock_SaveSize (void)
{
    return sizeof(MiscSaveBlock);
}

void MiscSaveBlock_Init (MiscSaveBlock * param0)
{
    MI_CpuClearFast(param0, sizeof(MiscSaveBlock));

    sub_02027B70(param0->unk_00);
    sub_02027F50(&param0->unk_680);

    MI_CpuFill16(param0->rivalName, 0xffff, 7 + 1);
    MI_CpuFill16(param0->unk_6B4, 0xffff, 10 + 1);

    sub_02014A9C(&param0->introMsg, 4);

    param0->introMsg.id = 0;
    param0->introMsg.words[0] = sub_02014DFC(441, 99);
    param0->introMsg.words[1] = 0xffff;

    {
        int v0;

        for (v0 = 0; v0 < 6 - 1; v0++) {
            param0->extraKey.keys[v0] = 0xffffffff;
            param0->extraKey.oldKeys[v0] = 0xffffffff;
        }
    }
}

MiscSaveBlock * sub_0202783C (SaveData * param0)
{
    return SaveData_SaveTable(param0, 10);
}

const MiscSaveBlock * Save_MiscRO (const SaveData * param0)
{
    return SaveData_SaveTableConst(param0, 10);
}

UnkStruct_02027854 * sub_02027854 (SaveData * param0)
{
    MiscSaveBlock * v0;

    v0 = SaveData_SaveTable(param0, 10);
    return v0->unk_00;
}

UnkStruct_02027860 * sub_02027860 (SaveData * param0)
{
    MiscSaveBlock * v0;

    v0 = SaveData_SaveTable(param0, 10);
    return &v0->unk_680;
}

const u16 * MiscSave_RivalName (const MiscSaveBlock * param0)
{
    return param0->rivalName;
}

void sub_0202787C (MiscSaveBlock * param0, Strbuf *param1)
{
    Strbuf_ToChars(param1, param0->rivalName, 7 + 1);
}

const u16 * sub_02027894 (const MiscSaveBlock * param0)
{
    return param0->unk_6B4;
}

void sub_020278A0 (MiscSaveBlock * param0, Strbuf *param1)
{
    Strbuf_ToChars(param1, param0->unk_6B4, 10 + 1);
}

void sub_020278B8 (MiscSaveBlock * param0)
{
    param0->extraSaveInitalized = 1;
}

u32 sub_020278CC (const MiscSaveBlock * param0)
{
    return param0->extraSaveInitalized;
}

void sub_020278DC (MiscSaveBlock * param0, int param1, int param2, int param3)
{
    param0->favoriteMon = param1;
    param0->favoriteMonForm = param2;
    param0->favoriteMonIsEgg = param3;
}

void sub_02027914 (const MiscSaveBlock * param0, int * param1, int * param2, int * param3)
{
    *param1 = param0->favoriteMon;
    *param2 = param0->favoriteMonForm;
    *param3 = param0->favoriteMonIsEgg;
}

void sub_02027938 (const MiscSaveBlock * param0, Sentence * param1)
{
    *param1 = param0->introMsg;
}

void sub_02027958 (MiscSaveBlock * param0, const Sentence * param1)
{
    param0->introMsg = *param1;
}

void sub_0202797C (const MiscSaveBlock * param0, u8 * param1)
{
    *param1 = param0->recorderColor;
}

void sub_0202798C (MiscSaveBlock * param0, u8 param1)
{
    param0->recorderColor = param1;
}

void sub_020279A8 (const MiscSaveBlock * param0, int param1, u32 * param2, u32 * param3, u8 * param4)
{
    *param2 = param0->extraKey.keys[param1 - 1];
    *param3 = param0->extraKey.oldKeys[param1 - 1];
    *param4 = param0->extraKey.keyFlags[param1 - 1];
}

void sub_020279D0 (MiscSaveBlock * param0, int param1, u32 param2, u32 param3, u8 param4)
{
    param0->extraKey.keys[param1 - 1] = param2;
    param0->extraKey.oldKeys[param1 - 1] = param3;
    param0->extraKey.keyFlags[param1 - 1] = param4;
}
