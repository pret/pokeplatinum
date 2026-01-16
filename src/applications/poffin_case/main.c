#include "applications/poffin_case/main.h"

#include <nitro.h>

#include "generated/natures.h"

#include "applications/party_menu/defs.h"
#include "applications/party_menu/main.h"
#include "applications/poffin_case/cutscene.h"
#include "applications/poffin_case/manager.h"
#include "applications/pokemon_summary_screen/main.h"

#include "bag.h"
#include "game_options.h"
#include "heap.h"
#include "overlay_manager.h"
#include "party.h"
#include "poffin.h"
#include "pokemon.h"
#include "save_player.h"
#include "savedata.h"
#include "string_template.h"

#include "constdata/const_020F410C.h"

FS_EXTERN_OVERLAY(poffin_case);

// clang-format off
static const u8 sFlavorPreferences[][2] = {
    [NATURE_HARDY]   = { FLAVOR_MAX, FLAVOR_MAX },
    [NATURE_LONELY]  = { FLAVOR_SPICY, FLAVOR_SOUR },
    [NATURE_BRAVE]   = { FLAVOR_SPICY, FLAVOR_SWEET },
    [NATURE_ADAMANT] = { FLAVOR_SPICY, FLAVOR_DRY },
    [NATURE_NAUGHTY] = { FLAVOR_SPICY, FLAVOR_BITTER },
    [NATURE_BOLD]    = { FLAVOR_SOUR, FLAVOR_SPICY },
    [NATURE_DOCILE]  = { FLAVOR_MAX, FLAVOR_MAX },
    [NATURE_RELAXED] = { FLAVOR_SOUR, FLAVOR_SWEET },
    [NATURE_IMPISH]  = { FLAVOR_SOUR, FLAVOR_DRY },
    [NATURE_LAX]     = { FLAVOR_SOUR, FLAVOR_BITTER },
    [NATURE_TIMID]   = { FLAVOR_SWEET, FLAVOR_SPICY },
    [NATURE_HASTY]   = { FLAVOR_SWEET, FLAVOR_SOUR },
    [NATURE_SERIOUS] = { FLAVOR_MAX, FLAVOR_MAX },
    [NATURE_JOLLY]   = { FLAVOR_SWEET, FLAVOR_DRY },
    [NATURE_NAIVE]   = { FLAVOR_SWEET, FLAVOR_BITTER },
    [NATURE_MODEST]  = { FLAVOR_DRY, FLAVOR_SPICY },
    [NATURE_MILD]    = { FLAVOR_DRY, FLAVOR_SOUR },
    [NATURE_QUIET]   = { FLAVOR_DRY, FLAVOR_SWEET },
    [NATURE_BASHFUL] = { FLAVOR_MAX, FLAVOR_MAX },
    [NATURE_RASH]    = { FLAVOR_DRY, FLAVOR_BITTER },
    [NATURE_CALM]    = { FLAVOR_BITTER, FLAVOR_SPICY },
    [NATURE_GENTLE]  = { FLAVOR_BITTER, FLAVOR_SOUR },
    [NATURE_SASSY]   = { FLAVOR_BITTER, FLAVOR_SWEET },
    [NATURE_CAREFUL] = { FLAVOR_BITTER, FLAVOR_DRY },
    [NATURE_QUIRKY]  = { FLAVOR_MAX, FLAVOR_MAX }
};
// clang-format on

enum PoffinCaseAppState {
    STATE_INIT_POFFIN_MANAGER = 0,
    STATE_INIT_PARTY_MENU,
    STATE_INIT_POKEMON_SUMMARY,
    STATE_OPEN_SUMMARY_BEFORE_GIVING,
    STATE_INIT_GIVING_CUTSCENE,
    STATE_PLAY_GIVING_CUTSCENE,
    STATE_INIT_SUMMARY_AFTER_GIVING,
    STATE_OPEN_SUMMARY_AFTER_GIVING,
    STATE_EXIT,
};

typedef struct PoffinCaseApp {
    enum HeapID heapID;
    int unused;
    u8 monIndex;
    u16 unused2;
    PoffinCaseAppData *data;
    void *subAppData;
    ApplicationManager *subApp;
} PoffinCaseApp;

static int PoffinCaseApp_Init(ApplicationManager *appMan, int *state);
static int PoffinCaseApp_Main(ApplicationManager *appMan, int *state);
static int PoffinCaseApp_Exit(ApplicationManager *appMan, int *state);
static void RemoveDeletedPoffins(PoffinCaseApp *app);
static int State_InitPoffinManager(PoffinCaseApp *app);
static int State_InitPartyMenu(PoffinCaseApp *app);
static int State_InitPokemonSummaryBeforeGiving(PoffinCaseApp *app);
static int State_OpenSummaryBeforeGiving(PoffinCaseApp *app);
static int State_InitPoffinGivingCutscene(PoffinCaseApp *app);
static int State_PlayPoffinGivingCutscene(PoffinCaseApp *app);
static int State_InitSummaryAfterGiving(PoffinCaseApp *app);
static int State_OpenSummaryAfterGiving(PoffinCaseApp *app);

const ApplicationManagerTemplate gPoffinCaseAppTemplate = {
    PoffinCaseApp_Init,
    PoffinCaseApp_Main,
    PoffinCaseApp_Exit,
    FS_OVERLAY_ID_NONE
};

PoffinCaseAppData *PoffinCaseAppData_New(SaveData *saveData, enum HeapID heapID)
{
    StringTemplate *unused;
    u8 count = 0, j = 0;

    PoffinCaseAppData *appData = Heap_Alloc(heapID, sizeof(PoffinCaseAppData));
    MI_CpuClear8(appData, sizeof(PoffinCaseAppData));

    appData->poffinCase = SaveData_GetPoffinCase(saveData);
    appData->trainerInfo = SaveData_GetTrainerInfo(saveData);
    appData->party = SaveData_GetParty(saveData);
    appData->bag = SaveData_GetBag(saveData);
    appData->options = SaveData_GetOptions(saveData);

    Poffin *poffin = Poffin_New(heapID);
    unused = StringTemplate_New(1, 32, heapID);

    for (u8 i = 0; i < MAX_POFFINS; i++) {
        PoffinCase_CopyPoffinFromSlot(appData->poffinCase, i, poffin);

        if (!Poffin_HasValidFlavor(poffin)) {
            continue;
        }

        u8 poffinAttributes[7];
        Poffin_StoreAttributesToArray(poffin, poffinAttributes);

        PoffinCaseAppItem *caseItem = &appData->poffins[count];

        caseItem->caseIndex = i;
        caseItem->level = Poffin_CalcLevel(poffin);
        caseItem->type = poffinAttributes[POFFIN_ATTRIBUTEID_TYPE];
        caseItem->smoothness = poffinAttributes[POFFIN_ATTRIBUTEID_SMOOTHNESS];

        u8 poffinTypeBitMask = 1;
        for (j = 0; j < FLAVOR_MAX; j++) {
            if (poffinAttributes[j + 1]) {
                caseItem->flavors |= poffinTypeBitMask;
            }

            poffinTypeBitMask <<= 1;
        }

        caseItem->alwaysTrue = caseItem->isListed = TRUE;
        caseItem->index = count++;
        caseItem->prev = caseItem->next = 0xFF;
    }

    StringTemplate_Free(unused);
    Heap_Free(poffin);

    appData->poffinCount = count;
    appData->flavorFilter = FLAVOR_MAX;

    return appData;
}

void PoffinCaseAppData_Free(PoffinCaseAppData *appData)
{
    Heap_Free(appData);
}

static BOOL RunSubApplication(ApplicationManager **appManPtr)
{
    if (*appManPtr) {
        if (ApplicationManager_Exec(*appManPtr)) {
            ApplicationManager_Free(*appManPtr);
            *appManPtr = NULL;
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL PoffinCaseApp_Init(ApplicationManager *appMan, int *state)
{
    void *appData = ApplicationManager_Args(appMan);

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_POFFIN_CASE, 0x1000);

    PoffinCaseApp *app = ApplicationManager_NewData(appMan, sizeof(PoffinCaseApp), HEAP_ID_POFFIN_CASE);
    MI_CpuClear8(app, sizeof(PoffinCaseApp));

    app->heapID = HEAP_ID_POFFIN_CASE;
    app->data = appData;

    return TRUE;
}

static BOOL PoffinCaseApp_Main(ApplicationManager *appMan, int *state)
{
    PoffinCaseApp *poffinAppMan = ApplicationManager_Data(appMan);

    switch (*state) {
    case STATE_INIT_POFFIN_MANAGER:
        *state = State_InitPoffinManager(poffinAppMan);
        break;
    case STATE_INIT_PARTY_MENU:
        *state = State_InitPartyMenu(poffinAppMan);
        break;
    case STATE_INIT_POKEMON_SUMMARY:
        *state = State_InitPokemonSummaryBeforeGiving(poffinAppMan);
        break;
    case STATE_OPEN_SUMMARY_BEFORE_GIVING:
        *state = State_OpenSummaryBeforeGiving(poffinAppMan);
        break;
    case STATE_INIT_GIVING_CUTSCENE:
        *state = State_InitPoffinGivingCutscene(poffinAppMan);
        break;
    case STATE_PLAY_GIVING_CUTSCENE:
        *state = State_PlayPoffinGivingCutscene(poffinAppMan);
        break;
    case STATE_INIT_SUMMARY_AFTER_GIVING:
        *state = State_InitSummaryAfterGiving(poffinAppMan);
        break;
    case STATE_OPEN_SUMMARY_AFTER_GIVING:
        *state = State_OpenSummaryAfterGiving(poffinAppMan);
        break;
    case STATE_EXIT:
        return TRUE;
    }

    return FALSE;
}

static BOOL PoffinCaseApp_Exit(ApplicationManager *appMan, int *state)
{
    PoffinCaseApp *poffinAppMan = ApplicationManager_Data(appMan);

    RemoveDeletedPoffins(poffinAppMan);
    ApplicationManager_FreeData(appMan);
    Heap_Destroy(poffinAppMan->heapID);

    return TRUE;
}

static void RemoveDeletedPoffins(PoffinCaseApp *app)
{
    u8 deletionsOccurred = FALSE;

    for (u8 i = 0; i < app->data->poffinCount; i++) {
        PoffinCaseAppItem *poffin = &app->data->poffins[i];

        if (poffin->deleted) {
            PoffinCase_ClearSlot(app->data->poffinCase, poffin->caseIndex);
            deletionsOccurred = TRUE;
        }
    }

    if (!deletionsOccurred) {
        return;
    }

    PoffinCase_Compact(app->data->poffinCase);
}

static int State_InitPoffinManager(PoffinCaseApp *app)
{
    FS_EXTERN_OVERLAY(poffin_case);

    static const ApplicationManagerTemplate poffinManagerTemplate = {
        PoffinManager_Init,
        PoffinManager_Main,
        PoffinManager_Exit,
        FS_OVERLAY_ID(poffin_case),
    };

    app->subApp = ApplicationManager_New(&poffinManagerTemplate, app->data, app->heapID);
    return STATE_INIT_PARTY_MENU;
}

static int State_InitPartyMenu(PoffinCaseApp *app)
{
    if (!RunSubApplication(&app->subApp)) {
        return STATE_INIT_PARTY_MENU;
    }

    if (!app->data->poffinRemoved) {
        return STATE_EXIT;
    }

    app->data->poffinRemoved = FALSE;

    PartyMenu *partyMenu = Heap_Alloc(app->heapID, sizeof(PartyMenu));
    MI_CpuClear8(partyMenu, sizeof(PartyMenu));
    partyMenu->party = app->data->party;
    partyMenu->bag = app->data->bag;
    partyMenu->type = PARTY_MENU_TYPE_BASIC;
    partyMenu->mode = PARTY_MENU_MODE_FEED_POFFIN;
    partyMenu->options = app->data->options;

    app->subApp = ApplicationManager_New(&gPokemonPartyAppTemplate, partyMenu, app->heapID);
    app->subAppData = partyMenu;

    return STATE_INIT_POKEMON_SUMMARY;
}

static int State_InitPokemonSummaryBeforeGiving(PoffinCaseApp *app)
{
    static const u8 summaryPages[] = {
        SUMMARY_PAGE_CONDITION, SUMMARY_PAGE_EXIT, SUMMARY_PAGE_MAX
    };

    if (!RunSubApplication(&app->subApp)) {
        return STATE_INIT_POKEMON_SUMMARY;
    }

    PartyMenu *partyMenu = app->subAppData;

    u8 monIndex = partyMenu->selectedMonSlot;
    app->monIndex = monIndex;
    Heap_Free(app->subAppData);

    if (monIndex == 7) {
        return STATE_INIT_POFFIN_MANAGER;
    }

    PokemonSummary *monSummary = Heap_Alloc(app->heapID, sizeof(PokemonSummary));

    monSummary->monData = app->data->party;
    monSummary->options = app->data->options;
    monSummary->dataType = SUMMARY_DATA_PARTY_MON;
    monSummary->monIndex = monIndex;
    monSummary->monMax = Party_GetCurrentCount(monSummary->monData);
    monSummary->move = 0;
    monSummary->mode = SUMMARY_MODE_FEED_POFFIN;
    monSummary->showContest = TRUE;
    monSummary->chatotCry = NULL;

    PokemonSummaryScreen_FlagVisiblePages(monSummary, summaryPages);
    PokemonSummaryScreen_SetPlayerProfile(monSummary, app->data->trainerInfo);

    app->subApp = ApplicationManager_New(&gPokemonSummaryScreenApp, partyMenu, app->heapID);
    app->subAppData = monSummary;

    return STATE_OPEN_SUMMARY_BEFORE_GIVING;
}

static int State_OpenSummaryBeforeGiving(PoffinCaseApp *app)
{
    if (!RunSubApplication(&app->subApp)) {
        return STATE_OPEN_SUMMARY_BEFORE_GIVING;
    }

    PokemonSummary *monSummary = app->subAppData;
    u8 returnMode = monSummary->returnMode;

    app->monIndex = monSummary->monIndex;

    Heap_Free(app->subAppData);

    if (returnMode == SUMMARY_RETURN_CANCEL) {
        return STATE_INIT_POFFIN_MANAGER;
    }

    app->data->poffins[app->data->selectedPoffin].deleted = TRUE;
    app->data->poffinRemoved = TRUE;

    return STATE_INIT_GIVING_CUTSCENE;
}

static int State_InitPoffinGivingCutscene(PoffinCaseApp *app)
{
    FS_EXTERN_OVERLAY(poffin_case);

    static const ApplicationManagerTemplate cutsceneTemplate = {
        PoffinCutscene_Init,
        PoffinCutscene_Main,
        PoffinCutscene_Exit,
        FS_OVERLAY_ID(poffin_case),
    };
    PoffinCutsceneData *appData = Heap_Alloc(app->heapID, sizeof(PoffinCutsceneData));
    MI_CpuClear8(appData, sizeof(PoffinCutsceneData));

    appData->poffinType = app->data->poffins[app->data->selectedPoffin].type;
    appData->poffin = PoffinCase_AllocateForSlot(app->data->poffinCase, app->data->poffins[app->data->selectedPoffin].caseIndex, app->heapID);
    appData->mon = Party_GetPokemonBySlotIndex(app->data->party, app->monIndex);
    appData->textDelay = Options_TextFrameDelay(app->data->options);
    appData->frame = Options_Frame(app->data->options);

    app->subApp = ApplicationManager_New(&cutsceneTemplate, appData, app->heapID);
    app->subAppData = appData;

    return STATE_PLAY_GIVING_CUTSCENE;
}

static int State_PlayPoffinGivingCutscene(PoffinCaseApp *app)
{
    if (!RunSubApplication(&app->subApp)) {
        return STATE_PLAY_GIVING_CUTSCENE;
    }

    PoffinCutsceneData *appData = app->subAppData;

    Heap_Free(appData->poffin);
    Heap_Free(appData);

    return STATE_INIT_SUMMARY_AFTER_GIVING;
}

static int State_InitSummaryAfterGiving(PoffinCaseApp *app)
{
    static const u8 summaryPages[] = {
        SUMMARY_PAGE_CONDITION, SUMMARY_PAGE_MAX
    };

    PokemonSummary *monSummary = Heap_Alloc(app->heapID, sizeof(PokemonSummary));
    Poffin *poffin = PoffinCase_AllocateForSlot(app->data->poffinCase, app->data->poffins[app->data->selectedPoffin].caseIndex, app->heapID);

    monSummary->monData = app->data->party;
    monSummary->options = app->data->options;
    monSummary->dataType = SUMMARY_DATA_PARTY_MON;
    monSummary->monIndex = app->monIndex;
    monSummary->monMax = Party_GetCurrentCount(monSummary->monData);
    monSummary->move = 0;
    monSummary->mode = SUMMARY_MODE_SHOW_CONDITION_CHANGE;
    monSummary->poffin = poffin;
    monSummary->showContest = TRUE;
    monSummary->chatotCry = NULL;

    PokemonSummaryScreen_FlagVisiblePages(monSummary, summaryPages);
    PokemonSummaryScreen_SetPlayerProfile(monSummary, app->data->trainerInfo);

    app->subApp = ApplicationManager_New(&gPokemonSummaryScreenApp, monSummary, app->heapID);
    app->subAppData = monSummary;

    return STATE_OPEN_SUMMARY_AFTER_GIVING;
}

static int State_OpenSummaryAfterGiving(PoffinCaseApp *app)
{
    if (!RunSubApplication(&app->subApp)) {
        return STATE_OPEN_SUMMARY_AFTER_GIVING;
    }

    PokemonSummary *monSummary = app->subAppData;
    Heap_Free(monSummary->poffin);
    Heap_Free(app->subAppData);

    return STATE_INIT_POFFIN_MANAGER;
}

enum PoffinPreference PoffinCase_GetPoffinPreference(Poffin *poffin, u8 nature)
{
    u8 likedFlavor = sFlavorPreferences[nature][0];
    u8 dislikedFlavor = sFlavorPreferences[nature][1];

    if (likedFlavor == FLAVOR_MAX) {
        return POFFIN_PREFERENCE_NEUTRAL;
    }

    u8 poffinAttrs[7];
    Poffin_StoreAttributesToArray(poffin, poffinAttrs);

    u8 likedStrength = poffinAttrs[likedFlavor + 1];
    u8 dislikedStrength = poffinAttrs[dislikedFlavor + 1];

    if (likedStrength == dislikedStrength) {
        return POFFIN_PREFERENCE_NEUTRAL;
    }

    if (likedStrength > dislikedStrength) {
        return POFFIN_PREFERENCE_LIKE;
    } else {
        return POFFIN_PREFERENCE_DISLIKE;
    }
}

void PoffinCase_UpdateMonContestStats(Poffin *poffin, Pokemon *mon)
{
    u8 i;

    u8 nature = Pokemon_GetNature(mon);
    u8 likedFlavor = sFlavorPreferences[nature][0];
    u8 dislikedFlavor = sFlavorPreferences[nature][1];

    u8 poffinAttrs[7];
    Poffin_StoreAttributesToArray(poffin, poffinAttrs);

    int monContestStats[6];
    for (i = 0; i < 6; i++) {
        monContestStats[i] = Pokemon_GetValue(mon, MON_DATA_COOL + i, NULL);
    }

    u8 adjustedPoffinAttrs[7];

    u8 j = 0;
    for (i = 1; i <= 6; i++) {
        adjustedPoffinAttrs[j++] = poffinAttrs[i];
    }

    if (likedFlavor != FLAVOR_MAX) {
        float modifiedAttr = adjustedPoffinAttrs[likedFlavor] * 1.1f;
        adjustedPoffinAttrs[likedFlavor] = modifiedAttr;

        modifiedAttr = adjustedPoffinAttrs[dislikedFlavor] * 0.9f;
        adjustedPoffinAttrs[dislikedFlavor] = modifiedAttr;
    }

    for (i = 0; i < 6; i++) {
        monContestStats[i] += adjustedPoffinAttrs[i];

        if (monContestStats[i] > MAX_CONTEST_STAT) {
            monContestStats[i] = MAX_CONTEST_STAT;
        }

        Pokemon_SetValue(mon, MON_DATA_COOL + i, &monContestStats[i]);
    }

    u8 friendship = Pokemon_GetValue(mon, MON_DATA_FRIENDSHIP, NULL);

    if (friendship < MAX_FRIENDSHIP_VALUE) {
        ++friendship;
        Pokemon_SetValue(mon, MON_DATA_FRIENDSHIP, &friendship);
    }
}
