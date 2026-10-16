#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

#include "common.h"
#include "game_types.h"

#undef  ALIGN_4 // MATCH DETAIL: We must re-define this to include a properly-sized ItemData struct.
#define ALIGN_4

#include "constants/items.h"
#include "data/field/hidden_items.h"
#include "generated/vars_flags.h"
#include "berry_data.h"
#include "item.h"

static const char *enumFile = NULL;
static const char *baseDir  = NULL;

enum { A_ITEM_DATA, A_BERRY_DATA };
enum { F_ITEM_ID_MAP, F_TM_MOVE_MAP, F_BERRY_LIST, F_MAIL_LIST, F_HIDDEN_ITEM_SCRIPTS };
enum {
    T_ITEM_NAMES,
    T_ITEM_NAMES_PLURAL,
    T_ITEM_NAMES_WITH_ARTICLE,
    T_ITEM_DESCRIPTIONS,
};

#define L_POCKET              "POCKET"
#define L_BATTLE_POCKET_MASK  "BATTLE_POCKET_MASK"
#define L_PLUCK_EFFECT        "PLUCK_EFFECT"
#define L_FLING_EFFECT        "FLING_EFFECT"
#define L_ITEM_USE_FUNC       "ITEM_USE_FUNC"
#define L_BATTLE_USE_CATEGORY "BATTLE_USE_CATEGORY"
#define L_FIRMNESS            "FIRMNESS"
#define L_HOLD_EFFECT         "enum ItemHoldEffect"
#define L_MOVE                "enum Move"
#define L_TYPE                "enum PokemonType"
#define L_ICON_SPRITE         "ItemIconSprite"
#define L_ICON_PALETTE        "ItemIconPalette"

static Driver driver = {
    .depfile = "item_data.d",

    .options = (Option[]) {
        POSITIONAL("ENUMFILE", &enumFile, "Header defining enum Item."),
        POSITIONAL("BASEDIR",  &baseDir,  "Directory of per-item data."),
        { 0 },
    },

    .lookups = (Lookup[]) {
        LOOKUP_DEFINES("constants/items.h", L_POCKET),
        LOOKUP_DEFINES("constants/items.h", L_BATTLE_POCKET_MASK),
        LOOKUP_DEFINES("constants/items.h", L_PLUCK_EFFECT),
        LOOKUP_DEFINES("constants/items.h", L_FLING_EFFECT),
        LOOKUP_DEFINES("constants/items.h", L_ITEM_USE_FUNC),
        LOOKUP_DEFINES("constants/items.h", L_BATTLE_USE_CATEGORY),
        LOOKUP_DEFINES("berry_data.h",      L_FIRMNESS),
        LOOKUP_ENUM("generated/item_hold_effects.h", L_HOLD_EFFECT),
        LOOKUP_ENUM("generated/moves.h",             L_MOVE),
        LOOKUP_ENUM("generated/pokemon_types.h",     L_TYPE),
        { 0 },
    },

    .outputs = {
        .archives = (Archive[]) {
            [A_ITEM_DATA]  = { .filename = "pl_item_data.narc" },
            [A_BERRY_DATA] = { .filename = "nuts_data.narc" },
            { 0 },
        },

        .textFiles = (TextFile[]) {
            [F_ITEM_ID_MAP]         = { .filename = "item_id_map.h",         .wrap = TEXT_FILE_WRAP_TEMPLATE },
            [F_TM_MOVE_MAP]         = { .filename = "item_tm_move_map.h",    .wrap = TEXT_FILE_WRAP_TEMPLATE },
            [F_BERRY_LIST]          = { .filename = "item_berry_list.h",     .wrap = TEXT_FILE_WRAP_TEMPLATE },
            [F_MAIL_LIST]           = { .filename = "item_mail_list.h",      .wrap = TEXT_FILE_WRAP_TEMPLATE },
            [F_HIDDEN_ITEM_SCRIPTS] = { .filename = "hidden_item_scripts.h", .wrap = TEXT_FILE_WRAP_TEMPLATE },
            { 0 },
        },

        .textBanks = (TextBank[]) {
            [T_ITEM_NAMES]              = { .filename = "item_names.json",               .key = 51885 },
            [T_ITEM_NAMES_PLURAL]       = { .filename = "item_names_plural.json",        .key = 11181 },
            [T_ITEM_NAMES_WITH_ARTICLE] = { .filename = "item_names_with_articles.json", .key = 41760 },
            [T_ITEM_DESCRIPTIONS]       = { .filename = "item_descriptions.json",        .key = 24316 },
            { 0 },
        },
    },
};

// Register the NAIX IDs of item_icon.narc's members that end with `suffix`.
static void RegisterIcons(Records icons, const char *type, const char *suffix)
{
    dp_symbol *symbols = Zalloc(icons.count, sizeof(*symbols));
    size_t     count   = 0;

    for (size_t i = 0; i < icons.count; i++) {
        const char *id  = icons.items[i].id;
        if (String_EndsWith(id, suffix)) {
            symbols[count++] = (dp_symbol){ .value = (long)i, .name = id };
        }
    }

    Lookups_Register(type, symbols, count);
    free(symbols);
}

static void EmitHiddenItemScripts(void)
{
    size_t maxScriptID = 0;
    for (size_t i = 0; i < NELEMS(gHiddenItems); i++) {
        if (gHiddenItems[i].script > maxScriptID) maxScriptID = gHiddenItems[i].script;
    }

    size_t numScripts = maxScriptID + 1;
    size_t numFlags   = HIDDEN_ITEM_FLAGS_END - HIDDEN_ITEM_FLAGS_START + 1;
    if (numScripts > numFlags) {
        Driver_Fail("more hidden items defined (%zu) than there are hidden item flags (%zu)", numScripts, numFlags);
    }

    for (size_t i = 0; i < numScripts; i++) TextFile_Printf(F_HIDDEN_ITEM_SCRIPTS, "    ScriptEntry HiddenItems_Item\n");
    TextFile_Printf(F_HIDDEN_ITEM_SCRIPTS, "    ScriptEntryEnd\n");
}

static bool HasData(const char *name)
{
    return strncmp(name, "ITEM_UNUSED_", strlen("ITEM_UNUSED_")) != 0;
}

static void ProcParams(dp_node root, ItemData *item)
{
    const dp_node params = dp_at(root, ".itemUseParams");
    switch (dp_type_of(params)) {
    case DP_OBJECT: break;
    case DP_NULL:   return;
    case DP_ERROR:  return; // error is already staged
    default:
        dp_error(params, "expected either an object or null");
        return;
    }

    item->partyUse      = true;
    item->partyUseParam = (ItemPartyParam){
        .healSleep     = dp_bool(dp_try(params, ".healSleep")),
        .healPoison    = dp_bool(dp_try(params, ".healPoison")),
        .healBurn      = dp_bool(dp_try(params, ".healBurn")),
        .healFreeze    = dp_bool(dp_try(params, ".healFreeze")),
        .healParalysis = dp_bool(dp_try(params, ".healParalysis")),
        .healConfusion = dp_bool(dp_try(params, ".healConfusion")),
        .healAttract   = dp_bool(dp_try(params, ".healAttract")),
        .guardSpec     = dp_bool(dp_try(params, ".guardSpec")),
        .revive        = dp_bool(dp_try(params, ".revive")),
        .reviveAll     = dp_bool(dp_try(params, ".reviveAll")),
        .levelUp       = dp_bool(dp_try(params, ".levelUp")),
        .ppUp          = dp_bool(dp_try(params, ".ppUp")),
        .ppMax         = dp_bool(dp_try(params, ".ppMax")),
        .ppRestoreAll  = dp_bool(dp_try(params, ".restorePPAllMoves")),

        .atkStages   = dp_bits(dp_try(params, ".atkStages"), 4),
        .defStages   = dp_bits(dp_try(params, ".defStages"), 4),
        .spatkStages = dp_bits(dp_try(params, ".spatkStages"), 4),
        .spdefStages = dp_bits(dp_try(params, ".spdefStages"), 4),
        .speedStages = dp_bits(dp_try(params, ".speedStages"), 4),
        .accStages   = dp_bits(dp_try(params, ".accStages"), 4),
        .critStages  = dp_bits(dp_try(params, ".critStages"), 2),

        .hpRestored = dp_s8(dp_try(params, ".hpRestored")),
        .ppRestored = dp_s8(dp_try(params, ".ppRestored")) & 0x7F,

        .hpEVs          = dp_s8(dp_try(params, ".hpEVs")),
        .atkEVs         = dp_s8(dp_try(params, ".atkEVs")),
        .defEVs         = dp_s8(dp_try(params, ".defEVs")),
        .speedEVs       = dp_s8(dp_try(params, ".speedEVs")),
        .spatkEVs       = dp_s8(dp_try(params, ".spatkEVs")),
        .spdefEVs       = dp_s8(dp_try(params, ".spdefEVs")),
        .friendshipLow  = dp_s8(dp_try(params, ".friendshipLow")),
        .friendshipMed  = dp_s8(dp_try(params, ".friendshipMed")),
        .friendshipHigh = dp_s8(dp_try(params, ".friendshipHigh")),
    };

    ItemPartyParam *param = &item->partyUseParam;
    param->ppRestore = param->ppRestored > 0 && param->ppRestoreAll == 0;
    param->hpRestore = param->hpRestored > 0;

    param->giveHPEVs    = param->hpEVs != 0;
    param->giveAtkEVs   = param->atkEVs != 0;
    param->giveDefEVs   = param->defEVs != 0;
    param->giveSpeedEVs = param->speedEVs != 0;
    param->giveSpAtkEVs = param->spatkEVs != 0;
    param->giveSpDefEVs = param->spdefEVs != 0;

    param->giveFriendshipLow  = param->friendshipLow != 0;
    param->giveFriendshipMed  = param->friendshipMed != 0;
    param->giveFriendshipHigh = param->friendshipHigh != 0;
}

static void ProcBerry(dp_node berry)
{
    BerryData data = {
        .size              = dp_u16_at(berry, ".size"),
        .firmness          = dp_u8(dp_lookup_at(berry, ".firmness", L_FIRMNESS)),
        .baseYield         = dp_u8_at(berry, ".baseYield"),
        .stageDuration     = dp_u8_at(berry, ".stageDuration"),
        .moistureDrainRate = dp_u8_at(berry, ".moistureDrainRate"),
        .spiciness         = dp_u8_at(berry, ".spiciness"),
        .dryness           = dp_u8_at(berry, ".dryness"),
        .sweetness         = dp_u8_at(berry, ".sweetness"),
        .bitterness        = dp_u8_at(berry, ".bitterness"),
        .sourness          = dp_u8_at(berry, ".sourness"),
        .smoothness        = dp_u8_at(berry, ".smoothness"),
    };

    Archive_Pack(A_BERRY_DATA, &data, sizeof(data));
}

static u8  numBalls   = 0;
static u8  numMail    = 0;
static u8  numRods    = 0;
static u16 numTMs     = 0;
static u16 numBerries = 0;

static void ProcItem(dp_node root, const char *name)
{
    ItemData item = {
        .price             = dp_u16_at(root, ".price"),
        .effectParam       = dp_u8_at(root, ".effectParam"),
        .holdEffect        = dp_u8(dp_lookup_at(root, ".holdEffect", L_HOLD_EFFECT)),
        .pluckEffect       = dp_u8(dp_lookup_at(root, ".pluckEffect", L_PLUCK_EFFECT)),
        .flingEffect       = dp_u8(dp_lookup_at(root, ".flingEffect", L_FLING_EFFECT)),
        .flingPower        = dp_u8_at(root, ".flingPower"),
        .naturalGiftPower  = dp_u8_at(root, ".naturalGiftPower"),
        .preventToss       = dp_bool_at(root, ".preventToss"),
        .canRegister       = dp_bool_at(root, ".canRegister"),
        .fieldPocket       = dp_bits(dp_lookup_at(root, ".fieldPocket", L_POCKET), 4),
        .battlePocket      = dp_bits(dp_lookup_at(root, ".battlePocket", L_BATTLE_POCKET_MASK), 5),
        .fieldUseFunc      = dp_u8(dp_lookup_at(root, ".fieldUseFunc", L_ITEM_USE_FUNC)),
        .battleUseCategory = dp_u8(dp_lookup_at(root, ".battleUseCategory", L_BATTLE_USE_CATEGORY)),
    };

    const dp_node giftType = dp_at(root, ".naturalGiftType");
    item.naturalGiftType   = dp_type_of(giftType) == DP_NULL ? 0x1F : dp_bits(dp_lookup(giftType, L_TYPE), 5);

    // MATCH DETAIL: `item.dummy` holds an incrementing index depending on `fieldUseFunc`
    switch (item.fieldUseFunc) {
    case ITEM_USE_FUNC_NONE:
        if (item.fieldPocket == POCKET_BALLS) item.dummy = numBalls++;
        else ProcParams(root, &item);
        break;

    case ITEM_USE_FUNC_OLD_ROD:   // fall-through
    case ITEM_USE_FUNC_GOOD_ROD:  // fall-through
    case ITEM_USE_FUNC_SUPER_ROD: item.dummy = numRods++; break;

    case ITEM_USE_FUNC_MAIL:
        item.dummy = numMail++;
        TextFile_Printf(F_MAIL_LIST, "    [%u] = %s,\n", item.dummy, name);
        break;

    case ITEM_USE_FUNC_TM_HM: {
        const dp_node move = dp_lookup_at(root, ".teachesMove", L_MOVE);
        TextFile_Printf(F_TM_MOVE_MAP, "    [%u] = %s,\n", numTMs++, Symbol_Name(move));
        break;
    }

    case ITEM_USE_FUNC_EVO_STONE: // Special case to remove a foot-gun for evolution items
        ProcParams(root, &item);
        item.partyUseParam.evolve = true;
        break;

    case ITEM_USE_FUNC_BERRY:
        TextFile_Printf(F_BERRY_LIST, "    [%u] = %s,\n", numBerries++, name);
        ProcBerry(dp_at(root, ".berryData"));
        // fall-through

    default: ProcParams(root, &item); break;
    }

    Archive_Pack(A_ITEM_DATA, &item, sizeof(item));
}

static void ProcText(dp_node root, const char *stem, size_t index)
{
    const char *name   = dp_string_at(root, ".name");
    const char *plural = dp_string_at(root, ".plural");

    TextBank_PushString(T_ITEM_NAMES,        name,   "ItemNames_Text_%s", stem);
    TextBank_PushString(T_ITEM_NAMES_PLURAL, plural, "ItemNamesPlural_Text_%s", stem);
    TextBank_PushNode(T_ITEM_DESCRIPTIONS, dp_at(root, ".description"), "ItemDescriptions_Text_%s", stem);
    if (name == NULL || plural == NULL) return; // error is already staged

    if (index == ITEM_NONE) {
        TextBank_PushString(T_ITEM_NAMES_WITH_ARTICLE, plural, "ItemNamesWithArticles_Text_%s", stem);
        return;
    }

    const dp_node article     = dp_at(root, ".article");
    const char   *prefix      = dp_type_of(article) == DP_NULL ? NULL : dp_string(article);
    char         *withArticle = prefix != NULL
                              ? String_Format("%s {COLOR 255}%s{COLOR 0}", prefix, name)
                              : String_Format("{COLOR 255}%s{COLOR 0}", name);

    TextBank_PushString(T_ITEM_NAMES_WITH_ARTICLE, withArticle, "ItemNamesWithArticles_Text_%s", stem);
    free(withArticle);
}

static void EmitIDMapEntry(size_t index, size_t dataID, const char *icon, const char *palette, const char *gen3ID)
{
    TextFile_Printf(F_ITEM_ID_MAP,
                    "    [%zu] = {\n"
                    "        .dataID = %zu,\n"
                    "        .iconID = %s,\n"
                    "        .paletteID = %s,\n"
                    "        .gen3ID = %s,\n"
                    "    },\n",
                    index, dataID, icon, palette, gen3ID);
}

static void ProcPlaceholder(size_t index, const char *stem)
{
    TextBank_PushString(T_ITEM_NAMES,              "???", "ItemNames_Text_%s", stem);
    TextBank_PushString(T_ITEM_NAMES_PLURAL,       "???", "ItemNamesPlural_Text_%s", stem);
    TextBank_PushString(T_ITEM_NAMES_WITH_ARTICLE, "???", "ItemNamesWithArticles_Text_%s", stem);
    TextBank_PushGarbage(T_ITEM_DESCRIPTIONS, 0, "ItemDescriptions_Text_%s", stem);
    EmitIDMapEntry(index, 0, "none_NCGR", "none_NCLR", "GBA_ITEM_NONE");
}

int main(int argc, char **argv)
{
    Driver_Init(&driver, argc, argv);

    Records icons = Records_Load("res/items/item_icon.recs");
    RegisterIcons(icons, L_ICON_SPRITE,  "_NCGR");
    RegisterIcons(icons, L_ICON_PALETTE, "_NCLR");
    EmitHiddenItemScripts();

    size_t dataID = 0; // only items with data have a member in the item data archive
    for (EachEntry(entry, Entries_Filter(Entries_FromEnum(enumFile, "Item", "ITEM_", "%s/%s.json", baseDir), HasData))) {
        if (!entry.hasData) {
            ProcPlaceholder(entry.index, entry.stem);
            continue;
        }

        ProcItem(entry.root, entry.name);
        ProcText(entry.root, entry.stem, entry.index);

        const dp_node icon    = dp_lookup_at(entry.root, ".icon.sprite", L_ICON_SPRITE);
        const dp_node palette = dp_lookup_at(entry.root, ".icon.palette", L_ICON_PALETTE);
        const dp_node gen3ID  = dp_at(entry.root, ".gbaID");
        EmitIDMapEntry(entry.index, dataID++,
                       Symbol_Name(icon),
                       Symbol_Name(palette),
                       Symbol_Name(gen3ID));
    }

    return Driver_Finish(&driver);
}
