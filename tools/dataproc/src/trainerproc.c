#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#include "common.h"
#include "game_types.h"

#include "constants/battle.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "generated/trainers.h"
#include "generated/trainer_classes.h"
#include "generated/vars_flags.h"

#include "struct_defs/trainer_data.h"

static const char *enumFile = NULL;
static const char *baseDir  = NULL;

enum {
    A_TRAINER_HEADERS,
    A_TRAINER_PARTIES,
    A_MESSAGE_TABLE,
    A_MESSAGE_OFFSETS,
};

enum { F_TRAINER_SCRIPTS };
enum { T_TRAINER_MESSAGES, T_TRAINER_NAMES };

#define L_AI_FLAG       "enum AIFlag"
#define L_ITEM          "enum Item"
#define L_MOVE          "enum Move"
#define L_SPECIES       "enum Species"
#define L_TRAINER_CLASS "enum TrainerClass"
#define L_MESSAGE_TYPE  "enum TrainerMessageType"

static Driver driver = {
    .depfile = "trainer_data.d",

    .options = (Option[]) {
        POSITIONAL("ENUMFILE", &enumFile, "Header defining enum TrainerID."),
        POSITIONAL("BASEDIR",  &baseDir,  "Directory of per-trainer data."),
        { 0 },
    },

    .lookups = (Lookup[]) {
        LOOKUP_ENUM("generated/ai_flags.h",              L_AI_FLAG),
        LOOKUP_ENUM("generated/items.h",                 L_ITEM),
        LOOKUP_ENUM("generated/moves.h",                 L_MOVE),
        LOOKUP_ENUM("generated/species.h",               L_SPECIES),
        LOOKUP_ENUM("generated/trainer_classes.h",       L_TRAINER_CLASS),
        LOOKUP_ENUM("generated/trainer_message_types.h", L_MESSAGE_TYPE),
        { 0 },
    },

    .outputs = {
        .archives = (Archive[]) {
            [A_TRAINER_HEADERS] = { .filename = "trdata.narc" },
            [A_TRAINER_PARTIES] = { .filename = "trpoke.narc" },
            [A_MESSAGE_TABLE]   = { .filename = "trtbl.narc" },
            [A_MESSAGE_OFFSETS] = { .filename = "trtblofs.narc" },
            { 0 },
        },

        .textFiles = (TextFile[]) {
            [F_TRAINER_SCRIPTS] = { .filename = "trainer_scripts.h", .wrap = TEXT_FILE_WRAP_TEMPLATE },
            { 0 },
        },

        .textBanks = (TextBank[]) {
            [T_TRAINER_MESSAGES] = { .filename = "npc_trainer_messages.json", .key = 6120  },
            [T_TRAINER_NAMES]    = { .filename = "npc_trainer_names.json",    .key = 55533 },
            { 0 },
        },
    },
};

// Messages are written after every trainer is read in trtbl order (not
// trainer order).
typedef struct Message {
    u16    type;
    u64    garbage;
    size_t numLines;
    char **lines;
} Message;

typedef struct TrainerMessages {
    u16         trainer;
    u16         order; // position in trtbl; unlisted trainers go last
    const char *stem;
    size_t      count;
    Message    *messages;
} TrainerMessages;

typedef struct TrainerMessage {
    u16 trainerID;
    u16 messageType;
} TrainerMessage;

static const u16 trtblOrder[MAX_TRAINERS];

static TrainerMessages withMessages[MAX_TRAINERS];
static size_t          numWithMessages = 0;
static size_t          numMessages     = 0;

static void EmitTrainerScripts(void)
{
    size_t numFlags = TRAINER_DEFEATED_FLAGS_END - TRAINER_DEFEATED_FLAGS_START + 1;
    if (MAX_TRAINERS > numFlags) {
        Driver_Fail("more trainers defined (%d) than there are trainer flags (%zu)", MAX_TRAINERS, numFlags);
    }

    for (size_t i = 0; i < MAX_TRAINERS; i++) TextFile_Printf(F_TRAINER_SCRIPTS, "    ScriptEntry Battles_Trainer\n");
    TextFile_Printf(F_TRAINER_SCRIPTS, "    ScriptEntry Battles_ApproachingTrainer\n");
    TextFile_Printf(F_TRAINER_SCRIPTS, "    ScriptEntryEnd\n");
}

// Party members are packed as TrainerMonWithMovesAndItem, minus the fields that
// the party's data type leaves out.
static void PackParty(dp_node party, size_t size, bool hasItems, bool hasMoves)
{
    u8  data[MAX_PARTY_SIZE * sizeof(TrainerMonWithMovesAndItem)] = { 0 };
    u8 *p = data;

    for (size_t i = 0; i < size; i++) {
        const dp_node member = dp_arr_at(party, i);
        const u16     form   = dp_u8_at(member, ".form");

        TrainerMonWithMovesAndItem mon = {
            .ivScale = dp_u16_at(member, ".iv_scale"),
            .level   = dp_u16_at(member, ".level"),
            .species = dp_u16(dp_lookup_at(member, ".species", L_SPECIES)) | (form << TRAINER_MON_FORM_SHIFT),
            .cbSeal  = dp_u16_at(member, ".ball_seal"),
        };

        if (hasItems) mon.item = dp_u16(dp_lookup_at(member, ".item", L_ITEM));
        if (hasMoves) {
            const dp_node moves = dp_at(member, ".moves");
            if (dp_arr_len(moves) > LEARNED_MOVES_MAX) {
                dp_warn(moves, "more than %d moves defined for party member; the rest will be ignored!", LEARNED_MOVES_MAX);
            }

            for (dp_each(move, j, moves)) {
                if (j == LEARNED_MOVES_MAX) break;
                mon.moves[j] = dp_u16(dp_lookup(move, L_MOVE)); // the rest stay MOVE_NONE
            }
        }

        memcpy(p, &mon, offsetof(TrainerMonWithMovesAndItem, item));
        p += offsetof(TrainerMonWithMovesAndItem, item);

        if (hasItems) {
            memcpy(p, &mon.item, sizeof(mon.item));
            p += sizeof(mon.item);
        }

        if (hasMoves) {
            memcpy(p, mon.moves, sizeof(mon.moves));
            p += sizeof(mon.moves);
        }

        memcpy(p, &mon.cbSeal, sizeof(mon.cbSeal));
        p += sizeof(mon.cbSeal);
    }

    // TRAINER_NONE has no party members, but a non-zero size in the archive.
    size_t length = size > 0 ? (size_t)(p - data) : sizeof(TrainerMonBase);
    Archive_Pack(A_TRAINER_PARTIES, data, length + (-length & 3));
}

static TrainerHeader ProcTrainer(dp_node root, size_t index)
{
    const dp_node party = dp_at(root, ".party");
    size_t        size  = dp_arr_len(party);
    if (index != TRAINER_NONE && size < 1) {
        dp_error(party, "expected trainer party size to be at least 1");
    } else if (size > MAX_PARTY_SIZE) {
        dp_warn(party, "more than %d party members defined; the rest will be ignored!", MAX_PARTY_SIZE);
        size = MAX_PARTY_SIZE;
    }

    // The first party member decides which fields every member has.
    const bool hasItems = dp_type_of(dp_try(party, ".[0].item")) == DP_STRING;
    const bool hasMoves = dp_type_of(dp_try(party, ".[0].moves")) == DP_ARRAY;

    TrainerHeader header = {
        .monDataType = (hasMoves ? TRDATATYPE_WITH_MOVES : 0) | (hasItems ? TRDATATYPE_WITH_ITEM : 0),
        .trainerType = dp_u8(dp_lookup_at(root, ".class", L_TRAINER_CLASS)),
        .partySize   = (u8)size,
        .battleType  = dp_bool_at(root, ".double_battle") ? BATTLE_TYPE_DOUBLES : 0,
    };

    for (dp_each(flag, i, dp_at(root, ".ai_flags"))) {
        header.aiMask |= dp_u32(dp_lookup(flag, L_AI_FLAG));
    }

    const dp_node items = dp_at(root, ".items");
    if (dp_arr_len(items) > MAX_TRAINER_ITEMS) {
        dp_warn(items, "more than %d items defined; the rest will be ignored!", MAX_TRAINER_ITEMS);
    }

    for (dp_each(item, i, items)) {
        if (i == MAX_TRAINER_ITEMS) break;
        header.items[i] = dp_u16(dp_lookup(item, L_ITEM));
    }

    Archive_Pack(A_TRAINER_HEADERS, &header, sizeof(header));
    PackParty(party, size, hasItems, hasMoves);
    return header;
}

static bool IsNameCompressed(size_t trainer, u8 class)
{
    static const enum TrainerClass uncompressedClasses[] = {
        TRAINER_CLASS_RIVAL,
        TRAINER_CLASS_TOWER_TYCOON,
        TRAINER_CLASS_HALL_MATRON,
        TRAINER_CLASS_FACTORY_HEAD,
        TRAINER_CLASS_ARCADE_STAR,
        TRAINER_CLASS_CASTLE_VALET,
    };

    static const enum TrainerID uncompressedTrainers[] = {
        TRAINER_RILEY_BATTLEGROUND,
        TRAINER_BUCK_BATTLEGROUND,
        TRAINER_MARLEY_BATTLEGROUND,
        TRAINER_MIRA_BATTLEGROUND,
        TRAINER_CHERYL_BATTLEGROUND,
    };

    for (size_t i = 0; i < NELEMS(uncompressedClasses); i++) {
        if (uncompressedClasses[i] == class) return false;
    }

    for (size_t i = 0; i < NELEMS(uncompressedTrainers); i++) {
        if (uncompressedTrainers[i] == trainer) return false;
    }

    return true;
}

static void ProcName(dp_node root, size_t index, u8 class, const char *stem)
{
    const char *name = dp_string_at(root, ".name");
    if (name == NULL) return; // error is already staged

    if (!IsNameCompressed(index, class)) {
        TextBank_PushString(T_TRAINER_NAMES, name, "NPCTrainerNames_Text_%s", stem);
        return;
    }

    char *compressed = String_Format("{TRNAME}%s", name);
    TextBank_PushString(T_TRAINER_NAMES, compressed, "NPCTrainerNames_Text_%s", stem);
    free(compressed);
}

static char* Copy(const char *s)
{
    return s != NULL ? String_Dupe(s) : NULL; // NULL only after a staged error
}

static void CopyLines(dp_node text, Message *message)
{
    switch (dp_type_of(text)) {
    case DP_STRING:
        message->numLines = 1;
        message->lines    = Zalloc(1, sizeof(*message->lines));
        message->lines[0] = Copy(dp_string(text));
        break;

    case DP_ARRAY:
        message->numLines = dp_arr_len(text);
        message->lines    = Zalloc(message->numLines, sizeof(*message->lines));
        for (dp_each(line, i, text)) message->lines[i] = Copy(dp_string(line));
        break;

    case DP_ERROR: break; // error is already staged

    default:
        dp_error(text, "expected message content to be a string or an array");
        break;
    }
}

static void ProcMessages(dp_node root, size_t index, const char *stem)
{
    const dp_node array = dp_at(root, ".messages");
    const size_t  count = dp_arr_len(array);
    if (count == 0) return;

    TrainerMessages *trainer = &withMessages[numWithMessages++];
    *trainer = (TrainerMessages){
        .trainer  = (u16)index,
        .order    = trtblOrder[index] != 0 ? trtblOrder[index] - 1 : UINT16_MAX,
        .stem     = stem,
        .count    = count,
        .messages = Zalloc(count, sizeof(*trainer->messages)),
    };

    for (dp_each(entry, i, array)) {
        Message      *message = &trainer->messages[i];
        const dp_node type    = dp_lookup_at(entry, ".type", L_MESSAGE_TYPE);
        message->type         = dp_u16(type);

        for (size_t j = 0; j < i && dp_type_of(type) == DP_SYMBOL; j++) {
            if (trainer->messages[j].type == message->type) {
                dp_warn(type, "trainer message with type '%s' was already defined", dp_string(type));
                dp_note(dp_at(dp_arr_at(array, j), ".type"), "previous definition was here");
            }
        }

        const dp_node text    = dp_try(entry, ".en_US");
        const dp_node garbage = dp_try(entry, ".garbage");
        if (!dp_missing(text))         CopyLines(text, message);
        else if (!dp_missing(garbage)) message->garbage = dp_u64(garbage);
        else                           dp_error(entry, "expected exactly one of either 'en_US' or 'garbage'");
    }

    numMessages += count;
}

static int CompareOrder(const void *lhs, const void *rhs)
{
    const TrainerMessages *l = lhs;
    const TrainerMessages *r = rhs;

    if (l->order != r->order) return l->order < r->order ? -1 : 1;
    return l->trainer < r->trainer ? -1 : l->trainer > r->trainer; // keeps unlisted trainers in ID order
}

static void EmitMessages(void)
{
    qsort(withMessages, numWithMessages, sizeof(*withMessages), CompareOrder);

    TrainerMessage *table   = Zalloc(numMessages, sizeof(*table));
    u16             offsets[MAX_TRAINERS] = { 0 };
    size_t          next    = 0;

    for (size_t i = 0; i < numWithMessages; i++) {
        TrainerMessages *trainer = &withMessages[i];
        offsets[trainer->trainer] = (u16)(next * sizeof(*table));

        for (size_t j = 0; j < trainer->count; j++) {
            Message *message = &trainer->messages[j];
            table[next++]    = (TrainerMessage){ .trainerID = trainer->trainer, .messageType = message->type };

            if (message->garbage != 0) {
                TextBank_PushGarbage(T_TRAINER_MESSAGES, message->garbage,
                                     "NPCTrainerMessages_Text_%s_%zu", trainer->stem, j);
            } else if (message->numLines == 1) {
                TextBank_PushString(T_TRAINER_MESSAGES, message->lines[0],
                                    "NPCTrainerMessages_Text_%s_%zu", trainer->stem, j);
            } else {
                TextBank_PushLines(T_TRAINER_MESSAGES, (const char *const *)message->lines, message->numLines,
                                   "NPCTrainerMessages_Text_%s_%zu", trainer->stem, j);
            }

            for (size_t k = 0; k < message->numLines; k++) free(message->lines[k]);
            free(message->lines);
        }

        free(trainer->messages);
    }

    Archive_Pack(A_MESSAGE_TABLE, table, numMessages * sizeof(*table));
    Archive_Pack(A_MESSAGE_OFFSETS, offsets, sizeof(offsets));
    free(table);
}

int main(int argc, char **argv)
{
    Driver_Init(&driver, argc, argv);
    EmitTrainerScripts();

    for (EachEntry(entry, Entries_FromEnum(enumFile, "TrainerID", "TRAINER_", "%s/%s.json", baseDir))) {
        TrainerHeader header = ProcTrainer(entry.root, entry.index);
        ProcName(entry.root, entry.index, header.trainerType, entry.stem);
        ProcMessages(entry.root, entry.index, entry.stem);
    }

    EmitMessages();
    return Driver_Finish(&driver);
}

// MATCH DETAIL: The retail game orders trainer messages roughly by their
// location on the map, not by trainer ID. Each listed trainer's position in
// trtbl, plus 1; 0 means unlisted.
//
// Modders should never have to touch this table.
static const u16 trtblOrder[MAX_TRAINERS] = {
    [TRAINER_YOUNGSTER_TRISTAN]                                 = 5,
    [TRAINER_YOUNGSTER_LOGAN]                                   = 6,
    [TRAINER_LASS_NATALIE]                                      = 7,
    [TRAINER_YOUNGSTER_MICHAEL]                                 = 8,
    [TRAINER_YOUNGSTER_TYLER]                                   = 14,
    [TRAINER_LASS_SAMANTHA]                                     = 15,
    [TRAINER_LASS_SARAH]                                        = 13,
    [TRAINER_BUG_CATCHER_BRANDON]                               = 16,
    [TRAINER_AROMA_LADY_TAYLOR]                                 = 17,
    [TRAINER_TWINS_LIV_AND_LIZ]                                 = 18,
    [TRAINER_CAMPER_JACOB]                                      = 19,
    [TRAINER_PICNICKER_SIENA]                                   = 21,
    [TRAINER_HIKER_DANIEL]                                      = 23,
    [TRAINER_HIKER_NICHOLAS]                                    = 24,
    [TRAINER_BATTLE_GIRL_KELSEY]                                = 25,
    [TRAINER_AROMA_LADY_ELIZABETH]                              = 26,
    [TRAINER_FISHERMAN_ANDREW]                                  = 27,
    [TRAINER_FISHERMAN_JOSEPH]                                  = 28,
    [TRAINER_FISHERMAN_ZACHARY]                                 = 29,
    [TRAINER_CYCLIST_AXEL]                                      = 30,
    [TRAINER_CYCLIST_JAMES]                                     = 31,
    [TRAINER_CYCLIST_JOHN]                                      = 32,
    [TRAINER_CYCLIST_RYAN]                                      = 33,
    [TRAINER_CYCLIST_MEGAN]                                     = 34,
    [TRAINER_CYCLIST_NICOLE]                                    = 35,
    [TRAINER_CYCLIST_KAYLA]                                     = 36,
    [TRAINER_CYCLIST_RACHEL]                                    = 37,
    [TRAINER_YOUNGSTER_AUSTIN]                                  = 39,
    [TRAINER_CAMPER_ANTHONY]                                    = 40,
    [TRAINER_PICNICKER_LAUREN]                                  = 41,
    [TRAINER_HIKER_KEVIN]                                       = 42,
    [TRAINER_HIKER_JUSTIN]                                      = 43,
    [TRAINER_BATTLE_GIRL_HELEN]                                 = 44,
    [TRAINER_HIKER_ROBERT]                                      = 45,
    [TRAINER_HIKER_ALEXANDER]                                   = 46,
    [TRAINER_HIKER_JONATHAN]                                    = 47,
    [TRAINER_BLACK_BELT_KYLE]                                   = 48,
    [TRAINER_FISHERMAN_CODY]                                    = 49,
    [TRAINER_AROMA_LADY_HANNAH]                                 = 50,
    [TRAINER_ARTIST_WILLIAM]                                    = 51,
    [TRAINER_BREEDER_ALBERT]                                    = 52,
    [TRAINER_BREEDER_JENNIFER]                                  = 53,
    [TRAINER_COWGIRL_SHELLEY]                                   = 54,
    [TRAINER_JOGGER_RICHARD]                                    = 55,
    [TRAINER_DUMMY_050]                                         = 56,
    [TRAINER_DUMMY_051]                                         = 57,
    [TRAINER_DUMMY_052]                                         = 58,
    [TRAINER_POKE_KID_DANIELLE]                                 = 59,
    [TRAINER_DUMMY_054]                                         = 60,
    [TRAINER_YOUNG_COUPLE_TY_AND_SUE]                           = 61,
    [TRAINER_BREEDER_KAHLIL]                                    = 66,
    [TRAINER_BREEDER_AMBER]                                     = 67,
    [TRAINER_DUMMY_058]                                         = 68,
    [TRAINER_DUMMY_059]                                         = 69,
    [TRAINER_DUMMY_060]                                         = 70,
    [TRAINER_DUMMY_061]                                         = 71,
    [TRAINER_DUMMY_062]                                         = 72,
    [TRAINER_DUMMY_063]                                         = 73,
    [TRAINER_DUMMY_064]                                         = 74,
    [TRAINER_TWINS_TERI_AND_TIA]                                = 75,
    [TRAINER_ACE_TRAINER_ERNEST]                                = 82,
    [TRAINER_ACE_TRAINER_ALYSSA]                                = 83,
    [TRAINER_VETERAN_BRIAN]                                     = 84,
    [TRAINER_BLACK_BELT_ADAM]                                   = 85,
    [TRAINER_NINJA_BOY_JOEL]                                    = 86,
    [TRAINER_NINJA_BOY_NATHAN]                                  = 87,
    [TRAINER_NINJA_BOY_DAVIDO]                                  = 88,
    [TRAINER_DRAGON_TAMER_PATRICK]                              = 89,
    [TRAINER_BIRD_KEEPER_BRIANNA]                               = 90,
    [TRAINER_DOUBLE_TEAM_ZAC_AND_JEN]                           = 91,
    [TRAINER_BIRD_KEEPER_ALEXANDRA]                             = 92,
    [TRAINER_DUMMY_077]                                         = 93,
    [TRAINER_NINJA_BOY_ZACH]                                    = 94,
    [TRAINER_BLACK_BELT_SEAN]                                   = 96,
    [TRAINER_NINJA_BOY_NICK]                                    = 97,
    [TRAINER_BIRD_KEEPER_KATHERINE]                             = 98,
    [TRAINER_RICH_BOY_JASON]                                    = 100,
    [TRAINER_LADY_MELISSA]                                      = 101,
    [TRAINER_GENTLEMAN_JEREMY]                                  = 102,
    [TRAINER_SOCIALITE_REINA]                                   = 103,
    [TRAINER_DUMMY_086]                                         = 104,
    [TRAINER_DUMMY_087]                                         = 120,
    [TRAINER_POLICEMAN_BOBBY]                                   = 105,
    [TRAINER_POLICEMAN_ALEX]                                    = 106,
    [TRAINER_POLICEMAN_DYLAN]                                   = 107,
    [TRAINER_FISHERMAN_JUAN]                                    = 109,
    [TRAINER_FISHERMAN_JOSH]                                    = 110,
    [TRAINER_FISHERMAN_TRAVIS]                                  = 111,
    [TRAINER_RANGER_TAYLOR]                                     = 112,
    [TRAINER_RANGER_JEFFREY]                                    = 113,
    [TRAINER_RANGER_ALLISON]                                    = 114,
    [TRAINER_DUMMY_097]                                         = 115,
    [TRAINER_DUMMY_098]                                         = 116,
    [TRAINER_SCIENTIST_STEFANO]                                 = 117,
    [TRAINER_DUMMY_100]                                         = 118,
    [TRAINER_DUMMY_101]                                         = 119,
    [TRAINER_POLICEMAN_CALEB]                                   = 108,
    [TRAINER_SWIMMER_SHELTIN]                                   = 126,
    [TRAINER_SWIMMER_EVAN]                                      = 127,
    [TRAINER_SWIMMER_HALEY]                                     = 128,
    [TRAINER_SWIMMER_MARY]                                      = 129,
    [TRAINER_TUBER_JARED]                                       = 130,
    [TRAINER_TUBER_CHELSEA]                                     = 131,
    [TRAINER_DUMMY_109]                                         = 132,
    [TRAINER_SAILOR_PAUL]                                       = 133,
    [TRAINER_FISHERMAN_KENNETH]                                 = 134,
    [TRAINER_DUMMY_112]                                         = 135,
    [TRAINER_RUIN_MANIAC_BRYAN]                                 = 137,
    [TRAINER_RUIN_MANIAC_RONALD]                                = 138,
    [TRAINER_DUMMY_115]                                         = 139,
    [TRAINER_DUMMY_116]                                         = 140,
    [TRAINER_DUMMY_117]                                         = 141,
    [TRAINER_DUMMY_118]                                         = 142,
    [TRAINER_PSYCHIC_MITCHELL]                                  = 143,
    [TRAINER_PSYCHIC_ABIGAIL]                                   = 144,
    [TRAINER_PI_CARLOS]                                         = 145,
    [TRAINER_DUMMY_122]                                         = 150,
    [TRAINER_DUMMY_123]                                         = 151,
    [TRAINER_DUMMY_124]                                         = 152,
    [TRAINER_DUMMY_125]                                         = 153,
    [TRAINER_DUMMY_126]                                         = 154,
    [TRAINER_BLACK_BELT_GREGORY]                                = 155,
    [TRAINER_BLACK_BELT_DEREK]                                  = 156,
    [TRAINER_BLACK_BELT_NATHANIEL]                              = 157,
    [TRAINER_JOGGER_SCOTT]                                      = 158,
    [TRAINER_DUMMY_131]                                         = 163,
    [TRAINER_ACE_TRAINER_BLAKE]                                 = 164,
    [TRAINER_ACE_TRAINER_GARRETT]                               = 165,
    [TRAINER_ACE_TRAINER_LAURA]                                 = 166,
    [TRAINER_ACE_TRAINER_MARIA]                                 = 167,
    [TRAINER_SKIER_BRADLEY]                                     = 168,
    [TRAINER_SKIER_EDWARD]                                      = 169,
    [TRAINER_SKIER_KAITLYN]                                     = 170,
    [TRAINER_SKIER_ANDREA]                                      = 171,
    [TRAINER_ACE_TRAINER_DALTON]                                = 173,
    [TRAINER_ACE_TRAINER_OLIVIA]                                = 174,
    [TRAINER_SKIER_SHAWN]                                       = 175,
    [TRAINER_SKIER_BJORN]                                       = 176,
    [TRAINER_SKIER_LEXIE]                                       = 177,
    [TRAINER_SKIER_MADISON]                                     = 178,
    [TRAINER_NINJA_BOY_MATTHEW]                                 = 179,
    [TRAINER_NINJA_BOY_ETHAN]                                   = 180,
    [TRAINER_BLACK_BELT_LUKE]                                   = 181,
    [TRAINER_DUMMY_149]                                         = 182,
    [TRAINER_DUMMY_150]                                         = 183,
    [TRAINER_DUMMY_151]                                         = 184,
    [TRAINER_DUMMY_152]                                         = 185,
    [TRAINER_FISHERMAN_MIGUEL]                                  = 188,
    [TRAINER_FISHERMAN_LUC]                                     = 186,
    [TRAINER_DUMMY_155]                                         = 187,
    [TRAINER_DUMMY_156]                                         = 191,
    [TRAINER_DUMMY_157]                                         = 192,
    [TRAINER_DUMMY_158]                                         = 193,
    [TRAINER_SWIMMER_ADRIAN]                                    = 196,
    [TRAINER_SWIMMER_ERIK]                                      = 197,
    [TRAINER_SWIMMER_VINCENT]                                   = 198,
    [TRAINER_SWIMMER_JESSICA]                                   = 199,
    [TRAINER_SWIMMER_ERICA]                                     = 200,
    [TRAINER_SWIMMER_KATELYN]                                   = 201,
    [TRAINER_DUMMY_165]                                         = 203,
    [TRAINER_SWIMMER_DILLON]                                    = 204,
    [TRAINER_SWIMMER_VANESSA]                                   = 205,
    [TRAINER_FISHERMAN_CORY]                                    = 206,
    [TRAINER_DUMMY_169]                                         = 207,
    [TRAINER_ACE_TRAINER_JAKE]                                  = 208,
    [TRAINER_ACE_TRAINER_SHANNON]                               = 209,
    [TRAINER_FISHERMAN_BRETT]                                   = 211,
    [TRAINER_FISHERMAN_ALEC]                                    = 212,
    [TRAINER_FISHERMAN_GEORGE]                                  = 213,
    [TRAINER_FISHERMAN_COLE]                                    = 214,
    [TRAINER_DUMMY_176]                                         = 215,
    [TRAINER_DUMMY_177]                                         = 216,
    [TRAINER_DUMMY_178]                                         = 217,
    [TRAINER_DUMMY_179]                                         = 218,
    [TRAINER_SAILOR_LUTHER]                                     = 219,
    [TRAINER_DUMMY_181]                                         = 228,
    [TRAINER_DUMMY_182]                                         = 229,
    [TRAINER_SWIMMER_WESLEY]                                    = 231,
    [TRAINER_SWIMMER_RICARDO]                                   = 232,
    [TRAINER_SWIMMER_FRANCISCO]                                 = 233,
    [TRAINER_SWIMMER_COLTON]                                    = 234,
    [TRAINER_SWIMMER_TROY]                                      = 235,
    [TRAINER_SWIMMER_OSCAR]                                     = 236,
    [TRAINER_SWIMMER_MIRANDA]                                   = 237,
    [TRAINER_SWIMMER_AUBREE]                                    = 238,
    [TRAINER_SWIMMER_PAIGE]                                     = 239,
    [TRAINER_SWIMMER_CRYSTAL]                                   = 240,
    [TRAINER_SWIMMER_CASSANDRA]                                 = 241,
    [TRAINER_SWIMMER_GABRIELLE]                                 = 242,
    [TRAINER_WORKER_COLIN]                                      = 243,
    [TRAINER_WORKER_MASON]                                      = 244,
    [TRAINER_DUMMY_197]                                         = 245,
    [TRAINER_DUMMY_198]                                         = 246,
    [TRAINER_DUMMY_199]                                         = 247,
    [TRAINER_DUMMY_200]                                         = 248,
    [TRAINER_BUG_CATCHER_JACK]                                  = 249,
    [TRAINER_BUG_CATCHER_PHILLIP]                               = 250,
    [TRAINER_BUG_CATCHER_DONALD]                                = 251,
    [TRAINER_LASS_BRIANA]                                       = 252,
    [TRAINER_PSYCHIC_ELIJAH]                                    = 253,
    [TRAINER_PSYCHIC_LINDSEY]                                   = 255,
    [TRAINER_DUMMY_207]                                         = 257,
    [TRAINER_DUMMY_208]                                         = 258,
    [TRAINER_DUMMY_209]                                         = 259,
    [TRAINER_DUMMY_210]                                         = 260,
    [TRAINER_DUMMY_211]                                         = 261,
    [TRAINER_DUMMY_212]                                         = 262,
    [TRAINER_DUMMY_213]                                         = 263,
    [TRAINER_DUMMY_214]                                         = 264,
    [TRAINER_DUMMY_215]                                         = 265,
    [TRAINER_DUMMY_216]                                         = 266,
    [TRAINER_DUMMY_217]                                         = 267,
    [TRAINER_DUMMY_218]                                         = 268,
    [TRAINER_DUMMY_219]                                         = 269,
    [TRAINER_DUMMY_220]                                         = 270,
    [TRAINER_DUMMY_221]                                         = 271,
    [TRAINER_DUMMY_222]                                         = 272,
    [TRAINER_DUMMY_223]                                         = 273,
    [TRAINER_ACE_TRAINER_OMAR]                                  = 274,
    [TRAINER_ACE_TRAINER_HENRY]                                 = 275,
    [TRAINER_ACE_TRAINER_MARIAH]                                = 276,
    [TRAINER_ACE_TRAINER_SYDNEY]                                = 277,
    [TRAINER_VETERAN_EDGAR]                                     = 278,
    [TRAINER_VETERAN_CLAYTON]                                   = 279,
    [TRAINER_DRAGON_TAMER_ONDREJ]                               = 280,
    [TRAINER_DRAGON_TAMER_CLINTON]                              = 281,
    [TRAINER_BLACK_BELT_DAVID]                                  = 295,
    [TRAINER_BIRD_KEEPER_HANA]                                  = 283,
    [TRAINER_PSYCHIC_BRYCE]                                     = 284,
    [TRAINER_PSYCHIC_VALENCIA]                                  = 285,
    [TRAINER_DOUBLE_TEAM_JO_AND_PAT]                            = 286,
    [TRAINER_DOUBLE_TEAM_AL_AND_KAY]                            = 287,
    [TRAINER_VETERAN_GRANT]                                     = 290,
    [TRAINER_DUMMY_241]                                         = 291,
    [TRAINER_DUMMY_242]                                         = 292,
    [TRAINER_DUMMY_243]                                         = 293,
    [TRAINER_YOUNGSTER_JONATHON]                                = 3,
    [TRAINER_YOUNGSTER_DARIUS]                                  = 4,
    [TRAINER_LEADER_ROARK]                                      = 2,
    [TRAINER_RIVAL_ROUTE_203_PIPLUP]                            = 1,
    [TRAINER_RIVAL_ROUTE_203_TURTWIG]                           = 307,
    [TRAINER_RIVAL_ROUTE_203_CHIMCHAR]                          = 308,
    [TRAINER_LEADER_BYRON]                                      = 294,
    [TRAINER_WORKER_JACKSON]                                    = 296,
    [TRAINER_WORKER_GARY]                                       = 297,
    [TRAINER_BLACK_BELT_PHILIP]                                 = 172,
    [TRAINER_AROMA_LADY_JENNA]                                  = 320,
    [TRAINER_AROMA_LADY_ANGELA]                                 = 321,
    [TRAINER_ELITE_FOUR_AARON]                                  = 551,
    [TRAINER_ELITE_FOUR_BERTHA]                                 = 552,
    [TRAINER_ELITE_FOUR_FLINT]                                  = 553,
    [TRAINER_ELITE_FOUR_LUCIAN]                                 = 554,
    [TRAINER_CAMPER_CURTIS]                                     = 288,
    [TRAINER_CAMPER_DREW]                                       = 339,
    [TRAINER_CHAMPION_CYNTHIA]                                  = 555,
    [TRAINER_ACE_TRAINER_SERGIO]                                = 348,
    [TRAINER_ACE_TRAINER_ISAIAH]                                = 349,
    [TRAINER_ACE_TRAINER_SAVANNAH]                              = 350,
    [TRAINER_ACE_TRAINER_ALICIA]                                = 351,
    [TRAINER_COLLECTOR_DOUGLAS]                                 = 146,
    [TRAINER_COLLECTOR_BRADY]                                   = 147,
    [TRAINER_COLLECTOR_IVAN]                                    = 210,
    [TRAINER_COLLECTOR_FERNANDO]                                = 309,
    [TRAINER_COLLECTOR_EDWIN]                                   = 310,
    [TRAINER_DRAGON_TAMER_HAYDEN]                               = 363,
    [TRAINER_ACE_TRAINER_DENNIS]                                = 159,
    [TRAINER_ACE_TRAINER_CESAR]                                 = 298,
    [TRAINER_ACE_TRAINER_ALLEN]                                 = 340,
    [TRAINER_ACE_TRAINER_ZACHERY]                               = 355,
    [TRAINER_ACE_TRAINER_RUBEN]                                 = 364,
    [TRAINER_ACE_TRAINER_BREANNA]                               = 299,
    [TRAINER_ACE_TRAINER_CATHERINE]                             = 341,
    [TRAINER_ACE_TRAINER_DESTINY]                               = 356,
    [TRAINER_ACE_TRAINER_JAMIE]                                 = 365,
    [TRAINER_ACE_TRAINER_MAYA]                                  = 160,
    [TRAINER_PSYCHIC_MAXWELL]                                   = 366,
    [TRAINER_PSYCHIC_BRITTNEY]                                  = 367,
    [TRAINER_BELLE_AND_PA_AVA_AND_MATT]                         = 78,
    [TRAINER_DUMMY_291]                                         = 62,
    [TRAINER_RANCHER_MARCO]                                     = 76,
    [TRAINER_FISHERMAN_ERICK]                                   = 323,
    [TRAINER_TWINS_EMMA_AND_LIL]                                = 65,
    [TRAINER_COMMANDER_MARS_VALLEY_WINDWORKS]                   = 302,
    [TRAINER_GALACTIC_GRUNT_FLOAROMA_MEADOW_1]                  = 305,
    [TRAINER_GALACTIC_GRUNT_FLOAROMA_MEADOW_2]                  = 306,
    [TRAINER_GALACTIC_GRUNT_VALLEY_WINDWORKS_2]                 = 303,
    [TRAINER_GALACTIC_GRUNT_VALLEY_WINDWORKS_3]                 = 304,
    [TRAINER_GUITARIST_TONY]                                    = 189,
    [TRAINER_GUITARIST_JERRY]                                   = 357,
    [TRAINER_GUITARIST_PRESTON]                                 = 358,
    [TRAINER_GUITARIST_LONNIE]                                  = 359,
    [TRAINER_RUIN_MANIAC_CALVIN]                                = 161,
    [TRAINER_RUIN_MANIAC_LARRY]                                 = 368,
    [TRAINER_JOGGER_WYATT]                                      = 77,
    [TRAINER_JOGGER_CRAIG]                                      = 162,
    [TRAINER_JOGGER_RAUL]                                       = 64,
    [TRAINER_BLACK_BELT_COLBY]                                  = 334,
    [TRAINER_BLACK_BELT_DARREN]                                 = 335,
    [TRAINER_BLACK_BELT_RAFAEL]                                 = 336,
    [TRAINER_BLACK_BELT_JEFFERY]                                = 337,
    [TRAINER_BLACK_BELT_CARL]                                   = 369,
    [TRAINER_BLACK_BELT_RICKY]                                  = 300,
    [TRAINER_LEADER_GARDENIA]                                   = 317,
    [TRAINER_LEADER_WAKE]                                       = 322,
    [TRAINER_LEADER_MAYLENE]                                    = 333,
    [TRAINER_LEADER_FANTINA]                                    = 338,
    [TRAINER_LEADER_CANDICE]                                    = 347,
    [TRAINER_LEADER_VOLKNER]                                    = 354,
    [TRAINER_LASS_MADELINE]                                     = 11,
    [TRAINER_LASS_KAITLIN]                                      = 12,
    [TRAINER_LASS_CAROLINE]                                     = 319,
    [TRAINER_LASS_MOLLY]                                        = 342,
    [TRAINER_HIKER_LOUIS]                                       = 95,
    [TRAINER_PARASOL_LADY_ALEXA]                                = 123,
    [TRAINER_PARASOL_LADY_SABRINA]                              = 124,
    [TRAINER_PICNICKER_DIANA]                                   = 289,
    [TRAINER_PICNICKER_CHEYENNE]                                = 343,
    [TRAINER_POKE_KID_MEGHAN]                                   = 360,
    [TRAINER_POLICEMAN_DANNY]                                   = 125,
    [TRAINER_POLICEMAN_THOMAS]                                  = 221,
    [TRAINER_DUMMY_334]                                         = 316,
    [TRAINER_RICH_BOY_TREY]                                     = 222,
    [TRAINER_DUMMY_336]                                         = 315,
    [TRAINER_SAILOR_MARC]                                       = 220,
    [TRAINER_SAILOR_SKYLER]                                     = 190,
    [TRAINER_SAILOR_DAMIAN]                                     = 325,
    [TRAINER_SCHOOL_KID_CHANCE]                                 = 344,
    [TRAINER_SCHOOL_KID_FORREST]                                = 361,
    [TRAINER_SCHOOL_KID_HARRISON]                               = 371,
    [TRAINER_SCHOOL_KID_MACKENZIE]                              = 345,
    [TRAINER_SCHOOL_KID_TIERA]                                  = 362,
    [TRAINER_SCHOOL_KID_CHRISTINE]                              = 372,
    [TRAINER_BEAUTY_CYNDY]                                      = 136,
    [TRAINER_DUMMY_347]                                         = 224,
    [TRAINER_BEAUTY_LINDSAY]                                    = 318,
    [TRAINER_DUMMY_349]                                         = 352,
    [TRAINER_DUMMY_350]                                         = 353,
    [TRAINER_DUMMY_351]                                         = 329,
    [TRAINER_DUMMY_352]                                         = 330,
    [TRAINER_DUMMY_353]                                         = 331,
    [TRAINER_DUMMY_354]                                         = 332,
    [TRAINER_YOUNGSTER_DALLAS]                                  = 9,
    [TRAINER_YOUNGSTER_SEBASTIAN]                               = 10,
    [TRAINER_YOUNGSTER_DONNY]                                   = 346,
    [TRAINER_TUBER_TRENTON]                                     = 194,
    [TRAINER_TUBER_CONNER]                                      = 226,
    [TRAINER_TUBER_MARIEL]                                      = 195,
    [TRAINER_TUBER_HOLLY]                                       = 227,
    [TRAINER_VETERAN_ARMANDO]                                   = 370,
    [TRAINER_DUMMY_363]                                         = 312,
    [TRAINER_DUMMY_364]                                         = 313,
    [TRAINER_DUMMY_365]                                         = 314,
    [TRAINER_WAITRESS_KATI]                                     = 311,
    [TRAINER_WORKER_GERARDO]                                    = 301,
    [TRAINER_INTERVIEWERS_ROXY_AND_OLI_UNUSED]                  = 376,
    [TRAINER_CAMERAMAN_TEVIN_UNUSED]                            = 374,
    [TRAINER_REPORTER_KINSEY_UNUSED]                            = 379,
    [TRAINER_IDOL_GRACE_UNUSED]                                 = 373,
    [TRAINER_BATTLE_GIRL_TYLER]                                 = 398,
    [TRAINER_BIRD_KEEPER_AUTUMN]                                = 420,
    [TRAINER_DUMMY_376]                                         = 499,
    [TRAINER_CAMPER_ZACKARY]                                    = 20,
    [TRAINER_CAMPER_LAWRENCE]                                   = 399,
    [TRAINER_CAMPER_DIEGO]                                      = 410,
    [TRAINER_CAMPER_PARKER]                                     = 411,
    [TRAINER_COLLECTOR_DEAN]                                    = 121,
    [TRAINER_COLLECTOR_JAMAL]                                   = 148,
    [TRAINER_COLLECTOR_TERRY]                                   = 412,
    [TRAINER_DRAGON_TAMER_JOE]                                  = 421,
    [TRAINER_ACE_TRAINER_JONAH]                                 = 400,
    [TRAINER_ACE_TRAINER_MICAH]                                 = 422,
    [TRAINER_ACE_TRAINER_ARTHUR]                                = 423,
    [TRAINER_ACE_TRAINER_BRENDA]                                = 401,
    [TRAINER_ACE_TRAINER_BRANDI]                                = 424,
    [TRAINER_ACE_TRAINER_CLARICE]                               = 425,
    [TRAINER_PSYCHIC_KODY]                                      = 254,
    [TRAINER_PSYCHIC_LANDON]                                    = 426,
    [TRAINER_PSYCHIC_DEANDRE]                                   = 427,
    [TRAINER_PSYCHIC_RACHAEL]                                   = 256,
    [TRAINER_PSYCHIC_DESIREE]                                   = 428,
    [TRAINER_PSYCHIC_KENDRA]                                    = 429,
    [TRAINER_FISHERMAN_WALTER]                                  = 324,
    [TRAINER_GALACTIC_BOSS_CYRUS_GALACTIC_HQ]                   = 750,
    [TRAINER_GALACTIC_BOSS_CYRUS_DISTORTION_WORLD]              = 751,
    [TRAINER_COMMANDER_MARS_LAKE_VERITY]                        = 507,
    [TRAINER_COMMANDER_JUPITER_TEAM_GALACTIC_ETERNA_BUILDING]   = 382,
    [TRAINER_COMMANDER_JUPITER_SPEAR_PILLAR]                    = 746,
    [TRAINER_COMMANDER_SATURN_VALOR_CAVERN]                     = 512,
    [TRAINER_COMMANDER_SATURN_GALACTIC_HQ]                      = 516,
    [TRAINER_GALACTIC_GRUNT_TEAM_GALACTIC_ETERNA_BUILDING_1F_1] = 383,
    [TRAINER_DUMMY_411]                                         = 384,
    [TRAINER_GALACTIC_GRUNT_TEAM_GALACTIC_ETERNA_BUILDING_2F_1] = 385,
    [TRAINER_DUMMY_413]                                         = 386,
    [TRAINER_GALACTIC_GRUNT_JUBILIFE_CITY_1]                    = 380,
    [TRAINER_GALACTIC_GRUNT_JUBILIFE_CITY_2]                    = 381,
    [TRAINER_GALACTIC_GRUNT_CELESTIC_TOWN]                      = 506,
    [TRAINER_GALACTIC_GRUNT_LAKE_VALOR_1]                       = 513,
    [TRAINER_GALACTIC_GRUNT_LAKE_VALOR_2]                       = 514,
    [TRAINER_GALACTIC_GRUNT_LAKE_VERITY_1]                      = 508,
    [TRAINER_GALACTIC_GRUNT_LAKE_VERITY_3]                      = 510,
    [TRAINER_GALACTIC_GRUNT_TEAM_GALACTIC_ETERNA_BUILDING_1F_2] = 387,
    [TRAINER_GALACTIC_GRUNT_TEAM_GALACTIC_ETERNA_BUILDING_2F_2] = 388,
    [TRAINER_GALACTIC_GRUNT_TEAM_GALACTIC_ETERNA_BUILDING_3F]   = 389,
    [TRAINER_DUMMY_424]                                         = 390,
    [TRAINER_GALACTIC_GRUNT_LAKE_VALOR_3]                       = 515,
    [TRAINER_GALACTIC_GRUNT_LAKE_VERITY_2]                      = 509,
    [TRAINER_GALACTIC_GRUNT_LAKE_VERITY_4]                      = 511,
    [TRAINER_GALACTIC_GRUNT_GALACTIC_HQ_1F]                     = 519,
    [TRAINER_DUMMY_429]                                         = 523,
    [TRAINER_GALACTIC_GRUNT_GALACTIC_HQ_2F_3]                   = 526,
    [TRAINER_GUITARIST_ARTURO_UNUSED]                           = 375,
    [TRAINER_DUMMY_432]                                         = 500,
    [TRAINER_DUMMY_433]                                         = 491,
    [TRAINER_DUMMY_434]                                         = 492,
    [TRAINER_DUMMY_435]                                         = 493,
    [TRAINER_DUMMY_436]                                         = 494,
    [TRAINER_DUMMY_437]                                         = 487,
    [TRAINER_DUMMY_438]                                         = 488,
    [TRAINER_DUMMY_439]                                         = 489,
    [TRAINER_DUMMY_440]                                         = 490,
    [TRAINER_DUMMY_441]                                         = 63,
    [TRAINER_RUIN_MANIAC_HARRY]                                 = 99,
    [TRAINER_RUIN_MANIAC_GERALD]                                = 413,
    [TRAINER_BLACK_BELT_MILES]                                  = 282,
    [TRAINER_BLACK_BELT_KENDAL]                                 = 402,
    [TRAINER_BLACK_BELT_EDDIE]                                  = 430,
    [TRAINER_BLACK_BELT_WILLIE]                                 = 431,
    [TRAINER_LASS_CASSIDY]                                      = 414,
    [TRAINER_HIKER_THEODORE]                                    = 38,
    [TRAINER_HIKER_DAMON]                                       = 403,
    [TRAINER_HIKER_MAURICE]                                     = 404,
    [TRAINER_HIKER_REGINALD]                                    = 415,
    [TRAINER_HIKER_LORENZO]                                     = 416,
    [TRAINER_PICNICKER_KARINA]                                  = 22,
    [TRAINER_PICNICKER_SUMMER]                                  = 405,
    [TRAINER_PICNICKER_TORI]                                    = 417,
    [TRAINER_PICNICKER_ANA]                                     = 418,
    [TRAINER_CLOWN_LEE_UNUSED]                                  = 377,
    [TRAINER_DUMMY_461]                                         = 495,
    [TRAINER_DUMMY_462]                                         = 496,
    [TRAINER_DUMMY_463]                                         = 497,
    [TRAINER_DUMMY_464]                                         = 498,
    [TRAINER_POKE_KID_ARIEL_UNUSED]                             = 378,
    [TRAINER_DUMMY_466]                                         = 501,
    [TRAINER_DUMMY_467]                                         = 223,
    [TRAINER_RIVAL_ROUTE_209_PIPLUP]                            = 539,
    [TRAINER_RIVAL_ROUTE_209_TURTWIG]                           = 540,
    [TRAINER_RIVAL_ROUTE_209_CHIMCHAR]                          = 541,
    [TRAINER_RIVAL_PASTORIA_CITY_PIPLUP]                        = 542,
    [TRAINER_RIVAL_PASTORIA_CITY_TURTWIG]                       = 543,
    [TRAINER_RIVAL_PASTORIA_CITY_CHIMCHAR]                      = 544,
    [TRAINER_RIVAL_CANALAVE_CITY_PIPLUP]                        = 545,
    [TRAINER_RIVAL_CANALAVE_CITY_TURTWIG]                       = 546,
    [TRAINER_RIVAL_CANALAVE_CITY_CHIMCHAR]                      = 547,
    [TRAINER_RIVAL_POKEMON_LEAGUE_PIPLUP]                       = 548,
    [TRAINER_RIVAL_POKEMON_LEAGUE_TURTWIG]                      = 549,
    [TRAINER_RIVAL_POKEMON_LEAGUE_CHIMCHAR]                     = 550,
    [TRAINER_SAILOR_ZACHARIAH]                                  = 230,
    [TRAINER_SAILOR_SAMSON]                                     = 326,
    [TRAINER_SCIENTIST_SHAUN]                                   = 122,
    [TRAINER_DUMMY_487]                                         = 502,
    [TRAINER_NINJA_BOY_FABIAN]                                  = 79,
    [TRAINER_NINJA_BOY_BRENNAN]                                 = 80,
    [TRAINER_NINJA_BOY_BRUCE]                                   = 81,
    [TRAINER_BEAUTY_DEVON]                                      = 149,
    [TRAINER_BEAUTY_NICOLA]                                     = 225,
    [TRAINER_DUMMY_493]                                         = 503,
    [TRAINER_SWIMMER_CLAIRE]                                    = 202,
    [TRAINER_YOUNGSTER_WAYNE]                                   = 419,
    [TRAINER_TUBER_JACKY]                                       = 327,
    [TRAINER_TUBER_CAITLYN]                                     = 328,
    [TRAINER_VETERAN_TERRELL]                                   = 432,
    [TRAINER_VETERAN_BRENDEN]                                   = 433,
    [TRAINER_DUMMY_501]                                         = 504,
    [TRAINER_DUMMY_502]                                         = 505,
    [TRAINER_WORKER_NOEL]                                       = 406,
    [TRAINER_WORKER_BRADEN]                                     = 407,
    [TRAINER_WORKER_BRENDON]                                    = 408,
    [TRAINER_WORKER_QUENTIN]                                    = 409,
    [TRAINER_GALACTIC_GRUNT_GALACTIC_HQ_B2F_1]                  = 517,
    [TRAINER_GALACTIC_GRUNT_GALACTIC_HQ_B2F_2]                  = 518,
    [TRAINER_GALACTIC_GRUNT_GALACTIC_HQ_3F_1]                   = 520,
    [TRAINER_GALACTIC_GRUNT_GALACTIC_HQ_2F_1]                   = 521,
    [TRAINER_DUMMY_511]                                         = 522,
    [TRAINER_GALACTIC_GRUNT_GALACTIC_HQ_3F_2]                   = 524,
    [TRAINER_GALACTIC_GRUNT_GALACTIC_HQ_2F_2]                   = 525,
    [TRAINER_GALACTIC_GRUNT_GALACTIC_HQ_3F_3]                   = 527,
    [TRAINER_GALACTIC_GRUNT_MT_CORONET_3F_1]                    = 529,
    [TRAINER_GALACTIC_GRUNT_MT_CORONET_4F_1]                    = 530,
    [TRAINER_GALACTIC_GRUNT_MT_CORONET_4F_2]                    = 531,
    [TRAINER_GALACTIC_GRUNT_MT_CORONET_TUNNEL_ROOM_1]           = 532,
    [TRAINER_GALACTIC_GRUNT_MT_CORONET_TUNNEL_ROOM_2]           = 533,
    [TRAINER_GALACTIC_GRUNT_MT_CORONET_5F_1]                    = 534,
    [TRAINER_GALACTIC_GRUNT_SPEAR_PILLAR_1]                     = 743,
    [TRAINER_GALACTIC_GRUNT_GALACTIC_HQ_3F_4]                   = 528,
    [TRAINER_GALACTIC_GRUNT_MT_CORONET_3F_2]                    = 535,
    [TRAINER_GALACTIC_GRUNT_MT_CORONET_TUNNEL_ROOM_3]           = 536,
    [TRAINER_GALACTIC_GRUNT_MT_CORONET_5F_2]                    = 537,
    [TRAINER_GALACTIC_GRUNT_MT_CORONET_6F]                      = 538,
    [TRAINER_GALACTIC_GRUNT_SPEAR_PILLAR_2]                     = 744,
    [TRAINER_COMMANDER_MARS_SPEAR_PILLAR]                       = 745,
    [TRAINER_ROUGHNECK_KIRBY]                                   = 395,
    [TRAINER_POKEFAN_LEONARD]                                   = 392,
    [TRAINER_POKEFAN_REBEKAH]                                   = 393,
    [TRAINER_YOUNGSTER_OLIVER]                                  = 397,
    [TRAINER_BELLE_AND_PA_BETH_AND_BOB]                         = 394,
    [TRAINER_YOUNG_COUPLE_MIKE_AND_NAT]                         = 396,
    [TRAINER_AROMA_LADY_ALISON]                                 = 722,
    [TRAINER_ARTIST_ISMAEL]                                     = 715,
    [TRAINER_BREEDER_KAYLEE]                                    = 732,
    [TRAINER_CAMERAMAN_DARRYL]                                  = 727,
    [TRAINER_COLLECTOR_EUGENE]                                  = 721,
    [TRAINER_POKEFAN_MEREDITH]                                  = 724,
    [TRAINER_PI_KENDRICK]                                       = 729,
    [TRAINER_GENTLEMAN_LEONARDO]                                = 719,
    [TRAINER_SOCIALITE_REBECCA]                                 = 720,
    [TRAINER_LASS_BLYTHE]                                       = 726,
    [TRAINER_RICH_BOY_ROMAN]                                    = 717,
    [TRAINER_LADY_KYLIE]                                        = 718,
    [TRAINER_REPORTER_VALERIE]                                  = 728,
    [TRAINER_SCHOOL_KID_ESTEBAN]                                = 723,
    [TRAINER_SCIENTIST_EMILIO]                                  = 731,
    [TRAINER_BEAUTY_GABRIELLA]                                  = 716,
    [TRAINER_BEAUTY_HARLEY]                                     = 730,
    [TRAINER_VETERAN_EMANUEL]                                   = 725,
    [TRAINER_RUIN_MANIAC_KARL]                                  = 391,
    [TRAINER_BIRD_KEEPER_AUDREY]                                = 434,
    [TRAINER_BIRD_KEEPER_GENEVA]                                = 435,
    [TRAINER_BIRD_KEEPER_KRYSTAL]                               = 471,
    [TRAINER_DRAGON_TAMER_GEOFFREY]                             = 436,
    [TRAINER_DRAGON_TAMER_DARIEN]                               = 437,
    [TRAINER_DRAGON_TAMER_KEEGAN]                               = 438,
    [TRAINER_DRAGON_TAMER_STANLEY]                              = 439,
    [TRAINER_DRAGON_TAMER_DRAKE]                                = 472,
    [TRAINER_DRAGON_TAMER_KENNY]                                = 473,
    [TRAINER_ACE_TRAINER_RODOLFO]                               = 440,
    [TRAINER_ACE_TRAINER_SAUL]                                  = 441,
    [TRAINER_ACE_TRAINER_JOSE]                                  = 442,
    [TRAINER_ACE_TRAINER_FELIX]                                 = 443,
    [TRAINER_ACE_TRAINER_QUINN]                                 = 444,
    [TRAINER_ACE_TRAINER_GRAHAM]                                = 445,
    [TRAINER_ACE_TRAINER_KEENAN]                                = 474,
    [TRAINER_ACE_TRAINER_STEFAN]                                = 475,
    [TRAINER_ACE_TRAINER_SKYLAR]                                = 476,
    [TRAINER_ACE_TRAINER_ABEL]                                  = 477,
    [TRAINER_ACE_TRAINER_DEANNA]                                = 446,
    [TRAINER_ACE_TRAINER_MOIRA]                                 = 447,
    [TRAINER_ACE_TRAINER_DANA]                                  = 448,
    [TRAINER_ACE_TRAINER_MIKAYLA]                               = 449,
    [TRAINER_ACE_TRAINER_MEAGAN]                                = 450,
    [TRAINER_ACE_TRAINER_SANDRA]                                = 451,
    [TRAINER_ACE_TRAINER_KASSANDRA]                             = 478,
    [TRAINER_ACE_TRAINER_JASMIN]                                = 479,
    [TRAINER_ACE_TRAINER_NATASHA]                               = 480,
    [TRAINER_ACE_TRAINER_MONIQUE]                               = 481,
    [TRAINER_PSYCHIC_CORBIN]                                    = 452,
    [TRAINER_PSYCHIC_STERLING]                                  = 482,
    [TRAINER_PSYCHIC_DAISY]                                     = 453,
    [TRAINER_PSYCHIC_CHELSEY]                                   = 483,
    [TRAINER_BLACK_BELT_DAVON]                                  = 454,
    [TRAINER_BLACK_BELT_GRIFFIN]                                = 455,
    [TRAINER_BLACK_BELT_RAY]                                    = 484,
    [TRAINER_BLACK_BELT_JARRETT]                                = 485,
    [TRAINER_RANGER_KYLER]                                      = 456,
    [TRAINER_RANGER_DESHAWN]                                    = 457,
    [TRAINER_RANGER_DWAYNE]                                     = 458,
    [TRAINER_RANGER_ASHLEE]                                     = 459,
    [TRAINER_RANGER_FELICIA]                                    = 460,
    [TRAINER_RANGER_KRISTA]                                     = 461,
    [TRAINER_SWIMMER_GLENN]                                     = 462,
    [TRAINER_SWIMMER_KURT]                                      = 463,
    [TRAINER_SWIMMER_SAM]                                       = 464,
    [TRAINER_SWIMMER_WADE]                                      = 465,
    [TRAINER_SWIMMER_JOANNA]                                    = 466,
    [TRAINER_SWIMMER_SOPHIA]                                    = 467,
    [TRAINER_SWIMMER_MALLORY]                                   = 468,
    [TRAINER_SWIMMER_LYDIA]                                     = 469,
    [TRAINER_DUMMY_605]                                         = 470,
    [TRAINER_VETERAN_HARLAN]                                    = 486,
    [TRAINER_AROMA_LADY_ELIZABETH_REMATCH_1]                    = 586,
    [TRAINER_AROMA_LADY_ELIZABETH_REMATCH_2]                    = 587,
    [TRAINER_AROMA_LADY_ELIZABETH_REMATCH_3]                    = 588,
    [TRAINER_ARTIST_WILLIAM_REMATCH_1]                          = 603,
    [TRAINER_ARTIST_WILLIAM_REMATCH_2]                          = 604,
    [TRAINER_ARTIST_WILLIAM_REMATCH_3]                          = 605,
    [TRAINER_BATTLE_GIRL_HELEN_REMATCH_1]                       = 600,
    [TRAINER_BATTLE_GIRL_HELEN_REMATCH_2]                       = 601,
    [TRAINER_BATTLE_GIRL_HELEN_REMATCH_3]                       = 602,
    [TRAINER_BIRD_KEEPER_BRIANNA_REMATCH_1]                     = 625,
    [TRAINER_BIRD_KEEPER_BRIANNA_REMATCH_2]                     = 626,
    [TRAINER_BIRD_KEEPER_AUDREY_REMATCH]                        = 701,
    [TRAINER_BREEDER_ALBERT_REMATCH_1]                          = 606,
    [TRAINER_BREEDER_ALBERT_REMATCH_2]                          = 607,
    [TRAINER_BREEDER_ALBERT_REMATCH_3]                          = 608,
    [TRAINER_BREEDER_JENNIFER_REMATCH_1]                        = 609,
    [TRAINER_BREEDER_JENNIFER_REMATCH_2]                        = 610,
    [TRAINER_BREEDER_JENNIFER_REMATCH_3]                        = 611,
    [TRAINER_CAMPER_ZACKARY_REMATCH_1]                          = 580,
    [TRAINER_CAMPER_ZACKARY_REMATCH_2]                          = 581,
    [TRAINER_CAMPER_ZACKARY_REMATCH_3]                          = 582,
    [TRAINER_ACE_TRAINER_DALTON_REMATCH]                        = 676,
    [TRAINER_ACE_TRAINER_OLIVIA_REMATCH]                        = 677,
    [TRAINER_COLLECTOR_IVAN_REMATCH]                            = 686,
    [TRAINER_DUMMY_058_REMATCH_1]                               = 615,
    [TRAINER_DUMMY_058_REMATCH_2]                               = 616,
    [TRAINER_CYCLIST_JOHN_REMATCH_1]                            = 591,
    [TRAINER_CYCLIST_JOHN_REMATCH_2]                            = 592,
    [TRAINER_CYCLIST_JOHN_REMATCH_3]                            = 593,
    [TRAINER_CYCLIST_KAYLA_REMATCH_1]                           = 594,
    [TRAINER_CYCLIST_KAYLA_REMATCH_2]                           = 595,
    [TRAINER_CYCLIST_KAYLA_REMATCH_3]                           = 596,
    [TRAINER_DRAGON_TAMER_PATRICK_REMATCH_1]                    = 623,
    [TRAINER_DRAGON_TAMER_PATRICK_REMATCH_2]                    = 624,
    [TRAINER_DRAGON_TAMER_HAYDEN_REMATCH]                       = 697,
    [TRAINER_DRAGON_TAMER_GEOFFREY_REMATCH]                     = 702,
    [TRAINER_ACE_TRAINER_JAKE_REMATCH]                          = 684,
    [TRAINER_ACE_TRAINER_DENNIS_REMATCH_1]                      = 667,
    [TRAINER_ACE_TRAINER_DENNIS_REMATCH_2]                      = 668,
    [TRAINER_ACE_TRAINER_RODOLFO_REMATCH]                       = 703,
    [TRAINER_ACE_TRAINER_SAUL_REMATCH]                          = 704,
    [TRAINER_ACE_TRAINER_SHANNON_REMATCH]                       = 685,
    [TRAINER_ACE_TRAINER_MAYA_REMATCH_1]                        = 669,
    [TRAINER_ACE_TRAINER_MAYA_REMATCH_2]                        = 670,
    [TRAINER_ACE_TRAINER_DEANNA_REMATCH]                        = 705,
    [TRAINER_ACE_TRAINER_MOIRA_REMATCH]                         = 706,
    [TRAINER_PSYCHIC_MITCHELL_REMATCH_1]                        = 661,
    [TRAINER_PSYCHIC_MITCHELL_REMATCH_2]                        = 662,
    [TRAINER_PSYCHIC_MAXWELL_REMATCH]                           = 698,
    [TRAINER_PSYCHIC_CORBIN_REMATCH]                            = 707,
    [TRAINER_PSYCHIC_ABIGAIL_REMATCH_1]                         = 663,
    [TRAINER_PSYCHIC_ABIGAIL_REMATCH_2]                         = 664,
    [TRAINER_PSYCHIC_BRITTNEY_REMATCH]                          = 699,
    [TRAINER_PSYCHIC_DAISY_REMATCH]                             = 708,
    [TRAINER_RANCHER_MARCO_REMATCH_1]                           = 619,
    [TRAINER_RANCHER_MARCO_REMATCH_2]                           = 620,
    [TRAINER_FISHERMAN_JOSEPH_REMATCH_1]                        = 589,
    [TRAINER_FISHERMAN_JOSEPH_REMATCH_2]                        = 590,
    [TRAINER_FISHERMAN_MIGUEL_REMATCH]                          = 682,
    [TRAINER_FISHERMAN_ALEC_REMATCH]                            = 687,
    [TRAINER_TWINS_TERI_AND_TIA_REMATCH_1]                      = 617,
    [TRAINER_TWINS_TERI_AND_TIA_REMATCH_2]                      = 618,
    [TRAINER_PI_CARLOS_REMATCH_1]                               = 665,
    [TRAINER_PI_CARLOS_REMATCH_2]                               = 666,
    [TRAINER_GENTLEMAN_JEREMY_REMATCH_1]                        = 635,
    [TRAINER_GENTLEMAN_JEREMY_REMATCH_2]                        = 636,
    [TRAINER_GENTLEMAN_JEREMY_REMATCH_3]                        = 637,
    [TRAINER_GUITARIST_TONY_REMATCH]                            = 683,
    [TRAINER_RUIN_MANIAC_HARRY_REMATCH_1]                       = 630,
    [TRAINER_RUIN_MANIAC_HARRY_REMATCH_2]                       = 631,
    [TRAINER_JOGGER_CRAIG_REMATCH_1]                            = 760,
    [TRAINER_JOGGER_CRAIG_REMATCH_2]                            = 761,
    [TRAINER_BLACK_BELT_PHILIP_REMATCH]                         = 675,
    [TRAINER_BLACK_BELT_DAVON_REMATCH]                          = 709,
    [TRAINER_SOCIALITE_REINA_REMATCH_1]                         = 638,
    [TRAINER_SOCIALITE_REINA_REMATCH_2]                         = 639,
    [TRAINER_LASS_SAMANTHA_REMATCH_1]                           = 574,
    [TRAINER_LASS_SAMANTHA_REMATCH_2]                           = 575,
    [TRAINER_LASS_SAMANTHA_REMATCH_3]                           = 576,
    [TRAINER_LASS_MADELINE_REMATCH_1]                           = 571,
    [TRAINER_LASS_MADELINE_REMATCH_2]                           = 572,
    [TRAINER_LASS_MADELINE_REMATCH_3]                           = 573,
    [TRAINER_HIKER_THEODORE_REMATCH_1]                          = 597,
    [TRAINER_HIKER_THEODORE_REMATCH_2]                          = 598,
    [TRAINER_HIKER_THEODORE_REMATCH_3]                          = 599,
    [TRAINER_BUG_CATCHER_BRANDON_REMATCH_1]                     = 577,
    [TRAINER_BUG_CATCHER_BRANDON_REMATCH_2]                     = 578,
    [TRAINER_BUG_CATCHER_BRANDON_REMATCH_3]                     = 579,
    [TRAINER_PARASOL_LADY_ALEXA_REMATCH_1]                      = 649,
    [TRAINER_PARASOL_LADY_ALEXA_REMATCH_2]                      = 650,
    [TRAINER_PARASOL_LADY_ALEXA_REMATCH_3]                      = 651,
    [TRAINER_PICNICKER_KARINA_REMATCH_1]                        = 583,
    [TRAINER_PICNICKER_KARINA_REMATCH_2]                        = 584,
    [TRAINER_PICNICKER_KARINA_REMATCH_3]                        = 585,
    [TRAINER_POKE_KID_DANIELLE_REMATCH_1]                       = 612,
    [TRAINER_POKE_KID_DANIELLE_REMATCH_2]                       = 613,
    [TRAINER_POKE_KID_DANIELLE_REMATCH_3]                       = 614,
    [TRAINER_POLICEMAN_DANNY_REMATCH_1]                         = 652,
    [TRAINER_POLICEMAN_DANNY_REMATCH_2]                         = 653,
    [TRAINER_POLICEMAN_DANNY_REMATCH_3]                         = 654,
    [TRAINER_RICH_BOY_TREY_REMATCH_1]                           = 690,
    [TRAINER_RICH_BOY_TREY_REMATCH_2]                           = 691,
    [TRAINER_LADY_MELISSA_REMATCH_1]                            = 632,
    [TRAINER_LADY_MELISSA_REMATCH_2]                            = 633,
    [TRAINER_LADY_MELISSA_REMATCH_3]                            = 634,
    [TRAINER_RANGER_TAYLOR_REMATCH_1]                           = 640,
    [TRAINER_RANGER_TAYLOR_REMATCH_2]                           = 641,
    [TRAINER_RANGER_TAYLOR_REMATCH_3]                           = 642,
    [TRAINER_RANGER_KYLER_REMATCH]                              = 710,
    [TRAINER_RANGER_ALLISON_REMATCH_1]                          = 643,
    [TRAINER_RANGER_ALLISON_REMATCH_2]                          = 644,
    [TRAINER_RANGER_ALLISON_REMATCH_3]                          = 645,
    [TRAINER_RANGER_ASHLEE_REMATCH]                             = 711,
    [TRAINER_SAILOR_MARC_REMATCH_1]                             = 688,
    [TRAINER_SAILOR_MARC_REMATCH_2]                             = 689,
    [TRAINER_SAILOR_ZACHARIAH_REMATCH]                          = 692,
    [TRAINER_SCIENTIST_SHAUN_REMATCH_1]                         = 646,
    [TRAINER_SCIENTIST_SHAUN_REMATCH_2]                         = 647,
    [TRAINER_SCIENTIST_SHAUN_REMATCH_3]                         = 648,
    [TRAINER_NINJA_BOY_ZACH_REMATCH_1]                          = 627,
    [TRAINER_NINJA_BOY_ZACH_REMATCH_2]                          = 628,
    [TRAINER_NINJA_BOY_ZACH_REMATCH_3]                          = 629,
    [TRAINER_BEAUTY_CYNDY_REMATCH_1]                            = 659,
    [TRAINER_BEAUTY_CYNDY_REMATCH_2]                            = 660,
    [TRAINER_SKIER_EDWARD_REMATCH_1]                            = 671,
    [TRAINER_SKIER_EDWARD_REMATCH_2]                            = 672,
    [TRAINER_SKIER_BJORN_REMATCH_1]                             = 678,
    [TRAINER_SKIER_BJORN_REMATCH_2]                             = 679,
    [TRAINER_SKIER_ANDREA_REMATCH_1]                            = 673,
    [TRAINER_SKIER_ANDREA_REMATCH_2]                            = 674,
    [TRAINER_SKIER_MADISON_REMATCH_1]                           = 680,
    [TRAINER_SKIER_MADISON_REMATCH_2]                           = 681,
    [TRAINER_SWIMMER_WESLEY_REMATCH]                            = 693,
    [TRAINER_SWIMMER_FRANCISCO_REMATCH]                         = 694,
    [TRAINER_SWIMMER_GLENN_REMATCH]                             = 712,
    [TRAINER_SWIMMER_MIRANDA_REMATCH]                           = 695,
    [TRAINER_SWIMMER_CRYSTAL_REMATCH]                           = 696,
    [TRAINER_SWIMMER_JOANNA_REMATCH]                            = 713,
    [TRAINER_YOUNGSTER_TRISTAN_REMATCH_1]                       = 565,
    [TRAINER_YOUNGSTER_TRISTAN_REMATCH_2]                       = 566,
    [TRAINER_YOUNGSTER_TRISTAN_REMATCH_3]                       = 567,
    [TRAINER_YOUNGSTER_DALLAS_REMATCH_1]                        = 568,
    [TRAINER_YOUNGSTER_DALLAS_REMATCH_2]                        = 569,
    [TRAINER_YOUNGSTER_DALLAS_REMATCH_3]                        = 570,
    [TRAINER_TUBER_JARED_REMATCH_1]                             = 655,
    [TRAINER_TUBER_JARED_REMATCH_2]                             = 656,
    [TRAINER_TUBER_CHELSEA_REMATCH_1]                           = 657,
    [TRAINER_VETERAN_BRIAN_REMATCH_1]                           = 621,
    [TRAINER_TUBER_CHELSEA_REMATCH_2]                           = 658,
    [TRAINER_VETERAN_BRIAN_REMATCH_2]                           = 622,
    [TRAINER_VETERAN_ARMANDO_REMATCH]                           = 700,
    [TRAINER_DUMMY_605_REMATCH]                                 = 714,
    [TRAINER_YOUNGSTER_ROLAND_UNUSED_1]                         = 556,
    [TRAINER_LASS_CARRIE_UNUSED_1]                              = 557,
    [TRAINER_YOUNGSTER_NORMAN_UNUSED_1]                         = 558,
    [TRAINER_YOUNGSTER_ROLAND_UNUSED_2]                         = 559,
    [TRAINER_LASS_CARRIE_UNUSED_2]                              = 560,
    [TRAINER_YOUNGSTER_NORMAN_UNUSED_2]                         = 561,
    [TRAINER_YOUNGSTER_ROLAND_UNUSED_3]                         = 562,
    [TRAINER_LASS_CARRIE_UNUSED_3]                              = 563,
    [TRAINER_YOUNGSTER_NORMAN_UNUSED_3]                         = 564,
    [TRAINER_ACE_TRAINER_ANTON]                                 = 734,
    [TRAINER_ACE_TRAINER_BRENNA]                                = 735,
    [TRAINER_SCIENTIST_DARRIUS]                                 = 737,
    [TRAINER_SCIENTIST_FREDRICK]                                = 738,
    [TRAINER_SCIENTIST_TRAVON]                                  = 736,
    [TRAINER_POKE_KID_JANET]                                    = 739,
    [TRAINER_GALACTIC_GRUNT_IRON_ISLAND_1]                      = 752,
    [TRAINER_GALACTIC_GRUNT_IRON_ISLAND_2]                      = 753,
    [TRAINER_RIVAL_SURVIVAL_AREA_1_PIPLUP]                      = 754,
    [TRAINER_RIVAL_SURVIVAL_AREA_1_TURTWIG]                     = 755,
    [TRAINER_RIVAL_SURVIVAL_AREA_1_CHIMCHAR]                    = 756,
    [TRAINER_RIVAL_SURVIVAL_AREA_UNUSED_PIPLUP]                 = 757,
    [TRAINER_RIVAL_SURVIVAL_AREA_UNUSED_TURTWIG]                = 758,
    [TRAINER_RIVAL_SURVIVAL_AREA_UNUSED_CHIMCHAR]               = 759,
    [TRAINER_GALACTIC_GRUNT_VALLEY_WINDWORKS_1]                 = 733,
    [TRAINER_WORKER_DILLAN]                                     = 740,
    [TRAINER_WORKER_HOLDEN]                                     = 741,
    [TRAINER_WORKER_CONRAD]                                     = 742,
    [TRAINER_GALACTIC_GRUNT_VALOR_LAKEFRONT]                    = 749,
    [TRAINER_GALACTIC_GRUNT_VEILSTONE_CITY_1]                   = 747,
    [TRAINER_GALACTIC_GRUNT_VEILSTONE_CITY_2]                   = 748,
    [TRAINER_RIVAL_ROUTE_201_PIPLUP]                            = 762,
    [TRAINER_RIVAL_ROUTE_201_TURTWIG]                           = 763,
    [TRAINER_RIVAL_ROUTE_201_CHIMCHAR]                          = 764,
    [TRAINER_LEADER_CANDICE_REMATCH]                            = 808,
    [TRAINER_LEADER_MAYLENE_REMATCH]                            = 806,
    [TRAINER_LEADER_VOLKNER_REMATCH]                            = 810,
    [TRAINER_LEADER_BYRON_REMATCH]                              = 809,
    [TRAINER_LEADER_GARDENIA_REMATCH]                           = 804,
    [TRAINER_LEADER_ROARK_REMATCH]                              = 803,
    [TRAINER_LEADER_WAKE_REMATCH]                               = 805,
    [TRAINER_LEADER_FANTINA_REMATCH]                            = 807,
    [TRAINER_RILEY_BATTLEGROUND]                                = 812,
    [TRAINER_BUCK_BATTLEGROUND]                                 = 814,
    [TRAINER_MARLEY_BATTLEGROUND]                               = 813,
    [TRAINER_MIRA_BATTLEGROUND]                                 = 815,
    [TRAINER_CHERYL_BATTLEGROUND]                               = 811,
    [TRAINER_ELITE_FOUR_AARON_REMATCH]                          = 822,
    [TRAINER_ELITE_FOUR_BERTHA_REMATCH]                         = 823,
    [TRAINER_ELITE_FOUR_FLINT_REMATCH]                          = 824,
    [TRAINER_ELITE_FOUR_LUCIAN_REMATCH]                         = 825,
    [TRAINER_CHAMPION_CYNTHIA_REMATCH]                          = 826,
    [TRAINER_RIVAL_SURVIVAL_AREA_2_PIPLUP]                      = 827,
    [TRAINER_RIVAL_SURVIVAL_AREA_2_TURTWIG]                     = 828,
    [TRAINER_RIVAL_SURVIVAL_AREA_2_CHIMCHAR]                    = 829,
    [TRAINER_CAMERAMAN_TEVIN]                                   = 770,
    [TRAINER_CAMERAMAN_TEVIN_REMATCH_1]                         = 771,
    [TRAINER_CAMERAMAN_TEVIN_REMATCH_2]                         = 772,
    [TRAINER_GUITARIST_ARTURO]                                  = 774,
    [TRAINER_GUITARIST_ARTURO_REMATCH_1]                        = 775,
    [TRAINER_GUITARIST_ARTURO_REMATCH_2]                        = 776,
    [TRAINER_IDOL_GRACE]                                        = 766,
    [TRAINER_IDOL_GRACE_REMATCH_1]                              = 767,
    [TRAINER_IDOL_GRACE_REMATCH_2]                              = 768,
    [TRAINER_INTERVIEWERS_ROXY_AND_OLI]                         = 778,
    [TRAINER_INTERVIEWERS_ROXY_AND_OLI_REMATCH_1]               = 779,
    [TRAINER_INTERVIEWERS_ROXY_AND_OLI_REMATCH_2]               = 780,
    [TRAINER_CLOWN_LEE]                                         = 782,
    [TRAINER_CLOWN_LEE_REMATCH_1]                               = 783,
    [TRAINER_CLOWN_LEE_REMATCH_2]                               = 784,
    [TRAINER_POKE_KID_ARIEL]                                    = 786,
    [TRAINER_POKE_KID_ARIEL_REMATCH_1]                          = 787,
    [TRAINER_POKE_KID_ARIEL_REMATCH_2]                          = 788,
    [TRAINER_RICH_BOY_LIAM]                                     = 799,
    [TRAINER_LADY_CELESTE]                                      = 800,
    [TRAINER_REPORTER_KINSEY]                                   = 790,
    [TRAINER_REPORTER_KINSEY_REMATCH_1]                         = 791,
    [TRAINER_REPORTER_KINSEY_REMATCH_2]                         = 792,
    [TRAINER_MAID_BELINDA]                                      = 794,
    [TRAINER_MAID_SOPHIE]                                       = 795,
    [TRAINER_MAID_EMILY]                                        = 796,
    [TRAINER_MAID_ELENA]                                        = 797,
    [TRAINER_MAID_CLARE]                                        = 798,
    [TRAINER_HALL_MATRON_ARGENTA_DUMMY]                         = 818,
    [TRAINER_FACTORY_HEAD_THORTON_DUMMY]                        = 819,
    [TRAINER_ARCADE_STAR_DAHLIA_DUMMY]                          = 820,
    [TRAINER_CASTLE_VALET_DARACH_DUMMY]                         = 821,
    [TRAINER_CAMERAMAN_TEVIN_REMATCH_3]                         = 773,
    [TRAINER_GUITARIST_ARTURO_REMATCH_3]                        = 777,
    [TRAINER_IDOL_GRACE_REMATCH_3]                              = 769,
    [TRAINER_INTERVIEWERS_ROXY_AND_OLI_REMATCH_3]               = 781,
    [TRAINER_CLOWN_LEE_REMATCH_3]                               = 785,
    [TRAINER_POKE_KID_ARIEL_REMATCH_3]                          = 789,
    [TRAINER_REPORTER_KINSEY_REMATCH_3]                         = 793,
    [TRAINER_GALACTIC_BOSS_CYRUS_CELESTIC_TOWN_RUINS]           = 765,
    [TRAINER_CAMERAMAN_TEVIN_REMATCH_4]                         = 831,
    [TRAINER_GUITARIST_ARTURO_REMATCH_4]                        = 832,
    [TRAINER_IDOL_GRACE_REMATCH_4]                              = 830,
    [TRAINER_INTERVIEWERS_ROXY_AND_OLI_REMATCH_4]               = 833,
    [TRAINER_CLOWN_LEE_REMATCH_4]                               = 834,
    [TRAINER_POKE_KID_ARIEL_REMATCH_4]                          = 835,
    [TRAINER_REPORTER_KINSEY_REMATCH_4]                         = 836,
    [TRAINER_LEADER_VOLKNER_FIGHT_AREA]                         = 801,
    [TRAINER_ELITE_FOUR_FLINT_FIGHT_AREA]                       = 802,
    [TRAINER_COMMANDER_MARS_STARK_MOUNTAIN]                     = 816,
    [TRAINER_COMMANDER_JUPITER_STARK_MOUNTAIN]                  = 817,
};
