#include "poffin_berry_selection_context.h"

#include <nitro.h>
#include <string.h>

#include "applications/poffin_berry_selection.h"
#include "field/field_system.h"

#include "bag.h"
#include "field_system.h"
#include "heap.h"
#include "journal.h"
#include "poffin.h"
#include "save_player.h"
#include "savedata.h"

static PoffinBerrySelectionContext *CreateContext(int isInGroup, SaveData *saveData, enum HeapID heapID, JournalEntry *journalEntry)
{
    PoffinBerrySelectionContext *ctx = Heap_Alloc(heapID, sizeof(PoffinBerrySelectionContext));
    MI_CpuClear8(ctx, sizeof(PoffinBerrySelectionContext));

    ctx->saveData = saveData;
    ctx->poffinCase = SaveData_GetPoffinCase(saveData);
    ctx->trainerInfo = SaveData_GetTrainerInfo(saveData);
    ctx->bag = SaveData_GetBag(saveData);
    ctx->options = SaveData_GetOptions(saveData);
    ctx->journalEntry = journalEntry;
    ctx->unk_20 = FALSE;
    ctx->isInGroup = isInGroup;

    return ctx;
}

static void FieldTask_OpenPoffinBerrySelection(FieldSystem *fieldSystem, PoffinBerrySelectionContext *ctx)
{
    FS_EXTERN_OVERLAY(poffin_berry_selection);

    ApplicationManagerTemplate appTemplate = {
        PoffinBerrySelection_Init,
        PoffinBerrySelection_Main,
        PoffinBerrySelection_Exit,
        FS_OVERLAY_ID(poffin_berry_selection)
    };

    FieldSystem_StartChildProcess(fieldSystem, &appTemplate, ctx);
}

PoffinBerrySelectionContext *PoffinBerrySelectionContext_Create(FieldSystem *fieldSystem, BOOL isInGroup, enum HeapID heapID)
{
    PoffinBerrySelectionContext *ctx = CreateContext(isInGroup, FieldSystem_GetSaveData(fieldSystem), heapID, fieldSystem->journalEntry);
    FieldTask_OpenPoffinBerrySelection(fieldSystem, ctx);

    return ctx;
}

PoffinBerrySelectionContext *PoffinBerrySelectionContext_CreateVoiceChat(FieldSystem *fieldSystem, enum HeapID heapID, BOOL voiceChat)
{
    PoffinBerrySelectionContext *ctx = CreateContext(TRUE, FieldSystem_GetSaveData(fieldSystem), heapID, fieldSystem->journalEntry);
    ctx->unk_20 = TRUE;
    ctx->voiceChat = voiceChat;

    FieldTask_OpenPoffinBerrySelection(fieldSystem, ctx);

    return ctx;
}
