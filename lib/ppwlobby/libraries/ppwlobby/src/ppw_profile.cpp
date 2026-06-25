#include "ppwlobby/ppw_profile.h"

#include <lobby/dwci_lobby.h>

#include "ilobby/dwci_lobbybase.h"
#include "ilobby/ov66_022364B0.h"
#include "ppwlobby/ov66_0225B6C4.h"
#include "ppwlobby/ppw_parser.h"

void UnkClass_ov66_02241BD8::ov66_02241BD8()
{
    switch (unk_24) {
    case 0:
        unk_24 = (unk_2C && unk_30) ? 1 : 0;
        if (unk_24 == 0) {
            break;
        }
    case 1:
        if (unk_00.UnkClass_ov66_02241BD8_SubClass_InlineFunc4().unk_0C) {
            unk_24 = 2;
        }
        break;
    case 2:
        if (unk_34) {
            unk_24 = 3;
        }
        break;
    case 3:
    default:
        break;
    }
}

BOOL UnkClass_ov66_02241C44::ov66_02241C44(int param0)
{
    std::pair<UnkClass_ov66_02241BD8_Set::iterator, bool> v0;
    UnkClass_ov66_02241BD8 *v1 = new UnkClass_ov66_02241BD8(param0);

    v0 = unk_00.insert(v1);
    if (!v0.second) {
        delete v1;
        return TRUE;
    }

    return TRUE;
}

BOOL UnkClass_ov66_02241C44::ov66_02241D40(int param0)
{
    for (UnkClass_ov66_02241BD8_Set::iterator v0 = unk_00.begin(); v0 != unk_00.end(); v0++) {
        if ((*v0)->UnkClass_ov66_02241BD8_InlineFunc12() == param0) {
            delete *v0;
            unk_00.erase(v0);
            return TRUE;
        }
    }
    return FALSE;
}

UnkClass_ov66_02241BD8 *UnkClass_ov66_02241C44::ov66_02241DCC(int param0)
{
    if (param0 == unk_0C.UnkClass_ov66_02241BD8_InlineFunc12()) {
        return &unk_0C;
    }
    UnkClass_ov66_02241BD8_Set::const_iterator v0 = std::find_if(unk_00.begin(), unk_00.end(), UnkClass_ov66_02241BD8::UnkClass_ov66_02241BD8_UnaryFunc(param0));
    return v0 == unk_00.end() ? NULL : *v0;
}

void UnkClass_ov66_02241C44::ov66_02241E54()
{
    for (UnkClass_ov66_02241BD8_Set::iterator v0 = unk_00.begin(); v0 != unk_00.end();) {
        delete *v0;
        unk_00.erase(v0++);
    }
}

BOOL UnkClass_ov66_02241C44::ov66_02241ED0() const
{
    return unk_00.size() + 1 == PPW_LOBBY_MAX_PLAYER_NUM_MAIN && ov66_02241F2C().size() + 1 == PPW_LOBBY_MAX_PLAYER_NUM_MAIN;
}

std::vector<s32, PPW_Allocator<s32> > UnkClass_ov66_02241C44::ov66_02241F2C() const
{
    std::vector<s32, PPW_Allocator<s32> > v0;
    v0.reserve(unk_00.size());
    for (UnkClass_ov66_02241BD8_Set::const_iterator v1 = unk_00.begin(); v1 != unk_00.end(); v1++) {
        if ((*v1)->UnkClass_ov66_02241BD8_InlineFunc10()) {
            v0.push_back((*v1)->UnkClass_ov66_02241BD8_InlineFunc12());
        }
    }
    return v0;
}

void UnkClass_ov66_02241C44::ov66_02242008(s32 param0, const u8 *param1, u32 param2)
{
    unk_0C = UnkClass_ov66_02241BD8(param0);
    unk_0C.UnkClass_ov66_02241BD8_InlineFunc5(UnkClass_ov66_02241BD8::UnkClass_ov66_02241BD8_SubStruct1());
    unk_0C.UnkClass_ov66_02241BD8_InlineFunc0(param1, param2, FALSE);
    unk_0C.UnkClass_ov66_02241BD8_InlineFunc9();
}

BOOL UnkClass_ov66_02241C44::ov66_022423B0() const
{
    UnkClass_ov66_02241BD8_Set::const_iterator v0 = std::find_if(unk_00.begin(), unk_00.end(), std::not1(std::mem_fun(&UnkClass_ov66_02241BD8::ov66_0224239C)));
    return v0 == unk_00.end();
}

void UnkClass_ov66_02241C44::ov66_02242460()
{
    for (UnkClass_ov66_02241BD8_Set::iterator v0 = unk_00.begin(); v0 != unk_00.end(); v0++) {
        (*v0)->ov66_02241BD8();
        switch ((*v0)->UnkClass_ov66_02241BD8_InlineFunc11()) {
        case 0:
        case 1:
            break;
        case 2: {
            const UnkClass_ov66_02241BD8::UnkClass_ov66_02241BD8_SubStruct1 &v1 = (*v0)->UnkClass_ov66_02241BD8_InlineFunc7();
            const UnkClass_ov66_02241BD8::UnkClass_ov66_02241BD8_SubStruct2 &v2 = (*v0)->UnkClass_ov66_02241BD8_InlineFunc3();

            PPW_LobbySystemProfile v3 = v1.UnkClass_ov66_02241BD8_SubStruct1_InlineFunc0();

            ov66_02234FC4()->UnkClass_ov66_0225B6C4_InlineFunc2().lobbyPlayerConnectedCallback((*v0)->UnkClass_ov66_02241BD8_InlineFunc12(), &v3, ov66_022364B0(v2.unk_00), v2.unk_00.size());
            (*v0)->UnkClass_ov66_02241BD8_InlineFunc9();
            break;
        }
        case 3:
        default:
            break;
        }
    }
}
