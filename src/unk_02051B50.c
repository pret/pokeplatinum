#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02073C74_decl.h"
#include "struct_decls/struct_party_decl.h"

#include "overlay006/struct_ov6_02240D5C.h"

#include "unk_02051B50.h"
#include "unk_02054884.h"
#include "unk_02073C2C.h"
#include "overlay005/ov5_021DDBE8.h"

// These should absolutely live somewhere else (eventually), but they're here for now
// to reduce overall refactoring load and establish baseline readability.
#define SEQ_BA_POKE         1116        // Battle Wild Pokemon
#define SEQ_BA_GYM          1117        // Battle Gym Leader
#define SEQ_BA_DPOKE1       1118        // Battle Lake Guardians (Uxie / Mesprit / Azelf)
#define SEQ_BA_TRAIN        1119        // Battle Trainer
#define SEQ_BA_AKAGI        1120        // Battle Cyrus
#define SEQ_BA_DPOKE2       1121        // Battle Dialga / Palkia
#define SEQ_BA_CHANP        1122        // Battle Champion
#define SEQ_BA_GINGA        1123        // Battle Galactic Grunt
#define SEQ_BA_RIVAL        1124        // Battle Rival
#define SEQ_BA_SECRET1      1125        // Batlte Arceus
#define SEQ_BA_SECRET2      1126        // Battle Legendary Birds, Rotom, Heatran, Regigigas, Darkrai
#define SEQ_BA_GINGA3       1133        // Battle Galactic Commander
#define SEQ_BA_TENNO        1136        // Battle Elite Four
#define SEQ_PL_BA_GIRA      1201        // Battle Giratina
#define SEQ_PL_BA_BRAIN     1202        // Battle Frontier Brain
#define SEQ_PL_BA_REGI      1204        // Battle Regi trio (not Regigigas)

// need to research why these start at 0x000C
#define OREBURGH_GYM_ENC        0x000C      // Roark
#define ETERNA_GYM_ENC          0x000D      // Gardenia
#define PASTORIA_GYM_ENC        0x000E      // Crasher Wake
#define VEILSTONE_GYM_ENC       0x000F      // Maylene
#define HEARTHOME_GYM_ENC       0x0010      // Fantina
#define SNOWPOINT_GYM_ENC       0x0011      // Candice
#define CANALAVE_GYM_ENC        0x0012      // Byron
#define SUNYSHORE_GYM_ENC       0x0013      // Volkner
#define ELITE_FOUR_ENC_1        0x0014      // Aaron
#define ELITE_FOUR_ENC_2        0x0015      // Bertha
#define ELITE_FOUR_ENC_3        0x0016      // Flint
#define ELITE_FOUR_ENC_4        0x0017      // Lucian
#define CHAMPION_ENC            0x0018      // Cynthia
#define LEGENDARY_POKE_ENC_1    0x0019      // Roamers, Heatran, Regigigas, Darkrai, Shaymin
#define LEGENDARY_POKE_ENC_2    0x001A      // Dialga, Palkia, Lake Guardians, Arceus
#define GALACTIC_GRUNT_ENC      0x001B      // Grunts
#define GALACTIC_LEADER_ENC     0x001C      // Mars, Jupiter, Saturn, Cyrus
#define FRONTIER_ENC            0x001D      // Frontier / Wi-Fi Battles
#define DOUBLE_ENC              0x001E      // 2v2s, wild battles with partner
#define CATCHALL_ENC            0xFFFF      // catch-all?

typedef struct {
    u16 cutinVFX;
    u16 bgmSEQID;
} EncEffectsDataPair;

enum {
    // Gym Leaders
    ENCFX_OREBURGH_GYM_LEADER,
    ENCFX_ETERNA_GYM_LEADER,
    ENCFX_PASTORIA_GYM_LEADER,
    ENCFX_VEILSTONE_GYM_LEADER,
    ENCFX_HEARTHOME_GYM_LEADER,
    ENCFX_SNOWPOINT_GYM_LEADER,
    ENCFX_CANALAVE_GYM_LEADER,
    ENCFX_SUNYSHORE_GYM_LEADER,

    // Elite Four
    ENCFX_ELITE_FOUR_1,
    ENCFX_ELITE_FOUR_2,
    ENCFX_ELITE_FOUR_3,
    ENCFX_ELITE_FOUR_4,

    // Champion
    ENCFX_CHAMPION,

    // Rival
    ENCFX_RIVAL,

    // Legendary Pokemon
    ENCFX_SHAYMIN,
    ENCFX_DIALGA_PALKIA,
    ENCFX_UXIE_AZELF,
    ENCFX_MESPRIT,
    ENCFX_ARCEUS,
    ENCFX_REGIGIGAS_HEATRAN,
    ENCFX_CRESSELIA,
    ENCFX_ARTICUNO_ZAPDOS_MOLTRES,
    ENCFX_GIRATINA,
    ENCFX_REGIROCK_REGICE_REGISTEEL,

    // Team Galactic
    ENCFX_GALACTIC_GRUNT,
    ENCFX_GALACTIC_COMMANDER,
    ENCFX_GALACTIC_LEADER,

    // Other Special Trainers
    ENCFX_FRONTIER_TRAINER,
    ENCFX_LINK_WIFI_BATTLE,
    ENCFX_DOUBLE_BATTLE_TRAINER,
    ENCFX_DOUBLE_BATTLE_POKEMON,
    ENCFX_FRONTIER_BRAIN,
    ENCFX_DOUBLE_BATTLE_GYM_LEADER,

    // Generic Trainers and Pokemon
    ENCFX_GENERIC_TRAINER,
    ENCFX_GENERIC_POKEMON,

    ENCFX_NUM_ENTRIES
};

static const EncEffectsPair Unk_020EC208[ENCFX_NUM_ENTRIES] = {
    // Gym leaders
    {OREBURGH_GYM_ENC,      SEQ_BA_GYM},            // Roark
    {ETERNA_GYM_ENC,        SEQ_BA_GYM},            // Gardenia
    {PASTORIA_GYM_ENC,      SEQ_BA_GYM},            // Crasher Wake
    {VEILSTONE_GYM_ENC,     SEQ_BA_GYM},            // Maylene
    {HEARTHOME_GYM_ENC,     SEQ_BA_GYM},            // Fantina
    {SNOWPOINT_GYM_ENC,     SEQ_BA_GYM},            // Candice
    {CANALAVE_GYM_ENC,      SEQ_BA_GYM},            // Byron
    {SUNYSHORE_GYM_ENC,     SEQ_BA_GYM},            // Volkner

    // Elite four
    {ELITE_FOUR_ENC_1,      SEQ_BA_TENNO},          // Aaron
    {ELITE_FOUR_ENC_2,      SEQ_BA_TENNO},          // Bertha
    {ELITE_FOUR_ENC_3,      SEQ_BA_TENNO},          // Flint
    {ELITE_FOUR_ENC_4,      SEQ_BA_TENNO},          // Lucian

    // Champion
    {CHAMPION_ENC,          SEQ_BA_CHANP},          // Champion (Cynthia)

    // Rival
    {CATCHALL_ENC,          SEQ_BA_RIVAL},          // Rival (Barry/Cedric)
    
    // Legendary Pokemon
    {LEGENDARY_POKE_ENC_1,  SEQ_BA_POKE},           // Shaymin
    {LEGENDARY_POKE_ENC_2,  SEQ_BA_DPOKE2},         // Dialga, Palkia
    {LEGENDARY_POKE_ENC_2,  SEQ_BA_DPOKE1},         // Uxie, Azelf
    {CATCHALL_ENC,          SEQ_BA_DPOKE1},         // Mesprit (roaming)
    {LEGENDARY_POKE_ENC_2,  SEQ_BA_SECRET1},        // Arceus
    {LEGENDARY_POKE_ENC_1,  SEQ_BA_SECRET2},        // Regigigas, Heatran
    {CATCHALL_ENC,          SEQ_BA_POKE},           // Cresselia (roaming)
    {CATCHALL_ENC,          SEQ_BA_SECRET2},        // Articuno, Zapdos, Moltres (roaming)
    {LEGENDARY_POKE_ENC_1,  SEQ_PL_BA_GIRA},        // Giratina
    {LEGENDARY_POKE_ENC_1,  SEQ_PL_BA_REGI},        // Regirock, Regice, Registeel

    // Team Galactic
    {GALACTIC_GRUNT_ENC,    SEQ_BA_GINGA},          // Grunts
    {GALACTIC_LEADER_ENC,   SEQ_BA_GINGA3},         // Commanders (Mars, Jupiter, Saturn)
    {GALACTIC_LEADER_ENC,   SEQ_BA_AKAGI},          // Cyrus

    // Other special encounter types
    {FRONTIER_ENC,          SEQ_BA_TRAIN},          // Frontier trainers
    {FRONTIER_ENC,          SEQ_BA_TRAIN},          // Link/Wi-Fi battles
    {DOUBLE_ENC,            SEQ_BA_TRAIN},          // Double-battle against a trainer
    {DOUBLE_ENC,            SEQ_BA_POKE},           // Wild encounters with a partner NPC
    {FRONTIER_ENC,          SEQ_PL_BA_BRAIN},       // Frontier Brains (Palmer, Thorton, Argenta, Dahlia, Darach)
    {DOUBLE_ENC,            SEQ_BA_GYM},            // Double-battle against a gym leader (Volkner+Flint, specifically)

    // All other encounters
    {CATCHALL_ENC,          SEQ_BA_TRAIN},          // Generic trainer
    {CATCHALL_ENC,          SEQ_BA_POKE}            // Generic wild Pokemon
};

static u32 EncEffects_GetEffectsForTrainerClass(u32 param0);
static u32 EncEffects_GetEffectsForWildMon(Party * param0, int param1);
static u32 EncEffects_GetEffectsForBattle(const UnkStruct_ov6_02240D5C * param0);
static u32 sub_02051BBC(u32 param0, const UnkStruct_ov6_02240D5C * param1);
static u32 sub_02051BE8(u32 param0, const UnkStruct_ov6_02240D5C * param1);


// Fight type flag definitions
// The fight type structure is a sequence of bits that tell us stuff
// about the encounter
#define FIGHT_TYPE_POKEMON           0      // bit 1 off -> this is a fight against a Pokemon
#define FIGHT_TYPE_TRAINER           1      // bit 1 on -> this is a fight against a trainer
#define FIGHT_TYPE_DOUBLE       1 << 1      // bit 2 on -> this is a 2vs2 battle
#define FIGHT_TYPE_LINK         1 << 2      // bit 3 on -> this is a link battle (or a wi-fi battle)
#define FIGHT_TYPE_FRONTIER     1 << 7      // bit 8 on -> this is a fight in the battle frontier

static u32 EncEffects_GetEffectsForBattle (const UnkStruct_ov6_02240D5C * battleData)
{
    u32 fightType = battleData->unk_00;
    u32 encEffects;

    if (fightType & FIGHT_TYPE_TRAINER) {
        encEffects = EncEffects_GetEffectsForTrainerClass(battleData->unk_28[1].unk_01);

        if (fightType & FIGHT_TYPE_FRONTIER) {
            if (encEffects == ENCFX_FRONTIER_BRAIN) {
                return encEffects;
            }

            if (fightType & FIGHT_TYPE_DOUBLE) {
                return ENCFX_DOUBLE_BATTLE_TRAINER;
            }

            return ENCFX_FRONTIER_TRAINER;
        }

        if ((encEffects == ENCFX_GALACTIC_GRUNT) || 
            (encEffects == ENCFX_GALACTIC_COMMANDER) || 
            (encEffects == ENCFX_GALACTIC_LEADER)  ) {
            return encEffects;
        }

        // Checking for a double battle here introduces a bug: it implicitly
        // overrides the behavior for any given Special Trainer.
        // Suppose, for example, that the Gym Leader fight against Roark was
        // a Double Battle. 
        if (fightType & FIGHT_TYPE_DOUBLE) {
            if (encEffects == ENCFX_SUNYSHORE_GYM_LEADER) {
                return ENCFX_DOUBLE_BATTLE_GYM_LEADER;
            }

            return ENCFX_DOUBLE_BATTLE_TRAINER;
        }

        if (fightType & FIGHT_TYPE_LINK) {
            return ENCFX_LINK_WIFI_BATTLE;
        }

        return encEffects;
    }

    encEffects = EncEffects_GetEffectsForWildMon(battleData->unk_04[1], battleData->unk_134);

    if (encEffects < 34) {
        return encEffects;
    }

    if (v0 & 0x2) {
        return 30;
    }

    return encEffects;
}

static u32 sub_02051BBC (u32 param0, const UnkStruct_ov6_02240D5C * param1)
{
    GF_ASSERT(param0 < 35);

    if (Unk_020EC208[param0].unk_00 == 0xffff) {
        return ov5_021DEEC8(param1);
    } else {
        return Unk_020EC208[param0].unk_00;
    }
}

static u32 sub_02051BE8 (u32 param0, const UnkStruct_ov6_02240D5C * param1)
{
    GF_ASSERT(param0 < 35);
    return Unk_020EC208[param0].unk_02;
}

u32 sub_02051C00 (const UnkStruct_ov6_02240D5C * param0)
{
    u32 v0;

    v0 = EncEffects_GetEffectsForBattle(param0);
    return sub_02051BBC(v0, param0);
}

u32 sub_02051C10 (const UnkStruct_ov6_02240D5C * param0)
{
    u32 v0;

    v0 = EncEffects_GetEffectsForBattle(param0);
    return sub_02051BE8(v0, param0);
}

static u32 EncEffects_GetEffectsForTrainerClass (u32 trainerClass)
{
    switch (trainerClass) {
        // Gym leaders
        case 62:    return ENCFX_OREBURGH_GYM_LEADER;   // Roark
        case 74:    return ENCFX_ETERNA_GYM_LEADER;     // Gardenia      
        case 75:    return ENCFX_PASTORIA_GYM_LEADER;   // Crasher Wake
        case 76:    return ENCFX_VEILSTONE_GYM_LEADER;  // Maylene
        case 77:    return ENCFX_HEARTHOME_GYM_LEADER;  // Fantina
        case 78:    return ENCFX_SNOWPOINT_GYM_LEADER;  // Candice
        case 64:    return ENCFX_CANALAVE_GYM_LEADER;   // Byron
        case 79:    return ENCFX_SUNYSHORE_GYM_LEADER;  // Volkner

        // Elite Four
        case 65:    return ENCFX_ELITE_FOUR_1;          // Aaron
        case 66:    return ENCFX_ELITE_FOUR_2;          // Bertha
        case 67:    return ENCFX_ELITE_FOUR_3;          // Flint
        case 68:    return ENCFX_ELITE_FOUR_4;          // Lucian

        // Champion
        case 69:    return ENCFX_CHAMPION;              // Cynthia

        // Rival
        case 63:    return ENCFX_RIVAL;                 // Barry/Cedric

        // Team Galactic
        case 73:    return ENCFX_GALACTIC_GRUNT;        // Grunt (Male)
        case 89:    return ENCFX_GALACTIC_GRUNT;        // Grunt (Female)
        case 72:    return ENCFX_GALACTIC_COMMANDER;    // Mars
        case 87:    return ENCFX_GALACTIC_COMMANDER;    // Jupiter
        case 88:    return ENCFX_GALACTIC_COMMANDER;    // Saturn
        case 86:    return ENCFX_GALACTIC_LEADER;       // Cyrus

        // Frontier Brains
        case 97:    return ENCFX_FRONTIER_BRAIN;        // Palmer
        case 99:    return ENCFX_FRONTIER_BRAIN;        // Argenta
        case 100:   return ENCFX_FRONTIER_BRAIN;        // Thorton
        case 101:   return ENCFX_FRONTIER_BRAIN;        // Dahlia
        case 102:   return ENCFX_FRONTIER_BRAIN;        // Darach

        // All other trainers
        default:    return ENCFX_GENERIC_TRAINER;
    }
}

static u32 EncEffects_GetEffectsForWildMon (Party * param0, int param1)
{
    UnkStruct_02073C74 * v0;
    u32 v1;
    u32 v2 = 34;

    v0 = sub_02054A40(param0);
    v1 = sub_02074470(v0, 5, NULL);

    switch (v1) {
    case 492:
        v2 = 14;
        break;
    case 488:
        v2 = 20;
        break;
    case 487:
        v2 = 22;
        break;
    case 379:
    case 378:
    case 377:
        if (param1 != 251) {
            v2 = 23;
        }
        break;
    case 486:
    case 485:
    case 491:
    case 479:
        v2 = 19;
        break;
    case 481:
        v2 = 17;
        break;
    case 480:
    case 482:
        v2 = 16;
        break;
    case 483:
    case 484:
        v2 = 15;
        break;
    case 493:
        v2 = 18;
        break;
    case 146:
    case 144:
    case 145:
        if (param1 != 251) {
            v2 = 21;
        }
        break;
    default:
        break;
    }

    return v2;
}
