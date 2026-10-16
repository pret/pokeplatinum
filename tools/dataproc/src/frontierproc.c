#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>

#include "common.h"
#include "game_types.h"

#include "constants/moves.h"
#include "generated/frontier_trainers.h"

#include "struct_defs/frontier_pokemon_base.h"
#include "struct_defs/frontier_trainer_base.h"

static const char *enumFile = NULL;
static const char *setsFile = NULL;
static const char *baseDir  = NULL;

// Pokémon set IDs are u16 archive indices, so this is also the archive's limit.
static dp_symbol sets[UINT16_MAX];
static size_t    numSets = 0;

enum { A_FRONTIER_TRAINERS, A_FRONTIER_POKEMON };
enum { F_TRAINER_CLASSES };
enum { T_TRAINER_MESSAGES, T_TRAINER_NAMES };

#define L_ITEM          "enum Item"
#define L_MOVE          "enum Move"
#define L_NATURE        "enum Nature"
#define L_SPECIES       "enum Species"
#define L_TRAINER_CLASS "enum TrainerClass"
#define L_MESSAGE_TYPE  "enum TrainerMessageType"
#define L_POKEMON_SET   "FrontierPokemonSet"

static Driver driver = {
    .depfile = "frontier_data.d",

    .options = (Option[]) {
        POSITIONAL("ENUMFILE", &enumFile, "Header defining enum FrontierTrainerID."),
        POSITIONAL("SETSFILE", &setsFile, "Pokémon set names, one per line, in archive order."),
        POSITIONAL("BASEDIR",  &baseDir,  "Directory containing data/ and pokemon/."),
        { 0 },
    },

    .lookups = (Lookup[]) {
        LOOKUP_ENUM("generated/items.h",                 L_ITEM),
        LOOKUP_ENUM("generated/moves.h",                 L_MOVE),
        LOOKUP_ENUM("generated/natures.h",               L_NATURE),
        LOOKUP_ENUM("generated/species.h",               L_SPECIES),
        LOOKUP_ENUM("generated/trainer_classes.h",       L_TRAINER_CLASS),
        LOOKUP_ENUM("generated/trainer_message_types.h", L_MESSAGE_TYPE),
        { 0 },
    },

    .outputs = {
        .archives = (Archive[]) {
            [A_FRONTIER_TRAINERS] = { .filename = "pl_btdtr.narc" },
            [A_FRONTIER_POKEMON]  = { .filename = "pl_btdpm.narc" },
            { 0 },
        },

        .textFiles = (TextFile[]) {
            [F_TRAINER_CLASSES] = { .filename = "frontier_trainer_classes.h", .wrap = TEXT_FILE_WRAP_TEMPLATE },
            { 0 },
        },

        .textBanks = (TextBank[]) {
            [T_TRAINER_MESSAGES] = { .filename = "frontier_trainer_messages.json", .key = 35392 },
            [T_TRAINER_NAMES]    = { .filename = "frontier_trainer_names.json",    .key = 26501 },
            { 0 },
        },
    },
};

static const char *evFlags[] = {
    ".evFlags.hp",
    ".evFlags.attack",
    ".evFlags.defense",
    ".evFlags.speed",
    ".evFlags.special_attack",
    ".evFlags.special_defense",
};

static void ProcPokemonSet(dp_node root)
{
    FrontierPokemonBase set = {
        .species = dp_u16(dp_lookup_at(root, ".species", L_SPECIES)),
        .nature  = dp_u8(dp_lookup_at(root, ".nature", L_NATURE)),
        .item    = dp_u16(dp_lookup_at(root, ".item", L_ITEM)),
        .form    = dp_u16_at(root, ".form"),
    };

    const dp_node moves = dp_at(root, ".moves");
    if (dp_arr_len(moves) > LEARNED_MOVES_MAX) {
        dp_warn(moves, "more than %d moves defined for frontier set; the rest will be ignored!", LEARNED_MOVES_MAX);
    }

    for (dp_each(move, i, moves)) {
        if (i == LEARNED_MOVES_MAX) break;
        set.moves[i] = dp_u16(dp_lookup(move, L_MOVE)); // the rest stay MOVE_NONE
    }

    for (size_t i = 0; i < NELEMS(evFlags); i++) {
        if (dp_bool_at(root, evFlags[i])) set.evFlags |= (u8)(1 << i);
    }

    Archive_Pack(A_FRONTIER_POKEMON, &set, sizeof(set));
}

static void ProcTrainer(dp_node root, size_t index)
{
    FrontierTrainerBase *trainer;

    const dp_node class     = dp_lookup_at(root, ".class", L_TRAINER_CLASS);
    const dp_node available = dp_at(root, ".availableSets");
    const size_t  count     = dp_arr_len(available);

    // Trainers from Cheryl on have no entry in the class table.
    if (index < FRONTIER_TRAINER_TRAINER_CHERYL_CHERYL) {
        TextFile_Printf(F_TRAINER_CLASSES, "    %s,\n", Symbol_Name(class));
    }

    const size_t size    = sizeof(*trainer) + (count * sizeof(*trainer->setIDs));
    trainer              = Zalloc(1, size);
    trainer->trainerType = dp_u16(class);

    // MATCH DETAIL: Set 0 is the placeholder at the top of the sets list: its slot stays 0
    // and doesn't count towards the trainer's sets.
    for (dp_each(name, i, available)) {
        u16 set = dp_u16(dp_lookup(name, L_POKEMON_SET));
        if (set != 0) {
            trainer->setIDs[i] = set;
            trainer->numSets++;
        }
    }

    Archive_Pack(A_FRONTIER_TRAINERS, trainer, size);
    free(trainer);
}

static void ProcText(dp_node root, const char *stem)
{
    TextBank_PushString(T_TRAINER_NAMES, dp_string_at(root, ".name"),
                        "FrontierTrainerNames_Text_%s", stem);

    for (dp_each(message, i, dp_at(root, ".messages"))) {
        const dp_node type = dp_lookup_at(message, ".type", L_MESSAGE_TYPE);
        if (dp_type_of(type) != DP_SYMBOL) continue; // error is already staged

        const dp_node text    = dp_try(message, ".en_US");
        const dp_node garbage = dp_try(message, ".garbage");
        const char   *kind    = dp_string(type);

        if (!dp_missing(text)) {
            TextBank_PushNode(T_TRAINER_MESSAGES, text,
                              "FrontierTrainerMessages_Text_%s_%s", stem, kind);
        } else if (!dp_missing(garbage)) {
            TextBank_PushGarbage(T_TRAINER_MESSAGES, dp_u64(garbage),
                                 "FrontierTrainerMessages_Text_%s_%s", stem, kind);
        } else {
            dp_error(message, "expected exactly one of 'en_US' or 'garbage'");
        }
    }
}

int main(int argc, char **argv)
{
    Driver_Init(&driver, argc, argv);

    // Process sets first; trainers refer to Pokémon sets by name.
    for (EachEntry(entry, Entries_FromList(setsFile, "%s/pokemon/%s.json", baseDir))) {
        if (numSets == NELEMS(sets)) Driver_Fail("%s: more than %zu Pokémon sets", setsFile, NELEMS(sets));

        ProcPokemonSet(entry.root);
        sets[numSets++] = (dp_symbol){ .value = (long)entry.index, .name = entry.name };
    }

    Lookups_Register(L_POKEMON_SET, sets, numSets);

    for (EachEntry(entry, Entries_FromEnum(enumFile, "FrontierTrainerID", "FRONTIER_TRAINER_", "%s/data/%s.json", baseDir))) {
        ProcTrainer(entry.root, entry.index);
        ProcText(entry.root, entry.stem);
    }

    return Driver_Finish(&driver);
}
