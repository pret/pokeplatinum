#include <stddef.h>
#include <stdlib.h>
#include <string.h>

#include "common.h"
#include "game_types.h"

#include "move_table.h"
#include "generated/move_battle_effects.h"
#include "generated/move_classes.h"
#include "generated/move_contest_effects.h"
#include "generated/move_flags.h"
#include "generated/move_ranges.h"
#include "generated/moves.h"
#include "generated/pokemon_contest_types.h"
#include "generated/pokemon_types.h"

static const char *enumFile = NULL;
static const char *baseDir  = NULL;

enum { A_MOVE_DATA };
enum { F_ANIM_SCRIPTS, F_MOVE_SCRIPTS };
enum {
    T_MOVE_NAMES,
    T_MOVE_NAMES_UPPERCASE,
    T_MOVE_DESCRIPTIONS,
    T_MOVES_USED_IN_BATTLE,
};

#define L_BATTLE_EFFECT  "enum MoveBattleEffect"
#define L_CONTEST_EFFECT "enum MoveContestEffect"
#define L_CLASS          "enum MoveClass"
#define L_FLAG           "enum MoveFlag"
#define L_RANGE          "enum MoveRange"
#define L_CONTEST_TYPE   "enum PokemonContestType"
#define L_TYPE           "enum PokemonType"

static Driver driver = {
    .depfile = "move_data.d",

    .options = (Option[]) {
        POSITIONAL("ENUMFILE", &enumFile, "Header defining enum Move."),
        POSITIONAL("BASEDIR",  &baseDir,  "Directory of per-move data."),
        { 0 },
    },

    .lookups = (Lookup[]) {
        LOOKUP_ENUM("generated/move_battle_effects.h",   L_BATTLE_EFFECT),
        LOOKUP_ENUM("generated/move_contest_effects.h",  L_CONTEST_EFFECT),
        LOOKUP_ENUM("generated/move_classes.h",          L_CLASS),
        LOOKUP_ENUM("generated/move_flags.h",            L_FLAG),
        LOOKUP_ENUM("generated/move_ranges.h",           L_RANGE),
        LOOKUP_ENUM("generated/pokemon_contest_types.h", L_CONTEST_TYPE),
        LOOKUP_ENUM("generated/pokemon_types.h",         L_TYPE),
        { 0 },
    },

    .outputs = {
        .archives = (Archive[]) {
            [A_MOVE_DATA] = { .filename = "move_data.narc" },
            { 0 },
        },

        .textFiles = (TextFile[]) {
            [F_ANIM_SCRIPTS] = { .filename = "anim_scripts.order" },
            [F_MOVE_SCRIPTS] = { .filename = "move_scripts.order" },
            { 0 },
        },

        .textBanks = (TextBank[]) {
            [T_MOVE_NAMES]           = { .filename = "move_names.json",           .key = 63689 },
            [T_MOVE_NAMES_UPPERCASE] = { .filename = "move_names_uppercase.json", .key = 22192 },
            [T_MOVE_DESCRIPTIONS]    = { .filename = "move_descriptions.json",    .key = 27800 },
            [T_MOVES_USED_IN_BATTLE] = { .filename = "moves_used_in_battle.json", .key = 22758 },
            { 0 },
        },
    },
};

static void ProcMove(dp_node root)
{
    MoveTable data = {
        .class          = dp_u8(dp_lookup_at(root, ".class", L_CLASS)),
        .type           = dp_u8(dp_lookup_at(root, ".type", L_TYPE)),
        .power          = dp_u8_at(root, ".power"),
        .accuracy       = dp_u8_at(root, ".accuracy"),
        .pp             = dp_u8_at(root, ".pp"),
        .effect         = dp_u16(dp_lookup_at(root, ".effect.type", L_BATTLE_EFFECT)),
        .effectChance   = dp_u8_at(root, ".effect.chance"),
        .range          = dp_u16(dp_lookup_at(root, ".range", L_RANGE)),
        .priority       = dp_s8_at(root, ".priority"),
        .contest.effect = dp_u8(dp_lookup_at(root, ".contest.effect", L_CONTEST_EFFECT)),
        .contest.type   = dp_u8(dp_lookup_at(root, ".contest.type", L_CONTEST_TYPE)),
    };

    for (dp_each(flag, i, dp_at(root, ".flags"))) {
        data.flags |= dp_u8(dp_lookup(flag, L_FLAG));
    }

    if (data.power != 0 && data.class == CLASS_STATUS) {
        dp_warn(dp_at(root, ".power"), "this Status move has a base power other than 0 and will be fixed");
        dp_note(dp_at(root, ".class"), "inferred as a Status move here");
        data.power = 0;
    }

    if (data.accuracy > 100) {
        dp_warn(dp_at(root, ".accuracy"), "value is greater than 100 and will be clamped");
        data.accuracy = 100;
    }

    if (data.effectChance > 100) {
        dp_warn(dp_at(root, ".effect.chance"), "value is greater than 100 and will be clamped");
        data.effectChance = 100;
    }

    Archive_Pack(A_MOVE_DATA, &data, sizeof(data));
}

static void ProcText(dp_node root, size_t i, const char *stem)
{
    TextBank_PushNode(T_MOVE_DESCRIPTIONS, dp_at(root, ".description"), "MoveDescriptions_Text_%s", stem);

    const char *name = dp_string_at(root, ".name");
    if (name == NULL) return; // error is already staged

    char *upper = String_ToUpper(name);
    TextBank_PushString(T_MOVE_NAMES,           name,  "MoveNames_Text_%s", stem);
    TextBank_PushString(T_MOVE_NAMES_UPPERCASE, upper, "MoveNamesUppercase_Text_%s", stem);
    free(upper);

    if (i == MOVE_NONE) {
        TextBank_PushString(T_MOVES_USED_IN_BATTLE, "!", "MovesUsedInBattle_Text_%s_Ally", stem);
        TextBank_PushString(T_MOVES_USED_IN_BATTLE, "!", "MovesUsedInBattle_Text_%s_Wild", stem);
        TextBank_PushString(T_MOVES_USED_IN_BATTLE, "!", "MovesUsedInBattle_Text_%s_Foe",  stem);
        return;
    }

    char *nameLine = String_Format("%s!", name);
    if (i == MOVE_U_TURN && strlen(nameLine) > 2) {
        nameLine[2] = 'T'; // MATCH DETAIL: The retail game uses "U-Turn" in battle instead of "U-turn"
    }

    const char *ally[] = { "{STRVAR_1 1, 0, 0} used\n",          nameLine };
    const char *wild[] = { "The wild {STRVAR_1 1, 0, 0} used\n", nameLine };
    const char *foe[]  = { "The foe’s {STRVAR_1 1, 0, 0} used\n", nameLine };
    TextBank_PushLines(T_MOVES_USED_IN_BATTLE, ally, NELEMS(ally), "MovesUsedInBattle_Text_%s_Ally", stem);
    TextBank_PushLines(T_MOVES_USED_IN_BATTLE, wild, NELEMS(wild), "MovesUsedInBattle_Text_%s_Wild", stem);
    TextBank_PushLines(T_MOVES_USED_IN_BATTLE, foe,  NELEMS(foe),  "MovesUsedInBattle_Text_%s_Foe",  stem);
    free(nameLine);
}

static void PackExtraMoves(void)
{
    // MATCH DETAIL: The retail game contains these 3 additional entries at the tail of the move data
    // archive. They are inaccessible, but must be present to produce a binary match.

    MoveTable m468 = {
        .class          = CLASS_SPECIAL,
        .type           = TYPE_NORMAL,
        .power          = 100,
        .accuracy       = 100,
        .pp             = 10,
        .effect         = BATTLE_EFFECT_HIT,
        .effectChance   = 0,
        .range          = RANGE_SINGLE_TARGET,
        .priority       = 0,
        .flags          = MOVE_FLAG_CAN_PROTECT | MOVE_FLAG_CAN_MIRROR_MOVE | MOVE_FLAG_TRIGGERS_KINGS_ROCK,
        .contest.effect = CONTEST_EFFECT_LOW_VOLTAGE_ADVANTAGE,
        .contest.type   = CONTEST_TYPE_BEAUTY,
    };

    MoveTable m469 = {
        .class          = CLASS_SPECIAL,
        .type           = TYPE_NORMAL,
        .power          = 100,
        .accuracy       = 100,
        .pp             = 10,
        .effect         = BATTLE_EFFECT_HIT,
        .effectChance   = 0,
        .range          = RANGE_SINGLE_TARGET,
        .priority       = 0,
        .flags          = MOVE_FLAG_CAN_PROTECT | MOVE_FLAG_CAN_MIRROR_MOVE | MOVE_FLAG_TRIGGERS_KINGS_ROCK,
        .contest.effect = CONTEST_EFFECT_FIRST_PERFORMANCE_ADVANTAGE,
        .contest.type   = CONTEST_TYPE_CUTE,
    };

    MoveTable m470 = {
        .class          = CLASS_SPECIAL,
        .type           = TYPE_NORMAL,
        .power          = 100,
        .accuracy       = 100,
        .pp             = 10,
        .effect         = BATTLE_EFFECT_HIT,
        .effectChance   = 0,
        .range          = RANGE_SINGLE_TARGET,
        .priority       = 0,
        .flags          = MOVE_FLAG_CAN_PROTECT | MOVE_FLAG_CAN_MIRROR_MOVE | MOVE_FLAG_TRIGGERS_KINGS_ROCK,
        .contest.effect = CONTEST_EFFECT_FINAL_PERFORMANCE_ADVANTAGE,
        .contest.type   = CONTEST_TYPE_SMART,
    };

    Archive_Pack(A_MOVE_DATA, &m468, sizeof(m468));
    Archive_Pack(A_MOVE_DATA, &m469, sizeof(m469));
    Archive_Pack(A_MOVE_DATA, &m470, sizeof(m470));
}

static void OrderExtraScripts(void)
{
    // MATCH DETAIL: The retail game contains additional entries in the animation scripts archive that
    // must be present to produce a binary match.
    for (size_t i = 468; i <= 474; i++) TextFile_Printf(F_ANIM_SCRIPTS, ".shared/anim_0468_0474\n");
    for (size_t i = 475; i <= 500; i++) TextFile_Printf(F_ANIM_SCRIPTS, ".shared/anim_0475_0500\n");

    // MATCH DETAIL: The retail game contains additional entries in the move scripts archive that
    // must be present to produce a binary match.
    for (size_t i = 468; i <= 500; i++) TextFile_Printf(F_MOVE_SCRIPTS, ".shared/script_0468_0500\n");
}

int main(int argc, char **argv)
{
    Driver_Init(&driver, argc, argv);

    for (EachEntry(entry, Entries_FromEnum(enumFile, "Move", "MOVE_", "%s/%s/data.json", baseDir))) {
        ProcMove(entry.root);
        ProcText(entry.root, entry.index, entry.stem);
        TextFile_Printf(F_ANIM_SCRIPTS, "%s/anim\n", entry.stem);
        TextFile_Printf(F_MOVE_SCRIPTS, "%s/script\n", entry.stem);
    }

    PackExtraMoves();
    OrderExtraScripts();
    return Driver_Finish(&driver);
}
