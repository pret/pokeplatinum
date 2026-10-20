#include <stddef.h>
#include <string.h>

#include "common.h"
#include "game_types.h"

#include "constants/string.h"
#include "overlay006/npc_trade.h"

static const char *enumFile = NULL;
static const char *baseDir  = NULL;

// Trainer names follow every Pokémon name in the text bank, so they outlive
// the entry they were read from.
//
// We use 4x the TRAINER_NAME_LEN constant to allow for full UTF-8 width.
static char otNames[MAX_NPC_TRADES][(TRAINER_NAME_LEN * 4) + 1];

enum { A_NPC_TRADES };
enum { T_NPC_TRADE_NAMES };

#define L_SPECIES  "enum Species"
#define L_ITEM     "enum Item"
#define L_GENDER   "enum Gender"
#define L_LANGUAGE "enum Language"

static Driver driver = {
    .depfile = "npctrade_data.d",

    .options = (Option[]) {
        POSITIONAL("ENUMFILE", &enumFile, "Header defining enum NPCTradeID."),
        POSITIONAL("BASEDIR",  &baseDir,  "Directory of per-trade data."),
        { 0 },
    },

    .lookups = (Lookup[]) {
        LOOKUP_ENUM("generated/species.h",  L_SPECIES),
        LOOKUP_ENUM("generated/items.h",    L_ITEM),
        LOOKUP_ENUM("generated/genders.h",  L_GENDER),
        LOOKUP_ENUM("constants/versions.h", L_LANGUAGE),
        { 0 },
    },

    .outputs = {
        .archives = (Archive[]) {
            [A_NPC_TRADES] = { .filename = "npc_trades.narc" },
            { 0 },
        },

        .textBanks = (TextBank[]) {
            [T_NPC_TRADE_NAMES] = { .filename = "npc_trade_names.json", .key = 4839 },
            { 0 },
        },
    },
};

static void ProcTrade(dp_node root)
{
    NPCTradeMon mon = {
        .species          = dp_u16(dp_lookup_at(root, ".species", L_SPECIES)),
        .hpIV             = dp_bits_at(root, ".hpIV", 5),
        .atkIV            = dp_bits_at(root, ".atkIV", 5),
        .defIV            = dp_bits_at(root, ".defIV", 5),
        .speedIV          = dp_bits_at(root, ".speedIV", 5),
        .spAtkIV          = dp_bits_at(root, ".spAtkIV", 5),
        .spDefIV          = dp_bits_at(root, ".spDefIV", 5),
        .unused1          = dp_u32_at(root, ".unused1"),
        .otID             = dp_u32_at(root, ".otID"),
        .cool             = dp_u32_at(root, ".cool"),
        .beauty           = dp_u32_at(root, ".beauty"),
        .cute             = dp_u32_at(root, ".cute"),
        .smart            = dp_u32_at(root, ".smart"),
        .tough            = dp_u32_at(root, ".tough"),
        .personality      = dp_u32_at(root, ".personality"),
        .heldItem         = dp_u16(dp_lookup_at(root, ".heldItem", L_ITEM)),
        .otGender         = dp_u16(dp_lookup_at(root, ".otGender", L_GENDER)),
        .unused2          = dp_u32_at(root, ".unused2"),
        .language         = dp_u16(dp_lookup_at(root, ".language", L_LANGUAGE)),
        .requestedSpecies = dp_u16(dp_lookup_at(root, ".requestedSpecies", L_SPECIES)),
    };

    Archive_Pack(A_NPC_TRADES, &mon, sizeof(mon));
}

static const char* ReadName(dp_node root, const char *path, size_t max, const char *domain)
{
    const dp_node node = dp_at(root, path);
    const char   *name = dp_string(node);
    if (name == NULL) return NULL;

    const size_t len = String_CountChars(name);
    if (len > max) {
        dp_warn(node, "name is longer than %zu characters; the game will truncate it", max);
    }

    if (len == 0) dp_warn(node, "%s name has length 0", domain);
    return name;
}

static void ProcText(dp_node root, size_t i)
{
    const char *monName = ReadName(root, ".name", MON_NAME_LEN, "traded Pokémon");
    const char *otName  = ReadName(root, ".otName", TRAINER_NAME_LEN, "trading Trainer");

    TextBank_PushString(T_NPC_TRADE_NAMES, monName, "NPCTradeNames_Text_Mon%zu", i);
    if (otName) strcpy(otNames[i], otName);
}

int main(int argc, char **argv)
{
    Driver_Init(&driver, argc, argv);

    size_t count = 0;
    for (EachEntry(entry, Entries_FromEnum(enumFile, "NPCTradeID", "NPC_TRADE_", "%s/%s.json", baseDir))) {
        if (count == MAX_NPC_TRADES) Driver_Fail("%s: more trades than MAX_NPC_TRADES (%d)", enumFile, MAX_NPC_TRADES);

        ProcTrade(entry.root);
        ProcText(entry.root, entry.index);
        count++;
    }

    for (size_t i = 0; i < count; i++) {
        TextBank_PushString(T_NPC_TRADE_NAMES, otNames[i], "NPCTradeNames_Text_Trainer%zu", i);
    }

    return Driver_Finish(&driver);
}
